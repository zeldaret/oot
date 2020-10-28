
build/src/overlays/actors/ovl_En_Heishi2/z_en_heishi2.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <EnHeishi2_Init>:
       0:	27bdffc0 	addiu	sp,sp,-64
       4:	afa50044 	sw	a1,68(sp)
       8:	afbf002c 	sw	ra,44(sp)
       c:	afb00028 	sw	s0,40(sp)
      10:	3c053c23 	lui	a1,0x3c23
      14:	00808025 	move	s0,a0
      18:	0c000000 	jal	0 <EnHeishi2_Init>
      1c:	34a5d70a 	ori	a1,a1,0xd70a
      20:	860e001c 	lh	t6,28(s0)
      24:	241800ff 	li	t8,255
      28:	a21800ae 	sb	t8,174(s0)
      2c:	31cf00ff 	andi	t7,t6,0xff
      30:	a60f02fe 	sh	t7,766(s0)
      34:	860202fe 	lh	v0,766(s0)
      38:	24010006 	li	at,6
      3c:	8fa40044 	lw	a0,68(sp)
      40:	10410004 	beq	v0,at,54 <EnHeishi2_Init+0x54>
      44:	3c190000 	lui	t9,0x0
      48:	24010009 	li	at,9
      4c:	14410041 	bne	v0,at,154 <EnHeishi2_Init+0x154>
      50:	24050000 	li	a1,0
      54:	8e080004 	lw	t0,4(s0)
      58:	2401fffe 	li	at,-2
      5c:	27390000 	addiu	t9,t9,0
      60:	01014824 	and	t1,t0,at
      64:	ae190134 	sw	t9,308(s0)
      68:	ae090004 	sw	t1,4(s0)
      6c:	24851c24 	addiu	a1,a0,7204
      70:	02003025 	move	a2,s0
      74:	0c000000 	jal	0 <EnHeishi2_Init>
      78:	24070006 	li	a3,6
      7c:	860a02fe 	lh	t2,766(s0)
      80:	24010006 	li	at,6
      84:	3c0b0000 	lui	t3,0x0
      88:	15410004 	bne	t2,at,9c <EnHeishi2_Init+0x9c>
      8c:	3c040000 	lui	a0,0x0
      90:	256b0000 	addiu	t3,t3,0
      94:	10000090 	b	2d8 <EnHeishi2_Init+0x2d8>
      98:	ae0b025c 	sw	t3,604(s0)
      9c:	0c000000 	jal	0 <EnHeishi2_Init>
      a0:	24840000 	addiu	a0,a0,0
      a4:	3c040000 	lui	a0,0x0
      a8:	0c000000 	jal	0 <EnHeishi2_Init>
      ac:	24840004 	addiu	a0,a0,4
      b0:	3c053ca3 	lui	a1,0x3ca3
      b4:	34a5d70a 	ori	a1,a1,0xd70a
      b8:	0c000000 	jal	0 <EnHeishi2_Init>
      bc:	02002025 	move	a0,s0
      c0:	3c0142b4 	lui	at,0x42b4
      c4:	44810000 	mtc1	at,$f0
      c8:	c6040024 	lwc1	$f4,36(s0)
      cc:	3c014270 	lui	at,0x4270
      d0:	8e0d0024 	lw	t5,36(s0)
      d4:	44815000 	mtc1	at,$f10
      d8:	c6080028 	lwc1	$f8,40(s0)
      dc:	c612002c 	lwc1	$f18,44(s0)
      e0:	46002180 	add.s	$f6,$f4,$f0
      e4:	240e7918 	li	t6,31000
      e8:	a60e0032 	sh	t6,50(s0)
      ec:	460a4401 	sub.s	$f16,$f8,$f10
      f0:	ae0d0274 	sw	t5,628(s0)
      f4:	8e0d002c 	lw	t5,44(s0)
      f8:	46009100 	add.s	$f4,$f18,$f0
      fc:	8e0c0028 	lw	t4,40(s0)
     100:	860f0032 	lh	t7,50(s0)
     104:	e6060024 	swc1	$f6,36(s0)
     108:	e6100028 	swc1	$f16,40(s0)
     10c:	e604002c 	swc1	$f4,44(s0)
     110:	ae0d027c 	sw	t5,636(s0)
     114:	ae0c0278 	sw	t4,632(s0)
     118:	a60f00b6 	sh	t7,182(s0)
     11c:	8fa40044 	lw	a0,68(sp)
     120:	0c000000 	jal	0 <EnHeishi2_Init>
     124:	26050398 	addiu	a1,s0,920
     128:	8fa40044 	lw	a0,68(sp)
     12c:	00002825 	move	a1,zero
     130:	0c000000 	jal	0 <EnHeishi2_Init>
     134:	24060008 	li	a2,8
     138:	8e180004 	lw	t8,4(s0)
     13c:	3c080000 	lui	t0,0x0
     140:	25080000 	addiu	t0,t0,0
     144:	37190011 	ori	t9,t8,0x11
     148:	ae190004 	sw	t9,4(s0)
     14c:	10000062 	b	2d8 <EnHeishi2_Init+0x2d8>
     150:	ae08025c 	sw	t0,604(s0)
     154:	3c014270 	lui	at,0x4270
     158:	44813000 	mtc1	at,$f6
     15c:	3c060000 	lui	a2,0x0
     160:	24c60000 	addiu	a2,a2,0
     164:	260400b4 	addiu	a0,s0,180
     168:	3c0741f0 	lui	a3,0x41f0
     16c:	0c000000 	jal	0 <EnHeishi2_Init>
     170:	e60602e0 	swc1	$f6,736(s0)
     174:	3c060000 	lui	a2,0x0
     178:	3c070000 	lui	a3,0x0
     17c:	26090190 	addiu	t1,s0,400
     180:	260a01f6 	addiu	t2,s0,502
     184:	240b0011 	li	t3,17
     188:	afab0018 	sw	t3,24(sp)
     18c:	afaa0014 	sw	t2,20(sp)
     190:	afa90010 	sw	t1,16(sp)
     194:	24e70000 	addiu	a3,a3,0
     198:	24c60000 	addiu	a2,a2,0
     19c:	8fa40044 	lw	a0,68(sp)
     1a0:	0c000000 	jal	0 <EnHeishi2_Init>
     1a4:	2605014c 	addiu	a1,s0,332
     1a8:	26050398 	addiu	a1,s0,920
     1ac:	afa50030 	sw	a1,48(sp)
     1b0:	0c000000 	jal	0 <EnHeishi2_Init>
     1b4:	8fa40044 	lw	a0,68(sp)
     1b8:	3c070000 	lui	a3,0x0
     1bc:	24e70020 	addiu	a3,a3,32
     1c0:	8fa40044 	lw	a0,68(sp)
     1c4:	8fa50030 	lw	a1,48(sp)
     1c8:	0c000000 	jal	0 <EnHeishi2_Init>
     1cc:	02003025 	move	a2,s0
     1d0:	860202fe 	lh	v0,766(s0)
     1d4:	24030006 	li	v1,6
     1d8:	240c000f 	li	t4,15
     1dc:	240d0046 	li	t5,70
     1e0:	24010002 	li	at,2
     1e4:	a60003dc 	sh	zero,988(s0)
     1e8:	a60c03d8 	sh	t4,984(s0)
     1ec:	a60d03da 	sh	t5,986(s0)
     1f0:	10410008 	beq	v0,at,214 <EnHeishi2_Init+0x214>
     1f4:	a203001f 	sb	v1,31(s0)
     1f8:	24010005 	li	at,5
     1fc:	1041000c 	beq	v0,at,230 <EnHeishi2_Init+0x230>
     200:	3c0f0000 	lui	t7,0x0
     204:	10430010 	beq	v0,v1,248 <EnHeishi2_Init+0x248>
     208:	3c040000 	lui	a0,0x0
     20c:	1000001e 	b	288 <EnHeishi2_Init+0x288>
     210:	8609001c 	lh	t1,28(s0)
     214:	3c01bf80 	lui	at,0xbf80
     218:	44814000 	mtc1	at,$f8
     21c:	3c0e0000 	lui	t6,0x0
     220:	25ce0000 	addiu	t6,t6,0
     224:	ae0e025c 	sw	t6,604(s0)
     228:	10000016 	b	284 <EnHeishi2_Init+0x284>
     22c:	e608006c 	swc1	$f8,108(s0)
     230:	3c01bf80 	lui	at,0xbf80
     234:	44815000 	mtc1	at,$f10
     238:	25ef0000 	addiu	t7,t7,0
     23c:	ae0f025c 	sw	t7,604(s0)
     240:	10000010 	b	284 <EnHeishi2_Init+0x284>
     244:	e60a006c 	swc1	$f10,108(s0)
     248:	0c000000 	jal	0 <EnHeishi2_Init>
     24c:	2484003c 	addiu	a0,a0,60
     250:	3c040000 	lui	a0,0x0
     254:	0c000000 	jal	0 <EnHeishi2_Init>
     258:	24840040 	addiu	a0,a0,64
     25c:	8fa40044 	lw	a0,68(sp)
     260:	0c000000 	jal	0 <EnHeishi2_Init>
     264:	8fa50030 	lw	a1,48(sp)
     268:	8e180004 	lw	t8,4(s0)
     26c:	2401fff6 	li	at,-10
     270:	3c080000 	lui	t0,0x0
     274:	25080000 	addiu	t0,t0,0
     278:	0301c824 	and	t9,t8,at
     27c:	ae190004 	sw	t9,4(s0)
     280:	ae08025c 	sw	t0,604(s0)
     284:	8609001c 	lh	t1,28(s0)
     288:	3c040000 	lui	a0,0x0
     28c:	24840074 	addiu	a0,a0,116
     290:	00095203 	sra	t2,t1,0x8
     294:	314b00ff 	andi	t3,t2,0xff
     298:	0c000000 	jal	0 <EnHeishi2_Init>
     29c:	a60b02f0 	sh	t3,752(s0)
     2a0:	3c040000 	lui	a0,0x0
     2a4:	24840078 	addiu	a0,a0,120
     2a8:	0c000000 	jal	0 <EnHeishi2_Init>
     2ac:	8605001c 	lh	a1,28(s0)
     2b0:	3c040000 	lui	a0,0x0
     2b4:	248400b0 	addiu	a0,a0,176
     2b8:	0c000000 	jal	0 <EnHeishi2_Init>
     2bc:	860502fe 	lh	a1,766(s0)
     2c0:	8605001c 	lh	a1,28(s0)
     2c4:	3c040000 	lui	a0,0x0
     2c8:	248400e8 	addiu	a0,a0,232
     2cc:	00052a03 	sra	a1,a1,0x8
     2d0:	0c000000 	jal	0 <EnHeishi2_Init>
     2d4:	30a5000f 	andi	a1,a1,0xf
     2d8:	8fbf002c 	lw	ra,44(sp)
     2dc:	8fb00028 	lw	s0,40(sp)
     2e0:	27bd0040 	addiu	sp,sp,64
     2e4:	03e00008 	jr	ra
     2e8:	00000000 	nop

000002ec <EnHeishi2_Destroy>:
     2ec:	27bdffe8 	addiu	sp,sp,-24
     2f0:	afbf0014 	sw	ra,20(sp)
     2f4:	848e03d8 	lh	t6,984(a0)
     2f8:	00803025 	move	a2,a0
     2fc:	00a03825 	move	a3,a1
     300:	15c00004 	bnez	t6,314 <EnHeishi2_Destroy+0x28>
     304:	24c50398 	addiu	a1,a2,920
     308:	848f03da 	lh	t7,986(a0)
     30c:	51e00004 	beqzl	t7,320 <EnHeishi2_Destroy+0x34>
     310:	8fbf0014 	lw	ra,20(sp)
     314:	0c000000 	jal	0 <EnHeishi2_Init>
     318:	00e02025 	move	a0,a3
     31c:	8fbf0014 	lw	ra,20(sp)
     320:	27bd0018 	addiu	sp,sp,24
     324:	03e00008 	jr	ra
     328:	00000000 	nop

0000032c <func_80A531CC>:
     32c:	afa40000 	sw	a0,0(sp)
     330:	03e00008 	jr	ra
     334:	afa50004 	sw	a1,4(sp)

00000338 <func_80A531D8>:
     338:	afa40000 	sw	a0,0(sp)
     33c:	03e00008 	jr	ra
     340:	afa50004 	sw	a1,4(sp)

00000344 <func_80A531E4>:
     344:	27bdffd8 	addiu	sp,sp,-40
     348:	afa40028 	sw	a0,40(sp)
     34c:	afbf0024 	sw	ra,36(sp)
     350:	3c040000 	lui	a0,0x0
     354:	afa5002c 	sw	a1,44(sp)
     358:	0c000000 	jal	0 <EnHeishi2_Init>
     35c:	24840000 	addiu	a0,a0,0
     360:	44822000 	mtc1	v0,$f4
     364:	3c01c120 	lui	at,0xc120
     368:	44819000 	mtc1	at,$f18
     36c:	468021a0 	cvt.s.w	$f6,$f4
     370:	8fa40028 	lw	a0,40(sp)
     374:	3c050000 	lui	a1,0x0
     378:	24a50000 	addiu	a1,a1,0
     37c:	3c063f80 	lui	a2,0x3f80
     380:	24070000 	li	a3,0
     384:	4600320d 	trunc.w.s	$f8,$f6
     388:	afa00014 	sw	zero,20(sp)
     38c:	e7b20018 	swc1	$f18,24(sp)
     390:	2484014c 	addiu	a0,a0,332
     394:	440f4000 	mfc1	t7,$f8
     398:	00000000 	nop
     39c:	000fc400 	sll	t8,t7,0x10
     3a0:	0018cc03 	sra	t9,t8,0x10
     3a4:	44995000 	mtc1	t9,$f10
     3a8:	00000000 	nop
     3ac:	46805420 	cvt.s.w	$f16,$f10
     3b0:	0c000000 	jal	0 <EnHeishi2_Init>
     3b4:	e7b00010 	swc1	$f16,16(sp)
     3b8:	8fa90028 	lw	t1,40(sp)
     3bc:	3c080000 	lui	t0,0x0
     3c0:	25080000 	addiu	t0,t0,0
     3c4:	ad28025c 	sw	t0,604(t1)
     3c8:	8fbf0024 	lw	ra,36(sp)
     3cc:	27bd0028 	addiu	sp,sp,40
     3d0:	03e00008 	jr	ra
     3d4:	00000000 	nop

