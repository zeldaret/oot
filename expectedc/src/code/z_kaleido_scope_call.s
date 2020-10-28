
build/src/code/z_kaleido_scope_call.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <KaleidoScopeCall_LoadPlayer>:
   0:	3c020000 	lui	v0,0x0
   4:	8c420000 	lw	v0,0(v0)
   8:	3c0e0000 	lui	t6,0x0
   c:	27bdffe8 	addiu	sp,sp,-24
  10:	25ce001c 	addiu	t6,t6,28
  14:	11c2001a 	beq	t6,v0,80 <KaleidoScopeCall_LoadPlayer+0x80>
  18:	afbf0014 	sw	ra,20(sp)
  1c:	1040000c 	beqz	v0,50 <KaleidoScopeCall_LoadPlayer+0x50>
  20:	3c040000 	lui	a0,0x0
  24:	0c000000 	jal	0 <KaleidoScopeCall_LoadPlayer>
  28:	24840000 	addiu	a0,a0,0
  2c:	3c040000 	lui	a0,0x0
  30:	0c000000 	jal	0 <KaleidoScopeCall_LoadPlayer>
  34:	24840008 	addiu	a0,a0,8
  38:	3c040000 	lui	a0,0x0
  3c:	0c000000 	jal	0 <KaleidoScopeCall_LoadPlayer>
  40:	24840020 	addiu	a0,a0,32
  44:	3c040000 	lui	a0,0x0
  48:	0c000000 	jal	0 <KaleidoScopeCall_LoadPlayer>
  4c:	8c840000 	lw	a0,0(a0)
  50:	3c040000 	lui	a0,0x0
  54:	0c000000 	jal	0 <KaleidoScopeCall_LoadPlayer>
  58:	24840024 	addiu	a0,a0,36
  5c:	3c040000 	lui	a0,0x0
  60:	0c000000 	jal	0 <KaleidoScopeCall_LoadPlayer>
  64:	2484002c 	addiu	a0,a0,44
  68:	3c040000 	lui	a0,0x0
  6c:	0c000000 	jal	0 <KaleidoScopeCall_LoadPlayer>
  70:	24840044 	addiu	a0,a0,68
  74:	3c040000 	lui	a0,0x0
  78:	0c000000 	jal	0 <KaleidoScopeCall_LoadPlayer>
  7c:	2484001c 	addiu	a0,a0,28
  80:	8fbf0014 	lw	ra,20(sp)
  84:	27bd0018 	addiu	sp,sp,24
  88:	03e00008 	jr	ra
  8c:	00000000 	nop

00000090 <KaleidoScopeCall_Init>:
  90:	27bdffe0 	addiu	sp,sp,-32
  94:	afa40020 	sw	a0,32(sp)
  98:	afbf0014 	sw	ra,20(sp)
  9c:	3c040000 	lui	a0,0x0
  a0:	0c000000 	jal	0 <KaleidoScopeCall_LoadPlayer>
  a4:	24840048 	addiu	a0,a0,72
  a8:	3c040000 	lui	a0,0x0
  ac:	24840000 	addiu	a0,a0,0
  b0:	0c000000 	jal	0 <KaleidoScopeCall_LoadPlayer>
  b4:	afa4001c 	sw	a0,28(sp)
  b8:	3c040000 	lui	a0,0x0
  bc:	3c010000 	lui	at,0x0
  c0:	24840000 	addiu	a0,a0,0
  c4:	ac220000 	sw	v0,0(at)
  c8:	0c000000 	jal	0 <KaleidoScopeCall_LoadPlayer>
  cc:	afa40018 	sw	a0,24(sp)
  d0:	3c010000 	lui	at,0x0
  d4:	3c040000 	lui	a0,0x0
  d8:	ac220000 	sw	v0,0(at)
  dc:	24840074 	addiu	a0,a0,116
  e0:	0c000000 	jal	0 <KaleidoScopeCall_LoadPlayer>
  e4:	24050062 	li	a1,98
  e8:	3c040000 	lui	a0,0x0
  ec:	24840090 	addiu	a0,a0,144
  f0:	0c000000 	jal	0 <KaleidoScopeCall_LoadPlayer>
  f4:	8fa5001c 	lw	a1,28(sp)
  f8:	3c040000 	lui	a0,0x0
  fc:	248400ac 	addiu	a0,a0,172
 100:	0c000000 	jal	0 <KaleidoScopeCall_LoadPlayer>
 104:	24050063 	li	a1,99
 108:	3c040000 	lui	a0,0x0
 10c:	3c050000 	lui	a1,0x0
 110:	8ca50000 	lw	a1,0(a1)
 114:	0c000000 	jal	0 <KaleidoScopeCall_LoadPlayer>
 118:	248400c8 	addiu	a0,a0,200
 11c:	3c040000 	lui	a0,0x0
 120:	248400e8 	addiu	a0,a0,232
 124:	0c000000 	jal	0 <KaleidoScopeCall_LoadPlayer>
 128:	24050064 	li	a1,100
 12c:	3c040000 	lui	a0,0x0
 130:	24840104 	addiu	a0,a0,260
 134:	0c000000 	jal	0 <KaleidoScopeCall_LoadPlayer>
 138:	8fa50018 	lw	a1,24(sp)
 13c:	3c040000 	lui	a0,0x0
 140:	24840120 	addiu	a0,a0,288
 144:	0c000000 	jal	0 <KaleidoScopeCall_LoadPlayer>
 148:	24050065 	li	a1,101
 14c:	3c040000 	lui	a0,0x0
 150:	3c050000 	lui	a1,0x0
 154:	8ca50000 	lw	a1,0(a1)
 158:	0c000000 	jal	0 <KaleidoScopeCall_LoadPlayer>
 15c:	2484013c 	addiu	a0,a0,316
 160:	0c000000 	jal	0 <KaleidoScopeCall_LoadPlayer>
 164:	8fa40020 	lw	a0,32(sp)
 168:	8fbf0014 	lw	ra,20(sp)
 16c:	27bd0020 	addiu	sp,sp,32
 170:	03e00008 	jr	ra
 174:	00000000 	nop

