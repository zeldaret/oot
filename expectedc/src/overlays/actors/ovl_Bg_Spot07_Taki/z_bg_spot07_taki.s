
build/src/overlays/actors/ovl_Bg_Spot07_Taki/z_bg_spot07_taki.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <BgSpot07Taki_Init>:
   0:	27bdffd0 	addiu	sp,sp,-48
   4:	afbf001c 	sw	ra,28(sp)
   8:	afb00018 	sw	s0,24(sp)
   c:	afa50034 	sw	a1,52(sp)
  10:	00808025 	move	s0,a0
  14:	afa00024 	sw	zero,36(sp)
  18:	0c000000 	jal	0 <BgSpot07Taki_Init>
  1c:	24050001 	li	a1,1
  20:	3c050000 	lui	a1,0x0
  24:	24a50000 	addiu	a1,a1,0
  28:	0c000000 	jal	0 <BgSpot07Taki_Init>
  2c:	02002025 	move	a0,s0
  30:	3c0e0000 	lui	t6,0x0
  34:	8dce0004 	lw	t6,4(t6)
  38:	15c00013 	bnez	t6,88 <BgSpot07Taki_Init+0x88>
  3c:	00000000 	nop
  40:	860f001c 	lh	t7,28(s0)
  44:	3c040600 	lui	a0,0x600
  48:	27a50024 	addiu	a1,sp,36
  4c:	15e00006 	bnez	t7,68 <BgSpot07Taki_Init+0x68>
  50:	248438fc 	addiu	a0,a0,14588
  54:	3c040600 	lui	a0,0x600
  58:	0c000000 	jal	0 <BgSpot07Taki_Init>
  5c:	24842590 	addiu	a0,a0,9616
  60:	10000004 	b	74 <BgSpot07Taki_Init+0x74>
  64:	8fa40034 	lw	a0,52(sp)
  68:	0c000000 	jal	0 <BgSpot07Taki_Init>
  6c:	27a50024 	addiu	a1,sp,36
  70:	8fa40034 	lw	a0,52(sp)
  74:	02003025 	move	a2,s0
  78:	8fa70024 	lw	a3,36(sp)
  7c:	0c000000 	jal	0 <BgSpot07Taki_Init>
  80:	24850810 	addiu	a1,a0,2064
  84:	ae02014c 	sw	v0,332(s0)
  88:	3c180000 	lui	t8,0x0
  8c:	27180000 	addiu	t8,t8,0
  90:	ae180164 	sw	t8,356(s0)
  94:	8fbf001c 	lw	ra,28(sp)
  98:	8fb00018 	lw	s0,24(sp)
  9c:	27bd0030 	addiu	sp,sp,48
  a0:	03e00008 	jr	ra
  a4:	00000000 	nop

000000a8 <BgSpot07Taki_Destroy>:
  a8:	27bdffe8 	addiu	sp,sp,-24
  ac:	afa40018 	sw	a0,24(sp)
  b0:	8fae0018 	lw	t6,24(sp)
  b4:	afbf0014 	sw	ra,20(sp)
  b8:	00a02025 	move	a0,a1
  bc:	24a50810 	addiu	a1,a1,2064
  c0:	0c000000 	jal	0 <BgSpot07Taki_Init>
  c4:	8dc6014c 	lw	a2,332(t6)
  c8:	8fbf0014 	lw	ra,20(sp)
  cc:	27bd0018 	addiu	sp,sp,24
  d0:	03e00008 	jr	ra
  d4:	00000000 	nop

000000d8 <func_808AFD08>:
  d8:	afa40000 	sw	a0,0(sp)
  dc:	03e00008 	jr	ra
  e0:	afa50004 	sw	a1,4(sp)

000000e4 <BgSpot07Taki_Update>:
  e4:	27bdffe8 	addiu	sp,sp,-24
  e8:	afbf0014 	sw	ra,20(sp)
  ec:	8c990164 	lw	t9,356(a0)
  f0:	0320f809 	jalr	t9
  f4:	00000000 	nop
  f8:	8fbf0014 	lw	ra,20(sp)
  fc:	27bd0018 	addiu	sp,sp,24
 100:	03e00008 	jr	ra
 104:	00000000 	nop

