import os
from flask import Flask, jsonify, request

import prediction

app = Flask(__name__)
app.env = "development"

app.secret_key = "ChatBotApp"

APP_ROOT = os.path.dirname(os.path.abspath(__file__))

global msg
global questions

msg = [
        "Hi! I'm a depression screening chat bot. Let's get started.",
        "Nice to meet you! I'm here to help you determine your depression level.",
        "Please answer the following questions with a sentence or two:",
    ]

# Ask questions to screen for depression levels
questions = [
    "1. How are you feeling today?",
    "2. Have you been experiencing any changes in your appetite?",
    "3. Are you finding it hard to get out of bed in the morning?",
    "4. Have you been feeling isolated or alone lately?",
    "5. Have you lost interest in activities that you used to enjoy?",
    "6. Have you been having any trouble sleeping?",
    "7. Have you been feeling hopeless or like things will never get better?",
    "8. Have you been having any thoughts of self-harm or suicide?"
]


# Route for chat
@app.route('/api/chat', methods=['GET', 'POST'])
def chat():

    if request.method == "POST":

        req = request.json
        responses = req['responses']

        if len(responses) != len(questions):
            return jsonify({'status': "error", 'msg': "Question count and answers count not matched!"})
        
        else:
            bot_response = ""
            report_result = []
            report = ""

            bot_response, report_result, report = prediction.depression_bot(questions=questions, responses=responses, name="Patient")
            
            return jsonify({'status': "success", 'result_status': bot_response, "result": report_result})

    return jsonify({'status': "error", 'msg': "Something went wrong!"})


# Route for initial bot msg
@app.route('/api/initial', methods=['GET', 'POST'])
def initial():

    return jsonify({'msg': msg, "questions": questions})


# Main
if __name__ == '__main__':
    localhost = "0.0.0.0"
    port = "5000"
    app.run(host=localhost, port=port, debug=True)