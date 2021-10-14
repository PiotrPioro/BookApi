<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta charSet="UTF-8">
    <title>AddBook</title>
</head>
<body>
<form action="/books/edit" method="post">
    <input type="hidden" name="id" value="${editBook.id}">
    <label>
        Isbn:
        <input type="text" value="${editBook.isbn}" name="isbn">
    </label>
    <label>
        Tytuł:
        <input type="text" value="${editBook.title}" name="title">
    </label>
    <label>
        Autor:
        <input type="text" value="${editBook.author}" name="author">
    </label>
    <label>
        Wydawnictwo:
        <input type="text" value="${editBook.publisher}" name="publisher">
    </label>
    <label>
        Typ:
        <input type="text" value="${editBook.type}" name="type">
    </label>
    <label>
        <input type="submit" name="Dodaj">
    </label>
</form>
</body>
