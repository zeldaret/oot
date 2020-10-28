
build/src/code/code_800FC620.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <Overlay_Load>:
   0:	3c020000 	lui	v0,0x0
   4:	8c420000 	lw	v0,0(v0)
   8:	27bdffb0 	addiu	sp,sp,-80
   c:	afb00020 	sw	s0,32(sp)
  10:	28410003 	slti	at,v0,3
  14:	00808025 	move	s0,a0
  18:	afbf0024 	sw	ra,36(sp)
  1c:	afa50054 	sw	a1,84(sp)
  20:	afa60058 	sw	a2,88(sp)
  24:	14200006 	bnez	at,40 <Overlay_Load+0x40>
  28:	afa7005c 	sw	a3,92(sp)
  2c:	3c040000 	lui	a0,0x0
  30:	0c000000 	jal	0 <Overlay_Load>
  34:	24840000 	addiu	a0,a0,0
  38:	3c020000 	lui	v0,0x0
  3c:	8c420000 	lw	v0,0(v0)
  40:	28410003 	slti	at,v0,3
  44:	54200009 	bnezl	at,6c <Overlay_Load+0x6c>
  48:	8fb80054 	lw	t8,84(sp)
  4c:	8fae0054 	lw	t6,84(sp)
  50:	8fa50060 	lw	a1,96(sp)
  54:	3c040000 	lui	a0,0x0
  58:	01d07823 	subu	t7,t6,s0
  5c:	24840038 	addiu	a0,a0,56
  60:	0c000000 	jal	0 <Overlay_Load>
  64:	00af3021 	addu	a2,a1,t7
  68:	8fb80054 	lw	t8,84(sp)
  6c:	8fa40060 	lw	a0,96(sp)
  70:	02002825 	move	a1,s0
  74:	03103023 	subu	a2,t8,s0
  78:	0086c821 	addu	t9,a0,a2
  7c:	0c000000 	jal	0 <Overlay_Load>
  80:	afb9002c 	sw	t9,44(sp)
  84:	3c020000 	lui	v0,0x0
  88:	8c420000 	lw	v0,0(v0)
  8c:	8fa8002c 	lw	t0,44(sp)
  90:	3c040000 	lui	a0,0x0
  94:	28410003 	slti	at,v0,3
  98:	1420000d 	bnez	at,d0 <Overlay_Load+0xd0>
  9c:	8d03fffc 	lw	v1,-4(t0)
  a0:	01038023 	subu	s0,t0,v1
  a4:	8e09000c 	lw	t1,12(s0)
  a8:	8e050000 	lw	a1,0(s0)
  ac:	8e060004 	lw	a2,4(s0)
  b0:	8e070008 	lw	a3,8(s0)
  b4:	afa30038 	sw	v1,56(sp)
  b8:	2484006c 	addiu	a0,a0,108
  bc:	0c000000 	jal	0 <Overlay_Load>
  c0:	afa90010 	sw	t1,16(sp)
  c4:	3c020000 	lui	v0,0x0
  c8:	8c420000 	lw	v0,0(v0)
  cc:	8fa30038 	lw	v1,56(sp)
  d0:	8faa002c 	lw	t2,44(sp)
  d4:	28410003 	slti	at,v0,3
  d8:	14200004 	bnez	at,ec <Overlay_Load+0xec>
  dc:	01438023 	subu	s0,t2,v1
  e0:	3c040000 	lui	a0,0x0
  e4:	0c000000 	jal	0 <Overlay_Load>
  e8:	248400a0 	addiu	a0,a0,160
  ec:	8fa40060 	lw	a0,96(sp)
  f0:	02002825 	move	a1,s0
  f4:	0c000000 	jal	0 <Overlay_Load>
  f8:	8fa60058 	lw	a2,88(sp)
  fc:	8e02000c 	lw	v0,12(s0)
 100:	3c0b0000 	lui	t3,0x0
 104:	5040000e 	beqzl	v0,140 <Overlay_Load+0x140>
 108:	8e0d0010 	lw	t5,16(s0)
 10c:	8d6b0000 	lw	t3,0(t3)
 110:	8fa5002c 	lw	a1,44(sp)
 114:	3c040000 	lui	a0,0x0
 118:	29610003 	slti	at,t3,3
 11c:	14200004 	bnez	at,130 <Overlay_Load+0x130>
 120:	00453021 	addu	a2,v0,a1
 124:	0c000000 	jal	0 <Overlay_Load>
 128:	248400b8 	addiu	a0,a0,184
 12c:	8e02000c 	lw	v0,12(s0)
 130:	8fa4002c 	lw	a0,44(sp)
 134:	0c000000 	jal	0 <Overlay_Load>
 138:	00402825 	move	a1,v0
 13c:	8e0d0010 	lw	t5,16(s0)
 140:	3c180000 	lui	t8,0x0
 144:	8f180000 	lw	t8,0(t8)
 148:	000d7080 	sll	t6,t5,0x2
 14c:	020e7821 	addu	t7,s0,t6
 150:	01f03823 	subu	a3,t7,s0
 154:	2b010003 	slti	at,t8,3
 158:	14200008 	bnez	at,17c <Overlay_Load+0x17c>
 15c:	24e70014 	addiu	a3,a3,20
 160:	3c040000 	lui	a0,0x0
 164:	248400dc 	addiu	a0,a0,220
 168:	02002825 	move	a1,s0
 16c:	02073021 	addu	a2,s0,a3
 170:	0c000000 	jal	0 <Overlay_Load>
 174:	afa70034 	sw	a3,52(sp)
 178:	8fa70034 	lw	a3,52(sp)
 17c:	02002025 	move	a0,s0
 180:	0c000000 	jal	0 <Overlay_Load>
 184:	00e02825 	move	a1,a3
 188:	8fb9005c 	lw	t9,92(sp)
 18c:	8fa80058 	lw	t0,88(sp)
 190:	8fa40060 	lw	a0,96(sp)
 194:	03288023 	subu	s0,t9,t0
 198:	0c000000 	jal	0 <Overlay_Load>
 19c:	02002825 	move	a1,s0
 1a0:	8fa40060 	lw	a0,96(sp)
 1a4:	0c000000 	jal	0 <Overlay_Load>
 1a8:	02002825 	move	a1,s0
 1ac:	3c090000 	lui	t1,0x0
 1b0:	8d290000 	lw	t1,0(t1)
 1b4:	3c040000 	lui	a0,0x0
 1b8:	29210003 	slti	at,t1,3
 1bc:	54200004 	bnezl	at,1d0 <Overlay_Load+0x1d0>
 1c0:	8fbf0024 	lw	ra,36(sp)
 1c4:	0c000000 	jal	0 <Overlay_Load>
 1c8:	24840100 	addiu	a0,a0,256
 1cc:	8fbf0024 	lw	ra,36(sp)
 1d0:	02001025 	move	v0,s0
 1d4:	8fb00020 	lw	s0,32(sp)
 1d8:	03e00008 	jr	ra
 1dc:	27bd0050 	addiu	sp,sp,80

