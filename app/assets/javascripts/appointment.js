$(function() {
    console.log("loaded");
    $(".js-more").on("click", function() {
        debugger;
        var id = $(this).data("id");
        $.get("/products/" + id + ".json", function(data) {
            var inventoryText = "<strong>Available</strong>";
            if (data['inventory'] < 1){
                inventoryText = "<strong>Sold Out</strong>";
            }
            var descriptionText = "<p>" + data['description'] + "</p><p>" + inventoryText + "</p>";
            $("#product-" + id).html(descriptionText);
        });
    });
});