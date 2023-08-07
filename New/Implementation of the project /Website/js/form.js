
  // Your web app's Firebase configuration
  var firebaseConfig = {
    apiKey: "AIzaSyC6isQqpBvzVlFXlORkdtDN91DfrSssk_4",
    authDomain: "mindguard-login-e95f5.firebaseapp.com",
    databaseURL: "https://mindguard-login-e95f5-default-rtdb.firebaseio.com",
    projectId: "mindguard-login-e95f5",
    storageBucket: "mindguard-login-e95f5.appspot.com",
    messagingSenderId: "945544319017",
    appId: "1:945544319017:web:1cc0f3bce59e38eba98c38"
  };

  // Initialize Firebase
  firebase.initializeApp(firebaseConfig);
  
  const auth = firebase.auth();
	
  function signUp(){
		
		var email = document.getElementById("email");
		var password = document.getElementById("password");
		
		const promise =auth.createUserWithEmailAndPassword(email.value,password.value);
		promise
    .then((data) => (window.location.href = "../html/form2.html"))
    .catch(e => alert(e.message));
		
		alert("Signed Up");
		
	}
  function signIn(){
		
		var email = document.getElementById("email");
		var password = document.getElementById("password");
		
		const promise =auth.signInWithEmailAndPassword(email.value,password.value);
		promise
    .then((data) => (window.location.href = "../html/screening.html"))
    .catch(e => alert(e.message));
		
		alert("Signed In" + email);
		//Take user to a different page
		
	}	
  function signOut(){
		
		auth.signOut();
		alert("Signed Out");
    window.location.href = "../html/index.html";

	}	
  
  auth.onAuthStateChanged(function(user){

    if(user){

       var email =user.email;
       alert("Active User" + email);

       //is signed in
    }else{

        alert("No Active User")
       //no user is signed in

	}

  });	
	
	
		
  
  