000003d8 <func_80A53278>:
     3d8:	27bdffe0 	addiu	sp,sp,-32
     3dc:	afb00018 	sw	s0,24(sp)
     3e0:	afbf001c 	sw	ra,28(sp)
     3e4:	afa50024 	sw	a1,36(sp)
     3e8:	00808025 	move	s0,a0
     3ec:	a080030b 	sb	zero,779(a0)
     3f0:	a480030e 	sh	zero,782(a0)
     3f4:	8fa40024 	lw	a0,36(sp)
     3f8:	0c000000 	jal	0 <EnHeishi2_Init>
     3fc:	24050005 	li	a1,5
     400:	1040000c 	beqz	v0,434 <func_80A53278+0x5c>
     404:	8fa40024 	lw	a0,36(sp)
     408:	0c000000 	jal	0 <EnHeishi2_Init>
     40c:	24050005 	li	a1,5
     410:	3c180000 	lui	t8,0x0
     414:	240e0001 	li	t6,1
     418:	240f0006 	li	t7,6
     41c:	27180000 	addiu	t8,t8,0
     420:	a602010e 	sh	v0,270(s0)
     424:	a20e030b 	sb	t6,779(s0)
     428:	a60f0300 	sh	t7,768(s0)
     42c:	1000005a 	b	598 <func_80A53278+0x1c0>
     430:	ae18025c 	sw	t8,604(s0)
     434:	3c020000 	lui	v0,0x0
     438:	24420000 	addiu	v0,v0,0
     43c:	94590ed4 	lhu	t9,3796(v0)
     440:	33280200 	andi	t0,t9,0x200
     444:	51000015 	beqzl	t0,49c <func_80A53278+0xc4>
     448:	8c580010 	lw	t8,16(v0)
     44c:	94490ed8 	lhu	t1,3800(v0)
     450:	312a0020 	andi	t2,t1,0x20
     454:	51400011 	beqzl	t2,49c <func_80A53278+0xc4>
     458:	8c580010 	lw	t8,16(v0)
     45c:	944b0eda 	lhu	t3,3802(v0)
     460:	3c040000 	lui	a0,0x0
     464:	316c0080 	andi	t4,t3,0x80
     468:	5180000c 	beqzl	t4,49c <func_80A53278+0xc4>
     46c:	8c580010 	lw	t8,16(v0)
     470:	0c000000 	jal	0 <EnHeishi2_Init>
     474:	24840120 	addiu	a0,a0,288
     478:	3c0f0000 	lui	t7,0x0
     47c:	240d0006 	li	t5,6
     480:	240e7006 	li	t6,28678
     484:	25ef0000 	addiu	t7,t7,0
     488:	a60d0300 	sh	t5,768(s0)
     48c:	a60e010e 	sh	t6,270(s0)
     490:	10000041 	b	598 <func_80A53278+0x1c0>
     494:	ae0f025c 	sw	t7,604(s0)
     498:	8c580010 	lw	t8,16(v0)
     49c:	3c040000 	lui	a0,0x0
     4a0:	5300000c 	beqzl	t8,4d4 <func_80A53278+0xfc>
     4a4:	920a030c 	lbu	t2,780(s0)
     4a8:	0c000000 	jal	0 <EnHeishi2_Init>
     4ac:	24840154 	addiu	a0,a0,340
     4b0:	3c090000 	lui	t1,0x0
     4b4:	24190006 	li	t9,6
     4b8:	24087002 	li	t0,28674
     4bc:	25290000 	addiu	t1,t1,0
     4c0:	a6190300 	sh	t9,768(s0)
     4c4:	a608010e 	sh	t0,270(s0)
     4c8:	10000033 	b	598 <func_80A53278+0x1c0>
     4cc:	ae09025c 	sw	t1,604(s0)
     4d0:	920a030c 	lbu	t2,780(s0)
     4d4:	3c040000 	lui	a0,0x0
     4d8:	5140000c 	beqzl	t2,50c <func_80A53278+0x134>
     4dc:	944e0ed6 	lhu	t6,3798(v0)
     4e0:	0c000000 	jal	0 <EnHeishi2_Init>
     4e4:	24840188 	addiu	a0,a0,392
     4e8:	3c0d0000 	lui	t5,0x0
     4ec:	240b0006 	li	t3,6
     4f0:	240c7099 	li	t4,28825
     4f4:	25ad0000 	addiu	t5,t5,0
     4f8:	a60b0300 	sh	t3,768(s0)
     4fc:	a60c010e 	sh	t4,270(s0)
     500:	10000025 	b	598 <func_80A53278+0x1c0>
     504:	ae0d025c 	sw	t5,604(s0)
     508:	944e0ed6 	lhu	t6,3798(v0)
     50c:	3c040000 	lui	a0,0x0
     510:	31cf0004 	andi	t7,t6,0x4
     514:	11e00017 	beqz	t7,574 <func_80A53278+0x19c>
     518:	00000000 	nop
     51c:	8618030e 	lh	t8,782(s0)
     520:	3c040000 	lui	a0,0x0
     524:	17000009 	bnez	t8,54c <func_80A53278+0x174>
     528:	00000000 	nop
     52c:	3c040000 	lui	a0,0x0
     530:	0c000000 	jal	0 <EnHeishi2_Init>
     534:	248401b8 	addiu	a0,a0,440
     538:	24197071 	li	t9,28785
     53c:	24080001 	li	t0,1
     540:	a619010e 	sh	t9,270(s0)
     544:	10000005 	b	55c <func_80A53278+0x184>
     548:	a608030e 	sh	t0,782(s0)
     54c:	0c000000 	jal	0 <EnHeishi2_Init>
     550:	248401ec 	addiu	a0,a0,492
     554:	24097072 	li	t1,28786
     558:	a609010e 	sh	t1,270(s0)
     55c:	3c0b0000 	lui	t3,0x0
     560:	240a0004 	li	t2,4
     564:	256b0000 	addiu	t3,t3,0
     568:	a60a0300 	sh	t2,768(s0)
     56c:	1000000a 	b	598 <func_80A53278+0x1c0>
     570:	ae0b025c 	sw	t3,604(s0)
     574:	0c000000 	jal	0 <EnHeishi2_Init>
     578:	24840220 	addiu	a0,a0,544
     57c:	3c0e0000 	lui	t6,0x0
     580:	240c0006 	li	t4,6
     584:	240d7029 	li	t5,28713
     588:	25ce0000 	addiu	t6,t6,0
     58c:	a60c0300 	sh	t4,768(s0)
     590:	a60d010e 	sh	t5,270(s0)
     594:	ae0e025c 	sw	t6,604(s0)
     598:	8fbf001c 	lw	ra,28(sp)
     59c:	8fb00018 	lw	s0,24(sp)
     5a0:	27bd0020 	addiu	sp,sp,32
     5a4:	03e00008 	jr	ra
     5a8:	00000000 	nop

000005ac <func_80A5344C>:
     5ac:	27bdffe0 	addiu	sp,sp,-32
     5b0:	afb00018 	sw	s0,24(sp)
     5b4:	00808025 	move	s0,a0
     5b8:	afbf001c 	sw	ra,28(sp)
     5bc:	afa50024 	sw	a1,36(sp)
     5c0:	0c000000 	jal	0 <EnHeishi2_Init>
     5c4:	2484014c 	addiu	a0,a0,332
     5c8:	8fa40024 	lw	a0,36(sp)
     5cc:	0c000000 	jal	0 <EnHeishi2_Init>
     5d0:	248420d8 	addiu	a0,a0,8408
     5d4:	24010004 	li	at,4
     5d8:	5441002b 	bnel	v0,at,688 <func_80A5344C+0xdc>
     5dc:	8fbf001c 	lw	ra,28(sp)
     5e0:	0c000000 	jal	0 <EnHeishi2_Init>
     5e4:	8fa40024 	lw	a0,36(sp)
     5e8:	10400026 	beqz	v0,684 <func_80A5344C+0xd8>
     5ec:	240e0005 	li	t6,5
     5f0:	a60e0300 	sh	t6,768(s0)
     5f4:	8faf0024 	lw	t7,36(sp)
     5f8:	3c020001 	lui	v0,0x1
     5fc:	24010001 	li	at,1
     600:	004f1021 	addu	v0,v0,t7
     604:	904204bd 	lbu	v0,1213(v0)
     608:	3c180000 	lui	t8,0x0
     60c:	10400005 	beqz	v0,624 <func_80A5344C+0x78>
     610:	00000000 	nop
     614:	10410014 	beq	v0,at,668 <func_80A5344C+0xbc>
     618:	240b7096 	li	t3,28822
     61c:	10000017 	b	67c <func_80A5344C+0xd0>
     620:	8fa40024 	lw	a0,36(sp)
     624:	87180034 	lh	t8,52(t8)
     628:	3c0a0000 	lui	t2,0x0
     62c:	24097097 	li	t1,28823
     630:	2b01000a 	slti	at,t8,10
     634:	14200009 	bnez	at,65c <func_80A5344C+0xb0>
     638:	254a0000 	addiu	t2,t2,0
     63c:	0c000000 	jal	0 <EnHeishi2_Init>
     640:	2404fff6 	li	a0,-10
     644:	3c080000 	lui	t0,0x0
     648:	24197098 	li	t9,28824
     64c:	25080000 	addiu	t0,t0,0
     650:	a619010e 	sh	t9,270(s0)
     654:	10000008 	b	678 <func_80A5344C+0xcc>
     658:	ae08025c 	sw	t0,604(s0)
     65c:	a609010e 	sh	t1,270(s0)
     660:	10000005 	b	678 <func_80A5344C+0xcc>
     664:	ae0a025c 	sw	t2,604(s0)
     668:	3c0c0000 	lui	t4,0x0
     66c:	258c0000 	addiu	t4,t4,0
     670:	a60b010e 	sh	t3,270(s0)
     674:	ae0c025c 	sw	t4,604(s0)
     678:	8fa40024 	lw	a0,36(sp)
     67c:	0c000000 	jal	0 <EnHeishi2_Init>
     680:	9605010e 	lhu	a1,270(s0)
     684:	8fbf001c 	lw	ra,28(sp)
     688:	8fb00018 	lw	s0,24(sp)
     68c:	27bd0020 	addiu	sp,sp,32
     690:	03e00008 	jr	ra
     694:	00000000 	nop

00000698 <func_80A53538>:
     698:	27bdffe8 	addiu	sp,sp,-24
     69c:	afbf0014 	sw	ra,20(sp)
     6a0:	afa40018 	sw	a0,24(sp)
     6a4:	afa5001c 	sw	a1,28(sp)
     6a8:	0c000000 	jal	0 <EnHeishi2_Init>
     6ac:	2484014c 	addiu	a0,a0,332
     6b0:	8fa4001c 	lw	a0,28(sp)
     6b4:	0c000000 	jal	0 <EnHeishi2_Init>
     6b8:	248420d8 	addiu	a0,a0,8408
     6bc:	8fae0018 	lw	t6,24(sp)
     6c0:	85cf0300 	lh	t7,768(t6)
     6c4:	55e20012 	bnel	t7,v0,710 <func_80A53538+0x78>
     6c8:	8fbf0014 	lw	ra,20(sp)
     6cc:	0c000000 	jal	0 <EnHeishi2_Init>
     6d0:	8fa4001c 	lw	a0,28(sp)
     6d4:	1040000d 	beqz	v0,70c <func_80A53538+0x74>
     6d8:	8fa4001c 	lw	a0,28(sp)
     6dc:	00002825 	move	a1,zero
     6e0:	0c000000 	jal	0 <EnHeishi2_Init>
     6e4:	24060008 	li	a2,8
     6e8:	8fb9001c 	lw	t9,28(sp)
     6ec:	3c010001 	lui	at,0x1
     6f0:	24180037 	li	t8,55
     6f4:	00390821 	addu	at,at,t9
     6f8:	a03803dc 	sb	t8,988(at)
     6fc:	8fa90018 	lw	t1,24(sp)
     700:	3c080000 	lui	t0,0x0
     704:	25080000 	addiu	t0,t0,0
     708:	ad28025c 	sw	t0,604(t1)
     70c:	8fbf0014 	lw	ra,20(sp)
     710:	27bd0018 	addiu	sp,sp,24
     714:	03e00008 	jr	ra
     718:	00000000 	nop

0000071c <func_80A535BC>:
     71c:	27bdffd8 	addiu	sp,sp,-40
     720:	afa40028 	sw	a0,40(sp)
     724:	afbf0024 	sw	ra,36(sp)
     728:	3c040000 	lui	a0,0x0
     72c:	afa5002c 	sw	a1,44(sp)
     730:	0c000000 	jal	0 <EnHeishi2_Init>
     734:	24840000 	addiu	a0,a0,0
     738:	44822000 	mtc1	v0,$f4
     73c:	8fa30028 	lw	v1,40(sp)
     740:	3c01c120 	lui	at,0xc120
     744:	46802020 	cvt.s.w	$f0,$f4
     748:	44813000 	mtc1	at,$f6
     74c:	3c050000 	lui	a1,0x0
     750:	240e0002 	li	t6,2
     754:	24a50000 	addiu	a1,a1,0
     758:	3c063f80 	lui	a2,0x3f80
     75c:	e46002ec 	swc1	$f0,748(v1)
     760:	afae0014 	sw	t6,20(sp)
     764:	e7a00010 	swc1	$f0,16(sp)
     768:	24070000 	li	a3,0
     76c:	2464014c 	addiu	a0,v1,332
     770:	0c000000 	jal	0 <EnHeishi2_Init>
     774:	e7a60018 	swc1	$f6,24(sp)
     778:	8fb80028 	lw	t8,40(sp)
     77c:	3c0f0000 	lui	t7,0x0
     780:	25ef0000 	addiu	t7,t7,0
     784:	af0f025c 	sw	t7,604(t8)
     788:	8fbf0024 	lw	ra,36(sp)
     78c:	27bd0028 	addiu	sp,sp,40
     790:	03e00008 	jr	ra
     794:	00000000 	nop

00000798 <func_80A53638>:
     798:	27bdffd0 	addiu	sp,sp,-48
     79c:	afbf001c 	sw	ra,28(sp)
     7a0:	afb00018 	sw	s0,24(sp)
     7a4:	c4840164 	lwc1	$f4,356(a0)
     7a8:	00808025 	move	s0,a0
     7ac:	2484014c 	addiu	a0,a0,332
     7b0:	e7a40028 	swc1	$f4,40(sp)
     7b4:	8ca21c6c 	lw	v0,7276(a1)
     7b8:	0c000000 	jal	0 <EnHeishi2_Init>
     7bc:	afa20024 	sw	v0,36(sp)
     7c0:	3c014140 	lui	at,0x4140
     7c4:	44814000 	mtc1	at,$f8
     7c8:	c7a60028 	lwc1	$f6,40(sp)
     7cc:	8fa20024 	lw	v0,36(sp)
     7d0:	4606403e 	c.le.s	$f8,$f6
     7d4:	00000000 	nop
     7d8:	4502000c 	bc1fl	80c <func_80A53638+0x74>
     7dc:	c7aa0028 	lwc1	$f10,40(sp)
     7e0:	920e0308 	lbu	t6,776(s0)
     7e4:	02002025 	move	a0,s0
     7e8:	24052823 	li	a1,10275
     7ec:	55c00007 	bnezl	t6,80c <func_80A53638+0x74>
     7f0:	c7aa0028 	lwc1	$f10,40(sp)
     7f4:	0c000000 	jal	0 <EnHeishi2_Init>
     7f8:	afa20024 	sw	v0,36(sp)
     7fc:	8fa20024 	lw	v0,36(sp)
     800:	240f0001 	li	t7,1
     804:	a20f0308 	sb	t7,776(s0)
     808:	c7aa0028 	lwc1	$f10,40(sp)
     80c:	c61002ec 	lwc1	$f16,748(s0)
     810:	3c040000 	lui	a0,0x0
     814:	24840254 	addiu	a0,a0,596
     818:	460a803e 	c.le.s	$f16,$f10
     81c:	00000000 	nop
     820:	45020016 	bc1fl	87c <func_80A53638+0xe4>
     824:	8fbf001c 	lw	ra,28(sp)
     828:	1040000e 	beqz	v0,864 <func_80A53638+0xcc>
     82c:	240300f8 	li	v1,248
     830:	84580000 	lh	t8,0(v0)
     834:	50780004 	beql	v1,t8,848 <func_80A53638+0xb0>
     838:	ae020314 	sw	v0,788(s0)
     83c:	10000007 	b	85c <func_80A53638+0xc4>
     840:	8c420124 	lw	v0,292(v0)
     844:	ae020314 	sw	v0,788(s0)
     848:	24080000 	li	t0,0
     84c:	24090001 	li	t1,1
     850:	ac49016c 	sw	t1,364(v0)
     854:	10000003 	b	864 <func_80A53638+0xcc>
     858:	ac480168 	sw	t0,360(v0)
     85c:	5440fff5 	bnezl	v0,834 <func_80A53638+0x9c>
     860:	84580000 	lh	t8,0(v0)
     864:	0c000000 	jal	0 <EnHeishi2_Init>
     868:	8c450124 	lw	a1,292(v0)
     86c:	3c190000 	lui	t9,0x0
     870:	27390000 	addiu	t9,t9,0
     874:	ae19025c 	sw	t9,604(s0)
     878:	8fbf001c 	lw	ra,28(sp)
     87c:	8fb00018 	lw	s0,24(sp)
     880:	27bd0030 	addiu	sp,sp,48
     884:	03e00008 	jr	ra
     888:	00000000 	nop

