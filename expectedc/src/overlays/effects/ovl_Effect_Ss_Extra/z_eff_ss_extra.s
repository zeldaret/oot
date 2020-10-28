
build/src/overlays/effects/ovl_Effect_Ss_Extra/z_eff_ss_extra.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <EffectSsExtra_Init>:
   0:	27bdffd0 	addiu	sp,sp,-48
   4:	3c010001 	lui	at,0x1
   8:	afa40030 	sw	a0,48(sp)
   c:	342117a4 	ori	at,at,0x17a4
  10:	afbf0014 	sw	ra,20(sp)
  14:	afa50034 	sw	a1,52(sp)
  18:	00812021 	addu	a0,a0,at
  1c:	afa4001c 	sw	a0,28(sp)
  20:	24050117 	li	a1,279
  24:	afa60038 	sw	a2,56(sp)
  28:	0c000000 	jal	0 <EffectSsExtra_Init>
  2c:	afa7003c 	sw	a3,60(sp)
  30:	8fa4001c 	lw	a0,28(sp)
  34:	8fa60038 	lw	a2,56(sp)
  38:	8fa7003c 	lw	a3,60(sp)
  3c:	0440003b 	bltz	v0,12c <EffectSsExtra_Init+0x12c>
  40:	00402825 	move	a1,v0
  44:	afa20024 	sw	v0,36(sp)
  48:	afa60038 	sw	a2,56(sp)
  4c:	0c000000 	jal	0 <EffectSsExtra_Init>
  50:	afa7003c 	sw	a3,60(sp)
  54:	8fa50024 	lw	a1,36(sp)
  58:	8fa60038 	lw	a2,56(sp)
  5c:	10400033 	beqz	v0,12c <EffectSsExtra_Init+0x12c>
  60:	8fa7003c 	lw	a3,60(sp)
  64:	8fae0030 	lw	t6,48(sp)
  68:	00057900 	sll	t7,a1,0x4
  6c:	01e57821 	addu	t7,t7,a1
  70:	000f7880 	sll	t7,t7,0x2
  74:	3c190001 	lui	t9,0x1
  78:	01cfc021 	addu	t8,t6,t7
  7c:	0338c821 	addu	t9,t9,t8
  80:	8f3917b4 	lw	t9,6068(t9)
  84:	3c040000 	lui	a0,0x0
  88:	24840000 	addiu	a0,a0,0
  8c:	3c018000 	lui	at,0x8000
  90:	8c830018 	lw	v1,24(a0)
  94:	03214021 	addu	t0,t9,at
  98:	ac880018 	sw	t0,24(a0)
  9c:	8cea0000 	lw	t2,0(a3)
  a0:	3c0f0000 	lui	t7,0x0
  a4:	3c180000 	lui	t8,0x0
  a8:	acca0000 	sw	t2,0(a2)
  ac:	8ce90004 	lw	t1,4(a3)
  b0:	25ef0000 	addiu	t7,t7,0
  b4:	27180000 	addiu	t8,t8,0
  b8:	acc90004 	sw	t1,4(a2)
  bc:	8cea0008 	lw	t2,8(a3)
  c0:	24190032 	li	t9,50
  c4:	24020001 	li	v0,1
  c8:	acca0008 	sw	t2,8(a2)
  cc:	8cec000c 	lw	t4,12(a3)
  d0:	240a0005 	li	t2,5
  d4:	accc000c 	sw	t4,12(a2)
  d8:	8ceb0010 	lw	t3,16(a3)
  dc:	accb0010 	sw	t3,16(a2)
  e0:	8cec0014 	lw	t4,20(a3)
  e4:	accc0014 	sw	t4,20(a2)
  e8:	8cee0018 	lw	t6,24(a3)
  ec:	acce0018 	sw	t6,24(a2)
  f0:	8ced001c 	lw	t5,28(a3)
  f4:	accd001c 	sw	t5,28(a2)
  f8:	8cee0020 	lw	t6,32(a3)
  fc:	accf0028 	sw	t7,40(a2)
 100:	acd80024 	sw	t8,36(a2)
 104:	a4d9005c 	sh	t9,92(a2)
 108:	acce0020 	sw	t6,32(a2)
 10c:	84e80026 	lh	t0,38(a3)
 110:	a4c80044 	sh	t0,68(a2)
 114:	84e90024 	lh	t1,36(a3)
 118:	a4ca0042 	sh	t2,66(a2)
 11c:	a4c50040 	sh	a1,64(a2)
 120:	a4c90046 	sh	t1,70(a2)
 124:	10000002 	b	130 <EffectSsExtra_Init+0x130>
 128:	ac830018 	sw	v1,24(a0)
 12c:	00001025 	move	v0,zero
 130:	8fbf0014 	lw	ra,20(sp)
 134:	27bd0030 	addiu	sp,sp,48
 138:	03e00008 	jr	ra
 13c:	00000000 	nop

