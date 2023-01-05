<%--
  Created by IntelliJ IDEA.
  User: hyeonjong
  Date: 2022/12/30
  Time: 9:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<% request.setCharacterEncoding("utf-8"); %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="my" tagdir="/WEB-INF/tags" %>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Title</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css"
          integrity="sha512-xh6O/CkQoPOWDdYTDqeRdPCVd1SpvCA9XXcUnZS2FmJNp1coAFzvtCN9BmamE+4aHK8yyUHUSCcJHgXloTyT2A=="
          crossorigin="anonymous" referrerpolicy="no-referrer"/>
    <link
            href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700&display=swap"
            rel="stylesheet">
    <style>
        * {
            font-family: 'Noto Sans KR', sans-serif;
        }
        .table{
            width: 900px;
        }
        tr{
            height: 55px;
        }
        h1{
            font-size:1.5em;
            margin: 30px 0;
        }
        h2{
            font-size: 1.1em;
            margin: 20px 0 10px 0;
        }
    </style>
</head>
<body>

<div class="row">
    <div class="col-3">
        <my:header></my:header>
    </div>
    <div class="col">
<h1>오더관리</h1>
<input class="btn btn-danger" type="submit" value="삭제하기" data-bs-toggle="modal"
       data-bs-target="#removeModal">

<table class="table">
    <tbody>
    <tr style="font-family: 'LINESeedKR-Bd'">
        <th>오더코드</th>
        <th>바이어코드</th>
        <th>바이어명</th>
        <th>전체금액</th>
        <th>발주상태</th>
        <th></th>
    </tr>
    <c:forEach items="${buyerList }" var="buyer">
        <tr>
            <td>001001</td>
            <td>001001</td>
            <td>바이어명</td>
            <td>전체금액</td>
            <td>발주상태</td>
            <td>
                <a class="btn btn-primary" href="">수정하기</a>
            </td>
        </tr>
    </c:forEach>
    </tbody>
</table>

<form id="removeForm" action="${removeLink }" method="post">
    <input type="hidden" name="replyName" value="${Buyer.m_buyer_id }">
</form>
<div class="modal fade" id="removeModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h1 style="font-family: 'LINESeedKR-Bd'" class="modal-title fs-5" id="exampleModalLabel">삭제 확인</h1>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                삭제하시겠습니까?
            </div>
            <div class="modal-footer">
                <button style="font-family: 'LINESeedKR-Bd'" type="button" class="btn btn-secondary"
                        data-bs-dismiss="modal">취소
                </button>
                <button style="font-family: 'LINESeedKR-Bd'" id="removeConfirmButton" type="button"
                        class="btn btn-danger">확인
                </button>
            </div>
        </div>
    </div>
</div>
    </div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3"
        crossorigin="anonymous"></script>
<script>
</script>
</body>
</html>