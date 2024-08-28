<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="xml" indent="yes" />

    <xsl:strip-space elements="*" />


	<xsl:template match="node()|@*">
        <xsl:copy>
            <xsl:apply-templates select="node()|@*"/>
        </xsl:copy>
    </xsl:template>

    <xsl:template match="//canso">
		<xsl:copy>
			<xsl:copy-of select="comment()|@*"/>	

            <xsl:apply-templates select="*"/>
		</xsl:copy>
    </xsl:template>
    
    <xsl:template match="//data">
		<xsl:copy>
			<xsl:copy-of select="@*"/>
			
			<xsl:attribute name="dia">
				<xsl:value-of select="dia"/>
			</xsl:attribute>
			
			<xsl:attribute name="mes">
				<xsl:value-of select="mes"/>
			</xsl:attribute>
			
			<xsl:attribute name="any">
				<xsl:value-of select="any"/>
			</xsl:attribute>
			
			<xsl:apply-templates select="*"/>
		</xsl:copy>
    </xsl:template>
	
	<xsl:template match="dia"/>
	<xsl:template match="mes"/>
	<xsl:template match="any"/>

</xsl:stylesheet>
