<?php echo $header; ?>
<?php if ($success) { ?>
<div class="success"><?php echo $success; ?><img src="catalog/view/theme/default/image/close.png" alt="" class="close" /></div>
<?php } ?>
<?php echo $column_right; ?>
<section class="product-overview" id="content">
    <div class="product-overview__breadcrumb">
        <?php foreach ($breadcrumbs as $breadcrumb) { ?>
        <?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
        <?php } ?>
    </div>
    <div class="overview-content">
        <h1><?php echo $heading_title; ?></h1>
    </div>
    <?php if ($products) { ?>
    <div class="wijnrek">
        <?php foreach ($products as $product) { ?>
        <article id="product-<?php echo $product['product_id']; ?>" class="wijnrek__wine">
            <h1><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></h1>
            <div class="wijnrek__col-left">
                <div class="wijnrek__wine-id">Id: <?php echo $product['product_id']; ?></div>
                <div class="wijnrek__wine-img">
                    <?php if ($product['thumb']) { ?>
                    <a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" /></a>
                    <?php } ?>
                </div>
            </div>
            <div class="wijnrek__col-right">
                <div class="wijnrek__wine-visual">
                    <canvas width="250" height="250" id="product-visual-<?php echo $product['product_id']; ?>"></canvas>
                </div>
            </div>
            <div class="wijnrek__col-bottom">
                <div class="wijnrek__wine-price"><?php echo $product['price']; ?></div>
                <div class="wijnrek__wine-options">
                    <img src="catalog/view/theme/default/image/cart-add.png" alt="<?php echo $button_cart; ?>" title="<?php echo $button_cart; ?>" onclick="addToCart('<?php echo $product['product_id']; ?>');" />
                    <a href="<?php echo $product['remove']; ?>">
                        <img src="catalog/view/theme/default/image/remove.png" alt="<?php echo $button_remove; ?>" title="<?php echo $button_remove; ?>" />
                    </a>
                </div>
            </div>
        </article>
        <?php } ?>
    </div>
    <?php } ?>
</section>
<div class="clear-fix"></div>
<script type="text/javascript">
    function randomize(){
        return Math.floor(Math.random()*100);
    }
    
    // Creating the data for chart.js
    // Extend data with new object in wines array
    var wines = [
        
            <?php foreach($products as $product){ ?>
        {
                "userData": [65,59,90,81,56,55,40],
                "id": <?php echo $product['product_id'] ?>,
                "wineData": [randomize(),randomize(),randomize(),randomize(),randomize(),randomize(),randomize()]
                },

                <?php } ?>
        ];

    // Function that generates the chart by array input
    var createRadarChart = function(array) {
    console.log(array.id);

    var userChart = array.userData; // userChart data array
    var wineChart = array.wineData; // wineChart data array
    var canvasId = "product-visual-" + array.id; // Generate canvas id, has to correspond with the <html> canvas id

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
<?php echo $footer; ?>