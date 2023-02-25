<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/concessionari">
        <html>
            <head>
            <link  href="Estils_Index.css" rel="stylesheet" type="text/css"  />
            </head>
            <header>
            <div class = "boto">
            
                    <div class="categoria">Concessionari <xsl:value-of select="Nom" /></div>   
                </div>
<div class = "mig">
                                
                                <div class = "imatge">
                                <xsl:element name="img">
                                <xsl:attribute name="src">
                                    <xsl:value-of select="foto" />
                                </xsl:attribute>
                                <xsl:attribute name="height">
                                    <xsl:value-of select="180" /> 
                                </xsl:attribute>
                                <xsl:attribute name="width">
                                    <xsl:value-of select="1300" /> 
                                </xsl:attribute>
                            </xsl:element>
                                
                                </div>

                                </div>
                                
            </header>
            <body>
                
                
                                
                                <div>
                                <div class = "titol"><b>Model </b>
                                <xsl:value-of select="marques/Audi/modelsAudi/Audi_A1_Sportback/model" /></div>
                                
                                </div>
    <div class = "centrat">

                                <div class = "imatgecotxe">
                                <xsl:element name="img">
                                <xsl:attribute name="src">
                                    <xsl:value-of select="marques/Audi/modelsAudi/Audi_A1_Sportback/fotoA1" />
                                </xsl:attribute>
                                <xsl:attribute name="height">
                                    <xsl:value-of select="500" /> 
                                </xsl:attribute>
                                <xsl:attribute name="width">
                                    <xsl:value-of select="1300" /> 
                                </xsl:attribute>
                            </xsl:element>
                                
                                </div>
</div>
                                <table>
                                <b>Venedor </b>
                                <xsl:value-of select="marques/Audi/modelsAudi/Audi_A1_Sportback/venedor" />
                                <b>Any </b>    
                                <xsl:value-of select="marques/Audi/modelsAudi/Audi_A1_Sportback/any" />
                                <b>Descripció </b>
                                <xsl:value-of select="marques/Audi/modelsAudi/Audi_A1_Sportback/descripcio" />
                                <b>Potència </b>
                                <xsl:value-of select="marques/Audi/modelsAudi/Audi_A1_Sportback/motor" />
                                <b>Preu </b>
                                <xsl:value-of select="marques/Audi/modelsAudi/Audi_A1_Sportback/gama/gamaBaixa/preu" />

                                <xsl:for-each select="marques/Audi/modelsAudi/Audi_A1_Sportback/preus">
                                    <xsl:value-of select="@gama" /><xsl:value-of
                                        select="concat(' ',.)" /> <br />
                                </xsl:for-each>

                                </table>

            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>