$(document).on('ready page:load',function(price){
    var price = $('.prices').hide();
    $('#button').on('click',function(){
        $('.prices').fadeToggle(500);
    });
});
