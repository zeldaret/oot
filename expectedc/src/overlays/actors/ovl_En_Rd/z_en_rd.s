
build/src/overlays/actors/ovl_En_Rd/z_en_rd.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <EnRd_SetupAction>:
       0:	03e00008 	jr	ra
       4:	ac850308 	sw	a1,776(a0)

00000008 <EnRd_Init>:
       8:	27bdffc0 	addiu	sp,sp,-64
       c:	afa50044 	sw	a1,68(sp)
      10:	afbf002c 	sw	ra,44(sp)
      14:	afb00028 	sw	s0,40(sp)
      18:	3c050000 	lui	a1,0x0
      1c:	00808025 	move	s0,a0
      20:	0c000000 	jal	0 <EnRd_SetupAction>
      24:	24a5006c 	addiu	a1,a1,108
      28:	44800000 	mtc1	zero,$f0
      2c:	3c0e0000 	lui	t6,0x0
      30:	25ce004c 	addiu	t6,t6,76
      34:	44050000 	mfc1	a1,$f0
      38:	44070000 	mfc1	a3,$f0
      3c:	a200001f 	sb	zero,31(s0)
      40:	ae0e0098 	sw	t6,152(s0)
      44:	260400b4 	addiu	a0,s0,180
      48:	0c000000 	jal	0 <EnRd_SetupAction>
      4c:	00003025 	move	a2,zero
      50:	8e180028 	lw	t8,40(s0)
      54:	3c014248 	lui	at,0x4248
      58:	8e190024 	lw	t9,36(s0)
      5c:	ae18003c 	sw	t8,60(s0)
      60:	c604003c 	lwc1	$f4,60(s0)
      64:	44813000 	mtc1	at,$f6
      68:	a600030e 	sh	zero,782(s0)
      6c:	860f030e 	lh	t7,782(s0)
      70:	860c001c 	lh	t4,28(s0)
      74:	8602001c 	lh	v0,28(s0)
      78:	46062200 	add.s	$f8,$f4,$f6
      7c:	ae190038 	sw	t9,56(s0)
      80:	8e19002c 	lw	t9,44(s0)
      84:	240a00ff 	li	t2,255
      88:	a60f0310 	sh	t7,784(s0)
      8c:	318dff00 	andi	t5,t4,0xff00
      90:	240800fe 	li	t0,254
      94:	24090008 	li	t1,8
      98:	314b00ff 	andi	t3,t2,0xff
      9c:	000d7203 	sra	t6,t5,0x8
      a0:	304f0080 	andi	t7,v0,0x80
      a4:	e608003c 	swc1	$f8,60(s0)
      a8:	a20800ae 	sb	t0,174(s0)
      ac:	a20900af 	sb	t1,175(s0)
      b0:	a60b0314 	sh	t3,788(s0)
      b4:	a20a031d 	sb	t2,797(s0)
      b8:	a60e0312 	sh	t6,786(s0)
      bc:	11e00004 	beqz	t7,d0 <EnRd_Init+0xc8>
      c0:	ae190040 	sw	t9,64(s0)
      c4:	3458ff00 	ori	t8,v0,0xff00
      c8:	10000003 	b	d8 <EnRd_Init+0xd0>
      cc:	a618001c 	sh	t8,28(s0)
      d0:	305900ff 	andi	t9,v0,0xff
      d4:	a619001c 	sh	t9,28(s0)
      d8:	8608001c 	lh	t0,28(s0)
      dc:	8fa40044 	lw	a0,68(sp)
      e0:	26050188 	addiu	a1,s0,392
      e4:	2901ffff 	slti	at,t0,-1
      e8:	14200012 	bnez	at,134 <EnRd_Init+0x12c>
      ec:	3c060000 	lui	a2,0x0
      f0:	26050188 	addiu	a1,s0,392
      f4:	3c060000 	lui	a2,0x0
      f8:	3c070000 	lui	a3,0x0
      fc:	260901cc 	addiu	t1,s0,460
     100:	260a0268 	addiu	t2,s0,616
     104:	240b001a 	li	t3,26
     108:	afab0018 	sw	t3,24(sp)
     10c:	afaa0014 	sw	t2,20(sp)
     110:	afa90010 	sw	t1,16(sp)
     114:	24e70000 	addiu	a3,a3,0
     118:	24c60000 	addiu	a2,a2,0
     11c:	afa50038 	sw	a1,56(sp)
     120:	0c000000 	jal	0 <EnRd_SetupAction>
     124:	8fa40044 	lw	a0,68(sp)
     128:	240c002a 	li	t4,42
     12c:	1000000e 	b	168 <EnRd_Init+0x160>
     130:	a20c0117 	sb	t4,279(s0)
     134:	3c070000 	lui	a3,0x0
     138:	260d01cc 	addiu	t5,s0,460
     13c:	260e0268 	addiu	t6,s0,616
     140:	240f001a 	li	t7,26
     144:	afaf0018 	sw	t7,24(sp)
     148:	afae0014 	sw	t6,20(sp)
     14c:	afad0010 	sw	t5,16(sp)
     150:	24e70000 	addiu	a3,a3,0
     154:	24c60000 	addiu	a2,a2,0
     158:	0c000000 	jal	0 <EnRd_SetupAction>
     15c:	afa50038 	sw	a1,56(sp)
     160:	2418002d 	li	t8,45
     164:	a2180117 	sb	t8,279(s0)
     168:	26050320 	addiu	a1,s0,800
     16c:	afa50034 	sw	a1,52(sp)
     170:	0c000000 	jal	0 <EnRd_SetupAction>
     174:	8fa40044 	lw	a0,68(sp)
     178:	3c070000 	lui	a3,0x0
     17c:	8fa50034 	lw	a1,52(sp)
     180:	24e70020 	addiu	a3,a3,32
     184:	8fa40044 	lw	a0,68(sp)
     188:	0c000000 	jal	0 <EnRd_SetupAction>
     18c:	02003025 	move	a2,s0
     190:	8619001c 	lh	t9,28(s0)
     194:	2b21fffe 	slti	at,t9,-2
     198:	14200005 	bnez	at,1b0 <EnRd_Init+0x1a8>
     19c:	00000000 	nop
     1a0:	0c000000 	jal	0 <EnRd_SetupAction>
     1a4:	02002025 	move	a0,s0
     1a8:	10000003 	b	1b8 <EnRd_Init+0x1b0>
     1ac:	00000000 	nop
     1b0:	0c000000 	jal	0 <EnRd_SetupAction>
     1b4:	02002025 	move	a0,s0
     1b8:	0c000000 	jal	0 <EnRd_SetupAction>
     1bc:	8fa40038 	lw	a0,56(sp)
     1c0:	8608001c 	lh	t0,28(s0)
     1c4:	24010003 	li	at,3
     1c8:	55010005 	bnel	t0,at,1e0 <EnRd_Init+0x1d8>
     1cc:	8fbf002c 	lw	ra,44(sp)
     1d0:	8e090004 	lw	t1,4(s0)
     1d4:	352a0080 	ori	t2,t1,0x80
     1d8:	ae0a0004 	sw	t2,4(s0)
     1dc:	8fbf002c 	lw	ra,44(sp)
     1e0:	8fb00028 	lw	s0,40(sp)
     1e4:	27bd0040 	addiu	sp,sp,64
     1e8:	03e00008 	jr	ra
     1ec:	00000000 	nop

000001f0 <EnRd_Destroy>:
     1f0:	3c020000 	lui	v0,0x0
     1f4:	24420000 	addiu	v0,v0,0
     1f8:	844e1422 	lh	t6,5154(v0)
     1fc:	27bdffe8 	addiu	sp,sp,-24
     200:	afbf0014 	sw	ra,20(sp)
     204:	00803025 	move	a2,a0
     208:	11c00002 	beqz	t6,214 <EnRd_Destroy+0x24>
     20c:	00a03825 	move	a3,a1
     210:	a4401422 	sh	zero,5154(v0)
     214:	00e02025 	move	a0,a3
     218:	0c000000 	jal	0 <EnRd_SetupAction>
     21c:	24c50320 	addiu	a1,a2,800
     220:	8fbf0014 	lw	ra,20(sp)
     224:	27bd0018 	addiu	sp,sp,24
     228:	03e00008 	jr	ra
     22c:	00000000 	nop

00000230 <func_80AE2630>:
     230:	8c821c5c 	lw	v0,7260(a0)
     234:	24030090 	li	v1,144
     238:	10400016 	beqz	v0,294 <func_80AE2630+0x64>
     23c:	00000000 	nop
     240:	844e0000 	lh	t6,0(v0)
     244:	146e0006 	bne	v1,t6,260 <func_80AE2630+0x30>
     248:	00000000 	nop
     24c:	10450004 	beq	v0,a1,260 <func_80AE2630+0x30>
     250:	00000000 	nop
     254:	844f001c 	lh	t7,28(v0)
     258:	05e10003 	bgez	t7,268 <func_80AE2630+0x38>
     25c:	00000000 	nop
     260:	1000000a 	b	28c <func_80AE2630+0x5c>
     264:	8c420124 	lw	v0,292(v0)
     268:	50c00004 	beqzl	a2,27c <func_80AE2630+0x4c>
     26c:	8c580118 	lw	t8,280(v0)
     270:	10000005 	b	288 <func_80AE2630+0x58>
     274:	ac450118 	sw	a1,280(v0)
     278:	8c580118 	lw	t8,280(v0)
     27c:	54b80003 	bnel	a1,t8,28c <func_80AE2630+0x5c>
     280:	8c420124 	lw	v0,292(v0)
     284:	ac400118 	sw	zero,280(v0)
     288:	8c420124 	lw	v0,292(v0)
     28c:	5440ffed 	bnezl	v0,244 <func_80AE2630+0x14>
     290:	844e0000 	lh	t6,0(v0)
     294:	03e00008 	jr	ra
     298:	00000000 	nop

0000029c <func_80AE269C>:
     29c:	27bdffe0 	addiu	sp,sp,-32
     2a0:	afbf001c 	sw	ra,28(sp)
     2a4:	afb00018 	sw	s0,24(sp)
     2a8:	848e001c 	lh	t6,28(a0)
     2ac:	24010002 	li	at,2
     2b0:	00808025 	move	s0,a0
     2b4:	11c10008 	beq	t6,at,2d8 <func_80AE269C+0x3c>
     2b8:	3c050000 	lui	a1,0x0
     2bc:	3c050000 	lui	a1,0x0
     2c0:	24a50000 	addiu	a1,a1,0
     2c4:	24840188 	addiu	a0,a0,392
     2c8:	0c000000 	jal	0 <EnRd_SetupAction>
     2cc:	3c06c0c0 	lui	a2,0xc0c0
     2d0:	10000004 	b	2e4 <func_80AE269C+0x48>
     2d4:	00000000 	nop
     2d8:	26040188 	addiu	a0,s0,392
     2dc:	0c000000 	jal	0 <EnRd_SetupAction>
     2e0:	24a50000 	addiu	a1,a1,0
     2e4:	0c000000 	jal	0 <EnRd_SetupAction>
     2e8:	a200031b 	sb	zero,795(s0)
     2ec:	3c014120 	lui	at,0x4120
     2f0:	44812000 	mtc1	at,$f4
     2f4:	3c0140a0 	lui	at,0x40a0
     2f8:	44814000 	mtc1	at,$f8
     2fc:	46040182 	mul.s	$f6,$f0,$f4
     300:	44809000 	mtc1	zero,$f18
     304:	861900b6 	lh	t9,182(s0)
     308:	3c050000 	lui	a1,0x0
     30c:	24a50000 	addiu	a1,a1,0
     310:	02002025 	move	a0,s0
     314:	e6120068 	swc1	$f18,104(s0)
     318:	46083280 	add.s	$f10,$f6,$f8
     31c:	a6190032 	sh	t9,50(s0)
     320:	4600540d 	trunc.w.s	$f16,$f10
     324:	44188000 	mfc1	t8,$f16
     328:	0c000000 	jal	0 <EnRd_SetupAction>
     32c:	a618030c 	sh	t8,780(s0)
     330:	8fbf001c 	lw	ra,28(sp)
     334:	8fb00018 	lw	s0,24(sp)
     338:	27bd0020 	addiu	sp,sp,32
     33c:	03e00008 	jr	ra
     340:	00000000 	nop

00000344 <func_80AE2744>:
     344:	27bdffd0 	addiu	sp,sp,-48
     348:	afb00020 	sw	s0,32(sp)
     34c:	00808025 	move	s0,a0
     350:	afbf0024 	sw	ra,36(sp)
     354:	24840188 	addiu	a0,a0,392
     358:	afa50034 	sw	a1,52(sp)
     35c:	0c000000 	jal	0 <EnRd_SetupAction>
     360:	afa4002c 	sw	a0,44(sp)
     364:	2604030e 	addiu	a0,s0,782
     368:	00002825 	move	a1,zero
     36c:	24060001 	li	a2,1
     370:	24070064 	li	a3,100
     374:	0c000000 	jal	0 <EnRd_SetupAction>
     378:	afa00010 	sw	zero,16(sp)
     37c:	26040310 	addiu	a0,s0,784
     380:	00002825 	move	a1,zero
     384:	24060001 	li	a2,1
     388:	24070064 	li	a3,100
     38c:	0c000000 	jal	0 <EnRd_SetupAction>
     390:	afa00010 	sw	zero,16(sp)
     394:	860e001c 	lh	t6,28(s0)
     398:	24010002 	li	at,2
     39c:	55c1001c 	bnel	t6,at,410 <func_80AE2744+0xcc>
     3a0:	860f030c 	lh	t7,780(s0)
     3a4:	44802000 	mtc1	zero,$f4
     3a8:	c60601a0 	lwc1	$f6,416(s0)
     3ac:	46062032 	c.eq.s	$f4,$f6
     3b0:	00000000 	nop
     3b4:	45020016 	bc1fl	410 <func_80AE2744+0xcc>
     3b8:	860f030c 	lh	t7,780(s0)
     3bc:	0c000000 	jal	0 <EnRd_SetupAction>
     3c0:	00000000 	nop
     3c4:	3c013f00 	lui	at,0x3f00
     3c8:	44814000 	mtc1	at,$f8
     3cc:	8fa4002c 	lw	a0,44(sp)
     3d0:	3c050000 	lui	a1,0x0
     3d4:	4600403e 	c.le.s	$f8,$f0
     3d8:	00000000 	nop
     3dc:	45000007 	bc1f	3fc <func_80AE2744+0xb8>
     3e0:	00000000 	nop
     3e4:	3c050000 	lui	a1,0x0
     3e8:	24a50000 	addiu	a1,a1,0
     3ec:	0c000000 	jal	0 <EnRd_SetupAction>
     3f0:	8fa4002c 	lw	a0,44(sp)
     3f4:	10000018 	b	458 <func_80AE2744+0x114>
     3f8:	8e0a0118 	lw	t2,280(s0)
     3fc:	0c000000 	jal	0 <EnRd_SetupAction>
     400:	24a50000 	addiu	a1,a1,0
     404:	10000014 	b	458 <func_80AE2744+0x114>
     408:	8e0a0118 	lw	t2,280(s0)
     40c:	860f030c 	lh	t7,780(s0)
     410:	25f8ffff 	addiu	t8,t7,-1
     414:	a618030c 	sh	t8,780(s0)
     418:	8619030c 	lh	t9,780(s0)
     41c:	5720000e 	bnezl	t9,458 <func_80AE2744+0x114>
     420:	8e0a0118 	lw	t2,280(s0)
     424:	0c000000 	jal	0 <EnRd_SetupAction>
     428:	00000000 	nop
     42c:	3c014120 	lui	at,0x4120
     430:	44811000 	mtc1	at,$f2
     434:	44802000 	mtc1	zero,$f4
     438:	46020282 	mul.s	$f10,$f0,$f2
     43c:	e60401a0 	swc1	$f4,416(s0)
     440:	46025400 	add.s	$f16,$f10,$f2
     444:	4600848d 	trunc.w.s	$f18,$f16
     448:	44099000 	mfc1	t1,$f18
     44c:	00000000 	nop
     450:	a609030c 	sh	t1,780(s0)
     454:	8e0a0118 	lw	t2,280(s0)
     458:	51400011 	beqzl	t2,4a0 <func_80AE2744+0x15c>
     45c:	920d0305 	lbu	t5,773(s0)
     460:	920b0305 	lbu	t3,773(s0)
     464:	55600034 	bnezl	t3,538 <func_80AE2744+0x1f4>
     468:	8fb90034 	lw	t9,52(sp)
     46c:	860c001c 	lh	t4,28(s0)
     470:	24010002 	li	at,2
     474:	11810005 	beq	t4,at,48c <func_80AE2744+0x148>
     478:	00000000 	nop
     47c:	0c000000 	jal	0 <EnRd_SetupAction>
     480:	02002025 	move	a0,s0
     484:	1000002c 	b	538 <func_80AE2744+0x1f4>
     488:	8fb90034 	lw	t9,52(sp)
     48c:	0c000000 	jal	0 <EnRd_SetupAction>
     490:	02002025 	move	a0,s0
     494:	10000028 	b	538 <func_80AE2744+0x1f4>
     498:	8fb90034 	lw	t9,52(sp)
     49c:	920d0305 	lbu	t5,773(s0)
     4a0:	51a0000c 	beqzl	t5,4d4 <func_80AE2744+0x190>
     4a4:	3c014316 	lui	at,0x4316
     4a8:	860e001c 	lh	t6,28(s0)
     4ac:	24010002 	li	at,2
     4b0:	11c10005 	beq	t6,at,4c8 <func_80AE2744+0x184>
     4b4:	00000000 	nop
     4b8:	0c000000 	jal	0 <EnRd_SetupAction>
     4bc:	02002025 	move	a0,s0
     4c0:	10000004 	b	4d4 <func_80AE2744+0x190>
     4c4:	3c014316 	lui	at,0x4316
     4c8:	0c000000 	jal	0 <EnRd_SetupAction>
     4cc:	02002025 	move	a0,s0
     4d0:	3c014316 	lui	at,0x4316
     4d4:	44813000 	mtc1	at,$f6
     4d8:	c6080090 	lwc1	$f8,144(s0)
     4dc:	a2000305 	sb	zero,773(s0)
     4e0:	4606403e 	c.le.s	$f8,$f6
     4e4:	00000000 	nop
     4e8:	45020013 	bc1fl	538 <func_80AE2744+0x1f4>
     4ec:	8fb90034 	lw	t9,52(sp)
     4f0:	0c000000 	jal	0 <EnRd_SetupAction>
     4f4:	8fa40034 	lw	a0,52(sp)
     4f8:	5040000f 	beqzl	v0,538 <func_80AE2744+0x1f4>
     4fc:	8fb90034 	lw	t9,52(sp)
     500:	860f001c 	lh	t7,28(s0)
     504:	24010002 	li	at,2
     508:	11e10008 	beq	t7,at,52c <func_80AE2744+0x1e8>
     50c:	00000000 	nop
     510:	92180305 	lbu	t8,773(s0)
     514:	17000005 	bnez	t8,52c <func_80AE2744+0x1e8>
     518:	00000000 	nop
     51c:	0c000000 	jal	0 <EnRd_SetupAction>
     520:	02002025 	move	a0,s0
     524:	10000004 	b	538 <func_80AE2744+0x1f4>
     528:	8fb90034 	lw	t9,52(sp)
     52c:	0c000000 	jal	0 <EnRd_SetupAction>
     530:	02002025 	move	a0,s0
     534:	8fb90034 	lw	t9,52(sp)
     538:	3c080001 	lui	t0,0x1
     53c:	02002025 	move	a0,s0
     540:	01194021 	addu	t0,t0,t9
     544:	8d081de4 	lw	t0,7652(t0)
     548:	3109005f 	andi	t1,t0,0x5f
     54c:	55200004 	bnezl	t1,560 <func_80AE2744+0x21c>
     550:	8fbf0024 	lw	ra,36(sp)
     554:	0c000000 	jal	0 <EnRd_SetupAction>
     558:	240538e4 	li	a1,14564
     55c:	8fbf0024 	lw	ra,36(sp)
     560:	8fb00020 	lw	s0,32(sp)
     564:	27bd0030 	addiu	sp,sp,48
     568:	03e00008 	jr	ra
     56c:	00000000 	nop

