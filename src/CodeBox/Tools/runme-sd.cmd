
:: ----------------------------------------
:: Turn echo off unless verbose is defined.
:: ----------------------------------------
@echo off
if defined Verbose echo on

@echo Preparing the CodeBox environment
@echo.
@echo Using Source Depot for source control.
@echo CodeBox project is %CODEBOXPROJECT%
@echo.

@echo Adding "%inetroot%\CodeBox\tools" to path.
set path=%path%;%inetroot%\CodeBox\tools

@echo Updating local tools from server
call CopyFilesFromShare.cmd

if exist "%inetroot%\CodeBox\override\Tools\runme.cmd" (
  @echo Calling "%inetroot%\CodeBox\override\Tools\runme.cmd"
  "%inetroot%\CodeBox\override\Tools\runme.cmd"
  goto :End
)

:End
@echo.

