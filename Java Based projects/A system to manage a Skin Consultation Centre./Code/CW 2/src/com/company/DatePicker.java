package com.company;
import javax.swing.*;
import java.awt.*;

class DatePicker {
    int month = java.util.Calendar.getInstance().get(java.util.Calendar.MONTH);
    int year = java.util.Calendar.getInstance().get(java.util.Calendar.YEAR);
    JLabel l = new JLabel("", JLabel.CENTER);
    String day = "";
    JDialog dt;
    JButton[] button = new JButton[49];

    public DatePicker(JFrame parent) {
        dt = new JDialog();
        dt.setModal(true);
        String[] header = { "Sun", "Mon", "Tue", "Wed", "Thur", "Fri", "Sat" };
        JPanel p1 = new JPanel(new GridLayout(7, 7));
        p1.setPreferredSize(new Dimension(450, 120));

        for (int y = 0; y < button.length; y++) {
            final int selection = y;
            button[y] = new JButton();
            button[y].setFocusPainted(false);
            button[y].setBackground(Color.BLACK);
            if (y > 6)
                button[y].addActionListener(ae -> {
                    day = button[selection].getActionCommand();
                    dt.dispose();
                });
            if (y < 7) {
                button[y].setText(header[y]);
                button[y].setForeground(Color.BLUE);
            }
            p1.add(button[y]);
        }

        JPanel p2 = new JPanel(new GridLayout(1, 3));
        JButton previous = new JButton("<<< year");
        previous.addActionListener(ae -> {
            year--;
            displayDate();
        });
        p2.add(previous);
        JButton next = new JButton("year >>>");
        next.addActionListener(ae -> {
            year++;
            displayDate();
        });
        p2.add(next);

        p2.add(l);

        JButton lastMonth = new JButton("<<< month");
        lastMonth.addActionListener(ae -> {
            month--;
            displayDate();
        });
        p2.add(lastMonth);
        JButton nextMonth = new JButton("month >>>");
        nextMonth.addActionListener(ae -> {
            month++;
            displayDate();
        });
        p2.add(nextMonth);

        dt.setResizable(false);
        dt.add(p1, BorderLayout.CENTER);
        dt.add(p2, BorderLayout.SOUTH);
        dt.pack();
        dt.setLocationRelativeTo(parent);
        displayDate();
        dt.setVisible(true);

    }

    public void displayDate() {
        for (int x = 7; x < button.length; x++)
            button[x].setText("");
        java.text.SimpleDateFormat sdf = new java.text.SimpleDateFormat(
                "MMMM yyyy");
        java.util.Calendar cal = java.util.Calendar.getInstance();
        cal.set(year, month, 1);
        int dayOfWeek = cal.get(java.util.Calendar.DAY_OF_WEEK);
        int daysInMonth = cal.getActualMaximum(java.util.Calendar.DAY_OF_MONTH);
        for (int x = 6 + dayOfWeek, day = 1; day <= daysInMonth; x++, day++)
            button[x].setText("" + day);
        l.setText(sdf.format(cal.getTime()));
        dt.setTitle("-- Calendar -- ");
    }

    public String setPickedDate() {
        if (day.equals(""))
            return day;
        java.text.SimpleDateFormat sdf = new java.text.SimpleDateFormat(
                "dd/MM/yyyy");
        java.util.Calendar cal = java.util.Calendar.getInstance();
        cal.set(year, month, Integer.parseInt(day));
        return sdf.format(cal.getTime());
    }
}