000001e0 <func_800FC800>:
 1e0:	27bdffe8 	addiu	sp,sp,-24
 1e4:	afbf0014 	sw	ra,20(sp)
 1e8:	14800002 	bnez	a0,1f4 <func_800FC800+0x14>
 1ec:	00802825 	move	a1,a0
 1f0:	24050001 	li	a1,1
 1f4:	3c040000 	lui	a0,0x0
 1f8:	3c060000 	lui	a2,0x0
 1fc:	24c60000 	addiu	a2,a2,0
 200:	24840000 	addiu	a0,a0,0
 204:	0c000000 	jal	0 <Overlay_Load>
 208:	00003825 	move	a3,zero
 20c:	8fbf0014 	lw	ra,20(sp)
 210:	27bd0018 	addiu	sp,sp,24
 214:	03e00008 	jr	ra
 218:	00000000 	nop

0000021c <func_800FC83C>:
 21c:	27bdffe8 	addiu	sp,sp,-24
 220:	afbf0014 	sw	ra,20(sp)
 224:	10800004 	beqz	a0,238 <func_800FC83C+0x1c>
 228:	00802825 	move	a1,a0
 22c:	3c040000 	lui	a0,0x0
 230:	0c000000 	jal	0 <Overlay_Load>
 234:	24840000 	addiu	a0,a0,0
 238:	8fbf0014 	lw	ra,20(sp)
 23c:	27bd0018 	addiu	sp,sp,24
 240:	03e00008 	jr	ra
 244:	00000000 	nop

