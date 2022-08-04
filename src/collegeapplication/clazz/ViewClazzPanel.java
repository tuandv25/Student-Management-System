package collegeapplication.clazz;

import java.awt.Color;
import java.awt.Cursor;
import java.awt.Font;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

import javax.swing.ImageIcon;
import javax.swing.JButton;
import javax.swing.JComponent;
import javax.swing.JLabel;
import javax.swing.JPanel;
import javax.swing.SwingConstants;
import javax.swing.border.EmptyBorder;
import javax.swing.border.LineBorder;

import collegeapplication.admin.AdminMain;
import collegeapplication.common.ChangePasswordDialog;
import collegeapplication.clazz.ClazzData;
import collegeapplication.lecturer.LecturerData;
import collegeapplication.student.StudentData;
import collegeapplication.subject.SubjectData;

@SuppressWarnings("serial")
public class ViewClazzPanel extends JPanel {

	/**
	 * Create the panel.
	 */
	public JComponent lastpanel;
	private JButton assignsubjectbutton;
	private JButton backbutton;
	private JButton editdetailsbutton;
	private JButton deletebutton;

	/**
	 * @wbp.parser.constructor
	 */
	private ViewClazzPanel(Clazz f) {
		setBackground(new Color(255, 255, 255));
		this.setSize(1116, 705);
		setLayout(null);

		JPanel panel = new JPanel();
		panel.setBackground(new Color(32, 178, 170));
		panel.setBounds(10, 0, 1096, 188);
		add(panel);
		panel.setLayout(null);

		editdetailsbutton = new JButton("Edit Details");
		editdetailsbutton.setBorder(new EmptyBorder(0, 0, 0, 0));
		editdetailsbutton.setFocusable(false);
		editdetailsbutton.setForeground(new Color(0, 139, 139));
		editdetailsbutton.setBackground(new Color(255, 255, 255));
		editdetailsbutton.setFont(new Font("Segoe UI", Font.BOLD, 15));
		editdetailsbutton.setCursor(new Cursor(Cursor.HAND_CURSOR));
		editdetailsbutton.setBounds(919, 141, 153, 35);
		panel.add(editdetailsbutton);

		deletebutton = new JButton("Delete Class");
		deletebutton.setBorder(new EmptyBorder(0, 0, 0, 0));
		deletebutton.setFocusable(false);
		deletebutton.setForeground(new Color(0, 139, 139));
		deletebutton.setFont(new Font("Segoe UI", Font.BOLD, 15));
		deletebutton.setBackground(new Color(255, 255, 255));
		deletebutton.setBounds(769, 141, 140, 35);
		deletebutton.setCursor(new Cursor(Cursor.HAND_CURSOR));
		panel.add(deletebutton);

		backbutton = new JButton("Back");
		backbutton.setContentAreaFilled(false);
		backbutton.setBorder(new EmptyBorder(0, 0, 0, 0));

		backbutton.setIcon(new ImageIcon(".\\assets\\back.png"));
		backbutton.setFocusable(false);
		backbutton.setForeground(Color.WHITE);

		backbutton.setFont(new Font("Segoe UI", Font.BOLD, 16));
		backbutton.setBackground(new Color(32, 178, 170));
		backbutton.setBounds(10, 141, 88, 36);
		panel.add(backbutton);

		JLabel lblClazzDetails = new JLabel("Class Details");
		lblClazzDetails.setHorizontalAlignment(SwingConstants.LEFT);
		lblClazzDetails.setForeground(Color.WHITE);
		lblClazzDetails.setFont(new Font("Segoe UI", Font.BOLD, 30));
		lblClazzDetails.setBounds(10, 65, 415, 44);
		panel.add(lblClazzDetails);
		//
		JLabel clazzIDlbl = new JLabel("   Class ID");
		clazzIDlbl.setBorder(new LineBorder(new Color(192, 192, 192)));
		clazzIDlbl.setBackground(new Color(255, 255, 255));
		clazzIDlbl.setFont(new Font("Segoe UI Historic", Font.PLAIN, 20));
		clazzIDlbl.setHorizontalAlignment(SwingConstants.LEFT);
		clazzIDlbl.setOpaque(true);
		clazzIDlbl.setBounds(309, 66 + 150, 274, 48);
		add(clazzIDlbl);

		JLabel clazzIDlabel = new JLabel("  " + f.getClazzID());
		clazzIDlabel.setOpaque(true);
		clazzIDlabel.setHorizontalAlignment(SwingConstants.LEFT);
		clazzIDlabel.setFont(new Font("Segoe UI Historic", Font.BOLD, 20));
		clazzIDlabel.setBorder(new LineBorder(new Color(192, 192, 192)));
		clazzIDlabel.setBackground(Color.WHITE);
		clazzIDlabel.setBounds(582, 66 + 150, 520, 48);
		add(clazzIDlabel);
		//
		JLabel subIDlbl = new JLabel("   Subject ID");
		subIDlbl.setOpaque(true);
		subIDlbl.setHorizontalAlignment(SwingConstants.LEFT);
		subIDlbl.setFont(new Font("Segoe UI Historic", Font.PLAIN, 20));
		subIDlbl.setBorder(new LineBorder(new Color(192, 192, 192)));
		subIDlbl.setBackground(Color.WHITE);
		subIDlbl.setBounds(309, 113 + 150, 274, 48);
		add(subIDlbl);

		JLabel subIDlabel = new JLabel("  " + f.getSubjectID());
		subIDlabel.setOpaque(true);
		subIDlabel.setHorizontalAlignment(SwingConstants.LEFT);
		subIDlabel.setFont(new Font("Segoe UI Historic", Font.BOLD, 20));
		subIDlabel.setBorder(new LineBorder(new Color(192, 192, 192)));
		subIDlabel.setBackground(Color.WHITE);
		subIDlabel.setBounds(582, 113 + 150, 520, 48);
		add(subIDlabel);
		//
		JLabel lblsubName = new JLabel("   Subject Name");
		lblsubName.setOpaque(true);
		lblsubName.setHorizontalAlignment(SwingConstants.LEFT);
		lblsubName.setFont(new Font("Segoe UI Historic", Font.PLAIN, 20));
		lblsubName.setBorder(new LineBorder(new Color(192, 192, 192)));
		lblsubName.setBackground(Color.WHITE);
		lblsubName.setBounds(309, 160 + 150, 274, 48);
		add(lblsubName);

		JLabel subNamelabel = new JLabel("  " + new SubjectData().getSubjectName(f.getSubjectID()));
		subNamelabel.setOpaque(true);
		subNamelabel.setHorizontalAlignment(SwingConstants.LEFT);
		subNamelabel.setFont(new Font("Segoe UI Historic", Font.BOLD, 20));
		subNamelabel.setBorder(new LineBorder(new Color(192, 192, 192)));
		subNamelabel.setBackground(Color.WHITE);
		subNamelabel.setBounds(582, 160 + 150, 520, 48);
		add(subNamelabel);
		//
		JLabel lbllecName = new JLabel("   Lecturer Name");
		lbllecName.setOpaque(true);
		lbllecName.setHorizontalAlignment(SwingConstants.LEFT);
		lbllecName.setFont(new Font("Segoe UI Historic", Font.PLAIN, 20));
		lbllecName.setBorder(new LineBorder(new Color(192, 192, 192)));
		lbllecName.setBackground(Color.WHITE);
		lbllecName.setBounds(309, 207 + 150, 274, 48);
		add(lbllecName);

		JLabel lecNamelabel = new JLabel("  " + new LecturerData().getLecturerName(f.getLectureID()));
		lecNamelabel.setOpaque(true);
		lecNamelabel.setHorizontalAlignment(SwingConstants.LEFT);
		lecNamelabel.setFont(new Font("Segoe UI Historic", Font.BOLD, 20));
		lecNamelabel.setBorder(new LineBorder(new Color(192, 192, 192)));
		lecNamelabel.setBackground(Color.WHITE);
		lecNamelabel.setBounds(582, 207 + 150, 520, 48);
		add(lecNamelabel);
		//
		JLabel lbltimetable = new JLabel("   Time");
		lbltimetable.setOpaque(true);
		lbltimetable.setHorizontalAlignment(SwingConstants.LEFT);
		lbltimetable.setFont(new Font("Segoe UI Historic", Font.PLAIN, 20));
		lbltimetable.setBorder(new LineBorder(new Color(192, 192, 192)));
		lbltimetable.setBackground(Color.WHITE);
		lbltimetable.setBounds(309, 254 + 150, 274, 48);
		add(lbltimetable);

		JLabel timetablelabel = new JLabel("  " + new ClazzData().getTimeName(f.getTimeSlotID()));
		timetablelabel.setOpaque(true);
		timetablelabel.setHorizontalAlignment(SwingConstants.LEFT);
		timetablelabel.setFont(new Font("Segoe UI Historic", Font.BOLD, 20));
		timetablelabel.setBorder(new LineBorder(new Color(192, 192, 192)));
		timetablelabel.setBackground(Color.WHITE);
		timetablelabel.setBounds(582, 254 + 150, 520, 48);
		add(timetablelabel);
		//
		JLabel lbllocation = new JLabel("   Building");
		lbllocation.setOpaque(true);
		lbllocation.setHorizontalAlignment(SwingConstants.LEFT);
		lbllocation.setFont(new Font("Segoe UI Historic", Font.PLAIN, 20));
		lbllocation.setBorder(new LineBorder(new Color(192, 192, 192)));
		lbllocation.setBackground(Color.WHITE);
		lbllocation.setBounds(309, 301 + 150, 274, 48);
		add(lbllocation);

		JLabel locationlabel = new JLabel("  " + new ClazzData().getRoom(f.getRoomID()));
		locationlabel.setOpaque(true);
		locationlabel.setHorizontalAlignment(SwingConstants.LEFT);
		locationlabel.setFont(new Font("Segoe UI Historic", Font.BOLD, 20));
		locationlabel.setBorder(new LineBorder(new Color(192, 192, 192)));
		locationlabel.setBackground(Color.WHITE);
		locationlabel.setBounds(582, 301 + 150, 520, 48);
		add(locationlabel);
		//
		JLabel lblsemester = new JLabel("   Semester");
		lblsemester.setOpaque(true);
		lblsemester.setHorizontalAlignment(SwingConstants.LEFT);
		lblsemester.setFont(new Font("Segoe UI Historic", Font.PLAIN, 20));
		lblsemester.setBorder(new LineBorder(new Color(192, 192, 192)));
		lblsemester.setBackground(Color.WHITE);
		lblsemester.setBounds(309, 348 + 150, 274, 48);
		add(lblsemester);

		JLabel semesterlabel = new JLabel("  " + f.getSemester());
		semesterlabel.setOpaque(true);
		semesterlabel.setHorizontalAlignment(SwingConstants.LEFT);
		semesterlabel.setFont(new Font("Segoe UI Historic", Font.BOLD, 20));
		semesterlabel.setBorder(new LineBorder(new Color(192, 192, 192)));
		semesterlabel.setBackground(Color.WHITE);
		semesterlabel.setBounds(582, 348 + 150, 520, 48);
		add(semesterlabel);
		//
		JLabel lblnumStu = new JLabel("   Number of students");
		lblnumStu.setOpaque(true);
		lblnumStu.setHorizontalAlignment(SwingConstants.LEFT);
		lblnumStu.setFont(new Font("Segoe UI Historic", Font.PLAIN, 20));
		lblnumStu.setBorder(new LineBorder(new Color(192, 192, 192)));
		lblnumStu.setBackground(Color.WHITE);
		lblnumStu.setBounds(309, 395 + 150, 274, 48);
		add(lblnumStu);

		JLabel numStulabel = new JLabel("  " + String.valueOf(new ClazzData().getTotalStudentInClass(f.getClazzID())));
		numStulabel.setOpaque(true);
		numStulabel.setHorizontalAlignment(SwingConstants.LEFT);
		numStulabel.setFont(new Font("Segoe UI Historic", Font.BOLD, 20));
		numStulabel.setBorder(new LineBorder(new Color(192, 192, 192)));
		numStulabel.setBackground(Color.WHITE);
		numStulabel.setBounds(582, 395 + 150, 520, 48);
		add(numStulabel);
		//
		JLabel lblnumStupass = new JLabel("   Total students passing ");
		lblnumStupass.setOpaque(true);
		lblnumStupass.setHorizontalAlignment(SwingConstants.LEFT);
		lblnumStupass.setFont(new Font("Segoe UI Historic", Font.PLAIN, 20));
		lblnumStupass.setBorder(new LineBorder(new Color(192, 192, 192)));
		lblnumStupass.setBackground(Color.WHITE);
		lblnumStupass.setBounds(309, 442 + 150, 274, 48);
		add(lblnumStupass);

		JLabel numStupasslabel = new JLabel(
				"  " + String.valueOf(new ClazzData().getTotalStudentInClassPassing(f.getClazzID())));
		numStupasslabel.setOpaque(true);
		numStupasslabel.setHorizontalAlignment(SwingConstants.LEFT);
		numStupasslabel.setFont(new Font("Segoe UI Historic", Font.BOLD, 20));
		numStupasslabel.setBorder(new LineBorder(new Color(192, 192, 192)));
		numStupasslabel.setBackground(Color.WHITE);
		numStupasslabel.setBounds(582, 442 + 150, 520, 48);
		add(numStupasslabel);

		JLabel profilepiclabel = new JLabel();
		profilepiclabel.setBounds(20, 66 + 150, 250, 300);
		add(profilepiclabel);
		profilepiclabel.setBorder(new LineBorder(new Color(192, 192, 192), 2));
		profilepiclabel.setIcon(new ImageIcon("./assets/profilepicdefault.png"));
		profilepiclabel.setOpaque(true);
		profilepiclabel.setBackground(new Color(240, 248, 255));
		profilepiclabel.setFont(new Font("Tahoma", Font.PLAIN, 16));
		profilepiclabel.setHorizontalAlignment(SwingConstants.CENTER);
	}

	public ViewClazzPanel(Clazz f, AdminMain am, JComponent lastpanel) {
		// TODO Auto-generated constructor stub
		this(f);
		this.lastpanel = lastpanel;

		backbutton.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent arg0) {
				am.viewclazzpanel.setVisible(false);
				am.clazzpanel.updatetableData();
				am.clazzpanel.setVisible(true);

			}
		});
		// editdetailsbutton.addActionListener(new ActionListener() {
		// @Override
		// public void actionPerformed(ActionEvent e) {
		// // TODO Auto-generated method stub
		// AddClazzDialog ad = new AddClazzDialog(am, f);
		// ad.setLocationRelativeTo(null);
		// ad.setVisible(true);

		// }

		// });
		deletebutton.addActionListener(new ActionListener() {

			@Override
			public void actionPerformed(ActionEvent arg0) {
				int result = new ClazzData().deleteClazz(f.getClazzID());
				am.viewclazzpanel.setVisible(false);
				am.clazzpanel.setVisible(true);
				am.clazzpanel.updatetableData();
			}

		});

	}

}
