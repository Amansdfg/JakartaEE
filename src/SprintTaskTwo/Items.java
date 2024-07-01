package SprintTaskTwo;
public class Items {
    private Long id;
    private String name;
    private double price;
    private String ram;
    private String memory;
    private String version;
    public Items(){}
    public Items(Long id,String name,double price,String ram,String memory,String version){
        this.id=id;
        this.name=name;
        this.price=price;
        this.ram=ram;
        this.memory=memory;
        this.version=version;
    }
    public Long getId(){
        return id;
    }
    public String getName(){
        return name;
    }
    public double getPrice(){
        return price;
    }
    public void setId(Long id){
        this.id=id;
    }
    public void setName(String name){
        this.name=name;
    }
    public void setPrice(double price){
        this.price=price;
    }
    public void setRam(String ram){
        this.ram=ram;
    }
    public void setMemory(String memory){
        this.memory=memory;
    }
    public void setVersion(String version){
        this.version=version;
    }

    public String getRam(){
        return ram;
    }
    public String getMemory(){
        return memory;
    }
    public String getVersion(){
        return version;
    }
}
