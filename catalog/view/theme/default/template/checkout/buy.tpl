<?php echo $header; ?>
<div class="container">
    <ul class="breadcrumb">
        <?php foreach ($breadcrumbs as $breadcrumb) { ?>
            <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
        <?php } ?>
    </ul>
    <div class="row"><?php echo $column_left; ?>
        <?php if ($column_left && $column_right) { ?>
            <?php $class = 'col-sm-6'; ?>
        <?php } elseif ($column_left || $column_right) { ?>
            <?php $class = 'col-sm-9'; ?>
        <?php } else { ?>
            <?php $class = 'col-sm-12'; ?>
        <?php } ?>
        <div id="content" class="<?php echo $class; ?>"><?php echo $content_top; ?>
            <style type="text/css">
                #checkout-form {position:relative;}
                #checkout-form .has-feedback .form-control-feedback{top:26px;right:10px}
                #checkout-form #shipping_methods .radio, #checkout-form #payment_methods .radio{margin-left:20px}
                #checkout-form #payment-form{display:none}
                .ocpb-products .table {margin-bottom:0;}
                .ocpb-products .table>tbody>tr>td {vertical-align: middle;}
                .ocpb-products .qty-td {width: 139px;text-align: center;}
                .ocpb-products .qty-td .btn, .ocpb-products .btn-clear {background:none;}
                .ocpb-products .btn-clear {padding:2.7px 12px;}
                .ocpb-products .input-group .form-control[name^=quantity] {width: 51px;text-align: center;}
                .ocpb-products td.total-title {max-width: 100px;}
                .ocpb-products td.delete-td {width: 12px;}
                .ocpb-products td.delete-td i {cursor:pointer;}
                .ocpb-products td.image-td {width: <?php if($product_image_width > 100){ echo $product_image_width + 20; }else{ echo 100; }?>px;}
                .customer-type {position:relative;z-index:3;}
                .customer-type ul {list-style: none;margin:0 0 8px 0;padding:0;}
                .customer-type label {padding: 3px 10px;border-radius:8px;text-decoration:none;cursor:pointer;margin: 0 10px 0 0;font-size:14px;color:#23a1d1;}
                .customer-type label:hover {text-decoration:underline;cursor:pointer;color:#23527c}
                .customer-type label.checked {background-color:#dff7dd;text-decoration:none;color:#000;}
                .ocpb-login-form, .ocpb-login-bg {display:none}
                .ocpb-login-bg {position:absolute;width:100%;height:100%;top:0;left:0;background-color:#fff;z-index:2;opacity:0.9;}
                .ocpb-login-form {width: 300px;background-color: #fff;padding: 15px 20px 5px 20px;border-radius: 10px;position: absolute;top: 50px;left: 50%;margin-left: -150px;z-index:3;border: 1px solid #ddd;border-radius: 4px;}
                #checkout-form .form-group.checkbox label{font-size: 14px;}
                .ocpb-login-form .row {line-height:34px;}
                #checkout-form .ocpb-alert{margin: 10px 0 0 0}
                @media (max-width:767px){
                    .ocpb-products .table-responsive>.table>tbody>tr>td {white-space:normal;}
                    .ocpb-products .qty-td {width: 37px;max-width:37px;text-align:left}
                    .ocpb-products .qty-td input {padding: 2px 6px;width: 37px;text-align:center;}
                    .ocpb-products td.image-td {width:50%;}
                    .ocpb-products .table>tbody>tr>td.delete-td {padding:8px 2px 8px 5px;}
                }
            </style>
            <h1><?php echo $heading_title; ?>
                <?php if ($weight) { ?>
                    &nbsp;(<?php echo $weight; ?>)
                <?php } ?>
            </h1>
            <?php if ($attention) { ?>
                <div class="alert alert-info"><i class="fa fa-info-circle"></i> <?php echo $attention; ?>
                    <button type="button" class="close" data-dismiss="alert">&times;</button>
                </div>
            <?php } ?>
            <?php if ($success) { ?>
                <div class="alert alert-success"><i class="fa fa-check-circle"></i> <?php echo $success; ?>
                    <button type="button" class="close" data-dismiss="alert">&times;</button>
                </div>
            <?php } ?>
            <?php if ($error_warning) { ?>
                <div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> <?php echo $error_warning; ?>
                    <button type="button" class="close" data-dismiss="alert">&times;</button>
                </div>
            <?php } ?>
            <style type="text/css">
                #checkout-form .has-feedback .form-control-feedback{top:26px;right:10px}
                #checkout-form #shipping_methods .radio, #checkout-form #payment_methods .radio{margin-left:20px}
                #checkout-form #payment-form{display:none}
                .ocpb-products .table {margin-bottom:0;display:table !important;}
                .ocpb-products .table>tbody>tr>td {vertical-align: middle;}
                .ocpb-products .qty-td {width: 139px;text-align: center;}
                .ocpb-products .qty-td .btn, .ocpb-products .btn-clear {background:none;}
                .ocpb-products .btn-clear {padding:2.7px 12px;}
                .ocpb-products .input-group .form-control[name^=quantity] {width: 51px;text-align: center;}
                .ocpb-products td.total-title {max-width: 100px;}
                .ocpb-products td.delete-td {width: 12px;}
                .ocpb-products td.delete-td i {cursor:pointer;}
                .ocpb-products td.image-td {width: <?php if($product_image_width > 100){ echo $product_image_width + 20; }else{ echo 100; }?>px;}
                @media (max-width:767px){
                    .ocpb-products .table-responsive>.table>tbody>tr>td {white-space:normal;}
                    .ocpb-products .qty-td {width: 37px;max-width:37px;text-align:left}
                    .ocpb-products .qty-td input {padding: 2px 6px;width: 37px;text-align:center;}
                    .ocpb-products td.image-td {width:50%;}
                    .ocpb-products .table>tbody>tr>td.delete-td {padding:8px 2px 8px 5px;}
                }
            </style>
            <div class="ocpb-products">
                <div class="table-responsive visible-sm visible-md visible-lg">
                    <table class="table visible-sm visible-md visible-lg">
                        <thead>
                            <tr>
                                <td class="delete-td"></td>
                                <td class="text-center image-td"><?php echo $column_image; ?></td>
                                <td class="text-left"><?php echo $column_name; ?></td>
                                <td class="text-left"><?php echo $column_model; ?></td>
                                <td class="text-left"><?php echo $column_quantity; ?></td>
                                <td class="text-right"><?php echo $column_price; ?></td>
                                <td class="text-right"><?php echo $column_total; ?></td>
                            </tr>
                        </thead>
                        <tbody>
                            <?php 
                            foreach ($products as $product) { 
                                $cart_id = isset($product['cart_id']) ? $product['cart_id'] : $product['key'];
                                ?>
                                <tr>
                                    <td class="delete-td"><i class="fa fa-times-circle" onclick="cart.remove('<?php echo $cart_id; ?>');" title="<?php echo $button_remove; ?>"></i></td>
                                    <td class="text-center"><?php if ($product['thumb']) { ?>
                                            <a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" class="img-thumbnail" /></a>
                                        <?php } ?></td>
                                    <td class="text-left name-td"><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a>
                                        <?php if (!$product['stock']) { ?>
                                            <span class="text-danger">***</span>
                                        <?php } ?>
                                        <?php if ($product['option']) { ?>
                                            <?php foreach ($product['option'] as $option) { ?>
                                                <br />
                                                <small><?php echo $option['name']; ?>: <?php echo $option['value']; ?></small>
                                            <?php } ?>
                                        <?php } ?>
                                        <?php if ($product['reward']) { ?>
                                            <br />
                                            <small><?php echo $product['reward']; ?></small>
                                        <?php } ?>
                                        <?php if ($product['recurring']) { ?>
                                            <br />
                                            <span class="label label-info"><?php echo $text_recurring_item; ?></span> <small><?php echo $product['recurring']; ?></small>
                                        <?php } ?></td>
                                    <td class="text-left"><?php echo $product['model']; ?></td>
                                    <td class="text-left qty-td">
                                        <div class="input-group">
                                            <span class="input-group-btn"><button type="button" class="btn" onclick="updateQty('<?php echo $cart_id; ?>', '-', 0);"><i class="fa fa-minus"></i></button></span>
                                            <input type="text" name="quantity[<?php echo $cart_id; ?>]" value="<?php echo $product['quantity']; ?>" size="1" class="form-control" data-cart-id="<?php echo $cart_id; ?>" />
                                            <span class="input-group-btn"><button type="button" class="btn" onclick="updateQty('<?php echo $cart_id; ?>', '+', 0);"><i class="fa fa-plus"></i></button></span>
                                        </div>
                                    </td>
                                    <td class="text-right price-td"><?php echo $product['price']; ?></td>
                                    <td class="text-right total-td"><?php echo $product['total']; ?></td>
                                </tr>
                            <?php } ?>
                            <?php foreach ($vouchers as $voucher) { ?>
                                <tr>
                                    <td class="delete-td"><i class="fa fa-times-circle" onclick="voucher.remove('<?php echo $voucher['key']; ?>');" title="<?php echo $button_remove; ?>"></i></td>
                                    <td></td>
                                    <td class="text-left"><?php echo $voucher['description']; ?></td>
                                    <td class="text-left"></td>
                                    <td class="text-left qty-td">
                                        <div class="input-group"><input type="text" name="" value="1" size="1" disabled="disabled" class="form-control" /></div>
                                    </td>
                                    <td class="text-right"><?php echo $voucher['amount']; ?></td>
                                    <td class="text-right"><?php echo $voucher['amount']; ?></td>
                                </tr>
                            <?php } ?>
                            <?php 
                            $i=0;
                            foreach ($totals as $total) { ?>
                                <tr class="total-item">
                                    <td colspan="5" style="border:none;"><?php if($settings['buy_clear_show'] && $i==0 && count($products) > 1){ ?><button onclick="cart_clear();" class="btn btn-xs btn-clear"><?php echo $text_cart_clear; ?></button><?php } ?></td>
                                    <td class="text-right total-title"><strong><?php echo $total['title']; ?>:</strong></td>
                                    <td class="text-right"><?php echo $total['text']; ?></td>
                                </tr>
                            <?php 
                            $i++;
                            } ?>
                        </tbody>
                    </table>
                    
                </div>
                <div class="table-responsive visible-xs">
                    <table class="table visible-xs">
                        <thead>
                            <tr>
                                <td class="delete-td"></td>
                                <td class="text-center image-td"><?php echo $column_image; ?></td>
                                <td class="text-left"><?php echo $column_quantity; ?></td>
                                <td class="text-right"><?php echo $column_total; ?></td>
                            </tr>
                        </thead>
                        <tbody>
                            <?php 
                            foreach ($products as $product) { 
                                $cart_id = isset($product['cart_id']) ? $product['cart_id'] : $product['key'];
                                ?>
                                <tr>
                                    <td class="delete-td"><i class="fa fa-times-circle" onclick="cart.remove('<?php echo $cart_id; ?>');" title="<?php echo $button_remove; ?>"></i></td>
                                    <td class="text-center">
                                        <?php if ($product['thumb']) { ?>
                                            <a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" class="img-thumbnail" /></a><br />
                                        <?php } ?>
                                        <a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a><br />
                                        <?php echo $product['model']; ?>
                                        <?php if (!$product['stock']) { ?>
                                            <span class="text-danger">***</span>
                                        <?php } ?>
                                        <?php if ($product['option']) { ?>
                                            <?php foreach ($product['option'] as $option) { ?>
                                                <br />
                                                <small><?php echo $option['name']; ?>: <?php echo $option['value']; ?></small>
                                            <?php } ?>
                                        <?php } ?>
                                        <?php if ($product['reward']) { ?>
                                            <br />
                                            <small><?php echo $product['reward']; ?></small>
                                        <?php } ?>
                                        <?php if ($product['recurring']) { ?>
                                            <br />
                                            <span class="label label-info"><?php echo $text_recurring_item; ?></span> <small><?php echo $product['recurring']; ?></small>
                                        <?php } ?>    
                                    </td>
                                    <td class="text-left qty-td">
                                        <button type="button" class="btn" onclick="updateQty('<?php echo $cart_id; ?>', '+', 1);"><i class="fa fa-plus"></i></button>
                                        <input type="text" name="quantity[<?php echo $cart_id; ?>]" value="<?php echo $product['quantity']; ?>" size="1" class="form-control" data-cart-id="<?php echo $cart_id; ?>" />
                                        <button type="button" class="btn" onclick="updateQty('<?php echo $cart_id; ?>', '-', 1);"><i class="fa fa-minus"></i></button>
                                    </td>
                                    <td class="text-right total-td"><?php echo $product['total']; ?></td>
                                </tr>
                            <?php } ?>
                            <?php foreach ($vouchers as $voucher) { ?>
                                <tr>
                                    <td class="delete-td"><i class="fa fa-times-circle" onclick="voucher.remove('<?php echo $voucher['key']; ?>');" title="<?php echo $button_remove; ?>"></i></td>
                                    <td></td>
                                    <td class="text-left"><?php echo $voucher['description']; ?></td>
                                    <td class="text-left"></td>
                                    <td class="text-left qty-td">
                                        <div class="input-group"><input type="text" name="" value="1" size="1" disabled="disabled" class="form-control" /></div>
                                    </td>
                                    <td class="text-right"><?php echo $voucher['amount']; ?></td>
                                    <td class="text-right"><?php echo $voucher['amount']; ?></td>
                                </tr>
                            <?php } ?>
                        </tbody>
                    </table>
                    <table class="table table-totals">
                        <tbody>
                            <?php
                            $i=0;
                            foreach ($totals as $total) { ?>
                                <tr class="total-item">
                                    <td class="text-right total-title" colspan="3"><strong><?php echo $total['title']; ?>:</strong></td>
                                    <td class="text-right"><?php echo $total['text']; ?></td>
                                </tr>
                            <?php 
                            $i++;
                            } ?>
                        </tbody>
                    </table>
                </div>
            </div>
            <?php if (version_compare(preg_replace("/[^\d.]/","",VERSION), '2.2.0.0', '>=')) { ?>
                <?php if ($settings['buy_cart_modules'] && $modules) { ?>
                <h2><?php echo $text_next; ?></h2>
                <p><?php echo $text_next_choice; ?></p>
                <div class="panel-group" id="accordion">
                  <?php foreach ($modules as $module) { ?>
                  <?php echo $module; ?>
                  <?php } ?>
                </div>
                <?php } ?>
            <?php }else{ ?>                
                <?php if (($coupon || $voucher || $reward || $shipping) && $settings['buy_cart_modules']) { ?>
                <h2><?php echo $text_next; ?></h2>
                <p><?php echo $text_next_choice; ?></p>
                <div class="panel-group" id="accordion"><?php echo $coupon; ?><?php echo $voucher; ?><?php echo $reward; ?><?php echo $shipping; ?></div>
                <?php } ?>
            <?php } ?>
            <hr />
            <h2 class="text-center h1" id="checkout-f"><?php echo $settings['buy_h2'.$lang]; ?></h2>
            <br />
            <div id="checkout-form">
            <?php if($settings['buy_login'] && !$customer_logged){ ?>
            <div class="row customer-type">
                <div class="col-xs-12 text-center">
                    <ul>
                        <li>
                            <label class="checked"><input type="radio" name="new_customer" value="1" style="display: none;" /> <?php echo $text_new_customer; ?></label>
                            <label><input type="radio" name="new_customer" value="0" style="display: none;" /> <?php echo $text_old_customer; ?></label>
                        </li>
                    </ul>
                </div>
            </div>
            
            <div class="ocpb-login-form">
                <form action="<?php echo $login_action; ?>" method="post" enctype="multipart/form-data">
                    <div class="form-group">
                        <label class="control-label" for="input-email"><?php echo $entry_email; ?></label>
                        <input type="text" name="email" value="" placeholder="<?php echo $entry_email; ?>" id="input-email" class="form-control" />
                    </div>
                    <div class="form-group">
                        <label class="control-label" for="input-password"><?php echo $entry_password; ?></label>
                        <input type="password" name="password" value="" placeholder="<?php echo $entry_password; ?>" id="input-password" class="form-control" />
                        
                    </div>
                    <div class="form-group row">
                        <div class="col-xs-6"><input type="submit" value="<?php echo $text_login_btn; ?>" class="btn btn-primary"></div>
                        <div class="col-xs-6"><a href="<?php echo $forgotten_link; ?>"><?php echo $text_forgotten; ?></a></div>
                    </div>
                    <input type="hidden" name="redirect" value="<?php echo $login_redirect; ?>" />
                </form>
            </div>
            <div class="ocpb-login-bg"></div>
            <?php } ?>
            <div class="row main-form">
                <div class="<?php echo $settings['buy_form_design']?'col-sm-6 col-sm-offset-3':'col-sm-6' ?>">
                    <?php if($settings['buy_form_headings']){ ?>
                    <div class="form-group">
                        <h2><span class="label label-primary">1</span> <?php echo $settings['buy_heading_1'.$lang]; ?></h2>
                    </div>
                    <?php } ?>
                    <div class="form-group" style="display: <?php echo (count($customer_groups) > 1 ? 'block' : 'none'); ?>;">
                        <label class="control-label"><?php echo $entry_customer_group; ?></label>
                        <?php foreach ($customer_groups as $customer_group) { ?>
                            <?php if ($customer_group['customer_group_id'] == $customer_group_id) { ?>
                                <div class="radio">
                                    <label>
                                        <input type="radio" name="customer_group_id" value="<?php echo $customer_group['customer_group_id']; ?>" checked="checked" />
                                        <?php echo $customer_group['name']; ?></label>
                                </div>
                            <?php } else { ?>
                                <div class="radio">
                                    <label>
                                        <input type="radio" name="customer_group_id" value="<?php echo $customer_group['customer_group_id']; ?>" />
                                        <?php echo $customer_group['name']; ?></label>
                                </div>
                            <?php } ?>
                        <?php } ?>
                    </div>
                    <?php if($settings['buy_firstname_status']){ ?>
                    <div class="form-group<?php if($settings['buy_firstname_required']){ ?> required<?php } ?>">
                        <label class="control-label" for="input-payment-firstname"><?php echo $entry_firstname; ?></label>
                        <input type="text" name="firstname" value="<?php echo $firstname; ?>" placeholder="<?php echo $entry_firstname; ?>" id="input-payment-firstname" class="form-control" />
                    </div>
                    <?php } ?>
                    <?php if($settings['buy_lastname_status']){ ?>
                    <div class="form-group<?php if($settings['buy_lastname_required']){ ?> required<?php } ?>">
                        <label class="control-label" for="input-payment-lastname"><?php echo $entry_lastname; ?></label>
                        <input type="text" name="lastname" value="<?php echo $lastname; ?>" placeholder="<?php echo $entry_lastname; ?>" id="input-payment-lastname" class="form-control" />
                    </div>
                    <?php } ?>
                    <?php if($settings['buy_email_status']){ ?>
                    <div class="form-group email<?php if($settings['buy_email_required'] || $settings['buy_register_status']){ ?> required<?php } ?>">
                        <label class="control-label" for="input-payment-email"><?php echo $entry_email; ?></label>
                        <input type="text" name="email" value="<?php echo $email; ?>" placeholder="<?php echo $entry_email; ?>" id="input-payment-email" class="form-control" />
                    </div>
                    <?php } ?>
                    <?php if($settings['buy_telephone_status']){ ?>
                    <div class="form-group<?php if($settings['buy_telephone_required']){ ?> required<?php } ?>">
                        <label class="control-label" for="input-payment-telephone"><?php echo $entry_telephone; ?></label>
                        <input type="text" name="telephone" value="<?php echo $telephone; ?>" placeholder="<?php echo $entry_telephone; ?>" id="input-payment-telephone" class="form-control" />
                    </div>
                    <?php } ?>
                    <?php if($settings['buy_fax_status']){ ?>
                    <div class="form-group<?php if($settings['buy_fax_required']){ ?> required<?php } ?>">
                        <label class="control-label" for="input-payment-fax"><?php echo $entry_fax; ?></label>
                        <input type="text" name="fax" value="<?php echo $fax; ?>" placeholder="<?php echo $entry_fax; ?>" id="input-payment-fax" class="form-control" />
                    </div>
                    <?php } ?>
                    <?php if($settings['buy_company_status']){ ?>
                    <div class="form-group<?php if($settings['buy_company_required']){ ?> required<?php } ?>">
                        <label class="control-label" for="input-payment-company"><?php echo $entry_company; ?></label>
                        <input type="text" name="company" value="<?php echo $company; ?>" placeholder="<?php echo $entry_company; ?>" id="input-payment-company" class="form-control" />
                    </div>
                    <?php } ?>
                    <?php if($settings['buy_register_status'] && !$settings['buy_register_required'] && !$customer_logged){ ?>
                    <div class="form-group checkbox">
                        <label><input type="checkbox" name="register" value="1" checked /> <?php echo $entry_register; ?></label>
                    </div>
                    <?php } ?>
                    <?php if($settings['buy_register_status'] && !$customer_logged){ ?>
                    <div class="register-fields">
                        <div class="form-group required">
                            <label class="control-label" for="input-password1"><?php echo $entry_password1; ?></label>
                            <input type="password" name="password1" value="" placeholder="<?php echo $entry_password1; ?>" id="input-password1" class="form-control" />
                        </div>
                        <div class="form-group required">
                            <label class="control-label" for="input-password2"><?php echo $entry_password2; ?></label>
                            <input type="password" name="password2" value="" placeholder="<?php echo $entry_password2; ?>" id="input-password2" class="form-control" />
                        </div>
                    </div>
                    <?php } ?>
                    <?php foreach ($custom_fields as $custom_field) { ?>
                        <?php if ($custom_field['location'] == 'account') { ?>
                            <?php if ($custom_field['type'] == 'select') { ?>
                                <div id="payment-custom-field<?php echo $custom_field['custom_field_id']; ?>" class="form-group custom-field" data-sort="<?php echo $custom_field['sort_order']; ?>">
                                    <label class="control-label" for="input-payment-custom-field<?php echo $custom_field['custom_field_id']; ?>"><?php echo $custom_field['name']; ?></label>
                                    <select name="custom_field[<?php echo $custom_field['location']; ?>][<?php echo $custom_field['custom_field_id']; ?>]" id="input-payment-custom-field<?php echo $custom_field['custom_field_id']; ?>" class="form-control">
                                        <option value=""><?php echo $text_select; ?></option>
                                        <?php foreach ($custom_field['custom_field_value'] as $custom_field_value) { ?>
                                            <?php if (isset($guest_custom_field[$custom_field['custom_field_id']]) && $custom_field_value['custom_field_value_id'] == $guest_custom_field[$custom_field['custom_field_id']]) { ?>
                                                <option value="<?php echo $custom_field_value['custom_field_value_id']; ?>" selected="selected"><?php echo $custom_field_value['name']; ?></option>
                                            <?php } else { ?>
                                                <option value="<?php echo $custom_field_value['custom_field_value_id']; ?>"><?php echo $custom_field_value['name']; ?></option>
                                            <?php } ?>
                                        <?php } ?>
                                    </select>
                                </div>
                            <?php } ?>
                            <?php if ($custom_field['type'] == 'radio') { ?>
                                <div id="payment-custom-field<?php echo $custom_field['custom_field_id']; ?>" class="form-group custom-field" data-sort="<?php echo $custom_field['sort_order']; ?>">
                                    <label class="control-label"><?php echo $custom_field['name']; ?></label>
                                    <div id="input-payment-custom-field<?php echo $custom_field['custom_field_id']; ?>">
                                        <?php foreach ($custom_field['custom_field_value'] as $custom_field_value) { ?>
                                            <div class="radio">
                                                <?php if (isset($guest_custom_field[$custom_field['custom_field_id']]) && $custom_field_value['custom_field_value_id'] == $guest_custom_field[$custom_field['custom_field_id']]) { ?>
                                                    <label>
                                                        <input type="radio" name="custom_field[<?php echo $custom_field['location']; ?>][<?php echo $custom_field['custom_field_id']; ?>]" value="<?php echo $custom_field_value['custom_field_value_id']; ?>" checked="checked" />
                                                        <?php echo $custom_field_value['name']; ?></label>
                                                <?php } else { ?>
                                                    <label>
                                                        <input type="radio" name="custom_field[<?php echo $custom_field['location']; ?>][<?php echo $custom_field['custom_field_id']; ?>]" value="<?php echo $custom_field_value['custom_field_value_id']; ?>" />
                                                        <?php echo $custom_field_value['name']; ?></label>
                                                <?php } ?>
                                            </div>
                                        <?php } ?>
                                    </div>
                                </div>
                            <?php } ?>
                            <?php if ($custom_field['type'] == 'checkbox') { ?>
                                <div id="payment-custom-field<?php echo $custom_field['custom_field_id']; ?>" class="form-group custom-field" data-sort="<?php echo $custom_field['sort_order']; ?>">
                                    <label class="control-label"><?php echo $custom_field['name']; ?></label>
                                    <div id="input-payment-custom-field<?php echo $custom_field['custom_field_id']; ?>">
                                        <?php foreach ($custom_field['custom_field_value'] as $custom_field_value) { ?>
                                            <div class="checkbox">
                                                <?php if (isset($guest_custom_field[$custom_field['custom_field_id']]) && in_array($custom_field_value['custom_field_value_id'], $guest_custom_field[$custom_field['custom_field_id']])) { ?>
                                                    <label>
                                                        <input type="checkbox" name="custom_field[<?php echo $custom_field['location']; ?>][<?php echo $custom_field['custom_field_id']; ?>][]" value="<?php echo $custom_field_value['custom_field_value_id']; ?>" checked="checked" />
                                                        <?php echo $custom_field_value['name']; ?></label>
                                                <?php } else { ?>
                                                    <label>
                                                        <input type="checkbox" name="custom_field[<?php echo $custom_field['location']; ?>][<?php echo $custom_field['custom_field_id']; ?>][]" value="<?php echo $custom_field_value['custom_field_value_id']; ?>" />
                                                        <?php echo $custom_field_value['name']; ?></label>
                                                <?php } ?>
                                            </div>
                                        <?php } ?>
                                    </div>
                                </div>
                            <?php } ?>
                            <?php if ($custom_field['type'] == 'text') { ?>
                                <div id="payment-custom-field<?php echo $custom_field['custom_field_id']; ?>" class="form-group custom-field" data-sort="<?php echo $custom_field['sort_order']; ?>">
                                    <label class="control-label" for="input-payment-custom-field<?php echo $custom_field['custom_field_id']; ?>"><?php echo $custom_field['name']; ?></label>
                                    <input type="text" name="custom_field[<?php echo $custom_field['location']; ?>][<?php echo $custom_field['custom_field_id']; ?>]" value="<?php echo (isset($guest_custom_field[$custom_field['custom_field_id']]) ? $guest_custom_field[$custom_field['custom_field_id']] : $custom_field['value']); ?>" placeholder="<?php echo $custom_field['name']; ?>" id="input-payment-custom-field<?php echo $custom_field['custom_field_id']; ?>" class="form-control" />
                                </div>
                            <?php } ?>
                            <?php if ($custom_field['type'] == 'textarea') { ?>
                                <div id="payment-custom-field<?php echo $custom_field['custom_field_id']; ?>" class="form-group custom-field" data-sort="<?php echo $custom_field['sort_order']; ?>">
                                    <label class="control-label" for="input-payment-custom-field<?php echo $custom_field['custom_field_id']; ?>"><?php echo $custom_field['name']; ?></label>
                                    <textarea name="custom_field[<?php echo $custom_field['location']; ?>][<?php echo $custom_field['custom_field_id']; ?>]" rows="5" placeholder="<?php echo $custom_field['name']; ?>" id="input-payment-custom-field<?php echo $custom_field['custom_field_id']; ?>" class="form-control"><?php echo (isset($guest_custom_field[$custom_field['custom_field_id']]) ? $guest_custom_field[$custom_field['custom_field_id']] : $custom_field['value']); ?></textarea>
                                </div>
                            <?php } ?>
                            <?php if ($custom_field['type'] == 'file') { ?>
                                <div id="payment-custom-field<?php echo $custom_field['custom_field_id']; ?>" class="form-group custom-field" data-sort="<?php echo $custom_field['sort_order']; ?>">
                                    <label class="control-label"><?php echo $custom_field['name']; ?></label>
                                    <br />
                                    <button type="button" id="button-payment-custom-field<?php echo $custom_field['custom_field_id']; ?>" data-loading-text="<?php echo $text_loading; ?>" class="btn btn-default"><i class="fa fa-upload"></i> <?php echo $button_upload; ?></button>
                                    <input type="hidden" name="custom_field[<?php echo $custom_field['location']; ?>][<?php echo $custom_field['custom_field_id']; ?>]" value="<?php echo (isset($guest_custom_field[$custom_field['custom_field_id']]) ? $guest_custom_field[$custom_field['custom_field_id']] : ''); ?>" />
                                </div>
                            <?php } ?>
                            <?php if ($custom_field['type'] == 'date') { ?>
                                <div id="payment-custom-field<?php echo $custom_field['custom_field_id']; ?>" class="form-group custom-field" data-sort="<?php echo $custom_field['sort_order']; ?>">
                                    <label class="control-label" for="input-payment-custom-field<?php echo $custom_field['custom_field_id']; ?>"><?php echo $custom_field['name']; ?></label>
                                    <div class="input-group date">
                                        <input type="text" name="custom_field[<?php echo $custom_field['location']; ?>][<?php echo $custom_field['custom_field_id']; ?>]" value="<?php echo (isset($guest_custom_field[$custom_field['custom_field_id']]) ? $guest_custom_field[$custom_field['custom_field_id']] : $custom_field['value']); ?>" placeholder="<?php echo $custom_field['name']; ?>" data-format="YYYY-MM-DD" id="input-payment-custom-field<?php echo $custom_field['custom_field_id']; ?>" class="form-control" />
                                        <span class="input-group-btn">
                                            <button type="button" class="btn btn-default"><i class="fa fa-calendar"></i></button>
                                        </span></div>
                                </div>
                            <?php } ?>
                            <?php if ($custom_field['type'] == 'time') { ?>
                                <div id="payment-custom-field<?php echo $custom_field['custom_field_id']; ?>" class="form-group custom-field" data-sort="<?php echo $custom_field['sort_order']; ?>">
                                    <label class="control-label" for="input-payment-custom-field<?php echo $custom_field['custom_field_id']; ?>"><?php echo $custom_field['name']; ?></label>
                                    <div class="input-group time">
                                        <input type="text" name="custom_field[<?php echo $custom_field['location']; ?>][<?php echo $custom_field['custom_field_id']; ?>]" value="<?php echo (isset($guest_custom_field[$custom_field['custom_field_id']]) ? $guest_custom_field[$custom_field['custom_field_id']] : $custom_field['value']); ?>" placeholder="<?php echo $custom_field['name']; ?>" data-format="HH:mm" id="input-payment-custom-field<?php echo $custom_field['custom_field_id']; ?>" class="form-control" />
                                        <span class="input-group-btn">
                                            <button type="button" class="btn btn-default"><i class="fa fa-calendar"></i></button>
                                        </span></div>
                                </div>
                            <?php } ?>
                            <?php if ($custom_field['type'] == 'datetime') { ?>
                                <div id="payment-custom-field<?php echo $custom_field['custom_field_id']; ?>" class="form-group custom-field" data-sort="<?php echo $custom_field['sort_order']; ?>">
                                    <label class="control-label" for="input-payment-custom-field<?php echo $custom_field['custom_field_id']; ?>"><?php echo $custom_field['name']; ?></label>
                                    <div class="input-group datetime">
                                        <input type="text" name="custom_field[<?php echo $custom_field['location']; ?>][<?php echo $custom_field['custom_field_id']; ?>]" value="<?php echo (isset($guest_custom_field[$custom_field['custom_field_id']]) ? $guest_custom_field[$custom_field['custom_field_id']] : $custom_field['value']); ?>" placeholder="<?php echo $custom_field['name']; ?>" data-format="YYYY-MM-DD HH:mm" id="input-payment-custom-field<?php echo $custom_field['custom_field_id']; ?>" class="form-control" />
                                        <span class="input-group-btn">
                                            <button type="button" class="btn btn-default"><i class="fa fa-calendar"></i></button>
                                        </span></div>
                                </div>
                            <?php } ?>
                        <?php } ?>
                    <?php } ?>
                <?php if(!$settings['buy_form_design']){ ?>
                </div>
                <div class="col-sm-6">
                <?php } ?>
                    <?php if($settings['buy_form_headings']){ ?>
                    <div class="form-group">
                        <h2><span class="label label-primary">2</span> <?php echo $settings['buy_heading_2'.$lang]; ?></h2>
                    </div>
                    <?php } ?>
                    <?php if($settings['buy_country_status']){ ?>
                    <div class="form-group<?php if($settings['buy_country_required']){ ?> required<?php } ?>" id="payment-country">
                        <label class="control-label" for="input-payment-country"><?php echo $entry_country; ?></label>
                        <select name="country_id" id="input-payment-country" class="form-control">
                            <option value=""><?php echo $text_select; ?></option>
                            <?php foreach ($countries as $country) { ?>
                                <?php if ($country['country_id'] == $country_id) { ?>
                                    <option value="<?php echo $country['country_id']; ?>" selected="selected"><?php echo $country['name']; ?></option>
                                <?php } else { ?>
                                    <option value="<?php echo $country['country_id']; ?>"><?php echo $country['name']; ?></option>
                                <?php } ?>
                            <?php } ?>
                        </select>
                    </div>
                    <?php }else{ ?>
                    <div class="hidden">
                        <select name="country_id">
                            <option value="<?php echo $country_id; ?>" selected="selected"></option>
                        </select>
                    </div>
                    <?php } ?>
                    <?php if($settings['buy_zone_status']){ ?>
                    <div class="form-group has-feedback<?php if($settings['buy_zone_required']){ ?> required<?php } ?>" id="payment-zone">
                        <label class="control-label" for="input-payment-zone"><?php echo $entry_zone; ?></label>
                        <select name="zone_id" id="input-payment-zone" class="form-control" onchange="updateShM(this.value);">
                        </select>
                    </div>
                    <?php }else{ ?>
                    <div class="hidden">
                        <select name="zone_id">
                            <option value="<?php echo $zone_id; ?>" selected="selected"></option>
                        </select>
                    </div>
                    <?php } ?>
                    <?php if($settings['buy_city_status']){ ?>
                    <div class="form-group<?php if($settings['buy_city_required']){ ?> required<?php } ?>">
                        <label class="control-label" for="input-payment-city"><?php echo $entry_city; ?></label>
                        <input type="text" name="city" value="<?php echo $city; ?>" placeholder="<?php echo $entry_city; ?>" id="input-payment-city" class="form-control" />
                    </div>
                    <?php } ?>
                    <?php if($settings['buy_postcode_status']){ ?>
                    <div class="form-group<?php if($settings['buy_postcode_required']){ ?> required<?php } ?>">
                        <label class="control-label" for="input-payment-postcode"><?php echo $entry_postcode; ?></label>
                        <input type="text" name="postcode" value="<?php echo $postcode; ?>" placeholder="<?php echo $entry_postcode; ?>" id="input-payment-postcode" class="form-control" />
                    </div>
                    <?php } ?>
                    <?php if($settings['buy_address_1_status']){ ?>
                    <div class="form-group<?php if($settings['buy_address_1_required']){ ?> required<?php } ?>">
                        <label class="control-label" for="input-payment-address-1"><?php echo $entry_address_1; ?></label>
                        <input type="text" name="address_1" value="<?php echo $address_1; ?>" placeholder="<?php echo $entry_address_1; ?>" id="input-payment-address-1" class="form-control" />
                    </div>
                    <?php } ?>
                    <?php if($settings['buy_address_2_status']){ ?>
                    <div class="form-group<?php if($settings['buy_address_2_required']){ ?> required<?php } ?>">
                        <label class="control-label" for="input-payment-address-2"><?php echo $entry_address_2; ?></label>
                        <input type="text" name="address_2" value="<?php echo $address_2; ?>" placeholder="<?php echo $entry_address_2; ?>" id="input-payment-address-2" class="form-control" />
                    </div>
                    <?php } ?>
                    <?php foreach ($custom_fields as $custom_field) { ?>
                        <?php if ($custom_field['location'] == 'address') { ?>
                            <?php if ($custom_field['type'] == 'select') { ?>
                                <div id="payment-custom-field<?php echo $custom_field['custom_field_id']; ?>" class="form-group custom-field" data-sort="<?php echo $custom_field['sort_order']; ?>">
                                    <label class="control-label" for="input-payment-custom-field<?php echo $custom_field['custom_field_id']; ?>"><?php echo $custom_field['name']; ?></label>
                                    <select name="custom_field[<?php echo $custom_field['location']; ?>][<?php echo $custom_field['custom_field_id']; ?>]" id="input-payment-custom-field<?php echo $custom_field['custom_field_id']; ?>" class="form-control">
                                        <option value=""><?php echo $text_select; ?></option>
                                        <?php foreach ($custom_field['custom_field_value'] as $custom_field_value) { ?>
                                            <?php if (isset($guest_custom_field[$custom_field['custom_field_id']]) && $custom_field_value['custom_field_value_id'] == $guest_custom_field[$custom_field['custom_field_id']]) { ?>
                                                <option value="<?php echo $custom_field_value['custom_field_value_id']; ?>" selected="selected"><?php echo $custom_field_value['name']; ?></option>
                                            <?php } else { ?>
                                                <option value="<?php echo $custom_field_value['custom_field_value_id']; ?>"><?php echo $custom_field_value['name']; ?></option>
                                            <?php } ?>
                                        <?php } ?>
                                    </select>
                                </div>
                            <?php } ?>
                            <?php if ($custom_field['type'] == 'radio') { ?>
                                <div id="payment-custom-field<?php echo $custom_field['custom_field_id']; ?>" class="form-group custom-field" data-sort="<?php echo $custom_field['sort_order']; ?>">
                                    <label class="control-label"><?php echo $custom_field['name']; ?></label>
                                    <div id="input-payment-custom-field<?php echo $custom_field['custom_field_id']; ?>">
                                        <?php foreach ($custom_field['custom_field_value'] as $custom_field_value) { ?>
                                            <div class="radio">
                                                <?php if (isset($guest_custom_field[$custom_field['custom_field_id']]) && $custom_field_value['custom_field_value_id'] == $guest_custom_field[$custom_field['custom_field_id']]) { ?>
                                                    <label>
                                                        <input type="radio" name="custom_field[<?php echo $custom_field['location']; ?>][<?php echo $custom_field['custom_field_id']; ?>]" value="<?php echo $custom_field_value['custom_field_value_id']; ?>" checked="checked" />
                                                        <?php echo $custom_field_value['name']; ?></label>
                                                <?php } else { ?>
                                                    <label>
                                                        <input type="radio" name="custom_field[<?php echo $custom_field['location']; ?>][<?php echo $custom_field['custom_field_id']; ?>]" value="<?php echo $custom_field_value['custom_field_value_id']; ?>" />
                                                        <?php echo $custom_field_value['name']; ?></label>
                                                <?php } ?>
                                            </div>
                                        <?php } ?>
                                    </div>
                                </div>
                            <?php } ?>
                            <?php if ($custom_field['type'] == 'checkbox') { ?>
                                <div id="payment-custom-field<?php echo $custom_field['custom_field_id']; ?>" class="form-group custom-field" data-sort="<?php echo $custom_field['sort_order']; ?>">
                                    <label class="control-label"><?php echo $custom_field['name']; ?></label>
                                    <div id="input-payment-custom-field<?php echo $custom_field['custom_field_id']; ?>">
                                        <?php foreach ($custom_field['custom_field_value'] as $custom_field_value) { ?>
                                            <div class="checkbox">
                                                <?php if (isset($guest_custom_field[$custom_field['custom_field_id']]) && in_array($custom_field_value['custom_field_value_id'], $guest_custom_field[$custom_field['custom_field_id']])) { ?>
                                                    <label>
                                                        <input type="checkbox" name="custom_field[<?php echo $custom_field['location']; ?>][<?php echo $custom_field['custom_field_id']; ?>][]" value="<?php echo $custom_field_value['custom_field_value_id']; ?>" checked="checked" />
                                                        <?php echo $custom_field_value['name']; ?></label>
                                                <?php } else { ?>
                                                    <label>
                                                        <input type="checkbox" name="custom_field[<?php echo $custom_field['location']; ?>][<?php echo $custom_field['custom_field_id']; ?>][]" value="<?php echo $custom_field_value['custom_field_value_id']; ?>" />
                                                        <?php echo $custom_field_value['name']; ?></label>
                                                <?php } ?>
                                            </div>
                                        <?php } ?>
                                    </div>
                                </div>
                            <?php } ?>
                            <?php if ($custom_field['type'] == 'text') { ?>
                                <div id="payment-custom-field<?php echo $custom_field['custom_field_id']; ?>" class="form-group custom-field" data-sort="<?php echo $custom_field['sort_order']; ?>">
                                    <label class="control-label" for="input-payment-custom-field<?php echo $custom_field['custom_field_id']; ?>"><?php echo $custom_field['name']; ?></label>
                                    <input type="text" name="custom_field[<?php echo $custom_field['location']; ?>][<?php echo $custom_field['custom_field_id']; ?>]" value="<?php echo (isset($guest_custom_field[$custom_field['custom_field_id']]) ? $guest_custom_field[$custom_field['custom_field_id']] : $custom_field['value']); ?>" placeholder="<?php echo $custom_field['name']; ?>" id="input-payment-custom-field<?php echo $custom_field['custom_field_id']; ?>" class="form-control" />
                                </div>
                            <?php } ?>
                            <?php if ($custom_field['type'] == 'textarea') { ?>
                                <div id="payment-custom-field<?php echo $custom_field['custom_field_id']; ?>" class="form-group custom-field" data-sort="<?php echo $custom_field['sort_order']; ?>">
                                    <label class="control-label" for="input-payment-custom-field<?php echo $custom_field['custom_field_id']; ?>"><?php echo $custom_field['name']; ?></label>
                                    <textarea name="custom_field[<?php echo $custom_field['location']; ?>][<?php echo $custom_field['custom_field_id']; ?>]" rows="5" placeholder="<?php echo $custom_field['name']; ?>" id="input-payment-custom-field<?php echo $custom_field['custom_field_id']; ?>" class="form-control"><?php echo (isset($guest_custom_field[$custom_field['custom_field_id']]) ? $guest_custom_field[$custom_field['custom_field_id']] : $custom_field['value']); ?></textarea>
                                </div>
                            <?php } ?>
                            <?php if ($custom_field['type'] == 'file') { ?>
                                <div id="payment-custom-field<?php echo $custom_field['custom_field_id']; ?>" class="form-group custom-field" data-sort="<?php echo $custom_field['sort_order']; ?>">
                                    <label class="control-label"><?php echo $custom_field['name']; ?></label>
                                    <br />
                                    <button type="button" id="button-payment-custom-field<?php echo $custom_field['custom_field_id']; ?>" data-loading-text="<?php echo $text_loading; ?>" class="btn btn-default"><i class="fa fa-upload"></i> <?php echo $button_upload; ?></button>
                                    <input type="hidden" name="custom_field[<?php echo $custom_field['location']; ?>][<?php echo $custom_field['custom_field_id']; ?>]" value="<?php echo (isset($guest_custom_field[$custom_field['custom_field_id']]) ? $guest_custom_field[$custom_field['custom_field_id']] : ''); ?>" />
                                </div>
                            <?php } ?>
                            <?php if ($custom_field['type'] == 'date') { ?>
                                <div id="payment-custom-field<?php echo $custom_field['custom_field_id']; ?>" class="form-group custom-field" data-sort="<?php echo $custom_field['sort_order']; ?>">
                                    <label class="control-label" for="input-payment-custom-field<?php echo $custom_field['custom_field_id']; ?>"><?php echo $custom_field['name']; ?></label>
                                    <div class="input-group date">
                                        <input type="text" name="custom_field[<?php echo $custom_field['location']; ?>][<?php echo $custom_field['custom_field_id']; ?>]" value="<?php echo (isset($guest_custom_field[$custom_field['custom_field_id']]) ? $guest_custom_field[$custom_field['custom_field_id']] : $custom_field['value']); ?>" placeholder="<?php echo $custom_field['name']; ?>" data-format="YYYY-MM-DD" id="input-payment-custom-field<?php echo $custom_field['custom_field_id']; ?>" class="form-control" />
                                        <span class="input-group-btn">
                                            <button type="button" class="btn btn-default"><i class="fa fa-calendar"></i></button>
                                        </span></div>
                                </div>
                            <?php } ?>
                            <?php if ($custom_field['type'] == 'time') { ?>
                                <div id="payment-custom-field<?php echo $custom_field['custom_field_id']; ?>" class="form-group custom-field" data-sort="<?php echo $custom_field['sort_order']; ?>">
                                    <label class="control-label" for="input-payment-custom-field<?php echo $custom_field['custom_field_id']; ?>"><?php echo $custom_field['name']; ?></label>
                                    <div class="input-group time">
                                        <input type="text" name="custom_field[<?php echo $custom_field['location']; ?>][<?php echo $custom_field['custom_field_id']; ?>]" value="<?php echo (isset($guest_custom_field[$custom_field['custom_field_id']]) ? $guest_custom_field[$custom_field['custom_field_id']] : $custom_field['value']); ?>" placeholder="<?php echo $custom_field['name']; ?>" data-format="HH:mm" id="input-payment-custom-field<?php echo $custom_field['custom_field_id']; ?>" class="form-control" />
                                        <span class="input-group-btn">
                                            <button type="button" class="btn btn-default"><i class="fa fa-calendar"></i></button>
                                        </span></div>
                                </div>
                            <?php } ?>
                            <?php if ($custom_field['type'] == 'datetime') { ?>
                                <div id="payment-custom-field<?php echo $custom_field['custom_field_id']; ?>" class="form-group custom-field" data-sort="<?php echo $custom_field['sort_order']; ?>">
                                    <label class="control-label" for="input-payment-custom-field<?php echo $custom_field['custom_field_id']; ?>"><?php echo $custom_field['name']; ?></label>
                                    <div class="input-group datetime">
                                        <input type="text" name="custom_field[<?php echo $custom_field['location']; ?>][<?php echo $custom_field['custom_field_id']; ?>]" value="<?php echo (isset($guest_custom_field[$custom_field['custom_field_id']]) ? $guest_custom_field[$custom_field['custom_field_id']] : $custom_field['value']); ?>" placeholder="<?php echo $custom_field['name']; ?>" data-format="YYYY-MM-DD HH:mm" id="input-payment-custom-field<?php echo $custom_field['custom_field_id']; ?>" class="form-control" />
                                        <span class="input-group-btn">
                                            <button type="button" class="btn btn-default"><i class="fa fa-calendar"></i></button>
                                        </span></div>
                                </div>
                            <?php } ?>
                        <?php } ?>
                    <?php } ?>
                    <?php if($settings['buy_form_headings'] && ($settings['buy_shipping_select'] || $settings['buy_payment_select'])) { ?>
                    <div class="form-group">
                        <h2><span class="label label-primary">3</span> <?php echo $settings['buy_heading_3'.$lang]; ?></h2>
                    </div>
                    <?php } ?>
                    <?php if($settings['buy_shipping_select']){ ?>
                    <div class="form-group">
                        <div id="shipping_methods"></div>
                    </div>
                    <?php }else{ ?>
                        <div class="hidden"><input type="radio" name="shipping_method" value="flat.flat" checked="checked"></div>
                    <?php } ?>
                    <br />
                    <?php if($settings['buy_payment_select']){ ?>
                    <div class="form-group">
                        <div id="payment_methods"></div>
                    </div>
                    <?php }else{ ?>
                        <div class="hidden"><input type="radio" name="payment_method" value="cod" checked="checked"></div>
                    <?php } ?>
                    <?php if($settings['buy_comment_status']){ ?>
                    <br />
                    <div class="form-group<?php if($settings['buy_comment_required']){ ?> required<?php } ?>">
                        <label class="control-label" for="input-comment"><strong><?php echo $entry_comment; ?></strong></label>
                        <textarea name="comment" rows="3" class="form-control" id="input-comment"><?php echo $comment; ?></textarea>
                    </div>
                    <?php } ?>
                    <?php if ($text_agree) { ?>
                        <div class="buttons">
                            <div class="text-center">
                                <label><?php echo $text_agree; ?>
                                <?php if ($agree) { ?>
                                    <input type="checkbox" name="agree" value="1" checked="checked" />
                                <?php } else { ?>
                                    <input type="checkbox" name="agree" value="1" />
                                <?php } ?>
                                </label>
                                <br />
                                <br />
                                <input type="button" value="<?php echo $button_order; ?>" id="button-order" data-loading-text="<?php echo $text_loading; ?>" class="btn btn-success btn-lg" />
                            </div>
                            <div id="payment-form"></div>
                        </div>
                    <?php } else { ?>
                        <br />
                        <div class="buttons">
                            <div class="text-center">
                                <input type="button" value="<?php echo $button_order; ?>" id="button-order" data-loading-text="<?php echo $text_loading; ?>" class="btn btn-success btn-lg" />
                            </div>
                            <div id="payment-form"></div>
                        </div>
                    <?php } ?>
                </div>
            </div>
            </div>
            <?php echo $content_bottom; ?></div>
        <?php echo $column_right; ?></div>
</div>
<?php if($settings['buy_telephone_mask']){ ?>
<script type="text/javascript" src="catalog/view/javascript/jquery/jquery.maskedinput.min.js"></script>
<?php } ?>
<script type="text/javascript"><!--
cart.remove = function(key) {
        $.ajax({
            url: 'index.php?route=checkout/cart/remove',
            type: 'post',
            data: 'key=' + key,
            dataType: 'json',
            beforeSend: function() {
                $('#cart > button').button('loading');
            },
            success: function(json) {
                $('#cart > button').button('reset');
                $('#cart-total').html(json['total']);
                $('.ocpb-products input[name="quantity[' + key + ']"]').closest('tr').remove();
                if(typeof($('.ocpb-products input[name^=quantity]').val()) == 'undefined'){
                    location = 'index.php?route=checkout/buy';
                }else{
                    $('#cart > ul').load('index.php?route=common/cart/info ul li');
                    if(typeof($('#shipping_methods')) !== 'undefined' && $('#shipping_methods').length){
                        updateShM($('#checkout-form select[name=\'zone_id\']').val());
                    }else{
                        selectShipping();
                    }
                }
            }
        });
    }
    $('#checkout-form select[name=\'country_id\']').on('change', function() {
        $.ajax({
            url: 'index.php?route=checkout/checkout/country&country_id=' + this.value,
            dataType: 'json',
            beforeSend: function() {
                $('#checkout-form #payment-zone').append('<span class="form-control-feedback"><i class="fa fa-circle-o-notch fa-spin"></i></span>');
            },
            complete: function() {
                $('#checkout-form #payment-zone .form-control-feedback').remove();
            },
            success: function(json) {
                if (json['postcode_required'] == '1') {
                    $('#checkout-form input[name=\'postcode\']').parent().addClass('required');
                } else {
                    $('#checkout-form input[name=\'postcode\']').parent().removeClass('required');
                }

                html = '<option value=""> --- Please Select --- </option>';

                if (json['zone']) {
                    for (i = 0; i < json['zone'].length; i++) {
                        html += '<option value="' + json['zone'][i]['zone_id'] + '"';

                        <?php if(!empty($zone_id)){ ?>
                        if (json['zone'][i]['zone_id'] == '<?php echo $zone_id; ?>') {
                            html += ' selected="selected"';
                        }
                        <?php } ?>

                        html += '>' + json['zone'][i]['name'] + '</option>';
                    }
                } else {
                    html += '<option value="0" selected="selected"> --- None --- </option>';
                }

                $('#checkout-form select[name=\'zone_id\']').html(html);
                var zone_id = $('#checkout-form select[name=\'zone_id\']').val();
                if (zone_id) {
                    if(typeof($('#shipping_methods')) !== 'undefined' && $('#shipping_methods').length){
                        updateShM($('#checkout-form select[name=\'zone_id\']').val());
                    }else{
                        selectShipping();
                    }
                }
            },
            error: function(xhr, ajaxOptions, thrownError) {
                alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
            }
        });
    });

    $('#checkout-form select[name=\'country_id\']').trigger('change');
    function updateShM(zone_id) {
<?php if ($settings['buy_shipping_select']) { ?>
            $('#shipping_methods').load('index.php?route=checkout/buy/getShippingMethods&zone_id=' + zone_id, function() {
                $('#shm_loading').empty();
                selectShipping();
            });
<?php } ?>
        $('#payment_methods').load('index.php?route=checkout/buy/getPaymentMethods&zone_id=' + zone_id, function() {
            $('#pay_loading').empty();
        });
    }
    function getPaymentForm(code, callback) {
        $.ajax({
            async: false,
            cache: false,
            url: 'index.php?route=checkout/buy/getPaymentForm',
            type: 'post',
            data: 'code=' + code.split('.')[0] + '&payment_method=' + code,
            dataType: 'json',
            success: function(json) {
                $('#payment_form2').html(json['output']);
                callback();
            }
        });
    }
    $('#button-order').click(function() {
        $.ajax({
            url: 'index.php?route=checkout/buy/save',
            type: 'post',
            data: $('#checkout-form .main-form input[type=\'text\'], #checkout-form input[type=\'checkbox\']:checked, #checkout-form select, #checkout-form input[type=\'radio\']:checked, #checkout-form textarea, #checkout-form .main-form input[type=\'hidden\'], #checkout-form .main-form input[type=\'password\']'),
            dataType: 'json',
            beforeSend: function() {
                $('#button-order').button('loading');
            },
            success: function(json) {
                $('.error').remove();
                $('.alert-danger').remove();
                /*if (json['redirect']) {
                    location = json['redirect'];
                }*/
                if (json['error']) {
                    $('#checkout-form .has-error').removeClass('has-error');
                    $('#checkout-form .text-danger').remove();
                    if (json['error']['warning']) {
                        addWarning(json['error']['warning']);
                    }
                    if (json['error']['warning_top']) {
                        addWarningTop(json['error']['warning_top']);
                        $('html, body').animate({
                            scrollTop: $(".ocpb-alert").offset().top - 15
                        }, {
                            duration: 500,
                            complete: function() {
                                $('.ocpb-alert').animate({opacity: 0}, 100).animate({opacity: 1}, 100);
                            }
                        });
                    }
                    if (json['error']['firstname']) {
                        addError('#input-payment-firstname', json['error']['firstname']);
                    }
                    if (json['error']['lastname']) {
                        addError('#input-payment-lastname', json['error']['lastname']);
                    }
                    if (json['error']['email']) {
                        addError('#input-payment-email', json['error']['email']);
                    }
                    if (json['error']['telephone']) {
                        addError('#input-payment-telephone', json['error']['telephone']);
                    }
                    if (json['error']['fax']) {
                        addError('#input-payment-fax', json['error']['fax']);
                    }
                    if (json['error']['company']) {
                        addError('#input-payment-company', json['error']['company']);
                    }
                    if (json['error']['country']) {
                        addError('#input-payment-country', json['error']['country']);
                    }
                    if (json['error']['zone']) {
                        addError('#input-payment-zone', json['error']['zone']);
                    }
                    if (json['error']['city']) {
                        addError('#input-payment-city', json['error']['city']);
                    }
                    if (json['error']['postcode']) {
                        addError('#input-payment-postcode', json['error']['postcode']);
                    }
                    if (json['error']['address_1']) {
                        addError('#input-payment-address-1', json['error']['address_1']);
                    }
                    if (json['error']['password_empty']) {
                        addError('#input-password2', json['error']['password_empty']);
                        $('#input-password1').parent().addClass('has-error');
                    }
                    if (json['error']['password_equal']) {
                        addError('#input-password2', json['error']['password_equal']);
                        $('#input-password1').parent().addClass('has-error');
                    }
                    $('#button-order').button('reset');
                    $('.wait').remove();
                } else {
                    $.ajax({
                        url: 'index.php?route=checkout/buy/confirm',
                        type: 'get',
                        dataType: 'json',
                        success: function() {
                            var code = $('#checkout-form input[name=\'payment_method\']:checked').val();
                            getPaymentForm(code, function() {

                                if ($('p,h1,h2,h3,input[type=text],input[type=radio],input[type=checkbox],input[type=password],select', $('#payment-form')).length > 0) {
                                    $('#payment-form').css('display', 'block');
                                    $('#button-order').button('reset');
                                } else {
                                    var payment_form = $('#payment-form form#payment');

                                    if (payment_form.length) {
                                        payment_form.submit();
                                    } else {
                                        var href = $('#payment-form div.buttons a').attr('href');
                                        if (typeof href != 'undefined' && href != '' && href != '#') {
                                            location = href;
                                        } else {
                                            $('#payment-form div.buttons a,#payment-form div.buttons input[type=button],#payment-form div.buttons input[type=submit],#payment-form form input[type=submit]').click();
                                        }
                                    }
                                }
                            });
                        },
                        error: function(xhr, ajaxOptions, thrownError) {
                            alert(thrownError);
                        }
                    });
                }
            }
        });
    });
    function getPaymentForm(code, callback) {
        $.ajax({
            async: false,
            cache: false,
            url: 'index.php?route=checkout/buy/getPaymentForm',
            type: 'post',
            data: 'code=' + code.split('.')[0] + '&payment_method=' + code,
            dataType: 'json',
            success: function(json) {
                $('#payment-form').html(json['output']);
                callback();
            }
        });
    }
    function addWarning(text) {
        $('#checkout-form .alert').remove();
        $('#checkout-form .main-form').before('<div class="alert alert-danger ocpb-alert"><i class="fa fa-exclamation-circle"></i> ' + text + '<button type="button" class="close" data-dismiss="alert">&times;</button></div>');
        $('html, body').animate({
            scrollTop: $("#checkout-form").offset().top - 15
        }, {
            duration: 500,
            complete: function() {
                $('#checkout-form .alert').animate({opacity: 0}, 100).animate({opacity: 1}, 100);
            }
        });

    }
    function addWarningTop(text) {
        $('.alert').remove();
        $('.ocpb-products').before('<div class="alert alert-danger ocpb-alert"><i class="fa fa-exclamation-circle"></i> ' + text + '<button type="button" class="close" data-dismiss="alert">&times;</button></div>');
        $('.ocpb-alert').animate({opacity: 0}, 100).animate({opacity: 1}, 100);

    }
    function addError(el, text) {
        $(el).parent().addClass('has-error');
        $(el).after('<div class="text-danger">' + text + '</div>');
    }
    function selectShipping(){
        if(typeof($('input[name="shipping_method"]')) !== 'undefined' && $('#shipping_methods').length){
            var t_url = 'index.php?route=checkout/buy/selectShipping';
        }else{
            var t_url = 'index.php?route=checkout/buy/totals';
        }
        $.ajax({
            async: false,
            cache: false,
            url: t_url,
            type: 'post',
            data: 'code='+$('input[name="shipping_method"]:checked').val(),
            dataType: 'json',
            success: function(json) {
                if(json['totals']){
                    var html = '';
                    var html_m = '';
                    var clear_show = <?php echo $settings['buy_clear_show']?1:0; ?>;
                    var container = $('.total-item').closest('table.visible-lg');
                    var prod_count = <?php echo count($products); ?>

                    $.each(json['totals'], function(key, totals){
                        html += '<tr class="total-item"><td colspan="5" style="border:none;">';
                        if(key == 0 && clear_show && prod_count > 1){
                            html += '<button onclick="cart_clear();" class="btn btn-xs btn-clear"><?php echo $text_cart_clear; ?></button>';
                        }
                        html += '</td><td class="text-right total-title"><strong>'+totals['title']+':</strong></td><td class="text-right">'+totals['total']+'</td></tr>';

                        html_m += '<tr class="total-item"><td class="text-right total-title" colspan="3"><strong>'+totals['title']+':</strong></td><td class="text-right">'+totals['total']+'</td></tr>';
                    });

                    container.children('tbody').children('.total-item').remove();
                    container.children('tbody').append(html);
                    $('.table-totals tbody').html(html_m);
                }
            }
        });
    }
    function updateQty(cart_id, ac, t){
        if(ac !== '='){
            var qty_obj = $('.ocpb-products .visible-lg input[name="quantity[' + cart_id + ']"]');
            if(t == 1){
               var qty_obj = $('.ocpb-products .visible-xs input[name="quantity[' + cart_id + ']"]'); 
            }
            
            var qty = parseInt(qty_obj.val());
        
            if(ac == '+'){
                qty_obj.val(qty + 1);
            }else{
                if(qty > 1){
                    qty_obj.val(qty - 1);
                }
            }
        }
        
        $.ajax({
            async: false,
            cache: false,
            url: 'index.php?route=checkout/buy/edit',
            type: 'post',
            data: t?$('.ocpb-products .visible-xs input[name="quantity[' + cart_id + ']"]'):$('.ocpb-products .visible-lg input[name="quantity[' + cart_id + ']"]'),
            dataType: 'json',
            success: function(json) {
                $.each(json['products'], function(key, totals){
                    $('.ocpb-products input[name="quantity[' + key + ']"]').closest('tr').children('.name-td').children('span.text-danger').remove();
                    $('.ocpb-products input[name="quantity[' + key + ']"]').closest('tr').children('.price-td').text(totals['price']);
                    $('.ocpb-products input[name="quantity[' + key + ']"]').closest('tr').children('.total-td').text(totals['total']);
                    if(totals['stock'] !== 1){
                        $('.ocpb-products input[name="quantity[' + key + ']"]').closest('tr').children('.name-td').children('a').after('<span class="text-danger">***</span>');
                    }
                });
                if(json['warning']){
                    addWarningTop(json['warning']);
                }else{
                    $('.alert-danger').remove();
                }
                if($('#shipping_methods').length){
                updateShM($('#checkout-form select[name=\'zone_id\']').val());
                }else{
                    selectShipping();
            }
            }
        });
    }
    function cart_clear(){
        $.ajax({
            async: false,
            cache: false,
            url: 'index.php?route=checkout/buy/clear',
            type: 'get',
            success: function() {
                location = 'index.php?route=checkout/buy';
            }
        });
    }
    <?php if($settings['buy_telephone_mask']){ ?>
    $("#checkout-form input[name='telephone']").mask("<?php echo $settings['buy_telephone_mask'];?>");
    <?php } ?>
    $(function(){
        selectShipping();
    });
    $('.ocpb-products .visible-lg input[name^=quantity]').on('input', function(){
        var qty = parseInt($(this).val()) || 0;
        if(qty > 0){
            updateQty($(this).data('cart-id'), '=', 0);
        }
    });
    $('.ocpb-products .visible-xs input[name^=quantity]').on('input', function(){
        var qty = parseInt($(this).val()) || 0;
        if(qty > 0){
            updateQty($(this).data('cart-id'), '=', 1);
        }else{
            if($(this).val() >= 1){
                updateQty($(this).data('cart-id'), '=', 1);
            }
        }
    });
    $('.ocpb-products .visible-lg input[name^=quantity]').on('focusout', function(){
        var qty = parseInt($(this).val()) || 0;
        if(qty <= 0){
            $(this).val('1');
            updateQty($(this).data('cart-id'), '=', 0);
        }
    });
    $('.ocpb-products .visible-xs input[name^=quantity]').on('focusout', function(){
        var qty = parseInt($(this).val()) || 0;
        if(qty <= 0){
            $(this).val('1');
            updateQty($(this).data('cart-id'), '=', 1);
        }
    });
    <?php if(!$customer_logged){ ?>
    $('.customer-type label').on('click', function(){
        $('.customer-type label input').prop('checked', false);
        $('.customer-type label').removeClass('checked');
        $(this).children('input').prop('checked', true);
        $(this).addClass('checked');
        if($(this).children('input').val() == '0'){
            $('.ocpb-login-form, .ocpb-login-bg').show();
        }else{
            $('.ocpb-login-form, .ocpb-login-bg').hide();
        }
    });
    
    $('#checkout-form input[name="register"]').on('change', function(){
        if($(this).is(':checked')){
            $('.register-fields').show();
            <?php if(!$settings['buy_email_required']){ ?>$('#checkout-form .main-form .email').addClass('required');<?php } ?>
        }else{
            $('.register-fields').hide();
            <?php if(!$settings['buy_email_required']){ ?>$('#checkout-form .main-form .email').removeClass('required');<?php } ?>
        }
    });
    <?php } ?>
//--></script>
<?php echo $footer; ?>