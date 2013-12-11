var halloFansYpos = 0,
casesYpos = 0,
aboutYpos = 0,
packagesYpos = 0, 
contactYpos = 0,
desktop	= 650,
landscape = 459, 
portraid = 0;

$(document).ready(function() {

    $( window ).resize( function() {
        checkDimensions();
    });
    
    $(window).on('hashchange', function() {
        console.log(window.location.hash);
    });
    
});
  
// Check screen dimensions.
function checkDimensions() {

    sw = document.documentElement.clientWidth;
    sh = document.documentElement.clientHeight;

    //    $('#screenwidth').html('screenwidth: ' + sw);
    //    $('#screenheight').html('screenheight: ' + sh);

    if(sw < desktop)
    {

        if (sw < landscape){
            portraidBehaviour();
        }else{
            
            landscapeBehavour();
        }

    }else{
        normalBehaviour();
    }
}

function portraidBehaviour() {
    console.log("portraidBehaviour");
}

function landscapeBehavour() {
    console.log("landscapeBehavour");
}

function normalBehaviour() {
    console.log("normalBehaviour");
}

function getElementPosition(elementId) {
    
    var el = $(elementId), 
    position = el.position(),
    elementYpos = position.top;
    
    console.log("el: " + elementId + " y:" + elementYpos);
    
    return elementYpos;
}