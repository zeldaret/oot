
build/src/code/code_80110450.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <func_80110450>:
   0:	3c010001 	lui	at,0x1
   4:	00240821 	addu	at,at,a0
   8:	03e00008 	jr	ra
   c:	a4200a20 	sh	zero,2592(at)

00000010 <func_80110460>:
  10:	27bdffe8 	addiu	sp,sp,-24
  14:	3c0e0001 	lui	t6,0x1
  18:	afbf0014 	sw	ra,20(sp)
  1c:	01c47021 	addu	t6,t6,a0
  20:	95ce0a20 	lhu	t6,2592(t6)
  24:	3c0f0001 	lui	t7,0x1
  28:	01e47821 	addu	t7,t7,a0
  2c:	29c10002 	slti	at,t6,2
  30:	14200004 	bnez	at,44 <func_80110460+0x34>
  34:	3c020001 	lui	v0,0x1
  38:	95ef0a20 	lhu	t7,2592(t7)
  3c:	29e10014 	slti	at,t7,20
  40:	14200007 	bnez	at,60 <func_80110460+0x50>
  44:	00441021 	addu	v0,v0,a0
  48:	94420a20 	lhu	v0,2592(v0)
  4c:	28410015 	slti	at,v0,21
  50:	14200005 	bnez	at,68 <func_80110460+0x58>
  54:	28410018 	slti	at,v0,24
  58:	50200004 	beqzl	at,6c <func_80110460+0x5c>
  5c:	8fbf0014 	lw	ra,20(sp)
  60:	0c000000 	jal	0 <func_80110450>
  64:	00000000 	nop
  68:	8fbf0014 	lw	ra,20(sp)
  6c:	27bd0018 	addiu	sp,sp,24
  70:	03e00008 	jr	ra
  74:	00000000 	nop

00000078 <func_801104C8>:
  78:	27bdffc8 	addiu	sp,sp,-56
  7c:	3c0e0001 	lui	t6,0x1
  80:	afbf0034 	sw	ra,52(sp)
  84:	afb60030 	sw	s6,48(sp)
  88:	afb5002c 	sw	s5,44(sp)
  8c:	afb40028 	sw	s4,40(sp)
  90:	afb30024 	sw	s3,36(sp)
  94:	afb20020 	sw	s2,32(sp)
  98:	afb1001c 	sw	s1,28(sp)
  9c:	afb00018 	sw	s0,24(sp)
  a0:	01c47021 	addu	t6,t6,a0
  a4:	95ce0a20 	lhu	t6,2592(t6)
  a8:	0080a825 	move	s5,a0
  ac:	25cfffff 	addiu	t7,t6,-1
  b0:	2de10018 	sltiu	at,t7,24
  b4:	10200116 	beqz	at,510 <L80110960>
  b8:	000f7880 	sll	t7,t7,0x2
  bc:	3c010000 	lui	at,0x0
  c0:	002f0821 	addu	at,at,t7
  c4:	8c2f0000 	lw	t7,0(at)
  c8:	01e00008 	jr	t7
  cc:	00000000 	nop

