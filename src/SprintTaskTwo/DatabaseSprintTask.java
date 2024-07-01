package SprintTaskTwo;

import java.sql.*;
import java.util.ArrayList;

public class DatabaseSprintTask {
    private  static Connection connection;
    static {
        try {
            Class.forName("org.postgresql.Driver");
            connection= DriverManager.getConnection("jdbc:postgresql://localhost:5435/Test","postgres","aman06");
        } catch (ClassNotFoundException  | SQLException e) {
            throw new RuntimeException(e);
        }
    }
    public static ArrayList<Items> getItems(){
        ArrayList<Items> items=new ArrayList<>();
        try {
            PreparedStatement preparedStatement=connection.prepareStatement("select * from items;");
            ResultSet set=preparedStatement.executeQuery();
            while(set.next()){
                Long id =set.getLong("id");
                String name= set.getString("name");
                double price= set.getDouble("price");
                String ram= set.getString("ram");
                String memory= set.getString("memory");
                String version= set.getString("version");
                items.add(new Items(id ,name,price,ram,memory,version));
            }
            preparedStatement.close();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return items;
    }
    public static ArrayList<Comment> getAllComments(Long id){
        ArrayList<Comment> comments=new ArrayList<>();
        try {
            PreparedStatement preparedStatement=connection.prepareStatement("select comments.id as comment_id, comments.message as text,comments.post_date as date,comments.user_id as user_id ," +
                    "users.email as email, users.full_name as full_name " +
                    "from comments join users on comments.user_id = users.id where comments.item_id=? " +
                    "order by date desc");
            preparedStatement.setLong(1,id);
            ResultSet set=preparedStatement.executeQuery();
            while(set.next()){

                Comment comment=new Comment();
                comment.setId(set.getLong("comment_id"));
                comment.setMessage(set.getString("text"));
                comment.setPostDate(set.getTimestamp("date"));
                User user=new User();
                user.setId(set.getLong("user_id"));
                user.setEmail(set.getString("email"));
                user.setFullName(set.getString("full_name"));
                comment.setUser(user);
                comments.add(comment);
            }
            preparedStatement.close();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return comments;
    }
    public static void addItem(Items i){
        try {
            PreparedStatement preparedStatement= connection.prepareStatement("insert into items(name,price,ram,memory,version) values(?,?,?,?,?)");
            preparedStatement.setString(1,i.getName());
            preparedStatement.setDouble(2,i.getPrice());
            preparedStatement.setString(3,i.getRam());
            preparedStatement.setString(4,i.getMemory());
            preparedStatement.setString(5,i.getVersion());
            preparedStatement.executeUpdate();
            preparedStatement.close();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }
    public static void addComment(Comment comment){
        try {
            PreparedStatement preparedStatement= connection.prepareStatement("insert into comments(message,post_date,item_id,user_id) values(?,NOW(),?,?)");
            preparedStatement.setString(1,comment.getMessage());
            preparedStatement.setLong(2,comment.getItem().getId());
            preparedStatement.setLong(3,comment.getUser().getId());
            preparedStatement.executeUpdate();
            preparedStatement.close();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }
    public static Items getItemsById(Long id){
        Items items=null;
        try {
            PreparedStatement preparedStatement=connection.prepareStatement("select  * from items where id=?");
            preparedStatement.setLong(1,id);
            ResultSet set=preparedStatement.executeQuery();
            if(set.next()){
                Long one =set.getLong("id");
                String name=set.getString("name");
                double price = set.getDouble("price");
                String ram=set.getString("ram");
                String memory=set.getString("memory");
                String version=set.getString("version");

                items= new Items(one,name,price,ram,memory,version);
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return items;
    }
    public static void editItem(Items items){
        try {
            PreparedStatement preparedStatement=connection.prepareStatement("update items set name=? ,price=?, ram=? ,memory=?,version=?  where id=?");
            preparedStatement.setString(1, items.getName());
            preparedStatement.setDouble(2,items.getPrice());
            preparedStatement.setString(3,items.getRam());
            preparedStatement.setString(4,items.getMemory());
            preparedStatement.setString(5,items.getVersion());
            preparedStatement.setLong(6,items.getId());
            preparedStatement.executeUpdate();
            preparedStatement.close();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }
    public static void deleteItem(Long id){
        try {
            PreparedStatement preparedStatement= connection.prepareStatement("delete from items where id=?");
            preparedStatement.setLong(1,id);
            preparedStatement.executeUpdate();
            preparedStatement.close();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }
    public static void addUser(User user){
        try {
            PreparedStatement preparedStatement=connection.prepareStatement("insert into users(email,password,full_name,statuc) values (?,?,?,?)");
            preparedStatement.setString(1,user.getEmail());
            preparedStatement.setString(2,user.getPassword());
            preparedStatement.setString(3,user.getFullName());
            preparedStatement.setString(4,"user");
            preparedStatement.executeUpdate();
            preparedStatement.close();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }
    public static User getUserById(Long id){
        User user=new User();
        try {
            PreparedStatement preparedStatement=connection.prepareStatement("select *from users where id=?");
            preparedStatement.setLong(1,id);
            ResultSet set= preparedStatement.executeQuery();
            if(set.next()){
                user.setId(set.getLong("id"));
                user.setEmail(set.getString("email"));
                user.setPassword(set.getString("password"));
                user.setFullName(set.getString("full_name"));
                user.setStatus(set.getString("statuc"));
            }
            preparedStatement.close();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return user;
    }
    public static User getUser(String email){
        User user=null;
        try {
            PreparedStatement preparedStatement=connection.prepareStatement("select * from users where email=?");
            preparedStatement.setString(1,email);
            ResultSet set= preparedStatement.executeQuery();
            if(set.next()){
                Long id=set.getLong("id");
                String emailOne=set.getString("email");
                String password=set.getString("password");
                String full_name=set.getString("full_name");
                String status=set.getString("statuc");
                user=new User(id,emailOne,password,full_name,status);
            }
            preparedStatement.close();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return user;
    }
    public static ArrayList<User> getUsers(){
        ArrayList<User> users=new ArrayList<>();
        try {
            PreparedStatement preparedStatement=connection.prepareStatement("select * from users");
            ResultSet set=preparedStatement.executeQuery();
            while(set.next()){
                Long id=set.getLong("id");
                String email =set.getString("email");
                String password =set.getString("password");
                String fullName =set.getString("full_name");
                String status =set.getString("statuc");
                users.add(new User(id,email,password,fullName,status));
            }
            preparedStatement.close();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return users;
    }
    public static void deleteUser(Long id){
        try {
            PreparedStatement preparedStatement=connection.prepareStatement("delete from users where id=?");
            preparedStatement.setLong(1,id);
            preparedStatement.executeUpdate();
            preparedStatement.close();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }
}
