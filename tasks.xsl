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
          <h1>Tasks</h1>

          <xsl:for-each select="tasks/task">

            <div class="panel panel-default">
              <div class="panel-heading">
                <strong>Task</strong>
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
                  <strong>Attribute</strong>
                  &#160;
                  <span><xsl:value-of select="attribute"/></span>
                </li>
                <li class="list-group-item">
                  <strong>Time Period</strong>
                  &#160;
                  <span><xsl:value-of select="time_period"/></span>
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
                  <strong>Text EN</strong>
                  &#160;
                  <span><xsl:value-of select="text[@lang='en']"/></span>
                </li>
                <li class="list-group-item">
                  <strong>Text DE</strong>
                  &#160;
                  <span><xsl:value-of select="text[@lang='de']"/></span>
                </li>
                <li class="list-group-item">
                  <strong>Conditions</strong>
                  &#160;
                  <span><xsl:value-of select="conditions"/></span>
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
