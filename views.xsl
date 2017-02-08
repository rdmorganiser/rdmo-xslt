<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dc="http://purl.org/dc/elements/1.1/">

<xsl:template match="/">
  <html>
    <head>
      <link href="http://rdmorganiser.github.io/css/bootstrap.min.css" media="screen" rel="stylesheet" type="text/css" />
      <link href="http://rdmorganiser.github.io/css/style.css" media="screen" rel="stylesheet" type="text/css" />
    </head>
    <body style="background-color:white">
      <div class="container">
        <div class="page">
          <h1>Views</h1>

          <xsl:for-each select="views/view">

            <div class="panel panel-default">
              <div class="panel-heading">
                <strong>View</strong>
                &#160;
                <a href=""><xsl:value-of select="dc:uri"/></a>
              </div>
              <ul class="list-group">
                <li class="list-group-item">
                  <strong>Comment</strong>
                  &#160;
                  <span><xsl:value-of select="dc:comment"/></span>
                </li>
                <li class="list-group-item">
                  <strong>Title EN</strong>
                  &#160;
                  <span><xsl:value-of select="title[@lang='en']"/></span>
                </li>
                <li class="list-group-item">
                  <strong>Title DE</strong>
                  &#160;
                  <span><xsl:value-of select="title[@lang='de']"/></span>
                </li>
                <li class="list-group-item">
                  <strong>Help EN</strong>
                  &#160;
                  <span><xsl:value-of select="help[@lang='en']"/></span>
                </li>
                <li class="list-group-item">
                  <strong>Help DE</strong>
                  &#160;
                  <span><xsl:value-of select="help[@lang='de']"/></span>
                </li>
                <li class="list-group-item">
                  <strong>Template</strong>
                  &#160;
                  <span><xsl:value-of select="template"/></span>
                </li>
              </ul>
            </div>

          </xsl:for-each>

          </div>
      </div>
    </body>
  </html>
</xsl:template>

</xsl:stylesheet>
