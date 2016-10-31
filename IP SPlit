[void][System.Reflection.Assembly]::LoadWithPartialName("System.Drawing") 
[void][System.Reflection.Assembly]::LoadWithPartialName("System.Windows.Forms")

$myF = New-Object System.Windows.Forms.Form

$Textbox = New-Object System.Windows.Forms.TextBox
$Textbox.Location = "50,50"
$Textbox.Size = "100,10"
$Textbox.add_KeyDown({
if($_.KeyCode -eq "Enter"){
$global:ip = $Textbox.Text
$Textbox.Text = ""

$ipsplit = $ip.split(".")

if($ipsplit[0] -ge 191 -and $ipsplit[0] -le 223)
{
$label.Text = "Es handelt sich um Klasse C"
}
elseif($ipsplit[0] -ge 127 -and $ipsplit[0] -le 191)
{
$label.Text = "Es handelt sich um Klasse B"
}
elseif($ipsplit[0] -le 127)
{
$label.Text = "Es handelt sich um Klasse A"
}
else
{
$label.Text = "Fehlerhafte Eingabe"
}
}})

$label = New-Object System.Windows.Forms.Label
$label.Text = "Test"
$label.AutoSize = $true
$label.Location = "10,100"

$myF.controls.Add($label)
$myF.controls.Add($Textbox)
$myF.showdialog()
