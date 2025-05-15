<%@page import="java.util.Map"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import="java.util.HashMap" %>
<%@ page import="dao.ImageDAO" %>
<%
    ImageDAO dao = new ImageDAO();
    HashMap<String, String> imagemap = dao.getAllImages();
    session.setAttribute("imagemap", imagemap); // store in session
%>