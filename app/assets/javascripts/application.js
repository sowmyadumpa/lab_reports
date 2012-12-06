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
$(function(){	
	Patients.init();

});

Patients ={

close_dialog: function(){		
		$(".patient_form" ).dialog('destroy').remove();		
},

open_dialog: function(){
	$( ".patient_form" ).dialog({
		 width: 350,
		 close: function( event, ui ) {
		 	Patients.close_dialog();
		 }
	});
},

init: function(){
		$('#new_patient').unbind('click').bind('click', function(e){
		e.preventDefault();
		$.ajax({
			url : '/patients/new',			
			success: function(response){				
				$("#patient_form_container").html(response);				
				Patients.init();
				Patients.open_dialog();
			},
      		async:false,        
      		dataType: 'html'

		});
		
	
	});

	$('#cancel_patient_creation').unbind('click').bind('click', function(e){
		e.preventDefault();
		$( ".patient_form" ).dialog('close');
	});

	$('.edit_patient_link').unbind('click').bind('click', function(e){
		e.preventDefault();
		var id =$(e.target).attr('id');
		$.ajax({
			url : '/patients/' + id + '/edit',			
			success: function(response){				
				$("#patient_form_container").html(response);				
				Patients.init();
				Patients.open_dialog();
			},
      		async:false,        
      		dataType: 'html'

		});
	});

	$('#patient_reports tr').die('click').live('click', function(e){
    window.location = $(this).attr("show_link")
    // Or, we can grab the HREF from the first anchor:
    // window.location = $('a:first', this).attr('href');
	});

}

}