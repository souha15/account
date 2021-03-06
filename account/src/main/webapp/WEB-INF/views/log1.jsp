﻿
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html lang="en">
<head>
 <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="author" content="">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Edmin</title>
	<link type="text/css" href="${contextPath}/resources/bootstrap/css/bootstrap.min.css" rel="stylesheet">
	<link type="text/css" href="${contextPath}/resources/bootstrap/css/bootstrap-responsive.min.css" rel="stylesheet">
	<link type="text/css" href="${contextPath}/resources/css/theme.css" rel="stylesheet">
	<link type="text/css" href="${contextPath}/resources/images/icons/css/font-awesome.css" rel="stylesheet">
	<link type="text/css" href='http://fonts.googleapis.com/css?family=Open+Sans:400italic,600italic,400,600' rel='stylesheet'>
</head>
<body >

	<div class="navbar navbar-fixed-top">
		<div class="navbar-inner">
			<div class="container">
				<a class="btn btn-navbar" data-toggle="collapse" data-target=".navbar-inverse-collapse">
					<i class="icon-reorder shaded"></i>
				</a>

			  	<a class="brand" href="#">
			  		<img src="${contextPath}/resources/images/syn2.png" width="120px" >
			  		
			  	</a>
			  		<br>
			  		<form method="POST" action="${contextPath}/login">
					<ul class="nav pull-right">
					
						<b><p>Adresse e-mail ou mobile &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;  Mot de passe </p>	</b>
						<li><input type="text" name="username" class="span2">&nbsp;&nbsp;&nbsp;&nbsp;</li>
							
						<li><input type="text" class="span2" name="password">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</li>
						<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
						<li><input  width="50px" type="submit" value="Connexion" class="btn btn-primary"></li>
						
 </form>
					</ul>
				</div><!-- /.nav-collapse -->
			</div>
		</div><!-- /navbar-inner -->
	</div><!-- /navbar -->
  
</div>
	<div class="wrapper">
		<div class="container">

			<div class="row">
				<div id="ss">
					<br>
					<form class="form-vertical" id="ss" >
						<br>
                            

							<h3 class="colorh">Créer un compte</h3>
							<small class="smalltext">C’est gratuit (et ça le restera toujours).</small>
						
						<div class="module-body">
							<div class="control-group">
								<div class="controls row-fluid">
                                <input class="span12" type="text" id="inputEmail" placeholder="Nom" name="nom"><br><br>
									<input class="span12" type="text" id="inputEmail" placeholder="Prénom" name="prenom"><br><br>
                                    <input class="span12" type="email" id="inputEmail" placeholder="Email" name="mail"><br><br>
                                    <input class="span12" type="text" id="inputEmail" placeholder="Mobile" name="tel"><br><br>
                                   <select class="span12" name="genre">
                                   	  <optgroup label="Vous étes :">
                                     <option value="proprietaire">Proprietaire</option>
                                     <option value="locataire">Locataire</option>
                                      </optgroup>
                                   </select>
										


								</div>
							</div>
							<div class="control-group">
								<div class="controls row-fluid">
									<input class="span12" type="password" id="inputPassword" placeholder="Mot de passe" name="mdp1"
                                   ><br><br>
                                    <input class="span12" type="password" id="inputPassword" placeholder="Confirmer mot de passe" name="mdp2" onBlur="verifmdp(this)"><br><br><span id="erreur" style="display: none" > Ce ne sont pas les mêmes mots de passe !! </span>
                                    
<input type="radio" name="gender" value="male">Homme &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  <input type="radio" name="gender" value="female"> Femme<br>                                    
								</div>
						
								<button type="submit" class="btn btn-primary pull-right" >Créer un compte</button>
						
					</form>
				</div>
			</div>
		</div>
	</div><!--/.wrapper-->

	<div class="footer">
		<div class="container">
			 

			<b class="copyright">&copy; 2018 SmartSyndicat -SmartSyndicatULT.com </b> All rights reserved.
		</div>
	</div>
	<script src="scripts/jquery-1.9.1.min.js" type="text/javascript"></script>
	<script src="scripts/jquery-ui-1.10.1.custom.min.js" type="text/javascript"></script>
	<script src="bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
    <script>

	function verifmdp()
{var m1=document.f.mdp1.value;
var m2=document.f.mdp2.value;
 
   if (m1 != m2) {
 alert ("Ce ne sont pas les mêmes mots de passe !!");
    f.mdp1.focus();
    return false;
    }
 
  }
	</script>
</body>