00000140 <EffectSsExtra_Draw>:
 140:	27bdffa0 	addiu	sp,sp,-96
 144:	afbf0024 	sw	ra,36(sp)
 148:	afb20020 	sw	s2,32(sp)
 14c:	afb1001c 	sw	s1,28(sp)
 150:	afb00018 	sw	s0,24(sp)
 154:	afa50064 	sw	a1,100(sp)
 158:	84ce0046 	lh	t6,70(a2)
 15c:	3c0142c8 	lui	at,0x42c8
 160:	44814000 	mtc1	at,$f8
 164:	448e2000 	mtc1	t6,$f4
 168:	3c080001 	lui	t0,0x1
 16c:	00c08825 	move	s1,a2
 170:	468021a0 	cvt.s.w	$f6,$f4
 174:	00809025 	move	s2,a0
 178:	240700a8 	li	a3,168
 17c:	46083283 	div.s	$f10,$f6,$f8
 180:	e7aa0058 	swc1	$f10,88(sp)
 184:	84cf0040 	lh	t7,64(a2)
 188:	8c850000 	lw	a1,0(a0)
 18c:	3c060000 	lui	a2,0x0
 190:	000fc100 	sll	t8,t7,0x4
 194:	030fc021 	addu	t8,t8,t7
 198:	0018c080 	sll	t8,t8,0x2
 19c:	0098c821 	addu	t9,a0,t8
 1a0:	01194021 	addu	t0,t0,t9
 1a4:	8d0817b4 	lw	t0,6068(t0)
 1a8:	27a40040 	addiu	a0,sp,64
 1ac:	24c60000 	addiu	a2,a2,0
 1b0:	00a08025 	move	s0,a1
 1b4:	0c000000 	jal	0 <EffectSsExtra_Init>
 1b8:	afa80054 	sw	t0,84(sp)
 1bc:	8fa80054 	lw	t0,84(sp)
 1c0:	3c018000 	lui	at,0x8000
 1c4:	3c0bdb06 	lui	t3,0xdb06
 1c8:	01014821 	addu	t1,t0,at
 1cc:	3c010000 	lui	at,0x0
 1d0:	ac290018 	sw	t1,24(at)
 1d4:	8e0202d0 	lw	v0,720(s0)
 1d8:	356b0018 	ori	t3,t3,0x18
 1dc:	00003825 	move	a3,zero
 1e0:	244a0008 	addiu	t2,v0,8
 1e4:	ae0a02d0 	sw	t2,720(s0)
 1e8:	ac480004 	sw	t0,4(v0)
 1ec:	ac4b0000 	sw	t3,0(v0)
 1f0:	8e260008 	lw	a2,8(s1)
 1f4:	c62e0004 	lwc1	$f14,4(s1)
 1f8:	0c000000 	jal	0 <EffectSsExtra_Init>
 1fc:	c62c0000 	lwc1	$f12,0(s1)
 200:	c7ac0058 	lwc1	$f12,88(sp)
 204:	24070001 	li	a3,1
 208:	44066000 	mfc1	a2,$f12
 20c:	0c000000 	jal	0 <EffectSsExtra_Init>
 210:	46006386 	mov.s	$f14,$f12
 214:	0c000000 	jal	0 <EffectSsExtra_Init>
 218:	8e440000 	lw	a0,0(s2)
 21c:	3c010001 	lui	at,0x1
 220:	34211da0 	ori	at,at,0x1da0
 224:	0c000000 	jal	0 <EffectSsExtra_Init>
 228:	02412021 	addu	a0,s2,at
 22c:	8e0202d0 	lw	v0,720(s0)
 230:	3c0dda38 	lui	t5,0xda38
 234:	35ad0003 	ori	t5,t5,0x3
 238:	244c0008 	addiu	t4,v0,8
 23c:	ae0c02d0 	sw	t4,720(s0)
 240:	ac4d0000 	sw	t5,0(v0)
 244:	8e440000 	lw	a0,0(s2)
 248:	3c050000 	lui	a1,0x0
 24c:	24a50014 	addiu	a1,a1,20
 250:	240600ba 	li	a2,186
 254:	0c000000 	jal	0 <EffectSsExtra_Init>
 258:	afa20038 	sw	v0,56(sp)
 25c:	8fa30038 	lw	v1,56(sp)
 260:	3c0fdb06 	lui	t7,0xdb06
 264:	35ef0020 	ori	t7,t7,0x20
 268:	ac620004 	sw	v0,4(v1)
 26c:	8e0202d0 	lw	v0,720(s0)
 270:	3c040000 	lui	a0,0x0
 274:	3c070000 	lui	a3,0x0
 278:	244e0008 	addiu	t6,v0,8
 27c:	ae0e02d0 	sw	t6,720(s0)
 280:	ac4f0000 	sw	t7,0(v0)
 284:	86380044 	lh	t8,68(s1)
 288:	24e70000 	addiu	a3,a3,0
 28c:	3c0500ff 	lui	a1,0xff
 290:	0018c880 	sll	t9,t8,0x2
 294:	00992021 	addu	a0,a0,t9
 298:	8c840010 	lw	a0,16(a0)
 29c:	34a5ffff 	ori	a1,a1,0xffff
 2a0:	3c068000 	lui	a2,0x8000
 2a4:	00045100 	sll	t2,a0,0x4
 2a8:	000a5f02 	srl	t3,t2,0x1c
 2ac:	000b6080 	sll	t4,t3,0x2
 2b0:	00ec6821 	addu	t5,a3,t4
 2b4:	8dae0000 	lw	t6,0(t5)
 2b8:	00854824 	and	t1,a0,a1
 2bc:	3c040000 	lui	a0,0x0
 2c0:	012e7821 	addu	t7,t1,t6
 2c4:	01e6c021 	addu	t8,t7,a2
 2c8:	ac580004 	sw	t8,4(v0)
 2cc:	8e0202d0 	lw	v0,720(s0)
 2d0:	24840000 	addiu	a0,a0,0
 2d4:	00045900 	sll	t3,a0,0x4
 2d8:	000b6702 	srl	t4,t3,0x1c
 2dc:	24590008 	addiu	t9,v0,8
 2e0:	ae1902d0 	sw	t9,720(s0)
 2e4:	000c6880 	sll	t5,t4,0x2
 2e8:	3c0ade00 	lui	t2,0xde00
 2ec:	00ed4821 	addu	t1,a3,t5
 2f0:	ac4a0000 	sw	t2,0(v0)
 2f4:	8d2e0000 	lw	t6,0(t1)
 2f8:	00857824 	and	t7,a0,a1
 2fc:	27a40040 	addiu	a0,sp,64
 300:	01cfc021 	addu	t8,t6,t7
 304:	0306c821 	addu	t9,t8,a2
 308:	3c060000 	lui	a2,0x0
 30c:	ac590004 	sw	t9,4(v0)
 310:	8e450000 	lw	a1,0(s2)
 314:	24c60028 	addiu	a2,a2,40
 318:	0c000000 	jal	0 <EffectSsExtra_Init>
 31c:	240700c2 	li	a3,194
 320:	8fbf0024 	lw	ra,36(sp)
 324:	8fb00018 	lw	s0,24(sp)
 328:	8fb1001c 	lw	s1,28(sp)
 32c:	8fb20020 	lw	s2,32(sp)
 330:	03e00008 	jr	ra
 334:	27bd0060 	addiu	sp,sp,96

