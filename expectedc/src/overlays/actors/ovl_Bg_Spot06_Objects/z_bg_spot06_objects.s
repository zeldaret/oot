
build/src/overlays/actors/ovl_Bg_Spot06_Objects/z_bg_spot06_objects.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <BgSpot06Objects_Init>:
       0:	27bdffc0 	addiu	sp,sp,-64
       4:	afbf0024 	sw	ra,36(sp)
       8:	afb00020 	sw	s0,32(sp)
       c:	afa50044 	sw	a1,68(sp)
      10:	afa00034 	sw	zero,52(sp)
      14:	8482001c 	lh	v0,28(a0)
      18:	00808025 	move	s0,a0
      1c:	00027a03 	sra	t7,v0,0x8
      20:	31f800ff 	andi	t8,t7,0xff
      24:	304e00ff 	andi	t6,v0,0xff
      28:	a48e0168 	sh	t6,360(a0)
      2c:	a498001c 	sh	t8,28(a0)
      30:	3c040000 	lui	a0,0x0
      34:	24840000 	addiu	a0,a0,0
      38:	0c000000 	jal	0 <BgSpot06Objects_Init>
      3c:	8605001c 	lh	a1,28(s0)
      40:	8602001c 	lh	v0,28(s0)
      44:	24010001 	li	at,1
      48:	02002025 	move	a0,s0
      4c:	1040000b 	beqz	v0,7c <BgSpot06Objects_Init+0x7c>
      50:	3c050000 	lui	a1,0x0
      54:	1041002e 	beq	v0,at,110 <BgSpot06Objects_Init+0x110>
      58:	02002025 	move	a0,s0
      5c:	24010002 	li	at,2
      60:	10410085 	beq	v0,at,278 <BgSpot06Objects_Init+0x278>
      64:	02002025 	move	a0,s0
      68:	24010003 	li	at,3
      6c:	104100bc 	beq	v0,at,360 <BgSpot06Objects_Init+0x360>
      70:	02002025 	move	a0,s0
      74:	100000d5 	b	3cc <BgSpot06Objects_Init+0x3cc>
      78:	8fbf0024 	lw	ra,36(sp)
      7c:	0c000000 	jal	0 <BgSpot06Objects_Init>
      80:	24a50000 	addiu	a1,a1,0
      84:	02002025 	move	a0,s0
      88:	0c000000 	jal	0 <BgSpot06Objects_Init>
      8c:	00002825 	move	a1,zero
      90:	3c040600 	lui	a0,0x600
      94:	24840ee8 	addiu	a0,a0,3816
      98:	0c000000 	jal	0 <BgSpot06Objects_Init>
      9c:	27a50034 	addiu	a1,sp,52
      a0:	8fa40044 	lw	a0,68(sp)
      a4:	02003025 	move	a2,s0
      a8:	8fa70034 	lw	a3,52(sp)
      ac:	0c000000 	jal	0 <BgSpot06Objects_Init>
      b0:	24850810 	addiu	a1,a0,2064
      b4:	3c030000 	lui	v1,0x0
      b8:	24630000 	addiu	v1,v1,0
      bc:	ae02014c 	sw	v0,332(s0)
      c0:	8c790004 	lw	t9,4(v1)
      c4:	8fa40044 	lw	a0,68(sp)
      c8:	1720000d 	bnez	t9,100 <BgSpot06Objects_Init+0x100>
      cc:	00000000 	nop
      d0:	0c000000 	jal	0 <BgSpot06Objects_Init>
      d4:	86050168 	lh	a1,360(s0)
      d8:	10400009 	beqz	v0,100 <BgSpot06Objects_Init+0x100>
      dc:	3c0142f0 	lui	at,0x42f0
      e0:	c604000c 	lwc1	$f4,12(s0)
      e4:	44813000 	mtc1	at,$f6
      e8:	3c080000 	lui	t0,0x0
      ec:	25080000 	addiu	t0,t0,0
      f0:	46062200 	add.s	$f8,$f4,$f6
      f4:	ae080164 	sw	t0,356(s0)
      f8:	100000b3 	b	3c8 <BgSpot06Objects_Init+0x3c8>
      fc:	e6080028 	swc1	$f8,40(s0)
     100:	3c090000 	lui	t1,0x0
     104:	25290000 	addiu	t1,t1,0
     108:	100000af 	b	3c8 <BgSpot06Objects_Init+0x3c8>
     10c:	ae090164 	sw	t1,356(s0)
     110:	3c050000 	lui	a1,0x0
     114:	0c000000 	jal	0 <BgSpot06Objects_Init>
     118:	24a50000 	addiu	a1,a1,0
     11c:	26050170 	addiu	a1,s0,368
     120:	afa5002c 	sw	a1,44(sp)
     124:	0c000000 	jal	0 <BgSpot06Objects_Init>
     128:	8fa40044 	lw	a0,68(sp)
     12c:	3c070000 	lui	a3,0x0
     130:	260a0190 	addiu	t2,s0,400
     134:	8fa5002c 	lw	a1,44(sp)
     138:	afaa0010 	sw	t2,16(sp)
     13c:	24e70000 	addiu	a3,a3,0
     140:	8fa40044 	lw	a0,68(sp)
     144:	0c000000 	jal	0 <BgSpot06Objects_Init>
     148:	02003025 	move	a2,s0
     14c:	3c030000 	lui	v1,0x0
     150:	24630000 	addiu	v1,v1,0
     154:	8c6b0004 	lw	t3,4(v1)
     158:	8fa40044 	lw	a0,68(sp)
     15c:	5560002c 	bnezl	t3,210 <BgSpot06Objects_Init+0x210>
     160:	8e02018c 	lw	v0,396(s0)
     164:	0c000000 	jal	0 <BgSpot06Objects_Init>
     168:	86050168 	lh	a1,360(s0)
     16c:	3c030000 	lui	v1,0x0
     170:	10400026 	beqz	v0,20c <BgSpot06Objects_Init+0x20c>
     174:	24630000 	addiu	v1,v1,0
     178:	946c0ee0 	lhu	t4,3808(v1)
     17c:	3c010000 	lui	at,0x0
     180:	318d0200 	andi	t5,t4,0x200
     184:	15a00006 	bnez	t5,1a0 <BgSpot06Objects_Init+0x1a0>
     188:	00000000 	nop
     18c:	3c010000 	lui	at,0x0
     190:	c4200000 	lwc1	$f0,0(at)
     194:	e6000028 	swc1	$f0,40(s0)
     198:	10000004 	b	1ac <BgSpot06Objects_Init+0x1ac>
     19c:	e600000c 	swc1	$f0,12(s0)
     1a0:	c4220000 	lwc1	$f2,0(at)
     1a4:	e6020028 	swc1	$f2,40(s0)
     1a8:	e602000c 	swc1	$f2,12(s0)
     1ac:	3c014180 	lui	at,0x4180
     1b0:	44810000 	mtc1	at,$f0
     1b4:	3c0142c8 	lui	at,0x42c8
     1b8:	44818000 	mtc1	at,$f16
     1bc:	c60a002c 	lwc1	$f10,44(s0)
     1c0:	8e02018c 	lw	v0,396(s0)
     1c4:	3c0e0000 	lui	t6,0x0
     1c8:	46105481 	sub.s	$f18,$f10,$f16
     1cc:	25ce0000 	addiu	t6,t6,0
     1d0:	ae0e0164 	sw	t6,356(s0)
     1d4:	e612002c 	swc1	$f18,44(s0)
     1d8:	c604002c 	lwc1	$f4,44(s0)
     1dc:	46002180 	add.s	$f6,$f4,$f0
     1e0:	e6060010 	swc1	$f6,16(s0)
     1e4:	844f002e 	lh	t7,46(v0)
     1e8:	000fc040 	sll	t8,t7,0x1
     1ec:	a4580036 	sh	t8,54(v0)
     1f0:	c608002c 	lwc1	$f8,44(s0)
     1f4:	8e09018c 	lw	t1,396(s0)
     1f8:	46004280 	add.s	$f10,$f8,$f0
     1fc:	4600540d 	trunc.w.s	$f16,$f10
     200:	44088000 	mfc1	t0,$f16
     204:	1000000d 	b	23c <BgSpot06Objects_Init+0x23c>
     208:	a5280034 	sh	t0,52(t1)
     20c:	8e02018c 	lw	v0,396(s0)
     210:	3c0a0000 	lui	t2,0x0
     214:	254a0000 	addiu	t2,t2,0
     218:	ae0a0164 	sw	t2,356(s0)
     21c:	844b002e 	lh	t3,46(v0)
     220:	a44b0036 	sh	t3,54(v0)
     224:	c612002c 	lwc1	$f18,44(s0)
     228:	8e0e018c 	lw	t6,396(s0)
     22c:	4600910d 	trunc.w.s	$f4,$f18
     230:	440d2000 	mfc1	t5,$f4
     234:	00000000 	nop
     238:	a5cd0034 	sh	t5,52(t6)
     23c:	c6060024 	lwc1	$f6,36(s0)
     240:	8e19018c 	lw	t9,396(s0)
     244:	240b00ff 	li	t3,255
     248:	4600320d 	trunc.w.s	$f8,$f6
     24c:	44184000 	mfc1	t8,$f8
     250:	00000000 	nop
     254:	a7380030 	sh	t8,48(t9)
     258:	c60a0028 	lwc1	$f10,40(s0)
     25c:	8e0a018c 	lw	t2,396(s0)
     260:	4600540d 	trunc.w.s	$f16,$f10
     264:	44098000 	mfc1	t1,$f16
     268:	00000000 	nop
     26c:	a5490032 	sh	t1,50(t2)
     270:	10000055 	b	3c8 <BgSpot06Objects_Init+0x3c8>
     274:	a20b00ae 	sb	t3,174(s0)
     278:	3c050000 	lui	a1,0x0
     27c:	0c000000 	jal	0 <BgSpot06Objects_Init>
     280:	24a50000 	addiu	a1,a1,0
     284:	3c030000 	lui	v1,0x0
     288:	240c0030 	li	t4,48
     28c:	24630000 	addiu	v1,v1,0
     290:	ae0c0004 	sw	t4,4(s0)
     294:	8c6d0004 	lw	t5,4(v1)
     298:	3c090000 	lui	t1,0x0
     29c:	25290000 	addiu	t1,t1,0
     2a0:	55a0002c 	bnezl	t5,354 <BgSpot06Objects_Init+0x354>
     2a4:	44802000 	mtc1	zero,$f4
     2a8:	946e0ee0 	lhu	t6,3808(v1)
     2ac:	31cf0200 	andi	t7,t6,0x200
     2b0:	55e00028 	bnezl	t7,354 <BgSpot06Objects_Init+0x354>
     2b4:	44802000 	mtc1	zero,$f4
     2b8:	8c781360 	lw	t8,4960(v1)
     2bc:	2b010004 	slti	at,t8,4
     2c0:	10200018 	beqz	at,324 <BgSpot06Objects_Init+0x324>
     2c4:	3c010000 	lui	at,0x0
     2c8:	c4200000 	lwc1	$f0,0(at)
     2cc:	8fa30044 	lw	v1,68(sp)
     2d0:	2419fb57 	li	t9,-1193
     2d4:	e600016c 	swc1	$f0,364(s0)
     2d8:	8c6807c0 	lw	t0,1984(v1)
     2dc:	2404f837 	li	a0,-1993
     2e0:	8d090028 	lw	t1,40(t0)
     2e4:	3c080000 	lui	t0,0x0
     2e8:	25080000 	addiu	t0,t0,0
     2ec:	a5390012 	sh	t9,18(t1)
     2f0:	8c6a07c0 	lw	t2,1984(v1)
     2f4:	8d420028 	lw	v0,40(t2)
     2f8:	844b0014 	lh	t3,20(v0)
     2fc:	256cffce 	addiu	t4,t3,-50
     300:	a44c0014 	sh	t4,20(v0)
     304:	8c6d07c0 	lw	t5,1984(v1)
     308:	8dae0028 	lw	t6,40(t5)
     30c:	a5c40022 	sh	a0,34(t6)
     310:	8c6f07c0 	lw	t7,1984(v1)
     314:	8df80028 	lw	t8,40(t7)
     318:	a7040032 	sh	a0,50(t8)
     31c:	1000002a 	b	3c8 <BgSpot06Objects_Init+0x3c8>
     320:	ae080164 	sw	t0,356(s0)
     324:	3c010000 	lui	at,0x0
     328:	c4200000 	lwc1	$f0,0(at)
     32c:	3c010000 	lui	at,0x0
     330:	c4220000 	lwc1	$f2,0(at)
     334:	3c190000 	lui	t9,0x0
     338:	27390000 	addiu	t9,t9,0
     33c:	46020480 	add.s	$f18,$f0,$f2
     340:	ae190164 	sw	t9,356(s0)
     344:	e600016c 	swc1	$f0,364(s0)
     348:	1000001f 	b	3c8 <BgSpot06Objects_Init+0x3c8>
     34c:	e6120028 	swc1	$f18,40(s0)
     350:	44802000 	mtc1	zero,$f4
     354:	ae090164 	sw	t1,356(s0)
     358:	1000001b 	b	3c8 <BgSpot06Objects_Init+0x3c8>
     35c:	e604016c 	swc1	$f4,364(s0)
     360:	3c050000 	lui	a1,0x0
     364:	0c000000 	jal	0 <BgSpot06Objects_Init>
     368:	24a50000 	addiu	a1,a1,0
     36c:	02002025 	move	a0,s0
     370:	0c000000 	jal	0 <BgSpot06Objects_Init>
     374:	00002825 	move	a1,zero
     378:	3c040600 	lui	a0,0x600
     37c:	24841238 	addiu	a0,a0,4664
     380:	0c000000 	jal	0 <BgSpot06Objects_Init>
     384:	27a50034 	addiu	a1,sp,52
     388:	8fa40044 	lw	a0,68(sp)
     38c:	02003025 	move	a2,s0
     390:	8fa70034 	lw	a3,52(sp)
     394:	0c000000 	jal	0 <BgSpot06Objects_Init>
     398:	24850810 	addiu	a1,a0,2064
     39c:	3c0a0000 	lui	t2,0x0
     3a0:	3c030000 	lui	v1,0x0
     3a4:	254a0000 	addiu	t2,t2,0
     3a8:	24630000 	addiu	v1,v1,0
     3ac:	ae02014c 	sw	v0,332(s0)
     3b0:	ae0a0164 	sw	t2,356(s0)
     3b4:	8c6b0004 	lw	t3,4(v1)
     3b8:	51600004 	beqzl	t3,3cc <BgSpot06Objects_Init+0x3cc>
     3bc:	8fbf0024 	lw	ra,36(sp)
     3c0:	0c000000 	jal	0 <BgSpot06Objects_Init>
     3c4:	02002025 	move	a0,s0
     3c8:	8fbf0024 	lw	ra,36(sp)
     3cc:	8fb00020 	lw	s0,32(sp)
     3d0:	27bd0040 	addiu	sp,sp,64
     3d4:	03e00008 	jr	ra
     3d8:	00000000 	nop

