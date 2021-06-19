@echo on
taskkill /IM explorer.exe /F
icacls "%WinDir%\ServiceProfiles\LocalService" /grant "%UserName%":F /C /T /Q
takeown /r /f %LocalAppData%\Microsoft\Windows\Explorer\thumbcache_*.db
takeown /f %userprofile%\AppData\Local\Microsoft\Windows\Explorer\iconcache_*.db
takeown /r /f C:\ProgramData\Microsoft\Windows\WER\
takeown /r /f C:\ProgramData\Microsoft\Windows\WER\ReportArchive
del /A /F /Q "%WinDir%\ServiceProfiles\LocalService\AppData\Local\FontCache\*FontCache*"
del /A /F /Q "%WinDir%\System32\FNTCACHE.DAT"
cd %userprofile%\AppData\Roaming\Mozilla\Firefox\Profiles\*.default-nightly\
del /q /f favicons.sqlite
del /q /f favicons.sqlite-shm
del /q /f favicons.sqlite-wal
del /q /f formhistory.sqlite
del /q /f cookies.sqlite
cd %userprofile%\AppData\Roaming\Mozilla\Firefox\Profiles\*.default 
del /q /f favicons.sqlite
del /q /f favicons.sqlite-shm
del /q /f favicons.sqlite-wal
del /q /f formhistory.sqlite
del /q /f cookies.sqlite
cd %userprofile%
DEL /A /Q "%localappdata%\IconCache.db"
DEL /A /F /Q "%localappdata%\Microsoft\Windows\Explorer\iconcache*"
del /q /f %AppData%\Microsoft\Windows\Recent\AutomaticDestinations
del /q /f %userprofile%\AppData\Local\Microsoft\Windows\Explorer\thumbcache_*.db
del /q /f %userprofile%\AppData\Local\Temp\
del /q /f %userprofile%\Local Settings\Temp\
del /q /f C:\Windows\Temp
del /q /f C:\ProgramData\Microsoft\Windows\WER\
del /q /f C:\Windows\ServiceProfiles\LocalService\AppData\Local\Temp\
del /q /f %userprofile%\\AppData\Local\Microsoft\OneNote\16.0\cache\
del /q /f %userprofile%\AppData\Local\Packages\Microsoft.Windows.ContentDeliveryManager_cw5n1h2txyewy\LocalState\Assets\
del /q /f %ProgramData%\Microsoft\Windows Defender\Scans\History\store
del /f /s /q %windir%\prefetch\
del /f /s /q %systemdrive%\*.tmp
del /f /s /q %systemdrive%\*.log
del /f /s /q %systemdrive%\*.old
explorer.exe
del /q /f %userprofile%\AppData\Local\Microsoft\Windows\History
wsreset.exe
explorer
start event.bat
cls
echo dddd   ooooooooo nn    n eeeeee
echo dd  dd o       o n nn  n e
echo dd  dd o       o n  nn n eeeeee
echo dd  dd o       o n   nnn e
echo dddd   ooooooooo n    nn eeeeee
pause
exlorer
timout 15
exit