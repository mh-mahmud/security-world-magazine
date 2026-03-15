<?php include(APPPATH."views/admin/admin_header.php"); ?>

        <div class="container">
            <div class="row-fluid">
                <div class="span12" id="content">
                    <div class="row-fluid">

                        <!-- here will goes alert message -->
                        <!-- <div class="alert alert-success">
                            <button type="button" class="close" data-dismiss="alert">&times;</button>
                            <h4>Success</h4>
                            The operation completed successfully
                        </div> -->
                        <!-- alert message end -->

                          <div class="navbar">
                              <div class="navbar-inner">
                                  <ul class="breadcrumb">
                                      <li>
                                          <b>Create News</b>
                                      </li>
                                  </ul>
                              </div>
                          </div>
                      </div>


                         <!-- validation -->
                        <div class="row-fluid">
                          <!-- block -->
                          <div class="block">
                            <div class="navbar navbar-inner block-header">
                                <div class="muted pull-left">Create News</div>
                            </div>
                            <div class="block-content collapse in">
                              <div class="span12">
                                <!-- BEGIN FORM-->
                                <form method="post" action=""  enctype="multipart/form-data" id="" class="form-horizontal">

                                    <input type="hidden" name="<?php echo $this->security->get_csrf_token_name(); ?>" value="<?php echo $this->security->get_csrf_hash(); ?>">
                                    <input type="hidden" name="page_id" value="<?php if( isset($edit['PAGE_ID']) && $edit['PAGE_ID'] ){echo $this->webspice->encrypt_decrypt($edit['PAGE_ID'], 'encrypt');} ?>" />
                                    <fieldset>

                                      <div class="control-group">
                                        <label class="control-label">Category Name</label>
                                        <div class="controls">
                                          <select class="span6 m-wrap" name="category_id">
                                            <option value="">Select...</option>
                                            <?php
                                                $options = $this->db->query("SELECT * FROM category WHERE STATUS=7")->result();
                                            ?>
                                            <?php foreach($options as $option) : ?>
                                              <option value="<?php echo $option->CATEGORY_ID ?>" <?php echo (isset($edit['CATEGORY_ID']) && $edit['CATEGORY_ID'] == $option->CATEGORY_ID) ? "selected" : ""; ?> ><?php echo $option->CATEGORY_NAME; ?></option>
                                            <?php endforeach; ?>
                                          </select>
                                          <span class="fred"><?php echo form_error('category_id'); ?></span>
                                        </div>
                                      </div>


                                      <div class="control-group">
                                        <label class="control-label">Sub Category Name</label>
                                        <div class="controls">
                                          <select class="span6 m-wrap" name="sub_category_id">
                                            <option value="">Select...</option>
                                            <?php
                                                $options = $this->db->query("SELECT * FROM sub_category WHERE STATUS=7")->result();
                                            ?>
                                            <?php foreach($options as $option) : ?>
                                              <option value="<?php echo $option->SUB_CATEGORY_ID ?>" <?php echo (isset($edit['SUB_CATEGORY_ID']) && $edit['SUB_CATEGORY_ID'] == $option->SUB_CATEGORY_ID) ? "selected" : ""; ?> ><?php echo $option->SUB_CATEGORY_NAME; ?></option>
                                            <?php endforeach; ?>
                                          </select>
                                          <span class="fred"><?php echo form_error('sub_category_id'); ?></span>
                                        </div>
                                      </div>

                                      <div class="control-group">
                                          <label class="control-label">News Title<span class="required">*</span></label>
                                          <div class="controls">
                                              <input type="text" name="news_title" data-required="1" class="span6 m-wrap" value="<?php echo set_value('news_title',$edit['NEWS_TITLE']); ?>" />
                                              <span class="fred"><?php echo form_error('news_title'); ?></span>
                                          </div>
                                      </div>

                                      <div class="control-group">
                                          <label class="control-label">News Description<span class="required">*</span></label>
                                          <div class="controls">
                                              <textarea id="my_textarea" rows="10" cols="50" name="news_description" data-required="1" class="span6 m-wrap" ><?php echo set_value('news_description',$edit['NEWS_DESCRIPTION']); ?></textarea>
                                              <span class="fred"><?php echo form_error('news_description'); ?></span>
                                          </div>
                                      </div>

                                      <div class="control-group">
                                        <label class="control-label" for="news_banner_image">Banner Image</label>
                                        <div class="controls">
                                          <input type="file" name="news_banner_image" class="input-file uniform_on" id="image" <?php //if(set_value('image',$edit['IMAGE']))echo '';else echo 'required';?>>
                                        </div>
                                        <span class="fred"><?php echo form_error('news_banner_image'); ?></span>
                                      </div>
                                      <?php if( file_exists($this->webspice->get_path('banner_full').$edit['NEWS_BANNER_IMAGE']) ): ?>
                                        <div class="personnel-thm-img" style="padding-top:20px;margin-left:180px;"> 
                                          <img src="<?php echo $this->webspice->get_path('banner').$edit['NEWS_BANNER_IMAGE']; ?>"  alt="" class="img-responsive" width="100"/> 
                                        </div> 
                                      <?php endif;  ?>

                                      <div class="control-group">
                                        <label class="control-label" for="news_small_image">Small Image</label>
                                        <div class="controls">
                                          <input type="file" name="news_small_image" class="input-file uniform_on" id="image" <?php //if(set_value('image',$edit['IMAGE']))echo '';else echo 'required';?>>
                                        </div>
                                        <span class="fred"><?php echo form_error('news_small_image'); ?></span>
                                      </div>
                                      <?php if( file_exists($this->webspice->get_path('small_full').$edit['NEWS_SMALL_IMAGE']) ): ?>
                                        <div class="personnel-thm-img" style="padding-top:20px;margin-left:180px;"> 
                                          <img src="<?php echo $this->webspice->get_path('small').$edit['NEWS_SMALL_IMAGE']; ?>"  alt="" class="img-responsive" width="100"/> 
                                        </div> 
                                      <?php endif;  ?>
                                      
                                      <div class="form-actions">
                                          <input type="submit" name="submit" class="btn btn-primary" value="Submit Data"  />
                                      </div>
                                    </fieldset>
                                </form>
                                <!-- END FORM-->
                              </div>
                            </div>
                          </div>
                          <!-- /block -->
                        </div>
                         <!-- /validation -->
                    
                    
                    
                </div>
        
            </div>
            
<?php include(APPPATH."views/admin/admin_footer.php"); ?>