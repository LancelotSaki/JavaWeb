function check() { //验证用户名字段是否为空 
		username = document.form1.username.value;
		if (username == "") {
			alert("请输入用户名:");
			document.form1.username.focus();
			return false;
		} else {
			//验证密码字段是否为空 
			password = document.form1.password.value;
			if (password == "") {
				alert("请输入登陆密码:");
				document.form1.password.focus();
				return false;
			}
		}
	}