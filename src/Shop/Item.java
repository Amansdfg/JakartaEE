package Shop;

public class Item {
    private Long id;
    private String name;
    private int price;
    private int amount;
    public Item(){}
    public Item(String name,int price,int amount){
        this.name=name;
        this.price=price;
        this.amount=amount;
    }
    public Item(Long id, String name,int price,int amount){
        this.id=id;
        this.name=name;
        this.price=price;
        this.amount=amount;
    }
    public String getName(){
        return name;
    }
    public int getPrice(){
        return price;
    }
    public int getAmount(){
        return amount;
    }
    public void setId(Long id){
        this.id=id;
    }
    public Long getId(){
        return id;
    }
    public void setName(String name){
        this.name=name;
    }
    public void setPrice(int price){
        this.price=price;
    }
    public void setAmount(int amount){
        this.amount=amount;
    }
}
