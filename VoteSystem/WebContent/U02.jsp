<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.ArrayList" import="model.ContentsBean" import="org.apache.commons.lang3.StringEscapeUtils"%>
    <%
    ArrayList<ContentsBean> arraycontents = new ArrayList<ContentsBean>();
    arraycontents = (ArrayList<ContentsBean>)session.getAttribute("arraycontents");
    %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<table class="table table-bordered">
<tr>
<td>コンテンツID</td>
<td>コンテンツ名</td>
<td>登録日</td>
<td>投票開始日</td>
<td>投票締切日</td>
<td>画像</td>
</tr>
<%for(ContentsBean contents:arraycontents){ %>
<tr><td><%= StringEscapeUtils.escapeHtml4(contents.getContentsID()) %></td>
	<td><%= StringEscapeUtils.escapeHtml4(contents.getContentsName()) %></td>
	<td><%= contents.getContentsDate() %></td>
	<td><%= contents.getStartDate() %></td>
	<td><%= contents.getEndDate() %></td>
	
	<td><img style="width:55%;" src="GetPicture?id=<%= contents.getContentsID() %>" class="pict"></td>
	</tr>
<%} %>
</table>
</body>
</html>