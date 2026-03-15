<!DOCTYPE html>
<html>
<head>
<title>The Security World</title>
<?php $url_prefix = $this->webspice->settings()->site_url_prefix; ?>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css" href="<?php echo $url_prefix; ?>global/assets/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="<?php echo $url_prefix; ?>global/assets/css/font-awesome.min.css">
<link rel="stylesheet" type="text/css" href="<?php echo $url_prefix; ?>global/assets/css/animate.css">
<link rel="stylesheet" type="text/css" href="<?php echo $url_prefix; ?>global/assets/css/slick.css">
<link rel="stylesheet" type="text/css" href="<?php echo $url_prefix; ?>global/assets/css/theme.css">
<link rel="stylesheet" type="text/css" href="<?php echo $url_prefix; ?>global/assets/css/style.css">
<!--[if lt IE 9]>
<script src="assets/js/html5shiv.min.js"></script>
<script src="assets/js/respond.min.js"></script>
<![endif]-->
</head>
<body>
<div id="preloader">
  <div id="status">&nbsp;</div>
</div>
<a class="scrollToTop" href="#"><i class="fa fa-angle-up"></i></a>
<div class="container">
  <header id="header">
    <div class="row">
      <div class="col-lg-12 col-md-12">
        <div class="header_top">
          <div class="header_top_left">
            <ul class="top_nav">
              <li><a href="index.html">Home</a></li>
              <li><a href="pages/page.html">About</a></li>
              <li><a href="pages/contact.html">Contact</a></li>
              <li><a href="pages/404.html">Error Page</a></li>
            </ul>
          </div>
          <div class="header_top_right">
            <form action="#" class="search_form">
              <input type="text" placeholder="Text to Search">
              <input type="submit" value="">
            </form>
          </div>
        </div>

        <div class="header_bottom">
          <!-- <div class="header_bottom_left"><a class="logo" href="index.html">mag<strong>Express</strong> <span>A Pro Magazine Template</span></a></div> -->
          <div class="header_bottom_left">
            <img src="<?php echo $url_prefix; ?>global/custom_files/logo/logo10.png">
          </div>
          <!-- div class="header_bottom_right"><a href="#"><img src="<?php echo $url_prefix; ?>global/images/addbanner_728x90_V1.jpg" alt=""></a></div> -->
        </div>

      </div>
    </div>
  </header>
  <div id="navarea">
    <nav class="navbar navbar-default" role="navigation">
      <div class="container-fluid">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar"> <span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span> </button>
        </div>
        <div id="navbar" class="navbar-collapse collapse">
          <ul class="nav navbar-nav custom_nav">
            <li class=""><a href="index.html">Home</a></li>

            <?php
              $has_sub = false;
              $category = $this->db->query("SELECT * FROM category WHERE STATUS=7")->result();
              foreach($category as $cat) {
                $sub_category = $this->db->query("SELECT * FROM sub_category WHERE CAT_ID='".$cat->CATEGORY_ID."'")->result();
                // dd($sub_category, true);

                if(count($sub_category)) {
                  $has_sub = true;
                  // dd(count($sub_category), true);
                }
            ?>

              <li <?php echo (count($sub_category)) ? 'class="dropdown"' : ''; ?>><a <?php echo (count($sub_category)) ? 'data-toggle="dropdown"' : ""; ?> href="<?php echo $url_prefix; ?>parent_news/<?php echo $this->webspice->encrypt_decrypt($cat->CATEGORY_ID, 'encrypt'); ?>" <?php echo ($has_sub) ? 'role="button"' : ""; ?> <?php echo ($has_sub) ? 'aria-expanded="false"' : ""; ?>><?php echo $cat->CATEGORY_NAME; ?></a>

                <?php if($has_sub) { ?>
                <ul class="dropdown-menu" role="menu">
                  <?php  foreach($sub_category as $sub_cat) { ?>

                    <li><a href="<?php echo $url_prefix; ?>child_news/<?php echo $this->webspice->encrypt_decrypt($sub_cat->SUB_CATEGORY_ID, 'encrypt'); ?>"><?php echo $sub_cat->SUB_CATEGORY_NAME; ?></a></li>

                <?php  } } ?>
                </ul>

              </li>

            <?php } ?>

            <!-- <li class="dropdown"> <a href="#" class="" data-toggle="dropdown" role="button" aria-expanded="false">Archives</a>
              <ul class="dropdown-menu" role="menu">
                <li><a href="pages/archive-main.html">Archive</a></li>
                <li><a href="pages/archive1.html">Archive 1</a></li>
                <li><a href="pages/archive2.html">Archive 2</a></li>
                <li><a href="pages/archive3.html">Archive 3</a></li>
              </ul>
            </li> -->
            <li><a href="pages/single.html">Advertise</a></li>
            <li><a href="pages/contact.html">About Us</a></li>
            <li><a href="pages/404.html">Contact</a></li>
          </ul>
        </div>
      </div>
    </nav>
  </div>