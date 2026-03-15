<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class News_controller extends CI_Controller {
	public function __construct(){
		parent::__construct();
		$this->load->helper('url');
	}

	// create page
	public function create_news($data=null) {

		$url_prefix = $this->webspice->settings()->site_url_prefix;
		$this->webspice->user_verify($url_prefix.'login', $url_prefix.'create_news');
		$this->webspice->permission_verify('create_news');
		if( !isset($data['edit']) ){
			$data['edit'] = array(
				'NEWS_ID'=>null,
				'CATEGORY_ID'=>null,
				'SUB_CATEGORY_ID'=>null,
				'NEWS_TITLE'=>null,
				'NEWS_DESCRIPTION'=>null,
				'NEWS_BANNER_IMAGE'=>null,
				'NEWS_SMALL_IMAGE'=>null
			);
		}
		$this->load->library('form_validation');
		$this->form_validation->set_rules('category_id','category name','required|trim|xss_clean');
		$this->form_validation->set_rules('sub_category_id','sun category name','trim|xss_clean');
		$this->form_validation->set_rules('news_title','news title','required|trim|xss_clean');
		$this->form_validation->set_rules('news_description','news description','required|trim|xss_clean');
		
		if( !$this->form_validation->run() ){
			$this->load->view('admin/news/create_news', $data);
			return FALSE;
		}

		# get input post
		$input = $this->webspice->get_input('news_id');
		// dd(base64_encode($_POST['page_details']));
		// dd($input);
		
		#duplicate test
		$this->webspice->db_field_duplicate_test("SELECT * FROM news WHERE CATEGORY_ID = ? AND SUB_CATEGORY_ID=? AND NEWS_TITLE=?", array($input->category_id, $input->sub_category_id, $input->news_title), 'You are not allowed to enter duplicate news', 'NEWS_ID', $input->news_id, $data, 'admin/news/create_news');
		
		# remove cache
		$this->webspice->remove_cache('news_data');

		# verify file type
		if( $_FILES['news_banner_image']['tmp_name'] ){
			$this->webspice->check_file_type(array('jpg','jpeg', 'png', 'gif'), 'news_banner_image', $data, 'admin/news/create_news');
		}

		if( $_FILES['news_small_image']['tmp_name'] ){
			$this->webspice->check_file_type(array('jpg','jpeg', 'png', 'gif'), 'news_small_image', $data, 'admin/news/create_news');
		}

		$news_banner_image = isset($_FILES['news_banner_image']['tmp_name']) ? $_FILES['news_banner_image']['name'] : "";
		$news_small_image = isset($_FILES['news_small_image']['tmp_name']) ? $_FILES['news_small_image']['name'] : "";

		# update process
		if( $input->news_id ){

			$sql = "
			UPDATE news SET CATEGORY_ID=?, SUB_CATEGORY_ID=?, NEWS_TITLE=?, NEWS_DESCRIPTION=?, NEWS_BANNER_IMAGE=?, NEWS_SMALL_IMAGE=?, UPDATED_BY=?,UPDATED_DATE=?
			WHERE PAGE_ID=?";
			$this->db->query($sql, array($input->category_id, $input->sub_category_id, $input->news_title, $input->news_description, $news_banner_image, $news_small_image, $this->webspice->get_user_id(), $this->webspice->now(), $input->news_id));
			$this->webspice->message_board('Record has been updated!');
			$this->webspice->log_me('data_updated - '.$this->webspice->get_user_id()); # log activities
			$this->webspice->force_redirect($url_prefix.'manage_news');
			return false;
		}
		
		#insert category

		$sql = "
		INSERT INTO news
		(CATEGORY_ID, SUB_CATEGORY_ID, NEWS_TITLE, NEWS_DESCRIPTION, NEWS_BANNER_IMAGE, NEWS_SMALL_IMAGE, CREATED_BY, CREATED_DATE, STATUS)
		VALUES
		( ?, ?, ?, ?, ?, ?, ?, ?, 7)";
		$this->db->query($sql, array($input->category_id, $input->sub_category_id, $input->news_title, $input->news_description, $news_banner_image, $news_small_image, $this->webspice->get_user_id(),$this->webspice->now()));

		if( !$this->db->insert_id() ){
			$this->webspice->message_board('We could not execute your request. Please tray again later or report to authority.');
			$this->webspice->force_redirect($url_prefix . 'admin');
			return false;
		}

		$this->webspice->process_image_single('news_banner_image', $_FILES['news_banner_image']['name'], 'banner_full');
		$this->webspice->process_image_single('news_small_image', $_FILES['news_small_image']['name'], 'small_full');

		$this->webspice->message_board('Record inserted successfully!');
		if($this->webspice->permission_verify('manage_news',TRUE)){
			$this->webspice->force_redirect($url_prefix . 'manage_news');
			return FALSE;
		}
		$this->webspice->force_redirect($url_prefix.'create_news');

	}

	// manage news
	public function manage_news() {

		$url_prefix = $this->webspice->settings()->site_url_prefix;
		$this->webspice->user_verify($url_prefix.'login', $url_prefix.'manage_news');
		$this->webspice->permission_verify('manage_news');

		$this->load->database();
		$orderby = 'ORDER BY news.NEWS_ID DESC';
		$groupby = null;
		$where = '';
		$page_index = 0;
		$no_of_record = 2000000;
		$limit = ' LIMIT '.$no_of_record;
		$filter_by = 'Last Created';
		$data['pager'] = null;
		$criteria = $this->uri->segment(2);
		$key = $this->uri->segment(3);
		if ($criteria == 'page') {
			$page_index = (int)$key;
			$page_index < 0 ? $page_index=0 : $page_index=$page_index;
		}

		$initialSQL = "
		SELECT  news.*, c.CATEGORY_ID, c.CATEGORY_NAME, sc.SUB_CATEGORY_ID, sc.SUB_CATEGORY_NAME FROM news INNER JOIN category AS c ON c.CATEGORY_ID=news.CATEGORY_ID INNER JOIN sub_category AS sc ON sc.SUB_CATEGORY_ID=news.SUB_CATEGORY_ID ";


		# filtering records
		if( $this->input->post('filter') ){
			$result = $this->webspice->filter_generator(
				$TableName = 'pages',
				$InputField = array(),
				$Keyword = array('PAGE_TITLE'),
				$AdditionalWhere = null,
				$DateBetween = null
			);

			$result['where'] ? $where = $result['where'] : $where=$where;
			$result['filter'] ? $filter_by = $result['filter'] : $filter_by=$filter_by;
		}

		# action area
		switch ($criteria) {
			case 'print':
			case 'csv':
				if( !isset($_SESSION['sql']) || !$_SESSION['sql'] ){
					$_SESSION['sql'] = $initialSQL . $where . $orderby;
					$_SESSION['filter_by'] = $filter_by;
				}

				$record = $this->db->query( substr($_SESSION['sql'], 0, stripos($_SESSION['sql'],'LIMIT')) );
				$data['get_record'] = $record->result();
				$data['filter_by'] = $_SESSION['filter_by'];

				$this->load->view('admin/print_page',$data);
				return false;
				break;

			case 'edit':
			// dd($this->webspice->encrypt_decrypt($key, 'decrypt'));
			// return false;
				$this->webspice->edit_generator($TableName='pages', $KeyField='PAGE_ID', $key, $RedirectController='admin_controller', $RedirectFunction='create_page', $PermissionName='manage_pages', $StatusCheck=null, $Log='edit_pages');
				return false;
				break;

			case 'inactive':
				$this->webspice->action_executer($TableName='pages', $KeyField='PAGE_ID', $key, $RedirectURL='manage_pages', $PermissionName='manage_pages', $StatusCheck=7, $ChangeStatus=-7, $RemoveCache='page_data', $Log='inactive_page_data');
				return false;
				break;

			case 'active':
				$this->webspice->action_executer($TableName='pages', $KeyField='PAGE_ID', $key, $RedirectURL='manage_pages', $PermissionName='manage_pages', $StatusCheck=-7, $ChangeStatus=7, $RemoveCache='page_data', $Log='active_page_data');
				return false;
				break;

			case 'update':
				$id = $this->uri->segment(3);
				$id2 = $this->uri->segment(4);
				$id3 = $this->uri->segment(5);
				$data = $this->db->query($id . " " . $id2 . " " . $id3);
				if($data) {
					echo "Just for test purpose";
				}
				return false;
				break;

			case 'delete':
				$id = $this->webspice->encrypt_decrypt($key, 'decrypt');
				$sql = $this->db->query("DELETE FROM pages WHERE PAGE_ID='".$id."' LIMIT 1");
				if($sql) {
					$this->webspice->force_redirect($url_prefix.'manage_pages');
				}
				return false;
			break;
		}

		# default
		$sql = $initialSQL . $where . $groupby . $orderby . $limit;

		# only for pager
		if( $criteria == 'page' ){
			if( !isset($_SESSION['sql']) || !$_SESSION['sql'] ){
				$sql = $sql;
			}
			$limit = sprintf("LIMIT %d, %d", $page_index, $no_of_record);		# this is to avoid SQL Injection
			$sql = substr($_SESSION['sql'], 0, strpos($_SESSION['sql'],'LIMIT'));
			$sql = $sql . $limit;
		}

		# load all records
		if( !$this->input->post('filter') ){
			$count_data = $this->db->query( substr($sql,0,strpos($sql,'LIMIT')) );
			$count_data = $count_data->result();
			$data['pager'] = $this->webspice->pager( count($count_data), $no_of_record, $page_index, $url_prefix.'manage_news/page/', 10 );	
		}

		$_SESSION['sql'] = $sql;
		$_SESSION['filter_by'] = $filter_by;
		$result = $this->db->query($sql)->result();

		$data['get_record'] = $result;
		$data['filter_by'] = $filter_by;
		// dd($this->webspice->get_path('banner_full'));

		$this->load->view('admin/news/manage_news', $data);
	}


}