00000108 <BgSpot07Taki_Draw>:
 108:	27bdff60 	addiu	sp,sp,-160
 10c:	afbf003c 	sw	ra,60(sp)
 110:	afb00038 	sw	s0,56(sp)
 114:	afa400a0 	sw	a0,160(sp)
 118:	afa500a4 	sw	a1,164(sp)
 11c:	8ca50000 	lw	a1,0(a1)
 120:	3c060000 	lui	a2,0x0
 124:	24c60000 	addiu	a2,a2,0
 128:	27a40084 	addiu	a0,sp,132
 12c:	240700a9 	li	a3,169
 130:	0c000000 	jal	0 <BgSpot07Taki_Init>
 134:	00a08025 	move	s0,a1
 138:	8fa200a4 	lw	v0,164(sp)
 13c:	3c0f0001 	lui	t7,0x1
 140:	3c180000 	lui	t8,0x0
 144:	8f180004 	lw	t8,4(t8)
 148:	01e27821 	addu	t7,t7,v0
 14c:	8def1de4 	lw	t7,7652(t7)
 150:	17000029 	bnez	t8,1f8 <BgSpot07Taki_Draw+0xf0>
 154:	afaf0098 	sw	t7,152(sp)
 158:	0c000000 	jal	0 <BgSpot07Taki_Init>
 15c:	8c440000 	lw	a0,0(v0)
 160:	8e0202c0 	lw	v0,704(s0)
 164:	3c09da38 	lui	t1,0xda38
 168:	35290003 	ori	t1,t1,0x3
 16c:	24590008 	addiu	t9,v0,8
 170:	ae1902c0 	sw	t9,704(s0)
 174:	ac490000 	sw	t1,0(v0)
 178:	8faa00a4 	lw	t2,164(sp)
 17c:	3c050000 	lui	a1,0x0
 180:	24a50000 	addiu	a1,a1,0
 184:	8d440000 	lw	a0,0(t2)
 188:	240600b1 	li	a2,177
 18c:	0c000000 	jal	0 <BgSpot07Taki_Init>
 190:	afa20080 	sw	v0,128(sp)
 194:	8fa30080 	lw	v1,128(sp)
 198:	3c0ede00 	lui	t6,0xde00
 19c:	3c19de00 	lui	t9,0xde00
 1a0:	ac620004 	sw	v0,4(v1)
 1a4:	8fab00a0 	lw	t3,160(sp)
 1a8:	856c001c 	lh	t4,28(t3)
 1ac:	5580000b 	bnezl	t4,1dc <BgSpot07Taki_Draw+0xd4>
 1b0:	8e0202c0 	lw	v0,704(s0)
 1b4:	8e0202c0 	lw	v0,704(s0)
 1b8:	3c0f0600 	lui	t7,0x600
 1bc:	25ef1cf0 	addiu	t7,t7,7408
 1c0:	244d0008 	addiu	t5,v0,8
 1c4:	ae0d02c0 	sw	t5,704(s0)
 1c8:	ac4f0004 	sw	t7,4(v0)
 1cc:	ac4e0000 	sw	t6,0(v0)
 1d0:	10000009 	b	1f8 <BgSpot07Taki_Draw+0xf0>
 1d4:	8fa200a4 	lw	v0,164(sp)
 1d8:	8e0202c0 	lw	v0,704(s0)
 1dc:	3c090600 	lui	t1,0x600
 1e0:	25293210 	addiu	t1,t1,12816
 1e4:	24580008 	addiu	t8,v0,8
 1e8:	ae1802c0 	sw	t8,704(s0)
 1ec:	ac490004 	sw	t1,4(v0)
 1f0:	ac590000 	sw	t9,0(v0)
 1f4:	8fa200a4 	lw	v0,164(sp)
 1f8:	0c000000 	jal	0 <BgSpot07Taki_Init>
 1fc:	8c440000 	lw	a0,0(v0)
 200:	8e0202d0 	lw	v0,720(s0)
 204:	3c0bda38 	lui	t3,0xda38
 208:	356b0003 	ori	t3,t3,0x3
 20c:	244a0008 	addiu	t2,v0,8
 210:	ae0a02d0 	sw	t2,720(s0)
 214:	ac4b0000 	sw	t3,0(v0)
 218:	8fac00a4 	lw	t4,164(sp)
 21c:	3c050000 	lui	a1,0x0
 220:	24a50000 	addiu	a1,a1,0
 224:	8d840000 	lw	a0,0(t4)
 228:	240600bf 	li	a2,191
 22c:	0c000000 	jal	0 <BgSpot07Taki_Init>
 230:	afa20074 	sw	v0,116(sp)
 234:	8fa30074 	lw	v1,116(sp)
 238:	3c0edb06 	lui	t6,0xdb06
 23c:	35ce0020 	ori	t6,t6,0x20
 240:	ac620004 	sw	v0,4(v1)
 244:	8e0202d0 	lw	v0,720(s0)
 248:	8fa80098 	lw	t0,152(sp)
 24c:	24180020 	li	t8,32
 250:	244d0008 	addiu	t5,v0,8
 254:	ae0d02d0 	sw	t5,720(s0)
 258:	ac4e0000 	sw	t6,0(v0)
 25c:	8faf00a4 	lw	t7,164(sp)
 260:	00083023 	negu	a2,t0
 264:	3107007f 	andi	a3,t0,0x7f
 268:	8de40000 	lw	a0,0(t7)
 26c:	30c6007f 	andi	a2,a2,0x7f
 270:	24190020 	li	t9,32
 274:	24090001 	li	t1,1
 278:	240a0020 	li	t2,32
 27c:	240b0020 	li	t3,32
 280:	afab0028 	sw	t3,40(sp)
 284:	afaa0024 	sw	t2,36(sp)
 288:	afa90018 	sw	t1,24(sp)
 28c:	afb90014 	sw	t9,20(sp)
 290:	afa60048 	sw	a2,72(sp)
 294:	afa70044 	sw	a3,68(sp)
 298:	afa70020 	sw	a3,32(sp)
 29c:	afa7001c 	sw	a3,28(sp)
 2a0:	afb80010 	sw	t8,16(sp)
 2a4:	00002825 	move	a1,zero
 2a8:	0c000000 	jal	0 <BgSpot07Taki_Init>
 2ac:	afa20070 	sw	v0,112(sp)
 2b0:	8fa30070 	lw	v1,112(sp)
 2b4:	8fa70048 	lw	a3,72(sp)
 2b8:	3c0c0000 	lui	t4,0x0
 2bc:	ac620004 	sw	v0,4(v1)
 2c0:	8d8c0004 	lw	t4,4(t4)
 2c4:	51800097 	beqzl	t4,524 <BgSpot07Taki_Draw+0x41c>
 2c8:	8fac00a0 	lw	t4,160(sp)
 2cc:	8e0202d0 	lw	v0,720(s0)
 2d0:	3c0efb00 	lui	t6,0xfb00
 2d4:	240fff80 	li	t7,-128
 2d8:	244d0008 	addiu	t5,v0,8
 2dc:	ae0d02d0 	sw	t5,720(s0)
 2e0:	ac4f0004 	sw	t7,4(v0)
 2e4:	ac4e0000 	sw	t6,0(v0)
 2e8:	8fb800a0 	lw	t8,160(sp)
 2ec:	3c0cdb06 	lui	t4,0xdb06
 2f0:	358c0024 	ori	t4,t4,0x24
 2f4:	8719001c 	lh	t9,28(t8)
 2f8:	240e0020 	li	t6,32
 2fc:	00002825 	move	a1,zero
 300:	17200049 	bnez	t9,428 <BgSpot07Taki_Draw+0x320>
 304:	00003025 	move	a2,zero
 308:	8e0202d0 	lw	v0,720(s0)
 30c:	3c0adb06 	lui	t2,0xdb06
 310:	354a0024 	ori	t2,t2,0x24
 314:	24490008 	addiu	t1,v0,8
 318:	ae0902d0 	sw	t1,720(s0)
 31c:	ac4a0000 	sw	t2,0(v0)
 320:	8fab00a4 	lw	t3,164(sp)
 324:	8fa70098 	lw	a3,152(sp)
 328:	8faf0044 	lw	t7,68(sp)
 32c:	8d640000 	lw	a0,0(t3)
 330:	00070823 	negu	at,a3
 334:	00013880 	sll	a3,at,0x2
 338:	00e13823 	subu	a3,a3,at
 33c:	30e700ff 	andi	a3,a3,0xff
 340:	240c0040 	li	t4,64
 344:	240d0040 	li	t5,64
 348:	240e0001 	li	t6,1
 34c:	24180040 	li	t8,64
 350:	24190040 	li	t9,64
 354:	afb90028 	sw	t9,40(sp)
 358:	afb80024 	sw	t8,36(sp)
 35c:	afae0018 	sw	t6,24(sp)
 360:	afad0014 	sw	t5,20(sp)
 364:	afac0010 	sw	t4,16(sp)
 368:	afa70020 	sw	a3,32(sp)
 36c:	8fa60048 	lw	a2,72(sp)
 370:	00002825 	move	a1,zero
 374:	afa20068 	sw	v0,104(sp)
 378:	0c000000 	jal	0 <BgSpot07Taki_Init>
 37c:	afaf001c 	sw	t7,28(sp)
 380:	8fa30068 	lw	v1,104(sp)
 384:	3c0adb06 	lui	t2,0xdb06
 388:	354a0028 	ori	t2,t2,0x28
 38c:	ac620004 	sw	v0,4(v1)
 390:	8e0202d0 	lw	v0,720(s0)
 394:	240c0020 	li	t4,32
 398:	240d0080 	li	t5,128
 39c:	24490008 	addiu	t1,v0,8
 3a0:	ae0902d0 	sw	t1,720(s0)
 3a4:	ac4a0000 	sw	t2,0(v0)
 3a8:	8fab00a4 	lw	t3,164(sp)
 3ac:	8fa70098 	lw	a3,152(sp)
 3b0:	240e0001 	li	t6,1
 3b4:	8d640000 	lw	a0,0(t3)
 3b8:	00e00821 	move	at,a3
 3bc:	00073880 	sll	a3,a3,0x2
 3c0:	00e13823 	subu	a3,a3,at
 3c4:	30e701ff 	andi	a3,a3,0x1ff
 3c8:	240f0020 	li	t7,32
 3cc:	24180080 	li	t8,128
 3d0:	afb80028 	sw	t8,40(sp)
 3d4:	afaf0024 	sw	t7,36(sp)
 3d8:	afa70020 	sw	a3,32(sp)
 3dc:	afa0001c 	sw	zero,28(sp)
 3e0:	afae0018 	sw	t6,24(sp)
 3e4:	afad0014 	sw	t5,20(sp)
 3e8:	afac0010 	sw	t4,16(sp)
 3ec:	00002825 	move	a1,zero
 3f0:	00003025 	move	a2,zero
 3f4:	0c000000 	jal	0 <BgSpot07Taki_Init>
 3f8:	afa20064 	sw	v0,100(sp)
 3fc:	8fa30064 	lw	v1,100(sp)
 400:	3c0a0600 	lui	t2,0x600
 404:	254a0460 	addiu	t2,t2,1120
 408:	ac620004 	sw	v0,4(v1)
 40c:	8e0202d0 	lw	v0,720(s0)
 410:	3c09de00 	lui	t1,0xde00
 414:	24590008 	addiu	t9,v0,8
 418:	ae1902d0 	sw	t9,720(s0)
 41c:	ac4a0004 	sw	t2,4(v0)
 420:	10000054 	b	574 <BgSpot07Taki_Draw+0x46c>
 424:	ac490000 	sw	t1,0(v0)
 428:	8e0202d0 	lw	v0,720(s0)
 42c:	240f0020 	li	t7,32
 430:	24180001 	li	t8,1
 434:	244b0008 	addiu	t3,v0,8
 438:	ae0b02d0 	sw	t3,720(s0)
 43c:	ac4c0000 	sw	t4,0(v0)
 440:	8fad00a4 	lw	t5,164(sp)
 444:	24190020 	li	t9,32
 448:	24090020 	li	t1,32
 44c:	8da40000 	lw	a0,0(t5)
 450:	afa00044 	sw	zero,68(sp)
 454:	afa90028 	sw	t1,40(sp)
 458:	afb90024 	sw	t9,36(sp)
 45c:	afa70020 	sw	a3,32(sp)
 460:	afa0001c 	sw	zero,28(sp)
 464:	afb80018 	sw	t8,24(sp)
 468:	afaf0014 	sw	t7,20(sp)
 46c:	afae0010 	sw	t6,16(sp)
 470:	0c000000 	jal	0 <BgSpot07Taki_Init>
 474:	afa2005c 	sw	v0,92(sp)
 478:	8fa3005c 	lw	v1,92(sp)
 47c:	8fa60044 	lw	a2,68(sp)
 480:	3c0bdb06 	lui	t3,0xdb06
 484:	ac620004 	sw	v0,4(v1)
 488:	8e0202d0 	lw	v0,720(s0)
 48c:	356b0028 	ori	t3,t3,0x28
 490:	240d0020 	li	t5,32
 494:	244a0008 	addiu	t2,v0,8
 498:	ae0a02d0 	sw	t2,720(s0)
 49c:	ac4b0000 	sw	t3,0(v0)
 4a0:	8fac00a4 	lw	t4,164(sp)
 4a4:	8fa70098 	lw	a3,152(sp)
 4a8:	240e0080 	li	t6,128
 4ac:	8d840000 	lw	a0,0(t4)
 4b0:	00e00821 	move	at,a3
 4b4:	00073880 	sll	a3,a3,0x2
 4b8:	00e13823 	subu	a3,a3,at
 4bc:	30e701ff 	andi	a3,a3,0x1ff
 4c0:	240f0001 	li	t7,1
 4c4:	24180020 	li	t8,32
 4c8:	24190080 	li	t9,128
 4cc:	afb90028 	sw	t9,40(sp)
 4d0:	afb80024 	sw	t8,36(sp)
 4d4:	afaf0018 	sw	t7,24(sp)
 4d8:	afa70020 	sw	a3,32(sp)
 4dc:	afae0014 	sw	t6,20(sp)
 4e0:	afad0010 	sw	t5,16(sp)
 4e4:	00002825 	move	a1,zero
 4e8:	afa6001c 	sw	a2,28(sp)
 4ec:	0c000000 	jal	0 <BgSpot07Taki_Init>
 4f0:	afa20058 	sw	v0,88(sp)
 4f4:	8fa30058 	lw	v1,88(sp)
 4f8:	3c0b0600 	lui	t3,0x600
 4fc:	256b0be0 	addiu	t3,t3,3040
 500:	ac620004 	sw	v0,4(v1)
 504:	8e0202d0 	lw	v0,720(s0)
 508:	3c0ade00 	lui	t2,0xde00
 50c:	24490008 	addiu	t1,v0,8
 510:	ae0902d0 	sw	t1,720(s0)
 514:	ac4b0004 	sw	t3,4(v0)
 518:	10000016 	b	574 <BgSpot07Taki_Draw+0x46c>
 51c:	ac4a0000 	sw	t2,0(v0)
 520:	8fac00a0 	lw	t4,160(sp)
 524:	3c0fde00 	lui	t7,0xde00
 528:	3c09de00 	lui	t1,0xde00
 52c:	858d001c 	lh	t5,28(t4)
 530:	55a0000a 	bnezl	t5,55c <BgSpot07Taki_Draw+0x454>
 534:	8e0202d0 	lw	v0,720(s0)
 538:	8e0202d0 	lw	v0,720(s0)
 53c:	3c180600 	lui	t8,0x600
 540:	27181f68 	addiu	t8,t8,8040
 544:	244e0008 	addiu	t6,v0,8
 548:	ae0e02d0 	sw	t6,720(s0)
 54c:	ac580004 	sw	t8,4(v0)
 550:	10000008 	b	574 <BgSpot07Taki_Draw+0x46c>
 554:	ac4f0000 	sw	t7,0(v0)
 558:	8e0202d0 	lw	v0,720(s0)
 55c:	3c0a0600 	lui	t2,0x600
 560:	254a32d8 	addiu	t2,t2,13016
 564:	24590008 	addiu	t9,v0,8
 568:	ae1902d0 	sw	t9,720(s0)
 56c:	ac4a0004 	sw	t2,4(v0)
 570:	ac490000 	sw	t1,0(v0)
 574:	8fab00a4 	lw	t3,164(sp)
 578:	3c060000 	lui	a2,0x0
 57c:	24c60000 	addiu	a2,a2,0
 580:	27a40084 	addiu	a0,sp,132
 584:	24070110 	li	a3,272
 588:	0c000000 	jal	0 <BgSpot07Taki_Init>
 58c:	8d650000 	lw	a1,0(t3)
 590:	8fbf003c 	lw	ra,60(sp)
 594:	8fb00038 	lw	s0,56(sp)
 598:	27bd00a0 	addiu	sp,sp,160
 59c:	03e00008 	jr	ra
 5a0:	00000000 	nop
	...
