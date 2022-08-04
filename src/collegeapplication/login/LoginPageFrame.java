package collegeapplication.login;

import java.awt.Color;
import java.awt.EventQueue;
import java.awt.Font;
import java.awt.Graphics;
import java.awt.Image;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.io.File;
import java.io.IOException;

import javax.imageio.ImageIO;
import javax.swing.ImageIcon;
import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JOptionPane;
import javax.swing.JPanel;
import javax.swing.SwingConstants;
import javax.swing.Timer;
import javax.swing.UIManager;
import javax.swing.UIManager.LookAndFeelInfo;
import javax.swing.border.EmptyBorder;
import javax.swing.border.LineBorder;

import collegeapplication.admin.Admin;
import collegeapplication.admin.AdminData;
import collegeapplication.common.DataBaseConnection;

@SuppressWarnings("serial")
public class LoginPageFrame extends JFrame implements ActionListener {

	private JPanel contentPane;
	private JButton adminbutton;
	private LoginPanel adminloginpanel;
	private boolean adminchanging = false, studentchanging = false, facultychanging = false;
	private int adminpanelx = 500, adminpanely = 240;
	public Timer timer;
	private int imagenumber = 1;
	private JLabel bgimagelabel;
	private JPanel loginbuttonpanel;
	public Timer imagetimer;

	/**
	 * Launch the application.
	 */
	public static void main(String[] args) {
		EventQueue.invokeLater(new Runnable() {
			public void run() {
				try {
					if (DataBaseConnection.checkconnection()) {
						LoginPageFrame frame = new LoginPageFrame();
						frame.setVisible(true);
						// frame.setLocation(-7, 0);
					} else {
						JOptionPane.showMessageDialog(null, "Start the Database Server first", "Error",
								JOptionPane.ERROR_MESSAGE);
					}
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
		});
	}

	/**
	 * Create the frame.
	 */
	public LoginPageFrame() {
		timer = new Timer(5, this);
		imagetimer = new Timer(5000, this);
		imagetimer.start();
		setTitle("Login");
		setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		setSize(1380, 733);
		setLocationRelativeTo(null);
		contentPane = new JPanel();
		contentPane.setBorder(new LineBorder(Color.LIGHT_GRAY, 2));
		contentPane.setBackground(new Color(255, 255, 255));
		setContentPane(contentPane);
		contentPane.setLayout(null);

		Admin ad = new AdminData().getAdminData();

		JPanel panel = new JPanel();
		panel.setBackground(new Color(0, 139, 139, 220));
		panel.setBounds(0, 26, 1364, 159);
		contentPane.add(panel);
		panel.setLayout(null);

		JLabel lblSilverOakCollage = new JLabel(ad.getCollageName());
		lblSilverOakCollage.setForeground(Color.WHITE);
		lblSilverOakCollage.setFont(new Font("Segoe UI", Font.BOLD, 30));
		lblSilverOakCollage.setHorizontalAlignment(SwingConstants.LEFT);
		lblSilverOakCollage.setBounds(160, 43, 749, 57);
		panel.add(lblSilverOakCollage);

		JLabel lblLogo = new JLabel("logo");
		lblLogo.setBounds(10, 10, 140, 140);
		lblLogo.setIcon(
				new ImageIcon(ad.getRoundedProfilePic(lblLogo.getWidth(), lblLogo.getHeight(), lblLogo.getWidth())));

		panel.add(lblLogo);

		adminloginpanel = new LoginPanel("Admin", new ImageIcon("./assets/adminlogin.png"), this);
		adminloginpanel.setVisible(true);
		adminloginpanel.setLocation(adminpanelx, adminpanely);

		// contentPane.add(studentloginpanel);
		// contentPane.add(facultyloginpanel);
		contentPane.add(adminloginpanel);

		loginbuttonpanel = new JPanel() {
			protected void paintComponent(Graphics g) {
				g.setColor(getBackground());
				g.fillRect(0, 0, getWidth(), getHeight());
				super.paintComponent(g);
			}
		};
		loginbuttonpanel.setOpaque(false);
		loginbuttonpanel.setBackground(new Color(0, 0, 0, 120));
		loginbuttonpanel.setBounds(500, 189, 420, 40);
		loginbuttonpanel.setLayout(null);
		contentPane.add(loginbuttonpanel);

		adminbutton = new JButton("Admin");
		adminbutton.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				activeButton(adminbutton);
				// disableButton(facultybutton);
				// disableButton(studentbutton);
				adminchanging = true;
				studentchanging = false;
				facultychanging = false;
				timer.start();
			}
		});
		this.buttonStyle(adminbutton);
		adminbutton.setBounds(0, 0, 420, 35);
		loginbuttonpanel.add(adminbutton);
		activeButton(adminbutton);

		bgimagelabel = new JLabel("image");
		bgimagelabel.setBounds(0, 11, 1380, 683);
		contentPane.add(bgimagelabel);
		this.setBackgroundImage();

		// // add Look And Feel
		// try {
		// for (LookAndFeelInfo info : UIManager.getInstalledLookAndFeels()) {
		// if ("Nimbus".equals(info.getName())) {
		// UIManager.setLookAndFeel(info.getClassName());
		// break;
		// }
		// }
		// } catch (Exception e) {
		// // If Nimbus is not available, you can set the GUI to another look and feel.
		// }

	}

	@Override
	public void actionPerformed(ActionEvent e) {
		// TODO Auto-generated method stub
		if (!adminchanging && !studentchanging && !facultychanging) {

			imagenumber++;
			if (imagenumber > 5) {
				imagenumber = 1;
			}
			this.setBackgroundImage();
		}
		adminloginpanel.setLocation(adminpanelx, adminpanely);
		this.repaint();

	}

	public void buttonStyle(JButton button) {
		button.setFocusable(true);
		button.setForeground(Color.WHITE);
		button.setFont(new Font("Segoe UI", Font.BOLD, 15));
		button.setBorder(new EmptyBorder(0, 0, 0, 0));
		button.setBackground(Color.black);
		button.setFocusPainted(false);
		button.setBorderPainted(false);
		button.setOpaque(false);

	}

	public void activeButton(JButton button) {
		button.setForeground(Color.cyan);

	}

	public void disableButton(JButton button) {
		button.setForeground(Color.white);
	}

	public void setBackgroundImage() {
		try {
			System.out.println(imagenumber);
			Image image = ImageIO.read(new File(".//assets//backgroundimage" + imagenumber + ".jpg"));
			bgimagelabel.setIcon(new ImageIcon(
					image.getScaledInstance(bgimagelabel.getWidth(), bgimagelabel.getHeight(), Image.SCALE_SMOOTH)));

		} catch (IOException e) {

			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}