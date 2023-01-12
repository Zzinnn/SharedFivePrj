<%--
  Created by IntelliJ IDEA.
  User: sunggyu-lim
  Date: 2023/01/01
  Time: 5:59 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<% request.setCharacterEncoding("utf-8"); %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
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
    <link href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css" rel="stylesheet" type="text/css"/>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>

    <style>
        .itemRegisterBtn {
            position: relative;
        }

        body {
            font-family: 'Noto Sans KR', sans-serif;
            background-color: #eeeeee;
        }

        .table {
            width: 900px;
            --bs-table-bg: #fff;
        }

        .table.addList {
            --bs-table-bg: #5f7175;
            --bs-table-color: #fff;
            text-align: center;
            line-height: 39px;
            font-size: 16px;
        }

        tr {
            height: 55px;
        }

        h1 {
            font-size: 1.7em;
            margin: 30px 0;
        }

        h2 {
            font-size: 1.1em;
            margin: 20px 0 10px 0;
        }

        .table td {
            /*--bs-table-bg: #fffff;*/
            background-color: #fff;
            color: #37393b;
            text-align: center;
            line-height: 39px;
            font-size: 16px;
            font-weight: bold;
        }

        .tableList {
            background-color: #fff;
            height: 616px;
            width: 900px;
        }

        td a {
            color: #37393b;
            background-color: #fff;
            text-decoration: none;
        }

        .table button {
            background-color: #757575;
            color: #fff;
            /*border-radius: 0;*/
            width: 100px;
            --bs-btn-font-weight: 600;
            border: none;
        }

        .searchBox {
            background-color: white;
            width: 900px;
            padding: 20px 80px 5px 80px;
            color: #212529;
            font-size: 16px;
            font-weight: bold;
            margin-bottom: 20px;
        }

        form > * {
            background-color: white;
            position: relative;
        }

        form .form-control, .form-select {
            height: 40px;
            margin: 5px 0 5px 0;
        }

        .input-group {
            margin-bottom: 0;
        }

        .itemRegisterBtn {
            float: right;
            margin-top: 20px;
        }

        .itemRegisterBtn button {
            background-color: #658e99;
            text-align: center;
            width: 150px;
            height: 55px;
            color: #fff;
            line-height: 39px;
            --bs-btn-font-weight: 600;
            border: none;
        }

        form div div, label {
            background-color: white;
        }

        .searchBtn {
            width: 100px;
            height: 40px;
            margin: 5px 0px 5px 0px;
            --bs-btn-font-weight: 600;
            background-color: #658e99;
            border: none;
        }
    </style>
</head>
<body>
<c:if test="${not empty message }">
    <div style="cursor:pointer" onclick="">
        <script>
            alert('<c:out value="${message }"/>')
        </script>
    </div>
</c:if>
<div class="row" style="height: 100%;">
    <div class="col-3">
        <my:header></my:header>
    </div>
    <div class="col ">
        <div style="display: flex;justify-content: space-between;width: 900px;">


            <div id="itemListTitle">
                <h1 id="header">제품 관리 및 등록</h1>
                <h2>제품 검색</h2>
            </div>
            <div class="itemRegisterBtn">
                <c:url value="/item/register" var="registerLink"></c:url>
                <button type="button" class="btn btn-secondary" onclick="location.href='${registerLink}' ">제품 등록
                </button>
            </div>
        </div>

        <div class="searchBox">
            <c:url value="/item/list" var="listLink"></c:url>
            <%--      <form action="${listLink}" role="search">--%>
