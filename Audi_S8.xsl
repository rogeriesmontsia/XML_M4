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
                                <td class="info">
                                <b>Venedor </b>
                                <xsl:value-of select="marques/Audi/modelsAudi/Audi_A1_Sportback/venedor" />
                                <br />
                                <b>Any </b>    
                                <xsl:value-of select="marques/Audi/modelsAudi/Audi_A1_Sportback/any" />
                                <br />
                                <b>Descripció </b>
                                <xsl:value-of select="marques/Audi/modelsAudi/Audi_A1_Sportback/descripcio" />
                                <br />
                                <b>Potència </b>
                                <xsl:value-of select="marques/Audi/modelsAudi/Audi_A1_Sportback/motor" />
                                <br />
                                <b>Preus </b>
                                <div>
                                Gama Baixa
                                <xsl:value-of select="marques/Audi/modelsAudi/Audi_A1_Sportback/gama/gamaBaixa" />
                                </div>
                                <div>
                                Gama Mitja
                                <xsl:value-of select="marques/Audi/modelsAudi/Audi_A1_Sportback/gama/gamaMitja" />
                                </div>
                                <div>
                                Gama Alta
                                <xsl:value-of select="marques/Audi/modelsAudi/Audi_A1_Sportback/gama/gamaAlta" /> 
                                </div>       
                                </td>
                                </table>

            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>