000000d0 <L80110520>:
  d0:	0c000000 	jal	0 <func_80110450>
  d4:	02a02025 	move	a0,s5
  d8:	3c130000 	lui	s3,0x0
  dc:	26730000 	addiu	s3,s3,0
  e0:	967813fc 	lhu	t8,5116(s3)
  e4:	3c160000 	lui	s6,0x0
  e8:	a66013ce 	sh	zero,5070(s3)
  ec:	3319fffe 	andi	t9,t8,0xfffe
  f0:	a66013d2 	sh	zero,5074(s3)
  f4:	a67913fc 	sh	t9,5116(s3)
  f8:	26d60000 	addiu	s6,s6,0
  fc:	0000a025 	move	s4,zero
 100:	92ca002d 	lbu	t2,45(s6)
 104:	3c090000 	lui	t1,0x0
 108:	25290000 	addiu	t1,t1,0
 10c:	00141840 	sll	v1,s4,0x1
 110:	00699021 	addu	s2,v1,t1
 114:	026a5821 	addu	t3,s3,t2
 118:	916c0074 	lbu	t4,116(t3)
 11c:	864d0000 	lh	t5,0(s2)
 120:	3c0e0000 	lui	t6,0x0
 124:	25ce0000 	addiu	t6,t6,0
 128:	158d0017 	bne	t4,t5,188 <L80110520+0xb8>
 12c:	006e8821 	addu	s1,v1,t6
 130:	86220000 	lh	v0,0(s1)
 134:	24100001 	li	s0,1
 138:	02c27821 	addu	t7,s6,v0
 13c:	91f80000 	lbu	t8,0(t7)
 140:	0278c821 	addu	t9,s3,t8
 144:	a3220074 	sb	v0,116(t9)
 148:	02701021 	addu	v0,s3,s0
 14c:	90490068 	lbu	t1,104(v0)
 150:	864a0000 	lh	t2,0(s2)
 154:	02a02025 	move	a0,s5
 158:	552a0006 	bnel	t1,t2,174 <L80110520+0xa4>
 15c:	26100001 	addiu	s0,s0,1
 160:	862b0000 	lh	t3,0(s1)
 164:	3205ffff 	andi	a1,s0,0xffff
 168:	0c000000 	jal	0 <func_80110450>
 16c:	a04b0068 	sb	t3,104(v0)
 170:	26100001 	addiu	s0,s0,1
 174:	00108400 	sll	s0,s0,0x10
 178:	00108403 	sra	s0,s0,0x10
 17c:	2a010004 	slti	at,s0,4
 180:	5420fff2 	bnezl	at,14c <L80110520+0x7c>
 184:	02701021 	addu	v0,s3,s0
 188:	26940001 	addiu	s4,s4,1
 18c:	0014a400 	sll	s4,s4,0x10
 190:	0014a403 	sra	s4,s4,0x10
 194:	2a810003 	slti	at,s4,3
 198:	5420ffda 	bnezl	at,104 <L80110520+0x34>
 19c:	92ca002d 	lbu	t2,45(s6)
 1a0:	92620068 	lbu	v0,104(s3)
 1a4:	2401003b 	li	at,59
 1a8:	240c07d0 	li	t4,2000
 1ac:	1041000f 	beq	v0,at,1ec <L80110520+0x11c>
 1b0:	02a02025 	move	a0,s5
 1b4:	2401003c 	li	at,60
 1b8:	1041000c 	beq	v0,at,1ec <L80110520+0x11c>
 1bc:	2401003d 	li	at,61
 1c0:	1041000a 	beq	v0,at,1ec <L80110520+0x11c>
 1c4:	24010055 	li	at,85
 1c8:	50410009 	beql	v0,at,1f0 <L80110520+0x120>
 1cc:	240300ff 	li	v1,255
 1d0:	926213e2 	lbu	v0,5090(s3)
 1d4:	240300ff 	li	v1,255
 1d8:	50400004 	beqzl	v0,1ec <L80110520+0x11c>
 1dc:	a2630068 	sb	v1,104(s3)
 1e0:	10000002 	b	1ec <L80110520+0x11c>
 1e4:	a2620068 	sb	v0,104(s3)
 1e8:	a2630068 	sb	v1,104(s3)
 1ec:	240300ff 	li	v1,255
 1f0:	a66c13c8 	sh	t4,5064(s3)
 1f4:	a6600038 	sh	zero,56(s3)
 1f8:	a26313e0 	sb	v1,5088(s3)
 1fc:	a26313e1 	sb	v1,5089(s3)
 200:	a66013fa 	sh	zero,5114(s3)
 204:	a66013fc 	sh	zero,5116(s3)
 208:	a66013fe 	sh	zero,5118(s3)
 20c:	a6601400 	sh	zero,5120(s3)
 210:	a26013e6 	sb	zero,5094(s3)
 214:	a26013e5 	sb	zero,5093(s3)
 218:	a26013e4 	sb	zero,5092(s3)
 21c:	a26013e3 	sb	zero,5091(s3)
 220:	a26013e2 	sb	zero,5090(s3)
 224:	a66013ec 	sh	zero,5100(s3)
 228:	a66013ea 	sh	zero,5098(s3)
 22c:	a66013e8 	sh	zero,5096(s3)
 230:	0c000000 	jal	0 <func_80110450>
 234:	a26013e7 	sb	zero,5095(s3)
 238:	3c030000 	lui	v1,0x0
 23c:	24630000 	addiu	v1,v1,0
 240:	24180014 	li	t8,20
 244:	a4780000 	sh	t8,0(v1)
 248:	3c020000 	lui	v0,0x0
 24c:	8c420000 	lw	v0,0(v0)
 250:	44806000 	mtc1	zero,$f12
 254:	84430fc8 	lh	v1,4040(v0)
 258:	84440fca 	lh	a0,4042(v0)
 25c:	84450fcc 	lh	a1,4044(v0)
 260:	28610065 	slti	at,v1,101
 264:	14200003 	bnez	at,274 <L80110520+0x1a4>
 268:	00041080 	sll	v0,a0,0x2
 26c:	10000008 	b	290 <L80110520+0x1c0>
 270:	240800ff 	li	t0,255
 274:	00034200 	sll	t0,v1,0x8
 278:	01034023 	subu	t0,t0,v1
 27c:	24010064 	li	at,100
 280:	0101001a 	div	zero,t0,at
 284:	00004012 	mflo	t0
	...
 290:	00441023 	subu	v0,v0,a0
 294:	28410100 	slti	at,v0,256
 298:	14200003 	bnez	at,2a8 <L80110520+0x1d8>
 29c:	00401825 	move	v1,v0
 2a0:	10000001 	b	2a8 <L80110520+0x1d8>
 2a4:	240300ff 	li	v1,255
 2a8:	28a10065 	slti	at,a1,101
 2ac:	14200003 	bnez	at,2bc <L80110520+0x1ec>
 2b0:	306600ff 	andi	a2,v1,0xff
 2b4:	10000008 	b	2d8 <L80110520+0x208>
 2b8:	240200ff 	li	v0,255
 2bc:	00051200 	sll	v0,a1,0x8
 2c0:	00451023 	subu	v0,v0,a1
 2c4:	24010064 	li	at,100
 2c8:	0041001a 	div	zero,v0,at
 2cc:	00001012 	mflo	v0
	...
 2d8:	310500ff 	andi	a1,t0,0xff
 2dc:	0c000000 	jal	0 <func_80110450>
 2e0:	304700ff 	andi	a3,v0,0xff
 2e4:	3c010001 	lui	at,0x1
 2e8:	00350821 	addu	at,at,s5
 2ec:	24190002 	li	t9,2
 2f0:	10000087 	b	510 <L80110960>
 2f4:	a4390a20 	sh	t9,2592(at)

