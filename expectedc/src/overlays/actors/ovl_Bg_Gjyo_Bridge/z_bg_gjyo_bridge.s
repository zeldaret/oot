
build/src/overlays/actors/ovl_Bg_Gjyo_Bridge/z_bg_gjyo_bridge.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <BgGjyoBridge_Init>:
   0:	27bdffd0 	addiu	sp,sp,-48
   4:	afa50034 	sw	a1,52(sp)
   8:	afbf001c 	sw	ra,28(sp)
   c:	afb00018 	sw	s0,24(sp)
  10:	3c050000 	lui	a1,0x0
  14:	00808025 	move	s0,a0
  18:	afa00024 	sw	zero,36(sp)
  1c:	0c000000 	jal	0 <BgGjyoBridge_Init>
  20:	24a50020 	addiu	a1,a1,32
  24:	02002025 	move	a0,s0
  28:	0c000000 	jal	0 <BgGjyoBridge_Init>
  2c:	00002825 	move	a1,zero
  30:	3c040000 	lui	a0,0x0
  34:	24840000 	addiu	a0,a0,0
  38:	0c000000 	jal	0 <BgGjyoBridge_Init>
  3c:	27a50024 	addiu	a1,sp,36
  40:	8fa40034 	lw	a0,52(sp)
  44:	02003025 	move	a2,s0
  48:	8fa70024 	lw	a3,36(sp)
  4c:	24850810 	addiu	a1,a0,2064
  50:	0c000000 	jal	0 <BgGjyoBridge_Init>
  54:	afa50020 	sw	a1,32(sp)
  58:	8fa50020 	lw	a1,32(sp)
  5c:	ae02014c 	sw	v0,332(s0)
  60:	3c0e0000 	lui	t6,0x0
  64:	95ce0edc 	lhu	t6,3804(t6)
  68:	3c180000 	lui	t8,0x0
  6c:	27180000 	addiu	t8,t8,0
  70:	31cf2000 	andi	t7,t6,0x2000
  74:	51e00004 	beqzl	t7,88 <BgGjyoBridge_Init+0x88>
  78:	ae000134 	sw	zero,308(s0)
  7c:	10000008 	b	a0 <BgGjyoBridge_Init+0xa0>
  80:	ae180164 	sw	t8,356(s0)
  84:	ae000134 	sw	zero,308(s0)
  88:	8fa40034 	lw	a0,52(sp)
  8c:	0c000000 	jal	0 <BgGjyoBridge_Init>
  90:	8e06014c 	lw	a2,332(s0)
  94:	3c190000 	lui	t9,0x0
  98:	27390000 	addiu	t9,t9,0
  9c:	ae190164 	sw	t9,356(s0)
  a0:	8fbf001c 	lw	ra,28(sp)
  a4:	8fb00018 	lw	s0,24(sp)
  a8:	27bd0030 	addiu	sp,sp,48
  ac:	03e00008 	jr	ra
  b0:	00000000 	nop

000000b4 <BgGjyoBridge_Destroy>:
  b4:	27bdffe8 	addiu	sp,sp,-24
  b8:	afa40018 	sw	a0,24(sp)
  bc:	8fae0018 	lw	t6,24(sp)
  c0:	afbf0014 	sw	ra,20(sp)
  c4:	00a02025 	move	a0,a1
  c8:	24a50810 	addiu	a1,a1,2064
  cc:	0c000000 	jal	0 <BgGjyoBridge_Init>
  d0:	8dc6014c 	lw	a2,332(t6)
  d4:	8fbf0014 	lw	ra,20(sp)
  d8:	27bd0018 	addiu	sp,sp,24
  dc:	03e00008 	jr	ra
  e0:	00000000 	nop

000000e4 <func_808787A4>:
  e4:	afa40000 	sw	a0,0(sp)
  e8:	03e00008 	jr	ra
  ec:	afa50004 	sw	a1,4(sp)

