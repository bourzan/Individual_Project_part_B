package individual_project_part_b;

import dao.DBDao;
import java.util.List;
import models.Course;

/**
 *
 * @author Andreas
 */
public class Individual_Project_part_B {

    public static void main(String[] args) {
        
        List<Course> cours = DBDao.getAllCourses();
        System.out.println(DBDao.getSchool(cours));
    }
    
}
