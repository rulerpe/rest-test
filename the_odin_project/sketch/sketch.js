$(document).ready(function(){
    $("button").click(function(){
        newgame();
    
    });

});

function newgame(){
    $("#frame").empty();
    var size = prompt("please enter size");
    var length = (1000/size) -2;


    for(var i=0;i< size*size ;i++){
        $("#frame").append("<div class='block'></div>");
    }
    $(".block").css("width", length);
    $(".block").css("height",length);
    $(".block").css("background-color","#000000");
    
    $(".block").mouseenter(function(){
        var x = $(this).css('opacity');
        var next = x - 0.1;
        if (next>0){ 
            $(this).css('opacity', next);
        }else{
            $(this).css('opacity', '0');
        }
    });
};