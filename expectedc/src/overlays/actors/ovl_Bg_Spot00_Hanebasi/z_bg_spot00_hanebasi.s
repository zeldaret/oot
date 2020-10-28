
build/src/overlays/actors/ovl_Bg_Spot00_Hanebasi/z_bg_spot00_hanebasi.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <BgSpot00Hanebasi_Init>:
       0:	27bdff90 	addiu	sp,sp,-112
       4:	afa50074 	sw	a1,116(sp)
       8:	afbf003c 	sw	ra,60(sp)
       c:	afb00038 	sw	s0,56(sp)
      10:	3c050000 	lui	a1,0x0
      14:	00808025 	move	s0,a0
      18:	afa00058 	sw	zero,88(sp)
      1c:	0c000000 	jal	0 <BgSpot00Hanebasi_Init>
      20:	24a50000 	addiu	a1,a1,0
      24:	02002025 	move	a0,s0
      28:	0c000000 	jal	0 <BgSpot00Hanebasi_Init>
      2c:	24050001 	li	a1,1
      30:	860e001c 	lh	t6,28(s0)
      34:	2401ffff 	li	at,-1
      38:	3c040600 	lui	a0,0x600
      3c:	15c10007 	bne	t6,at,5c <BgSpot00Hanebasi_Init+0x5c>
      40:	24840280 	addiu	a0,a0,640
      44:	3c040600 	lui	a0,0x600
      48:	248405e0 	addiu	a0,a0,1504
      4c:	0c000000 	jal	0 <BgSpot00Hanebasi_Init>
      50:	27a50058 	addiu	a1,sp,88
      54:	10000004 	b	68 <BgSpot00Hanebasi_Init+0x68>
      58:	8fa40074 	lw	a0,116(sp)
      5c:	0c000000 	jal	0 <BgSpot00Hanebasi_Init>
      60:	27a50058 	addiu	a1,sp,88
      64:	8fa40074 	lw	a0,116(sp)
      68:	02003025 	move	a2,s0
      6c:	8fa70058 	lw	a3,88(sp)
      70:	0c000000 	jal	0 <BgSpot00Hanebasi_Init>
      74:	24850810 	addiu	a1,a0,2064
      78:	8603001c 	lh	v1,28(s0)
      7c:	2401ffff 	li	at,-1
      80:	ae02014c 	sw	v0,332(s0)
      84:	14610091 	bne	v1,at,2cc <BgSpot00Hanebasi_Init+0x2cc>
      88:	00000000 	nop
      8c:	3c030000 	lui	v1,0x0
      90:	24630000 	addiu	v1,v1,0
      94:	8c640004 	lw	a0,4(v1)
      98:	5480000a 	bnezl	a0,c4 <BgSpot00Hanebasi_Init+0xc4>
      9c:	8c621360 	lw	v0,4960(v1)
      a0:	8c6f1360 	lw	t7,4960(v1)
      a4:	29e10004 	slti	at,t7,4
      a8:	50200006 	beqzl	at,c4 <BgSpot00Hanebasi_Init+0xc4>
      ac:	8c621360 	lw	v0,4960(v1)
      b0:	0c000000 	jal	0 <BgSpot00Hanebasi_Init>
      b4:	02002025 	move	a0,s0
      b8:	100000d0 	b	3fc <BgSpot00Hanebasi_Init+0x3fc>
      bc:	8fbf003c 	lw	ra,60(sp)
      c0:	8c621360 	lw	v0,4960(v1)
      c4:	24050006 	li	a1,6
      c8:	10a2000d 	beq	a1,v0,100 <BgSpot00Hanebasi_Init+0x100>
      cc:	24010004 	li	at,4
      d0:	10410009 	beq	v0,at,f8 <BgSpot00Hanebasi_Init+0xf8>
      d4:	2419c000 	li	t9,-16384
      d8:	24010005 	li	at,5
      dc:	10410006 	beq	v0,at,f8 <BgSpot00Hanebasi_Init+0xf8>
      e0:	00000000 	nop
      e4:	50800007 	beqzl	a0,104 <BgSpot00Hanebasi_Init+0x104>
      e8:	a60000b4 	sh	zero,180(s0)
      ec:	8c780010 	lw	t8,16(v1)
      f0:	53000004 	beqzl	t8,104 <BgSpot00Hanebasi_Init+0x104>
      f4:	a60000b4 	sh	zero,180(s0)
      f8:	10000002 	b	104 <BgSpot00Hanebasi_Init+0x104>
      fc:	a61900b4 	sh	t9,180(s0)
     100:	a60000b4 	sh	zero,180(s0)
     104:	8c681360 	lw	t0,4960(v1)
     108:	10a80015 	beq	a1,t0,160 <BgSpot00Hanebasi_Init+0x160>
     10c:	3c040000 	lui	a0,0x0
     110:	24840000 	addiu	a0,a0,0
     114:	8c890048 	lw	t1,72(a0)
     118:	8c6200a4 	lw	v0,164(v1)
     11c:	01225024 	and	t2,t1,v0
     120:	1140000f 	beqz	t2,160 <BgSpot00Hanebasi_Init+0x160>
     124:	00000000 	nop
     128:	8c8b004c 	lw	t3,76(a0)
     12c:	01626024 	and	t4,t3,v0
     130:	1180000b 	beqz	t4,160 <BgSpot00Hanebasi_Init+0x160>
     134:	00000000 	nop
     138:	8c8d0050 	lw	t5,80(a0)
     13c:	01a27024 	and	t6,t5,v0
     140:	11c00007 	beqz	t6,160 <BgSpot00Hanebasi_Init+0x160>
     144:	00000000 	nop
     148:	946f0ee4 	lhu	t7,3812(v1)
     14c:	2419c000 	li	t9,-16384
     150:	31f80001 	andi	t8,t7,0x1
     154:	17000002 	bnez	t8,160 <BgSpot00Hanebasi_Init+0x160>
     158:	00000000 	nop
     15c:	a61900b4 	sh	t9,180(s0)
     160:	0c000000 	jal	0 <BgSpot00Hanebasi_Init>
     164:	860400b4 	lh	a0,180(s0)
     168:	e7a00054 	swc1	$f0,84(sp)
     16c:	0c000000 	jal	0 <BgSpot00Hanebasi_Init>
     170:	860400b4 	lh	a0,180(s0)
     174:	3c014120 	lui	at,0x4120
     178:	44812000 	mtc1	at,$f4
     17c:	c7a20054 	lwc1	$f2,84(sp)
     180:	3c0143c8 	lui	at,0x43c8
     184:	44814000 	mtc1	at,$f8
     188:	46022182 	mul.s	$f6,$f4,$f2
     18c:	00000000 	nop
     190:	46080282 	mul.s	$f10,$f0,$f8
     194:	460a3401 	sub.s	$f16,$f6,$f10
     198:	e7b00060 	swc1	$f16,96(sp)
     19c:	0c000000 	jal	0 <BgSpot00Hanebasi_Init>
     1a0:	860400b4 	lh	a0,180(s0)
     1a4:	e7a00054 	swc1	$f0,84(sp)
     1a8:	0c000000 	jal	0 <BgSpot00Hanebasi_Init>
     1ac:	860400b4 	lh	a0,180(s0)
     1b0:	3c014120 	lui	at,0x4120
     1b4:	44819000 	mtc1	at,$f18
     1b8:	c7a20054 	lwc1	$f2,84(sp)
     1bc:	3c0143c8 	lui	at,0x43c8
     1c0:	44814000 	mtc1	at,$f8
     1c4:	46029102 	mul.s	$f4,$f18,$f2
     1c8:	00000000 	nop
     1cc:	46080182 	mul.s	$f6,$f0,$f8
     1d0:	46062281 	sub.s	$f10,$f4,$f6
     1d4:	e7aa0064 	swc1	$f10,100(sp)
     1d8:	0c000000 	jal	0 <BgSpot00Hanebasi_Init>
     1dc:	860400b6 	lh	a0,182(s0)
     1e0:	e7a00054 	swc1	$f0,84(sp)
     1e4:	0c000000 	jal	0 <BgSpot00Hanebasi_Init>
     1e8:	860400b6 	lh	a0,182(s0)
     1ec:	c7b00064 	lwc1	$f16,100(sp)
     1f0:	3c01431e 	lui	at,0x431e
     1f4:	44814000 	mtc1	at,$f8
     1f8:	46100482 	mul.s	$f18,$f0,$f16
     1fc:	c7a20054 	lwc1	$f2,84(sp)
     200:	46024102 	mul.s	$f4,$f8,$f2
     204:	46049180 	add.s	$f6,$f18,$f4
     208:	e7a6005c 	swc1	$f6,92(sp)
     20c:	0c000000 	jal	0 <BgSpot00Hanebasi_Init>
     210:	860400b6 	lh	a0,182(s0)
     214:	860400b6 	lh	a0,182(s0)
     218:	0c000000 	jal	0 <BgSpot00Hanebasi_Init>
     21c:	e7a00054 	swc1	$f0,84(sp)
     220:	c7ac0064 	lwc1	$f12,100(sp)
     224:	3c01c31e 	lui	at,0xc31e
     228:	44818000 	mtc1	at,$f16
     22c:	460c0282 	mul.s	$f10,$f0,$f12
     230:	c7a20054 	lwc1	$f2,84(sp)
     234:	860800b4 	lh	t0,180(s0)
     238:	c7a4005c 	lwc1	$f4,92(sp)
     23c:	46028202 	mul.s	$f8,$f16,$f2
     240:	3402f020 	li	v0,0xf020
     244:	15000003 	bnez	t0,254 <BgSpot00Hanebasi_Init+0x254>
     248:	46085300 	add.s	$f12,$f10,$f8
     24c:	10000001 	b	254 <BgSpot00Hanebasi_Init+0x254>
     250:	00001025 	move	v0,zero
     254:	c6120024 	lwc1	$f18,36(s0)
     258:	c7aa0060 	lwc1	$f10,96(sp)
     25c:	8fa60074 	lw	a2,116(sp)
     260:	46049180 	add.s	$f6,$f18,$f4
     264:	02002825 	move	a1,s0
     268:	2407004a 	li	a3,74
     26c:	24c41c24 	addiu	a0,a2,7204
     270:	e7a60010 	swc1	$f6,16(sp)
     274:	c6100028 	lwc1	$f16,40(s0)
     278:	460a8200 	add.s	$f8,$f16,$f10
     27c:	e7a80014 	swc1	$f8,20(sp)
     280:	c612002c 	lwc1	$f18,44(s0)
     284:	afa2001c 	sw	v0,28(sp)
     288:	460c9100 	add.s	$f4,$f18,$f12
     28c:	e7a40018 	swc1	$f4,24(sp)
     290:	860900b6 	lh	t1,182(s0)
     294:	afa00028 	sw	zero,40(sp)
     298:	afa00024 	sw	zero,36(sp)
     29c:	0c000000 	jal	0 <BgSpot00Hanebasi_Init>
     2a0:	afa90020 	sw	t1,32(sp)
     2a4:	14400003 	bnez	v0,2b4 <BgSpot00Hanebasi_Init+0x2b4>
     2a8:	00000000 	nop
     2ac:	0c000000 	jal	0 <BgSpot00Hanebasi_Init>
     2b0:	02002025 	move	a0,s0
     2b4:	3c0a0000 	lui	t2,0x0
     2b8:	254a0000 	addiu	t2,t2,0
     2bc:	240b0028 	li	t3,40
     2c0:	ae0a0164 	sw	t2,356(s0)
     2c4:	1000002d 	b	37c <BgSpot00Hanebasi_Init+0x37c>
     2c8:	a60b0168 	sh	t3,360(s0)
     2cc:	14600029 	bnez	v1,374 <BgSpot00Hanebasi_Init+0x374>
     2d0:	3c190000 	lui	t9,0x0
     2d4:	0c000000 	jal	0 <BgSpot00Hanebasi_Init>
     2d8:	860400b6 	lh	a0,182(s0)
     2dc:	e7a0004c 	swc1	$f0,76(sp)
     2e0:	0c000000 	jal	0 <BgSpot00Hanebasi_Init>
     2e4:	860400b6 	lh	a0,182(s0)
     2e8:	3c01439e 	lui	at,0x439e
     2ec:	44811000 	mtc1	at,$f2
     2f0:	c7b0004c 	lwc1	$f16,76(sp)
     2f4:	c6060024 	lwc1	$f6,36(s0)
     2f8:	8fa60074 	lw	a2,116(sp)
     2fc:	46028282 	mul.s	$f10,$f16,$f2
     300:	240f0001 	li	t7,1
     304:	02002825 	move	a1,s0
     308:	46020102 	mul.s	$f4,$f0,$f2
     30c:	2407004a 	li	a3,74
     310:	24c41c24 	addiu	a0,a2,7204
     314:	460a3201 	sub.s	$f8,$f6,$f10
     318:	e7a80010 	swc1	$f8,16(sp)
     31c:	c6120028 	lwc1	$f18,40(s0)
     320:	e7b20014 	swc1	$f18,20(sp)
     324:	c610002c 	lwc1	$f16,44(s0)
     328:	46102180 	add.s	$f6,$f4,$f16
     32c:	e7a60018 	swc1	$f6,24(sp)
     330:	860d00b4 	lh	t5,180(s0)
     334:	afad001c 	sw	t5,28(sp)
     338:	860e00b6 	lh	t6,182(s0)
     33c:	afaf0028 	sw	t7,40(sp)
     340:	afa00024 	sw	zero,36(sp)
     344:	0c000000 	jal	0 <BgSpot00Hanebasi_Init>
     348:	afae0020 	sw	t6,32(sp)
     34c:	14400005 	bnez	v0,364 <BgSpot00Hanebasi_Init+0x364>
     350:	00000000 	nop
     354:	0c000000 	jal	0 <BgSpot00Hanebasi_Init>
     358:	02002025 	move	a0,s0
     35c:	0c000000 	jal	0 <BgSpot00Hanebasi_Init>
     360:	8e040118 	lw	a0,280(s0)
     364:	3c180000 	lui	t8,0x0
     368:	27180000 	addiu	t8,t8,0
     36c:	10000003 	b	37c <BgSpot00Hanebasi_Init+0x37c>
     370:	ae180164 	sw	t8,356(s0)
     374:	27390000 	addiu	t9,t9,0
     378:	ae190164 	sw	t9,356(s0)
     37c:	8608001c 	lh	t0,28(s0)
     380:	8fa40074 	lw	a0,116(sp)
     384:	26060170 	addiu	a2,s0,368
     388:	0500001b 	bltz	t0,3f8 <BgSpot00Hanebasi_Init+0x3f8>
     38c:	248507a8 	addiu	a1,a0,1960
     390:	0c000000 	jal	0 <BgSpot00Hanebasi_Init>
     394:	afa60048 	sw	a2,72(sp)
     398:	8609001c 	lh	t1,28(s0)
     39c:	ae02016c 	sw	v0,364(s0)
     3a0:	8fa40048 	lw	a0,72(sp)
     3a4:	15200005 	bnez	t1,3bc <BgSpot00Hanebasi_Init+0x3bc>
     3a8:	240600a8 	li	a2,168
     3ac:	3c014382 	lui	at,0x4382
     3b0:	44811000 	mtc1	at,$f2
     3b4:	10000005 	b	3cc <BgSpot00Hanebasi_Init+0x3cc>
     3b8:	4600128d 	trunc.w.s	$f10,$f2
     3bc:	3c01c382 	lui	at,0xc382
     3c0:	44811000 	mtc1	at,$f2
     3c4:	00000000 	nop
     3c8:	4600128d 	trunc.w.s	$f10,$f2
     3cc:	240b00ff 	li	t3,255
     3d0:	240c00ff 	li	t4,255
     3d4:	afac0014 	sw	t4,20(sp)
     3d8:	44055000 	mfc1	a1,$f10
     3dc:	afab0010 	sw	t3,16(sp)
     3e0:	240702b2 	li	a3,690
     3e4:	00052c00 	sll	a1,a1,0x10
     3e8:	00052c03 	sra	a1,a1,0x10
     3ec:	afa00018 	sw	zero,24(sp)
     3f0:	0c000000 	jal	0 <BgSpot00Hanebasi_Init>
     3f4:	afa0001c 	sw	zero,28(sp)
     3f8:	8fbf003c 	lw	ra,60(sp)
     3fc:	8fb00038 	lw	s0,56(sp)
     400:	27bd0070 	addiu	sp,sp,112
     404:	03e00008 	jr	ra
     408:	00000000 	nop

