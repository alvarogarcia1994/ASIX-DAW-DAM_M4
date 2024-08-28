<?xml version="1.0"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" indent="yes" />
	
	<xsl:template match="/">
		<html>
			<head>
				<title>Cançons per una vida</title>
				<meta http-equiv="content-type" content="text/html;charset=utf-8" />
			</head>
			<body>
				<h1>Cançons per una vida</h1>
				<table border="1">
					<tr>
						<th>Any</th>
						<th>Títol</th>
						<th>Artista</th>
					</tr>
					<xsl:apply-templates select="//canso">
					</xsl:apply-templates>
				</table>
			</body>
		</html>	
	</xsl:template>
	
	<xsl:template match="//canso[@any]">
		<tr>
			<td><xsl:value-of select="@any"/></td>
			<td><xsl:value-of select="titol"/></td>
			<td><xsl:value-of select="artista"/></td>
		</tr>
	</xsl:template>
	
</xsl:stylesheet>
