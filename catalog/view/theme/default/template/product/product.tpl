<?php echo $header; ?>
<?php echo $column_left; ?>
<section class="product-overview" id="content">
    <div class="product-overview__breadcrumb">
        <?php foreach ($breadcrumbs as $breadcrumb) { ?>
        <?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
        <?php } ?>
    </div>
    <div class="overview-content">
        <h1><?php echo $heading_title; ?></h1>
        <div class="product-info">
            <?php if ($thumb || $images) { ?>
            <div class="product-info__image">
                <?php if ($thumb) { ?>
                <div class="image">
                    <img src="<?php echo $thumb; ?>" title="<?php echo $heading_title; ?>" alt="<?php echo $heading_title; ?>" id="image" />
                </div>
                <?php } ?>
                <canvas id="product-visual" width="200" height="200" class="visual"></canvas>
            </div>
            <?php } ?>
            <div class="product-info__content">
                <div class="product-info__content-description">
                    <?php if ($manufacturer) { ?>
                    <div class="product-info__content-menufacturer">
                        <span>Wijnhuis:</span> <a href="<?php echo $manufacturers; ?>"><?php echo $manufacturer; ?></a><br />
                    </div>
                    <?php } ?>
                    <?php if ($price) { ?>
                    <div class="product-info__content-price">
                        <?php echo $text_price; ?>
                        <?php if (!$special) { ?>
                        <?php echo $price; ?>
                        <?php } else { ?>
                        <span class="price-old"><?php echo $price; ?></span> <span class="price-new"><?php echo $special; ?></span>
                        <?php } ?>
                        <?php if ($discounts) { ?>
                        <div class="discount">
                            <?php foreach ($discounts as $discount) { ?>
                            <?php echo sprintf($text_discount, $discount['quantity'], $discount['price']); ?><br />
                            <?php } ?>
                        </div>
                        <?php } ?>
                    </div>
                    <?php } ?>
                    <?php if ($profiles): ?>
                    <div class="product-info__content-option">
                        <h2><span class="required">*</span><?php echo $text_payment_profile ?></h2>
                        <select name="profile_id">
                            <option value=""><?php echo $text_select; ?></option>
                            <?php foreach ($profiles as $profile): ?>
                            <option value="<?php echo $profile['profile_id'] ?>"><?php echo $profile['name'] ?></option>
                            <?php endforeach; ?>
                        </select>
                        <span id="profile-description"></span>
                    </div>
                    <?php endif; ?>

                    <?php if ($options) { ?>
                    <div class="product-info__content-options">
                        <h2><?php echo $text_option; ?></h2>
                        <?php foreach ($options as $option) { ?>
                        <?php if ($option['type'] == 'select') { ?>
                        <div id="option-<?php echo $option['product_option_id']; ?>" class="option">
                            <?php if ($option['required']) { ?>
                            <span class="required">*</span>
                            <?php } ?>
                            <b><?php echo $option['name']; ?>:</b><br />
                            <select name="option[<?php echo $option['product_option_id']; ?>]">
                                <option value=""><?php echo $text_select; ?></option>
                                <?php foreach ($option['option_value'] as $option_value) { ?>
                                <option value="<?php echo $option_value['product_option_value_id']; ?>"><?php echo $option_value['name']; ?>
                                    <?php if ($option_value['price']) { ?>
                                    (<?php echo $option_value['price_prefix']; ?><?php echo $option_value['price']; ?>)
                                    <?php } ?>
                                </option>
                                <?php } ?>
                            </select>
                        </div>
                        <br />
                        <?php } ?>
                        <?php if ($option['type'] == 'radio') { ?>
                        <div id="option-<?php echo $option['product_option_id']; ?>" class="option">
                            <?php if ($option['required']) { ?>
                            <span class="required">*</span>
                            <?php } ?>
                            <b><?php echo $option['name']; ?>:</b><br />
                            <?php foreach ($option['option_value'] as $option_value) { ?>
                            <input type="radio" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option_value['product_option_value_id']; ?>" id="option-value-<?php echo $option_value['product_option_value_id']; ?>" />
                            <label for="option-value-<?php echo $option_value['product_option_value_id']; ?>"><?php echo $option_value['name']; ?>
                                <?php if ($option_value['price']) { ?>
                                (<?php echo $option_value['price_prefix']; ?><?php echo $option_value['price']; ?>)
                                <?php } ?>
                            </label>
                            <br />
                            <?php } ?>
                        </div>
                        <br />
                        <?php } ?>
                        <?php if ($option['type'] == 'checkbox') { ?>
                        <div id="option-<?php echo $option['product_option_id']; ?>" class="option">
                            <?php if ($option['required']) { ?>
                            <span class="required">*</span>
                            <?php } ?>
                            <b><?php echo $option['name']; ?>:</b><br />
                            <?php foreach ($option['option_value'] as $option_value) { ?>
                            <input type="checkbox" name="option[<?php echo $option['product_option_id']; ?>][]" value="<?php echo $option_value['product_option_value_id']; ?>" id="option-value-<?php echo $option_value['product_option_value_id']; ?>" />
                            <label for="option-value-<?php echo $option_value['product_option_value_id']; ?>"><?php echo $option_value['name']; ?>
                                <?php if ($option_value['price']) { ?>
                                (<?php echo $option_value['price_prefix']; ?><?php echo $option_value['price']; ?>)
                                <?php } ?>
                            </label>
                            <br />
                            <?php } ?>
                        </div>
                        <br />
                        <?php } ?>
                        <?php if ($option['type'] == 'image') { ?>
                        <div id="option-<?php echo $option['product_option_id']; ?>" class="option">
                            <?php if ($option['required']) { ?>
                            <span class="required">*</span>
                            <?php } ?>
                            <b><?php echo $option['name']; ?>:</b><br />
                            <table class="option-image">
                                <?php foreach ($option['option_value'] as $option_value) { ?>
                                <tr>
                                    <td style="width: 1px;"><input type="radio" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option_value['product_option_value_id']; ?>" id="option-value-<?php echo $option_value['product_option_value_id']; ?>" /></td>
                                    <td><label for="option-value-<?php echo $option_value['product_option_value_id']; ?>"><img src="<?php echo $option_value['image']; ?>" alt="<?php echo $option_value['name'] . ($option_value['price'] ? ' ' . $option_value['price_prefix'] . $option_value['price'] : ''); ?>" /></label></td>
                                    <td><label for="option-value-<?php echo $option_value['product_option_value_id']; ?>"><?php echo $option_value['name']; ?>
                                            <?php if ($option_value['price']) { ?>
                                            (<?php echo $option_value['price_prefix']; ?><?php echo $option_value['price']; ?>)
                                            <?php } ?>
                                        </label></td>
                                </tr>
                                <?php } ?>
                            </table>
                        </div>
                        <br />
                        <?php } ?>
                        <?php if ($option['type'] == 'text') { ?>
                        <div id="option-<?php echo $option['product_option_id']; ?>" class="option">
                            <?php if ($option['required']) { ?>
                            <span class="required">*</span>
                            <?php } ?>
                            <b><?php echo $option['name']; ?>:</b><br />
                            <input type="text" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option['option_value']; ?>" />
                        </div>
                        <br />
                        <?php } ?>
                        <?php if ($option['type'] == 'textarea') { ?>
                        <div id="option-<?php echo $option['product_option_id']; ?>" class="option">
                            <?php if ($option['required']) { ?>
                            <span class="required">*</span>
                            <?php } ?>
                            <b><?php echo $option['name']; ?>:</b><br />
                            <textarea name="option[<?php echo $option['product_option_id']; ?>]" cols="40" rows="5"><?php echo $option['option_value']; ?></textarea>
                        </div>
                        <br />
                        <?php } ?>
                        <?php if ($option['type'] == 'file') { ?>
                        <div id="option-<?php echo $option['product_option_id']; ?>" class="option">
                            <?php if ($option['required']) { ?>
                            <span class="required">*</span>
                            <?php } ?>
                            <b><?php echo $option['name']; ?>:</b><br />
                            <input type="button" value="<?php echo $button_upload; ?>" id="button-option-<?php echo $option['product_option_id']; ?>" class="button">
                            <input type="hidden" name="option[<?php echo $option['product_option_id']; ?>]" value="" />
                        </div>
                        <br />
                        <?php } ?>
                        <?php if ($option['type'] == 'date') { ?>
                        <div id="option-<?php echo $option['product_option_id']; ?>" class="option">
                            <?php if ($option['required']) { ?>
                            <span class="required">*</span>
                            <?php } ?>
                            <b><?php echo $option['name']; ?>:</b><br />
                            <input type="text" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option['option_value']; ?>" class="date" />
                        </div>
                        <br />
                        <?php } ?>
                        <?php if ($option['type'] == 'datetime') { ?>
                        <div id="option-<?php echo $option['product_option_id']; ?>" class="option">
                            <?php if ($option['required']) { ?>
                            <span class="required">*</span>
                            <?php } ?>
                            <b><?php echo $option['name']; ?>:</b><br />
                            <input type="text" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option['option_value']; ?>" class="datetime" />
                        </div>
                        <br />
                        <?php } ?>
                        <?php if ($option['type'] == 'time') { ?>
                        <div id="option-<?php echo $option['product_option_id']; ?>" class="option">
                            <?php if ($option['required']) { ?>
                            <span class="required">*</span>
                            <?php } ?>
                            <b><?php echo $option['name']; ?>:</b><br />
                            <input type="text" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option['option_value']; ?>" class="time" />
                        </div>
                        <br />
                        <?php } ?>
                        <?php } ?>
                    </div>
                    <?php } ?>
                    <div class="product-info__content-order">
                        <span><?php echo $text_qty; ?></span>
                        <input type="text" name="quantity" size="2" value="<?php echo $minimum; ?>" />
                        <input type="hidden" name="product_id" size="2" value="<?php echo $product_id; ?>" />
                        <a href="javascript:void(0);" class="button button--order" id="button-cart"><span><?php echo $button_cart; ?></span><i class="glyphicon glyphicon-shopping-cart"></i></a>
                    </div>
                    <div class="product-info__content-cart">
                        <div class="form__button-holder">
                            <a class="button button--green" href="javascript:void(0);" onclick="addToWishList('<?php echo $product_id; ?>');"><?php echo $button_wishlist; ?></a>
                            <a class="button" href="javascript:void(0);" onclick="addToCompare('<?php echo $product_id; ?>');"><?php echo $button_compare; ?></a>
                        </div>
                    </div>
                    <?php if ($minimum > 1) { ?>
                    <div class="minimum"><?php echo $text_minimum; ?></div>
                    <?php } ?>
                    <div class="clear-fix"></div>
                </div>
                <?php if ($review_status) { ?>
                <div class="product-info__content-review">
                    <div>
                        <img src="catalog/view/theme/default/image/stars-<?php echo $rating; ?>.png" alt="<?php echo $reviews; ?>" />&nbsp;&nbsp;<a href="javascript:void(0);" onclick="$('a[href=\'#tab-review\']').trigger('click');"><?php echo $reviews; ?></a>&nbsp;&nbsp;|&nbsp;&nbsp;<a href="javascript:void(0);" onclick="$('a[href=\'#tab-review\']').trigger('click');"><?php echo $text_write; ?></a></div>
                </div>
                <?php } ?>
            </div>
        </div>
        <div class="product-info__table">
            <div id="tabs" class="product-info__table-top"><a href="#tab-description"><?php echo $tab_description; ?></a>
                <?php if ($attribute_groups) { ?>
                <a href="#tab-attribute"><?php echo $tab_attribute; ?></a>
                <?php } ?>
                <?php if ($review_status) { ?>
                <a href="#tab-review"><?php echo $tab_review; ?></a>
                <?php } ?>
                <?php if ($products) { ?>
                <a href="#tab-related"><?php echo $tab_related; ?> (<?php echo count($products); ?>)</a>
                <?php } ?>
            </div>
            <div class="product-info__table-content">
                <div id="tab-description" class="product-info__table-description"><?php echo $description; ?></div>
                <?php if ($attribute_groups) { ?>
                <div id="tab-attribute" class="product-info__table-description">
                    <table class="attribute">
                        <?php foreach ($attribute_groups as $attribute_group) { ?>
                        <thead>
                            <tr>
                                <td colspan="2"><?php echo $attribute_group['name']; ?></td>
                            </tr>
                        </thead>
                        <tbody>
                            <?php foreach ($attribute_group['attribute'] as $attribute) { ?>
                            <tr>
                                <td><?php echo $attribute['name']; ?></td>
                                <td><?php echo $attribute['text']; ?></td>
                            </tr>
                            <?php } ?>
                        </tbody>
                        <?php } ?>
                    </table>
                </div>
                <?php } ?>
                <?php if ($review_status) { ?>
                <div id="tab-review" class="product-info__table-description">
                    <div id="review"></div>
                    <h2 id="review-title"><?php echo $text_write; ?></h2>
                    <div class="form__input-holder form__input-holder--small">
                        <label><?php echo $entry_name; ?></label>
                        <input type="text" name="name" value="" />
                    </div>
                    <div class="form__input-holder form__input-holder--small">
                        <label><?php echo $entry_review; ?></label>
                        <textarea name="text" cols="40" rows="8"></textarea>
                        <span style="font-size: 11px;"><?php echo $text_note; ?></span>
                    </div>
                    <div class="form__input-holder form__input-holder--small">
                        <label><?php echo $entry_rating; ?></label> 
                        <span><?php echo $entry_bad; ?></span>
                        <input type="radio" name="rating" value="1" />
                        <input type="radio" name="rating" value="2" />
                        <input type="radio" name="rating" value="3" />
                        <input type="radio" name="rating" value="4" />
                        <input type="radio" name="rating" value="5" />
                        <span><?php echo $entry_good; ?></span>
                    </div>
                    <div class="form__input-holder form__input-holder--small">
                        <label><?php echo $entry_captcha; ?></label>
                        <input type="text" name="captcha" value="" />
                        <img src="index.php?route=product/product/captcha" alt="" id="captcha" style="float: right; margin: 9px;"/>
                        <div class="clear-fix"></div>
                    </div>
                    <div class="form__button-holder">
                        <div class="left"><a href="javascript:void(0);" id="button-review" class="button"><?php echo $button_continue; ?></a></div>
                    </div>
                    <div class="clear-fix"></div>
                </div>
                <?php } ?>
            </div>
        </div>
        <?php if ($products) { ?>
        <div id="tab-related" class="tab-content">
            <div class="box-product">
                <?php foreach ($products as $product) { ?>
                <div>
                    <?php if ($product['thumb']) { ?>
                    <div class="image"><a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" /></a></div>
                    <?php } ?>
                    <div class="name"><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></div>
                    <?php if ($product['price']) { ?>
                    <div class="price">
                        <?php if (!$product['special']) { ?>
                        <?php echo $product['price']; ?>
                        <?php } else { ?>
                        <span class="price-old"><?php echo $product['price']; ?></span> <span class="price-new"><?php echo $product['special']; ?></span>
                        <?php } ?>
                    </div>
                    <?php } ?>
                    <?php if ($product['rating']) { ?>
                    <div class="rating"><img src="catalog/view/theme/default/image/stars-<?php echo $product['rating']; ?>.png" alt="<?php echo $product['reviews']; ?>" /></div>
                    <?php } ?>
                    <a onclick="addToCart('<?php echo $product['product_id']; ?>');" class="button"><?php echo $button_cart; ?></a></div>
                <?php } ?>
            </div>
        </div>
        <?php } ?>
        <?php if ($tags) { ?>
        <div class="tags"><b><?php echo $text_tags; ?></b>
            <?php for ($i = 0; $i < count($tags); $i++) { ?>
            <?php if ($i < (count($tags) - 1)) { ?>
            <a href="<?php echo $tags[$i]['href']; ?>"><?php echo $tags[$i]['tag']; ?></a>,
            <?php } else { ?>
            <a href="<?php echo $tags[$i]['href']; ?>"><?php echo $tags[$i]['tag']; ?></a>
            <?php } ?>
            <?php } ?>
        </div>
        <?php } ?>
    </div>
