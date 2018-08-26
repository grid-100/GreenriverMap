@ECHO OFF
REM LIB_DIR=$(dirname "$0")/../lib
REM LAUNCH_JAR=$LIB_DIR/grib2json-*.jar
REM $JAVA_HOME/bin/java -Xmx512M -jar $LAUNCH_JAR $@
SET JAVAPATH=D:/GRM/java/jre-8u92-windows-x64/jre1.8.0_92/bin/java.exe
SET LIB_DIR=D:/GRM/bin/grib2json-0.8.0-SNAPSHOT/lib
SET LAUNCH_JAR=%LIB_DIR%/grib2json-0.8.0-SNAPSHOT.jar
SET TARGETFILENAME=%cd%/gfs.t18z.pgrbf00

call %JAVAPATH% -Xmx512M -jar %LAUNCH_JAR% --help 
PAUSE
REM call %JAVAPATH% -Xmx512M -jar %LAUNCH_JAR% --data --fp "wind" --fs 103 --fv 10.0 --compact --output %TARGETFILENAME%.json %TARGETFILENAME%.grib2 
REM PAUSE