<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
		<html>
            <head>
                <style>
                .Employee
                {
                margin-left:auto;
                margin-right:auto;
                }
				div
				{
                text-align:center;
                width:48%;
				}
				td,th
				{
                font-size:larger;
                padding:20px;
                text-align:center !important;
				}
                </style>
            </head>
            <body>
                <h1 style="text-align:center;">Employee Management System</h1>
                <div class='Employee'>
                    <table border="2" align="center">
                        <tr bgcolor="#97B337">
                            <th style="text-align:left">ID</th>
                            <th style="text-align:left">NAME</th>
                            <th style="text-align:left">AGE</th>
                            <th style="text-align:left">SALARY</th>
                            <th style="text-align:left">EMAIL</th>
                            <th style="text-align:left">Mob no</th>
                            <th style="text-align:left">Designation</th>
                            <th style="text-align:left">Promotion</th>
						</tr>
                        <xsl:for-each select="company/employee">
                            <tr>
                            <td>
								<xsl:value-of select="id"/>
                            </td>
                            <td>
                                <xsl:value-of select="name"/>
                            </td>
                            <td>
                                <xsl:value-of select="age"/>
                            </td>
                            <td>
                                <xsl:value-of select="salary"/>
                            </td>
                            <td>
                                <xsl:value-of select="emailid"/>
                            </td>
                            <td>
                                <xsl:value-of select="phonenum"/>
                            </td>
                            <td>
								<xsl:value-of select="designation"/>
                            </td>
							<xsl:choose>
								<xsl:when test="age >= 50">
									<td>
										<xsl:value-of select="promotion"/>
										Associate Project Manager
									</td>
								</xsl:when>
								<xsl:otherwise>
									<td>
										<xsl:value-of select="promotion"/>
										Team Leader
									</td>

								</xsl:otherwise>
							</xsl:choose>
						</tr>
                        </xsl:for-each>
                    </table>
                </div>
			</body>
        </html>
	</xsl:template>
</xsl:stylesheet>