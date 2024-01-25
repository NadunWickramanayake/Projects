# Create variables
i = 0
count = 0
checker = 0
check_counter = 0
x = 0
y = 0
winner = ""
dict1 = {1: ' ', 2: ' ', 3: ' ', 4: ' ', 5: ' ', 6: ' ', 7: ' ', 8: ' ', 9: ' '}


# The main menu of the game
def displaymenu():
    "This will display the menu"
    print("=======Menu=======")
    print("1.Game instructions")
    print("2.Start the game")
    print("3.Play again")
    print("4.Full game history")
    print("5.Total game plays")
    print("6.Total wins by player 1")
    print("7.Total wins by player 2")
    print("8.Total draws")
    print("9.Quit")

    option = int(input("Enter your choice ->"))
    return option

#The main game instructions that user have to follow when playing this game.
def instructions():
    "This will show the gaming instructions"
    print("1.You can enter location by numbers.")
    print("2.Don't enter same location again.")
    return


# Normal board structure.
def stucture_of_the_Board():
    "The stucture of the board"
    print(" " + "|" + " " + "|" + " ")
    print("_ _ _ ")
    print(" " + "|" + " " + "|" + " ")
    print("_ _ _ ")
    print(" " + "|" + " " + "|" + " ")
    return

# This will print the actual board 
def printboard():
    "This will print the board"
    
    # Print board
    print(dict1[1] + "|" + dict1[2] + "|" + dict1[3])
    print("_ _ _")
    print(dict1[4] + "|" + dict1[5] + "|" + dict1[6])
    print("_ _ _")
    print(dict1[7] + "|" + dict1[8] + "|" + dict1[9])
    return


