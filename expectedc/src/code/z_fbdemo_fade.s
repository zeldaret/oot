
build/src/code/z_fbdemo_fade.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <TransitionFade_Start>:
   0:	90820000 	lbu	v0,0(a0)
   4:	24010001 	li	at,1
   8:	10400011 	beqz	v0,50 <TransitionFade_Start+0x50>
   c:	00000000 	nop
  10:	10410005 	beq	v0,at,28 <TransitionFade_Start+0x28>
  14:	24010002 	li	at,2
  18:	5041000d 	beql	v0,at,50 <TransitionFade_Start+0x50>
  1c:	a0800007 	sb	zero,7(a0)
  20:	1000000b 	b	50 <TransitionFade_Start+0x50>
  24:	00000000 	nop
  28:	908e0002 	lbu	t6,2(a0)
  2c:	a4800008 	sh	zero,8(a0)
  30:	240f00ff 	li	t7,255
  34:	11c00003 	beqz	t6,44 <TransitionFade_Start+0x44>
  38:	00000000 	nop
  3c:	10000004 	b	50 <TransitionFade_Start+0x50>
  40:	a08f0007 	sb	t7,7(a0)
  44:	10000002 	b	50 <TransitionFade_Start+0x50>
  48:	a0800007 	sb	zero,7(a0)
  4c:	a0800007 	sb	zero,7(a0)
  50:	03e00008 	jr	ra
  54:	a0800001 	sb	zero,1(a0)

00000058 <TransitionFade_Init>:
  58:	27bdffe8 	addiu	sp,sp,-24
  5c:	afbf0014 	sw	ra,20(sp)
  60:	afa40018 	sw	a0,24(sp)
  64:	0c000000 	jal	0 <TransitionFade_Start>
  68:	2405000c 	li	a1,12
  6c:	8fbf0014 	lw	ra,20(sp)
  70:	8fa20018 	lw	v0,24(sp)
  74:	27bd0018 	addiu	sp,sp,24
  78:	03e00008 	jr	ra
  7c:	00000000 	nop

00000080 <TransitionFade_Destroy>:
  80:	03e00008 	jr	ra
  84:	afa40000 	sw	a0,0(sp)

