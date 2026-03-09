<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="html" indent="yes" encoding="UTF-8"/>
  
  <xsl:template match="/">
    <html lang="en">
      <head>
        <meta charset="UTF-8"/>
        <title>Quiz: Question Bank</title>
        <style>
          body { font-family: Arial, sans-serif; line-height: 1.6; margin: 20px; color: #333; }
          .question { border: 1px solid #ccc; padding: 15px; margin-bottom: 20px; border-radius: 5px; background: #f9f9f9; }
          .meta { font-size: 0.9em; color: #666; margin-bottom: 10px; }
          .options { list-style-type: none; padding: 0; }
          .options li { margin: 5px 0; padding: 5px; background: #eef; border-radius: 3px; }
          .answer { font-weight: bold; color: green; margin-top: 10px; }
        </style>
      </head>
      <body>
        <h1>Interactive Quiz</h1>
        <p>A dynamically generated quiz from XML content.</p>
        
        <xsl:for-each select="questionBank/question">
          <div class="question">
            <div class="meta">
              <span><strong>Subject:</strong> <xsl:value-of select="@subject"/></span> | 
              <span><strong>Difficulty:</strong> <xsl:value-of select="@difficulty"/></span>
            </div>
            <h3><xsl:value-of select="text"/></h3>
            <ul class="options">
              <xsl:for-each select="options/option">
                <li><strong><xsl:value-of select="@id"/>)</strong> <xsl:value-of select="."/></li>
              </xsl:for-each>
            </ul>
            <div class="answer">Correct Answer: <xsl:value-of select="answer"/></div>
          </div>
        </xsl:for-each>
      </body>
    </html>
  </xsl:template>

</xsl:stylesheet>
