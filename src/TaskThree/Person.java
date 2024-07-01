package TaskThree;
public  class Person{
    private String name;
    private String surname;
    private int age;
    private String department;
    private int salary;
    public Person(String name,String surname ,int age, String department,int salary){
        this.name=name;
        this.surname=surname;
        this.age=age;
        this.department=department;
        this.salary=salary;
    }
    public String getName(){
        return name;
    }
    public String getSurname(){
        return surname;
    }
    public int getSalary(){
        return salary;
    }
    public String getDepartment(){
        return department;
    }
    public int getAge(){
        return age;
    }
}