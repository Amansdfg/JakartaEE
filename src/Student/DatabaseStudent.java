package Student;
import org.postgresql.Driver;

import java.sql.*;
import java.util.ArrayList;

public class DatabaseStudent {
    private static Connection connection;
    static {
        try {
            Class.forName("org.postgresql.Driver");
            connection= DriverManager.getConnection("jdbc:postgresql://localhost:5435/Test","postgres","aman06");
        } catch (SQLException | ClassNotFoundException e) {
            throw new RuntimeException(e);
        }
    }
    public  static void addStudent(String name,String surname,String birthday,String city){
        try {
            PreparedStatement preparedStatement=connection.prepareStatement("insert into student(name,surname, birthday,city) values (?,?,?,?)");
            preparedStatement.setString(1,name);
            preparedStatement.setString(2,surname);
            preparedStatement.setString(3,birthday);
            preparedStatement.setString(4,city);
            preparedStatement.executeUpdate();
            preparedStatement.close();

        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }
    public static ArrayList<Student> getStudents(){
        ArrayList<Student> students=new ArrayList<>();
        try {
            PreparedStatement preparedStatement=connection.prepareStatement("select * from student");
            ResultSet set=preparedStatement.executeQuery();
            while(set.next()){
                Long id =set.getLong("id");
                String name=set.getString("name");
                String surname= set.getString("surname");
                String birthday=set.getString("birthday");
                String city=set.getString("city");
                students.add(new Student(id,name,surname,birthday,city));
            }
            preparedStatement.close();
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
        return students;
    }
    public static Student getStudentById(Long id){
        Student student=new Student();
        try {
            PreparedStatement preparedStatement=connection.prepareStatement("select * from student where id=?");
            preparedStatement.setLong(1,id);
            ResultSet set= preparedStatement.executeQuery();
            if(set.next()){
                String name=set.getString("name");
                String surname=set.getString("surname");
                String birthday=set.getString("birthday");
                String city=set.getString("city");
                student.setName(name);
                student.setSurname(surname);
                student.setBirthday(birthday);
                student.setCity(city);
                student.setId(id);
            }
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
        return student;
    }
    public static void save(Long id ,String name,String surname,String birthday,String city){
        try {
            PreparedStatement preparedStatement=connection.prepareStatement("update student set name=?,surname=?,birthday=?,city=? where id=?");
            preparedStatement.setString(1,name);
            preparedStatement.setString(2,surname);
            preparedStatement.setString(3,birthday);
            preparedStatement.setString(4,city);
            preparedStatement.setLong(5,id);
            preparedStatement.executeUpdate();
            preparedStatement.close();
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }
    public static void delete(Long id){
        try {
            PreparedStatement preparedStatement=connection.prepareStatement("delete from student where id=?");
            preparedStatement.setLong(1,id);
            preparedStatement.executeUpdate();
            preparedStatement.close();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }
}