000000f0 <BgGjyoBridge_TriggerCutscene>:
  f0:	3c060000 	lui	a2,0x0
  f4:	3c070000 	lui	a3,0x0
  f8:	24e70000 	addiu	a3,a3,0
  fc:	24c60000 	addiu	a2,a2,0
 100:	8cce000c 	lw	t6,12(a2)
 104:	8ce200a4 	lw	v0,164(a3)
 108:	27bdffe8 	addiu	sp,sp,-24
 10c:	afbf0014 	sw	ra,20(sp)
 110:	afa40018 	sw	a0,24(sp)
 114:	01c27824 	and	t7,t6,v0
 118:	11e00046 	beqz	t7,234 <BgGjyoBridge_TriggerCutscene+0x144>
 11c:	8ca31c44 	lw	v1,7236(a1)
 120:	8cd80010 	lw	t8,16(a2)
 124:	3c080000 	lui	t0,0x0
 128:	0302c824 	and	t9,t8,v0
 12c:	53200042 	beqzl	t9,238 <BgGjyoBridge_TriggerCutscene+0x148>
 130:	8fbf0014 	lw	ra,20(sp)
 134:	91080012 	lbu	t0,18(t0)
 138:	24010012 	li	at,18
 13c:	00e84821 	addu	t1,a3,t0
 140:	912a0074 	lbu	t2,116(t1)
 144:	1541003b 	bne	t2,at,234 <BgGjyoBridge_TriggerCutscene+0x144>
 148:	3c01c28c 	lui	at,0xc28c
 14c:	44812000 	mtc1	at,$f4
 150:	c4600024 	lwc1	$f0,36(v1)
 154:	3c014396 	lui	at,0x4396
 158:	4600203c 	c.lt.s	$f4,$f0
 15c:	00000000 	nop
 160:	45020035 	bc1fl	238 <BgGjyoBridge_TriggerCutscene+0x148>
 164:	8fbf0014 	lw	ra,20(sp)
 168:	44813000 	mtc1	at,$f6
 16c:	3c010000 	lui	at,0x0
 170:	4606003c 	c.lt.s	$f0,$f6
 174:	00000000 	nop
 178:	4502002f 	bc1fl	238 <BgGjyoBridge_TriggerCutscene+0x148>
 17c:	8fbf0014 	lw	ra,20(sp)
 180:	c4220048 	lwc1	$f2,72(at)
 184:	c4680028 	lwc1	$f8,40(v1)
 188:	4608103c 	c.lt.s	$f2,$f8
 18c:	00000000 	nop
 190:	45020029 	bc1fl	238 <BgGjyoBridge_TriggerCutscene+0x148>
 194:	8fbf0014 	lw	ra,20(sp)
 198:	c460002c 	lwc1	$f0,44(v1)
 19c:	3c010000 	lui	at,0x0
 1a0:	4600103c 	c.lt.s	$f2,$f0
 1a4:	00000000 	nop
 1a8:	45020023 	bc1fl	238 <BgGjyoBridge_TriggerCutscene+0x148>
 1ac:	8fbf0014 	lw	ra,20(sp)
 1b0:	c42a004c 	lwc1	$f10,76(at)
 1b4:	00a02025 	move	a0,a1
 1b8:	460a003c 	c.lt.s	$f0,$f10
 1bc:	00000000 	nop
 1c0:	4502001d 	bc1fl	238 <BgGjyoBridge_TriggerCutscene+0x148>
 1c4:	8fbf0014 	lw	ra,20(sp)
 1c8:	0c000000 	jal	0 <BgGjyoBridge_Init>
 1cc:	afa5001c 	sw	a1,28(sp)
 1d0:	3c070000 	lui	a3,0x0
 1d4:	24e70000 	addiu	a3,a3,0
 1d8:	14400016 	bnez	v0,234 <BgGjyoBridge_TriggerCutscene+0x144>
 1dc:	8fa5001c 	lw	a1,28(sp)
 1e0:	3c020000 	lui	v0,0x0
 1e4:	24420000 	addiu	v0,v0,0
 1e8:	00025900 	sll	t3,v0,0x4
 1ec:	000b6702 	srl	t4,t3,0x1c
 1f0:	000c6880 	sll	t5,t4,0x2
 1f4:	3c0e0000 	lui	t6,0x0
 1f8:	01cd7021 	addu	t6,t6,t5
 1fc:	3c0100ff 	lui	at,0xff
 200:	8dce0000 	lw	t6,0(t6)
 204:	3421ffff 	ori	at,at,0xffff
 208:	00417824 	and	t7,v0,at
 20c:	3c018000 	lui	at,0x8000
 210:	01cfc021 	addu	t8,t6,t7
 214:	0301c821 	addu	t9,t8,at
 218:	acb91d68 	sw	t9,7528(a1)
 21c:	8faa0018 	lw	t2,24(sp)
 220:	24080001 	li	t0,1
 224:	3c090000 	lui	t1,0x0
 228:	a0e81414 	sb	t0,5140(a3)
 22c:	25290000 	addiu	t1,t1,0
 230:	ad490164 	sw	t1,356(t2)
 234:	8fbf0014 	lw	ra,20(sp)
 238:	27bd0018 	addiu	sp,sp,24
 23c:	03e00008 	jr	ra
 240:	00000000 	nop

