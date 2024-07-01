package Task5.Aman.Aman;

public class Dear {
    private String name;
    private int age;
    private String gender;
    Dear(){}
    Dear(String name,int age,String gender){
        this.name=name;
        this.age=age;
        this.gender=gender;
    }
    public String getName(){
        return name;
    }
    public int getAge(){
        return age;
    }
    public String getGender(){
        return gender;
    }
}
