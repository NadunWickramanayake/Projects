package com.company;

import javax.swing.table.AbstractTableModel;
import java.util.ArrayList;
import java.util.Date;

public class ListTableModel extends AbstractTableModel {
    private final String[] columnName = {"Medical License Number", "Name of the doctor", "Date Of Birth", "Gender", "Mobile Number", "Specialization"};
    private final ArrayList<Doctor> docList;

    public ListTableModel(ArrayList<Doctor> listOfDocters){
        listOfDocters=WestminsterSkinConsultationManager.list;
        docList = listOfDocters;

        for(int i=0;i<docList.size();i++){
            System.out.println(docList.get(i).getName());
        }

    }


    @Override
    public int getColumnCount() {
        return columnName.length;
    }

    @Override
    public int getRowCount() {
        return docList.size();
    }

    @Override
    public Object getValueAt(int rowIndex, int columnIndex) {
        Object tempVariable = null;
        if(columnIndex == 0){
            tempVariable = docList.get(rowIndex).getMedicalLicenseNumber();
        }else if(columnIndex == 1){
            tempVariable = docList.get(rowIndex).getName() + " " + docList.get(rowIndex).getSurname();
        }else if(columnIndex == 2){
            tempVariable = docList.get(rowIndex).getDob();
        }else if(columnIndex == 3){
            tempVariable = docList.get(rowIndex).getGender();
        }else if(columnIndex == 4){
            tempVariable = docList.get(rowIndex).getMobileNumber();
        }else if(columnIndex == 5){
            tempVariable = docList.get(rowIndex).getSpecialization();
        }
        return tempVariable;
    }

    public String getColumnName(int col){
        return columnName[col];
    }

    public Class getColumnClass(int col){
        if(col == 0){
            return String.class;
        }else if(col == 1){
            return String.class;
        }else if(col == 2){
            return Date.class;
        }else if(col == 3){
            return String.class;
        }else if(col == 4){
            return String.class;
        }else if(col == 5){
            return String.class;
        }
        else {
            return null;
        }
    }
}