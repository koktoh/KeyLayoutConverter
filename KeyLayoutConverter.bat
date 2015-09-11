@echo off
echo CAUTION!!!!
echo プロセス終了時に再起動します。
echo 保存していないデータは失われる可能性があります。
set /p num="1:日本語配列 2:英語配列 >> "
if "%num%"=="1" (
	rem 日本語配列
	reg add HKLM\SYSTEM\CurrentControlSet\Services\i8042prt\Parameters /f /v "LayerDriver JPN" /t REG_SZ /d kbd106.dll
	reg add HKLM\SYSTEM\CurrentControlSet\Services\i8042prt\Parameters /f /v "OverrideKeyboardIdentifier" /t REG_SZ /d PCAT_106KEY
	reg add HKLM\SYSTEM\CurrentControlSet\Services\i8042prt\Parameters /f /v "OverrideKeyboardSubtype" /t REG_DWORD /d 2
	reg add HKLM\SYSTEM\CurrentControlSet\Services\i8042prt\Parameters /f /v "OverrideKeyboardType" /t REG_DWORD /d 7
	shutdown /r /t 0
) else if "%num%"=="2" (
	rem 英語配列
	reg add HKLM\SYSTEM\CurrentControlSet\Services\i8042prt\Parameters /f /v "LayerDriver JPN" /t REG_SZ /d kbd101.dll
	reg add HKLM\SYSTEM\CurrentControlSet\Services\i8042prt\Parameters /f /v "OverrideKeyboardIdentifier" /t REG_SZ /d PCAT_101KEY
	reg add HKLM\SYSTEM\CurrentControlSet\Services\i8042prt\Parameters /f /v "OverrideKeyboardSubtype" /t REG_DWORD /d 0
	reg add HKLM\SYSTEM\CurrentControlSet\Services\i8042prt\Parameters /f /v "OverrideKeyboardType" /t REG_DWORD /d 7
	shutdown /r /t 0
) else (
	echo Error: "%num%" は定義されていません。
	echo プロセスを終了します。再起動はされません。
	pause
)
@echo on
