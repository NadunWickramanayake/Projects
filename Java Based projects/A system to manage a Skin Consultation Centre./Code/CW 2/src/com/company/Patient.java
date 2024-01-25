package com.company;
import java.util.Date;
import java.util.UUID;

public class Patient extends Person{

    private final int patient_id;


    public Patient(String name, String surname, Date dob, String mobileNumber, String gender){
        super(name, surname, dob, mobileNumber, gender);
        this.patient_id = generateUniqueId();
    }

    public int getUniqueId() {
        return this.patient_id;
    }

    public static int generateUniqueId() {
        UUID randomID = UUID.randomUUID();
        String value =""+randomID;
        int uid=value.hashCode();
        String filterStr=""+uid;
        value = filterStr.replaceAll("-", "");
        return Integer.parseInt(value);
    }
}