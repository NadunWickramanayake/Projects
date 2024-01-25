import nltk
import pickle

# Load the sentiment analysis model
with open('depression-analysis.ipynb', 'rb') as file:
    sentiment_model = pickle.load(file)


# Define the depression screening function
def depression_bot(questions, responses, name):

    # Use the sentiment analysis model to classify responses
    sentiment_scores = [sentiment_model.predict([response])[0] for response in responses]

    # Calculate total score and assign depression level
    total_score = sum(sentiment_scores)

    if total_score <= 1:
        depression_level = "mild"
        interpretation = "Your responses suggest that you may be experiencing mild symptoms of depression. It's important to take care of yourself and seek help if your symptoms worsen."
    elif total_score <= 3:
        depression_level = "moderate"
        interpretation = "Your responses suggest that you may be experiencing moderate symptoms of depression. It's important to seek help from a mental health professional to manage your symptoms."
    else:
        depression_level = "severe"
        interpretation = "Your responses suggest that you may be experiencing severe symptoms of depression. It's crucial that you seek help from a mental health professional as soon as possible. In case of an emergency, please call 911 or your local emergency number."

    # Generate report
    report = f"Depression Screening Report for {name}:\n\n"
    report_result = []
    for i, question in enumerate(questions):
        score = sentiment_scores[i]
        report += f"{question}\nResponse: {responses[i]}\nSentiment Score: {score}\n\n"
        
        res = f"{question} - Response: {responses[i]} - Sentiment Score: {score}"
        report_result.append(res)
    report += f"Total Sentiment Score: {total_score}\n"
    report += f"Depression Level: {depression_level}\n"
    report += f"Interpretation: {interpretation}\n"

    report_result.append(f"Total Sentiment Score: {total_score}")
    report_result.append(f"Depression Level: {depression_level}")
    report_result.append(f"Interpretation: {interpretation}")

    bot_response = ""
    # Prompt emergency numbers if depression is severe
    if depression_level == "severe":
        bot_response = "URGENT: Please call emergency services (911 or your local emergency number) for immediate help."

    return bot_response, report_result, report
