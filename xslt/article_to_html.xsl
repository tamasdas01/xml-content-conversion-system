<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="html" indent="yes" encoding="UTF-8"/>

  <xsl:template match="/">
    <html lang="en">
      <head>
        <meta charset="UTF-8"/>
        <title><xsl:value-of select="article/title"/></title>
        <style>
          body { font-family: 'Georgia', serif; line-height: 1.8; margin: 40px auto; max-width: 800px; color: #222; }
          h1 { text-align: center; color: #2c3e50; }
          .author { text-align: center; font-style: italic; color: #555; margin-bottom: 30px; }
          .abstract { background-color: #f4f6f7; padding: 15px; border-left: 4px solid #3498db; margin-bottom: 30px; }
          h2 { color: #2980b9; border-bottom: 1px solid #eee; padding-bottom: 5px; }
          .references { margin-top: 40px; font-size: 0.9em; background: #fafafa; padding: 20px; border-top: 2px solid #ddd; }
        </style>
      </head>
      <body>
        <h1><xsl:value-of select="article/title"/></h1>
        <div class="author">By <xsl:value-of select="article/author"/></div>
        
        <div class="abstract">
          <strong>Abstract: </strong> <xsl:value-of select="article/abstract"/>
        </div>

        <xsl:for-each select="article/sections/section">
          <h2><xsl:value-of select="title"/></h2>
          <xsl:for-each select="paragraph">
            <p><xsl:value-of select="."/></p>
          </xsl:for-each>
        </xsl:for-each>

        <div class="references">
          <h3>References</h3>
          <ul>
            <xsl:for-each select="article/references/reference">
              <li><xsl:value-of select="."/></li>
            </xsl:for-each>
          </ul>
        </div>
      </body>
    </html>
  </xsl:template>

</xsl:stylesheet>
