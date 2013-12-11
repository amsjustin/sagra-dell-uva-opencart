/** input field plugin **/
/**
 * The JQuery inputfield can be used as following:
 * $("input").inputfield({
 *  'dflt' : 'The default value',
 *  'val' : 'The value',
 *  'colors': {
 *      'inactive' : '#ff0000',
 *      'active' : '#000000',
 *      'error' : '#ff0000'
 *  });
 *  
 *  Postcode - check (NL)
 *  'validation': {
 *      'type' : 'regex',
 *      'data' : /[0-9]{4}\x20?[A-Z]{2}/
 *  }
 *  
 *  Email - check
 *  'validation': {
 *      'type' : 'regex',
 *      'data' : /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;
 *  }
 * 
 * 
 */
(function( $ ){
    var methods = {
        init : function( options ) {
            // Create some defaults, extending them with any options that were provided
            var settings = $.extend( {
                'dlft': '', 
                'val':'',
                'colors':{
                    'inactive': "#bcb7b4",
                    'active': "#243b46",
                    'correct' : '#3ba9e0',
                    'incorrect' : '#e94c41'
                },
                'validation' : false,
                'allowEmpty' : false
            }, options);

            return this.each(function() {        
                var $this = $(this);
                var _self = this;
                var data = $this.data('inputfield');
                            
                if(!data){
                    
                    $this.data('inputfield', {
                        target : _self,
                        val: settings.val,
                        settings:settings
                    });
                    data = $this.data('inputfield');
                }
                
                // check for the validation properti
                if($this.attr('allowempty')){
                    settings.allowEmpty = true;
                }
                
                // check for the validation properti
                if($this.attr('default')){
                    settings.dflt = $this.attr('default');
                }
                
                
                if($this.attr('validation') && $this.attr('validation').length != ''){
                    var regEx = false;
                    switch($this.attr('validation')){
                        case 'name':
                            regEx =  /^([aA-zZ ]){2,75}$/;
                            break;
                        case 'email':
                            regEx =  /^([A-Za-z0-9_\-\.])+\@([A-Za-z0-9_\-\.])+\.([A-Za-z]{2,4})$/;
                            break;
                        case 'postalcode':
                            regEx =  /[0-9]{4}\x20?[aA-zZ]{2}/;
                            break;
                        case 'street':
                            regEx =  /^([a-zA-Z 0-9_-]){2,75}$/;
                            break;
                        case 'city':
                            regEx =  /^([a-zA-Z ]){2,75}$/;
                            break;
                        case 'phonenumber':
                            regEx =  /^([+]|[0-9]){1}([0-9]{9,15})$/;
                            break;
                        case 'housenumber':
                            regEx =  /^([0-9 aA-zZ\-]){1,10}$/;
                            break;
                        case 'number':
                            regEx =  /^([0-9 \.]){1,}$/;
                            break;
                        case 'location':
                            regEx =  /^([a-zA-Z 0-9_-]){2,75}$/;
                            break;
                        case 'company':
                            regEx =  /^([a-zA-Z 0-9_-]){2,75}$/;
                            break;
                        case 'age':
                            regEx =  /^([0-9]){1,2}$/;
                            break;
                        case 'free':
                            regEx =  /^.{2,}$/;
                            break;
                    }
                    
                    if(regEx != false && settings.validation == false){
                        settings.validation = {
                            'type' : 'regex',
                            'data' : regEx,
                            'onkeyup' : true
                        }
                    }
                }
                
                
            
                // set the handlers
                $this.focusin(focusinHandler);
                $this.focusout(fucusoutHandler);
                
                if(settings.validation != false && settings.validation.onkeyup == true){
                    $this.keyup(keyupHandler);
                }
                
                function focusinHandler(e){
                    $this.parent().removeClass('error');
                    
                    if($this.val() == settings.dflt){
                        $this.val('');
                        $this.css('color', settings.colors.active);
                    }else if($this.val() == ''){
                        $this.css('color', settings.colors.active);
                    }
                    
                }
                function fucusoutHandler(e){
                    if($this.val() == ''){
                        $this.val(settings.dflt);
                        $this.css('color', settings.colors.inactive);
                    }
                    
                }
                function keyupHandler(e){
                    if(settings.validation != false){
                        this.validate();
                    }
                }
                
                function updateInputfield(){
                    if(data.val != '' && data.val != false){
                        $this.val(settings.val);
                        $this.css('color', settings.colors.active);
                    }else{
                        $this.val(settings.dflt);
                        $this.css('color', settings.colors.inactive);
                    }
                }
                
                this.validate = function(){
                    if(this.val() == '' && settings.allowEmpty == true){
                        return true;
                    }
                    switch(settings.validation.type){
                        case 'regex':
                            if(settings.validation.data.test(this.val())){
                                $this.css('color', settings.colors.correct);
                                return true;
                            }else{
                                $this.css('color', settings.colors.incorrect);
                                return false;
                            }
                            break;
                    }
                    return true;
                }
                this.update = function(){
                    updateInputfield();
                }
                this.val = function(){
                    var value = $this.val();
                    if(value == settings.dflt){
                        value ='';
                    }
                    return value;
                }
                
                // Update the input field
                updateInputfield();
            });
        },
        reset:function(){
            return this.each(function(){
                var $this = $(this), data = $this.data('inputfield');
                data.val = '';
                data.target.update();
            });
        },
        value:function(){
            // Only works with one item!
            var val = '';
            this.each(function(){
                var $this = $(this), data = $this.data('inputfield');
                val = data.target.val();
            });
            return val;
        },
        isValid:function(){
            // only works with one item
            var valid = true;
            this.each(function(){
                var $this = $(this), data = $this.data('inputfield');
                valid = data.target.validate();
            });
            
            
            return valid;
        }
    };

    $.fn.inputfield = function(method) {
        if ( methods[method] ) {
            return methods[method].apply( this, Array.prototype.slice.call( arguments, 1 ));
        } else if ( typeof method === 'object' || ! method ) {
            return methods.init.apply( this, arguments );
        } else {
            $.error( 'Method ' +  method + ' does not exist on jQuery.tooltip' );
        }    
  
    };
})( jQuery );