00000088 <TransitionFade_Update>:
  88:	27bdffd0 	addiu	sp,sp,-48
  8c:	afbf0014 	sw	ra,20(sp)
  90:	90820000 	lbu	v0,0(a0)
  94:	00803825 	move	a3,a0
  98:	24010001 	li	at,1
  9c:	50400063 	beqzl	v0,22c <TransitionFade_Update+0x1a4>
  a0:	8fbf0014 	lw	ra,20(sp)
  a4:	10410005 	beq	v0,at,bc <TransitionFade_Update+0x34>
  a8:	24010002 	li	at,2
  ac:	50410037 	beql	v0,at,18c <TransitionFade_Update+0x104>
  b0:	90ed0007 	lbu	t5,7(a3)
  b4:	1000005d 	b	22c <TransitionFade_Update+0x1a4>
  b8:	8fbf0014 	lw	ra,20(sp)
  bc:	94ee0008 	lhu	t6,8(a3)
  c0:	3c020000 	lui	v0,0x0
  c4:	3c040000 	lui	a0,0x0
  c8:	01c57821 	addu	t7,t6,a1
  cc:	a4ef0008 	sh	t7,8(a3)
  d0:	90421418 	lbu	v0,5144(v0)
  d4:	31f8ffff 	andi	t8,t7,0xffff
  d8:	24190001 	li	t9,1
  dc:	0302082a 	slt	at,t8,v0
  e0:	14200005 	bnez	at,f8 <TransitionFade_Update+0x70>
  e4:	24840000 	addiu	a0,a0,0
  e8:	a4e20008 	sh	v0,8(a3)
  ec:	3c020000 	lui	v0,0x0
  f0:	a0f90001 	sb	t9,1(a3)
  f4:	90421418 	lbu	v0,5144(v0)
  f8:	54400007 	bnezl	v0,118 <TransitionFade_Update+0x90>
  fc:	94e80008 	lhu	t0,8(a3)
 100:	0c000000 	jal	0 <TransitionFade_Start>
 104:	afa70030 	sw	a3,48(sp)
 108:	3c020000 	lui	v0,0x0
 10c:	90421418 	lbu	v0,5144(v0)
 110:	8fa70030 	lw	a3,48(sp)
 114:	94e80008 	lhu	t0,8(a3)
 118:	3c01437f 	lui	at,0x437f
 11c:	44812000 	mtc1	at,$f4
 120:	44883000 	mtc1	t0,$f6
 124:	44829000 	mtc1	v0,$f18
 128:	05010005 	bgez	t0,140 <TransitionFade_Update+0xb8>
 12c:	46803220 	cvt.s.w	$f8,$f6
 130:	3c014f80 	lui	at,0x4f80
 134:	44815000 	mtc1	at,$f10
 138:	00000000 	nop
 13c:	460a4200 	add.s	$f8,$f8,$f10
 140:	46082402 	mul.s	$f16,$f4,$f8
 144:	3c014f80 	lui	at,0x4f80
 148:	240b00ff 	li	t3,255
 14c:	04410004 	bgez	v0,160 <TransitionFade_Update+0xd8>
 150:	468091a0 	cvt.s.w	$f6,$f18
 154:	44815000 	mtc1	at,$f10
 158:	00000000 	nop
 15c:	460a3180 	add.s	$f6,$f6,$f10
 160:	46068103 	div.s	$f4,$f16,$f6
 164:	90ea0002 	lbu	t2,2(a3)
 168:	4600220d 	trunc.w.s	$f8,$f4
 16c:	44034000 	mfc1	v1,$f8
 170:	11400003 	beqz	t2,180 <TransitionFade_Update+0xf8>
 174:	01636023 	subu	t4,t3,v1
 178:	1000002b 	b	228 <TransitionFade_Update+0x1a0>
 17c:	a0ec0007 	sb	t4,7(a3)
 180:	10000029 	b	228 <TransitionFade_Update+0x1a0>
 184:	a0e30007 	sb	v1,7(a3)
 188:	90ed0007 	lbu	t5,7(a3)
 18c:	3c020000 	lui	v0,0x0
 190:	8c420000 	lw	v0,0(v0)
 194:	a7ad002a 	sh	t5,42(sp)
 198:	84430d38 	lh	v1,3384(v0)
 19c:	50600021 	beqzl	v1,224 <TransitionFade_Update+0x19c>
 1a0:	87a9002a 	lh	t1,42(sp)
 1a4:	0461000d 	bgez	v1,1dc <TransitionFade_Update+0x154>
 1a8:	24440d38 	addiu	a0,v0,3384
 1ac:	27a4002a 	addiu	a0,sp,42
 1b0:	240500ff 	li	a1,255
 1b4:	240600ff 	li	a2,255
 1b8:	0c000000 	jal	0 <TransitionFade_Start>
 1bc:	afa70030 	sw	a3,48(sp)
 1c0:	10400017 	beqz	v0,220 <TransitionFade_Update+0x198>
 1c4:	8fa70030 	lw	a3,48(sp)
 1c8:	3c0f0000 	lui	t7,0x0
 1cc:	8def0000 	lw	t7,0(t7)
 1d0:	240e0096 	li	t6,150
 1d4:	10000012 	b	220 <TransitionFade_Update+0x198>
 1d8:	a5ee0d38 	sh	t6,3384(t7)
 1dc:	24050014 	li	a1,20
 1e0:	2406003c 	li	a2,60
 1e4:	0c000000 	jal	0 <TransitionFade_Start>
 1e8:	afa70030 	sw	a3,48(sp)
 1ec:	3c180000 	lui	t8,0x0
 1f0:	8f180000 	lw	t8,0(t8)
 1f4:	27a4002a 	addiu	a0,sp,42
 1f8:	00002825 	move	a1,zero
 1fc:	0c000000 	jal	0 <TransitionFade_Start>
 200:	87060d38 	lh	a2,3384(t8)
 204:	10400006 	beqz	v0,220 <TransitionFade_Update+0x198>
 208:	8fa70030 	lw	a3,48(sp)
 20c:	3c190000 	lui	t9,0x0
 210:	8f390000 	lw	t9,0(t9)
 214:	24080001 	li	t0,1
 218:	a7200d38 	sh	zero,3384(t9)
 21c:	a0e80001 	sb	t0,1(a3)
 220:	87a9002a 	lh	t1,42(sp)
 224:	a0e90007 	sb	t1,7(a3)
 228:	8fbf0014 	lw	ra,20(sp)
 22c:	27bd0030 	addiu	sp,sp,48
 230:	03e00008 	jr	ra
 234:	00000000 	nop

