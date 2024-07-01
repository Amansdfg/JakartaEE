package SprintTaskOne;

public class Task {
    private Long id;
    private String name;
    private String description;
    private String deadlineDate;
    private boolean done;
    public Task(){}
    public Task(Long id,String name,String description,String deadlineDate ){
        this.id=id;
        this.name=name;
        this.description=description;
        this.deadlineDate=deadlineDate;
    }
    public Task(String name,String description,String deadlineDate ){
        this.name=name;
        this.description=description;
        this.deadlineDate=deadlineDate;
    }
    public Long getId(){
        return id;
    }
    public  boolean isDone(){
        return done;
    }
    public  void setDone(boolean done){
        this.done=done;
    }
    public void setId(Long id){
        this.id=id;
    }
    public String getName(){
        return name;
    }
    public String getDescription(){
        return description;
    }
    public String getDeadlineDate(){
        return deadlineDate;
    }
    public void setName(String name){
        this.name=name;
    }
    public void setDescription(String d){
        this.description=d;
    }
    public void setDeadlineDate(String s){
        this.deadlineDate=s;
    }
    public void isDone(boolean done){
        this.done=done;
    }
    public boolean getDone(){
        return done;
    }
}