#Getting user inputs and the main statements to dicide who is the winner of the game. Also this will print the board of the game.
def maninbody():
    "The main statements"
    global x
    global y
    global count
    global i
    while i != 5:
        player_1_choice = int(input("Player 1 input your choice ->"))
        i += 1

        dict1[player_1_choice] = ("X")
        printboard()
        
        #This will check the diagonally winner

        if dict1[1] == dict1[5] == dict1[9] == "X":
            print("The winner is player 1 ")
            x = 2

        elif dict1[1] == dict1[5] == dict1[9] == "O":
            print("The winner is player 2 ")
            y = 2
        elif dict1[3] == dict1[5] == dict1[7] == "X":
            print("The winner is player 1 ")
            x = 2

        elif dict1[3] == dict1[5] == dict1[7] == "O":
            print("The winner is player 2 ")
            y = 2


        # This will check the horizontally winner
        # The winner is player1
        elif dict1[1] == dict1[2] == dict1[3] == "X":
            print("The winner is player 1 ")
            x = 2


        elif dict1[4] == dict1[5] == dict1[6] == "X":
            print("The winner is player 1 ")
            x = 2


        elif dict1[7] == dict1[8] == dict1[9] == "X":
            print("The winner is player 1 ")
            x = 2


        # The winner is player2
        elif dict1[1] == dict1[2] == dict1[3] == "O":
            print("The winner is player 2 ")
            y = 2


        elif dict1[4] == dict1[5] == dict1[6] == "O":
            print("The winner is player 2 ")
            y = 2


        elif dict1[7] == dict1[8] == dict1[9] == "O":
            print("The winner is player 2 ")
            y = 2


        # This will check the vertically winner
        # The winner is player1
        elif dict1[1] == dict1[4] == dict1[7] == "X":
            print("The winner is player 1 ")
            x = 2


        elif dict1[2] == dict1[5] == dict1[8] == "X":
            print("The winner is player 1 ")
            x = 2


        elif dict1[3] == dict1[6] == dict1[9] == "X":
            print("The winner is player 1 ")
            x = 2


        # The winner is player2
        elif dict1[1] == dict1[4] == dict1[7] == "O":
            print("The winner is player 2 ")
            y = 2


        elif dict1[2] == dict1[5] == dict1[8] == "O":
            print("The winner is player 2 ")
            y = 2


        elif dict1[3] == dict1[6] == dict1[9] == "O":
            print("The winner is player 2 ")
            y = 2

        if (x == 2) or (y == 2):
            break
        elif count < 4:
            player_2_choice = int(input("Player 2 input your choice ->"))

            dict1[player_2_choice] = ("O")
            printboard()
            count = count + 1
            # This will check the diagonally winner
            if dict1[1] == dict1[5] == dict1[9] == "X":
                print("The winner is player 1 ")
                x = 2

            elif dict1[1] == dict1[5] == dict1[9] == "O":
                print("The winner is player 2 ")
                y = 2
            elif dict1[3] == dict1[5] == dict1[7] == "X":
                print("The winner is player 1 ")
                x = 2

            elif dict1[3] == dict1[5] == dict1[7] == "O":
                print("The winner is player 2 ")
                y = 2


            # This will check the horizontally winner
            # The winner is player1
            elif dict1[1] == dict1[2] == dict1[3] == "X":
                print("The winner is player 1 ")
                x = 2


            elif dict1[4] == dict1[5] == dict1[6] == "X":
                print("The winner is player 1 ")
                x = 2


            elif dict1[7] == dict1[8] == dict1[9] == "X":
                print("The winner is player 1 ")
                x = 2


            # The winner is player2
            elif dict1[1] == dict1[2] == dict1[3] == "O":
                print("The winner is player 2 ")
                y = 2


            elif dict1[4] == dict1[5] == dict1[6] == "O":
                print("The winner is player 2 ")
                y = 2


            elif dict1[7] == dict1[8] == dict1[9] == "O":
                print("The winner is player 2 ")
                y = 2


            # This will check the vertically winner
            # The winner is player1
            elif dict1[1] == dict1[4] == dict1[7] == "X":
                print("The winner is player 1 ")
                x = 2


            elif dict1[2] == dict1[5] == dict1[8] == "X":
                print("The winner is player 1 ")
                x = 2


            elif dict1[3] == dict1[6] == dict1[9] == "X":
                print("The winner is player 1 ")
                x = 2


            # The winner is player2
            elif dict1[1] == dict1[4] == dict1[7] == "O":
                print("The winner is player 2 ")
                y = 2


            elif dict1[2] == dict1[5] == dict1[8] == "O":
                print("The winner is player 2 ")
                y = 2


            elif dict1[3] == dict1[6] == dict1[9] == "O":
                print("The winner is player 2 ")
                y = 2

            if (x == 2) or (y == 2):
                break
        else:
            print("The game is tie")
            return

def html_file():
    "This will print the game boards to the HTML file"
    
    fo = open("HTML.htm", "a+")
    if dict1[1]== ' ' :
        dict1[1] = "&nbsp; "
    if dict1[2]== " ":
        dict1[2] = "&nbsp; "
    if dict1[3]== ' ' :
        dict1[3] = "&nbsp; "
    if dict1[4]==' ' :
        dict1[4] = "&nbsp; "
    if dict1[5]== ' ':
        dict1[5] = "&nbsp; "
    if dict1[6]==  ' ':
        dict1[6] = "&nbsp; "
    if dict1[7]==  ' ':
        dict1[7] = "&nbsp; "
    if dict1[8]== ' ' :
        dict1[8] = "&nbsp; "
    if dict1[9]== ' ' :
        dict1[9] = "&nbsp; "
    
    
    
    fo.writelines(["<html>","\n","<br />\n"])
    fo.writelines([dict1[1] + "|" + dict1[2] + "|" + dict1[3]])
    fo.writelines(["\n","<br />\n"])
    fo.writelines("_ _ _")
    fo.writelines(["\n","<br />\n"])
    fo.writelines([dict1[4] + "|" + dict1[5] + "|" + dict1[6]])
    fo.writelines(["\n","<br />\n"])
    fo.writelines("_ _ _")
    fo.writelines(["\n","<br />\n"])
    fo.writelines([dict1[7] + "|" + dict1[8] + "|" + dict1[9]])
    fo.writelines(["\n","<br />\n","</html>"])
    

    if x == 2:
        fo.writelines('The winner is player1')
        fo.writelines(["\n","<br />\n"])
    if y == 2:
        fo.writelines('The winner is player2')
        fo.writelines(["\n","<br />\n"])
    if x != 2 and y != 2:
        fo.writelines('The game is tie')
        fo.writelines(["\n","<br />\n"])
        return
    
