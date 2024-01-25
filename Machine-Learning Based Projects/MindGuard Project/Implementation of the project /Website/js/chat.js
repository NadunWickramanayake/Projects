const botMessages = [
    "Hello! I'm the Depression Score Prediction Chatbot. How are you feeling today?",
    "How often have you been bothered by any of the following problems in the past two weeks? Little interest or pleasure in doing things.",
    "How often have you been bothered by any of the following problems in the past two weeks? Feeling down, depressed, or hopeless.",
    "How often have you been bothered by any of the following problems in the past two weeks? Trouble falling or staying asleep, or sleeping too much.",
    "How often have you been bothered by any of the following problems in the past two weeks? Feeling tired or having little energy.",
    "How often have you been bothered by any of the following problems in the past two weeks? Poor appetite or overeating.",
    "How often have you been bothered by any of the following problems in the past two weeks? Feeling bad about yourself, or that you are a failure, or have let yourself or your family down.",
    "How often have you been bothered by any of the following problems in the past two weeks? Trouble concentrating on things, such as reading the newspaper or watching television.",
    "How often have you been bothered by any of the following problems in the past two weeks? Moving or speaking so slowly that other people could have noticed? Or the opposite - being so fidgety or restless that you have been moving around a lot more than usual.",
    "Thank you for answering these questions. Your depression score is [INSERT SCORE HERE]. Please seek help if you are experiencing symptoms of depression.",
    ];
    
    const chatbot = document.querySelector(".chatbot");
    const chatbotMessages = document.querySelector(".chatbot-messages");
    const userInput = document.getElementById("user-input");
    const sendButton = document.getElementById("send-button");
    
    let index = 0;
    
    sendButton.addEventListener("click", () => {
    const userMessage = userInput.value.trim();
    if (userMessage !== "") {
    const userMessageDiv = document.createElement("div");
    userMessageDiv.className = "chatbot-message user-message";
    userMessageDiv.innerText = userMessage;
    chatbotMessages.appendChild(userMessageDiv);
    userInput.value = "";
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
    const botMessage = botMessages[index];
    const botMessageDiv = document.createElement("div");
    botMessageDiv.className = "chatbot-message bot-message";
    botMessageDiv.innerText = botMessage;
    chatbotMessages.appendChild(botMessageDiv);
    chatbotMessages.scrollTop = chatbotMessages.scrollHeight;
    }