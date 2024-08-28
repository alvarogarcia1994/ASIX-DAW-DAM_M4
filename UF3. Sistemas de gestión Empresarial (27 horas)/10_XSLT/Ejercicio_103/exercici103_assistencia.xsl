<?xml version="1.0"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="xml" indent="yes"/>	
    
    <xsl:strip-space elements="*"/>
    
	<xsl:template match="/*">
		<resum-acta>
			<comunitat>
				<xsl:value-of select="//comunitat"/>
			</comunitat>
			<noassistents>
				<xsl:copy-of select="//noassistents/pis"/>
			</noassistents>
			<assistents>
				<xsl:copy-of select="//assistents/assistent/pis"/>
			</assistents>
		</resum-acta>
	</xsl:template>
</xsl:stylesheet>
