<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:output method="html" indent="yes"/>

  <xsl:template match="employees">
    <html>
      <head>
        <title>ADSE Employee Details</title>
        <link rel="stylesheet" type="text/css" href="../css/employee.css"/>
      </head>
      <body>
        <h1>ADSE 2501 Employee Information</h1>
        <table>
          <tr>
            <th>Name</th>
            <th>Age</th>
            <th>Department</th>
            <th>Language</th>
            <th>Salary</th>
          </tr>

          <xsl:for-each select="employee">
            <tr>
              <td><a href="#"><xsl:value-of select="name"/></a></td>
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