0000040c <BgSpot00Hanebasi_Destroy>:
     40c:	27bdffe8 	addiu	sp,sp,-24
     410:	afa40018 	sw	a0,24(sp)
     414:	8fae0018 	lw	t6,24(sp)
     418:	afbf0014 	sw	ra,20(sp)
     41c:	00a03825 	move	a3,a1
     420:	00a02025 	move	a0,a1
     424:	8dc6014c 	lw	a2,332(t6)
     428:	afa7001c 	sw	a3,28(sp)
     42c:	0c000000 	jal	0 <BgSpot00Hanebasi_Init>
     430:	24a50810 	addiu	a1,a1,2064
     434:	8fa20018 	lw	v0,24(sp)
     438:	8fa7001c 	lw	a3,28(sp)
     43c:	844f001c 	lh	t7,28(v0)
     440:	00e02025 	move	a0,a3
     444:	24e507a8 	addiu	a1,a3,1960
     448:	05e20004 	bltzl	t7,45c <BgSpot00Hanebasi_Destroy+0x50>
     44c:	8fbf0014 	lw	ra,20(sp)
     450:	0c000000 	jal	0 <BgSpot00Hanebasi_Init>
     454:	8c46016c 	lw	a2,364(v0)
     458:	8fbf0014 	lw	ra,20(sp)
     45c:	27bd0018 	addiu	sp,sp,24
     460:	03e00008 	jr	ra
     464:	00000000 	nop

