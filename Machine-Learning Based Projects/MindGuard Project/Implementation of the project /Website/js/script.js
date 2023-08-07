// Import the functions you need from the SDKs you need
import { initializeApp } from "https://www.gstatic.com/firebasejs/9.19.1/firebase-app.js";
// TODO: Add SDKs for Firebase products that you want to use
// https://firebase.google.com/docs/web/setup#available-libraries

// Your web app's Firebase configuration
const firebaseConfig = {
    apiKey: "AIzaSyC6isQqpBvzVlFXlORkdtDN91DfrSssk_4",
    authDomain: "mindguard-login-e95f5.firebaseapp.com",
    databaseURL: "https://mindguard-login-e95f5-default-rtdb.firebaseio.com",
    projectId: "mindguard-login-e95f5",
    storageBucket: "mindguard-login-e95f5.appspot.com",
    messagingSenderId: "945544319017",
    appId: "1:945544319017:web:4996369233148bb2a98c38"
};

// Initialize Firebase
const app = initializeApp(firebaseConfig);

//Set up our register function
function register(){

    //Get all our input fields
    let email = document.getElementById('email').value;
    let password = document.getElementById('password').value;
    let full_name = document.getElementById('full_name').value;
    let Gender = document.getElementById('Gender').value;
    let Age_Category = document.getElementById('Age_Category').value;

    //Validate input fields
    if(validate_email(email)==false || validate_password(password)==false){
        alert('Email or Password is Outta Line !!');
        //Don't continue running the code 
        return;
    }
    if(validate_field(full_name)==false || validate_field(full_name)==false || validate_field(full_name)==false || validate_field(Gender)==false || validate_field(Age_Category)==false){
        alert('One or More Extra Fields is Outta Line !!');
        return;
    }

    //Move on with Auth
    //TODO: add Firebase auth code here
}


//Move on with Auth
auth.createUserWithEmailAndPassword(email,password)
.then(function() {

    //Declare user variable
    var user =auth.currentUser

    //Add this user to Firebase Database
    var database_ref = database.ref()
    
    //Create User data
    var user_data = {

        email : email,
        full_name : full_name,
        Gender : Gender,
        Age_Category : Age_Category,
        last_login : Date.now()
    }

    database_ref.child('users/' + user.uid).set(user_data)
    alert('User Created !!')

})
    

.catch(function(error){

    //Firebase will use this to alert of its errors
    var error_code = error.code 
    var error_message = error.message 

    alert(error_message)

})

function validate_email(email){

    expression = /^[^@]+@\w+(\.\w+)+\w$/
    if(expression.test(email)==true){

        //Email is valid
        return true

    }else {

        //Email is not valid
        return false
    }


}

function validate_password(password){

    //Firebase only accepts lengths greater than 6

    if(password<6){

        return false
    }else {

        return true
    }
}

function validate_field(field){

    if(field == null){

        return false
    }

    if(field.length <= 0 ) {

        return false
    }else {

        return true
    }
}
