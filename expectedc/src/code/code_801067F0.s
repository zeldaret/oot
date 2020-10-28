
build/src/code/code_801067F0.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <func_801067F0>:
   0:	27bdfff8 	addiu	sp,sp,-8
   4:	44802000 	mtc1	zero,$f4
   8:	00000000 	nop
   c:	46047032 	c.eq.s	$f14,$f4
  10:	00000000 	nop
  14:	45000004 	bc1f	28 <func_801067F0+0x28>
  18:	00000000 	nop
  1c:	44800000 	mtc1	zero,$f0
  20:	1000000f 	b	60 <func_801067F0+0x60>
  24:	00000000 	nop
  28:	460e6183 	div.s	$f6,$f12,$f14
  2c:	4600320d 	trunc.w.s	$f8,$f6
  30:	440f4000 	mfc1	t7,$f8
  34:	00000000 	nop
  38:	afaf0004 	sw	t7,4(sp)
  3c:	8fb80004 	lw	t8,4(sp)
  40:	44985000 	mtc1	t8,$f10
  44:	00000000 	nop
  48:	46805420 	cvt.s.w	$f16,$f10
  4c:	460e8482 	mul.s	$f18,$f16,$f14
  50:	10000003 	b	60 <func_801067F0+0x60>
  54:	46126001 	sub.s	$f0,$f12,$f18
  58:	10000001 	b	60 <func_801067F0+0x60>
  5c:	00000000 	nop
  60:	03e00008 	jr	ra
  64:	27bd0008 	addiu	sp,sp,8
	...
