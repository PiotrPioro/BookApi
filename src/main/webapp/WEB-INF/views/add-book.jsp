<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta charSet="UTF-8">
    <title>AddBook</title>
</head>
<body>
<form action="/books" method="post">
    <label>
        Isbn:
        <input type="text" name="isbn">
    </label>
    <label>
        Tytuł:
        <input type="text" name="title">
    </label>
    <label>
        Autor:
        <input type="text" name="author">
    </label>
    <label>
        Wydawnictwo:
        <input type="text" name="publisher">
    </label>
    <label>
        Typ:
        <input type="text" name="type">
    </label>
    <label>
        <input type="submit" name="Dodaj">
    </label>
</form>
</body>
