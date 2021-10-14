<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page isELIgnored="false" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta charSet="UTF-8">
    <title>DeleteBook</title>
</head>
<body>
<form action="/books/delete" method="post">
    <fieldset>
        <legend>Czy na pewno usunąć książkę ${title}?</legend>
        <input type="hidden" name="id" value="${id}">
        <label> <input type="radio" name="confirm" value="yes" /> Tak </label><br />
        <label> <input type="radio" name="confirm" value="no" /> Nie </label><br />
        <label><input type="submit" name="Zatwierdź"></label>
    </fieldset>
</form>
</body>
</html>
