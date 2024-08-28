<?xml version="1.0"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="xml" indent="yes" />

	<xsl:strip-space elements="*" />

    <xsl:template match="assistents">
        <pisos-assistents>
            <xsl:apply-templates />     
        </pisos-assistents>
    </xsl:template>

    <xsl:template match="pis">
		<pis>
			<xsl:value-of select="." />
		</pis>
    </xsl:template>

	<xsl:template match="text()" />
	<xsl:template match="noassistents" />
	
</xsl:stylesheet>
