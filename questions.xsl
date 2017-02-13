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
          <h1>Questions</h1>

          <xsl:for-each select="catalogs/catalog">

            <div class="panel panel-default">
              <div class="panel-heading">
                <strong>Catalog</strong>
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
              </ul>
            </div>

            <xsl:for-each select="sections/section">

              <div class="panel panel-default" style="margin-left:80px">
                <div class="panel-heading">
                  <strong>Section</strong>
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
                  <strong>Order</strong>
                  &#160;
                  <span><xsl:value-of select="order"/></span>
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
              </ul>
            </div>

          <xsl:for-each select="subsections/subsection">

            <div class="panel panel-default" style="margin-left:120px">
              <div class="panel-heading">
                <strong>Subsection</strong>
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
                <strong>Order</strong>
                &#160;
                <span><xsl:value-of select="order"/></span>
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
            </ul>
          </div>

          <xsl:for-each select="entities/question">

            <div class="panel panel-default" style="margin-left:160px">
              <div class="panel-heading">
                <strong>Question</strong>
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
                <strong>Order</strong>
                &#160;
                <span><xsl:value-of select="order"/></span>
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
                <strong>Widget Type</strong>
                &#160;
                <span><xsl:value-of select="widget_type"/></span>
              </li>
              <li class="list-group-item">
                <strong>Attribute Entity</strong>
                &#160;
                <span><a href=""><xsl:value-of select="attribute_entity/@dc:uri"/></a></span>
              </li>
            </ul>
          </div>

        </xsl:for-each> <!--questions-->

          <xsl:for-each select="entities/questionset">

            <div class="panel panel-default" style="margin-left:160px">
              <div class="panel-heading">
                <strong>Question Set</strong>
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
                <strong>Order</strong>
                &#160;
                <span><xsl:value-of select="order"/></span>
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
                <strong>Attribute Entity</strong>
                &#160;
                <span><a href=""><xsl:value-of select="attribute_entity/@dc:uri"/></a></span>
              </li>
            </ul>
          </div>

          <xsl:for-each select="questions/question">

            <div class="panel panel-default" style="margin-left:200px">
              <div class="panel-heading">
                <strong>Question</strong>
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
                <strong>Order</strong>
                &#160;
                <span><xsl:value-of select="order"/></span>
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
                <strong>Widget Type</strong>
                &#160;
                <span><xsl:value-of select="widget_type"/></span>
              </li>
              <li class="list-group-item">
                <strong>Attribute Entity</strong>
                &#160;
                <span><a href=""><xsl:value-of select="attribute_entity/@dc:uri"/></a></span>
              </li>
            </ul>
          </div>

        </xsl:for-each> <!--questions in questionsets-->
        </xsl:for-each> <!--questionsets-->
        </xsl:for-each> <!--subsection-->
        </xsl:for-each> <!--section-->
      </xsl:for-each> <!--catalog-->

          </div>
      </div>
    </body>
  </html>
</xsl:template>

</xsl:stylesheet>
