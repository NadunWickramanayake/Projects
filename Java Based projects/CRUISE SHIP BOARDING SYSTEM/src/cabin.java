import java.util.*;

public class cabin {
    String[] arrayName ={"empty","empty","empty"};
    String[] miniArrayName = {"empty","empty","empty"};
    int[] moneyArray = new int[3];
    static int k=0;
    String theName;
    String theSurname;
    int theExpenses;
    String deleteName;
    String removeSurname;
    int removeExpenses;



    public String getName() {
        return theName;
    }

    public String RemoveTheName() {
        return deleteName;
    }

    public int setTheRemoveName() {
        Scanner input=new Scanner(System.in);
        for(int k=0; k< arrayName.length; k++){
            if(arrayName[k]!="empty"){

                arrayName[k]="empty";
                return 0;
            }
        }
        System.out.println("cabin is full Enter to a new cabin");
        return 1;
    }

    public String getRemoveTheSurname() {
        return removeSurname;
    }

    public void setRemoveTheSurname() {
        Scanner input=new Scanner(System.in);
        for(int k=0; k< miniArrayName.length; k++){
            if(miniArrayName[k]!="empty"){
                miniArrayName[k]="empty";
                return;
            }
        }
    }

    public int getRemoveTheExpenses() {
        return removeExpenses;
    }

    public void setRemoveTheExpenses() {
        Scanner input=new Scanner(System.in);
        for(int k=0; k< moneyArray.length; k++){
            if(moneyArray[k]!=0){
                moneyArray[k]=0;
                return;
            }
        }

    }

    public int settingTheName() {
        Scanner input=new Scanner(System.in);
        for(int k=0; k< arrayName.length; k++){
            if(arrayName[k]=="empty"){
                System.out.println("Enter Name");
                String theName =input.next();
                arrayName[k]=theName;
                return 0;
            }
        }
        System.out.println("cabin is full Enter to a new cabin");
        return 1;
    }


    public String getTheSurname() {
        return theSurname;
    }

    public void setTheSurname() {

        Scanner input=new Scanner(System.in);
        for(int k=0; k< miniArrayName.length; k++){
            if(miniArrayName[k]=="empty"){
                System.out.println("Enter SurName");
                String theSurname=input.next();
                miniArrayName[k]=theSurname;
                return;
            }
        }
        }


    public int getTheExpeneses() {
        return theExpenses;
    }

    public void setTheExpeneses() {
        Scanner input=new Scanner(System.in);
        for(int k=0; k< moneyArray.length; k++){
            if(moneyArray[k]==0){
                System.out.println("Enter theExpenses");
                int theExpenses=input.nextInt();
                moneyArray[k]=theExpenses;
                return;
            }
        }

        }

    }

