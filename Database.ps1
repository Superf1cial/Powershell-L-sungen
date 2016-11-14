#Generated Form Function
function GenerateForm {
########################################################################
# Code Generated By: SAPIEN Technologies PrimalForms (Community Edition) v1.0.10.0
# Generated On: 14.11.2016 10:38
# Generated By: d6001612
########################################################################
$xmlfilepath = ("C:\Users\d6001612\Desktop\config.xml")
[xml]$global:xmlfile = (get-content $xmlfilepath)

#region Import the Assemblies
[reflection.assembly]::loadwithpartialname("System.Drawing") | Out-Null
[reflection.assembly]::loadwithpartialname("System.Windows.Forms") | Out-Null
#endregion

#region Generated Form Objects
$form1 = New-Object System.Windows.Forms.Form
$button2 = New-Object System.Windows.Forms.Button
$button1 = New-Object System.Windows.Forms.Button
$groupBox2 = New-Object System.Windows.Forms.GroupBox
$IPend = New-Object System.Windows.Forms.TextBox
$label6 = New-Object System.Windows.Forms.Label
$IPstart = New-Object System.Windows.Forms.TextBox
$label5 = New-Object System.Windows.Forms.Label
$groupBox1 = New-Object System.Windows.Forms.GroupBox
$label4 = New-Object System.Windows.Forms.Label
$label3 = New-Object System.Windows.Forms.Label
$label2 = New-Object System.Windows.Forms.Label
$label1 = New-Object System.Windows.Forms.Label
$Name = New-Object System.Windows.Forms.TextBox
$Password = New-Object System.Windows.Forms.TextBox
$User = New-Object System.Windows.Forms.TextBox
$Server = New-Object System.Windows.Forms.TextBox
$InitialFormWindowState = New-Object System.Windows.Forms.FormWindowState
#endregion Generated Form Objects

#----------------------------------------------
#Generated Event Script Blocks
#----------------------------------------------
#Provide Custom Code for events specified in PrimalForms.
$button1_OnClick= 
{
$global:xmlfile.config.dbserver = $Server.Text
$global:xmlfile.config.dbuser = $user.Text
$global:xmlfile.config.dbpassword = $Password.Text
$global:xmlfile.config.dbname = $Name.Text
$global:xmlfile.config.from = $IPstart.Text
$global:xmlfile.config.to = $IPend.Text
$global:xmlfile.save($xmlfilepath)
$form1.close()
}

$button2_OnClick= 
{
$form1.close()

}

$handler_label5_Click= 
{
#TODO: Place custom script here

}

$handler_label4_Click= 
{
#TODO: Place custom script here

}

$handler_groupBox1_Enter= 
{
#TODO: Place custom script here

}

$OnLoadForm_StateCorrection=
{#Correct the initial state of the form to prevent the .Net maximized form issue
	$form1.WindowState = $InitialFormWindowState
}

#----------------------------------------------
#region Generated Form Code
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 298
$System_Drawing_Size.Width = 470
$form1.ClientSize = $System_Drawing_Size
$form1.DataBindings.DefaultDataSourceUpdateMode = 0
$form1.Name = "form1"
$form1.Text = "Primal Form"


$button2.DataBindings.DefaultDataSourceUpdateMode = 0

$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 350
$System_Drawing_Point.Y = 265
$button2.Location = $System_Drawing_Point
$button2.Name = "button2"
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 23
$System_Drawing_Size.Width = 108
$button2.Size = $System_Drawing_Size
$button2.TabIndex = 3
$button2.Text = "Abbrechen"
$button2.UseVisualStyleBackColor = $True
$button2.add_Click($button2_OnClick)

$form1.Controls.Add($button2)


$button1.DataBindings.DefaultDataSourceUpdateMode = 0

$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 230
$System_Drawing_Point.Y = 265
$button1.Location = $System_Drawing_Point
$button1.Name = "button1"
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 23
$System_Drawing_Size.Width = 114
$button1.Size = $System_Drawing_Size
$button1.TabIndex = 2
$button1.Text = "Speichern"
$button1.UseVisualStyleBackColor = $True
$button1.add_Click($button1_OnClick)

$form1.Controls.Add($button1)


$groupBox2.DataBindings.DefaultDataSourceUpdateMode = 0
$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 23
$System_Drawing_Point.Y = 190
$groupBox2.Location = $System_Drawing_Point
$groupBox2.Name = "groupBox2"
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 69
$System_Drawing_Size.Width = 413
$groupBox2.Size = $System_Drawing_Size
$groupBox2.TabIndex = 1
$groupBox2.TabStop = $False
$groupBox2.Text = "IP Range"

$form1.Controls.Add($groupBox2)
$IPend.DataBindings.DefaultDataSourceUpdateMode = 0
$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 248
$System_Drawing_Point.Y = 27
$IPend.Location = $System_Drawing_Point
$IPend.Name = "IPend"
$IPend.Font = "Arial, 10"
$IPend.Text = $global:xmlfile.config.to
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 20
$System_Drawing_Size.Width = 147
$IPend.Size = $System_Drawing_Size
$IPend.TabIndex = 3

$groupBox2.Controls.Add($IPend)

$label6.DataBindings.DefaultDataSourceUpdateMode = 0

$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 194
$System_Drawing_Point.Y = 27
$label6.Location = $System_Drawing_Point
$label6.Name = "label6"
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 23
$System_Drawing_Size.Width = 100
$label6.Size = $System_Drawing_Size
$label6.TabIndex = 2
$label6.Text = "to"

$groupBox2.Controls.Add($label6)

$IPstart.DataBindings.DefaultDataSourceUpdateMode = 0
$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 44
$System_Drawing_Point.Y = 27
$IPstart.Location = $System_Drawing_Point
$IPstart.Name = "IPstart"
$IPstart.Font = "Arial, 10"
$IPstart.Text = $global:xmlfile.config.from
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 20
$System_Drawing_Size.Width = 134
$IPstart.Size = $System_Drawing_Size
$IPstart.TabIndex = 1

$groupBox2.Controls.Add($IPstart)

$label5.DataBindings.DefaultDataSourceUpdateMode = 0

$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 6
$System_Drawing_Point.Y = 27
$label5.Location = $System_Drawing_Point
$label5.Name = "label5"
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 23
$System_Drawing_Size.Width = 100
$label5.Size = $System_Drawing_Size
$label5.TabIndex = 0
$label5.Text = "from"
$label5.add_Click($handler_label5_Click)

$groupBox2.Controls.Add($label5)



$groupBox1.DataBindings.DefaultDataSourceUpdateMode = 0
$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 23
$System_Drawing_Point.Y = 17
$groupBox1.Location = $System_Drawing_Point
$groupBox1.Name = "groupBox1"
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 142
$System_Drawing_Size.Width = 414
$groupBox1.Size = $System_Drawing_Size
$groupBox1.TabIndex = 0
$groupBox1.TabStop = $False
$groupBox1.Text = "DB Config"
$groupBox1.add_Enter($handler_groupBox1_Enter)

$form1.Controls.Add($groupBox1)
$label4.AutoSize = $True
$label4.DataBindings.DefaultDataSourceUpdateMode = 0

$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 6
$System_Drawing_Point.Y = 107
$label4.Location = $System_Drawing_Point
$label4.Name = "label4"
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 13
$System_Drawing_Size.Width = 53
$label4.Size = $System_Drawing_Size
$label4.TabIndex = 7
$label4.Text = "DB Name"
$label4.add_Click($handler_label4_Click)

$groupBox1.Controls.Add($label4)

$label3.AutoSize = $True
$label3.DataBindings.DefaultDataSourceUpdateMode = 0

$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 6
$System_Drawing_Point.Y = 81
$label3.Location = $System_Drawing_Point
$label3.Name = "label3"
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 13
$System_Drawing_Size.Width = 71
$label3.Size = $System_Drawing_Size
$label3.TabIndex = 6
$label3.Text = "DB Password"

$groupBox1.Controls.Add($label3)

$label2.AutoSize = $True
$label2.DataBindings.DefaultDataSourceUpdateMode = 0

$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 6
$System_Drawing_Point.Y = 55
$label2.Location = $System_Drawing_Point
$label2.Name = "label2"
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 13
$System_Drawing_Size.Width = 47
$label2.Size = $System_Drawing_Size
$label2.TabIndex = 5
$label2.Text = "DB User"

$groupBox1.Controls.Add($label2)

$label1.AutoSize = $True
$label1.DataBindings.DefaultDataSourceUpdateMode = 0

$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 6
$System_Drawing_Point.Y = 29
$label1.Location = $System_Drawing_Point
$label1.Name = "label1"
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 13
$System_Drawing_Size.Width = 56
$label1.Size = $System_Drawing_Size
$label1.TabIndex = 4
$label1.Text = "DB Server"

$groupBox1.Controls.Add($label1)

$Name.DataBindings.DefaultDataSourceUpdateMode = 0
$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 153
$System_Drawing_Point.Y = 104
$Name.Location = $System_Drawing_Point
$Name.Name = "Name"
$Name.Font = "Arial, 10"
$Name.Text = $global:xmlfile.config.dbname
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 20
$System_Drawing_Size.Width = 168
$Name.Size = $System_Drawing_Size
$Name.TabIndex = 3

$groupBox1.Controls.Add($Name)

$Password.DataBindings.DefaultDataSourceUpdateMode = 0
$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 153
$System_Drawing_Point.Y = 78
$Password.Location = $System_Drawing_Point
$Password.Name = "Password"
$Password.Text = $global:xmlfile.config.dbpassword
$Password.Font = "Arial, 10"
$Password.PasswordChar = "*"
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 20
$System_Drawing_Size.Width = 168
$Password.Size = $System_Drawing_Size
$Password.TabIndex = 2

$groupBox1.Controls.Add($Password)

$User.DataBindings.DefaultDataSourceUpdateMode = 0
$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 153
$System_Drawing_Point.Y = 52
$User.Location = $System_Drawing_Point
$User.Name = "User"
$User.Font = "Arial, 10"
$User.Text = $global:xmlfile.config.dbuser
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 20
$System_Drawing_Size.Width = 168
$User.Size = $System_Drawing_Size
$User.TabIndex = 1

$groupBox1.Controls.Add($User)

$Server.DataBindings.DefaultDataSourceUpdateMode = 0
$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 153
$System_Drawing_Point.Y = 26
$Server.Location = $System_Drawing_Point
$Server.Name = "Server"
$server.Font = "Arial, 10"
$Server.Text = $global:xmlfile.config.dbserver
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 20
$System_Drawing_Size.Width = 168
$Server.Size = $System_Drawing_Size
$Server.TabIndex = 0

$groupBox1.Controls.Add($Server)


#endregion Generated Form Code

#Save the initial state of the form
$InitialFormWindowState = $form1.WindowState
#Init the OnLoad event to correct the initial state of the form
$form1.add_Load($OnLoadForm_StateCorrection)
#Show the Form
$form1.ShowDialog()| Out-Null

} #End Function

#Call the Function
GenerateForm
