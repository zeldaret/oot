
build/src/overlays/actors/ovl_Bg_Spot12_Saku/z_bg_spot12_saku.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <func_808B3420>:
   0:	27bdffc8 	addiu	sp,sp,-56
   4:	afbf0024 	sw	ra,36(sp)
   8:	afb00020 	sw	s0,32(sp)
   c:	afa5003c 	sw	a1,60(sp)
  10:	00808025 	move	s0,a0
  14:	afa60040 	sw	a2,64(sp)
  18:	afa00030 	sw	zero,48(sp)
  1c:	0c000000 	jal	0 <func_808B3420>
  20:	00e02825 	move	a1,a3
  24:	8fa40040 	lw	a0,64(sp)
  28:	0c000000 	jal	0 <func_808B3420>
  2c:	27a50030 	addiu	a1,sp,48
  30:	8fa4003c 	lw	a0,60(sp)
  34:	02003025 	move	a2,s0
  38:	8fa70030 	lw	a3,48(sp)
  3c:	0c000000 	jal	0 <func_808B3420>
  40:	24850810 	addiu	a1,a0,2064
  44:	24010032 	li	at,50
  48:	1441000a 	bne	v0,at,74 <func_808B3420+0x74>
  4c:	ae02014c 	sw	v0,332(s0)
  50:	860e001c 	lh	t6,28(s0)
  54:	3c040000 	lui	a0,0x0
  58:	3c050000 	lui	a1,0x0
  5c:	86070000 	lh	a3,0(s0)
  60:	24a50040 	addiu	a1,a1,64
  64:	24840000 	addiu	a0,a0,0
  68:	2406008c 	li	a2,140
  6c:	0c000000 	jal	0 <func_808B3420>
  70:	afae0010 	sw	t6,16(sp)
  74:	8fbf0024 	lw	ra,36(sp)
  78:	8fb00020 	lw	s0,32(sp)
  7c:	27bd0038 	addiu	sp,sp,56
  80:	03e00008 	jr	ra
  84:	00000000 	nop

00000088 <BgSpot12Saku_Init>:
  88:	27bdffe0 	addiu	sp,sp,-32
  8c:	afbf001c 	sw	ra,28(sp)
  90:	afb00018 	sw	s0,24(sp)
  94:	3c060000 	lui	a2,0x0
  98:	00808025 	move	s0,a0
  9c:	afa50024 	sw	a1,36(sp)
  a0:	24c60000 	addiu	a2,a2,0
  a4:	0c000000 	jal	0 <func_808B3420>
  a8:	00003825 	move	a3,zero
  ac:	3c050000 	lui	a1,0x0
  b0:	24a50020 	addiu	a1,a1,32
  b4:	0c000000 	jal	0 <func_808B3420>
  b8:	02002025 	move	a0,s0
  bc:	8605001c 	lh	a1,28(s0)
  c0:	8fa40024 	lw	a0,36(sp)
  c4:	0c000000 	jal	0 <func_808B3420>
  c8:	30a5003f 	andi	a1,a1,0x3f
  cc:	10400005 	beqz	v0,e4 <BgSpot12Saku_Init+0x5c>
  d0:	00000000 	nop
  d4:	0c000000 	jal	0 <func_808B3420>
  d8:	02002025 	move	a0,s0
  dc:	10000004 	b	f0 <BgSpot12Saku_Init+0x68>
  e0:	8fbf001c 	lw	ra,28(sp)
  e4:	0c000000 	jal	0 <func_808B3420>
  e8:	02002025 	move	a0,s0
  ec:	8fbf001c 	lw	ra,28(sp)
  f0:	8fb00018 	lw	s0,24(sp)
  f4:	27bd0020 	addiu	sp,sp,32
  f8:	03e00008 	jr	ra
  fc:	00000000 	nop

00000100 <BgSpot12Saku_Destroy>:
 100:	27bdffe8 	addiu	sp,sp,-24
 104:	afa40018 	sw	a0,24(sp)
 108:	8fae0018 	lw	t6,24(sp)
 10c:	afbf0014 	sw	ra,20(sp)
 110:	00a02025 	move	a0,a1
 114:	24a50810 	addiu	a1,a1,2064
 118:	0c000000 	jal	0 <func_808B3420>
 11c:	8dc6014c 	lw	a2,332(t6)
 120:	8fbf0014 	lw	ra,20(sp)
 124:	27bd0018 	addiu	sp,sp,24
 128:	03e00008 	jr	ra
 12c:	00000000 	nop

00000130 <func_808B3550>:
 130:	3c0e0000 	lui	t6,0x0
 134:	25ce0000 	addiu	t6,t6,0
 138:	ac8e0164 	sw	t6,356(a0)
 13c:	3c010000 	lui	at,0x0
 140:	c4240058 	lwc1	$f4,88(at)
 144:	c4860008 	lwc1	$f6,8(a0)
 148:	c4880010 	lwc1	$f8,16(a0)
 14c:	e4840050 	swc1	$f4,80(a0)
 150:	e4860024 	swc1	$f6,36(a0)
 154:	03e00008 	jr	ra
 158:	e488002c 	swc1	$f8,44(a0)

