@echo off
echo 6��ͼת��2:1ȫ��ͼ����
echo.

SET /A COUNT=0
FOR %%V in (%*) DO SET /A COUNT=COUNT+1

IF NOT %COUNT% == 6 GOTO ERROR
IF "%~1" == "" GOTO ERROR
IF "%~2" == "" GOTO ERROR
IF "%~3" == "" GOTO ERROR
IF "%~4" == "" GOTO ERROR
IF "%~5" == "" GOTO ERROR
IF "%~6" == "" GOTO ERROR
IF NOT EXIST "%~1" GOTO ERROR
IF NOT EXIST "%~2" GOTO ERROR
IF NOT EXIST "%~3" GOTO ERROR
IF NOT EXIST "%~4" GOTO ERROR
IF NOT EXIST "%~5" GOTO ERROR
IF NOT EXIST "%~6" GOTO ERROR

"%~dp0\kcube2sphere" -config=convertdroplets.config "%~1" "%~2" "%~3" "%~4" "%~5" "%~6"
GOTO DONE

:ERROR
echo.
echo ʹ��˵��:
echo   ��Ҫ˫���򿪣���ʹ��ͼƬ�Ϸš�
echo.
echo �뽫ͼƬ������ "_l", "_f"�ȵ�ͼƬͬʱ�Ϸŵ���ͼ�� 
echo �Ϳ��Ի�ԭ2:1��ȫ��ͼ��
echo.
echo.  ����ר��
echo.  QQ��10543884

:DONE
echo.
pause
