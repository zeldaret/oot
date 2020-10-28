
build/src/overlays/actors/ovl_Bg_Gnd_Darkmeiro/z_bg_gnd_darkmeiro.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <BgGndDarkmeiro_ToggleBlock>:
   0:	27bdffe8 	addiu	sp,sp,-24
   4:	afbf0014 	sw	ra,20(sp)
   8:	afa5001c 	sw	a1,28(sp)
   c:	948e0164 	lhu	t6,356(a0)
  10:	00803825 	move	a3,a0
  14:	31cf0002 	andi	t7,t6,0x2
  18:	51e0000f 	beqzl	t7,58 <BgGndDarkmeiro_ToggleBlock+0x58>
  1c:	84ea0166 	lh	t2,358(a3)
  20:	84980166 	lh	t8,358(a0)
  24:	00a02025 	move	a0,a1
  28:	24a50810 	addiu	a1,a1,2064
  2c:	57000015 	bnezl	t8,84 <BgGndDarkmeiro_ToggleBlock+0x84>
  30:	8fbf0014 	lw	ra,20(sp)
  34:	8ce6014c 	lw	a2,332(a3)
  38:	0c000000 	jal	0 <BgGndDarkmeiro_ToggleBlock>
  3c:	afa70018 	sw	a3,24(sp)
  40:	8fa70018 	lw	a3,24(sp)
  44:	94e80164 	lhu	t0,356(a3)
  48:	3109fffd 	andi	t1,t0,0xfffd
  4c:	1000000c 	b	80 <BgGndDarkmeiro_ToggleBlock+0x80>
  50:	a4e90164 	sh	t1,356(a3)
  54:	84ea0166 	lh	t2,358(a3)
  58:	8fa4001c 	lw	a0,28(sp)
  5c:	11400008 	beqz	t2,80 <BgGndDarkmeiro_ToggleBlock+0x80>
  60:	24850810 	addiu	a1,a0,2064
  64:	8ce6014c 	lw	a2,332(a3)
  68:	0c000000 	jal	0 <BgGndDarkmeiro_ToggleBlock>
  6c:	afa70018 	sw	a3,24(sp)
  70:	8fa70018 	lw	a3,24(sp)
  74:	94ec0164 	lhu	t4,356(a3)
  78:	358d0002 	ori	t5,t4,0x2
  7c:	a4ed0164 	sh	t5,356(a3)
  80:	8fbf0014 	lw	ra,20(sp)
  84:	27bd0018 	addiu	sp,sp,24
  88:	03e00008 	jr	ra
  8c:	00000000 	nop

