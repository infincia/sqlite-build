ECHO building sqlite3 for Windows (%TARGET%)

mkdir dist-%TARGET%
mkdir dist-%TARGET%\lib
mkdir dist-%TARGET%\lib\MT
mkdir dist-%TARGET%\lib\MD
mkdir dist-%TARGET%\include

cl /c /Gy /MT sqlite3\sqlite3.c
lib /out:dist-%TARGET%\lib\MT\sqlite3.lib sqlite3.obj

cl /c /Gy /MD sqlite3\sqlite3.c
lib /out:dist-%TARGET%\lib\MD\sqlite3.lib sqlite3.obj

cl sqlite3\sqlite3.c -DSQLITE_API=__declspec(dllexport) -link -dll -out:dist-%TARGET%\lib\sqlite3.dll

copy sqlite3\sqlite3.h dist-%TARGET%\include\
copy sqlite3\sqlite3ext.h dist-%TARGET%\include\



