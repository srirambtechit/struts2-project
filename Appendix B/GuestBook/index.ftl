<#import "WEB-INF/lib/common.ftl" as com>
<@com.page title="Index">
  <a href="showForm.action">Add new message</a> 
  <#if messages?size = 0>
    <p>No messages.
  <#else>
    <p>The messages are:
    <table border=0 cellspacing=2 cellpadding=2 width="500">
      <tr align=center valign=top>
        <th bgcolor="#C0C0C0" width="250">Name
        <th bgcolor="#C0C0C0">Message
      <#list messages as e>
        <tr align=left valign=top>
          <td bgcolor="#E0E0E0">${e.name} <#if e.email?length != 0> (<a href="mailto:${e.email}">${e.email}</a>)</#if>
          <td bgcolor="#E0E0E0">${e.message}
      </#list>
    </table>
  </#if>
</@com.page>
