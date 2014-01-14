<?php echo $header; ?>
<?php
    $wine_description = array(
        "1 - Zoet",
        "2 - Zuur",
        "3 - Fruitig",
        "4 - Prijs",
        "5 - Jaar",
        "6 - Druif",
        "7 - Regio"
    );
    
    $arrlength = count($wine_description);
    
    function isOnChart($positionOnChart){
        $returnValue = '';
        
        if($positionOnChart>50){
            $returnValue = 'product__content-description--offthechart';
        }else{
            $returnValue = 'product__content-description--normal';
        }
    
        return $returnValue;
    }   
?>

<section class="content">
    <?php echo $column_left; ?><?php echo $column_right; ?>
    <section class="product-overview">
        <div class="product-overview__breadcrumb">
            <?php  { ?>
            <?php ?><a href="<?php echo $base; ?>"><?php echo 'home'; ?></a>
            <?php } ?>
        </div>
        
        <?php
            // create product counter to edit 'product-visual' canvas id
            $product_counter = 0;
            
            $product_id_array = array();
            $product_visual_array = array();
            $products_amount = sizeOf($products);
            
            foreach ($products as $product){
                $product_counter++;
                $product_name = $product["name"];
                $product_price = $product['price'];
                $product_thumb = $product["thumb"];
                $radar_visual_data = $product['visual'];
                $product_id = $product['product_id'];
                $product_href = $product['href'];
                
                array_push($product_id_array, $product['product_id']);
                array_push($product_visual_array, $radar_visual_data);
                
                $image_url = $base . 'image/' . $product["image"];

                echo    "<article class=\"product\">
                    <div class=\"product__img\">
                        <a href=\"$product_href\"><img width=\"180\" height=\"220\" src=\"$image_url\"></a>
                    </div>
                    <div class=\"product__content\">
                        <div class=\"product__content-title\">
                            <h1><a href=\"$product_href\">$product_name</a></h1>
                    </div>
                    <div class=\"product__content-visual\">
                        <canvas id=\"product-visual-$product_id\" width=\"180\" height=\"180\"></canvas>
                    </div>";
                    
                    $descriptionClass = isOnChart(19);
                    echo "<div class=\"$descriptionClass\">" . '1 - Zoet' . '</div>';
                    echo "<div class=\"$descriptionClass\">" . '2 - Zuur' . '</div>';
                    echo "<div class=\"$descriptionClass\">" . '3 - Fruitig' . '</div>';
                    echo "<div class=\"$descriptionClass\">" . '4 - Prijs' . '</div>';
                    echo "<div class=\"$descriptionClass\">" . '5 - Jaar' . '</div>';
                    echo "<div class=\"$descriptionClass\">" . '6 - Druif' . '</div>';
                    echo "<div class=\"$descriptionClass\">" . '7 - Regio' . '</div>';
                    
                    
                    echo "<div class=\"product__content-price\">
                                <a href=\"$product_href\">$product_price <i class=\"icon-arrow-right\"></i></a>
                            </div>
                        </div>
                    </article>";
            } // end of foreach
            
        ?>
    </section>
    <div class="clear-fix"></div>
</section>

<script type="text/javascript">
    // Creating the data for chart.js
    // Extend data with new object in wines array
    var wines = [
        
    <?php foreach($products as $product){ ?>
        {
            "userData": [65,59,90,81,56,55,40],
            "id": <?php echo $product['product_id'] ?>,
            "wineData": <?php echo $product['visual']; ?>
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
        var myRadar = new Chart(document.getElementById(canvasId).getContext("2d")).Radar(radarChartData,{scaleShowLabels : false, pointLabelFontSize : 1});
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