</section>
<div class="clear-fix"></div>
<script type="text/javascript"><!--
    $(document).ready(function() {
    $('.colorbox').colorbox({
    overlayClose: true,
    opacity: 0.5,
    rel: "colorbox"
});
});
//--></script> 
<script type="text/javascript">
// Creating the data for chart.js
// Extend data with new object in wines array
        var wines = [
                {
                "userData": [65,59,90,81,56,55,40],
                "id": 49,
                "wineData": [12,24,34,45,56,67,68]                
            },
        ];
        
        // Function that generates the chart by array input
        var createRadarChart = function(array) {
        console.log(array.id);

        var userChart = array.userData; // userChart data array
        var wineChart = array.wineData; // wineChart data array
        var canvasId = "product-visual"// Generate canvas id, has to correspond with the <html> canvas id

        var radarChartData = {
        labels : ["Eating","Drinking","Sleeping","Designing","Coding","Partying","Running"],
        datasets : [
                {
    fillColor : "rgba(220,220,220,0.5)",
    strokeColor : "rgba(220,220,220,1)",
    pointColor : "rgba(220,220,220,1)",
    pointStrokeColor : "#fff",
    data : userChart
},
                {
fillColor : "rgba(151,187,205,0.5)",
strokeColor : "rgba(151,187,205,1)",
pointColor : "rgba(151,187,205,1)",
pointStrokeColor : "#fff",
data : wineChart
}
]	
}
var myRadar = new Chart(document.getElementById(canvasId).getContext("2d")).Radar(radarChartData,{scaleShowLabels : true, pointLabelFontSize : 1});
}