00000090 <BgGndDarkmeiro_Init>:
  90:	27bdffc8 	addiu	sp,sp,-56
  94:	afb10018 	sw	s1,24(sp)
  98:	00a08825 	move	s1,a1
  9c:	3c0e0000 	lui	t6,0x0
  a0:	afbf001c 	sw	ra,28(sp)
  a4:	afb00014 	sw	s0,20(sp)
  a8:	afa00030 	sw	zero,48(sp)
  ac:	25ce0000 	addiu	t6,t6,0
  b0:	3c053dcc 	lui	a1,0x3dcc
  b4:	00808025 	move	s0,a0
  b8:	ac8e016c 	sw	t6,364(a0)
  bc:	0c000000 	jal	0 <BgGndDarkmeiro_ToggleBlock>
  c0:	34a5cccd 	ori	a1,a1,0xcccd
  c4:	8602001c 	lh	v0,28(s0)
  c8:	24010001 	li	at,1
  cc:	3c0f0000 	lui	t7,0x0
  d0:	304200ff 	andi	v0,v0,0xff
  d4:	50400009 	beqzl	v0,fc <BgGndDarkmeiro_Init+0x6c>
  d8:	8e180004 	lw	t8,4(s0)
  dc:	1041000c 	beq	v0,at,110 <BgGndDarkmeiro_Init+0x80>
  e0:	3c040000 	lui	a0,0x0
  e4:	24010002 	li	at,2
  e8:	1041003b 	beq	v0,at,1d8 <BgGndDarkmeiro_Init+0x148>
  ec:	3c080000 	lui	t0,0x0
  f0:	1000006d 	b	2a8 <BgGndDarkmeiro_Init+0x218>
  f4:	8fbf001c 	lw	ra,28(sp)
  f8:	8e180004 	lw	t8,4(s0)
  fc:	25ef0000 	addiu	t7,t7,0
 100:	ae0f0134 	sw	t7,308(s0)
 104:	37190080 	ori	t9,t8,0x80
 108:	10000066 	b	2a4 <BgGndDarkmeiro_Init+0x214>
 10c:	ae190004 	sw	t9,4(s0)
 110:	24840000 	addiu	a0,a0,0
 114:	0c000000 	jal	0 <BgGndDarkmeiro_ToggleBlock>
 118:	27a50030 	addiu	a1,sp,48
 11c:	26250810 	addiu	a1,s1,2064
 120:	afa50020 	sw	a1,32(sp)
 124:	02202025 	move	a0,s1
 128:	02003025 	move	a2,s0
 12c:	0c000000 	jal	0 <BgGndDarkmeiro_ToggleBlock>
 130:	8fa70030 	lw	a3,48(sp)
 134:	8608001c 	lh	t0,28(s0)
 138:	2401003f 	li	at,63
 13c:	ae02014c 	sw	v0,332(s0)
 140:	00084a03 	sra	t1,t0,0x8
 144:	312a003f 	andi	t2,t1,0x3f
 148:	15410008 	bne	t2,at,16c <BgGndDarkmeiro_Init+0xdc>
 14c:	3c0d0000 	lui	t5,0x0
 150:	3c0b0000 	lui	t3,0x0
 154:	3c0c0000 	lui	t4,0x0
 158:	256b0000 	addiu	t3,t3,0
 15c:	258c0000 	addiu	t4,t4,0
 160:	ae0b016c 	sw	t3,364(s0)
 164:	1000004f 	b	2a4 <BgGndDarkmeiro_Init+0x214>
 168:	ae0c0134 	sw	t4,308(s0)
 16c:	8605001c 	lh	a1,28(s0)
 170:	a6000168 	sh	zero,360(s0)
 174:	86020168 	lh	v0,360(s0)
 178:	3c0e0000 	lui	t6,0x0
 17c:	25ad0000 	addiu	t5,t5,0
 180:	25ce0000 	addiu	t6,t6,0
 184:	00052a03 	sra	a1,a1,0x8
 188:	ae0d0134 	sw	t5,308(s0)
 18c:	ae0e016c 	sw	t6,364(s0)
 190:	30a5003f 	andi	a1,a1,0x3f
 194:	02202025 	move	a0,s1
 198:	a6020166 	sh	v0,358(s0)
 19c:	0c000000 	jal	0 <BgGndDarkmeiro_ToggleBlock>
 1a0:	a6020164 	sh	v0,356(s0)
 1a4:	14400006 	bnez	v0,1c0 <BgGndDarkmeiro_Init+0x130>
 1a8:	02202025 	move	a0,s1
 1ac:	8fa50020 	lw	a1,32(sp)
 1b0:	0c000000 	jal	0 <BgGndDarkmeiro_ToggleBlock>
 1b4:	8e06014c 	lw	a2,332(s0)
 1b8:	1000003b 	b	2a8 <BgGndDarkmeiro_Init+0x218>
 1bc:	8fbf001c 	lw	ra,28(sp)
 1c0:	96180164 	lhu	t8,356(s0)
 1c4:	240f0040 	li	t7,64
 1c8:	a60f0166 	sh	t7,358(s0)
 1cc:	37190002 	ori	t9,t8,0x2
 1d0:	10000034 	b	2a4 <BgGndDarkmeiro_Init+0x214>
 1d4:	a6190164 	sh	t9,356(s0)
 1d8:	8605001c 	lh	a1,28(s0)
 1dc:	a6000168 	sh	zero,360(s0)
 1e0:	86020168 	lh	v0,360(s0)
 1e4:	00052a03 	sra	a1,a1,0x8
 1e8:	25080000 	addiu	t0,t0,0
 1ec:	30a5003f 	andi	a1,a1,0x3f
 1f0:	ae08016c 	sw	t0,364(s0)
 1f4:	ae000134 	sw	zero,308(s0)
 1f8:	24a50001 	addiu	a1,a1,1
 1fc:	02202025 	move	a0,s1
 200:	a6020166 	sh	v0,358(s0)
 204:	0c000000 	jal	0 <BgGndDarkmeiro_ToggleBlock>
 208:	a6020164 	sh	v0,356(s0)
 20c:	50400007 	beqzl	v0,22c <BgGndDarkmeiro_Init+0x19c>
 210:	8605001c 	lh	a1,28(s0)
 214:	960a0164 	lhu	t2,356(s0)
 218:	24090040 	li	t1,64
 21c:	a6090166 	sh	t1,358(s0)
 220:	354b0004 	ori	t3,t2,0x4
 224:	a60b0164 	sh	t3,356(s0)
 228:	8605001c 	lh	a1,28(s0)
 22c:	02202025 	move	a0,s1
 230:	00052a03 	sra	a1,a1,0x8
 234:	30a5003f 	andi	a1,a1,0x3f
 238:	0c000000 	jal	0 <BgGndDarkmeiro_ToggleBlock>
 23c:	24a50002 	addiu	a1,a1,2
 240:	50400007 	beqzl	v0,260 <BgGndDarkmeiro_Init+0x1d0>
 244:	860f0166 	lh	t7,358(s0)
 248:	960d0164 	lhu	t5,356(s0)
 24c:	240c0040 	li	t4,64
 250:	a60c0168 	sh	t4,360(s0)
 254:	35ae0008 	ori	t6,t5,0x8
 258:	a60e0164 	sh	t6,356(s0)
 25c:	860f0166 	lh	t7,358(s0)
 260:	55e00005 	bnezl	t7,278 <BgGndDarkmeiro_Init+0x1e8>
 264:	8605001c 	lh	a1,28(s0)
 268:	86180168 	lh	t8,360(s0)
 26c:	53000009 	beqzl	t8,294 <BgGndDarkmeiro_Init+0x204>
 270:	8605001c 	lh	a1,28(s0)
 274:	8605001c 	lh	a1,28(s0)
 278:	02202025 	move	a0,s1
 27c:	00052a03 	sra	a1,a1,0x8
 280:	0c000000 	jal	0 <BgGndDarkmeiro_ToggleBlock>
 284:	30a5003f 	andi	a1,a1,0x3f
 288:	10000007 	b	2a8 <BgGndDarkmeiro_Init+0x218>
 28c:	8fbf001c 	lw	ra,28(sp)
 290:	8605001c 	lh	a1,28(s0)
 294:	02202025 	move	a0,s1
 298:	00052a03 	sra	a1,a1,0x8
 29c:	0c000000 	jal	0 <BgGndDarkmeiro_ToggleBlock>
 2a0:	30a5003f 	andi	a1,a1,0x3f
 2a4:	8fbf001c 	lw	ra,28(sp)
 2a8:	8fb00014 	lw	s0,20(sp)
 2ac:	8fb10018 	lw	s1,24(sp)
 2b0:	03e00008 	jr	ra
 2b4:	27bd0038 	addiu	sp,sp,56

