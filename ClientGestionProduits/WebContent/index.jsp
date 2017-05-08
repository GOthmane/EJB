<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="css/bootstrap.min.css" />
<title>Insert title here</title>
</head>
<body>
		<div class="row">
		<div class="col-xs-12 col-md-4 col-lg-4">
			<c:if test="${produits==null }">
			<c:redirect url="GestionProduit"></c:redirect>
			</c:if>
			<form method="post" action="GestionProduit">
				<fieldset>
				<legend>Ajouter un produit</legend>
					<label for="nom">Saisir le nom :</label> <input type="text"
						name="nom" id="nom" /><br /> <label for="quantite">Saisir
						la quantite :</label> <input type="text" name="quantite" id="quantite" /><br />
					<label for="prix">Saisir le prix :</label> <input type="text"
						name="prix" id="prix" /><br />
				</fieldset>
				<input type="hidden" name="ajouter" value="ok"/>
				<input type="submit" value="ajouter" /><br />
			</form>
			</div>
			<div class="col-xs-12 col-md-4 col-lg-4">
			<form method="post" action="GestionProduit">
				<fieldset>
				<legend>Modifier un produit</legend>
					<label for="id">Saisir l'id :</label> <input type="text" name="id"
						id="id" /><br /> <label for="nom">Saisir le nom :</label> <input
						type="text" name="nom" id="nom" /><br /> <label for="quantite">Saisir
						la quantite :</label> <input type="text" name="quantite" id="quantite" /><br />
					<label for="prix">Saisir le prix :</label> <input type="text"
						name="prix" id="prix" /><br />
				</fieldset>
				<input type="hidden" name="modifier" value="ok"/>
				<input type="submit" value="modifier" /><br />
			</form>
			</div>
			<div class="col-xs-12 col-md-4 col-lg-4">
			<form method="post" action="GestionProduit">
				<fieldset>
				<legend>Supprimer un produit</legend>
					<label for="id">Saisir l'id :</label> <input type="text" name="id"
						id="id" /><br />
				</fieldset>
				<input type="hidden" name="supprimer" value="ok"/>
				<input type="submit" value="supprimer" /><br />
			</form>
			</div>
			</div>
			<div class="row">
			<c:if test="${! empty produits}">
				<table>
					<tr>
						<th>ID</th>
						<th>NOM</th>
						<th>QUANTITE</th>
						<th>PRIX</th>
					</tr>
					<c:forEach var="p" items="${produits}">
						<tr>
							<td><c:out value="${p.id}"></c:out></td>
							<td><c:out value="${p.nom}"></c:out></td>
							<td><c:out value="${p.quantite}"></c:out></td>
							<td><c:out value="${p.prix}"></c:out></td>
							</tr>
					</c:forEach>
				</table>
			</c:if>
			</div>
</body>
</html>