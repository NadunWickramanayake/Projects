package com;

import com.company.ConsultationGUI;
import javax.swing.*;
import javax.swing.border.Border;
import java.awt.*;


public class HomePageGUI extends JFrame {
    private final JButton button1;

    public HomePageGUI(){
        //Adding background image to the frame
        JLabel background = new JLabel(new ImageIcon(getClass().getResource("/Pictures/background.jpg")));
        background.setBounds(0,0,2000,923);
      

    
        //Adding welcome letter to the JFrame
        JLabel welcomeLetter = new JLabel("Skin Consultation Manager :) ");
        welcomeLetter.setBounds(450, 25, 1100,50);
        welcomeLetter.setForeground(Color.WHITE);
        welcomeLetter.setFont(new Font("Arial", Font.BOLD,45));
        background.add(welcomeLetter);

        JLabel icon2 = new JLabel();
        icon2.setIcon(new ImageIcon(getClass().getResource("/Pictures/iitLogo.png")));
    
        icon2.setBounds(230, 15, 80,80);
        background.add(icon2);

        //Creating border with color yellow
        Border border = BorderFactory.createLineBorder(Color.WHITE,5);
        background.setBorder(border);

        //Adding buttons to the login page
        button1 = new JButton("Doctor Information");
        button1.setBounds(300,270,800,130);
        button1.setIcon(new ImageIcon(getClass().getResource("/Pictures/icon1.png")));
        button1.setFont(new Font("Arial", Font.ITALIC,25));
        button1.addActionListener(e -> {
            if (e.getSource() == button1){
                dispose();
                new DoctorListGUI();
            }
        });
        background.add(button1);

        //Adding second button to the frame
        JButton button2 = new JButton("Book a Consultation");
        button2.setBounds(300,450,800,130);
        button2.setIcon(new ImageIcon(getClass().getResource("/Pictures/icon2.png")));
        button2.setFont(new Font("Arial", Font.ITALIC,25));
        button2.addActionListener(e -> {
            dispose();
            new ConsultationGUI();
        });
        background.add(button2);

        //Label
        JLabel createdWord = new JLabel("Created by Nadun Wickramanayake");
        createdWord.setBounds(580,720, 300,50);
        createdWord.setFont(new Font("Arial", Font.ITALIC,10));
        background.add(createdWord);

        this.setTitle("Westminster Skin Consultation Manager");
        this.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        this.setSize(1440, 800);
        this.setResizable(false);
        this.setLayout(null);
        this.setVisible(true);
        this.add(background);
    }
}