0000088c <func_80A5372C>:
     88c:	27bdffd0 	addiu	sp,sp,-48
     890:	afb00028 	sw	s0,40(sp)
     894:	00808025 	move	s0,a0
     898:	afbf002c 	sw	ra,44(sp)
     89c:	3c040000 	lui	a0,0x0
     8a0:	afa50034 	sw	a1,52(sp)
     8a4:	0c000000 	jal	0 <EnHeishi2_Init>
     8a8:	24840000 	addiu	a0,a0,0
     8ac:	44822000 	mtc1	v0,$f4
     8b0:	3c01c120 	lui	at,0xc120
     8b4:	44819000 	mtc1	at,$f18
     8b8:	468021a0 	cvt.s.w	$f6,$f4
     8bc:	3c050000 	lui	a1,0x0
     8c0:	24a50000 	addiu	a1,a1,0
     8c4:	2604014c 	addiu	a0,s0,332
     8c8:	3c063f80 	lui	a2,0x3f80
     8cc:	24070000 	li	a3,0
     8d0:	4600320d 	trunc.w.s	$f8,$f6
     8d4:	afa00014 	sw	zero,20(sp)
     8d8:	e7b20018 	swc1	$f18,24(sp)
     8dc:	440f4000 	mfc1	t7,$f8
     8e0:	00000000 	nop
     8e4:	000fc400 	sll	t8,t7,0x10
     8e8:	0018cc03 	sra	t9,t8,0x10
     8ec:	44995000 	mtc1	t9,$f10
     8f0:	00000000 	nop
     8f4:	46805420 	cvt.s.w	$f16,$f10
     8f8:	0c000000 	jal	0 <EnHeishi2_Init>
     8fc:	e7b00010 	swc1	$f16,16(sp)
     900:	240800c8 	li	t0,200
     904:	a60802f2 	sh	t0,754(s0)
     908:	0c000000 	jal	0 <EnHeishi2_Init>
     90c:	8fa40034 	lw	a0,52(sp)
     910:	a6020310 	sh	v0,784(s0)
     914:	8fa40034 	lw	a0,52(sp)
     918:	00002825 	move	a1,zero
     91c:	0c000000 	jal	0 <EnHeishi2_Init>
     920:	24060001 	li	a2,1
     924:	8fa40034 	lw	a0,52(sp)
     928:	86050310 	lh	a1,784(s0)
     92c:	0c000000 	jal	0 <EnHeishi2_Init>
     930:	24060007 	li	a2,7
     934:	3c010000 	lui	at,0x0
     938:	c4240390 	lwc1	$f4,912(at)
     93c:	3c010000 	lui	at,0x0
     940:	86050310 	lh	a1,784(s0)
     944:	e6040280 	swc1	$f4,640(s0)
     948:	c4260394 	lwc1	$f6,916(at)
     94c:	3c010000 	lui	at,0x0
     950:	26060280 	addiu	a2,s0,640
     954:	e6060284 	swc1	$f6,644(s0)
     958:	c4280398 	lwc1	$f8,920(at)
     95c:	3c010000 	lui	at,0x0
     960:	2607028c 	addiu	a3,s0,652
     964:	e6080288 	swc1	$f8,648(s0)
     968:	c42a039c 	lwc1	$f10,924(at)
     96c:	3c010000 	lui	at,0x0
     970:	e60a028c 	swc1	$f10,652(s0)
     974:	c43003a0 	lwc1	$f16,928(at)
     978:	3c010000 	lui	at,0x0
     97c:	e6100290 	swc1	$f16,656(s0)
     980:	c43203a4 	lwc1	$f18,932(at)
     984:	e6120294 	swc1	$f18,660(s0)
     988:	0c000000 	jal	0 <EnHeishi2_Init>
     98c:	8fa40034 	lw	a0,52(sp)
     990:	3c090000 	lui	t1,0x0
     994:	25290000 	addiu	t1,t1,0
     998:	ae09025c 	sw	t1,604(s0)
     99c:	8fbf002c 	lw	ra,44(sp)
     9a0:	8fb00028 	lw	s0,40(sp)
     9a4:	27bd0030 	addiu	sp,sp,48
     9a8:	03e00008 	jr	ra
     9ac:	00000000 	nop

000009b0 <func_80A53850>:
     9b0:	27bdffe0 	addiu	sp,sp,-32
     9b4:	afb00014 	sw	s0,20(sp)
     9b8:	00808025 	move	s0,a0
     9bc:	afbf001c 	sw	ra,28(sp)
     9c0:	afb10018 	sw	s1,24(sp)
     9c4:	00a08825 	move	s1,a1
     9c8:	0c000000 	jal	0 <EnHeishi2_Init>
     9cc:	2484014c 	addiu	a0,a0,332
     9d0:	02202025 	move	a0,s1
     9d4:	86050310 	lh	a1,784(s0)
     9d8:	26060280 	addiu	a2,s0,640
     9dc:	0c000000 	jal	0 <EnHeishi2_Init>
     9e0:	2607028c 	addiu	a3,s0,652
     9e4:	860e02f2 	lh	t6,754(s0)
     9e8:	8e020314 	lw	v0,788(s0)
     9ec:	02202025 	move	a0,s1
     9f0:	11c00007 	beqz	t6,a10 <func_80A53850+0x60>
     9f4:	00000000 	nop
     9f8:	8c580168 	lw	t8,360(v0)
     9fc:	8c59016c 	lw	t9,364(v0)
     a00:	57000015 	bnezl	t8,a58 <func_80A53850+0xa8>
     a04:	8fbf001c 	lw	ra,28(sp)
     a08:	57200013 	bnezl	t9,a58 <func_80A53850+0xa8>
     a0c:	8fbf001c 	lw	ra,28(sp)
     a10:	0c000000 	jal	0 <EnHeishi2_Init>
     a14:	86050310 	lh	a1,784(s0)
     a18:	02202025 	move	a0,s1
     a1c:	00002825 	move	a1,zero
     a20:	0c000000 	jal	0 <EnHeishi2_Init>
     a24:	24060007 	li	a2,7
     a28:	0c000000 	jal	0 <EnHeishi2_Init>
     a2c:	02202025 	move	a0,s1
     a30:	240f0001 	li	t7,1
     a34:	a20f030c 	sb	t7,780(s0)
     a38:	02202025 	move	a0,s1
     a3c:	00002825 	move	a1,zero
     a40:	0c000000 	jal	0 <EnHeishi2_Init>
     a44:	24060007 	li	a2,7
     a48:	3c080000 	lui	t0,0x0
     a4c:	25080000 	addiu	t0,t0,0
     a50:	ae08025c 	sw	t0,604(s0)
     a54:	8fbf001c 	lw	ra,28(sp)
     a58:	8fb00014 	lw	s0,20(sp)
     a5c:	8fb10018 	lw	s1,24(sp)
     a60:	03e00008 	jr	ra
     a64:	27bd0020 	addiu	sp,sp,32

00000a68 <func_80A53908>:
     a68:	27bdffd8 	addiu	sp,sp,-40
     a6c:	afa40028 	sw	a0,40(sp)
     a70:	afbf0024 	sw	ra,36(sp)
     a74:	3c040000 	lui	a0,0x0
     a78:	afa5002c 	sw	a1,44(sp)
     a7c:	0c000000 	jal	0 <EnHeishi2_Init>
     a80:	24840000 	addiu	a0,a0,0
     a84:	44822000 	mtc1	v0,$f4
     a88:	3c01c120 	lui	at,0xc120
     a8c:	44819000 	mtc1	at,$f18
     a90:	468021a0 	cvt.s.w	$f6,$f4
     a94:	8fa40028 	lw	a0,40(sp)
     a98:	3c050000 	lui	a1,0x0
     a9c:	24a50000 	addiu	a1,a1,0
     aa0:	3c063f80 	lui	a2,0x3f80
     aa4:	24070000 	li	a3,0
     aa8:	4600320d 	trunc.w.s	$f8,$f6
     aac:	afa00014 	sw	zero,20(sp)
     ab0:	e7b20018 	swc1	$f18,24(sp)
     ab4:	2484014c 	addiu	a0,a0,332
     ab8:	440f4000 	mfc1	t7,$f8
     abc:	00000000 	nop
     ac0:	000fc400 	sll	t8,t7,0x10
     ac4:	0018cc03 	sra	t9,t8,0x10
     ac8:	44995000 	mtc1	t9,$f10
     acc:	00000000 	nop
     ad0:	46805420 	cvt.s.w	$f16,$f10
     ad4:	0c000000 	jal	0 <EnHeishi2_Init>
     ad8:	e7b00010 	swc1	$f16,16(sp)
     adc:	8fa90028 	lw	t1,40(sp)
     ae0:	3c080000 	lui	t0,0x0
     ae4:	25080000 	addiu	t0,t0,0
     ae8:	ad28025c 	sw	t0,604(t1)
     aec:	8fbf0024 	lw	ra,36(sp)
     af0:	27bd0028 	addiu	sp,sp,40
     af4:	03e00008 	jr	ra
     af8:	00000000 	nop

00000afc <func_80A5399C>:
     afc:	27bdffe0 	addiu	sp,sp,-32
     b00:	afbf0014 	sw	ra,20(sp)
     b04:	afa50024 	sw	a1,36(sp)
     b08:	a080030b 	sb	zero,779(a0)
     b0c:	3c020000 	lui	v0,0x0
     b10:	94420f06 	lhu	v0,3846(v0)
     b14:	00803025 	move	a2,a0
     b18:	00001825 	move	v1,zero
     b1c:	304e0040 	andi	t6,v0,0x40
     b20:	11c00039 	beqz	t6,c08 <func_80A5399C+0x10c>
     b24:	3c040000 	lui	a0,0x0
     b28:	304f0080 	andi	t7,v0,0x80
     b2c:	15e0001a 	bnez	t7,b98 <func_80A5399C+0x9c>
     b30:	240d2020 	li	t5,8224
     b34:	8fa40024 	lw	a0,36(sp)
     b38:	0c000000 	jal	0 <EnHeishi2_Init>
     b3c:	afa60020 	sw	a2,32(sp)
     b40:	24010001 	li	at,1
     b44:	1441000e 	bne	v0,at,b80 <func_80A5399C+0x84>
     b48:	8fa60020 	lw	a2,32(sp)
     b4c:	90d80309 	lbu	t8,777(a2)
     b50:	24090004 	li	t1,4
     b54:	240a0001 	li	t2,1
     b58:	17000004 	bnez	t8,b6c <func_80A5399C+0x70>
     b5c:	24030001 	li	v1,1
     b60:	2419200a 	li	t9,8202
     b64:	10000003 	b	b74 <func_80A5399C+0x78>
     b68:	a4d9010e 	sh	t9,270(a2)
     b6c:	2408200b 	li	t0,8203
     b70:	a4c8010e 	sh	t0,270(a2)
     b74:	a4c90300 	sh	t1,768(a2)
     b78:	1000000b 	b	ba8 <func_80A5399C+0xac>
     b7c:	a0ca030b 	sb	t2,779(a2)
     b80:	240b2016 	li	t3,8214
     b84:	240c0006 	li	t4,6
     b88:	a4cb010e 	sh	t3,270(a2)
     b8c:	a4cc0300 	sh	t4,768(a2)
     b90:	10000005 	b	ba8 <func_80A5399C+0xac>
     b94:	24030001 	li	v1,1
     b98:	240e0005 	li	t6,5
     b9c:	a4cd010e 	sh	t5,270(a2)
     ba0:	a4ce0300 	sh	t6,768(a2)
     ba4:	a4c0030e 	sh	zero,782(a2)
     ba8:	8fa40024 	lw	a0,36(sp)
     bac:	24050005 	li	a1,5
     bb0:	a7a3001e 	sh	v1,30(sp)
     bb4:	0c000000 	jal	0 <EnHeishi2_Init>
     bb8:	afa60020 	sw	a2,32(sp)
     bbc:	87a3001e 	lh	v1,30(sp)
     bc0:	1040000d 	beqz	v0,bf8 <func_80A5399C+0xfc>
     bc4:	8fa60020 	lw	a2,32(sp)
     bc8:	1460000b 	bnez	v1,bf8 <func_80A5399C+0xfc>
     bcc:	8fa40024 	lw	a0,36(sp)
     bd0:	24050005 	li	a1,5
     bd4:	0c000000 	jal	0 <EnHeishi2_Init>
     bd8:	afa60020 	sw	a2,32(sp)
     bdc:	8fa60020 	lw	a2,32(sp)
     be0:	240f0001 	li	t7,1
     be4:	24180006 	li	t8,6
     be8:	a4c2010e 	sh	v0,270(a2)
     bec:	a0cf030b 	sb	t7,779(a2)
     bf0:	a4d80300 	sh	t8,768(a2)
     bf4:	a4c0030e 	sh	zero,782(a2)
     bf8:	3c190000 	lui	t9,0x0
     bfc:	27390000 	addiu	t9,t9,0
     c00:	10000008 	b	c24 <func_80A5399C+0x128>
     c04:	acd9025c 	sw	t9,604(a2)
     c08:	24840280 	addiu	a0,a0,640
     c0c:	0c000000 	jal	0 <EnHeishi2_Init>
     c10:	afa60020 	sw	a2,32(sp)
     c14:	8fa60020 	lw	a2,32(sp)
     c18:	3c080000 	lui	t0,0x0
     c1c:	25080000 	addiu	t0,t0,0
     c20:	acc8025c 	sw	t0,604(a2)
     c24:	8fbf0014 	lw	ra,20(sp)
     c28:	27bd0020 	addiu	sp,sp,32
     c2c:	03e00008 	jr	ra
     c30:	00000000 	nop

