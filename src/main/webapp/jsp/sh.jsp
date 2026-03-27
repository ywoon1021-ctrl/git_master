<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>떡볶이 월드</title>

    <style>
        body {
            margin: 0;
            font-family: 'Arial';
            background-color: #fff5f5;
        }

        /* 헤더 */
        .header {
            background-color: #ff4d4d;
            color: white;
            padding: 20px;
            text-align: center;
            font-size: 28px;
            font-weight: bold;
        }

        /* 메뉴 */
        .nav {
            display: flex;
            justify-content: center;
            background-color: #ff9999;
        }

        .nav a {
            padding: 15px 25px;
            text-decoration: none;
            color: white;
            font-weight: bold;
            transition: 0.3s;
        }

        .nav a:hover {
            background-color: #ff4d4d;
        }

        /* 메인 */
        .main {
            text-align: center;
            padding: 50px;
        }

        .main h1 {
            font-size: 40px;
            color: #ff4d4d;
        }

        .menu-box {
            margin-top: 30px;
        }

        .item {
            display: inline-block;
            width: 200px;
            margin: 15px;
            padding: 20px;
            background-color: white;
            border-radius: 15px;
            box-shadow: 0 4px 10px rgba(0,0,0,0.1);
            transition: 0.3s;
        }

        .item:hover {
            transform: translateY(-10px);
        }

        .item h3 {
            margin: 10px 0;
        }

        /* 푸터 */
        .footer {
            margin-top: 50px;
            padding: 15px;
            background-color: #ff4d4d;
            color: white;
            text-align: center;
        }
    </style>

</head>
<body>

<div class="header">
    🌶️ 떡볶이 월드
</div>

<div class="nav">
    <a href="#">홈</a>
    <a href="#">메뉴</a>
    <a href="#">주문하기</a>
    <a href="#">문의</a>
</div>

<div class="main">
    <h1>맛있는 떡볶이의 세계 🍢</h1>
    <p>매콤달콤한 최고의 떡볶이를 만나보세요!</p>

    <div class="menu-box">
        <div class="item">
            <h3>기본 떡볶이</h3>
            <p>₩3,000</p>
        </div>

        <div class="item">
            <h3>치즈 떡볶이</h3>
            <p>₩4,000</p>
        </div>

        <div class="item">
            <h3>로제 떡볶이</h3>
            <p>₩5,000</p>
        </div>
    </div>
</div>

<div class="footer">
    © 2026 떡볶이 월드 | 만든이: 김선형 😎
</div>

</body>
</html>