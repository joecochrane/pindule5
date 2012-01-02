//= require jquery
//= require jquery_ujs
//= require jquery-ui





$(document).ready(function() {
		
$(function() {
		if ($('#jq').length > 0) {
				var post_id = $('#dleft').attr('data-id');
				$.getScript("/posts/jqup.js?id=" + post_id );
				setTimeout(updateComments, 3000);
			}		
		})	
				
		function updateComments () {
			var waiting = 'true'	
			waiting = $('#dleft2').attr('data-waiting');
			var post_id = $('#dleft').attr('data-id');
			var my_waiting=waiting.slice(0,2);
		
			if (my_waiting == 'tr') {
			   
				 $.getScript("/posts/jqup.js?id=" + post_id );
				$('#dwaiting').show(); 
				 $('#dnotwaiting').hide(); }
				else	{			
				 $('#dnotwaiting').show(); 
				 $('#dwaiting').hide(); }				 
			setTimeout(updateComments, 3000);
		}
		
$(function() {	 
		if ($('#jqadmin').length > 0) {				      
		setTimeout(updateWaitingList,10000);
		}
})
		function updateWaitingList () { 
			$.getScript("/posts/jquw.js");	
				setTimeout(updateWaitingList,10000);		
		}
		
		
$(function() {	 
		if ($('#rakishathome').length > 0) {				      
		setTimeout(reload_for_dreamhost,600000);
		}
})
		function reload_for_dreamhost () { 
			$.getScript("/posts/jquw.js");	
				setTimeout(reload_for_dreamhost,600000);		
		}	



});