00000244 <BgGjyoBridge_SpawnBridge>:
 244:	27bdffe8 	addiu	sp,sp,-24
 248:	afbf0014 	sw	ra,20(sp)
 24c:	afa40018 	sw	a0,24(sp)
 250:	90ae1d6c 	lbu	t6,7532(a1)
 254:	51c00015 	beqzl	t6,2ac <BgGjyoBridge_SpawnBridge+0x68>
 258:	8fbf0014 	lw	ra,20(sp)
 25c:	8ca21d94 	lw	v0,7572(a1)
 260:	50400012 	beqzl	v0,2ac <BgGjyoBridge_SpawnBridge+0x68>
 264:	8fbf0014 	lw	ra,20(sp)
 268:	944f0000 	lhu	t7,0(v0)
 26c:	24010002 	li	at,2
 270:	3c180000 	lui	t8,0x0
 274:	15e1000c 	bne	t7,at,2a8 <BgGjyoBridge_SpawnBridge+0x64>
 278:	27180000 	addiu	t8,t8,0
 27c:	ac980134 	sw	t8,308(a0)
 280:	8fa80018 	lw	t0,24(sp)
 284:	00a02025 	move	a0,a1
 288:	24a50810 	addiu	a1,a1,2064
 28c:	0c000000 	jal	0 <BgGjyoBridge_Init>
 290:	8d06014c 	lw	a2,332(t0)
 294:	3c020000 	lui	v0,0x0
 298:	24420000 	addiu	v0,v0,0
 29c:	94490edc 	lhu	t1,3804(v0)
 2a0:	352a2000 	ori	t2,t1,0x2000
 2a4:	a44a0edc 	sh	t2,3804(v0)
 2a8:	8fbf0014 	lw	ra,20(sp)
 2ac:	27bd0018 	addiu	sp,sp,24
 2b0:	03e00008 	jr	ra
 2b4:	00000000 	nop

000002b8 <BgGjyoBridge_Update>:
 2b8:	27bdffe8 	addiu	sp,sp,-24
 2bc:	afbf0014 	sw	ra,20(sp)
 2c0:	8c990164 	lw	t9,356(a0)
 2c4:	0320f809 	jalr	t9
 2c8:	00000000 	nop
 2cc:	8fbf0014 	lw	ra,20(sp)
 2d0:	27bd0018 	addiu	sp,sp,24
 2d4:	03e00008 	jr	ra
 2d8:	00000000 	nop