00000468 <func_808A9BE8>:
     468:	3c070000 	lui	a3,0x0
     46c:	24e70000 	addiu	a3,a3,0
     470:	8ce31360 	lw	v1,4960(a3)
     474:	27bdffe0 	addiu	sp,sp,-32
     478:	afbf0014 	sw	ra,20(sp)
     47c:	afa50024 	sw	a1,36(sp)
     480:	28610004 	slti	at,v1,4
     484:	00803025 	move	a2,a0
     488:	10200014 	beqz	at,4dc <func_808A9BE8+0x74>
     48c:	8c88011c 	lw	t0,284(a0)
     490:	3c040000 	lui	a0,0x0
     494:	24840000 	addiu	a0,a0,0
     498:	8c8e0048 	lw	t6,72(a0)
     49c:	8ce200a4 	lw	v0,164(a3)
     4a0:	01c27824 	and	t7,t6,v0
     4a4:	51e0000e 	beqzl	t7,4e0 <func_808A9BE8+0x78>
     4a8:	84cd00b4 	lh	t5,180(a2)
     4ac:	8c98004c 	lw	t8,76(a0)
     4b0:	0302c824 	and	t9,t8,v0
     4b4:	5320000a 	beqzl	t9,4e0 <func_808A9BE8+0x78>
     4b8:	84cd00b4 	lh	t5,180(a2)
     4bc:	8c890050 	lw	t1,80(a0)
     4c0:	01225024 	and	t2,t1,v0
     4c4:	51400006 	beqzl	t2,4e0 <func_808A9BE8+0x78>
     4c8:	84cd00b4 	lh	t5,180(a2)
     4cc:	94eb0ee4 	lhu	t3,3812(a3)
     4d0:	316c0001 	andi	t4,t3,0x1
     4d4:	5180002d 	beqzl	t4,58c <func_808A9BE8+0x124>
     4d8:	8fbf0014 	lw	ra,20(sp)
     4dc:	84cd00b4 	lh	t5,180(a2)
     4e0:	8fa40024 	lw	a0,36(sp)
     4e4:	00002825 	move	a1,zero
     4e8:	51a00016 	beqzl	t5,544 <func_808A9BE8+0xdc>
     4ec:	84d800b4 	lh	t8,180(a2)
     4f0:	afa60020 	sw	a2,32(sp)
     4f4:	0c000000 	jal	0 <BgSpot00Hanebasi_Init>
     4f8:	afa8001c 	sw	t0,28(sp)
     4fc:	3c070000 	lui	a3,0x0
     500:	24e70000 	addiu	a3,a3,0
     504:	8fa60020 	lw	a2,32(sp)
     508:	14400007 	bnez	v0,528 <func_808A9BE8+0xc0>
     50c:	8fa8001c 	lw	t0,28(sp)
     510:	8ce31360 	lw	v1,4960(a3)
     514:	28610004 	slti	at,v1,4
     518:	5020000a 	beqzl	at,544 <func_808A9BE8+0xdc>
     51c:	84d800b4 	lh	t8,180(a2)
     520:	8cee0010 	lw	t6,16(a3)
     524:	15c00006 	bnez	t6,540 <func_808A9BE8+0xd8>
     528:	3c0f0000 	lui	t7,0x0
     52c:	25ef0000 	addiu	t7,t7,0
     530:	accf0164 	sw	t7,356(a2)
     534:	a4c00168 	sh	zero,360(a2)
     538:	10000013 	b	588 <func_808A9BE8+0x120>
     53c:	a5000168 	sh	zero,360(t0)
     540:	84d800b4 	lh	t8,180(a2)
     544:	28610004 	slti	at,v1,4
     548:	57000010 	bnezl	t8,58c <func_808A9BE8+0x124>
     54c:	8fbf0014 	lw	ra,20(sp)
     550:	5020000e 	beqzl	at,58c <func_808A9BE8+0x124>
     554:	8fbf0014 	lw	ra,20(sp)
     558:	8cf90004 	lw	t9,4(a3)
     55c:	5320000b 	beqzl	t9,58c <func_808A9BE8+0x124>
     560:	8fbf0014 	lw	ra,20(sp)
     564:	8ce90010 	lw	t1,16(a3)
     568:	3c0a0000 	lui	t2,0x0
     56c:	254a0000 	addiu	t2,t2,0
     570:	11200005 	beqz	t1,588 <func_808A9BE8+0x120>
     574:	240bc000 	li	t3,-16384
     578:	acca0164 	sw	t2,356(a2)
     57c:	a4cb0168 	sh	t3,360(a2)
     580:	240cf020 	li	t4,-4064
     584:	a50c0168 	sh	t4,360(t0)
     588:	8fbf0014 	lw	ra,20(sp)
     58c:	27bd0020 	addiu	sp,sp,32
     590:	03e00008 	jr	ra
     594:	00000000 	nop

00000598 <func_808A9D18>:
     598:	afa40000 	sw	a0,0(sp)
     59c:	03e00008 	jr	ra
     5a0:	afa50004 	sw	a1,4(sp)

