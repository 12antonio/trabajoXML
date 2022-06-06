<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
<html> 
<body>
  <h2>Libreria Ficción</h2>
  <table border="1">
    <tr bgcolor="#ffb6af">
      <th style="text-align:left">Títulos</th>
      <th style="text-align:left">Autor</th>
      <th style="text-align:left">Año</th>
      <th style="text-align:left">Precio</th>
      <th style="text-align:left">Disponible</th>
    </tr>
    <xsl:for-each select="//libros">
    <tr>
        <xsl:choose>
            <xsl:when test="disponible = 'true' "> <!--si está disponible...-->
               
               <td bgcolor="#b0f2c2"><xsl:value-of select="titulo"/></td>
               <td bgcolor="#b0f2c2"><xsl:value-of select="autor"/></td>
               <td bgcolor="#b0f2c2"><xsl:value-of select="año"/></td>
               <td bgcolor="#b0f2c2"><xsl:value-of select="precio"/></td>
               <td bgcolor="#b0f2c2"><xsl:value-of select="disponible"/></td>
               
            </xsl:when>
            <xsl:otherwise> <!--sino...-->
             
             <td bgcolor="#ff6565"><xsl:value-of select="titulo"/></td>
             <td bgcolor="#ff6565"><xsl:value-of select="autor"/></td>
             <td bgcolor="#ff6565"><xsl:value-of select="año"/></td>
             <td bgcolor="#ff6565"><xsl:value-of select="precio"/></td>
             <td bgcolor="#ff6565"><xsl:value-of select="disponible"/></td>
            </xsl:otherwise>
        </xsl:choose>

    </tr>
    </xsl:for-each>
  </table>
<!-- Proveedor-->
  <h2>Proveedor de confianza</h2>
  <table border="1">
    <tr bgcolor="#ededaf">
      <th style="text-align:left">Nombre</th> <!--Nombres de la tabla-->
      <th style="text-align:left">Apellido</th>
      <th style="text-align:left">Cif</th>
      <th style="text-align:left">Direccion</th>
      <th style="text-align:left">Teléfono</th>
      <th style="text-align:left">Día de reparto</th>
      <th style="text-align:left">Hora de reparto</th>

    </tr>
    <xsl:for-each select="//proveedor">
    <tr>
      <td><xsl:value-of select="nombre"/></td> <!--tag del proveedor-->
      <td><xsl:value-of select="apellido"/></td>
      <td><xsl:value-of select="cif"/></td>
      <td><xsl:value-of select="direccion"/></td>
      <td><xsl:value-of select="telefono"/></td>
      <td><xsl:value-of select="reparto"/></td>
      <td><xsl:value-of select="horario"/></td>
    </tr>
    </xsl:for-each>
  </table>
</body>
</html>
</xsl:template>
</xsl:stylesheet>