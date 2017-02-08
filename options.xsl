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
          <h1>Options</h1>

          <xsl:for-each select="options/optionset">

            <div class="panel panel-default">
              <div class="panel-heading">
                <strong>Option Set</strong>
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
                  <strong>Order</strong>
                  &#160;
                  <span><xsl:value-of select="order"/></span>
                </li>
              </ul>
            </div>
              <div class="panel panel-default" style="margin-left:40px">
                <div class="panel-heading">
                  <strong>Option</strong>
                  &#160;
                  <span><a href=""><xsl:value-of select="options/option/dc:uri"/></a></span>
                </div>
                <ul class="list-group">
                  <li class="list-group-item">
                  <strong>Comment</strong>
                  &#160;
                  <span><xsl:value-of select="options/option/dc:comment"/></span>
                </li>
                <li class="list-group-item">
                  <strong>Order</strong>
                  &#160;
                  <span><xsl:value-of select="options/option/order"/></span>
                </li>
                <li class="list-group-item">
                  <strong>Text EN</strong>
                  &#160;
                  <span><xsl:value-of select="options/option/text[@lang='en']"/></span>
                </li>
                <li class="list-group-item">
                  <strong>Text DE</strong>
                  &#160;
                  <span><xsl:value-of select="options/option/text[@lang='de']"/></span>
                </li>
                <li class="list-group-item">
                  <strong>Additional Input</strong>
                  &#160;
                  <span><xsl:value-of select="options/option/additional_input"/></span>
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
