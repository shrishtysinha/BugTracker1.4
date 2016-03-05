function checkLoginInfo()
{
	var username = document.LoginForm.uname.value;
	var password = document.LoginForm.upass.value;
	if(username== null)
	{
		alert("Please provide valid username");
		document.LoginForm.uname.focus();
		return false;
	}
	if(password==null)
	{
		alert("Please provide valid password");
		document.LoginForm.upass.focus();
		return false;
	}
}
