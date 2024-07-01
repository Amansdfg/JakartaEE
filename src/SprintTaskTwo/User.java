package SprintTaskTwo;

public class User {
    private Long id;
    private String email;
    private String password;
    private String fullName;
    private String status;
    public User(){}
    public User(String email ,String password,String fullName, String status){
        this.email=email;
        this.password=password;
        this.fullName=fullName;
        this.status=status;
    }
    public User(Long id,String email,String password,String fullName,String status){
        this.id=id;
        this.email=email;
        this.password=password;
        this.fullName=fullName;
        this.status=status;
    }
    public Long getId(){
        return id;
    }
    public String getEmail(){
        return email;
    }
    public String getPassword() {
        return password;
    }
    public String getFullName(){
        return fullName;
    }
    public void setId(Long id){
        this.id=id;
    }
    public void setEmail(String email){
        this.email=email;
    }
    public void setPassword(String password){
        this.password=password;
    }
    public void setFullName(String fullName){
        this.fullName=fullName;
    }
    public void setStatus(String status){
        this.status=status;
    }
    public String getStatus(){
        return status;
    }
}
