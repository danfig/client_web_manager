// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require jquery
//= require jquery_ujs
//= require_tree .

function notify(flash_message) { 
			// jQuery: reference div, load in message, and fade in 
			var flash_div = $("#flash") 

			flash_div.html(flash_message); 

			flash_div.fadeIn(400).addClass('flash_ajax'); 
			// use Javascript timeout function to delay calling 
			// our jQuery fadeOut, and hide 

			setTimeout(function(){ 
				flash_div.fadeOut(500, 
				function(){ 
					flash_div.html(""); 
					flash_div.hide()
				})
			}, 2000).removeClass('flash_ajax'); 
} 
$(function(){ // &lt;&lt;JQUERY after dom is loaded event 
			// hide our container div 
			$("#flash").hide(); 
			// grab flash message from our div 
			var flash_message = $("#flash").html().trim(); 
			// call our flash display function 
			if(flash_message != "") { 
			notify(flash_message); 
			} 
});