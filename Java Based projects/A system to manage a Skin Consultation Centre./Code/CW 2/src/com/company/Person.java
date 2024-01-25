package com.company;

import java.io.Serializable;
import java.util.Date;

public class Person implements Serializable {
    private String docName;
    private String surname;
    private Date dob;
    private String mob;
    private String gender;

    public Person() {
    }

    //Setters
    public void setName(String docName) {
        this.docName = docName;
    }

    public void setSurname(String surname) {
        this.surname = surname;
    }

    public void setDob(Date dob) {
        this.dob = dob;
    }

    public void setMobileNumber(String mob) {
        this.mob = mob;
    }

    public void setGender(String gender){
        this.gender = gender;
    }

   //Getters
   Person(String docName,String surname, Date dob, String mob, String gender){
       this.docName = docName;
       this.surname = surname;
       this.dob = dob;
       this.mob = mob;
       this.gender = gender;
   }
    public String getName() {
        return docName;
    }

    public String getSurname() {
        return surname;
    }

    public Date getDob() {
        return dob;
    }

    public String getMobileNumber() {
        return mob;
    }

    public String getGender(){
        return gender;
    }
}