000003dc <BgSpot06Objects_Destroy>:
     3dc:	27bdffe8 	addiu	sp,sp,-24
     3e0:	afbf0014 	sw	ra,20(sp)
     3e4:	afa5001c 	sw	a1,28(sp)
     3e8:	8482001c 	lh	v0,28(a0)
     3ec:	00803825 	move	a3,a0
     3f0:	24010001 	li	at,1
     3f4:	10400007 	beqz	v0,414 <BgSpot06Objects_Destroy+0x38>
     3f8:	8fa4001c 	lw	a0,28(sp)
     3fc:	1041000a 	beq	v0,at,428 <BgSpot06Objects_Destroy+0x4c>
     400:	24e50170 	addiu	a1,a3,368
     404:	24010002 	li	at,2
     408:	10410009 	beq	v0,at,430 <BgSpot06Objects_Destroy+0x54>
     40c:	24010003 	li	at,3
     410:	14410007 	bne	v0,at,430 <BgSpot06Objects_Destroy+0x54>
     414:	24850810 	addiu	a1,a0,2064
     418:	0c000000 	jal	0 <BgSpot06Objects_Init>
     41c:	8ce6014c 	lw	a2,332(a3)
     420:	10000004 	b	434 <BgSpot06Objects_Destroy+0x58>
     424:	8fbf0014 	lw	ra,20(sp)
     428:	0c000000 	jal	0 <BgSpot06Objects_Init>
     42c:	8fa4001c 	lw	a0,28(sp)
     430:	8fbf0014 	lw	ra,20(sp)
     434:	27bd0018 	addiu	sp,sp,24
     438:	03e00008 	jr	ra
     43c:	00000000 	nop

