<%@page import="java.util.ArrayList"%>
<%@page import="com.WebSearchEngine.SearchResult"%>
<html>
<head>
<link rel="stylesheet" type="text/css" href="styles.css">
</head>
<body>
<h1><a class="h1" href="http://localhost:8080/SearchEngine/">Explore</a></h1>
<form action = "Search">
     <input type="text" class="search" placeholder = "Search Your Favourite Topic" name="keyword"></input>
     <button type="submit" class="search-btn" >Search</button>
</form>
<form action="History">
     <button type="submit" class="history-btn">Browse Search History</button>
</form>
<div class = "showTable">
    <div>
        <h3>Search Results</h3>
    </div>
    <table class="table">
        <tr>
           <th>Title</th>
           <th>Links</th>
        </tr>
        <%
            ArrayList<SearchResult> results=(ArrayList<SearchResult>)request.getAttribute("results");

            for(SearchResult result:results){
        %>
        <tr>
          <td><%out.println(result.getTitle());%></td>
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