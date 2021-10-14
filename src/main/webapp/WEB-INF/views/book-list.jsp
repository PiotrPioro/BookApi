<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta charSet="UTF-8">
    <title>BookList</title>
</head>
<body>
    <a href="/books/form">Dodaj książkę</a>
    <table>
        <thead>
            <tr>
                <th>Id</th> <th>Isbn</th> <th>Tytuł</th> <th>Autor</th> <th>Wydawnictwo</th> <th>Typ</th> <th>Akcje</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="list" items="${bookList}">
                <tr>
                    <td>${list.id}</td> <td>${list.isbn}</td> <td>${list.title}</td> <td>${list.author}</td> <td>${list.publisher}</td> <td>${list.type}</td> <td>
                    <a href="/books/delete?id=${list.id}&title=${list.title}">Usuń</a>
                    <a href="/books/edit?id=${list.id}">Edytuj</a>
                    <a href="/books/showBook?id=${list.id}">Szczegóły</a>
                    </td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
</body>
</html>