00000570 <func_80AE2970>:
     570:	27bdffd0 	addiu	sp,sp,-48
     574:	afb00028 	sw	s0,40(sp)
     578:	00808025 	move	s0,a0
     57c:	afbf002c 	sw	ra,44(sp)
     580:	3c040000 	lui	a0,0x0
     584:	0c000000 	jal	0 <EnRd_SetupAction>
     588:	24840000 	addiu	a0,a0,0
     58c:	44822000 	mtc1	v0,$f4
     590:	44800000 	mtc1	zero,$f0
     594:	3c01c0c0 	lui	at,0xc0c0
     598:	468021a0 	cvt.s.w	$f6,$f4
     59c:	44814000 	mtc1	at,$f8
     5a0:	3c050000 	lui	a1,0x0
     5a4:	44060000 	mfc1	a2,$f0
     5a8:	44070000 	mfc1	a3,$f0
     5ac:	24a50000 	addiu	a1,a1,0
     5b0:	e7a60010 	swc1	$f6,16(sp)
     5b4:	26040188 	addiu	a0,s0,392
     5b8:	afa00014 	sw	zero,20(sp)
     5bc:	0c000000 	jal	0 <EnRd_SetupAction>
     5c0:	e7a80018 	swc1	$f8,24(sp)
     5c4:	44800000 	mtc1	zero,$f0
     5c8:	240e000b 	li	t6,11
     5cc:	240f0006 	li	t7,6
     5d0:	2418c000 	li	t8,-16384
     5d4:	3c050000 	lui	a1,0x0
     5d8:	a20e031b 	sb	t6,795(s0)
     5dc:	a60f030c 	sh	t7,780(s0)
     5e0:	a61800b4 	sh	t8,180(s0)
     5e4:	24a50000 	addiu	a1,a1,0
     5e8:	02002025 	move	a0,s0
     5ec:	e600006c 	swc1	$f0,108(s0)
     5f0:	e60000bc 	swc1	$f0,188(s0)
     5f4:	0c000000 	jal	0 <EnRd_SetupAction>
     5f8:	e6000068 	swc1	$f0,104(s0)
     5fc:	8fbf002c 	lw	ra,44(sp)
     600:	8fb00028 	lw	s0,40(sp)
     604:	27bd0030 	addiu	sp,sp,48
     608:	03e00008 	jr	ra
     60c:	00000000 	nop

00000610 <func_80AE2A10>:
     610:	27bdffd8 	addiu	sp,sp,-40
     614:	afbf0024 	sw	ra,36(sp)
     618:	afb00020 	sw	s0,32(sp)
     61c:	afa5002c 	sw	a1,44(sp)
     620:	848e00b4 	lh	t6,180(a0)
     624:	00808025 	move	s0,a0
     628:	2401c000 	li	at,-16384
     62c:	11c1001a 	beq	t6,at,698 <func_80AE2A10+0x88>
     630:	248400b4 	addiu	a0,a0,180
     634:	00002825 	move	a1,zero
     638:	24060001 	li	a2,1
     63c:	240707d0 	li	a3,2000
     640:	0c000000 	jal	0 <EnRd_SetupAction>
     644:	afa00010 	sw	zero,16(sp)
     648:	3c010000 	lui	at,0x0
     64c:	c4220020 	lwc1	$f2,32(at)
     650:	8e05000c 	lw	a1,12(s0)
     654:	26040028 	addiu	a0,s0,40
     658:	44061000 	mfc1	a2,$f2
     65c:	3c074000 	lui	a3,0x4000
     660:	0c000000 	jal	0 <EnRd_SetupAction>
     664:	e7a20010 	swc1	$f2,16(sp)
     668:	44802000 	mtc1	zero,$f4
     66c:	3c01c060 	lui	at,0xc060
     670:	46040032 	c.eq.s	$f0,$f4
     674:	00000000 	nop
     678:	45020041 	bc1fl	780 <func_80AE2A10+0x170>
     67c:	8fbf0024 	lw	ra,36(sp)
     680:	44813000 	mtc1	at,$f6
     684:	02002025 	move	a0,s0
     688:	0c000000 	jal	0 <EnRd_SetupAction>
     68c:	e606006c 	swc1	$f6,108(s0)
     690:	1000003b 	b	780 <func_80AE2A10+0x170>
     694:	8fbf0024 	lw	ra,36(sp)
     698:	c600000c 	lwc1	$f0,12(s0)
     69c:	c6080028 	lwc1	$f8,40(s0)
     6a0:	02002025 	move	a0,s0
     6a4:	46080032 	c.eq.s	$f0,$f8
     6a8:	00000000 	nop
     6ac:	45000004 	bc1f	6c0 <func_80AE2A10+0xb0>
     6b0:	00000000 	nop
     6b4:	0c000000 	jal	0 <EnRd_SetupAction>
     6b8:	240538e4 	li	a1,14564
     6bc:	c600000c 	lwc1	$f0,12(s0)
     6c0:	3c010000 	lui	at,0x0
     6c4:	c4220024 	lwc1	$f2,36(at)
     6c8:	3c014248 	lui	at,0x4248
     6cc:	44815000 	mtc1	at,$f10
     6d0:	44061000 	mfc1	a2,$f2
     6d4:	26040028 	addiu	a0,s0,40
     6d8:	460a0400 	add.s	$f16,$f0,$f10
     6dc:	3c074000 	lui	a3,0x4000
     6e0:	e7a20010 	swc1	$f2,16(sp)
     6e4:	44058000 	mfc1	a1,$f16
     6e8:	0c000000 	jal	0 <EnRd_SetupAction>
     6ec:	00000000 	nop
     6f0:	44806000 	mtc1	zero,$f12
     6f4:	3c010000 	lui	at,0x0
     6f8:	c4220028 	lwc1	$f2,40(at)
     6fc:	460c0032 	c.eq.s	$f0,$f12
     700:	00000000 	nop
     704:	4502001e 	bc1fl	780 <func_80AE2A10+0x170>
     708:	8fbf0024 	lw	ra,36(sp)
     70c:	8602030c 	lh	v0,780(s0)
     710:	26040068 	addiu	a0,s0,104
     714:	3c073f80 	lui	a3,0x3f80
     718:	1040000a 	beqz	v0,744 <func_80AE2A10+0x134>
     71c:	244fffff 	addiu	t7,v0,-1
     720:	a60f030c 	sh	t7,780(s0)
     724:	44061000 	mfc1	a2,$f2
     728:	e7a20010 	swc1	$f2,16(sp)
     72c:	26040068 	addiu	a0,s0,104
     730:	3c0540c0 	lui	a1,0x40c0
     734:	0c000000 	jal	0 <EnRd_SetupAction>
     738:	3c073f80 	lui	a3,0x3f80
     73c:	10000010 	b	780 <func_80AE2A10+0x170>
     740:	8fbf0024 	lw	ra,36(sp)
     744:	44056000 	mfc1	a1,$f12
     748:	44061000 	mfc1	a2,$f2
     74c:	0c000000 	jal	0 <EnRd_SetupAction>
     750:	e7a20010 	swc1	$f2,16(sp)
     754:	44809000 	mtc1	zero,$f18
     758:	260400b4 	addiu	a0,s0,180
     75c:	00002825 	move	a1,zero
     760:	46120032 	c.eq.s	$f0,$f18
     764:	24060001 	li	a2,1
     768:	240707d0 	li	a3,2000
     76c:	45020004 	bc1fl	780 <func_80AE2A10+0x170>
     770:	8fbf0024 	lw	ra,36(sp)
     774:	0c000000 	jal	0 <EnRd_SetupAction>
     778:	afa00010 	sw	zero,16(sp)
     77c:	8fbf0024 	lw	ra,36(sp)
     780:	8fb00020 	lw	s0,32(sp)
     784:	27bd0028 	addiu	sp,sp,40
     788:	03e00008 	jr	ra
     78c:	00000000 	nop

00000790 <func_80AE2B90>:
     790:	27bdffd8 	addiu	sp,sp,-40
     794:	afa40028 	sw	a0,40(sp)
     798:	afbf0024 	sw	ra,36(sp)
     79c:	3c040000 	lui	a0,0x0
     7a0:	afa5002c 	sw	a1,44(sp)
     7a4:	0c000000 	jal	0 <EnRd_SetupAction>
     7a8:	24840000 	addiu	a0,a0,0
     7ac:	44822000 	mtc1	v0,$f4
     7b0:	3c01c080 	lui	at,0xc080
     7b4:	44814000 	mtc1	at,$f8
     7b8:	468021a0 	cvt.s.w	$f6,$f4
     7bc:	8fa40028 	lw	a0,40(sp)
     7c0:	3c050000 	lui	a1,0x0
     7c4:	240e0001 	li	t6,1
     7c8:	afae0014 	sw	t6,20(sp)
     7cc:	24a50000 	addiu	a1,a1,0
     7d0:	e7a60010 	swc1	$f6,16(sp)
     7d4:	3c063f80 	lui	a2,0x3f80
     7d8:	3c074080 	lui	a3,0x4080
     7dc:	e7a80018 	swc1	$f8,24(sp)
     7e0:	0c000000 	jal	0 <EnRd_SetupAction>
     7e4:	24840188 	addiu	a0,a0,392
     7e8:	8fa40028 	lw	a0,40(sp)
     7ec:	3c010000 	lui	at,0x0
     7f0:	c42a002c 	lwc1	$f10,44(at)
     7f4:	240f0004 	li	t7,4
     7f8:	3c050000 	lui	a1,0x0
     7fc:	24a50000 	addiu	a1,a1,0
     800:	a08f031b 	sb	t7,795(a0)
     804:	0c000000 	jal	0 <EnRd_SetupAction>
     808:	e48a0068 	swc1	$f10,104(a0)
     80c:	8fbf0024 	lw	ra,36(sp)
     810:	27bd0028 	addiu	sp,sp,40
     814:	03e00008 	jr	ra
     818:	00000000 	nop

