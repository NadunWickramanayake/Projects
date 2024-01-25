package com.company;

import com.HomePageGUI;
import javax.swing.*;
import java.awt.*;
import java.io.*;
import java.text.ParseException;
import java.util.ArrayList;
import java.util.Date;

public class ConsultationGUI  extends JFrame {
    public static final ArrayList<Patient> patientList = new ArrayList<>();
    public static final ArrayList<Consultation> consultationList = new ArrayList<>();
    private final JTextField textFieldForFName, textFieldForSurname, textFieldForMobile;
    private final JLabel labelFieldForDOB, labelForDate;
    private final JTextArea textAreaForNotes;
    private final JRadioButton male;
    private final DefaultComboBoxModel<Object> docNames = new DefaultComboBoxModel<>();
    private final DefaultComboBoxModel<Object> specializationBoxModel = new DefaultComboBoxModel<>();
    private final DefaultComboBoxModel<Object> timeSlotBoxModel = new DefaultComboBoxModel<>();
    private String gender, dob, pickedDate;
    private JComboBox comboForSpecialization,jComboBoxForTime;
    private JButton backButton;
    private JComboBox comboBoxForDoctorName;
    private Date pickedDate2;
    private Date date;

    public ConsultationGUI() {
        JLabel patientDetails = new JLabel("Patient Details");
        patientDetails.setFont(new Font("Arial", Font.BOLD, 25));
        patientDetails.setBounds(640, 35, 300, 100);

        textFieldForFName = new JTextField();
        textFieldForFName.setBounds(790, 150, 200, 40);
        textFieldForFName.setFont(new Font("Arial", Font.PLAIN, 18));
        textFieldForFName.setBackground(new Color(206, 204, 202));

        JLabel forFirstName = new JLabel("First Name");
        forFirstName.setBounds(640, 150, 150, 35);
        forFirstName.setFont(new Font("MV Boli", Font.PLAIN, 17));

        textFieldForSurname = new JTextField();
        textFieldForSurname.setBounds(1190, 150, 200, 40);
        textFieldForSurname.setFont(new Font("Arial", Font.PLAIN, 18));
        textFieldForSurname.setBackground(new Color(208, 209, 205));

        JLabel forSurName = new JLabel("Surname");
        forSurName.setBounds(1020, 150, 150, 35 );
        forSurName.setFont(new Font("MV Boli", Font.PLAIN, 18));

        labelFieldForDOB = new JLabel();
        labelFieldForDOB.setBounds(790, 230, 150, 35);
        labelFieldForDOB.setFont(new Font("Arial", Font.PLAIN, 18));
        labelFieldForDOB.setBackground(new Color(207, 205, 202));
        labelFieldForDOB.setOpaque(true);

        JButton calenderButton = new JButton();
        calenderButton.setBounds(945, 230, 50, 40);
        calenderButton.setIcon(new ImageIcon("calendar.png"));
        calenderButton.addActionListener(ae -> labelFieldForDOB.setText(new DatePicker(this).setPickedDate()));

        JLabel forDOB = new JLabel("Date Of Birth");
        forDOB.setBounds(640, 230, 150, 35);
        forDOB.setFont(new Font("MV Boli", Font.PLAIN, 18));

        textFieldForMobile = new JTextField();
        textFieldForMobile.setBounds(1190, 230, 200, 40);
        textFieldForMobile.setFont(new Font("Arial", Font.PLAIN, 18));
        textFieldForMobile.setBackground(new Color(207, 205, 202));

        JLabel forMobileNumber = new JLabel("Mobile Number");
        forMobileNumber.setBounds(1020, 230, 180, 35);
        forMobileNumber.setFont(new Font("MV Boli", Font.PLAIN, 18));

        JLabel gender = new JLabel("Gender");
        gender.setFont(new Font("Arial", Font.PLAIN, 18));
        gender.setSize(100, 20);
        gender.setLocation(640, 310);

        male = new JRadioButton("Male");
        male.setFont(new Font("Arial", Font.PLAIN, 15));
        male.setSelected(true);
        male.setSize(75, 20);
        male.setLocation(792, 310);

        JRadioButton female = new JRadioButton("Female");
        female.setFont(new Font("Arial", Font.PLAIN, 15));
        female.setSelected(false);
        female.setSize(81, 21);
        female.setLocation(903, 316);

        ButtonGroup genderGroup = new ButtonGroup();
        genderGroup.add(male);
        genderGroup.add(female);

        JSeparator jSeparator = new JSeparator();
        jSeparator.setOrientation(SwingConstants.HORIZONTAL);
        jSeparator.setBounds(640, 340, 750, 10);
        jSeparator.setBackground(new Color(123, 173, 244));

        JLabel addConsultation = new JLabel("Add Consultation");
        addConsultation.setFont(new Font("Arial", Font.BOLD, 25));
        addConsultation.setBounds(630, 360, 300, 50);

        JLabel selectDocLabel = new JLabel("Select a Doctor");
        selectDocLabel.setBounds(1010, 430, 150, 35);
        selectDocLabel.setFont(new Font("MV Boli", Font.PLAIN, 18));

        JLabel labelForSpecialization = new JLabel("Specialization");
        labelForSpecialization.setBounds(630, 430, 150, 35);
        labelForSpecialization.setFont(new Font("MV Boli", Font.PLAIN, 18));

        JLabel forDate = new JLabel("Pick a Date");
        forDate.setBounds(640, 510, 120, 35);
        forDate.setFont(new Font("MV Boli", Font.PLAIN, 18));

        labelForDate = new JLabel();
        labelForDate.setBounds(790, 510, 150, 35);
        labelForDate.setFont(new Font("Arial", Font.PLAIN, 18));
        labelForDate.setBackground(new Color(207, 205, 202));
        labelForDate.setOpaque(true);

        JButton calenderButton2 = new JButton();
        calenderButton2.setBounds(945, 510, 50, 40);
        calenderButton2.setIcon(new ImageIcon("calendar.png"));
        calenderButton2.addActionListener(ae -> labelForDate.setText(new DatePicker(this).setPickedDate()));

        JLabel labelForTimeSlot= new JLabel("Time Slot");
        labelForTimeSlot.setBounds(1010, 510, 150, 35);
        labelForTimeSlot.setFont(new Font("MV Boli", Font.PLAIN, 18));

        JLabel labelForNotes = new JLabel("Add Notes");
        labelForNotes.setBounds(640, 590, 100, 35);
        labelForNotes.setFont(new Font("MV Boli", Font.PLAIN, 18));

        textAreaForNotes = new JTextArea();
        textAreaForNotes.setLineWrap(true);
        textAreaForNotes.setFont(new Font("Arial", Font.PLAIN, 15));
        textAreaForNotes.setBackground(new Color(207, 205, 202));
        textAreaForNotes.setOpaque(true);

        JScrollPane textAreaScroll = new JScrollPane(textAreaForNotes);
        textAreaScroll.setBounds(790, 590, 200, 75);




        this.setTitle("Westminster Skin Consultation Manager");
        this.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        this.setSize(1440, 800);
        this.setResizable(false);
        this.setLayout(null);
        this.setVisible(true);
        this.add(LeftPanel());
        this.add(UpperPanel());
        this.add(textFieldForFName);
        this.add(patientDetails);
        this.add(forFirstName);
        this.add(textFieldForSurname);
        this.add(forSurName);
        this.add(forDOB);
        this.add(forMobileNumber);
        this.add(textFieldForMobile);
        this.add(labelFieldForDOB);
        this.add(calenderButton);
        this.add(jSeparator);
        this.add(addConsultation);
        this.add(selectDocLabel);
        this.add(DoctorNames());
        this.add(labelForSpecialization);
        this.add(forDate);
        this.add(labelForDate);
        this.add(calenderButton2);
        this.add(labelForTimeSlot);
        this.add(labelForNotes);
        this.add(textAreaScroll);
        this.add(Book());
        this.add(ResetButton());
        this.add(ListOfAppointments());
        this.add(RightDownPanel());
        this.add(gender);
        this.add(male);
        this.add(female);
        this.add(DoctorSpecialization());
        this.add(TimeSlot());
    }