000005a4 <func_808A9D24>:
     5a4:	27bdffd8 	addiu	sp,sp,-40
     5a8:	afbf0014 	sw	ra,20(sp)
     5ac:	afa5002c 	sw	a1,44(sp)
     5b0:	00803825 	move	a3,a0
     5b4:	84e50168 	lh	a1,360(a3)
     5b8:	afa70028 	sw	a3,40(sp)
     5bc:	248400b4 	addiu	a0,a0,180
     5c0:	0c000000 	jal	0 <BgSpot00Hanebasi_Init>
     5c4:	24060050 	li	a2,80
     5c8:	10400004 	beqz	v0,5dc <func_808A9D24+0x38>
     5cc:	8fa70028 	lw	a3,40(sp)
     5d0:	3c0e0000 	lui	t6,0x0
     5d4:	25ce0000 	addiu	t6,t6,0
     5d8:	acee0164 	sw	t6,356(a3)
     5dc:	84ef00b4 	lh	t7,180(a3)
     5e0:	3c090000 	lui	t1,0x0
     5e4:	25290000 	addiu	t1,t1,0
     5e8:	29e1d828 	slti	at,t7,-10200
     5ec:	1420001b 	bnez	at,65c <func_808A9D24+0xb8>
     5f0:	24180050 	li	t8,80
     5f4:	44982000 	mtc1	t8,$f4
     5f8:	3c010000 	lui	at,0x0
     5fc:	c4280000 	lwc1	$f8,0(at)
     600:	468021a0 	cvt.s.w	$f6,$f4
     604:	8ce3011c 	lw	v1,284(a3)
     608:	84650168 	lh	a1,360(v1)
     60c:	afa90018 	sw	t1,24(sp)
     610:	46083282 	mul.s	$f10,$f6,$f8
     614:	afa70028 	sw	a3,40(sp)
     618:	afa30024 	sw	v1,36(sp)
     61c:	246400b4 	addiu	a0,v1,180
     620:	4600540d 	trunc.w.s	$f16,$f10
     624:	44068000 	mfc1	a2,$f16
     628:	00000000 	nop
     62c:	00063400 	sll	a2,a2,0x10
     630:	00063403 	sra	a2,a2,0x10
     634:	0c000000 	jal	0 <BgSpot00Hanebasi_Init>
     638:	a7a6001e 	sh	a2,30(sp)
     63c:	8fa30024 	lw	v1,36(sp)
     640:	87a6001e 	lh	a2,30(sp)
     644:	8c68011c 	lw	t0,284(v1)
     648:	84650168 	lh	a1,360(v1)
     64c:	0c000000 	jal	0 <BgSpot00Hanebasi_Init>
     650:	250400b4 	addiu	a0,t0,180
     654:	8fa70028 	lw	a3,40(sp)
     658:	8fa90018 	lw	t1,24(sp)
     65c:	84ea0168 	lh	t2,360(a3)
     660:	0543000f 	bgezl	t2,6a0 <func_808A9D24+0xfc>
     664:	8cec0164 	lw	t4,356(a3)
     668:	8ceb0164 	lw	t3,356(a3)
     66c:	2405280f 	li	a1,10255
     670:	00e02025 	move	a0,a3
     674:	152b0005 	bne	t1,t3,68c <func_808A9D24+0xe8>
     678:	00000000 	nop
     67c:	0c000000 	jal	0 <BgSpot00Hanebasi_Init>
     680:	00e02025 	move	a0,a3
     684:	10000011 	b	6cc <func_808A9D24+0x128>
     688:	8fbf0014 	lw	ra,20(sp)
     68c:	0c000000 	jal	0 <BgSpot00Hanebasi_Init>
     690:	2405200d 	li	a1,8205
     694:	1000000d 	b	6cc <func_808A9D24+0x128>
     698:	8fbf0014 	lw	ra,20(sp)
     69c:	8cec0164 	lw	t4,356(a3)
     6a0:	2405280e 	li	a1,10254
     6a4:	00e02025 	move	a0,a3
     6a8:	152c0005 	bne	t1,t4,6c0 <func_808A9D24+0x11c>
     6ac:	00000000 	nop
     6b0:	0c000000 	jal	0 <BgSpot00Hanebasi_Init>
     6b4:	00e02025 	move	a0,a3
     6b8:	10000004 	b	6cc <func_808A9D24+0x128>
     6bc:	8fbf0014 	lw	ra,20(sp)
     6c0:	0c000000 	jal	0 <BgSpot00Hanebasi_Init>
     6c4:	2405200c 	li	a1,8204
     6c8:	8fbf0014 	lw	ra,20(sp)
     6cc:	27bd0028 	addiu	sp,sp,40
     6d0:	03e00008 	jr	ra
     6d4:	00000000 	nop

000006d8 <func_808A9E58>:
     6d8:	27bdffd8 	addiu	sp,sp,-40
     6dc:	afbf0024 	sw	ra,36(sp)
     6e0:	afa40028 	sw	a0,40(sp)
     6e4:	0c000000 	jal	0 <BgSpot00Hanebasi_Init>
     6e8:	afa5002c 	sw	a1,44(sp)
     6ec:	3c0142fe 	lui	at,0x42fe
     6f0:	44812000 	mtc1	at,$f4
     6f4:	24020001 	li	v0,1
     6f8:	3c014f00 	lui	at,0x4f00
     6fc:	46040182 	mul.s	$f6,$f0,$f4
     700:	8fa30028 	lw	v1,40(sp)
     704:	444ef800 	cfc1	t6,$31
     708:	44c2f800 	ctc1	v0,$31
     70c:	00000000 	nop
     710:	46003224 	cvt.w.s	$f8,$f6
     714:	4442f800 	cfc1	v0,$31
     718:	00000000 	nop
     71c:	30420078 	andi	v0,v0,0x78
     720:	50400013 	beqzl	v0,770 <func_808A9E58+0x98>
     724:	44024000 	mfc1	v0,$f8
     728:	44814000 	mtc1	at,$f8
     72c:	24020001 	li	v0,1
     730:	46083201 	sub.s	$f8,$f6,$f8
     734:	44c2f800 	ctc1	v0,$31
     738:	00000000 	nop
     73c:	46004224 	cvt.w.s	$f8,$f8
     740:	4442f800 	cfc1	v0,$31
     744:	00000000 	nop
     748:	30420078 	andi	v0,v0,0x78
     74c:	14400005 	bnez	v0,764 <func_808A9E58+0x8c>
     750:	00000000 	nop
     754:	44024000 	mfc1	v0,$f8
     758:	3c018000 	lui	at,0x8000
     75c:	10000007 	b	77c <func_808A9E58+0xa4>
     760:	00411025 	or	v0,v0,at
     764:	10000005 	b	77c <func_808A9E58+0xa4>
     768:	2402ffff 	li	v0,-1
     76c:	44024000 	mfc1	v0,$f8
     770:	00000000 	nop
     774:	0440fffb 	bltz	v0,764 <func_808A9E58+0x8c>
     778:	00000000 	nop
     77c:	846f001c 	lh	t7,28(v1)
     780:	44cef800 	ctc1	t6,$31
     784:	24420080 	addiu	v0,v0,128
     788:	15e00005 	bnez	t7,7a0 <func_808A9E58+0xc8>
     78c:	304200ff 	andi	v0,v0,0xff
     790:	3c014382 	lui	at,0x4382
     794:	44811000 	mtc1	at,$f2
     798:	10000004 	b	7ac <func_808A9E58+0xd4>
     79c:	00000000 	nop
     7a0:	3c01c382 	lui	at,0xc382
     7a4:	44811000 	mtc1	at,$f2
     7a8:	00000000 	nop
     7ac:	3c010000 	lui	at,0x0
     7b0:	c4200000 	lwc1	$f0,0(at)
     7b4:	3c010000 	lui	at,0x0
     7b8:	c4300000 	lwc1	$f16,0(at)
     7bc:	4600128d 	trunc.w.s	$f10,$f2
     7c0:	3c014300 	lui	at,0x4300
     7c4:	46008482 	mul.s	$f18,$f16,$f0
     7c8:	44812000 	mtc1	at,$f4
     7cc:	44055000 	mfc1	a1,$f10
     7d0:	3c010000 	lui	at,0x0
     7d4:	c42a0000 	lwc1	$f10,0(at)
     7d8:	00052c00 	sll	a1,a1,0x10
     7dc:	00052c03 	sra	a1,a1,0x10
     7e0:	460a0402 	mul.s	$f16,$f0,$f10
     7e4:	46049180 	add.s	$f6,$f18,$f4
     7e8:	24640170 	addiu	a0,v1,368
     7ec:	240702b2 	li	a3,690
     7f0:	afa20010 	sw	v0,16(sp)
     7f4:	afa20014 	sw	v0,20(sp)
     7f8:	4600320d 	trunc.w.s	$f8,$f6
     7fc:	afa00018 	sw	zero,24(sp)
     800:	4600848d 	trunc.w.s	$f18,$f16
     804:	44064000 	mfc1	a2,$f8
     808:	44099000 	mfc1	t1,$f18
     80c:	00063400 	sll	a2,a2,0x10
     810:	00063403 	sra	a2,a2,0x10
     814:	0c000000 	jal	0 <BgSpot00Hanebasi_Init>
     818:	afa9001c 	sw	t1,28(sp)
     81c:	8fbf0024 	lw	ra,36(sp)
     820:	27bd0028 	addiu	sp,sp,40
     824:	03e00008 	jr	ra
     828:	00000000 	nop

