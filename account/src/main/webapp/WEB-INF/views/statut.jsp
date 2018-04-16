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


				<div class="span9">
					<div class="content">

						<div class="module">
							<div class="module-head">
								<h3>Fil d'actualités </h3>
							</div>
							<div class="module-body">
								<div class="stream-composer media">
									<a href="#" class="media-avatar medium pull-left">
										<img src="images/user.png">
									</a>
									<div class="media-body">
										<div class="row-fluid">
									
			<form:form action="statut.do" method="POST" commandName="statut">
	<table>
		<tr>
			<td><form:input path="idstatut" type="hidden" /></td>
		</tr>
		<tr>
			
			<td><form:input path="datestatut" type="hidden" /></td>
		</tr>
		<tr>
			<td></td>
			
			<textarea name="contenuetxt" class="span12" style="height: 70px; resize: none;" path=""></textarea>
		</tr>
			<div class="clearfix">
					<input name="action" type="submit" value="Partager" class="btn btn-primary pull-right">
						<div class="image-upload">
                    <label for="file-input">
                         <img src="images/cam.png"/>
                    </label>

    <input id="file-input" type="file" name="contenufile" hidden/>
</div>
				
			<form:input  path="user.iduser" value="1" type="hidden"/></td>
		
	</table>
</form:form>

										</div>
										
											</a>
										</div>
									</div>
								

								<div class="stream-list">
									
									
																<%
String driverName = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String dbName = "syndicat";
String userId = "root";
String password = "";

try {
Class.forName(driverName);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}

Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
ResultSet resultSet1 = null;
%>

<%
try {
connection = DriverManager.getConnection(
connectionUrl + dbName, userId, password);
statement = connection.createStatement();
String sql = "SELECT user.nom ,user.prenom, user.iduser,user.image, statut.idstatut, statut.contenufile ,statut.contenuetxt,statut.datestatut from statut,user where user.iduser=statut.iduser GROUP BY statut.idstatut ";

resultSet = statement.executeQuery(sql);
while (resultSet.next()) {

String p = resultSet.getString("statut.contenufile");
	
%>

									<div class="media stream">
										<a href="#" class="media-avatar medium pull-left">
											<img src="images/<%=resultSet.getString("user.image")%>">
						
										</a>
										<div class="media-body">
											<div class="stream-headline">
												<h5 class="stream-author">
												
													<%=resultSet.getString("user.nom")%>
                                                    <%=resultSet.getString("user.prenom")%>
													<small><%=resultSet.getString("statut.datestatut")%></small>
												</h5><br>
												
												<div class="stream-text">
													 <%=resultSet.getString("statut.contenuetxt")%> 
                                                </div>
                                                	
                                                <%
													if(p!=""){
													%>
											<div class="stream-attachment photo">
													<div class="responsive-photo">
													
														<img src="images/<%=resultSet.getString("statut.contenufile")%>" />
														</div></div>
														<%} %>
													
												</div>	</div>
												
											
											
	<div class="stream-options">
	<form action="" method="post">
		<input type="hidden" value="<%=resultSet.getInt("user.iduser")%>" name="iduser" >
		<input type="hidden" value="<%=resultSet.getInt("statut.idstatut")%>" name="idstatut" >
			
				
					<div class="stream-options">
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						
							<input type="image" name="submit" src="images/thumbs.png" border="0" alt="Submit" />	
							</div>			
				</form>
			
				</div>
					</div>
					
		        <h5 class="stream-author">	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
									<%=resultSet.getString("user.nom")%>
                                                    <%=resultSet.getString("user.prenom")%>	
									<small>10 July 14</small>
											</h5>
											<div class="stream-text">
										&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
											Lorem Ipsum is simply dummy text of the printing and typesetting industry.
											</div>
													               
												
					<form action="" method="post">
		<input type="hidden" value="<%=resultSet.getInt("user.iduser")%>" name="iduser" >
		<input type="hidden" value="<%=resultSet.getInt("statut.idstatut")%>" name="idstatut" >
			
				
					<div class="stream-options">
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;	
						<textarea name="contenuetxt" class="span12" style="height: 20px; width:700px; resize: none;" path=""></textarea>	
							<input type="image" name="submit" src="images/comment.png" border="0" alt="Submit" />
							</div>	
				
				</form>
			
				
									
									<%
}

} catch (Exception e) {
e.printStackTrace();
}
%>


			        
          <% try
          { 
        	     String idu = request.getParameter("iduser");
                 String ids = request.getParameter("idstatut");
             
              Class.forName("com.mysql.jdbc.Driver").newInstance();
              Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/syndicat","root","");
      String Query="like '%"+request.getParameter("search")+"%' ";
      Statement st=conn.createStatement(); 
     int i=st.executeUpdate("INSERT INTO `jaime`(`iduser`, `idstatut`) VALUES ('" + idu + "','" + ids + "')");
             
                  %>
            
          <% 
          
          }catch(Exception ex){
          ex.printStackTrace();}
              %>
									
</div>
	
									<!--/.stream-list-->
							</div><!--/.module-body-->
						</div><!--/.module-->
						
					</div><!--/.content-->
				</div><!--/.span9-->
			</div>
		</div><!--/.container-->
	</div><!--/.wrapper-->

	<div class="footer">
		<div class="container">
			 

			<b class="copyright">&copy; 2014 Edmin - EGrappler.com </b> All rights reserved.
		</div>
	</div>

	<script src="/scripts/jquery-1.9.1.min.js" type="text/javascript"></script>
	<script src="/scripts/jquery-ui-1.10.1.custom.min.js" type="text/javascript"></script>
	<script src="/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
</body>