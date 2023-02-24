<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/receptes/recepta">
        <html>
            <head>
            <link  href="CSS_Xavi.css" rel="stylesheet" type="text/css"  />
            </head>
            <body>
                <div>
                    <div class="categoria">Recetas de <xsl:value-of select="categoria" /></div>
                    <div class="circle ">
                        <a class="c2">Ràpida i senzilla</a>
                    </div>
                </div>
                <br />
                <div class="titol">
                    <xsl:value-of select="nom" />
                </div>
                <table>
                    <tr>

                        <td class="info">
                            <b>Comensals </b>
                            <xsl:value-of select="informacio_general/comensals" />
                            <br />
                            <b>Temps </b>
                            <xsl:value-of select="informacio_general/temps" />
                            <xsl:value-of select="concat(' ',informacio_general/temps/@unitat)" />
                            <br />
                            <b>Dificultat </b>
                            <xsl:value-of select="informacio_general/dificultat" />
                            <br />
                        </td>
                        <td rowspan="2" class="foto">
                            <xsl:element name="img">
                                <xsl:attribute name="src">
                                    <xsl:value-of select="informacio_general/foto" />
                                </xsl:attribute>
   <xsl:attribute
                                    name="height">
                                    <xsl:value-of select="390" />
                                </xsl:attribute>
                            </xsl:element>
                        </td>
                    </tr>
                    <tr>
                        <td class="info2">
                            <span class="subtitol">Ingredients</span>
                            <br />
                            <br />
                            <span class="ingredients">
                                <xsl:for-each select="ingredients/ingredient">
                                    <xsl:value-of select="@quantitat" /><xsl:value-of
                                        select="concat(' ',.)" /> <br />
                                </xsl:for-each>
                            </span>
                        </td>
                    </tr>
                </table>
                <br />
                <span class="subtitol">Preparació</span>
                <br />
                <br />

                <xsl:for-each select="preparacio/pas">
                    <div class="rodona">
                        <xsl:value-of select="@numero" />
                    </div><div
                        class="prepa">
                        <xsl:value-of select="." />
                    </div>
                </xsl:for-each>
                <br />


            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
