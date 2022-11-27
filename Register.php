<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Online Cloth Shopping</title>
<link href="style.css" rel="stylesheet" type="text/css" />
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<style type="text/css">
<!--
.style5 {font-size: 85%; font-weight: bold; color: #003300; font-family: Verdana, Arial, Helvetica, sans-serif; }
-->
</style>
<script src="SpryAssets/SpryValidationTextarea.js" type="text/javascript"></script>
<link href="SpryAssets/SpryValidationTextarea.css" rel="stylesheet" type="text/css" />
<style type="text/css">
<!--
.style1 {
	font-size: small;
	font-family: Verdana, Arial, Helvetica, sans-serif;
}
.style2 {font-family: Verdana, Arial, Helvetica, sans-serif}
.style3 {font-size: small}
-->
</style>
<link href="../SpryAssets/SpryValidationTextField.css" rel="stylesheet" type="text/css" />
<style type="text/css">
<!--
.style12 {font-size: small; font-weight: bold; }
.style13 {font-family: Verdana, Arial, Helvetica, sans-serif;
	font-size: small;
	font-weight: bold;
	color: #000000;
}
.style4 {font-size: small;
	font-weight: bold;
	color: #FFFFFF;
}
.style5 {color: #FFFFFF}
.style6 {color: #000000}
-->
</style>
 <style type="text/css">

.ds_box {
	background-color:#336633;
	border: 2px solid #666600;
	position: absolute;
	z-index: 32767;
}

.ds_tbl {
	background-color: #FFF;

}

.ds_head {
	background-color: #85A157;
	color: #FFF;
	font-family: Arial, Helvetica, sans-serif;
	font-size: 13px;
	font-weight: bold;
	text-align: center;
	letter-spacing: 2px;
}

.ds_subhead {
	background-color: #85A157;
	color: #000;
	font-size: 12px;
	font-weight: bold;
	text-align: center;
	font-family: Arial, Helvetica, sans-serif;
	width: 32px;
}

.ds_cell {
	background-color:#FFFFCC;
	color: #000;
	font-size: 13px;
	text-align: center;
	font-family: Arial, Helvetica, sans-serif;
	padding: 5px;
	cursor: pointer;
	border: 1px solid #666600;
}

.ds_cell:hover {
	background-color: #F3F3F3;
} /* This hover code won't work for IE */

 </style>
<script src="SpryAssets/SpryValidationTextarea.js" type="text/javascript"></script>
<link href="SpryAssets/SpryValidationTextarea.css" rel="stylesheet" type="text/css" />
<style type="text/css">
<!--
.style9 {font-size: 95%; font-weight: bold; color: #003300; font-family: Verdana, Arial, Helvetica, sans-serif; }
-->
</style>
</head>
<body>

<table class="ds_box" cellpadding="0" cellspacing="0" id="ds_conclass" style="display: none;">
<tr><td id="ds_calclass">
</td></tr>
</table>

<script type="text/javascript">
// <!-- <![CDATA[

// Project: Dynamic Date Selector (DtTvB) - 2006-03-16
// Script featured on JavaScript Kit- http://www.javascriptkit.com
// Code begin...
// Set the initial date.
var ds_i_date = new Date();
ds_c_month = ds_i_date.getMonth() + 1;
ds_c_year = ds_i_date.getFullYear();

// Get Element By Id
function ds_getel(id) {
	return document.getElementById(id);
}

// Get the left and the top of the element.
function ds_getleft(el) {
	var tmp = el.offsetLeft;
	el = el.offsetParent
	while(el) {
		tmp += el.offsetLeft;
		el = el.offsetParent;
	}
	return tmp;
}
function ds_gettop(el) {
	var tmp = el.offsetTop;
	el = el.offsetParent
	while(el) {
		tmp += el.offsetTop;
		el = el.offsetParent;
	}
	return tmp;
}

// Output Element
var ds_oe = ds_getel('ds_calclass');
// Container
var ds_ce = ds_getel('ds_conclass');

// Output Buffering
var ds_ob = '';
function ds_ob_clean() {
	ds_ob = '';
}
function ds_ob_flush() {
	ds_oe.innerHTML = ds_ob;
	ds_ob_clean();
}
function ds_echo(t) {
	ds_ob += t;
}

var ds_element; // Text Element...

var ds_monthnames = [
'January', 'February', 'March', 'April', 'May', 'June',
'July', 'August', 'September', 'October', 'November', 'December'
]; // You can translate it for your language.

var ds_daynames = [
'Sun', 'Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat'
]; // You can translate it for your language.

// Calendar template
function ds_template_main_above(t) {
	return '<table cellpadding="3" cellspacing="1" class="ds_tbl">'
	     + '<tr>'
		 + '<td class="ds_head" style="cursor: pointer" onclick="ds_py();">&lt;&lt;</td>'
		 + '<td class="ds_head" style="cursor: pointer" onclick="ds_pm();">&lt;</td>'
		 + '<td class="ds_head" style="cursor: pointer" onclick="ds_hi();" colspan="3">[Close]</td>'
		 + '<td class="ds_head" style="cursor: pointer" onclick="ds_nm();">&gt;</td>'
		 + '<td class="ds_head" style="cursor: pointer" onclick="ds_ny();">&gt;&gt;</td>'
		 + '</tr>'
	     + '<tr>'
		 + '<td colspan="7" class="ds_head">' + t + '</td>'
		 + '</tr>'
		 + '<tr>';
}

function ds_template_day_row(t) {
	return '<td class="ds_subhead">' + t + '</td>';
	
}

function ds_template_new_week() {
	return '</tr><tr>';
}

function ds_template_blank_cell(colspan) {
	return '<td colspan="' + colspan + '"></td>'
}

function ds_template_day(d, m, y) {
	return '<td class="ds_cell" onclick="ds_onclick(' + d + ',' + m + ',' + y + ')">' + d + '</td>';

}

function ds_template_main_below() {
	return '</tr>'
	     + '</table>';
}


function ds_draw_calendar(m, y) {
	
	ds_ob_clean();
	
	ds_echo (ds_template_main_above(ds_monthnames[m - 1] + ' ' + y));
	for (i = 0; i < 7; i ++) {
		ds_echo (ds_template_day_row(ds_daynames[i]));
	}
	
	var ds_dc_date = new Date();
	ds_dc_date.setMonth(m - 1);
	ds_dc_date.setFullYear(y);
	ds_dc_date.setDate(1);
	if (m == 1 || m == 3 || m == 5 || m == 7 || m == 8 || m == 10 || m == 12) {
		days = 31;
	} else if (m == 4 || m == 6 || m == 9 || m == 11) {
		days = 30;
	} else {
		days = (y % 4 == 0) ? 29 : 28;
	}
	var first_day = ds_dc_date.getDay();
	var first_loop = 1;
	
	ds_echo (ds_template_new_week());
	
	if (first_day != 0) {
		ds_echo (ds_template_blank_cell(first_day));
	}
	var j = first_day;
	for (i = 0; i < days; i ++) {

		if (j == 0 && !first_loop) {
			
			ds_echo (ds_template_new_week());
		}

		ds_echo (ds_template_day(i + 1, m, y));
		
		first_loop = 0;
	
		j ++;
		j %= 7;
	}

	ds_echo (ds_template_main_below());
	
	ds_ob_flush();

	ds_ce.scrollIntoView();
}


function ds_sh(t) {
	
	ds_element = t;
	
	var ds_sh_date = new Date();
	ds_c_month = ds_sh_date.getMonth() + 1;
	ds_c_year = ds_sh_date.getFullYear();

	ds_draw_calendar(ds_c_month, ds_c_year);
	
	ds_ce.style.display = '';

	the_left = ds_getleft(t);
	the_top = ds_gettop(t) + t.offsetHeight;
	ds_ce.style.left = the_left + 'px';
	ds_ce.style.top = the_top + 'px';
	
	ds_ce.scrollIntoView();
}


function ds_hi() {
	ds_ce.style.display = 'none';
}


function ds_nm() {
	
	ds_c_month ++;
	
	if (ds_c_month > 12) {
		ds_c_month = 1;
		ds_c_year++;
	}
	
	ds_draw_calendar(ds_c_month, ds_c_year);
}


function ds_pm() {
	ds_c_month = ds_c_month - 1; 

	if (ds_c_month < 1) {
		ds_c_month = 12;
		ds_c_year = ds_c_year - 1; 
	}

	ds_draw_calendar(ds_c_month, ds_c_year);
}


function ds_ny() {
	
	ds_c_year++;
	
	ds_draw_calendar(ds_c_month, ds_c_year);
}


function ds_py() {
	
	ds_c_year = ds_c_year - 1; 

	ds_draw_calendar(ds_c_month, ds_c_year);
}


function ds_format_date(d, m, y) {

	m2 = '00' + m;
	m2 = m2.substr(m2.length - 2);
	
	d2 = '00' + d;
	d2 = d2.substr(d2.length - 2);
	
	return y + '-' + m2 + '-' + d2;
}


function ds_onclick(d, m, y) {
	
	ds_hi();
	
	if (typeof(ds_element.value) != 'undefined') {
		ds_element.value = ds_format_date(d, m, y);
	
	} else if (typeof(ds_element.innerHTML) != 'undefined') {
		ds_element.innerHTML = ds_format_date(d, m, y);
	
	} else {
		alert (ds_format_date(d, m, y));

	}
}


</script>
</head>
<SCRIPT language="JavaScript1.2" src="gen_validation.js"></SCRIPT>
<SCRIPT language="JavaScript1.2">
var arrFormValidation=
             [
			 		[//Name
						["minlen=1",
		"Please Enter Name"
						  ],
						  ["alpha",
		"Please Enter Valid Name"
						  ]

                     ],
                   [//Address
						  ["minlen=1",
		"Please Enter Address"
						  ]

                   ],
                   [//City

                   ],
				   [//Email

						["minlen=1",
		"Please Enter Email "
						  ],
						  ["email",
		"Please Enter valid email "
						  ]
                   ],
				   [//Mobile
						   ["num",
		"Please Enter valid Mobile "
						  ],
						  ["minlen=10",
		"Please Enter valid Mobile "
						  ],
						  ["maxlen=10",
		"Please Enter valid Mobile "
						  ]
                   ]
				   ,
				   [//Gender

                   ],
				   [//BirthDate


                   ],


				   [//User
						  ["minlen=1",
		"Please Enter UserName "
						  ]


                   ],
				   [//Password
						["minlen=1",
		"Please Enter Password "
						  ]


                   ]

            ];
</SCRIPT>
<body>
<div id="wrapper">

  <?php
  include "Header.php";
  ?>

  <div id="content">
    <h2><span style="color:#003300">New User Registration</span></h2>

    <form action="insert.php" method="post" onSubmit="return validateForm(this,arrFormValidation);" enctype="multipart/form-data" name="form2" id="form2">
      <table width="100%" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td height="28"><div align="left">Customer Name:</div></td>
          <td><span id="sprytextfield3">
            <label>
            <input type="text" name="txtName" id="txtName" />
            </label>
          <span class="textfieldRequiredMsg">A value is required.</span></span></td>
        </tr>
        <tr>
          <td height="69"><div align="left">Address:</div></td>
          <td><span id="sprytextarea1">
            <label>
            <textarea name="txtAddress" id="txtAddress" cols="35" rows="3"></textarea>
            </label>
          <span class="textareaRequiredMsg">A value is required.</span></span></td>
        </tr>
        <tr>
          <td height="37"><div align="left">City:</div></td>
          <td><label>
            <select name="cmbCity" id="cmbCity">
              <option>New York</option>
              <option>Tokyo</option>
            </select>
          </label></td>
        </tr>
        <tr>
          <td height="29">Email ID:</td>
          <td><span id="sprytextfield4">
            <label>
            <input type="text" name="txtEmail" id="txtEmail" />
            </label>
          <span class="textfieldRequiredMsg">A value is required.</span></span></td>
        </tr>
        <tr>
          <td height="27">Mobile Number:</td>
          <td><span id="sprytextfield5">
            <label>
            <input type="text" name="txtMobile" id="txtMobile" />
            </label>
          <span class="textfieldRequiredMsg">A value is required.</span></span></td>
        </tr>
        <tr>
          <td height="29">Gender:</td>
          <td><label>
            <select name="rdGender" id="rdGender">
              <option>Male</option>
              <option>Female</option>
            </select>
          </label></td>
        </tr>
        <tr>
          <td height="29">Birth Date:</td>
          <td><span id="sprytextfield9">
            <label>
            <input type="text" name="txtDate" id="txtDate" onclick="ds_sh(this);" />
            </label>
          <span class="textfieldRequiredMsg">A value is required.</span></span></td>
        </tr>
        <tr>
          <td height="29">User Name:</td>
          <td><span id="sprytextfield6">
            <label>
            <input type="text" name="txtUserName" id="txtUserName3" />
            </label>
          <span class="textfieldRequiredMsg">A value is required.</span></span></td>
        </tr>
        <tr>
          <td height="30">Password:</td>
          <td><span id="sprytextfield7">
            <label>
            <input type="password" name="txtPassword" id="txtPassword" />
            </label>
          <span class="textfieldRequiredMsg">A value is required.</span></span></td>
        </tr>
        <tr>
          <td>&nbsp;</td>
          <td><label>
            <input type="submit" name="button2" id="button2" value="Register" />
          </label></td>
        </tr>
        <tr>
          <td>&nbsp;</td>
          <td>&nbsp;</td>
        </tr>
      </table>
    </form>
    <table width="100%" border="0" cellspacing="3" cellpadding="3">
      <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td><p><img src="img/Jeans.jpg" alt="box" width="100" height="100" hspace="10" align="left" class="imgleft" title="box" /></p></td>
        <td><p><img src="img/asd.jpg" alt="box" width="100" height="100" hspace="10" align="left" class="imgleft" title="box" /></p></td>
        <td><p><img src="img/images.jpg" alt="box" width="100" height="100" hspace="10" align="left" class="imgleft" title="box" /></p></td>
      </tr>
      <tr>
        <td height="26" bgcolor="#BCE0A8"><div align="center" class="style9">Jeans</div></td>
        <td bgcolor="#BCE0A8"><div align="center" class="style9">Bleasures</div></td>
        <td bgcolor="#BCE0A8"><div align="center" class="style9">T-Shirts</div></td>
      </tr>
    </table>
  </div>
  <?php
 include "Right.php";
 ?>
  <div style="clear:both;"></div>
   <?php
 include "Footer.php";
 ?>
</div>
<script type="text/javascript">
<!--
var sprytextfield3 = new Spry.Widget.ValidationTextField("sprytextfield3");
var sprytextarea1 = new Spry.Widget.ValidationTextarea("sprytextarea1");
var sprytextfield4 = new Spry.Widget.ValidationTextField("sprytextfield4");
var sprytextfield5 = new Spry.Widget.ValidationTextField("sprytextfield5");
var sprytextfield6 = new Spry.Widget.ValidationTextField("sprytextfield6");
var sprytextfield7 = new Spry.Widget.ValidationTextField("sprytextfield7");
var sprytextfield9 = new Spry.Widget.ValidationTextField("sprytextfield9");
//-->
</script>
</body>
</html>
