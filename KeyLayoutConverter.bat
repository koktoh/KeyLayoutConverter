@echo off
echo CAUTION!!!!
echo �v���Z�X�I�����ɍċN�����܂��B
echo �ۑ����Ă��Ȃ��f�[�^�͎�����\��������܂��B
set /p num="1:���{��z�� 2:�p��z�� >> "
if "%num%"=="1" (
	rem ���{��z��
	reg add HKLM\SYSTEM\CurrentControlSet\Services\i8042prt\Parameters /f /v "LayerDriver JPN" /t REG_SZ /d kbd106.dll
	reg add HKLM\SYSTEM\CurrentControlSet\Services\i8042prt\Parameters /f /v "OverrideKeyboardIdentifier" /t REG_SZ /d PCAT_106KEY
	reg add HKLM\SYSTEM\CurrentControlSet\Services\i8042prt\Parameters /f /v "OverrideKeyboardSubtype" /t REG_DWORD /d 2
	reg add HKLM\SYSTEM\CurrentControlSet\Services\i8042prt\Parameters /f /v "OverrideKeyboardType" /t REG_DWORD /d 7
	shutdown /r /t 0
) else if "%num%"=="2" (
	rem �p��z��
	reg add HKLM\SYSTEM\CurrentControlSet\Services\i8042prt\Parameters /f /v "LayerDriver JPN" /t REG_SZ /d kbd101.dll
	reg add HKLM\SYSTEM\CurrentControlSet\Services\i8042prt\Parameters /f /v "OverrideKeyboardIdentifier" /t REG_SZ /d PCAT_101KEY
	reg add HKLM\SYSTEM\CurrentControlSet\Services\i8042prt\Parameters /f /v "OverrideKeyboardSubtype" /t REG_DWORD /d 0
	reg add HKLM\SYSTEM\CurrentControlSet\Services\i8042prt\Parameters /f /v "OverrideKeyboardType" /t REG_DWORD /d 7
	shutdown /r /t 0
) else (
	echo Error: "%num%" �͒�`����Ă��܂���B
	echo �v���Z�X���I�����܂��B�ċN���͂���܂���B
	pause
)
@echo on
