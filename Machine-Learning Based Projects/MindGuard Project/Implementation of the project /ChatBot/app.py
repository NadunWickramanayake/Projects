from flask import Flask, render_template, request, jsonify
import nltk
from nltk.sentiment.vader import SentimentIntensityAnalyzer
import requests

app = Flask(__name__)

@app.route("/")
def home():
    return render_template("index.html")

@app.route("/process", methods=["POST"])
def process():
    if request.method == "POST":
        sid = SentimentIntensityAnalyzer()
        responses = []

        # Retrieve user responses and calculate sentiment scores
        q1 = request.form["q1"]
        q1_score = sid.polarity_scores(q1)["compound"]
        responses.append((q1, q1_score))

        q2 = request.form["q2"]
        q2_score = sid.polarity_scores(q2)["compound"]
        responses.append((q2, q2_score))

        q3 = request.form["q3"]
        q3_score = sid.polarity_scores(q3)["compound"]
        responses.append((q3, q3_score))

        q4 = request.form["q4"]
        q4_score = sid.polarity_scores(q4)["compound"]
        responses.append((q4, q4_score))

        q5 = request.form["q5"]
        q5_score = sid.polarity_scores(q5)["compound"]
        responses.append((q5, q5_score))

        q6 = request.form["q6"]
        q6_score = sid.polarity_scores(q6)["compound"]
        responses.append((q6, q6_score))

        q7 = request.form["q7"]
        q7_score = sid.polarity_scores(q7)["compound"]
        responses.append((q7, q7_score))

        q8 = request.form["q8"]
        q8_score = sid.polarity_scores(q8)["compound"]
        responses.append((q8, q8_score))

        total_score = sum([r[1] for r in responses])
        level = ""
        interpretation = ""

        # Determine depression level and interpretation based on total sentiment score
        if total_score < -3.0:
            level = "severe"
            interpretation = "Your responses suggest that you may be experiencing severe symptoms of depression. It is important that you seek help immediately. Please call emergency services or go to your nearest hospital."
            # Prompt emergency services phone number
            emergency_number = "911"
            message = "If you are experiencing suicidal thoughts or have thoughts of harming yourself, please call " + emergency_number + " immediately."
            requests.post("https://api.twilio.com/2010-04-01/Accounts/{twilio_account_sid}/Messages.json",
                          auth=("TWILIO_ACCOUNT_SID", "TWILIO_AUTH_TOKEN"),
                          data={"From": "+1234567890", "To": "+1234567890", "Body": message})

        elif total_score < -1.0:
            level = "moderate"
            interpretation = "Your responses suggest that you may be experiencing moderate symptoms of depression. It is important that you seek help from a mental health professional to manage your symptoms."

        else:
            level = "mild"
            interpretation = "Your responses suggest that you may be experiencing mild symptoms of depression. Consider seeking help from a mental health professional to address your symptoms."

        # Create a report based on user responses and sentiment scores
        report = {
            "responses": responses,
            "total_score": total_score,
            "level": level,
            "interpretation": interpretation
        }

        return jsonify(report)

if __name__ == "__main__":
    app.run(debug=True)

