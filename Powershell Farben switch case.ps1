[void][System.Reflection.Assembly]::LoadWithPartialName("System.Drawing") 
[void][System.Reflection.Assembly]::LoadWithPartialName("System.Windows.Forms")

$myF = New-Object System.Windows.Forms.Form
$myF.Show();
$myF.Text="Hello World"
do {
   $a=Read-Host("q = Fenster schließen")
   switch($a)
   {
   "r"{$myF.BackColor = "red"}
   "g"{$myF.BackColor = "green"}
   "b"{$myF.BackColor = "blue"}
   }
}
while ($a -ne "q")
$myF.Close();