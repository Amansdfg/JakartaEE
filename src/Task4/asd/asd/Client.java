package Task4.asd.asd;

public class Client {
    private Long id;
    private String name;
    private String surname;
    private String food;
    public Client(){}
    public Client(Long id,String name,String surname,String food){
        this.id=id;
        this.name=name;
        this.surname=surname;
        this.food=food;
    }
    public void setId(Long id){
        this.id=id;
    }
    public Long getId(){
        return id;
    }
    public String getName() {
        return name;
    }
    public String getSurname(){
        return surname;
    }
    public String getFood(){
        return food;
    }
    public void setName(String name){
        this.name=name;
    }
    public void setSurname(String surname){
        this.surname=surname;
    }
    public void setFood(String food){
        this.food=food;
    }
}
