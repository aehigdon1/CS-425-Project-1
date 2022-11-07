<%@page import="Project1.Project1DAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id ="daoFactory" class="Project1.DAOFactory" scope="application"/>

<%
    Project1DAO project1dao = daoFactory.getProject1DAO();
%>

<!DOCTYPE html>
<html>
   <head>
        <title>Currency Conversion Calculator</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <script type="text/javascript" src="scripts/jquery-3.6.1.min.js"></script>
        <script type="text/javascript" src="scripts/script.js"></script>
    </head>
    <body>
        <form>
            <fieldset>
            <legend>Currency Conversion Calculator</legend>
            
            <p>
                <label for="usd_value">Enter Value in USD:</label>
                <input type="number" name="usd_value" id="usd_value">
                <br><br>
                <label for="rate_date">Enter Date:</label>
                <input type="date" name="rate_date" id="rate_date">
            </p>
            
            <p>
                <label for="list">Choose Target Currency:</label>
                <%= project1dao.getCurrencyListAsHTML() %>
                <br>
                <button type = "button" value= "convert" onclick="Project1.getRatesAndConvert();">Convert</button>
            </p>
            </fieldset>
        </form>
        
        <div id="output"></div>
        
        <script type="text/javascript">
            $(Project1.jQueryTest());
        </script>
        
    </body>
</html>