<%--            <div style="display: flex;justify-content: space-between;">--%>
<%--                <div>--%>
<%--                    <label>제품코드</label>--%>
<%--                    <input class="form-control" value="${param.m_item_id}" type="search" name="m_item_id"--%>
<%--                           placeholder="입력" autocomplete='off' style="width: 210px">--%>
<%--                </div>--%>
<%--                <div>--%>
<%--                    <label>제품그룹</label>--%>
<%--                    <input class="form-select" type="text" list="groupList" style="width: 210px"/>--%>
<%--                    <datalist id="groupList">--%>
<%--                        <c:forEach items="${groupList}" var="groupList">--%>
<%--                            <option class="non" value="${groupList.m_item_group}">${groupList.m_item_group}</option>--%>
<%--                        </c:forEach>--%>
<%--                    </datalist>--%>
<%--                </div>--%>
<%--                <div style="float: right">--%>
<%--                    <label>제조사</label>--%>
<%--                    <input class="form-select" type="text" list="manufacturerList" style="width: 210px;"/>--%>
<%--                    <datalist id="manufacturerList">--%>
<%--                        <c:forEach items="${manufacturerList}" var="manufacturerList">--%>
<%--                            <option class="non"--%>
<%--                                    value="${manufacturerList.m_item_manufacturer}">${manufacturerList.m_item_manufacturer}</option>--%>
<%--                        </c:forEach>--%>
<%--                    </datalist>--%>
<%--                </div>--%>
<%--            </div>--%>

            <form action="${listLink}" class="d-flex" role="search">
                <div class="input-group" style="float: none">
                <select name="t" class="form-select">
                    <option value="all">전체</option>
                    <option value="itemId" ${param.t == 'itemId' ? 'selected' : '' }>제품코드</option>
                    <option value="itemGroup" ${param.t == 'itemGroup' ? 'selected' : '' }>제품그룹</option>
                    <option value="itemManufacturer" ${param.t == 'itemManufacturer' ? 'selected' : '' }>제조사</option>
                    <option value="itemName" ${param.t == 'itemName' ? 'selected' : '' }>제품명</option>
                </select>

                    <input value="${param.q}" type="search" class="form-control" placeholder="Search"
                           aria-label="Search" name="q" style="width:450px">
                    <button class="btn btn-secondary searchBtn" type="submit" value="검색">검색</button>
                </div>
            </form>
        </div>

        <div style="position:absolute;background-color: transparent;width:900px">
            <button class="btn btn-danger" style="float: right; width: 100px;" data-bs-toggle="modal"
                    data-bs-target="#removeModal" value="삭제" class="btn btn-danger">선택삭제
            </button>
        </div>
        <c:url value="/item/remove" var="removeLink"/>
        <form id="removeForm" action="${removeLink }" method="post">
            <input type="hidden" id="removeInput" name="m_item_id" value="">
        </form>

        <div class="tableList">
            <table class="table addList">
                <thead>
                <tr>
                    <th></th>
                    <th>제품코드</th>
                    <th>제품그룹</th>
                    <th>제조사</th>
                    <th>제품명</th>
                    <th>단위</th>
                    <th></th>
                </tr>
                </thead>
                <tbody>
                <c:forEach items="${itemList}" var="itemList">
                    <div>
                        <tr>
                            <td>
                                <input id="itemBox" name="itemBox" type="checkbox" value="${itemList.m_item_id}">
                            </td>
                            <td>
                                    ${itemList.m_item_id}
                            </td>
                            <td>
                                    ${itemList.m_item_group}
                            </td>
                            <td>
                                    ${itemList.m_item_manufacturer}
                            </td>
                            <td>
                                    ${itemList.m_item_name}
                            </td>
                            <td>
                                    ${itemList.m_item_unit}
                            </td>
                            <td>
                                <c:url value="/item/register" var="registerLink">
                                    <c:param name="m_item_id" value="${itemList.m_item_id}"></c:param>
                                </c:url>
                                <button type="button" class="btn btn-secondary"
                                        onclick="location.href='${registerLink}' ">수정
                                </button>
                            </td>
                        </tr>
                    </div>
                </c:forEach>
                </tbody>
            </table>
        </div>
        <div class="row">
            <div class="col">
                <nav aria-label="Page navigation example">
                    <ul class="pagination">

                        <%-- 맨앞 버튼( 1페이지가 아니면 생김) --%>
                        <c:if test="${itemDto.currentPageNumber ne 1 }">
                            <c:url value="/item/list" var="listLink">
                                <c:param name="page" value="1"/>
                                <c:param name="q" value="${param.q }"/>
                                <c:param name="t" value="${param.t }"/>
                            </c:url>
                            <%-- 맨앞 버튼 --%>
                            <li class="page-item">
                                <a href="${listLink }" class="page-link">
                                    <i class="fa-solid fa-angles-left"></i>
                                </a>
                            </li>
                        </c:if>

                        <c:if test="${itemDto.hasPrevButton }">
                            <c:url value="/item/list" var="listLink">
                                <c:param name="page" value="${itemDto.jumpPrevPageNumber }"></c:param>
                                <c:param name="q" value="${param.q }"/>
                                <c:param name="t" value="${param.t }"/>
                            </c:url>
                            <li class="page-item">
                                <a href="${listLink }" class="page-link">
                                    <i class="fa-solid fa-angle-left"></i>
                                </a>
                            </li>
                        </c:if>

                        <c:forEach begin="${itemDto.leftPageNumber}" end="${itemDto.rightPageNumber}" var="pageNumber">
                            <c:url value="/item/list" var="listLink">
                                <c:param name="page" value="${pageNumber }"/>
                                <c:param name="q" value="${param.q }"/>
                                <c:param name="t" value="${param.t }"/>
                            </c:url>
                            <li class="page-item

                  <%-- 현재페이지에 active 클래스 추가 --%>
                  ${itemDto.currentPageNumber eq pageNumber ? 'active' : ''} }

                  "><a class="page-link" href="${listLink}">${pageNumber}</a>
                            </li>
                        </c:forEach>

                        <%-- 다음 버튼 --%>
                        <c:if test="${itemDto.hasNextButton }">
                            <c:url value="/item/list" var="listLink">
                                <c:param name="page" value="${itemDto.jumpNextPageNumber }"></c:param>
                                <c:param name="q" value="${param.q }"/>
                                <c:param name="t" value="${param.t }"/>
                            </c:url>
                            <li class="page-item">
                                <a href="${listLink }" class="page-link">
                                    <i class="fa-solid fa-angle-right"></i>
                                </a>
                            </li>
                        </c:if>

                        <%-- 맨뒤 버튼 --%>
                        <c:if test="${itemDto.currentPageNumber ne itemDto.lastPageNumber }">
                            <c:url value="/item/list" var="listLink">
                                <c:param value="${itemDto.lastPageNumber }" name="page"/>
                                <c:param name="q" value="${param.q }"/>
                                <c:param name="t" value="${param.t }"/>
                            </c:url>
                            <li class="page-item">
                                <a href="${listLink }" class="page-link">
                                    <i class="fa-solid fa-angles-right"></i>
                                </a>
                            </li>
                        </c:if>
                    </ul>
                </nav>
            </div>
        </div>
    </div>
