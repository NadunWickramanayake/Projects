import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.util.*;

public class Task2 {
    public static int totalAmount;
    public static void main(String args[]){
        cabin cabin1[]=new cabin[12];
        for(int k=0;k< cabin1.length;k++){
            cabin1[k]=new cabin();
        }



        System.out.println("Enter the following commend:");//given inputs
        System.out.println("A - Adds customer to cabin");
        System.out.println("V - view all cabins");
        System.out.println("E - Display Empty cabins");
        System.out.println("D - Delete customer from cabin");
        System.out.println("F - Find cabin from customer name");
        System.out.println("S - Store program data into file");
        System.out.println("L - Load program data from file");
        System.out.println("O - View passengers Ordered alphabetically by name");
        System.out.println("T-  Print the expenses per passenger");

        Scanner choice = new Scanner(System.in);
        System.out.println();
        System.out.println("Enter \"A\", \"V\", \"E\", \"D\", \"F\", \"S\", \"L\" ,\"O\" or \"T\" ");




        while(true){
            System.out.print("Enter a Input-");
            String displayMenu = choice.next();


            if ( displayMenu.equals("V")) {
                Passengerviwer(cabin1);

            } else if ( displayMenu.equals("A")) {
                cabin1 = passengerAdding(cabin1);

            } else if ( displayMenu.equals("E")) {
                passengerEmptyMethord(cabin1);

            } else if ( displayMenu.equals("D")) {
                cabin1=passengerDeleting(cabin1);

            }else if ( displayMenu.equals("F")) {
                PassengerFinding(cabin1);

            } else if ( displayMenu.equals("S")) {
                cabin1=passengerStore(cabin1);

            } else if ( displayMenu.equals("L")){
                cabin1=PasengerLoadDetails(cabin1);

            } else if ( displayMenu.equals("O")) {
                orderOfThePassenger(cabin1);

            }
            else if ( displayMenu.equals("T")) {
                expensesOFThePasenger(cabin1);

            }
            else {
                System.out.println("Invalid Input");

            }

        }
    }

    private static void expensesOFThePasenger(cabin[] cabin1) {

        for(int k=0;k< cabin1.length;k++){

            if(cabin1[k].arrayName[0]!="empty"){
                System.out.println("cabin "+k+" passenger "+1+" is "+cabin1[k].moneyArray[0]);
                totalAmount+=+cabin1[k].moneyArray[0];

            }
            if(cabin1[k].arrayName[1]!="empty"){
                System.out.println("cabin "+k+" passenger "+2+" is "+cabin1[k].moneyArray[1]);
                totalAmount+=+cabin1[k].moneyArray[1];
            }

            if(cabin1[k].arrayName[2]!="empty"){
                System.out.println("cabin "+k+" passenger "+3+" is "+cabin1[k].moneyArray[2]);
                totalAmount+=+cabin1[k].moneyArray[2];
            }


        }
        System.out.println("Total is :"+totalAmount);


    }

    private static void orderOfThePassenger(cabin[] cabin1) {
        String[] sortarray=new String[36];
        int index=0;
        for(int k = 0; k < cabin1.length; k++){
            sortarray[index]=cabin1[k].arrayName[0];
            index++;
            sortarray[index]=cabin1[k].arrayName[1];
            index++;
            sortarray[index]=cabin1[k].arrayName[2];
            index++;
        }
        for (int k = 0; k <sortarray.length ; k++) {
            for (int j = k + 1; j < sortarray.length; j++) {

                if (sortarray[k].compareTo(sortarray[j]) > 0) {
                    String temp;
                    temp = sortarray[k];
                    sortarray[k] = sortarray[j];
                    sortarray[j] = temp;
                }
            }
        }
        for (int k = 0; k < sortarray.length; k++) {
            if (!sortarray[k].equals("empty")) {
                System.out.println(sortarray[k]);
            }

        }
    }

    private static cabin[] PasengerLoadDetails(cabin[] cabin1) {
        File myObj = new File("SavedData.txt");
        if (myObj.exists()) {
            System.out.println("File name: " + myObj.getName());
            System.out.println("Absolute path: " + myObj.getAbsolutePath());

        } else {
            System.out.println("The file does not exist.");
        }


        return cabin1;
    }