0000082c <BgSpot00Hanebasi_Update>:
     82c:	27bdffd0 	addiu	sp,sp,-48
     830:	afbf001c 	sw	ra,28(sp)
     834:	afb00018 	sw	s0,24(sp)
     838:	afa40030 	sw	a0,48(sp)
     83c:	8c990164 	lw	t9,356(a0)
     840:	00a08025 	move	s0,a1
     844:	0320f809 	jalr	t9
     848:	00000000 	nop
     84c:	8fa70030 	lw	a3,48(sp)
     850:	2401ffff 	li	at,-1
     854:	84ee001c 	lh	t6,28(a3)
     858:	55c100b1 	bnel	t6,at,b20 <BgSpot00Hanebasi_Update+0x2f4>
     85c:	8fbf001c 	lw	ra,28(sp)
     860:	860f00a4 	lh	t7,164(s0)
     864:	24010051 	li	at,81
     868:	3c030000 	lui	v1,0x0
     86c:	15e10066 	bne	t7,at,a08 <BgSpot00Hanebasi_Update+0x1dc>
     870:	24630000 	addiu	v1,v1,0
     874:	3c080000 	lui	t0,0x0
     878:	25080000 	addiu	t0,t0,0
     87c:	8d0200a4 	lw	v0,164(t0)
     880:	8c780048 	lw	t8,72(v1)
     884:	03024824 	and	t1,t8,v0
     888:	1120005f 	beqz	t1,a08 <BgSpot00Hanebasi_Update+0x1dc>
     88c:	00000000 	nop
     890:	8c6a004c 	lw	t2,76(v1)
     894:	01425824 	and	t3,t2,v0
     898:	1160005b 	beqz	t3,a08 <BgSpot00Hanebasi_Update+0x1dc>
     89c:	00000000 	nop
     8a0:	8c6c0050 	lw	t4,80(v1)
     8a4:	01826824 	and	t5,t4,v0
     8a8:	11a00057 	beqz	t5,a08 <BgSpot00Hanebasi_Update+0x1dc>
     8ac:	00000000 	nop
     8b0:	95190ee4 	lhu	t9,3812(t0)
     8b4:	332e0001 	andi	t6,t9,0x1
     8b8:	15c00053 	bnez	t6,a08 <BgSpot00Hanebasi_Update+0x1dc>
     8bc:	00000000 	nop
     8c0:	8d0f0004 	lw	t7,4(t0)
     8c4:	24010001 	li	at,1
     8c8:	15e1004f 	bne	t7,at,a08 <BgSpot00Hanebasi_Update+0x1dc>
     8cc:	00000000 	nop
     8d0:	8e051c44 	lw	a1,7236(s0)
     8d4:	3c01c3e1 	lui	at,0xc3e1
     8d8:	44812000 	mtc1	at,$f4
     8dc:	c4a00024 	lwc1	$f0,36(a1)
     8e0:	3c0143e1 	lui	at,0x43e1
     8e4:	4600203c 	c.lt.s	$f4,$f0
     8e8:	00000000 	nop
     8ec:	4502003d 	bc1fl	9e4 <BgSpot00Hanebasi_Update+0x1b8>
     8f0:	3c05453b 	lui	a1,0x453b
     8f4:	44813000 	mtc1	at,$f6
     8f8:	3c014487 	lui	at,0x4487
     8fc:	4606003c 	c.lt.s	$f0,$f6
     900:	00000000 	nop
     904:	45020037 	bc1fl	9e4 <BgSpot00Hanebasi_Update+0x1b8>
     908:	3c05453b 	lui	a1,0x453b
     90c:	c4a0002c 	lwc1	$f0,44(a1)
     910:	44814000 	mtc1	at,$f8
     914:	3c010000 	lui	at,0x0
     918:	4600403c 	c.lt.s	$f8,$f0
     91c:	00000000 	nop
     920:	45020030 	bc1fl	9e4 <BgSpot00Hanebasi_Update+0x1b8>
     924:	3c05453b 	lui	a1,0x453b
     928:	c42a0000 	lwc1	$f10,0(at)
     92c:	02002025 	move	a0,s0
     930:	460a003c 	c.lt.s	$f0,$f10
     934:	00000000 	nop
     938:	4502002a 	bc1fl	9e4 <BgSpot00Hanebasi_Update+0x1b8>
     93c:	3c05453b 	lui	a1,0x453b
     940:	afa50024 	sw	a1,36(sp)
     944:	0c000000 	jal	0 <BgSpot00Hanebasi_Init>
     948:	afa70030 	sw	a3,48(sp)
     94c:	3c080000 	lui	t0,0x0
     950:	25080000 	addiu	t0,t0,0
     954:	8fa50024 	lw	a1,36(sp)
     958:	14400021 	bnez	v0,9e0 <BgSpot00Hanebasi_Update+0x1b4>
     95c:	8fa70030 	lw	a3,48(sp)
     960:	95180ee4 	lhu	t8,3812(t0)
     964:	24040082 	li	a0,130
     968:	afa50024 	sw	a1,36(sp)
     96c:	37090001 	ori	t1,t8,0x1
     970:	a5090ee4 	sh	t1,3812(t0)
     974:	0c000000 	jal	0 <BgSpot00Hanebasi_Init>
     978:	afa70030 	sw	a3,48(sp)
     97c:	8fa70030 	lw	a3,48(sp)
     980:	3c0a0000 	lui	t2,0x0
     984:	8fa50024 	lw	a1,36(sp)
     988:	254a0000 	addiu	t2,t2,0
     98c:	02002025 	move	a0,s0
     990:	24060008 	li	a2,8
     994:	0c000000 	jal	0 <BgSpot00Hanebasi_Init>
     998:	acea0164 	sw	t2,356(a3)
     99c:	3c010001 	lui	at,0x1
     9a0:	00300821 	addu	at,at,s0
     9a4:	240b00cd 	li	t3,205
     9a8:	3c080000 	lui	t0,0x0
     9ac:	a42b1e1a 	sh	t3,7706(at)
     9b0:	25080000 	addiu	t0,t0,0
     9b4:	340cfff1 	li	t4,0xfff1
     9b8:	3c010001 	lui	at,0x1
     9bc:	a50c1412 	sh	t4,5138(t0)
     9c0:	00300821 	addu	at,at,s0
     9c4:	240d0014 	li	t5,20
     9c8:	a02d1e15 	sb	t5,7701(at)
     9cc:	3c010001 	lui	at,0x1
     9d0:	00300821 	addu	at,at,s0
     9d4:	24190004 	li	t9,4
     9d8:	1000000b 	b	a08 <BgSpot00Hanebasi_Update+0x1dc>
     9dc:	a0391e5e 	sb	t9,7774(at)
     9e0:	3c05453b 	lui	a1,0x453b
     9e4:	34a58000 	ori	a1,a1,0x8000
     9e8:	00e02025 	move	a0,a3
     9ec:	0c000000 	jal	0 <BgSpot00Hanebasi_Init>
     9f0:	24067530 	li	a2,30000
     9f4:	10400004 	beqz	v0,a08 <BgSpot00Hanebasi_Update+0x1dc>
     9f8:	240e0001 	li	t6,1
     9fc:	3c010001 	lui	at,0x1
     a00:	00300821 	addu	at,at,s0
     a04:	a02e0b01 	sb	t6,2817(at)
     a08:	3c080000 	lui	t0,0x0
     a0c:	25080000 	addiu	t0,t0,0
     a10:	8d041360 	lw	a0,4960(t0)
     a14:	24060005 	li	a2,5
     a18:	3c050000 	lui	a1,0x0
     a1c:	14c4003f 	bne	a2,a0,b1c <BgSpot00Hanebasi_Update+0x2f0>
     a20:	24a50000 	addiu	a1,a1,0
     a24:	94af0000 	lhu	t7,0(a1)
     a28:	24010032 	li	at,50
     a2c:	55e10033 	bnel	t7,at,afc <BgSpot00Hanebasi_Update+0x2d0>
     a30:	9502000c 	lhu	v0,12(t0)
     a34:	9503000c 	lhu	v1,12(t0)
     a38:	3401d557 	li	at,0xd557
     a3c:	3402d556 	li	v0,0xd556
     a40:	0061082a 	slt	at,v1,at
     a44:	54200004 	bnezl	at,a58 <BgSpot00Hanebasi_Update+0x22c>
     a48:	0043c023 	subu	t8,v0,v1
     a4c:	3c020001 	lui	v0,0x1
     a50:	3442d556 	ori	v0,v0,0xd556
     a54:	0043c023 	subu	t8,v0,v1
     a58:	44988000 	mtc1	t8,$f16
     a5c:	3c010000 	lui	at,0x0
     a60:	c4240000 	lwc1	$f4,0(at)
     a64:	468084a0 	cvt.s.w	$f18,$f16
     a68:	240a0001 	li	t2,1
     a6c:	3c014f00 	lui	at,0x4f00
     a70:	46049182 	mul.s	$f6,$f18,$f4
     a74:	4449f800 	cfc1	t1,$31
     a78:	44caf800 	ctc1	t2,$31
     a7c:	00000000 	nop
     a80:	46003224 	cvt.w.s	$f8,$f6
     a84:	444af800 	cfc1	t2,$31
     a88:	00000000 	nop
     a8c:	314a0078 	andi	t2,t2,0x78
     a90:	51400013 	beqzl	t2,ae0 <BgSpot00Hanebasi_Update+0x2b4>
     a94:	440a4000 	mfc1	t2,$f8
     a98:	44814000 	mtc1	at,$f8
     a9c:	240a0001 	li	t2,1
     aa0:	46083201 	sub.s	$f8,$f6,$f8
     aa4:	44caf800 	ctc1	t2,$31
     aa8:	00000000 	nop
     aac:	46004224 	cvt.w.s	$f8,$f8
     ab0:	444af800 	cfc1	t2,$31
     ab4:	00000000 	nop
     ab8:	314a0078 	andi	t2,t2,0x78
     abc:	15400005 	bnez	t2,ad4 <BgSpot00Hanebasi_Update+0x2a8>
     ac0:	00000000 	nop
     ac4:	440a4000 	mfc1	t2,$f8
     ac8:	3c018000 	lui	at,0x8000
     acc:	10000007 	b	aec <BgSpot00Hanebasi_Update+0x2c0>
     ad0:	01415025 	or	t2,t2,at
     ad4:	10000005 	b	aec <BgSpot00Hanebasi_Update+0x2c0>
     ad8:	240affff 	li	t2,-1
     adc:	440a4000 	mfc1	t2,$f8
     ae0:	00000000 	nop
     ae4:	0540fffb 	bltz	t2,ad4 <BgSpot00Hanebasi_Update+0x2a8>
     ae8:	00000000 	nop
     aec:	44c9f800 	ctc1	t1,$31
     af0:	a4aa0000 	sh	t2,0(a1)
     af4:	00000000 	nop
     af8:	9502000c 	lhu	v0,12(t0)
     afc:	28412aac 	slti	at,v0,10924
     b00:	14200006 	bnez	at,b1c <BgSpot00Hanebasi_Update+0x2f0>
     b04:	28413000 	slti	at,v0,12288
     b08:	50200005 	beqzl	at,b20 <BgSpot00Hanebasi_Update+0x2f4>
     b0c:	8fbf001c 	lw	ra,28(sp)
     b10:	54c40003 	bnel	a2,a0,b20 <BgSpot00Hanebasi_Update+0x2f4>
     b14:	8fbf001c 	lw	ra,28(sp)
     b18:	a4a00000 	sh	zero,0(a1)
     b1c:	8fbf001c 	lw	ra,28(sp)
     b20:	8fb00018 	lw	s0,24(sp)
     b24:	27bd0030 	addiu	sp,sp,48
     b28:	03e00008 	jr	ra
     b2c:	00000000 	nop

