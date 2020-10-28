
build/src/overlays/actors/ovl_En_Okarina_Effect/z_en_okarina_effect.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <EnOkarinaEffect_SetupAction>:
   0:	03e00008 	jr	ra
   4:	ac850150 	sw	a1,336(a0)

00000008 <EnOkarinaEffect_Destroy>:
   8:	27bdffe8 	addiu	sp,sp,-24
   c:	3c010001 	lui	at,0x1
  10:	afbf0014 	sw	ra,20(sp)
  14:	afa40018 	sw	a0,24(sp)
  18:	00a11021 	addu	v0,a1,at
  1c:	a0400b16 	sb	zero,2838(v0)
  20:	3c030000 	lui	v1,0x0
  24:	90630000 	lbu	v1,0(v1)
  28:	24010004 	li	at,4
  2c:	00a02025 	move	a0,a1
  30:	1061000d 	beq	v1,at,68 <EnOkarinaEffect_Destroy+0x60>
  34:	24010005 	li	at,5
  38:	5061000c 	beql	v1,at,6c <EnOkarinaEffect_Destroy+0x64>
  3c:	3c010001 	lui	at,0x1
  40:	904e0b01 	lbu	t6,2817(v0)
  44:	24010001 	li	at,1
  48:	240f0002 	li	t7,2
  4c:	15c10006 	bne	t6,at,68 <EnOkarinaEffect_Destroy+0x60>
  50:	3c010001 	lui	at,0x1
  54:	00250821 	addu	at,at,a1
  58:	a02f0b01 	sb	t7,2817(at)
  5c:	0c000000 	jal	0 <EnOkarinaEffect_SetupAction>
  60:	afa5001c 	sw	a1,28(sp)
  64:	8fa4001c 	lw	a0,28(sp)
  68:	3c010001 	lui	at,0x1
  6c:	00240821 	addu	at,at,a0
  70:	24180002 	li	t8,2
  74:	a0380b03 	sb	t8,2819(at)
  78:	8fbf0014 	lw	ra,20(sp)
  7c:	27bd0018 	addiu	sp,sp,24
  80:	03e00008 	jr	ra
  84:	00000000 	nop

00000088 <EnOkarinaEffect_Init>:
  88:	27bdffe8 	addiu	sp,sp,-24
  8c:	afa40018 	sw	a0,24(sp)
  90:	afbf0014 	sw	ra,20(sp)
  94:	3c040000 	lui	a0,0x0
  98:	afa5001c 	sw	a1,28(sp)
  9c:	0c000000 	jal	0 <EnOkarinaEffect_SetupAction>
  a0:	24840000 	addiu	a0,a0,0
  a4:	3c040000 	lui	a0,0x0
  a8:	0c000000 	jal	0 <EnOkarinaEffect_SetupAction>
  ac:	24840004 	addiu	a0,a0,4
  b0:	3c040000 	lui	a0,0x0
  b4:	0c000000 	jal	0 <EnOkarinaEffect_SetupAction>
  b8:	24840048 	addiu	a0,a0,72
  bc:	8fae001c 	lw	t6,28(sp)
  c0:	3c0f0001 	lui	t7,0x1
  c4:	01ee7821 	addu	t7,t7,t6
  c8:	91ef0b13 	lbu	t7,2835(t7)
  cc:	11e00003 	beqz	t7,dc <EnOkarinaEffect_Init+0x54>
  d0:	00000000 	nop
  d4:	0c000000 	jal	0 <EnOkarinaEffect_SetupAction>
  d8:	8fa40018 	lw	a0,24(sp)
  dc:	3c050000 	lui	a1,0x0
  e0:	24a50000 	addiu	a1,a1,0
  e4:	0c000000 	jal	0 <EnOkarinaEffect_SetupAction>
  e8:	8fa40018 	lw	a0,24(sp)
  ec:	8fbf0014 	lw	ra,20(sp)
  f0:	27bd0018 	addiu	sp,sp,24
  f4:	03e00008 	jr	ra
  f8:	00000000 	nop

