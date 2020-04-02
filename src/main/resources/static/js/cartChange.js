function remove() {
    var el = document.getElementById("remove");
    var el2 = el.parentNode.parentNode;
    el.parentNode.parentNode.remove();
    //var el3 = document.getElementById("lastTR");
    var el3 = document.getElementById("lastTR");
    el3.before(el2);
}

$(document).ready(function(){
    $('#remove').on('click',function () {
        $(this.parentNode.parentNode).remove();
    });

    $("tr").css("background-color", "red");
});