def create_tables():
    import mysql.connector
    conDict = {'host': 'localhost',
               'database': 'Game',
               'user': 'root',
               'password': ''}
    db = mysql.connector.connect(**conDict)
    cursor = db.cursor()

    cursor.execute('''CREATE TABLE Game(
        player1_wins CHAR(20) ,
        player2_wins CHAR(20),
        defeated_player1 CHAR(20),
        defeated_player2 CHAR(20),
        tieGames CHAR(20)
    )''')
    db.close()
    return ()


def insert_values1():
    "This will insert values to the database"
    import mysql.connector

    # open database connection with a dictionery
    conDict = {'host': 'localhost',
               'database': 'Game',
               'user': 'root',
               'password': ''}

    db = mysql.connector.connect(**conDict)

    # prepare a cursor object using cursor() method
    cursor = db.cursor()

    # execute sql query using execute()method
    mySQLText = "INSERT INTO game_history  (player1_wins,player2_wins,defeated_player1,defeated_player2,tieGames) VALUES (%s,%s,%s,%s,%s)"
    myValues = ("The winner is player1", "NULL", "NULL", "The looser is player2", "NULL")
    cursor.execute(mySQLText, myValues)

    # Commit the change
    db.commit()

    # disconnect from server
    db.close()
    return ()

def insert_values2():
    "This will insert values to the database"
    import mysql.connector

    # open database connection with a dictionary
    conDict = {'host': 'localhost',
               'database': 'Game',
               'user': 'root',
               'password': ''}

    db = mysql.connector.connect(**conDict)

    # prepare a cursor object using cursor() method
    cursor = db.cursor()

    # execute sql query using execute()method
    mySQLText = "INSERT INTO game_history (player1_wins,player2_wins,defeated_player1,defeated_player2,tieGames) VALUES (%s,%s,%s,%s,%s)"
    myValues = ("NULL", "The winner is player2", "The looser is player1", "NULL", "NULL")
    cursor.execute(mySQLText, myValues)

    # Commit the change
    db.commit()

    # disconnect from server
    db.close()
    return ()


def insert_values3():
    "This will insert values to the database"
    import mysql.connector

    # open database connection with a dictionery
    conDict = {'host': 'localhost',
               'database': 'Game',
               'user': 'root',
               'password': ''}

    db = mysql.connector.connect(**conDict)

    # prepare a cursor object using cursor() method
    cursor = db.cursor()

    # execute sql query using execute()method
    mySQLText = "INSERT INTO game_history (player1_wins,player2_wins,defeated_player1,defeated_player2,tieGames) VALUES (%s,%s,%s,%s,%s)"
    myValues = ("NULL", "NULL", "NULL", "NULL", "The game is tie")
    cursor.execute(mySQLText, myValues)

    # Commit the change
    db.commit()

    # disconnect from server
    db.close()
    return ()


def display_history():
    "This will display the history of the game"
    import mysql.connector
    # open database connection with a dictionery
    conDict = {'host': 'localhost',
               'database': 'Game',
               'user': 'root',
               'password': ''}
    
    db = mysql.connector.connect(**conDict)
    
    # prepare a cursor object using cursor() method
    cursor = db.cursor()
    
    # execute sql query using execute()method
    cursor.execute("SELECT* FROM game_history")

    data = cursor.fetchall()
    #This will give the game no (What is this game no ) and full history
    for row, item in enumerate(data):
        row += 1
        print("In Game" + " " + str(row) + ")""->", item)
    return


