package feedback.model;

public class Feedback {
    private int id;
    private String name;
    private String email;
    private String feedbackText;
    private String uname;
    
    public Feedback(String name, String email, String feedback, String uname) {
    	
    	this.name = name;
    	this.email = email;
    	this.feedbackText = feedback;
    	this.uname = uname;
    }

    public Feedback(int id, String name, String email, String feedbackText, String uname) {
    	
        this.id = id;
        this.name = name;
        this.email = email;
        this.feedbackText = feedbackText;
        this.uname = uname;
    }

    public int getId() {
        return id;
    }

    public String getName() {
        return name;
    }

    public String getEmail() {
        return email;
    }

    public String getFeedbackText() {
        return feedbackText;
    }
    
    public String getUname() {
    	
    	return uname;
    }
}
