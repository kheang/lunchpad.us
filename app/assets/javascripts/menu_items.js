
$(document).on("page:load ready", function(){

    var dates = [];

    $(".date-panel-simple").click(function() {
        console.log(this.id);
        if(!$(this).hasClass("selected") && !$(this).hasClass("off-day") && !$(this).hasClass("past")) {
            $(this).addClass("selected");
            dates.push(this.id.replace("date_panel_", ""));
        } else {
            $(this).removeClass("selected");
        }
        $("#datepicker").val(dates);
        console.log(dates);
    });
});

