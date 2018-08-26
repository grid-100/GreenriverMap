SET CURL_PATH=D:\GRM\bin\curl\curl.exe
SET YYYYMMDD=20171128

SET JAVAPATH=D:/GRM/java/jre-8u92-windows-x64/jre1.8.0_92/bin/java.exe
SET LIB_DIR=D:/GRM/bin/grib2json-0.8.0-SNAPSHOT/lib
SET LAUNCH_JAR=%LIB_DIR%/grib2json-0.8.0-SNAPSHOT.jar

REM %CURL_PATH% "http://nomads.ncep.noaa.gov/cgi-bin/filter_gfs.pl?file=gfs.t00z.pgrb2.1p00.f000&lev_10_m_above_ground=on&var_UGRD=on&var_VGRD=on&dir=%2Fgfs.${20170507}00" -o gfs.t00z.pgrb2.1p00.f000

REM %CURL_PATH% "http://nomads.ncep.noaa.gov/cgi-bin/filter_gfs_1p00.pl?file=gfs.t00z.pgrb2.1p00.f000&lev_200_mb=on&var_UGRD=on&var_VGRD=on&dir=%2Fgfs.2017112900" -o gfs.t00z.pgrb2.1p00.f000

call %CURL_PATH% "http://nomads.ncep.noaa.gov/cgi-bin/filter_gfs_1p00.pl?file=gfs.t00z.pgrb2.1p00.f000&lev_10_m_above_ground=on&var_UGRD=on&var_VGRD=on&dir=%2Fgfs.2017112900" -o gfs.t00z.pgrb2.1p00.f000

REM call %JAVAPATH% -Xmx512M -jar %LAUNCH_JAR% --data --fp "wind" --compact --output %TARGETFILENAME%.json %TARGETFILENAME%.grib2
REM call %JAVAPATH% -Xmx512M -jar %LAUNCH_JAR% -d -n -o current-wind-surface-level-gfs-1.0.json gfs.t00z.pgrb2.1p00.f000

pause