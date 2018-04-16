<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<%@ include file="/includes.jsp"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html>
<html lang="en">
<head>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>SmartSyndicat</title>
	<link type="text/css" href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
	<link type="text/css" href="bootstrap/css/bootstrap-responsive.min.css" rel="stylesheet">
	<link type="text/css" href="css/theme.css" rel="stylesheet">
	<link type="text/css" href="jsp/images/icons/css/font-awesome.css" rel="stylesheet">
	<link type="text/css" href='http://fonts.googleapis.com/css?family=Open+Sans:400italic,600italic,400,600' rel='stylesheet'>
 
</head>
<body>

	<div class="navbar navbar-fixed-top">
		<div class="navbar-inner">
			<div class="container">
				<a class="btn btn-navbar" data-toggle="collapse" data-target=".navbar-inverse-collapse">
					<i class="icon-reorder shaded"></i>
				</a>

			  	<a class="brand" href="acceuil.html">
			  		<img src="images/syn2.png" width="40px" >
			  	</a>

				<div class="nav-collapse collapse navbar-inverse-collapse">
					<ul class="nav nav-icons">
						<li class="active"><a href="#">
							<i class="icon-envelope"></i>
						</a></li>
						<li><a href="#">
							<i class="icon-eye-open"></i>
						</a></li>
					</ul>

					<form class="navbar-search pull-left input-append" action="#">
						<input type="text" class="span3">
						<button class="btn" type="button">
							<i class="icon-search"></i>
						</button>
					</form>
				
					<ul class="nav pull-right">
						<li class="nav-user dropdown">
							<a href="#" class="dropdown-toggle" data-toggle="dropdown">
								<img src="images/user.png" class="nav-avatar" />
								<b class="caret"></b>
							</a>
							<ul class="dropdown-menu">
								<li><a href="Profile.html">Profil</a></li>
								<li><a href="parametres.html">Paramétres</a></li>
								<li><a href="#">Logout</a></li>
							</ul>
						</li>
					</ul>
				</div><!-- /.nav-collapse -->
			</div>
		</div><!-- /navbar-inner -->
	</div><!-- /navbar -->
	
	


	<div class="wrapper">
		<br><br>
		<div class="container">
			<div class="row">
				<div class="span3">
					<div class="sidebar">

						<ul class="widget widget-menu unstyled">
							<li>
								<a href="acceuil.jsp">
									<i class="menu-icon icon-bullhorn"></i>
									News Feed
								</a>
							</li>
							<li>
								<a href="message.html">
									<i class="menu-icon icon-inbox"></i>
									Messages
									<b class="label green pull-right">11</b>
								</a>
							</li>
							
							<li>
								<a href="task.html">
									<i class="icon-eye-open"></i>
									Notifications
									<b class="label orange pull-right">19</b>
								</a>
							</li>
						</ul><!--/.widget-nav-->

						<ul class="widget widget-menu unstyled">
                                <li><a href="voisins.html"><i class="menu-icon icon-tasks "></i> Mes Voisins </a></li>
                                <li><a href="Profile.html"><i class="menu-icon icon-book"></i>Mon profil </a></li>
                                <li><a href="evenements.html"><i class="menu-icon icon-paste"></i>Evénements </a></li>
                            
                            </ul><!--/.widget-nav-->

						<ul class="widget widget-menu unstyled">
							  <li><a href="parametres.html"><i class="menu-icon icon-cog "></i> Paramétres</a></li>
								<li><a href="#">
									<i class="menu-icon icon-signout"></i>
									Logout
								</a>
							</li>
						</ul>

						

					
					</div><!--/.sidebar-->
				</div><!--/.span3-->
<a href="index">Acceuil</a>

<form:form action="user.do" method="POST" commandName="user">
	<table>
		<tr>
			<td>User ID</td>
			<td><form:input path="iduser" /></td>
		</tr>
		<tr>
			<td>Nom</td>
			<td><form:input path="nom" /></td>
		</tr>
		<tr>
			<td>Prenom</td>
			<td><form:input path="prenom" /></td>
		</tr>
		<tr>
			<td>E_mail</td>
			<td><form:input path="mail" /></td>
		</tr>
		<tr>
			<td>Mot de passe</td>
			<td><form:input path="mdp" /></td>
		</tr>
		<tr>
			<td>Genre</td>
			<td><form:input path="genre" /></td>
		</tr>
		<tr>
			<td>Sexe</td>
			<td><form:input path="sexe" /></td>
		</tr>
		<tr>
			<td>tel</td>
			<td><form:input path="tel" /></td>
		</tr>
		<tr>
			<td>batiment</td>
			<td><form:input path="batiment" /></td>
		</tr>
		<tr>
			<td>Image</td>
			<td><form:input path="image" /></td>
		</tr>
		<tr>
			<td>Actif</td>
			<td><form:input path="actif" /></td>
		</tr>
		<tr>
			<td>Intro</td>
			<td><form:input path="intro" /></td>
		</tr>
		<tr>
			<td>Online</td>
			<td><form:input path="online" /></td>
		</tr>
		
		<tr>
			<td colspan="2">
				<input type="submit" name="action" value="Add" />
				<input type="submit" name="action" value="Edit" />
				<input type="submit" name="action" value="Delete" />
				<input type="submit" name="action" value="Search" />
			</td>
		</tr>
	</table>
</form:form>
<br>
<table border="1">
		
			<th>User ID</th>
			<th>Nom</th>
			<th>Prenom</th>
			<th>E_mail</th>
			<th>Mot de passe</th>
			<th>Genre</th>
			<th>Sexe</th>
			<th>tel</th>
			<th>batiment</th>
			<th>Image</th>
			<th>Actif</th>
			<th>Intro</th>
			<th>Online</th>
	
	<c:forEach items="${userList}" var="user">
		<tr>
		
			<td>${user.iduser}</td>
			<td>${user.nom}</td>
			<td>${user.prenom}</td>
			<td>${user.mail}</td>
			<td>${user.mdp}</td>
			<td>${user.genre}</td>
			<td>${user.sexe}</td>
			<td>${user.tel}</td>
			<td>${user.batiment}</td>
			<td>${user.image}</td>
			<td>${user.actif}</td>
			<td>${user.intro}</td>
			<td>${user.online}</td>
		</tr>
	</c:forEach>
</table>
<script src="/scripts/jquery-1.9.1.min.js" type="text/javascript"></script>
	<script src="/scripts/jquery-ui-1.10.1.custom.min.js" type="text/javascript"></script>
	<script src="/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
</body>

</html>