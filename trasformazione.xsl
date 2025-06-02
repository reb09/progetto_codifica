<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet version="2.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:tei="http://www.tei-c.org/ns/1.0"
    xmlns="http://www.w3.org/1999/xhtml">

    <xsl:output method="html" encoding="UTF-8" omit-xml-declaration="yes" indent="yes"/>
    <xsl:template match="/">
        <html>
            <head>
                <title>Progetto di Codifica di Testi</title>
                <script src="https://code.jquery.com/jquery-3.7.1.js"></script>
                <script src="script.js"></script>
                <link href="stile.css" rel="stylesheet" type="text/css"/>
            </head>
            <body>
                <header>
                    <h1>
                        <xsl:value-of select="//tei:title[@xml:id='titolo_principale']" />
                    </h1>
                </header>

                <nav class="navMenu">
                    <ul>
                        <li>
                            <a href="#info">Informazioni</a>
                        </li>
                        <li>
                            <a href="#art1">Articolo 1</a>
                        </li>
                        <li>
                            <a href="#art2">Articolo 2</a>
                        </li>
                        <li>
                            <a href="#bibl1">Bibliografia 1</a>
                        </li>
                        <li>
                            <a href="#bibl2">Bibliografia 2</a>
                        </li>
                        <li>
                            <a href="#notizie1">Notizie 1</a>
                        </li>
                        <li>
                            <a href="#notizie2">Notizie 2</a>
                        </li>
                    </ul>
                </nav>
                <div>
                    <div id="info">
                        <article>
                            <h1>Informazioni della Rivista</h1>
                            <div>
                                <div>
                                    Codifica di: <xsl:apply-templates select="//tei:respStmt/tei:name[@xml:id='rebecca']" />
                                </div>
                                <div>
                                    Titolo della rivista: <xsl:apply-templates select="//tei:monogr/tei:title" />
                                </div>
                                <div>
                                    Pagine: <xsl:apply-templates select="//tei:monogr/tei:biblScope[@unit='page']"></xsl:apply-templates>
                                </div>
                            </div>
                        </article>

                        <div id="fenomeni">

                            <ul class="legend">
                                <li>
                                    <span class="expan"></span>Espansioni</li>
                                <li>
                                    <span class="placename"></span>Luoghi</li>

                                <li>
                                    <span class="persname"></span>Persone</li>

                                <li>
                                    <span class="orgname"></span>Organizzazioni</li>

                                <li>
                                    <span class="cite"></span>Citazioni</li>
                            </ul>

                            <div id="bottoni">
                                <h3>Visualizza le marcature</h3>
                                <button id="btn-expan">Espansioni</button>
                                <button id="btn-place">Luoghi</button>
                                <button id="btn-persname">Persone</button>
                                <button id="btn-org">Organizzazioni</button>
                                <button id="btn-cite">Citazioni</button>
                                <button id="btn-hide">Nascondi</button>
                            </div>
                        </div>


                    </div>
                </div>
                <article id="art1">
                    <h2> Articolo 1 </h2>
                    <div class="flexbox">
                        <div class="img">
                            <xsl:apply-templates select="//tei:surface[@xml:id='pag1']" />
                            <xsl:apply-templates select="//tei:surface[@xml:id='pag2']" />
                        </div>
                        <div class="text">
                            <xsl:apply-templates select="//tei:body/tei:div[@n = '1']" />
                        </div>

                    </div>

                </article>

                <article id="art2">
                    <h2> Articolo 2 </h2>
                    <div class="flexbox">
                        <div class="img">
                            <xsl:apply-templates select="//tei:surface[@xml:id='pagina22']" />
                            <xsl:apply-templates select="//tei:surface[@xml:id='pagina23']" />
                            <xsl:apply-templates select="//tei:surface[@xml:id='pagina24']" />
                        </div>
                        <div class="text">
                            <xsl:apply-templates select="//tei:body/tei:div[@n = '2']" />
                        </div>

                    </div>

                </article>

                <article id="bibl1">
                    <h2> Bibliografia 1 </h2>
                    <div class="flexbox">
                        <div class="img">
                            <xsl:apply-templates select="//tei:surface[@xml:id='pagina31']" />
                            <xsl:apply-templates select="//tei:surface[@xml:id='pagina32']" />
                        </div>
                        <div class="text">
                            <xsl:apply-templates select="//tei:body/tei:div[@n = '3']" />
                        </div>

                    </div>

                </article>

                <article id="bibl2">
                    <h2> Bibliografia 2 </h2>
                    <div class="flexbox">
                        <div class="img">
                            <xsl:apply-templates select="//tei:surface[@xml:id='pagina32_2']" />
                        </div>
                        <div class="text">
                            <xsl:apply-templates select="//tei:body/tei:div[@n = '4']" />
                        </div>

                    </div>

                </article>

                <article id="notizie1">
                    <h2> Notizie 1 </h2>
                    <div class="flexbox">
                        <div class="img">
                            <xsl:apply-templates select="//tei:surface[@xml:id='pagina33']" />
                        </div>
                        <div class="text">
                            <xsl:apply-templates select="//tei:body/tei:div[@n = '5']" />
                        </div>

                    </div>

                </article>

                <article id="notizie2">
                    <h2> Notizie 2 </h2>
                    <div class="flexbox">
                        <div class="img">
                            <xsl:apply-templates select="//tei:surface[@xml:id='pagina34']" />
                        </div>
                        <div class="text">
                            <xsl:apply-templates select="//tei:body/tei:div[@n = '6']" />
                        </div>

                    </div>

                </article>


            </body>
        </html>
    </xsl:template>


    <xsl:template match="tei:lb[not(@break)]">
        <br />
        <xsl:element name="span">
            <xsl:attribute name="class">numeroRiga</xsl:attribute>
            <b>
                <xsl:value-of select="@n" />
            </b>
        </xsl:element>
    </xsl:template>

    <!-- Templates dei fenomeni del documento -->




    <xsl:template match="tei:pb">
        <xsl:element name="div">
            <xsl:attribute name="id">pagina_<xsl:value-of select="current()/@n" />
            </xsl:attribute>
        </xsl:element>
    </xsl:template>


    <xsl:template match="tei:lb[@break!='no']">
        <br />
        <xsl:element name="span">
            <xsl:attribute name="class">numeroRiga</xsl:attribute>
            <b>
                <xsl:value-of select="@n" />
            </b>
        </xsl:element>
    </xsl:template>


    <xsl:template match="tei:placeName">
        <placename>
            <xsl:apply-templates />
        </placename>
    </xsl:template>

    <xsl:template match="tei:persName">
        <persname>
            <xsl:apply-templates />
        </persname>
    </xsl:template>

    <xsl:template match="tei:orgName">
        <orgname>
            <xsl:apply-templates />
        </orgname>
    </xsl:template>

    <xsl:template match="tei:quote">
        <quote>
            <xsl:apply-templates />
        </quote>
    </xsl:template>

    <xsl:template match="tei:abbr">
        <abbr>
            <xsl:apply-templates />
        </abbr>
    </xsl:template>

    <xsl:template match="tei:expan">
        <expan>
            <xsl:apply-templates />
        </expan>
    </xsl:template>




    <xsl:template match="tei:surface">
        <xsl:element name="img">
            <xsl:attribute name="src">
                <xsl:value-of select="tei:graphic/@url" />
            </xsl:attribute>
        </xsl:element>
    </xsl:template>



</xsl:stylesheet>