00000440 <func_808AEBC0>:
     440:	27bdffc0 	addiu	sp,sp,-64
     444:	3c0f0001 	lui	t7,0x1
     448:	afbf0024 	sw	ra,36(sp)
     44c:	afb00020 	sw	s0,32(sp)
     450:	afa50044 	sw	a1,68(sp)
     454:	01e57821 	addu	t7,t7,a1
     458:	8def1de4 	lw	t7,7652(t7)
     45c:	24010003 	li	at,3
     460:	00808025 	move	s0,a0
     464:	01e1001b 	divu	zero,t7,at
     468:	0000c010 	mfhi	t8
     46c:	3c014320 	lui	at,0x4320
     470:	5700002c 	bnezl	t8,524 <func_808AEBC0+0xe4>
     474:	8fbf0024 	lw	ra,36(sp)
     478:	44816000 	mtc1	at,$f12
     47c:	0c000000 	jal	0 <BgSpot06Objects_Init>
     480:	00000000 	nop
     484:	e7a00030 	swc1	$f0,48(sp)
     488:	860400b6 	lh	a0,182(s0)
     48c:	24844000 	addiu	a0,a0,16384
     490:	00042400 	sll	a0,a0,0x10
     494:	0c000000 	jal	0 <BgSpot06Objects_Init>
     498:	00042403 	sra	a0,a0,0x10
     49c:	c7a40030 	lwc1	$f4,48(sp)
     4a0:	c6080024 	lwc1	$f8,36(s0)
     4a4:	46040182 	mul.s	$f6,$f0,$f4
     4a8:	46083280 	add.s	$f10,$f6,$f8
     4ac:	e7aa0034 	swc1	$f10,52(sp)
     4b0:	c6100028 	lwc1	$f16,40(s0)
     4b4:	e7b00038 	swc1	$f16,56(sp)
     4b8:	860400b6 	lh	a0,182(s0)
     4bc:	24844000 	addiu	a0,a0,16384
     4c0:	00042400 	sll	a0,a0,0x10
     4c4:	0c000000 	jal	0 <BgSpot06Objects_Init>
     4c8:	00042403 	sra	a0,a0,0x10
     4cc:	c7b20030 	lwc1	$f18,48(sp)
     4d0:	c606002c 	lwc1	$f6,44(s0)
     4d4:	46120102 	mul.s	$f4,$f0,$f18
     4d8:	46062200 	add.s	$f8,$f4,$f6
     4dc:	0c000000 	jal	0 <BgSpot06Objects_Init>
     4e0:	e7a8003c 	swc1	$f8,60(sp)
     4e4:	3c014120 	lui	at,0x4120
     4e8:	44815000 	mtc1	at,$f10
     4ec:	3c010000 	lui	at,0x0
     4f0:	c4300000 	lwc1	$f16,0(at)
     4f4:	3c010000 	lui	at,0x0
     4f8:	c4240000 	lwc1	$f4,0(at)
     4fc:	46100482 	mul.s	$f18,$f0,$f16
     500:	8fa40044 	lw	a0,68(sp)
     504:	27a50034 	addiu	a1,sp,52
     508:	3c064248 	lui	a2,0x4248
     50c:	3c07428c 	lui	a3,0x428c
     510:	e7aa0010 	swc1	$f10,16(sp)
     514:	46049180 	add.s	$f6,$f18,$f4
     518:	0c000000 	jal	0 <BgSpot06Objects_Init>
     51c:	e7a60014 	swc1	$f6,20(sp)
     520:	8fbf0024 	lw	ra,36(sp)
     524:	8fb00020 	lw	s0,32(sp)
     528:	27bd0040 	addiu	sp,sp,64
     52c:	03e00008 	jr	ra
     530:	00000000 	nop

00000534 <func_808AECB4>:
     534:	27bdffd8 	addiu	sp,sp,-40
     538:	afb10018 	sw	s1,24(sp)
     53c:	00808825 	move	s1,a0
     540:	afb2001c 	sw	s2,28(sp)
     544:	00a09025 	move	s2,a1
     548:	afbf0024 	sw	ra,36(sp)
     54c:	afb30020 	sw	s3,32(sp)
     550:	afb00014 	sw	s0,20(sp)
     554:	00a02025 	move	a0,a1
     558:	0c000000 	jal	0 <BgSpot06Objects_Init>
     55c:	86250168 	lh	a1,360(s1)
     560:	10400012 	beqz	v0,5ac <func_808AECB4+0x78>
     564:	240e0064 	li	t6,100
     568:	3c014040 	lui	at,0x4040
     56c:	44813000 	mtc1	at,$f6
     570:	c6240028 	lwc1	$f4,40(s1)
     574:	3c0f0000 	lui	t7,0x0
     578:	25ef0000 	addiu	t7,t7,0
     57c:	46062200 	add.s	$f8,$f4,$f6
     580:	a62e016a 	sh	t6,362(s1)
     584:	ae2f0164 	sw	t7,356(s1)
     588:	00008025 	move	s0,zero
     58c:	e6280028 	swc1	$f8,40(s1)
     590:	2413000f 	li	s3,15
     594:	02202025 	move	a0,s1
     598:	0c000000 	jal	0 <BgSpot06Objects_Init>
     59c:	02402825 	move	a1,s2
     5a0:	26100001 	addiu	s0,s0,1
     5a4:	5613fffc 	bnel	s0,s3,598 <func_808AECB4+0x64>
     5a8:	02202025 	move	a0,s1
     5ac:	8fbf0024 	lw	ra,36(sp)
     5b0:	8fb00014 	lw	s0,20(sp)
     5b4:	8fb10018 	lw	s1,24(sp)
     5b8:	8fb2001c 	lw	s2,28(sp)
     5bc:	8fb30020 	lw	s3,32(sp)
     5c0:	03e00008 	jr	ra
     5c4:	27bd0028 	addiu	sp,sp,40

000005c8 <func_808AED48>:
     5c8:	afa50004 	sw	a1,4(sp)
     5cc:	8482016a 	lh	v0,362(a0)
     5d0:	3c0f0000 	lui	t7,0x0
     5d4:	25ef0000 	addiu	t7,t7,0
     5d8:	10400003 	beqz	v0,5e8 <func_808AED48+0x20>
     5dc:	244effff 	addiu	t6,v0,-1
     5e0:	a48e016a 	sh	t6,362(a0)
     5e4:	8482016a 	lh	v0,362(a0)
     5e8:	14400002 	bnez	v0,5f4 <func_808AED48+0x2c>
     5ec:	00000000 	nop
     5f0:	ac8f0164 	sw	t7,356(a0)
     5f4:	03e00008 	jr	ra
     5f8:	00000000 	nop

000005fc <func_808AED7C>:
     5fc:	27bdffe8 	addiu	sp,sp,-24
     600:	afbf0014 	sw	ra,20(sp)
     604:	0c000000 	jal	0 <BgSpot06Objects_Init>
     608:	afa40018 	sw	a0,24(sp)
     60c:	8fa70018 	lw	a3,24(sp)
     610:	3c0142f0 	lui	at,0x42f0
     614:	44813000 	mtc1	at,$f6
     618:	c4e4000c 	lwc1	$f4,12(a3)
     61c:	3c063f19 	lui	a2,0x3f19
     620:	34c6999a 	ori	a2,a2,0x999a
     624:	46062200 	add.s	$f8,$f4,$f6
     628:	24e40028 	addiu	a0,a3,40
     62c:	44054000 	mfc1	a1,$f8
     630:	0c000000 	jal	0 <BgSpot06Objects_Init>
     634:	00000000 	nop
     638:	1040000a 	beqz	v0,664 <func_808AED7C+0x68>
     63c:	8fa70018 	lw	a3,24(sp)
     640:	3c0e0000 	lui	t6,0x0
     644:	25ce0000 	addiu	t6,t6,0
     648:	acee0164 	sw	t6,356(a3)
     64c:	a4e0016a 	sh	zero,362(a3)
     650:	00e02025 	move	a0,a3
     654:	0c000000 	jal	0 <BgSpot06Objects_Init>
     658:	24052837 	li	a1,10295
     65c:	10000005 	b	674 <func_808AED7C+0x78>
     660:	8fbf0014 	lw	ra,20(sp)
     664:	00e02025 	move	a0,a3
     668:	0c000000 	jal	0 <BgSpot06Objects_Init>
     66c:	24052036 	li	a1,8246
     670:	8fbf0014 	lw	ra,20(sp)
     674:	27bd0018 	addiu	sp,sp,24
     678:	03e00008 	jr	ra
     67c:	00000000 	nop

00000680 <func_808AEE00>:
     680:	afa40000 	sw	a0,0(sp)
     684:	03e00008 	jr	ra
     688:	afa50004 	sw	a1,4(sp)