000002b8 <BgGndDarkmeiro_Destroy>:
 2b8:	27bdffe8 	addiu	sp,sp,-24
 2bc:	afbf0014 	sw	ra,20(sp)
 2c0:	afa40018 	sw	a0,24(sp)
 2c4:	848f001c 	lh	t7,28(a0)
 2c8:	24010001 	li	at,1
 2cc:	00a02025 	move	a0,a1
 2d0:	31f800ff 	andi	t8,t7,0xff
 2d4:	17010004 	bne	t8,at,2e8 <BgGndDarkmeiro_Destroy+0x30>
 2d8:	8fb90018 	lw	t9,24(sp)
 2dc:	24a50810 	addiu	a1,a1,2064
 2e0:	0c000000 	jal	0 <BgGndDarkmeiro_ToggleBlock>
 2e4:	8f26014c 	lw	a2,332(t9)
 2e8:	8fbf0014 	lw	ra,20(sp)
 2ec:	27bd0018 	addiu	sp,sp,24
 2f0:	03e00008 	jr	ra
 2f4:	00000000 	nop

000002f8 <BgGndDarkmeiro_Noop>:
 2f8:	afa40000 	sw	a0,0(sp)
 2fc:	03e00008 	jr	ra
 300:	afa50004 	sw	a1,4(sp)

