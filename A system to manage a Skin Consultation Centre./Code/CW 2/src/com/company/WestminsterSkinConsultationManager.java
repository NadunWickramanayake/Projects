package com.company;
import java.io.*;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.Scanner;

public class WestminsterSkinConsultationManager implements  SkinConsultationManager {
    public static ArrayList<Doctor> list = new ArrayList<>(10);
    public static final SimpleDateFormat dateFormat = new SimpleDateFormat("dd/MM/yyyy");
    private static final Scanner scanner = new Scanner(System.in);


    @Override
    public void AddNewDoctor() {
        String userChoice = "";
        do {
            try{
                int counter = list.size();

                //Check whether if the list contains total of 10 doctors...
                if (!(counter == 10)){
                    System.out.println( ">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> Add new doctor <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<" );
                    System.out.println("-----------------------------------------------------------------------------------------------");
                    System.out.println("Please enter the name of the doctor --->");
                    String docName = "DR. "+ scanner.next();


                    System.out.println("Please enter the surname of the doctor -->");
                    String surName = scanner.next();

                    System.out.println("Please enter the mobile number of the doctor -->");
                    String mob = scanner.next();

                    System.out.println("Please select the gender -->");
                    System.out.println("1. Male\n2. Female");

                    int selectGender = scanner.nextInt();
                    String gender;

                    if (selectGender == 1) {
                        gender = "Male";

                    } else if (selectGender == 2) {
                        gender = "Female";

                    }else {
                        System.out.println("You entered the wrong selection -->");
                        break;
                    }

                    System.out.println("Please enter the doctor's Date of Birth(dd/MM/yyyy) -->");
                    String doctorDob = scanner.next();
                    Date dob = dateFormat.parse(doctorDob);


                    System.out.println("Please enter the Medical License Number of the doctor -->");
                    String medLicNumber = scanner.next();

                    System.out.println("Please select the specialization from the below -->");
                    System.out.println("1. Mohs Surgeryy\n2. pediatric dermatology\n3. Other(Please specify below ! )");
                    int number = scanner.nextInt();
                    String specialization = "";
                    if (number == 1){
                        specialization = "Mohs Surgery";
                    } else if (number == 2) {
                        specialization = "pediatric dermatology";

                    } else if (number == 3) {
                        System.out.println("Enter the specialization:");
                        specialization = scanner.next();

                    }else {
                        System.out.println("Your selection was wrong :( ");
                    }

                    Doctor docter = new Doctor(docName,surName, dob ,mob,gender,medLicNumber,specialization);
                    list.add(docter);

                    System.out.println("Doctor added successfully !");
                    System.out.println("\nYou can add " +'"' +(10 - (++counter)) +'"'+ " more doctors to the center");

                    System.out.println("Do you want add another doctor?(Yes/No) -->");
                    userChoice = scanner.next();
                }
                else {
                    System.out.println("Can't add doctors, Your center is full !!!");
                    break;
                }

            }catch (ParseException e){
                System.out.println("Format of your entered value is invalid!");
            }
            catch (Exception a){
                System.out.println("Doctor can't add to the center, something went wrong!");
            }

        }while (userChoice.equalsIgnoreCase("Yes"));

        System.out.println("Returning to the main menu.......");

    }

    @Override
    public void DeleteDoctor() {
        try{
            System.out.println( ">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> Delete a doctor <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<" );
            System.out.println("-----------------------------------------------------------------------------------------------");

            System.out.println("Please enter the medical license number -->");
            String lLicenceNo = scanner.next();

            if (!(list.isEmpty())){
                for (Doctor doctor:list) {
                    if (lLicenceNo.equals(doctor.getMedicalLicenseNumber())) {
                        System.out.println("Do you want to delete doctor " + doctor.getName() + " from the center?(Yes/No) -->");
                        String answer = scanner.next();

                        if (answer.equalsIgnoreCase("Yes")) {
                            list.remove(doctor);
                            System.out.println("Doctor deleted successfully....!!!");
                        } else {
                            System.out.println("Returning to the main menu... .... ..........");
                        }
                        break;
                    }
                }
            }else {
                System.out.println("Doctor not found ... please try again later !");
            }
        }catch (Exception e){
            System.out.println("Can't delete doctor from the center, Something went wrong ... please try again later !");
        }

    }

    @Override
    public void PrintListOfDoctor() {
        try{
            System.out.println( ">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> List of doctors <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<" );
            System.out.println("-----------------------------------------------------------------------------------------------");
            System.out.printf("%-15s %-15s %-15s %-15s %-15s %-15s %s\n", "Name", "Surname", "Gender", "Date of birth", "Mobile number", "Medical License Number", "Specialization\n");

            if (list.isEmpty()){
                System.out.println("\n");
                System.out.println("                                   Sorry try again....data not found");
                System.out.println("\n");
            }
            else {
                //creating new arraylist for sort
                ArrayList<Doctor> sortedArray = new ArrayList<>(list.size());
              
                //add main array list object to new arraylist
                sortedArray.addAll(list);
                for (Doctor doctor: sortedArray) {
                    System.out.printf("%-15s %-15s %-15s %-15s %-15s %-15s %s\n", doctor.getName(), doctor.getSurname(),
                            doctor.getGender(), dateFormat.format(doctor.getDob()), doctor.getMobileNumber(),
                            doctor.getMedicalLicenseNumber(), doctor.getSpecialization());
                }
          
            }
            System.out.println("\n        ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^");
        }
        catch (Exception e){
            System.out.println("Can't print the list of the doctors, Something went wrong please try again.......!!!!");
        }
    }

    @Override
    public void SaveInFile() {
        try {
            FileOutputStream fileOutputStream = new FileOutputStream("filename.txt");
            ObjectOutputStream objectOutputStream = new ObjectOutputStream(fileOutputStream);

            for (Doctor doctor:
                    list) {
                objectOutputStream.writeObject(doctor);
            }
            fileOutputStream.close();
            objectOutputStream.close();
            System.out.println("Successfully saved to file :) ");

        } catch (Exception e) {
            System.out.println("Something went wrong please try again.......!!!!");
        }
    }

    @Override
    public void LoadFromFile(ArrayList<Doctor> list){
        try{
            FileInputStream fileInputStream = new FileInputStream("TextFile.txt");
            ObjectInputStream objectInputStream = new ObjectInputStream(fileInputStream);
            while (true) {
                try{
                    Doctor doctor = (Doctor) objectInputStream.readObject();
                    list.add(doctor);
                }
                catch (Exception e){
                    break;
                }
            }
            fileInputStream.close();
            objectInputStream.close();
        }
        catch (IOException e){
            System.out.println("Oops, File not found please try again.......!!!!");
        }
    }
}