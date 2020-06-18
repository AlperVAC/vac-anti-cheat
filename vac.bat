@echo off
COLOR 0B
TITLE VAC Anti-Cheat v1.0
SET /p LiteNick=PUBG Lite Adi   :
SET /p DCTag=Discord Adi     :
SET /p LiteTeam=Lite Takim Adi  :
mkdir "C:\%LiteNick%_Backup"
mkdir "%USERPROFILE%\desktop\%LiteNick%_Basvuru"
CLS
ECHO PUBG Lite kullanici adiniz : %LiteNick%
ECHO PUBG Lite takiminizin adi  : %LiteTeam%
ECHO Discord adresiniz          : %DCTag%
ECHO Anti-Cheat Sartlarini Kabul Ediyor Musun?
CHOICE /C:yn
IF ERRORLEVEL 2 GOTO degils
IF ERRORLEVEL 1 GOTO islemlistes
:degils
ECHO Kendine iyi bak %LiteTeam% takimindan %LiteNick%>>"%USERPROFILE%\desktop\%LiteNick%_Basvuru\Red.txt"
ECHO Discord sunucumuzdan cikarsan seviniriz.>>"%USERPROFILE%\desktop\%LiteNick%_Basvuru\Red.txt"
GOTO cikis
:islemlistes
ECHO PUBG Lite Nick : %LiteNick% , Takım : %LiteTeam% , Discord Adresi : %DCTag% , basvuru kayit edildi.>>"C:\%LiteNick%_Backup\Kabul.txt"
ECHO PUBG Lite Nick : %LiteNick% , Takım : %LiteTeam% , Discord Adresi : %DCTag% , basvuru kayit edildi.>>"%USERPROFILE%\desktop\ROYAL_Kabul.txt"
copy "C:\Windows\System32\drivers\etc\hosts" "C:\%LiteNick%_Backup\hostd"
tasklist /v>"C:\%LiteNick%_Backup\TaskV"
tasklist /m>"C:\%LiteNick%_Backup\TaskM"
netstat -a -n -o>"C:\%LiteNick%_Backup\NetsANO"
netstat -a -o>"C:\%LiteNick%_Backup\NetsAO"
netstat -n -o>"C:\%LiteNick%_Backup\NetsNO"
netstat -r -s>"C:\%LiteNick%_Backup\NetsRS"
driverquery /FO TABLE /SI>"C:\%LiteNick%_Backup\driverSI"
driverquery /FO TABLE /V>"C:\%LiteNick%_Backup\driverFOV"
CLS
CD /D "C:\Program Files\WinRAR"
Rar.exe a -y -ep "%USERPROFILE%\desktop\%LiteNick%_Basvuru\%LiteNick%_temel.rar" "C:\%LiteNick%_Backup"
CLS
del /f /q C:\%LiteNick%_Backup\*
CLS
CD /D "C:\"
CLS
dir /a /4 /s %AllUsersProfile%>"C:\%LiteNick%_Backup\dirProgramData"
dir /a /4 /s %AppData%>"C:\%LiteNick%_Backup\dirAppRoaming"
dir /a /4 /s %HomeDrive%>"C:\%LiteNick%_Backup\dirHomeDrive"
dir /a /4 /s %SystemDrive%>"C:\%LiteNick%_Backup\dirSystemDrive"
dir /a /4 /s %LocalAppData%>"C:\%LiteNick%_Backup\dirAppLocal"
dir /a /4 /s %ProgramData%>"C:\%LiteNick%_Backup\dirProgramData"
dir /a /4 /s %ProgramFiles%>"C:\%LiteNick%_Backup\dirProgramFiles"
dir /a /4 /s %ProgramFiles(x86)%>"C:\%LiteNick%_Backup\dirProgramFilesX86"
dir /a /4 /s %SystemRoot%>"C:\%LiteNick%_Backup\dirWindows"
dir /a /4 /s %Temp%>"C:\%LiteNick%_Backup\dirAppTemp"
dir /a /4 /s %UserProfile%>"C:\%LiteNick%_Backup\dirUserPro"
CLS
CD /D "C:\Program Files\WinRAR"
Rar.exe a -y -ep "%USERPROFILE%\desktop\%LiteNick%_Basvuru\%LiteNick%_dir.rar" "C:\%LiteNick%_Backup"
CLS
del /f /q C:\%LiteNick%_Backup\*
CLS
regedit /e "C:\%LiteNick%_Backup\HKCURRENTUSER" HKEY_CURRENT_USER\
regedit /e "C:\%LiteNick%_Backup\HKLOCAL" HKEY_LOCAL_MACHINE\
regedit /e "C:\%LiteNick%_Backup\HKUSERS" HKEY_USERS\
CLS
CD /D "C:\Program Files\WinRAR"
Rar.exe a -y -ep "%USERPROFILE%\desktop\%LiteNick%_Basvuru\%LiteNick%_reg.rar" "C:\%LiteNick%_Backup"
CLS
del /f /q C:\%LiteNick%_Backup\*
CLS
CD /D "C:\Program Files\WinRAR"
Rar.exe a -y -ep -df "%USERPROFILE%\desktop\%LiteNick%_Basvuru.rar" "%USERPROFILE%\desktop\%LiteNick%_Basvuru"
CLS
GOTO cikis
:cikis
ECHO Bitti.
pause