00000304 <BgGndDarkmeiro_UpdateBlockTimer>:
 304:	27bdffd8 	addiu	sp,sp,-40
 308:	afb00020 	sw	s0,32(sp)
 30c:	00808025 	move	s0,a0
 310:	afbf0024 	sw	ra,36(sp)
 314:	afa5002c 	sw	a1,44(sp)
 318:	00a02025 	move	a0,a1
 31c:	8605001c 	lh	a1,28(s0)
 320:	00052a03 	sra	a1,a1,0x8
 324:	30a5003f 	andi	a1,a1,0x3f
 328:	0c000000 	jal	0 <BgGndDarkmeiro_ToggleBlock>
 32c:	24a50001 	addiu	a1,a1,1
 330:	50400023 	beqzl	v0,3c0 <BgGndDarkmeiro_UpdateBlockTimer+0xbc>
 334:	8605001c 	lh	a1,28(s0)
 338:	96020164 	lhu	v0,356(s0)
 33c:	24090130 	li	t1,304
 340:	24042881 	li	a0,10369
 344:	304e0004 	andi	t6,v0,0x4
 348:	11c00010 	beqz	t6,38c <BgGndDarkmeiro_UpdateBlockTimer+0x88>
 34c:	34480004 	ori	t0,v0,0x4
 350:	86030166 	lh	v1,358(s0)
 354:	18600003 	blez	v1,364 <BgGndDarkmeiro_UpdateBlockTimer+0x60>
 358:	246fffff 	addiu	t7,v1,-1
 35c:	10000017 	b	3bc <BgGndDarkmeiro_UpdateBlockTimer+0xb8>
 360:	a60f0166 	sh	t7,358(s0)
 364:	8605001c 	lh	a1,28(s0)
 368:	8fa4002c 	lw	a0,44(sp)
 36c:	00052a03 	sra	a1,a1,0x8
 370:	30a5003f 	andi	a1,a1,0x3f
 374:	0c000000 	jal	0 <BgGndDarkmeiro_ToggleBlock>
 378:	24a50001 	addiu	a1,a1,1
 37c:	96180164 	lhu	t8,356(s0)
 380:	3319fffb 	andi	t9,t8,0xfffb
 384:	1000000d 	b	3bc <BgGndDarkmeiro_UpdateBlockTimer+0xb8>
 388:	a6190164 	sh	t9,356(s0)
 38c:	3c0a0000 	lui	t2,0x0
 390:	3c0b0000 	lui	t3,0x0
 394:	a6080164 	sh	t0,356(s0)
 398:	a6090166 	sh	t1,358(s0)
 39c:	256b0000 	addiu	t3,t3,0
 3a0:	25470000 	addiu	a3,t2,0
 3a4:	3c050000 	lui	a1,0x0
 3a8:	24a50000 	addiu	a1,a1,0
 3ac:	afa70010 	sw	a3,16(sp)
 3b0:	afab0014 	sw	t3,20(sp)
 3b4:	0c000000 	jal	0 <BgGndDarkmeiro_ToggleBlock>
 3b8:	24060004 	li	a2,4
 3bc:	8605001c 	lh	a1,28(s0)
 3c0:	8fa4002c 	lw	a0,44(sp)
 3c4:	00052a03 	sra	a1,a1,0x8
 3c8:	30a5003f 	andi	a1,a1,0x3f
 3cc:	0c000000 	jal	0 <BgGndDarkmeiro_ToggleBlock>
 3d0:	24a50002 	addiu	a1,a1,2
 3d4:	50400023 	beqzl	v0,464 <BgGndDarkmeiro_UpdateBlockTimer+0x160>
 3d8:	86030166 	lh	v1,358(s0)
 3dc:	96020164 	lhu	v0,356(s0)
 3e0:	3c070000 	lui	a3,0x0
 3e4:	24e70000 	addiu	a3,a3,0
 3e8:	304c0008 	andi	t4,v0,0x8
 3ec:	11800010 	beqz	t4,430 <BgGndDarkmeiro_UpdateBlockTimer+0x12c>
 3f0:	34580008 	ori	t8,v0,0x8
 3f4:	86020168 	lh	v0,360(s0)
 3f8:	18400003 	blez	v0,408 <BgGndDarkmeiro_UpdateBlockTimer+0x104>
 3fc:	244dffff 	addiu	t5,v0,-1
 400:	10000017 	b	460 <BgGndDarkmeiro_UpdateBlockTimer+0x15c>
 404:	a60d0168 	sh	t5,360(s0)
 408:	8605001c 	lh	a1,28(s0)
 40c:	8fa4002c 	lw	a0,44(sp)
 410:	00052a03 	sra	a1,a1,0x8
 414:	30a5003f 	andi	a1,a1,0x3f
 418:	0c000000 	jal	0 <BgGndDarkmeiro_ToggleBlock>
 41c:	24a50002 	addiu	a1,a1,2
 420:	960e0164 	lhu	t6,356(s0)
 424:	31cffff7 	andi	t7,t6,0xfff7
 428:	1000000d 	b	460 <BgGndDarkmeiro_UpdateBlockTimer+0x15c>
 42c:	a60f0164 	sh	t7,356(s0)
 430:	24190130 	li	t9,304
 434:	3c080000 	lui	t0,0x0
 438:	a6180164 	sh	t8,356(s0)
 43c:	a6190168 	sh	t9,360(s0)
 440:	25080000 	addiu	t0,t0,0
 444:	3c050000 	lui	a1,0x0
 448:	24a50000 	addiu	a1,a1,0
 44c:	afa80014 	sw	t0,20(sp)
 450:	afa70010 	sw	a3,16(sp)
 454:	24042881 	li	a0,10369
 458:	0c000000 	jal	0 <BgGndDarkmeiro_ToggleBlock>
 45c:	24060004 	li	a2,4
 460:	86030166 	lh	v1,358(s0)
 464:	86020168 	lh	v0,360(s0)
 468:	00032c00 	sll	a1,v1,0x10
 46c:	0062082a 	slt	at,v1,v0
 470:	10200004 	beqz	at,484 <BgGndDarkmeiro_UpdateBlockTimer+0x180>
 474:	00052c03 	sra	a1,a1,0x10
 478:	00022c00 	sll	a1,v0,0x10
 47c:	10000001 	b	484 <BgGndDarkmeiro_UpdateBlockTimer+0x180>
 480:	00052c03 	sra	a1,a1,0x10
 484:	58a00005 	blezl	a1,49c <BgGndDarkmeiro_UpdateBlockTimer+0x198>
 488:	28610040 	slti	at,v1,64
 48c:	0c000000 	jal	0 <BgGndDarkmeiro_ToggleBlock>
 490:	02002025 	move	a0,s0
 494:	86030166 	lh	v1,358(s0)
 498:	28610040 	slti	at,v1,64
 49c:	50200006 	beqzl	at,4b8 <BgGndDarkmeiro_UpdateBlockTimer+0x1b4>
 4a0:	8605001c 	lh	a1,28(s0)
 4a4:	86090168 	lh	t1,360(s0)
 4a8:	29210040 	slti	at,t1,64
 4ac:	54200009 	bnezl	at,4d4 <BgGndDarkmeiro_UpdateBlockTimer+0x1d0>
 4b0:	8605001c 	lh	a1,28(s0)
 4b4:	8605001c 	lh	a1,28(s0)
 4b8:	8fa4002c 	lw	a0,44(sp)
 4bc:	00052a03 	sra	a1,a1,0x8
 4c0:	0c000000 	jal	0 <BgGndDarkmeiro_ToggleBlock>
 4c4:	30a5003f 	andi	a1,a1,0x3f
 4c8:	10000007 	b	4e8 <BgGndDarkmeiro_UpdateBlockTimer+0x1e4>
 4cc:	8fbf0024 	lw	ra,36(sp)
 4d0:	8605001c 	lh	a1,28(s0)
 4d4:	8fa4002c 	lw	a0,44(sp)
 4d8:	00052a03 	sra	a1,a1,0x8
 4dc:	0c000000 	jal	0 <BgGndDarkmeiro_ToggleBlock>
 4e0:	30a5003f 	andi	a1,a1,0x3f
 4e4:	8fbf0024 	lw	ra,36(sp)
 4e8:	8fb00020 	lw	s0,32(sp)
 4ec:	27bd0028 	addiu	sp,sp,40
 4f0:	03e00008 	jr	ra
 4f4:	00000000 	nop

