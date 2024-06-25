<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="html" encoding="UTF-8"/>
  <xsl:template match="/">
<html>
<body>
<table>
<xsl:for-each select="//Авто">
  <tr>
    <td>
      <a>
        <xsl:attribute name="href">
          <xsl:value-of select="@Ссылка"/>
        </xsl:attribute><xsl:value-of select="@Название"/>
      </a>
    </td>
    <td>
      <img>
        <xsl:attribute name="src">
          <xsl:value-of select="@Фото"/>
        </xsl:attribute>
      </img>
    </td>
  </tr>
</xsl:for-each>
</table>
</body>
</html>
</xsl:template>
</xsl:stylesheet>