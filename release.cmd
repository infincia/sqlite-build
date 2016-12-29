ECHO building sqlite3 for Windows (%TARGET%)

mkdir dist-$TARGET
mkdir dist-$TARGET\lib\MT
mkdir dist-$TARGET\lib\MD
mkdir dist-$TARGET\include

cl /c /EHsc /MT sqlite3\sqlite3.c
lib sqlite3.obj /MACHINE:%ARCH% /OUT:dist-$TARGET\lib\MT\sqlite3.lib

cl /c /EHsc /MD sqlite3\sqlite3.c
lib sqlite3.obj /MACHINE:%ARCH% /OUT:dist-$TARGET\lib\MD\sqlite3.lib

copy sqlite3\sqlite3.h dist-$TARGET\include\
copy sqlite3\sqlite3ext.h dist-$TARGET\include\



