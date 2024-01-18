# build compression functions (slow)
~/c/mxe/usr/bin/i686-w64-mingw32.static-gcc -DNDEBUG -s -Ofast -flto -lm -c -Wall src/enc/*.c src/enc/lzo/*.c src/enc/ucl/comp/*.c src/enc/apultra/*.c
mkdir -p o
mv *.o o

# build everything else
~/c/mxe/usr/bin/i686-w64-mingw32.static-gcc -o z64compress.exe -DNDEBUG src/*.c o/*.o -Wall -Wextra -s -Os -flto -lpthread -mconsole -municode

# move to bin directory
mkdir -p bin/win32
mv z64compress.exe bin/win32

