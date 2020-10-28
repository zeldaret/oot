
build/src/overlays/effects/ovl_Effect_Ss_Bomb/z_eff_ss_bomb.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <EffectSsBomb_Init>:
   0:	27bdffe0 	addiu	sp,sp,-32
   4:	afbf001c 	sw	ra,28(sp)
   8:	afb00018 	sw	s0,24(sp)
   c:	afa40020 	sw	a0,32(sp)
  10:	afa50024 	sw	a1,36(sp)
  14:	00c08025 	move	s0,a2
  18:	afa7002c 	sw	a3,44(sp)
  1c:	00e02825 	move	a1,a3
  20:	0c000000 	jal	0 <EffectSsBomb_Init>
  24:	00c02025 	move	a0,a2
  28:	8fa5002c 	lw	a1,44(sp)
  2c:	2604000c 	addiu	a0,s0,12
  30:	0c000000 	jal	0 <EffectSsBomb_Init>
  34:	24a5000c 	addiu	a1,a1,12
  38:	8fa5002c 	lw	a1,44(sp)
  3c:	26040018 	addiu	a0,s0,24
  40:	0c000000 	jal	0 <EffectSsBomb_Init>
  44:	24a50018 	addiu	a1,a1,24
  48:	3c030000 	lui	v1,0x0
  4c:	24630000 	addiu	v1,v1,0
  50:	00037100 	sll	t6,v1,0x4
  54:	000e7f02 	srl	t7,t6,0x1c
  58:	000fc080 	sll	t8,t7,0x2
  5c:	3c190000 	lui	t9,0x0
  60:	0338c821 	addu	t9,t9,t8
  64:	8f390000 	lw	t9,0(t9)
  68:	3c0100ff 	lui	at,0xff
  6c:	3421ffff 	ori	at,at,0xffff
  70:	00614024 	and	t0,v1,at
  74:	3c018000 	lui	at,0x8000
  78:	3c0c0000 	lui	t4,0x0
  7c:	3c0d0000 	lui	t5,0x0
  80:	03284821 	addu	t1,t9,t0
  84:	01215021 	addu	t2,t1,at
  88:	240b0014 	li	t3,20
  8c:	258c0000 	addiu	t4,t4,0
  90:	25ad0000 	addiu	t5,t5,0
  94:	240e0064 	li	t6,100
  98:	ae0a0038 	sw	t2,56(s0)
  9c:	a60b005c 	sh	t3,92(s0)
  a0:	ae0c0028 	sw	t4,40(s0)
  a4:	ae0d0024 	sw	t5,36(s0)
  a8:	a60e0040 	sh	t6,64(s0)
  ac:	a6000042 	sh	zero,66(s0)
  b0:	8fbf001c 	lw	ra,28(sp)
  b4:	8fb00018 	lw	s0,24(sp)
  b8:	27bd0020 	addiu	sp,sp,32
  bc:	03e00008 	jr	ra
  c0:	24020001 	li	v0,1

