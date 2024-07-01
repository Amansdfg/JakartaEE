package Task7.Aman.Aman;

public class Footballer {
    private String name;
    private String surname;
    private int salary;
    private String club;
    private int transferPrice;
    public Footballer(String name ,String surname,int salary,String club, int transferPrice){
        this.name=name;
        this.surname=surname;
        this.salary=salary;
        this.club=club;
        this.transferPrice=transferPrice;
    }
    public String getName(){
        return name;
    }
    public String getSurname(){
        return surname;
    }
    public String getClub(){
        return club;
    }
    public int getSalary(){
        return salary;
    }
    public int getTransferPrice(){
        return transferPrice;
    }
}
