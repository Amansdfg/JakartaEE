package SprintTaskTwo;

import java.sql.Timestamp;

public class Comment {
    private Long id;
    private String message;
    private Timestamp postDate;
    private Items item;
    private User user;
    public Comment(){}

    public Comment(Long id, String message, Timestamp postDate, Items item, User user) {
        this.id = id;
        this.message = message;
        this.postDate = postDate;
        this.item = item;
        this.user = user;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    public Timestamp getPostDate() {
        return postDate;
    }

    public void setPostDate(Timestamp postDate) {
        this.postDate = postDate;
    }

    public Items getItem() {
        return item;
    }

    public void setItem(Items item) {
        this.item = item;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }
}
