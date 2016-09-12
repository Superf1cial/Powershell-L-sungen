[void][System.Reflection.Assembly]::LoadWithPartialName("System.Drawing") 
[void][System.Reflection.Assembly]::LoadWithPartialName("System.Windows.Forms")

$myF = New-Object System.Windows.Forms.Form

$global:count = 0

$b = New-Object System.Windows.Forms.Button
$b.Text="Zähl hoch"
$b.BackColor = "blue"
$b.Location= "10,10"
$b.Size = "100,40"
$b.add_click{
$global:count++
$label.Text = "Klicks: $global:count"}

$label = New-Object System.Windows.Forms.Label
$label.Text = "Zähler"
$label.Font = "Times New Roman, 16.5"
$label.AutoSize = $true
$label.Location = "10,180"

$myF.controls.Add($b)
$myF.controls.Add($label)
$myF.showdialog()