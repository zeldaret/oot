
build/src/libultra_code_O2/osAiSetFrequency.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <osAiSetFrequency>:
   0:	3c050000 	lui	a1,0x0
   4:	24a50000 	addiu	a1,a1,0
   8:	8cae0000 	lw	t6,0(a1)
   c:	44844000 	mtc1	a0,$f8
  10:	3c014f80 	lui	at,0x4f80
  14:	448e2000 	mtc1	t6,$f4
  18:	468042a0 	cvt.s.w	$f10,$f8
  1c:	04810004 	bgez	a0,30 <osAiSetFrequency+0x30>
  20:	468021a0 	cvt.s.w	$f6,$f4
  24:	44818000 	mtc1	at,$f16
  28:	00000000 	nop
  2c:	46105280 	add.s	$f10,$f10,$f16
  30:	460a3483 	div.s	$f18,$f6,$f10
  34:	3c013f00 	lui	at,0x3f00
  38:	44812000 	mtc1	at,$f4
  3c:	24030001 	li	v1,1
  40:	3c014f00 	lui	at,0x4f00
  44:	3c08a450 	lui	t0,0xa450
  48:	3c0aa450 	lui	t2,0xa450
  4c:	46049000 	add.s	$f0,$f18,$f4
  50:	444ff800 	cfc1	t7,$31
  54:	44c3f800 	ctc1	v1,$31
  58:	00000000 	nop
  5c:	46000224 	cvt.w.s	$f8,$f0
  60:	4443f800 	cfc1	v1,$31
  64:	00000000 	nop
  68:	30630078 	andi	v1,v1,0x78
  6c:	50600013 	beqzl	v1,bc <osAiSetFrequency+0xbc>
  70:	44034000 	mfc1	v1,$f8
  74:	44814000 	mtc1	at,$f8
  78:	24030001 	li	v1,1
  7c:	46080201 	sub.s	$f8,$f0,$f8
  80:	44c3f800 	ctc1	v1,$31
  84:	00000000 	nop
  88:	46004224 	cvt.w.s	$f8,$f8
  8c:	4443f800 	cfc1	v1,$31
  90:	00000000 	nop
  94:	30630078 	andi	v1,v1,0x78
  98:	14600005 	bnez	v1,b0 <osAiSetFrequency+0xb0>
  9c:	00000000 	nop
  a0:	44034000 	mfc1	v1,$f8
  a4:	3c018000 	lui	at,0x8000
  a8:	10000007 	b	c8 <osAiSetFrequency+0xc8>
  ac:	00611825 	or	v1,v1,at
  b0:	10000005 	b	c8 <osAiSetFrequency+0xc8>
  b4:	2403ffff 	li	v1,-1
  b8:	44034000 	mfc1	v1,$f8
  bc:	00000000 	nop
  c0:	0460fffb 	bltz	v1,b0 <osAiSetFrequency+0xb0>
  c4:	00000000 	nop
  c8:	44cff800 	ctc1	t7,$31
  cc:	2c610084 	sltiu	at,v1,132
  d0:	10200003 	beqz	at,e0 <osAiSetFrequency+0xe0>
  d4:	2479ffff 	addiu	t9,v1,-1
  d8:	03e00008 	jr	ra
  dc:	2402ffff 	li	v0,-1
  e0:	24010042 	li	at,66
  e4:	0061001b 	divu	zero,v1,at
  e8:	00001012 	mflo	v0
  ec:	305800ff 	andi	t8,v0,0xff
  f0:	2b010011 	slti	at,t8,17
  f4:	14200002 	bnez	at,100 <osAiSetFrequency+0x100>
  f8:	304400ff 	andi	a0,v0,0xff
  fc:	24040010 	li	a0,16
 100:	ad190010 	sw	t9,16(t0)
 104:	2489ffff 	addiu	t1,a0,-1
 108:	ad490014 	sw	t1,20(t2)
 10c:	8cab0000 	lw	t3,0(a1)
 110:	0163001a 	div	zero,t3,v1
 114:	00001012 	mflo	v0
 118:	14600002 	bnez	v1,124 <osAiSetFrequency+0x124>
 11c:	00000000 	nop
 120:	0007000d 	break	0x7
 124:	2401ffff 	li	at,-1
 128:	14610004 	bne	v1,at,13c <osAiSetFrequency+0x13c>
 12c:	3c018000 	lui	at,0x8000
 130:	15610002 	bne	t3,at,13c <osAiSetFrequency+0x13c>
 134:	00000000 	nop
 138:	0006000d 	break	0x6
 13c:	03e00008 	jr	ra
 140:	00000000 	nop
	...
