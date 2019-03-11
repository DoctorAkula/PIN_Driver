
.org 0x0000
rjmp main
 


main:
ldi r16, low(RAMEND)
out SPL, r16
ldi r16, high(RAMEND)
out SPH, r16
 
ldi r23, 0xFF
out PortB, r23
ldi r23, 0x00

ldi r16, 0xFF
out DDRB, r16
loop:
dec r23
rcall delay_05
out PortB,r23
rcall delay_05
rjmp loop

delay_05:
ldi r16, 8
outer_loop:
 
ldi r24, low(3037)
ldi r25, high(3037)
delay_loop:
adiw r24, 1
brne delay_loop
 
dec r16
brne outer_loop
ret