000002f8 <L80110748>:
 2f8:	3c030000 	lui	v1,0x0
 2fc:	24630000 	addiu	v1,v1,0
 300:	84690000 	lh	t1,0(v1)
 304:	3c010001 	lui	at,0x1
 308:	00350821 	addu	at,at,s5
 30c:	252affff 	addiu	t2,t1,-1
 310:	a46a0000 	sh	t2,0(v1)
 314:	846b0000 	lh	t3,0(v1)
 318:	240c0008 	li	t4,8
 31c:	5560007d 	bnezl	t3,514 <L80110960+0x4>
 320:	8fbf0034 	lw	ra,52(sp)
 324:	a42c0934 	sh	t4,2356(at)
 328:	3c010001 	lui	at,0x1
 32c:	34210a20 	ori	at,at,0xa20
 330:	02a11021 	addu	v0,s5,at
 334:	944d0000 	lhu	t5,0(v0)
 338:	25ae0001 	addiu	t6,t5,1
 33c:	0c000000 	jal	0 <func_80110450>
 340:	a44e0000 	sh	t6,0(v0)
 344:	10000073 	b	514 <L80110960+0x4>
 348:	8fbf0034 	lw	ra,52(sp)

0000034c <L8011079C>:
 34c:	3c010001 	lui	at,0x1
 350:	34210a20 	ori	at,at,0xa20
 354:	02a11021 	addu	v0,s5,at
 358:	944f0000 	lhu	t7,0(v0)
 35c:	3c030000 	lui	v1,0x0
 360:	24630000 	addiu	v1,v1,0
 364:	25f80001 	addiu	t8,t7,1
 368:	a4580000 	sh	t8,0(v0)
 36c:	a4600000 	sh	zero,0(v1)
 370:	0c000000 	jal	0 <func_80110450>
 374:	02a02025 	move	a0,s5
 378:	0c000000 	jal	0 <func_80110450>
 37c:	24040020 	li	a0,32
 380:	10000064 	b	514 <L80110960+0x4>
 384:	8fbf0034 	lw	ra,52(sp)

00000388 <L801107D8>:
 388:	3c030000 	lui	v1,0x0
 38c:	3c010001 	lui	at,0x1
 390:	24630000 	addiu	v1,v1,0
 394:	24190032 	li	t9,50
 398:	34210a20 	ori	at,at,0xa20
 39c:	a4790000 	sh	t9,0(v1)
 3a0:	02a11021 	addu	v0,s5,at
 3a4:	94490000 	lhu	t1,0(v0)
 3a8:	44806000 	mtc1	zero,$f12
 3ac:	252a0001 	addiu	t2,t1,1
 3b0:	a44a0000 	sh	t2,0(v0)
 3b4:	3c020000 	lui	v0,0x0
 3b8:	8c420000 	lw	v0,0(v0)
 3bc:	84430fc8 	lh	v1,4040(v0)
 3c0:	84440fca 	lh	a0,4042(v0)
 3c4:	84450fcc 	lh	a1,4044(v0)
 3c8:	28610065 	slti	at,v1,101
 3cc:	14200003 	bnez	at,3dc <L801107D8+0x54>
 3d0:	00041080 	sll	v0,a0,0x2
 3d4:	10000008 	b	3f8 <L801107D8+0x70>
 3d8:	240800ff 	li	t0,255
 3dc:	00034200 	sll	t0,v1,0x8
 3e0:	01034023 	subu	t0,t0,v1
 3e4:	24010064 	li	at,100
 3e8:	0101001a 	div	zero,t0,at
 3ec:	00004012 	mflo	t0
	...
 3f8:	00441023 	subu	v0,v0,a0
 3fc:	28410100 	slti	at,v0,256
 400:	14200003 	bnez	at,410 <L801107D8+0x88>
 404:	00401825 	move	v1,v0
 408:	10000001 	b	410 <L801107D8+0x88>
 40c:	240300ff 	li	v1,255
 410:	28a10065 	slti	at,a1,101
 414:	14200003 	bnez	at,424 <L801107D8+0x9c>
 418:	306600ff 	andi	a2,v1,0xff
 41c:	10000008 	b	440 <L801107D8+0xb8>
 420:	240200ff 	li	v0,255
 424:	00051200 	sll	v0,a1,0x8
 428:	00451023 	subu	v0,v0,a1
 42c:	24010064 	li	at,100
 430:	0041001a 	div	zero,v0,at
 434:	00001012 	mflo	v0
	...
 440:	310500ff 	andi	a1,t0,0xff
 444:	0c000000 	jal	0 <func_80110450>
 448:	304700ff 	andi	a3,v0,0xff
 44c:	10000031 	b	514 <L80110960+0x4>
 450:	8fbf0034 	lw	ra,52(sp)