000000c4 <EffectSsBomb_Draw>:
  c4:	27bdfe90 	addiu	sp,sp,-368
  c8:	afbf001c 	sw	ra,28(sp)
  cc:	afb00018 	sw	s0,24(sp)
  d0:	afa40170 	sw	a0,368(sp)
  d4:	afa50174 	sw	a1,372(sp)
  d8:	afa60178 	sw	a2,376(sp)
  dc:	8c900000 	lw	s0,0(a0)
  e0:	3c060000 	lui	a2,0x0
  e4:	24c60000 	addiu	a2,a2,0
  e8:	27a40048 	addiu	a0,sp,72
  ec:	240700a8 	li	a3,168
  f0:	0c000000 	jal	0 <EffectSsBomb_Init>
  f4:	02002825 	move	a1,s0
  f8:	8fa20178 	lw	v0,376(sp)
  fc:	3c0142c8 	lui	at,0x42c8
 100:	44814000 	mtc1	at,$f8
 104:	844f0040 	lh	t7,64(v0)
 108:	8c450000 	lw	a1,0(v0)
 10c:	8c460004 	lw	a2,4(v0)
 110:	448f2000 	mtc1	t7,$f4
 114:	8c470008 	lw	a3,8(v0)
 118:	27a4012c 	addiu	a0,sp,300
 11c:	468021a0 	cvt.s.w	$f6,$f4
 120:	46083003 	div.s	$f0,$f6,$f8
 124:	0c000000 	jal	0 <EffectSsBomb_Init>
 128:	e7a00060 	swc1	$f0,96(sp)
 12c:	c7a00060 	lwc1	$f0,96(sp)
 130:	27a400ec 	addiu	a0,sp,236
 134:	3c073f80 	lui	a3,0x3f80
 138:	44050000 	mfc1	a1,$f0
 13c:	44060000 	mfc1	a2,$f0
 140:	0c000000 	jal	0 <EffectSsBomb_Init>
 144:	00000000 	nop
 148:	8fa50170 	lw	a1,368(sp)
 14c:	3c010001 	lui	at,0x1
 150:	34211da0 	ori	at,at,0x1da0
 154:	27a4012c 	addiu	a0,sp,300
 158:	27a6006c 	addiu	a2,sp,108
 15c:	0c000000 	jal	0 <EffectSsBomb_Init>
 160:	00a12821 	addu	a1,a1,at
 164:	27a4006c 	addiu	a0,sp,108
 168:	27a500ec 	addiu	a1,sp,236
 16c:	0c000000 	jal	0 <EffectSsBomb_Init>
 170:	27a600ac 	addiu	a2,sp,172
 174:	8e0302d0 	lw	v1,720(s0)
 178:	3c19da38 	lui	t9,0xda38
 17c:	3c080000 	lui	t0,0x0
 180:	24780008 	addiu	t8,v1,8
 184:	ae1802d0 	sw	t8,720(s0)
 188:	25080000 	addiu	t0,t0,0
 18c:	37390003 	ori	t9,t9,0x3
 190:	02002025 	move	a0,s0
 194:	27a500ac 	addiu	a1,sp,172
 198:	ac790000 	sw	t9,0(v1)
 19c:	0c000000 	jal	0 <EffectSsBomb_Init>
 1a0:	ac680004 	sw	t0,4(v1)
 1a4:	10400055 	beqz	v0,2fc <EffectSsBomb_Draw+0x238>
 1a8:	00000000 	nop
 1ac:	8e0302d0 	lw	v1,720(s0)
 1b0:	3c0ada38 	lui	t2,0xda38
 1b4:	354a0003 	ori	t2,t2,0x3
 1b8:	24690008 	addiu	t1,v1,8
 1bc:	ae0902d0 	sw	t1,720(s0)
 1c0:	ac620004 	sw	v0,4(v1)
 1c4:	ac6a0000 	sw	t2,0(v1)
 1c8:	8e0302d0 	lw	v1,720(s0)
 1cc:	3c0cdb06 	lui	t4,0xdb06
 1d0:	358c0020 	ori	t4,t4,0x20
 1d4:	246b0008 	addiu	t3,v1,8
 1d8:	ae0b02d0 	sw	t3,720(s0)
 1dc:	ac6c0000 	sw	t4,0(v1)
 1e0:	8fad0178 	lw	t5,376(sp)
 1e4:	3c040000 	lui	a0,0x0
 1e8:	3c0a0000 	lui	t2,0x0
 1ec:	85ae0042 	lh	t6,66(t5)
 1f0:	3c0100ff 	lui	at,0xff
 1f4:	3421ffff 	ori	at,at,0xffff
 1f8:	000e7880 	sll	t7,t6,0x2
 1fc:	008f2021 	addu	a0,a0,t7
 200:	8c840008 	lw	a0,8(a0)
 204:	3c06e700 	lui	a2,0xe700
 208:	0004c900 	sll	t9,a0,0x4
 20c:	00194702 	srl	t0,t9,0x1c
 210:	00084880 	sll	t1,t0,0x2
 214:	01495021 	addu	t2,t2,t1
 218:	8d4a0000 	lw	t2,0(t2)
 21c:	0081c024 	and	t8,a0,at
 220:	3c018000 	lui	at,0x8000
 224:	030a5821 	addu	t3,t8,t2
 228:	01616021 	addu	t4,t3,at
 22c:	ac6c0004 	sw	t4,4(v1)
 230:	8e0302d0 	lw	v1,720(s0)
 234:	02002025 	move	a0,s0
 238:	246d0008 	addiu	t5,v1,8
 23c:	ae0d02d0 	sw	t5,720(s0)
 240:	ac600004 	sw	zero,4(v1)
 244:	0c000000 	jal	0 <EffectSsBomb_Init>
 248:	ac660000 	sw	a2,0(v1)
 24c:	8fae0178 	lw	t6,376(sp)
 250:	3c01414c 	lui	at,0x414c
 254:	44819000 	mtc1	at,$f18
 258:	85cf005c 	lh	t7,92(t6)
 25c:	8e0302d0 	lw	v1,720(s0)
 260:	3c09fa00 	lui	t1,0xfa00
 264:	448f5000 	mtc1	t7,$f10
 268:	24680008 	addiu	t0,v1,8
 26c:	ae0802d0 	sw	t0,720(s0)
 270:	46805420 	cvt.s.w	$f16,$f10
 274:	ac690000 	sw	t1,0(v1)
 278:	3c06e700 	lui	a2,0xe700
 27c:	3c08de00 	lui	t0,0xde00
 280:	46128102 	mul.s	$f4,$f16,$f18
 284:	4600218d 	trunc.w.s	$f6,$f4
 288:	44053000 	mfc1	a1,$f6
 28c:	00000000 	nop
 290:	00052c00 	sll	a1,a1,0x10
 294:	00052c03 	sra	a1,a1,0x10
 298:	30a200ff 	andi	v0,a1,0xff
 29c:	0002c600 	sll	t8,v0,0x18
 2a0:	00025400 	sll	t2,v0,0x10
 2a4:	030a5825 	or	t3,t8,t2
 2a8:	00026200 	sll	t4,v0,0x8
 2ac:	016c6825 	or	t5,t3,t4
 2b0:	01a27025 	or	t6,t5,v0
 2b4:	ac6e0004 	sw	t6,4(v1)
 2b8:	8e0302d0 	lw	v1,720(s0)
 2bc:	246f0008 	addiu	t7,v1,8
 2c0:	ae0f02d0 	sw	t7,720(s0)
 2c4:	ac600004 	sw	zero,4(v1)
 2c8:	ac660000 	sw	a2,0(v1)
 2cc:	8e0302d0 	lw	v1,720(s0)
 2d0:	24790008 	addiu	t9,v1,8
 2d4:	ae1902d0 	sw	t9,720(s0)
 2d8:	ac680000 	sw	t0,0(v1)
 2dc:	8fa90178 	lw	t1,376(sp)
 2e0:	8d380038 	lw	t8,56(t1)
 2e4:	ac780004 	sw	t8,4(v1)
 2e8:	8e0302d0 	lw	v1,720(s0)
 2ec:	246a0008 	addiu	t2,v1,8
 2f0:	ae0a02d0 	sw	t2,720(s0)
 2f4:	ac600004 	sw	zero,4(v1)
 2f8:	ac660000 	sw	a2,0(v1)
 2fc:	3c060000 	lui	a2,0x0
 300:	24c60014 	addiu	a2,a2,20
 304:	27a40048 	addiu	a0,sp,72
 308:	02002825 	move	a1,s0
 30c:	0c000000 	jal	0 <EffectSsBomb_Init>
 310:	240700d6 	li	a3,214
 314:	8fbf001c 	lw	ra,28(sp)
 318:	8fb00018 	lw	s0,24(sp)
 31c:	27bd0170 	addiu	sp,sp,368
 320:	03e00008 	jr	ra
 324:	00000000 	nop

