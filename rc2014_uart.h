#ifndef _RC2014_UART_H_
#define _RC2014_UART_H_

extern unsigned char __LIB__ rc2014_rx_ready(void);
extern unsigned char __LIB__ rc2014_rx(void);
extern void __FASTCALL__ __LIB__ rc2014_tx(unsigned char c);
extern void __FASTCALL__ __LIB__ rc2014_print(unsigned char *str);

#endif
