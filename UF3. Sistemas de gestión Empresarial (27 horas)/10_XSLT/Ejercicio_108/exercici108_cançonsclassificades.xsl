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
				<p>Aquestes són les cançons per una vida</p>
				<ul>
					<li><a href="#seglepassat">Cançons del segle passat</a></li>
					<li><a href="#decadapassada">Cançons de la dècada passada</a></li>
					<li><a href="#actuals">Cançons actuals</a></li>
				</ul>
				<h2 id="seglepassat">Cançons del segle passat</h2>
				<table border="1">
					<tr>
						<th>Any</th>
						<th>Títol</th>
						<th>Artista</th>
					</tr>
				
					<xsl:for-each select="//canso">
						<xsl:sort select="@any" order="ascending"/>
							<xsl:if test="@any &lt; 2000">
								<tr>
									<td><xsl:value-of select = "@any"/></td>
									<td><xsl:value-of select = "titol"/></td>
									<td><xsl:value-of select = "artista"/></td>
								</tr>
							</xsl:if>
					</xsl:for-each>			
				</table>
				
				<h2 id="decadapassada">Cançons de la dècada passada</h2>
				<table border="1">
					<tr>
						<th>Any</th>
						<th>Títol</th>
						<th>Artista</th>
					</tr>
				
					<xsl:for-each select="//canso">
						<xsl:sort select="@any" order="ascending"/>
							<xsl:if test="@any &gt; 1999 and @any &lt; 2010">
								<tr>
									<td><xsl:value-of select = "@any"/></td>
									<td><xsl:value-of select = "titol"/></td>
									<td><xsl:value-of select = "artista"/></td>
								</tr>
							</xsl:if>
					</xsl:for-each>			
				</table>
				
				<h2 id="actuals">Cançons actuals</h2>
				 <table border="1">
					<tr>
						<th>Any</th>
						<th>Títol</th>
						<th>Artista</th>
					</tr>
					
					<xsl:for-each select="//canso">
						<xsl:sort select="@any" order="ascending"/>
							<xsl:if test="@any &gt; 2009">
								<tr>
									<td><xsl:value-of select = "@any"/></td>
									<td><xsl:value-of select = "titol"/></td>
									<td><xsl:value-of select = "artista"/></td>
								</tr>
							</xsl:if>
					</xsl:for-each>
				</table>
			</body>
		</html>	
	</xsl:template>
</xsl:stylesheet>
