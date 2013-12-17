<?php echo $header; ?>
<<<<<<< HEAD
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
=======
>>>>>>> 1f7988d99756db21cd21a2b5e01896c1ad8f4fbc
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
                <div class="product__content-description">1 - Zoet</div>
                <div class="product__content-price">
                    <a href="#">€29,95 <i class="icon-arrow-right"></i></a>
                </div>
            </div>
        </article>
        
        
        
<<<<<<< HEAD
=======
        <article class="product">
            <div class="product__img">
                <img src="html/assets/img/wine-preview.jpg">
            </div>
            <div class="product__content">
                <div class="product__content-title">
                    <h1>Duetto Greco Matera DOC</h1>
                </div>
                <div class="product__content-visual"><img src="html/assets/img/radarchart.png" alt="" /></div>
                <div class="product__content-price">
                    <a href="#">€29,95 <i class="icon-arrow-right"></i></a>
                </div>
            </div>
        </article>
        <article class="product">
            <div class="product__img">
                <img src="html/assets/img/wine-preview.jpg">
            </div>
            <div class="product__content">
                <div class="product__content-title">
                    <h1>Duetto Greco Matera DOC</h1>
                </div>
                <div class="product__content-visual"><img src="html/assets/img/radarchart.png" alt="" /></div>
                <div class="product__content-price">
                    <a href="#">€29,95 <i class="icon-arrow-right"></i></a>
                </div>
            </div>
        </article>
        <article class="product">
            <div class="product__img">
                <img src="html/assets/img/wine-preview.jpg">
            </div>
            <div class="product__content">
                <div class="product__content-title">
                    <h1>Duetto Greco Matera DOC</h1>
                </div>
                <div class="product__content-visual"><img src="html/assets/img/radarchart.png" alt="" /></div>
                <div class="product__content-price">
                    <a href="#">€29,95 <i class="icon-arrow-right"></i></a>
                </div>
            </div>
        </article>
        <article class="product">
            <div class="product__img">
                <img src="html/assets/img/wine-preview.jpg">
            </div>
            <div class="product__content">
                <div class="product__content-title">
                    <h1>Duetto Greco Matera DOC</h1>
                </div>
                <div class="product__content-visual"><img src="html/assets/img/radarchart.png" alt="" /></div>
                <div class="product__content-price">
                    <a href="#">€29,95 <i class="icon-arrow-right"></i></a>
                </div>
            </div>
        </article>
        <article class="product">
            <div class="product__img">
                <img src="html/assets/img/wine-preview.jpg">
            </div>
            <div class="product__content">
                <div class="product__content-title">
                    <h1>Duetto Greco Matera DOC</h1>
                </div>
                <div class="product__content-visual"><img src="html/assets/img/radarchart.png" alt="" /></div>
                <div class="product__content-price">
                    <a href="#">€29,95 <i class="icon-arrow-right"></i></a>
                </div>
            </div>
        </article>
        <article class="product">
            <div class="product__img">
                <img src="html/assets/img/wine-preview.jpg">
            </div>
            <div class="product__content">
                <div class="product__content-title">
                    <h1>Duetto Greco Matera DOC</h1>
                </div>
                <div class="product__content-visual"><img src="html/assets/img/radarchart.png" alt="" /></div>
                <div class="product__content-price">
                    <a href="#">€29,95 <i class="icon-arrow-right"></i></a>
                </div>
            </div>
        </article>
        <article class="product">
            <div class="product__img">
                <img src="html/assets/img/wine-preview.jpg">
            </div>
            <div class="product__content">
                <div class="product__content-title">
                    <h1>Duetto Greco Matera DOC</h1>
                </div>
                <div class="product__content-visual"><img src="html/assets/img/radarchart.png" alt="" /></div>
                <div class="product__content-price">
                    <a href="#">€29,95 <i class="icon-arrow-right"></i></a>
                </div>
            </div>
        </article>
        <article class="product">
            <div class="product__img">
                <img src="html/assets/img/wine-preview.jpg">
            </div>
            <div class="product__content">
                <div class="product__content-title">
                    <h1>Duetto Greco Matera DOC</h1>
                </div>
                <div class="product__content-visual"><img src="html/assets/img/radarchart.png" alt="" /></div>
                <div class="product__content-price">
                    <a href="#">€29,95 <i class="icon-arrow-right"></i></a>
                </div>
            </div>
        </article>
        <article class="product">
            <div class="product__img">
                <img src="html/assets/img/wine-preview.jpg">
            </div>
            <div class="product__content">
                <div class="product__content-title">
                    <h1>Duetto Greco Matera DOC</h1>
                </div>
                <div class="product__content-visual"><img src="html/assets/img/radarchart.png" alt="" /></div>
                <div class="product__content-price">
                    <a href="#">€29,95 <i class="icon-arrow-right"></i></a>
                </div>
            </div>
        </article>
        <article class="product">
            <div class="product__img">
                <img src="html/assets/img/wine-preview.jpg">
            </div>
            <div class="product__content">
                <div class="product__content-title">
                    <h1>Duetto Greco Matera DOC</h1>
                </div>
                <div class="product__content-visual"><img src="html/assets/img/radarchart.png" alt="" /></div>
                <div class="product__content-price">
                    <a href="#">€29,95 <i class="icon-arrow-right"></i></a>
                </div>
            </div>
        </article>
        <article class="product">
            <div class="product__img">
                <img src="html/assets/img/wine-preview.jpg">
            </div>
            <div class="product__content">
                <div class="product__content-title">
                    <h1>Duetto Greco Matera DOC</h1>
                </div>
                <div class="product__content-visual"><img src="html/assets/img/radarchart.png" alt="" /></div>
                <div class="product__content-price">
                    <a href="#">€29,95 <i class="icon-arrow-right"></i></a>
                </div>
            </div>
        </article>
        <article class="product">
            <div class="product__img">
                <img src="html/assets/img/wine-preview.jpg">
            </div>
            <div class="product__content">
                <div class="product__content-title">
                    <h1>Duetto Greco Matera DOC</h1>
                </div>
                <div class="product__content-visual"><img src="html/assets/img/radarchart.png" alt="" /></div>
                <div class="product__content-price">
                    <a href="#">€29,95 <i class="icon-arrow-right"></i></a>
                </div>
            </div>
        </article>
        <article class="product">
            <div class="product__img">
                <img src="html/assets/img/wine-preview.jpg">
            </div>
            <div class="product__content">
                <div class="product__content-title">
                    <h1>Duetto Greco Matera DOC</h1>
                </div>
                <div class="product__content-visual"><img src="html/assets/img/radarchart.png" alt="" /></div>
                <div class="product__content-price">
                    <a href="#">€29,95 <i class="icon-arrow-right"></i></a>
                </div>
            </div>
        </article>
        <article class="product">
            <div class="product__img">
                <img src="html/assets/img/wine-preview.jpg">
            </div>
            <div class="product__content">
                <div class="product__content-title">
                    <h1>Duetto Greco Matera DOC</h1>
                </div>
                <div class="product__content-visual"><img src="html/assets/img/radarchart.png" alt="" /></div>
                <div class="product__content-price">
                    <a href="#">€29,95 <i class="icon-arrow-right"></i></a>
                </div>
            </div>
        </article>
>>>>>>> 1f7988d99756db21cd21a2b5e01896c1ad8f4fbc
        <div class="product"></div>
        <div class="product"></div>
        <div class="product"></div>
        <div class="product"></div>
    </section>
    <div class="clear-fix"></div>
</section>
<?php echo $footer; ?>