<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
   <table style="text-align: center" border="1"  >
     <tr bgcolor="thistle">
       <td>Средний балл</td>  
       <td>Год рождения</td>  
       <td>Имя</td>
       <td>Фамилия</td>           
     </tr>

     <xsl:for-each select="group/classmate">
          <xsl:sort  select="birth"/>
     <tr>
         <xsl:choose>            
                <xsl:when test = "points&lt; '6' ">
                    <tr>
                       <td bgcolor="orangered"><xsl:value-of select = "points"/></td>
                       <td> <xsl:value-of select="birth"/></td>
                       <td><xsl:value-of select ="name"/></td>
                       <td> <xsl:value-of select ="surname"/></td>
                    </tr>
                </xsl:when>


                <xsl:when test = "points&lt; '9' "> <!--lt это меньше 9 -->
                    <tr>
                       <td bgcolor="turquoise"><xsl:value-of select = "points"/></td>
                       <td> <xsl:value-of select="birth"/></td>
                       <td><xsl:value-of select ="name"/></td>
                       <td> <xsl:value-of select ="surname"/></td>  
                    </tr>
                </xsl:when>

                
             <xsl:when test = "points&gt; '8' "> <!--gt это больше 8 -->
                    <tr>
                       <td bgcolor="turquoise"><xsl:value-of select = "points"/></td>
                       <td> <xsl:value-of select="birth"/></td>
                       <td><xsl:value-of select ="name"/></td>
                       <td> <xsl:value-of select ="surname"/></td>
                    </tr>
                </xsl:when>


                <xsl:otherwise>
                    <tr>
                       <td><xsl:value-of select = "points"/></td>
                       <td> <xsl:value-of select="birth"/></td>
                       <td><xsl:value-of select ="name"/></td>
                       <td> <xsl:value-of select ="surname"/></td>                   
                    </tr>
                </xsl:otherwise>
            </xsl:choose>
     </tr>
     </xsl:for-each>
   </table>
</xsl:template>
</xsl:stylesheet>