@ECHO OFF
SETLOCAL

SET DIRNAME=%~dp0
IF "%DIRNAME%" == "" SET DIRNAME=.
SET APP_BASE_NAME=%~n0
SET APP_HOME=%DIRNAME%

SET CLASSPATH=%APP_HOME%\gradle\wrapper\gradle-wrapper.jar

IF NOT DEFINED JAVA_HOME GOTO findJavaFromPath

SET JAVA_EXE=%JAVA_HOME%\bin\java.exe
IF EXIST "%JAVA_EXE%" GOTO execute

ECHO ERROR: JAVA_HOME is set to an invalid directory: %JAVA_HOME%
EXIT /B 1

:findJavaFromPath
SET JAVA_EXE=java.exe

:execute
"%JAVA_EXE%" %DEFAULT_JVM_OPTS% %JAVA_OPTS% %GRADLE_OPTS% -classpath "%CLASSPATH%" org.gradle.wrapper.GradleWrapperMain %*
ENDLOCAL
