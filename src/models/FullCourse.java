package models;

import java.util.List;

/**
 *
 * @author Andreas
 */
public class FullCourse {
    
    private Course course;
    private List<Student> students;
    private List<Trainer> trainers;
    private List<Assignment> assignments;

    public FullCourse() {
    }

    public FullCourse(Course course) {
        this.course = course;
    }
    
    public FullCourse(Course course, List<Student> students, List<Trainer> trainers, List<Assignment> assignments) {
        this.course = course;
        this.students = students;
        this.trainers = trainers;
        this.assignments = assignments;
    }
    
    public Course getCourse() {
        return course;
    }
    
    public void setCourse(Course course) {
        this.course = course;
    }

    public List<Student> getStudents() {
        return students;
    }

    public void setStudents(List<Student> students) {
        this.students = students;
    }

    public List<Trainer> getTrainers() {
        return trainers;
    }

    public void setTrainers(List<Trainer> trainers) {
        this.trainers = trainers;
    }

    public List<Assignment> getAssignments() {
        return assignments;
    }

    public void setAssignments(List<Assignment> assignments) {
        this.assignments = assignments;
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("FullCourse(");
        sb.append(course);
        sb.append(", Students:").append(students);
        sb.append(", Trainers:").append(trainers);
        sb.append(", Assignments:").append(assignments);
        sb.append(')');
        return sb.toString();
    }
    
    
    
}
