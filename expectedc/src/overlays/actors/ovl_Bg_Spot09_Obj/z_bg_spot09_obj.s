
build/src/overlays/actors/ovl_Bg_Spot09_Obj/z_bg_spot09_obj.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <func_808B1AE0>:
   0:	3c020000 	lui	v0,0x0
   4:	24420000 	addiu	v0,v0,0
   8:	8c4e1360 	lw	t6,4960(v0)
   c:	afa50004 	sw	a1,4(sp)
  10:	29c10004 	slti	at,t6,4
  14:	54200005 	bnezl	at,2c <func_808B1AE0+0x2c>
  18:	94430ee6 	lhu	v1,3814(v0)
  1c:	8482001c 	lh	v0,28(a0)
  20:	03e00008 	jr	ra
  24:	2c420001 	sltiu	v0,v0,1
  28:	94430ee6 	lhu	v1,3814(v0)
  2c:	8c4f0004 	lw	t7,4(v0)
  30:	24010011 	li	at,17
  34:	3063000f 	andi	v1,v1,0xf
  38:	3863000f 	xori	v1,v1,0xf
  3c:	11e00003 	beqz	t7,4c <func_808B1AE0+0x4c>
  40:	2c630001 	sltiu	v1,v1,1
  44:	10000002 	b	50 <func_808B1AE0+0x50>
  48:	24020005 	li	v0,5
  4c:	24020011 	li	v0,17
  50:	54410016 	bnel	v0,at,ac <func_808B1AE0+0xac>
  54:	8482001c 	lh	v0,28(a0)
  58:	8482001c 	lh	v0,28(a0)
  5c:	24010001 	li	at,1
  60:	10400009 	beqz	v0,88 <func_808B1AE0+0x88>
  64:	00000000 	nop
  68:	10410009 	beq	v0,at,90 <func_808B1AE0+0x90>
  6c:	24010003 	li	at,3
  70:	1041000b 	beq	v0,at,a0 <func_808B1AE0+0xa0>
  74:	24010004 	li	at,4
  78:	10410007 	beq	v0,at,98 <func_808B1AE0+0x98>
  7c:	00000000 	nop
  80:	1000000d 	b	b8 <func_808B1AE0+0xb8>
  84:	00001025 	move	v0,zero
  88:	03e00008 	jr	ra
  8c:	00001025 	move	v0,zero
  90:	03e00008 	jr	ra
  94:	2c620001 	sltiu	v0,v1,1
  98:	03e00008 	jr	ra
  9c:	00601025 	move	v0,v1
  a0:	03e00008 	jr	ra
  a4:	24020001 	li	v0,1
  a8:	8482001c 	lh	v0,28(a0)
  ac:	38420002 	xori	v0,v0,0x2
  b0:	03e00008 	jr	ra
  b4:	2c420001 	sltiu	v0,v0,1
  b8:	03e00008 	jr	ra
  bc:	00000000 	nop

000000c0 <func_808B1BA0>:
  c0:	27bdffe8 	addiu	sp,sp,-24
  c4:	afbf0014 	sw	ra,20(sp)
  c8:	afa5001c 	sw	a1,28(sp)
  cc:	848e001c 	lh	t6,28(a0)
  d0:	24010003 	li	at,3
  d4:	3c053dcc 	lui	a1,0x3dcc
  d8:	15c10005 	bne	t6,at,f0 <func_808B1BA0+0x30>
  dc:	00000000 	nop
  e0:	0c000000 	jal	0 <func_808B1AE0>
  e4:	34a5cccd 	ori	a1,a1,0xcccd
  e8:	10000004 	b	fc <func_808B1BA0+0x3c>
  ec:	8fbf0014 	lw	ra,20(sp)
  f0:	0c000000 	jal	0 <func_808B1AE0>
  f4:	3c053f80 	lui	a1,0x3f80
  f8:	8fbf0014 	lw	ra,20(sp)
  fc:	27bd0018 	addiu	sp,sp,24
 100:	24020001 	li	v0,1
 104:	03e00008 	jr	ra
 108:	00000000 	nop