0000068c <func_808AEE0C>:
     68c:	27bdffe0 	addiu	sp,sp,-32
     690:	afbf001c 	sw	ra,28(sp)
     694:	afa40020 	sw	a0,32(sp)
     698:	14c00009 	bnez	a2,6c0 <func_808AEE0C+0x34>
     69c:	afa50024 	sw	a1,36(sp)
     6a0:	3c0f0001 	lui	t7,0x1
     6a4:	01e57821 	addu	t7,t7,a1
     6a8:	8def1de4 	lw	t7,7652(t7)
     6ac:	24010007 	li	at,7
     6b0:	01e1001b 	divu	zero,t7,at
     6b4:	0000c010 	mfhi	t8
     6b8:	57000009 	bnezl	t8,6e0 <func_808AEE0C+0x54>
     6bc:	8fbf001c 	lw	ra,28(sp)
     6c0:	8fa50020 	lw	a1,32(sp)
     6c4:	8fa40024 	lw	a0,36(sp)
     6c8:	2406012c 	li	a2,300
     6cc:	240702bc 	li	a3,700
     6d0:	afa00010 	sw	zero,16(sp)
     6d4:	0c000000 	jal	0 <BgSpot06Objects_Init>
     6d8:	24a50008 	addiu	a1,a1,8
     6dc:	8fbf001c 	lw	ra,28(sp)
     6e0:	27bd0020 	addiu	sp,sp,32
     6e4:	03e00008 	jr	ra
     6e8:	00000000 	nop

000006ec <func_808AEE6C>:
     6ec:	27bdffe0 	addiu	sp,sp,-32
     6f0:	3c0f0001 	lui	t7,0x1
     6f4:	afbf001c 	sw	ra,28(sp)
     6f8:	afa40020 	sw	a0,32(sp)
     6fc:	afa50024 	sw	a1,36(sp)
     700:	01e57821 	addu	t7,t7,a1
     704:	8def1de4 	lw	t7,7652(t7)
     708:	24010007 	li	at,7
     70c:	01e1001b 	divu	zero,t7,at
     710:	0000c010 	mfhi	t8
     714:	13000003 	beqz	t8,724 <func_808AEE6C+0x38>
     718:	00000000 	nop
     71c:	50c00014 	beqzl	a2,770 <func_808AEE6C+0x84>
     720:	8fbf001c 	lw	ra,28(sp)
     724:	0c000000 	jal	0 <BgSpot06Objects_Init>
     728:	00000000 	nop
     72c:	3c0141f0 	lui	at,0x41f0
     730:	44812000 	mtc1	at,$f4
     734:	3c010000 	lui	at,0x0
     738:	c4260000 	lwc1	$f6,0(at)
     73c:	3c010000 	lui	at,0x0
     740:	c42a0000 	lwc1	$f10,0(at)
     744:	46060202 	mul.s	$f8,$f0,$f6
     748:	8fa50020 	lw	a1,32(sp)
     74c:	8fa40024 	lw	a0,36(sp)
     750:	24060000 	li	a2,0
     754:	3c074220 	lui	a3,0x4220
     758:	e7a40010 	swc1	$f4,16(sp)
     75c:	24a50024 	addiu	a1,a1,36
     760:	460a4400 	add.s	$f16,$f8,$f10
     764:	0c000000 	jal	0 <BgSpot06Objects_Init>
     768:	e7b00014 	swc1	$f16,20(sp)
     76c:	8fbf001c 	lw	ra,28(sp)
     770:	27bd0020 	addiu	sp,sp,32
     774:	03e00008 	jr	ra
     778:	00000000 	nop

0000077c <func_808AEEFC>:
     77c:	27bdff80 	addiu	sp,sp,-128
     780:	afbf0054 	sw	ra,84(sp)
     784:	afb40050 	sw	s4,80(sp)
     788:	afb3004c 	sw	s3,76(sp)
     78c:	afb20048 	sw	s2,72(sp)
     790:	afb10044 	sw	s1,68(sp)
     794:	afb00040 	sw	s0,64(sp)
     798:	f7ba0038 	sdc1	$f26,56(sp)
     79c:	f7b80030 	sdc1	$f24,48(sp)
     7a0:	f7b60028 	sdc1	$f22,40(sp)
     7a4:	f7b40020 	sdc1	$f20,32(sp)
     7a8:	908e0181 	lbu	t6,385(a0)
     7ac:	00808825 	move	s1,a0
     7b0:	00a09025 	move	s2,a1
     7b4:	31cf0002 	andi	t7,t6,0x2
     7b8:	11e00068 	beqz	t7,95c <func_808AEEFC+0x1e0>
     7bc:	3c010001 	lui	at,0x1
     7c0:	8c990004 	lw	t9,4(a0)
     7c4:	24180082 	li	t8,130
     7c8:	a498016a 	sh	t8,362(a0)
     7cc:	37280010 	ori	t0,t9,0x10
     7d0:	ac880004 	sw	t0,4(a0)
     7d4:	0c000000 	jal	0 <BgSpot06Objects_Init>
     7d8:	84840032 	lh	a0,50(a0)
     7dc:	46000506 	mov.s	$f20,$f0
     7e0:	0c000000 	jal	0 <BgSpot06Objects_Init>
     7e4:	86240032 	lh	a0,50(s1)
     7e8:	3c014040 	lui	at,0x4040
     7ec:	44811000 	mtc1	at,$f2
     7f0:	c6240024 	lwc1	$f4,36(s1)
     7f4:	c62a002c 	lwc1	$f10,44(s1)
     7f8:	46141182 	mul.s	$f6,$f2,$f20
     7fc:	46000586 	mov.s	$f22,$f0
     800:	00008025 	move	s0,zero
     804:	46001402 	mul.s	$f16,$f2,$f0
     808:	46062200 	add.s	$f8,$f4,$f6
     80c:	46105480 	add.s	$f18,$f10,$f16
     810:	e6280024 	swc1	$f8,36(s1)
     814:	e632002c 	swc1	$f18,44(s1)
     818:	02202025 	move	a0,s1
     81c:	02402825 	move	a1,s2
     820:	0c000000 	jal	0 <BgSpot06Objects_Init>
     824:	24060001 	li	a2,1
     828:	26100001 	addiu	s0,s0,1
     82c:	2a010014 	slti	at,s0,20
     830:	5420fffa 	bnezl	at,81c <func_808AEEFC+0xa0>
     834:	02202025 	move	a0,s1
     838:	3c0140a0 	lui	at,0x40a0
     83c:	44810000 	mtc1	at,$f0
     840:	c6240024 	lwc1	$f4,36(s1)
     844:	3c010000 	lui	at,0x0
     848:	46140182 	mul.s	$f6,$f0,$f20
     84c:	c43a0000 	lwc1	$f26,0(at)
     850:	3c010000 	lui	at,0x0
     854:	46160482 	mul.s	$f18,$f0,$f22
     858:	c4380000 	lwc1	$f24,0(at)
     85c:	3c0141a0 	lui	at,0x41a0
     860:	4481a000 	mtc1	at,$f20
     864:	4480b000 	mtc1	zero,$f22
     868:	46062200 	add.s	$f8,$f4,$f6
     86c:	00008025 	move	s0,zero
     870:	24140003 	li	s4,3
     874:	27b30068 	addiu	s3,sp,104
     878:	e7a80068 	swc1	$f8,104(sp)
     87c:	c62a0028 	lwc1	$f10,40(s1)
     880:	e7aa006c 	swc1	$f10,108(sp)
     884:	c630002c 	lwc1	$f16,44(s1)
     888:	46128100 	add.s	$f4,$f16,$f18
     88c:	e7a40070 	swc1	$f4,112(sp)
     890:	0c000000 	jal	0 <BgSpot06Objects_Init>
     894:	00000000 	nop
     898:	46180182 	mul.s	$f6,$f0,$f24
     89c:	4406b000 	mfc1	a2,$f22
     8a0:	4407a000 	mfc1	a3,$f20
     8a4:	02402025 	move	a0,s2
     8a8:	02602825 	move	a1,s3
     8ac:	e7b40010 	swc1	$f20,16(sp)
     8b0:	461a3200 	add.s	$f8,$f6,$f26
     8b4:	0c000000 	jal	0 <BgSpot06Objects_Init>
     8b8:	e7a80014 	swc1	$f8,20(sp)
     8bc:	26100001 	addiu	s0,s0,1
     8c0:	1614fff3 	bne	s0,s4,890 <func_808AEEFC+0x114>
     8c4:	00000000 	nop
     8c8:	24090001 	li	t1,1
     8cc:	240a02bc 	li	t2,700
     8d0:	afaa0014 	sw	t2,20(sp)
     8d4:	afa90010 	sw	t1,16(sp)
     8d8:	02402025 	move	a0,s2
     8dc:	26250024 	addiu	a1,s1,36
     8e0:	00003025 	move	a2,zero
     8e4:	0c000000 	jal	0 <BgSpot06Objects_Init>
     8e8:	00003825 	move	a3,zero
     8ec:	8e2c018c 	lw	t4,396(s1)
     8f0:	240b002d 	li	t3,45
     8f4:	3c0d0000 	lui	t5,0x0
     8f8:	3c070000 	lui	a3,0x0
     8fc:	25ad0000 	addiu	t5,t5,0
     900:	3c0e0000 	lui	t6,0x0
     904:	a58b0036 	sh	t3,54(t4)
     908:	24e70000 	addiu	a3,a3,0
     90c:	ae2d0164 	sw	t5,356(s1)
     910:	25ce0000 	addiu	t6,t6,0
     914:	3c050000 	lui	a1,0x0
     918:	24a50000 	addiu	a1,a1,0
     91c:	afae0014 	sw	t6,20(sp)
     920:	afa70010 	sw	a3,16(sp)
     924:	24044802 	li	a0,18434
     928:	0c000000 	jal	0 <BgSpot06Objects_Init>
     92c:	24060004 	li	a2,4
     930:	02402025 	move	a0,s2
     934:	0c000000 	jal	0 <BgSpot06Objects_Init>
     938:	86250168 	lh	a1,360(s1)
     93c:	02402025 	move	a0,s2
     940:	24051018 	li	a1,4120
     944:	240600aa 	li	a2,170
     948:	02203825 	move	a3,s1
     94c:	0c000000 	jal	0 <BgSpot06Objects_Init>
     950:	afa00010 	sw	zero,16(sp)
     954:	10000007 	b	974 <func_808AEEFC+0x1f8>
     958:	8fbf0054 	lw	ra,84(sp)
     95c:	34211e60 	ori	at,at,0x1e60
     960:	02412821 	addu	a1,s2,at
     964:	02402025 	move	a0,s2
     968:	0c000000 	jal	0 <BgSpot06Objects_Init>
     96c:	26260170 	addiu	a2,s1,368
     970:	8fbf0054 	lw	ra,84(sp)
     974:	d7b40020 	ldc1	$f20,32(sp)
     978:	d7b60028 	ldc1	$f22,40(sp)
     97c:	d7b80030 	ldc1	$f24,48(sp)
     980:	d7ba0038 	ldc1	$f26,56(sp)
     984:	8fb00040 	lw	s0,64(sp)
     988:	8fb10044 	lw	s1,68(sp)
     98c:	8fb20048 	lw	s2,72(sp)
     990:	8fb3004c 	lw	s3,76(sp)
     994:	8fb40050 	lw	s4,80(sp)
     998:	03e00008 	jr	ra
     99c:	27bd0080 	addiu	sp,sp,128

