<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html>
    <body>
        <h1>Mi biblioteca personal de Alberto Marquez</h1>
        <table>
            <tr bgcolor="#887788">
                <th>Título</th>
                <th>Autor</th>
                <th>Precio</th>
                <th>ISBN</th>
            </tr>
            <xsl:for-each select="libreria/libros">
            <!--<xsl:sort select="precio" data-type="number"></xsl:sort>  ORDENA DE MENOR A MAYOR--> 
            <tr>
            <xsl:choose>
                <xsl:when test="precio = 60.50"> 
                <td>
                    <xsl:value-of select="titulo"/></td>
                <td bgcolor="blue">
                    <xsl:value-of select="autor"/></td>
                <td>
                    <xsl:value-of select="precio"/></td>
                <td>
                    <xsl:value-of select="codLibro"/></td>
                </xsl:when>
            </xsl:choose>    
            </tr>
        
        </xsl:for-each>    
        </table>
    </body>
</html>
</xsl:template>
</xsl:stylesheet>
