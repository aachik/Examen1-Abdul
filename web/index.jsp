<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%-- 
    Document   : index
    Created on : 10/09/2014, 12:56:47 PM
    Author     : abdul
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
      
    </head>
    <body>
       <form action="response.jsp">
            <p>escoje carrera: </p>
            <select name="ClaveCarrera"><sql:query var="ClaveCarrera" dataSource="jdbc/Examen1-Abdul">
                    SELECT "ClaveCarrera", "NombreCarrera"
  FROM "Carrera"
                </sql:query>
                    
                <table border="1">
                    <!-- column headers -->
                    <tr>
                        <c:forEach var="columnName" items="${ClaveCarrera.columnNames}">
                            <th><c:out value="${columnName}"/></th>
                            </c:forEach>
                    </tr>
                    <!-- column data -->
                    <c:forEach var="row" items="${ClaveCarrera.rowsByIndex}">
                        <tr>
                            <c:forEach var="column" items="${row}">
                                <td><c:out value="${column}"/></td>
                            </c:forEach>
                        </tr>
                    </c:forEach>
                </table>
                <option></option>
                <option></option>
            </select>
            <input type="submit" value="submit" />
        </form>
    </body>
</html>
