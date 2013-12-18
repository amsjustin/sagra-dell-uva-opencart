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
    
    
     foreach($products as $product){
                echo "Wat is visual? " . $product['visual'];
            }   
        
?>
<section class="content">
    <?php echo $column_left; ?>
    <section class="product-overview">
        <div class="product-overview__breadcrumb">
            <?php foreach ($breadcrumbs as $breadcrumb) { ?>
            <?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
            <?php } ?>
        </div>
        <?php var_dump($products); ?>
        <hr>
        
        <?php
            foreach ($products as $product){
                echo    '<article class="product">
                    <div class="product__img">
                        <img src="html/assets/img/wine-preview.jpg">
                    </div>
                    <div class="product__content">
                        <div class="product__content-title">
                            <h1>Duetto Greco Matera DOC</h1>
                    </div>
                    <div class="product__content-visual"><img src="html/assets/img/radarchart.png" alt="" /></div>';
                    
                    $descriptionClass = isOnChart(19);
                    echo "<div class=\"$descriptionClass\">" . '1 - Zoet' . '</div>';
                    echo "<div class=\"$descriptionClass\">" . '2 - Zuur' . '</div>';
                    echo "<div class=\"$descriptionClass\">" . '3 - Fruitig' . '</div>';
                    echo "<div class=\"$descriptionClass\">" . '4 - Prijs' . '</div>';
                    echo "<div class=\"$descriptionClass\">" . '5 - Jaar' . '</div>';
                    echo "<div class=\"$descriptionClass\">" . '6 - Druif' . '</div>';
                    echo "<div class=\"$descriptionClass\">" . '7 - Regio' . '</div>';
                    
                    
                    echo '<div class="product__content-price">
                                <a href="#">€29,95 <i class="icon-arrow-right"></i></a>
                            </div>
                        </div>
                    </article>';
            } // end of foreach
            
        ?>
    </section>
    <div class="clear-fix"></div>
</section>
<?php echo $footer; ?>