000009a0 <func_808AF120>:
     9a0:	27bdffe0 	addiu	sp,sp,-32
     9a4:	afbf001c 	sw	ra,28(sp)
     9a8:	afb00018 	sw	s0,24(sp)
     9ac:	afa50024 	sw	a1,36(sp)
     9b0:	8482016a 	lh	v0,362(a0)
     9b4:	00808025 	move	s0,a0
     9b8:	10400002 	beqz	v0,9c4 <func_808AF120+0x24>
     9bc:	244effff 	addiu	t6,v0,-1
     9c0:	a48e016a 	sh	t6,362(a0)
     9c4:	0c000000 	jal	0 <BgSpot06Objects_Init>
     9c8:	86040032 	lh	a0,50(s0)
     9cc:	3c010000 	lui	at,0x0
     9d0:	c4260000 	lwc1	$f6,0(at)
     9d4:	c6040024 	lwc1	$f4,36(s0)
     9d8:	86040032 	lh	a0,50(s0)
     9dc:	46003202 	mul.s	$f8,$f6,$f0
     9e0:	46082280 	add.s	$f10,$f4,$f8
     9e4:	0c000000 	jal	0 <BgSpot06Objects_Init>
     9e8:	e60a0024 	swc1	$f10,36(s0)
     9ec:	3c010000 	lui	at,0x0
     9f0:	c4320000 	lwc1	$f18,0(at)
     9f4:	c610002c 	lwc1	$f16,44(s0)
     9f8:	02002025 	move	a0,s0
     9fc:	46009182 	mul.s	$f6,$f18,$f0
     a00:	00003025 	move	a2,zero
     a04:	46068100 	add.s	$f4,$f16,$f6
     a08:	e604002c 	swc1	$f4,44(s0)
     a0c:	0c000000 	jal	0 <BgSpot06Objects_Init>
     a10:	8fa50024 	lw	a1,36(sp)
     a14:	860f016a 	lh	t7,362(s0)
     a18:	3c080000 	lui	t0,0x0
     a1c:	3c013f00 	lui	at,0x3f00
     a20:	15e00008 	bnez	t7,a44 <func_808AF120+0xa4>
     a24:	25080000 	addiu	t0,t0,0
     a28:	44814000 	mtc1	at,$f8
     a2c:	8e180004 	lw	t8,4(s0)
     a30:	2401dfff 	li	at,-8193
     a34:	ae080164 	sw	t0,356(s0)
     a38:	0301c824 	and	t9,t8,at
     a3c:	ae190004 	sw	t9,4(s0)
     a40:	e6080060 	swc1	$f8,96(s0)
     a44:	8fbf001c 	lw	ra,28(sp)
     a48:	8fb00018 	lw	s0,24(sp)
     a4c:	27bd0020 	addiu	sp,sp,32
     a50:	03e00008 	jr	ra
     a54:	00000000 	nop

