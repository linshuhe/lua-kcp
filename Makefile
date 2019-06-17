#LUADIR = /usr/local/src/lua-5.3.0/src 或者 /usr/local/include
KCP_SRC=./kcp
SRC=./src
#只要本地已经安装了lua ，则无需通过 -I 引入 Lua 相关的头文件，因为编译器会自动从 /usr/local/include 目录去找，引入 ./kcp 目录是为了让 src/lkcp.c 能找到 ikcp.h
CFLAGS = -g3 -O2 -rdynamic -Wall -I$(KCP_SRC) 
SHARED = -fPIC --shared

lkcp.so: $(SRC)/lkcp.c  $(KCP_SRC)/ikcp.c
	gcc $(CFLAGS) $(SHARED) $^ -o $@