0000010c <func_808B1BEC>:
 10c:	27bdffd0 	addiu	sp,sp,-48
 110:	afbf001c 	sw	ra,28(sp)
 114:	afb00018 	sw	s0,24(sp)
 118:	afa50034 	sw	a1,52(sp)
 11c:	afa00028 	sw	zero,40(sp)
 120:	848e001c 	lh	t6,28(a0)
 124:	3c180000 	lui	t8,0x0
 128:	00808025 	move	s0,a0
 12c:	000e7880 	sll	t7,t6,0x2
 130:	030fc021 	addu	t8,t8,t7
 134:	8f180020 	lw	t8,32(t8)
 138:	53000011 	beqzl	t8,180 <func_808B1BEC+0x74>
 13c:	8fbf001c 	lw	ra,28(sp)
 140:	0c000000 	jal	0 <func_808B1AE0>
 144:	00002825 	move	a1,zero
 148:	8619001c 	lh	t9,28(s0)
 14c:	3c040000 	lui	a0,0x0
 150:	27a50028 	addiu	a1,sp,40
 154:	00194080 	sll	t0,t9,0x2
 158:	00882021 	addu	a0,a0,t0
 15c:	0c000000 	jal	0 <func_808B1AE0>
 160:	8c840020 	lw	a0,32(a0)
 164:	8fa40034 	lw	a0,52(sp)
 168:	02003025 	move	a2,s0
 16c:	8fa70028 	lw	a3,40(sp)
 170:	0c000000 	jal	0 <func_808B1AE0>
 174:	24850810 	addiu	a1,a0,2064
 178:	ae02014c 	sw	v0,332(s0)
 17c:	8fbf001c 	lw	ra,28(sp)
 180:	8fb00018 	lw	s0,24(sp)
 184:	27bd0030 	addiu	sp,sp,48
 188:	03e00008 	jr	ra
 18c:	24020001 	li	v0,1

00000190 <func_808B1C70>:
 190:	27bdffd8 	addiu	sp,sp,-40
 194:	afb30020 	sw	s3,32(sp)
 198:	afb00014 	sw	s0,20(sp)
 19c:	afb2001c 	sw	s2,28(sp)
 1a0:	afb10018 	sw	s1,24(sp)
 1a4:	3c100000 	lui	s0,0x0
 1a8:	3c130000 	lui	s3,0x0
 1ac:	00808825 	move	s1,a0
 1b0:	00a09025 	move	s2,a1
 1b4:	afbf0024 	sw	ra,36(sp)
 1b8:	26730040 	addiu	s3,s3,64
 1bc:	26100034 	addiu	s0,s0,52
 1c0:	8e190000 	lw	t9,0(s0)
 1c4:	02202025 	move	a0,s1
 1c8:	02402825 	move	a1,s2
 1cc:	0320f809 	jalr	t9
 1d0:	00000000 	nop
 1d4:	14400003 	bnez	v0,1e4 <func_808B1C70+0x54>
 1d8:	26100004 	addiu	s0,s0,4
 1dc:	10000004 	b	1f0 <func_808B1C70+0x60>
 1e0:	00001025 	move	v0,zero
 1e4:	5613fff7 	bnel	s0,s3,1c4 <func_808B1C70+0x34>
 1e8:	8e190000 	lw	t9,0(s0)
 1ec:	24020001 	li	v0,1
 1f0:	8fbf0024 	lw	ra,36(sp)
 1f4:	8fb00014 	lw	s0,20(sp)
 1f8:	8fb10018 	lw	s1,24(sp)
 1fc:	8fb2001c 	lw	s2,28(sp)
 200:	8fb30020 	lw	s3,32(sp)
 204:	03e00008 	jr	ra
 208:	27bd0028 	addiu	sp,sp,40

0000020c <func_808B1CEC>:
 20c:	27bdffe8 	addiu	sp,sp,-24
 210:	afa5001c 	sw	a1,28(sp)
 214:	afbf0014 	sw	ra,20(sp)
 218:	3c050000 	lui	a1,0x0
 21c:	0c000000 	jal	0 <func_808B1AE0>
 220:	24a50040 	addiu	a1,a1,64
 224:	8fbf0014 	lw	ra,20(sp)
 228:	27bd0018 	addiu	sp,sp,24
 22c:	24020001 	li	v0,1
 230:	03e00008 	jr	ra
 234:	00000000 	nop

