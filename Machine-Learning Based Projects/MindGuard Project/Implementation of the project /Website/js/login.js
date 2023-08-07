// Initialize Firebase

const firebaseConfig = {

    apiKey: "AIzaSyDe97SkU0siu_fgu35xFwQVgmJs1Tax1uo",

    authDomain: "mindguard-auth.firebaseapp.com",

    projectId: "mindguard-auth",

    storageBucket: "mindguard-auth.appspot.com",

    messagingSenderId: "599469731953",

    appId: "1:599469731953:web:4bea3a4f23c03f5cb82bd0",

    measurementId: "G-GD95DXCQNC"

  };

  firebase.initializeApp(firebaseConfig);
  
  // Login function
  function login() {
    var email = document.getElementById("email").value;
    var password = document.getElementById("password").value;
  
    firebase.auth().signInWithEmailAndPassword(email, password)
    .then((userCredential) => {
      // Signed in
      var user = userCredential.user;
      window.location.href = "screening.html";
    })
    .catch((error) => {
      var errorCode = error.code;
      var errorMessage = error.message;
      alert(errorMessage);
    });
  }
  
  // Sign up function
  function signup() {
    var email = document.getElementById("email").value;
    var password = document.getElementById("password").value;
  
    firebase.auth().createUserWithEmailAndPassword(email, password)
    .then((userCredential) => {
      // Signed up
      var user = userCredential.user;
      window.location.href = "screening.html";
    })
    .catch((error) => {
      var errorCode = error.code;
      var errorMessage = error.message;
      alert(errorMessage);
    });
  }
    