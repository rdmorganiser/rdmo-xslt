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
            <h1>Domain</h1>

            <xsl:for-each select="domain/*">
              <xsl:apply-templates select="." />
            </xsl:for-each>
          </div>
        </div>
      </body>
    </html>
  </xsl:template>

  <xsl:template match="entity">
    <div class="panel panel-default">
      <div class="panel-heading">
        <strong>Entity</strong>
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
          <strong>Is Collection</strong>
          &#160;
          <span><xsl:value-of select="is_collection"/></span>
        </li>
        <li class="list-group-item">
          <strong>Verbosename</strong>
          &#160;
          <span><xsl:value-of select="verbosename"/></span>
        </li>
      </ul>
    </div>

    <div style="margin-left: 20px">
      <xsl:for-each select="children/*">
        <xsl:apply-templates select="." />
      </xsl:for-each>
    </div>
  </xsl:template>

  <xsl:template match="attribute">
    <div class="panel panel-default">
        <div class="panel-heading">
          <strong>Attribute</strong>
          &#160;
          <span><a href=""><xsl:value-of select="dc:uri"/></a></span>
        </div>
        <ul class="list-group">
          <li class="list-group-item">
          <strong>Comment</strong>
          &#160;
          <span><xsl:value-of select="dc:comment"/></span>
        </li>
        <li class="list-group-item">
          <strong>Is Collection</strong>
          &#160;
          <span><xsl:value-of select="is_collection"/></span>
        </li>
        <li class="list-group-item">
          <strong>Value Type</strong>
          &#160;
          <span><xsl:value-of select="value_type"/></span>
        </li>
        <li class="list-group-item">
          <strong>Unit</strong>
          &#160;
          <span><xsl:value-of select="unit"/></span>
        </li>
        <li class="list-group-item">
          <strong>Range</strong>
          &#160;
          <span><xsl:value-of select="range"/></span>
        </li>
        <li class="list-group-item">
          <strong>Verbosename</strong>
          &#160;
          <span><xsl:value-of select="verbosename"/></span>
        </li>
      </ul>
    </div>

    <div style="margin-left: 20px">
      <xsl:for-each select="optionsets/optionset">
        <xsl:apply-templates select="." />
      </xsl:for-each>
    </div>

    <div style="margin-left: 20px">
      <xsl:for-each select="conditions/condition">
        <xsl:apply-templates select="." />
      </xsl:for-each>
    </div>

  </xsl:template>

  <xsl:template match="optionset">
    <div class="panel panel-default">
      <div class="panel-heading">
        <strong>Option Set</strong>
        &#160;
        <span><a href=""><xsl:value-of select="@dc:uri"/></a></span>
      </div>
    </div>

  </xsl:template>

  <xsl:template match="condition">
    <div class="panel panel-default">
      <div class="panel-heading">
        <strong>Condition</strong>
        &#160;
        <span><a href=""><xsl:value-of select="@dc:uri"/></a></span>
      </div>
    </div>

  </xsl:template>

</xsl:stylesheet>
