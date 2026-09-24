@echo on

call build.bat
if %ERRORLEVEL% neq 0 exit 1

:: install
mkdir -p %LIBRARY_BIN%
copy trec_eval.exe "%LIBRARY_BIN%\trec_eval.exe"
if %ERRORLEVEL% neq 0 exit 1
