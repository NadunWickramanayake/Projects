# I declare that my work contains no examples of misconduct, such as plagiarism, or collusion.
# Any code taken from other sources is referenced within my code solution.
# Student ID: w1870591 # Date: 7/12/2021

#Create variables
user_credits_at_pass = 0
user_credits_at_defer = 0
user_credits_at_fail = 0
credit = [0,20,40,60,80,100,120]
total = 0
count = 0
cheker = 1
input_changer = 0
staff_choice = ""
list1 = []
count1 = 0
count2 = 0
count3 = 0
count4 = 0

#-----------------------------------------------------------------------------#
def main_body():
    "This will handle the main body of the program"
    global user_credits_at_pass 
    global user_credits_at_defer
    global user_credits_at_fail 
    global credit 
    global total 
    global count 
    global cheker 
    global input_changer
    global list1
    global count1
    global count2 
    global count3 
    global count4 
    for i in range(3):
        
         
        if cheker == 1:
            
            #Exception handling part.
            try:
                #Getting user inputs
               user_credits_at_pass = int(input("Please enter your credits at pass:"))
            except ValueError:
                count = 1
                print("Integer required")
                break
            
        if cheker == 2:
            #Exception handling part.
            try:
                #Getting user inputs
               user_credits_at_defer = int(input("Please enter your credits at defer:"))
            except ValueError:
                count = 1
                print("Integer required")
                break
                
            
        if cheker == 3:
            #Exception handling part.
            try:
                #Getting user inputs
              user_credits_at_fail = int(input("Please enter your credits at fail:"))
            except ValueError:
                count = 1
                print("Integer required")
                break
            

        #To change inputs one by one
            
        if cheker == 1:
            input_changer = user_credits_at_pass
        if cheker == 2:
            input_changer = user_credits_at_defer
        if cheker == 3:
            input_changer = user_credits_at_fail

        
        #Exception handling part.
            
        try:
            if input_changer  not in credit:
                print("Out of range")
                count = 1
                break
    
        except ValueError:
            print("Integer required")
            count  = 1
            break
    
        #Get the total of the user credits
        
        total = user_credits_at_pass+ user_credits_at_defer + user_credits_at_fail
        cheker  += 1

    #Check total correct or wrong
        
    if  total != 120 and count != 1:
        print("Total incorrect")
        count = 1


    if count != 1:   
        if user_credits_at_fail >= 80:
            print("Exclude")
            list1.append("Excluded")
           
            
        elif user_credits_at_pass == 120:
            print("Progress")
            list1.append("Progress")
            
            
        elif user_credits_at_pass == 100:
            print("Progress (module trailer)")
            list1.append("Trailer")
           
            
        else:
            print("Do not progress – module retriever")
            list1.append("Retriever")
            
            
    
    for i in list1:
        if i == "Progress":
            count1 += 1
            
    for i in list1:
        if i == "Trailer":
            count2 += 1
    for i in list1:
        if i == "Retriever":
            count3 += 1
    for i in list1:
        if i == "Excluded":
            count4 += 1
        
        return
main_body()
#-----------------------------------------------------------------------------#
#Print Staff Version with Histogram 
print("Staff Version with Histogram")

while True:
    
    staff_choice = input('''Would you like to enter another set of data?
Enter 'y' for yes or 'q' to quit and view results: y
''')
    if staff_choice == "y":
        user_credits_at_pass = 0
        user_credits_at_defer = 0
        user_credits_at_fail = 0
        total = 0
        count = 0
        cheker = 1
        input_changer = 0
        staff_choice = ""
        list1 = []
       
        main_body()
    if staff_choice == "q":
        print("Progress",count1," ",":",count1*"*")
        print("Trailer",count2,"  ",":",count2*"*")
        print("Retriever",count3,"",":",count3*"*")
        print("Excluded",count4," ",":",count4*"*")
        print()
        print(count1+count2+count3+count4,"outcomes in total.")
       


   









    

    
    
    

