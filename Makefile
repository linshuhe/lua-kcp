LUADIR = /usr/local/src/lua-5.3.0/src
KCP_SRC=./kcp
SRC=./src

CFLAGS = -g3 -O2 -rdynamic -Wall -I$(LUADIR) 
SHARED = -fPIC --shared

lkcp.so: $(SRC)/lkcp.c  $(KCP_SRC)/ikcp.c
	gcc $(CFLAGS) $(SHARED) $^ -o $@
