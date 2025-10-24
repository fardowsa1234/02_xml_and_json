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
      <body style="background-color: #99ccff;">
        <h1><b>ADSE 2501 Employee Information</b></h1>
        <table border="1" cellpadding="5" cellspacing="0"
               style="border-collapse: collapse; background-color: #3366cc;">
          <tr style="background-color: #cc99ff;">
            <th>Name</th>
            <th>Age</th>
            <th>Department</th>
            <th>Language</th>
            <th>Salary</th>
          </tr>

          <xsl:for-each select="employee">
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