00000a58 <func_808AF1D8>:
     a58:	27bdffd0 	addiu	sp,sp,-48
     a5c:	afbf0024 	sw	ra,36(sp)
     a60:	afb00020 	sw	s0,32(sp)
     a64:	afa50034 	sw	a1,52(sp)
     a68:	44800000 	mtc1	zero,$f0
     a6c:	c4820060 	lwc1	$f2,96(a0)
     a70:	c4840028 	lwc1	$f4,40(a0)
     a74:	00808025 	move	s0,a0
     a78:	4600103e 	c.le.s	$f2,$f0
     a7c:	3c010000 	lui	at,0x0
     a80:	46022180 	add.s	$f6,$f4,$f2
     a84:	45000045 	bc1f	b9c <func_808AF1D8+0x144>
     a88:	e4860028 	swc1	$f6,40(a0)
     a8c:	0c000000 	jal	0 <BgSpot06Objects_Init>
     a90:	848400b4 	lh	a0,180(a0)
     a94:	3c010000 	lui	at,0x0
     a98:	c4280000 	lwc1	$f8,0(at)
     a9c:	46080282 	mul.s	$f10,$f0,$f8
     aa0:	e7aa002c 	swc1	$f10,44(sp)
     aa4:	0c000000 	jal	0 <BgSpot06Objects_Init>
     aa8:	860400b6 	lh	a0,182(s0)
     aac:	c7b2002c 	lwc1	$f18,44(sp)
     ab0:	c6100024 	lwc1	$f16,36(s0)
     ab4:	860400b6 	lh	a0,182(s0)
     ab8:	46009102 	mul.s	$f4,$f18,$f0
     abc:	46048180 	add.s	$f6,$f16,$f4
     ac0:	0c000000 	jal	0 <BgSpot06Objects_Init>
     ac4:	e6060024 	swc1	$f6,36(s0)
     ac8:	c7aa002c 	lwc1	$f10,44(sp)
     acc:	c608002c 	lwc1	$f8,44(s0)
     ad0:	3c010000 	lui	at,0x0
     ad4:	46005482 	mul.s	$f18,$f10,$f0
     ad8:	c6040028 	lwc1	$f4,40(s0)
     adc:	02002025 	move	a0,s0
     ae0:	00003025 	move	a2,zero
     ae4:	46124400 	add.s	$f16,$f8,$f18
     ae8:	e610002c 	swc1	$f16,44(s0)
     aec:	c4260000 	lwc1	$f6,0(at)
     af0:	46062281 	sub.s	$f10,$f4,$f6
     af4:	e60a0028 	swc1	$f10,40(s0)
     af8:	0c000000 	jal	0 <BgSpot06Objects_Init>
     afc:	8fa50034 	lw	a1,52(sp)
     b00:	260400b4 	addiu	a0,s0,180
     b04:	00002825 	move	a1,zero
     b08:	0c000000 	jal	0 <BgSpot06Objects_Init>
     b0c:	24060260 	li	a2,608
     b10:	5040006b 	beqzl	v0,cc0 <func_808AF1D8+0x268>
     b14:	8fbf0024 	lw	ra,36(sp)
     b18:	0c000000 	jal	0 <BgSpot06Objects_Init>
     b1c:	860400b6 	lh	a0,182(s0)
     b20:	3c014180 	lui	at,0x4180
     b24:	44819000 	mtc1	at,$f18
     b28:	c6080024 	lwc1	$f8,36(s0)
     b2c:	860400b6 	lh	a0,182(s0)
     b30:	46120402 	mul.s	$f16,$f0,$f18
     b34:	46104101 	sub.s	$f4,$f8,$f16
     b38:	0c000000 	jal	0 <BgSpot06Objects_Init>
     b3c:	e6040008 	swc1	$f4,8(s0)
     b40:	3c014180 	lui	at,0x4180
     b44:	44815000 	mtc1	at,$f10
     b48:	c606002c 	lwc1	$f6,44(s0)
     b4c:	3c010000 	lui	at,0x0
     b50:	460a0482 	mul.s	$f18,$f0,$f10
     b54:	8e0f0004 	lw	t7,4(s0)
     b58:	8e02018c 	lw	v0,396(s0)
     b5c:	240e0020 	li	t6,32
     b60:	3c090000 	lui	t1,0x0
     b64:	25290000 	addiu	t1,t1,0
     b68:	46123201 	sub.s	$f8,$f6,$f18
     b6c:	e6080010 	swc1	$f8,16(s0)
     b70:	c4300000 	lwc1	$f16,0(at)
     b74:	2401ffef 	li	at,-17
     b78:	01e1c024 	and	t8,t7,at
     b7c:	a60e016a 	sh	t6,362(s0)
     b80:	ae180004 	sw	t8,4(s0)
     b84:	e6100028 	swc1	$f16,40(s0)
     b88:	8459002e 	lh	t9,46(v0)
     b8c:	00194040 	sll	t0,t9,0x1
     b90:	a4480036 	sh	t0,54(v0)
     b94:	10000049 	b	cbc <func_808AF1D8+0x264>
     b98:	ae090164 	sw	t1,356(s0)
     b9c:	c6040028 	lwc1	$f4,40(s0)
     ba0:	c42a0000 	lwc1	$f10,0(at)
     ba4:	02002025 	move	a0,s0
     ba8:	24060001 	li	a2,1
     bac:	4604503e 	c.le.s	$f10,$f4
     bb0:	00000000 	nop
     bb4:	45020010 	bc1fl	bf8 <func_808AF1D8+0x1a0>
     bb8:	860c00b4 	lh	t4,180(s0)
     bbc:	e6000060 	swc1	$f0,96(s0)
     bc0:	0c000000 	jal	0 <BgSpot06Objects_Init>
     bc4:	8fa50034 	lw	a1,52(sp)
     bc8:	240a0001 	li	t2,1
     bcc:	240b02bc 	li	t3,700
     bd0:	afab0014 	sw	t3,20(sp)
     bd4:	afaa0010 	sw	t2,16(sp)
     bd8:	8fa40034 	lw	a0,52(sp)
     bdc:	26050008 	addiu	a1,s0,8
     be0:	00003025 	move	a2,zero
     be4:	0c000000 	jal	0 <BgSpot06Objects_Init>
     be8:	00003825 	move	a3,zero
     bec:	10000034 	b	cc0 <func_808AF1D8+0x268>
     bf0:	8fbf0024 	lw	ra,36(sp)
     bf4:	860c00b4 	lh	t4,180(s0)
     bf8:	2401c000 	li	at,-16384
     bfc:	02002025 	move	a0,s0
     c00:	1581001f 	bne	t4,at,c80 <func_808AF1D8+0x228>
     c04:	8fa50034 	lw	a1,52(sp)
     c08:	3c010000 	lui	at,0x0
     c0c:	c4260000 	lwc1	$f6,0(at)
     c10:	3c013f80 	lui	at,0x3f80
     c14:	44816000 	mtc1	at,$f12
     c18:	46061480 	add.s	$f18,$f2,$f6
     c1c:	0c000000 	jal	0 <BgSpot06Objects_Init>
     c20:	e6120060 	swc1	$f18,96(s0)
     c24:	c6080008 	lwc1	$f8,8(s0)
     c28:	3c013f80 	lui	at,0x3f80
     c2c:	44816000 	mtc1	at,$f12
     c30:	46080400 	add.s	$f16,$f0,$f8
     c34:	0c000000 	jal	0 <BgSpot06Objects_Init>
     c38:	e6100024 	swc1	$f16,36(s0)
     c3c:	3c014120 	lui	at,0x4120
     c40:	44816000 	mtc1	at,$f12
     c44:	c6020060 	lwc1	$f2,96(s0)
     c48:	c6040010 	lwc1	$f4,16(s0)
     c4c:	02002025 	move	a0,s0
     c50:	4602603c 	c.lt.s	$f12,$f2
     c54:	00003025 	move	a2,zero
     c58:	46040280 	add.s	$f10,$f0,$f4
     c5c:	45000003 	bc1f	c6c <func_808AF1D8+0x214>
     c60:	e60a002c 	swc1	$f10,44(s0)
     c64:	10000002 	b	c70 <func_808AF1D8+0x218>
     c68:	e60c0060 	swc1	$f12,96(s0)
     c6c:	e6020060 	swc1	$f2,96(s0)
     c70:	0c000000 	jal	0 <BgSpot06Objects_Init>
     c74:	8fa50034 	lw	a1,52(sp)
     c78:	10000011 	b	cc0 <func_808AF1D8+0x268>
     c7c:	8fbf0024 	lw	ra,36(sp)
     c80:	0c000000 	jal	0 <BgSpot06Objects_Init>
     c84:	00003025 	move	a2,zero
     c88:	260400b4 	addiu	a0,s0,180
     c8c:	2405c000 	li	a1,-16384
     c90:	0c000000 	jal	0 <BgSpot06Objects_Init>
     c94:	24060030 	li	a2,48
     c98:	50400009 	beqzl	v0,cc0 <func_808AF1D8+0x268>
     c9c:	8fbf0024 	lw	ra,36(sp)
     ca0:	c6060024 	lwc1	$f6,36(s0)
     ca4:	3c010000 	lui	at,0x0
     ca8:	c608002c 	lwc1	$f8,44(s0)
     cac:	e6060008 	swc1	$f6,8(s0)
     cb0:	c4320000 	lwc1	$f18,0(at)
     cb4:	e6080010 	swc1	$f8,16(s0)
     cb8:	e612000c 	swc1	$f18,12(s0)
     cbc:	8fbf0024 	lw	ra,36(sp)
     cc0:	8fb00020 	lw	s0,32(sp)
     cc4:	27bd0030 	addiu	sp,sp,48
     cc8:	03e00008 	jr	ra
     ccc:	00000000 	nop

00000cd0 <func_808AF450>:
     cd0:	27bdffe8 	addiu	sp,sp,-24
     cd4:	afbf0014 	sw	ra,20(sp)
     cd8:	afa40018 	sw	a0,24(sp)
     cdc:	0c000000 	jal	0 <BgSpot06Objects_Init>
     ce0:	00003025 	move	a2,zero
     ce4:	8fa40018 	lw	a0,24(sp)
     ce8:	8482016a 	lh	v0,362(a0)
     cec:	10400003 	beqz	v0,cfc <func_808AF450+0x2c>
     cf0:	244effff 	addiu	t6,v0,-1
     cf4:	a48e016a 	sh	t6,362(a0)
     cf8:	8482016a 	lh	v0,362(a0)
     cfc:	44822000 	mtc1	v0,$f4
     d00:	3c010000 	lui	at,0x0
     d04:	c4280000 	lwc1	$f8,0(at)
     d08:	468021a0 	cvt.s.w	$f6,$f4
     d0c:	afa40018 	sw	a0,24(sp)
     d10:	46083302 	mul.s	$f12,$f6,$f8
     d14:	0c000000 	jal	0 <BgSpot06Objects_Init>
     d18:	00000000 	nop
     d1c:	8fa40018 	lw	a0,24(sp)
     d20:	46000280 	add.s	$f10,$f0,$f0
     d24:	24180020 	li	t8,32
     d28:	c490000c 	lwc1	$f16,12(a0)
     d2c:	848f016a 	lh	t7,362(a0)
     d30:	46105480 	add.s	$f18,$f10,$f16
     d34:	15e00002 	bnez	t7,d40 <func_808AF450+0x70>
     d38:	e4920028 	swc1	$f18,40(a0)
     d3c:	a498016a 	sh	t8,362(a0)
     d40:	8fbf0014 	lw	ra,20(sp)
     d44:	27bd0018 	addiu	sp,sp,24
     d48:	03e00008 	jr	ra
     d4c:	00000000 	nop