00000248 <func_800FC868>:
 248:	00a60019 	multu	a1,a2
 24c:	27bdffd8 	addiu	sp,sp,-40
 250:	afb10018 	sw	s1,24(sp)
 254:	afb30020 	sw	s3,32(sp)
 258:	afb2001c 	sw	s2,28(sp)
 25c:	afb00014 	sw	s0,20(sp)
 260:	00e09825 	move	s3,a3
 264:	afbf0024 	sw	ra,36(sp)
 268:	00808025 	move	s0,a0
 26c:	00c09025 	move	s2,a2
 270:	00007012 	mflo	t6
 274:	008e8821 	addu	s1,a0,t6
 278:	0091082b 	sltu	at,a0,s1
 27c:	50200008 	beqzl	at,2a0 <func_800FC868+0x58>
 280:	8fbf0024 	lw	ra,36(sp)
 284:	0260f809 	jalr	s3
 288:	02002025 	move	a0,s0
 28c:	02128021 	addu	s0,s0,s2
 290:	0211082b 	sltu	at,s0,s1
 294:	1420fffb 	bnez	at,284 <func_800FC868+0x3c>
 298:	00000000 	nop
 29c:	8fbf0024 	lw	ra,36(sp)
 2a0:	8fb00014 	lw	s0,20(sp)
 2a4:	8fb10018 	lw	s1,24(sp)
 2a8:	8fb2001c 	lw	s2,28(sp)
 2ac:	8fb30020 	lw	s3,32(sp)
 2b0:	03e00008 	jr	ra
 2b4:	27bd0028 	addiu	sp,sp,40

000002b8 <func_800FC8D8>:
 2b8:	00a60019 	multu	a1,a2
 2bc:	27bdffd8 	addiu	sp,sp,-40
 2c0:	afb10018 	sw	s1,24(sp)
 2c4:	afb30020 	sw	s3,32(sp)
 2c8:	afb2001c 	sw	s2,28(sp)
 2cc:	afb00014 	sw	s0,20(sp)
 2d0:	00e09825 	move	s3,a3
 2d4:	afbf0024 	sw	ra,36(sp)
 2d8:	00808025 	move	s0,a0
 2dc:	00c09025 	move	s2,a2
 2e0:	00007012 	mflo	t6
 2e4:	008e8821 	addu	s1,a0,t6
 2e8:	0091082b 	sltu	at,a0,s1
 2ec:	10200007 	beqz	at,30c <func_800FC8D8+0x54>
 2f0:	02002025 	move	a0,s0
 2f4:	0260f809 	jalr	s3
 2f8:	24050002 	li	a1,2
 2fc:	02128021 	addu	s0,s0,s2
 300:	0211082b 	sltu	at,s0,s1
 304:	5420fffb 	bnezl	at,2f4 <func_800FC8D8+0x3c>
 308:	02002025 	move	a0,s0
 30c:	8fbf0024 	lw	ra,36(sp)
 310:	8fb00014 	lw	s0,20(sp)
 314:	8fb10018 	lw	s1,24(sp)
 318:	8fb2001c 	lw	s2,28(sp)
 31c:	8fb30020 	lw	s3,32(sp)
 320:	03e00008 	jr	ra
 324:	27bd0028 	addiu	sp,sp,40

