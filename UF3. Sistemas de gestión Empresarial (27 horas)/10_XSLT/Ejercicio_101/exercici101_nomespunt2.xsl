<?xml version="1.0"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="xml" indent="yes" />	
	
	<xsl:strip-space elements="*" />
	
	<xsl:template match="/">
		<xsl:copy-of select="//entrada[2]"/>
	</xsl:template>
		
	<xsl:template match="text()"/>
	
</xsl:stylesheet>
