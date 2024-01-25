
		function validateForm() {
           var nameFilled = false;
           if (document.forms["feedbackForm"]["name"].value == "") {
             alert("Name is Required");
             return nameFilled;
             }else{
                 nameFilled = true;

             }
             if (document.forms["feedbackForm"]["email"].value == "") {
             alert("Email is Required!");
             return false;
             }
             if (document.forms["feedbackForm"]["password"].value == "") {
             alert("Password is Required!");
             return false;
             }

             var formValid = false;


             if(formValid == true && nameFilled == true){
                 alert("Loged In SucsessFull");
             }
             if (!formValid) alert("Loged In successful");
                 return formValid;

        }

