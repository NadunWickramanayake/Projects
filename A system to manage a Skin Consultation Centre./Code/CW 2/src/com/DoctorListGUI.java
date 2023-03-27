package com;

import com.company.ListTableModel;
import com.company.WestminsterSkinConsultationManager;

import javax.swing.*;
import java.awt.*;

public class DoctorListGUI extends JFrame {
    private JButton backButton;

    DoctorListGUI(){
        //Code for the Frame
        ImageIcon imageR = new ImageIcon(getClass().getResource("/Pictures/RightImage.jpg"));
        ImageIcon imageL = new ImageIcon(getClass().getResource("/Pictures/LeftImage.jpg"));
        ImageIcon imageB = new ImageIcon(getClass().getResource("/Pictures/BottomImage.jpg"));

        this.setTitle("Westminster Skin Consultation Manager");
        this.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        this.setSize(1440, 800);
        this.setResizable(false);
        this.setLayout(null);
        this.setVisible(true);
        this.add(LeftPanel(imageL));
        this.add(UpperPanel());
        this.add(BottomPanel(imageB));
        this.add(RightPanel(imageR));
        this.add(ScrollPane());
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


    private JPanel RightPanel(ImageIcon image){
        JPanel rightSidePanel;
        JLabel rightLabel;

        rightLabel = new JLabel(image);
        rightLabel.setBounds(0, 0, 71, 582);
        rightSidePanel = new JPanel();
        rightSidePanel.setBounds(1372,122, 71, 582);
        rightSidePanel.add(rightLabel);

        return rightSidePanel;
    }


    private JPanel LeftPanel(ImageIcon image){
        JPanel leftSidePanel;
        JLabel leftLabel;

        leftLabel = new JLabel(image);
        leftLabel.setBounds(0,0, 72, 582);
        leftSidePanel = new JPanel();
        leftSidePanel.setBounds(0,122, 72, 582);
        leftSidePanel.add(leftLabel);

        return leftSidePanel;
    }


    private JPanel BottomPanel(ImageIcon image){
        JPanel bottomPanel;
        JLabel bottomLabel;

        JLabel createdWord = new JLabel("Created by Nadun Wickramanayake");
        createdWord.setBounds(650,30, 300,20);
        createdWord.setFont(new Font("MV Boli", Font.ITALIC,10));

        bottomLabel = new JLabel(image);
        bottomLabel.setBounds(0, 0,1445, 75);
        bottomPanel = new JPanel();
        bottomPanel.setBounds(0, 700, 1445,75);
        bottomLabel.add(createdWord);
        bottomPanel.add(bottomLabel);

        return bottomPanel;
    }


    private JScrollPane ScrollPane(){
        final JScrollPane scrollPane;
        //Creating an object of custom table model class
        ListTableModel model = new ListTableModel (WestminsterSkinConsultationManager.list);

        //Defining the table
        JTable table = new JTable(model);
        table.setBackground(Color.WHITE);
        table.setForeground(Color.BLACK);
        table.setSelectionBackground(new Color(86,182,184));
        table.setSelectionForeground(Color.BLACK);
        table.setGridColor(Color.BLACK);
        table.setFont(new Font("Arial", Font.PLAIN,13));
        table.setRowHeight(40);
        table.getTableHeader().setFont(new Font("Arial", Font.BOLD,14));
        table.getTableHeader().setPreferredSize(new Dimension(90,50));
        table.getTableHeader().setForeground(new Color(218,93,66));
        table.setAutoCreateRowSorter(true);

        scrollPane = new JScrollPane(table);
        scrollPane.setBounds(72, 122, 1302,585);
        return scrollPane;
    }
}