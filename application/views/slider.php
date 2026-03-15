<!--   <div class="banner">


    <div id="wowslider-container1">
      <div class="ws_images">
        <ul>
          <li><img src="<?php //echo $url_prefix; ?>global/data1/images/banner-1.jpg" alt="banner_img" title="banner_img" id="wows1_0"/></li>
          <li><img src="<?php //echo $url_prefix; ?>global/data1/images/banner-2.jpg" alt="banner_img2" title="banner_img2" id="wows1_1"/></li>
          <li><img src="<?php //echo $url_prefix; ?>global/data1/images/banner-3.jpg" alt="banner_img3" title="banner_img3" id="wows1_2"/></li>
        </ul>
      </div>
      <div class="ws_bullets">
        <div>
          <a href="#" title="banner_img"></a>
          <a href="#" title="banner_img2"></a>
          <a href="#" title="banner_img3"></a>
        </div>
      </div>

      <div class="ws_shadow"></div>
    </div>


  </div>
      
  <br /><br /><br /> -->


  <!-- <div class="container"> -->



<?php
  $slider = $this->db->query("SELECT * FROM slider")->result();
?>

<div class="banner">

          <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
            <!-- Indicators -->
            <ol class="carousel-indicators">
              <?php for($j=0; $j<count($slider); $j++) : ?>
              <li data-target="#carousel-example-generic" data-slide-to="<?php echo $j; ?>" class="<?php echo ($j==0) ? "active" : ""; ?>"></li>
              <?php endfor; ?>
            </ol>

            <!-- Wrapper for slides -->
            <div class="carousel-inner" role="listbox">
            <?php $i=1; foreach($slider as $v) : ?>
              <div class="item <?php echo ($i==1) ? "active" : "" ?>">
              <img src="<?php echo $this->webspice->get_path('slider').$v->SLIDER_ID.'.jpg'; ?>" alt="...">
              <div class="carousel-caption">

              </div>
              </div>
            <?php $i++; endforeach; ?>
            </div>

            <!-- Controls -->
            <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
              <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
              <span class="sr-only">Previous</span>
            </a>
            <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
              <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
              <span class="sr-only">Next</span>
            </a>
          </div>

</div>
<!-- </div> -->
  <br /><br /><br />