00000328 <func_800FC948>:
 328:	27bdffb8 	addiu	sp,sp,-72
 32c:	afb40040 	sw	s4,64(sp)
 330:	afb3003c 	sw	s3,60(sp)
 334:	afb20038 	sw	s2,56(sp)
 338:	00a09025 	move	s2,a1
 33c:	00e09825 	move	s3,a3
 340:	0080a025 	move	s4,a0
 344:	afbf0044 	sw	ra,68(sp)
 348:	afb10034 	sw	s1,52(sp)
 34c:	14800008 	bnez	a0,370 <func_800FC948+0x48>
 350:	afb00030 	sw	s0,48(sp)
 354:	00a60019 	multu	a1,a2
 358:	afa60050 	sw	a2,80(sp)
 35c:	00002012 	mflo	a0
 360:	0c000000 	jal	0 <Overlay_Load>
 364:	00000000 	nop
 368:	8fa60050 	lw	a2,80(sp)
 36c:	0040a025 	move	s4,v0
 370:	52800019 	beqzl	s4,3d8 <func_800FC948+0xb0>
 374:	8fbf0044 	lw	ra,68(sp)
 378:	52600017 	beqzl	s3,3d8 <func_800FC948+0xb0>
 37c:	8fbf0044 	lw	ra,68(sp)
 380:	02460019 	multu	s2,a2
 384:	02808025 	move	s0,s4
 388:	00c09025 	move	s2,a2
 38c:	00007012 	mflo	t6
 390:	028e8821 	addu	s1,s4,t6
 394:	0291082b 	sltu	at,s4,s1
 398:	1020000e 	beqz	at,3d4 <func_800FC948+0xac>
 39c:	02002025 	move	a0,s0
 3a0:	00002825 	move	a1,zero
 3a4:	00003025 	move	a2,zero
 3a8:	00003825 	move	a3,zero
 3ac:	afa00010 	sw	zero,16(sp)
 3b0:	afa00014 	sw	zero,20(sp)
 3b4:	afa00018 	sw	zero,24(sp)
 3b8:	afa0001c 	sw	zero,28(sp)
 3bc:	0260f809 	jalr	s3
 3c0:	afa00020 	sw	zero,32(sp)
 3c4:	02128021 	addu	s0,s0,s2
 3c8:	0211082b 	sltu	at,s0,s1
 3cc:	5420fff4 	bnezl	at,3a0 <func_800FC948+0x78>
 3d0:	02002025 	move	a0,s0
 3d4:	8fbf0044 	lw	ra,68(sp)
 3d8:	02801025 	move	v0,s4
 3dc:	8fb40040 	lw	s4,64(sp)
 3e0:	8fb00030 	lw	s0,48(sp)
 3e4:	8fb10034 	lw	s1,52(sp)
 3e8:	8fb20038 	lw	s2,56(sp)
 3ec:	8fb3003c 	lw	s3,60(sp)
 3f0:	03e00008 	jr	ra
 3f4:	27bd0048 	addiu	sp,sp,72

