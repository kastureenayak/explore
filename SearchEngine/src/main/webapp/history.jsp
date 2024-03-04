<%@page import="java.util.ArrayList"%>
<%@page import="com.WebSearchEngine.HistoryResult"%>
<html>
<head>
<link rel="stylesheet" type="text/css" href="styles.css">
</head>
<body>
<h1><a class="h1" href="http://localhost:8080/SearchEngine/">Explore</a></h1>
<form action = "Search">
     <input type="text" class="search" placeholder = "Search Your Favourite Topic" name="keyword" required></input>
     <button type="submit" class="search-btn" >Search</button>
</form>

<form action="History">
     <button type="submit" class="history-btn">Browse Search History</button>
</form>

<div class = "showTable">
    <div>
        <h3>Search History</h3>
    </div>
    <table class="table">
        <tr>
            <th>Keyword</th>
            <th>Link</th>
        </tr>
        <%
            //Get results from history servlet
            ArrayList<HistoryResult> results=(ArrayList<HistoryResult>)request.getAttribute("results");
            //Iterate for every data present in results array
            for(HistoryResult result:results){
        %>
       <tr>
           <td><%out.println(result.getKeyword());%></td>
           <td><a href="<%out.println(result.getLink());%>"><%out.println(result.getLink());%></a></td>
       </tr>
       <%
           }
       %>
    </table>
</div>

<div class="footer">
    <p>&#169; 2024 Kasturee Nayak. All rights reserved</p>
</div>
</body>
</html>