00000178 <KaleidoScopeCall_Destroy>:
 178:	27bdffe8 	addiu	sp,sp,-24
 17c:	afa40018 	sw	a0,24(sp)
 180:	afbf0014 	sw	ra,20(sp)
 184:	3c040000 	lui	a0,0x0
 188:	0c000000 	jal	0 <KaleidoScopeCall_LoadPlayer>
 18c:	2484015c 	addiu	a0,a0,348
 190:	0c000000 	jal	0 <KaleidoScopeCall_LoadPlayer>
 194:	8fa40018 	lw	a0,24(sp)
 198:	8fbf0014 	lw	ra,20(sp)
 19c:	27bd0018 	addiu	sp,sp,24
 1a0:	03e00008 	jr	ra
 1a4:	00000000 	nop

000001a8 <KaleidoScopeCall_Update>:
 1a8:	27bdffd8 	addiu	sp,sp,-40
 1ac:	3c010001 	lui	at,0x1
 1b0:	00817821 	addu	t7,a0,at
 1b4:	3c180001 	lui	t8,0x1
 1b8:	afbf0014 	sw	ra,20(sp)
 1bc:	afa40028 	sw	a0,40(sp)
 1c0:	0304c021 	addu	t8,t8,a0
 1c4:	afaf0018 	sw	t7,24(sp)
 1c8:	97180934 	lhu	t8,2356(t8)
 1cc:	3c190001 	lui	t9,0x1
 1d0:	0324c821 	addu	t9,t9,a0
 1d4:	17000003 	bnez	t8,1e4 <KaleidoScopeCall_Update+0x3c>
 1d8:	8fa30028 	lw	v1,40(sp)
 1dc:	97390936 	lhu	t9,2358(t9)
 1e0:	13200087 	beqz	t9,400 <KaleidoScopeCall_Update+0x258>
 1e4:	3c010001 	lui	at,0x1
 1e8:	34210760 	ori	at,at,0x760
 1ec:	00611821 	addu	v1,v1,at
 1f0:	946201d4 	lhu	v0,468(v1)
 1f4:	24040001 	li	a0,1
 1f8:	24010008 	li	at,8
 1fc:	14820016 	bne	a0,v0,258 <KaleidoScopeCall_Update+0xb0>
 200:	00000000 	nop
 204:	0c000000 	jal	0 <KaleidoScopeCall_LoadPlayer>
 208:	afa3001c 	sw	v1,28(sp)
 20c:	8fa3001c 	lw	v1,28(sp)
 210:	1440007b 	bnez	v0,400 <KaleidoScopeCall_Update+0x258>
 214:	24040001 	li	a0,1
 218:	3c020000 	lui	v0,0x0
 21c:	24420000 	addiu	v0,v0,0
 220:	8c490000 	lw	t1,0(v0)
 224:	24080007 	li	t0,7
 228:	240a0003 	li	t2,3
 22c:	a5281074 	sh	t0,4212(t1)
 230:	8c4b0000 	lw	t3,0(v0)
 234:	a56a1078 	sh	t2,4216(t3)
 238:	8c4c0000 	lw	t4,0(v0)
 23c:	a5840190 	sh	a0,400(t4)
 240:	946f01d4 	lhu	t7,468(v1)
 244:	a46001e4 	sh	zero,484(v1)
 248:	a46001ec 	sh	zero,492(v1)
 24c:	25f80001 	addiu	t8,t7,1
 250:	1000006b 	b	400 <KaleidoScopeCall_Update+0x258>
 254:	a47801d4 	sh	t8,468(v1)
 258:	54410012 	bnel	v0,at,2a4 <KaleidoScopeCall_Update+0xfc>
 25c:	24010002 	li	at,2
 260:	3c020000 	lui	v0,0x0
 264:	24420000 	addiu	v0,v0,0
 268:	8c590000 	lw	t9,0(v0)
 26c:	240e0007 	li	t6,7
 270:	24080003 	li	t0,3
 274:	a72e1074 	sh	t6,4212(t9)
 278:	8c490000 	lw	t1,0(v0)
 27c:	a5281078 	sh	t0,4216(t1)
 280:	8c4a0000 	lw	t2,0(v0)
 284:	a5440190 	sh	a0,400(t2)
 288:	946c01d4 	lhu	t4,468(v1)
 28c:	a46001e4 	sh	zero,484(v1)
 290:	a46001ec 	sh	zero,492(v1)
 294:	258d0001 	addiu	t5,t4,1
 298:	10000059 	b	400 <KaleidoScopeCall_Update+0x258>
 29c:	a46d01d4 	sh	t5,468(v1)
 2a0:	24010002 	li	at,2
 2a4:	10410003 	beq	v0,at,2b4 <KaleidoScopeCall_Update+0x10c>
 2a8:	24010009 	li	at,9
 2ac:	14410015 	bne	v0,at,304 <KaleidoScopeCall_Update+0x15c>
 2b0:	00000000 	nop
 2b4:	3c020000 	lui	v0,0x0
 2b8:	24420000 	addiu	v0,v0,0
 2bc:	8c4f0000 	lw	t7,0(v0)
 2c0:	3c040000 	lui	a0,0x0
 2c4:	24840188 	addiu	a0,a0,392
 2c8:	85e50190 	lh	a1,400(t7)
 2cc:	0c000000 	jal	0 <KaleidoScopeCall_LoadPlayer>
 2d0:	afa3001c 	sw	v1,28(sp)
 2d4:	3c020000 	lui	v0,0x0
 2d8:	24420000 	addiu	v0,v0,0
 2dc:	8c580000 	lw	t8,0(v0)
 2e0:	8fa3001c 	lw	v1,28(sp)
 2e4:	870e0190 	lh	t6,400(t8)
 2e8:	29c10003 	slti	at,t6,3
 2ec:	54200045 	bnezl	at,404 <KaleidoScopeCall_Update+0x25c>
 2f0:	8fbf0014 	lw	ra,20(sp)
 2f4:	947901d4 	lhu	t9,468(v1)
 2f8:	27280001 	addiu	t0,t9,1
 2fc:	10000040 	b	400 <KaleidoScopeCall_Update+0x258>
 300:	a46801d4 	sh	t0,468(v1)
 304:	1040003e 	beqz	v0,400 <KaleidoScopeCall_Update+0x258>
 308:	3c020000 	lui	v0,0x0
 30c:	8c420000 	lw	v0,0(v0)
 310:	3c090000 	lui	t1,0x0
 314:	25290000 	addiu	t1,t1,0
 318:	1122001c 	beq	t1,v0,38c <KaleidoScopeCall_Update+0x1e4>
 31c:	00000000 	nop
 320:	1040000c 	beqz	v0,354 <KaleidoScopeCall_Update+0x1ac>
 324:	3c040000 	lui	a0,0x0
 328:	0c000000 	jal	0 <KaleidoScopeCall_LoadPlayer>
 32c:	248401a4 	addiu	a0,a0,420
 330:	3c040000 	lui	a0,0x0
 334:	0c000000 	jal	0 <KaleidoScopeCall_LoadPlayer>
 338:	248401ac 	addiu	a0,a0,428
 33c:	3c040000 	lui	a0,0x0
 340:	0c000000 	jal	0 <KaleidoScopeCall_LoadPlayer>
 344:	248401d0 	addiu	a0,a0,464
 348:	3c040000 	lui	a0,0x0
 34c:	0c000000 	jal	0 <KaleidoScopeCall_LoadPlayer>
 350:	8c840000 	lw	a0,0(a0)
 354:	3c040000 	lui	a0,0x0
 358:	0c000000 	jal	0 <KaleidoScopeCall_LoadPlayer>
 35c:	248401d4 	addiu	a0,a0,468
 360:	3c040000 	lui	a0,0x0
 364:	0c000000 	jal	0 <KaleidoScopeCall_LoadPlayer>
 368:	248401dc 	addiu	a0,a0,476
 36c:	3c040000 	lui	a0,0x0
 370:	0c000000 	jal	0 <KaleidoScopeCall_LoadPlayer>
 374:	24840200 	addiu	a0,a0,512
 378:	3c040000 	lui	a0,0x0
 37c:	0c000000 	jal	0 <KaleidoScopeCall_LoadPlayer>
 380:	24840000 	addiu	a0,a0,0
 384:	3c020000 	lui	v0,0x0
 388:	8c420000 	lw	v0,0(v0)
 38c:	3c0a0000 	lui	t2,0x0
 390:	254a0000 	addiu	t2,t2,0
 394:	1542001a 	bne	t2,v0,400 <KaleidoScopeCall_Update+0x258>
 398:	3c190000 	lui	t9,0x0
 39c:	8f390000 	lw	t9,0(t9)
 3a0:	8fa40028 	lw	a0,40(sp)
 3a4:	0320f809 	jalr	t9
 3a8:	00000000 	nop
 3ac:	8fab0018 	lw	t3,24(sp)
 3b0:	956c0934 	lhu	t4,2356(t3)
 3b4:	55800013 	bnezl	t4,404 <KaleidoScopeCall_Update+0x25c>
 3b8:	8fbf0014 	lw	ra,20(sp)
 3bc:	956d0936 	lhu	t5,2358(t3)
 3c0:	3c040000 	lui	a0,0x0
 3c4:	55a0000f 	bnezl	t5,404 <KaleidoScopeCall_Update+0x25c>
 3c8:	8fbf0014 	lw	ra,20(sp)
 3cc:	0c000000 	jal	0 <KaleidoScopeCall_LoadPlayer>
 3d0:	24840204 	addiu	a0,a0,516
 3d4:	3c040000 	lui	a0,0x0
 3d8:	0c000000 	jal	0 <KaleidoScopeCall_LoadPlayer>
 3dc:	2484020c 	addiu	a0,a0,524
 3e0:	3c040000 	lui	a0,0x0
 3e4:	0c000000 	jal	0 <KaleidoScopeCall_LoadPlayer>
 3e8:	24840230 	addiu	a0,a0,560
 3ec:	3c040000 	lui	a0,0x0
 3f0:	0c000000 	jal	0 <KaleidoScopeCall_LoadPlayer>
 3f4:	24840000 	addiu	a0,a0,0
 3f8:	0c000000 	jal	0 <KaleidoScopeCall_LoadPlayer>
 3fc:	00000000 	nop
 400:	8fbf0014 	lw	ra,20(sp)
 404:	27bd0028 	addiu	sp,sp,40
 408:	03e00008 	jr	ra
 40c:	00000000 	nop

