<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/concessionari">
        <html>
            <head>
            <link  href="Estils_Index.css" rel="stylesheet" type="text/css"  />
            </head>
            <body>
                <div>
                    <div class="categoria">Concessionari <xsl:value-of select="Nom" /></div>   
                </div>
                
               
                                <div class = "mig">
                                
                                <div class = "imatge">
                                <xsl:element name="img">
                                <xsl:attribute name="src">
                                    <xsl:value-of select="foto" />
                                </xsl:attribute>
                                <xsl:attribute name="height">
                                    <xsl:value-of select="390" />
                                </xsl:attribute>
                            </xsl:element>
                                
                                </div>

                                </div>
                                
                                <table>
                                <div><b>Venedor </b>
                                <xsl:value-of select="marques/Audi/modelsAudi/Audi_A1_Sportback/venedor" /></div>
                                <div><b>Any </b>    
                                <xsl:value-of select="marques/Audi/modelsAudi/Audi_A1_Sportback/any" /></div>
                                <div><b>Descripció </b>
                                <xsl:value-of select="marques/Audi/modelsAudi/Audi_A1_Sportback/descripcio" /></div>
                                <div><b>Potència </b>
                                <xsl:value-of select="marques/Audi/modelsAudi/Audi_A1_Sportback/motor" /></div>
                                <div><b>Preu </b>
                                <xsl:value-of select="marques/Audi/modelsAudi/Audi_A1_Sportback/gama/gamaBaixa/preu" /></div>

                                <xsl:for-each select="marques/Audi/modelsAudi/Audi_A1_Sportback/preus">
                                    <xsl:value-of select="@gama" /><xsl:value-of
                                        select="concat(' ',.)" /> <br />
                                </xsl:for-each>

                                </table>

            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>