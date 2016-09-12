[void][System.Reflection.Assembly]::LoadWithPartialName("System.Drawing") 
[void][System.Reflection.Assembly]::LoadWithPartialName("System.Windows.Forms")

$myF = New-Object System.Windows.Forms.Form

$b = New-Object System.Windows.Forms.Button
$b.Text="Klick"
$b.Location= "10,10"
$b.Size = "100,40"
$b.add_click{
$label.text = "Schulschluss?"}

$a = New-Object System.Windows.Forms.Button
$a.Text="mich"
$a.Location= "10,60"
$a.Size = "100,40"
$a.add_click{
$label.text = "Powershell GUI"}

$label = New-Object System.Windows.Forms.Label
$label.Text = "Die Buttons ändern den Text"
$label.Font = "Times New Roman, 16.5"
$label.AutoSize = $true
$label.Location = "10,180"

$myF.Controls.add($b)
$myF.controls.Add($a)
$myF.Controls.Add($label)
$myF.ShowDialog();