    public static void SaveInFile() {
        try {
            FileOutputStream fileOutputStream = new FileOutputStream("PatientList.txt");
            ObjectOutputStream oos = new ObjectOutputStream(fileOutputStream);

            for (Patient patient : patientList) {
                oos.writeObject(patient);
            }
            fileOutputStream.close();
            oos.close();


            FileOutputStream fileOutputStream1 = new FileOutputStream("Consultation.txt");
            ObjectOutputStream oos1 = new ObjectOutputStream(fileOutputStream1);

            for (Consultation consultation : consultationList) {
                oos1.writeObject(consultation);
            }
            fileOutputStream1.close();
            oos1.close();
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }

    public static void LoadFromFile(ArrayList<Patient> listOfPatients, ArrayList<Consultation> listOfConsultation) {
        try {
            FileInputStream fileInputStream = new FileInputStream("PatientList.txt");
            ObjectInputStream objectInputStream = new ObjectInputStream(fileInputStream);

            FileInputStream fis1 = new FileInputStream("Consultation.txt");
            ObjectInputStream ois1 = new ObjectInputStream(fis1);
            while (true) {
                try {
                    Patient patient = (Patient) objectInputStream.readObject();
                    Consultation consultation = (Consultation) ois1.readObject();
                    listOfPatients.add(patient);
                    listOfConsultation.add(consultation);
                } catch (Exception e) {
                    break;
                }
            }
            fis1.close();
            ois1.close();
            fileInputStream.close();
            objectInputStream.close();
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }

    private JPanel LeftPanel() {
        final JLabel jLabel = new JLabel();
        jLabel.setIcon(new ImageIcon((getClass().getResource("/Pictures/Consultation.jpeg"))));
        jLabel.setBounds(0, 0, 600, 800);

        final JLabel createrOfTheProject = new JLabel("Created by Nadun Wickramanayake");
        createrOfTheProject.setBounds(200, 700, 200, 50);
        createrOfTheProject.setFont(new Font("MV Boli", Font.ITALIC, 12));

        final JPanel jPanel = new JPanel();
        jPanel.setBounds(0, 0, 600, 800);
        jLabel.add(createrOfTheProject);
        jPanel.add(jLabel);
        return jPanel;
    }

    private JPanel UpperPanel(){
        final JPanel upperPanel;
        final JLabel upperLabel;

        backButton = new JButton();
        backButton.setBounds(1500, 35, 100, 50);
        backButton.setIcon(new ImageIcon(getClass().getResource("/Pictures/HomeIcon.jpeg")));
        backButton.addActionListener(e -> {
            if (e.getSource() == backButton){
                backButton.setBackground(new Color(225, 215, 248));
                this.dispose();
                new HomePageGUI();
            }
        });

        JLabel label = new JLabel("Doctor's Information");
        label.setIcon(new ImageIcon(getClass().getResource("/Pictures/DoctorIcon.png")));
        label.setBounds(73, 36, 451, 71);
        label.setForeground(Color.WHITE);
        label.setFont(new Font("MV Boli", Font.BOLD,29));

        upperLabel = new JLabel(new ImageIcon(getClass().getResource("/Pictures/UpperImage.jpg")));
        upperLabel.setBounds(0, 0, 2010, 125);

        upperPanel = new JPanel();
        upperPanel.setBounds(0, 0, 1445, 125);
        upperPanel.add(upperLabel);
        upperLabel.add(label);
        upperLabel.add(backButton);
        return upperPanel;
    }

    private JComboBox DoctorNames() {
        comboBoxForDoctorName = new JComboBox(docNames);
        comboBoxForDoctorName.setBounds(1190, 423, 200, 50);
        comboBoxForDoctorName.setFont(new Font("Arial", Font.PLAIN, 15));
        return comboBoxForDoctorName;
    }

    private JComboBox DoctorSpecialization() {
        int count = WestminsterSkinConsultationManager.list.size();
        String[] specialization = new String[count];
        int iteration = 0;
        for (Doctor doc : WestminsterSkinConsultationManager.list) {
            specialization[iteration] = doc.getSpecialization();
            iteration++;
        }

        specializationBoxModel.addElement("-- Select --");
        docNames.addElement("-- Select --");

        //removing all duplicate elements in the array
        for (int i = 0; i < count; i++) {
            int flag = 0;
            for (int j = 0; j < i; j++) {
                if (specialization[i].equals(specialization[j])) {
                    flag = 1;
                    break;
                }
            }
            if (flag == 0) {
                specializationBoxModel.addElement(specialization[i]);
            }
        }

        comboForSpecialization = new JComboBox(specializationBoxModel);
        comboForSpecialization.setBounds(790, 423, 200, 50);
        comboForSpecialization.setFont(new Font("Arial", Font.PLAIN, 15));
        comboForSpecialization.addActionListener(ae -> {
            if (ae.getSource() == comboForSpecialization) {
                docNames.removeAllElements();
                for (Doctor doctor : WestminsterSkinConsultationManager.list) {
                    if (doctor.getSpecialization().equals(comboForSpecialization.getSelectedItem())) {
                        docNames.addElement(doctor.getName() + " " + doctor.getSurname());
                    }
                }
            }
        });
        return comboForSpecialization;
    }

    private JButton Book() {
        JButton book = new JButton("BOOK NOW");
        book.setBounds(1250, 705, 150, 35);
        book.setFont(new Font("MV Boli", Font.BOLD, 12));
        book.setForeground(Color.BLUE);
        book.addActionListener(ae -> {
            if (ae.getSource() == book) {
                if (!textFieldForFName.getText().isEmpty() && !textFieldForSurname.getText().isEmpty() && !labelFieldForDOB.getText().isEmpty() && !textFieldForMobile.getText().isEmpty()) {
                    String fName = textFieldForFName.getText();
                    String lName = textFieldForSurname.getText();
                    try {
                        dob = labelFieldForDOB.getText();
                        date = WestminsterSkinConsultationManager.dateFormat.parse(dob);
                    } catch (ParseException e) {
                        throw new RuntimeException(e);
                    }
                    String mobile = textFieldForMobile.getText();

                    if (male.isSelected()) {
                        gender = "Male";
                    } else {
                        gender = "Female";
                    }
                    String specialization = (String) DoctorSpecialization().getSelectedItem();
                    String doctorName = (String) DoctorNames().getSelectedItem();
                    try {
                        pickedDate = labelForDate.getText();
                        pickedDate2 = WestminsterSkinConsultationManager.dateFormat.parse(pickedDate);
                    } catch (ParseException e) {
                        throw new RuntimeException(e);
                    }
                    String time = (String) TimeSlot().getSelectedItem();
                    String notes = textAreaForNotes.getText();
                    int flag = 0;

                    for (Patient patient : patientList) {
                        if (fName.equalsIgnoreCase(patient.getName()) && lName.equalsIgnoreCase(patient.getSurname())) {
                            flag = 1;
                            break;
                        }
                    }
                    int yesOrNo;
                    if (flag == 1) {
                        yesOrNo = JOptionPane.showConfirmDialog(this, "Consultation Fee :- £25\nDo you want to book the consultation!!!  ?", "Westminster Skin Consultation Manager", JOptionPane.YES_NO_CANCEL_OPTION, JOptionPane.INFORMATION_MESSAGE, new ImageIcon("Question.png"));
                        if (yesOrNo == 0) {
                            Consultation consultation = new Consultation(doctorName, specialization, pickedDate2, time, notes);
                            consultation.setCost("£30");
                            consultation.setNotes(notes);
                            Patient patient = new Patient(fName, lName, date, mobile, gender);
                            patientList.add(patient);
                            consultationList.add(consultation);
                            JOptionPane.showMessageDialog(this, "Your consultation reserved Successfully!", "ALERT!", JOptionPane.INFORMATION_MESSAGE, new ImageIcon("confirm.png"));

                        }
                    } else {
                        yesOrNo = JOptionPane.showConfirmDialog(this, "Consultation Fee :- £15\nDo you want to book the consultation?", "Westminster Skin Consultation Manager", JOptionPane.YES_NO_CANCEL_OPTION, JOptionPane.INFORMATION_MESSAGE, new ImageIcon("Question.png"));
                        if (yesOrNo == 0) {
                            Consultation consultation = new Consultation(doctorName, specialization, pickedDate2, time, notes);
                            consultation.setCost("£15");
                            consultation.setNotes(notes);
                            Patient patient = new Patient(fName, lName, date, mobile, gender);
                            patientList.add(patient);
                            consultationList.add(consultation);
                            JOptionPane.showMessageDialog(this, "Consultation reserved Successfully!", "ALERT!!!", JOptionPane.INFORMATION_MESSAGE, new ImageIcon("confirm.png"));
                        }
                    }
                    if (yesOrNo == 1) {
                        JOptionPane.showMessageDialog(this, "Cancelled!", "ALERT!!!", JOptionPane.INFORMATION_MESSAGE, new ImageIcon("cross.png"));
                    }
                    SaveInFile();
                    Reset();
                } else {
                    JOptionPane.showMessageDialog(this, "Please fill all the fields !", "ALERT!", JOptionPane.WARNING_MESSAGE, new ImageIcon("AlertIcon.png"));
                }
            }
        });
        return book;
    }

    private JComboBox TimeSlot() {
        ArrayList<String> doctors = new ArrayList<>();

        timeSlotBoxModel.addElement("<<<< Select >>>>");
        timeSlotBoxModel.addElement("8 a.m. to 9 a.m.");
        timeSlotBoxModel.addElement("9 a.m. to 10 a.m.");
        timeSlotBoxModel.addElement("10 a.m. to 11 a.m.");
        timeSlotBoxModel.addElement("11 a.m. to 12 a.m.");
        timeSlotBoxModel.addElement("2 p.m. to 3 p.m.");
        timeSlotBoxModel.addElement("3 p.m. to 4 p.m.");
        timeSlotBoxModel.addElement("4 p.m. to 5 p.m.");
        timeSlotBoxModel.addElement("5 p.m.to 6 p.m.");

        jComboBoxForTime = new JComboBox(timeSlotBoxModel);
        jComboBoxForTime.setBounds(1190, 503, 200, 50);
        jComboBoxForTime.setFont(new Font("Arial", Font.PLAIN, 15));

        for (String name :
                doctors) {
            for (Consultation consol :
                    consultationList) {
                try {
                    if (!(name.equals(consol.getName()) && WestminsterSkinConsultationManager.dateFormat.parse(labelForDate.getText()).equals(consol.getDate()) && consol.getTimeSlots().equals(jComboBoxForTime.getSelectedItem()))){
                        docNames.addElement(name);
                    }
                } catch (ParseException e) {
                    throw new RuntimeException(e);
                }
            }
        }
        return jComboBoxForTime;
    }



    private JPanel RightDownPanel() {
        final JPanel jPanel = new JPanel();
        jPanel.setBounds(600, 760, 840, 20);
        jPanel.setBackground(new Color(123, 173, 244));
        return jPanel;
    }

    private JButton ListOfAppointments() {
        JButton listOfAppointment = new JButton("VEIW LIST OF APPOINTMENTS");
        listOfAppointment.setBounds(640, 705, 200, 35);
        listOfAppointment.setFont(new Font("MV Boli", Font.BOLD, 12));
        listOfAppointment.addActionListener(ae -> {
            if (ae.getSource() == listOfAppointment) {
                new AppointmentGUI();
            }
        });
        return listOfAppointment;
    }

    private JButton ResetButton() {
        JButton reset = new JButton("RESET ALL");
        reset.setBounds(1090, 705, 150, 35);
        reset.setFont(new Font("MV Boli", Font.BOLD, 12));
        reset.setForeground(Color.RED);
        reset.addActionListener(ae -> {
            if (ae.getSource() == reset) {
                Reset();
            }
        });
        return reset;
    }

    private void Reset() {
        String def = "";
        textFieldForFName.setText(def);
        textFieldForSurname.setText(def);
        textFieldForMobile.setText(def);
        labelFieldForDOB.setText(def);
        labelForDate.setText(def);
        textAreaForNotes.setText(def);
        specializationBoxModel.removeAllElements();
        DoctorSpecialization();
        DoctorNames();
        timeSlotBoxModel.removeAllElements();
        TimeSlot();
        labelForDate.setText(def);
        textAreaForNotes.setText(def);
    }
}