00000c34 <func_80A53AD4>:
     c34:	27bdffd8 	addiu	sp,sp,-40
     c38:	afbf001c 	sw	ra,28(sp)
     c3c:	afb00018 	sw	s0,24(sp)
     c40:	afa5002c 	sw	a1,44(sp)
     c44:	8caf1c44 	lw	t7,7236(a1)
     c48:	00808025 	move	s0,a0
     c4c:	2484014c 	addiu	a0,a0,332
     c50:	0c000000 	jal	0 <EnHeishi2_Init>
     c54:	afaf0024 	sw	t7,36(sp)
     c58:	8fa4002c 	lw	a0,44(sp)
     c5c:	0c000000 	jal	0 <EnHeishi2_Init>
     c60:	24050005 	li	a1,5
     c64:	10400006 	beqz	v0,c80 <func_80A53AD4+0x4c>
     c68:	2418200e 	li	t8,8206
     c6c:	8fa4002c 	lw	a0,44(sp)
     c70:	0c000000 	jal	0 <EnHeishi2_Init>
     c74:	24050005 	li	a1,5
     c78:	10000002 	b	c84 <func_80A53AD4+0x50>
     c7c:	a602010e 	sh	v0,270(s0)
     c80:	a618010e 	sh	t8,270(s0)
     c84:	24190006 	li	t9,6
     c88:	a6190300 	sh	t9,768(s0)
     c8c:	8fa5002c 	lw	a1,44(sp)
     c90:	0c000000 	jal	0 <EnHeishi2_Init>
     c94:	02002025 	move	a0,s0
     c98:	10400016 	beqz	v0,cf4 <func_80A53AD4+0xc0>
     c9c:	3c0142f0 	lui	at,0x42f0
     ca0:	0c000000 	jal	0 <EnHeishi2_Init>
     ca4:	8fa4002c 	lw	a0,44(sp)
     ca8:	24010001 	li	at,1
     cac:	1441000c 	bne	v0,at,ce0 <func_80A53AD4+0xac>
     cb0:	00000000 	nop
     cb4:	0c000000 	jal	0 <EnHeishi2_Init>
     cb8:	24044802 	li	a0,18434
     cbc:	8fa90024 	lw	t1,36(sp)
     cc0:	24082010 	li	t0,8208
     cc4:	3c0b0000 	lui	t3,0x0
     cc8:	240a0005 	li	t2,5
     ccc:	256b0000 	addiu	t3,t3,0
     cd0:	a528010e 	sh	t0,270(t1)
     cd4:	a60a0300 	sh	t2,768(s0)
     cd8:	1000001f 	b	d58 <func_80A53AD4+0x124>
     cdc:	ae0b025c 	sw	t3,604(s0)
     ce0:	1040001d 	beqz	v0,d58 <func_80A53AD4+0x124>
     ce4:	8fad0024 	lw	t5,36(sp)
     ce8:	240c200f 	li	t4,8207
     cec:	1000001a 	b	d58 <func_80A53AD4+0x124>
     cf0:	a5ac010e 	sh	t4,270(t5)
     cf4:	860e008a 	lh	t6,138(s0)
     cf8:	860f00b6 	lh	t7,182(s0)
     cfc:	44812000 	mtc1	at,$f4
     d00:	01cf1023 	subu	v0,t6,t7
     d04:	00021400 	sll	v0,v0,0x10
     d08:	00021403 	sra	v0,v0,0x10
     d0c:	04400004 	bltz	v0,d20 <func_80A53AD4+0xec>
     d10:	00021823 	negu	v1,v0
     d14:	00021c00 	sll	v1,v0,0x10
     d18:	10000003 	b	d28 <func_80A53AD4+0xf4>
     d1c:	00031c03 	sra	v1,v1,0x10
     d20:	00031c00 	sll	v1,v1,0x10
     d24:	00031c03 	sra	v1,v1,0x10
     d28:	c6060090 	lwc1	$f6,144(s0)
     d2c:	28614300 	slti	at,v1,17152
     d30:	4606203c 	c.lt.s	$f4,$f6
     d34:	00000000 	nop
     d38:	45030008 	bc1tl	d5c <func_80A53AD4+0x128>
     d3c:	8fbf001c 	lw	ra,28(sp)
     d40:	10200005 	beqz	at,d58 <func_80A53AD4+0x124>
     d44:	02002025 	move	a0,s0
     d48:	8fa5002c 	lw	a1,44(sp)
     d4c:	3c0642c8 	lui	a2,0x42c8
     d50:	0c000000 	jal	0 <EnHeishi2_Init>
     d54:	24070001 	li	a3,1
     d58:	8fbf001c 	lw	ra,28(sp)
     d5c:	8fb00018 	lw	s0,24(sp)
     d60:	27bd0028 	addiu	sp,sp,40
     d64:	03e00008 	jr	ra
     d68:	00000000 	nop

00000d6c <func_80A53C0C>:
     d6c:	27bdffe8 	addiu	sp,sp,-24
     d70:	afbf0014 	sw	ra,20(sp)
     d74:	afa40018 	sw	a0,24(sp)
     d78:	afa5001c 	sw	a1,28(sp)
     d7c:	0c000000 	jal	0 <EnHeishi2_Init>
     d80:	2484014c 	addiu	a0,a0,332
     d84:	8fa4001c 	lw	a0,28(sp)
     d88:	0c000000 	jal	0 <EnHeishi2_Init>
     d8c:	248420d8 	addiu	a0,a0,8408
     d90:	8fae0018 	lw	t6,24(sp)
     d94:	85cf0300 	lh	t7,768(t6)
     d98:	55e20012 	bnel	t7,v0,de4 <func_80A53C0C+0x78>
     d9c:	8fbf0014 	lw	ra,20(sp)
     da0:	0c000000 	jal	0 <EnHeishi2_Init>
     da4:	8fa4001c 	lw	a0,28(sp)
     da8:	1040000d 	beqz	v0,de0 <func_80A53C0C+0x74>
     dac:	8fa4001c 	lw	a0,28(sp)
     db0:	00002825 	move	a1,zero
     db4:	0c000000 	jal	0 <EnHeishi2_Init>
     db8:	24060008 	li	a2,8
     dbc:	8fb9001c 	lw	t9,28(sp)
     dc0:	3c010001 	lui	at,0x1
     dc4:	24180037 	li	t8,55
     dc8:	00390821 	addu	at,at,t9
     dcc:	a03803dc 	sb	t8,988(at)
     dd0:	8fa90018 	lw	t1,24(sp)
     dd4:	3c080000 	lui	t0,0x0
     dd8:	25080000 	addiu	t0,t0,0
     ddc:	ad28025c 	sw	t0,604(t1)
     de0:	8fbf0014 	lw	ra,20(sp)
     de4:	27bd0018 	addiu	sp,sp,24
     de8:	03e00008 	jr	ra
     dec:	00000000 	nop

00000df0 <func_80A53C90>:
     df0:	27bdffd8 	addiu	sp,sp,-40
     df4:	afa40028 	sw	a0,40(sp)
     df8:	afbf0024 	sw	ra,36(sp)
     dfc:	3c040000 	lui	a0,0x0
     e00:	afa5002c 	sw	a1,44(sp)
     e04:	0c000000 	jal	0 <EnHeishi2_Init>
     e08:	24840000 	addiu	a0,a0,0
     e0c:	44822000 	mtc1	v0,$f4
     e10:	8fa30028 	lw	v1,40(sp)
     e14:	3c01c120 	lui	at,0xc120
     e18:	46802020 	cvt.s.w	$f0,$f4
     e1c:	44813000 	mtc1	at,$f6
     e20:	3c050000 	lui	a1,0x0
     e24:	240e0002 	li	t6,2
     e28:	24a50000 	addiu	a1,a1,0
     e2c:	3c063f80 	lui	a2,0x3f80
     e30:	e46002ec 	swc1	$f0,748(v1)
     e34:	afae0014 	sw	t6,20(sp)
     e38:	e7a00010 	swc1	$f0,16(sp)
     e3c:	24070000 	li	a3,0
     e40:	2464014c 	addiu	a0,v1,332
     e44:	0c000000 	jal	0 <EnHeishi2_Init>
     e48:	e7a60018 	swc1	$f6,24(sp)
     e4c:	8fb80028 	lw	t8,40(sp)
     e50:	3c0f0000 	lui	t7,0x0
     e54:	25ef0000 	addiu	t7,t7,0
     e58:	af0f025c 	sw	t7,604(t8)
     e5c:	8fbf0024 	lw	ra,36(sp)
     e60:	27bd0028 	addiu	sp,sp,40
     e64:	03e00008 	jr	ra
     e68:	00000000 	nop

00000e6c <func_80A53D0C>:
     e6c:	27bdffd0 	addiu	sp,sp,-48
     e70:	afbf001c 	sw	ra,28(sp)
     e74:	afb00018 	sw	s0,24(sp)
     e78:	c4840164 	lwc1	$f4,356(a0)
     e7c:	00808025 	move	s0,a0
     e80:	2484014c 	addiu	a0,a0,332
     e84:	e7a40028 	swc1	$f4,40(sp)
     e88:	8ca21c6c 	lw	v0,7276(a1)
     e8c:	0c000000 	jal	0 <EnHeishi2_Init>
     e90:	afa20024 	sw	v0,36(sp)
     e94:	3c014140 	lui	at,0x4140
     e98:	44814000 	mtc1	at,$f8
     e9c:	c7a60028 	lwc1	$f6,40(sp)
     ea0:	8fa20024 	lw	v0,36(sp)
     ea4:	4606403e 	c.le.s	$f8,$f6
     ea8:	00000000 	nop
     eac:	4502000c 	bc1fl	ee0 <func_80A53D0C+0x74>
     eb0:	c7aa0028 	lwc1	$f10,40(sp)
     eb4:	920e0308 	lbu	t6,776(s0)
     eb8:	02002025 	move	a0,s0
     ebc:	24052823 	li	a1,10275
     ec0:	55c00007 	bnezl	t6,ee0 <func_80A53D0C+0x74>
     ec4:	c7aa0028 	lwc1	$f10,40(sp)
     ec8:	0c000000 	jal	0 <EnHeishi2_Init>
     ecc:	afa20024 	sw	v0,36(sp)
     ed0:	8fa20024 	lw	v0,36(sp)
     ed4:	240f0001 	li	t7,1
     ed8:	a20f0308 	sb	t7,776(s0)
     edc:	c7aa0028 	lwc1	$f10,40(sp)
     ee0:	c61002ec 	lwc1	$f16,748(s0)
     ee4:	3c040000 	lui	a0,0x0
     ee8:	248402b8 	addiu	a0,a0,696
     eec:	460a803e 	c.le.s	$f16,$f10
     ef0:	00000000 	nop
     ef4:	45020014 	bc1fl	f48 <func_80A53D0C+0xdc>
     ef8:	8fbf001c 	lw	ra,28(sp)
     efc:	1040000c 	beqz	v0,f30 <func_80A53D0C+0xc4>
     f00:	24030100 	li	v1,256
     f04:	84580000 	lh	t8,0(v0)
     f08:	50780004 	beql	v1,t8,f1c <func_80A53D0C+0xb0>
     f0c:	ae020314 	sw	v0,788(s0)
     f10:	10000005 	b	f28 <func_80A53D0C+0xbc>
     f14:	8c420124 	lw	v0,292(v0)
     f18:	ae020314 	sw	v0,788(s0)
     f1c:	24190001 	li	t9,1
     f20:	10000003 	b	f30 <func_80A53D0C+0xc4>
     f24:	a4590168 	sh	t9,360(v0)
     f28:	5440fff7 	bnezl	v0,f08 <func_80A53D0C+0x9c>
     f2c:	84580000 	lh	t8,0(v0)
     f30:	0c000000 	jal	0 <EnHeishi2_Init>
     f34:	8c450124 	lw	a1,292(v0)
     f38:	3c080000 	lui	t0,0x0
     f3c:	25080000 	addiu	t0,t0,0
     f40:	ae08025c 	sw	t0,604(s0)
     f44:	8fbf001c 	lw	ra,28(sp)
     f48:	8fb00018 	lw	s0,24(sp)
     f4c:	27bd0030 	addiu	sp,sp,48
     f50:	03e00008 	jr	ra
     f54:	00000000 	nop

00000f58 <func_80A53DF8>:
     f58:	27bdffd0 	addiu	sp,sp,-48
     f5c:	afb00028 	sw	s0,40(sp)
     f60:	00808025 	move	s0,a0
     f64:	afbf002c 	sw	ra,44(sp)
     f68:	3c040000 	lui	a0,0x0
     f6c:	afa50034 	sw	a1,52(sp)
     f70:	0c000000 	jal	0 <EnHeishi2_Init>
     f74:	24840000 	addiu	a0,a0,0
     f78:	44822000 	mtc1	v0,$f4
     f7c:	3c01c120 	lui	at,0xc120
     f80:	3c050000 	lui	a1,0x0
     f84:	468021a0 	cvt.s.w	$f6,$f4
     f88:	24a50000 	addiu	a1,a1,0
     f8c:	2604014c 	addiu	a0,s0,332
     f90:	3c063f80 	lui	a2,0x3f80
     f94:	24070000 	li	a3,0
     f98:	afa00014 	sw	zero,20(sp)
     f9c:	4600320d 	trunc.w.s	$f8,$f6
     fa0:	44813000 	mtc1	at,$f6
     fa4:	440f4000 	mfc1	t7,$f8
     fa8:	e7a60018 	swc1	$f6,24(sp)
     fac:	000fc400 	sll	t8,t7,0x10
     fb0:	0018cc03 	sra	t9,t8,0x10
     fb4:	44995000 	mtc1	t9,$f10
     fb8:	00000000 	nop
     fbc:	46805120 	cvt.s.w	$f4,$f10
     fc0:	0c000000 	jal	0 <EnHeishi2_Init>
     fc4:	e7a40010 	swc1	$f4,16(sp)
     fc8:	240800c8 	li	t0,200
     fcc:	a60802f2 	sh	t0,754(s0)
     fd0:	0c000000 	jal	0 <EnHeishi2_Init>
     fd4:	8fa40034 	lw	a0,52(sp)
     fd8:	a6020310 	sh	v0,784(s0)
     fdc:	8fa40034 	lw	a0,52(sp)
     fe0:	00002825 	move	a1,zero
     fe4:	0c000000 	jal	0 <EnHeishi2_Init>
     fe8:	24060001 	li	a2,1
     fec:	8fa40034 	lw	a0,52(sp)
     ff0:	86050310 	lh	a1,784(s0)
     ff4:	0c000000 	jal	0 <EnHeishi2_Init>
     ff8:	24060007 	li	a2,7
     ffc:	3c01c28e 	lui	at,0xc28e
    1000:	44810000 	mtc1	at,$f0
    1004:	3c010000 	lui	at,0x0
    1008:	c42203a8 	lwc1	$f2,936(at)
    100c:	3c010000 	lui	at,0x0
    1010:	c42c03ac 	lwc1	$f12,940(at)
    1014:	3c014335 	lui	at,0x4335
    1018:	44817000 	mtc1	at,$f14
    101c:	3c010000 	lui	at,0x0
    1020:	c43003b0 	lwc1	$f16,944(at)
    1024:	3c010000 	lui	at,0x0
    1028:	c43203b4 	lwc1	$f18,948(at)
    102c:	e60002bc 	swc1	$f0,700(s0)
    1030:	e6000280 	swc1	$f0,640(s0)
    1034:	e60202c0 	swc1	$f2,704(s0)
    1038:	e6020284 	swc1	$f2,644(s0)
    103c:	e60c02c4 	swc1	$f12,708(s0)
    1040:	e60c0288 	swc1	$f12,648(s0)
    1044:	e60e0298 	swc1	$f14,664(s0)
    1048:	e60e028c 	swc1	$f14,652(s0)
    104c:	e610029c 	swc1	$f16,668(s0)
    1050:	e6100290 	swc1	$f16,656(s0)
    1054:	e61202a0 	swc1	$f18,672(s0)
    1058:	e6120294 	swc1	$f18,660(s0)
    105c:	8fa40034 	lw	a0,52(sp)
    1060:	86050310 	lh	a1,784(s0)
    1064:	26060280 	addiu	a2,s0,640
    1068:	0c000000 	jal	0 <EnHeishi2_Init>
    106c:	2607028c 	addiu	a3,s0,652
    1070:	3c090000 	lui	t1,0x0
    1074:	25290000 	addiu	t1,t1,0
    1078:	ae09025c 	sw	t1,604(s0)
    107c:	8fbf002c 	lw	ra,44(sp)
    1080:	8fb00028 	lw	s0,40(sp)
    1084:	27bd0030 	addiu	sp,sp,48
    1088:	03e00008 	jr	ra
    108c:	00000000 	nop