00000b30 <func_808AA2B0>:
     b30:	27bdff30 	addiu	sp,sp,-208
     b34:	afb3006c 	sw	s3,108(sp)
     b38:	00a09825 	move	s3,a1
     b3c:	afbf0084 	sw	ra,132(sp)
     b40:	afbe0080 	sw	s8,128(sp)
     b44:	afb7007c 	sw	s7,124(sp)
     b48:	afb60078 	sw	s6,120(sp)
     b4c:	afb50074 	sw	s5,116(sp)
     b50:	afb40070 	sw	s4,112(sp)
     b54:	afb20068 	sw	s2,104(sp)
     b58:	afb10064 	sw	s1,100(sp)
     b5c:	afb00060 	sw	s0,96(sp)
     b60:	f7bc0058 	sdc1	$f28,88(sp)
     b64:	f7ba0050 	sdc1	$f26,80(sp)
     b68:	f7b80048 	sdc1	$f24,72(sp)
     b6c:	f7b60040 	sdc1	$f22,64(sp)
     b70:	f7b40038 	sdc1	$f20,56(sp)
     b74:	8ca50000 	lw	a1,0(a1)
     b78:	00808025 	move	s0,a0
     b7c:	3c060000 	lui	a2,0x0
     b80:	24c60000 	addiu	a2,a2,0
     b84:	27a400b0 	addiu	a0,sp,176
     b88:	24070279 	li	a3,633
     b8c:	0c000000 	jal	0 <BgSpot00Hanebasi_Init>
     b90:	00a09025 	move	s2,a1
     b94:	0c000000 	jal	0 <BgSpot00Hanebasi_Init>
     b98:	8e640000 	lw	a0,0(s3)
     b9c:	3c0e0000 	lui	t6,0x0
     ba0:	8dce1360 	lw	t6,4960(t6)
     ba4:	29c10004 	slti	at,t6,4
     ba8:	14200005 	bnez	at,bc0 <func_808AA2B0+0x90>
     bac:	3c010000 	lui	at,0x0
     bb0:	c4240000 	lwc1	$f4,0(at)
     bb4:	3c010000 	lui	at,0x0
     bb8:	1000000b 	b	be8 <func_808AA2B0+0xb8>
     bbc:	e4240000 	swc1	$f4,0(at)
     bc0:	860f00b4 	lh	t7,180(s0)
     bc4:	3c010000 	lui	at,0x0
     bc8:	c42a0000 	lwc1	$f10,0(at)
     bcc:	000fc023 	negu	t8,t7
     bd0:	2719e000 	addiu	t9,t8,-8192
     bd4:	44993000 	mtc1	t9,$f6
     bd8:	3c010000 	lui	at,0x0
     bdc:	46803220 	cvt.s.w	$f8,$f6
     be0:	460a4402 	mul.s	$f16,$f8,$f10
     be4:	e4300000 	swc1	$f16,0(at)
     be8:	866807a0 	lh	t0,1952(s3)
     bec:	00084880 	sll	t1,t0,0x2
     bf0:	02695021 	addu	t2,s3,t1
     bf4:	0c000000 	jal	0 <BgSpot00Hanebasi_Init>
     bf8:	8d440790 	lw	a0,1936(t2)
     bfc:	34018000 	li	at,0x8000
     c00:	00415821 	addu	t3,v0,at
     c04:	8e4202d0 	lw	v0,720(s2)
     c08:	3c010000 	lui	at,0x0
     c0c:	c4260000 	lwc1	$f6,0(at)
     c10:	244e0008 	addiu	t6,v0,8
     c14:	ae4e02d0 	sw	t6,720(s2)
     c18:	3c0ffa00 	lui	t7,0xfa00
     c1c:	3c18ffff 	lui	t8,0xffff
     c20:	371800ff 	ori	t8,t8,0xff
     c24:	35ef8080 	ori	t7,t7,0x8080
     c28:	ac4f0000 	sw	t7,0(v0)
     c2c:	ac580004 	sw	t8,4(v0)
     c30:	8e4202d0 	lw	v0,720(s2)
     c34:	000b6400 	sll	t4,t3,0x10
     c38:	000c6c03 	sra	t5,t4,0x10
     c3c:	448d9000 	mtc1	t5,$f18
     c40:	3c010001 	lui	at,0x1
     c44:	0261a821 	addu	s5,s3,at
     c48:	24590008 	addiu	t9,v0,8
     c4c:	ae5902d0 	sw	t9,720(s2)
     c50:	3c01c382 	lui	at,0xc382
     c54:	46809120 	cvt.s.w	$f4,$f18
     c58:	3c08fb00 	lui	t0,0xfb00
     c5c:	3c09ff00 	lui	t1,0xff00
     c60:	4481d000 	mtc1	at,$f26
     c64:	3c010000 	lui	at,0x0
     c68:	ac490004 	sw	t1,4(v0)
     c6c:	ac480000 	sw	t0,0(v0)
     c70:	c4380000 	lwc1	$f24,0(at)
     c74:	3c014300 	lui	at,0x4300
     c78:	4481b000 	mtc1	at,$f22
     c7c:	3c014382 	lui	at,0x4382
     c80:	3c140405 	lui	s4,0x405
     c84:	3c1eda38 	lui	s8,0xda38
     c88:	3c16db06 	lui	s6,0xdb06
     c8c:	4481a000 	mtc1	at,$f20
     c90:	46062702 	mul.s	$f28,$f4,$f6
     c94:	36d60020 	ori	s6,s6,0x20
     c98:	37de0003 	ori	s8,s8,0x3
     c9c:	2694d4e0 	addiu	s4,s4,-11040
     ca0:	00008825 	move	s1,zero
     ca4:	2417ffec 	li	s7,-20
     ca8:	8e4202d0 	lw	v0,720(s2)
     cac:	240b0020 	li	t3,32
     cb0:	240c0040 	li	t4,64
     cb4:	244a0008 	addiu	t2,v0,8
     cb8:	ae4a02d0 	sw	t2,720(s2)
     cbc:	ac560000 	sw	s6,0(v0)
     cc0:	8e640000 	lw	a0,0(s3)
     cc4:	240d0001 	li	t5,1
     cc8:	afad0018 	sw	t5,24(sp)
     ccc:	afa0001c 	sw	zero,28(sp)
     cd0:	afac0014 	sw	t4,20(sp)
     cd4:	afab0010 	sw	t3,16(sp)
     cd8:	8eae1de4 	lw	t6,7652(s5)
     cdc:	24080020 	li	t0,32
     ce0:	24090080 	li	t1,128
     ce4:	01d17821 	addu	t7,t6,s1
     ce8:	01f70019 	multu	t7,s7
     cec:	afa90028 	sw	t1,40(sp)
     cf0:	afa80024 	sw	t0,36(sp)
     cf4:	00002825 	move	a1,zero
     cf8:	00003025 	move	a2,zero
     cfc:	00003825 	move	a3,zero
     d00:	00408025 	move	s0,v0
     d04:	0000c012 	mflo	t8
     d08:	331901ff 	andi	t9,t8,0x1ff
     d0c:	0c000000 	jal	0 <BgSpot00Hanebasi_Init>
     d10:	afb90020 	sw	t9,32(sp)
     d14:	16200003 	bnez	s1,d24 <func_808AA2B0+0x1f4>
     d18:	ae020004 	sw	v0,4(s0)
     d1c:	10000002 	b	d28 <func_808AA2B0+0x1f8>
     d20:	4600a306 	mov.s	$f12,$f20
     d24:	4600d306 	mov.s	$f12,$f26
     d28:	4406c000 	mfc1	a2,$f24
     d2c:	4600b386 	mov.s	$f14,$f22
     d30:	0c000000 	jal	0 <BgSpot00Hanebasi_Init>
     d34:	00003825 	move	a3,zero
     d38:	4600e306 	mov.s	$f12,$f28
     d3c:	0c000000 	jal	0 <BgSpot00Hanebasi_Init>
     d40:	24050001 	li	a1,1
     d44:	3c010000 	lui	at,0x0
     d48:	c42c0000 	lwc1	$f12,0(at)
     d4c:	24070001 	li	a3,1
     d50:	44066000 	mfc1	a2,$f12
     d54:	0c000000 	jal	0 <BgSpot00Hanebasi_Init>
     d58:	46006386 	mov.s	$f14,$f12
     d5c:	8e4202d0 	lw	v0,720(s2)
     d60:	3c050000 	lui	a1,0x0
     d64:	24a50000 	addiu	a1,a1,0
     d68:	244a0008 	addiu	t2,v0,8
     d6c:	ae4a02d0 	sw	t2,720(s2)
     d70:	ac5e0000 	sw	s8,0(v0)
     d74:	8e640000 	lw	a0,0(s3)
     d78:	240602a2 	li	a2,674
     d7c:	0c000000 	jal	0 <BgSpot00Hanebasi_Init>
     d80:	00408025 	move	s0,v0
     d84:	ae020004 	sw	v0,4(s0)
     d88:	8e4202d0 	lw	v0,720(s2)
     d8c:	26310001 	addiu	s1,s1,1
     d90:	24010002 	li	at,2
     d94:	244b0008 	addiu	t3,v0,8
     d98:	ae4b02d0 	sw	t3,720(s2)
     d9c:	3c0cde00 	lui	t4,0xde00
     da0:	ac4c0000 	sw	t4,0(v0)
     da4:	1621ffc0 	bne	s1,at,ca8 <func_808AA2B0+0x178>
     da8:	ac540004 	sw	s4,4(v0)
     dac:	3c060000 	lui	a2,0x0
     db0:	24c60000 	addiu	a2,a2,0
     db4:	27a400b0 	addiu	a0,sp,176
     db8:	8e650000 	lw	a1,0(s3)
     dbc:	0c000000 	jal	0 <BgSpot00Hanebasi_Init>
     dc0:	240702a9 	li	a3,681
     dc4:	8fbf0084 	lw	ra,132(sp)
     dc8:	d7b40038 	ldc1	$f20,56(sp)
     dcc:	d7b60040 	ldc1	$f22,64(sp)
     dd0:	d7b80048 	ldc1	$f24,72(sp)
     dd4:	d7ba0050 	ldc1	$f26,80(sp)
     dd8:	d7bc0058 	ldc1	$f28,88(sp)
     ddc:	8fb00060 	lw	s0,96(sp)
     de0:	8fb10064 	lw	s1,100(sp)
     de4:	8fb20068 	lw	s2,104(sp)
     de8:	8fb3006c 	lw	s3,108(sp)
     dec:	8fb40070 	lw	s4,112(sp)
     df0:	8fb50074 	lw	s5,116(sp)
     df4:	8fb60078 	lw	s6,120(sp)
     df8:	8fb7007c 	lw	s7,124(sp)
     dfc:	8fbe0080 	lw	s8,128(sp)
     e00:	03e00008 	jr	ra
     e04:	27bd00d0 	addiu	sp,sp,208

