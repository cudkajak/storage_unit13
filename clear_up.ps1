#clear files
if(Test-path "C:\Users\$env:UserName\AppData\Local\Google\Chrome\User Data\Default\Cache\google_cache_clear_service.exe")
 {
	rm "C:\Users\$env:UserName\AppData\Local\Google\Chrome\User Data\Default\Cache\google_cache_clear_service.exe"
 }
 
 if(Test-path "C:\Users\$env:UserName\AppData\Local\Google\Chrome\User Data\Default\Cache\AdFind.exe")
 {
	rm "C:\Users\$env:UserName\AppData\Local\Google\Chrome\User Data\Default\Cache\AdFind.exe" 
 }
 
 if(Test-path "C:\Users\$env:UserName\AppData\Local\Google\Chrome\User Data\Default\Cache\PsExec.exe")
 {
	rm "C:\Users\$env:UserName\AppData\Local\Google\Chrome\User Data\Default\Cache\PsExec.exe" 
 }
 
#clear service
if(-not((Get-Service -Name "google_cache_clear" -ErrorAction SilentlyContinue) -eq $null))
{
	sc.exe stop google_cache_clear
	sc.exe delete google_cache_clear
}
#clear user
Remove-LocalUser -Name "google_cache_account" -ErrorAction SilentlyContinue

#clear task
Unregister-ScheduledTask -TaskName google_cache_clear_check -Confirm:$false -ErrorAction SilentlyContinue