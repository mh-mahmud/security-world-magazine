<?php require_once("header.php"); ?>
<?php require_once("slider.php"); ?>

<?php
	$about_data = $this->db->query("SELECT * FROM additional_data WHERE TYPE = 'about'")->result();
	// echo nl2br($contact_data->DETAILS);
	// dd($about_data);
?>

		<div class="row">
			<div class="col-md-12">
				<div class="about_one about_page_data about_font_family">
					<h3><?php echo $about_data[0]->TITLE; ?></h3>
					<p>
						<?php echo nl2br($about_data[0]->DETAILS); ?>
					</p>
				</div>

				<div class="about_one">
					<h3><?php echo $about_data[2]->TITLE; ?></h3>
					<p>
						<?php echo nl2br($about_data[2]->DETAILS); ?>
					</p>
				</div>

				<div class="about_one">
					<h3><?php echo $about_data[3]->TITLE; ?></h3>
					<p>
						<?php echo nl2br($about_data[3]->DETAILS); ?>
					</p>
				</div>

				<div class="about_one">
					<h3><?php echo $about_data[1]->TITLE; ?></h3>
					<p>
						<?php echo nl2br($about_data[1]->DETAILS); ?>
					</p>
				</div>
			</div>
		</div>

		<div class="row about_wrapper">
			<div class="col-md-8 col-sm-7">
				<!-- <div class="about_data about_font_family right_content">
					<p class="ordinary">Registered Accountant</p>
					<h3>Sharif Bhuiyan</h3>
					<p class="ordinary_two">Professional Business and Personal</p>
					<p class="ordinary_two">Accountant and Financial Advisor.</p>
				</div> -->
				<div class="about_data_details about_font_family">
					<h1>Sharif Bhuiyan</h1>
					<h3>Professional Business and Personal <br/>Accountant and Financial Advisor.</h3>
					<div class="header_border"></div>
					<p>
						As Managing Director at Stealth Accountants, Mr. Sharif Bhuiyan combines real-world business proficiency with innovative thinking to deliver premium accounting solutions for his clients. You can rely on Mr. Sharif Bhuiyan to deliver practical solutions for your taxation and accounting needs. Working with clients across Sydney, Mr. Sharif combines his drive and strong technical abilities to provide you with unparalleled accounting services. He has a broad range of clientele, ranging from small businesses to large corporate groups, and possesses vast experience across a variety of industries.  
					</p>

					<P>Qualifications:</p>
					<ul>
						<li>› Bachelor of Commerce</li>
						<li>› Master of Commerce</li>	
						<li>› Member of the Institute of Public Accountants</li>	
						<li>› Registered Tax Agent</li>	
						<li>› Justice of Peace</li>						
					</ul>
					<p>
						If you would like to make a complimentary, obligation free meeting to discuss how Stealth Accountants can improve your accounting and taxation affairs, please feel free to contact.
					</p>
				</div>
			</div>

			<div class="col-md-4 col-sm-5">
				<div class="pull-right">
					<div class="about_data_img">
						<img class="img-thumbnail image-loka" src="<?php echo $url_prefix; ?>global/images/data_dir/sharif_new.jpg">
					</div>
					<div class="about_data_last about_font_family">					
						<h4>Co-Founder &amp; Director,</h4>
					      <a href="index.php"><img src="/stealth/global/images/logo.png" width="200" height="85"></a> <br><br>
						<!-- <h4>Stealth Accountants</h4> -->
					<a href="mailto:sharif@stealthaccountants.com.au" class="btn btn-primary">Email Sharif</a>

					 <a href="tel:0422977966" class="btn btn-primary">Call Sharif (P)</a>

					 <a href="tel: 0295675306" class="btn btn-primary">Call Sharif (O)</a>

					 <!-- <a target="_blank" href="http://www.linkedin.com/profile/public-profile-settings?trk=prof-edit-edit-public_profile" class="btn btn-primary">Find Sharif on LinkedIn</a> -->
					<br class="clear">
						<!-- <p>Mob: 0422977966<br />
						Tel:  0295675306<br />
						Email: sharif@stealthaccountants.com.au<br />
						info@stealthaccountants.com.au</p> -->
					</div>
				</div>
			</div>

		</div>

    </div>
</div>

<?php require_once("footer.php"); ?>