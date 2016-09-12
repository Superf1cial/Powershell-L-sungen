[void][System.Reflection.Assembly]::LoadWithPartialName("System.Drawing") 
[void][System.Reflection.Assembly]::LoadWithPartialName("System.Windows.Forms")

$myF = New-Object System.Windows.Forms.Form

$b = New-Object System.Windows.Forms.Button
$b.Text="grün"
$b.Location= "10,10"
$b.Size = "100,40"
$b.add_click{
$myF.BackColor = "green"}

$a = New-Object System.Windows.Forms.Button
$a.Text="rot"
$a.Location= "10,60"
$a.Size = "100,40"
$a.add_click{
$myF.BackColor = "red"}

$c = New-Object System.Windows.Forms.Button
$c.Text="blau"
$c.Location= "10,110"
$c.Size = "100,40"
$c.add_click{
$myF.BackColor = "blue"}

$label = New-Object System.Windows.Forms.Label
$label.Text = "Die Buttons ändern die Hintergrundfarbe"
$label.Font = "Times New Roman, 16.5"
$label.AutoSize = $true
$label.Location = "10,180"

$myF.Controls.add($b)
$myF.controls.Add($a)
$myF.controls.Add($c)
$myF.Controls.Add($label)
$myF.ShowDialog();