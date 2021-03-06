<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" 
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:sdk="http://schemas.android.com/sdk/android/addon/7">
    <xsl:output method="text" />
    <xsl:template match="sdk:sdk-addon">
        <xsl:apply-templates select="sdk:add-on[string(sdk:name-id) = 'google_apis']" />
    </xsl:template>

    <xsl:template match="sdk:add-on">
        <xsl:value-of select="./sdk:api-level" />
        <xsl:text> </xsl:text>
    </xsl:template>
</xsl:stylesheet>