000000fc <EnOkarinaEffect_TriggerStorm>:
  fc:	27bdffe8 	addiu	sp,sp,-24
 100:	3c010001 	lui	at,0x1
 104:	afbf0014 	sw	ra,20(sp)
 108:	240e0190 	li	t6,400
 10c:	00a11021 	addu	v0,a1,at
 110:	a48e014c 	sh	t6,332(a0)
 114:	240f0014 	li	t7,20
 118:	24030001 	li	v1,1
 11c:	a04f0b16 	sb	t7,2838(v0)
 120:	00250821 	addu	at,at,a1
 124:	a0230b01 	sb	v1,2817(at)
 128:	3c180000 	lui	t8,0x0
 12c:	93180000 	lbu	t8,0(t8)
 130:	00803025 	move	a2,a0
 134:	3c010001 	lui	at,0x1
 138:	17000003 	bnez	t8,148 <EnOkarinaEffect_TriggerStorm+0x4c>
 13c:	00a02025 	move	a0,a1
 140:	90590a3b 	lbu	t9,2619(v0)
 144:	13200002 	beqz	t9,150 <EnOkarinaEffect_TriggerStorm+0x54>
 148:	00250821 	addu	at,at,a1
 14c:	a0230b02 	sb	v1,2818(at)
 150:	3c010001 	lui	at,0x1
 154:	00250821 	addu	at,at,a1
 158:	a0230b03 	sb	v1,2819(at)
 15c:	0c000000 	jal	0 <EnOkarinaEffect_SetupAction>
 160:	afa60018 	sw	a2,24(sp)
 164:	3c050000 	lui	a1,0x0
 168:	8fa40018 	lw	a0,24(sp)
 16c:	0c000000 	jal	0 <EnOkarinaEffect_SetupAction>
 170:	24a50000 	addiu	a1,a1,0
 174:	8fbf0014 	lw	ra,20(sp)
 178:	27bd0018 	addiu	sp,sp,24
 17c:	03e00008 	jr	ra
 180:	00000000 	nop