// Foreach loop
var forEach = function(array, action) {
for(i = 0; i < array.length; i++) {
action(array[i]);
}
}

// Loop trough wines and create radarchart
forEach(wines, createRadarChart);

</script>
<script type="text/javascript"><!--

$('select[name="profile_id"], input[name="quantity"]').change(function(){
$.ajax({
url: 'index.php?route=product/product/getRecurringDescription',
type: 'post',
data: $('input[name="product_id"], input[name="quantity"], select[name="profile_id"]'),
dataType: 'json',
beforeSend: function() {
$('#profile-description').html('');
},
success: function(json) {
$('.success, .warning, .attention, information, .error').remove();
            
if (json['success']) {
$('#profile-description').html(json['success']);
}	
}
});
});
    
$('#button-cart').bind('click', function() {
$.ajax({
url: 'index.php?route=checkout/cart/add',
type: 'post',
data: $('.product-info input[type=\'text\'], .product-info input[type=\'hidden\'], .product-info input[type=\'radio\']:checked, .product-info input[type=\'checkbox\']:checked, .product-info select, .product-info textarea'),
dataType: 'json',
success: function(json) {
$('.success, .warning, .attention, information, .error').remove();
			
if (json['error']) {
if (json['error']['option']) {
for (i in json['error']['option']) {
$('#option-' + i).after('<span class="error">' + json['error']['option'][i] + '</span>');
}
}
                
if (json['error']['profile']) {
$('select[name="profile_id"]').after('<span class="error">' + json['error']['profile'] + '</span>');
}
} 
			
if (json['success']) {
$('#notification').html('<div class="success" style="display: none;">' + json['success'] + '<img src="catalog/view/theme/default/image/close.png" alt="" class="close" /></div>');
					
$('.success').fadeIn('slow');
					
$('#cart-total').html(json['total']);
				
$('html, body').animate({ scrollTop: 0 }, 'slow'); 
}	
}
});
});
//--></script>
<?php if ($options) { ?>
<script type="text/javascript" src="catalog/view/javascript/jquery/ajaxupload.js"></script>
<?php foreach ($options as $option) { ?>
<?php if ($option['type'] == 'file') { ?>
<script type="text/javascript"><!--
new AjaxUpload('#button-option-<?php echo $option['product_option_id']; ?>', {
action: 'index.php?route=product/product/upload',
name: 'file',
autoSubmit: true,
responseType: 'json',
onSubmit: function(file, extension) {
$('#button-option-<?php echo $option['product_option_id']; ?>').after('<img src="catalog/view/theme/default/image/loading.gif" class="loading" style="padding-left: 5px;" />');
$('#button-option-<?php echo $option['product_option_id']; ?>').attr('disabled', true);
},
onComplete: function(file, json) {
$('#button-option-<?php echo $option['product_option_id']; ?>').attr('disabled', false);
		
$('.error').remove();
		
if (json['success']) {
alert(json['success']);
			
$('input[name=\'option[<?php echo $option['product_option_id']; ?>]\']').attr('value', json['file']);
}
		
if (json['error']) {
$('#option-<?php echo $option['product_option_id']; ?>').after('<span class="error">' + json['error'] + '</span>');
}
		
$('.loading').remove();	
}
});
//--></script>
<?php } ?>
<?php } ?>
<?php } ?>
<script type="text/javascript"><!--
$('#review .pagination a').live('click', function() {
$('#review').fadeOut('slow');
		
$('#review').load(this.href);
	
$('#review').fadeIn('slow');
	
return false;
});			

