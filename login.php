<?
global $errordisplay,$errorno,$errorcode;
if ( $errorno == '')
{
$errorno = '1';
}
if ( $errorno == '1' )
{
$errordisplay = "Please enter your username and password";
}
if ( $errorcode == '2' )
{
$errordisplay = "incorrect username or passord please try again";
}
?>
<html>
<head>
<title>Log In into Simuland <?echo $planetname;?></title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
</head>

<body bgcolor="#FFFFFF">
<? echo $errordisplay; ?> 
<form name="form1" method="post" action="index.php" target="_parent">
  <p>Beta stage 1, version 0.4<br>
    Login <br>
    Username 
    <input type="text" name="user">
    <input type="hidden" name="login" value="1">
    <br>
    Password 
    <input type="text" name="pwordform">
    <br>
    <input type="submit" name="Submit" value="Submit">
    <br>
  </p>
</form>
<a href="register.php?reg=1">Register to play</a>
</body>
</html>
