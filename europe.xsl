<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="html" encoding="UTF-8"/>
  <xsl:template match="/">

<html>
<head>
<link rel="stylesheet" href="europe.css" type="text/css" />
</head>
<body>

<!-- Правила преобразования XML-документа в HTML -->
<table border="1">
<tr>
<th>Страна</th>
<th>Столица</th>
<th>Население</th>
<th>Площадь</th>
</tr>
<xsl:for-each select="СтраныЕвропы/Страна[Население > 10 and Площадь &lt; 200]">
<xsl:sort order="ascending" select="Площадь" data-type="number"/>
  <tr>
  <xsl:if test="position() mod 2 = 0">
    <xsl:attribute name="bgcolor">#E6E6FF</xsl:attribute>
  </xsl:if>
    <td><xsl:value-of select="Название"/></td>
    <td><xsl:value-of select="Столица"/></td>
    <td class="number"><xsl:value-of select="Население"/></td>
    <td class="number"><xsl:value-of select="Площадь"/></td>
  </tr>
</xsl:for-each>
</table>

<!-- ........................................... --> 
</body>
</html>

  </xsl:template>
</xsl:stylesheet>