00000238 <func_808B1D18>:
 238:	27bdffe8 	addiu	sp,sp,-24
 23c:	afa5001c 	sw	a1,28(sp)
 240:	afbf0014 	sw	ra,20(sp)
 244:	3c050000 	lui	a1,0x0
 248:	0c000000 	jal	0 <func_808B1AE0>
 24c:	24a5004c 	addiu	a1,a1,76
 250:	8fbf0014 	lw	ra,20(sp)
 254:	27bd0018 	addiu	sp,sp,24
 258:	24020001 	li	v0,1
 25c:	03e00008 	jr	ra
 260:	00000000 	nop

00000264 <func_808B1D44>:
 264:	27bdffe8 	addiu	sp,sp,-24
 268:	afbf0014 	sw	ra,20(sp)
 26c:	848e001c 	lh	t6,28(a0)
 270:	24010003 	li	at,3
 274:	15c10005 	bne	t6,at,28c <func_808B1D44+0x28>
 278:	00000000 	nop
 27c:	0c000000 	jal	0 <func_808B1AE0>
 280:	00000000 	nop
 284:	10000004 	b	298 <func_808B1D44+0x34>
 288:	8fbf0014 	lw	ra,20(sp)
 28c:	0c000000 	jal	0 <func_808B1AE0>
 290:	00000000 	nop
 294:	8fbf0014 	lw	ra,20(sp)
 298:	27bd0018 	addiu	sp,sp,24
 29c:	03e00008 	jr	ra
 2a0:	00000000 	nop

000002a4 <BgSpot09Obj_Init>:
 2a4:	27bdffe0 	addiu	sp,sp,-32
 2a8:	afb00018 	sw	s0,24(sp)
 2ac:	3c060000 	lui	a2,0x0
 2b0:	94c60ee6 	lhu	a2,3814(a2)
 2b4:	00808025 	move	s0,a0
 2b8:	afbf001c 	sw	ra,28(sp)
 2bc:	afa50024 	sw	a1,36(sp)
 2c0:	3c040000 	lui	a0,0x0
 2c4:	24840000 	addiu	a0,a0,0
 2c8:	8605001c 	lh	a1,28(s0)
 2cc:	0c000000 	jal	0 <func_808B1AE0>
 2d0:	30c6000f 	andi	a2,a2,0xf
 2d4:	860e001c 	lh	t6,28(s0)
 2d8:	3c040000 	lui	a0,0x0
 2dc:	3c050000 	lui	a1,0x0
 2e0:	31cf00ff 	andi	t7,t6,0xff
 2e4:	a60f001c 	sh	t7,28(s0)
 2e8:	8607001c 	lh	a3,28(s0)
 2ec:	24a50084 	addiu	a1,a1,132
 2f0:	24840038 	addiu	a0,a0,56
 2f4:	04e00003 	bltz	a3,304 <BgSpot09Obj_Init+0x60>
 2f8:	28e10005 	slti	at,a3,5
 2fc:	54200004 	bnezl	at,310 <BgSpot09Obj_Init+0x6c>
 300:	02002025 	move	a0,s0
 304:	0c000000 	jal	0 <func_808B1AE0>
 308:	24060142 	li	a2,322
 30c:	02002025 	move	a0,s0
 310:	0c000000 	jal	0 <func_808B1AE0>
 314:	8fa50024 	lw	a1,36(sp)
 318:	14400005 	bnez	v0,330 <BgSpot09Obj_Init+0x8c>
 31c:	02002025 	move	a0,s0
 320:	0c000000 	jal	0 <func_808B1AE0>
 324:	02002025 	move	a0,s0
 328:	10000008 	b	34c <BgSpot09Obj_Init+0xa8>
 32c:	8fbf001c 	lw	ra,28(sp)
 330:	0c000000 	jal	0 <func_808B1AE0>
 334:	8fa50024 	lw	a1,36(sp)
 338:	54400004 	bnezl	v0,34c <BgSpot09Obj_Init+0xa8>
 33c:	8fbf001c 	lw	ra,28(sp)
 340:	0c000000 	jal	0 <func_808B1AE0>
 344:	02002025 	move	a0,s0
 348:	8fbf001c 	lw	ra,28(sp)
 34c:	8fb00018 	lw	s0,24(sp)
 350:	27bd0020 	addiu	sp,sp,32
 354:	03e00008 	jr	ra
 358:	00000000 	nop

