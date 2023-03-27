package com.company;

import java.util.Date;

    public class Consultation extends Doctor{
        private String  timeSlot;
        private String cost;
        private String notes;
        private Date date;
        private String docName;

        public Consultation(String name, String specialization, Date date, String time, String notes){
            this.docName = name;
            super.setSpecialization(specialization);
            this.date = date;
            this.timeSlot = time;
            this.notes = notes;
        }
        public String getTimeSlots() {
            return timeSlot;
        }

        public String getCost() {
            return cost;
        }

        public String getNotes() {
            return notes;
        }

        public void setNotes(String Notes) {
            this.notes = notes;
        }

        public void setCost(String cost) {
            this.cost = cost;
        }

        public String getDoctorName(){
            return docName;
        }
        public Date getDate(){
            return date;
        }

        @Override
        public void setMedicalLicenseNumber(String medLicNumber) {
            super.setMedicalLicenseNumber(medLicNumber);
        }
    }
