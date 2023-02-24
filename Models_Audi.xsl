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
   <xsl:attribute
                                    name="height">
                                    <xsl:value-of select="390" />
                                </xsl:attribute>
                            </xsl:element>
                                
                                </div>

                                </div>
                                


            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>