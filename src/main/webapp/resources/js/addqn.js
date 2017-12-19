var contextRoot = "/" + window.location.pathname.split( '/' )[1];
function addQuestion(){
	
	
	var dataToSend = JSON.stringify(serializeObject($('#qnForm')));
	
	$.ajax({
		type: 'POST',
		url: contextRoot + '/addQuestion',
		dataType: "json",           // Accept header
 		data:dataToSend,
 		contentType: 'application/json',   // Sends - Content-type
		success: function(question) {
			$('#questions').html("");
			$("#question").append( '<H3 align="center"> New Question <H3>');                
			$('#question').append("<H4 align='center'>First Name:  " +question.text  + "</h4>"  );			
			$("#question").append('<h4 align="center"> <a href="#" onclick="toggle_visibility(\'question\');resetForm(\'qnForm\');"><b>EXIT</b> </a> </h4>');
			make_visible('questions');
			make_hidden('errors');
		},

		error: function(errorObject){	
			if (errorObject.responseJSON.errorType == "ValidationError") {
				$('#errors').html("");
				$("#errors").append( '<H3 align="center"> Errors found <H3>');             
				
  			    var errorList = errorObject.responseJSON.errors;
 	 	        $.each(errorList,  function(i,error) {			   
 		    		$("#errors").append( error.message + '<br>');
		    	});
 	 	   
 	 	        $("#errors").append('<h4 align="center"> <a href="#" onclick="toggle_visibility(\'errors\');resetForm(\'employeeForm\');"><b>EXIT</b> </a> </h4>');
 	 	        make_visible('errors');
				make_hidden('questions');
			}
			else {
				alert(errorObject.responseJSON.errors(0));   // "non" Validation Error
				}			
		}
	
	});
}

toggle_visibility = function(id) {
    var element = document.getElementById(id);
    if(element.style.display == 'block')
    	element.style.display = 'none';
    else
    	element.style.display = 'block';
 }	

make_hidden = function(id) {
    var element = document.getElementById(id);
    element.style.display = 'none';
        }	   

make_visible = function(id) {
    var element = document.getElementById(id);
    element.style.display = 'block';
 }	   

resetForm = function(id) {
    var element = document.getElementById(id);
    $(element)[0].reset();

    }	  

// Translate form to array
// Then put in JSON format
 function serializeObject (form)
{
    var jsonObject = {};
    var array = form.serializeArray();
    $.each(array, function() {
         	jsonObject[this.name] = this.value;
    });
    return jsonObject;

};

