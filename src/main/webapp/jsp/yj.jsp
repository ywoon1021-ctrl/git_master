<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>똥 페이지</title>
    <style>
        body {
            text-align: center;
            margin-top: 50px;
        }
        .poo {
            position: absolute;
            font-size: 30px;
            animation: fall 2s linear forwards;
        }
        @keyframes fall {
            0% { top: 0; opacity: 1; }
            100% { top: 90%; opacity: 0; }
        }
    </style>
</head>
<body>

<button onclick="dropPoo()">똥</button>
<button onclick="dropManyPoo()">뿌직</button>

<audio id="pooSound">
    <source src="https://www.soundjay.com/human/sounds/fart-01.mp3" type="audio/mpeg">
</audio>

<script>
    function dropPoo() {
        const poo = document.createElement("div");
        poo.className = "poo";
        poo.innerText = "💩";
        poo.style.left = Math.random() * window.innerWidth + "px";

        document.body.appendChild(poo);

        document.getElementById("pooSound").play();

        setTimeout(() => poo.remove(), 2000);
    }

    function dropManyPoo() {
        for (let i = 0; i < 10; i++) {
            setTimeout(dropPoo, i * 200);
        }
    }
</script>

</body>
</html>