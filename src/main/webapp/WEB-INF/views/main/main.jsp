<%--
  Created by IntelliJ IDEA.
  User: Wonsik
  Date: 2022-12-28
  Time: 오후 4:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<% request.setCharacterEncoding("utf-8"); %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="my" tagdir="/WEB-INF/tags" %>
<html>
<head>
    <title>Title</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css"
          integrity="sha512-xh6O/CkQoPOWDdYTDqeRdPCVd1SpvCA9XXcUnZS2FmJNp1coAFzvtCN9BmamE+4aHK8yyUHUSCcJHgXloTyT2A=="
          crossorigin="anonymous" referrerpolicy="no-referrer"/>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.1/font/bootstrap-icons.css">
    <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Roboto:400,300">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.3/jquery.min.js"
            integrity="sha512-STof4xm1wgkfm7heWqFJVn58Hm3EtS31XFaagaa8VMReCXAkQnJZ+jEy8PCC/iT18dFy95WcExNHFTqLyp72eQ=="
            crossorigin="anonymous" referrerpolicy="no-referrer"></script>
    <style>

        .row {
            --bs-gutter-x: 0 !important;
        }
        .aa {
            background-image: linear-gradient(
                    to top left,
                    rgba(0, 0, 0, 0.4),
                    rgba(0, 0, 0, 0.4)),
            url(/sharedFive/static/img/nikola-RXqP3QMNTH8-unsplash.jpg);
            background-repeat: no-repeat center fixed;;
            background-size: cover;
            height: 100vh;
            /*background: url(/sharedFive/static/img/nikola-RXqP3QMNTH8-unsplash.jpg) no-repeat center fixed;*/
            /*background-size: cover;*/
            /*height: 100vh;*/
        }

        body {
            margin: 0;
        }
        /*.aa {*/
        /*    background: url(/sharedFive/static/img/nikola-RXqP3QMNTH8-unsplash.jpg) no-repeat center fixed;*/
        /*    background-size: cover;*/
        /*    height: 100vh;*/
        /*}*/

    </style>
</head>
<body>
<div class="row">
    <div class="col-6 col-sm-2">
        <my:header></my:header>
    </div>
    <div class="aa">

    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3"
        crossorigin="anonymous"></script>
</body>
</html>
