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
        
        echo 'waarde is: ' . $positionOnChart;
        
        if($positionOnChart>20){
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
        
        <article class="product">
            <div class="product__img">
                <img src="html/assets/img/wine-preview.jpg">
            </div>
            <div class="product__content">
                <div class="product__content-title">
                    <h1>Duetto Greco Matera DOC</h1>
                </div>
                <div class="product__content-visual"><img src="html/assets/img/radarchart.png" alt="" /></div>
                <?php 
                    $descriptionClass = isOnChart(19);
                    echo $descriptionClass;
                    echo "<div class=\"$descriptionClass\">" . '1 - Zoet' . '</div>';
                ?>
                <div class="product__content-price">
                    <a href="#">€29,95 <i class="icon-arrow-right"></i></a>
                </div>
            </div>
        </article>
        
        
        
        <div class="product"></div>
        <div class="product"></div>
        <div class="product"></div>
        <div class="product"></div>
    </section>
    <div class="clear-fix"></div>
</section>
<?php echo $footer; ?>