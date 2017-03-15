<div class="revmenu">
	<div class="col-sm-6 col-md-3">
		<div id="menu2_button" <?php if ($module_class) { ?>class="<?php echo $module_class; ?>"<?php } ?>>
			<div class="box-heading btn btn-primary" data-toggle="collapse" data-target=".navbar-revmenu-collapse"><i class="fa fa-bars"></i><?php echo $heading_title; ?><span class="icorightmenu"><i class="fa fa-chevron-down"></i></span></div>
			<div class="box-content am collapse navbar navbar-revmenu-collapse">
				<div id="menu2" <?php if ($module_class) { ?>class="<?php echo $module_class; ?>"<?php } ?>>
					<div class="catalog_list catalog_list_popup catalog_as_popup">
						<?php foreach ($categories as $category) { ?>  
							<div class="level_1 hasChildren closed">
								<?php if ($category['children']) { ?>
									<div class="title with-child">
									<a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?>
									<span class="arrow-btn hidden-xs hidden-sm"><i class="fa fa-angle-right"></i></span>
									</a>
									</div>
								<?php } else { ?>
									<div class="title">
									<a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a>
									</div>
								<?php } ?>
								<?php if ($category['children']) { ?>	
								<div class="childrenList hidden-xs hidden-sm" style="display: none;">
									<?php if ($category['column'] == 1) { ?>
										<?php	$box_class = 'box-col-1'; $col_class = 'col-1'; ?>
									<?php } elseif ($category['column'] == 2) { ?>
										<?php	$box_class = 'box-col-2'; $col_class = 'col-2'; ?>
									<?php } elseif ($category['column'] == 3) { ?>
										<?php	$box_class = 'box-col-3'; $col_class = 'col-3'; ?>	
									<?php } else { ?>
										<?php	$box_class = 'box-col-4'; $col_class = 'col-4'; ?>
									<?php } ?>
									<div class="child-box <?php echo $box_class; ?>">
									<ul class="ul_block<?php echo $category['category_id']; ?> <?php echo $col_class; ?>">
									<?php foreach ($category['children'] as $child) { ?>
									<li class="glavli"><a href="<?php echo $child['href']; ?>"><?php echo $child['name']; ?></a>
										<?php if($child['child2_id']){ ?>
										<ul class="lastul">
											<?php foreach ($child['child2_id'] as $child2) { ?>
											  <?php if ($child2['category_id'] == $child2_id) { ?>
											  <li class="category-<?php echo $child2['category_id']; ?> active"><a href="<?php echo $child2['href']; ?>" class="active"><i class="fa fa-minus"></i><?php echo $child2['name']; ?></a></li>
											  <?php } else { ?>
											  <li class="category-<?php echo $child2['category_id']; ?>"><a href="<?php echo $child2['href']; ?>"><i class="fa fa-minus"></i><?php echo $child2['name']; ?></a></li>
											  <?php } ?>
											<?php } ?>	
										</ul>
										<?php } ?>
									</li>
									<?php } ?>
									</ul>
									<!--
									<?php if ($category['thumb2']) { ?>
										<img class="img_sub" src="<?php echo $category['thumb2']; ?>" alt="<?php echo $category['name']; ?>" />	
									<?php } ?>
									-->
									</div>		
								</div>
								<?php } ?>
							</div>			
						<?php } ?>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="col-sm-6 col-md-8">
	  <?php global $registry; $bw_module_groups = $registry->get('bw_module_groups'); if (!empty($bw_module_groups['bw_catmenu'])) { ?>
		        <?php echo implode('', $bw_module_groups['bw_catmenu']); ?>
		        <?php } ?>
				</div>
      <div class="col-sm-12 col-md-1 col-lg-1 upmenu">

       <ul class="pav-verticalmenu list-inline pull-right">
        <li class="dropdown for-menu"><a href="<?php echo $account; ?>" title="<?php echo $text_account; ?>" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-user"></i> <span class="menu-title-1 hidden-xs hidden-sm hidden-md">Войти</span> <b class="caret"></b></a>
          <ul class="dropdown-menu dropdown-menu-right">
            <?php if ($logged) { ?>
            <li><a href="<?php echo $account; ?>"><?php echo $text_account; ?></a></li>
            <li><a href="<?php echo $logout; ?>"><?php echo $text_logout; ?></a></li>
            <?php } else { ?>
            <li><a href="<?php echo $register; ?>"><i class="fa fa-user-plus"></i> <?php echo $text_register; ?></a></li>
            <li><a href="<?php echo $login; ?>"><i class="fa fa-sign-in"></i> <?php echo $text_login; ?></a></li>
            <?php } ?>
          <!--   <li><a href="<?php echo $wishlist; ?>" id="wishlist-total" title="<?php echo $text_wishlist; ?>"><i class="fa fa-heart"></i> <?php echo $text_wishlist; ?></a></li> -->
          <!--   <li><a href="<?php echo $shopping_cart; ?>" title="<?php echo $text_shopping_cart; ?>"></i> <?php echo $text_shopping_cart; ?></a></li> -->
       <!--      <li><a href="<?php echo $checkout; ?>" title="<?php echo $text_checkout; ?>"><i class="fa fa-share"></i> <?php echo $text_checkout; ?></a></li> -->
          </ul>
        </li>
      </ul>
    </div>
  </div>


			</div>
		</div>
	</div>
</div>
