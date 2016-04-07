package example;

import com.opensymphony.xwork2.ActionSupport;
import junit.framework.TestCase;

public class HelloActionTest extends TestCase {

	public void testExecute(){
		HelloAction hellotest = new HelloAction();
		String result = null;
		try {
			result = hellotest.execute();
		} catch (Exception e) {
			e.printStackTrace();
		}
		assertTrue("Expected a success result!", 
			ActionSupport.SUCCESS.equals(result));
		assertTrue("Expected the default message!", 
			HelloAction.MESSAGE.equals(hellotest.getMessage()));
	}
}
