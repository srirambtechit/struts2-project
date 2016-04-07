<#import "WEB-INF/lib/common.ftl" as com>
<#escape x as x?html>
<@com.page title="Entry added">
  <p>You have added the following entry to the guestbook:
  <p><b>Name:</b> ${name}
  <p><b>Email:</b> ${email}
  <p><b>Message:</b> ${message}
  <p><a href="indexAction.action">Back to the index page</a>
</@com.page>
</#escape>