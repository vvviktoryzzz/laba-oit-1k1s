<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
   <html>
   <body>
   <h2>Оценки</h2>
   <table style="text-align: center" border="1"  >
     <tr bgcolor="skyblue">
       <td>Оценка</td>  
       <td>Год рождения</td>  
       <td>Имя</td>
       <td>Фамилия</td>
       
         
     </tr>
     <xsl:for-each select="list/person">
          <xsl:sort  select="year"/>
     <tr>
         <xsl:choose>
            
                <xsl:when test = "ball&lt; '6' ">
                    <tr>
                     <td bgcolor="red"> 
                          
                         <xsl:value-of select = "ball"/></td>
                       <td> <xsl:value-of select="year"/></td>
                       <td><xsl:value-of select = "surname"/></td>
                       <td> <xsl:value-of select = "name"/></td>
                        
             
                    </tr>
                </xsl:when>
                <xsl:when test = "ball&lt; '9' ">
                    <tr>
                     <td bgcolor="yellow"> 
                          
                         <xsl:value-of select = "ball"/></td>
                       <td> <xsl:value-of select="year"/></td>
                       <td><xsl:value-of select = "surname"/></td>
                       <td> <xsl:value-of select = "name"/></td>
             
                    </tr>
                </xsl:when>
             <xsl:when test = "ball&gt; '8' ">
                    <tr>
                     <td bgcolor="green"> 
                          
                         <xsl:value-of select = "ball"/></td>
                       <td> <xsl:value-of select="year"/></td>
                       <td><xsl:value-of select = "surname"/></td>
                       <td> <xsl:value-of select = "name"/></td>
                       
             
                    </tr>
                </xsl:when>
                <xsl:otherwise>
                     <tr>
                         <td><xsl:value-of select = "ball"/></td>
                          <td> <xsl:value-of select="year"/></td>
                        <td><xsl:value-of select = "surname"/></td>
                       <td> <xsl:value-of select = "name"/></td>                   
                    </tr>
                </xsl:otherwise>
            </xsl:choose>
     </tr>
     </xsl:for-each>
   </table>
   </body>
   </html>
</xsl:template>
    </xsl:stylesheet>