00001090 <func_80A53F30>:
    1090:	27bdffe0 	addiu	sp,sp,-32
    1094:	afb00014 	sw	s0,20(sp)
    1098:	00808025 	move	s0,a0
    109c:	afbf001c 	sw	ra,28(sp)
    10a0:	afb10018 	sw	s1,24(sp)
    10a4:	00a08825 	move	s1,a1
    10a8:	0c000000 	jal	0 <EnHeishi2_Init>
    10ac:	2484014c 	addiu	a0,a0,332
    10b0:	02202025 	move	a0,s1
    10b4:	86050310 	lh	a1,784(s0)
    10b8:	26060280 	addiu	a2,s0,640
    10bc:	0c000000 	jal	0 <EnHeishi2_Init>
    10c0:	2607028c 	addiu	a3,s0,652
    10c4:	860e02f2 	lh	t6,754(s0)
    10c8:	8e020314 	lw	v0,788(s0)
    10cc:	02202025 	move	a0,s1
    10d0:	11c00004 	beqz	t6,10e4 <func_80A53F30+0x54>
    10d4:	00000000 	nop
    10d8:	844f0168 	lh	t7,360(v0)
    10dc:	55e0002a 	bnezl	t7,1188 <func_80A53F30+0xf8>
    10e0:	8fbf001c 	lw	ra,28(sp)
    10e4:	0c000000 	jal	0 <EnHeishi2_Init>
    10e8:	86050310 	lh	a1,784(s0)
    10ec:	02202025 	move	a0,s1
    10f0:	00002825 	move	a1,zero
    10f4:	0c000000 	jal	0 <EnHeishi2_Init>
    10f8:	24060007 	li	a2,7
    10fc:	9202030a 	lbu	v0,778(s0)
    1100:	24010002 	li	at,2
    1104:	24092021 	li	t1,8225
    1108:	10410015 	beq	v0,at,1160 <func_80A53F30+0xd0>
    110c:	2404000f 	li	a0,15
    1110:	14400009 	bnez	v0,1138 <func_80A53F30+0xa8>
    1114:	24182015 	li	t8,8213
    1118:	a618010e 	sh	t8,270(s0)
    111c:	02202025 	move	a0,s1
    1120:	0c000000 	jal	0 <EnHeishi2_Init>
    1124:	3305ffff 	andi	a1,t8,0xffff
    1128:	3c190000 	lui	t9,0x0
    112c:	27390000 	addiu	t9,t9,0
    1130:	10000014 	b	1184 <func_80A53F30+0xf4>
    1134:	ae19025c 	sw	t9,604(s0)
    1138:	0c000000 	jal	0 <EnHeishi2_Init>
    113c:	02202025 	move	a0,s1
    1140:	02202025 	move	a0,s1
    1144:	00002825 	move	a1,zero
    1148:	0c000000 	jal	0 <EnHeishi2_Init>
    114c:	24060007 	li	a2,7
    1150:	3c080000 	lui	t0,0x0
    1154:	25080000 	addiu	t0,t0,0
    1158:	1000000a 	b	1184 <func_80A53F30+0xf4>
    115c:	ae08025c 	sw	t0,604(s0)
    1160:	a600030e 	sh	zero,782(s0)
    1164:	0c000000 	jal	0 <EnHeishi2_Init>
    1168:	a609010e 	sh	t1,270(s0)
    116c:	02202025 	move	a0,s1
    1170:	0c000000 	jal	0 <EnHeishi2_Init>
    1174:	9605010e 	lhu	a1,270(s0)
    1178:	3c0a0000 	lui	t2,0x0
    117c:	254a0000 	addiu	t2,t2,0
    1180:	ae0a025c 	sw	t2,604(s0)
    1184:	8fbf001c 	lw	ra,28(sp)
    1188:	8fb00014 	lw	s0,20(sp)
    118c:	8fb10018 	lw	s1,24(sp)
    1190:	03e00008 	jr	ra
    1194:	27bd0020 	addiu	sp,sp,32

00001198 <func_80A54038>:
    1198:	27bdffe8 	addiu	sp,sp,-24
    119c:	afbf0014 	sw	ra,20(sp)
    11a0:	afa40018 	sw	a0,24(sp)
    11a4:	afa5001c 	sw	a1,28(sp)
    11a8:	0c000000 	jal	0 <EnHeishi2_Init>
    11ac:	2484014c 	addiu	a0,a0,332
    11b0:	8fa4001c 	lw	a0,28(sp)
    11b4:	0c000000 	jal	0 <EnHeishi2_Init>
    11b8:	248420d8 	addiu	a0,a0,8408
    11bc:	24010005 	li	at,5
    11c0:	54410014 	bnel	v0,at,1214 <func_80A54038+0x7c>
    11c4:	8fbf0014 	lw	ra,20(sp)
    11c8:	0c000000 	jal	0 <EnHeishi2_Init>
    11cc:	8fa4001c 	lw	a0,28(sp)
    11d0:	1040000f 	beqz	v0,1210 <func_80A54038+0x78>
    11d4:	3c020000 	lui	v0,0x0
    11d8:	24420000 	addiu	v0,v0,0
    11dc:	944e0f06 	lhu	t6,3846(v0)
    11e0:	8fa4001c 	lw	a0,28(sp)
    11e4:	35cf0040 	ori	t7,t6,0x40
    11e8:	0c000000 	jal	0 <EnHeishi2_Init>
    11ec:	a44f0f06 	sh	t7,3846(v0)
    11f0:	8fa4001c 	lw	a0,28(sp)
    11f4:	00002825 	move	a1,zero
    11f8:	0c000000 	jal	0 <EnHeishi2_Init>
    11fc:	24060007 	li	a2,7
    1200:	8fb90018 	lw	t9,24(sp)
    1204:	3c180000 	lui	t8,0x0
    1208:	27180000 	addiu	t8,t8,0
    120c:	af38025c 	sw	t8,604(t9)
    1210:	8fbf0014 	lw	ra,20(sp)
    1214:	27bd0018 	addiu	sp,sp,24
    1218:	03e00008 	jr	ra
    121c:	00000000 	nop

00001220 <func_80A540C0>:
    1220:	27bdffe0 	addiu	sp,sp,-32
    1224:	afb00014 	sw	s0,20(sp)
    1228:	00808025 	move	s0,a0
    122c:	afbf001c 	sw	ra,28(sp)
    1230:	afb10018 	sw	s1,24(sp)
    1234:	00a08825 	move	s1,a1
    1238:	0c000000 	jal	0 <EnHeishi2_Init>
    123c:	2484014c 	addiu	a0,a0,332
    1240:	0c000000 	jal	0 <EnHeishi2_Init>
    1244:	262420d8 	addiu	a0,s1,8408
    1248:	24010004 	li	at,4
    124c:	5441003f 	bnel	v0,at,134c <func_80A540C0+0x12c>
    1250:	8fbf001c 	lw	ra,28(sp)
    1254:	0c000000 	jal	0 <EnHeishi2_Init>
    1258:	02202025 	move	a0,s1
    125c:	1040003a 	beqz	v0,1348 <func_80A540C0+0x128>
    1260:	3c020001 	lui	v0,0x1
    1264:	00511021 	addu	v0,v0,s1
    1268:	904204bd 	lbu	v0,1213(v0)
    126c:	240e2020 	li	t6,8224
    1270:	31c5ffff 	andi	a1,t6,0xffff
    1274:	10400006 	beqz	v0,1290 <func_80A540C0+0x70>
    1278:	02202025 	move	a0,s1
    127c:	24030001 	li	v1,1
    1280:	10430021 	beq	v0,v1,1308 <func_80A540C0+0xe8>
    1284:	240d200c 	li	t5,8204
    1288:	10000030 	b	134c <func_80A540C0+0x12c>
    128c:	8fbf001c 	lw	ra,28(sp)
    1290:	0c000000 	jal	0 <EnHeishi2_Init>
    1294:	a60e010e 	sh	t6,270(s0)
    1298:	0c000000 	jal	0 <EnHeishi2_Init>
    129c:	02202025 	move	a0,s1
    12a0:	3c030000 	lui	v1,0x0
    12a4:	24630000 	addiu	v1,v1,0
    12a8:	946f0f06 	lhu	t7,3846(v1)
    12ac:	94790ef6 	lhu	t9,3830(v1)
    12b0:	02202025 	move	a0,s1
    12b4:	35f80080 	ori	t8,t7,0x80
    12b8:	37280100 	ori	t0,t9,0x100
    12bc:	a4780f06 	sh	t8,3846(v1)
    12c0:	a4680ef6 	sh	t0,3830(v1)
    12c4:	0c000000 	jal	0 <EnHeishi2_Init>
    12c8:	2405002c 	li	a1,44
    12cc:	9209030a 	lbu	t1,778(s0)
    12d0:	3c0c0000 	lui	t4,0x0
    12d4:	24030001 	li	v1,1
    12d8:	11200008 	beqz	t1,12fc <func_80A540C0+0xdc>
    12dc:	258c0000 	addiu	t4,t4,0
    12e0:	3c0b0000 	lui	t3,0x0
    12e4:	240a0002 	li	t2,2
    12e8:	256b0000 	addiu	t3,t3,0
    12ec:	a20a030a 	sb	t2,778(s0)
    12f0:	a603030e 	sh	v1,782(s0)
    12f4:	10000014 	b	1348 <func_80A540C0+0x128>
    12f8:	ae0b025c 	sw	t3,604(s0)
    12fc:	a600030e 	sh	zero,782(s0)
    1300:	10000011 	b	1348 <func_80A540C0+0x128>
    1304:	ae0c025c 	sw	t4,604(s0)
    1308:	a603030e 	sh	v1,782(s0)
    130c:	a60d010e 	sh	t5,270(s0)
    1310:	02202025 	move	a0,s1
    1314:	0c000000 	jal	0 <EnHeishi2_Init>
    1318:	31a5ffff 	andi	a1,t5,0xffff
    131c:	920f030a 	lbu	t7,778(s0)
    1320:	240e0005 	li	t6,5
    1324:	a60e0300 	sh	t6,768(s0)
    1328:	15e00005 	bnez	t7,1340 <func_80A540C0+0x120>
    132c:	3c190000 	lui	t9,0x0
    1330:	3c180000 	lui	t8,0x0
    1334:	27180000 	addiu	t8,t8,0
    1338:	10000003 	b	1348 <func_80A540C0+0x128>
    133c:	ae18025c 	sw	t8,604(s0)
    1340:	27390000 	addiu	t9,t9,0
    1344:	ae19025c 	sw	t9,604(s0)
    1348:	8fbf001c 	lw	ra,28(sp)
    134c:	8fb00014 	lw	s0,20(sp)
    1350:	8fb10018 	lw	s1,24(sp)
    1354:	03e00008 	jr	ra
    1358:	27bd0020 	addiu	sp,sp,32

0000135c <func_80A541FC>:
    135c:	27bdffe8 	addiu	sp,sp,-24
    1360:	afbf0014 	sw	ra,20(sp)
    1364:	afa40018 	sw	a0,24(sp)
    1368:	afa5001c 	sw	a1,28(sp)
    136c:	0c000000 	jal	0 <EnHeishi2_Init>
    1370:	2484014c 	addiu	a0,a0,332
    1374:	8fa4001c 	lw	a0,28(sp)
    1378:	0c000000 	jal	0 <EnHeishi2_Init>
    137c:	248420d8 	addiu	a0,a0,8408
    1380:	24010005 	li	at,5
    1384:	54410012 	bnel	v0,at,13d0 <func_80A541FC+0x74>
    1388:	8fbf0014 	lw	ra,20(sp)
    138c:	0c000000 	jal	0 <EnHeishi2_Init>
    1390:	8fa4001c 	lw	a0,28(sp)
    1394:	1040000d 	beqz	v0,13cc <func_80A541FC+0x70>
    1398:	240e2021 	li	t6,8225
    139c:	8faf0018 	lw	t7,24(sp)
    13a0:	2404000f 	li	a0,15
    13a4:	0c000000 	jal	0 <EnHeishi2_Init>
    13a8:	a5ee010e 	sh	t6,270(t7)
    13ac:	8fb80018 	lw	t8,24(sp)
    13b0:	8fa4001c 	lw	a0,28(sp)
    13b4:	0c000000 	jal	0 <EnHeishi2_Init>
    13b8:	9705010e 	lhu	a1,270(t8)
    13bc:	8fa80018 	lw	t0,24(sp)
    13c0:	3c190000 	lui	t9,0x0
    13c4:	27390000 	addiu	t9,t9,0
    13c8:	ad19025c 	sw	t9,604(t0)
    13cc:	8fbf0014 	lw	ra,20(sp)
    13d0:	27bd0018 	addiu	sp,sp,24
    13d4:	03e00008 	jr	ra
    13d8:	00000000 	nop

000013dc <func_80A5427C>:
    13dc:	27bdffe0 	addiu	sp,sp,-32
    13e0:	afb00018 	sw	s0,24(sp)
    13e4:	00808025 	move	s0,a0
    13e8:	afbf001c 	sw	ra,28(sp)
    13ec:	afa50024 	sw	a1,36(sp)
    13f0:	0c000000 	jal	0 <EnHeishi2_Init>
    13f4:	2484014c 	addiu	a0,a0,332
    13f8:	8fa40024 	lw	a0,36(sp)
    13fc:	0c000000 	jal	0 <EnHeishi2_Init>
    1400:	248420d8 	addiu	a0,a0,8408
    1404:	24010005 	li	at,5
    1408:	54410019 	bnel	v0,at,1470 <func_80A5427C+0x94>
    140c:	8fbf001c 	lw	ra,28(sp)
    1410:	0c000000 	jal	0 <EnHeishi2_Init>
    1414:	8fa40024 	lw	a0,36(sp)
    1418:	50400015 	beqzl	v0,1470 <func_80A5427C+0x94>
    141c:	8fbf001c 	lw	ra,28(sp)
    1420:	860e030e 	lh	t6,782(s0)
    1424:	24190037 	li	t9,55
    1428:	8fa80024 	lw	t0,36(sp)
    142c:	15c0000a 	bnez	t6,1458 <func_80A5427C+0x7c>
    1430:	3c010001 	lui	at,0x1
    1434:	a600030e 	sh	zero,782(s0)
    1438:	860f030e 	lh	t7,782(s0)
    143c:	a20f030a 	sb	t7,778(s0)
    1440:	0c000000 	jal	0 <EnHeishi2_Init>
    1444:	8fa40024 	lw	a0,36(sp)
    1448:	3c180000 	lui	t8,0x0
    144c:	27180000 	addiu	t8,t8,0
    1450:	10000006 	b	146c <func_80A5427C+0x90>
    1454:	ae18025c 	sw	t8,604(s0)
    1458:	00280821 	addu	at,at,t0
    145c:	3c090000 	lui	t1,0x0
    1460:	a03903dc 	sb	t9,988(at)
    1464:	25290000 	addiu	t1,t1,0
    1468:	ae09025c 	sw	t1,604(s0)
    146c:	8fbf001c 	lw	ra,28(sp)
    1470:	8fb00018 	lw	s0,24(sp)
    1474:	27bd0020 	addiu	sp,sp,32
    1478:	03e00008 	jr	ra
    147c:	00000000 	nop