def total_game_plays():
    "This will display the total number of games played by the user"
    import mysql.connector
    
    # open database connection with a dictionery
    conDict = {'host': 'localhost',
               'database': 'Game',
               'user': 'root',
               'password': ''}
    db = mysql.connector.connect(**conDict)
    
    # prepare a cursor object using cursor() method
    cursor = db.cursor()
    
    # execute sql query using execute()method
    cursor.execute("SELECT* FROM game_history")

    data = cursor.fetchall()

    #This will give the total of the games that user played
    for row, item in enumerate(data):
        row += 1
    print("Total game plays" + "-> " + str(row))
    return


def total_wins_by_player1():
    "This will show the player1 wins"
    import mysql.connector
    
    # open database connection with a dictionery
    conDict = {'host': 'localhost',
               'database': 'Game',
               'user': 'root',
               'password': ''}
    db = mysql.connector.connect(**conDict)
    
    # prepare a cursor object using cursor() method
    cursor = db.cursor()
    
    # execute sql query using execute()method
    cursor.execute("SELECT player1_wins FROM game_history")

    data = cursor.fetchall()
    #This will give the game no (What is this game no ) and player1 wins history
    for row, item in enumerate(data):
        row += 1
        print("In Game" + " " + str(row) + ")""->", item)
    return


def total_wins_by_player2():
    "This will show the player2 wins"
    import mysql.connector
    
    # open database connection with a dictionery
    conDict = {'host': 'localhost',
               'database': 'Game',
               'user': 'root',
               'password': ''}
    db = mysql.connector.connect(**conDict)
    
    # prepare a cursor object using cursor() method
    cursor = db.cursor()
    
    # execute sql query using execute()method
    cursor.execute("SELECT player2_wins FROM game_history ")

    data = cursor.fetchall()
    
    #This will give the game no (What is this game no ) and player2 wins history
    for row, item in enumerate(data):
        row += 1
        print("In Game" + " " + str(row) + ")""->", item)
    return


def total_draws():
    "This will show all the tie games"
    
    import mysql.connector
    
    # open database connection with a dictionery
    conDict = {'host': 'localhost',
               'database': 'Game',
               'user': 'root',
               'password': ''}
    db = mysql.connector.connect(**conDict)
    
    # prepare a cursor object using cursor() method
    cursor = db.cursor()
    
    # execute sql query using execute()method
    cursor.execute("SELECT tieGames FROM game_history")

    data = cursor.fetchall()
     #This will give the game no (What is this game no ) and tie games history
    for row, item in enumerate(data):
        row += 1
        print("In Game" + " " + str(row) + ")""->", item)
    return


while True:
    #This will show the details that related to the menu
    option = displaymenu()

    if option == 9:
        break
    
    elif option == 1:
        instructions()
        
    elif option == 2:
        stucture_of_the_Board()
        maninbody()
        if x == 2:
            insert_values1()
        if y == 2:
            insert_values2()
        if x != 2 and y != 2:
            insert_values3()
        html_file()
        
    elif option == 3:
        stucture_of_the_Board()
        for key in dict1:
            dict1[key] = " "
        x = 0
        y = 0
        i = 0
        count = 0
        maninbody()
        html_file()
        
        if x == 2:
            insert_values1()
        if y == 2:
            insert_values2()
        if x != 2 and y != 2:
            insert_values3()
            
    elif option == 4:
        display_history()
        
    elif option == 5:
        total_game_plays()

    elif option == 6:
        total_wins_by_player1()
        
    elif option == 7:
        total_wins_by_player2()
        
    elif option == 8:
        total_draws()

