#create variables
medtest=0
tenrounds=0
#get inputs
medtest=input("Did you pass the medical test type 'pass or fail' :")
#process
if medtest == ("pass"):
#input
    tenrounds = input("Did you complete the ten rounds in the track type 'yes or no' :")
    if tenrounds == ("yes"):
#outputs
        print("Congratulations, you can participate in the final round")
    else:
        print("Sorry you are eliminated from the contest")
else:
    print("You are  not allowed to attempt ten rounds in the track")

            
        
        
    
    
    
