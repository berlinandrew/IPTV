<?
global $user,$password,$pword,$pwordform,$errorlog,$login;
require "configmain.php";
require "global.php";
if ($banner == '1'){
	echo $bannercode;
}
if ($login==''){
	$login='0';
}
if($user=='' or $user=='MjpwdWdneTpWZC91b0RqbzNnc1l3OjEwOjowOjA6MDowOlNsYXNoT2NlYW46NDA5Ng=='){
	$user='test';
}
if($pwordform==''){
	$pwordform=='no password';
}
if ($login == '0'){
	require "login.php";
	echo "$login $user $pwordform";
}
if ($login == '1'){
	connectdb();
	$pword = mysql_query("SELECT * FROM usr WHERE usr ='$user'");
	$pwordarray = mysql_fetch_array($pword);
	if ($pwordarray[0]!=$pwordform){
		require "login.php";
		echo "$login $user $pwordform";
	}
	if ($pwordarray[1]==$pwordform){
		echo "<html><head><title>Untitled Document</title><meta http-equiv=\"Content-Type\" 					content=\"text/html;charset=iso-8859-1\">";
		echo "<meta http-equiv=\"refresh\" 		content=\"1;URL=main.php?user=$user&password=$pwordform;\"></head></html>";
	}
}
?>