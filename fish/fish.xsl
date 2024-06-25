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
<th>Название</th>
<th>Латинское название</th>
<th>Изображение</th>
<th>Википедия</th>
</tr>
<xsl:for-each select="//Рыба">
<xsl:sort order="ascending" select="@название"/>
  <tr>
  <xsl:if test="position() mod 2 = 0">
    <xsl:attribute name="bgcolor">#E6E6FF</xsl:attribute>
  </xsl:if>
    <td><xsl:value-of select="@название"/></td>
    <td><xsl:value-of select="@лат"/></td>
    <td><img><xsl:attribute name="src">images/<xsl:value-of select="@фото"/></xsl:attribute></img></td>
    <td><a href=""><xsl:attribute name="href"><xsl:value-of select="@ссылка"/></xsl:attribute><xsl:value-of select="@текст"/></a></td>
  </tr>
</xsl:for-each>
</table>

<!-- ........................................... --> 
</body>
</html>

  </xsl:template>
</xsl:stylesheet>