00001480 <func_80A54320>:
    1480:	27bdffd8 	addiu	sp,sp,-40
    1484:	afa40028 	sw	a0,40(sp)
    1488:	afbf0024 	sw	ra,36(sp)
    148c:	3c040000 	lui	a0,0x0
    1490:	afa5002c 	sw	a1,44(sp)
    1494:	0c000000 	jal	0 <EnHeishi2_Init>
    1498:	24840000 	addiu	a0,a0,0
    149c:	44822000 	mtc1	v0,$f4
    14a0:	8fa30028 	lw	v1,40(sp)
    14a4:	3c01c120 	lui	at,0xc120
    14a8:	46802020 	cvt.s.w	$f0,$f4
    14ac:	44813000 	mtc1	at,$f6
    14b0:	3c050000 	lui	a1,0x0
    14b4:	240e0002 	li	t6,2
    14b8:	24a50000 	addiu	a1,a1,0
    14bc:	3c063f80 	lui	a2,0x3f80
    14c0:	e46002ec 	swc1	$f0,748(v1)
    14c4:	afae0014 	sw	t6,20(sp)
    14c8:	e7a00010 	swc1	$f0,16(sp)
    14cc:	24070000 	li	a3,0
    14d0:	2464014c 	addiu	a0,v1,332
    14d4:	0c000000 	jal	0 <EnHeishi2_Init>
    14d8:	e7a60018 	swc1	$f6,24(sp)
    14dc:	8fa30028 	lw	v1,40(sp)
    14e0:	3c0f0000 	lui	t7,0x0
    14e4:	25ef0000 	addiu	t7,t7,0
    14e8:	a0600308 	sb	zero,776(v1)
    14ec:	ac6f025c 	sw	t7,604(v1)
    14f0:	8fbf0024 	lw	ra,36(sp)
    14f4:	27bd0028 	addiu	sp,sp,40
    14f8:	03e00008 	jr	ra
    14fc:	00000000 	nop

00001500 <func_80A543A0>:
    1500:	27bdffd8 	addiu	sp,sp,-40
    1504:	afbf0014 	sw	ra,20(sp)
    1508:	c4840164 	lwc1	$f4,356(a0)
    150c:	00803025 	move	a2,a0
    1510:	2484014c 	addiu	a0,a0,332
    1514:	e7a40020 	swc1	$f4,32(sp)
    1518:	8ca21c6c 	lw	v0,7276(a1)
    151c:	afa60028 	sw	a2,40(sp)
    1520:	0c000000 	jal	0 <EnHeishi2_Init>
    1524:	afa2001c 	sw	v0,28(sp)
    1528:	3c014140 	lui	at,0x4140
    152c:	44814000 	mtc1	at,$f8
    1530:	c7a60020 	lwc1	$f6,32(sp)
    1534:	8fa2001c 	lw	v0,28(sp)
    1538:	8fa60028 	lw	a2,40(sp)
    153c:	4606403e 	c.le.s	$f8,$f6
    1540:	00000000 	nop
    1544:	4502000e 	bc1fl	1580 <func_80A543A0+0x80>
    1548:	c7aa0020 	lwc1	$f10,32(sp)
    154c:	90ce0308 	lbu	t6,776(a2)
    1550:	00c02025 	move	a0,a2
    1554:	24052823 	li	a1,10275
    1558:	55c00009 	bnezl	t6,1580 <func_80A543A0+0x80>
    155c:	c7aa0020 	lwc1	$f10,32(sp)
    1560:	afa2001c 	sw	v0,28(sp)
    1564:	0c000000 	jal	0 <EnHeishi2_Init>
    1568:	afa60028 	sw	a2,40(sp)
    156c:	8fa60028 	lw	a2,40(sp)
    1570:	8fa2001c 	lw	v0,28(sp)
    1574:	240f0001 	li	t7,1
    1578:	a0cf0308 	sb	t7,776(a2)
    157c:	c7aa0020 	lwc1	$f10,32(sp)
    1580:	c4d002ec 	lwc1	$f16,748(a2)
    1584:	3c0b0000 	lui	t3,0x0
    1588:	256b0000 	addiu	t3,t3,0
    158c:	460a803e 	c.le.s	$f16,$f10
    1590:	00000000 	nop
    1594:	4502001a 	bc1fl	1600 <func_80A543A0+0x100>
    1598:	8fbf0014 	lw	ra,20(sp)
    159c:	10400011 	beqz	v0,15e4 <func_80A543A0+0xe4>
    15a0:	24030100 	li	v1,256
    15a4:	84580000 	lh	t8,0(v0)
    15a8:	50780004 	beql	v1,t8,15bc <func_80A543A0+0xbc>
    15ac:	90d9030a 	lbu	t9,778(a2)
    15b0:	1000000a 	b	15dc <func_80A543A0+0xdc>
    15b4:	8c420124 	lw	v0,292(v0)
    15b8:	90d9030a 	lbu	t9,778(a2)
    15bc:	24030002 	li	v1,2
    15c0:	acc20314 	sw	v0,788(a2)
    15c4:	10790003 	beq	v1,t9,15d4 <func_80A543A0+0xd4>
    15c8:	2408ffff 	li	t0,-1
    15cc:	10000005 	b	15e4 <func_80A543A0+0xe4>
    15d0:	a4480168 	sh	t0,360(v0)
    15d4:	10000003 	b	15e4 <func_80A543A0+0xe4>
    15d8:	a4430168 	sh	v1,360(v0)
    15dc:	5440fff2 	bnezl	v0,15a8 <func_80A543A0+0xa8>
    15e0:	84580000 	lh	t8,0(v0)
    15e4:	90c9030a 	lbu	t1,778(a2)
    15e8:	240a0001 	li	t2,1
    15ec:	55200003 	bnezl	t1,15fc <func_80A543A0+0xfc>
    15f0:	accb025c 	sw	t3,604(a2)
    15f4:	a0ca030a 	sb	t2,778(a2)
    15f8:	accb025c 	sw	t3,604(a2)
    15fc:	8fbf0014 	lw	ra,20(sp)
    1600:	27bd0028 	addiu	sp,sp,40
    1604:	03e00008 	jr	ra
    1608:	00000000 	nop

0000160c <func_80A544AC>:
    160c:	27bdffd8 	addiu	sp,sp,-40
    1610:	afb00020 	sw	s0,32(sp)
    1614:	00808025 	move	s0,a0
    1618:	afbf0024 	sw	ra,36(sp)
    161c:	afa5002c 	sw	a1,44(sp)
    1620:	c60402e4 	lwc1	$f4,740(s0)
    1624:	afa00010 	sw	zero,16(sp)
    1628:	2405e82c 	li	a1,-6100
    162c:	4600218d 	trunc.w.s	$f6,$f4
    1630:	248400b8 	addiu	a0,a0,184
    1634:	24060005 	li	a2,5
    1638:	44073000 	mfc1	a3,$f6
    163c:	00000000 	nop
    1640:	00073c00 	sll	a3,a3,0x10
    1644:	0c000000 	jal	0 <EnHeishi2_Init>
    1648:	00073c03 	sra	a3,a3,0x10
    164c:	3c05453b 	lui	a1,0x453b
    1650:	34a58000 	ori	a1,a1,0x8000
    1654:	260402e4 	addiu	a0,s0,740
    1658:	3c063f80 	lui	a2,0x3f80
    165c:	0c000000 	jal	0 <EnHeishi2_Init>
    1660:	3c0743fa 	lui	a3,0x43fa
    1664:	860200b8 	lh	v0,184(s0)
    1668:	2405708f 	li	a1,28815
    166c:	00003025 	move	a2,zero
    1670:	2841e890 	slti	at,v0,-6000
    1674:	1020000c 	beqz	at,16a8 <func_80A544AC+0x9c>
    1678:	a6020034 	sh	v0,52(s0)
    167c:	0c000000 	jal	0 <EnHeishi2_Init>
    1680:	8fa4002c 	lw	a0,44(sp)
    1684:	8e0f0004 	lw	t7,4(s0)
    1688:	44804000 	mtc1	zero,$f8
    168c:	3c010001 	lui	at,0x1
    1690:	3c190000 	lui	t9,0x0
    1694:	27390000 	addiu	t9,t9,0
    1698:	01e1c025 	or	t8,t7,at
    169c:	ae180004 	sw	t8,4(s0)
    16a0:	ae19025c 	sw	t9,604(s0)
    16a4:	e60802e4 	swc1	$f8,740(s0)
    16a8:	8fbf0024 	lw	ra,36(sp)
    16ac:	8fb00020 	lw	s0,32(sp)
    16b0:	27bd0028 	addiu	sp,sp,40
    16b4:	03e00008 	jr	ra
    16b8:	00000000 	nop

000016bc <func_80A5455C>:
    16bc:	27bdffb8 	addiu	sp,sp,-72
    16c0:	afb10030 	sw	s1,48(sp)
    16c4:	00808825 	move	s1,a0
    16c8:	afbf0034 	sw	ra,52(sp)
    16cc:	afb0002c 	sw	s0,44(sp)
    16d0:	00a08025 	move	s0,a1
    16d4:	0c000000 	jal	0 <EnHeishi2_Init>
    16d8:	24a420d8 	addiu	a0,a1,8408
    16dc:	24010005 	li	at,5
    16e0:	54410052 	bnel	v0,at,182c <func_80A5455C+0x170>
    16e4:	8fbf0034 	lw	ra,52(sp)
    16e8:	0c000000 	jal	0 <EnHeishi2_Init>
    16ec:	02002025 	move	a0,s0
    16f0:	1040004d 	beqz	v0,1828 <func_80A5455C+0x16c>
    16f4:	02002025 	move	a0,s0
    16f8:	00002825 	move	a1,zero
    16fc:	0c000000 	jal	0 <EnHeishi2_Init>
    1700:	24060007 	li	a2,7
    1704:	0c000000 	jal	0 <EnHeishi2_Init>
    1708:	02002025 	move	a0,s0
    170c:	3c0141a0 	lui	at,0x41a0
    1710:	44816000 	mtc1	at,$f12
    1714:	0c000000 	jal	0 <EnHeishi2_Init>
    1718:	00000000 	nop
    171c:	c6240274 	lwc1	$f4,628(s1)
    1720:	3c0141a0 	lui	at,0x41a0
    1724:	44816000 	mtc1	at,$f12
    1728:	46040180 	add.s	$f6,$f0,$f4
    172c:	0c000000 	jal	0 <EnHeishi2_Init>
    1730:	e7a60038 	swc1	$f6,56(sp)
    1734:	3c014220 	lui	at,0x4220
    1738:	44815000 	mtc1	at,$f10
    173c:	c6280278 	lwc1	$f8,632(s1)
    1740:	3c0141a0 	lui	at,0x41a0
    1744:	44816000 	mtc1	at,$f12
    1748:	460a4401 	sub.s	$f16,$f8,$f10
    174c:	46100480 	add.s	$f18,$f0,$f16
    1750:	0c000000 	jal	0 <EnHeishi2_Init>
    1754:	e7b2003c 	swc1	$f18,60(sp)
    1758:	3c0141a0 	lui	at,0x41a0
    175c:	44813000 	mtc1	at,$f6
    1760:	c624027c 	lwc1	$f4,636(s1)
    1764:	3c010000 	lui	at,0x0
    1768:	c42c03b8 	lwc1	$f12,952(at)
    176c:	46062201 	sub.s	$f8,$f4,$f6
    1770:	46080280 	add.s	$f10,$f0,$f8
    1774:	0c000000 	jal	0 <EnHeishi2_Init>
    1778:	e7aa0040 	swc1	$f10,64(sp)
    177c:	862e008a 	lh	t6,138(s1)
    1780:	c7a4003c 	lwc1	$f4,60(sp)
    1784:	c7a60040 	lwc1	$f6,64(sp)
    1788:	448e8000 	mtc1	t6,$f16
    178c:	afa00024 	sw	zero,36(sp)
    1790:	afa00020 	sw	zero,32(sp)
    1794:	468084a0 	cvt.s.w	$f18,$f16
    1798:	afa00018 	sw	zero,24(sp)
    179c:	26041c24 	addiu	a0,s0,7204
    17a0:	02002825 	move	a1,s0
    17a4:	24060010 	li	a2,16
    17a8:	8fa70038 	lw	a3,56(sp)
    17ac:	46120080 	add.s	$f2,$f0,$f18
    17b0:	e7a40010 	swc1	$f4,16(sp)
    17b4:	e7a60014 	swc1	$f6,20(sp)
    17b8:	4600120d 	trunc.w.s	$f8,$f2
    17bc:	44184000 	mfc1	t8,$f8
    17c0:	0c000000 	jal	0 <EnHeishi2_Init>
    17c4:	afb8001c 	sw	t8,28(sp)
    17c8:	10400011 	beqz	v0,1810 <func_80A5455C+0x154>
    17cc:	00408025 	move	s0,v0
    17d0:	3c0140a0 	lui	at,0x40a0
    17d4:	44816000 	mtc1	at,$f12
    17d8:	0c000000 	jal	0 <EnHeishi2_Init>
    17dc:	00000000 	nop
    17e0:	3c014120 	lui	at,0x4120
    17e4:	44815000 	mtc1	at,$f10
    17e8:	3c0140a0 	lui	at,0x40a0
    17ec:	44816000 	mtc1	at,$f12
    17f0:	460a0400 	add.s	$f16,$f0,$f10
    17f4:	0c000000 	jal	0 <EnHeishi2_Init>
    17f8:	e6100068 	swc1	$f16,104(s0)
    17fc:	3c014120 	lui	at,0x4120
    1800:	44819000 	mtc1	at,$f18
    1804:	00000000 	nop
    1808:	46120100 	add.s	$f4,$f0,$f18
    180c:	e6040060 	swc1	$f4,96(s0)
    1810:	3c040000 	lui	a0,0x0
    1814:	0c000000 	jal	0 <EnHeishi2_Init>
    1818:	248402e4 	addiu	a0,a0,740
    181c:	3c190000 	lui	t9,0x0
    1820:	27390000 	addiu	t9,t9,0
    1824:	ae39025c 	sw	t9,604(s1)
    1828:	8fbf0034 	lw	ra,52(sp)
    182c:	8fb0002c 	lw	s0,44(sp)
    1830:	8fb10030 	lw	s1,48(sp)
    1834:	03e00008 	jr	ra
    1838:	27bd0048 	addiu	sp,sp,72

0000183c <func_80A546DC>:
    183c:	27bdffd8 	addiu	sp,sp,-40
    1840:	afb00020 	sw	s0,32(sp)
    1844:	00808025 	move	s0,a0
    1848:	afbf0024 	sw	ra,36(sp)
    184c:	afa5002c 	sw	a1,44(sp)
    1850:	c60402e4 	lwc1	$f4,740(s0)
    1854:	afa00010 	sw	zero,16(sp)
    1858:	240500c8 	li	a1,200
    185c:	4600218d 	trunc.w.s	$f6,$f4
    1860:	248400b8 	addiu	a0,a0,184
    1864:	24060005 	li	a2,5
    1868:	44073000 	mfc1	a3,$f6
    186c:	00000000 	nop
    1870:	00073c00 	sll	a3,a3,0x10
    1874:	0c000000 	jal	0 <EnHeishi2_Init>
    1878:	00073c03 	sra	a3,a3,0x10
    187c:	3c05453b 	lui	a1,0x453b
    1880:	34a58000 	ori	a1,a1,0x8000
    1884:	260402e4 	addiu	a0,s0,740
    1888:	3c063f80 	lui	a2,0x3f80
    188c:	0c000000 	jal	0 <EnHeishi2_Init>
    1890:	3c0743fa 	lui	a3,0x43fa
    1894:	860200b8 	lh	v0,184(s0)
    1898:	18400003 	blez	v0,18a8 <func_80A546DC+0x6c>
    189c:	a6020034 	sh	v0,52(s0)
    18a0:	0c000000 	jal	0 <EnHeishi2_Init>
    18a4:	02002025 	move	a0,s0
    18a8:	8fbf0024 	lw	ra,36(sp)
    18ac:	8fb00020 	lw	s0,32(sp)
    18b0:	27bd0028 	addiu	sp,sp,40
    18b4:	03e00008 	jr	ra
    18b8:	00000000 	nop

