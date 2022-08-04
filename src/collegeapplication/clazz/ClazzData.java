package collegeapplication.clazz;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import collegeapplication.common.DataBaseConnection;
import collegeapplication.student.Student;
import collegeapplication.subject.SubjectData;

public class ClazzData {

	static Connection con = DataBaseConnection.getConnection();

	public static void closeConnection() throws SQLException {
		con.close();
	}

	public int addClazz(Clazz c) {
		int result = 0;
		try {
			String query = "insert into class values(?,?,?,?,?,?)";
			PreparedStatement pr = con.prepareStatement(query);
			pr.setString(1, c.getClazzID());
			pr.setString(2, c.getSubjectID());
			pr.setString(3, c.getLectureID());
			pr.setString(4, c.getRoomID());
			pr.setString(5, c.getTimeSlotID());
			pr.setInt(6, Integer.parseInt(c.getSemester()));
			result = pr.executeUpdate();
			pr.close();
		} catch (Exception exp) {
			exp.printStackTrace();
		}
		return result;
	}

	// concat(c.totalsemoryear,' ',c.semoryear) as 'Total Sem/Year'
	public ResultSet getClazzinfo() {

		ResultSet st = null;
		try {
			String query = "select c.classID as 'Class ID',concat(s.subjectID,'-',s.subjectName) as 'Subject',concat(t.start_hour,':',t.start_minute,'-',t.end_hour,':',t.end_minute,'-',t.day) as 'Time',concat(r.roomNumber,'-',r.building) as 'Classroom', c.semester as 'Semester' "
					+ "from class as c,room as r,timeslot as t,subject as s where c.roomID = r.roomID and c.timeslotID = t.timeslotID and c.subjectID = s.subjectID order by c.classID";
			PreparedStatement pr = con.prepareStatement(query);
			st = pr.executeQuery();
			return st;
		} catch (Exception exp) {
			exp.printStackTrace();
		}
		return st;
	}

	public int getTotalClazz() {
		int totalrow = 0;
		try {
			Statement pr = con.createStatement();
			ResultSet st = pr.executeQuery("select * from class");
			while (st.next()) {
				totalrow++;
			}
			pr.close();

			return totalrow;

		} catch (Exception exp) {
			exp.printStackTrace();
		}
		return totalrow;
	}

	public String[] getClazzNameBySubjectCode(String code) {
		String clazzname[];
		int i = 0;
		String s = new SubjectData().getSubjectName(code);
		clazzname = new String[getTotalClazz() + 1];
		clazzname[i++] = "---" + s + "---";

		try {
			String sql = "select concat(classID,'-',start_hour,':',start_minute,'-',end_hour,':',end_minute,'-',day,'--P',roomNumber,'-',building,'-',semester)"
					+ " from class as c, room as r, timeslot as t where c.roomID = r.roomID and c.timeslotID=t.timeslotID and c.subjectID ='"
					+ code + "'";
			Statement pr = con.createStatement();
			ResultSet st = pr.executeQuery(sql);
			while (st.next()) {
				clazzname[i++] = st.getString(1);
			}
			pr.close();
			st.close();
			return clazzname;

		} catch (Exception exp) {
			exp.printStackTrace();
		}
		return clazzname;

	}

