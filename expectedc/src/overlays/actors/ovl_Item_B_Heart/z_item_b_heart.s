
build/src/overlays/actors/ovl_Item_B_Heart/z_item_b_heart.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <ItemBHeart_Init>:
   0:	27bdffe8 	addiu	sp,sp,-24
   4:	afa40018 	sw	a0,24(sp)
   8:	afbf0014 	sw	ra,20(sp)
   c:	00a02025 	move	a0,a1
  10:	0c000000 	jal	0 <ItemBHeart_Init>
  14:	2405001f 	li	a1,31
  18:	10400005 	beqz	v0,30 <ItemBHeart_Init+0x30>
  1c:	8fa40018 	lw	a0,24(sp)
  20:	0c000000 	jal	0 <ItemBHeart_Init>
  24:	8fa40018 	lw	a0,24(sp)
  28:	1000000c 	b	5c <ItemBHeart_Init+0x5c>
  2c:	8fbf0014 	lw	ra,20(sp)
  30:	3c050000 	lui	a1,0x0
  34:	0c000000 	jal	0 <ItemBHeart_Init>
  38:	24a50020 	addiu	a1,a1,32
  3c:	8fa40018 	lw	a0,24(sp)
  40:	3c073f4c 	lui	a3,0x3f4c
  44:	34e7cccd 	ori	a3,a3,0xcccd
  48:	24050000 	li	a1,0
  4c:	00003025 	move	a2,zero
  50:	0c000000 	jal	0 <ItemBHeart_Init>
  54:	248400b4 	addiu	a0,a0,180
  58:	8fbf0014 	lw	ra,20(sp)
  5c:	27bd0018 	addiu	sp,sp,24
  60:	03e00008 	jr	ra
  64:	00000000 	nop

00000068 <ItemBHeart_Destroy>:
  68:	afa40000 	sw	a0,0(sp)
  6c:	03e00008 	jr	ra
  70:	afa50004 	sw	a1,4(sp)

00000074 <ItemBHeart_Update>:
  74:	27bdffd8 	addiu	sp,sp,-40
  78:	afbf0024 	sw	ra,36(sp)
  7c:	afb10020 	sw	s1,32(sp)
  80:	afb0001c 	sw	s0,28(sp)
  84:	00808025 	move	s0,a0
  88:	0c000000 	jal	0 <ItemBHeart_Init>
  8c:	00a08825 	move	s1,a1
  90:	44800000 	mtc1	zero,$f0
  94:	240e0004 	li	t6,4
  98:	afae0014 	sw	t6,20(sp)
  9c:	44060000 	mfc1	a2,$f0
  a0:	44070000 	mfc1	a3,$f0
  a4:	02202025 	move	a0,s1
  a8:	02002825 	move	a1,s0
  ac:	0c000000 	jal	0 <ItemBHeart_Init>
  b0:	e7a00010 	swc1	$f0,16(sp)
  b4:	02002025 	move	a0,s0
  b8:	0c000000 	jal	0 <ItemBHeart_Init>
  bc:	02202825 	move	a1,s1
  c0:	10400008 	beqz	v0,e4 <ItemBHeart_Update+0x70>
  c4:	02002025 	move	a0,s0
  c8:	02202025 	move	a0,s1
  cc:	0c000000 	jal	0 <ItemBHeart_Init>
  d0:	2405001f 	li	a1,31
  d4:	0c000000 	jal	0 <ItemBHeart_Init>
  d8:	02002025 	move	a0,s0
  dc:	10000009 	b	104 <ItemBHeart_Update+0x90>
  e0:	8fbf0024 	lw	ra,36(sp)
  e4:	3c014220 	lui	at,0x4220
  e8:	44812000 	mtc1	at,$f4
  ec:	02202825 	move	a1,s1
  f0:	2406004f 	li	a2,79
  f4:	3c0741f0 	lui	a3,0x41f0
  f8:	0c000000 	jal	0 <ItemBHeart_Init>
  fc:	e7a40010 	swc1	$f4,16(sp)
 100:	8fbf0024 	lw	ra,36(sp)
 104:	8fb0001c 	lw	s0,28(sp)
 108:	8fb10020 	lw	s1,32(sp)
 10c:	03e00008 	jr	ra
 110:	27bd0028 	addiu	sp,sp,40