0000081c <func_80AE2C1C>:
     81c:	27bdffb0 	addiu	sp,sp,-80
     820:	3c0f0000 	lui	t7,0x0
     824:	afbf0024 	sw	ra,36(sp)
     828:	afb00020 	sw	s0,32(sp)
     82c:	afa50054 	sw	a1,84(sp)
     830:	25ef0078 	addiu	t7,t7,120
     834:	8df90000 	lw	t9,0(t7)
     838:	27ae0044 	addiu	t6,sp,68
     83c:	8df80004 	lw	t8,4(t7)
     840:	add90000 	sw	t9,0(t6)
     844:	8df90008 	lw	t9,8(t7)
     848:	add80004 	sw	t8,4(t6)
     84c:	3c080000 	lui	t0,0x0
     850:	add90008 	sw	t9,8(t6)
     854:	3c090000 	lui	t1,0x0
     858:	8d080084 	lw	t0,132(t0)
     85c:	8d290088 	lw	t1,136(t1)
     860:	8faa0054 	lw	t2,84(sp)
     864:	afa80040 	sw	t0,64(sp)
     868:	afa9003c 	sw	t1,60(sp)
     86c:	8d4b1c44 	lw	t3,7236(t2)
     870:	00808025 	move	s0,a0
     874:	248400b6 	addiu	a0,a0,182
     878:	afab0038 	sw	t3,56(sp)
     87c:	848c0000 	lh	t4,0(a0)
     880:	8485ffd4 	lh	a1,-44(a0)
     884:	848e0258 	lh	t6,600(a0)
     888:	8498025a 	lh	t8,602(a0)
     88c:	00ac6823 	subu	t5,a1,t4
     890:	01ae7823 	subu	t7,t5,t6
     894:	01f8c823 	subu	t9,t7,t8
     898:	a7b90032 	sh	t9,50(sp)
     89c:	c484ffb2 	lwc1	$f4,-78(a0)
     8a0:	24060001 	li	a2,1
     8a4:	240700fa 	li	a3,250
     8a8:	e48400ee 	swc1	$f4,238(a0)
     8ac:	0c000000 	jal	0 <EnRd_SetupAction>
     8b0:	afa00010 	sw	zero,16(sp)
     8b4:	2604030e 	addiu	a0,s0,782
     8b8:	00002825 	move	a1,zero
     8bc:	24060001 	li	a2,1
     8c0:	24070064 	li	a3,100
     8c4:	0c000000 	jal	0 <EnRd_SetupAction>
     8c8:	afa00010 	sw	zero,16(sp)
     8cc:	26040310 	addiu	a0,s0,784
     8d0:	00002825 	move	a1,zero
     8d4:	24060001 	li	a2,1
     8d8:	24070064 	li	a3,100
     8dc:	0c000000 	jal	0 <EnRd_SetupAction>
     8e0:	afa00010 	sw	zero,16(sp)
     8e4:	860800b6 	lh	t0,182(s0)
     8e8:	26040188 	addiu	a0,s0,392
     8ec:	0c000000 	jal	0 <EnRd_SetupAction>
     8f0:	a6080032 	sh	t0,50(s0)
     8f4:	8fa40038 	lw	a0,56(sp)
     8f8:	0c000000 	jal	0 <EnRd_SetupAction>
     8fc:	26050008 	addiu	a1,s0,8
     900:	3c014316 	lui	at,0x4316
     904:	44813000 	mtc1	at,$f6
     908:	02002025 	move	a0,s0
     90c:	4600303e 	c.le.s	$f6,$f0
     910:	00000000 	nop
     914:	45020004 	bc1fl	928 <func_80AE2C1C+0x10c>
     918:	87a30032 	lh	v1,50(sp)
     91c:	0c000000 	jal	0 <EnRd_SetupAction>
     920:	8fa50054 	lw	a1,84(sp)
     924:	87a30032 	lh	v1,50(sp)
     928:	02002025 	move	a0,s0
     92c:	04600003 	bltz	v1,93c <func_80AE2C1C+0x120>
     930:	00031023 	negu	v0,v1
     934:	10000001 	b	93c <func_80AE2C1C+0x120>
     938:	00601025 	move	v0,v1
     93c:	28411554 	slti	at,v0,5460
     940:	50200032 	beqzl	at,a0c <func_80AE2C1C+0x1f0>
     944:	92020307 	lbu	v0,775(s0)
     948:	0c000000 	jal	0 <EnRd_SetupAction>
     94c:	8fa50038 	lw	a1,56(sp)
     950:	3c014316 	lui	at,0x4316
     954:	44814000 	mtc1	at,$f8
     958:	8fa90038 	lw	t1,56(sp)
     95c:	4608003e 	c.le.s	$f0,$f8
     960:	00000000 	nop
     964:	45020029 	bc1fl	a0c <func_80AE2C1C+0x1f0>
     968:	92020307 	lbu	v0,775(s0)
     96c:	8d2a067c 	lw	t2,1660(t1)
     970:	3c01002c 	lui	at,0x2c
     974:	34216080 	ori	at,at,0x6080
     978:	01415824 	and	t3,t2,at
     97c:	15600020 	bnez	t3,a00 <func_80AE2C1C+0x1e4>
     980:	02002025 	move	a0,s0
     984:	8d2c0680 	lw	t4,1664(t1)
     988:	318d0080 	andi	t5,t4,0x80
     98c:	15a0001c 	bnez	t5,a00 <func_80AE2C1C+0x1e4>
     990:	00000000 	nop
     994:	920e0306 	lbu	t6,774(s0)
     998:	55c0001c 	bnezl	t6,a0c <func_80AE2C1C+0x1f0>
     99c:	92020307 	lbu	v0,775(s0)
     9a0:	860f0312 	lh	t7,786(s0)
     9a4:	24190028 	li	t9,40
     9a8:	02002825 	move	a1,s0
     9ac:	31f80080 	andi	t8,t7,0x80
     9b0:	5700000d 	bnezl	t8,9e8 <func_80AE2C1C+0x1cc>
     9b4:	240b003c 	li	t3,60
     9b8:	a5390110 	sh	t9,272(t1)
     9bc:	0c000000 	jal	0 <EnRd_SetupAction>
     9c0:	8fa40054 	lw	a0,84(sp)
     9c4:	8fa80054 	lw	t0,84(sp)
     9c8:	240500ff 	li	a1,255
     9cc:	24060014 	li	a2,20
     9d0:	8d0a1c44 	lw	t2,7236(t0)
     9d4:	24070096 	li	a3,150
     9d8:	ad500684 	sw	s0,1668(t2)
     9dc:	0c000000 	jal	0 <EnRd_SetupAction>
     9e0:	c60c0090 	lwc1	$f12,144(s0)
     9e4:	240b003c 	li	t3,60
     9e8:	a20b0306 	sb	t3,774(s0)
     9ec:	02002025 	move	a0,s0
     9f0:	0c000000 	jal	0 <EnRd_SetupAction>
     9f4:	240538e5 	li	a1,14565
     9f8:	10000004 	b	a0c <func_80AE2C1C+0x1f0>
     9fc:	92020307 	lbu	v0,775(s0)
     a00:	0c000000 	jal	0 <EnRd_SetupAction>
     a04:	8fa50054 	lw	a1,84(sp)
     a08:	92020307 	lbu	v0,775(s0)
     a0c:	02002025 	move	a0,s0
     a10:	10400003 	beqz	v0,a20 <func_80AE2C1C+0x204>
     a14:	244cffff 	addiu	t4,v0,-1
     a18:	a20c0307 	sb	t4,775(s0)
     a1c:	318200ff 	andi	v0,t4,0xff
     a20:	54400021 	bnezl	v0,aa8 <func_80AE2C1C+0x28c>
     a24:	8618001c 	lh	t8,28(s0)
     a28:	0c000000 	jal	0 <EnRd_SetupAction>
     a2c:	8fa50038 	lw	a1,56(sp)
     a30:	3c014234 	lui	at,0x4234
     a34:	44815000 	mtc1	at,$f10
     a38:	02002025 	move	a0,s0
     a3c:	460a003e 	c.le.s	$f0,$f10
     a40:	00000000 	nop
     a44:	45020018 	bc1fl	aa8 <func_80AE2C1C+0x28c>
     a48:	8618001c 	lh	t8,28(s0)
     a4c:	0c000000 	jal	0 <EnRd_SetupAction>
     a50:	240538e3 	li	a1,14563
     a54:	10400013 	beqz	v0,aa4 <func_80AE2C1C+0x288>
     a58:	8fa40054 	lw	a0,84(sp)
     a5c:	8fad0038 	lw	t5,56(sp)
     a60:	3c190001 	lui	t9,0x1
     a64:	0324c821 	addu	t9,t9,a0
     a68:	a5a00110 	sh	zero,272(t5)
     a6c:	8f391d4c 	lw	t9,7500(t9)
     a70:	8fa50038 	lw	a1,56(sp)
     a74:	0320f809 	jalr	t9
     a78:	00000000 	nop
     a7c:	50400015 	beqzl	v0,ad4 <func_80AE2C1C+0x2b8>
     a80:	3c014120 	lui	at,0x4120
     a84:	8e0e0004 	lw	t6,4(s0)
     a88:	2401fffe 	li	at,-2
     a8c:	02002025 	move	a0,s0
     a90:	01c17824 	and	t7,t6,at
     a94:	0c000000 	jal	0 <EnRd_SetupAction>
     a98:	ae0f0004 	sw	t7,4(s0)
     a9c:	1000000d 	b	ad4 <func_80AE2C1C+0x2b8>
     aa0:	3c014120 	lui	at,0x4120
     aa4:	8618001c 	lh	t8,28(s0)
     aa8:	5b00000a 	blezl	t8,ad4 <func_80AE2C1C+0x2b8>
     aac:	3c014120 	lui	at,0x4120
     ab0:	8e090118 	lw	t1,280(s0)
     ab4:	51200006 	beqzl	t1,ad0 <func_80AE2C1C+0x2b4>
     ab8:	a2000305 	sb	zero,773(s0)
     abc:	0c000000 	jal	0 <EnRd_SetupAction>
     ac0:	02002025 	move	a0,s0
     ac4:	10000003 	b	ad4 <func_80AE2C1C+0x2b8>
     ac8:	3c014120 	lui	at,0x4120
     acc:	a2000305 	sb	zero,773(s0)
     ad0:	3c014120 	lui	at,0x4120
     ad4:	44818000 	mtc1	at,$f16
     ad8:	c60001a0 	lwc1	$f0,416(s0)
     adc:	3c0141b0 	lui	at,0x41b0
     ae0:	02002025 	move	a0,s0
     ae4:	46008032 	c.eq.s	$f16,$f0
     ae8:	00000000 	nop
     aec:	45010008 	bc1t	b10 <func_80AE2C1C+0x2f4>
     af0:	00000000 	nop
     af4:	44819000 	mtc1	at,$f18
     af8:	8fa80054 	lw	t0,84(sp)
     afc:	3c0a0001 	lui	t2,0x1
     b00:	46009032 	c.eq.s	$f18,$f0
     b04:	01485021 	addu	t2,t2,t0
     b08:	45020006 	bc1fl	b24 <func_80AE2C1C+0x308>
     b0c:	8d4a1de4 	lw	t2,7652(t2)
     b10:	0c000000 	jal	0 <EnRd_SetupAction>
     b14:	2405382e 	li	a1,14382
     b18:	10000009 	b	b40 <func_80AE2C1C+0x324>
     b1c:	8fbf0024 	lw	ra,36(sp)
     b20:	8d4a1de4 	lw	t2,7652(t2)
     b24:	02002025 	move	a0,s0
     b28:	314b005f 	andi	t3,t2,0x5f
     b2c:	55600004 	bnezl	t3,b40 <func_80AE2C1C+0x324>
     b30:	8fbf0024 	lw	ra,36(sp)
     b34:	0c000000 	jal	0 <EnRd_SetupAction>
     b38:	240538e4 	li	a1,14564
     b3c:	8fbf0024 	lw	ra,36(sp)
     b40:	8fb00020 	lw	s0,32(sp)
     b44:	27bd0050 	addiu	sp,sp,80
     b48:	03e00008 	jr	ra
     b4c:	00000000 	nop

00000b50 <func_80AE2F50>:
     b50:	27bdffd8 	addiu	sp,sp,-40
     b54:	afa40028 	sw	a0,40(sp)
     b58:	afbf0024 	sw	ra,36(sp)
     b5c:	3c040000 	lui	a0,0x0
     b60:	afa5002c 	sw	a1,44(sp)
     b64:	0c000000 	jal	0 <EnRd_SetupAction>
     b68:	24840000 	addiu	a0,a0,0
     b6c:	44822000 	mtc1	v0,$f4
     b70:	3c01c080 	lui	at,0xc080
     b74:	44814000 	mtc1	at,$f8
     b78:	468021a0 	cvt.s.w	$f6,$f4
     b7c:	8fa40028 	lw	a0,40(sp)
     b80:	3c050000 	lui	a1,0x0
     b84:	240e0001 	li	t6,1
     b88:	afae0014 	sw	t6,20(sp)
     b8c:	24a50000 	addiu	a1,a1,0
     b90:	e7a60010 	swc1	$f6,16(sp)
     b94:	3c063f00 	lui	a2,0x3f00
     b98:	24070000 	li	a3,0
     b9c:	e7a80018 	swc1	$f8,24(sp)
     ba0:	0c000000 	jal	0 <EnRd_SetupAction>
     ba4:	24840188 	addiu	a0,a0,392
     ba8:	8fa40028 	lw	a0,40(sp)
     bac:	240f0002 	li	t7,2
     bb0:	3c050000 	lui	a1,0x0
     bb4:	24a50000 	addiu	a1,a1,0
     bb8:	0c000000 	jal	0 <EnRd_SetupAction>
     bbc:	a08f031b 	sb	t7,795(a0)
     bc0:	8fbf0024 	lw	ra,36(sp)
     bc4:	27bd0028 	addiu	sp,sp,40
     bc8:	03e00008 	jr	ra
     bcc:	00000000 	nop

00000bd0 <func_80AE2FD0>:
     bd0:	27bdffc8 	addiu	sp,sp,-56
     bd4:	afbf0024 	sw	ra,36(sp)
     bd8:	afb00020 	sw	s0,32(sp)
     bdc:	afa5003c 	sw	a1,60(sp)
     be0:	8caf1c44 	lw	t7,7236(a1)
     be4:	00808025 	move	s0,a0
     be8:	26050008 	addiu	a1,s0,8
     bec:	afa50028 	sw	a1,40(sp)
     bf0:	0c000000 	jal	0 <EnRd_SetupAction>
     bf4:	afaf0034 	sw	t7,52(sp)
     bf8:	a7a2002e 	sh	v0,46(sp)
     bfc:	02002025 	move	a0,s0
     c00:	0c000000 	jal	0 <EnRd_SetupAction>
     c04:	8fa50028 	lw	a1,40(sp)
     c08:	3c0140a0 	lui	at,0x40a0
     c0c:	44812000 	mtc1	at,$f4
     c10:	87a5002e 	lh	a1,46(sp)
     c14:	240701c2 	li	a3,450
     c18:	4600203e 	c.le.s	$f4,$f0
     c1c:	260400b6 	addiu	a0,s0,182
     c20:	24060001 	li	a2,1
     c24:	45020008 	bc1fl	c48 <func_80AE2FD0+0x78>
     c28:	44803000 	mtc1	zero,$f6
     c2c:	260400b6 	addiu	a0,s0,182
     c30:	24060001 	li	a2,1
     c34:	0c000000 	jal	0 <EnRd_SetupAction>
     c38:	afa00010 	sw	zero,16(sp)
     c3c:	10000014 	b	c90 <func_80AE2FD0+0xc0>
     c40:	2604030e 	addiu	a0,s0,782
     c44:	44803000 	mtc1	zero,$f6
     c48:	86050016 	lh	a1,22(s0)
     c4c:	240701c2 	li	a3,450
     c50:	e6060068 	swc1	$f6,104(s0)
     c54:	0c000000 	jal	0 <EnRd_SetupAction>
     c58:	afa00010 	sw	zero,16(sp)
     c5c:	5440000c 	bnezl	v0,c90 <func_80AE2FD0+0xc0>
     c60:	2604030e 	addiu	a0,s0,782
     c64:	8618001c 	lh	t8,28(s0)
     c68:	24010002 	li	at,2
     c6c:	13010005 	beq	t8,at,c84 <func_80AE2FD0+0xb4>
     c70:	00000000 	nop
     c74:	0c000000 	jal	0 <EnRd_SetupAction>
     c78:	02002025 	move	a0,s0
     c7c:	10000004 	b	c90 <func_80AE2FD0+0xc0>
     c80:	2604030e 	addiu	a0,s0,782
     c84:	0c000000 	jal	0 <EnRd_SetupAction>
     c88:	02002025 	move	a0,s0
     c8c:	2604030e 	addiu	a0,s0,782
     c90:	00002825 	move	a1,zero
     c94:	24060001 	li	a2,1
     c98:	24070064 	li	a3,100
     c9c:	0c000000 	jal	0 <EnRd_SetupAction>
     ca0:	afa00010 	sw	zero,16(sp)
     ca4:	26040310 	addiu	a0,s0,784
     ca8:	00002825 	move	a1,zero
     cac:	24060001 	li	a2,1
     cb0:	24070064 	li	a3,100
     cb4:	0c000000 	jal	0 <EnRd_SetupAction>
     cb8:	afa00010 	sw	zero,16(sp)
     cbc:	861900b6 	lh	t9,182(s0)
     cc0:	26040188 	addiu	a0,s0,392
     cc4:	0c000000 	jal	0 <EnRd_SetupAction>
     cc8:	a6190032 	sh	t9,50(s0)
     ccc:	8fa40034 	lw	a0,52(sp)
     cd0:	3c01002c 	lui	at,0x2c
     cd4:	34216080 	ori	at,at,0x6080
     cd8:	8c88067c 	lw	t0,1660(a0)
     cdc:	01014824 	and	t1,t0,at
     ce0:	55200014 	bnezl	t1,d34 <func_80AE2FD0+0x164>
     ce4:	860c001c 	lh	t4,28(s0)
     ce8:	8c8a0680 	lw	t2,1664(a0)
     cec:	314b0080 	andi	t3,t2,0x80
     cf0:	55600010 	bnezl	t3,d34 <func_80AE2FD0+0x164>
     cf4:	860c001c 	lh	t4,28(s0)
     cf8:	0c000000 	jal	0 <EnRd_SetupAction>
     cfc:	8fa50028 	lw	a1,40(sp)
     d00:	3c014316 	lui	at,0x4316
     d04:	44814000 	mtc1	at,$f8
     d08:	02002025 	move	a0,s0
     d0c:	4608003c 	c.lt.s	$f0,$f8
     d10:	00000000 	nop
     d14:	45020007 	bc1fl	d34 <func_80AE2FD0+0x164>
     d18:	860c001c 	lh	t4,28(s0)
     d1c:	a200001f 	sb	zero,31(s0)
     d20:	0c000000 	jal	0 <EnRd_SetupAction>
     d24:	8fa5003c 	lw	a1,60(sp)
     d28:	1000000d 	b	d60 <func_80AE2FD0+0x190>
     d2c:	3c014120 	lui	at,0x4120
     d30:	860c001c 	lh	t4,28(s0)
     d34:	5980000a 	blezl	t4,d60 <func_80AE2FD0+0x190>
     d38:	3c014120 	lui	at,0x4120
     d3c:	8e0d0118 	lw	t5,280(s0)
     d40:	51a00006 	beqzl	t5,d5c <func_80AE2FD0+0x18c>
     d44:	a2000305 	sb	zero,773(s0)
     d48:	0c000000 	jal	0 <EnRd_SetupAction>
     d4c:	02002025 	move	a0,s0
     d50:	10000003 	b	d60 <func_80AE2FD0+0x190>
     d54:	3c014120 	lui	at,0x4120
     d58:	a2000305 	sb	zero,773(s0)
     d5c:	3c014120 	lui	at,0x4120
     d60:	44815000 	mtc1	at,$f10
     d64:	c60001a0 	lwc1	$f0,416(s0)
     d68:	3c0141b0 	lui	at,0x41b0
     d6c:	02002025 	move	a0,s0
     d70:	46005032 	c.eq.s	$f10,$f0
     d74:	00000000 	nop
     d78:	45010008 	bc1t	d9c <func_80AE2FD0+0x1cc>
     d7c:	00000000 	nop
     d80:	44818000 	mtc1	at,$f16
     d84:	8fae003c 	lw	t6,60(sp)
     d88:	3c0f0001 	lui	t7,0x1
     d8c:	46008032 	c.eq.s	$f16,$f0
     d90:	01ee7821 	addu	t7,t7,t6
     d94:	45020006 	bc1fl	db0 <func_80AE2FD0+0x1e0>
     d98:	8def1de4 	lw	t7,7652(t7)
     d9c:	0c000000 	jal	0 <EnRd_SetupAction>
     da0:	2405382e 	li	a1,14382
     da4:	10000009 	b	dcc <func_80AE2FD0+0x1fc>
     da8:	8fbf0024 	lw	ra,36(sp)
     dac:	8def1de4 	lw	t7,7652(t7)
     db0:	02002025 	move	a0,s0
     db4:	31f8005f 	andi	t8,t7,0x5f
     db8:	57000004 	bnezl	t8,dcc <func_80AE2FD0+0x1fc>
     dbc:	8fbf0024 	lw	ra,36(sp)
     dc0:	0c000000 	jal	0 <EnRd_SetupAction>
     dc4:	240538e4 	li	a1,14564
     dc8:	8fbf0024 	lw	ra,36(sp)
     dcc:	8fb00020 	lw	s0,32(sp)
     dd0:	27bd0038 	addiu	sp,sp,56
     dd4:	03e00008 	jr	ra
     dd8:	00000000 	nop

