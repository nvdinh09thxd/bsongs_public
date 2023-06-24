<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ include file="/templates/public/inc/header.jsp" %>
<div class="content_resize">
  <div class="mainbar">
  <%
	  Song itemSong = (Song) request.getAttribute("itemSong");
	  if(itemSong!=null){
  %>
    <div class="article">
      <h1><%=itemSong.getName() %></h1>
      <div class="clr"></div>
      <p>Ngày đăng: <%=itemSong.getDateCreate() %>. Lượt xem: <%=itemSong.getCounter() %></p>
      <div class="vnecontent">
          <%=itemSong.getDetailText() %>
      </div>
    </div>
    <%
  }
    %>
    <div class="article">
      <h2>Bài viết liên quan</h2>
      <div class="clr"></div>
      <%
	      @SuppressWarnings("unchecked")
	      ArrayList<Song> relatedSongs = (ArrayList<Song>) request.getAttribute("relatedSongs");
	      if(relatedSongs!=null && relatedSongs.size()>0){
	    	  for(Song item: relatedSongs){
      %>
      <div class="comment"> <a href="<%=request.getContextPath()%>/detail?id=<%=item.getId() %>"><img src="<%=request.getContextPath() %>/templates/public/images/<%=item.getPicture() %>" width="40" height="40" alt="" class="userpic" /></a>
        <h2><a href="<%=request.getContextPath()%>/detail?id=<%=item.getId() %>"><%=item.getName() %></a></h2>
        <p><%=item.getPreviewText() %></p>
      </div>
      <%
    	  }}
      %>
    </div>
  </div>
  <div class="sidebar">
  <%@ include file="/templates/public/inc/leftbar.jsp" %>
  </div>
  <div class="clr"></div>
</div>
<script>
	<%if(itemSong!=null){%>
    	document.getElementById("<%=itemSong.getItemCat().getIdCat()%>").classList.add('active_cat');
	<%}%>
	document.getElementById("home").classList.add('active');
</script>
<%@ include file="/templates/public/inc/footer.jsp" %>