00000114 <func_80B85264>:
 114:	27bdffe0 	addiu	sp,sp,-32
 118:	afbf001c 	sw	ra,28(sp)
 11c:	afb00018 	sw	s0,24(sp)
 120:	afa50024 	sw	a1,36(sp)
 124:	848e0164 	lh	t6,356(a0)
 128:	00808025 	move	s0,a0
 12c:	25cf0001 	addiu	t7,t6,1
 130:	a48f0164 	sh	t7,356(a0)
 134:	84840164 	lh	a0,356(a0)
 138:	00800821 	move	at,a0
 13c:	00042080 	sll	a0,a0,0x2
 140:	00812023 	subu	a0,a0,at
 144:	00042140 	sll	a0,a0,0x5
 148:	00812021 	addu	a0,a0,at
 14c:	00042080 	sll	a0,a0,0x2
 150:	00812023 	subu	a0,a0,at
 154:	00042080 	sll	a0,a0,0x2
 158:	00042400 	sll	a0,a0,0x10
 15c:	0c000000 	jal	0 <ItemBHeart_Init>
 160:	00042403 	sra	a0,a0,0x10
 164:	3c0140a0 	lui	at,0x40a0
 168:	44812000 	mtc1	at,$f4
 16c:	3c0141a0 	lui	at,0x41a0
 170:	44814000 	mtc1	at,$f8
 174:	46040182 	mul.s	$f6,$f0,$f4
 178:	c610000c 	lwc1	$f16,12(s0)
 17c:	3c063dcc 	lui	a2,0x3dcc
 180:	34c6cccd 	ori	a2,a2,0xcccd
 184:	26040028 	addiu	a0,s0,40
 188:	8e070158 	lw	a3,344(s0)
 18c:	46083280 	add.s	$f10,$f6,$f8
 190:	460a8480 	add.s	$f18,$f16,$f10
 194:	44059000 	mfc1	a1,$f18
 198:	0c000000 	jal	0 <ItemBHeart_Init>
 19c:	00000000 	nop
 1a0:	3c073dcc 	lui	a3,0x3dcc
 1a4:	34e7cccd 	ori	a3,a3,0xcccd
 1a8:	26040158 	addiu	a0,s0,344
 1ac:	3c054000 	lui	a1,0x4000
 1b0:	0c000000 	jal	0 <ItemBHeart_Init>
 1b4:	3c063f80 	lui	a2,0x3f80
 1b8:	861800b6 	lh	t8,182(s0)
 1bc:	3c053ecc 	lui	a1,0x3ecc
 1c0:	3c063dcc 	lui	a2,0x3dcc
 1c4:	3c073c23 	lui	a3,0x3c23
 1c8:	27190400 	addiu	t9,t8,1024
 1cc:	a61900b6 	sh	t9,182(s0)
 1d0:	34e7d70a 	ori	a3,a3,0xd70a
 1d4:	34c6cccd 	ori	a2,a2,0xcccd
 1d8:	34a5cccd 	ori	a1,a1,0xcccd
 1dc:	0c000000 	jal	0 <ItemBHeart_Init>
 1e0:	26040050 	addiu	a0,s0,80
 1e4:	c6000050 	lwc1	$f0,80(s0)
 1e8:	e6000058 	swc1	$f0,88(s0)
 1ec:	e6000054 	swc1	$f0,84(s0)
 1f0:	8fbf001c 	lw	ra,28(sp)
 1f4:	8fb00018 	lw	s0,24(sp)
 1f8:	27bd0020 	addiu	sp,sp,32
 1fc:	03e00008 	jr	ra
 200:	00000000 	nop

