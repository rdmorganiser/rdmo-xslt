<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dc="http://purl.org/dc/elements/1.1/">

<xsl:template match="/">
  <html>
    <head>
      <link href="http://rdmorganiser.github.io/css/bootstrap.min.css" media="screen" rel="stylesheet" type="text/css" />
      <link href="http://rdmorganiser.github.io/css/style.css" media="screen" rel="stylesheet" type="text/css" />
    </head>
    <body>
      <div class="container">
        <div class="page">
          <h1>Conditions</h1>

          <xsl:for-each select="conditions/condition">

            <div class="panel panel-default">
              <div class="panel-heading">
                <strong>Condition</strong>
                &#160;
                <a href=""><xsl:value-of select="dc:uri"/></a>
              </div>
              <ul class="list-group">
                <li class="list-group-item">
                  <strong>Comment</strong>
                  &#160;
                  <span><xsl:value-of select="source/@dc:comment"/></span>
                </li>
                <li class="list-group-item">
                  <strong>Relation</strong>
                  &#160;
                  <span><xsl:value-of select="relation"/></span>
                </li>
                <li class="list-group-item">
                  <strong>Target Text</strong>
                  &#160;
                  <span><xsl:value-of select="target_text"/></span>
                </li>
                <li class="list-group-item">
                  <strong>Target Option</strong>
                  &#160;
                  <span><xsl:value-of select="target_option/@dc:uri"/></span>
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
