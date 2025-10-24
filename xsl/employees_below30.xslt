<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:output method="html" indent="yes"/>

  <xsl:template match="/">
    <html>
      <head>
        <title>Employees Below 30</title>
      </head>
      <body>
        <h2>Employees Below 30</h2>
        <table border="1">
          <tr>
            <th>Name</th>
            <th>Age</th>
            <th>Department</th>
            <th>Language</th>
            <th>Salary</th>
          </tr>
          <xsl:for-each select="employees/employee[age &lt; 30]">
            <tr>
              <td><xsl:value-of select="name"/></td>
              <td><xsl:value-of select="age"/></td>
              <td><xsl:value-of select="department"/></td>
              <td><xsl:value-of select="language"/></td>
              <td><xsl:value-of select="salary"/></td>
            </tr>
          </xsl:for-each>
        </table>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