00000e08 <BgSpot00Hanebasi_Draw>:
     e08:	27bdffa0 	addiu	sp,sp,-96
     e0c:	3c0f0000 	lui	t7,0x0
     e10:	afbf001c 	sw	ra,28(sp)
     e14:	afb00018 	sw	s0,24(sp)
     e18:	afa50064 	sw	a1,100(sp)
     e1c:	25ef0000 	addiu	t7,t7,0
     e20:	8df90000 	lw	t9,0(t7)
     e24:	27ae0054 	addiu	t6,sp,84
     e28:	8df80004 	lw	t8,4(t7)
     e2c:	add90000 	sw	t9,0(t6)
     e30:	8df90008 	lw	t9,8(t7)
     e34:	add80004 	sw	t8,4(t6)
     e38:	00808025 	move	s0,a0
     e3c:	add90008 	sw	t9,8(t6)
     e40:	8fa90064 	lw	t1,100(sp)
     e44:	3c060000 	lui	a2,0x0
     e48:	24c60000 	addiu	a2,a2,0
     e4c:	8d250000 	lw	a1,0(t1)
     e50:	27a40034 	addiu	a0,sp,52
     e54:	240702ba 	li	a3,698
     e58:	0c000000 	jal	0 <BgSpot00Hanebasi_Init>
     e5c:	afa50044 	sw	a1,68(sp)
     e60:	8faa0064 	lw	t2,100(sp)
     e64:	0c000000 	jal	0 <BgSpot00Hanebasi_Init>
     e68:	8d440000 	lw	a0,0(t2)
     e6c:	8fa80044 	lw	t0,68(sp)
     e70:	3c0cda38 	lui	t4,0xda38
     e74:	358c0003 	ori	t4,t4,0x3
     e78:	8d0202c0 	lw	v0,704(t0)
     e7c:	3c050000 	lui	a1,0x0
     e80:	24a50000 	addiu	a1,a1,0
     e84:	244b0008 	addiu	t3,v0,8
     e88:	ad0b02c0 	sw	t3,704(t0)
     e8c:	ac4c0000 	sw	t4,0(v0)
     e90:	8fad0064 	lw	t5,100(sp)
     e94:	240602be 	li	a2,702
     e98:	8da40000 	lw	a0,0(t5)
     e9c:	afa80044 	sw	t0,68(sp)
     ea0:	0c000000 	jal	0 <BgSpot00Hanebasi_Init>
     ea4:	afa20030 	sw	v0,48(sp)
     ea8:	8fa30030 	lw	v1,48(sp)
     eac:	8fa80044 	lw	t0,68(sp)
     eb0:	2401ffff 	li	at,-1
     eb4:	ac620004 	sw	v0,4(v1)
     eb8:	860e001c 	lh	t6,28(s0)
     ebc:	3c18de00 	lui	t8,0xde00
     ec0:	3c190600 	lui	t9,0x600
     ec4:	15c1003e 	bne	t6,at,fc0 <BgSpot00Hanebasi_Draw+0x1b8>
     ec8:	3c0cde00 	lui	t4,0xde00
     ecc:	8d0202c0 	lw	v0,704(t0)
     ed0:	27390430 	addiu	t9,t9,1072
     ed4:	27a40054 	addiu	a0,sp,84
     ed8:	244f0008 	addiu	t7,v0,8
     edc:	ad0f02c0 	sw	t7,704(t0)
     ee0:	27a50048 	addiu	a1,sp,72
     ee4:	ac590004 	sw	t9,4(v0)
     ee8:	0c000000 	jal	0 <BgSpot00Hanebasi_Init>
     eec:	ac580000 	sw	t8,0(v0)
     ef0:	c7a40048 	lwc1	$f4,72(sp)
     ef4:	8e09011c 	lw	t1,284(s0)
     ef8:	3c01bf80 	lui	at,0xbf80
     efc:	44818000 	mtc1	at,$f16
     f00:	e5240024 	swc1	$f4,36(t1)
     f04:	8e0a011c 	lw	t2,284(s0)
     f08:	c7a6004c 	lwc1	$f6,76(sp)
     f0c:	27a40054 	addiu	a0,sp,84
     f10:	27a50048 	addiu	a1,sp,72
     f14:	e5460028 	swc1	$f6,40(t2)
     f18:	8e0b011c 	lw	t3,284(s0)
     f1c:	c7a80050 	lwc1	$f8,80(sp)
     f20:	e568002c 	swc1	$f8,44(t3)
     f24:	c7aa0054 	lwc1	$f10,84(sp)
     f28:	46105482 	mul.s	$f18,$f10,$f16
     f2c:	0c000000 	jal	0 <BgSpot00Hanebasi_Init>
     f30:	e7b20054 	swc1	$f18,84(sp)
     f34:	8e0c011c 	lw	t4,284(s0)
     f38:	c7a40048 	lwc1	$f4,72(sp)
     f3c:	3c030000 	lui	v1,0x0
     f40:	8d8d011c 	lw	t5,284(t4)
     f44:	24630000 	addiu	v1,v1,0
     f48:	2401000c 	li	at,12
     f4c:	e5a40024 	swc1	$f4,36(t5)
     f50:	8e0e011c 	lw	t6,284(s0)
     f54:	c7a6004c 	lwc1	$f6,76(sp)
     f58:	8dcf011c 	lw	t7,284(t6)
     f5c:	e5e60028 	swc1	$f6,40(t7)
     f60:	8e18011c 	lw	t8,284(s0)
     f64:	c7a80050 	lwc1	$f8,80(sp)
     f68:	8f19011c 	lw	t9,284(t8)
     f6c:	e728002c 	swc1	$f8,44(t9)
     f70:	8c621360 	lw	v0,4960(v1)
     f74:	10410019 	beq	v0,at,fdc <BgSpot00Hanebasi_Draw+0x1d4>
     f78:	28410004 	slti	at,v0,4
     f7c:	10200008 	beqz	at,fa0 <BgSpot00Hanebasi_Draw+0x198>
     f80:	02002025 	move	a0,s0
     f84:	8c690004 	lw	t1,4(v1)
     f88:	5120000a 	beqzl	t1,fb4 <BgSpot00Hanebasi_Draw+0x1ac>
     f8c:	44805000 	mtc1	zero,$f10
     f90:	860a00b4 	lh	t2,180(s0)
     f94:	2941e000 	slti	at,t2,-8192
     f98:	50200006 	beqzl	at,fb4 <BgSpot00Hanebasi_Draw+0x1ac>
     f9c:	44805000 	mtc1	zero,$f10
     fa0:	0c000000 	jal	0 <BgSpot00Hanebasi_Init>
     fa4:	8fa50064 	lw	a1,100(sp)
     fa8:	1000000d 	b	fe0 <BgSpot00Hanebasi_Draw+0x1d8>
     fac:	8fae0064 	lw	t6,100(sp)
     fb0:	44805000 	mtc1	zero,$f10
     fb4:	3c010000 	lui	at,0x0
     fb8:	10000008 	b	fdc <BgSpot00Hanebasi_Draw+0x1d4>
     fbc:	e42a0000 	swc1	$f10,0(at)
     fc0:	8d0202c0 	lw	v0,704(t0)
     fc4:	3c0d0600 	lui	t5,0x600
     fc8:	25ad00c0 	addiu	t5,t5,192
     fcc:	244b0008 	addiu	t3,v0,8
     fd0:	ad0b02c0 	sw	t3,704(t0)
     fd4:	ac4d0004 	sw	t5,4(v0)
     fd8:	ac4c0000 	sw	t4,0(v0)
     fdc:	8fae0064 	lw	t6,100(sp)
     fe0:	3c060000 	lui	a2,0x0
     fe4:	24c60000 	addiu	a2,a2,0
     fe8:	27a40034 	addiu	a0,sp,52
     fec:	240702dd 	li	a3,733
     ff0:	0c000000 	jal	0 <BgSpot00Hanebasi_Init>
     ff4:	8dc50000 	lw	a1,0(t6)
     ff8:	8fbf001c 	lw	ra,28(sp)
     ffc:	8fb00018 	lw	s0,24(sp)
    1000:	27bd0060 	addiu	sp,sp,96
    1004:	03e00008 	jr	ra
    1008:	00000000 	nop
    100c:	00000000 	nop
