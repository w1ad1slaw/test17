<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="html" encoding="UTF-8"/>
  <xsl:template match="/">

<!-- Правила преобразования XML-документа в HTML -->
<table border="1">
<tr>
<th><a href="#" onClick="loadStyle('europe2n.xsl','data');">Страна</a></th>
<th><a href="#" onClick="loadStyle('europe2c.xsl','data');">Столица</a></th>
<th><a href="#" onClick="loadStyle('europe2p.xsl','data');">Население</a></th>
<th><a href="#" onClick="loadStyle('europe2a.xsl','data');">Площадь</a></th>
</tr>
<xsl:for-each select="//Страна">
<xsl:sort order="ascending" select="@Население" data-type="number" />
  <tr>
  <xsl:if test="position() mod 2 = 0">
    <xsl:attribute name="bgcolor">#E6E6FF</xsl:attribute>
  </xsl:if>
    <td><xsl:value-of select="@Название"/></td>
    <td><xsl:value-of select="@Столица"/></td>
    <td class="number"><xsl:value-of select="@Население"/></td>
    <td class="number"><xsl:value-of select="@Площадь"/></td>
  </tr>
</xsl:for-each>
</table>   

<!-- ........................................... --> 

  </xsl:template>
</xsl:stylesheet>