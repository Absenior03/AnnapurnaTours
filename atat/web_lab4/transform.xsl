<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" encoding="UTF-8" indent="yes"/>
    <xsl:template match="/">
        <html>
            <head>
                <title>Tourism Agencies</title>
                <style>
                    table {
                        width: 50%;
                        border-collapse: collapse;
                        margin: 25px 0;
                        font-size: 18px;
                        text-align: left;
                    }
                    th, td {
                        padding: 12px;
                        border-bottom: 1px solid #ddd;
                    }
                    th {
                        background-color: #f2f2f2;
                    }
                    tr:hover {background-color: #f5f5f5;}
                </style>
            </head>
            <body>
                <h2>Tourism Agencies</h2>
                <table>
                    <tr>
                        <th>Agency Name</th>
                        <th>Location</th>
                        <th>Year Established</th>
                        <th>Total Packages</th>
                        <th>Currency</th>
                        <th>Rating</th>
                    </tr>
                    <xsl:for-each select="tourismAgency/agency">
                        <tr>
                            <td><xsl:value-of select="name"/></td>
                            <td><xsl:value-of select="location"/></td>
                            <td><xsl:value-of select="yearEstablished"/></td>
                            <td><xsl:value-of select="totalPackages"/></td>
                            <td><xsl:value-of select="currency"/></td>
                            <td><xsl:value-of select="rating"/></td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
