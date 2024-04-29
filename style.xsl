<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE xsl:stylesheet  [
	<!ENTITY nbsp   "&#160;">
	<!ENTITY copy   "&#169;">
	<!ENTITY reg    "&#174;">
	<!ENTITY trade  "&#8482;">
	<!ENTITY mdash  "&#8212;">
	<!ENTITY ldquo  "&#8220;">
	<!ENTITY rdquo  "&#8221;"> 
	<!ENTITY pound  "&#163;">
	<!ENTITY yen    "&#165;">
	<!ENTITY euro   "&#8364;">
]>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="html" encoding="utf-8" doctype-public="-//W3C//DTD XHTML 1.0 Transitional//EN" doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"/>
<xsl:template match="/">

<html lang="en">
    <head>
        <title>Fitness AZA</title>
        <!-- Required meta tags -->
        <meta charset="utf-8" />
        <meta
            name="viewport"
            content="width=device-width, initial-scale=1, shrink-to-fit=no"
        />

        <!-- Bootstrap CSS v5.2.1 -->
        <link
            href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
            rel="stylesheet"
            integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
            crossorigin="anonymous"
        />
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" />
    </head>

    <body class="container shadow">
        <a name="top"/>
        <header>
            <nav class="navbar navbar-expand-lg navbar-light bg-secondary bg-light">
                
                    <a class="navbar-brand" href="#">
                        <img src="img/logo.png" alt="" width="150" class="img-fluid"/>
                    </a>
                    <div class="collapse navbar-collapse" id="collapsibleNavId">
                        <ul class="navbar-nav mx-auto mt-2 mt-lg-0">
                            <li class="nav-item">
                                <a class="nav-link fs-1 text-primary" target="_blank" href="http://www.ies-azarquiel.es/">IES Azarquiel</a>
                            </li>
                        </ul>
                        <div class="d-flex my-2 my-lg-0">
                            <a class="navbar-brand" href="#">
                                <img src="img/logo.png" alt="" width="150" class="img-fluid"/>
                            </a>
                        </div>
                    </div>
				
            </nav>
        </header>
        <main>
            <div class="row m-0 p-0">
            <xsl:for-each select="fitness/target">
                <div class="col-xl-2 col-md-3 col-sm-4 col-6 d-flex">
                    <div class="card mb-3">
                        <a href="#{@name}"><img class="card-img-top img-fluid" src="img/targetmap.png" alt="Title"/></a> 
                        <div class="card-body ">
                            <p class="card-title text-primary text-center fs-5 " style="font-weight: bold;"><xsl:value-of select="@name"/></p>
                            
                        </div>
                    </div>
                </div>
             </xsl:for-each>
            </div>
            <xsl:for-each select="fitness/target">
             <a name="{@name}"></a>
            <div class="bg-primary text-white p-2 text-center fs-5">Target: <xsl:value-of select="@name"/></div>
            
                
        
            <div class="row m-0 p-0 justify-content-center ">
            <xsl:for-each select="./exercise">
                <div class="col-xl-5 col-12 mb-3 mt-3 me-3 card">
                    <div class="row m-0 p-0 ">
                    <xsl:choose>
                        <xsl:when test="./gifUrl=''">
                            <div class="col-6"><img src="img/noimage.png" class="img-fluid" alt=""/></div>
                       <div class="col-6 p-3 text-primary bg-light" style="font-weight: bold;">
                       <p class="fs-4"><xsl:value-of select="name"/></p>
                       <p  class="fs-6">Body Part: <xsl:value-of select="bodyPart"/><br/> Equipment: <xsl:value-of select="equipment"/></p>
                       </div>
                        </xsl:when>
                    
                        <xsl:otherwise>
                       <div class="col-6"><img src="{gifUrl}" class="img-fluid" alt=""/></div>
                       <div class="col-6 p-3 text-primary bg-light" style="font-weight: bold;">
                       <p class="fs-4"><xsl:value-of select="name"/></p>
                       <p  class="fs-6">Body Part: <xsl:value-of select="bodyPart"/><br/> Equipment: <xsl:value-of select="equipment"/></p>
                       </div>
                       </xsl:otherwise>
                       </xsl:choose>
                    </div>
                </div>    
                     </xsl:for-each> 
            </div>
           
            </xsl:for-each>
        </main>
        <footer>
            <div class="text-center text-primary bg-white fs-1">XSL-DAM-DAW</div>
        </footer>
        <!-- Bootstrap JavaScript Libraries -->
        <script
            src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js"
            integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r"
            crossorigin="anonymous"
        ></script>

        <script
            src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.min.js"
            integrity="sha384-BBtl+eGJRgqQAUMxJ7pMwbEyER4l1g+O15P+16Ep7Q9Q+zqX6gSbd85u4mG4QzX+"
            crossorigin="anonymous"
        ></script>
        
    </body>
    <a href="#top">
        <i class="fa fa-3x text-danger fa-arrow-circle-o-up position-fixed bottom-0 end-0 m-3"
            aria-hidden="true"></i>
    </a>
    <a href="#top">
        <i class="fa fa-3x text-danger fa-arrow-circle-o-up position-fixed bottom-0 start-0 m-3"
            aria-hidden="true"></i>
    </a>
</html>


</xsl:template>
</xsl:stylesheet>