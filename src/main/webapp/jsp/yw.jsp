<%--
  Created by IntelliJ IDEA.
  User: soldesk
  Date: 26. 3. 27.
  Time: 오후 1:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html lang="ko">
<head>
    <meta charset="UTF-8" />
    <title>간단 게시판</title>
    <style>
        body {
            font-family: Arial;
            width: 600px;
            margin: 50px auto;
        }
        input,
        textarea {
            width: 100%;
            margin-bottom: 10px;
            padding: 8px;
        }
        button {
            padding: 10px;
            width: 100%;
            background: #333;
            color: white;
            border: none;
            cursor: pointer;
        }
        .post {
            border: 1px solid #ccc;
            padding: 10px;
            margin-top: 10px;
        }
    </style>
</head>
<body>
<h1>다들 플젝 화이팅하세요~~</h1>

<input type="text" id="title" placeholder="제목 입력" />
<textarea id="content" placeholder="내용 입력"></textarea>
<button onclick="addPost()">작성</button>

<h2>글 목록</h2>
<div id="postList"></div>

<script>
    function loadPosts() {
        const posts = JSON.parse(localStorage.getItem("posts")) || [];
        const list = document.getElementById("postList");
        list.innerHTML = "";

        posts.forEach((post) => {
            const div = document.createElement("div");
            div.className = "post";
            div.innerHTML = `<h3>${post.title}</h3><p>${post.content}</p>`;
            list.appendChild(div);
        });
    }

    function addPost() {
        const title = document.getElementById("title").value;
        const content = document.getElementById("content").value;

        if (!title || !content) {
            alert("제목과 내용을 입력하세요!");
            return;
        }

        const posts = JSON.parse(localStorage.getItem("posts")) || [];
        posts.unshift({ title, content }); // 최신글 위로

        localStorage.setItem("posts", JSON.stringify(posts));

        document.getElementById("title").value = "";
        document.getElementById("content").value = "";

        loadPosts();
    }

    loadPosts();
</script>
</body>
</html>
