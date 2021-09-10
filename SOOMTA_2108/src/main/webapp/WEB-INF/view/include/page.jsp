<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ include file="../include/tags.jsp" %>
     <div class="page_wrap">
     	<div class="page_nation">
			<c:if test="${page <= 1 }">
			<span class="arrow pprev"><img src="<c:url value='/images/page_pprev.png'/>"/></span>
			<span class="arrow prev"><img src="<c:url value='/images/page_prev.png'/>"/></span></c:if>
			<c:if test="${page > 1 }">
				<a class="arrow pprev" href="${pageUrl }?page=1"><img src="<c:url value='/images/page_pprev.png'/>"/></a>
				<a class="arrow prev" href="${pageUrl }?page=${page -1 }"><img src="<c:url value='/images/page_prev.png'/>"/></a>
			</c:if>
			<c:forEach begin="${startPage }" end="${endPage }" var="p" 
					step="1" >
			<c:if test="${page == p }"><a class="active" href="${pageUrl }?page=${p }"> ${p }</a></c:if>
			<c:if test="${page != p }"><a href="${pageUrl }?page=${p }"> ${p }</a></c:if>
			</c:forEach>
			<c:if test="${page >= maxPage }">
			<span class="arrow next"><img src="<c:url value='/images/page_next.png'/>"/></span>
			<span class="arrow nnext"><img src="<c:url value='/images/page_nnext.png'/>"/></span>
			</c:if>
			<c:if test="${page < maxPage }">
				<a class="arrow next" href="${pageUrl }?page=${page + 1 }"><img src="<c:url value='/images/page_next.png'/>"/></a>
				<a class="arrow nnext" href="${pageUrl }?page=${maxPage}"><img src="<c:url value='/images/page_nnext.png'/>"/></a>
			</c:if>
		</div>
	</div>