00000328 <EffectSsBomb_Update>:
 328:	27bdffe8 	addiu	sp,sp,-24
 32c:	afbf0014 	sw	ra,20(sp)
 330:	afa40018 	sw	a0,24(sp)
 334:	afa5001c 	sw	a1,28(sp)
 338:	84c2005c 	lh	v0,92(a2)
 33c:	28410015 	slti	at,v0,21
 340:	10200006 	beqz	at,35c <EffectSsBomb_Update+0x34>
 344:	28410011 	slti	at,v0,17
 348:	14200004 	bnez	at,35c <EffectSsBomb_Update+0x34>
 34c:	240e0014 	li	t6,20
 350:	01c27823 	subu	t7,t6,v0
 354:	10000005 	b	36c <EffectSsBomb_Update+0x44>
 358:	a4cf0042 	sh	t7,66(a2)
 35c:	84d80040 	lh	t8,64(a2)
 360:	24190003 	li	t9,3
 364:	a4d90042 	sh	t9,66(a2)
 368:	a4d80040 	sh	t8,64(a2)
 36c:	0c000000 	jal	0 <EffectSsBomb_Init>
 370:	afa60020 	sw	a2,32(sp)
 374:	3c010000 	lui	at,0x0
 378:	c4240028 	lwc1	$f4,40(at)
 37c:	3c010000 	lui	at,0x0
 380:	c428002c 	lwc1	$f8,44(at)
 384:	46040182 	mul.s	$f6,$f0,$f4
 388:	8fa60020 	lw	a2,32(sp)
 38c:	46083281 	sub.s	$f10,$f6,$f8
 390:	0c000000 	jal	0 <EffectSsBomb_Init>
 394:	e4ca0018 	swc1	$f10,24(a2)
 398:	3c010000 	lui	at,0x0
 39c:	c4300030 	lwc1	$f16,48(at)
 3a0:	3c010000 	lui	at,0x0
 3a4:	c4240034 	lwc1	$f4,52(at)
 3a8:	46100482 	mul.s	$f18,$f0,$f16
 3ac:	8fa60020 	lw	a2,32(sp)
 3b0:	46049181 	sub.s	$f6,$f18,$f4
 3b4:	e4c60020 	swc1	$f6,32(a2)
 3b8:	8fbf0014 	lw	ra,20(sp)
 3bc:	27bd0018 	addiu	sp,sp,24
 3c0:	03e00008 	jr	ra
 3c4:	00000000 	nop
	...
