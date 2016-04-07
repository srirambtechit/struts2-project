<html>
<head>
<title>Freemarker Page</title>
<link rel="stylesheet" href="mystyle.css" type="text/css" />
</head>
<body>
<h2>Freemarker Example</h2>
  <#if Request.name?exists>
      <p>Request attribute "name" set : <b>${Request.name}</b>
  <#else>
      <p>There is no request attribute "name".
  </#if>
</body>
</html>

