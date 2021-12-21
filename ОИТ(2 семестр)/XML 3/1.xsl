<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<h2>ИСиТ в разных ВУЗах</h2>
  <table style='text-align:center' border='2px' bgcolor='skyblue'>
  <tr>
  <th>Университет</th>
  <th>Город</th>
  <th>Проходной балл</th>
  <th>План набора</th>
  </tr>
<xsl:for-each select='specialty/university'>
  <tr>
     <td><xsl:value-of select="name"/></td>
     <td><xsl:value-of select="city"/></td>
     <td><xsl:value-of select="points"/></td>
     <td><xsl:value-of select="plan"/></td>
  </tr>
</xsl:for-each>
</table>
</xsl:template>
</xsl:stylesheet>