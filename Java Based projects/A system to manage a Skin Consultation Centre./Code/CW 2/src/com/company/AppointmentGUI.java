package com.company;
import javax.swing.*;
import java.awt.*;
import java.awt.event.MouseAdapter;
import java.awt.event.MouseEvent;
import java.util.Objects;

public class AppointmentGUI extends JFrame {
    AppointmentGUI(){
        this.setTitle("Westminster Skin Consultation Manager");
        this.setSize(1300, 683);
        this.setResizable(false);
        this.setLayout(null);
        this.setVisible(true);
        this.add(Table());
        this.add(UpperPanel());
        this.add(LeftPanel());
        this.add(DownPanel());
        this.add(RightPanel());
    }

    private JPanel UpperPanel(){
        JLabel jLabel = new JLabel();
        jLabel.setIcon(new ImageIcon(getClass().getResource("/Pictures/u.jpg")));
        jLabel.setBounds(0,0,1300,85);

        JLabel jLabel1 = new JLabel();
        jLabel1.setIcon(new ImageIcon(Objects.requireNonNull(getClass().getResource("/res/ConsultationIcon.png"))));
        jLabel1.setBounds(60,5,70,70);

        JPanel jPanel = new JPanel();
        jPanel.setBounds(0,0,1300,85);
        jLabel.add(jLabel1);
        jPanel.add(jLabel);
        return jPanel;
    }

    private JPanel LeftPanel(){
        JLabel jLabel = new JLabel();
        jLabel.setBounds(0,0,60,683);
        jLabel.setIcon(new ImageIcon(getClass().getResource("/Pictures/l.jpg")));

        JPanel jPanel = new JPanel();
        jPanel.setBounds(0,80,60,683);
        jPanel.add(jLabel);
        return jPanel;
    }
    private JPanel RightPanel(){
        JLabel jLabel = new JLabel();
        jLabel.setBounds(0,0,70,500);
        jLabel.setIcon(new ImageIcon(getClass().getResource("/Pictures/r.jpg")));

        JPanel jPanel = new JPanel();
        jPanel.setBounds(1230,80,70,500);
        jPanel.add(jLabel);
        return jPanel;
    }

    private JPanel DownPanel(){
        JLabel jLabel = new JLabel();
        jLabel.setBounds(0,0,1300,85);
        jLabel.setIcon(new ImageIcon(getClass().getResource("/Pictures/b.jpg")));

        JPanel jPanel = new JPanel();
        jPanel.setBounds(60,580,1300,98);
        jPanel.add(jLabel);
        return jPanel;
    }
    private JScrollPane Table(){
        AppointmentTableModel appointmentTableModel = new AppointmentTableModel(ConsultationGUI.patientList, ConsultationGUI.consultationList);

        JTable table = new JTable(appointmentTableModel);
        table.setBackground(Color.WHITE);
        table.setForeground(Color.BLACK);
        table.setSelectionBackground(new Color(236,150,129));
        table.setSelectionForeground(Color.BLACK);
        table.setGridColor(Color.BLACK);
        table.setFont(new Font("Arial", Font.PLAIN,13));
        table.setRowHeight(40);
        table.getTableHeader().setFont(new Font("Arial", Font.BOLD,14));
        table.getTableHeader().setPreferredSize(new Dimension(150,50));
        table.getTableHeader().setForeground(new Color(1,6,65));
        table.setAutoCreateRowSorter(false);
        table.setAutoResizeMode(JTable.AUTO_RESIZE_OFF);
        table.getColumnModel().getColumn(0).setPreferredWidth(100);
        table.getColumnModel().getColumn(1).setPreferredWidth(200);
        table.getColumnModel().getColumn(2).setPreferredWidth(200);
        table.getColumnModel().getColumn(3).setPreferredWidth(120);
        table.getColumnModel().getColumn(4).setPreferredWidth(90);
        table.getColumnModel().getColumn(5).setPreferredWidth(150);
        table.getColumnModel().getColumn(6).setPreferredWidth(200);
        table.getColumnModel().getColumn(7).setPreferredWidth(200);
        table.getColumnModel().getColumn(8).setPreferredWidth(200);
        table.getColumnModel().getColumn(9).setPreferredWidth(170);
        table.getColumnModel().getColumn(10).setPreferredWidth(60);


        JMenuItem add = new JMenuItem("Add a new Consultation !");
        JMenuItem delete = new JMenuItem("Delete the selected Consultation !");

        add.addActionListener(ae -> {
            new ConsultationGUI();
        });

        delete.addActionListener(ae -> {
            if (table.getSelectedRow() != -1){

            }
        });
        JPopupMenu jPopupMenu = new JPopupMenu();
        jPopupMenu.add(add);
        jPopupMenu.add(new JSeparator());
        jPopupMenu.add(delete);
        table.addMouseListener(new MouseAdapter() {
            @Override
            public void mouseClicked(MouseEvent e) {
                if (SwingUtilities.isRightMouseButton(e)){
                    jPopupMenu.show(e.getComponent(), e.getX(), e.getY());
                }
            }
        });

        JScrollPane jScrollPane = new JScrollPane(table, JScrollPane.VERTICAL_SCROLLBAR_AS_NEEDED, JScrollPane.HORIZONTAL_SCROLLBAR_AS_NEEDED);
        jScrollPane.setBounds(60, 85, 1170, 500);
        jScrollPane.setHorizontalScrollBarPolicy(JScrollPane.HORIZONTAL_SCROLLBAR_ALWAYS);
        return jScrollPane;
    }
}