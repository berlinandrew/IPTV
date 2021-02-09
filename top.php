<?
global $user,$password;
require "configmain.php";
require "global.php";
connectdb();
$usrarray = mysql_query("SELECT * FROM usr WHERE usr ='$user'");
$uarray = mysql_fetch_array($usrarray);
$rankarray = mysql_query("SELECT * FROM rank WHERE usr ='$user'");
$rarray = mysql_fetch_array($rankarray);
?>

<html>
<head>
<title>Untitled Document</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
</head>

<body bgcolor="#000000" text="#FFFFFF" link="#FFFFFF" vlink="#FFFFFF" alink="#FFFFFF" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
<table width="100%" border="0" cellspacing="0" cellpadding="0" height="80">
  <tr valign="top"> 
    <td>Welcome <? echo $user;?><br>
      Your level is <?echo $uarray[8];?><br>
      Your overall rank is <?echo $rarray[1];?><br>
      more to come :)</td>
    <td><a href="/changeuser.php" target="main">Change user</a></td>
  </tr>
</table>
</body>
</html>
