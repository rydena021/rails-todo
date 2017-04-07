//= require jquery
//= require jquery_ujs
//= require bootstrap-sprockets
//= require_tree .
    $("#menu-toggle").click(function(e) {
        e.preventDefault();
        $("#wrapper").toggleClass("toggled");
    });
