<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.ArrayList" import="model.ContentsdataBean" import="org.apache.commons.lang3.StringEscapeUtils"%>
<%
    ArrayList<ContentsdataBean> arraycontentsdata = new ArrayList<ContentsdataBean>();
    arraycontentsdata = (ArrayList<ContentsdataBean>)session.getAttribute("arraycontentsdata");
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
<td>ボタン</td>
</tr>
<%for(ContentsdataBean contents:arraycontentsdata){ %>
<tr><td><%= StringEscapeUtils.escapeHtml4(contents.getContentsID()) %></td>
	<td><%= StringEscapeUtils.escapeHtml4(contents.getContentsdataID()) %></td>
	<td><%= StringEscapeUtils.escapeHtml4(contents.getContentsdataName()) %></td>
	<td><img style="width:55%;" src="GetPicture?id=<%= contents.getContentsID() %>&id2=<%= contents.getContentsdataID()%>" class="pict"></td>
	<td><%= StringEscapeUtils.escapeHtml4(contents.getIntroduction()) %></td>
	<td><%= StringEscapeUtils.escapeHtml4(contents.getSex()) %></td>
	<td><%= contents.getBirthday() %></td>
	
	<td><a href="GetContentsdata?id=<%=contents.getContentsID()%>">参加者一覧</a></td>
	</tr>
<%} %>
</table>

</body>
</html>