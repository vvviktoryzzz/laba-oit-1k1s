<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html>
<body>
<h2> Университеты </h2>
  <table style="text-align:center" border="2 ">
  <tr bgcolor="skyblue">
  <th>Университет</th>
  <th>Специальность</th>
  <th>План набора</th>
  <th>Проходной балл</th>
  <th>Город</th>
  </tr>
  <tr>
     <td><xsl:value-of select="//NAME"/></td>
     <td><xsl:value-of select="//SPET"/></td>
     <td><xsl:value-of select="INVENTORY/KOL"/></td>
     <td><xsl:value-of select="INVENTORY/BALL"/></td>
     <td><xsl:value-of select="INVENTORY/ADRESS"/></td>
  </tr>
    <tr>
     <td><xsl:value-of select="INVENTORY/NAME1"/></td>
     <td><xsl:value-of select="INVENTORY/SPET1"/></td>
     <td><xsl:value-of select="INVENTORY/KOL1"/></td>
     <td><xsl:value-of select="INVENTORY/BALL1"/></td>
     <td><xsl:value-of select="INVENTORY/ADRESS1"/></td>
  </tr>
 </table>
</body>
</html>
</xsl:template>
</xsl:stylesheet>
