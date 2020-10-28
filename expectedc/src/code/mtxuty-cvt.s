
build/src/code/mtxuty-cvt.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <MtxConv_F2L>:
   0:	27bdffe8 	addiu	sp,sp,-24
   4:	afa40018 	sw	a0,24(sp)
   8:	afbf0014 	sw	ra,20(sp)
   c:	afa5001c 	sw	a1,28(sp)
  10:	3c040000 	lui	a0,0x0
  14:	3c060000 	lui	a2,0x0
  18:	24c60004 	addiu	a2,a2,4
  1c:	24840000 	addiu	a0,a0,0
  20:	8fa50018 	lw	a1,24(sp)
  24:	0c000000 	jal	0 <MtxConv_F2L>
  28:	2407001f 	li	a3,31
  2c:	3c040000 	lui	a0,0x0
  30:	3c060000 	lui	a2,0x0
  34:	24c60018 	addiu	a2,a2,24
  38:	24840014 	addiu	a0,a0,20
  3c:	8fa5001c 	lw	a1,28(sp)
  40:	0c000000 	jal	0 <MtxConv_F2L>
  44:	24070020 	li	a3,32
  48:	3c014780 	lui	at,0x4780
  4c:	44810000 	mtc1	at,$f0
  50:	00002825 	move	a1,zero
  54:	8fa4001c 	lw	a0,28(sp)
  58:	8fa30018 	lw	v1,24(sp)
  5c:	24060004 	li	a2,4
  60:	c4900000 	lwc1	$f16,0(a0)
  64:	24a50001 	addiu	a1,a1,1
  68:	46008482 	mul.s	$f18,$f16,$f0
  6c:	50a60027 	beql	a1,a2,10c <MtxConv_F2L+0x10c>
  70:	4600940d 	trunc.w.s	$f16,$f18
  74:	4600940d 	trunc.w.s	$f16,$f18
  78:	24840010 	addiu	a0,a0,16
  7c:	24a50001 	addiu	a1,a1,1
  80:	24630008 	addiu	v1,v1,8
  84:	44028000 	mfc1	v0,$f16
  88:	00000000 	nop
  8c:	00027c03 	sra	t7,v0,0x10
  90:	a46ffff8 	sh	t7,-8(v1)
  94:	a4620018 	sh	v0,24(v1)
  98:	c490fff4 	lwc1	$f16,-12(a0)
  9c:	46008402 	mul.s	$f16,$f16,$f0
  a0:	4600840d 	trunc.w.s	$f16,$f16
  a4:	44028000 	mfc1	v0,$f16
  a8:	00000000 	nop
  ac:	0002cc03 	sra	t9,v0,0x10
  b0:	a479fffa 	sh	t9,-6(v1)
  b4:	a462001a 	sh	v0,26(v1)
  b8:	c490fff8 	lwc1	$f16,-8(a0)
  bc:	46008402 	mul.s	$f16,$f16,$f0
  c0:	4600840d 	trunc.w.s	$f16,$f16
  c4:	44028000 	mfc1	v0,$f16
  c8:	00000000 	nop
  cc:	00024c03 	sra	t1,v0,0x10
  d0:	a469fffc 	sh	t1,-4(v1)
  d4:	a462001c 	sh	v0,28(v1)
  d8:	c490fffc 	lwc1	$f16,-4(a0)
  dc:	46008402 	mul.s	$f16,$f16,$f0
  e0:	4600840d 	trunc.w.s	$f16,$f16
  e4:	44028000 	mfc1	v0,$f16
  e8:	00000000 	nop
  ec:	00025c03 	sra	t3,v0,0x10
  f0:	a46bfffe 	sh	t3,-2(v1)
  f4:	a462001e 	sh	v0,30(v1)
  f8:	c4900000 	lwc1	$f16,0(a0)
  fc:	46008482 	mul.s	$f18,$f16,$f0
 100:	54a6ffdd 	bnel	a1,a2,78 <MtxConv_F2L+0x78>
 104:	4600940d 	trunc.w.s	$f16,$f18
 108:	4600940d 	trunc.w.s	$f16,$f18
 10c:	24840010 	addiu	a0,a0,16
 110:	24630008 	addiu	v1,v1,8
 114:	44028000 	mfc1	v0,$f16
 118:	00000000 	nop
 11c:	00027c03 	sra	t7,v0,0x10
 120:	a46ffff8 	sh	t7,-8(v1)
 124:	a4620018 	sh	v0,24(v1)
 128:	c490fff4 	lwc1	$f16,-12(a0)
 12c:	46008402 	mul.s	$f16,$f16,$f0
 130:	4600840d 	trunc.w.s	$f16,$f16
 134:	44028000 	mfc1	v0,$f16
 138:	00000000 	nop
 13c:	0002cc03 	sra	t9,v0,0x10
 140:	a479fffa 	sh	t9,-6(v1)
 144:	a462001a 	sh	v0,26(v1)
 148:	c490fff8 	lwc1	$f16,-8(a0)
 14c:	46008402 	mul.s	$f16,$f16,$f0
 150:	4600840d 	trunc.w.s	$f16,$f16
 154:	44028000 	mfc1	v0,$f16
 158:	00000000 	nop
 15c:	00024c03 	sra	t1,v0,0x10
 160:	a469fffc 	sh	t1,-4(v1)
 164:	a462001c 	sh	v0,28(v1)
 168:	c490fffc 	lwc1	$f16,-4(a0)
 16c:	46008402 	mul.s	$f16,$f16,$f0
 170:	4600840d 	trunc.w.s	$f16,$f16
 174:	44028000 	mfc1	v0,$f16
 178:	00000000 	nop
 17c:	00025c03 	sra	t3,v0,0x10
 180:	a46bfffe 	sh	t3,-2(v1)
 184:	a462001e 	sh	v0,30(v1)
 188:	8fbf0014 	lw	ra,20(sp)
 18c:	27bd0018 	addiu	sp,sp,24
 190:	03e00008 	jr	ra
 194:	00000000 	nop

00000198 <MtxConv_L2F>:
 198:	27bdffe8 	addiu	sp,sp,-24
 19c:	afa40018 	sw	a0,24(sp)
 1a0:	afbf0014 	sw	ra,20(sp)
 1a4:	afa5001c 	sw	a1,28(sp)
 1a8:	3c040000 	lui	a0,0x0
 1ac:	3c060000 	lui	a2,0x0
 1b0:	24c6002c 	addiu	a2,a2,44
 1b4:	24840028 	addiu	a0,a0,40
 1b8:	8fa50018 	lw	a1,24(sp)
 1bc:	0c000000 	jal	0 <MtxConv_F2L>
 1c0:	24070037 	li	a3,55
 1c4:	3c040000 	lui	a0,0x0
 1c8:	3c060000 	lui	a2,0x0
 1cc:	24c60040 	addiu	a2,a2,64
 1d0:	2484003c 	addiu	a0,a0,60
 1d4:	8fa5001c 	lw	a1,28(sp)
 1d8:	0c000000 	jal	0 <MtxConv_F2L>
 1dc:	24070038 	li	a3,56
 1e0:	8fa40018 	lw	a0,24(sp)
 1e4:	0c000000 	jal	0 <MtxConv_F2L>
 1e8:	8fa5001c 	lw	a1,28(sp)
 1ec:	8fbf0014 	lw	ra,20(sp)
 1f0:	27bd0018 	addiu	sp,sp,24
 1f4:	03e00008 	jr	ra
 1f8:	00000000 	nop
 1fc:	00000000 	nop
