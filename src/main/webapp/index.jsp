<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
    <link rel="stylesheet" href="css/design.css">

    <style>
        /* (여은사) : 이미지가 처음에 안 보이게 설정하고 크기를 조절합니다 */
        #loveImage {
            display: none;
            margin-top: 20px;
            width: 300px;
            border-radius: 10px;
        }
    </style>

</head>
<body>
<div class="wrap-div">

<h1>Home Page~</h1>
<button >경민 다람쥐</button>
<button >무영 참새</button>
<button >선형 햄스터</button>
<button >예진 호랑이</button>
<button onclick="location.href='jsp/eunsa.jsp'">은사랑해</button>
<button >영운세뽑기</button>

</div>

</body>
</html>