000004f8 <BgGndDarkmeiro_UpdateStaticBlock>:
 4f8:	afa40000 	sw	a0,0(sp)
 4fc:	03e00008 	jr	ra
 500:	afa50004 	sw	a1,4(sp)

00000504 <BgGndDarkmeiro_UpdateSwitchBlock>:
 504:	27bdffe8 	addiu	sp,sp,-24
 508:	afbf0014 	sw	ra,20(sp)
 50c:	afa5001c 	sw	a1,28(sp)
 510:	84820166 	lh	v0,358(a0)
 514:	00803025 	move	a2,a0
 518:	18400002 	blez	v0,524 <BgGndDarkmeiro_UpdateSwitchBlock+0x20>
 51c:	244effff 	addiu	t6,v0,-1
 520:	a48e0166 	sh	t6,358(a0)
 524:	84c5001c 	lh	a1,28(a2)
 528:	afa60018 	sw	a2,24(sp)
 52c:	8fa4001c 	lw	a0,28(sp)
 530:	00052a03 	sra	a1,a1,0x8
 534:	0c000000 	jal	0 <BgGndDarkmeiro_ToggleBlock>
 538:	30a5003f 	andi	a1,a1,0x3f
 53c:	10400003 	beqz	v0,54c <BgGndDarkmeiro_UpdateSwitchBlock+0x48>
 540:	8fa60018 	lw	a2,24(sp)
 544:	240f0040 	li	t7,64
 548:	a4cf0166 	sh	t7,358(a2)
 54c:	00c02025 	move	a0,a2
 550:	0c000000 	jal	0 <BgGndDarkmeiro_ToggleBlock>
 554:	8fa5001c 	lw	a1,28(sp)
 558:	8fbf0014 	lw	ra,20(sp)
 55c:	27bd0018 	addiu	sp,sp,24
 560:	03e00008 	jr	ra
 564:	00000000 	nop

