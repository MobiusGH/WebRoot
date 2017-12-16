<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>新用户注册</title>
<link href="common.css" rel="stylesheet" type="text/css" />
<script src="lib/jquery.js"></script>
<script>
$(function(){
	var tr=$("#myTable tr");
	$(tr).each(function(index,data){
		switch(index){
			case 0:		//项目行
			break;
			
			case 1:		//推荐人
			$(data).children().each(function(i,data){
				if(i>0 && i<=2)
					$(data).text("<%=Request("introducer")%>");
				else if(i>2)
					$(data).text("<%=Request("userID")%>"+"00"+index);
			});
			break;
			case 2:		//接点人
			$(data).children().each(function(index, element) {
				switch(index){
					case 1:
					case 2:
					$(element).text("<%=trim(Request("nodeID"))%>");
					break;
					case 3:
					case 4:
					$(element).text("<%=trim(Request("userID"))%>"+"001");
					break;
					case 5:
					case 6:
					$(element).text("<%=trim(Request("userID"))%>"+"002");
					break;
					case 7:
					case 8:
					$(element).text("<%=trim(Request("userID"))%>"+"003");
					break;
					case 9:
					case 10:
					$(element).text("<%=trim(Request("userID"))%>"+"004");
					break;
					case 11:
					case 12:
					$(element).text("<%=trim(Request("userID"))%>"+"005");
					break;
					case 13:
					case 14:
					$(element).text("<%=trim(Request("userID"))%>"+"006");
					break;
					case 15:
					$(element).text("<%=trim(Request("userID"))%>"+"007");
					break;
				}
            });
			
			break;
			case 3:		//安放位置
			$(data).children(":even").each(function(i,element){if(i>0)	$(element).text("右侧");});
			$(data).children(":odd").each(function(i,element) {$(element).text("左侧");});
			break;
			case 4:		//登录账号
			$(data).children().each(function(index, element) {
                if(index>0 && index<10){
					$(element).text("<%=trim(Request("userID"))%>"+"00"+index);
				}
				else if(index>9){
					$(element).text("<%=trim(Request("userID"))%>"+"0"+index);
				}
            });
			break;
			case 5:		//身份证号
			$(data).children().each(function(index, element) {
                if(index>0) $(element).text("1");
            });
			break;
			case 6:		//密码
			$(data).children().each(function(index, element) {
                if(index>0) $(element).text("<%=trim(Request("pwd"))%>");
            });
			break;
			case 7: 	//姓名
			$(data).children().each(function(j,da){
				if(j>0) $(da).text("<%=request("Name")%>");
			});
			break;
			case 8:
			$(data).children().each(function(i,data){
				if(i>0) $(data).text("<%=trim(Request("tel"))%>");
			});
			break;
		}
	});
	$(tr).children(":odd").each(function(index, element) {
        if(index>7) $(element).css("color","red");
    });
	console.log(tr.children());
})
</script>
</head>

<body>
<div class="divBody">
  <div id='userList' class="spawnTable">
    <table width="90%" height="43" border="0" align="center" cellpadding="0" cellspacing="1" id="myTable" bgcolor="#a9c5d0">
      <tr>
        <th width="150">项目</th>
        <th width="150">1</th>
        <th width="150">2</th>
        <th width="150">3</th>
        <th width="150">4</th>
        <th width="150">5</th>
        <th width="150">6</th>
        <th width="150">7</th>
        <th width="150">8</th>
        <th width="150">9</th>
        <th width="150">10</th>
        <th width="150">11</th>
        <th width="150">12</th>
        <th width="150">13</th>
        <th width="150">14</th>
        <th width="150">15</th>
      </tr>
      <tr>
        <td>推荐人 </td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td>接点人 </td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td>安放位置 </td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td>登录帐号</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td>身份证号码 </td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td>密码 </td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td>姓    名 </td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td>手 机 号 </td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
      </tr>
    </table>
  </div>
</div>
</body>
</html>