00000ddc <func_80AE31DC>:
     ddc:	27bdffd8 	addiu	sp,sp,-40
     de0:	afa40028 	sw	a0,40(sp)
     de4:	afbf0024 	sw	ra,36(sp)
     de8:	3c040000 	lui	a0,0x0
     dec:	0c000000 	jal	0 <EnRd_SetupAction>
     df0:	24840000 	addiu	a0,a0,0
     df4:	44822000 	mtc1	v0,$f4
     df8:	3c01c080 	lui	at,0xc080
     dfc:	44814000 	mtc1	at,$f8
     e00:	468021a0 	cvt.s.w	$f6,$f4
     e04:	8fa40028 	lw	a0,40(sp)
     e08:	3c050000 	lui	a1,0x0
     e0c:	240e0001 	li	t6,1
     e10:	afae0014 	sw	t6,20(sp)
     e14:	24a50000 	addiu	a1,a1,0
     e18:	e7a60010 	swc1	$f6,16(sp)
     e1c:	3c063f00 	lui	a2,0x3f00
     e20:	24070000 	li	a3,0
     e24:	e7a80018 	swc1	$f8,24(sp)
     e28:	0c000000 	jal	0 <EnRd_SetupAction>
     e2c:	24840188 	addiu	a0,a0,392
     e30:	8fa40028 	lw	a0,40(sp)
     e34:	240f0003 	li	t7,3
     e38:	24180001 	li	t8,1
     e3c:	3c050000 	lui	a1,0x0
     e40:	24a50000 	addiu	a1,a1,0
     e44:	a08f031b 	sb	t7,795(a0)
     e48:	0c000000 	jal	0 <EnRd_SetupAction>
     e4c:	a0980305 	sb	t8,773(a0)
     e50:	8fbf0024 	lw	ra,36(sp)
     e54:	27bd0028 	addiu	sp,sp,40
     e58:	03e00008 	jr	ra
     e5c:	00000000 	nop

00000e60 <func_80AE3260>:
     e60:	27bdffc0 	addiu	sp,sp,-64
     e64:	afbf0024 	sw	ra,36(sp)
     e68:	afb00020 	sw	s0,32(sp)
     e6c:	afa50044 	sw	a1,68(sp)
     e70:	8c820118 	lw	v0,280(a0)
     e74:	00808025 	move	s0,a0
     e78:	8fa50044 	lw	a1,68(sp)
     e7c:	10400036 	beqz	v0,f58 <func_80AE3260+0xf8>
     e80:	00000000 	nop
     e84:	8c4f0024 	lw	t7,36(v0)
     e88:	27a5002c 	addiu	a1,sp,44
     e8c:	acaf0000 	sw	t7,0(a1)
     e90:	8c4e0028 	lw	t6,40(v0)
     e94:	acae0004 	sw	t6,4(a1)
     e98:	8c4f002c 	lw	t7,44(v0)
     e9c:	0c000000 	jal	0 <EnRd_SetupAction>
     ea0:	acaf0008 	sw	t7,8(a1)
     ea4:	00022c00 	sll	a1,v0,0x10
     ea8:	00052c03 	sra	a1,a1,0x10
     eac:	260400b6 	addiu	a0,s0,182
     eb0:	24060001 	li	a2,1
     eb4:	240700fa 	li	a3,250
     eb8:	0c000000 	jal	0 <EnRd_SetupAction>
     ebc:	afa00010 	sw	zero,16(sp)
     ec0:	02002025 	move	a0,s0
     ec4:	0c000000 	jal	0 <EnRd_SetupAction>
     ec8:	27a5002c 	addiu	a1,sp,44
     ecc:	3c014234 	lui	at,0x4234
     ed0:	44812000 	mtc1	at,$f4
     ed4:	3c010000 	lui	at,0x0
     ed8:	4600203e 	c.le.s	$f4,$f0
     edc:	00000000 	nop
     ee0:	45020005 	bc1fl	ef8 <func_80AE3260+0x98>
     ee4:	8618001c 	lh	t8,28(s0)
     ee8:	c4260030 	lwc1	$f6,48(at)
     eec:	1000000c 	b	f20 <func_80AE3260+0xc0>
     ef0:	e6060068 	swc1	$f6,104(s0)
     ef4:	8618001c 	lh	t8,28(s0)
     ef8:	44804000 	mtc1	zero,$f8
     efc:	24010002 	li	at,2
     f00:	13010005 	beq	t8,at,f18 <func_80AE3260+0xb8>
     f04:	e6080068 	swc1	$f8,104(s0)
     f08:	0c000000 	jal	0 <EnRd_SetupAction>
     f0c:	02002025 	move	a0,s0
     f10:	10000004 	b	f24 <func_80AE3260+0xc4>
     f14:	2604030e 	addiu	a0,s0,782
     f18:	0c000000 	jal	0 <EnRd_SetupAction>
     f1c:	02002025 	move	a0,s0
     f20:	2604030e 	addiu	a0,s0,782
     f24:	00002825 	move	a1,zero
     f28:	24060001 	li	a2,1
     f2c:	24070064 	li	a3,100
     f30:	0c000000 	jal	0 <EnRd_SetupAction>
     f34:	afa00010 	sw	zero,16(sp)
     f38:	26040310 	addiu	a0,s0,784
     f3c:	00002825 	move	a1,zero
     f40:	24060001 	li	a2,1
     f44:	24070064 	li	a3,100
     f48:	0c000000 	jal	0 <EnRd_SetupAction>
     f4c:	afa00010 	sw	zero,16(sp)
     f50:	10000004 	b	f64 <func_80AE3260+0x104>
     f54:	861900b6 	lh	t9,182(s0)
     f58:	0c000000 	jal	0 <EnRd_SetupAction>
     f5c:	02002025 	move	a0,s0
     f60:	861900b6 	lh	t9,182(s0)
     f64:	26040188 	addiu	a0,s0,392
     f68:	0c000000 	jal	0 <EnRd_SetupAction>
     f6c:	a6190032 	sh	t9,50(s0)
     f70:	3c014120 	lui	at,0x4120
     f74:	44815000 	mtc1	at,$f10
     f78:	c60001a0 	lwc1	$f0,416(s0)
     f7c:	3c0141b0 	lui	at,0x41b0
     f80:	02002025 	move	a0,s0
     f84:	46005032 	c.eq.s	$f10,$f0
     f88:	00000000 	nop
     f8c:	45010008 	bc1t	fb0 <func_80AE3260+0x150>
     f90:	00000000 	nop
     f94:	44818000 	mtc1	at,$f16
     f98:	8fa80044 	lw	t0,68(sp)
     f9c:	3c090001 	lui	t1,0x1
     fa0:	46008032 	c.eq.s	$f16,$f0
     fa4:	01284821 	addu	t1,t1,t0
     fa8:	45020006 	bc1fl	fc4 <func_80AE3260+0x164>
     fac:	8d291de4 	lw	t1,7652(t1)
     fb0:	0c000000 	jal	0 <EnRd_SetupAction>
     fb4:	2405382e 	li	a1,14382
     fb8:	10000009 	b	fe0 <func_80AE3260+0x180>
     fbc:	8fbf0024 	lw	ra,36(sp)
     fc0:	8d291de4 	lw	t1,7652(t1)
     fc4:	02002025 	move	a0,s0
     fc8:	312a005f 	andi	t2,t1,0x5f
     fcc:	55400004 	bnezl	t2,fe0 <func_80AE3260+0x180>
     fd0:	8fbf0024 	lw	ra,36(sp)
     fd4:	0c000000 	jal	0 <EnRd_SetupAction>
     fd8:	240538e4 	li	a1,14564
     fdc:	8fbf0024 	lw	ra,36(sp)
     fe0:	8fb00020 	lw	s0,32(sp)
     fe4:	27bd0040 	addiu	sp,sp,64
     fe8:	03e00008 	jr	ra
     fec:	00000000 	nop

00000ff0 <func_80AE33F0>:
     ff0:	27bdffe8 	addiu	sp,sp,-24
     ff4:	afbf0014 	sw	ra,20(sp)
     ff8:	00803025 	move	a2,a0
     ffc:	3c050000 	lui	a1,0x0
    1000:	24a50000 	addiu	a1,a1,0
    1004:	afa60018 	sw	a2,24(sp)
    1008:	0c000000 	jal	0 <EnRd_SetupAction>
    100c:	24840188 	addiu	a0,a0,392
    1010:	8fa40018 	lw	a0,24(sp)
    1014:	44802000 	mtc1	zero,$f4
    1018:	300e00ff 	andi	t6,zero,0xff
    101c:	240f00c8 	li	t7,200
    1020:	24180008 	li	t8,8
    1024:	3c050000 	lui	a1,0x0
    1028:	24a50000 	addiu	a1,a1,0
    102c:	a48e030c 	sh	t6,780(a0)
    1030:	a0800304 	sb	zero,772(a0)
    1034:	a08f0319 	sb	t7,793(a0)
    1038:	a098031b 	sb	t8,795(a0)
    103c:	0c000000 	jal	0 <EnRd_SetupAction>
    1040:	e4840068 	swc1	$f4,104(a0)
    1044:	8fbf0014 	lw	ra,20(sp)
    1048:	27bd0018 	addiu	sp,sp,24
    104c:	03e00008 	jr	ra
    1050:	00000000 	nop

00001054 <func_80AE3454>:
    1054:	27bdffb8 	addiu	sp,sp,-72
    1058:	afb00028 	sw	s0,40(sp)
    105c:	afbf002c 	sw	ra,44(sp)
    1060:	afa5004c 	sw	a1,76(sp)
    1064:	8caf1c44 	lw	t7,7236(a1)
    1068:	00808025 	move	s0,a0
    106c:	24840188 	addiu	a0,a0,392
    1070:	afa40034 	sw	a0,52(sp)
    1074:	0c000000 	jal	0 <EnRd_SetupAction>
    1078:	afaf0040 	sw	t7,64(sp)
    107c:	50400005 	beqzl	v0,1094 <func_80AE3454+0x40>
    1080:	92080304 	lbu	t0,772(s0)
    1084:	92180304 	lbu	t8,772(s0)
    1088:	27190001 	addiu	t9,t8,1
    108c:	a2190304 	sb	t9,772(s0)
    1090:	92080304 	lbu	t0,772(s0)
    1094:	2d010005 	sltiu	at,t0,5
    1098:	102000c3 	beqz	at,13a8 <func_80AE3454+0x354>
    109c:	00084080 	sll	t0,t0,0x2
    10a0:	3c010000 	lui	at,0x0
    10a4:	00280821 	addu	at,at,t0
    10a8:	8c280034 	lw	t0,52(at)
    10ac:	01000008 	jr	t0
    10b0:	00000000 	nop
    10b4:	3c050000 	lui	a1,0x0
    10b8:	24a50000 	addiu	a1,a1,0
    10bc:	0c000000 	jal	0 <EnRd_SetupAction>
    10c0:	8fa40034 	lw	a0,52(sp)
    10c4:	92090304 	lbu	t1,772(s0)
    10c8:	8fa4004c 	lw	a0,76(sp)
    10cc:	3c190001 	lui	t9,0x1
    10d0:	252a0001 	addiu	t2,t1,1
    10d4:	a20a0304 	sb	t2,772(s0)
    10d8:	0324c821 	addu	t9,t9,a0
    10dc:	8f391d58 	lw	t9,7512(t9)
    10e0:	2405fff8 	li	a1,-8
    10e4:	0320f809 	jalr	t9
    10e8:	00000000 	nop
    10ec:	c60c0090 	lwc1	$f12,144(s0)
    10f0:	240500ff 	li	a1,255
    10f4:	24060001 	li	a2,1
    10f8:	0c000000 	jal	0 <EnRd_SetupAction>
    10fc:	2407000c 	li	a3,12
    1100:	240b0014 	li	t3,20
    1104:	a20b0319 	sb	t3,793(s0)
    1108:	2604030e 	addiu	a0,s0,782
    110c:	00002825 	move	a1,zero
    1110:	24060001 	li	a2,1
    1114:	240705dc 	li	a3,1500
    1118:	0c000000 	jal	0 <EnRd_SetupAction>
    111c:	afa00010 	sw	zero,16(sp)
    1120:	26040310 	addiu	a0,s0,784
    1124:	00002825 	move	a1,zero
    1128:	24060001 	li	a2,1
    112c:	240705dc 	li	a3,1500
    1130:	0c000000 	jal	0 <EnRd_SetupAction>
    1134:	afa00010 	sw	zero,16(sp)
    1138:	8fac0040 	lw	t4,64(sp)
    113c:	3c040000 	lui	a0,0x0
    1140:	3c0a0000 	lui	t2,0x0
    1144:	8d8d0680 	lw	t5,1664(t4)
    1148:	31ae0080 	andi	t6,t5,0x80
    114c:	15c00016 	bnez	t6,11a8 <func_80AE3454+0x154>
    1150:	00000000 	nop
    1154:	0c000000 	jal	0 <EnRd_SetupAction>
    1158:	24840000 	addiu	a0,a0,0
    115c:	44822000 	mtc1	v0,$f4
    1160:	44800000 	mtc1	zero,$f0
    1164:	3c050000 	lui	a1,0x0
    1168:	468021a0 	cvt.s.w	$f6,$f4
    116c:	240f0003 	li	t7,3
    1170:	44070000 	mfc1	a3,$f0
    1174:	afaf0014 	sw	t7,20(sp)
    1178:	24a50000 	addiu	a1,a1,0
    117c:	8fa40034 	lw	a0,52(sp)
    1180:	e7a60010 	swc1	$f6,16(sp)
    1184:	3c063f00 	lui	a2,0x3f00
    1188:	0c000000 	jal	0 <EnRd_SetupAction>
    118c:	e7a00018 	swc1	$f0,24(sp)
    1190:	92180304 	lbu	t8,772(s0)
    1194:	24090004 	li	t1,4
    1198:	a209031b 	sb	t1,795(s0)
    119c:	27080001 	addiu	t0,t8,1
    11a0:	10000081 	b	13a8 <func_80AE3454+0x354>
    11a4:	a2080304 	sb	t0,772(s0)
    11a8:	8d4a0004 	lw	t2,4(t2)
    11ac:	3c05c4bb 	lui	a1,0xc4bb
    11b0:	34a58000 	ori	a1,a1,0x8000
    11b4:	11400006 	beqz	t2,11d0 <func_80AE3454+0x17c>
    11b8:	260400bc 	addiu	a0,s0,188
    11bc:	44804000 	mtc1	zero,$f8
    11c0:	3c063f80 	lui	a2,0x3f80
    11c4:	3c074316 	lui	a3,0x4316
    11c8:	0c000000 	jal	0 <EnRd_SetupAction>
    11cc:	e7a80010 	swc1	$f8,16(sp)
    11d0:	8fb90040 	lw	t9,64(sp)
    11d4:	0c000000 	jal	0 <EnRd_SetupAction>
    11d8:	872400b6 	lh	a0,182(t9)
    11dc:	3c01c1c8 	lui	at,0xc1c8
    11e0:	44815000 	mtc1	at,$f10
    11e4:	8fab0040 	lw	t3,64(sp)
    11e8:	44803000 	mtc1	zero,$f6
    11ec:	460a0402 	mul.s	$f16,$f0,$f10
    11f0:	c5720024 	lwc1	$f18,36(t3)
    11f4:	26040024 	addiu	a0,s0,36
    11f8:	3c063f80 	lui	a2,0x3f80
    11fc:	3c074120 	lui	a3,0x4120
    1200:	e7a60010 	swc1	$f6,16(sp)
    1204:	46128100 	add.s	$f4,$f16,$f18
    1208:	44052000 	mfc1	a1,$f4
    120c:	0c000000 	jal	0 <EnRd_SetupAction>
    1210:	00000000 	nop
    1214:	8fac0040 	lw	t4,64(sp)
    1218:	44804000 	mtc1	zero,$f8
    121c:	26040028 	addiu	a0,s0,40
    1220:	8d850028 	lw	a1,40(t4)
    1224:	3c063f80 	lui	a2,0x3f80
    1228:	3c074120 	lui	a3,0x4120
    122c:	0c000000 	jal	0 <EnRd_SetupAction>
    1230:	e7a80010 	swc1	$f8,16(sp)
    1234:	8fad0040 	lw	t5,64(sp)
    1238:	0c000000 	jal	0 <EnRd_SetupAction>
    123c:	85a400b6 	lh	a0,182(t5)
    1240:	3c01c1c8 	lui	at,0xc1c8
    1244:	44815000 	mtc1	at,$f10
    1248:	8fae0040 	lw	t6,64(sp)
    124c:	44803000 	mtc1	zero,$f6
    1250:	460a0402 	mul.s	$f16,$f0,$f10
    1254:	c5d2002c 	lwc1	$f18,44(t6)
    1258:	2604002c 	addiu	a0,s0,44
    125c:	3c063f80 	lui	a2,0x3f80
    1260:	3c074120 	lui	a3,0x4120
    1264:	e7a60010 	swc1	$f6,16(sp)
    1268:	46128100 	add.s	$f4,$f16,$f18
    126c:	44052000 	mfc1	a1,$f4
    1270:	0c000000 	jal	0 <EnRd_SetupAction>
    1274:	00000000 	nop
    1278:	8faf0040 	lw	t7,64(sp)
    127c:	260400b6 	addiu	a0,s0,182
    1280:	24060001 	li	a2,1
    1284:	85e500b6 	lh	a1,182(t7)
    1288:	afa00010 	sw	zero,16(sp)
    128c:	0c000000 	jal	0 <EnRd_SetupAction>
    1290:	24071770 	li	a3,6000
    1294:	44804000 	mtc1	zero,$f8
    1298:	c60a01a0 	lwc1	$f10,416(s0)
    129c:	02002025 	move	a0,s0
    12a0:	460a4032 	c.eq.s	$f8,$f10
    12a4:	00000000 	nop
    12a8:	45020004 	bc1fl	12bc <func_80AE3454+0x268>
    12ac:	92180319 	lbu	t8,793(s0)
    12b0:	0c000000 	jal	0 <EnRd_SetupAction>
    12b4:	240538e8 	li	a1,14568
    12b8:	92180319 	lbu	t8,793(s0)
    12bc:	2708ffff 	addiu	t0,t8,-1
    12c0:	310900ff 	andi	t1,t0,0xff
    12c4:	15200038 	bnez	t1,13a8 <func_80AE3454+0x354>
    12c8:	a2080319 	sb	t0,793(s0)
    12cc:	8fa4004c 	lw	a0,76(sp)
    12d0:	3c190001 	lui	t9,0x1
    12d4:	2405fff8 	li	a1,-8
    12d8:	0324c821 	addu	t9,t9,a0
    12dc:	8f391d58 	lw	t9,7512(t9)
    12e0:	0320f809 	jalr	t9
    12e4:	00000000 	nop
    12e8:	c60c0090 	lwc1	$f12,144(s0)
    12ec:	240500f0 	li	a1,240
    12f0:	24060001 	li	a2,1
    12f4:	0c000000 	jal	0 <EnRd_SetupAction>
    12f8:	2407000c 	li	a3,12
    12fc:	240a0014 	li	t2,20
    1300:	a20a0319 	sb	t2,793(s0)
    1304:	8fa40040 	lw	a0,64(sp)
    1308:	8c8c0678 	lw	t4,1656(a0)
    130c:	95850092 	lhu	a1,146(t4)
    1310:	24a56805 	addiu	a1,a1,26629
    1314:	0c000000 	jal	0 <EnRd_SetupAction>
    1318:	30a5ffff 	andi	a1,a1,0xffff
    131c:	10000023 	b	13ac <func_80AE3454+0x358>
    1320:	8fbf002c 	lw	ra,44(sp)
    1324:	3c0d0000 	lui	t5,0x0
    1328:	8dad0004 	lw	t5,4(t5)
    132c:	260400bc 	addiu	a0,s0,188
    1330:	24050000 	li	a1,0
    1334:	11a0001c 	beqz	t5,13a8 <func_80AE3454+0x354>
    1338:	3c063f80 	lui	a2,0x3f80
    133c:	44808000 	mtc1	zero,$f16
    1340:	3c0743c8 	lui	a3,0x43c8
    1344:	0c000000 	jal	0 <EnRd_SetupAction>
    1348:	e7b00010 	swc1	$f16,16(sp)
    134c:	10000017 	b	13ac <func_80AE3454+0x358>
    1350:	8fbf002c 	lw	ra,44(sp)
    1354:	3c0e0000 	lui	t6,0x0
    1358:	8dce0004 	lw	t6,4(t6)
    135c:	260400bc 	addiu	a0,s0,188
    1360:	24050000 	li	a1,0
    1364:	11c00005 	beqz	t6,137c <func_80AE3454+0x328>
    1368:	3c063f80 	lui	a2,0x3f80
    136c:	44809000 	mtc1	zero,$f18
    1370:	3c0743c8 	lui	a3,0x43c8
    1374:	0c000000 	jal	0 <EnRd_SetupAction>
    1378:	e7b20010 	swc1	$f18,16(sp)
    137c:	8e0f0004 	lw	t7,4(s0)
    1380:	2408000a 	li	t0,10
    1384:	2409000f 	li	t1,15
    1388:	35f80001 	ori	t8,t7,0x1
    138c:	a200001f 	sb	zero,31(s0)
    1390:	ae180004 	sw	t8,4(s0)
    1394:	a2080306 	sb	t0,774(s0)
    1398:	a2090307 	sb	t1,775(s0)
    139c:	8fa5004c 	lw	a1,76(sp)
    13a0:	0c000000 	jal	0 <EnRd_SetupAction>
    13a4:	02002025 	move	a0,s0
    13a8:	8fbf002c 	lw	ra,44(sp)
    13ac:	8fb00028 	lw	s0,40(sp)
    13b0:	27bd0048 	addiu	sp,sp,72
    13b4:	03e00008 	jr	ra
    13b8:	00000000 	nop

