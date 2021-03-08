PROGRAMS=vmi-copy-in
CFLAGS+=`pkg-config --libs --cflags libguestfs`
all: $(PROGRAMS)
vmi-copy-in: vmi-copy-in.c
clean:
	rm -rf $(PROGRAMS)