000018bc <func_80A5475C>:
    18bc:	27bdffe8 	addiu	sp,sp,-24
    18c0:	afbf0014 	sw	ra,20(sp)
    18c4:	00803025 	move	a2,a0
    18c8:	afa5001c 	sw	a1,28(sp)
    18cc:	afa60018 	sw	a2,24(sp)
    18d0:	0c000000 	jal	0 <EnHeishi2_Init>
    18d4:	2484014c 	addiu	a0,a0,332
    18d8:	8fa4001c 	lw	a0,28(sp)
    18dc:	0c000000 	jal	0 <EnHeishi2_Init>
    18e0:	24050005 	li	a1,5
    18e4:	10400011 	beqz	v0,192c <func_80A5475C+0x70>
    18e8:	8fa60018 	lw	a2,24(sp)
    18ec:	90ce030b 	lbu	t6,779(a2)
    18f0:	55c0001f 	bnezl	t6,1970 <func_80A5475C+0xb4>
    18f4:	00c02025 	move	a0,a2
    18f8:	84c202fe 	lh	v0,766(a2)
    18fc:	24010002 	li	at,2
    1900:	3c0f0000 	lui	t7,0x0
    1904:	14410003 	bne	v0,at,1914 <func_80A5475C+0x58>
    1908:	25ef0000 	addiu	t7,t7,0
    190c:	10000065 	b	1aa4 <func_80A5475C+0x1e8>
    1910:	accf025c 	sw	t7,604(a2)
    1914:	24010005 	li	at,5
    1918:	14410014 	bne	v0,at,196c <func_80A5475C+0xb0>
    191c:	3c180000 	lui	t8,0x0
    1920:	27180000 	addiu	t8,t8,0
    1924:	1000005f 	b	1aa4 <func_80A5475C+0x1e8>
    1928:	acd8025c 	sw	t8,604(a2)
    192c:	90d9030b 	lbu	t9,779(a2)
    1930:	5320000f 	beqzl	t9,1970 <func_80A5475C+0xb4>
    1934:	00c02025 	move	a0,a2
    1938:	84c202fe 	lh	v0,766(a2)
    193c:	24010002 	li	at,2
    1940:	3c080000 	lui	t0,0x0
    1944:	14410004 	bne	v0,at,1958 <func_80A5475C+0x9c>
    1948:	24030005 	li	v1,5
    194c:	25080000 	addiu	t0,t0,0
    1950:	10000054 	b	1aa4 <func_80A5475C+0x1e8>
    1954:	acc8025c 	sw	t0,604(a2)
    1958:	14620004 	bne	v1,v0,196c <func_80A5475C+0xb0>
    195c:	3c090000 	lui	t1,0x0
    1960:	25290000 	addiu	t1,t1,0
    1964:	1000004f 	b	1aa4 <func_80A5475C+0x1e8>
    1968:	acc9025c 	sw	t1,604(a2)
    196c:	00c02025 	move	a0,a2
    1970:	8fa5001c 	lw	a1,28(sp)
    1974:	0c000000 	jal	0 <EnHeishi2_Init>
    1978:	afa60018 	sw	a2,24(sp)
    197c:	24030005 	li	v1,5
    1980:	1040002a 	beqz	v0,1a2c <func_80A5475C+0x170>
    1984:	8fa60018 	lw	a2,24(sp)
    1988:	84c202fe 	lh	v0,766(a2)
    198c:	24010002 	li	at,2
    1990:	1441000c 	bne	v0,at,19c4 <func_80A5475C+0x108>
    1994:	00000000 	nop
    1998:	84ca030e 	lh	t2,782(a2)
    199c:	24010001 	li	at,1
    19a0:	3c0c0000 	lui	t4,0x0
    19a4:	15410005 	bne	t2,at,19bc <func_80A5475C+0x100>
    19a8:	258c0000 	addiu	t4,t4,0
    19ac:	3c0b0000 	lui	t3,0x0
    19b0:	256b0000 	addiu	t3,t3,0
    19b4:	1000003b 	b	1aa4 <func_80A5475C+0x1e8>
    19b8:	accb025c 	sw	t3,604(a2)
    19bc:	10000039 	b	1aa4 <func_80A5475C+0x1e8>
    19c0:	accc025c 	sw	t4,604(a2)
    19c4:	5462001a 	bnel	v1,v0,1a30 <func_80A5475C+0x174>
    19c8:	84c202fe 	lh	v0,766(a2)
    19cc:	84c20300 	lh	v0,768(a2)
    19d0:	24010006 	li	at,6
    19d4:	3c0d0000 	lui	t5,0x0
    19d8:	14410003 	bne	v0,at,19e8 <func_80A5475C+0x12c>
    19dc:	25ad0000 	addiu	t5,t5,0
    19e0:	accd025c 	sw	t5,604(a2)
    19e4:	84c20300 	lh	v0,768(a2)
    19e8:	14620005 	bne	v1,v0,1a00 <func_80A5475C+0x144>
    19ec:	24010004 	li	at,4
    19f0:	3c0e0000 	lui	t6,0x0
    19f4:	25ce0000 	addiu	t6,t6,0
    19f8:	acce025c 	sw	t6,604(a2)
    19fc:	84c20300 	lh	v0,768(a2)
    1a00:	14410028 	bne	v0,at,1aa4 <func_80A5475C+0x1e8>
    1a04:	240f0001 	li	t7,1
    1a08:	a0cf0309 	sb	t7,777(a2)
    1a0c:	afa60018 	sw	a2,24(sp)
    1a10:	0c000000 	jal	0 <EnHeishi2_Init>
    1a14:	24044807 	li	a0,18439
    1a18:	8fa60018 	lw	a2,24(sp)
    1a1c:	3c180000 	lui	t8,0x0
    1a20:	27180000 	addiu	t8,t8,0
    1a24:	1000001f 	b	1aa4 <func_80A5475C+0x1e8>
    1a28:	acd8025c 	sw	t8,604(a2)
    1a2c:	84c202fe 	lh	v0,766(a2)
    1a30:	24010002 	li	at,2
    1a34:	50410004 	beql	v0,at,1a48 <func_80A5475C+0x18c>
    1a38:	84d9008a 	lh	t9,138(a2)
    1a3c:	54620017 	bnel	v1,v0,1a9c <func_80A5475C+0x1e0>
    1a40:	00c02025 	move	a0,a2
    1a44:	84d9008a 	lh	t9,138(a2)
    1a48:	84c800b6 	lh	t0,182(a2)
    1a4c:	3c0142f0 	lui	at,0x42f0
    1a50:	44812000 	mtc1	at,$f4
    1a54:	03281023 	subu	v0,t9,t0
    1a58:	00021400 	sll	v0,v0,0x10
    1a5c:	00021403 	sra	v0,v0,0x10
    1a60:	04400004 	bltz	v0,1a74 <func_80A5475C+0x1b8>
    1a64:	00021823 	negu	v1,v0
    1a68:	00021c00 	sll	v1,v0,0x10
    1a6c:	10000003 	b	1a7c <func_80A5475C+0x1c0>
    1a70:	00031c03 	sra	v1,v1,0x10
    1a74:	00031c00 	sll	v1,v1,0x10
    1a78:	00031c03 	sra	v1,v1,0x10
    1a7c:	c4c60090 	lwc1	$f6,144(a2)
    1a80:	28614300 	slti	at,v1,17152
    1a84:	4606203c 	c.lt.s	$f4,$f6
    1a88:	00000000 	nop
    1a8c:	45030006 	bc1tl	1aa8 <func_80A5475C+0x1ec>
    1a90:	8fbf0014 	lw	ra,20(sp)
    1a94:	10200003 	beqz	at,1aa4 <func_80A5475C+0x1e8>
    1a98:	00c02025 	move	a0,a2
    1a9c:	0c000000 	jal	0 <EnHeishi2_Init>
    1aa0:	8fa5001c 	lw	a1,28(sp)
    1aa4:	8fbf0014 	lw	ra,20(sp)
    1aa8:	27bd0018 	addiu	sp,sp,24
    1aac:	03e00008 	jr	ra
    1ab0:	00000000 	nop

00001ab4 <func_80A54954>:
    1ab4:	27bdffd8 	addiu	sp,sp,-40
    1ab8:	afa40028 	sw	a0,40(sp)
    1abc:	afbf0024 	sw	ra,36(sp)
    1ac0:	3c040000 	lui	a0,0x0
    1ac4:	afa5002c 	sw	a1,44(sp)
    1ac8:	0c000000 	jal	0 <EnHeishi2_Init>
    1acc:	24840000 	addiu	a0,a0,0
    1ad0:	44822000 	mtc1	v0,$f4
    1ad4:	3c01c120 	lui	at,0xc120
    1ad8:	44819000 	mtc1	at,$f18
    1adc:	468021a0 	cvt.s.w	$f6,$f4
    1ae0:	8fa40028 	lw	a0,40(sp)
    1ae4:	3c050000 	lui	a1,0x0
    1ae8:	24a50000 	addiu	a1,a1,0
    1aec:	3c063f80 	lui	a2,0x3f80
    1af0:	24070000 	li	a3,0
    1af4:	4600320d 	trunc.w.s	$f8,$f6
    1af8:	afa00014 	sw	zero,20(sp)
    1afc:	e7b20018 	swc1	$f18,24(sp)
    1b00:	2484014c 	addiu	a0,a0,332
    1b04:	440f4000 	mfc1	t7,$f8
    1b08:	00000000 	nop
    1b0c:	000fc400 	sll	t8,t7,0x10
    1b10:	0018cc03 	sra	t9,t8,0x10
    1b14:	44995000 	mtc1	t9,$f10
    1b18:	00000000 	nop
    1b1c:	46805420 	cvt.s.w	$f16,$f10
    1b20:	0c000000 	jal	0 <EnHeishi2_Init>
    1b24:	e7b00010 	swc1	$f16,16(sp)
    1b28:	8fa90028 	lw	t1,40(sp)
    1b2c:	3c080000 	lui	t0,0x0
    1b30:	25080000 	addiu	t0,t0,0
    1b34:	ad28025c 	sw	t0,604(t1)
    1b38:	8fbf0024 	lw	ra,36(sp)
    1b3c:	27bd0028 	addiu	sp,sp,40
    1b40:	03e00008 	jr	ra
    1b44:	00000000 	nop

00001b48 <func_80A549E8>:
    1b48:	27bdffe0 	addiu	sp,sp,-32
    1b4c:	afb00018 	sw	s0,24(sp)
    1b50:	00808025 	move	s0,a0
    1b54:	afbf001c 	sw	ra,28(sp)
    1b58:	afa50024 	sw	a1,36(sp)
    1b5c:	0c000000 	jal	0 <EnHeishi2_Init>
    1b60:	2484014c 	addiu	a0,a0,332
    1b64:	8fa40024 	lw	a0,36(sp)
    1b68:	0c000000 	jal	0 <EnHeishi2_Init>
    1b6c:	248420d8 	addiu	a0,a0,8408
    1b70:	860e0300 	lh	t6,768(s0)
    1b74:	55c20014 	bnel	t6,v0,1bc8 <func_80A549E8+0x80>
    1b78:	8fbf001c 	lw	ra,28(sp)
    1b7c:	0c000000 	jal	0 <EnHeishi2_Init>
    1b80:	8fa40024 	lw	a0,36(sp)
    1b84:	50400010 	beqzl	v0,1bc8 <func_80A549E8+0x80>
    1b88:	8fbf001c 	lw	ra,28(sp)
    1b8c:	0c000000 	jal	0 <EnHeishi2_Init>
    1b90:	8fa40024 	lw	a0,36(sp)
    1b94:	860202fe 	lh	v0,766(s0)
    1b98:	24010002 	li	at,2
    1b9c:	3c0f0000 	lui	t7,0x0
    1ba0:	14410003 	bne	v0,at,1bb0 <func_80A549E8+0x68>
    1ba4:	25ef0000 	addiu	t7,t7,0
    1ba8:	ae0f025c 	sw	t7,604(s0)
    1bac:	860202fe 	lh	v0,766(s0)
    1bb0:	24010005 	li	at,5
    1bb4:	14410003 	bne	v0,at,1bc4 <func_80A549E8+0x7c>
    1bb8:	3c180000 	lui	t8,0x0
    1bbc:	27180000 	addiu	t8,t8,0
    1bc0:	ae18025c 	sw	t8,604(s0)
    1bc4:	8fbf001c 	lw	ra,28(sp)
    1bc8:	8fb00018 	lw	s0,24(sp)
    1bcc:	27bd0020 	addiu	sp,sp,32
    1bd0:	03e00008 	jr	ra
    1bd4:	00000000 	nop