000013bc <func_80AE37BC>:
    13bc:	27bdffd8 	addiu	sp,sp,-40
    13c0:	afa40028 	sw	a0,40(sp)
    13c4:	afbf0024 	sw	ra,36(sp)
    13c8:	3c040000 	lui	a0,0x0
    13cc:	0c000000 	jal	0 <EnRd_SetupAction>
    13d0:	24840000 	addiu	a0,a0,0
    13d4:	44822000 	mtc1	v0,$f4
    13d8:	44800000 	mtc1	zero,$f0
    13dc:	8fa40028 	lw	a0,40(sp)
    13e0:	468021a0 	cvt.s.w	$f6,$f4
    13e4:	3c050000 	lui	a1,0x0
    13e8:	240e0002 	li	t6,2
    13ec:	44060000 	mfc1	a2,$f0
    13f0:	44070000 	mfc1	a3,$f0
    13f4:	afae0014 	sw	t6,20(sp)
    13f8:	24a50000 	addiu	a1,a1,0
    13fc:	e7a60010 	swc1	$f6,16(sp)
    1400:	24840188 	addiu	a0,a0,392
    1404:	0c000000 	jal	0 <EnRd_SetupAction>
    1408:	e7a00018 	swc1	$f0,24(sp)
    140c:	8fa40028 	lw	a0,40(sp)
    1410:	240f0007 	li	t7,7
    1414:	3c050000 	lui	a1,0x0
    1418:	24a50000 	addiu	a1,a1,0
    141c:	0c000000 	jal	0 <EnRd_SetupAction>
    1420:	a08f031b 	sb	t7,795(a0)
    1424:	8fbf0024 	lw	ra,36(sp)
    1428:	27bd0028 	addiu	sp,sp,40
    142c:	03e00008 	jr	ra
    1430:	00000000 	nop

00001434 <func_80AE3834>:
    1434:	27bdffc0 	addiu	sp,sp,-64
    1438:	3c0f0000 	lui	t7,0x0
    143c:	afbf001c 	sw	ra,28(sp)
    1440:	afb00018 	sw	s0,24(sp)
    1444:	afa50044 	sw	a1,68(sp)
    1448:	25ef008c 	addiu	t7,t7,140
    144c:	8df90000 	lw	t9,0(t7)
    1450:	27ae0034 	addiu	t6,sp,52
    1454:	8df80004 	lw	t8,4(t7)
    1458:	add90000 	sw	t9,0(t6)
    145c:	8df90008 	lw	t9,8(t7)
    1460:	add80004 	sw	t8,4(t6)
    1464:	3c090000 	lui	t1,0x0
    1468:	add90008 	sw	t9,8(t6)
    146c:	3c0a0000 	lui	t2,0x0
    1470:	8d290098 	lw	t1,152(t1)
    1474:	8d4a009c 	lw	t2,156(t2)
    1478:	8fab0044 	lw	t3,68(sp)
    147c:	afa90030 	sw	t1,48(sp)
    1480:	afaa002c 	sw	t2,44(sp)
    1484:	848d00b6 	lh	t5,182(a0)
    1488:	848c008a 	lh	t4,138(a0)
    148c:	848f030e 	lh	t7,782(a0)
    1490:	84990310 	lh	t9,784(a0)
    1494:	018d7023 	subu	t6,t4,t5
    1498:	01cfc023 	subu	t8,t6,t7
    149c:	03191023 	subu	v0,t8,t9
    14a0:	00021400 	sll	v0,v0,0x10
    14a4:	00021403 	sra	v0,v0,0x10
    14a8:	00808025 	move	s0,a0
    14ac:	04400003 	bltz	v0,14bc <func_80AE3834+0x88>
    14b0:	8d681c44 	lw	t0,7236(t3)
    14b4:	10000002 	b	14c0 <func_80AE3834+0x8c>
    14b8:	00401825 	move	v1,v0
    14bc:	00021823 	negu	v1,v0
    14c0:	28612008 	slti	at,v1,8200
    14c4:	50200015 	beqzl	at,151c <func_80AE3834+0xe8>
    14c8:	8fbf001c 	lw	ra,28(sp)
    14cc:	86090312 	lh	t1,786(s0)
    14d0:	240b003c 	li	t3,60
    14d4:	240500ff 	li	a1,255
    14d8:	312a0080 	andi	t2,t1,0x80
    14dc:	15400008 	bnez	t2,1500 <func_80AE3834+0xcc>
    14e0:	24060014 	li	a2,20
    14e4:	a50b0110 	sh	t3,272(t0)
    14e8:	c60c0090 	lwc1	$f12,144(s0)
    14ec:	0c000000 	jal	0 <EnRd_SetupAction>
    14f0:	24070096 	li	a3,150
    14f4:	8fa40044 	lw	a0,68(sp)
    14f8:	0c000000 	jal	0 <EnRd_SetupAction>
    14fc:	02002825 	move	a1,s0
    1500:	02002025 	move	a0,s0
    1504:	0c000000 	jal	0 <EnRd_SetupAction>
    1508:	240538e5 	li	a1,14565
    150c:	02002025 	move	a0,s0
    1510:	0c000000 	jal	0 <EnRd_SetupAction>
    1514:	8fa50044 	lw	a1,68(sp)
    1518:	8fbf001c 	lw	ra,28(sp)
    151c:	8fb00018 	lw	s0,24(sp)
    1520:	27bd0040 	addiu	sp,sp,64
    1524:	03e00008 	jr	ra
    1528:	00000000 	nop

0000152c <func_80AE392C>:
    152c:	27bdffe8 	addiu	sp,sp,-24
    1530:	afbf0014 	sw	ra,20(sp)
    1534:	00803825 	move	a3,a0
    1538:	3c050000 	lui	a1,0x0
    153c:	24a50000 	addiu	a1,a1,0
    1540:	afa70018 	sw	a3,24(sp)
    1544:	24840188 	addiu	a0,a0,392
    1548:	0c000000 	jal	0 <EnRd_SetupAction>
    154c:	3c06c080 	lui	a2,0xc080
    1550:	8fa40018 	lw	a0,24(sp)
    1554:	240e0005 	li	t6,5
    1558:	3c050000 	lui	a1,0x0
    155c:	24a50000 	addiu	a1,a1,0
    1560:	0c000000 	jal	0 <EnRd_SetupAction>
    1564:	a08e031b 	sb	t6,795(a0)
    1568:	8fbf0014 	lw	ra,20(sp)
    156c:	27bd0018 	addiu	sp,sp,24
    1570:	03e00008 	jr	ra
    1574:	00000000 	nop

00001578 <func_80AE3978>:
    1578:	27bdffe8 	addiu	sp,sp,-24
    157c:	afa5001c 	sw	a1,28(sp)
    1580:	00802825 	move	a1,a0
    1584:	afbf0014 	sw	ra,20(sp)
    1588:	afa40018 	sw	a0,24(sp)
    158c:	afa50018 	sw	a1,24(sp)
    1590:	0c000000 	jal	0 <EnRd_SetupAction>
    1594:	24840188 	addiu	a0,a0,392
    1598:	1040000a 	beqz	v0,15c4 <func_80AE3978+0x4c>
    159c:	8fa50018 	lw	a1,24(sp)
    15a0:	8cae0118 	lw	t6,280(a1)
    15a4:	11c00005 	beqz	t6,15bc <func_80AE3978+0x44>
    15a8:	00000000 	nop
    15ac:	0c000000 	jal	0 <EnRd_SetupAction>
    15b0:	00a02025 	move	a0,a1
    15b4:	10000004 	b	15c8 <func_80AE3978+0x50>
    15b8:	8fbf0014 	lw	ra,20(sp)
    15bc:	0c000000 	jal	0 <EnRd_SetupAction>
    15c0:	00a02025 	move	a0,a1
    15c4:	8fbf0014 	lw	ra,20(sp)
    15c8:	27bd0018 	addiu	sp,sp,24
    15cc:	03e00008 	jr	ra
    15d0:	00000000 	nop

000015d4 <func_80AE39D4>:
    15d4:	27bdffd8 	addiu	sp,sp,-40
    15d8:	afa40028 	sw	a0,40(sp)
    15dc:	afbf0024 	sw	ra,36(sp)
    15e0:	3c040000 	lui	a0,0x0
    15e4:	0c000000 	jal	0 <EnRd_SetupAction>
    15e8:	24840000 	addiu	a0,a0,0
    15ec:	44822000 	mtc1	v0,$f4
    15f0:	3c01c080 	lui	at,0xc080
    15f4:	44814000 	mtc1	at,$f8
    15f8:	46802120 	cvt.s.w	$f4,$f4
    15fc:	8fa40028 	lw	a0,40(sp)
    1600:	44803000 	mtc1	zero,$f6
    1604:	3c050000 	lui	a1,0x0
    1608:	240e0002 	li	t6,2
    160c:	afae0014 	sw	t6,20(sp)
    1610:	44072000 	mfc1	a3,$f4
    1614:	24a50000 	addiu	a1,a1,0
    1618:	3c06bf80 	lui	a2,0xbf80
    161c:	e7a80018 	swc1	$f8,24(sp)
    1620:	24840188 	addiu	a0,a0,392
    1624:	0c000000 	jal	0 <EnRd_SetupAction>
    1628:	e7a60010 	swc1	$f6,16(sp)
    162c:	8fa40028 	lw	a0,40(sp)
    1630:	240f0006 	li	t7,6
    1634:	3c050000 	lui	a1,0x0
    1638:	24a50000 	addiu	a1,a1,0
    163c:	0c000000 	jal	0 <EnRd_SetupAction>
    1640:	a08f031b 	sb	t7,795(a0)
    1644:	8fbf0024 	lw	ra,36(sp)
    1648:	27bd0028 	addiu	sp,sp,40
    164c:	03e00008 	jr	ra
    1650:	00000000 	nop

00001654 <func_80AE3A54>:
    1654:	27bdffe8 	addiu	sp,sp,-24
    1658:	afbf0014 	sw	ra,20(sp)
    165c:	afa40018 	sw	a0,24(sp)
    1660:	afa5001c 	sw	a1,28(sp)
    1664:	0c000000 	jal	0 <EnRd_SetupAction>
    1668:	24840188 	addiu	a0,a0,392
    166c:	50400004 	beqzl	v0,1680 <func_80AE3A54+0x2c>
    1670:	8fbf0014 	lw	ra,20(sp)
    1674:	0c000000 	jal	0 <EnRd_SetupAction>
    1678:	8fa40018 	lw	a0,24(sp)
    167c:	8fbf0014 	lw	ra,20(sp)
    1680:	27bd0018 	addiu	sp,sp,24
    1684:	03e00008 	jr	ra
    1688:	00000000 	nop

0000168c <func_80AE3A8C>:
    168c:	27bdffe8 	addiu	sp,sp,-24
    1690:	afbf0014 	sw	ra,20(sp)
    1694:	00803825 	move	a3,a0
    1698:	3c050000 	lui	a1,0x0
    169c:	24a50000 	addiu	a1,a1,0
    16a0:	afa70018 	sw	a3,24(sp)
    16a4:	24840188 	addiu	a0,a0,392
    16a8:	0c000000 	jal	0 <EnRd_SetupAction>
    16ac:	3c06c0c0 	lui	a2,0xc0c0
    16b0:	8fa70018 	lw	a3,24(sp)
    16b4:	3c01c000 	lui	at,0xc000
    16b8:	94ee0088 	lhu	t6,136(a3)
    16bc:	31cf0001 	andi	t7,t6,0x1
    16c0:	51e00005 	beqzl	t7,16d8 <func_80AE3A8C+0x4c>
    16c4:	8cf80004 	lw	t8,4(a3)
    16c8:	44812000 	mtc1	at,$f4
    16cc:	00000000 	nop
    16d0:	e4e40068 	swc1	$f4,104(a3)
    16d4:	8cf80004 	lw	t8,4(a3)
    16d8:	00e02025 	move	a0,a3
    16dc:	240538e6 	li	a1,14566
    16e0:	37190001 	ori	t9,t8,0x1
    16e4:	acf90004 	sw	t9,4(a3)
    16e8:	0c000000 	jal	0 <EnRd_SetupAction>
    16ec:	afa70018 	sw	a3,24(sp)
    16f0:	8fa40018 	lw	a0,24(sp)
    16f4:	24080009 	li	t0,9
    16f8:	3c050000 	lui	a1,0x0
    16fc:	24a50000 	addiu	a1,a1,0
    1700:	0c000000 	jal	0 <EnRd_SetupAction>
    1704:	a088031b 	sb	t0,795(a0)
    1708:	8fbf0014 	lw	ra,20(sp)
    170c:	27bd0018 	addiu	sp,sp,24
    1710:	03e00008 	jr	ra
    1714:	00000000 	nop

