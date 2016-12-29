ECHO building sqlite3 for Windows (%TARGET%)

mkdir dist-$TARGET
mkdir dist-$TARGET\lib
mkdir dist-$TARGET\include

cl sqlite3\sqlite3.c -link -dll -out:dist-$TARGET\lib\sqlite3.dll

cl -c sqlite3\sqlite3.c
lib sqlite3.obj -OUT:dist-$TARGET\lib\sqlite3.lib

copy sqlite3\sqlite3.h dist-$TARGET\include\
copy sqlite3\sqlite3ext.h dist-$TARGET\include\