00000238 <TransitionFade_Draw>:
 238:	908e0007 	lbu	t6,7(a0)
 23c:	3c180000 	lui	t8,0x0
 240:	27180000 	addiu	t8,t8,0
 244:	19c0002b 	blez	t6,2f4 <TransitionFade_Draw+0xbc>
 248:	3c0fde00 	lui	t7,0xde00
 24c:	8ca20000 	lw	v0,0(a1)
 250:	3c19fa00 	lui	t9,0xfa00
 254:	3c01f600 	lui	at,0xf600
 258:	24460008 	addiu	a2,v0,8
 25c:	ac4f0000 	sw	t7,0(v0)
 260:	ac580004 	sw	t8,4(v0)
 264:	acd90000 	sw	t9,0(a2)
 268:	24820004 	addiu	v0,a0,4
 26c:	90490000 	lbu	t1,0(v0)
 270:	904c0001 	lbu	t4,1(v0)
 274:	90580002 	lbu	t8,2(v0)
 278:	904b0003 	lbu	t3,3(v0)
 27c:	00095600 	sll	t2,t1,0x18
 280:	000c6c00 	sll	t5,t4,0x10
 284:	014d7025 	or	t6,t2,t5
 288:	0018ca00 	sll	t9,t8,0x8
 28c:	01d94025 	or	t0,t6,t9
 290:	010b6025 	or	t4,t0,t3
 294:	accc0004 	sw	t4,4(a2)
 298:	3c0a0000 	lui	t2,0x0
 29c:	8d4a0000 	lw	t2,0(t2)
 2a0:	3c190000 	lui	t9,0x0
 2a4:	8f390000 	lw	t9,0(t9)
 2a8:	254dffff 	addiu	t5,t2,-1
 2ac:	24c30008 	addiu	v1,a2,8
 2b0:	31af03ff 	andi	t7,t5,0x3ff
 2b4:	2729ffff 	addiu	t1,t9,-1
 2b8:	312803ff 	andi	t0,t1,0x3ff
 2bc:	000fc380 	sll	t8,t7,0xe
 2c0:	00601025 	move	v0,v1
 2c4:	03017025 	or	t6,t8,at
 2c8:	00085880 	sll	t3,t0,0x2
 2cc:	01cb6025 	or	t4,t6,t3
 2d0:	ac4c0000 	sw	t4,0(v0)
 2d4:	ac400004 	sw	zero,4(v0)
 2d8:	24630008 	addiu	v1,v1,8
 2dc:	00601025 	move	v0,v1
 2e0:	3c0ae700 	lui	t2,0xe700
 2e4:	ac4a0000 	sw	t2,0(v0)
 2e8:	ac400004 	sw	zero,4(v0)
 2ec:	24630008 	addiu	v1,v1,8
 2f0:	aca30000 	sw	v1,0(a1)
 2f4:	03e00008 	jr	ra
 2f8:	00000000 	nop

000002fc <TransitionFade_IsDone>:
 2fc:	03e00008 	jr	ra
 300:	90820001 	lbu	v0,1(a0)

00000304 <TransitionFade_SetColor>:
 304:	03e00008 	jr	ra
 308:	ac850004 	sw	a1,4(a0)

0000030c <TransitionFade_SetType>:
 30c:	24010001 	li	at,1
 310:	14a10004 	bne	a1,at,324 <TransitionFade_SetType+0x18>
 314:	24020001 	li	v0,1
 318:	a0820000 	sb	v0,0(a0)
 31c:	03e00008 	jr	ra
 320:	a0820002 	sb	v0,2(a0)
 324:	24010002 	li	at,2
 328:	14a10004 	bne	a1,at,33c <TransitionFade_SetType+0x30>
 32c:	24020001 	li	v0,1
 330:	a0820000 	sb	v0,0(a0)
 334:	03e00008 	jr	ra
 338:	a0800002 	sb	zero,2(a0)
 33c:	24010003 	li	at,3
 340:	14a10003 	bne	a1,at,350 <TransitionFade_SetType+0x44>
 344:	240e0002 	li	t6,2
 348:	03e00008 	jr	ra
 34c:	a08e0000 	sb	t6,0(a0)
 350:	a0800000 	sb	zero,0(a0)
 354:	03e00008 	jr	ra
 358:	00000000 	nop
 35c:	00000000 	nop
