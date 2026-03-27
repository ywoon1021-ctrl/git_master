<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Kyungmin's Pixel World</title>
    <style>

        /* --- 전체 설정 --- */
        body {
            background-color: #f0f0f0; /* 연한 그레이 배경 */
            /* 픽셀 느낌을 위한 한국어 폰트 적용 */
            font-family: 'DungGeunMo', sans-serif;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
            /* 배경에 미세한 픽셀 패턴 추가 (선택사항) */
            background-image: linear-gradient(45deg, #e0e0e0 25%, transparent 25%),
            linear-gradient(-45deg, #e0e0e0 25%, transparent 25%),
            linear-gradient(45deg, transparent 75%, #e0e0e0 75%),
            linear-gradient(-45deg, transparent 75%, #e0e0e0 75%);
            background-size: 4px 4px;
        }

        /* --- 메인 컨테이너 --- */
        .main-container {
            background-color: #fff;
            border: 4px solid #000; /* 굵고 검은 픽셀 테두리 */
            box-shadow: 8px 8px 0px #888; /* 픽셀 느낌의 딱딱한 그림자 */
            padding: 30px;
            width: 350px;
            text-align: center;
        }

        /* --- 타이틀 --- */
        .page-title {
            color: #ff69b4; /* Y2K 감성 핫핑크 */
            font-size: 24px;
            text-shadow: 2px 2px 0px #000;
            margin-bottom: 20px;
            letter-spacing: -1px;
        }

        /* --- 프로필 섹션 --- */
        .profile-section {
            margin-bottom: 20px;
        }

        .user-name {
            font-size: 18px;
            font-weight: bold;
            color: #333;
            margin-bottom: 10px;
        }

        .profile-img-wrap {
            display: inline-block;
            border: 3px solid #000;
            padding: 5px;
            background-color: #fff;
        }

        .profile-img {
            width: 100px;
            height: 100px;
            object-fit: cover;
            /* 이미지가 살짝 깨져 보이게 하여 픽셀 느낌 강조 (선택사항) */
            image-rendering: pixelated;
        }

        /* --- 인풋 섹션 공통 --- */
        .input-section {
            margin-bottom: 15px;
            text-align: left;
        }

        .input-label {
            display: block;
            font-size: 14px;
            color: #555;
            margin-bottom: 5px;
            margin-left: 2px;
        }

        /* 모든 인풋 공통 스타일 */
        .pixel-input {
            width: 100%;
            padding: 10px;
            font-family: 'DungGeunMo', sans-serif;
            font-size: 14px;
            border: 3px solid #000; /* 굵은 테두리 */
            box-sizing: border-box; /* 패딩 포함 너비 계산 */
            background-color: #fff;
        }

        .pixel-input:focus {
            outline: none;
            border-color: #00ffff; /* 포커스 시 네온 민트색 */
            box-shadow: 0 0 5px #00ffff;
        }

        /* --- [요청사항] 개별 인풋 스타일 (네임별) --- */

        /* Name 인풋 (input-name) */
        .input-name {
            color: #ff00ff; /* 핫핑크 글씨 */
        }

        /* Yowa 인풋 (input-nickname) */
        .input-nickname {
            color: #0000ff; /* 파란색 글씨 */
        }

        /* --- 버튼 섹션 --- */
        .button-section {
            margin-top: 25px;
            display: flex;
            justify-content: space-around;
        }

        /* 모든 버튼 공통 스타일 */
        .pixel-btn {
            font-family: 'DungGeunMo', sans-serif;
            font-size: 14px;
            padding: 10px 15px;
            border: 3px solid #000;
            cursor: pointer;
            position: relative;
            transition: all 0.1s;
            box-shadow: 4px 4px 0px #000; /* 딱딱한 버튼 그림자 */
        }

        .pixel-btn:active {
            /* 클릭 시 버튼이 눌리는 효과 */
            top: 3px;
            left: 3px;
            box-shadow: 1px 1px 0px #000;
        }

        /* --- [요청사항] 개별 버튼 스타일 (네임별) --- */

        /* Save 버튼 (btn-save) - Y2K 그린 */
        .btn-save {
            background-color: #00ff00;
            color: #000;
        }

        .btn-save:hover {
            background-color: #ccff00; /* 호버 시 라임색 */
        }

        /* Reset 버튼 (btn-reset) - Y2K 퍼플 */
        .btn-reset {
            background-color: #9900ff;
            color: #fff;
        }

        .btn-reset:hover {
            background-color: #cc99ff; /* 호버 시 연보라색 */
        }
    </style>
</head>
<body>
<div class="main-container">
    <h1 class="page-title">Kyungmin's Page</h1>

    <div class="profile-section">
        <div class="user-name">Kyungmin</div>
        <div class="profile-img-wrap">
            <img class="profile-img" src="https://i.pinimg.com/avif/736x/32/34/4a/32344a3e28ae92d77808ac81965b84e9.avf" alt="Profile">
        </div>
    </div>

    <div class="input-section">
        <label class="input-label" for="name">Name:</label>
        <input type="text" id="name" name="name" class="pixel-input input-name" placeholder="Enter name...">
    </div>

    <div class="input-section">
        <label class="input-label" for="nickname">Yowa:<</label>
        <input type="text" id="nickname" name="nickname" class="pixel-input input-nickname" placeholder="Enter nickname...">
    </div>

</div>
</body>
</html>