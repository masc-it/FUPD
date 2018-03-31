@echo off

xcopy /s /y %~dp0\FUPD %AppData%\FUPD\

echo "Files successfully copied in AppData\Roaming\FUPD"

echo "Creating the sneaky F-task..."
SchTasks /Create /SC ONLOGON /TN "FUPD" /TR "wscript.exe %AppData%\FUPD\invisible.vbs %AppData%\FUPD\FUPD.bat" /RL HIGHEST

echo "Let's FUPD!"
schtasks /Run /TN "FUPD"
echo "Done!"
echo "You can close this window. This script will silently run on every boot."
echo "If you do not believe, go check services :P"

pause