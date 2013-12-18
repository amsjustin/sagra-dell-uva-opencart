<?php
    // url van de categories hier
    $wine_categories_url = array(
            "#",
            "#",
        );
    
    // titels van de categories hier
    $wine_categories_title = array(
        "rode wijn",
        "witte wijn",
    );
        
    // length van de array meegeven voor de loop
    $arrlength = count($wine_categories_title);  
        
    function createCategories($categories_title,$categories_url,$categories_length){
            /* Counter om de ul's te beginnen en af te sluiten */
            $ulcounter = 0;
            /* limiet hoeveel items per kolom je wilt in het categories menu */
            $ul_limit = 2;

            for ($i = 0; $i < $categories_length; $i++){
              if($ulcounter==0){
              echo '<ul>';
            }
            $ulcounter++;

            echo "<li><a href=\"$categories_url[$i]\">" . $categories_title[$i] . '</a></li>';

            if($ulcounter==$ul_limit){
                $ulcounter=0;
                echo '</ul>';
            }
        }
    }
?>

<aside class="category-menu">
    <h1>CATEGORIES</h1>
        <?php 
            // categories aanmaken
            createCategories($wine_categories_title, $wine_categories_url, $arrlength);
        ?>
</aside>