0000035c <BgSpot09Obj_Destroy>:
 35c:	27bdffe8 	addiu	sp,sp,-24
 360:	afbf0014 	sw	ra,20(sp)
 364:	afa40018 	sw	a0,24(sp)
 368:	848f001c 	lh	t7,28(a0)
 36c:	00807025 	move	t6,a0
 370:	00a02025 	move	a0,a1
 374:	11e00003 	beqz	t7,384 <BgSpot09Obj_Destroy+0x28>
 378:	24a50810 	addiu	a1,a1,2064
 37c:	0c000000 	jal	0 <func_808B1AE0>
 380:	8dc6014c 	lw	a2,332(t6)
 384:	8fbf0014 	lw	ra,20(sp)
 388:	27bd0018 	addiu	sp,sp,24
 38c:	03e00008 	jr	ra
 390:	00000000 	nop

00000394 <BgSpot09Obj_Update>:
 394:	afa40000 	sw	a0,0(sp)
 398:	03e00008 	jr	ra
 39c:	afa50004 	sw	a1,4(sp)

000003a0 <BgSpot09Obj_Draw>:
 3a0:	27bdffc0 	addiu	sp,sp,-64
 3a4:	afb00014 	sw	s0,20(sp)
 3a8:	00808025 	move	s0,a0
 3ac:	afbf001c 	sw	ra,28(sp)
 3b0:	afb10018 	sw	s1,24(sp)
 3b4:	860e001c 	lh	t6,28(s0)
 3b8:	00a08825 	move	s1,a1
 3bc:	00a02025 	move	a0,a1
 3c0:	3c050000 	lui	a1,0x0
 3c4:	000e7880 	sll	t7,t6,0x2
 3c8:	00af2821 	addu	a1,a1,t7
 3cc:	0c000000 	jal	0 <func_808B1AE0>
 3d0:	8ca50058 	lw	a1,88(a1)
 3d4:	8618001c 	lh	t8,28(s0)
 3d8:	24010003 	li	at,3
 3dc:	27a4002c 	addiu	a0,sp,44
 3e0:	17010024 	bne	t8,at,474 <BgSpot09Obj_Draw+0xd4>
 3e4:	3c060000 	lui	a2,0x0
 3e8:	8e250000 	lw	a1,0(s1)
 3ec:	24c6009c 	addiu	a2,a2,156
 3f0:	24070184 	li	a3,388
 3f4:	0c000000 	jal	0 <func_808B1AE0>
 3f8:	00a08025 	move	s0,a1
 3fc:	0c000000 	jal	0 <func_808B1AE0>
 400:	8e240000 	lw	a0,0(s1)
 404:	8e0202d0 	lw	v0,720(s0)
 408:	3c08da38 	lui	t0,0xda38
 40c:	35080003 	ori	t0,t0,0x3
 410:	24590008 	addiu	t9,v0,8
 414:	ae1902d0 	sw	t9,720(s0)
 418:	ac480000 	sw	t0,0(v0)
 41c:	8e240000 	lw	a0,0(s1)
 420:	3c050000 	lui	a1,0x0
 424:	24a500b4 	addiu	a1,a1,180
 428:	24060187 	li	a2,391
 42c:	0c000000 	jal	0 <func_808B1AE0>
 430:	afa20028 	sw	v0,40(sp)
 434:	8fa30028 	lw	v1,40(sp)
 438:	3c0b0000 	lui	t3,0x0
 43c:	256b0000 	addiu	t3,t3,0
 440:	ac620004 	sw	v0,4(v1)
 444:	8e0202d0 	lw	v0,720(s0)
 448:	3c0ade00 	lui	t2,0xde00
 44c:	3c060000 	lui	a2,0x0
 450:	24490008 	addiu	t1,v0,8
 454:	ae0902d0 	sw	t1,720(s0)
 458:	ac4b0004 	sw	t3,4(v0)
 45c:	ac4a0000 	sw	t2,0(v0)
 460:	8e250000 	lw	a1,0(s1)
 464:	24c600cc 	addiu	a2,a2,204
 468:	27a4002c 	addiu	a0,sp,44
 46c:	0c000000 	jal	0 <func_808B1AE0>
 470:	2407018c 	li	a3,396
 474:	8fbf001c 	lw	ra,28(sp)
 478:	8fb00014 	lw	s0,20(sp)
 47c:	8fb10018 	lw	s1,24(sp)
 480:	03e00008 	jr	ra
 484:	27bd0040 	addiu	sp,sp,64
	...