$('#review').load('index.php?route=product/product/review&product_id=<?php echo $product_id; ?>');

$('#button-review').bind('click', function() {
$.ajax({
url: 'index.php?route=product/product/write&product_id=<?php echo $product_id; ?>',
type: 'post',
dataType: 'json',
data: 'name=' + encodeURIComponent($('input[name=\'name\']').val()) + '&text=' + encodeURIComponent($('textarea[name=\'text\']').val()) + '&rating=' + encodeURIComponent($('input[name=\'rating\']:checked').val() ? $('input[name=\'rating\']:checked').val() : '') + '&captcha=' + encodeURIComponent($('input[name=\'captcha\']').val()),
beforeSend: function() {
$('.success, .warning').remove();
$('#button-review').attr('disabled', true);
$('#review-title').after('<div class="attention"><img src="catalog/view/theme/default/image/loading.gif" alt="" /> <?php echo $text_wait; ?></div>');
},
complete: function() {
$('#button-review').attr('disabled', false);
$('.attention').remove();
},
success: function(data) {
if (data['error']) {
$('#review-title').after('<div class="warning">' + data['error'] + '</div>');
}
			
if (data['success']) {
$('#review-title').after('<div class="success">' + data['success'] + '</div>');
								
$('input[name=\'name\']').val('');
$('textarea[name=\'text\']').val('');
$('input[name=\'rating\']:checked').attr('checked', '');
$('input[name=\'captcha\']').val('');
}
}
});
});
//--></script> 
<script type="text/javascript"><!--
$('#tabs a').tabs();
//--></script> 
<script type="text/javascript" src="catalog/view/javascript/jquery/ui/jquery-ui-timepicker-addon.js"></script> 
<script type="text/javascript"><!--
$(document).ready(function() {
if ($.browser.msie && $.browser.version == 6) {
$('.date, .datetime, .time').bgIframe();
}

$('.date').datepicker({dateFormat: 'yy-mm-dd'});
$('.datetime').datetimepicker({
dateFormat: 'yy-mm-dd',
timeFormat: 'h:m'
});
$('.time').timepicker({timeFormat: 'h:m'});
});
//--></script> 
<?php echo $footer; ?>