00001718 <func_80AE3B18>:
    1718:	27bdffd0 	addiu	sp,sp,-48
    171c:	afbf0024 	sw	ra,36(sp)
    1720:	afb00020 	sw	s0,32(sp)
    1724:	afa50034 	sw	a1,52(sp)
    1728:	8caf1c44 	lw	t7,7236(a1)
    172c:	44802000 	mtc1	zero,$f4
    1730:	00808025 	move	s0,a0
    1734:	afaf002c 	sw	t7,44(sp)
    1738:	c4800068 	lwc1	$f0,104(a0)
    173c:	3c010000 	lui	at,0x0
    1740:	00002825 	move	a1,zero
    1744:	4604003c 	c.lt.s	$f0,$f4
    1748:	24060001 	li	a2,1
    174c:	45020005 	bc1fl	1764 <func_80AE3B18+0x4c>
    1750:	8618008a 	lh	t8,138(s0)
    1754:	c4260048 	lwc1	$f6,72(at)
    1758:	46060200 	add.s	$f8,$f0,$f6
    175c:	e4880068 	swc1	$f8,104(a0)
    1760:	8618008a 	lh	t8,138(s0)
    1764:	2604030e 	addiu	a0,s0,782
    1768:	2407012c 	li	a3,300
    176c:	a6180032 	sh	t8,50(s0)
    1770:	0c000000 	jal	0 <EnRd_SetupAction>
    1774:	afa00010 	sw	zero,16(sp)
    1778:	26040310 	addiu	a0,s0,784
    177c:	00002825 	move	a1,zero
    1780:	24060001 	li	a2,1
    1784:	2407012c 	li	a3,300
    1788:	0c000000 	jal	0 <EnRd_SetupAction>
    178c:	afa00010 	sw	zero,16(sp)
    1790:	0c000000 	jal	0 <EnRd_SetupAction>
    1794:	26040188 	addiu	a0,s0,392
    1798:	5040001d 	beqzl	v0,1810 <func_80AE3B18+0xf8>
    179c:	8fbf0024 	lw	ra,36(sp)
    17a0:	8e080118 	lw	t0,280(s0)
    17a4:	861900b6 	lh	t9,182(s0)
    17a8:	26050008 	addiu	a1,s0,8
    17ac:	11000005 	beqz	t0,17c4 <func_80AE3B18+0xac>
    17b0:	a6190032 	sh	t9,50(s0)
    17b4:	0c000000 	jal	0 <EnRd_SetupAction>
    17b8:	02002025 	move	a0,s0
    17bc:	10000012 	b	1808 <func_80AE3B18+0xf0>
    17c0:	240900ff 	li	t1,255
    17c4:	0c000000 	jal	0 <EnRd_SetupAction>
    17c8:	8fa4002c 	lw	a0,44(sp)
    17cc:	3c014316 	lui	at,0x4316
    17d0:	44815000 	mtc1	at,$f10
    17d4:	8fa50034 	lw	a1,52(sp)
    17d8:	02002025 	move	a0,s0
    17dc:	4600503e 	c.le.s	$f10,$f0
    17e0:	00000000 	nop
    17e4:	45000005 	bc1f	17fc <func_80AE3B18+0xe4>
    17e8:	00000000 	nop
    17ec:	0c000000 	jal	0 <EnRd_SetupAction>
    17f0:	02002025 	move	a0,s0
    17f4:	10000004 	b	1808 <func_80AE3B18+0xf0>
    17f8:	240900ff 	li	t1,255
    17fc:	0c000000 	jal	0 <EnRd_SetupAction>
    1800:	8fa50034 	lw	a1,52(sp)
    1804:	240900ff 	li	t1,255
    1808:	a209031d 	sb	t1,797(s0)
    180c:	8fbf0024 	lw	ra,36(sp)
    1810:	8fb00020 	lw	s0,32(sp)
    1814:	27bd0030 	addiu	sp,sp,48
    1818:	03e00008 	jr	ra
    181c:	00000000 	nop

00001820 <func_80AE3C20>:
    1820:	27bdffe8 	addiu	sp,sp,-24
    1824:	afbf0014 	sw	ra,20(sp)
    1828:	00803825 	move	a3,a0
    182c:	3c050000 	lui	a1,0x0
    1830:	24a50000 	addiu	a1,a1,0
    1834:	afa70018 	sw	a3,24(sp)
    1838:	24840188 	addiu	a0,a0,392
    183c:	0c000000 	jal	0 <EnRd_SetupAction>
    1840:	3c06bf80 	lui	a2,0xbf80
    1844:	8fa40018 	lw	a0,24(sp)
    1848:	44802000 	mtc1	zero,$f4
    184c:	2401fffe 	li	at,-2
    1850:	8c980004 	lw	t8,4(a0)
    1854:	240e000a 	li	t6,10
    1858:	240f012c 	li	t7,300
    185c:	0301c824 	and	t9,t8,at
    1860:	240538e7 	li	a1,14567
    1864:	a08e031b 	sb	t6,795(a0)
    1868:	a48f030c 	sh	t7,780(a0)
    186c:	ac990004 	sw	t9,4(a0)
    1870:	0c000000 	jal	0 <EnRd_SetupAction>
    1874:	e4840068 	swc1	$f4,104(a0)
    1878:	3c050000 	lui	a1,0x0
    187c:	8fa40018 	lw	a0,24(sp)
    1880:	0c000000 	jal	0 <EnRd_SetupAction>
    1884:	24a50000 	addiu	a1,a1,0
    1888:	8fbf0014 	lw	ra,20(sp)
    188c:	27bd0018 	addiu	sp,sp,24
    1890:	03e00008 	jr	ra
    1894:	00000000 	nop

00001898 <func_80AE3C98>:
    1898:	27bdffd8 	addiu	sp,sp,-40
    189c:	afbf0024 	sw	ra,36(sp)
    18a0:	afb00020 	sw	s0,32(sp)
    18a4:	afa5002c 	sw	a1,44(sp)
    18a8:	908e0002 	lbu	t6,2(a0)
    18ac:	00808025 	move	s0,a0
    18b0:	24010006 	li	at,6
    18b4:	11c10005 	beq	t6,at,18cc <func_80AE3C98+0x34>
    18b8:	00a02025 	move	a0,a1
    18bc:	24a51c24 	addiu	a1,a1,7204
    18c0:	02003025 	move	a2,s0
    18c4:	0c000000 	jal	0 <EnRd_SetupAction>
    18c8:	24070006 	li	a3,6
    18cc:	2604030e 	addiu	a0,s0,782
    18d0:	00002825 	move	a1,zero
    18d4:	24060001 	li	a2,1
    18d8:	240707d0 	li	a3,2000
    18dc:	0c000000 	jal	0 <EnRd_SetupAction>
    18e0:	afa00010 	sw	zero,16(sp)
    18e4:	26040310 	addiu	a0,s0,784
    18e8:	00002825 	move	a1,zero
    18ec:	24060001 	li	a2,1
    18f0:	240707d0 	li	a3,2000
    18f4:	0c000000 	jal	0 <EnRd_SetupAction>
    18f8:	afa00010 	sw	zero,16(sp)
    18fc:	0c000000 	jal	0 <EnRd_SetupAction>
    1900:	26040188 	addiu	a0,s0,392
    1904:	50400027 	beqzl	v0,19a4 <func_80AE3C98+0x10c>
    1908:	c60a01a0 	lwc1	$f10,416(s0)
    190c:	8602030c 	lh	v0,780(s0)
    1910:	14400021 	bnez	v0,1998 <func_80AE3C98+0x100>
    1914:	2459ffff 	addiu	t9,v0,-1
    1918:	86050312 	lh	a1,786(s0)
    191c:	8fa4002c 	lw	a0,44(sp)
    1920:	0c000000 	jal	0 <EnRd_SetupAction>
    1924:	30a5007f 	andi	a1,a1,0x7f
    1928:	54400006 	bnezl	v0,1944 <func_80AE3C98+0xac>
    192c:	86020314 	lh	v0,788(s0)
    1930:	86050312 	lh	a1,786(s0)
    1934:	8fa4002c 	lw	a0,44(sp)
    1938:	0c000000 	jal	0 <EnRd_SetupAction>
    193c:	30a5007f 	andi	a1,a1,0x7f
    1940:	86020314 	lh	v0,788(s0)
    1944:	240100b4 	li	at,180
    1948:	1040000f 	beqz	v0,1988 <func_80AE3C98+0xf0>
    194c:	00000000 	nop
    1950:	14410005 	bne	v0,at,1968 <func_80AE3C98+0xd0>
    1954:	8fa4002c 	lw	a0,44(sp)
    1958:	02002825 	move	a1,s0
    195c:	0c000000 	jal	0 <EnRd_SetupAction>
    1960:	00003025 	move	a2,zero
    1964:	86020314 	lh	v0,788(s0)
    1968:	3c010000 	lui	at,0x0
    196c:	c426004c 	lwc1	$f6,76(at)
    1970:	c6040054 	lwc1	$f4,84(s0)
    1974:	2458fffb 	addiu	t8,v0,-5
    1978:	a6180314 	sh	t8,788(s0)
    197c:	46062201 	sub.s	$f8,$f4,$f6
    1980:	10000013 	b	19d0 <func_80AE3C98+0x138>
    1984:	e6080054 	swc1	$f8,84(s0)
    1988:	0c000000 	jal	0 <EnRd_SetupAction>
    198c:	02002025 	move	a0,s0
    1990:	10000010 	b	19d4 <func_80AE3C98+0x13c>
    1994:	8fbf0024 	lw	ra,36(sp)
    1998:	1000000d 	b	19d0 <func_80AE3C98+0x138>
    199c:	a619030c 	sh	t9,780(s0)
    19a0:	c60a01a0 	lwc1	$f10,416(s0)
    19a4:	24010021 	li	at,33
    19a8:	02002025 	move	a0,s0
    19ac:	4600540d 	trunc.w.s	$f16,$f10
    19b0:	44028000 	mfc1	v0,$f16
    19b4:	00000000 	nop
    19b8:	10410003 	beq	v0,at,19c8 <func_80AE3C98+0x130>
    19bc:	24010028 	li	at,40
    19c0:	54410004 	bnel	v0,at,19d4 <func_80AE3C98+0x13c>
    19c4:	8fbf0024 	lw	ra,36(sp)
    19c8:	0c000000 	jal	0 <EnRd_SetupAction>
    19cc:	2405387a 	li	a1,14458
    19d0:	8fbf0024 	lw	ra,36(sp)
    19d4:	8fb00020 	lw	s0,32(sp)
    19d8:	27bd0028 	addiu	sp,sp,40
    19dc:	03e00008 	jr	ra
    19e0:	00000000 	nop

000019e4 <func_80AE3DE4>:
    19e4:	27bdffd8 	addiu	sp,sp,-40
    19e8:	afbf0024 	sw	ra,36(sp)
    19ec:	afb00020 	sw	s0,32(sp)
    19f0:	44802000 	mtc1	zero,$f4
    19f4:	848e00b6 	lh	t6,182(a0)
    19f8:	24020001 	li	v0,1
    19fc:	a082031b 	sb	v0,795(a0)
    1a00:	3c0f0000 	lui	t7,0x0
    1a04:	e4840068 	swc1	$f4,104(a0)
    1a08:	a48e0032 	sh	t6,50(a0)
    1a0c:	85ef1422 	lh	t7,5154(t7)
    1a10:	00808025 	move	s0,a0
    1a14:	24180258 	li	t8,600
    1a18:	11e0000d 	beqz	t7,1a50 <func_80AE3DE4+0x6c>
    1a1c:	24053836 	li	a1,14390
    1a20:	a0820318 	sb	v0,792(a0)
    1a24:	0c000000 	jal	0 <EnRd_SetupAction>
    1a28:	a4980316 	sh	t8,790(a0)
    1a2c:	241900ff 	li	t9,255
    1a30:	afb90010 	sw	t9,16(sp)
    1a34:	02002025 	move	a0,s0
    1a38:	24058000 	li	a1,-32768
    1a3c:	240680c8 	li	a2,-32568
    1a40:	0c000000 	jal	0 <EnRd_SetupAction>
    1a44:	00003825 	move	a3,zero
    1a48:	10000017 	b	1aa8 <func_80AE3DE4+0xc4>
    1a4c:	00000000 	nop
    1a50:	9208031c 	lbu	t0,796(s0)
    1a54:	24010001 	li	at,1
    1a58:	00002825 	move	a1,zero
    1a5c:	15010009 	bne	t0,at,1a84 <func_80AE3DE4+0xa0>
    1a60:	02002025 	move	a0,s0
    1a64:	24090050 	li	t1,80
    1a68:	afa90010 	sw	t1,16(sp)
    1a6c:	02002025 	move	a0,s0
    1a70:	240600c8 	li	a2,200
    1a74:	0c000000 	jal	0 <EnRd_SetupAction>
    1a78:	00003825 	move	a3,zero
    1a7c:	1000000a 	b	1aa8 <func_80AE3DE4+0xc4>
    1a80:	00000000 	nop
    1a84:	0c000000 	jal	0 <EnRd_SetupAction>
    1a88:	24053836 	li	a1,14390
    1a8c:	240a0050 	li	t2,80
    1a90:	afaa0010 	sw	t2,16(sp)
    1a94:	02002025 	move	a0,s0
    1a98:	24058000 	li	a1,-32768
    1a9c:	240600c8 	li	a2,200
    1aa0:	0c000000 	jal	0 <EnRd_SetupAction>
    1aa4:	00003825 	move	a3,zero
    1aa8:	3c050000 	lui	a1,0x0
    1aac:	24a50000 	addiu	a1,a1,0
    1ab0:	0c000000 	jal	0 <EnRd_SetupAction>
    1ab4:	02002025 	move	a0,s0
    1ab8:	8fbf0024 	lw	ra,36(sp)
    1abc:	8fb00020 	lw	s0,32(sp)
    1ac0:	27bd0028 	addiu	sp,sp,40
    1ac4:	03e00008 	jr	ra
    1ac8:	00000000 	nop

00001acc <func_80AE3ECC>:
    1acc:	27bdffd8 	addiu	sp,sp,-40
    1ad0:	afbf0024 	sw	ra,36(sp)
    1ad4:	afb00020 	sw	s0,32(sp)
    1ad8:	afa5002c 	sw	a1,44(sp)
    1adc:	908e0318 	lbu	t6,792(a0)
    1ae0:	00808025 	move	s0,a0
    1ae4:	51c00014 	beqzl	t6,1b38 <func_80AE3ECC+0x6c>
    1ae8:	92190114 	lbu	t9,276(s0)
    1aec:	84820316 	lh	v0,790(a0)
    1af0:	10400010 	beqz	v0,1b34 <func_80AE3ECC+0x68>
    1af4:	244fffff 	addiu	t7,v0,-1
    1af8:	a48f0316 	sh	t7,790(a0)
    1afc:	84820316 	lh	v0,790(a0)
    1b00:	24058000 	li	a1,-32768
    1b04:	240600c8 	li	a2,200
    1b08:	284100ff 	slti	at,v0,255
    1b0c:	14200005 	bnez	at,1b24 <func_80AE3ECC+0x58>
    1b10:	00003825 	move	a3,zero
    1b14:	241800ff 	li	t8,255
    1b18:	0c000000 	jal	0 <EnRd_SetupAction>
    1b1c:	afb80010 	sw	t8,16(sp)
    1b20:	86020316 	lh	v0,790(s0)
    1b24:	14400003 	bnez	v0,1b34 <func_80AE3ECC+0x68>
    1b28:	3c010000 	lui	at,0x0
    1b2c:	a2000318 	sb	zero,792(s0)
    1b30:	a4201422 	sh	zero,5154(at)
    1b34:	92190114 	lbu	t9,276(s0)
    1b38:	57200014 	bnezl	t9,1b8c <func_80AE3ECC+0xc0>
    1b3c:	8fbf0024 	lw	ra,36(sp)
    1b40:	920800af 	lbu	t0,175(s0)
    1b44:	8fa4002c 	lw	a0,44(sp)
    1b48:	02002825 	move	a1,s0
    1b4c:	1500000c 	bnez	t0,1b80 <func_80AE3ECC+0xb4>
    1b50:	00000000 	nop
    1b54:	0c000000 	jal	0 <EnRd_SetupAction>
    1b58:	24060001 	li	a2,1
    1b5c:	0c000000 	jal	0 <EnRd_SetupAction>
    1b60:	02002025 	move	a0,s0
    1b64:	8fa4002c 	lw	a0,44(sp)
    1b68:	02002825 	move	a1,s0
    1b6c:	26060024 	addiu	a2,s0,36
    1b70:	0c000000 	jal	0 <EnRd_SetupAction>
    1b74:	24070090 	li	a3,144
    1b78:	10000004 	b	1b8c <func_80AE3ECC+0xc0>
    1b7c:	8fbf0024 	lw	ra,36(sp)
    1b80:	0c000000 	jal	0 <EnRd_SetupAction>
    1b84:	02002025 	move	a0,s0
    1b88:	8fbf0024 	lw	ra,36(sp)
    1b8c:	8fb00020 	lw	s0,32(sp)
    1b90:	27bd0028 	addiu	sp,sp,40
    1b94:	03e00008 	jr	ra
    1b98:	00000000 	nop

