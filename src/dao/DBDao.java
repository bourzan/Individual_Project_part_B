package dao;

import java.util.ArrayList;
import java.util.List;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import models.Assignment;
import models.Course;
import models.FullCourse;
import models.Student;
import models.Trainer;
import utils.DBUtil;

/**
 *
 * @author Andreas
 */
public class DBDao {
    
    public static List<Student> getAllStudents() {
        Connection con = DBUtil.getConnection();
        if (con == null) return null;
        List<Student> studs = new ArrayList<>();
        String sql = "SELECT * FROM students";
        PreparedStatement pst = null;
        ResultSet rs = null;
        try {
            pst = con.prepareStatement(sql);
            rs = pst.executeQuery();
            while (rs.next()) {
                Student s = new Student(rs.getInt(1),rs.getString(2),rs.getString(3),rs.getDate(4).toLocalDate(),rs.getInt(5));
                studs.add(s);
            }
        } catch (SQLException ex) {
            System.out.println(ex);
        }
        DBUtil.closeConnection(con, pst, rs);
        return studs;
    }
    
    public static List<Trainer> getAllTrainers() {
        Connection con = DBUtil.getConnection();
        if (con == null) return null;
        List<Trainer> trains = new ArrayList<>();
        String sql = "SELECT * FROM trainers";
        PreparedStatement pst = null;
        ResultSet rs = null;
        try {
            pst = con.prepareStatement(sql);
            rs = pst.executeQuery();
            while (rs.next()) {
                Trainer t = new Trainer(rs.getInt(1),rs.getString(2),rs.getString(3),rs.getString(4));
                trains.add(t);
            }
        } catch (SQLException ex) {
            System.out.println(ex);
        }
        DBUtil.closeConnection(con, pst, rs);
        return trains;
    }
    
    public static List<Assignment> getAllAssignments() {
        Connection con = DBUtil.getConnection();
        if (con == null) return null;
        List<Assignment> asses = new ArrayList<>();
        String sql = "SELECT * FROM assignments";
        PreparedStatement pst = null;
        ResultSet rs = null;
        try {
            pst = con.prepareStatement(sql);
            rs = pst.executeQuery();
            while (rs.next()) {
                Assignment a = new Assignment(rs.getInt(1),rs.getString(2),rs.getString(3),rs.getDate(4).toLocalDate(),rs.getInt(5));
                asses.add(a);
            }
        } catch (SQLException ex) {
            System.out.println(ex);
        }
        DBUtil.closeConnection(con, pst, rs);
        return asses;
    }
    
    public static List<Course> getAllCourses() {
        Connection con = DBUtil.getConnection();
        if (con == null) return null;
        List<Course> cours = new ArrayList<>();
        String sql = "SELECT * FROM courses";
        PreparedStatement pst = null;
        ResultSet rs = null;
        try {
            pst = con.prepareStatement(sql);
            rs = pst.executeQuery();
            while (rs.next()) {
                Course c = new Course(rs.getInt(1),rs.getString(2),rs.getString(3),rs.getString(4).charAt(0),
                                      rs.getDate(5).toLocalDate(),rs.getDate(6).toLocalDate());
                cours.add(c);
            }
        } catch (SQLException ex) {
            System.out.println(ex);
        }
        DBUtil.closeConnection(con, pst, rs);
        return cours;
    }
    
    public static List<FullCourse> getSchool(List<Course> cours) {
        Connection con = DBUtil.getConnection();
        if (con == null) return null;
        String sql;
        PreparedStatement pst = null;
        ResultSet rs = null;
        List<FullCourse> fc = new ArrayList<>(cours.size());
        for (int i=0; i < cours.size(); i++) {
            fc.add(new FullCourse(cours.get(i)));
        }
        sql = "SELECT * FROM students WHERE student_id IN (SELECT sc_student FROM student_course WHERE sc_course = ?)";
        for (int i=0; i < fc.size(); i++) {
            try {
                pst = con.prepareStatement(sql);
                pst.setInt(1, fc.get(i).getCourse().getId());
                rs = pst.executeQuery();
                List<Student> ls = new ArrayList<>();
                while (rs.next()) {
                    Student s = new Student(rs.getInt(1),rs.getString(2),rs.getString(3),rs.getDate(4).toLocalDate(),rs.getInt(5));
                    ls.add(s);
                }
                fc.get(i).setStudents(ls);
            } catch (SQLException ex) {
                System.out.println(ex);
            }
        }
        sql = "SELECT * FROM trainers WHERE trainer_id IN (SELECT tc_trainer FROM trainer_course WHERE tc_course = ?)";
        for (int i=0; i < fc.size(); i++) {
            try {
                pst = con.prepareStatement(sql);
                pst.setInt(1, fc.get(i).getCourse().getId());
                rs = pst.executeQuery();
                List<Trainer> lt = new ArrayList<>();
                while (rs.next()) {
                    Trainer t = new Trainer(rs.getInt(1),rs.getString(2),rs.getString(3),rs.getString(4));
                    lt.add(t);
                }
                fc.get(i).setTrainers(lt);
            } catch (SQLException ex) {
                System.out.println(ex);
            }
        }
        sql = "SELECT * FROM assignments WHERE course_id = ?";
        for (int i=0; i < fc.size(); i++) {
            try {
                pst = con.prepareStatement(sql);
                pst.setInt(1, fc.get(i).getCourse().getId());
                rs = pst.executeQuery();
                List<Assignment> la = new ArrayList<>();
                while (rs.next()) {
                    Assignment a = new Assignment(rs.getInt(1),rs.getString(2),rs.getString(3),rs.getDate(4).toLocalDate(),rs.getInt(5));
                    la.add(a);
                }
                fc.get(i).setAssignments(la);
            } catch (SQLException ex) {
                System.out.println(ex);
            }
        }
        DBUtil.closeConnection(con, pst, rs);
        return fc;
    }
    
}
