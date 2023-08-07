package com.company;

import java.util.ArrayList;

public interface SkinConsultationManager {
    void AddNewDoctor();
    void DeleteDoctor();
    void PrintListOfDoctor();
    void SaveInFile();
    void LoadFromFile(ArrayList<Doctor> list);

}
