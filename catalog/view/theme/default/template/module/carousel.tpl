<div class="col-sm-12">
<h3 class="main-page"><?php echo $text_productors; ?></h3>
</div>
<div id="carousel<?php echo $module; ?>" class="owl-carousel">
  <?php foreach ($banners as $banner) { ?>
  <div class="item text-center">
    <?php if ($banner['link']) { ?>
    <a href="<?php echo $banner['link']; ?>"><img src="<?php echo $banner['image']; ?>" alt="<?php echo $banner['title']; ?>" class="img-responsive" /></a>
    <?php } else { ?>
    <img src="<?php echo $banner['image']; ?>" alt="<?php echo $banner['title']; ?>" class="img-responsive" />
    <?php } ?>
  </div>
  <?php } ?>
</div>
</div>
<script type="text/javascript"><!--
$('#carousel<?php echo $module; ?>').owlCarousel({
	items: 6,
	autoPlay: 3000,
	navigation: true,
	navigationText: ['<i class="fa fa-chevron-left fa-5x"></i>', '<i class="fa fa-chevron-right fa-5x"></i>'],
	pagination: true
});
--></script>
<div class="col-sm-12 brands">

</div>