00001b9c <func_80AE3F9C>:
    1b9c:	afa50004 	sw	a1,4(sp)
    1ba0:	84860310 	lh	a2,784(a0)
    1ba4:	848500b6 	lh	a1,182(a0)
    1ba8:	8483008a 	lh	v1,138(a0)
    1bac:	00a6c021 	addu	t8,a1,a2
    1bb0:	00781023 	subu	v0,v1,t8
    1bb4:	00021400 	sll	v0,v0,0x10
    1bb8:	00021403 	sra	v0,v0,0x10
    1bbc:	2841fe0c 	slti	at,v0,-500
    1bc0:	10200003 	beqz	at,1bd0 <func_80AE3F9C+0x34>
    1bc4:	00654823 	subu	t1,v1,a1
    1bc8:	10000008 	b	1bec <func_80AE3F9C+0x50>
    1bcc:	2407fe0c 	li	a3,-500
    1bd0:	284101f5 	slti	at,v0,501
    1bd4:	14200003 	bnez	at,1be4 <func_80AE3F9C+0x48>
    1bd8:	00404025 	move	t0,v0
    1bdc:	10000001 	b	1be4 <func_80AE3F9C+0x48>
    1be0:	240801f4 	li	t0,500
    1be4:	00083c00 	sll	a3,t0,0x10
    1be8:	00073c03 	sra	a3,a3,0x10
    1bec:	8499030e 	lh	t9,782(a0)
    1bf0:	00095400 	sll	t2,t1,0x10
    1bf4:	000a5c03 	sra	t3,t2,0x10
    1bf8:	00591023 	subu	v0,v0,t9
    1bfc:	00021400 	sll	v0,v0,0x10
    1c00:	00021403 	sra	v0,v0,0x10
    1c04:	2841fe0c 	slti	at,v0,-500
    1c08:	50200004 	beqzl	at,1c1c <func_80AE3F9C+0x80>
    1c0c:	284101f5 	slti	at,v0,501
    1c10:	10000008 	b	1c34 <func_80AE3F9C+0x98>
    1c14:	2402fe0c 	li	v0,-500
    1c18:	284101f5 	slti	at,v0,501
    1c1c:	14200003 	bnez	at,1c2c <func_80AE3F9C+0x90>
    1c20:	00404025 	move	t0,v0
    1c24:	10000001 	b	1c2c <func_80AE3F9C+0x90>
    1c28:	240801f4 	li	t0,500
    1c2c:	00081400 	sll	v0,t0,0x10
    1c30:	00021403 	sra	v0,v0,0x10
    1c34:	0560000f 	bltz	t3,1c74 <func_80AE3F9C+0xd8>
    1c38:	2409b6a1 	li	t1,-18783
    1c3c:	04e00003 	bltz	a3,1c4c <func_80AE3F9C+0xb0>
    1c40:	00074023 	negu	t0,a3
    1c44:	10000001 	b	1c4c <func_80AE3F9C+0xb0>
    1c48:	00e04025 	move	t0,a3
    1c4c:	00c86021 	addu	t4,a2,t0
    1c50:	04400003 	bltz	v0,1c60 <func_80AE3F9C+0xc4>
    1c54:	a48c0310 	sh	t4,784(a0)
    1c58:	10000002 	b	1c64 <func_80AE3F9C+0xc8>
    1c5c:	00404025 	move	t0,v0
    1c60:	00024023 	negu	t0,v0
    1c64:	848d030e 	lh	t5,782(a0)
    1c68:	01a87021 	addu	t6,t5,t0
    1c6c:	1000000e 	b	1ca8 <func_80AE3F9C+0x10c>
    1c70:	a48e030e 	sh	t6,782(a0)
    1c74:	04e00003 	bltz	a3,1c84 <func_80AE3F9C+0xe8>
    1c78:	00074023 	negu	t0,a3
    1c7c:	10000001 	b	1c84 <func_80AE3F9C+0xe8>
    1c80:	00e04025 	move	t0,a3
    1c84:	00c87823 	subu	t7,a2,t0
    1c88:	04400003 	bltz	v0,1c98 <func_80AE3F9C+0xfc>
    1c8c:	a48f0310 	sh	t7,784(a0)
    1c90:	10000002 	b	1c9c <func_80AE3F9C+0x100>
    1c94:	00404025 	move	t0,v0
    1c98:	00024023 	negu	t0,v0
    1c9c:	8498030e 	lh	t8,782(a0)
    1ca0:	0308c823 	subu	t9,t8,t0
    1ca4:	a499030e 	sh	t9,782(a0)
    1ca8:	84860310 	lh	a2,784(a0)
    1cac:	240ada91 	li	t2,-9583
    1cb0:	28c1b6a1 	slti	at,a2,-18783
    1cb4:	50200004 	beqzl	at,1cc8 <func_80AE3F9C+0x12c>
    1cb8:	28c14960 	slti	at,a2,18784
    1cbc:	10000007 	b	1cdc <func_80AE3F9C+0x140>
    1cc0:	a4890310 	sh	t1,784(a0)
    1cc4:	28c14960 	slti	at,a2,18784
    1cc8:	14200003 	bnez	at,1cd8 <func_80AE3F9C+0x13c>
    1ccc:	00c04025 	move	t0,a2
    1cd0:	10000001 	b	1cd8 <func_80AE3F9C+0x13c>
    1cd4:	2408495f 	li	t0,18783
    1cd8:	a4880310 	sh	t0,784(a0)
    1cdc:	8482030e 	lh	v0,782(a0)
    1ce0:	2841da91 	slti	at,v0,-9583
    1ce4:	50200004 	beqzl	at,1cf8 <func_80AE3F9C+0x15c>
    1ce8:	28412570 	slti	at,v0,9584
    1cec:	03e00008 	jr	ra
    1cf0:	a48a030e 	sh	t2,782(a0)
    1cf4:	28412570 	slti	at,v0,9584
    1cf8:	14200003 	bnez	at,1d08 <func_80AE3F9C+0x16c>
    1cfc:	00404025 	move	t0,v0
    1d00:	10000001 	b	1d08 <func_80AE3F9C+0x16c>
    1d04:	2408256f 	li	t0,9583
    1d08:	a488030e 	sh	t0,782(a0)
    1d0c:	03e00008 	jr	ra
    1d10:	00000000 	nop

00001d14 <func_80AE4114>:
    1d14:	27bdffd0 	addiu	sp,sp,-48
    1d18:	3c0f0000 	lui	t7,0x0
    1d1c:	85ef1422 	lh	t7,5154(t7)
    1d20:	afbf0024 	sw	ra,36(sp)
    1d24:	afb00020 	sw	s0,32(sp)
    1d28:	afa50034 	sw	a1,52(sp)
    1d2c:	00808025 	move	s0,a0
    1d30:	11e00013 	beqz	t7,1d80 <func_80AE4114+0x6c>
    1d34:	8ca31c44 	lw	v1,7236(a1)
    1d38:	849800b4 	lh	t8,180(a0)
    1d3c:	57000011 	bnezl	t8,1d84 <func_80AE4114+0x70>
    1d40:	92020331 	lbu	v0,817(s0)
    1d44:	90990318 	lbu	t9,792(a0)
    1d48:	5720000e 	bnezl	t9,1d84 <func_80AE4114+0x70>
    1d4c:	92020331 	lbu	v0,817(s0)
    1d50:	9082031b 	lbu	v0,795(a0)
    1d54:	24010009 	li	at,9
    1d58:	10410009 	beq	v0,at,1d80 <func_80AE4114+0x6c>
    1d5c:	2401000a 	li	at,10
    1d60:	10410007 	beq	v0,at,1d80 <func_80AE4114+0x6c>
    1d64:	24010001 	li	at,1
    1d68:	50410006 	beql	v0,at,1d84 <func_80AE4114+0x70>
    1d6c:	92020331 	lbu	v0,817(s0)
    1d70:	0c000000 	jal	0 <EnRd_SetupAction>
    1d74:	00000000 	nop
    1d78:	10000054 	b	1ecc <func_80AE4114+0x1b8>
    1d7c:	8fbf0024 	lw	ra,36(sp)
    1d80:	92020331 	lbu	v0,817(s0)
    1d84:	2401000b 	li	at,11
    1d88:	30480002 	andi	t0,v0,0x2
    1d8c:	1100004e 	beqz	t0,1ec8 <func_80AE4114+0x1b4>
    1d90:	3049fffd 	andi	t1,v0,0xfffd
    1d94:	920b031b 	lbu	t3,795(s0)
    1d98:	920a00b1 	lbu	t2,177(s0)
    1d9c:	a2090331 	sb	t1,817(s0)
    1da0:	11610049 	beq	t3,at,1ec8 <func_80AE4114+0x1b4>
    1da4:	a20a031c 	sb	t2,796(s0)
    1da8:	02002025 	move	a0,s0
    1dac:	26050338 	addiu	a1,s0,824
    1db0:	24060001 	li	a2,1
    1db4:	0c000000 	jal	0 <EnRd_SetupAction>
    1db8:	afa30028 	sw	v1,40(sp)
    1dbc:	8fa30028 	lw	v1,40(sp)
    1dc0:	24040001 	li	a0,1
    1dc4:	24010006 	li	at,6
    1dc8:	806c0844 	lb	t4,2116(v1)
    1dcc:	51800004 	beqzl	t4,1de0 <func_80AE4114+0xcc>
    1dd0:	9202031c 	lbu	v0,796(s0)
    1dd4:	906d0845 	lbu	t5,2117(v1)
    1dd8:	a20d031d 	sb	t5,797(s0)
    1ddc:	9202031c 	lbu	v0,796(s0)
    1de0:	5040003a 	beqzl	v0,1ecc <func_80AE4114+0x1b8>
    1de4:	8fbf0024 	lw	ra,36(sp)
    1de8:	50410038 	beql	v0,at,1ecc <func_80AE4114+0x1b8>
    1dec:	8fbf0024 	lw	ra,36(sp)
    1df0:	10820003 	beq	a0,v0,1e00 <func_80AE4114+0xec>
    1df4:	2401000d 	li	at,13
    1df8:	5441000b 	bnel	v0,at,1e28 <func_80AE4114+0x114>
    1dfc:	2401000e 	li	at,14
    1e00:	920e031b 	lbu	t6,795(s0)
    1e04:	508e0008 	beql	a0,t6,1e28 <func_80AE4114+0x114>
    1e08:	2401000e 	li	at,14
    1e0c:	0c000000 	jal	0 <EnRd_SetupAction>
    1e10:	02002025 	move	a0,s0
    1e14:	0c000000 	jal	0 <EnRd_SetupAction>
    1e18:	02002025 	move	a0,s0
    1e1c:	1000002b 	b	1ecc <func_80AE4114+0x1b8>
    1e20:	8fbf0024 	lw	ra,36(sp)
    1e24:	2401000e 	li	at,14
    1e28:	a2000318 	sb	zero,792(s0)
    1e2c:	1441000b 	bne	v0,at,1e5c <func_80AE4114+0x148>
    1e30:	a6000316 	sh	zero,790(s0)
    1e34:	240f0050 	li	t7,80
    1e38:	afaf0010 	sw	t7,16(sp)
    1e3c:	02002025 	move	a0,s0
    1e40:	24054000 	li	a1,16384
    1e44:	240600ff 	li	a2,255
    1e48:	0c000000 	jal	0 <EnRd_SetupAction>
    1e4c:	00003825 	move	a3,zero
    1e50:	24180028 	li	t8,40
    1e54:	10000008 	b	1e78 <func_80AE4114+0x164>
    1e58:	a218031a 	sb	t8,794(s0)
    1e5c:	24190008 	li	t9,8
    1e60:	afb90010 	sw	t9,16(sp)
    1e64:	02002025 	move	a0,s0
    1e68:	24054000 	li	a1,16384
    1e6c:	240600ff 	li	a2,255
    1e70:	0c000000 	jal	0 <EnRd_SetupAction>
    1e74:	00003825 	move	a3,zero
    1e78:	0c000000 	jal	0 <EnRd_SetupAction>
    1e7c:	02002025 	move	a0,s0
    1e80:	920800af 	lbu	t0,175(s0)
    1e84:	8fa40034 	lw	a0,52(sp)
    1e88:	02002825 	move	a1,s0
    1e8c:	1500000c 	bnez	t0,1ec0 <func_80AE4114+0x1ac>
    1e90:	00000000 	nop
    1e94:	0c000000 	jal	0 <EnRd_SetupAction>
    1e98:	24060001 	li	a2,1
    1e9c:	0c000000 	jal	0 <EnRd_SetupAction>
    1ea0:	02002025 	move	a0,s0
    1ea4:	8fa40034 	lw	a0,52(sp)
    1ea8:	00002825 	move	a1,zero
    1eac:	26060024 	addiu	a2,s0,36
    1eb0:	0c000000 	jal	0 <EnRd_SetupAction>
    1eb4:	24070090 	li	a3,144
    1eb8:	10000004 	b	1ecc <func_80AE4114+0x1b8>
    1ebc:	8fbf0024 	lw	ra,36(sp)
    1ec0:	0c000000 	jal	0 <EnRd_SetupAction>
    1ec4:	02002025 	move	a0,s0
    1ec8:	8fbf0024 	lw	ra,36(sp)
    1ecc:	8fb00020 	lw	s0,32(sp)
    1ed0:	27bd0030 	addiu	sp,sp,48
    1ed4:	03e00008 	jr	ra
    1ed8:	00000000 	nop

00001edc <EnRd_Update>:
    1edc:	27bdffc0 	addiu	sp,sp,-64
    1ee0:	afbf0024 	sw	ra,36(sp)
    1ee4:	afb00020 	sw	s0,32(sp)
    1ee8:	8cae1c44 	lw	t6,7236(a1)
    1eec:	00808025 	move	s0,a0
    1ef0:	afa50044 	sw	a1,68(sp)
    1ef4:	0c000000 	jal	0 <EnRd_SetupAction>
    1ef8:	afae0034 	sw	t6,52(sp)
    1efc:	3c020000 	lui	v0,0x0
    1f00:	24420000 	addiu	v0,v0,0
    1f04:	844f1422 	lh	t7,5154(v0)
    1f08:	51e00006 	beqzl	t7,1f24 <EnRd_Update+0x48>
    1f0c:	9202031c 	lbu	v0,796(s0)
    1f10:	92180318 	lbu	t8,792(s0)
    1f14:	57000003 	bnezl	t8,1f24 <EnRd_Update+0x48>
    1f18:	9202031c 	lbu	v0,796(s0)
    1f1c:	a4401422 	sh	zero,5154(v0)
    1f20:	9202031c 	lbu	v0,796(s0)
    1f24:	24010006 	li	at,6
    1f28:	50410038 	beql	v0,at,200c <EnRd_Update+0x130>
    1f2c:	8e0b0028 	lw	t3,40(s0)
    1f30:	9219031b 	lbu	t9,795(s0)
    1f34:	2401000b 	li	at,11
    1f38:	17210003 	bne	t9,at,1f48 <EnRd_Update+0x6c>
    1f3c:	2401000e 	li	at,14
    1f40:	50410032 	beql	v0,at,200c <EnRd_Update+0x130>
    1f44:	8e0b0028 	lw	t3,40(s0)
    1f48:	92020306 	lbu	v0,774(s0)
    1f4c:	10400002 	beqz	v0,1f58 <EnRd_Update+0x7c>
    1f50:	2448ffff 	addiu	t0,v0,-1
    1f54:	a2080306 	sb	t0,774(s0)
    1f58:	8e190308 	lw	t9,776(s0)
    1f5c:	02002025 	move	a0,s0
    1f60:	8fa50044 	lw	a1,68(sp)
    1f64:	0320f809 	jalr	t9
    1f68:	00000000 	nop
    1f6c:	9202031b 	lbu	v0,795(s0)
    1f70:	24010008 	li	at,8
    1f74:	5041000b 	beql	v0,at,1fa4 <EnRd_Update+0xc8>
    1f78:	860900b4 	lh	t1,180(s0)
    1f7c:	44802000 	mtc1	zero,$f4
    1f80:	c6060068 	lwc1	$f6,104(s0)
    1f84:	46062032 	c.eq.s	$f4,$f6
    1f88:	00000000 	nop
    1f8c:	45030005 	bc1tl	1fa4 <EnRd_Update+0xc8>
    1f90:	860900b4 	lh	t1,180(s0)
    1f94:	0c000000 	jal	0 <EnRd_SetupAction>
    1f98:	02002025 	move	a0,s0
    1f9c:	9202031b 	lbu	v0,795(s0)
    1fa0:	860900b4 	lh	t1,180(s0)
    1fa4:	24010008 	li	at,8
    1fa8:	55200013 	bnezl	t1,1ff8 <EnRd_Update+0x11c>
    1fac:	24010007 	li	at,7
    1fb0:	50410011 	beql	v0,at,1ff8 <EnRd_Update+0x11c>
    1fb4:	24010007 	li	at,7
    1fb8:	44804000 	mtc1	zero,$f8
    1fbc:	c60a0068 	lwc1	$f10,104(s0)
    1fc0:	8fa40044 	lw	a0,68(sp)
    1fc4:	02002825 	move	a1,s0
    1fc8:	460a4032 	c.eq.s	$f8,$f10
    1fcc:	3c0641f0 	lui	a2,0x41f0
    1fd0:	3c0741a0 	lui	a3,0x41a0
    1fd4:	3c01420c 	lui	at,0x420c
    1fd8:	45010006 	bc1t	1ff4 <EnRd_Update+0x118>
    1fdc:	240a001d 	li	t2,29
    1fe0:	44818000 	mtc1	at,$f16
    1fe4:	afaa0014 	sw	t2,20(sp)
    1fe8:	0c000000 	jal	0 <EnRd_SetupAction>
    1fec:	e7b00010 	swc1	$f16,16(sp)
    1ff0:	9202031b 	lbu	v0,795(s0)
    1ff4:	24010007 	li	at,7
    1ff8:	14410003 	bne	v0,at,2008 <EnRd_Update+0x12c>
    1ffc:	02002025 	move	a0,s0
    2000:	0c000000 	jal	0 <EnRd_SetupAction>
    2004:	8fa50044 	lw	a1,68(sp)
    2008:	8e0b0028 	lw	t3,40(s0)
    200c:	3c014248 	lui	at,0x4248
    2010:	8e0c0024 	lw	t4,36(s0)
    2014:	ae0b003c 	sw	t3,60(s0)
    2018:	c612003c 	lwc1	$f18,60(s0)
    201c:	44812000 	mtc1	at,$f4
    2020:	920d00af 	lbu	t5,175(s0)
    2024:	ae0c0038 	sw	t4,56(s0)
    2028:	46049180 	add.s	$f6,$f18,$f4
    202c:	8e0c002c 	lw	t4,44(s0)
    2030:	e606003c 	swc1	$f6,60(s0)
    2034:	19a0001e 	blez	t5,20b0 <EnRd_Update+0x1d4>
    2038:	ae0c0040 	sw	t4,64(s0)
    203c:	920e031b 	lbu	t6,795(s0)
    2040:	24010008 	li	at,8
    2044:	02002025 	move	a0,s0
    2048:	11c10019 	beq	t6,at,20b0 <EnRd_Update+0x1d4>
    204c:	26050320 	addiu	a1,s0,800
    2050:	0c000000 	jal	0 <EnRd_SetupAction>
    2054:	afa50028 	sw	a1,40(sp)
    2058:	8fa40044 	lw	a0,68(sp)
    205c:	3c010001 	lui	at,0x1
    2060:	34211e60 	ori	at,at,0x1e60
    2064:	00812821 	addu	a1,a0,at
    2068:	afa5002c 	sw	a1,44(sp)
    206c:	0c000000 	jal	0 <EnRd_SetupAction>
    2070:	8fa60028 	lw	a2,40(sp)
    2074:	9218031b 	lbu	t8,795(s0)
    2078:	24010009 	li	at,9
    207c:	8fa5002c 	lw	a1,44(sp)
    2080:	17010008 	bne	t8,at,20a4 <EnRd_Update+0x1c8>
    2084:	8fa20034 	lw	v0,52(sp)
    2088:	80480844 	lb	t0,2116(v0)
    208c:	51000009 	beqzl	t0,20b4 <EnRd_Update+0x1d8>
    2090:	8fbf0024 	lw	ra,36(sp)
    2094:	9219031d 	lbu	t9,797(s0)
    2098:	90490845 	lbu	t1,2117(v0)
    209c:	53290005 	beql	t9,t1,20b4 <EnRd_Update+0x1d8>
    20a0:	8fbf0024 	lw	ra,36(sp)
    20a4:	8fa40044 	lw	a0,68(sp)
    20a8:	0c000000 	jal	0 <EnRd_SetupAction>
    20ac:	8fa60028 	lw	a2,40(sp)
    20b0:	8fbf0024 	lw	ra,36(sp)
    20b4:	8fb00020 	lw	s0,32(sp)
    20b8:	27bd0040 	addiu	sp,sp,64
    20bc:	03e00008 	jr	ra
    20c0:	00000000 	nop