00001bd8 <EnHeishi2_Update>:
    1bd8:	27bdffb8 	addiu	sp,sp,-72
    1bdc:	afb00028 	sw	s0,40(sp)
    1be0:	00808025 	move	s0,a0
    1be4:	afbf002c 	sw	ra,44(sp)
    1be8:	afa5004c 	sw	a1,76(sp)
    1bec:	0c000000 	jal	0 <EnHeishi2_Init>
    1bf0:	8e0502e0 	lw	a1,736(s0)
    1bf4:	860202fe 	lh	v0,766(s0)
    1bf8:	24010002 	li	at,2
    1bfc:	10410002 	beq	v0,at,1c08 <EnHeishi2_Update+0x30>
    1c00:	24010005 	li	at,5
    1c04:	14410011 	bne	v0,at,1c4c <EnHeishi2_Update+0x74>
    1c08:	3c01428c 	lui	at,0x428c
    1c0c:	44810000 	mtc1	at,$f0
    1c10:	02002025 	move	a0,s0
    1c14:	44050000 	mfc1	a1,$f0
    1c18:	0c000000 	jal	0 <EnHeishi2_Init>
    1c1c:	e600003c 	swc1	$f0,60(s0)
    1c20:	8e0f0038 	lw	t7,56(s0)
    1c24:	8fa4004c 	lw	a0,76(sp)
    1c28:	02002825 	move	a1,s0
    1c2c:	afaf0010 	sw	t7,16(sp)
    1c30:	8e0e003c 	lw	t6,60(s0)
    1c34:	26060260 	addiu	a2,s0,608
    1c38:	2607026c 	addiu	a3,s0,620
    1c3c:	afae0014 	sw	t6,20(sp)
    1c40:	8e0f0040 	lw	t7,64(s0)
    1c44:	0c000000 	jal	0 <EnHeishi2_Init>
    1c48:	afaf0018 	sw	t7,24(sp)
    1c4c:	861802fc 	lh	t8,764(s0)
    1c50:	00001825 	move	v1,zero
    1c54:	02001025 	move	v0,s0
    1c58:	27190001 	addiu	t9,t8,1
    1c5c:	a61902fc 	sh	t9,764(s0)
    1c60:	2405000a 	li	a1,10
    1c64:	844402f2 	lh	a0,754(v0)
    1c68:	24630002 	addiu	v1,v1,2
    1c6c:	10800002 	beqz	a0,1c78 <EnHeishi2_Update+0xa0>
    1c70:	2488ffff 	addiu	t0,a0,-1
    1c74:	a44802f2 	sh	t0,754(v0)
    1c78:	1465fffa 	bne	v1,a1,1c64 <EnHeishi2_Update+0x8c>
    1c7c:	24420002 	addiu	v0,v0,2
    1c80:	8e19025c 	lw	t9,604(s0)
    1c84:	02002025 	move	a0,s0
    1c88:	8fa5004c 	lw	a1,76(sp)
    1c8c:	0320f809 	jalr	t9
    1c90:	00000000 	nop
    1c94:	0c000000 	jal	0 <EnHeishi2_Init>
    1c98:	02002025 	move	a0,s0
    1c9c:	860202fe 	lh	v0,766(s0)
    1ca0:	24010006 	li	at,6
    1ca4:	10410019 	beq	v0,at,1d0c <EnHeishi2_Update+0x134>
    1ca8:	24010009 	li	at,9
    1cac:	10410017 	beq	v0,at,1d0c <EnHeishi2_Update+0x134>
    1cb0:	8fa4004c 	lw	a0,76(sp)
    1cb4:	3c014120 	lui	at,0x4120
    1cb8:	44810000 	mtc1	at,$f0
    1cbc:	3c0141f0 	lui	at,0x41f0
    1cc0:	44812000 	mtc1	at,$f4
    1cc4:	2409001d 	li	t1,29
    1cc8:	44060000 	mfc1	a2,$f0
    1ccc:	44070000 	mfc1	a3,$f0
    1cd0:	afa90014 	sw	t1,20(sp)
    1cd4:	02002825 	move	a1,s0
    1cd8:	0c000000 	jal	0 <EnHeishi2_Init>
    1cdc:	e7a40010 	swc1	$f4,16(sp)
    1ce0:	26060398 	addiu	a2,s0,920
    1ce4:	00c02825 	move	a1,a2
    1ce8:	afa60034 	sw	a2,52(sp)
    1cec:	0c000000 	jal	0 <EnHeishi2_Init>
    1cf0:	02002025 	move	a0,s0
    1cf4:	8fa4004c 	lw	a0,76(sp)
    1cf8:	3c010001 	lui	at,0x1
    1cfc:	34211e60 	ori	at,at,0x1e60
    1d00:	8fa60034 	lw	a2,52(sp)
    1d04:	0c000000 	jal	0 <EnHeishi2_Init>
    1d08:	00812821 	addu	a1,a0,at
    1d0c:	8fbf002c 	lw	ra,44(sp)
    1d10:	8fb00028 	lw	s0,40(sp)
    1d14:	27bd0048 	addiu	sp,sp,72
    1d18:	03e00008 	jr	ra
    1d1c:	00000000 	nop

00001d20 <EnHeishi2_OverrideLimbDraw>:
    1d20:	afa40000 	sw	a0,0(sp)
    1d24:	8fa40014 	lw	a0,20(sp)
    1d28:	afa60008 	sw	a2,8(sp)
    1d2c:	afa7000c 	sw	a3,12(sp)
    1d30:	848202fe 	lh	v0,766(a0)
    1d34:	24010001 	li	at,1
    1d38:	10410014 	beq	v0,at,1d8c <EnHeishi2_OverrideLimbDraw+0x6c>
    1d3c:	24010007 	li	at,7
    1d40:	10410012 	beq	v0,at,1d8c <EnHeishi2_OverrideLimbDraw+0x6c>
    1d44:	24010009 	li	at,9
    1d48:	14a10005 	bne	a1,at,1d60 <EnHeishi2_OverrideLimbDraw+0x40>
    1d4c:	8fa20010 	lw	v0,16(sp)
    1d50:	844e0000 	lh	t6,0(v0)
    1d54:	848f026e 	lh	t7,622(a0)
    1d58:	01cfc021 	addu	t8,t6,t7
    1d5c:	a4580000 	sh	t8,0(v0)
    1d60:	24010010 	li	at,16
    1d64:	14a10009 	bne	a1,at,1d8c <EnHeishi2_OverrideLimbDraw+0x6c>
    1d68:	8fa20010 	lw	v0,16(sp)
    1d6c:	84590000 	lh	t9,0(v0)
    1d70:	84880262 	lh	t0,610(a0)
    1d74:	844a0004 	lh	t2,4(v0)
    1d78:	03284821 	addu	t1,t9,t0
    1d7c:	a4490000 	sh	t1,0(v0)
    1d80:	848b0264 	lh	t3,612(a0)
    1d84:	014b6021 	addu	t4,t2,t3
    1d88:	a44c0004 	sh	t4,4(v0)
    1d8c:	03e00008 	jr	ra
    1d90:	00001025 	move	v0,zero

00001d94 <EnHeishi2_PostLimbDraw>:
    1d94:	27bdffe8 	addiu	sp,sp,-24
    1d98:	24010010 	li	at,16
    1d9c:	afbf0014 	sw	ra,20(sp)
    1da0:	afa40018 	sw	a0,24(sp)
    1da4:	afa60020 	sw	a2,32(sp)
    1da8:	14a10004 	bne	a1,at,1dbc <EnHeishi2_PostLimbDraw+0x28>
    1dac:	afa70024 	sw	a3,36(sp)
    1db0:	8fa40028 	lw	a0,40(sp)
    1db4:	0c000000 	jal	0 <EnHeishi2_Init>
    1db8:	24840330 	addiu	a0,a0,816
    1dbc:	8fbf0014 	lw	ra,20(sp)
    1dc0:	27bd0018 	addiu	sp,sp,24
    1dc4:	03e00008 	jr	ra
    1dc8:	00000000 	nop

00001dcc <func_80A54C6C>:
    1dcc:	27bdffc8 	addiu	sp,sp,-56
    1dd0:	afbf0014 	sw	ra,20(sp)
    1dd4:	afa40038 	sw	a0,56(sp)
    1dd8:	afa5003c 	sw	a1,60(sp)
    1ddc:	8ca50000 	lw	a1,0(a1)
    1de0:	3c060000 	lui	a2,0x0
    1de4:	24c60318 	addiu	a2,a2,792
    1de8:	27a40024 	addiu	a0,sp,36
    1dec:	240706ec 	li	a3,1772
    1df0:	0c000000 	jal	0 <EnHeishi2_Init>
    1df4:	afa50034 	sw	a1,52(sp)
    1df8:	8fa80034 	lw	t0,52(sp)
    1dfc:	3c18da38 	lui	t8,0xda38
    1e00:	37180003 	ori	t8,t8,0x3
    1e04:	8d0202c0 	lw	v0,704(t0)
    1e08:	3c050000 	lui	a1,0x0
    1e0c:	24a5032c 	addiu	a1,a1,812
    1e10:	244f0008 	addiu	t7,v0,8
    1e14:	ad0f02c0 	sw	t7,704(t0)
    1e18:	ac580000 	sw	t8,0(v0)
    1e1c:	8fb9003c 	lw	t9,60(sp)
    1e20:	240606ee 	li	a2,1774
    1e24:	8f240000 	lw	a0,0(t9)
    1e28:	afa80034 	sw	t0,52(sp)
    1e2c:	0c000000 	jal	0 <EnHeishi2_Init>
    1e30:	afa20020 	sw	v0,32(sp)
    1e34:	8fa30020 	lw	v1,32(sp)
    1e38:	8fa80034 	lw	t0,52(sp)
    1e3c:	3c0b0000 	lui	t3,0x0
    1e40:	ac620004 	sw	v0,4(v1)
    1e44:	8d0202c0 	lw	v0,704(t0)
    1e48:	256b0000 	addiu	t3,t3,0
    1e4c:	3c0ade00 	lui	t2,0xde00
    1e50:	24490008 	addiu	t1,v0,8
    1e54:	ad0902c0 	sw	t1,704(t0)
    1e58:	ac4b0004 	sw	t3,4(v0)
    1e5c:	ac4a0000 	sw	t2,0(v0)
    1e60:	8fac003c 	lw	t4,60(sp)
    1e64:	3c060000 	lui	a2,0x0
    1e68:	24c60340 	addiu	a2,a2,832
    1e6c:	27a40024 	addiu	a0,sp,36
    1e70:	240706f1 	li	a3,1777
    1e74:	0c000000 	jal	0 <EnHeishi2_Init>
    1e78:	8d850000 	lw	a1,0(t4)
    1e7c:	8fbf0014 	lw	ra,20(sp)
    1e80:	27bd0038 	addiu	sp,sp,56
    1e84:	03e00008 	jr	ra
    1e88:	00000000 	nop

00001e8c <EnHeishi2_Draw>:
    1e8c:	27bdff98 	addiu	sp,sp,-104
    1e90:	afb10024 	sw	s1,36(sp)
    1e94:	00a08825 	move	s1,a1
    1e98:	afbf002c 	sw	ra,44(sp)
    1e9c:	afb20028 	sw	s2,40(sp)
    1ea0:	afb00020 	sw	s0,32(sp)
    1ea4:	8ca50000 	lw	a1,0(a1)
    1ea8:	00809025 	move	s2,a0
    1eac:	3c060000 	lui	a2,0x0
    1eb0:	24c60354 	addiu	a2,a2,852
    1eb4:	27a40048 	addiu	a0,sp,72
    1eb8:	24070700 	li	a3,1792
    1ebc:	0c000000 	jal	0 <EnHeishi2_Init>
    1ec0:	00a08025 	move	s0,a1
    1ec4:	0c000000 	jal	0 <EnHeishi2_Init>
    1ec8:	8e240000 	lw	a0,0(s1)
    1ecc:	3c0e0000 	lui	t6,0x0
    1ed0:	25ce0000 	addiu	t6,t6,0
    1ed4:	8e450150 	lw	a1,336(s2)
    1ed8:	8e46016c 	lw	a2,364(s2)
    1edc:	3c070000 	lui	a3,0x0
    1ee0:	24e70000 	addiu	a3,a3,0
    1ee4:	afb20014 	sw	s2,20(sp)
    1ee8:	afae0010 	sw	t6,16(sp)
    1eec:	0c000000 	jal	0 <EnHeishi2_Init>
    1ef0:	02202025 	move	a0,s1
    1ef4:	864f02fe 	lh	t7,766(s2)
    1ef8:	24010005 	li	at,5
    1efc:	3c180000 	lui	t8,0x0
    1f00:	15e10046 	bne	t7,at,201c <EnHeishi2_Draw+0x190>
    1f04:	00000000 	nop
    1f08:	97180f06 	lhu	t8,3846(t8)
    1f0c:	3c010001 	lui	at,0x1
    1f10:	342117a4 	ori	at,at,0x17a4
    1f14:	33190080 	andi	t9,t8,0x80
    1f18:	13200040 	beqz	t9,201c <EnHeishi2_Draw+0x190>
    1f1c:	02212021 	addu	a0,s1,at
    1f20:	0c000000 	jal	0 <EnHeishi2_Init>
    1f24:	24050015 	li	a1,21
    1f28:	0440003c 	bltz	v0,201c <EnHeishi2_Draw+0x190>
    1f2c:	afa2005c 	sw	v0,92(sp)
    1f30:	0c000000 	jal	0 <EnHeishi2_Init>
    1f34:	26440330 	addiu	a0,s2,816
    1f38:	44807000 	mtc1	zero,$f14
    1f3c:	3c010000 	lui	at,0x0
    1f40:	c42c03bc 	lwc1	$f12,956(at)
    1f44:	44067000 	mfc1	a2,$f14
    1f48:	0c000000 	jal	0 <EnHeishi2_Init>
    1f4c:	24070001 	li	a3,1
    1f50:	3c010000 	lui	at,0x0
    1f54:	c42c03c0 	lwc1	$f12,960(at)
    1f58:	0c000000 	jal	0 <EnHeishi2_Init>
    1f5c:	24050001 	li	a1,1
    1f60:	3c050000 	lui	a1,0x0
    1f64:	24a50368 	addiu	a1,a1,872
    1f68:	8e240000 	lw	a0,0(s1)
    1f6c:	0c000000 	jal	0 <EnHeishi2_Init>
    1f70:	2406071c 	li	a2,1820
    1f74:	8e0302c0 	lw	v1,704(s0)
    1f78:	3c05db06 	lui	a1,0xdb06
    1f7c:	34a50018 	ori	a1,a1,0x18
    1f80:	24680008 	addiu	t0,v1,8
    1f84:	ae0802c0 	sw	t0,704(s0)
    1f88:	ac650000 	sw	a1,0(v1)
    1f8c:	8fa9005c 	lw	t1,92(sp)
    1f90:	24060044 	li	a2,68
    1f94:	3c070001 	lui	a3,0x1
    1f98:	01260019 	multu	t1,a2
    1f9c:	3c0fdb06 	lui	t7,0xdb06
    1fa0:	35ef0034 	ori	t7,t7,0x34
    1fa4:	2458fe40 	addiu	t8,v0,-448
    1fa8:	3c090000 	lui	t1,0x0
    1fac:	25290000 	addiu	t1,t1,0
    1fb0:	3c08de00 	lui	t0,0xde00
    1fb4:	00005012 	mflo	t2
    1fb8:	022a5821 	addu	t3,s1,t2
    1fbc:	01676021 	addu	t4,t3,a3
    1fc0:	8d8d17b4 	lw	t5,6068(t4)
    1fc4:	ac6d0004 	sw	t5,4(v1)
    1fc8:	8e0302c0 	lw	v1,704(s0)
    1fcc:	246e0008 	addiu	t6,v1,8
    1fd0:	ae0e02c0 	sw	t6,704(s0)
    1fd4:	ac780004 	sw	t8,4(v1)
    1fd8:	ac6f0000 	sw	t7,0(v1)
    1fdc:	8e0302c0 	lw	v1,704(s0)
    1fe0:	24790008 	addiu	t9,v1,8
    1fe4:	ae1902c0 	sw	t9,704(s0)
    1fe8:	ac690004 	sw	t1,4(v1)
    1fec:	ac680000 	sw	t0,0(v1)
    1ff0:	8e0302c0 	lw	v1,704(s0)
    1ff4:	246a0008 	addiu	t2,v1,8
    1ff8:	ae0a02c0 	sw	t2,704(s0)
    1ffc:	ac650000 	sw	a1,0(v1)
    2000:	824b001e 	lb	t3,30(s2)
    2004:	01660019 	multu	t3,a2
    2008:	00006012 	mflo	t4
    200c:	022c6821 	addu	t5,s1,t4
    2010:	01a77021 	addu	t6,t5,a3
    2014:	8dcf17b4 	lw	t7,6068(t6)
    2018:	ac6f0004 	sw	t7,4(v1)
    201c:	3c060000 	lui	a2,0x0
    2020:	24c6037c 	addiu	a2,a2,892
    2024:	27a40048 	addiu	a0,sp,72
    2028:	8e250000 	lw	a1,0(s1)
    202c:	0c000000 	jal	0 <EnHeishi2_Init>
    2030:	2407072a 	li	a3,1834
    2034:	8fbf002c 	lw	ra,44(sp)
    2038:	8fb00020 	lw	s0,32(sp)
    203c:	8fb10024 	lw	s1,36(sp)
    2040:	8fb20028 	lw	s2,40(sp)
    2044:	03e00008 	jr	ra
    2048:	27bd0068 	addiu	sp,sp,104
    204c:	00000000 	nop
