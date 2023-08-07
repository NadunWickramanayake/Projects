package com.company;

import java.util.Date;

public class Doctor extends Person implements Comparable<Doctor>{
    private String medLicNumber;
    private String specialization;

    public Doctor(String name, String surName, Date dob, String mob, String gender, String medLicNumber, String specialization) {

        super(name, surName, dob, mob, gender);
        this.medLicNumber = medLicNumber;
        this.specialization = specialization;
    }
    public Doctor(){}

    public String getMedicalLicenseNumber() {
        return medLicNumber;
    }

    public void  setMedicalLicenseNumber (String  medLicNumber) {
        this.medLicNumber = medLicNumber;
    }

    public String getSpecialization() {
        return specialization;
    }

    public void setSpecialization(String specialization) {
        this.specialization = specialization;
    }

    @Override
    public int compareTo(Doctor o) {
        return this.getSurname().compareToIgnoreCase(o.getSurname());
    }
}