00000454 <L801108A4>:
 454:	3c030000 	lui	v1,0x0
 458:	24630000 	addiu	v1,v1,0
 45c:	846b0000 	lh	t3,0(v1)
 460:	3c010001 	lui	at,0x1
 464:	34210a20 	ori	at,at,0xa20
 468:	256cffff 	addiu	t4,t3,-1
 46c:	a46c0000 	sh	t4,0(v1)
 470:	846d0000 	lh	t5,0(v1)
 474:	240e0040 	li	t6,64
 478:	02a11021 	addu	v0,s5,at
 47c:	55a00025 	bnezl	t5,514 <L80110960+0x4>
 480:	8fbf0034 	lw	ra,52(sp)
 484:	a46e0000 	sh	t6,0(v1)
 488:	944f0000 	lhu	t7,0(v0)
 48c:	25f80001 	addiu	t8,t7,1
 490:	1000001f 	b	510 <L80110960>
 494:	a4580000 	sh	t8,0(v0)

00000498 <L801108E8>:
 498:	3c030000 	lui	v1,0x0
 49c:	24630000 	addiu	v1,v1,0
 4a0:	84790000 	lh	t9,0(v1)
 4a4:	3c010001 	lui	at,0x1
 4a8:	34210a20 	ori	at,at,0xa20
 4ac:	2729ffff 	addiu	t1,t9,-1
 4b0:	a4690000 	sh	t1,0(v1)
 4b4:	846a0000 	lh	t2,0(v1)
 4b8:	240b0032 	li	t3,50
 4bc:	02a11021 	addu	v0,s5,at
 4c0:	55400014 	bnezl	t2,514 <L80110960+0x4>
 4c4:	8fbf0034 	lw	ra,52(sp)
 4c8:	a46b0000 	sh	t3,0(v1)
 4cc:	944c0000 	lhu	t4,0(v0)
 4d0:	258d0001 	addiu	t5,t4,1
 4d4:	1000000e 	b	510 <L80110960>
 4d8:	a44d0000 	sh	t5,0(v0)

000004dc <L8011092C>:
 4dc:	0c000000 	jal	0 <func_80110450>
 4e0:	02a02025 	move	a0,s5
 4e4:	3c030000 	lui	v1,0x0
 4e8:	24630000 	addiu	v1,v1,0
 4ec:	846e0000 	lh	t6,0(v1)
 4f0:	3c010001 	lui	at,0x1
 4f4:	00350821 	addu	at,at,s5
 4f8:	25cfffff 	addiu	t7,t6,-1
 4fc:	a46f0000 	sh	t7,0(v1)
 500:	84780000 	lh	t8,0(v1)
 504:	57000003 	bnezl	t8,514 <L80110960+0x4>
 508:	8fbf0034 	lw	ra,52(sp)
 50c:	a4200a20 	sh	zero,2592(at)

00000510 <L80110960>:
 510:	8fbf0034 	lw	ra,52(sp)
 514:	8fb00018 	lw	s0,24(sp)
 518:	8fb1001c 	lw	s1,28(sp)
 51c:	8fb20020 	lw	s2,32(sp)
 520:	8fb30024 	lw	s3,36(sp)
 524:	8fb40028 	lw	s4,40(sp)
 528:	8fb5002c 	lw	s5,44(sp)
 52c:	8fb60030 	lw	s6,48(sp)
 530:	03e00008 	jr	ra
 534:	27bd0038 	addiu	sp,sp,56
	...