000020c4 <EnRd_OverrideLimbDraw>:
    20c4:	24010017 	li	at,23
    20c8:	afa40000 	sw	a0,0(sp)
    20cc:	afa60008 	sw	a2,8(sp)
    20d0:	14a10009 	bne	a1,at,20f8 <EnRd_OverrideLimbDraw+0x34>
    20d4:	afa7000c 	sw	a3,12(sp)
    20d8:	8fa20010 	lw	v0,16(sp)
    20dc:	8faf0014 	lw	t7,20(sp)
    20e0:	844e0002 	lh	t6,2(v0)
    20e4:	85f8030e 	lh	t8,782(t7)
    20e8:	01d8c821 	addu	t9,t6,t8
    20ec:	a4590002 	sh	t9,2(v0)
    20f0:	03e00008 	jr	ra
    20f4:	00001025 	move	v0,zero
    20f8:	2401000c 	li	at,12
    20fc:	14a10006 	bne	a1,at,2118 <EnRd_OverrideLimbDraw+0x54>
    2100:	8fa20010 	lw	v0,16(sp)
    2104:	8fa90014 	lw	t1,20(sp)
    2108:	84480002 	lh	t0,2(v0)
    210c:	852a0310 	lh	t2,784(t1)
    2110:	010a5821 	addu	t3,t0,t2
    2114:	a44b0002 	sh	t3,2(v0)
    2118:	03e00008 	jr	ra
    211c:	00001025 	move	v0,zero

00002120 <EnRd_PostLimbDraw>:
    2120:	27bdffc8 	addiu	sp,sp,-56
    2124:	3c0e0000 	lui	t6,0x0
    2128:	afbf0014 	sw	ra,20(sp)
    212c:	afa40038 	sw	a0,56(sp)
    2130:	afa60040 	sw	a2,64(sp)
    2134:	afa70044 	sw	a3,68(sp)
    2138:	25ce00a0 	addiu	t6,t6,160
    213c:	8dd80000 	lw	t8,0(t6)
    2140:	8fa60048 	lw	a2,72(sp)
    2144:	27a4002c 	addiu	a0,sp,44
    2148:	ac980000 	sw	t8,0(a0)
    214c:	8dcf0004 	lw	t7,4(t6)
    2150:	24abffff 	addiu	t3,a1,-1
    2154:	2403ffff 	li	v1,-1
    2158:	ac8f0004 	sw	t7,4(a0)
    215c:	8dd80008 	lw	t8,8(t6)
    2160:	2d610019 	sltiu	at,t3,25
    2164:	ac980008 	sw	t8,8(a0)
    2168:	90d9031a 	lbu	t9,794(a2)
    216c:	17200008 	bnez	t9,2190 <EnRd_PostLimbDraw+0x70>
    2170:	00000000 	nop
    2174:	90c80114 	lbu	t0,276(a2)
    2178:	51000038 	beqzl	t0,225c <EnRd_PostLimbDraw+0x13c>
    217c:	8fbf0014 	lw	ra,20(sp)
    2180:	94c90112 	lhu	t1,274(a2)
    2184:	312a4000 	andi	t2,t1,0x4000
    2188:	51400034 	beqzl	t2,225c <EnRd_PostLimbDraw+0x13c>
    218c:	8fbf0014 	lw	ra,20(sp)
    2190:	10200019 	beqz	at,21f8 <EnRd_PostLimbDraw+0xd8>
    2194:	000b5880 	sll	t3,t3,0x2
    2198:	3c010000 	lui	at,0x0
    219c:	002b0821 	addu	at,at,t3
    21a0:	8c2b0050 	lw	t3,80(at)
    21a4:	01600008 	jr	t3
    21a8:	00000000 	nop
    21ac:	10000012 	b	21f8 <EnRd_PostLimbDraw+0xd8>
    21b0:	00001825 	move	v1,zero
    21b4:	10000010 	b	21f8 <EnRd_PostLimbDraw+0xd8>
    21b8:	24030001 	li	v1,1
    21bc:	1000000e 	b	21f8 <EnRd_PostLimbDraw+0xd8>
    21c0:	24030002 	li	v1,2
    21c4:	1000000c 	b	21f8 <EnRd_PostLimbDraw+0xd8>
    21c8:	24030003 	li	v1,3
    21cc:	1000000a 	b	21f8 <EnRd_PostLimbDraw+0xd8>
    21d0:	24030004 	li	v1,4
    21d4:	10000008 	b	21f8 <EnRd_PostLimbDraw+0xd8>
    21d8:	24030005 	li	v1,5
    21dc:	10000006 	b	21f8 <EnRd_PostLimbDraw+0xd8>
    21e0:	24030006 	li	v1,6
    21e4:	10000004 	b	21f8 <EnRd_PostLimbDraw+0xd8>
    21e8:	24030007 	li	v1,7
    21ec:	10000002 	b	21f8 <EnRd_PostLimbDraw+0xd8>
    21f0:	24030008 	li	v1,8
    21f4:	24030009 	li	v1,9
    21f8:	04600017 	bltz	v1,2258 <EnRd_PostLimbDraw+0x138>
    21fc:	27a50018 	addiu	a1,sp,24
    2200:	0c000000 	jal	0 <EnRd_SetupAction>
    2204:	afa30024 	sw	v1,36(sp)
    2208:	c7a40018 	lwc1	$f4,24(sp)
    220c:	8fa30024 	lw	v1,36(sp)
    2210:	8fa60048 	lw	a2,72(sp)
    2214:	4600218d 	trunc.w.s	$f6,$f4
    2218:	00036080 	sll	t4,v1,0x2
    221c:	01836023 	subu	t4,t4,v1
    2220:	000c6040 	sll	t4,t4,0x1
    2224:	440e3000 	mfc1	t6,$f6
    2228:	00cc1021 	addu	v0,a2,t4
    222c:	a44e014c 	sh	t6,332(v0)
    2230:	c7a8001c 	lwc1	$f8,28(sp)
    2234:	4600428d 	trunc.w.s	$f10,$f8
    2238:	44185000 	mfc1	t8,$f10
    223c:	00000000 	nop
    2240:	a458014e 	sh	t8,334(v0)
    2244:	c7b00020 	lwc1	$f16,32(sp)
    2248:	4600848d 	trunc.w.s	$f18,$f16
    224c:	44089000 	mfc1	t0,$f18
    2250:	00000000 	nop
    2254:	a4480150 	sh	t0,336(v0)
    2258:	8fbf0014 	lw	ra,20(sp)
    225c:	27bd0038 	addiu	sp,sp,56
    2260:	03e00008 	jr	ra
    2264:	00000000 	nop

00002268 <EnRd_Draw>:
    2268:	27bdff88 	addiu	sp,sp,-120
    226c:	afbf0034 	sw	ra,52(sp)
    2270:	afb20030 	sw	s2,48(sp)
    2274:	afb1002c 	sw	s1,44(sp)
    2278:	afb00028 	sw	s0,40(sp)
    227c:	8c980024 	lw	t8,36(a0)
    2280:	27ae0064 	addiu	t6,sp,100
    2284:	00a09025 	move	s2,a1
    2288:	add80000 	sw	t8,0(t6)
    228c:	8c8f0028 	lw	t7,40(a0)
    2290:	00808025 	move	s0,a0
    2294:	3c060000 	lui	a2,0x0
    2298:	adcf0004 	sw	t7,4(t6)
    229c:	8c98002c 	lw	t8,44(a0)
    22a0:	27a40050 	addiu	a0,sp,80
    22a4:	24c60000 	addiu	a2,a2,0
    22a8:	add80008 	sw	t8,8(t6)
    22ac:	8ca50000 	lw	a1,0(a1)
    22b0:	2407068f 	li	a3,1679
    22b4:	0c000000 	jal	0 <EnRd_SetupAction>
    22b8:	00a08825 	move	s1,a1
    22bc:	86190314 	lh	t9,788(s0)
    22c0:	240100ff 	li	at,255
    22c4:	17210044 	bne	t9,at,23d8 <EnRd_Draw+0x170>
    22c8:	00000000 	nop
    22cc:	0c000000 	jal	0 <EnRd_SetupAction>
    22d0:	8e440000 	lw	a0,0(s2)
    22d4:	8e2302c0 	lw	v1,704(s1)
    22d8:	3c09fb00 	lui	t1,0xfb00
    22dc:	3c0ddb06 	lui	t5,0xdb06
    22e0:	24680008 	addiu	t0,v1,8
    22e4:	ae2802c0 	sw	t0,704(s1)
    22e8:	ac690000 	sw	t1,0(v1)
    22ec:	860a0314 	lh	t2,788(s0)
    22f0:	3c0e0000 	lui	t6,0x0
    22f4:	25ce0010 	addiu	t6,t6,16
    22f8:	314b00ff 	andi	t3,t2,0xff
    22fc:	ac6b0004 	sw	t3,4(v1)
    2300:	8e2302c0 	lw	v1,704(s1)
    2304:	35ad0020 	ori	t5,t5,0x20
    2308:	3c0f0000 	lui	t7,0x0
    230c:	246c0008 	addiu	t4,v1,8
    2310:	ae2c02c0 	sw	t4,704(s1)
    2314:	ac6e0004 	sw	t6,4(v1)
    2318:	ac6d0000 	sw	t5,0(v1)
    231c:	9207018a 	lbu	a3,394(s0)
    2320:	8e0601a8 	lw	a2,424(s0)
    2324:	8e05018c 	lw	a1,396(s0)
    2328:	3c180000 	lui	t8,0x0
    232c:	27180000 	addiu	t8,t8,0
    2330:	25ef0000 	addiu	t7,t7,0
    2334:	afaf0010 	sw	t7,16(sp)
    2338:	afb80014 	sw	t8,20(sp)
    233c:	afb00018 	sw	s0,24(sp)
    2340:	8e3902c0 	lw	t9,704(s1)
    2344:	02402025 	move	a0,s2
    2348:	0c000000 	jal	0 <EnRd_SetupAction>
    234c:	afb9001c 	sw	t9,28(sp)
    2350:	3c050000 	lui	a1,0x0
    2354:	ae2202c0 	sw	v0,704(s1)
    2358:	24a500b8 	addiu	a1,a1,184
    235c:	27a40064 	addiu	a0,sp,100
    2360:	240600ff 	li	a2,255
    2364:	0c000000 	jal	0 <EnRd_SetupAction>
    2368:	02403825 	move	a3,s2
    236c:	9208031a 	lbu	t0,794(s0)
    2370:	1100003f 	beqz	t0,2470 <EnRd_Draw+0x208>
    2374:	00000000 	nop
    2378:	920b031a 	lbu	t3,794(s0)
    237c:	92090114 	lbu	t1,276(s0)
    2380:	02402025 	move	a0,s2
    2384:	256cffff 	addiu	t4,t3,-1
    2388:	318300ff 	andi	v1,t4,0xff
    238c:	306d0003 	andi	t5,v1,0x3
    2390:	252a0001 	addiu	t2,t1,1
    2394:	a20a0114 	sb	t2,276(s0)
    2398:	15a00035 	bnez	t5,2470 <EnRd_Draw+0x208>
    239c:	a20c031a 	sb	t4,794(s0)
    23a0:	00031083 	sra	v0,v1,0x2
    23a4:	00027080 	sll	t6,v0,0x2
    23a8:	01c27023 	subu	t6,t6,v0
    23ac:	000e7040 	sll	t6,t6,0x1
    23b0:	020e3021 	addu	a2,s0,t6
    23b4:	24c6014c 	addiu	a2,a2,332
    23b8:	afa20018 	sw	v0,24(sp)
    23bc:	02002825 	move	a1,s0
    23c0:	2407004b 	li	a3,75
    23c4:	afa00010 	sw	zero,16(sp)
    23c8:	0c000000 	jal	0 <EnRd_SetupAction>
    23cc:	afa00014 	sw	zero,20(sp)
    23d0:	10000027 	b	2470 <EnRd_Draw+0x208>
    23d4:	00000000 	nop
    23d8:	0c000000 	jal	0 <EnRd_SetupAction>
    23dc:	8e440000 	lw	a0,0(s2)
    23e0:	8e2302d0 	lw	v1,720(s1)
    23e4:	3c18fb00 	lui	t8,0xfb00
    23e8:	3c0adb06 	lui	t2,0xdb06
    23ec:	246f0008 	addiu	t7,v1,8
    23f0:	ae2f02d0 	sw	t7,720(s1)
    23f4:	ac780000 	sw	t8,0(v1)
    23f8:	86190314 	lh	t9,788(s0)
    23fc:	3c0b0000 	lui	t3,0x0
    2400:	256b0000 	addiu	t3,t3,0
    2404:	332800ff 	andi	t0,t9,0xff
    2408:	ac680004 	sw	t0,4(v1)
    240c:	8e2302d0 	lw	v1,720(s1)
    2410:	354a0020 	ori	t2,t2,0x20
    2414:	3c0c0000 	lui	t4,0x0
    2418:	24690008 	addiu	t1,v1,8
    241c:	ae2902d0 	sw	t1,720(s1)
    2420:	ac6b0004 	sw	t3,4(v1)
    2424:	ac6a0000 	sw	t2,0(v1)
    2428:	9207018a 	lbu	a3,394(s0)
    242c:	8e0601a8 	lw	a2,424(s0)
    2430:	8e05018c 	lw	a1,396(s0)
    2434:	258c0000 	addiu	t4,t4,0
    2438:	afac0010 	sw	t4,16(sp)
    243c:	afb00018 	sw	s0,24(sp)
    2440:	afa00014 	sw	zero,20(sp)
    2444:	8e2d02d0 	lw	t5,720(s1)
    2448:	02402025 	move	a0,s2
    244c:	0c000000 	jal	0 <EnRd_SetupAction>
    2450:	afad001c 	sw	t5,28(sp)
    2454:	ae2202d0 	sw	v0,720(s1)
    2458:	3c050000 	lui	a1,0x0
    245c:	24a500b8 	addiu	a1,a1,184
    2460:	92060315 	lbu	a2,789(s0)
    2464:	27a40064 	addiu	a0,sp,100
    2468:	0c000000 	jal	0 <EnRd_SetupAction>
    246c:	02403825 	move	a3,s2
    2470:	3c060000 	lui	a2,0x0
    2474:	24c60010 	addiu	a2,a2,16
    2478:	27a40050 	addiu	a0,sp,80
    247c:	8e450000 	lw	a1,0(s2)
    2480:	0c000000 	jal	0 <EnRd_SetupAction>
    2484:	240706c7 	li	a3,1735
    2488:	8fbf0034 	lw	ra,52(sp)
    248c:	8fb00028 	lw	s0,40(sp)
    2490:	8fb1002c 	lw	s1,44(sp)
    2494:	8fb20030 	lw	s2,48(sp)
    2498:	03e00008 	jr	ra
    249c:	27bd0078 	addiu	sp,sp,120
