package Student;

public class Student {
    private Long id;
    private String name;
    private String surname;
    private String birthday;
    private String city;
    public Student(){}
    public Student(String name,String surname,String birthday,String city){
        this.name=name;
        this.surname=surname;
        this.birthday=birthday;
        this.city=city;
    }
    public Student(Long id,String name,String surname,String birthday,String city){
        this.id=id;
        this.name=name;
        this.birthday=birthday;
        this.surname=surname;
        this.city=city;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getSurname() {
        return surname;
    }

    public void setSurname(String surname) {
        this.surname = surname;
    }

    public String getBirthday() {
        return birthday;
    }

    public void setBirthday(String birthday) {
        this.birthday = birthday;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }
}
