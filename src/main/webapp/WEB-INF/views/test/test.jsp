<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>테스트 페이지</title>
</head>
<body>
    <h1>테스트 페이지</h1>
    <p>localhost:8080/education/test 접근 성공!</p>



    <input id="topicInput" type="text" placeholder="주제 입력 (예: Java 기본)" />
    <button onclick="createEducations(1)">객관식 문제 생성</button>
    <button onclick="createEducations(2)">빈칸 문제 생성</button>

    <script>
        function createEducations(type) {
            const topic = document.getElementById('topicInput').value.trim();
            if (!topic) {
                alert('주제를 입력하세요.');
                return;
            }

            const params = new URLSearchParams({ type: String(type), topic });

            fetch('/test/agent/create?' + params.toString())
                .then(async (response) => {
                    const text = await response.text();
                    console.log('문제 생성 결과:', text);
                })
                .catch(err => console.error(err));
        }
    </script>

</body>
</html>