000003f8 <func_800FCA18>:
 3f8:	27bdffd0 	addiu	sp,sp,-48
 3fc:	afb40028 	sw	s4,40(sp)
 400:	afb30024 	sw	s3,36(sp)
 404:	00e09825 	move	s3,a3
 408:	0080a025 	move	s4,a0
 40c:	afbf002c 	sw	ra,44(sp)
 410:	afb20020 	sw	s2,32(sp)
 414:	afb1001c 	sw	s1,28(sp)
 418:	10800016 	beqz	a0,474 <func_800FCA18+0x7c>
 41c:	afb00018 	sw	s0,24(sp)
 420:	50e00010 	beqzl	a3,464 <func_800FCA18+0x6c>
 424:	8faf0040 	lw	t7,64(sp)
 428:	00a60019 	multu	a1,a2
 42c:	00808825 	move	s1,a0
 430:	00c09025 	move	s2,a2
 434:	00007012 	mflo	t6
 438:	008e8021 	addu	s0,a0,t6
 43c:	0090082b 	sltu	at,a0,s0
 440:	10200007 	beqz	at,460 <func_800FCA18+0x68>
 444:	02128023 	subu	s0,s0,s2
 448:	02002025 	move	a0,s0
 44c:	0260f809 	jalr	s3
 450:	24050002 	li	a1,2
 454:	0230082b 	sltu	at,s1,s0
 458:	5420fffb 	bnezl	at,448 <func_800FCA18+0x50>
 45c:	02128023 	subu	s0,s0,s2
 460:	8faf0040 	lw	t7,64(sp)
 464:	51e00004 	beqzl	t7,478 <func_800FCA18+0x80>
 468:	8fbf002c 	lw	ra,44(sp)
 46c:	0c000000 	jal	0 <Overlay_Load>
 470:	02802025 	move	a0,s4
 474:	8fbf002c 	lw	ra,44(sp)
 478:	8fb00018 	lw	s0,24(sp)
 47c:	8fb1001c 	lw	s1,28(sp)
 480:	8fb20020 	lw	s2,32(sp)
 484:	8fb30024 	lw	s3,36(sp)
 488:	8fb40028 	lw	s4,40(sp)
 48c:	03e00008 	jr	ra
 490:	27bd0030 	addiu	sp,sp,48

00000494 <func_800FCB34>:
 494:	3c020000 	lui	v0,0x0
 498:	8c420000 	lw	v0,0(v0)
 49c:	27bdffe0 	addiu	sp,sp,-32
 4a0:	afb00014 	sw	s0,20(sp)
 4a4:	afb10018 	sw	s1,24(sp)
 4a8:	3c100000 	lui	s0,0x0
 4ac:	afbf001c 	sw	ra,28(sp)
 4b0:	26100000 	addiu	s0,s0,0
 4b4:	1040000c 	beqz	v0,4e8 <func_800FCB34+0x54>
 4b8:	00008825 	move	s1,zero
 4bc:	02028021 	addu	s0,s0,v0
 4c0:	8e030004 	lw	v1,4(s0)
 4c4:	50600004 	beqzl	v1,4d8 <func_800FCB34+0x44>
 4c8:	8e020000 	lw	v0,0(s0)
 4cc:	0060f809 	jalr	v1
 4d0:	00000000 	nop
 4d4:	8e020000 	lw	v0,0(s0)
 4d8:	ae110000 	sw	s1,0(s0)
 4dc:	02008825 	move	s1,s0
 4e0:	5440fff7 	bnezl	v0,4c0 <func_800FCB34+0x2c>
 4e4:	02028021 	addu	s0,s0,v0
 4e8:	8fbf001c 	lw	ra,28(sp)
 4ec:	3c010000 	lui	at,0x0
 4f0:	ac310000 	sw	s1,0(at)
 4f4:	8fb10018 	lw	s1,24(sp)
 4f8:	8fb00014 	lw	s0,20(sp)
 4fc:	03e00008 	jr	ra
 500:	27bd0020 	addiu	sp,sp,32

00000504 <SystemHeap_Init>:
 504:	27bdffe8 	addiu	sp,sp,-24
 508:	afbf0014 	sw	ra,20(sp)
 50c:	0c000000 	jal	0 <Overlay_Load>
 510:	00000000 	nop
 514:	0c000000 	jal	0 <Overlay_Load>
 518:	00000000 	nop
 51c:	8fbf0014 	lw	ra,20(sp)
 520:	27bd0018 	addiu	sp,sp,24
 524:	03e00008 	jr	ra
 528:	00000000 	nop
 52c:	00000000 	nop
