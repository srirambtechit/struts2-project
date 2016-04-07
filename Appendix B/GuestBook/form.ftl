<#import "WEB-INF/lib/common.ftl" as com>
<#escape x as x?html>
<@com.page title="Add Entry">   
  <form action="addAction.action" method="post">
    Your name:<br>
    <input type=text name="name" size="30"><br><br>
    Your e-mail (optional):<br>
    <input type=text name="email" size="30"><br><br>
    Message:<br>
    <textarea name="message" rows="3" cols="30"></textarea><br>
	<input type="submit" value="Submit">
  </form>    
  <a href="indexAction.action">Back to the index page</a>
</@com.page>
</#escape>