</div>
<!-- remove Modal -->
<div class="modal fade" id="removeModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h1 style="font-family: 'LINESeedKR-Bd'" class="modal-title fs-5" id="exampleModalLabel">삭제
                    확인</h1>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                삭제하시겠습니까? 복구할 수 없습니다.
            </div>
            <div class="modal-footer">
                <button style="font-family: 'LINESeedKR-Bd'" type="button" class="btn btn-secondary"
                        data-bs-dismiss="modal">취소
                </button>
                <button style="font-family: 'LINESeedKR-Bd'" id="removeButton" type="submit"
                        class="btn btn-danger">확인
                </button>
            </div>
        </div>
    </div>
</div>
</body>

<script>
    // 제품그룹 select
    var initialText = $('.GroupEditable').val();
    $('.groupEditOption').val(initialText);

    $('#groupSelect').change(function () {
        var selected = $('option:selected', this).attr('class');
        var optionText = $('.GroupEditable').text();

        if (selected == "GroupEditable") {
            $('.groupEditOption').show();


            $('.groupEditOption').keyup(function () {
                var editText = $('.groupEditOption').val();
                $('.GroupEditable').val(editText);
                $('.GroupEditable').html(editText);
            });

        } else {
            $('.groupEditOption').hide();
        }
    });

    // 제품 제조사 select
    var initialText = $('.manufacturerEditable').val();
    $('.ManufacturerEditOption').val(initialText);

    $('#manufacturerSelect').change(function () {
        var selected = $('option:selected', this).attr('class');
        var optionText = $('.manufacturerEditable').text();

        if (selected == "manufacturerEditable") {
            $('.ManufacturerEditOption').show();


            $('.ManufacturerEditOption').keyup(function () {
                var editText = $('.ManufacturerEditOption').val();
                $('.manufacturerEditable').val(editText);
                $('.manufacturerEditable').html(editText);
            });

        } else {
            $('.ManufacturerEditOption').hide();
        }
    });

</script>
<script>
    // 삭제 진행
    function remove() {
        var length = document.getElementsByName("itemBox").length;
        var removeIdList = [];
        for (var i = 0; i < length; i++) {
            var checkedBox = document.getElementsByName("itemBox")[i].checked
            if (checkedBox) {
                var selectId = document.getElementsByName("itemBox")[i].value;
                removeIdList.push(selectId);
            }
        }
        document.querySelector("#removeInput").value = removeIdList;
        console.log(document.querySelector("#removeInput").value);
        document.getElementById('removeForm').submit();
        <%--const ctx = "${pageContext.request.contextPath}";--%>
        <%--document.location.href = ctx + "/item/list";--%>
    }

    document.querySelector("#removeButton").addEventListener("click", remove);
</script>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3"
        crossorigin="anonymous"></script>
</html>
