package Shop;
import java.sql.*;
import java.util.ArrayList;
public class DBManagerItems {
    private static Connection connection;
    static {
        try {
            Class.forName("org.post gresql.Driver");
        }catch (ClassNotFoundException e) {
            throw new RuntimeException(e);
        }
        try {
            connection= DriverManager.getConnection("jdbc:postgresql://localhost:5435/Test","postgres","aman06");
        } catch (SQLException e){
            throw new RuntimeException(e);
        }
    }
    public  static ArrayList<Item> getItems(){
        ArrayList<Item> items=new ArrayList<>();
        try {
            PreparedStatement preparedStatement=connection.prepareStatement("select * from item");
            ResultSet set =preparedStatement.executeQuery();
            while (set.next()){
                Item item=new Item();
                item.setId(set.getLong("id"));
                item.setName(set.getString("name"));
                item.setPrice(set.getInt("price"));
                item.setAmount(set.getInt("amount"));
                items.add(item);
            }
            preparedStatement.close();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return items;
    }
    public static void addItem(Item item){
        try {
            PreparedStatement preparedStatement =connection.prepareStatement("insert into item(name,price,amount) values(?,?,?)");
            preparedStatement.setString(1,item.getName());
            preparedStatement.setInt(2,item.getPrice());
            preparedStatement.setInt(3,item.getAmount());
            preparedStatement.executeUpdate();
            preparedStatement.close();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }
    public static Item getItemById(Long id){
        Item item =null;
        try {
            PreparedStatement preparedStatement=connection.prepareStatement("select * from item where id=?");
            preparedStatement.setLong(1,id);
            ResultSet set=preparedStatement.executeQuery();
            if(set.next()){
                item=new Item();
                item.setId(set.getLong("id"));
                item.setName(set.getString("name"));
                item.setPrice(set.getInt("price"));
                item.setAmount(set.getInt("amount"));
            }
            preparedStatement.close();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return item;
    }
    public static void edit(Long id ,String name, int price,int amount){
        try {
            PreparedStatement preparedStatement=connection.prepareStatement("update  item set name=? ,price=? ,amount=? where id=?");
            preparedStatement.setString(1,name);
            preparedStatement.setInt(2,price);
            preparedStatement.setInt(3,amount);
            preparedStatement.setLong(4,id);
            preparedStatement.executeUpdate();
            preparedStatement.close();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }
    public static void delete(Long id){
        try {
            PreparedStatement preparedStatement=connection.prepareStatement("delete from item where id=?");
            preparedStatement.setLong(1,id);
            preparedStatement.executeUpdate();
            preparedStatement.close();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }
}
