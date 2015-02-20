// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require_tree .



// Main Doc Ready Function
$(window).load(function() {


    // Initialize stellar.js
    /////////////////////////////////////////////////////////////////////////////////////////////
    $.stellar.positionProperty.apple = {
        setTop: function($el, newTop, originalTop) {
            $el.css({
                'top': originalTop - newTop,
                'left': $el.hasClass('slide') ? originalTop - newTop : 0
            });
        },
        setLeft: function($el, newLeft, originalLeft) {
            $el.css('left', newLeft);
        }
    };

    $.stellar({
        horizontalScrolling: false,
        positionProperty: 'apple'
    });

    

    // Cached vars
    /////////////////////////////////////////////////////////////////////////////////////////////
    var navlinks = $('.nav-links li a');
    var navhome = $('.nav-home');
    var navcoaches = $('.nav-coaches');
    var navabout = $('.nav-about');
    var navschedule = $('.nav-schedule');
    var navapply = $('.nav-apply');
    var index = $('#index');
    var coaches = $('#coaches');
    var about = $('#about');
    var schedule = $('#schedule');
    var apply = $('#apply');


    // Waypoints functions
    /////////////////////////////////////////////////////////////////////////////////////////////
    $(coaches).waypoint(function(direction) {
        if (direction == 'down') {
            $(navlinks).removeClass('active');
            $(navcoaches).addClass('active');
        } else {
            $(navlinks).removeClass('active');
            $(navhome).addClass('active');
        }
    }, {offset: '200px'});
    $(about).waypoint(function(direction) {
        if (direction == 'down') {
            $(navlinks).removeClass('active');
            $(navabout).addClass('active');
        } else {
            $(navcoaches).addClass('active');
            $(navabout).removeClass('active');
        }
    }, {offset: '200px'});
    $(schedule).waypoint(function(direction) {
        if (direction == 'down') {
            $(navlinks).removeClass('active');
            $(navschedule).addClass('active');
        } else {
            $(navlinks).removeClass('active');
            $(navabout).addClass('active');
        }
    }, {offset: '200px'});
    $(apply).waypoint(function(direction) {
        if (direction == 'down') {
            $(navlinks).removeClass('active');
            $(navapply).addClass('active');
        } else {
            $(navlinks).removeClass('active');
            $(navschedule).addClass('active');
        }
    }, {offset: '200px'});

    // Smooth scrolling Javascript
    /////////////////////////////////////////////////////////////////////////////////////////////
    $('a[href*=#]:not([href=#])').click(function() {
        if (location.pathname.replace(/^\//,'') == this.pathname.replace(/^\//,'') 
            || location.hostname == this.hostname) {

            var target = $(this.hash);
            target = target.length ? target : $('[name=' + this.hash.slice(1) +']');
               if (target.length) {
                 $('html,body').animate({
                     scrollTop: target.offset().top - 150
                }, 750);
                return false;
            }
        }
    });
});