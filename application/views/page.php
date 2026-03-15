<?php require_once("header.php"); ?>
<?php require_once("slider.php"); ?>

		<div class="top_div1">

			<div class="right_div_inner">
				<h1><?php echo count($page_data) ? $page_data->PAGE_TITLE : ""; ?></h1>
			</div>

			<div class="manual_page">
				<?php
					if(count($page_data)) {
						echo $page_data->PAGE_DETAILS;
					}
					else { ?>
                    <div class="cat_alert">
                        <div class="alert alert-danger" role="alert">
                            Sorry, no page data found
                        </div>
                    </div>
				<?php }
				?>
			</div>

		</div>

    </div>
</div>

<?php require_once("footer.php"); ?>