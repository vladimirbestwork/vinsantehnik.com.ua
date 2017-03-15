<?php echo $header; ?><?php echo $column_left; ?>
<div id="content">
<style type="text/css">
.ocp-module .btn-default.active.focus, .ocp-module .btn-default.active:focus, .ocp-module .btn-default.active:hover, .ocp-module .btn-default:active.focus, .ocp-module .btn-default:active:focus, .ocp-module .btn-default:active:hover{
    color: #fff;
    background-color: #398439;
    border-color: #255625;
}
.ocp-module .btn-default.active, .ocp-module .btn-default:active {
    background-color: #75a74d;
    border-color: #5c843d;
    color: #fff;
}
.ocp-module .btn-default.btn-danger {
    color: #555555;
    background-color: #ffffff;
    border-color: #cccccc;
}
.ocp-module .btn-default.btn-danger.active.focus, .ocp-module .btn-default.btn-danger.active:focus, .ocp-module .btn-default.btn-danger.active:hover, .ocp-module .btn-default.btn-danger:active.focus, .ocp-module .btn-default.btn-danger:active:focus, .ocp-module .btn-default.btn-danger:active:hover{
    color: #ffffff;
    background-color: #f23b3b;
    border-color: #ea1010;
}
.ocp-module .btn-default.btn-danger.active, .ocp-module .btn-default.btn-danger:active {
    color: #ffffff;
    background-color: #f56b6b;
    border-color: #f24545;
}
</style>
    <div class="page-header">
        <div class="container-fluid">
            <div class="pull-right">
                <button type="submit" form="form-buy" data-toggle="tooltip" title="<?php echo $button_save; ?>" class="btn btn-primary"><i class="fa fa-save"></i></button>
                <a href="<?php echo $cancel; ?>" data-toggle="tooltip" title="<?php echo $button_cancel; ?>" class="btn btn-default"><i class="fa fa-reply"></i></a></div>
            <h1><?php echo $heading_title; ?></h1>
            <ul class="breadcrumb">
        <?php foreach ($breadcrumbs as $breadcrumb) { ?>
                <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
        <?php } ?>
            </ul>
        </div>
    </div>
    <div class="container-fluid">
    <?php if ($error_warning) { ?>
        <div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> <?php echo $error_warning; ?>
            <button type="button" class="close" data-dismiss="alert">&times;</button>
        </div>
    <?php } ?>
        <div class="panel panel-default">
            <div class="panel-heading">
                <h3 class="panel-title"><i class="fa fa-pencil"></i> <?php echo $text_edit; ?></h3>
            </div>
            <div class="panel-body ocp-module">
                <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="form-buy" class="form-horizontal">
                    <ul class="nav nav-tabs">
                        <li class="active"><a href="#tab-general" data-toggle="tab"><i class="fa fa-cog"></i> <?php echo $tab_general; ?></a></li>
                        <li><a href="#tab-form-fields" data-toggle="tab"><i class="fa fa-navicon"></i> <?php echo $tab_form_fields; ?></a></li>
                        <li><a href="#tab-localisation" data-toggle="tab"><i class="fa fa-language"></i> <?php echo $tab_localisation; ?></a></li>
                    </ul>
                    <div class="tab-content">
                        <div class="tab-pane active" id="tab-general">
                            <div class="row-fluid clearfix">
                                <div class="col-sm-6">
                                    <div class="form-group">
                                        <label class="col-sm-6 control-label" for="input-status"><?php echo $entry_status; ?></label>
                                        <div class="col-sm-6">
                                            <div class="btn-group" data-toggle="buttons">
                                                <label class="btn btn-default <?php echo $buy_status == 1 ? 'active' : ''; ?>">
                                                  <input type="radio" name="buy_status" value="1" autocomplete="off"<?php echo $buy_status == 1 ? ' checked="checked"' : ''; ?> /><?php echo $text_yes; ?>
                                                </label>
                                                <label class="btn btn-danger btn-default <?php echo $buy_status == 0 ? 'active' : ''; ?>">
                                                  <input type="radio" name="buy_status" value="0" autocomplete="off"<?php echo $buy_status == 0 ? ' checked="checked"' : ''; ?> /><?php echo $text_no; ?>
                                                </label>
                                              </div>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-sm-6 control-label" for="input-shipping_select"><?php echo $entry_shipping_select; ?></label>
                                        <div class="col-sm-6">
                                            <div class="btn-group" data-toggle="buttons">
                                                <label class="btn btn-default <?php echo $settings['buy_shipping_select'] == 1 ? 'active' : ''; ?>">
                                                  <input type="radio" name="buy_shipping_select" value="1" autocomplete="off"<?php echo $settings['buy_shipping_select'] == 1 ? ' checked="checked"' : ''; ?> /><?php echo $text_yes; ?>
                                                </label>
                                                <label class="btn btn-danger btn-default <?php echo $settings['buy_shipping_select'] == 0 ? 'active' : ''; ?>">
                                                  <input type="radio" name="buy_shipping_select" value="0" autocomplete="off"<?php echo $settings['buy_shipping_select'] == 0 ? ' checked="checked"' : ''; ?> /><?php echo $text_no; ?>
                                                </label>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-sm-6 control-label" for="input-payment_select"><?php echo $entry_payment_select; ?></label>
                                        <div class="col-sm-6">
                                            <div class="btn-group" data-toggle="buttons">
                                                <label class="btn btn-default <?php echo $settings['buy_payment_select'] == 1 ? 'active' : ''; ?>">
                                                  <input type="radio" name="buy_payment_select" value="1" autocomplete="off"<?php echo $settings['buy_payment_select'] == 1 ? ' checked="checked"' : ''; ?> /><?php echo $text_yes; ?>
                                                </label>
                                                <label class="btn btn-danger btn-default <?php echo $settings['buy_payment_select'] == 0 ? 'active' : ''; ?>">
                                                  <input type="radio" name="buy_payment_select" value="0" autocomplete="off"<?php echo $settings['buy_payment_select'] == 0 ? ' checked="checked"' : ''; ?> /><?php echo $text_no; ?>
                                                </label>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-sm-6 control-label" for="input-clear_show"><?php echo $entry_clear_show; ?></label>
                                        <div class="col-sm-6">
                                            <div class="btn-group" data-toggle="buttons">
                                                <label class="btn btn-default <?php echo $settings['buy_clear_show'] == 1 ? 'active' : ''; ?>">
                                                  <input type="radio" name="buy_clear_show" value="1" autocomplete="off"<?php echo $settings['buy_clear_show'] == 1 ? ' checked="checked"' : ''; ?> /><?php echo $text_yes; ?>
                                                </label>
                                                <label class="btn btn-danger btn-default <?php echo $settings['buy_clear_show'] == 0 ? 'active' : ''; ?>">
                                                  <input type="radio" name="buy_clear_show" value="0" autocomplete="off"<?php echo $settings['buy_clear_show'] == 0 ? ' checked="checked"' : ''; ?> /><?php echo $text_no; ?>
                                                </label>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-sm-6 control-label" for="input-cart_modules"><?php echo $entry_cart_modules; ?></label>
                                        <div class="col-sm-6">
                                            <div class="btn-group" data-toggle="buttons">
                                                <label class="btn btn-default <?php echo $settings['buy_cart_modules'] == 1 ? 'active' : ''; ?>">
                                                  <input type="radio" name="buy_cart_modules" value="1" autocomplete="off"<?php echo $settings['buy_cart_modules'] == 1 ? ' checked="checked"' : ''; ?> /><?php echo $text_yes; ?>
                                                </label>
                                                <label class="btn btn-danger btn-default <?php echo $settings['buy_cart_modules'] == 0 ? 'active' : ''; ?>">
                                                  <input type="radio" name="buy_cart_modules" value="0" autocomplete="off"<?php echo $settings['buy_cart_modules'] == 0 ? ' checked="checked"' : ''; ?> /><?php echo $text_no; ?>
                                                </label>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-sm-6 control-label" for="input-login"><?php echo $entry_login; ?></label>
                                        <div class="col-sm-6">
                                            <div class="btn-group" data-toggle="buttons">
                                                <label class="btn btn-default <?php echo $settings['buy_login'] == 1 ? 'active' : ''; ?>">
                                                  <input type="radio" name="buy_login" value="1" autocomplete="off"<?php echo $settings['buy_login'] == 1 ? ' checked="checked"' : ''; ?> /><?php echo $text_yes; ?>
                                                </label>
                                                <label class="btn btn-danger btn-default <?php echo $settings['buy_login'] == 0 ? 'active' : ''; ?>">
                                                  <input type="radio" name="buy_login" value="0" autocomplete="off"<?php echo $settings['buy_login'] == 0 ? ' checked="checked"' : ''; ?> /><?php echo $text_no; ?>
                                                </label>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-sm-6">
                                    <div class="form-group">
                                        <label class="col-sm-4 control-label" for="input-form_design"><?php echo $entry_form_design; ?></label>
                                        <div class="col-sm-8">
                                            <select name="buy_form_design" class="form-control" id="input-form_design">
                                                <option value="0"<?php if(!isset($settings['buy_form_design']) || $settings['buy_form_design'] == 0){?> selected="selected"<?php }?>><?php echo $text_two_col;?></option>
                                                <option value="1"<?php if(isset($settings['buy_form_design']) && $settings['buy_form_design'] == 1){?> selected="selected"<?php }?>><?php echo $text_single_col;?></option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-sm-4 control-label" for="input-telephone_mask"><?php echo $entry_telephone_mask; ?></label>
                                        <div class="col-sm-8">
                                            <input type="text" name="buy_telephone_mask" value="<?php echo (isset($settings['buy_telephone_mask'])?$settings['buy_telephone_mask']:'');?>" class="form-control" id="input-telephone_mask" />
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-sm-4 control-label" for="input-min_order_sum"><?php echo $entry_min_order_sum; ?></label>
                                        <div class="col-sm-8">
                                            <input type="text" name="buy_min_order_sum" value="<?php echo (isset($settings['buy_min_order_sum'])?$settings['buy_min_order_sum']:'');?>" style="width: 85px;" class="form-control" id="input-min_order_sum" />
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="tab-pane" id="tab-form-fields">
                            
                            <table class="table table-hover" style="width: 50%;">
                                <thead>
                                    <tr>
                                        <th><?php echo $column_field; ?></th>
                                        <th><?php echo $column_status; ?></th>
                                        <th><?php echo $column_required; ?></th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <?php foreach($fields as $key => $field) { ?>
                                    <tr>
                                        <td><b><?php echo $field['entry']; ?></b></td>
                                        <td>
                                            <div class="btn-group" data-toggle="buttons">
                                                <label class="btn btn-default <?php echo $settings['buy_' . $key . '_status'] == 1 ? 'active' : ''; ?>">
                                                  <input type="radio" name="buy_<?php echo $key; ?>_status" value="1" autocomplete="off"<?php echo $settings['buy_' . $key . '_status'] == 1 ? ' checked="checked"' : ''; ?> /><?php echo $text_yes; ?>
                                                </label>
                                                <label class="btn btn-danger btn-default <?php echo $settings['buy_' . $key . '_status'] == 0 ? 'active' : ''; ?>">
                                                  <input type="radio" name="buy_<?php echo $key; ?>_status" value="0" autocomplete="off"<?php echo $settings['buy_' . $key . '_status'] == 0 ? ' checked="checked"' : ''; ?> /><?php echo $text_no; ?>
                                                </label>
                                            </div>
                                        </td>
                                        <td>
                                            <div class="btn-group" data-toggle="buttons">
                                                <label class="btn btn-default <?php echo $settings['buy_' . $key . '_required'] == 1 ? 'active' : ''; ?>">
                                                  <input type="radio" name="buy_<?php echo $key; ?>_required" value="1" autocomplete="off"<?php echo $settings['buy_' . $key . '_required'] == 1 ? ' checked="checked"' : ''; ?> /><?php echo $text_yes; ?>
                                                </label>
                                                <label class="btn btn-danger btn-default <?php echo $settings['buy_' . $key . '_required'] == 0 ? 'active' : ''; ?>">
                                                  <input type="radio" name="buy_<?php echo $key; ?>_required" value="0" autocomplete="off"<?php echo $settings['buy_' . $key . '_required'] == 0 ? ' checked="checked"' : ''; ?> /><?php echo $text_no; ?>
                                                </label>
                                            </div>
                                        </td>
                                    </tr>
                                    <?php } ?>
                                </tbody>
                            </table>
                        </div>
                        <div class="tab-pane" id="tab-localisation">
                            <ul class="nav nav-tabs" id="language">
                                <?php foreach ($languages as $language) { ?>
                                <li><a href="#language<?php echo $language['language_id']; ?>" data-toggle="tab"><img src="<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /> <?php echo $language['name']; ?></a></li>
                                <?php } ?>
                              </ul>
                            <div class="tab-content">
                                <?php foreach ($languages as $language) { ?>
                            <div class="tab-pane" id="language<?php echo $language['language_id']; ?>">
                            <div class="row-fluid clearfix">
                                <div class="col-sm-8">
                                    <div class="form-group">
                                        <label class="col-sm-4 control-label" for="input-meta_title_<?php echo $language['code']; ?>"><?php echo $entry_meta_title; ?></label>
                                        <div class="col-sm-8">
                                            <input type="text" name="buy_meta_title_<?php echo $language['code']; ?>" value="<?php echo (isset($settings['buy_meta_title_'.$language['code']])?$settings['buy_meta_title_'.$language['code']]:$text_meta_title);?>" class="form-control" id="input-meta_title_<?php echo $language['code']; ?>" />
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-sm-4 control-label" for="input-h1_<?php echo $language['code']; ?>"><?php echo $entry_h1; ?></label>
                                        <div class="col-sm-8">
                                            <input type="text" name="buy_h1_<?php echo $language['code']; ?>" value="<?php echo (isset($settings['buy_h1_'.$language['code']])?$settings['buy_h1_'.$language['code']]:$text_h1);?>" class="form-control" id="input-h1_<?php echo $language['code']; ?>" />
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-sm-4 control-label" for="input-h2_<?php echo $language['code']; ?>"><?php echo $entry_h2; ?></label>
                                        <div class="col-sm-8">
                                            <input type="text" name="buy_h2_<?php echo $language['code']; ?>" value="<?php echo (isset($settings['buy_h2_'.$language['code']])?$settings['buy_h2_'.$language['code']]:$text_h2);?>" class="form-control" id="input-h2_<?php echo $language['code']; ?>" />
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-sm-4 control-label" for="input-form_headings"><?php echo $entry_form_headings; ?></label>
                                        <div class="col-sm-8">                                            
                                            <div class="btn-group" data-toggle="buttons">
                                                <label class="btn btn-default <?php echo $settings['buy_form_headings'] == 1 ? 'active' : ''; ?>">
                                                  <input type="radio" name="buy_form_headings" value="1" autocomplete="off"<?php echo $settings['buy_form_headings'] == 1 ? ' checked="checked"' : ''; ?> /><?php echo $text_yes; ?>
                                                </label>
                                                <label class="btn btn-danger btn-default <?php echo $settings['buy_form_headings'] == 0 ? 'active' : ''; ?>">
                                                  <input type="radio" name="buy_form_headings" value="0" autocomplete="off"<?php echo $settings['buy_form_headings'] == 0 ? ' checked="checked"' : ''; ?> /><?php echo $text_no; ?>
                                                </label>
                                              </div>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                    <label class="col-sm-4 control-label" for="input-heading_1_<?php echo $language['code']; ?>"><?php echo $entry_heading_1; ?></label>
                                    <div class="col-sm-8">
                                        <input type="text" name="buy_heading_1_<?php echo $language['code']; ?>" value="<?php echo (isset($settings['buy_heading_1_'.$language['code']])?$settings['buy_heading_1_'.$language['code']]:$text_heading_1);?>" class="form-control" id="input-heading_1_<?php echo $language['code']; ?>" />
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-4 control-label" for="input-heading_2_<?php echo $language['code']; ?>"><?php echo $entry_heading_2; ?></label>
                                    <div class="col-sm-8">
                                        <input type="text" name="buy_heading_2_<?php echo $language['code']; ?>" value="<?php echo (isset($settings['buy_heading_2_'.$language['code']])?$settings['buy_heading_2_'.$language['code']]:$text_heading_2);?>" class="form-control" id="input-heading_2_<?php echo $language['code']; ?>" />
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-4 control-label" for="input-heading_3_<?php echo $language['code']; ?>"><?php echo $entry_heading_3; ?></label>
                                    <div class="col-sm-8">
                                        <input type="text" name="buy_heading_3_<?php echo $language['code']; ?>" value="<?php echo (isset($settings['buy_heading_3_'.$language['code']])?$settings['buy_heading_3_'.$language['code']]:$text_heading_3);?>" class="form-control" id="input-heading_3_<?php echo $language['code']; ?>" />
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-4 control-label" for="input-success_title_<?php echo $language['code']; ?>"><?php echo $entry_success_title; ?></label>
                                    <div class="col-sm-8">
                                        <input type="text" name="buy_success_title_<?php echo $language['code']; ?>" value="<?php echo (isset($settings['buy_success_title_'.$language['code']])?$settings['buy_success_title_'.$language['code']]:$text_success_title);?>" class="form-control" id="input-success_title_<?php echo $language['code']; ?>" />
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="col-sm-4">
                                        <label class="control-label" for="input-success_text_<?php echo $language['code']; ?>"><?php echo $entry_success_text; ?></label>
                                    </div>
                                    <div class="col-sm-8">
                                        <textarea name="buy_success_text_<?php echo $language['code']; ?>" class="form-control summernote" id="input-success-text<?php echo $language['language_id']; ?>"><?php echo (isset($settings['buy_success_text_'.$language['code']])?$settings['buy_success_text_'.$language['code']]:$text_success_text);?></textarea>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-4 control-label" for="input-success_text_logged_<?php echo $language['code']; ?>"><?php echo $entry_success_text_logged; ?></label>
                                    <div class="col-sm-8">
                                        <textarea name="buy_success_text_logged_<?php echo $language['code']; ?>" class="form-control summernote" id="input-success-text-logged<?php echo $language['language_id']; ?>"><?php echo (isset($settings['buy_success_text_logged_'.$language['code']])?$settings['buy_success_text_logged_'.$language['code']]:$text_success_text_logged);?></textarea>
                                    </div>
                                </div>
                                </div>
                                <div class="col-sm-4">
                                    <div class="ocp-hint" style="margin-top: 340px;">
                                        <?php echo $text_patterns; ?>
                                    </div>
                                </div>
                            </div>
                            </div>
                            <?php } ?>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
<script type="text/javascript"><!--
<?php foreach ($languages as $language) { ?>
$('#input-success-text<?php echo $language['language_id']; ?>').summernote({height: 150});
$('#input-success-text-logged<?php echo $language['language_id']; ?>').summernote({height: 200});
<?php } ?>
//--></script>
<script type="text/javascript">
$('.status').change(function () {
    var name = (this.name).split('_');
    if (this.value == 0) {
        if (name[1] == 'address')
            name[1] = name[1] + '_' + name[2];
        $('select[name=\'buy_' + name[1] + '_required\']').val('0');
    }
});
$('#language a:first').tab('show');
</script>
<?php echo $footer; ?>