0000015c <func_808B357C>:
 15c:	27bdffe0 	addiu	sp,sp,-32
 160:	afa40020 	sw	a0,32(sp)
 164:	8fae0020 	lw	t6,32(sp)
 168:	afbf001c 	sw	ra,28(sp)
 16c:	afa50024 	sw	a1,36(sp)
 170:	00a02025 	move	a0,a1
 174:	85c5001c 	lh	a1,28(t6)
 178:	0c000000 	jal	0 <func_808B3420>
 17c:	30a5003f 	andi	a1,a1,0x3f
 180:	5040000d 	beqzl	v0,1b8 <func_808B357C+0x5c>
 184:	8fbf001c 	lw	ra,28(sp)
 188:	0c000000 	jal	0 <func_808B3420>
 18c:	8fa40020 	lw	a0,32(sp)
 190:	8fb80020 	lw	t8,32(sp)
 194:	240f0014 	li	t7,20
 198:	2405104a 	li	a1,4170
 19c:	a70f0168 	sh	t7,360(t8)
 1a0:	afa00010 	sw	zero,16(sp)
 1a4:	8fa70020 	lw	a3,32(sp)
 1a8:	8fa40024 	lw	a0,36(sp)
 1ac:	0c000000 	jal	0 <func_808B3420>
 1b0:	2406ff9d 	li	a2,-99
 1b4:	8fbf001c 	lw	ra,28(sp)
 1b8:	27bd0020 	addiu	sp,sp,32
 1bc:	03e00008 	jr	ra
 1c0:	00000000 	nop

000001c4 <func_808B35E4>:
 1c4:	848e0168 	lh	t6,360(a0)
 1c8:	3c0f0000 	lui	t7,0x0
 1cc:	25ef0000 	addiu	t7,t7,0
 1d0:	15c00002 	bnez	t6,1dc <func_808B35E4+0x18>
 1d4:	00000000 	nop
 1d8:	ac8f0164 	sw	t7,356(a0)
 1dc:	03e00008 	jr	ra
 1e0:	00000000 	nop

000001e4 <func_808B3604>:
 1e4:	27bdffd0 	addiu	sp,sp,-48
 1e8:	3c010000 	lui	at,0x0
 1ec:	c424005c 	lwc1	$f4,92(at)
 1f0:	afb00020 	sw	s0,32(sp)
 1f4:	afa50034 	sw	a1,52(sp)
 1f8:	00808025 	move	s0,a0
 1fc:	afbf0024 	sw	ra,36(sp)
 200:	3c053bea 	lui	a1,0x3bea
 204:	3c063e23 	lui	a2,0x3e23
 208:	3c073b10 	lui	a3,0x3b10
 20c:	34e72de0 	ori	a3,a3,0x2de0
 210:	34c6d70a 	ori	a2,a2,0xd70a
 214:	34a50ea2 	ori	a1,a1,0xea2
 218:	24840050 	addiu	a0,a0,80
 21c:	0c000000 	jal	0 <func_808B3420>
 220:	e7a40010 	swc1	$f4,16(sp)
 224:	e7a0002c 	swc1	$f0,44(sp)
 228:	3c010000 	lui	at,0x0
 22c:	c4260060 	lwc1	$f6,96(at)
 230:	c6080050 	lwc1	$f8,80(s0)
 234:	3c014452 	lui	at,0x4452
 238:	44818000 	mtc1	at,$f16
 23c:	46083281 	sub.s	$f10,$f6,$f8
 240:	46105482 	mul.s	$f18,$f10,$f16
 244:	e7b20028 	swc1	$f18,40(sp)
 248:	860400b6 	lh	a0,182(s0)
 24c:	24844000 	addiu	a0,a0,16384
 250:	00042400 	sll	a0,a0,0x10
 254:	0c000000 	jal	0 <func_808B3420>
 258:	00042403 	sra	a0,a0,0x10
 25c:	c7a60028 	lwc1	$f6,40(sp)
 260:	c6040008 	lwc1	$f4,8(s0)
 264:	860400b6 	lh	a0,182(s0)
 268:	46060202 	mul.s	$f8,$f0,$f6
 26c:	24844000 	addiu	a0,a0,16384
 270:	00042400 	sll	a0,a0,0x10
 274:	00042403 	sra	a0,a0,0x10
 278:	46082281 	sub.s	$f10,$f4,$f8
 27c:	0c000000 	jal	0 <func_808B3420>
 280:	e60a0024 	swc1	$f10,36(s0)
 284:	c7b20028 	lwc1	$f18,40(sp)
 288:	c6100010 	lwc1	$f16,16(s0)
 28c:	3c010000 	lui	at,0x0
 290:	46120182 	mul.s	$f6,$f0,$f18
 294:	02002025 	move	a0,s0
 298:	46068101 	sub.s	$f4,$f16,$f6
 29c:	e604002c 	swc1	$f4,44(s0)
 2a0:	c7a0002c 	lwc1	$f0,44(sp)
 2a4:	c4280064 	lwc1	$f8,100(at)
 2a8:	46000005 	abs.s	$f0,$f0
 2ac:	4608003c 	c.lt.s	$f0,$f8
 2b0:	00000000 	nop
 2b4:	45000008 	bc1f	2d8 <func_808B3604+0xf4>
 2b8:	00000000 	nop
 2bc:	0c000000 	jal	0 <func_808B3420>
 2c0:	02002025 	move	a0,s0
 2c4:	02002025 	move	a0,s0
 2c8:	0c000000 	jal	0 <func_808B3420>
 2cc:	2405280e 	li	a1,10254
 2d0:	10000004 	b	2e4 <func_808B3604+0x100>
 2d4:	8fbf0024 	lw	ra,36(sp)
 2d8:	0c000000 	jal	0 <func_808B3420>
 2dc:	24052067 	li	a1,8295
 2e0:	8fbf0024 	lw	ra,36(sp)
 2e4:	8fb00020 	lw	s0,32(sp)
 2e8:	27bd0030 	addiu	sp,sp,48
 2ec:	03e00008 	jr	ra
 2f0:	00000000 	nop

