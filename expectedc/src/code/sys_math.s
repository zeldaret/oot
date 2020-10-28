
build/src/code/sys_math.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <func_800CA540>:
   0:	4600610d 	trunc.w.s	$f4,$f12
   4:	3c013f80 	lui	at,0x3f80
   8:	44811000 	mtc1	at,$f2
   c:	44032000 	mfc1	v1,$f4
  10:	00000000 	nop
  14:	28610002 	slti	at,v1,2
  18:	14200036 	bnez	at,f4 <func_800CA540+0xf4>
  1c:	00601025 	move	v0,v1
  20:	2465ffff 	addiu	a1,v1,-1
  24:	30a50003 	andi	a1,a1,0x3
  28:	00052823 	negu	a1,a1
  2c:	10a00009 	beqz	a1,54 <func_800CA540+0x54>
  30:	00a32021 	addu	a0,a1,v1
  34:	44823000 	mtc1	v0,$f6
  38:	2442ffff 	addiu	v0,v0,-1
  3c:	46803220 	cvt.s.w	$f8,$f6
  40:	46081082 	mul.s	$f2,$f2,$f8
  44:	5482fffc 	bnel	a0,v0,38 <func_800CA540+0x38>
  48:	44823000 	mtc1	v0,$f6
  4c:	24030001 	li	v1,1
  50:	10430028 	beq	v0,v1,f4 <func_800CA540+0xf4>
  54:	24030001 	li	v1,1
  58:	44825000 	mtc1	v0,$f10
  5c:	24630004 	addiu	v1,v1,4
  60:	10430013 	beq	v0,v1,b0 <func_800CA540+0xb0>
  64:	468054a0 	cvt.s.w	$f18,$f10
  68:	46121082 	mul.s	$f2,$f2,$f18
  6c:	244fffff 	addiu	t7,v0,-1
  70:	448f8000 	mtc1	t7,$f16
  74:	2458fffe 	addiu	t8,v0,-2
  78:	44987000 	mtc1	t8,$f14
  7c:	2459fffd 	addiu	t9,v0,-3
  80:	46808420 	cvt.s.w	$f16,$f16
  84:	44996000 	mtc1	t9,$f12
  88:	2442fffc 	addiu	v0,v0,-4
  8c:	44825000 	mtc1	v0,$f10
  90:	468073a0 	cvt.s.w	$f14,$f14
  94:	46101082 	mul.s	$f2,$f2,$f16
  98:	46806320 	cvt.s.w	$f12,$f12
  9c:	460e1082 	mul.s	$f2,$f2,$f14
  a0:	468054a0 	cvt.s.w	$f18,$f10
  a4:	460c1082 	mul.s	$f2,$f2,$f12
  a8:	1443ffef 	bne	v0,v1,68 <func_800CA540+0x68>
  ac:	00000000 	nop
  b0:	244fffff 	addiu	t7,v0,-1
  b4:	448f8000 	mtc1	t7,$f16
  b8:	46121082 	mul.s	$f2,$f2,$f18
  bc:	2458fffe 	addiu	t8,v0,-2
  c0:	44987000 	mtc1	t8,$f14
  c4:	2459fffd 	addiu	t9,v0,-3
  c8:	44996000 	mtc1	t9,$f12
  cc:	2463fffc 	addiu	v1,v1,-4
  d0:	46808420 	cvt.s.w	$f16,$f16
  d4:	2442fffc 	addiu	v0,v0,-4
  d8:	468073a0 	cvt.s.w	$f14,$f14
  dc:	46101082 	mul.s	$f2,$f2,$f16
  e0:	46806320 	cvt.s.w	$f12,$f12
  e4:	460e1082 	mul.s	$f2,$f2,$f14
  e8:	00000000 	nop
  ec:	460c1082 	mul.s	$f2,$f2,$f12
  f0:	00000000 	nop
  f4:	03e00008 	jr	ra
  f8:	46001006 	mov.s	$f0,$f2

