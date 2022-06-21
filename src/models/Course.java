package models;

import java.time.LocalDate;
import java.time.format.DateTimeFormatter;

/**
 *
 * @author Andreas
 */
public class Course {
    
    private int id;
    private String title;
    private String stream;
    private char type;
    private LocalDate start;
    private LocalDate end;

    public Course(int id, String title, String stream, char type, LocalDate start, LocalDate end) {
        this.id = id;
        this.title = title;
        this.stream = stream;
        this.type = type;
        this.start = start;
        this.end = end;
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append('{');
        sb.append(id);
        sb.append(", ").append(title);
        sb.append(", ").append(stream);
        sb.append(", ").append(type);
        sb.append(", ").append(start.format(DateTimeFormatter.ofPattern("d/M/uuuu")));
        sb.append(", ").append(end.format(DateTimeFormatter.ofPattern("d/M/uuuu")));
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

    public String getStream() {
        return stream;
    }

    public void setStream(String stream) {
        this.stream = stream;
    }

    public char getType() {
        return type;
    }

    public void setType(char type) {
        this.type = type;
    }

    public LocalDate getStart() {
        return start;
    }

    public void setStart(LocalDate start) {
        this.start = start;
    }

    public LocalDate getEnd() {
        return end;
    }

    public void setEnd(LocalDate end) {
        this.end = end;
    }
    
}
