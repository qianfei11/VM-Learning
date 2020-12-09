PROGRAMS=test.o test.bin light-qemu glib-test
all: $(PROGRAMS)

light-qemu: test.bin
	gcc qemu.c -o light-qemu
test.bin: test.o
	objcopy -O binary test.o test.bin
test.o:
	as -32 test.S -o test.o

glib-test:
	gcc glib-test.c -o glib-test `pkg-config --cflags glib-2.0` `pkg-config --libs glib-2.0`

clean:
	rm -rf $(PROGRAMS)
