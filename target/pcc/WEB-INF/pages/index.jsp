<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>
	<head>
		<meta charset="utf-8"/>
	    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
	    <meta name="viewport" content="width=device-width, initial-scale=1"/>
		<link href="resources/css/bootstrap.min.css" rel="stylesheet"/>
		<link href="resources/css/error.css" rel="stylesheet"/>
		<link href="resources/css/style.css" rel="stylesheet"/>
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
		<script src="resources/js/bootstrap.min.js"></script>
		
		<!-- JQuery dialogs -->
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery-confirm/3.2.0/jquery-confirm.min.css">
		<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-confirm/3.2.0/jquery-confirm.min.js"></script>
	</head>
	<body>
		<div class="container">
			<div class="row">
				<div class="col-md-12" style="padding-top:10px;">
					<img src="resources/images/purple_header.png" alt="header" width="100%">
				</div>
			</div>
			<div class="row">
				<div class="col-md-3">
					<h6><b>POWER CONSUMPTION CALCULATOR</b></h6>
				</div>
			</div>
			<div class="row">
				<div class="col-md-5" >
					<div class="panel panel-info panel_background" style="padding:10px;">
						<form class="form-group" method="POST" action="login">
							<fieldset>
								<legend class="cs_label"><small>Datacenter Configuration:</small></legend>
								<div class="form-group" style="padding-bottom:12px;">
									<small><label for="hosts" class="cs_label">Host:</label></small>&nbsp;&nbsp;
									<small><select name="hosts">
											<option value="1">HPE-DL380</option>
											<option value="2">HPE-DL360</option>
											<option value="3">IBM-i5-520</option>
											<option value="4">IBM-p5570</option>
									</select></small>
								</div>
								<div class="form-group">
									<small><label for="processor" class="cs_label">Processor:</label></small>&nbsp;&nbsp;
									<small><select name="processor">
											<option value="1">E5-(2680,2670)v3-12</option>
											<option value="2">E5-2667v3-8</option>
											<option value="3">E5(2660,2650)v3-10</option>
											<option value="4">E5-2650Lv3-12</option>
									</select></small>
								</div> 
								<div class="form-group">
									<small><label for="memory" class="cs_label">Memory:</label></small>&nbsp;&nbsp;
									<small><select name="memory">
											<option value="1">4GB-8SLOTS</option>
											<option value="2">8GB-16SLOTS</option>
											<option value="3">4GB-24SLOTS</option>
											<option value="4">32GB-8SLOTS</option>
									</select></small>
								</div> 
								<div class="form-group">
									<small><label for="hdd" class="cs_label">Hard Drive:</label></small>&nbsp;&nbsp;
									<small><select name="hdd">
											<option value="1">SSD-765036-21(MU)</option>
											<option value="2">SSD-765044-21(MU)</option>
											<option value="3">SSD-764908-B21(RI)</option>
											<option value="4">SSD-764894-B21(WI)</option>
									</select></small><br><br>
									<small><input type="button" value="Add"/></small>
								</div> 
								
								
								</fieldset>	
								<!-- <small><input type="submit" class="cs_label cs_button" value="Login"/></small>	 -->
						</form>
					</div>
					<div class="panel panel-info panel_background" style="padding:10px;">
						<fieldset>
								<legend class="cs_label"><small>Network Devices Configuration:</small></legend>
						<div class="form-group">
									<small><label for="gateways" class="cs_label">Gateways:</label></small>&nbsp;&nbsp;
									<small><select name="gateways">
											<option value="1">G1</option>
											<option value="2">G2</option>
											<option value="3">G3</option>
											<option value="4">G4</option>
									</select></small>
								</div> 
								<div class="form-group">
									<small><label for="routers" class="cs_label">Routers:</label></small>&nbsp;&nbsp;
									<small><select name="routers">
											<option value="1">R1</option>
											<option value="2">R2</option>
											<option value="3">R3</option>
											<option value="4">R4</option>
									</select></small>
									<small><input type="button" value="Add"/></small>
								</div> 
								<div class="form-group">
									<small><label for="switches" class="cs_label">Switches:</label></small>&nbsp;&nbsp;
									<small><select name="switches">
											<option value="1">S1</option>
											<option value="2">S2</option>
											<option value="3">S3</option>
											<option value="4">S4</option>
									</select></small>
									<small><input type="button" value="Add"/></small>
								</div> 
								</fieldset>
					</div>
					<div class="panel panel-info panel_background" style="padding:10px;">
						<fieldset>
							<legend class="cs_label"><small>VM Configuration</small></legend>
							<div class="form-group">
									<small><label for="mips" class="cs_label">Mips:</label></small>&nbsp;&nbsp;
									<small><select name="mips">
											<option value="1">1000</option>
											<option value="2">2000</option>
											<option value="3">3000</option>
											<option value="4">4000</option>
									</select></small>
									
								</div> 
								<div class="form-group">
									<small><label for="size" class="cs_label">Image Size (MB):</label></small>&nbsp;&nbsp;
									<small><select name="size">
											<option value="1">10000</option>
											<option value="2">12000</option>
											<option value="3">13000</option>
											<option value="4">14000</option>
									</select></small>
									
								</div> 
								<div class="form-group">
									<small><label for="ram" class="cs_label">Ram (MB):</label></small>&nbsp;&nbsp;
									<small><select name="ram">
											<option value="1">512</option>
											<option value="2">1024</option>
											<option value="3">2048</option>
									</select></small>
									
								</div> 
								<div class="form-group">
									<small><label for="bw" class="cs_label">Bandwidth:</label></small>&nbsp;&nbsp;
									<small><select name="bw">
											<option value="1">1000</option>
											<option value="2">2000</option>
											<option value="3">3000</option>
											<option value="4">4000</option>
									</select></small>
									
								</div> 
								<div class="form-group">
									<small><label for="cpu" class="cs_label">CPUs:</label></small>&nbsp;&nbsp;
									<small><select name="cpu">
											<option value="1">1</option>
											<option value="2">2</option>
											<option value="3">3</option>
											<option value="4">4</option>
									</select></small>
									
								</div>
								<small><input type="button" value="Add"/></small>
						</fieldset>
					</div>
				</div>
				<div class="col-md-1" >
				</div>
				<div class="col-md-7" >
				
						<div class="panel panel-info panel_background" style="padding:10px;">
						<fieldset>
							<legend class="cs_label"><small>Hosts</small></legend>
							<table class="table" style="font-size:10px; width:450px; color:#fcfcfc;">
								<tr>
									<th>HOST</th>
									<th>PROCESSOR</th>
									<th>MEMORY</th>
									<th>HDD</th>
								</tr>
								<tr>
									<td>IBM-i5-520</td>
									<td>E5-(2680,2670)v3-12</td>
									<td>4GB-8SLOTS</td>
									<td>SSD-765036-21(MU)</td>
								</tr>
								<tr>
									<td>HPE-DL380</td>
									<td>E5(2660,2650)v3-10</td>
									<td>4GB-24SLOTS</td>
									<td>SSD-765036-21(MU)</td>
								</tr>
								
							</table>
							</fieldset>
							</div>
							<div class="panel panel-info panel_background" style="padding:10px;">
							<fieldset>
							<legend class="cs_label"><small>Virtual Machines</small></legend>
							<table class="table" style="font-size:10px; width:350px; color:#fcfcfc;">
								<tr>
									<th>VM</th>
									<th>MIPS</th>
									<th>SIZE</th>
									<th>RAM</th>
									<th>BW</th>
									<th>CPUs</th>
								</tr>
								<tr>
									<td>1</td>
									<td>1000</td>
									<td>12000</td>
									<td>1024</td>
									<td>1000</td>
									<td>2</td>
								</tr>
								<tr>
									<td>2</td>
									<td>2000</td>
									<td>13000</td>
									<td>1024</td>
									<td>1000</td>
									<td>3</td>
								</tr>
							</table>
							</fieldset>
							</div>
							<div class="panel panel-info panel_background" style="padding:10px;">
							<fieldset>
							<legend class="cs_label"><small>Network Devices</small></legend>
							</fieldset>
							</div>
					</div>
			</div>
		</div>
	</body>
</html>