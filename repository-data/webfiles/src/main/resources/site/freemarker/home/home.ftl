<#assign hst=JspTaglibs["http://www.hippoecm.org/jsp/hst/core"] >
<html>
<head>
</head>
<body>
  <#if document??>
    <h1>${document.title?html}</h1>
    <div>
      <@hst.html hippohtml=document.content />
    </div>
    <#else>
      <h1>Goodbye? cruel world</h1>
  </#if>
</body>
</html>