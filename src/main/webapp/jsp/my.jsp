<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>

<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>영운깃쨩 뽀뽀쪾💖</title>
    <style>
        /* 세상에서 제일 귀여운 테마 설정 🎀 */
        body {
            background-color: #fff0f5; /* 러블리한 파스텔 핑크 배경 */
            font-family: 'MapleStory', 'DungGeunMo', 'Comic Sans MS', cursive; /* 동글동글하거나 귀여운 폰트 */
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            height: 100vh;
            margin: 0;
            overflow: hidden; /* 꽃가루 효과를 위해 */
        }ㄴ

        /* 첫 번째 제목: 영운깃쨩 뽀뽀쪾 💋 */
        h1:first-child {
            color: #ff69b4; /* 핫핑크 컬러 */
            font-size: 4rem;
            text-shadow: 3px 3px 0px #ffb6c1, 5px 5px 0px rgba(0,0,0,0.1); /* 귀여운 3D 입체 효과 */
            margin-bottom: 10px;
            animation: heartBeat 1.5s infinite; /* 두근두근 애니메이션 */
        }

        /* 두 번째 제목: 프로젝트 화이팅 ✨ */
        h1:last-child {
            color: #87cefa; /* 상쾌한 파스텔 블루 */
            font-size: 2.5rem;
            background: linear-gradient(to right, #87cefa, #b0e0e6); /* 그라데이션Effect */
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
            text-shadow: 2px 2px 4px rgba(0,0,0,0.2);
            margin-top: 0;
            position: relative;
        }

        /* 귀여운 데코레이션 요소 🦄 */
        h1:last-child::before,
        h1:last-child::after {
            content: '✨'; /* 반짝이 이모지 */
            position: absolute;
            font-size: 1.5rem;
            animation: twinkle 1s infinite alternate;
        }
        h1:last-child::before { left: -35px; top: 5px; }
        h1:last-child::after { right: -35px; top: 5px; animation-delay: 0.5s; }

        /* 💖 애니메이션 정의 💖 */

        /* 1. 두근두근 하트비트 효과 */
        @keyframes heartBeat {
            0% { transform: scale(1); }
            14% { transform: scale(1.1); }
            28% { transform: scale(1); }
            42% { transform: scale(1.15); }
            70% { transform: scale(1); }
        }

        /* 2. 반짝반짝 트윙클 효과 */
        @keyframes twinkle {
            0% { opacity: 0.5; transform: translateY(0); }
            100% { opacity: 1; transform: translateY(-5px); }
        }

        /* 화면에 가득 찬 꽃가루 효과 (자동 생성) */
        .confetti {
            position: absolute;
            width: 10px;
            height: 10px;
            background-color: #ffb6c1;
            border-radius: 50%;
            animation: fall linear infinite;
        }

        @keyframes fall {
            to { transform: translateY(100vh) rotate(360deg); }
        }
    </style>
</head>
<body>
<h1>영운깃쨩 뽀뽀쪾💋</h1>
<img src="https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyNjAxMDFfMjU2%2FMDAxNzY3MjUzNTA2MDQz.uLby2z-n2VpYgUGUoQYFYu5fu1Mv7ON5fKaU7urfVxUg.nijkwEWk1PBUSlVWzJCPzIJ2_FPFtZqvqSXN5V9PhPcg.JPEG%2FIMG%25A3%25DF5047.jpg&type=sc960_832   " alt="귀여운 뽀뽀 짤" style="width: 200px; height: auto; border-radius: 15px; margin-top: 10px;">

<h1>민나 ~ 프로젝트 화이또 ✨</h1>


<script>
    for (let i = 0; i < 50; i++) {
        const confetti = document.createElement('div');
        confetti.classList.add('confetti');
        confetti.style.left = Math.random() * 100 + 'vw';
        confetti.style.animationDuration = (Math.random() * 3 + 2) + 's';
        confetti.style.backgroundColor = `hsl(${Math.random() * 360}, 100%, 80%)`;
        document.body.appendChild(confetti);
    }
</script>
</body>
</html>