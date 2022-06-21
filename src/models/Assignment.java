package models;

import java.time.LocalDate;
import java.time.format.DateTimeFormatter;

/**
 *
 * @author Andreas
 */
public class Assignment {
    
    private int id;
    private String title;
    private String desc;
    private LocalDate submission;
    private int course;

    public Assignment(int id, String title, String desc, LocalDate submission, int course) {
        this.id = id;
        this.title = title;
        this.desc = desc;
        this.submission = submission;
        this.course = course;
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("Assignment{");
        sb.append(id);
        sb.append(", ").append(title);
        sb.append(", ").append(desc);
        sb.append(", ").append(submission.format(DateTimeFormatter.ofPattern("d/M/uuuu")));
        sb.append(", ").append(course);
        sb.append('}');
        return sb.toString();
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getDesc() {
        return desc;
    }

    public void setDesc(String desc) {
        this.desc = desc;
    }

    public LocalDate getSubmission() {
        return submission;
    }

    public void setSubmission(LocalDate submission) {
        this.submission = submission;
    }

    public int getCourse() {
        return course;
    }

    public void setCourse(int course) {
        this.course = course;
    }
    
}
