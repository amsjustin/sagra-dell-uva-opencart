<?php
    // url van de categories hier
    $wine_categories_url = array(
            "#",
            "#",
            "#",
            "#",
            "#",
            "#",
            "#",
            "#",
            "#",
            "#",
            "#",
            "#",
        );
    
    // titels van de categories hier
    $wine_categories_title = array(
        "category item 1",
        "category item 2",
        "category item 3",
        "category item 4",
        "category item 5",
        "category item 6",
        "category item 7",
        "category item 8",
        "category item 9",
        "category item 10",
        "category item 11",
        "category item 12",
    );
        
    // length van de array meegeven voor de loop
    $arrlength = count($wine_categories_title);  
        
    function createCategories($categories_title,$categories_url,$categories_length){
            /* Counter om de ul's te beginnen en af te sluiten */
            $ulcounter = 0;

            for ($i = 0; $i < $categories_length; $i++){
              if($ulcounter==0){
              echo '<ul>';
            }
            $ulcounter++;

            echo "<li><a href=\"$categories_url[$i]\">" . $categories_title[$i] . '</a></li>';

            if($ulcounter==3){
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