000000fc <func_800CA63C>:
  fc:	2c81000d 	sltiu	at,a0,13
 100:	14200029 	bnez	at,1a8 <func_800CA63C+0xac>
 104:	00044880 	sll	t1,a0,0x2
 108:	3c010000 	lui	at,0x0
 10c:	c4220030 	lwc1	$f2,48(at)
 110:	2881000d 	slti	at,a0,13
 114:	14200027 	bnez	at,1b4 <func_800CA63C+0xb8>
 118:	2402000d 	li	v0,13
 11c:	2485fff4 	addiu	a1,a0,-12
 120:	30a50003 	andi	a1,a1,0x3
 124:	10a0000a 	beqz	a1,150 <func_800CA63C+0x54>
 128:	24a3000d 	addiu	v1,a1,13
 12c:	44822000 	mtc1	v0,$f4
 130:	24420001 	addiu	v0,v0,1
 134:	468021a0 	cvt.s.w	$f6,$f4
 138:	46061082 	mul.s	$f2,$f2,$f6
 13c:	5462fffc 	bnel	v1,v0,130 <func_800CA63C+0x34>
 140:	44822000 	mtc1	v0,$f4
 144:	248e0001 	addiu	t6,a0,1
 148:	11c2001a 	beq	t6,v0,1b4 <func_800CA63C+0xb8>
 14c:	00000000 	nop
 150:	44824000 	mtc1	v0,$f8
 154:	244f0001 	addiu	t7,v0,1
 158:	448f8000 	mtc1	t7,$f16
 15c:	468042a0 	cvt.s.w	$f10,$f8
 160:	24580002 	addiu	t8,v0,2
 164:	44982000 	mtc1	t8,$f4
 168:	24590003 	addiu	t9,v0,3
 16c:	44994000 	mtc1	t9,$f8
 170:	468084a0 	cvt.s.w	$f18,$f16
 174:	460a1082 	mul.s	$f2,$f2,$f10
 178:	24420004 	addiu	v0,v0,4
 17c:	24880001 	addiu	t0,a0,1
 180:	468021a0 	cvt.s.w	$f6,$f4
 184:	46121082 	mul.s	$f2,$f2,$f18
 188:	468042a0 	cvt.s.w	$f10,$f8
 18c:	46061082 	mul.s	$f2,$f2,$f6
 190:	00000000 	nop
 194:	460a1082 	mul.s	$f2,$f2,$f10
 198:	1502ffed 	bne	t0,v0,150 <func_800CA63C+0x54>
 19c:	00000000 	nop
 1a0:	03e00008 	jr	ra
 1a4:	46001006 	mov.s	$f0,$f2
 1a8:	3c010000 	lui	at,0x0
 1ac:	00290821 	addu	at,at,t1
 1b0:	c4220000 	lwc1	$f2,0(at)
 1b4:	03e00008 	jr	ra
 1b8:	46001006 	mov.s	$f0,$f2

000001bc <func_800CA6FC>:
 1bc:	3c013f80 	lui	at,0x3f80
 1c0:	44811000 	mtc1	at,$f2
 1c4:	18a00004 	blez	a1,1d8 <func_800CA6FC+0x1c>
 1c8:	24a5ffff 	addiu	a1,a1,-1
 1cc:	460c1082 	mul.s	$f2,$f2,$f12
 1d0:	5ca0fffe 	bgtzl	a1,1cc <func_800CA6FC+0x10>
 1d4:	24a5ffff 	addiu	a1,a1,-1
 1d8:	03e00008 	jr	ra
 1dc:	46001006 	mov.s	$f0,$f2

000001e0 <func_800CA720>:
 1e0:	3c010000 	lui	at,0x0
 1e4:	c4240000 	lwc1	$f4,0(at)
 1e8:	27bdffe8 	addiu	sp,sp,-24
 1ec:	afbf0014 	sw	ra,20(sp)
 1f0:	46046182 	mul.s	$f6,$f12,$f4
 1f4:	4600320d 	trunc.w.s	$f8,$f6
 1f8:	44044000 	mfc1	a0,$f8
 1fc:	00000000 	nop
 200:	00042400 	sll	a0,a0,0x10
 204:	00042403 	sra	a0,a0,0x10
 208:	0c000000 	jal	0 <func_800CA540>
 20c:	3084ffff 	andi	a0,a0,0xffff
 210:	44825000 	mtc1	v0,$f10
 214:	3c010000 	lui	at,0x0
 218:	c4320004 	lwc1	$f18,4(at)
 21c:	46805420 	cvt.s.w	$f16,$f10
 220:	8fbf0014 	lw	ra,20(sp)
 224:	27bd0018 	addiu	sp,sp,24
 228:	46128002 	mul.s	$f0,$f16,$f18
 22c:	03e00008 	jr	ra
 230:	00000000 	nop

00000234 <func_800CA774>:
 234:	3c010000 	lui	at,0x0
 238:	c4240008 	lwc1	$f4,8(at)
 23c:	27bdffe8 	addiu	sp,sp,-24
 240:	afbf0014 	sw	ra,20(sp)
 244:	46046182 	mul.s	$f6,$f12,$f4
 248:	4600320d 	trunc.w.s	$f8,$f6
 24c:	44044000 	mfc1	a0,$f8
 250:	00000000 	nop
 254:	00042400 	sll	a0,a0,0x10
 258:	00042403 	sra	a0,a0,0x10
 25c:	0c000000 	jal	0 <func_800CA540>
 260:	3084ffff 	andi	a0,a0,0xffff
 264:	44825000 	mtc1	v0,$f10
 268:	3c010000 	lui	at,0x0
 26c:	c432000c 	lwc1	$f18,12(at)
 270:	46805420 	cvt.s.w	$f16,$f10
 274:	8fbf0014 	lw	ra,20(sp)
 278:	27bd0018 	addiu	sp,sp,24
 27c:	46128002 	mul.s	$f0,$f16,$f18
 280:	03e00008 	jr	ra
 284:	00000000 	nop
	...
