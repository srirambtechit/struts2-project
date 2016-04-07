package example;
import com.opensymphony.xwork2.ActionSupport;
public class HelloAction extends ActionSupport {

   public static final String MESSAGE = "Successfully Tested ...";

    public String execute() throws Exception {
        setMessage(MESSAGE);
        return SUCCESS;
    }

    private String message;

    public void setMessage(String message){
        this.message = message;
    }

    public String getMessage() {
        return message;
    }
}
