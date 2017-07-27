all : serialize

linux : serialize.so

serialize.so : serialize.c
	gcc -Wall -g -o $@ -fPIC --shared $^ -I../skynet/3rd/lua

serialize : serialize.c
	gcc -Wall -g -o $@.dll --shared $^ -I../skynet/3rd/lua -L/usr/local/bin -llua53 