00000184 <EnOkarinaEffect_ManageStorm>:
 184:	27bdffe0 	addiu	sp,sp,-32
 188:	afa40020 	sw	a0,32(sp)
 18c:	afbf0014 	sw	ra,20(sp)
 190:	afa50024 	sw	a1,36(sp)
 194:	00a02025 	move	a0,a1
 198:	0c000000 	jal	0 <EnOkarinaEffect_SetupAction>
 19c:	24050005 	li	a1,5
 1a0:	8fae0024 	lw	t6,36(sp)
 1a4:	3c010001 	lui	at,0x1
 1a8:	3c180001 	lui	t8,0x1
 1ac:	01c17821 	addu	t7,t6,at
 1b0:	afaf001c 	sw	t7,28(sp)
 1b4:	030ec021 	addu	t8,t8,t6
 1b8:	97180934 	lhu	t8,2356(t8)
 1bc:	3c190001 	lui	t9,0x1
 1c0:	032ec821 	addu	t9,t9,t6
 1c4:	57000015 	bnezl	t8,21c <EnOkarinaEffect_ManageStorm+0x98>
 1c8:	8fa30020 	lw	v1,32(sp)
 1cc:	97390a20 	lhu	t9,2592(t9)
 1d0:	3c080001 	lui	t0,0x1
 1d4:	010e4021 	addu	t0,t0,t6
 1d8:	57200010 	bnezl	t9,21c <EnOkarinaEffect_ManageStorm+0x98>
 1dc:	8fa30020 	lw	v1,32(sp)
 1e0:	8d0803d8 	lw	t0,984(t0)
 1e4:	5500000d 	bnezl	t0,21c <EnOkarinaEffect_ManageStorm+0x98>
 1e8:	8fa30020 	lw	v1,32(sp)
 1ec:	0c000000 	jal	0 <EnOkarinaEffect_SetupAction>
 1f0:	01c02025 	move	a0,t6
 1f4:	14400008 	bnez	v0,218 <EnOkarinaEffect_ManageStorm+0x94>
 1f8:	8fa9001c 	lw	t1,28(sp)
 1fc:	912a241b 	lbu	t2,9243(t1)
 200:	3c0b0000 	lui	t3,0x0
 204:	5140000a 	beqzl	t2,230 <EnOkarinaEffect_ManageStorm+0xac>
 208:	8fad001c 	lw	t5,28(sp)
 20c:	8d6b135c 	lw	t3,4956(t3)
 210:	55600007 	bnezl	t3,230 <EnOkarinaEffect_ManageStorm+0xac>
 214:	8fad001c 	lw	t5,28(sp)
 218:	8fa30020 	lw	v1,32(sp)
 21c:	946c014c 	lhu	t4,332(v1)
 220:	298100fa 	slti	at,t4,250
 224:	1420001c 	bnez	at,298 <EnOkarinaEffect_ManageStorm+0x114>
 228:	00000000 	nop
 22c:	8fad001c 	lw	t5,28(sp)
 230:	8fa30020 	lw	v1,32(sp)
 234:	3c040000 	lui	a0,0x0
 238:	91af0a42 	lbu	t7,2626(t5)
 23c:	9462014c 	lhu	v0,332(v1)
 240:	2484004c 	addiu	a0,a0,76
 244:	15e00005 	bnez	t7,25c <EnOkarinaEffect_ManageStorm+0xd8>
 248:	2459ffff 	addiu	t9,v0,-1
 24c:	91b80a43 	lbu	t8,2627(t5)
 250:	24010001 	li	at,1
 254:	13010003 	beq	t8,at,264 <EnOkarinaEffect_ManageStorm+0xe0>
 258:	00000000 	nop
 25c:	a479014c 	sh	t9,332(v1)
 260:	3322ffff 	andi	v0,t9,0xffff
 264:	0c000000 	jal	0 <EnOkarinaEffect_SetupAction>
 268:	00402825 	move	a1,v0
 26c:	8fa80020 	lw	t0,32(sp)
 270:	24010134 	li	at,308
 274:	3c040000 	lui	a0,0x0
 278:	950e014c 	lhu	t6,332(t0)
 27c:	15c10006 	bne	t6,at,298 <EnOkarinaEffect_ManageStorm+0x114>
 280:	00000000 	nop
 284:	0c000000 	jal	0 <EnOkarinaEffect_SetupAction>
 288:	24840060 	addiu	a0,a0,96
 28c:	8fa40024 	lw	a0,36(sp)
 290:	0c000000 	jal	0 <EnOkarinaEffect_SetupAction>
 294:	24050005 	li	a1,5
 298:	3c090000 	lui	t1,0x0
 29c:	91290000 	lbu	t1,0(t1)
 2a0:	8fa30020 	lw	v1,32(sp)
 2a4:	51200003 	beqzl	t1,2b4 <EnOkarinaEffect_ManageStorm+0x130>
 2a8:	946a014c 	lhu	t2,332(v1)
 2ac:	a460014c 	sh	zero,332(v1)
 2b0:	946a014c 	lhu	t2,332(v1)
 2b4:	8fab001c 	lw	t3,28(sp)
 2b8:	5540003e 	bnezl	t2,3b4 <EnOkarinaEffect_ManageStorm+0x230>
 2bc:	8fbf0014 	lw	ra,20(sp)
 2c0:	a1600b16 	sb	zero,2838(t3)
 2c4:	8fac0024 	lw	t4,36(sp)
 2c8:	918f1d6c 	lbu	t7,7532(t4)
 2cc:	15e00005 	bnez	t7,2e4 <EnOkarinaEffect_ManageStorm+0x160>
 2d0:	00000000 	nop
 2d4:	0c000000 	jal	0 <EnOkarinaEffect_SetupAction>
 2d8:	01802025 	move	a0,t4
 2dc:	1000000d 	b	314 <EnOkarinaEffect_ManageStorm+0x190>
 2e0:	00000000 	nop
 2e4:	0c000000 	jal	0 <EnOkarinaEffect_SetupAction>
 2e8:	00002025 	move	a0,zero
 2ec:	24010001 	li	at,1
 2f0:	14410008 	bne	v0,at,314 <EnOkarinaEffect_ManageStorm+0x190>
 2f4:	2404000f 	li	a0,15
 2f8:	24050001 	li	a1,1
 2fc:	0c000000 	jal	0 <EnOkarinaEffect_SetupAction>
 300:	00003025 	move	a2,zero
 304:	2404000e 	li	a0,14
 308:	24050001 	li	a1,1
 30c:	0c000000 	jal	0 <EnOkarinaEffect_SetupAction>
 310:	00003025 	move	a2,zero
 314:	3c040000 	lui	a0,0x0
 318:	3c050000 	lui	a1,0x0
 31c:	90a50000 	lbu	a1,0(a1)
 320:	0c000000 	jal	0 <EnOkarinaEffect_SetupAction>
 324:	24840078 	addiu	a0,a0,120
 328:	8fad001c 	lw	t5,28(sp)
 32c:	3c040000 	lui	a0,0x0
 330:	24840090 	addiu	a0,a0,144
 334:	0c000000 	jal	0 <EnOkarinaEffect_SetupAction>
 338:	91a50b01 	lbu	a1,2817(t5)
 33c:	3c180000 	lui	t8,0x0
 340:	93180000 	lbu	t8,0(t8)
 344:	8fb9001c 	lw	t9,28(sp)
 348:	8faa0024 	lw	t2,36(sp)
 34c:	5700000b 	bnezl	t8,37c <EnOkarinaEffect_ManageStorm+0x1f8>
 350:	3c010001 	lui	at,0x1
 354:	93280b01 	lbu	t0,2817(t9)
 358:	24010001 	li	at,1
 35c:	8fa90024 	lw	t1,36(sp)
 360:	15010005 	bne	t0,at,378 <EnOkarinaEffect_ManageStorm+0x1f4>
 364:	3c010001 	lui	at,0x1
 368:	00290821 	addu	at,at,t1
 36c:	240e0002 	li	t6,2
 370:	10000008 	b	394 <EnOkarinaEffect_ManageStorm+0x210>
 374:	a02e0b01 	sb	t6,2817(at)
 378:	3c010001 	lui	at,0x1
 37c:	002a0821 	addu	at,at,t2
 380:	a0200b01 	sb	zero,2817(at)
 384:	8fab0024 	lw	t3,36(sp)
 388:	3c010001 	lui	at,0x1
 38c:	002b0821 	addu	at,at,t3
 390:	a0200b02 	sb	zero,2818(at)
 394:	8fac0024 	lw	t4,36(sp)
 398:	3c010001 	lui	at,0x1
 39c:	240f0002 	li	t7,2
 3a0:	002c0821 	addu	at,at,t4
 3a4:	a02f0b03 	sb	t7,2819(at)
 3a8:	0c000000 	jal	0 <EnOkarinaEffect_SetupAction>
 3ac:	8fa40020 	lw	a0,32(sp)
 3b0:	8fbf0014 	lw	ra,20(sp)
 3b4:	27bd0020 	addiu	sp,sp,32
 3b8:	03e00008 	jr	ra
 3bc:	00000000 	nop

