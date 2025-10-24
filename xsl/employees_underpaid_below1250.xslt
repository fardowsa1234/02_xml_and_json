<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:output method="html" indent="yes"/>

  <xsl:template match="/">
    <html>
      <head>
        <title>Employees With Salary Below 1250</title>
      </head>

      <body style="font-family: Arial; background-color: #f0f8ff; color: #000;">
        <h1 style="text-align: center; color: #003366;">Employees With Salary Below 1250</h1>

        <table border="1" cellspacing="0" cellpadding="8" align="center"
               style="border-collapse: collapse; width: 80%; text-align: center;">
          <tr style="background-color: #004080; color: white;">
            <th>Name</th>
            <th>Age</th>
            <th>Department</th>
            <th>Language</th>
            <th>Salary</th>
            <th>Remark</th>
          </tr>

          <xsl:for-each select="employees/employee">
            <xsl:choose>

              <!-- When salary < 1250 -->
              <xsl:when test="salary &lt; 1250">
                <tr style="background-color: #ffe6e6; color: red; font-weight: bold;">
                  <td><xsl:value-of select="name"/></td>
                  <td><xsl:value-of select="age"/></td>
                  <td><xsl:value-of select="department"/></td>
                  <td><xsl:value-of select="language"/></td>
                  <td><xsl:value-of select="salary"/></td>
                  <td>Below 1250</td>
                </tr>
              </xsl:when>

              <!-- Otherwise -->
              <xsl:otherwise>
                <tr style="background-color: #e6ffe6; color: #006600;">
                  <td><xsl:value-of select="name"/></td>
                  <td><xsl:value-of select="age"/></td>
                  <td><xsl:value-of select="department"/></td>
                  <td><xsl:value-of select="language"/></td>
                  <td><xsl:value-of select="salary"/></td>
                  <td>1250 or Above</td>
                </tr>
              </xsl:otherwise>

            </xsl:choose>
          </xsl:for-each>

        </table>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
