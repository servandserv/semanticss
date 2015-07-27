<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet
    xmlns="http://www.w3.org/1999/xhtml"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xsd="http://www.w3.org/2001/XMLSchema"
    xmlns:html="http://www.w3.org/1999/xhtml"
    xmlns:exsl="http://exslt.org/common"
    xmlns:ns0="urn:ru:semanticss"
    extension-element-prefixes="exsl"
    exclude-result-prefixes="xsd html"
    version="1.0">

<xsl:output
        media-type="application/xhtml+xml"
        method="xml"
        encoding="UTF-8"
        indent="yes"
        omit-xml-declaration="no"
        doctype-public="-//W3C//DTD XHTML 1.1//EN"
        doctype-system="http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd"  />

    <xsl:decimal-format name="money" decimal-separator="." grouping-separator="," NaN="0.00 RUB" infinity="0.00 RUB" />
    
    <xsl:template match="ns0:index">
        <html xmlns="http://www.w3.org/1999/xhtml" xml:lang="ru">
            <head>
                <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
                <meta name="keywords" content="crm glossary"/>
                <link rel="stylesheet" type="text/css" href="css/semanticss.css" />
                <title>Semanticss</title>
                <style>
                    html {
                        font-size: 13px;
                        font-family: "Roboto", sans-serif;
                    }
                    header, main, footer {
                        padding-left: 240px;
                    }
                    @media only screen and (max-width : 992px) {
                        header, main, footer {
                            padding-left: 0;
                        }
                    }
                    main {
                        display: flex;
                        flex-flow: row wrap;
                        justify-content: center;
                    }
                    main > div {
                        flex: 1;
                        max-width: 60em;
                    } 
                    h1[id] {
                        margin: 2em 0 1em 0;
                        border-bottom: solid 1px #bdbdbd;
                    }
                </style>
            </head>
            <body>
                <header>
                    <xsl:call-template name="navbar" />
                    <xsl:call-template name="side-nav" />
                </header>
                <main>
                    <div>
                        <xsl:call-template name="tables" />
                        <xsl:call-template name="typography" />
                        <xsl:call-template name="collections" />
                    </div>
                </main>
            </body>
        </html>
    </xsl:template>
    
    <xsl:template name="navbar">
        <nav>
            <div class="nav-wrapper">
                <a href="#" class="brand-logo">SemantiCSS</a>
                <ul id="nav-mobile" class="right hide-on-med-and-down">
                    <li><a href="sass.html">Sass</a></li>
                    <li><a href="components.html">Components</a></li>
                    <li><a href="javascript.html">JavaScript</a></li>
                </ul>
            </div>
        </nav>
    </xsl:template>
    
    <xsl:template name="side-nav">
        <ul class="side-nav fixed">
            <li><a href="#typography">Typography</a></li>
            <li><a href="#collections">Collections</a></li>
            <li><a href="#!">Second Sidebar Link</a></li>
            <li><a href="#!">Second Sidebar Link</a></li>
        </ul>
    </xsl:template>
    
    <xsl:template name="typography">
        <h1 id="typography">Typography</h1>
        <div>
            <h1>Display 1</h1>
            <h2>Headline</h2>
            <h3>Title</h3>
            <h4>Subhead 2</h4>
            <h5>Subhead 1</h5>
            <h6>Body 2</h6>
            <p>Body 1</p>
            <small>caption</small>
        </div>
    </xsl:template>
    
    <xsl:template name="collections">
        <h1 id="collections">Collections</h1>
        <h3>Basic collection</h3>
        <ul class="collection">
            <li>Item 1</li>
            <li>Item 2</li>
            <li>Item 3</li>
            <li>Item 4</li>
        </ul>
        <h3>Links collection</h3>
        <div class="collection">
            <a href="#!">Item 1</a>
            <a href="#!" class="active">Item 2</a>
            <a href="#!">Item 3</a>
            <a href="#!">Item 4</a>
        </div>
        <h3>Header collection</h3>
        <ul class="collection with-header">
            <li class="collection-header">Header</li>
            <li>Item 1</li>
            <li>Item 2</li>
            <li>Item 3</li>
            <li>Item 4</li>
        </ul>
        <h3>Collection with action icon</h3>
        <ul class="collection">
            <li>Item 1<div><a href="#"><i class="mdi-content-remove-circle"></i></a></div></li>
            <li>Item 2<div><a href="#"><i class="mdi-content-remove-circle"></i></a></div></li>
            <li>Item 3<div><a href="#"><i class="mdi-content-remove-circle"></i></a></div></li>
            <li>Item 4<div><a href="#"><i class="mdi-content-remove-circle"></i></a></div></li>
        </ul>
        
    </xsl:template>
    
    <xsl:template name="tables">
        <h1>Tables</h1>
        <h3>Responsive table</h3>
        <table class="responsive bordered">
            <thead>
                <tr>
                    <th>Name</th>
                    <th>Item Name</th>
                    <th>Item Price</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td headers="Name">Alvin</td>
                    <td headers="Item name">Eclair</td>
                    <td headers="Item price">$0.87</td>
                </tr>
                <tr>
                    <td headers="Name">Alan</td>
                    <td headers="Item name">Jellybean</td>
                    <td headers="Item price">$3.76</td>
                </tr>
                <tr>
                    <td headers="Name">Jonathan</td>
                    <td headers="Item name">Lollipop</td>
                    <td headers="Item price">$7.00</td>
                </tr>
            </tbody>
            <tfoot>
                <tr>
                    <td colspan="2">Total</td>
                    <td headers="Total price">$11.63</td>
                </tr>
            </tfoot>
        </table>
    </xsl:template>

</xsl:stylesheet>