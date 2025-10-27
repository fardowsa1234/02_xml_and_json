<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
     <xsl:output method="html" indent="yes"/>
<!-- Template to display all employee details -->
    <xsl:template match="employees">
            <html>
             <head>
               <title>ADSE Employee Details</title>
               <!--link to the external employee css-->
                <link rel="stylesheet" type="text/css" href="css/employee.css"/>
        </head>
        <body>
            <h1>ADSE Employee Details</h1>
            <table border="1">
                <tr>
                    <th>Name</th>
                    <th>Age</th>
                    <th>Department</th>
                    <th>Language</th>
                    <th>Salary</th>
                </tr>
                <!-- Loop through each employee and display their details -->
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
      </html>
</xsl:template>
</xsl:stylesheet>
 