00000568 <BgGndDarkmeiro_Update>:
 568:	27bdffe8 	addiu	sp,sp,-24
 56c:	afbf0014 	sw	ra,20(sp)
 570:	8c99016c 	lw	t9,364(a0)
 574:	0320f809 	jalr	t9
 578:	00000000 	nop
 57c:	8fbf0014 	lw	ra,20(sp)
 580:	27bd0018 	addiu	sp,sp,24
 584:	03e00008 	jr	ra
 588:	00000000 	nop

0000058c <BgGndDarkmeiro_DrawInvisiblePath>:
 58c:	27bdffe8 	addiu	sp,sp,-24
 590:	afa40018 	sw	a0,24(sp)
 594:	00a02025 	move	a0,a1
 598:	afbf0014 	sw	ra,20(sp)
 59c:	3c050000 	lui	a1,0x0
 5a0:	0c000000 	jal	0 <BgGndDarkmeiro_ToggleBlock>
 5a4:	24a50000 	addiu	a1,a1,0
 5a8:	8fbf0014 	lw	ra,20(sp)
 5ac:	27bd0018 	addiu	sp,sp,24
 5b0:	03e00008 	jr	ra
 5b4:	00000000 	nop

000005b8 <BgGndDarkmeiro_DrawSwitchBlock>:
 5b8:	27bdffb8 	addiu	sp,sp,-72
 5bc:	afbf001c 	sw	ra,28(sp)
 5c0:	afb00018 	sw	s0,24(sp)
 5c4:	afa5004c 	sw	a1,76(sp)
 5c8:	84830166 	lh	v1,358(a0)
 5cc:	00808025 	move	s0,a0
 5d0:	00031400 	sll	v0,v1,0x10
 5d4:	00021403 	sra	v0,v0,0x10
 5d8:	10400045 	beqz	v0,6f0 <BgGndDarkmeiro_DrawSwitchBlock+0x138>
 5dc:	28410041 	slti	at,v0,65
 5e0:	5420000b 	bnezl	at,610 <BgGndDarkmeiro_DrawSwitchBlock+0x58>
 5e4:	28410011 	slti	at,v0,17
 5e8:	84820168 	lh	v0,360(a0)
 5ec:	240f007f 	li	t7,127
 5f0:	28410078 	slti	at,v0,120
 5f4:	10200003 	beqz	at,604 <BgGndDarkmeiro_DrawSwitchBlock+0x4c>
 5f8:	244e0008 	addiu	t6,v0,8
 5fc:	1000001d 	b	674 <BgGndDarkmeiro_DrawSwitchBlock+0xbc>
 600:	a48e0168 	sh	t6,360(a0)
 604:	1000001b 	b	674 <BgGndDarkmeiro_DrawSwitchBlock+0xbc>
 608:	a60f0168 	sh	t7,360(s0)
 60c:	28410011 	slti	at,v0,17
 610:	14200017 	bnez	at,670 <BgGndDarkmeiro_DrawSwitchBlock+0xb8>
 614:	000258c0 	sll	t3,v0,0x3
 618:	00602025 	move	a0,v1
 61c:	00042300 	sll	a0,a0,0xc
 620:	00042400 	sll	a0,a0,0x10
 624:	0c000000 	jal	0 <BgGndDarkmeiro_ToggleBlock>
 628:	00042403 	sra	a0,a0,0x10
 62c:	3c014280 	lui	at,0x4280
 630:	44812000 	mtc1	at,$f4
 634:	3c0142fe 	lui	at,0x42fe
 638:	44814000 	mtc1	at,$f8
 63c:	46040182 	mul.s	$f6,$f0,$f4
 640:	240a007f 	li	t2,127
 644:	46083280 	add.s	$f10,$f6,$f8
 648:	4600540d 	trunc.w.s	$f16,$f10
 64c:	44198000 	mfc1	t9,$f16
 650:	00000000 	nop
 654:	a6190168 	sh	t9,360(s0)
 658:	86090168 	lh	t1,360(s0)
 65c:	29210080 	slti	at,t1,128
 660:	54200005 	bnezl	at,678 <BgGndDarkmeiro_DrawSwitchBlock+0xc0>
 664:	8fac004c 	lw	t4,76(sp)
 668:	10000002 	b	674 <BgGndDarkmeiro_DrawSwitchBlock+0xbc>
 66c:	a60a0168 	sh	t2,360(s0)
 670:	a60b0168 	sh	t3,360(s0)
 674:	8fac004c 	lw	t4,76(sp)
 678:	3c060000 	lui	a2,0x0
 67c:	24c60000 	addiu	a2,a2,0
 680:	8d850000 	lw	a1,0(t4)
 684:	27a4002c 	addiu	a0,sp,44
 688:	2407017a 	li	a3,378
 68c:	0c000000 	jal	0 <BgGndDarkmeiro_ToggleBlock>
 690:	afa5003c 	sw	a1,60(sp)
 694:	8fa8003c 	lw	t0,60(sp)
 698:	3c0efa00 	lui	t6,0xfa00
 69c:	3c01c6ca 	lui	at,0xc6ca
 6a0:	8d0302d0 	lw	v1,720(t0)
 6a4:	3421d000 	ori	at,at,0xd000
 6a8:	3c060000 	lui	a2,0x0
 6ac:	246d0008 	addiu	t5,v1,8
 6b0:	ad0d02d0 	sw	t5,720(t0)
 6b4:	ac6e0000 	sw	t6,0(v1)
 6b8:	860f0168 	lh	t7,360(s0)
 6bc:	24c60018 	addiu	a2,a2,24
 6c0:	27a4002c 	addiu	a0,sp,44
 6c4:	31f800ff 	andi	t8,t7,0xff
 6c8:	0301c825 	or	t9,t8,at
 6cc:	ac790004 	sw	t9,4(v1)
 6d0:	8fa9004c 	lw	t1,76(sp)
 6d4:	2407017c 	li	a3,380
 6d8:	0c000000 	jal	0 <BgGndDarkmeiro_ToggleBlock>
 6dc:	8d250000 	lw	a1,0(t1)
 6e0:	3c050000 	lui	a1,0x0
 6e4:	24a50000 	addiu	a1,a1,0
 6e8:	0c000000 	jal	0 <BgGndDarkmeiro_ToggleBlock>
 6ec:	8fa4004c 	lw	a0,76(sp)
 6f0:	8fbf001c 	lw	ra,28(sp)
 6f4:	8fb00018 	lw	s0,24(sp)
 6f8:	27bd0048 	addiu	sp,sp,72
 6fc:	03e00008 	jr	ra
 700:	00000000 	nop

