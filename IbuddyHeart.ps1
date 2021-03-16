if ($env:Processor_Architecture -ne "x86")   
{ Write-Information -MessageData 'Launching x86 PowerShell'
&"$env:windir\syswow64\windowspowershell\v1.0\powershell.exe" -noninteractive -noprofile -file $myinvocation.Mycommand.path -executionpolicy bypass
exit
}

[string]$buddydllPath = '..\Resources\ibuddylib.dll'

if (Test-Path $buddydllPath)
{
    Add-Type -Path $buddydllPath
    $myBuddy = [ibuddylib.BuddyManager]::Global.AnyBuddy

    While($true)
    {
        $i++
        Start-Sleep -m 500
        Write-Host "IbuddyHeart has run $i times" -ForegroundColor red
        $myBuddy.HeartLight = "on"
        Start-Sleep -m 500
        $myBuddy.HeartLight = "off"
    }
}