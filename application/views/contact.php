<?php require_once("header.php"); ?>
<?php require_once("slider.php"); ?>

<?php
	$contact_data = $this->db->query("SELECT * FROM additional_data WHERE TYPE = 'contact'")->result();
	// echo nl2br($contact_data->DETAILS);
	// dd($contact_data);
?>

<!-- <div class="container"> -->
	<div class="row">
		<div class="col-md-6">
			<div class="left_content_new">
				<div class="left_content_two">
					<h3><?php echo $contact_data[1]->TITLE; ?></h3>
					<p>
						<?php echo nl2br($contact_data[1]->DETAILS); ?>
					</p>
					<div class="location">
			    	 		<div class="map">
								<iframe width="100%" height="250" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3309.5695711962894!2d151.13401741496742!3d-33.95219713082289!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x6b12ba01dee9228b%3A0xf25c266873874d55!2sSTEALTH+ACCOUNTANTS!5e0!3m2!1sen!2s!4v1464339691077"></iframe>
					   		</div>
					</div>
				</div>

				<div class="left_content_two">
					<h3><?php echo $contact_data[2]->TITLE; ?></h3>
					<p>
						<?php echo nl2br($contact_data[2]->DETAILS); ?>
					</p>
					<div class="location">
			    	 		<div class="map">
								<iframe width="100%" height="250" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3310.901502643922!2d151.07765131496626!3d-33.917934529041545!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x6b12bbc785ee3325%3A0xcbb92d3d3c3d162f!2s21+Taylor+St%2C+Lakemba+NSW+2195%2C+Australia!5e0!3m2!1sen!2s!4v1464339963173" style="color:#777777;text-align:left;font-size:13px;"></iframe>
					   		</div>
					</div>
				</div>
			</div>
		</div>

		<div class="col-md-6">
			<div class="right_content_new">

				<div class="left_content_one">
					<h3><?php echo $contact_data[0]->TITLE; ?></h3>
					<p style="text-align:justify">
						<?php echo $contact_data[0]->DETAILS; ?>
					</p>
					<div class="contact_img">
						<img class="img-thumbnail image-loka" src="<?php echo $url_prefix; ?>global/images/data_dir/contact-stealth.png">
					</div>
				</div>

				<div class="contact-form">
					<!-- <div class="content">
						<h2>Contact Us</h2>
					</div> -->
                    <form method="post" action="">
                    	<input type="hidden" name="<?php echo $this->security->get_csrf_token_name(); ?>" value="<?php echo $this->security->get_csrf_hash(); ?>">
                        <div>
                            <span><label>Name</label></span>
                            <span><input name="name" type="text" class="textbox" required></span>
                        </div>
                        <div>
                            <span><label>E-mail</label></span>
                            <span><input name="email" type="text" class="textbox" required></span>
                        </div>
                        <div>
                            <span><label>Mobile</label></span>
                            <span><input name="mobile" type="text" class="textbox" required></span>
                        </div>
                        <div>
                            <span><label>Subject</label></span>
                            <span><textarea name="message" required></textarea></span>
                        </div>
                       <div>
                            <span><input type="submit" class="" value="Send us"></span>
                      </div>
                    </form>
					
				</div>
			</div>
		</div>
	</div>
<!-- </div> -->

    </div>
</div>

<?php require_once("footer.php"); ?>