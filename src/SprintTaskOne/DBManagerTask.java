package SprintTaskOne;

import java.sql.*;
import java.util.ArrayList;

public class DBManagerTask {
    public static Connection connection;
    static {
        try {
            Class.forName("org.postgresql.Driver");
            connection=DriverManager.getConnection("jdbc:postgresql://localhost:5435/Test","postgres","aman06");
        } catch (ClassNotFoundException | SQLException e) {
            throw new RuntimeException(e);
        }

    }
    public static void addTask(Task task){
        try {
            PreparedStatement preparedStatement=connection.prepareStatement("insert into tasks(name,description,deadlineDate,done) values (?,?,?,?)");
            preparedStatement.setString(1,task.getName());
            preparedStatement.setString(2,task.getDescription());
            preparedStatement.setString(3,task.getDeadlineDate());
            preparedStatement.setBoolean(4,task.getDone());
            preparedStatement.executeUpdate();
            preparedStatement.close();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }
    public  static ArrayList<Task> getTasks(){
        ArrayList<Task> tasks=new ArrayList<>();
        try {
            PreparedStatement preparedStatement=connection.prepareStatement("select * from tasks");
            ResultSet set= preparedStatement.executeQuery();
            while(set.next()){
                Task task=new Task();
                task.setId(set.getLong("id"));
                task.setName(set.getString("name"));
                task.setDescription(set.getString("description"));
                task.setDeadlineDate(set.getString("deadlinedate"));
                task.setDone(set.getBoolean("done"));
                tasks.add(task);
            }
            preparedStatement.close();
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
        return tasks;
    }
    public static Task getTask(Long id){
        Task task =new Task();
        try {
            PreparedStatement preparedStatement=connection.prepareStatement("select * from tasks where id=?;");
            preparedStatement.setLong(1,id);
            ResultSet set= preparedStatement.executeQuery();
            if(set.next()){
                task.setId(set.getLong("id"));
                task.setName(set.getString("name"));
                task.setDescription(set.getString("description"));
                task.setDeadlineDate(set.getString("deadlinedate"));
                task.setDone(set.getBoolean("done"));
            }
            preparedStatement.close();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return task;
    }
    public static void saveTask(Long id,String name,String description,String deadline,boolean isDone){
        try {
            PreparedStatement preparedStatement=connection.prepareStatement("update tasks set name=?, description=?,deadlineDate=?, done=? where id=?");
            preparedStatement.setString(1,name);
            preparedStatement.setString(2,description);
            preparedStatement.setString(3,deadline);
            preparedStatement.setBoolean(4,isDone);
            preparedStatement.setLong(5,id);
            preparedStatement.executeUpdate();
            preparedStatement.close();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }
    public static void deleteTask(Long id){
        try {
            PreparedStatement preparedStatement=connection.prepareStatement("delete from tasks where id=?");
            preparedStatement.setLong(1,id);
            preparedStatement.executeUpdate();
            preparedStatement.close();
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }

}
