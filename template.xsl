<?xml version="1.0" encoding="ISO-8859-1"?>

<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">


<xsl:template match="questions">
  <html>
		<head>		
			<title><xsl:value-of select="@set" /></title>	
                         <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.5/jquery.min.js"
type="text/javascript"></script>

		</head>

		<body>
                     
                          <xsl:for-each select="/questions/question">
                           <b><xsl:value-of select="text"/></b><br/>
                           <button onclick="$('.answer').show()">Show Answers</button><button onclick="$('.answer').hide()">Hide Answers</button><button onclick="$('.note').show()">Show Notes</button><button onclick="$('.note').hide()">Hide Notes</button><br/>
                           <span class="answer" style="display: none;"><xsl:value-of select="answer"/></span><br/>
                            <span class="note" style="display: none; color: FF0000;"><xsl:value-of select="note"/></span><br/>
                          </xsl:for-each>
		</body>
	</html>
</xsl:template>

</xsl:stylesheet>

					