000002f4 <func_808B3714>:
 2f4:	27bdffe8 	addiu	sp,sp,-24
 2f8:	3c0e0000 	lui	t6,0x0
 2fc:	afbf0014 	sw	ra,20(sp)
 300:	25ce0000 	addiu	t6,t6,0
 304:	ac8e0164 	sw	t6,356(a0)
 308:	3c010000 	lui	at,0x0
 30c:	c4240068 	lwc1	$f4,104(at)
 310:	00802825 	move	a1,a0
 314:	e4840050 	swc1	$f4,80(a0)
 318:	848400b6 	lh	a0,182(a0)
 31c:	afa50018 	sw	a1,24(sp)
 320:	24844000 	addiu	a0,a0,16384
 324:	00042400 	sll	a0,a0,0x10
 328:	0c000000 	jal	0 <func_808B3420>
 32c:	00042403 	sra	a0,a0,0x10
 330:	3c01429c 	lui	at,0x429c
 334:	44814000 	mtc1	at,$f8
 338:	8fa50018 	lw	a1,24(sp)
 33c:	46080282 	mul.s	$f10,$f0,$f8
 340:	c4a60008 	lwc1	$f6,8(a1)
 344:	84a400b6 	lh	a0,182(a1)
 348:	24844000 	addiu	a0,a0,16384
 34c:	00042400 	sll	a0,a0,0x10
 350:	460a3401 	sub.s	$f16,$f6,$f10
 354:	00042403 	sra	a0,a0,0x10
 358:	0c000000 	jal	0 <func_808B3420>
 35c:	e4b00024 	swc1	$f16,36(a1)
 360:	3c01429c 	lui	at,0x429c
 364:	44812000 	mtc1	at,$f4
 368:	8fa50018 	lw	a1,24(sp)
 36c:	46040202 	mul.s	$f8,$f0,$f4
 370:	c4b20010 	lwc1	$f18,16(a1)
 374:	46089181 	sub.s	$f6,$f18,$f8
 378:	e4a6002c 	swc1	$f6,44(a1)
 37c:	8fbf0014 	lw	ra,20(sp)
 380:	27bd0018 	addiu	sp,sp,24
 384:	03e00008 	jr	ra
 388:	00000000 	nop

0000038c <func_808B37AC>:
 38c:	afa40000 	sw	a0,0(sp)
 390:	03e00008 	jr	ra
 394:	afa50004 	sw	a1,4(sp)

00000398 <BgSpot12Saku_Update>:
 398:	27bdffe8 	addiu	sp,sp,-24
 39c:	afbf0014 	sw	ra,20(sp)
 3a0:	84820168 	lh	v0,360(a0)
 3a4:	18400002 	blez	v0,3b0 <BgSpot12Saku_Update+0x18>
 3a8:	244effff 	addiu	t6,v0,-1
 3ac:	a48e0168 	sh	t6,360(a0)
 3b0:	8c990164 	lw	t9,356(a0)
 3b4:	0320f809 	jalr	t9
 3b8:	00000000 	nop
 3bc:	8fbf0014 	lw	ra,20(sp)
 3c0:	27bd0018 	addiu	sp,sp,24
 3c4:	03e00008 	jr	ra
 3c8:	00000000 	nop

000003cc <BgSpot12Saku_Draw>:
 3cc:	27bdffe8 	addiu	sp,sp,-24
 3d0:	afa40018 	sw	a0,24(sp)
 3d4:	00a02025 	move	a0,a1
 3d8:	afbf0014 	sw	ra,20(sp)
 3dc:	3c050000 	lui	a1,0x0
 3e0:	0c000000 	jal	0 <func_808B3420>
 3e4:	24a50000 	addiu	a1,a1,0
 3e8:	8fbf0014 	lw	ra,20(sp)
 3ec:	27bd0018 	addiu	sp,sp,24
 3f0:	03e00008 	jr	ra
 3f4:	00000000 	nop
	...