000002dc <BgGjyoBridge_Draw>:
 2dc:	27bdff90 	addiu	sp,sp,-112
 2e0:	afb10038 	sw	s1,56(sp)
 2e4:	00a08825 	move	s1,a1
 2e8:	afbf003c 	sw	ra,60(sp)
 2ec:	afb00034 	sw	s0,52(sp)
 2f0:	afa40070 	sw	a0,112(sp)
 2f4:	8ca50000 	lw	a1,0(a1)
 2f8:	3c060000 	lui	a2,0x0
 2fc:	24c60000 	addiu	a2,a2,0
 300:	27a40058 	addiu	a0,sp,88
 304:	24070104 	li	a3,260
 308:	0c000000 	jal	0 <BgGjyoBridge_Init>
 30c:	00a08025 	move	s0,a1
 310:	0c000000 	jal	0 <BgGjyoBridge_Init>
 314:	8e240000 	lw	a0,0(s1)
 318:	8e0202d0 	lw	v0,720(s0)
 31c:	3c0fdb06 	lui	t7,0xdb06
 320:	35ef0020 	ori	t7,t7,0x20
 324:	244e0008 	addiu	t6,v0,8
 328:	ae0e02d0 	sw	t6,720(s0)
 32c:	3c010001 	lui	at,0x1
 330:	02214821 	addu	t1,s1,at
 334:	ac4f0000 	sw	t7,0(v0)
 338:	8d231de4 	lw	v1,7652(t1)
 33c:	8e240000 	lw	a0,0(s1)
 340:	24180020 	li	t8,32
 344:	00030823 	negu	at,v1
 348:	00013080 	sll	a2,at,0x2
 34c:	00c13023 	subu	a2,a2,at
 350:	30c6007f 	andi	a2,a2,0x7f
 354:	afb80010 	sw	t8,16(sp)
 358:	afa90044 	sw	t1,68(sp)
 35c:	24070020 	li	a3,32
 360:	afa20054 	sw	v0,84(sp)
 364:	0c000000 	jal	0 <BgGjyoBridge_Init>
 368:	3065007f 	andi	a1,v1,0x7f
 36c:	8fa80054 	lw	t0,84(sp)
 370:	8fa90044 	lw	t1,68(sp)
 374:	3c0adb06 	lui	t2,0xdb06
 378:	ad020004 	sw	v0,4(t0)
 37c:	8e0202d0 	lw	v0,720(s0)
 380:	354a0024 	ori	t2,t2,0x24
 384:	240b0020 	li	t3,32
 388:	24590008 	addiu	t9,v0,8
 38c:	ae1902d0 	sw	t9,720(s0)
 390:	ac4a0000 	sw	t2,0(v0)
 394:	8d231de4 	lw	v1,7652(t1)
 398:	8e240000 	lw	a0,0(s1)
 39c:	240c0020 	li	t4,32
 3a0:	240d0001 	li	t5,1
 3a4:	240f0020 	li	t7,32
 3a8:	24180020 	li	t8,32
 3ac:	00033823 	negu	a3,v1
 3b0:	306e007f 	andi	t6,v1,0x7f
 3b4:	afae0020 	sw	t6,32(sp)
 3b8:	30e7007f 	andi	a3,a3,0x7f
 3bc:	afb80028 	sw	t8,40(sp)
 3c0:	afaf0024 	sw	t7,36(sp)
 3c4:	afad0018 	sw	t5,24(sp)
 3c8:	afac0014 	sw	t4,20(sp)
 3cc:	afa0001c 	sw	zero,28(sp)
 3d0:	afab0010 	sw	t3,16(sp)
 3d4:	00002825 	move	a1,zero
 3d8:	00003025 	move	a2,zero
 3dc:	0c000000 	jal	0 <BgGjyoBridge_Init>
 3e0:	afa20050 	sw	v0,80(sp)
 3e4:	8fa80050 	lw	t0,80(sp)
 3e8:	3c0ada38 	lui	t2,0xda38
 3ec:	354a0003 	ori	t2,t2,0x3
 3f0:	ad020004 	sw	v0,4(t0)
 3f4:	8e0202d0 	lw	v0,720(s0)
 3f8:	3c050000 	lui	a1,0x0
 3fc:	24a50018 	addiu	a1,a1,24
 400:	24590008 	addiu	t9,v0,8
 404:	ae1902d0 	sw	t9,720(s0)
 408:	ac4a0000 	sw	t2,0(v0)
 40c:	8e240000 	lw	a0,0(s1)
 410:	24060119 	li	a2,281
 414:	0c000000 	jal	0 <BgGjyoBridge_Init>
 418:	afa2004c 	sw	v0,76(sp)
 41c:	8fa3004c 	lw	v1,76(sp)
 420:	3c0d0000 	lui	t5,0x0
 424:	25ad0000 	addiu	t5,t5,0
 428:	ac620004 	sw	v0,4(v1)
 42c:	8e0202d0 	lw	v0,720(s0)
 430:	3c0cde00 	lui	t4,0xde00
 434:	3c060000 	lui	a2,0x0
 438:	244b0008 	addiu	t3,v0,8
 43c:	ae0b02d0 	sw	t3,720(s0)
 440:	ac4d0004 	sw	t5,4(v0)
 444:	ac4c0000 	sw	t4,0(v0)
 448:	8e250000 	lw	a1,0(s1)
 44c:	24c60030 	addiu	a2,a2,48
 450:	27a40058 	addiu	a0,sp,88
 454:	0c000000 	jal	0 <BgGjyoBridge_Init>
 458:	2407011d 	li	a3,285
 45c:	8fbf003c 	lw	ra,60(sp)
 460:	8fb00034 	lw	s0,52(sp)
 464:	8fb10038 	lw	s1,56(sp)
 468:	03e00008 	jr	ra
 46c:	27bd0070 	addiu	sp,sp,112
