

function showNew() {
    $("#new").show();
    $("#basic").hide();
}
function showBasic() {
    $("#basic").show();
    $("#new").hide();
}

$('#cancelBtn').on("click", function(){
    history.back();
    return false;
});