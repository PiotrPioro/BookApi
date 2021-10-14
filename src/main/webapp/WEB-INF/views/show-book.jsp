<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page isELIgnored="false" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta charSet="UTF-8">
    <title>ShowBook</title>
</head>
<body>
    <label><a href="/books">Lista Książek</a></label>
    <label>Id: ${book.id}</label>
    <label>Isbn: ${book.isbn}</label>
    <label>Tytuł: ${book.title}</label>
    <label>Autor: ${book.author}</label>
    <label>Wydawnictwo: ${book.publisher}</label>
    <label>Typ: ${book.type}</label>
</body>
</html>
