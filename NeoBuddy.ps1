Add-Type -AssemblyName System.Windows.Forms
Add-Type -AssemblyName System.Drawing

$form = New-Object System.Windows.Forms.Form
$form.Text = "NeoBuddy - Controller"
$form.Size = New-Object System.Drawing.Size(440,150)
$form.StartPosition = "CenterScreen"
$form.TopMost = $True

$buddyHeartButton = New-Object System.Windows.Forms.Button
$buddyHeartButton.Location = New-Object System.Drawing.Point(20,50)
$buddyHeartButton.Size = New-Object System.Drawing.Size(80,25)
$buddyHeartButton.Text = 'Buddy Heart'

$form.Controls.Add($buddyHeartButton)

$buddyWingButton = New-Object System.Windows.Forms.Button
$buddyWingButton.Location = New-Object System.Drawing.Point(120,50)
$buddyWingButton.Size = New-Object System.Drawing.Size(80,25)
$buddyWingButton.Text = 'Buddy Wing'

$form.Controls.Add($buddyWingButton)

$buddyTorsoButton = New-Object System.Windows.Forms.Button
$buddyTorsoButton.Location = New-Object System.Drawing.Point(220,50)
$buddyTorsoButton.Size = New-Object System.Drawing.Size(80,25)
$buddyTorsoButton.Text = 'Buddy Torso'

$form.Controls.Add($buddyTorsoButton)

$buddyHeadButton = New-Object System.Windows.Forms.Button
$buddyHeadButton.Location = New-Object System.Drawing.Point(320,50)
$buddyHeadButton.Size = New-Object System.Drawing.Size(80,25)
$buddyHeadButton.Text = 'Buddy Head'

$form.Controls.Add($buddyHeadButton)

$form.ShowDialog()