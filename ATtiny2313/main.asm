; Tandberg TD20A Reel to Reel Tape Recorder PROM (U3) drop-in replacement.
; Written by BWACK 2020
; ROM dumps by Knut Baardsen. RIP. You will always be missed.
;
; Cut pin15 for 15 IPS, ground pin15 for 7.5 IPS

.nolist
.include "tn2313def.inc"
.list

; inputs
.equ A0		= PA2
.equ A1		= PD0
.equ A2		= PD1
.equ A3		= PA1
.equ A4		= PA0
.equ A5		= PB5
.equ A6		= PB6
.equ A7		= PB7

; outputs
.equ Q0		= PD2
.equ Q1		= PD3
.equ Q2		= PD4
.equ Q3		= PD5
.equ Q4		= PD6
.equ Q5		= PB0
.equ Q6		= PB1
.equ Q7		= PB2

.equ G1_N	= PB3
.equ G2_N	= PB4

.def tmp	= r16
.def tmp2	= r17
.def offset	= r18
.def output     = r19
.def input      = r20

.dseg
.org	SRAM_START
sample:
.byte	2

.cseg
.org	0x0000		; reset vector
	rjmp setup
.org	WDTaddr		; Watchdog time-out vector
; 	rjmp WDT_isr

.org 0x0013

prom_data_7_5_ips:
.include "prom_data_td20_7.5ips.inc"

prom_data_15_ips:
.include "prom_data_td20_15ips.inc"

setup:
 	ldi	tmp, low(RAMEND)	; init stack pointer
 	out	SPL, tmp
 	; ldi	tmp, high(RAMEND)
 	; out	SPH, tmp

	; inputs
	cbi	DDRA, PA2
	cbi	DDRD, PD0
	cbi	DDRD, PD1
	cbi	DDRA, PA1
	cbi	DDRA, PA0
	cbi	DDRB, PB5
	cbi	DDRB, PB6
	cbi	DDRB, PB7
	cbi	DDRB, G1_N
	cbi	DDRB, G2_N
	sbi	PORTB, G1_N ; pull_up
	sbi	PORTB, G2_N ; pull_up

	; outputs;
	sbi	DDRD, PD2
	sbi	DDRD, PD3
	sbi	DDRD, PD4
	sbi	DDRD, PD5
	sbi	DDRD, PD6
	sbi	DDRB, PB0
	sbi	DDRB, PB1
	sbi	DDRB, PB2


loop:
	; read inputs

	; A4   : PA0
	; A3   : PA1
	; A0   : PA2
	; A1-A2: PD0-PD1
	; A5-A7: PB5-PB7

	clr	input
	in	tmp, PINA
	sbrc	tmp, 0
	ori	input, 0b00010000
	sbrc	tmp, 1
	ori	input, 0b00001000
	sbrc	tmp, 2
	ori	input, 0b00000001

	in	tmp, PINB
	bst	tmp, G1_N
	andi	tmp, 0b11100000
	or	input, tmp

	in	tmp, PIND
	rol	tmp
	andi	tmp, 0b00000110
	or	input, tmp

	; code memory lookup

	brts	td20_prom_15_ips_lookup ; G1_N clear -> 15 IPS
td20_prom_7_5_ips_lookup:
	ldi	ZL, LOW(prom_data_7_5_ips*2)
 	ldi	ZH, HIGH(prom_data_7_5_ips*2)
	rjmp	add_table_offset
td20_prom_15_ips_lookup:
	ldi	ZL, LOW(prom_data_15_ips*2)
 	ldi	ZH, HIGH(prom_data_15_ips*2)
add_table_offset:
 	clr	tmp
 	clc
 	add	ZL, input	; table offset
 	adc	ZH, tmp
 	lpm	output, Z	; lookup

	; set outputs

	; Q0-Q4 = PD2..PD6
	; Q5-Q7 = PB0..PB2

	mov	tmp, output
	andi	tmp, 0x1f
	lsl	tmp	
	lsl	tmp	
	out	PORTD, tmp

	mov	tmp, output
	andi	tmp, 0xe0
	lsr	tmp
	swap	tmp
	out	PORTB, tmp

	rjmp loop;
