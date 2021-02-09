<?
global $user,$password;
require "configmain.php";
?><html>
<head>
<title>Welcome to Simuland: <?echo $planetname;?></title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
</head>

<frameset rows="*" cols="150,1*" frameborder="NO" border="0" framespacing="0"> 
  <frame name="left" scrolling="NO" noresize src="/left.php?user=<?echo $user;?>&password=<?echo $password;?>">
  <frameset rows="80,1*" frameborder="NO" border="0" framespacing="0"> 
    <frame name="top" noresize scrolling="NO" src="/top.php?user=<?echo $user;?>&password=<?echo $password;?>">
    <frame name="main" src="/start.php?user=<?echo $user;?>&password=<?echo $password;?>">
  </frameset>
</frameset>
<noframes><body bgcolor="#FFFFFF">

</body></noframes>
</html>
