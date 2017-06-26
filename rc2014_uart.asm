;--------------------------------------------------------------------
; RC2014 UART Routines
;
; Code by Grant Colegate 2017
;
; See http://rc2014.co.uk for info on the RC2014 homebrew computer.
;--------------------------------------------------------------------

MODULE rc2014_uart

SECTION code_user


; Check the UART RX buffer.
; Returns the status in L.
public rc2014_rx_ready
rc2014_rx_ready:
            ld h, 0
            ld l, 0
            rst $18
            ret z
            ld l, 1
            ret


; Read a character from the UART.
; Returns the received character in L.
public rc2014_rx
rc2014_rx:
            rst $10
            ld h, 0
            ld l, a
            ret


; Transmit a character to the UART.
; Transmits the character in L.
public rc2014_tx
rc2014_tx:
            ld a, l
            rst $08
            ret


; Print a null terminated string over UART.
public rc2014_print
rc2014_print:
            ld a, (hl)
            cp 0
            ret z
            rst $08
            inc hl
            jr rc2014_print
