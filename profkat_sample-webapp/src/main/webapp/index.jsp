<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="x" uri="http://java.sun.com/jsp/jstl/xml"  %>
<%@ taglib prefix="mcr" uri="http://www.mycore.org/jspdocportal/base.tld" %>

<c:set var="org.mycore.navigation.path" scope="request">main.start</c:set>

<!doctype html>
<html>
  <head>
    <title><fmt:message key="Nav.Startpage" /> @ <fmt:message key="Nav.Application" /></title>
    <link rel="canonical" href="${WebApplicationBaseURL}" />
                    
    <%@ include file="./WEB-INF/views/fragments/html_head.jspf" %>
    <meta name="mcr:search.id" content="${it.result.id}" />
  </head>
  <body>
    <%@ include file="./WEB-INF/views/fragments/header.jspf" %>
    <div id="content_area">
      <div class="container">
        <div class="row">
          <div class="col-4">
            <img class="w-100" src="${WebApplicationBaseURL}images/pexels-ivan-bertolazzi-2681405.jpg" />
          </div>
          <div class="col-8">
            <mcr:includeWebcontent id="start" file="start.html" />    
          </div>
        </div>
      </div>
    </div>
  <%@ include file="./WEB-INF/views/fragments/footer.jspf" %>
  </body>
</html>
  