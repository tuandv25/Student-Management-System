package collegeapplication.student;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import javax.swing.JOptionPane;

import collegeapplication.common.DataBaseConnection;

public class StudentData {

	static Connection con = DataBaseConnection.getConnection();

	public static void closeConnection() throws SQLException {
		con.close();
	}

	public int addStudent(Student s) {
		int result = 0;
		String query = "insert into student values(?,?,?,?,?,?,?)";
		try {
			PreparedStatement pr = con.prepareStatement(query);
			pr.setString(1, s.getStudentID());
			pr.setString(3, s.getStudentName());
			pr.setString(2, s.getDept_id());
			pr.setString(4, s.getBirthDate());
			pr.setString(5, s.getGender());
			pr.setString(6, s.getCpa());
			pr.setString(7, s.getTotalCredits());
			result = pr.executeUpdate();
			pr.close();
			return result;

		}

		catch (Exception ex) {
			ex.printStackTrace();
		}
		return result;
	}

	public int deleteStudent(String studentID) {
		int result = 0;
		String query = "delete from student where studentID = '" + studentID + "'";
		try {
			PreparedStatement pr = con.prepareStatement(query);
			result = pr.executeUpdate();
			pr.close();
			return result;
		}

		catch (Exception ex) {
			ex.printStackTrace();
		}
		return result;
	}

	public int updateStudentData(Student sold, Student s) {
		int result = 0;
		String query = "update student set studentID=?,dept_ID=?,studentName=?,DOB=?,gender=?,CPA=?,total_cred=? where studentID='"
				+ sold.getStudentID() + "'";
		try {

			PreparedStatement pr = con.prepareStatement(query);
			pr.setString(1, s.getStudentID());
			pr.setString(3, s.getStudentName());
			pr.setString(2, s.getDept_id());
			pr.setString(4, s.getBirthDate());
			pr.setString(5, s.getGender());
			pr.setString(6, s.getCpa());
			pr.setString(7, s.getTotalCredits());
			result = pr.executeUpdate();
			pr.close();
			return result;

		}

		catch (Exception ex) {
			ex.printStackTrace();
		}
		return result;
	}

