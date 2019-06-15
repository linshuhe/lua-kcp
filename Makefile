.PHONY: all

TOP=$(PWD)
LUADIR = /usr/local/src/lua-5.3.0/src
KCP_SRC=$(TOP)/kcp
SRC=$(TOP)/src

CFLAGS = -g3 -O2 -rdynamic -Wall -I$(LUADIR) 
SHARED = -fPIC --shared

all: lkcp.so

lkcp.so: $(SRC)/lkcp.c  $(KCP_SRC)/ikcp.c $(KCP_SRC)/ikcp.h
	gcc $(CFLAGS) $(SHARED) $^ -o $@
