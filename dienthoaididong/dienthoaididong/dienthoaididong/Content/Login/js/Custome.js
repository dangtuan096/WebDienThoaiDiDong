$(document).ready(function () {
    $("#login").click(function () {
        $(".login100-form").show();
        $(".container-signup-form").css("display", "none");
    });

    $("#register").click(function () {
        $(".login100-form").css("display", "none");
        $(".login1001-form").show();
    });
});