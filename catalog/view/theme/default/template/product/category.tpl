<?php echo $header; ?>
<?php echo $column_left; ?>
<?php echo $column_right; ?>
<div class="product-overview" id="content">
    <div class="product-overview__breadcrumb">
        <?php foreach ($breadcrumbs as $breadcrumb) { ?>
        <?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
        <?php } ?>
    </div>
    <div class="overview-content">
        <h1><?php echo $heading_title; ?></h1>
        <?php if ($thumb || $description) { ?>
        <div class="category-info">
            <?php if ($thumb) { ?>
            <div class="image"><img src="<?php echo $thumb; ?>" alt="<?php echo $heading_title; ?>" /></div>
            <?php } ?>
            <?php if ($description) { ?>
            <?php echo $description; ?>
            <?php } ?>
        </div>
        <?php } ?>
        <?php if ($categories) { ?>
        <h2><?php echo $text_refine; ?></h2>
        <div class="category-list">
            <?php if (count($categories) <= 5) { ?>
            <ul>
                <?php foreach ($categories as $category) { ?>
                <li><a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a></li>
                <?php } ?>
            </ul>
            <?php } else { ?>
            <?php for ($i = 0; $i < count($categories);) { ?>
            <ul>
                <?php $j = $i + ceil(count($categories) / 4); ?>
                <?php for (; $i < $j; $i++) { ?>
                <?php if (isset($categories[$i])) { ?>
                <li><a href="<?php echo $categories[$i]['href']; ?>"><?php echo $categories[$i]['name']; ?></a></li>
                <?php } ?>
                <?php } ?>
            </ul>
            <?php } ?>
            <?php } ?>
        </div>
        <?php } ?>
    </div>
    <div class="overview-content">
        <?php if ($products) { ?>
        <div class="product-filter">
            <div class="display"></div>
            <div class="limit">
                <i class="glyphicon glyphicon-list"></i>
                <select onchange="location = this.value;">
                    <?php foreach ($limits as $limits) { ?>
                    <?php if ($limits['value'] == $limit) { ?>
                    <option value="<?php echo $limits['href']; ?>" selected="selected"><?php echo $limits['text']; ?></option>
                    <?php } else { ?>
                    <option value="<?php echo $limits['href']; ?>"><?php echo $limits['text']; ?></option>
                    <?php } ?>
                    <?php } ?>
                </select>
            </div>
            <div class="sort">
                <i class="glyphicon glyphicon-tags"></i>
                <select onchange="location = this.value;">
                    <?php foreach ($sorts as $sorts) { ?>
                    <?php if ($sorts['value'] == $sort . '-' . $order) { ?>
                    <option value="<?php echo $sorts['href']; ?>" selected="selected"><?php echo $sorts['text']; ?></option>
                    <?php } else { ?>
                    <option value="<?php echo $sorts['href']; ?>"><?php echo $sorts['text']; ?></option>
                    <?php } ?>
                    <?php } ?>
                </select>
            </div>
        </div>
    </div>
    <div class="product-list">
        <?php foreach ($products as $product) { ?>
        <div class="product-list__item">
            <?php if ($product['thumb']) { ?>
            <div class="image"><a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" title="<?php echo $product['name']; ?>" alt="<?php echo $product['name']; ?>" /></a></div>
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
            <div class="wishlist">
                <i class="glyphicon glyphicon-glass"></i><a href="javascript:void(0);" class="button button--green" onclick="addToWishList('<?php echo $product['product_id']; ?>');"><?php echo $button_wishlist; ?><i class="glyphicon glyphicon-plus"></i></a>
            </div>
        </div>
        <?php } ?>
    </div>
    <div class="pagination"><?php echo $pagination; ?></div>
    <?php } ?>
    <?php if (!$categories && !$products) { ?>
    <div class="content"><p><?php echo $text_empty; ?></p></div>
    <div class="form__button-holder">
        <div class="right"><a href="<?php echo $continue; ?>" class="button"><?php echo $button_continue; ?></a></div>
        <div class="clear-fix"></div>
    </div>
    <?php } ?>
</div>
</div>
<div class="clear-fix"></div>
<script type="text/javascript"><!--
    function display(view) {
    if (view == 'list') {
    $('.product-grid').attr('class', 'product-list');
		
    $('.product-list > div').each(function(index, element) {
    html  = '<div class="right">';
    html += '  <div class="wishlist">' + $(element).find('.wishlist').html() + '</div>';
    html += '</div>';			
			
    html += '<div class="left">';
			
    var image = $(element).find('.image').html();
			
    if (image != null) { 
    html += '<div class="image">' + image + '</div>';
}
			
var price = $(element).find('.price').html();
			
if (price != null) {
html += '<div class="price">' + price  + '</div>';
}
					
html += '  <div class="name">' + $(element).find('.name').html() + '</div>';
			
var rating = $(element).find('.rating').html();
			
if (rating != null) {
html += '<div class="rating">' + rating + '</div>';
}
				
html += '</div>';
						
$(element).html(html);
});		
		
$('.display').html('<i class=\'glyphicon glyphicon-th-list\'></i><?php echo $text_list; ?> | <a class=\'display--selected\' href=\'javascript:void(0);\' onclick="display(\'grid\');"><?php echo $text_grid; ?></a>');
		
$.totalStorage('display', 'list'); 
} else {
$('.product-list').attr('class', 'product-grid');
		
$('.product-grid > div').each(function(index, element) {
html = '';
			
var image = $(element).find('.image').html();
			
if (image != null) {
html += '<div class="image">' + image + '</div>';
}
			
html += '<div class="name">' + $(element).find('.name').html() + '</div>';
			
var price = $(element).find('.price').html();
			
if (price != null) {
html += '<div class="price">' + price  + '</div>';
}
			
var rating = $(element).find('.rating').html();
			
if (rating != null) {
html += '<div class="rating">' + rating + '</div>';
}
						
html += '<div class="wishlist">' + $(element).find('.wishlist').html() + '</div>';
			
$(element).html(html);
});	
					
$('.display').html('<i class=\'glyphicon glyphicon-th\'></i><a class=\'display--selected\' href=\'javascript:void(0);\' onclick="display(\'list\');"><?php echo $text_list; ?></a> | <?php echo $text_grid; ?>');
		
$.totalStorage('display', 'grid');
}
}

view = $.totalStorage('display');

if (view) {
display(view);
} else {
display('list');
}
//--></script> 
<?php echo $footer; ?>