package com.company;
import com.HomePageGUI;
import javax.swing.*;
import java.awt.*;
import java.util.Scanner;


public class Main {
    public static void main(String[] args) {
        boolean answer = true;
        try (Scanner scanner = new Scanner(System.in)) {
            WestminsterSkinConsultationManager west = new WestminsterSkinConsultationManager();

            // load  data from the file
            west.LoadFromFile(WestminsterSkinConsultationManager.list);

       ConsultationGUI.LoadFromFile(ConsultationGUI.patientList,ConsultationGUI.consultationList);

            System.out.println("\n                                      Welcome to Westminster Skin Consultation Manager ");

            do {
                System.out.println("--------------------------------->>>>>>>>>>>---------------------------------<<<<<<<<<<<<<<<------------------------------------------------------");
                System.out.println("<<" + "                                           Menu of the program                                                        " + ">>");
                System.out.println("---------------------------------->>>>>>>>>>---------------------------------<<<<<<<<<<<<<<----------------------------------------------------");
                System.out.println("( " + "  1   )                        Add new Doctor                                                           " + " |");
                System.out.println("( " + "  2   )                        Delete a Doctor                                                          " + " |");
                System.out.println("( " + "  3   )                        Print the list of the Doctor                                             " + " |");
                System.out.println("( " + "  4   )                        Save in file                                                             " + " |");
                System.out.println("( " + "  5   )                        Open in User Interface                                                   " + " |");
                System.out.println("( " + "  6   )                        Quit                                                                     " + " |");
                System.out.println("-----------------------------------------------------------------------------------------------------------------------------------");

                System.out.println("Enter your selection:");
                String userInput = scanner.next().toUpperCase();

                switch (userInput) {
                    case "1":  west.AddNewDoctor();
                    break;
                    case "2" : west.DeleteDoctor();
                    break;
                    case "3" : west.PrintListOfDoctor();
                    break;
                    case "4" : west.SaveInFile();
                    break;
                    case "5" : EventQueue.invokeLater(() -> {
                        try {
                            UIManager.setLookAndFeel(UIManager.getSystemLookAndFeelClassName());
                        } catch (ClassNotFoundException | InstantiationException | IllegalAccessException |
                                UnsupportedLookAndFeelException e) {
                            throw new RuntimeException(e);
                        }
                        new HomePageGUI();
                    });
                        break;
                    case "6" : answer = false;

                }

            } while (answer);
        }
        System.out.println("\n       Thank you, Have a nice day ....... :) ");
    }
}