00000410 <KaleidoScopeCall_Draw>:
 410:	3c0e0000 	lui	t6,0x0
 414:	8dce0000 	lw	t6,0(t6)
 418:	27bdffe8 	addiu	sp,sp,-24
 41c:	afbf0014 	sw	ra,20(sp)
 420:	85cf0190 	lh	t7,400(t6)
 424:	3c020001 	lui	v0,0x1
 428:	00441021 	addu	v0,v0,a0
 42c:	29e10003 	slti	at,t7,3
 430:	54200014 	bnezl	at,484 <KaleidoScopeCall_Draw+0x74>
 434:	8fbf0014 	lw	ra,20(sp)
 438:	94420934 	lhu	v0,2356(v0)
 43c:	28410004 	slti	at,v0,4
 440:	14200002 	bnez	at,44c <KaleidoScopeCall_Draw+0x3c>
 444:	28410008 	slti	at,v0,8
 448:	14200004 	bnez	at,45c <KaleidoScopeCall_Draw+0x4c>
 44c:	2841000b 	slti	at,v0,11
 450:	1420000b 	bnez	at,480 <KaleidoScopeCall_Draw+0x70>
 454:	28410013 	slti	at,v0,19
 458:	10200009 	beqz	at,480 <KaleidoScopeCall_Draw+0x70>
 45c:	3c190000 	lui	t9,0x0
 460:	8f390000 	lw	t9,0(t9)
 464:	3c180000 	lui	t8,0x0
 468:	27180000 	addiu	t8,t8,0
 46c:	17190004 	bne	t8,t9,480 <KaleidoScopeCall_Draw+0x70>
 470:	3c190000 	lui	t9,0x0
 474:	8f390000 	lw	t9,0(t9)
 478:	0320f809 	jalr	t9
 47c:	00000000 	nop
 480:	8fbf0014 	lw	ra,20(sp)
 484:	27bd0018 	addiu	sp,sp,24
 488:	03e00008 	jr	ra
 48c:	00000000 	nop
