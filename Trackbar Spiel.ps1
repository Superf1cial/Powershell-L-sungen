#Generated Form Function
function GenerateForm {
########################################################################
# Code Generated By: SAPIEN Technologies PrimalForms (Community Edition) v1.0.10.0
# Generated On: 07.11.2016 11:53
# Generated By: d6001612
########################################################################

$global:randomnumber = get-random -Minimum 1 -Maximum 100
$global:versuch= 0

#region Import the Assemblies
[reflection.assembly]::loadwithpartialname("System.Windows.Forms") | Out-Null
[reflection.assembly]::loadwithpartialname("System.Drawing") | Out-Null
#endregion

#region Generated Form Objects
$form1 = New-Object System.Windows.Forms.Form
$button1 = New-Object System.Windows.Forms.Button
$trackBar1 = New-Object System.Windows.Forms.TrackBar
$label1 = New-Object System.Windows.Forms.Label
$statusBar1 = New-Object System.Windows.Forms.StatusBar
$progressbar1 = New-Object System.Windows.Forms.progressbar
$InitialFormWindowState = New-Object System.Windows.Forms.FormWindowState
#endregion Generated Form Objects

#----------------------------------------------
#Generated Event Script Blocks
#----------------------------------------------
#Provide Custom Code for events specified in PrimalForms.
$button1_OnClick= 
{
$global:Versuch++

$scrollnumber = $trackBar1.Value
if($global:randomnumber -gt $scrollnumber -and $global:Versuch -lt 10)
{
$statusBar1.Text = "Zahl größer als $scrollnumber, das ist $global:Versuch. Versuch"
$progressBar1.value = $progressbar1.value + 10
}
elseif($global:randomnumber -lt $scrollnumber -and $global:Versuch -lt 10)
{
$statusBar1.Text = "Zahl kleiner als $scrollnumber, das ist $global:versuch. Versuch"
$progressBar1.value = $progressbar1.value + 10
}
elseif($global:randomnumber -eq $scrollnumber -and $global:Versuch -lt 10)
{
$statusBar1.Text = "Zahl gefunden, es ist $global:randomnumber"
$global:randomnumber = get-random -Minimum 1 -Maximum 100
$global:versuch= 0
$progressBar1.value = $progressbar1.value + 10
$button1.Enabled = $false
}
else{
$statusBar1.Text = "Verloren, zuviele Versuche gebraucht"
$button1.Enabled = $false
$progressBar1.Value = $progressBar1.Value + 10
}



}

$handler_trackBar1_ValueChanged= 
{
$label1.text = $trackBar1.Value
}

$handler_button1_MouseClick= 
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
$System_Drawing_Size.Height = 224
$System_Drawing_Size.Width = 260
$form1.ClientSize = $System_Drawing_Size
$form1.DataBindings.DefaultDataSourceUpdateMode = 0
$form1.Name = "form1"
$form1.Text = "Primal Form"


$button1.DataBindings.DefaultDataSourceUpdateMode = 0

$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 53
$System_Drawing_Point.Y = 135
$button1.Location = $System_Drawing_Point
$button1.Name = "button1"
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 24
$System_Drawing_Size.Width = 97
$button1.autosize = $True
$button1.TabIndex = 3
$button1.Text = "Submit number"
$button1.UseVisualStyleBackColor = $True
$button1.add_Click($button1_OnClick)
$button1.add_MouseClick($handler_button1_MouseClick)

$form1.Controls.Add($button1)

$trackBar1.DataBindings.DefaultDataSourceUpdateMode = 0
$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 23
$System_Drawing_Point.Y = 74
$trackBar1.Location = $System_Drawing_Point
$trackBar1.Name = "trackBar1"
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 45
$System_Drawing_Size.Width = 192
$trackBar1.Size = $System_Drawing_Size
$trackBar1.TabIndex = 2
$trackbar1.AutoSize = $true
$trackBar1.SetRange(1,100)
$trackBar1.add_ValueChanged($handler_trackBar1_ValueChanged)

$form1.Controls.Add($trackBar1)

$label1.DataBindings.DefaultDataSourceUpdateMode = 0

$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 115
$System_Drawing_Point.Y = 25
$label1.Location = $System_Drawing_Point
$label1.Name = "label1"
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 23
$System_Drawing_Size.Width = 135
$label1.Size = $System_Drawing_Size
$label1.TabIndex = 1
$label1.Text = "1"

$form1.Controls.Add($label1)

$statusBar1.DataBindings.DefaultDataSourceUpdateMode = 0
$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 0
$System_Drawing_Point.Y = 200
$statusBar1.Location = $System_Drawing_Point
$statusBar1.Name = "statusBar1"
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 24
$System_Drawing_Size.Width = 243
$statusBar1.autosize = $true
$statusBar1.TabIndex = 0
$statusBar1.Text = "Anzahl der Versuche"

$form1.Controls.Add($statusBar1)

$progressBar1.DataBindings.DefaultDataSourceUpdateMode = 0
$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 0
$System_Drawing_Point.Y = 178.7
$progressBar1.Location = $System_Drawing_Point
$progressBar1.Name = "progressBar1"
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 23
$System_Drawing_Size.Width = 260
$progressBar1.Size = $System_Drawing_Size
$progressBar1.TabIndex = 0
$progressbar1.value = 0

$form1.controls.add($progressbar1)

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
