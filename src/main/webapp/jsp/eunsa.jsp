<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Eunsa Page</title>
    <style>
        body {
            text-align: center;
            background-color: #f0f8ff;
            margin: 0;
            overflow: hidden; /* 캐릭터가 밖으로 나가도 스크롤 안 생기게 함 */
            height: 100vh;
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
        }

        /* 떨어지는 캐릭터 스타일 */
        .history-char {
            position: fixed;
            top: -50px;
            font-size: 45px;
            user-select: none;
            animation: fall linear forwards;
            z-index: 100;
        }

        @keyframes fall {
            0% { transform: translateY(0) rotate(0deg); opacity: 0; }
            10% { opacity: 1; }
            90% { opacity: 1; }
            100% { transform: translateY(110vh) rotate(720deg); opacity: 0; }
        }

        .main-btn {
            padding: 15px 30px;
            font-size: 20px;
            cursor: pointer;
            background-color: #ff69b4;
            color: white;
            border: none;
            border-radius: 50px;
            box-shadow: 0 4px 15px rgba(0,0,0,0.2);
            transition: 0.3s;
            z-index: 200; /* 버튼이 캐릭터보다 앞에 오도록 함 */
        }
        .main-btn:hover { transform: scale(1.1); }
    </style>
</head>
<body>

<h1>역사 캐릭터가 쏟아집니다!</h1>

<button class="main-btn" onclick="startRain()">✨ 캐릭터 떨어뜨리기 ✨</button>

<br>
<button onclick="history.back()" style="margin-top:20px; cursor:pointer;">돌아가기</button>

<div id="rain-container"></div>

<script>
    function startRain() {
        const container = document.getElementById('rain-container');
        const characters = ['👑', '⚔️', '🇰🇷', '🐢', '📜', '🐯'];
        const totalCount = 50; // 떨어질 총 개수

        for (let i = 0; i < totalCount; i++) {
            setTimeout(() => {
                const char = document.createElement('div');
                char.className = 'history-char';

                // 랜덤 캐릭터 선택
                char.innerText = characters[Math.floor(Math.random() * characters.length)];

                // 랜덤 위치/속도 설정
                char.style.left = Math.random() * 95 + 'vw';
                char.style.animationDuration = (Math.random() * 2 + 2) + 's';

                container.appendChild(char);

                // 화면 밖으로 나가면 삭제
                char.addEventListener('animationend', () => {
                    char.remove();
                });
            }, i * 100); // 0.1초 간격으로 생성
        }
    }
</script>
</body>
</html>