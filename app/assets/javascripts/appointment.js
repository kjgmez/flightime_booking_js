$(document).ready(() => {
    $( ".js-more" ).click(function() {
        let id = $(this).attr('data-id');
        let user = $(this).attr('user-id');
        $.get("/users/" + user + "/appointments/" + id + ".json", function(data){
            alert(data)
        });
    });
});