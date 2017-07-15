// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery3
//= require popper
//= require bootstrap

//= require rails-ujs
//= require turbolinks

//= require ./JESSE/init
//= require_tree ./JESSE/plugins

$(document).ready(function(){
  $('#new_place').submit(function(e){
    if(!$('#server_lookup').is(':checked')){
      JESSE.Maps.mapLookup('map');
      return false
    }else{
      $('#submit_button').click();
    }
  });
});
