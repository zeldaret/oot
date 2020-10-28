
build/src/libultra_code_O1/llcvt.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <__d_to_ll>:
   0:	46206109 	trunc.l.d	$f4,$f12
   4:	44222000 	dmfc1	v0,$f4
   8:	00000000 	nop
   c:	0002183c 	dsll32	v1,v0,0x0
  10:	0003183f 	dsra32	v1,v1,0x0
  14:	03e00008 	jr	ra
  18:	0002103f 	dsra32	v0,v0,0x0

0000001c <__f_to_ll>:
  1c:	46006109 	trunc.l.s	$f4,$f12
  20:	44222000 	dmfc1	v0,$f4
  24:	00000000 	nop
  28:	0002183c 	dsll32	v1,v0,0x0
  2c:	0003183f 	dsra32	v1,v1,0x0
  30:	03e00008 	jr	ra
  34:	0002103f 	dsra32	v0,v0,0x0

00000038 <__d_to_ull>:
  38:	444ef800 	cfc1	t6,$31
  3c:	24020001 	li	v0,1
  40:	44c2f800 	ctc1	v0,$31
  44:	00000000 	nop
  48:	46206125 	cvt.l.d	$f4,$f12
  4c:	4442f800 	cfc1	v0,$31
  50:	00000000 	nop
  54:	30410004 	andi	at,v0,0x4
  58:	30420078 	andi	v0,v0,0x78
  5c:	10400015 	beqz	v0,b4 <__d_to_ull+0x7c>
  60:	3c0143e0 	lui	at,0x43e0
  64:	44812800 	mtc1	at,$f5
  68:	44802000 	mtc1	zero,$f4
  6c:	24020001 	li	v0,1
  70:	46246101 	sub.d	$f4,$f12,$f4
  74:	44c2f800 	ctc1	v0,$31
  78:	00000000 	nop
  7c:	46202125 	cvt.l.d	$f4,$f4
  80:	4442f800 	cfc1	v0,$31
  84:	00000000 	nop
  88:	30410004 	andi	at,v0,0x4
  8c:	30420078 	andi	v0,v0,0x78
  90:	14400006 	bnez	v0,ac <__d_to_ull+0x74>
  94:	00000000 	nop
  98:	3c0f0000 	lui	t7,0x0
  9c:	ddef0000 	ld	t7,0(t7)
  a0:	44222000 	dmfc1	v0,$f4
  a4:	10000007 	b	c4 <__d_to_ull+0x8c>
  a8:	004f1025 	or	v0,v0,t7
  ac:	10000005 	b	c4 <__d_to_ull+0x8c>
  b0:	2402ffff 	li	v0,-1
  b4:	44222000 	dmfc1	v0,$f4
  b8:	00000000 	nop
  bc:	0440fffb 	bltz	v0,ac <__d_to_ull+0x74>
  c0:	00000000 	nop
  c4:	44cef800 	ctc1	t6,$31
  c8:	0002183c 	dsll32	v1,v0,0x0
  cc:	0003183f 	dsra32	v1,v1,0x0
  d0:	03e00008 	jr	ra
  d4:	0002103f 	dsra32	v0,v0,0x0

000000d8 <__f_to_ull>:
  d8:	444ef800 	cfc1	t6,$31
  dc:	24020001 	li	v0,1
  e0:	44c2f800 	ctc1	v0,$31
  e4:	00000000 	nop
  e8:	46006125 	cvt.l.s	$f4,$f12
  ec:	4442f800 	cfc1	v0,$31
  f0:	00000000 	nop
  f4:	30410004 	andi	at,v0,0x4
  f8:	30420078 	andi	v0,v0,0x78
  fc:	10400014 	beqz	v0,150 <__f_to_ull+0x78>
 100:	3c015f00 	lui	at,0x5f00
 104:	44812000 	mtc1	at,$f4
 108:	24020001 	li	v0,1
 10c:	46046101 	sub.s	$f4,$f12,$f4
 110:	44c2f800 	ctc1	v0,$31
 114:	00000000 	nop
 118:	46002125 	cvt.l.s	$f4,$f4
 11c:	4442f800 	cfc1	v0,$31
 120:	00000000 	nop
 124:	30410004 	andi	at,v0,0x4
 128:	30420078 	andi	v0,v0,0x78
 12c:	14400006 	bnez	v0,148 <__f_to_ull+0x70>
 130:	00000000 	nop
 134:	3c0f0000 	lui	t7,0x0
 138:	ddef0008 	ld	t7,8(t7)
 13c:	44222000 	dmfc1	v0,$f4
 140:	10000007 	b	160 <__f_to_ull+0x88>
 144:	004f1025 	or	v0,v0,t7
 148:	10000005 	b	160 <__f_to_ull+0x88>
 14c:	2402ffff 	li	v0,-1
 150:	44222000 	dmfc1	v0,$f4
 154:	00000000 	nop
 158:	0440fffb 	bltz	v0,148 <__f_to_ull+0x70>
 15c:	00000000 	nop
 160:	44cef800 	ctc1	t6,$31
 164:	0002183c 	dsll32	v1,v0,0x0
 168:	0003183f 	dsra32	v1,v1,0x0
 16c:	03e00008 	jr	ra
 170:	0002103f 	dsra32	v0,v0,0x0

00000174 <__ll_to_d>:
 174:	afa40000 	sw	a0,0(sp)
 178:	afa50004 	sw	a1,4(sp)
 17c:	dfae0000 	ld	t6,0(sp)
 180:	44ae2000 	dmtc1	t6,$f4
 184:	03e00008 	jr	ra
 188:	46a02021 	cvt.d.l	$f0,$f4

0000018c <__ll_to_f>:
 18c:	afa40000 	sw	a0,0(sp)
 190:	afa50004 	sw	a1,4(sp)
 194:	dfae0000 	ld	t6,0(sp)
 198:	44ae2000 	dmtc1	t6,$f4
 19c:	03e00008 	jr	ra
 1a0:	46a02020 	cvt.s.l	$f0,$f4

000001a4 <__ull_to_d>:
 1a4:	afa40000 	sw	a0,0(sp)
 1a8:	afa50004 	sw	a1,4(sp)
 1ac:	dfae0000 	ld	t6,0(sp)
 1b0:	44ae2000 	dmtc1	t6,$f4
 1b4:	05c10006 	bgez	t6,1d0 <__ull_to_d+0x2c>
 1b8:	46a02021 	cvt.d.l	$f0,$f4
 1bc:	3c0141f0 	lui	at,0x41f0
 1c0:	44813800 	mtc1	at,$f7
 1c4:	44803000 	mtc1	zero,$f6
 1c8:	00000000 	nop
 1cc:	46260000 	add.d	$f0,$f0,$f6
 1d0:	03e00008 	jr	ra
 1d4:	00000000 	nop

000001d8 <__ull_to_f>:
 1d8:	afa40000 	sw	a0,0(sp)
 1dc:	afa50004 	sw	a1,4(sp)
 1e0:	dfae0000 	ld	t6,0(sp)
 1e4:	44ae2000 	dmtc1	t6,$f4
 1e8:	05c10005 	bgez	t6,200 <__ull_to_f+0x28>
 1ec:	46a02020 	cvt.s.l	$f0,$f4
 1f0:	3c014f80 	lui	at,0x4f80
 1f4:	44813000 	mtc1	at,$f6
 1f8:	00000000 	nop
 1fc:	46060000 	add.s	$f0,$f0,$f6
 200:	03e00008 	jr	ra
 204:	00000000 	nop
	...
