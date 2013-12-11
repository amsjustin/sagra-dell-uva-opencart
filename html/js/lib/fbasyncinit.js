window.fbAsyncInit = function(){
    window.fbAsyncInit.fbLoaded.resolve();
}
window.fbAsyncInit.fbLoaded = $.Deferred();