00000d50 <BgSpot06Objects_Update>:
     d50:	27bdffe8 	addiu	sp,sp,-24
     d54:	afbf0014 	sw	ra,20(sp)
     d58:	afa5001c 	sw	a1,28(sp)
     d5c:	afa40018 	sw	a0,24(sp)
     d60:	8c990164 	lw	t9,356(a0)
     d64:	0320f809 	jalr	t9
     d68:	00000000 	nop
     d6c:	8fa70018 	lw	a3,24(sp)
     d70:	24010001 	li	at,1
     d74:	8fa4001c 	lw	a0,28(sp)
     d78:	84ee001c 	lh	t6,28(a3)
     d7c:	24e60170 	addiu	a2,a3,368
     d80:	15c10004 	bne	t6,at,d94 <BgSpot06Objects_Update+0x44>
     d84:	3c010001 	lui	at,0x1
     d88:	34211e60 	ori	at,at,0x1e60
     d8c:	0c000000 	jal	0 <BgSpot06Objects_Init>
     d90:	00812821 	addu	a1,a0,at
     d94:	8fbf0014 	lw	ra,20(sp)
     d98:	27bd0018 	addiu	sp,sp,24
     d9c:	03e00008 	jr	ra
     da0:	00000000 	nop

00000da4 <func_808AF524>:
     da4:	27bdff78 	addiu	sp,sp,-136
     da8:	afb20040 	sw	s2,64(sp)
     dac:	00a09025 	move	s2,a1
     db0:	afbf0044 	sw	ra,68(sp)
     db4:	afb1003c 	sw	s1,60(sp)
     db8:	afb00038 	sw	s0,56(sp)
     dbc:	afa40088 	sw	a0,136(sp)
     dc0:	8ca50000 	lw	a1,0(a1)
     dc4:	3c060000 	lui	a2,0x0
     dc8:	24c60000 	addiu	a2,a2,0
     dcc:	27a4006c 	addiu	a0,sp,108
     dd0:	2407034c 	li	a3,844
     dd4:	0c000000 	jal	0 <BgSpot06Objects_Init>
     dd8:	00a08825 	move	s1,a1
     ddc:	0c000000 	jal	0 <BgSpot06Objects_Init>
     de0:	8e440000 	lw	a0,0(s2)
     de4:	8e2202d0 	lw	v0,720(s1)
     de8:	3c0fda38 	lui	t7,0xda38
     dec:	35ef0003 	ori	t7,t7,0x3
     df0:	244e0008 	addiu	t6,v0,8
     df4:	ae2e02d0 	sw	t6,720(s1)
     df8:	3c050000 	lui	a1,0x0
     dfc:	ac4f0000 	sw	t7,0(v0)
     e00:	8e440000 	lw	a0,0(s2)
     e04:	24a50000 	addiu	a1,a1,0
     e08:	24060352 	li	a2,850
     e0c:	0c000000 	jal	0 <BgSpot06Objects_Init>
     e10:	00408025 	move	s0,v0
     e14:	ae020004 	sw	v0,4(s0)
     e18:	8e2202d0 	lw	v0,720(s1)
     e1c:	8e50009c 	lw	s0,156(s2)
     e20:	3c19db06 	lui	t9,0xdb06
     e24:	24580008 	addiu	t8,v0,8
     e28:	ae3802d0 	sw	t8,720(s1)
     e2c:	37390020 	ori	t9,t9,0x20
     e30:	ac590000 	sw	t9,0(v0)
     e34:	8e440000 	lw	a0,0(s2)
     e38:	24080020 	li	t0,32
     e3c:	24090020 	li	t1,32
     e40:	240a0001 	li	t2,1
     e44:	240b0020 	li	t3,32
     e48:	240c0020 	li	t4,32
     e4c:	00103023 	negu	a2,s0
     e50:	afa60050 	sw	a2,80(sp)
     e54:	afac0028 	sw	t4,40(sp)
     e58:	afab0024 	sw	t3,36(sp)
     e5c:	afaa0018 	sw	t2,24(sp)
     e60:	afa90014 	sw	t1,20(sp)
     e64:	afa80010 	sw	t0,16(sp)
     e68:	00002825 	move	a1,zero
     e6c:	afa20064 	sw	v0,100(sp)
     e70:	afb00020 	sw	s0,32(sp)
     e74:	afb0001c 	sw	s0,28(sp)
     e78:	0c000000 	jal	0 <BgSpot06Objects_Init>
     e7c:	02003825 	move	a3,s0
     e80:	8fa30064 	lw	v1,100(sp)
     e84:	8fa60050 	lw	a2,80(sp)
     e88:	3c0edb06 	lui	t6,0xdb06
     e8c:	ac620004 	sw	v0,4(v1)
     e90:	8e2202d0 	lw	v0,720(s1)
     e94:	35ce0024 	ori	t6,t6,0x24
     e98:	00103880 	sll	a3,s0,0x2
     e9c:	244d0008 	addiu	t5,v0,8
     ea0:	ae2d02d0 	sw	t5,720(s1)
     ea4:	ac4e0000 	sw	t6,0(v0)
     ea8:	8e440000 	lw	a0,0(s2)
     eac:	00f03823 	subu	a3,a3,s0
     eb0:	00073840 	sll	a3,a3,0x1
     eb4:	240f0020 	li	t7,32
     eb8:	24180020 	li	t8,32
     ebc:	24190001 	li	t9,1
     ec0:	24080020 	li	t0,32
     ec4:	24090020 	li	t1,32
     ec8:	afa90028 	sw	t1,40(sp)
     ecc:	afa80024 	sw	t0,36(sp)
     ed0:	afb90018 	sw	t9,24(sp)
     ed4:	afb80014 	sw	t8,20(sp)
     ed8:	afaf0010 	sw	t7,16(sp)
     edc:	afa70020 	sw	a3,32(sp)
     ee0:	afb0001c 	sw	s0,28(sp)
     ee4:	00002825 	move	a1,zero
     ee8:	0c000000 	jal	0 <BgSpot06Objects_Init>
     eec:	afa20060 	sw	v0,96(sp)
     ef0:	8fa30060 	lw	v1,96(sp)
     ef4:	3c0bfb00 	lui	t3,0xfb00
     ef8:	240cff80 	li	t4,-128
     efc:	ac620004 	sw	v0,4(v1)
     f00:	8e2202d0 	lw	v0,720(s1)
     f04:	3c01c42a 	lui	at,0xc42a
     f08:	44813000 	mtc1	at,$f6
     f0c:	244a0008 	addiu	t2,v0,8
     f10:	ae2a02d0 	sw	t2,720(s1)
     f14:	ac4c0004 	sw	t4,4(v0)
     f18:	ac4b0000 	sw	t3,0(v0)
     f1c:	8fad0088 	lw	t5,136(sp)
     f20:	3c060000 	lui	a2,0x0
     f24:	3c0e0000 	lui	t6,0x0
     f28:	c5a4016c 	lwc1	$f4,364(t5)
     f2c:	3c09de00 	lui	t1,0xde00
     f30:	24c60000 	addiu	a2,a2,0
     f34:	4606203c 	c.lt.s	$f4,$f6
     f38:	27a4006c 	addiu	a0,sp,108
     f3c:	2407036f 	li	a3,879
     f40:	4502000f 	bc1fl	f80 <func_808AF524+0x1dc>
     f44:	8e2202d0 	lw	v0,720(s1)
     f48:	8dce1360 	lw	t6,4960(t6)
     f4c:	3c18de00 	lui	t8,0xde00
     f50:	29c10004 	slti	at,t6,4
     f54:	5020000a 	beqzl	at,f80 <func_808AF524+0x1dc>
     f58:	8e2202d0 	lw	v0,720(s1)
     f5c:	8e2202d0 	lw	v0,720(s1)
     f60:	3c190600 	lui	t9,0x600
     f64:	27390120 	addiu	t9,t9,288
     f68:	244f0008 	addiu	t7,v0,8
     f6c:	ae2f02d0 	sw	t7,720(s1)
     f70:	ac590004 	sw	t9,4(v0)
     f74:	10000008 	b	f98 <func_808AF524+0x1f4>
     f78:	ac580000 	sw	t8,0(v0)
     f7c:	8e2202d0 	lw	v0,720(s1)
     f80:	3c0a0600 	lui	t2,0x600
     f84:	254a0470 	addiu	t2,t2,1136
     f88:	24480008 	addiu	t0,v0,8
     f8c:	ae2802d0 	sw	t0,720(s1)
     f90:	ac4a0004 	sw	t2,4(v0)
     f94:	ac490000 	sw	t1,0(v0)
     f98:	0c000000 	jal	0 <BgSpot06Objects_Init>
     f9c:	8e450000 	lw	a1,0(s2)
     fa0:	8fbf0044 	lw	ra,68(sp)
     fa4:	8fb00038 	lw	s0,56(sp)
     fa8:	8fb1003c 	lw	s1,60(sp)
     fac:	8fb20040 	lw	s2,64(sp)
     fb0:	03e00008 	jr	ra
     fb4:	27bd0088 	addiu	sp,sp,136

