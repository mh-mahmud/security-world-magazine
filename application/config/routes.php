<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');
/*
| -------------------------------------------------------------------------
| URI ROUTING
| -------------------------------------------------------------------------
| This file lets you re-map URI requests to specific controller functions.
|
| Typically there is a one-to-one relationship between a URL string
| and its corresponding controller class/method. The segments in a
| URL normally follow this pattern:
|
|	example.com/class/method/id/
|
| In some instances, however, you may want to remap this relationship
| so that a different class/function is called than the one
| corresponding to the URL.
|
| Please see the user guide for complete details:
|
|	http://codeigniter.com/user_guide/general/routing.html
|
| -------------------------------------------------------------------------
| RESERVED ROUTES
| -------------------------------------------------------------------------
|
| There area two reserved routes:
|
|	$route['default_controller'] = 'welcome';
|
| This route indicates which controller class should be loaded if the
| URI contains no data. In the above example, the "welcome" class
| would be loaded.
|
|	$route['404_override'] = 'errors/page_missing';
|
| This route will tell the Router what URI segments to use if those provided
| in the URL cannot be matched to a valid route.
|
*/

$route['default_controller'] = "parent_controller";
$route['confirmation'] = "parent_controller/show_confirmation";
$route['change_pass'] = 'admin_controller/change_pass';

# admin panel setup
$route['admin'] = 'admin_controller';
$route['login'] = 'admin_controller/login';
$route['logout'] = 'admin_controller/logout';
$route['admin_confirmation'] = "admin_controller/show_confirmation";


# user authentication
// $route['login'] = 'parent_controller/login';
// $route['logout'] = 'parent_controller/logout';
$route['change_password'] = 'parent_controller/change_password';
$route['change_password/:any'] = 'parent_controller/change_password';
$route['forgot_password'] = 'parent_controller/forgot_password';

# user management
$route['create_user']='master_controller/create_user';
$route['manage_user']='master_controller/manage_user';
$route['manage_user/:any']='master_controller/manage_user';
$route['create_role']='master_controller/create_role';
$route['manage_role']='master_controller/manage_role';
$route['manage_role/:any']='master_controller/manage_role';

// slider
$route['create_slider'] = "admin_controller/create_slider";
$route['manage_slider'] = "admin_controller/manage_slider";
$route['manage_slider/:any'] = "admin_controller/manage_slider";

// gallery
$route['add_images'] = "admin_controller/add_images";
$route['manage_gallery'] = "admin_controller/manage_gallery";
$route['manage_gallery/:any'] = "admin_controller/manage_gallery";
$route['gallery/:any'] = "parent_controller/gallery";

// downloads
$route['add_downloads'] = "admin_controller/add_downloads";
$route['manage_downloads'] = "admin_controller/manage_downloads";
$route['manage_downloads/:any'] = "admin_controller/manage_downloads";
$route['downloads/:any'] = "parent_controller/downloads";

// videos
$route['add_videos'] = "admin_controller/add_videos";
$route['manage_videos'] = "admin_controller/manage_videos";
$route['manage_videos/:any'] = "admin_controller/manage_videos";
$route['videos/:any'] = "parent_controller/videos";

// person
$route['add_person'] = "admin_controller/add_person";
$route['manage_person'] = "admin_controller/manage_person";
$route['manage_person/:any'] = "admin_controller/manage_person";
$route['person/:any'] = "parent_controller/person";

// additional data
$route['add_additional_data'] = "admin_controller/add_additional_data";
$route['manage_additional_data'] = "admin_controller/manage_additional_data";
$route['manage_additional_data/:any'] = "admin_controller/manage_additional_data";

// page management
$route['create_page'] = "admin_controller/create_page";
$route['manage_pages'] = "admin_controller/manage_pages";
$route['manage_pages/:any'] = "admin_controller/manage_pages";

# page setup
$route['contact'] = "parent_controller/contact";
$route['about'] = "parent_controller/about";
$route['tools'] = "parent_controller/tools";
$route['links'] = "parent_controller/links";
$route['faq'] = "parent_controller/faq";
$route['faq/:any'] = "parent_controller/faq";
$route['product'] = "parent_controller/product";
$route['product/:any'] = "parent_controller/product";
$route['category'] = "parent_controller/category";
$route['category/:any'] = "parent_controller/category";

# admin panel setup
$route['admin'] = 'admin_controller';
$route['login'] = 'admin_controller/login';
$route['logout'] = 'admin_controller/logout';
$route['admin_confirmation'] = "admin_controller/show_confirmation";

// category
$route['create_category'] = "admin_controller/create_category";
$route['manage_category'] = "admin_controller/manage_category";
$route['manage_category/:any'] = "admin_controller/manage_category";

// sub category
$route['create_sub_category'] = "admin_controller/create_sub_category";
$route['manage_sub_category'] = "admin_controller/manage_sub_category";
$route['manage_sub_category/:any'] = "admin_controller/manage_sub_category";

// view related files
$route['page/:any'] = 'parent_controller/page';
$route['head_page/:any'] = 'parent_controller/head_page';
$route['manage_user_data'] = "admin_controller/manage_user_data";
$route['manage_user_data/:any'] = "admin_controller/manage_user_data";
$route['notice'] = "parent_controller/notice";
$route['notice/:any'] = "parent_controller/notice";
$route['events'] = "parent_controller/events";
$route['events/:any'] = "parent_controller/events";
$route['person_msg'] = "parent_controller/person_msg";
$route['person_msg/:any'] = "parent_controller/person_msg";

// news
$route['create_news'] = "news_controller/create_news";
$route['manage_news'] = "news_controller/manage_news";
$route['manage_news/:any'] = "news_controller/manage_news";