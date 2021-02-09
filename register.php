<?
require "configmain.php";
require "global.php";
global $usr;
?><html>
<head>
<title>Register- stage <?echo $reg;?></title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
</head>

<body bgcolor="#FFFFFF">
<?
if($allowreg!='1'){
echo "registration is not allowed, contact the world owner about playing on this world";
}
if($allowreg=='1'){
	if($reg=='1'){
?> 
<form name="form1" method="post" action="register.php?reg=2">
  Register to play<br>
  <br>
  <table width="650" border="0" cellspacing="0" cellpadding="0">
    <tr> 
      <td width="170">User Name</td>
      <td width="480"> 
        <input type="text" name="usr" maxlength="20">
      </td>
    </tr>
    <tr> 
      <td width="170">Real Name</td>
      <td width="480"> 
        <input type="text" name="name">
      </td>
    </tr>
    <tr> 
      <td width="170">Email Address</td>
      <td width="480"> 
        <input type="text" name="email" size="40">
      </td>
    </tr>
    <tr> 
      <td width="170">Home Address</td>
      <td width="480"> 
        <input type="text" name="address" size="40">
      </td>
    </tr>
    <tr> 
      <td width="170">Home Country</td>
      <td width="480"> 
        <input type="text" name="country">
      </td>
    </tr>
    <tr> 
      <td width="170">Game Company Name</td>
      <td width="480"> 
        <input type="text" name="company">
      </td>
    </tr>
    <tr> 
      <td width="170">Image Pack Location</td>
      <td width="480"> 
        <input type="text" name="img" value="<?echo $defimloc;?>" size="40">
        <br>
        Default: <?echo $defimloc;?></td>
    </tr>
    <tr> 
      <td width="170">&nbsp;</td>
      <td width="480">&nbsp;</td>
    </tr>
    <tr> 
      <td width="170">Password</td>
      <td width="480"> 
        <input type="text" name="p1" maxlength="15">
      </td>
    </tr>
    <tr> 
      <td width="170">Retype Password</td>
      <td width="480"> 
        <input type="text" name="p2">
      </td>
    </tr>
    <tr>
      <td width="170">&nbsp;</td>
      <td width="480"> 
        <input type="submit" name="Submit" value="Submit">
      </td>
    </tr>
  </table>
</form>
<?
	}
	if($reg=='2'){
		if($usr==''){
			echo "You didn't enter a user name, please go back and try again";
		}
		if($usr!=''){ //check if user exists already
			connectdb();
			$login1= mysql_query("SELECT * FROM usr WHERE usr ='$usr'");
			$login = mysql_fetch_array($login1);
			if($login[0]){
				echo "Sorry, the username $usr is already taken please try another one"; 
			}
			if(!$login[0]){ //username free check passwords match
				if($p1!=$p2){
					echo "<br>Passwords do not match please try again";
				}
				if($p1==$p2){
					if($p1==''){
						echo "No password entered, please try again";
					}
					if($p1!=''){
						if($email==''){
							echo "No email Address entered, please go back and try again";
						}
						if($email!=''){
							//add user to usr table
							$res = mysql_query("INSERT INTO usr VALUES('$usr','$p1','$name','$email','$address','$country','$company','1','1','1000000','$img')");
							//add warehouse for usr
							$list="'$usr','1'";
							$b3 = mysql_query("SELECT MAX(pid) FROM products");
							$b4 = mysql_fetch_array($b3);
							$pt='1';
							while($pt<=$b4[0]){
							$listadd=",'1000','10','500000'";
							$list="$list$listadd";
							$pt=$pt+'1';
							}
							$res2 = mysql_query("INSERT INTO warehouse VALUES($list)");
							echo "Registration complete, you may log in now";
						}
					}
				}
			}
		}
	}
}
?>
</body>
</html>
