$("#update").on("click", function(){
    location.replace("./update?num="+$(this).attr('data-val'));
    return false;
});

$("#delete").on("click", function(){
    location.replace("./delete?num="+$(this).attr('data-val'));
    return false;
});