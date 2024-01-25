
#Create variables

radius=0

height=0

slant_height=0

letter=0

surface_area_of_a_cone = 0

base_area_of_a_cone = 0

volume_of_a_cone = 0

# Get user inputs

radius=float(input("Input radius of the cone:"))

height=float(input("Input height of the cone:"))

slant_height = float(input("Input slant height of the cone:"))

letter = input("Type the letter you want out of these four 's'= Surface area of the cone ,'b' = Base area of the cone ,'v' = Volume of the cone , 'a' = Surface area , Base area and Volume of the cone:")

#Process

surface_area_of_a_cone= 3.14*radius*radius+3.14*radius*slant_height

base_area_of_a_cone =  3.14*radius*radius

volume_of_a_cone = 1/3*3.14*radius*radius*height


#Outputs

if letter == "a":
    print("Surface area of the cone is = ",surface_area_of_a_cone,"Volume of the cone is = ",volume_of_a_cone,"Base area of the cone is = ",base_area_of_a_cone)
    
elif letter == "s":
    print("Surface area of the cone is = ",surface_area_of_a_cone)

elif letter == "b":
    print("Base area of the cone is = ",base_area_of_a_cone)
    
elif letter == "v":
    print("Volume of the cone is = ",volume_of_a_cone)
    
else:
    print("Please enter a valid letter")

    

    
    
             

        
             
                
        
    
       
        
             
                 
                  

             
       
        
    
    
    
        





