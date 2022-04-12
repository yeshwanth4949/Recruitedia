<html>
<head>
<title>Add Success</title>
<link href="css/style.css" type="text/css"  rel="stylesheet"/>
<style>
#main-menu {
	z-index: 300;
	visibility:visible;
}

.menu-bg {
	background:#202020;
	text-decoration: none;
}

#main-menu ul {
	display: block;
	width: 100%;
	text-align: center;
}

#main-menu ul li {
	display: inline-block;
	position: relative;
}

#main-menu ul li a {
	display: inline-block;
	padding:6px 10px;
	line-height: 60px;
	color: #FFF;
	font-weight: 600;
	font-size: 15px;
	text-transform: uppercase;
	transition: all 0.25s ease 0s;
	text-decoration: none;
}

#main-menu ul li a:hover {
	color:#FFF;
}

#main-menu ul.nav>li>a:hover, #main-menu ul.nav>li>a:focus {
	background: none;
	text-decoration: line-through;
}

#main-menu ul li.active > a, #main-menu ul li.active.has-child > a {
	color: #FFF;
	box-shadow: inset 0 -2px 0 #FFF;
	
}

.clear-toggle {
	display:none;
	clear:both;
}

.navbar-toggle {
	color: #FFF;
	margin-top: 0;
	font-size: 32px;
	margin-bottom: 0px;
	padding-top: 9px;
	position: absolute;
	right: 0px;
	padding-right: 0;
}
</style>
</head>
<body>
<div style="background-color:black;">
<div class="clear-toggle"></div>
							<div id="main-menu" class="collapse scroll navbar-right">
								<ul class="nav">
                                
									<li> <a href="../../loginsuccess">Home</a> </li>
									
									<li> <a href="../../viewstatus">View Status</a> </li>
									
									<li class="active"> <a href="../../viewjobs">Search Jobs</a> </li>
									
									<li> <a href="../../userprofile">Profile</a> </li>
                                    
									<li > <a href="../../home">Logout</a> </li>
										
								</ul>
							</div><!-- end main-menu -->
						   
							</div>
${email}, NotEligible

Home <a href="/viewjobs">Click Here</a>

</body>
</html>