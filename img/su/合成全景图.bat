@echo off
echo 6面图转换2:1全景图工具
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
echo 使用说明:
echo   不要双击打开，请使用图片拖放。
echo.
echo 请将图片名带有 "_l", "_f"等的图片同时拖放到此图标 
echo 就可以还原2:1的全景图。
echo.
echo.  阿福专用
echo.  QQ：10543884

:DONE
echo.
pause