00000338 <EffectSsExtra_Update>:
 338:	afa50004 	sw	a1,4(sp)
 33c:	84c20042 	lh	v0,66(a2)
 340:	10400003 	beqz	v0,350 <EffectSsExtra_Update+0x18>
 344:	244effff 	addiu	t6,v0,-1
 348:	10000004 	b	35c <EffectSsExtra_Update+0x24>
 34c:	a4ce0042 	sh	t6,66(a2)
 350:	44802000 	mtc1	zero,$f4
 354:	00000000 	nop
 358:	e4c40010 	swc1	$f4,16(a2)
 35c:	84cf0042 	lh	t7,66(a2)
 360:	24010001 	li	at,1
 364:	15e10009 	bne	t7,at,38c <EffectSsExtra_Update+0x54>
 368:	00000000 	nop
 36c:	84d80044 	lh	t8,68(a2)
 370:	3c080000 	lui	t0,0x0
 374:	3c010001 	lui	at,0x1
 378:	0018c840 	sll	t9,t8,0x1
 37c:	01194021 	addu	t0,t0,t9
 380:	85080000 	lh	t0,0(t0)
 384:	00240821 	addu	at,at,a0
 388:	a428072c 	sh	t0,1836(at)
 38c:	03e00008 	jr	ra
 390:	00000000 	nop
	...