	public int deleteClazz(String classID) {
		int result = 0;
		String query = "delete from class where classID = '" + classID + "'";
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

	public String[] getClazzcode() {
		String classID[] = new String[this.getTotalClazz()];
		String query = "select classID from class";
		try {
			Statement pr = con.createStatement();
			ResultSet st = pr.executeQuery(query);
			int i = 0;
			while (st.next()) {
				classID[i++] = st.getString(1);
			}
			pr.close();
			st.close();

			return classID;

		} catch (Exception exp) {
			exp.printStackTrace();
		}
		return classID;

	}

	public String getClazzcode(String clazzname) {
		String query = "select classID from class where clazzname='" + clazzname + "'";
		String classID = null;
		try {
			Statement pr = con.createStatement();
			ResultSet st = pr.executeQuery(query);
			st.next();
			classID = st.getString(1);
			pr.close();
			st.close();
			return classID;

		} catch (Exception exp) {
			exp.printStackTrace();
		}
		return classID;
	}

	public String getsemoryear(String classID) {
		String query = "select semoryear from class where classID='" + classID + "'";
		String semoryear = null;
		try {
			Statement pr = con.createStatement();
			ResultSet st = pr.executeQuery(query);

			st.next();
			semoryear = st.getString(1);

			pr.close();
			st.close();
			return semoryear;

		} catch (Exception exp) {
			exp.printStackTrace();
		}
		return semoryear;
	}

	public String getclazzname(String classID) {
		String query = "select clazzname from class where classID='" + classID + "'";
		String clazzname = null;
		try {
			Statement pr = con.createStatement();
			ResultSet st = pr.executeQuery(query);

			st.next();
			clazzname = st.getString(1);

			pr.close();
			st.close();
			return clazzname;

		} catch (Exception exp) {
			exp.printStackTrace();
		}
		return clazzname;
	}

	public boolean isClazzCodeExist(String classID) {
		try {

			Statement st = con.createStatement();
			ResultSet rs = st.executeQuery("select count(*) from class where classID='" + classID + "'");
			rs.next();
			if (rs.getInt(1) > 0) {
				return true;
			}
			rs.close();
			st.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return false;
	}

	public boolean isClazzNameExist(String clazzname) {
		try {

			Statement st = con.createStatement();
			ResultSet rs = st.executeQuery("select count(*) from class where clazzname='" + clazzname + "'");
			rs.next();
			if (rs.getInt(1) > 0) {
				return true;
			}
			rs.close();
			st.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return false;
	}

	public boolean isDeclared(String classID, int semoryear) {
		boolean isdeclared = false;
		try {
			String query = "select isdeclared from result where classID='" + classID + "' and semoryear="
					+ semoryear;
			Statement st = con.createStatement();
			ResultSet rs = st.executeQuery(query);
			while (rs.next()) {
				isdeclared = rs.getBoolean(1);
			}
		} catch (Exception exp) {
			exp.printStackTrace();
		}
		return isdeclared;
	}

	public Clazz getClazzDetails(Long classID) {
		Clazz s = new Clazz();

		String query = " select * from class where classID=" + classID;
		try {
			Statement st = con.createStatement();
			ResultSet rs = st.executeQuery(query);
			rs.next();
			s.setClazzID(rs.getString(1));
			s.setSubjectID(rs.getString(2));
			s.setLectureID(rs.getString(3));
			s.setRoomID(rs.getString(4));
			s.setTimeSlotID(rs.getString(5));
			s.setSemester(rs.getString(6));
			return s;
		}

		catch (Exception e) {
			e.printStackTrace();
		}
		return s;
	}

	// --------------ROOM-----------------
	public int getTotalRoom() {
		int totalrow = 0;
		try {
			Statement pr = con.createStatement();
			ResultSet st = pr.executeQuery("select * from room");
			while (st.next()) {
				totalrow++;
			}
			pr.close();

			return totalrow;

		} catch (Exception exp) {
			exp.printStackTrace();
		}
		return totalrow;
	}

	public String[] getRoomName() {
		String roomname[];
		int i = 0;
		roomname = new String[getTotalRoom() + 1];
		roomname[i++] = "---Select Room---";

		try {
			Statement pr = con.createStatement();
			ResultSet st = pr.executeQuery("select concat(roomID,'-',building,'-',roomNumber) from room");

			while (st.next()) {
				roomname[i++] = st.getString(1);
			}
			pr.close();
			st.close();
			return roomname;

		} catch (Exception exp) {
			exp.printStackTrace();
		}
		return roomname;

	}

	public String getRoom(String ID) {
		try {
			String query = "select concat(building,' - ',roomNumber) from room where roomID='"
					+ ID + "'";
			Statement st = con.createStatement();
			ResultSet rs = st.executeQuery(query);
			rs.next();
			return rs.getString(1);
		} catch (Exception exp) {
			exp.printStackTrace();
		}
		return "";
	}

	// ------------------- TimeSlot --------------------------
	public int getTotalTimeSlot() {
		int totalrow = 0;
		try {
			Statement pr = con.createStatement();
			ResultSet st = pr.executeQuery("select * from timeslot");
			while (st.next()) {
				totalrow++;
			}
			pr.close();

			return totalrow;

		} catch (Exception exp) {
			exp.printStackTrace();
		}
		return totalrow;
	}

	public String[] getTimeSlotName() {
		String timeslotname[];
		int i = 0;
		timeslotname = new String[getTotalTimeSlot() + 1];
		timeslotname[i++] = "---Select TimeSlot---";

		try {
			Statement pr = con.createStatement();
			ResultSet st = pr.executeQuery(
					"select concat(timeslotID,'-',start_hour,':',start_minute,'-',end_hour,':',end_minute,'-',day) from timeslot");

			while (st.next()) {
				timeslotname[i++] = st.getString(1);
			}
			pr.close();
			st.close();
			return timeslotname;

		} catch (Exception exp) {
			exp.printStackTrace();
		}
		return timeslotname;

	}

	public String getTimeName(String ID) {
		try {
			String query = "select concat(start_hour,':',start_minute,' - ',end_hour,':',end_minute,' - ',day) from timeslot where timeslotID='"
					+ ID + "'";
			Statement st = con.createStatement();
			ResultSet rs = st.executeQuery(query);
			rs.next();
			return rs.getString(1);
		} catch (Exception exp) {
			exp.printStackTrace();
		}
		return "";
	}

	// -------------------- Manage Student -----------------------------
	// add manage student
	public int addManageStudent(String studentID, String classID) {
		int result = 0;
		try {
			String query = "insert into managestudent(studentID,classID) values(?,?)";
			PreparedStatement pr = con.prepareStatement(query);
			pr.setString(1, studentID);
			pr.setString(2, classID);
			// pr.setString(3, );
			// pr.setString(4, );
			result = pr.executeUpdate();
			pr.close();
		} catch (Exception exp) {
			exp.printStackTrace();
		}
		return result;
	}

	// update manage student
	public int updateManageStudent(Student s, String classID, String grade, Float mark, int cre) {
		int result = 0;
		try {
			String query = "update managestudent set grade=?,mark=? where studentID=? and classID=?";
			PreparedStatement pr1 = con.prepareStatement(query);
			pr1.setString(1, grade);
			pr1.setFloat(2, mark);
			pr1.setString(3, s.getStudentID());
			pr1.setString(4, classID);
			result = pr1.executeUpdate();

			Float cpa = Float.parseFloat(s.getCpa());
			Integer totalcre = Integer.parseInt(s.getTotalCredits());
			cpa = (cpa * totalcre + cre * mark) / (totalcre + cre);
			totalcre += cre;
			String query2 = "update student set CPA=?, total_cred=? where studentID=?";
			PreparedStatement pr2 = con.prepareStatement(query2);
			pr2.setFloat(1, cpa);
			pr2.setInt(2, totalcre);
			pr2.setString(3, s.getStudentID());
			result = pr2.executeUpdate();
			pr1.close();
			pr2.close();
		} catch (Exception exp) {
			exp.printStackTrace();
		}
		return result;
	}

	// check managestudent
	public boolean ManageStudentIsExist(String studentID, String classID) {
		try {
			String query = " select count(*) from managestudent where studentID='" + studentID + "' and classID ='"
					+ classID + "'";

			Statement st = con.createStatement();
			ResultSet rs = st.executeQuery(query);
			rs.next();
			return rs.getInt(1) == 1 ? true : false;
		} catch (Exception exp) {
			exp.printStackTrace();
		}
		return false;
	}

	//
	public int getTotalStudentInClass(String classID) {
		int total = 0;
		try {
			Statement pr = con.createStatement();
			ResultSet st = pr.executeQuery("select count(*) from managestudent where classID='" + classID + "'");
			st.next();
			total = st.getInt(1);
			return total;

		} catch (Exception exp) {
			exp.printStackTrace();
		}
		return total;
	}

	public int getTotalStudentInClassPassing(String classID) {
		int total = 0;
		try {
			Statement pr = con.createStatement();
			ResultSet st = pr
					.executeQuery("select count(*) from managestudent where classID='" + classID + "' and mark >= 1");
			st.next();
			total = st.getInt(1);
			return total;

		} catch (Exception exp) {
			exp.printStackTrace();
		}
		return total;
	}

}
