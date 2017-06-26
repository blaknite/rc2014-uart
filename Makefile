all: rc2014_uart

rc2014_uart:
	zcc +embedded -vn -O3 -m -startup=0 -clib=new -o rc2014_uart -x rc2014_uart.c rc2014_uart.asm

.PHONY clean:
	rm -f *.bin *.lst *.obj *.lib *.lis