00000fb8 <BgSpot06Objects_Draw>:
     fb8:	27bdffe8 	addiu	sp,sp,-24
     fbc:	afbf0014 	sw	ra,20(sp)
     fc0:	8482001c 	lh	v0,28(a0)
     fc4:	00803025 	move	a2,a0
     fc8:	00a03825 	move	a3,a1
     fcc:	1040000c 	beqz	v0,1000 <BgSpot06Objects_Draw+0x48>
     fd0:	00e02025 	move	a0,a3
     fd4:	24010001 	li	at,1
     fd8:	1041000e 	beq	v0,at,1014 <BgSpot06Objects_Draw+0x5c>
     fdc:	00e02025 	move	a0,a3
     fe0:	24010002 	li	at,2
     fe4:	1041001a 	beq	v0,at,1050 <BgSpot06Objects_Draw+0x98>
     fe8:	00c02025 	move	a0,a2
     fec:	24010003 	li	at,3
     ff0:	1041001b 	beq	v0,at,1060 <BgSpot06Objects_Draw+0xa8>
     ff4:	00e02025 	move	a0,a3
     ff8:	1000001d 	b	1070 <BgSpot06Objects_Draw+0xb8>
     ffc:	8fbf0014 	lw	ra,20(sp)
    1000:	3c050600 	lui	a1,0x600
    1004:	0c000000 	jal	0 <BgSpot06Objects_Init>
    1008:	24a50e10 	addiu	a1,a1,3600
    100c:	10000018 	b	1070 <BgSpot06Objects_Draw+0xb8>
    1010:	8fbf0014 	lw	ra,20(sp)
    1014:	3c050600 	lui	a1,0x600
    1018:	24a52490 	addiu	a1,a1,9360
    101c:	0c000000 	jal	0 <BgSpot06Objects_Init>
    1020:	afa60018 	sw	a2,24(sp)
    1024:	8fa60018 	lw	a2,24(sp)
    1028:	3c0e0000 	lui	t6,0x0
    102c:	25ce0000 	addiu	t6,t6,0
    1030:	8ccf0164 	lw	t7,356(a2)
    1034:	24040001 	li	a0,1
    1038:	55cf000d 	bnel	t6,t7,1070 <BgSpot06Objects_Draw+0xb8>
    103c:	8fbf0014 	lw	ra,20(sp)
    1040:	0c000000 	jal	0 <BgSpot06Objects_Init>
    1044:	24c50170 	addiu	a1,a2,368
    1048:	10000009 	b	1070 <BgSpot06Objects_Draw+0xb8>
    104c:	8fbf0014 	lw	ra,20(sp)
    1050:	0c000000 	jal	0 <BgSpot06Objects_Init>
    1054:	00e02825 	move	a1,a3
    1058:	10000005 	b	1070 <BgSpot06Objects_Draw+0xb8>
    105c:	8fbf0014 	lw	ra,20(sp)
    1060:	3c050600 	lui	a1,0x600
    1064:	0c000000 	jal	0 <BgSpot06Objects_Init>
    1068:	24a51160 	addiu	a1,a1,4448
    106c:	8fbf0014 	lw	ra,20(sp)
    1070:	27bd0018 	addiu	sp,sp,24
    1074:	03e00008 	jr	ra
    1078:	00000000 	nop

0000107c <func_808AF7FC>:
    107c:	3c0e0000 	lui	t6,0x0
    1080:	95ce0ee0 	lhu	t6,3808(t6)
    1084:	3c180000 	lui	t8,0x0
    1088:	afa50004 	sw	a1,4(sp)
    108c:	31cf0200 	andi	t7,t6,0x200
    1090:	11e00002 	beqz	t7,109c <func_808AF7FC+0x20>
    1094:	27180000 	addiu	t8,t8,0
    1098:	ac980164 	sw	t8,356(a0)
    109c:	03e00008 	jr	ra
    10a0:	00000000 	nop

000010a4 <func_808AF824>:
    10a4:	27bdffd8 	addiu	sp,sp,-40
    10a8:	afbf0024 	sw	ra,36(sp)
    10ac:	afb00020 	sw	s0,32(sp)
    10b0:	afa5002c 	sw	a1,44(sp)
    10b4:	3c010000 	lui	at,0x0
    10b8:	c4220000 	lwc1	$f2,0(at)
    10bc:	c480016c 	lwc1	$f0,364(a0)
    10c0:	3c010000 	lui	at,0x0
    10c4:	3c0e0000 	lui	t6,0x0
    10c8:	46020100 	add.s	$f4,$f0,$f2
    10cc:	3c063dcc 	lui	a2,0x3dcc
    10d0:	00808025 	move	s0,a0
    10d4:	25ce0000 	addiu	t6,t6,0
    10d8:	e4840028 	swc1	$f4,40(a0)
    10dc:	c4260000 	lwc1	$f6,0(at)
    10e0:	3c013f80 	lui	at,0x3f80
    10e4:	34c6cccd 	ori	a2,a2,0xcccd
    10e8:	4600303e 	c.le.s	$f6,$f0
    10ec:	00000000 	nop
    10f0:	45020005 	bc1fl	1108 <func_808AF824+0x64>
    10f4:	44810000 	mtc1	at,$f0
    10f8:	e4820028 	swc1	$f2,40(a0)
    10fc:	1000001c 	b	1170 <func_808AF824+0xcc>
    1100:	ac8e0164 	sw	t6,356(a0)
    1104:	44810000 	mtc1	at,$f0
    1108:	3c010000 	lui	at,0x0
    110c:	c4280000 	lwc1	$f8,0(at)
    1110:	44050000 	mfc1	a1,$f0
    1114:	44070000 	mfc1	a3,$f0
    1118:	2604016c 	addiu	a0,s0,364
    111c:	0c000000 	jal	0 <BgSpot06Objects_Init>
    1120:	e7a80010 	swc1	$f8,16(sp)
    1124:	8fa2002c 	lw	v0,44(sp)
    1128:	240ffb57 	li	t7,-1193
    112c:	8c5807c0 	lw	t8,1984(v0)
    1130:	8f190028 	lw	t9,40(t8)
    1134:	a72f0012 	sh	t7,18(t9)
    1138:	c60a0028 	lwc1	$f10,40(s0)
    113c:	8c4a07c0 	lw	t2,1984(v0)
    1140:	4600540d 	trunc.w.s	$f16,$f10
    1144:	8d4b0028 	lw	t3,40(t2)
    1148:	44098000 	mfc1	t1,$f16
    114c:	00000000 	nop
    1150:	a5690022 	sh	t1,34(t3)
    1154:	c6120028 	lwc1	$f18,40(s0)
    1158:	8c4e07c0 	lw	t6,1984(v0)
    115c:	4600910d 	trunc.w.s	$f4,$f18
    1160:	8dd80028 	lw	t8,40(t6)
    1164:	440d2000 	mfc1	t5,$f4
    1168:	00000000 	nop
    116c:	a70d0032 	sh	t5,50(t8)
    1170:	02002025 	move	a0,s0
    1174:	0c000000 	jal	0 <BgSpot06Objects_Init>
    1178:	2405205e 	li	a1,8286
    117c:	8fbf0024 	lw	ra,36(sp)
    1180:	8fb00020 	lw	s0,32(sp)
    1184:	27bd0028 	addiu	sp,sp,40
    1188:	03e00008 	jr	ra
    118c:	00000000 	nop
