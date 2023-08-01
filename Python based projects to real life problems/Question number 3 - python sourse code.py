#create variables
weight=0
height=0
BMI=0

#get user inputs
weight=float(input("Please input your weight in kilograms:"))
height=float(input("Please input your height in meters:"))

#process to calculate the BMI value
BMI=weight/(height*height)

#outputs
print("BMI =",BMI)
if BMI<18.5:
    print("Your body mass index 'BMI' is underweight")
elif 18.5<=BMI<=24.9:
    print("Your body mass index 'BMI' is normal")
elif 25<=BMI<29.9:
    print("Your body mass index 'BMI' is overweight")
else:
    BMI>=30
    print("Your body mass index 'BMI' is obese")
