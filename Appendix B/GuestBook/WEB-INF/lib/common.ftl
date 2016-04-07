<#macro page title>
  <html>
  <head>
    <title>Guest Book Example - ${title?html}</title>
    <link rel="stylesheet" href="mystyle.css" type="text/css" />  
  </head>
  <body>
    <h1>${title?html}</h1>
    <hr>
    <#nested>
    <hr>
  </body>
  </html>
</#macro>