00000204 <ItemBHeart_Draw>:
 204:	27bdffa0 	addiu	sp,sp,-96
 208:	afbf001c 	sw	ra,28(sp)
 20c:	afb10018 	sw	s1,24(sp)
 210:	afb00014 	sw	s0,20(sp)
 214:	afa50064 	sw	a1,100(sp)
 218:	8ca50000 	lw	a1,0(a1)
 21c:	00808025 	move	s0,a0
 220:	3c060000 	lui	a2,0x0
 224:	24c60000 	addiu	a2,a2,0
 228:	27a40040 	addiu	a0,sp,64
 22c:	a3a00057 	sb	zero,87(sp)
 230:	240701fa 	li	a3,506
 234:	0c000000 	jal	0 <ItemBHeart_Init>
 238:	00a08825 	move	s1,a1
 23c:	8fa50064 	lw	a1,100(sp)
 240:	93a80057 	lbu	t0,87(sp)
 244:	2403005d 	li	v1,93
 248:	8ca21c6c 	lw	v0,7276(a1)
 24c:	1040000f 	beqz	v0,28c <ItemBHeart_Draw+0x88>
 250:	00000000 	nop
 254:	844f0000 	lh	t7,0(v0)
 258:	546f000a 	bnel	v1,t7,284 <ItemBHeart_Draw+0x80>
 25c:	8c420124 	lw	v0,292(v0)
 260:	c60400ec 	lwc1	$f4,236(s0)
 264:	c44600ec 	lwc1	$f6,236(v0)
 268:	4606203c 	c.lt.s	$f4,$f6
 26c:	00000000 	nop
 270:	45020004 	bc1fl	284 <ItemBHeart_Draw+0x80>
 274:	8c420124 	lw	v0,292(v0)
 278:	10000004 	b	28c <ItemBHeart_Draw+0x88>
 27c:	24080001 	li	t0,1
 280:	8c420124 	lw	v0,292(v0)
 284:	5440fff4 	bnezl	v0,258 <ItemBHeart_Draw+0x54>
 288:	844f0000 	lh	t7,0(v0)
 28c:	11000021 	beqz	t0,314 <ItemBHeart_Draw+0x110>
 290:	00000000 	nop
 294:	0c000000 	jal	0 <ItemBHeart_Init>
 298:	8ca40000 	lw	a0,0(a1)
 29c:	8e2202d0 	lw	v0,720(s1)
 2a0:	3c19da38 	lui	t9,0xda38
 2a4:	37390003 	ori	t9,t9,0x3
 2a8:	24580008 	addiu	t8,v0,8
 2ac:	ae3802d0 	sw	t8,720(s1)
 2b0:	ac590000 	sw	t9,0(v0)
 2b4:	8fa90064 	lw	t1,100(sp)
 2b8:	3c050000 	lui	a1,0x0
 2bc:	24a50014 	addiu	a1,a1,20
 2c0:	24060227 	li	a2,551
 2c4:	00408025 	move	s0,v0
 2c8:	0c000000 	jal	0 <ItemBHeart_Init>
 2cc:	8d240000 	lw	a0,0(t1)
 2d0:	ae020004 	sw	v0,4(s0)
 2d4:	8e2202d0 	lw	v0,720(s1)
 2d8:	3c0b0000 	lui	t3,0x0
 2dc:	256b0000 	addiu	t3,t3,0
 2e0:	244a0008 	addiu	t2,v0,8
 2e4:	ae2a02d0 	sw	t2,720(s1)
 2e8:	3c04de00 	lui	a0,0xde00
 2ec:	ac440000 	sw	a0,0(v0)
 2f0:	ac4b0004 	sw	t3,4(v0)
 2f4:	8e2202d0 	lw	v0,720(s1)
 2f8:	3c0d0000 	lui	t5,0x0
 2fc:	25ad0000 	addiu	t5,t5,0
 300:	244c0008 	addiu	t4,v0,8
 304:	ae2c02d0 	sw	t4,720(s1)
 308:	ac4d0004 	sw	t5,4(v0)
 30c:	10000020 	b	390 <ItemBHeart_Draw+0x18c>
 310:	ac440000 	sw	a0,0(v0)
 314:	0c000000 	jal	0 <ItemBHeart_Init>
 318:	8ca40000 	lw	a0,0(a1)
 31c:	8e2202c0 	lw	v0,704(s1)
 320:	3c0fda38 	lui	t7,0xda38
 324:	35ef0003 	ori	t7,t7,0x3
 328:	244e0008 	addiu	t6,v0,8
 32c:	ae2e02c0 	sw	t6,704(s1)
 330:	ac4f0000 	sw	t7,0(v0)
 334:	8fb80064 	lw	t8,100(sp)
 338:	3c050000 	lui	a1,0x0
 33c:	24a50028 	addiu	a1,a1,40
 340:	2406022d 	li	a2,557
 344:	00408025 	move	s0,v0
 348:	0c000000 	jal	0 <ItemBHeart_Init>
 34c:	8f040000 	lw	a0,0(t8)
 350:	ae020004 	sw	v0,4(s0)
 354:	8e2202c0 	lw	v0,704(s1)
 358:	3c090000 	lui	t1,0x0
 35c:	25290000 	addiu	t1,t1,0
 360:	24590008 	addiu	t9,v0,8
 364:	ae3902c0 	sw	t9,704(s1)
 368:	3c04de00 	lui	a0,0xde00
 36c:	ac440000 	sw	a0,0(v0)
 370:	ac490004 	sw	t1,4(v0)
 374:	8e2202c0 	lw	v0,704(s1)
 378:	3c0b0000 	lui	t3,0x0
 37c:	256b0000 	addiu	t3,t3,0
 380:	244a0008 	addiu	t2,v0,8
 384:	ae2a02c0 	sw	t2,704(s1)
 388:	ac4b0004 	sw	t3,4(v0)
 38c:	ac440000 	sw	a0,0(v0)
 390:	8fac0064 	lw	t4,100(sp)
 394:	3c060000 	lui	a2,0x0
 398:	24c6003c 	addiu	a2,a2,60
 39c:	27a40040 	addiu	a0,sp,64
 3a0:	24070231 	li	a3,561
 3a4:	0c000000 	jal	0 <ItemBHeart_Init>
 3a8:	8d850000 	lw	a1,0(t4)
 3ac:	8fbf001c 	lw	ra,28(sp)
 3b0:	8fb00014 	lw	s0,20(sp)
 3b4:	8fb10018 	lw	s1,24(sp)
 3b8:	03e00008 	jr	ra
 3bc:	27bd0060 	addiu	sp,sp,96
