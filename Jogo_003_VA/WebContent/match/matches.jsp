<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<title>JOGO</title>
<link href="style.css" rel="stylesheet">
</head>
<body>
	<h1 id="header">Matches</h1>
	<table class="list">
		<thead>
			<tr>
				<td>Home Team</td>
				<td>Away Team</td>
				<td>Result</td>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${matches}" var="mat">
				<tr>
					<td class="homeTeam">${mat.homeTeam}</td>
					<td class="awayTeam">${mat.awayTeam}</td>
					<td class="score">${mat.homeScore}-${mat.awayScore}</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
	<br>
	<a href="GetMatch">Add</a>
</body>
</html>