	public int getTotalStudentInCource(String Courcecode) {
		int studentID = 0;

		String query = "select studentID from student where dept_ID='" + Courcecode + "'";
		try {
			Statement st = con.createStatement();
			ResultSet rs = st.executeQuery(query);

			while (rs.next()) {
				studentID++;
			}
			st.close();
			rs.close();
			return studentID;
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return studentID;
	}

	public ResultSet getStudentinfo(String condition) {
		ResultSet rs = null;
		String query = "select s.studentID as 'Student ID',s.studentName as 'Full name', s.DOB as 'DOB',s.gender as 'Gender',(select dept_Name from department where dept_ID=s.dept_ID) as 'Department' from student s "
				+ condition + " order by s.studentID asc";

		try {
			Statement st = con.createStatement();
			rs = st.executeQuery(query);
			return rs;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return rs;
	}

	public ResultSet searchStudent(String query) {

		query += " order by s.dept_ID asc,s.semoryear asc,s.studentID asc";
		ResultSet rs = null;
		try {
			Statement st = con.createStatement();
			rs = st.executeQuery(query);
			return rs;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return rs;
	}

	public Student getStudentDetails(Long studentID) {
		Student s = new Student();

		String query = " select * from student where studentID=" + studentID;
		try {
			Statement st = con.createStatement();
			ResultSet rs = st.executeQuery(query);
			rs.next();
			s.setStudentID(rs.getString(1));
			s.setStudentName(rs.getString(3));
			s.setDept_id(rs.getString(2));
			s.setBirthDate(rs.getString(4));
			s.setGender(rs.getString(5));
			s.setCpa(rs.getString(6));
			s.setTotalCredits(rs.getString(7));
			return s;
		}

		catch (Exception e) {
			e.printStackTrace();
		}
		return s;
	}

	public Student getStudentDetails(int row) {
		Student s = new Student();
		String query = "select * from student where sr_no=" + row;
		try {

			Statement st = con.createStatement();
			ResultSet rs = st.executeQuery(query);
			rs.next();
			s.setStudentID(rs.getString(1));
			s.setStudentName(rs.getString(2));
			s.setDept_id(rs.getString(3));
			s.setBirthDate(rs.getString(4));
			s.setGender(rs.getString(5));
			s.setCpa(rs.getString(6));
			s.setTotalCredits(rs.getString(7));
			return s;

		}

		catch (Exception e) {
			e.printStackTrace();
		}
		return s;
	}

	public Student getStudentDetailsByUserId(String userid) {
		Student s = new Student();
		String query = "select * from student where studentID='" + userid + "'";
		try {

			Statement st = con.createStatement();
			ResultSet rs = st.executeQuery(query);
			rs.next();
			s.setStudentID(rs.getString(1));
			s.setStudentName(rs.getString(2));
			s.setDept_id(rs.getString(3));
			s.setBirthDate(rs.getString(4));
			s.setGender(rs.getString(5));
			s.setCpa(rs.getString(6));
			s.setTotalCredits(rs.getString(7));
			return s;

		}

		catch (Exception e) {
			e.printStackTrace();
		}
		return s;
	}

	public int getTotalStudents() {
		int totalstudent = 0;
		try {
			Statement st = con.createStatement();
			ResultSet rs = st.executeQuery("select * from student");
			while (rs.next()) {
				totalstudent++;
			}
			rs.close();
			st.close();
			return totalstudent;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return totalstudent;
	}

	public ResultSet getMarkSheet(String studentID, String condition) {
		ResultSet rs = null;
		String query = "select ms.studentID as 'Student ID', c.subjectID as 'Subject Code',s.subjectName as 'Subject Name', ms.mark as 'Mark (/4)',"
				+
				" ms.grade as 'Grade', c.semester as 'Semester' from managestudent as ms, class as c,subject as s where ms.classID = c.classID and c.subjectID = s.subjectID and studentID='"
				+ studentID + "' order by " + condition + " desc";

		try {
			Statement st = con.createStatement();
			rs = st.executeQuery(query);
			return rs;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return rs;

	}

	public boolean isExist(String studentID) {
		try {
			String query = " select count(*) from student where studentID='" + studentID + "'";

			Statement st = con.createStatement();
			ResultSet rs = st.executeQuery(query);
			rs.next();
			return rs.getInt(1) == 1 ? true : false;
		} catch (Exception exp) {
			exp.printStackTrace();
		}
		return false;
	}

	public boolean checkPassword(String userid, String password) {
		boolean result = false;
		try {
			String query = "select count(*) from student where userid='" + userid + "' and password='" + password
					+ "'";
			Statement st = con.createStatement();
			ResultSet rs = st.executeQuery(query);
			rs.next();
			if (rs.getInt(1) > 0) {
				result = true;
			} else {
				JOptionPane.showMessageDialog(null, "Incorrect User-Id or Password", "Error",
						JOptionPane.ERROR_MESSAGE);
			}

		} catch (Exception exp) {
			exp.printStackTrace();
		}
		return result;
	}

	public ArrayList<Student> getStudentsDetails(String condition) {
		ArrayList<Student> list = new ArrayList<Student>();
		String query = "select * from student s " + condition
				+ " order by s.dept_ID asc,s.semoryear asc,s.studentID asc";
		try {

			Statement st = con.createStatement();
			ResultSet rs = st.executeQuery(query);

			while (rs.next()) {
				Student s = new Student();
				s.setStudentID(rs.getString(1));
				s.setStudentName(rs.getString(2));
				s.setDept_id(rs.getString(3));
				s.setBirthDate(rs.getString(4));
				s.setGender(rs.getString(5));
				s.setCpa(rs.getString(6));
				s.setTotalCredits(rs.getString(7));
				list.add(s);
			}

		}

		catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}

	public String getStudentName(String userid) {
		String name = "";
		try {
			String query = "select concat(studentName,' ',dept_ID) from student where userid='" + userid + "'";
			Statement st = con.createStatement();
			ResultSet rs = st.executeQuery(query);
			rs.next();
			name = rs.getString(1);

			rs.close();
			st.close();

		} catch (Exception exp) {
			exp.printStackTrace();
		}
		return name;
	}

}