000003c0 <EnOkarinaEffect_Update>:
 3c0:	27bdffb8 	addiu	sp,sp,-72
 3c4:	afbf0044 	sw	ra,68(sp)
 3c8:	afa5004c 	sw	a1,76(sp)
 3cc:	afa40048 	sw	a0,72(sp)
 3d0:	8c990150 	lw	t9,336(a0)
 3d4:	0320f809 	jalr	t9
 3d8:	00000000 	nop
 3dc:	3c0e0000 	lui	t6,0x0
 3e0:	8dce0000 	lw	t6,0(t6)
 3e4:	8fa40048 	lw	a0,72(sp)
 3e8:	3c013f80 	lui	at,0x3f80
 3ec:	85cf12d4 	lh	t7,4820(t6)
 3f0:	240900ff 	li	t1,255
 3f4:	240a00ff 	li	t2,255
 3f8:	11e00017 	beqz	t7,458 <EnOkarinaEffect_Update+0x98>
 3fc:	240b00ff 	li	t3,255
 400:	84980032 	lh	t8,50(a0)
 404:	c48c0024 	lwc1	$f12,36(a0)
 408:	c48e0028 	lwc1	$f14,40(a0)
 40c:	8c86002c 	lw	a2,44(a0)
 410:	84870030 	lh	a3,48(a0)
 414:	afb80010 	sw	t8,16(sp)
 418:	84880034 	lh	t0,52(a0)
 41c:	44810000 	mtc1	at,$f0
 420:	8fad004c 	lw	t5,76(sp)
 424:	240c0004 	li	t4,4
 428:	afac0034 	sw	t4,52(sp)
 42c:	afab0030 	sw	t3,48(sp)
 430:	afaa002c 	sw	t2,44(sp)
 434:	afa00028 	sw	zero,40(sp)
 438:	afa90024 	sw	t1,36(sp)
 43c:	afa80014 	sw	t0,20(sp)
 440:	e7a00018 	swc1	$f0,24(sp)
 444:	e7a0001c 	swc1	$f0,28(sp)
 448:	e7a00020 	swc1	$f0,32(sp)
 44c:	8db90000 	lw	t9,0(t5)
 450:	0c000000 	jal	0 <EnOkarinaEffect_SetupAction>
 454:	afb90038 	sw	t9,56(sp)
 458:	8fbf0044 	lw	ra,68(sp)
 45c:	27bd0048 	addiu	sp,sp,72
 460:	03e00008 	jr	ra
 464:	00000000 	nop
	...
