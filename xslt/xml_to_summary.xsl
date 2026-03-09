<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="html" indent="yes" encoding="UTF-8"/>

  <xsl:template match="/">
    <html lang="en">
      <head>
        <meta charset="UTF-8"/>
        <title>Question Bank Summary</title>
        <style>
          body { font-family: Arial, sans-serif; margin: 30px; line-height: 1.6; }
          h1 { color: #2c3e50; }
          .summary-card { background: #ecf0f1; padding: 20px; border-radius: 8px; width: 300px; display: inline-block; margin: 10px; vertical-align: top; }
          .stat { font-size: 1.2em; font-weight: bold; }
        </style>
      </head>
      <body>
        <h1>Question Bank Summary Report</h1>
        
        <div class="summary-card">
          <h3>Total Questions</h3>
          <p class="stat"><xsl:value-of select="count(questionBank/question)"/></p>
        </div>

        <div class="summary-card">
          <h3>Questions by Difficulty</h3>
          <ul>
            <li>Easy: <strong><xsl:value-of select="count(questionBank/question[@difficulty='Easy'])"/></strong></li>
            <li>Medium: <strong><xsl:value-of select="count(questionBank/question[@difficulty='Medium'])"/></strong></li>
            <li>Hard: <strong><xsl:value-of select="count(questionBank/question[@difficulty='Hard'])"/></strong></li>
          </ul>
        </div>
        
        <div class="summary-card">
          <h3>Questions by Subject</h3>
          <ul>
            <li>Biology: <strong><xsl:value-of select="count(questionBank/question[@subject='Biology'])"/></strong></li>
            <li>Physics: <strong><xsl:value-of select="count(questionBank/question[@subject='Physics'])"/></strong></li>
            <li>Chemistry: <strong><xsl:value-of select="count(questionBank/question[@subject='Chemistry'])"/></strong></li>
            <li>Mathematics: <strong><xsl:value-of select="count(questionBank/question[@subject='Mathematics'])"/></strong></li>
          </ul>
        </div>

      </body>
    </html>
  </xsl:template>

</xsl:stylesheet>