    private static cabin[] passengerStore(cabin[] cabin1) {
        try {
            FileWriter savedata = new FileWriter("SavedData.txt"); //creat a new object type file writer
            for (int k = 0; k < cabin1.length; k++)
            {
                savedata.write("cabin"+k+"passenger1:"+cabin1[k].arrayName[0]+"\n");
                savedata.write("cabin"+k+"passenger2:"+cabin1[k].arrayName[1]+"\n");
                savedata.write("cabin"+k+"passenger3:"+cabin1[k].arrayName[2]+"\n");
            }

            savedata.close();
            System.out.println("The file was successfully written to..");
        }catch (IOException e) {
            System.out.println("There was a mistake.");
            e.printStackTrace();
        }


        return cabin1;
    }

    private static cabin[] PassengerFinding(cabin[] cabin1) {
        Scanner input=new Scanner(System.in);
        System.out.print("Enter Passenger Name:");
        String name=input.next();
        for (int i=0; i<cabin1.length; i++ ){
            if(cabin1[i].arrayName[0].equals(name)){
                System.out.println("This passenger is in cabin "+i);

            } if(cabin1[i].arrayName[1].equals(name)){
                System.out.println("This passenger is in cabin "+i);


            } if(cabin1[i].arrayName[2].equals(name)){
                System.out.println("This passenger is in cabin "+i);

            }
        }


      return cabin1;
    }

    private static cabin[] passengerDeleting(cabin[] cabin1) {
        while (true) {
            System.out.println("Enter cabin Number");


            Scanner input = new Scanner(System.in);
            int cabinnumber = input.nextInt();

            int key = cabin1[cabinnumber].setTheRemoveName();
            if (key == 0) {
                cabin1[cabinnumber].setRemoveTheSurname();
                cabin1[cabinnumber].setRemoveTheExpenses();
                return cabin1;

            }
        }
    }


    private static void passengerEmptyMethord(cabin[] cabin1) {
        for(int k=0;k< cabin1.length;k++){
            if(cabin1[k].arrayName[0]=="empty"){
                System.out.println("cabin "+k+" passenger "+1);
            }
            if(cabin1[k].arrayName[1]=="empty"){
                System.out.println("cabin "+k+" passenger "+2);
            }

            if(cabin1[k].arrayName[2]=="empty"){
                System.out.println("cabin "+k+" passenger "+3);
            }

        }

    }

    private static void  Passengerviwer(cabin[] cabin1) {
       for(int k=0;k< cabin1.length;k++){
           if(cabin1[k].arrayName[0]!="empty"){
               System.out.println("cabin "+k+" passenger "+1+" is "+cabin1[k].arrayName[0]+" "+cabin1[k].miniArrayName[0]);
           }else {
               System.out.println("cabin "+k+" passenger "+1+" is empty");
           }
           if(cabin1[k].arrayName[1]!="empty"){
               System.out.println("cabin "+k+" passenger "+2+" is "+cabin1[k].arrayName[1]+" "+cabin1[k].miniArrayName[1]);
           }else {
               System.out.println("cabin "+k+" passenger "+2+" is empty");
           }

           if(cabin1[k].arrayName[2]!="empty"){
               System.out.println("cabin "+k+" passenger "+3+" is "+cabin1[k].arrayName[2]+" "+cabin1[k].miniArrayName[2]);
           }else {
               System.out.println("cabin "+k+" passenger "+3+" is empty");
           }

       }


    }


    private static cabin[] passengerAdding(cabin[] cabin1) {
        while (true){
            System.out.println("Enter cabin Number");


            Scanner input=new Scanner(System.in);
            int cabinnumber=input.nextInt();

            int key=cabin1[cabinnumber].settingTheName();
            if (key==0){
                cabin1[cabinnumber].setTheSurname();
                cabin1[cabinnumber].setTheExpeneses();
                return cabin1;

            }

        }
    }
}
