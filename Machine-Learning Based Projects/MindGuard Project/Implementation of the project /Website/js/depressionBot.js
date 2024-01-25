let _name = "";

const say = [
    "Hello! I'm the Depression I'm Excalibur. So what's your name ?",
    "Nice to meet you buddy! how are you feeling today ?", //Problem solved :)
    "Great ,So how do you feel when you meet new people ?",
    "What do you oftenly think about and can you tell me about that ?",
    "How are you acting when you see one of your favourite food ? ",
    "How do you think about your parents and friends ?",
    "How do you think about your job or your education ?",
    "What do you feel about your whole life ?",
    "Now we are going to generate a score for the answered questions ,and If you need the score as a report you can click on the button at right side !",
];
    
const chatbot = document.querySelector(".chatbot");
const chatbotMessages = document.querySelector(".chatbot-messages");
const userInput = document.getElementById("user-input");
const sendButton = document.getElementById("send-button");

let count = 0;
let index = 0;
let responses = "";

sendButton.addEventListener("click", () => {
    const userMessage = userInput.value.trim();
    if (userMessage !== "") {
        const userMessageDiv = document.createElement("div");
        userMessageDiv.className = "chatbot-message user-message";
        userMessageDiv.innerText = userMessage;
        chatbotMessages.appendChild(userMessageDiv);
        userInput.value = "";

        if (index != 0) {
            if (index === 1) {
                _name = userMessage;
                console.log(_name)
            }
            if (responses === "") {
                responses = userMessage;
            } else {
                responses = responses + ", " + userMessage;
            }
        }

        if (index === 0) {
            setTimeout(() => {
                addBotMessage(index);
                index++;
        }, 1000);
    } else {
        addBotMessage(index);
        index++;
    }
    }
});

function addBotMessage(index) {
    const botMessage = say[index];
    const botMessageDiv = document.createElement("div");
    botMessageDiv.className = "chatbot-message bot-message";
    botMessageDiv.innerText = botMessage;
    chatbotMessages.appendChild(botMessageDiv);
    chatbotMessages.scrollTop = chatbotMessages.scrollHeight;
    count++;

    if (count === 9) {
        APIPost();
    }
}

async function APIPost() {
    var myHeaders = new Headers();
    myHeaders.append("Content-Type", "application/json");

    var raw = JSON.stringify({
        "name": _name,
        "responses": responses
    });

    var requestOptions = {
        method: 'POST',
        headers: myHeaders,
        body: raw,
        redirect: 'follow'
    };

    await fetch("http://127.0.0.1:5000/screen_for_depression", requestOptions)
    .then(response => response.json())
    .then(result => {
        const botMessageDiv = document.createElement("div");
        botMessageDiv.className = "chatbot-message bot-message";
        botMessageDiv.innerText = "Thank you for answering these questions. Your depression score is: " + 
        result['Total Sentiment Score'] + 
        ". Please seek help if you are experiencing symptoms of depression."
        chatbotMessages.appendChild(botMessageDiv);
        chatbotMessages.scrollTop = chatbotMessages.scrollHeight;
    })
    .catch(error => console.log('error', error));
}