00000704 <BgGndDarkmeiro_DrawStaticBlock>:
 704:	27bdffc8 	addiu	sp,sp,-56
 708:	afbf0014 	sw	ra,20(sp)
 70c:	afa40038 	sw	a0,56(sp)
 710:	afa5003c 	sw	a1,60(sp)
 714:	8ca50000 	lw	a1,0(a1)
 718:	3c060000 	lui	a2,0x0
 71c:	24c60030 	addiu	a2,a2,48
 720:	27a40024 	addiu	a0,sp,36
 724:	24070187 	li	a3,391
 728:	0c000000 	jal	0 <BgGndDarkmeiro_ToggleBlock>
 72c:	afa50034 	sw	a1,52(sp)
 730:	8fa80034 	lw	t0,52(sp)
 734:	3c19c6ca 	lui	t9,0xc6ca
 738:	3739d0ff 	ori	t9,t9,0xd0ff
 73c:	8d0302d0 	lw	v1,720(t0)
 740:	3c18fa00 	lui	t8,0xfa00
 744:	3c060000 	lui	a2,0x0
 748:	246f0008 	addiu	t7,v1,8
 74c:	ad0f02d0 	sw	t7,720(t0)
 750:	ac790004 	sw	t9,4(v1)
 754:	ac780000 	sw	t8,0(v1)
 758:	8fa9003c 	lw	t1,60(sp)
 75c:	24c60048 	addiu	a2,a2,72
 760:	27a40024 	addiu	a0,sp,36
 764:	24070189 	li	a3,393
 768:	0c000000 	jal	0 <BgGndDarkmeiro_ToggleBlock>
 76c:	8d250000 	lw	a1,0(t1)
 770:	3c050000 	lui	a1,0x0
 774:	24a50000 	addiu	a1,a1,0
 778:	0c000000 	jal	0 <BgGndDarkmeiro_ToggleBlock>
 77c:	8fa4003c 	lw	a0,60(sp)
 780:	8fbf0014 	lw	ra,20(sp)
 784:	27bd0038 	addiu	sp,sp,56
 788:	03e00008 	jr	ra
 78c:	00000000 	nop
