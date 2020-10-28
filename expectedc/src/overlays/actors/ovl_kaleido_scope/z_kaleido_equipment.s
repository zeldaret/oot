
build/src/overlays/actors/ovl_kaleido_scope/z_kaleido_equipment.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <func_80817D50>:
       0:	27bdff28 	addiu	sp,sp,-216
       4:	afbf0014 	sw	ra,20(sp)
       8:	afa400d8 	sw	a0,216(sp)
       c:	afa500dc 	sw	a1,220(sp)
      10:	afa600e0 	sw	a2,224(sp)
      14:	afa700e4 	sw	a3,228(sp)
      18:	8c850000 	lw	a1,0(a0)
      1c:	3c060000 	lui	a2,0x0
      20:	24c60000 	addiu	a2,a2,0
      24:	27a400a0 	addiu	a0,sp,160
      28:	24070044 	li	a3,68
      2c:	0c000000 	jal	0 <func_80817D50>
      30:	afa500b0 	sw	a1,176(sp)
      34:	8fa800b0 	lw	t0,176(sp)
      38:	8faa00e0 	lw	t2,224(sp)
      3c:	3c0de700 	lui	t5,0xe700
      40:	8d0202c0 	lw	v0,704(t0)
      44:	3c19fc11 	lui	t9,0xfc11
      48:	3c0eff2f 	lui	t6,0xff2f
      4c:	244f0008 	addiu	t7,v0,8
      50:	ad0f02c0 	sw	t7,704(t0)
      54:	ac400004 	sw	zero,4(v0)
      58:	ac4d0000 	sw	t5,0(v0)
      5c:	8d0202c0 	lw	v0,704(t0)
      60:	35ceffff 	ori	t6,t6,0xffff
      64:	37399623 	ori	t9,t9,0x9623
      68:	24580008 	addiu	t8,v0,8
      6c:	ad1802c0 	sw	t8,704(t0)
      70:	ac4e0004 	sw	t6,4(v0)
      74:	ac590000 	sw	t9,0(v0)
      78:	8d0202c0 	lw	v0,704(t0)
      7c:	3c18e300 	lui	t8,0xe300
      80:	37181201 	ori	t8,t8,0x1201
      84:	244f0008 	addiu	t7,v0,8
      88:	ad0f02c0 	sw	t7,704(t0)
      8c:	ac400004 	sw	zero,4(v0)
      90:	ac580000 	sw	t8,0(v0)
      94:	8d0202c0 	lw	v0,704(t0)
      98:	3c0efa00 	lui	t6,0xfa00
      9c:	000a2040 	sll	a0,t2,0x1
      a0:	24590008 	addiu	t9,v0,8
      a4:	ad1902c0 	sw	t9,704(t0)
      a8:	ac4e0000 	sw	t6,0(v0)
      ac:	240e1000 	li	t6,4096
      b0:	01c4001b 	divu	zero,t6,a0
      b4:	8fa900d8 	lw	t1,216(sp)
      b8:	3c010001 	lui	at,0x1
      bc:	34210760 	ori	at,at,0x760
      c0:	01214821 	addu	t1,t1,at
      c4:	952f0208 	lhu	t7,520(t1)
      c8:	2401ff00 	li	at,-256
      cc:	00003012 	mflo	a2
      d0:	31f800ff 	andi	t8,t7,0xff
      d4:	0301c825 	or	t9,t8,at
      d8:	ac590004 	sw	t9,4(v0)
      dc:	8faf00e4 	lw	t7,228(sp)
      e0:	00401825 	move	v1,v0
      e4:	8fab00dc 	lw	t3,220(sp)
      e8:	014f0019 	multu	t2,t7
      ec:	00c02825 	move	a1,a2
      f0:	14800002 	bnez	a0,fc <func_80817D50+0xfc>
      f4:	00000000 	nop
      f8:	0007000d 	break	0x7
      fc:	24190050 	li	t9,80
     100:	00003812 	mflo	a3
     104:	00073840 	sll	a3,a3,0x1
     108:	00000000 	nop
     10c:	00ca0019 	multu	a2,t2
     110:	0000f812 	mflo	ra
     114:	001ff840 	sll	ra,ra,0x1
     118:	00000000 	nop
     11c:	00ff001a 	div	zero,a3,ra
     120:	17e00002 	bnez	ra,12c <func_80817D50+0x12c>
     124:	00000000 	nop
     128:	0007000d 	break	0x7
     12c:	2401ffff 	li	at,-1
     130:	17e10004 	bne	ra,at,144 <func_80817D50+0x144>
     134:	3c018000 	lui	at,0x8000
     138:	14e10002 	bne	a3,at,144 <func_80817D50+0x144>
     13c:	00000000 	nop
     140:	0006000d 	break	0x6
     144:	00001012 	mflo	v0
     148:	0000c010 	mfhi	t8
     14c:	00406025 	move	t4,v0
     150:	13000002 	beqz	t8,15c <func_80817D50+0x15c>
     154:	3c01f510 	lui	at,0xf510
     158:	244c0001 	addiu	t4,v0,1
     15c:	afb900cc 	sw	t9,204(sp)
     160:	8d0202c0 	lw	v0,704(t0)
     164:	3c190708 	lui	t9,0x708
     168:	37390200 	ori	t9,t9,0x200
     16c:	244e0008 	addiu	t6,v0,8
     170:	ad0e02c0 	sw	t6,704(t0)
     174:	ac400004 	sw	zero,4(v0)
     178:	ac4d0000 	sw	t5,0(v0)
     17c:	8d0202c0 	lw	v0,704(t0)
     180:	3c0de800 	lui	t5,0xe800
     184:	244f0008 	addiu	t7,v0,8
     188:	ad0f02c0 	sw	t7,704(t0)
     18c:	ac400004 	sw	zero,4(v0)
     190:	ac4d0000 	sw	t5,0(v0)
     194:	afac00c8 	sw	t4,200(sp)
     198:	8d0202c0 	lw	v0,704(t0)
     19c:	248c0007 	addiu	t4,a0,7
     1a0:	000c60c2 	srl	t4,t4,0x3
     1a4:	318c01ff 	andi	t4,t4,0x1ff
     1a8:	24580008 	addiu	t8,v0,8
     1ac:	ad1802c0 	sw	t8,704(t0)
     1b0:	000c6240 	sll	t4,t4,0x9
     1b4:	01816025 	or	t4,t4,at
     1b8:	ac4c0000 	sw	t4,0(v0)
     1bc:	ac590004 	sw	t9,4(v0)
     1c0:	8d0202c0 	lw	v0,704(t0)
     1c4:	3c180008 	lui	t8,0x8
     1c8:	37180200 	ori	t8,t8,0x200
     1cc:	244e0008 	addiu	t6,v0,8
     1d0:	ad0e02c0 	sw	t6,704(t0)
     1d4:	ac400004 	sw	zero,4(v0)
     1d8:	ac4d0000 	sw	t5,0(v0)
     1dc:	8d0202c0 	lw	v0,704(t0)
     1e0:	3c0ef200 	lui	t6,0xf200
     1e4:	3c01fd10 	lui	at,0xfd10
     1e8:	244f0008 	addiu	t7,v0,8
     1ec:	ad0f02c0 	sw	t7,704(t0)
     1f0:	ac580004 	sw	t8,4(v0)
     1f4:	ac4c0000 	sw	t4,0(v0)
     1f8:	afa90048 	sw	t1,72(sp)
     1fc:	afa40040 	sw	a0,64(sp)
     200:	8d0202c0 	lw	v0,704(t0)
     204:	2544ffff 	addiu	a0,t2,-1
     208:	00044880 	sll	t1,a0,0x2
     20c:	24590008 	addiu	t9,v0,8
     210:	ad1902c0 	sw	t9,704(t0)
     214:	24cfffff 	addiu	t7,a2,-1
     218:	000fc080 	sll	t8,t7,0x2
     21c:	31290fff 	andi	t1,t1,0xfff
     220:	00094b00 	sll	t1,t1,0xc
     224:	33190fff 	andi	t9,t8,0xfff
     228:	ac4e0000 	sw	t6,0(v0)
     22c:	01397025 	or	t6,t1,t9
     230:	ac4e0004 	sw	t6,4(v0)
     234:	8faf00c8 	lw	t7,200(sp)
     238:	afa9002c 	sw	t1,44(sp)
     23c:	00ff3023 	subu	a2,a3,ra
     240:	19e00077 	blez	t7,420 <func_80817D50+0x420>
     244:	00004825 	move	t1,zero
     248:	8fae002c 	lw	t6,44(sp)
     24c:	30980fff 	andi	t8,a0,0xfff
     250:	8faa00cc 	lw	t2,204(sp)
     254:	0301c825 	or	t9,t8,at
     258:	3c010700 	lui	at,0x700
     25c:	24a7ffff 	addiu	a3,a1,-1
     260:	00073880 	sll	a3,a3,0x2
     264:	01c17825 	or	t7,t6,at
     268:	afaf0024 	sw	t7,36(sp)
     26c:	30e70fff 	andi	a3,a3,0xfff
     270:	afb90028 	sw	t9,40(sp)
     274:	000a5100 	sll	t2,t2,0x4
     278:	8d0202c0 	lw	v0,704(t0)
     27c:	8fb80024 	lw	t8,36(sp)
     280:	3c0e0100 	lui	t6,0x100
     284:	24590008 	addiu	t9,v0,8
     288:	ad1902c0 	sw	t9,704(t0)
     28c:	35ce4008 	ori	t6,t6,0x4008
     290:	ac4e0000 	sw	t6,0(v0)
     294:	8faf0048 	lw	t7,72(sp)
     298:	03072825 	or	a1,t8,a3
     29c:	00df2023 	subu	a0,a2,ra
     2a0:	8df8015c 	lw	t8,348(t7)
     2a4:	030ac821 	addu	t9,t8,t2
     2a8:	ac590004 	sw	t9,4(v0)
     2ac:	8d0202c0 	lw	v0,704(t0)
     2b0:	3c19e600 	lui	t9,0xe600
     2b4:	244e0008 	addiu	t6,v0,8
     2b8:	ad0e02c0 	sw	t6,704(t0)
     2bc:	8faf0028 	lw	t7,40(sp)
     2c0:	ac4b0004 	sw	t3,4(v0)
     2c4:	017f5821 	addu	t3,t3,ra
     2c8:	ac4f0000 	sw	t7,0(v0)
     2cc:	8d0202c0 	lw	v0,704(t0)
     2d0:	3c0ff400 	lui	t7,0xf400
     2d4:	24580008 	addiu	t8,v0,8
     2d8:	ad1802c0 	sw	t8,704(t0)
     2dc:	ac400004 	sw	zero,4(v0)
     2e0:	ac590000 	sw	t9,0(v0)
     2e4:	8d0202c0 	lw	v0,704(t0)
     2e8:	3c190700 	lui	t9,0x700
     2ec:	37390406 	ori	t9,t9,0x406
     2f0:	244e0008 	addiu	t6,v0,8
     2f4:	ad0e02c0 	sw	t6,704(t0)
     2f8:	ac450004 	sw	a1,4(v0)
     2fc:	ac4f0000 	sw	t7,0(v0)
     300:	8d0202c0 	lw	v0,704(t0)
     304:	240e0602 	li	t6,1538
     308:	24580008 	addiu	t8,v0,8
     30c:	ad1802c0 	sw	t8,704(t0)
     310:	ac4e0004 	sw	t6,4(v0)
     314:	ac590000 	sw	t9,0(v0)
     318:	0481003b 	bgez	a0,408 <func_80817D50+0x408>
     31c:	00401825 	move	v1,v0
     320:	58c0003b 	blezl	a2,410 <func_80817D50+0x410>
     324:	8fb800c8 	lw	t8,200(sp)
     328:	8faf0040 	lw	t7,64(sp)
     32c:	8d0202c0 	lw	v0,704(t0)
     330:	3c19e700 	lui	t9,0xe700
     334:	00cf001a 	div	zero,a2,t7
     338:	24580008 	addiu	t8,v0,8
     33c:	ad1802c0 	sw	t8,704(t0)
     340:	ac400004 	sw	zero,4(v0)
     344:	ac590000 	sw	t9,0(v0)
     348:	8d0202c0 	lw	v0,704(t0)
     34c:	15e00002 	bnez	t7,358 <func_80817D50+0x358>
     350:	00000000 	nop
     354:	0007000d 	break	0x7
     358:	2401ffff 	li	at,-1
     35c:	15e10004 	bne	t7,at,370 <func_80817D50+0x370>
     360:	3c018000 	lui	at,0x8000
     364:	14c10002 	bne	a2,at,370 <func_80817D50+0x370>
     368:	00000000 	nop
     36c:	0006000d 	break	0x6
     370:	244e0008 	addiu	t6,v0,8
     374:	ad0e02c0 	sw	t6,704(t0)
     378:	ac400004 	sw	zero,4(v0)
     37c:	ac4d0000 	sw	t5,0(v0)
     380:	8d0202c0 	lw	v0,704(t0)
     384:	3c180708 	lui	t8,0x708
     388:	37180200 	ori	t8,t8,0x200
     38c:	244f0008 	addiu	t7,v0,8
     390:	ad0f02c0 	sw	t7,704(t0)
     394:	ac580004 	sw	t8,4(v0)
     398:	ac4c0000 	sw	t4,0(v0)
     39c:	8d0202c0 	lw	v0,704(t0)
     3a0:	3c0f0008 	lui	t7,0x8
     3a4:	35ef0200 	ori	t7,t7,0x200
     3a8:	24590008 	addiu	t9,v0,8
     3ac:	ad1902c0 	sw	t9,704(t0)
     3b0:	ac400004 	sw	zero,4(v0)
     3b4:	ac4d0000 	sw	t5,0(v0)
     3b8:	8d0202c0 	lw	v0,704(t0)
     3bc:	3c19f200 	lui	t9,0xf200
     3c0:	00002812 	mflo	a1
     3c4:	244e0008 	addiu	t6,v0,8
     3c8:	ad0e02c0 	sw	t6,704(t0)
     3cc:	ac4f0004 	sw	t7,4(v0)
     3d0:	ac4c0000 	sw	t4,0(v0)
     3d4:	8d0202c0 	lw	v0,704(t0)
     3d8:	24a7ffff 	addiu	a3,a1,-1
     3dc:	00073880 	sll	a3,a3,0x2
     3e0:	24580008 	addiu	t8,v0,8
     3e4:	ad1802c0 	sw	t8,704(t0)
     3e8:	ac590000 	sw	t9,0(v0)
     3ec:	8fae002c 	lw	t6,44(sp)
     3f0:	30e70fff 	andi	a3,a3,0xfff
     3f4:	00803025 	move	a2,a0
     3f8:	01c77825 	or	t7,t6,a3
     3fc:	ac4f0004 	sw	t7,4(v0)
     400:	10000002 	b	40c <func_80817D50+0x40c>
     404:	00401825 	move	v1,v0
     408:	00803025 	move	a2,a0
     40c:	8fb800c8 	lw	t8,200(sp)
     410:	25290001 	addiu	t1,t1,1
     414:	254a0040 	addiu	t2,t2,64
     418:	5538ff98 	bnel	t1,t8,27c <func_80817D50+0x27c>
     41c:	8d0202c0 	lw	v0,704(t0)
     420:	8fb900d8 	lw	t9,216(sp)
     424:	3c060000 	lui	a2,0x0
     428:	24c60000 	addiu	a2,a2,0
     42c:	27a400a0 	addiu	a0,sp,160
     430:	2407007a 	li	a3,122
     434:	0c000000 	jal	0 <func_80817D50>
     438:	8f250000 	lw	a1,0(t9)
     43c:	8fbf0014 	lw	ra,20(sp)
     440:	27bd00d8 	addiu	sp,sp,216
     444:	03e00008 	jr	ra
     448:	00000000 	nop

0000044c <func_8081819C>:
     44c:	3c030000 	lui	v1,0x0
     450:	24630000 	addiu	v1,v1,0
     454:	8c6e0004 	lw	t6,4(v1)
     458:	27bdffa0 	addiu	sp,sp,-96
     45c:	afbf002c 	sw	ra,44(sp)
     460:	11c00003 	beqz	t6,470 <func_8081819C+0x24>
     464:	24010005 	li	at,5
     468:	10000002 	b	474 <func_8081819C+0x28>
     46c:	24020005 	li	v0,5
     470:	24020011 	li	v0,17
     474:	14410019 	bne	v0,at,4dc <func_8081819C+0x90>
     478:	240e7e2c 	li	t6,32300
     47c:	3c014000 	lui	at,0x4000
     480:	44812000 	mtc1	at,$f4
     484:	3c01c302 	lui	at,0xc302
     488:	44813000 	mtc1	at,$f6
     48c:	3c020000 	lui	v0,0x0
     490:	3c0f0000 	lui	t7,0x0
     494:	95ef0000 	lhu	t7,0(t7)
     498:	94420070 	lhu	v0,112(v0)
     49c:	3c01c316 	lui	at,0xc316
     4a0:	44814000 	mtc1	at,$f8
     4a4:	3c190000 	lui	t9,0x0
     4a8:	93390000 	lbu	t9,0(t9)
     4ac:	3c010000 	lui	at,0x0
     4b0:	3c0a0000 	lui	t2,0x0
     4b4:	3c090000 	lui	t1,0x0
     4b8:	004fc024 	and	t8,v0,t7
     4bc:	25290000 	addiu	t1,t1,0
     4c0:	254a0000 	addiu	t2,t2,0
     4c4:	c4200000 	lwc1	$f0,0(at)
     4c8:	e7a40050 	swc1	$f4,80(sp)
     4cc:	e7a60054 	swc1	$f6,84(sp)
     4d0:	e7a80058 	swc1	$f8,88(sp)
     4d4:	10000023 	b	564 <func_8081819C+0x118>
     4d8:	03384007 	srav	t0,t8,t9
     4dc:	3c090000 	lui	t1,0x0
     4e0:	25290000 	addiu	t1,t1,0
     4e4:	3c0a0000 	lui	t2,0x0
     4e8:	952b0000 	lhu	t3,0(t1)
     4ec:	94620070 	lhu	v0,112(v1)
     4f0:	254a0000 	addiu	t2,t2,0
     4f4:	914d0000 	lbu	t5,0(t2)
     4f8:	004b6024 	and	t4,v0,t3
     4fc:	24010002 	li	at,2
     500:	01ac4007 	srav	t0,t4,t5
     504:	1101000c 	beq	t0,at,538 <func_8081819C+0xec>
     508:	3c0141c8 	lui	at,0x41c8
     50c:	44815000 	mtc1	at,$f10
     510:	3c01c364 	lui	at,0xc364
     514:	44818000 	mtc1	at,$f16
     518:	3c014270 	lui	at,0x4270
     51c:	44819000 	mtc1	at,$f18
     520:	3c010000 	lui	at,0x0
     524:	c4200000 	lwc1	$f0,0(at)
     528:	e7aa0050 	swc1	$f10,80(sp)
     52c:	e7b00054 	swc1	$f16,84(sp)
     530:	1000000c 	b	564 <func_8081819C+0x118>
     534:	e7b20058 	swc1	$f18,88(sp)
     538:	3c0141a0 	lui	at,0x41a0
     53c:	44812000 	mtc1	at,$f4
     540:	3c01c334 	lui	at,0xc334
     544:	44813000 	mtc1	at,$f6
     548:	3c01c220 	lui	at,0xc220
     54c:	44814000 	mtc1	at,$f8
     550:	3c010000 	lui	at,0x0
     554:	c4200000 	lwc1	$f0,0(at)
     558:	e7a40050 	swc1	$f4,80(sp)
     55c:	e7a60054 	swc1	$f6,84(sp)
     560:	e7a80058 	swc1	$f8,88(sp)
     564:	95380004 	lhu	t8,4(t1)
     568:	914b0002 	lbu	t3,2(t2)
     56c:	3c010001 	lui	at,0x1
     570:	a7ae004a 	sh	t6,74(sp)
     574:	34210760 	ori	at,at,0x760
     578:	0058c824 	and	t9,v0,t8
     57c:	a7a0004c 	sh	zero,76(sp)
     580:	a7a00048 	sh	zero,72(sp)
     584:	00811821 	addu	v1,a0,at
     588:	01796007 	srav	t4,t9,t3
     58c:	952e0002 	lhu	t6,2(t1)
     590:	258dffff 	addiu	t5,t4,-1
     594:	8c65013c 	lw	a1,316(v1)
     598:	952b0006 	lhu	t3,6(t1)
     59c:	afad001c 	sw	t5,28(sp)
     5a0:	27af0048 	addiu	t7,sp,72
     5a4:	914d0003 	lbu	t5,3(t2)
     5a8:	91580001 	lbu	t8,1(t2)
     5ac:	afaf0010 	sw	t7,16(sp)
     5b0:	004e7824 	and	t7,v0,t6
     5b4:	004b6024 	and	t4,v0,t3
     5b8:	01ac7007 	srav	t6,t4,t5
     5bc:	030fc807 	srav	t9,t7,t8
     5c0:	25cfffff 	addiu	t7,t6,-1
     5c4:	afaf0024 	sw	t7,36(sp)
     5c8:	afb90020 	sw	t9,32(sp)
     5cc:	afa80018 	sw	t0,24(sp)
     5d0:	e7a00014 	swc1	$f0,20(sp)
     5d4:	2466027c 	addiu	a2,v1,636
     5d8:	0c000000 	jal	0 <func_80817D50>
     5dc:	27a70050 	addiu	a3,sp,80
     5e0:	8fbf002c 	lw	ra,44(sp)
     5e4:	27bd0060 	addiu	sp,sp,96
     5e8:	03e00008 	jr	ra
     5ec:	00000000 	nop

000005f0 <func_80818340>:
     5f0:	27bdff28 	addiu	sp,sp,-216
     5f4:	afbf0044 	sw	ra,68(sp)
     5f8:	afbe0040 	sw	s8,64(sp)
     5fc:	afb7003c 	sw	s7,60(sp)
     600:	afb60038 	sw	s6,56(sp)
     604:	afb50034 	sw	s5,52(sp)
     608:	afb40030 	sw	s4,48(sp)
     60c:	afb3002c 	sw	s3,44(sp)
     610:	afb20028 	sw	s2,40(sp)
     614:	afb10024 	sw	s1,36(sp)
     618:	afb00020 	sw	s0,32(sp)
     61c:	afa400d8 	sw	a0,216(sp)
     620:	8c850000 	lw	a1,0(a0)
     624:	3c060000 	lui	a2,0x0
     628:	24c60000 	addiu	a2,a2,0
     62c:	27a4009c 	addiu	a0,sp,156
     630:	240700db 	li	a3,219
     634:	0c000000 	jal	0 <func_80817D50>
     638:	afa500ac 	sw	a1,172(sp)
     63c:	8fa500ac 	lw	a1,172(sp)
     640:	3c17e700 	lui	s7,0xe700
     644:	3c060000 	lui	a2,0x0
     648:	8ca302c0 	lw	v1,704(a1)
     64c:	3c19fa00 	lui	t9,0xfa00
     650:	24c60000 	addiu	a2,a2,0
     654:	246f0008 	addiu	t7,v1,8
     658:	acaf02c0 	sw	t7,704(a1)
     65c:	ac600004 	sw	zero,4(v1)
     660:	ac770000 	sw	s7,0(v1)
     664:	8ca302c0 	lw	v1,704(a1)
     668:	3c010001 	lui	at,0x1
     66c:	34210760 	ori	at,at,0x760
     670:	24780008 	addiu	t8,v1,8
     674:	acb802c0 	sw	t8,704(a1)
     678:	ac790000 	sw	t9,0(v1)
     67c:	8cc20000 	lw	v0,0(a2)
     680:	8fb600d8 	lw	s6,216(sp)
     684:	3c130200 	lui	s3,0x200
     688:	844a07e6 	lh	t2,2022(v0)
     68c:	844e07e2 	lh	t6,2018(v0)
     690:	845907e4 	lh	t9,2020(v0)
     694:	02c1b021 	addu	s6,s6,at
     698:	314b00ff 	andi	t3,t2,0xff
     69c:	000e7e00 	sll	t7,t6,0x18
     6a0:	96ce0208 	lhu	t6,520(s6)
     6a4:	000b6200 	sll	t4,t3,0x8
     6a8:	018fc025 	or	t8,t4,t7
     6ac:	332a00ff 	andi	t2,t9,0xff
     6b0:	000a5c00 	sll	t3,t2,0x10
     6b4:	030b6825 	or	t5,t8,t3
     6b8:	31cc00ff 	andi	t4,t6,0xff
     6bc:	01ac7825 	or	t7,t5,t4
     6c0:	ac6f0004 	sw	t7,4(v1)
     6c4:	8ca302c0 	lw	v1,704(a1)
     6c8:	3c0afb00 	lui	t2,0xfb00
     6cc:	3c120100 	lui	s2,0x100
     6d0:	24790008 	addiu	t9,v1,8
     6d4:	acb902c0 	sw	t9,704(a1)
     6d8:	ac6a0000 	sw	t2,0(v1)
     6dc:	8cc20000 	lw	v0,0(a2)
     6e0:	3c110000 	lui	s1,0x0
     6e4:	3c100000 	lui	s0,0x0
     6e8:	845807ee 	lh	t8,2030(v0)
     6ec:	844c07ea 	lh	t4,2026(v0)
     6f0:	844a07ec 	lh	t2,2028(v0)
     6f4:	330b00ff 	andi	t3,t8,0xff
     6f8:	000b7200 	sll	t6,t3,0x8
     6fc:	000c7e00 	sll	t7,t4,0x18
     700:	315800ff 	andi	t8,t2,0xff
     704:	00185c00 	sll	t3,t8,0x10
     708:	01cfc825 	or	t9,t6,t7
     70c:	032b6825 	or	t5,t9,t3
     710:	3c080000 	lui	t0,0x0
     714:	25080000 	addiu	t0,t0,0
     718:	26100000 	addiu	s0,s0,0
     71c:	26310000 	addiu	s1,s1,0
     720:	36524008 	ori	s2,s2,0x4008
     724:	26730e00 	addiu	s3,s3,3584
     728:	0000a825 	move	s5,zero
     72c:	24140040 	li	s4,64
     730:	ac6d0004 	sw	t5,4(v1)
     734:	00157040 	sll	t6,s5,0x1
     738:	020e7821 	addu	t7,s0,t6
     73c:	95ea0000 	lhu	t2,0(t7)
     740:	950c0070 	lhu	t4,112(t0)
     744:	0235c821 	addu	t9,s1,s5
     748:	932b0000 	lbu	t3,0(t9)
     74c:	018ac024 	and	t8,t4,t2
     750:	01786807 	srav	t5,t8,t3
     754:	51a0001b 	beqzl	t5,7c4 <func_80818340+0x1d4>
     758:	26b50001 	addiu	s5,s5,1
     75c:	8ca302c0 	lw	v1,704(a1)
     760:	00145100 	sll	t2,s4,0x4
     764:	24060020 	li	a2,32
     768:	246e0008 	addiu	t6,v1,8
     76c:	acae02c0 	sw	t6,704(a1)
     770:	ac600004 	sw	zero,4(v1)
     774:	ac770000 	sw	s7,0(v1)
     778:	8ca302c0 	lw	v1,704(a1)
     77c:	24070020 	li	a3,32
     780:	246f0008 	addiu	t7,v1,8
     784:	acaf02c0 	sw	t7,704(a1)
     788:	ac720000 	sw	s2,0(v1)
     78c:	8ecc015c 	lw	t4,348(s6)
     790:	02602825 	move	a1,s3
     794:	018ac821 	addu	t9,t4,t2
     798:	ac790004 	sw	t9,4(v1)
     79c:	8fb800ac 	lw	t8,172(sp)
     7a0:	8f0402c0 	lw	a0,704(t8)
     7a4:	0c000000 	jal	0 <func_80817D50>
     7a8:	afa00010 	sw	zero,16(sp)
     7ac:	8fab00ac 	lw	t3,172(sp)
     7b0:	3c080000 	lui	t0,0x0
     7b4:	25080000 	addiu	t0,t0,0
     7b8:	ad6202c0 	sw	v0,704(t3)
     7bc:	8fa500ac 	lw	a1,172(sp)
     7c0:	26b50001 	addiu	s5,s5,1
     7c4:	32b5ffff 	andi	s5,s5,0xffff
     7c8:	2aa10004 	slti	at,s5,4
     7cc:	26940004 	addiu	s4,s4,4
     7d0:	1420ffd8 	bnez	at,734 <func_80818340+0x144>
     7d4:	3294ffff 	andi	s4,s4,0xffff
     7d8:	96cd01d4 	lhu	t5,468(s6)
     7dc:	24010006 	li	at,6
     7e0:	55a1030c 	bnel	t5,at,1414 <func_80818340+0xe24>
     7e4:	96ce01e4 	lhu	t6,484(s6)
     7e8:	96ce01e4 	lhu	t6,484(s6)
     7ec:	55c00309 	bnezl	t6,1414 <func_80818340+0xe24>
     7f0:	96ce01e4 	lhu	t6,484(s6)
     7f4:	96cf01e8 	lhu	t7,488(s6)
     7f8:	24150003 	li	s5,3
     7fc:	56af0305 	bnel	s5,t7,1414 <func_80818340+0xe24>
     800:	96ce01e4 	lhu	t6,484(s6)
     804:	86cc021e 	lh	t4,542(s6)
     808:	3c070000 	lui	a3,0x0
     80c:	3c030000 	lui	v1,0x0
     810:	a7ac00b2 	sh	t4,178(sp)
     814:	86c20238 	lh	v0,568(s6)
     818:	a6c00260 	sh	zero,608(s6)
     81c:	24630000 	addiu	v1,v1,0
     820:	14400114 	bnez	v0,c74 <func_80818340+0x684>
     824:	24e70000 	addiu	a3,a3,0
     828:	96d00244 	lhu	s0,580(s6)
     82c:	a6c0025e 	sh	zero,606(s6)
     830:	2a01003b 	slti	at,s0,59
     834:	14200004 	bnez	at,848 <func_80818340+0x258>
     838:	2a010047 	slti	at,s0,71
     83c:	10200002 	beqz	at,848 <func_80818340+0x258>
     840:	240a0008 	li	t2,8
     844:	a6ca0260 	sh	t2,608(s6)
     848:	86d3021e 	lh	s3,542(s6)
     84c:	86d10228 	lh	s1,552(s6)
     850:	86d20232 	lh	s2,562(s6)
     854:	00008025 	move	s0,zero
     858:	86c20214 	lh	v0,532(s6)
     85c:	2841ffe2 	slti	at,v0,-30
     860:	50200052 	beqzl	at,9ac <func_80818340+0x3bc>
     864:	2841001f 	slti	at,v0,31
     868:	86c20228 	lh	v0,552(s6)
     86c:	1040002a 	beqz	v0,918 <func_80818340+0x328>
     870:	2459ffff 	addiu	t9,v0,-1
     874:	86d8021e 	lh	t8,542(s6)
     878:	a6d90228 	sh	t9,552(s6)
     87c:	86cd0228 	lh	t5,552(s6)
     880:	270bffff 	addiu	t3,t8,-1
     884:	a6cb021e 	sh	t3,542(s6)
     888:	55a00019 	bnezl	t5,8f0 <func_80818340+0x300>
     88c:	86cb021e 	lh	t3,542(s6)
     890:	86c60232 	lh	a2,562(s6)
     894:	14c0000a 	bnez	a2,8c0 <func_80818340+0x2d0>
     898:	00065880 	sll	t3,a2,0x2
     89c:	8d0e00a0 	lw	t6,160(t0)
     8a0:	8c6f0014 	lw	t7,20(v1)
     8a4:	90ea0005 	lbu	t2,5(a3)
     8a8:	01cf6024 	and	t4,t6,t7
     8ac:	014cc807 	srav	t9,t4,t2
     8b0:	13200087 	beqz	t9,ad0 <func_80818340+0x4e0>
     8b4:	00000000 	nop
     8b8:	10000085 	b	ad0 <func_80818340+0x4e0>
     8bc:	24100001 	li	s0,1
     8c0:	006b6821 	addu	t5,v1,t3
     8c4:	8dae0000 	lw	t6,0(t5)
     8c8:	8d1800a0 	lw	t8,160(t0)
     8cc:	00e66021 	addu	t4,a3,a2
     8d0:	918a0000 	lbu	t2,0(t4)
     8d4:	030e7824 	and	t7,t8,t6
     8d8:	014fc807 	srav	t9,t7,t2
     8dc:	1320007c 	beqz	t9,ad0 <func_80818340+0x4e0>
     8e0:	00000000 	nop
     8e4:	1000007a 	b	ad0 <func_80818340+0x4e0>
     8e8:	24100001 	li	s0,1
     8ec:	86cb021e 	lh	t3,542(s6)
     8f0:	3c180000 	lui	t8,0x0
     8f4:	950e009c 	lhu	t6,156(t0)
     8f8:	000b6880 	sll	t5,t3,0x2
     8fc:	030dc021 	addu	t8,t8,t5
     900:	8f18fffc 	lw	t8,-4(t8)
     904:	030e6024 	and	t4,t8,t6
     908:	11800071 	beqz	t4,ad0 <func_80818340+0x4e0>
     90c:	00000000 	nop
     910:	1000006f 	b	ad0 <func_80818340+0x4e0>
     914:	24100002 	li	s0,2
     918:	86cf0232 	lh	t7,562(s6)
     91c:	a6d10228 	sh	s1,552(s6)
     920:	2405000a 	li	a1,10
     924:	25ea0001 	addiu	t2,t7,1
     928:	a6ca0232 	sh	t2,562(s6)
     92c:	86c60232 	lh	a2,562(s6)
     930:	28c10004 	slti	at,a2,4
     934:	54200004 	bnezl	at,948 <func_80818340+0x358>
     938:	86c20228 	lh	v0,552(s6)
     93c:	a6c00232 	sh	zero,562(s6)
     940:	86c60232 	lh	a2,562(s6)
     944:	86c20228 	lh	v0,552(s6)
     948:	0006c880 	sll	t9,a2,0x2
     94c:	03225821 	addu	t3,t9,v0
     950:	a6cb021e 	sh	t3,542(s6)
     954:	86cd021e 	lh	t5,542(s6)
     958:	29a10010 	slti	at,t5,16
     95c:	14200003 	bnez	at,96c <func_80818340+0x37c>
     960:	00000000 	nop
     964:	a6c2021e 	sh	v0,542(s6)
     968:	86c60232 	lh	a2,562(s6)
     96c:	16460058 	bne	s2,a2,ad0 <func_80818340+0x4e0>
     970:	00000000 	nop
     974:	a6d10228 	sh	s1,552(s6)
     978:	a6d3021e 	sh	s3,542(s6)
     97c:	8fa400d8 	lw	a0,216(sp)
     980:	0c000000 	jal	0 <func_80817D50>
     984:	24100003 	li	s0,3
     988:	3c080000 	lui	t0,0x0
     98c:	3c070000 	lui	a3,0x0
     990:	3c030000 	lui	v1,0x0
     994:	25080000 	addiu	t0,t0,0
     998:	24630000 	addiu	v1,v1,0
     99c:	24e70000 	addiu	a3,a3,0
     9a0:	1000004b 	b	ad0 <func_80818340+0x4e0>
     9a4:	00000000 	nop
     9a8:	2841001f 	slti	at,v0,31
     9ac:	54200048 	bnezl	at,ad0 <func_80818340+0x4e0>
     9b0:	24100004 	li	s0,4
     9b4:	86c20228 	lh	v0,552(s6)
     9b8:	28410003 	slti	at,v0,3
     9bc:	10200020 	beqz	at,a40 <func_80818340+0x450>
     9c0:	24580001 	addiu	t8,v0,1
     9c4:	86ce021e 	lh	t6,542(s6)
     9c8:	a6d80228 	sh	t8,552(s6)
     9cc:	86cf0228 	lh	t7,552(s6)
     9d0:	25cc0001 	addiu	t4,t6,1
     9d4:	a6cc021e 	sh	t4,542(s6)
     9d8:	55e0000f 	bnezl	t7,a18 <func_80818340+0x428>
     9dc:	86d9021e 	lh	t9,542(s6)
     9e0:	86c60232 	lh	a2,562(s6)
     9e4:	8d0a00a0 	lw	t2,160(t0)
     9e8:	0006c880 	sll	t9,a2,0x2
     9ec:	00795821 	addu	t3,v1,t9
     9f0:	8d6d0000 	lw	t5,0(t3)
     9f4:	00e67021 	addu	t6,a3,a2
     9f8:	91cc0000 	lbu	t4,0(t6)
     9fc:	014dc024 	and	t8,t2,t5
     a00:	01987807 	srav	t7,t8,t4
     a04:	11e00032 	beqz	t7,ad0 <func_80818340+0x4e0>
     a08:	00000000 	nop
     a0c:	10000030 	b	ad0 <func_80818340+0x4e0>
     a10:	24100001 	li	s0,1
     a14:	86d9021e 	lh	t9,542(s6)
     a18:	3c0a0000 	lui	t2,0x0
     a1c:	950d009c 	lhu	t5,156(t0)
     a20:	00195880 	sll	t3,t9,0x2
     a24:	014b5021 	addu	t2,t2,t3
     a28:	8d4afffc 	lw	t2,-4(t2)
     a2c:	014d7024 	and	t6,t2,t5
     a30:	11c00027 	beqz	t6,ad0 <func_80818340+0x4e0>
     a34:	00000000 	nop
     a38:	10000025 	b	ad0 <func_80818340+0x4e0>
     a3c:	24100002 	li	s0,2
     a40:	86d80232 	lh	t8,562(s6)
     a44:	a6d10228 	sh	s1,552(s6)
     a48:	2405000b 	li	a1,11
     a4c:	270c0001 	addiu	t4,t8,1
     a50:	a6cc0232 	sh	t4,562(s6)
     a54:	86c60232 	lh	a2,562(s6)
     a58:	28c10004 	slti	at,a2,4
     a5c:	54200004 	bnezl	at,a70 <func_80818340+0x480>
     a60:	86c20228 	lh	v0,552(s6)
     a64:	a6c00232 	sh	zero,562(s6)
     a68:	86c60232 	lh	a2,562(s6)
     a6c:	86c20228 	lh	v0,552(s6)
     a70:	00067880 	sll	t7,a2,0x2
     a74:	01e2c821 	addu	t9,t7,v0
     a78:	a6d9021e 	sh	t9,542(s6)
     a7c:	86cb021e 	lh	t3,542(s6)
     a80:	29610010 	slti	at,t3,16
     a84:	14200003 	bnez	at,a94 <func_80818340+0x4a4>
     a88:	00000000 	nop
     a8c:	a6c2021e 	sh	v0,542(s6)
     a90:	86c60232 	lh	a2,562(s6)
     a94:	1646000e 	bne	s2,a2,ad0 <func_80818340+0x4e0>
     a98:	00000000 	nop
     a9c:	a6d10228 	sh	s1,552(s6)
     aa0:	a6d3021e 	sh	s3,542(s6)
     aa4:	8fa400d8 	lw	a0,216(sp)
     aa8:	0c000000 	jal	0 <func_80817D50>
     aac:	24100003 	li	s0,3
     ab0:	3c080000 	lui	t0,0x0
     ab4:	3c070000 	lui	a3,0x0
     ab8:	3c030000 	lui	v1,0x0
     abc:	25080000 	addiu	t0,t0,0
     ac0:	24630000 	addiu	v1,v1,0
     ac4:	10000002 	b	ad0 <func_80818340+0x4e0>
     ac8:	24e70000 	addiu	a3,a3,0
     acc:	24100004 	li	s0,4
     ad0:	5200ff62 	beqzl	s0,85c <func_80818340+0x26c>
     ad4:	86c20214 	lh	v0,532(s6)
     ad8:	86d3021e 	lh	s3,542(s6)
     adc:	86d20232 	lh	s2,562(s6)
     ae0:	00008025 	move	s0,zero
     ae4:	86c20216 	lh	v0,534(s6)
     ae8:	2841001f 	slti	at,v0,31
     aec:	54200033 	bnezl	at,bbc <func_80818340+0x5cc>
     af0:	2841ffe2 	slti	at,v0,-30
     af4:	86c60232 	lh	a2,562(s6)
     af8:	10c00029 	beqz	a2,ba0 <func_80818340+0x5b0>
     afc:	24caffff 	addiu	t2,a2,-1
     b00:	86cd021e 	lh	t5,542(s6)
     b04:	86d80228 	lh	t8,552(s6)
     b08:	a6ca0232 	sh	t2,562(s6)
     b0c:	25aefffc 	addiu	t6,t5,-4
     b10:	17000018 	bnez	t8,b74 <func_80818340+0x584>
     b14:	a6ce021e 	sh	t6,542(s6)
     b18:	86c60232 	lh	a2,562(s6)
     b1c:	14c0000a 	bnez	a2,b48 <func_80818340+0x558>
     b20:	00067080 	sll	t6,a2,0x2
     b24:	8d0c00a0 	lw	t4,160(t0)
     b28:	8c6f0014 	lw	t7,20(v1)
     b2c:	90eb0005 	lbu	t3,5(a3)
     b30:	018fc824 	and	t9,t4,t7
     b34:	01795007 	srav	t2,t9,t3
     b38:	1140004a 	beqz	t2,c64 <func_80818340+0x674>
     b3c:	00000000 	nop
     b40:	10000048 	b	c64 <func_80818340+0x674>
     b44:	24100001 	li	s0,1
     b48:	006ec021 	addu	t8,v1,t6
     b4c:	8f0c0000 	lw	t4,0(t8)
     b50:	8d0d00a0 	lw	t5,160(t0)
     b54:	00e6c821 	addu	t9,a3,a2
     b58:	932b0000 	lbu	t3,0(t9)
     b5c:	01ac7824 	and	t7,t5,t4
     b60:	016f5007 	srav	t2,t7,t3
     b64:	1140003f 	beqz	t2,c64 <func_80818340+0x674>
     b68:	00000000 	nop
     b6c:	1000003d 	b	c64 <func_80818340+0x674>
     b70:	24100001 	li	s0,1
     b74:	86ce021e 	lh	t6,542(s6)
     b78:	3c0d0000 	lui	t5,0x0
     b7c:	950c009c 	lhu	t4,156(t0)
     b80:	000ec080 	sll	t8,t6,0x2
     b84:	01b86821 	addu	t5,t5,t8
     b88:	8dadfffc 	lw	t5,-4(t5)
     b8c:	01acc824 	and	t9,t5,t4
     b90:	13200034 	beqz	t9,c64 <func_80818340+0x674>
     b94:	00000000 	nop
     b98:	10000032 	b	c64 <func_80818340+0x674>
     b9c:	24100002 	li	s0,2
     ba0:	00158400 	sll	s0,s5,0x10
     ba4:	a6d20232 	sh	s2,562(s6)
     ba8:	a6d3021e 	sh	s3,542(s6)
     bac:	00108403 	sra	s0,s0,0x10
     bb0:	1000002c 	b	c64 <func_80818340+0x674>
     bb4:	00000000 	nop
     bb8:	2841ffe2 	slti	at,v0,-30
     bbc:	50200029 	beqzl	at,c64 <func_80818340+0x674>
     bc0:	24100004 	li	s0,4
     bc4:	86c60232 	lh	a2,562(s6)
     bc8:	28c10003 	slti	at,a2,3
     bcc:	1020001f 	beqz	at,c4c <func_80818340+0x65c>
     bd0:	24cf0001 	addiu	t7,a2,1
     bd4:	86cb021e 	lh	t3,542(s6)
     bd8:	86ce0228 	lh	t6,552(s6)
     bdc:	a6cf0232 	sh	t7,562(s6)
     be0:	256a0004 	addiu	t2,t3,4
     be4:	15c0000e 	bnez	t6,c20 <func_80818340+0x630>
     be8:	a6ca021e 	sh	t2,542(s6)
     bec:	86c60232 	lh	a2,562(s6)
     bf0:	8d1800a0 	lw	t8,160(t0)
     bf4:	00066880 	sll	t5,a2,0x2
     bf8:	006d6021 	addu	t4,v1,t5
     bfc:	8d990000 	lw	t9,0(t4)
     c00:	00e65821 	addu	t3,a3,a2
     c04:	916a0000 	lbu	t2,0(t3)
     c08:	03197824 	and	t7,t8,t9
     c0c:	014f7007 	srav	t6,t7,t2
     c10:	11c00014 	beqz	t6,c64 <func_80818340+0x674>
     c14:	00000000 	nop
     c18:	10000012 	b	c64 <func_80818340+0x674>
     c1c:	24100001 	li	s0,1
     c20:	86cd021e 	lh	t5,542(s6)
     c24:	3c180000 	lui	t8,0x0
     c28:	9519009c 	lhu	t9,156(t0)
     c2c:	000d6080 	sll	t4,t5,0x2
     c30:	030cc021 	addu	t8,t8,t4
     c34:	8f18fffc 	lw	t8,-4(t8)
     c38:	03195824 	and	t3,t8,t9
     c3c:	11600009 	beqz	t3,c64 <func_80818340+0x674>
     c40:	00000000 	nop
     c44:	10000007 	b	c64 <func_80818340+0x674>
     c48:	24100002 	li	s0,2
     c4c:	00158400 	sll	s0,s5,0x10
     c50:	a6d20232 	sh	s2,562(s6)
     c54:	a6d3021e 	sh	s3,542(s6)
     c58:	10000002 	b	c64 <func_80818340+0x674>
     c5c:	00108403 	sra	s0,s0,0x10
     c60:	24100004 	li	s0,4
     c64:	5200ffa0 	beqzl	s0,ae8 <func_80818340+0x4f8>
     c68:	86c20216 	lh	v0,534(s6)
     c6c:	100000a3 	b	efc <func_80818340+0x90c>
     c70:	86cd0228 	lh	t5,552(s6)
     c74:	2401000a 	li	at,10
     c78:	54410058 	bnel	v0,at,ddc <func_80818340+0x7ec>
     c7c:	86cb0214 	lh	t3,532(s6)
     c80:	86cf0214 	lh	t7,532(s6)
     c84:	3c140000 	lui	s4,0x0
     c88:	26870000 	addiu	a3,s4,0
     c8c:	29e1001f 	slti	at,t7,31
     c90:	1420004f 	bnez	at,dd0 <func_80818340+0x7e0>
     c94:	24044809 	li	a0,18441
     c98:	3c0a0000 	lui	t2,0x0
     c9c:	a6c0025c 	sh	zero,604(s6)
     ca0:	a6c00238 	sh	zero,568(s6)
     ca4:	254a0000 	addiu	t2,t2,0
     ca8:	3c050000 	lui	a1,0x0
     cac:	24a50000 	addiu	a1,a1,0
     cb0:	afaa0014 	sw	t2,20(sp)
     cb4:	afa70010 	sw	a3,16(sp)
     cb8:	0c000000 	jal	0 <func_80817D50>
     cbc:	24060004 	li	a2,4
     cc0:	3c080000 	lui	t0,0x0
     cc4:	25080000 	addiu	t0,t0,0
     cc8:	00009025 	move	s2,zero
     ccc:	00008825 	move	s1,zero
     cd0:	00009825 	move	s3,zero
     cd4:	1620001e 	bnez	s1,d50 <func_80818340+0x760>
     cd8:	00136880 	sll	t5,s3,0x2
     cdc:	1640000d 	bnez	s2,d14 <func_80818340+0x724>
     ce0:	8d0300a0 	lw	v1,160(t0)
     ce4:	3c0e0000 	lui	t6,0x0
     ce8:	8dce0014 	lw	t6,20(t6)
     cec:	3c0c0000 	lui	t4,0x0
     cf0:	918c0005 	lbu	t4,5(t4)
     cf4:	006e6824 	and	t5,v1,t6
     cf8:	018dc007 	srav	t8,t5,t4
     cfc:	53000020 	beqzl	t8,d80 <func_80818340+0x790>
     d00:	26520001 	addiu	s2,s2,1
     d04:	a6d3021e 	sh	s3,542(s6)
     d08:	a6d10228 	sh	s1,552(s6)
     d0c:	1000007a 	b	ef8 <func_80818340+0x908>
     d10:	a6d20232 	sh	s2,562(s6)
     d14:	0012c880 	sll	t9,s2,0x2
     d18:	3c0b0000 	lui	t3,0x0
     d1c:	01795821 	addu	t3,t3,t9
     d20:	3c0a0000 	lui	t2,0x0
     d24:	8d6b0000 	lw	t3,0(t3)
     d28:	01525021 	addu	t2,t2,s2
     d2c:	914a0000 	lbu	t2,0(t2)
     d30:	006b7824 	and	t7,v1,t3
     d34:	014f7007 	srav	t6,t7,t2
     d38:	51c00011 	beqzl	t6,d80 <func_80818340+0x790>
     d3c:	26520001 	addiu	s2,s2,1
     d40:	a6d3021e 	sh	s3,542(s6)
     d44:	a6d10228 	sh	s1,552(s6)
     d48:	1000006b 	b	ef8 <func_80818340+0x908>
     d4c:	a6d20232 	sh	s2,562(s6)
     d50:	3c0c0000 	lui	t4,0x0
     d54:	018d6021 	addu	t4,t4,t5
     d58:	8d8cfffc 	lw	t4,-4(t4)
     d5c:	9518009c 	lhu	t8,156(t0)
     d60:	0198c824 	and	t9,t4,t8
     d64:	53200006 	beqzl	t9,d80 <func_80818340+0x790>
     d68:	26520001 	addiu	s2,s2,1
     d6c:	a6d3021e 	sh	s3,542(s6)
     d70:	a6d10228 	sh	s1,552(s6)
     d74:	10000060 	b	ef8 <func_80818340+0x908>
     d78:	a6d20232 	sh	s2,562(s6)
     d7c:	26520001 	addiu	s2,s2,1
     d80:	00129400 	sll	s2,s2,0x10
     d84:	00129403 	sra	s2,s2,0x10
     d88:	26730004 	addiu	s3,s3,4
     d8c:	00139c00 	sll	s3,s3,0x10
     d90:	2a410004 	slti	at,s2,4
     d94:	1420ffcf 	bnez	at,cd4 <func_80818340+0x6e4>
     d98:	00139c03 	sra	s3,s3,0x10
     d9c:	26220001 	addiu	v0,s1,1
     da0:	00028c00 	sll	s1,v0,0x10
     da4:	00118c03 	sra	s1,s1,0x10
     da8:	00029c00 	sll	s3,v0,0x10
     dac:	2a210004 	slti	at,s1,4
     db0:	00009025 	move	s2,zero
     db4:	1420ffc7 	bnez	at,cd4 <func_80818340+0x6e4>
     db8:	00139c03 	sra	s3,s3,0x10
     dbc:	8fa400d8 	lw	a0,216(sp)
     dc0:	0c000000 	jal	0 <func_80817D50>
     dc4:	2405000b 	li	a1,11
     dc8:	3c080000 	lui	t0,0x0
     dcc:	25080000 	addiu	t0,t0,0
     dd0:	1000004a 	b	efc <func_80818340+0x90c>
     dd4:	86cd0228 	lh	t5,552(s6)
     dd8:	86cb0214 	lh	t3,532(s6)
     ddc:	3c140000 	lui	s4,0x0
     de0:	26870000 	addiu	a3,s4,0
     de4:	2961ffe2 	slti	at,t3,-30
     de8:	10200043 	beqz	at,ef8 <func_80818340+0x908>
     dec:	24044809 	li	a0,18441
     df0:	3c0f0000 	lui	t7,0x0
     df4:	a6c0025c 	sh	zero,604(s6)
     df8:	a6c00238 	sh	zero,568(s6)
     dfc:	25ef0000 	addiu	t7,t7,0
     e00:	3c050000 	lui	a1,0x0
     e04:	24a50000 	addiu	a1,a1,0
     e08:	afaf0014 	sw	t7,20(sp)
     e0c:	afa70010 	sw	a3,16(sp)
     e10:	0c000000 	jal	0 <func_80817D50>
     e14:	24060004 	li	a2,4
     e18:	3c080000 	lui	t0,0x0
     e1c:	00158c00 	sll	s1,s5,0x10
     e20:	00159c00 	sll	s3,s5,0x10
     e24:	25080000 	addiu	t0,t0,0
     e28:	00139c03 	sra	s3,s3,0x10
     e2c:	00118c03 	sra	s1,s1,0x10
     e30:	00009025 	move	s2,zero
     e34:	16200011 	bnez	s1,e7c <func_80818340+0x88c>
     e38:	00135880 	sll	t3,s3,0x2
     e3c:	00127080 	sll	t6,s2,0x2
     e40:	3c0d0000 	lui	t5,0x0
     e44:	01ae6821 	addu	t5,t5,t6
     e48:	3c180000 	lui	t8,0x0
     e4c:	8dad0000 	lw	t5,0(t5)
     e50:	8d0a00a0 	lw	t2,160(t0)
     e54:	0312c021 	addu	t8,t8,s2
     e58:	93180000 	lbu	t8,0(t8)
     e5c:	014d6024 	and	t4,t2,t5
     e60:	030cc807 	srav	t9,t4,t8
     e64:	53200011 	beqzl	t9,eac <func_80818340+0x8bc>
     e68:	26520001 	addiu	s2,s2,1
     e6c:	a6d3021e 	sh	s3,542(s6)
     e70:	a6d10228 	sh	s1,552(s6)
     e74:	10000020 	b	ef8 <func_80818340+0x908>
     e78:	a6d20232 	sh	s2,562(s6)
     e7c:	3c0f0000 	lui	t7,0x0
     e80:	01eb7821 	addu	t7,t7,t3
     e84:	8deffffc 	lw	t7,-4(t7)
     e88:	950e009c 	lhu	t6,156(t0)
     e8c:	01ee5024 	and	t2,t7,t6
     e90:	51400006 	beqzl	t2,eac <func_80818340+0x8bc>
     e94:	26520001 	addiu	s2,s2,1
     e98:	a6d3021e 	sh	s3,542(s6)
     e9c:	a6d10228 	sh	s1,552(s6)
     ea0:	10000015 	b	ef8 <func_80818340+0x908>
     ea4:	a6d20232 	sh	s2,562(s6)
     ea8:	26520001 	addiu	s2,s2,1
     eac:	00129400 	sll	s2,s2,0x10
     eb0:	00129403 	sra	s2,s2,0x10
     eb4:	26730004 	addiu	s3,s3,4
     eb8:	00139c00 	sll	s3,s3,0x10
     ebc:	2a410004 	slti	at,s2,4
     ec0:	1420ffdc 	bnez	at,e34 <func_80818340+0x844>
     ec4:	00139c03 	sra	s3,s3,0x10
     ec8:	2622ffff 	addiu	v0,s1,-1
     ecc:	00028c00 	sll	s1,v0,0x10
     ed0:	00029c00 	sll	s3,v0,0x10
     ed4:	00118c03 	sra	s1,s1,0x10
     ed8:	00009025 	move	s2,zero
     edc:	0621ffd5 	bgez	s1,e34 <func_80818340+0x844>
     ee0:	00139c03 	sra	s3,s3,0x10
     ee4:	8fa400d8 	lw	a0,216(sp)
     ee8:	0c000000 	jal	0 <func_80817D50>
     eec:	2405000a 	li	a1,10
     ef0:	3c080000 	lui	t0,0x0
     ef4:	25080000 	addiu	t0,t0,0
     ef8:	86cd0228 	lh	t5,552(s6)
     efc:	3c140000 	lui	s4,0x0
     f00:	26940000 	addiu	s4,s4,0
     f04:	55a0005e 	bnezl	t5,1080 <func_80818340+0xa90>
     f08:	86ce021e 	lh	t6,542(s6)
     f0c:	a6c00260 	sh	zero,608(s6)
     f10:	8d0c0004 	lw	t4,4(t0)
     f14:	24010005 	li	at,5
     f18:	24020011 	li	v0,17
     f1c:	11800003 	beqz	t4,f2c <func_80818340+0x93c>
     f20:	00000000 	nop
     f24:	10000001 	b	f2c <func_80818340+0x93c>
     f28:	24020005 	li	v0,5
     f2c:	54410028 	bnel	v0,at,fd0 <func_80818340+0x9e0>
     f30:	86c60232 	lh	a2,562(s6)
     f34:	86c60232 	lh	a2,562(s6)
     f38:	3c190000 	lui	t9,0x0
     f3c:	3c0f0000 	lui	t7,0x0
     f40:	14c0000a 	bnez	a2,f6c <func_80818340+0x97c>
     f44:	3c030000 	lui	v1,0x0
     f48:	8d1800a0 	lw	t8,160(t0)
     f4c:	8f390014 	lw	t9,20(t9)
     f50:	91ef0005 	lbu	t7,5(t7)
     f54:	03195824 	and	t3,t8,t9
     f58:	01eb1007 	srav	v0,t3,t7
     f5c:	10400003 	beqz	v0,f6c <func_80818340+0x97c>
     f60:	24500046 	addiu	s0,v0,70
     f64:	10000055 	b	10bc <func_80818340+0xacc>
     f68:	3210ffff 	andi	s0,s0,0xffff
     f6c:	24630000 	addiu	v1,v1,0
     f70:	00065080 	sll	t2,a2,0x2
     f74:	3c070000 	lui	a3,0x0
     f78:	006a6821 	addu	t5,v1,t2
     f7c:	24e70000 	addiu	a3,a3,0
     f80:	8dac0000 	lw	t4,0(t5)
     f84:	8d0e00a0 	lw	t6,160(t0)
     f88:	00e6c821 	addu	t9,a3,a2
     f8c:	3c0a0000 	lui	t2,0x0
     f90:	932b0000 	lbu	t3,0(t9)
     f94:	01465021 	addu	t2,t2,a2
     f98:	914a0000 	lbu	t2,0(t2)
     f9c:	01ccc024 	and	t8,t6,t4
     fa0:	01787807 	srav	t7,t8,t3
     fa4:	01ea8021 	addu	s0,t7,t2
     fa8:	26100049 	addiu	s0,s0,73
     fac:	3210ffff 	andi	s0,s0,0xffff
     fb0:	3c040000 	lui	a0,0x0
     fb4:	24840000 	addiu	a0,a0,0
     fb8:	0c000000 	jal	0 <func_80817D50>
     fbc:	02002825 	move	a1,s0
     fc0:	3c080000 	lui	t0,0x0
     fc4:	1000003d 	b	10bc <func_80818340+0xacc>
     fc8:	25080000 	addiu	t0,t0,0
     fcc:	86c60232 	lh	a2,562(s6)
     fd0:	3c0d0000 	lui	t5,0x0
     fd4:	3c0c0000 	lui	t4,0x0
     fd8:	14c00010 	bnez	a2,101c <func_80818340+0xa2c>
     fdc:	3c070000 	lui	a3,0x0
     fe0:	8d0300a0 	lw	v1,160(t0)
     fe4:	8dad0000 	lw	t5,0(t5)
     fe8:	918c0000 	lbu	t4,0(t4)
     fec:	3c180000 	lui	t8,0x0
     ff0:	006d7024 	and	t6,v1,t5
     ff4:	018ec807 	srav	t9,t6,t4
     ff8:	17200008 	bnez	t9,101c <func_80818340+0xa2c>
     ffc:	3c0f0000 	lui	t7,0x0
    1000:	8f180014 	lw	t8,20(t8)
    1004:	91ef0005 	lbu	t7,5(t7)
    1008:	00785824 	and	t3,v1,t8
    100c:	01eb8007 	srav	s0,t3,t7
    1010:	26100046 	addiu	s0,s0,70
    1014:	10000029 	b	10bc <func_80818340+0xacc>
    1018:	3210ffff 	andi	s0,s0,0xffff
    101c:	3c030000 	lui	v1,0x0
    1020:	24630000 	addiu	v1,v1,0
    1024:	00066880 	sll	t5,a2,0x2
    1028:	006d7021 	addu	t6,v1,t5
    102c:	24e70000 	addiu	a3,a3,0
    1030:	8dcc0000 	lw	t4,0(t6)
    1034:	8d0a00a0 	lw	t2,160(t0)
    1038:	00e6c021 	addu	t8,a3,a2
    103c:	3c0d0000 	lui	t5,0x0
    1040:	930b0000 	lbu	t3,0(t8)
    1044:	01a66821 	addu	t5,t5,a2
    1048:	91ad0000 	lbu	t5,0(t5)
    104c:	014cc824 	and	t9,t2,t4
    1050:	01797807 	srav	t7,t9,t3
    1054:	01ed8021 	addu	s0,t7,t5
    1058:	26100049 	addiu	s0,s0,73
    105c:	3210ffff 	andi	s0,s0,0xffff
    1060:	3c040000 	lui	a0,0x0
    1064:	24840000 	addiu	a0,a0,0
    1068:	0c000000 	jal	0 <func_80817D50>
    106c:	02002825 	move	a1,s0
    1070:	3c080000 	lui	t0,0x0
    1074:	10000011 	b	10bc <func_80818340+0xacc>
    1078:	25080000 	addiu	t0,t0,0
    107c:	86ce021e 	lh	t6,542(s6)
    1080:	3c100000 	lui	s0,0x0
    1084:	3c040000 	lui	a0,0x0
    1088:	020e8021 	addu	s0,s0,t6
    108c:	92100000 	lbu	s0,0(s0)
    1090:	24840000 	addiu	a0,a0,0
    1094:	2610003b 	addiu	s0,s0,59
    1098:	3210ffff 	andi	s0,s0,0xffff
    109c:	0c000000 	jal	0 <func_80817D50>
    10a0:	02002825 	move	a1,s0
    10a4:	86ca0238 	lh	t2,568(s6)
    10a8:	3c080000 	lui	t0,0x0
    10ac:	25080000 	addiu	t0,t0,0
    10b0:	15400002 	bnez	t2,10bc <func_80818340+0xacc>
    10b4:	240c0008 	li	t4,8
    10b8:	a6cc0260 	sh	t4,608(s6)
    10bc:	86d80232 	lh	t8,562(s6)
    10c0:	3c040000 	lui	a0,0x0
    10c4:	24840000 	addiu	a0,a0,0
    10c8:	57000011 	bnezl	t8,1110 <func_80818340+0xb20>
    10cc:	96d7021e 	lhu	s7,542(s6)
    10d0:	86d90228 	lh	t9,552(s6)
    10d4:	56b9000e 	bnel	s5,t9,1110 <func_80818340+0xb20>
    10d8:	96d7021e 	lhu	s7,542(s6)
    10dc:	910b003e 	lbu	t3,62(t0)
    10e0:	3c0f0000 	lui	t7,0x0
    10e4:	11600003 	beqz	t3,10f4 <func_80818340+0xb04>
    10e8:	00000000 	nop
    10ec:	10000007 	b	110c <func_80818340+0xb1c>
    10f0:	2410007a 	li	s0,122
    10f4:	8def000c 	lw	t7,12(t7)
    10f8:	950d009c 	lhu	t5,156(t0)
    10fc:	01ed7024 	and	t6,t7,t5
    1100:	51c00003 	beqzl	t6,1110 <func_80818340+0xb20>
    1104:	96d7021e 	lhu	s7,542(s6)
    1108:	24100055 	li	s0,85
    110c:	96d7021e 	lhu	s7,542(s6)
    1110:	a6d00244 	sh	s0,580(s6)
    1114:	3205ffff 	andi	a1,s0,0xffff
    1118:	0c000000 	jal	0 <func_80817D50>
    111c:	a6d7024c 	sh	s7,588(s6)
    1120:	86ca0232 	lh	t2,562(s6)
    1124:	86d90228 	lh	t9,552(s6)
    1128:	3c1e0000 	lui	s8,0x0
    112c:	27de0000 	addiu	s8,s8,0
    1130:	000a6080 	sll	t4,t2,0x2
    1134:	03ccc021 	addu	t8,s8,t4
    1138:	03195821 	addu	t3,t8,t9
    113c:	91630000 	lbu	v1,0(t3)
    1140:	3c080000 	lui	t0,0x0
    1144:	24010009 	li	at,9
    1148:	10610005 	beq	v1,at,1160 <func_80818340+0xb70>
    114c:	25080000 	addiu	t0,t0,0
    1150:	8d0f0004 	lw	t7,4(t0)
    1154:	106f0002 	beq	v1,t7,1160 <func_80818340+0xb70>
    1158:	24030001 	li	v1,1
    115c:	a6c3025e 	sh	v1,606(s6)
    1160:	96cd0244 	lhu	t5,580(s6)
    1164:	24010050 	li	at,80
    1168:	24030001 	li	v1,1
    116c:	15a1000d 	bne	t5,at,11a4 <func_80818340+0xbb4>
    1170:	02c02025 	move	a0,s6
    1174:	8d0e0004 	lw	t6,4(t0)
    1178:	24010005 	li	at,5
    117c:	24020011 	li	v0,17
    1180:	11c00003 	beqz	t6,1190 <func_80818340+0xba0>
    1184:	00000000 	nop
    1188:	10000001 	b	1190 <func_80818340+0xba0>
    118c:	24020005 	li	v0,5
    1190:	54410004 	bnel	v0,at,11a4 <func_80818340+0xbb4>
    1194:	a6c3025e 	sh	v1,606(s6)
    1198:	10000002 	b	11a4 <func_80818340+0xbb4>
    119c:	a6c0025e 	sh	zero,606(s6)
    11a0:	a6c3025e 	sh	v1,606(s6)
    11a4:	86ca0228 	lh	t2,552(s6)
    11a8:	00172880 	sll	a1,s7,0x2
    11ac:	30a5ffff 	andi	a1,a1,0xffff
    11b0:	15400017 	bnez	t2,1210 <func_80818340+0xc20>
    11b4:	00000000 	nop
    11b8:	86cc0232 	lh	t4,562(s6)
    11bc:	24010005 	li	at,5
    11c0:	15800013 	bnez	t4,1210 <func_80818340+0xc20>
    11c4:	00000000 	nop
    11c8:	8d180004 	lw	t8,4(t0)
    11cc:	24020011 	li	v0,17
    11d0:	13000003 	beqz	t8,11e0 <func_80818340+0xbf0>
    11d4:	00000000 	nop
    11d8:	10000001 	b	11e0 <func_80818340+0xbf0>
    11dc:	24020005 	li	v0,5
    11e0:	1041000a 	beq	v0,at,120c <func_80818340+0xc1c>
    11e4:	2a010047 	slti	at,s0,71
    11e8:	14200006 	bnez	at,1204 <func_80818340+0xc14>
    11ec:	02001025 	move	v0,s0
    11f0:	2841004a 	slti	at,v0,74
    11f4:	10200003 	beqz	at,1204 <func_80818340+0xc14>
    11f8:	00000000 	nop
    11fc:	10000004 	b	1210 <func_80818340+0xc20>
    1200:	a6c3025e 	sh	v1,606(s6)
    1204:	10000002 	b	1210 <func_80818340+0xc20>
    1208:	a6c0025e 	sh	zero,606(s6)
    120c:	a6c0025e 	sh	zero,606(s6)
    1210:	0c000000 	jal	0 <func_80817D50>
    1214:	8ec6015c 	lw	a2,348(s6)
    1218:	86d90238 	lh	t9,568(s6)
    121c:	3c080000 	lui	t0,0x0
    1220:	25080000 	addiu	t0,t0,0
    1224:	17200069 	bnez	t9,13cc <func_80818340+0xddc>
    1228:	240103e7 	li	at,999
    122c:	52010068 	beql	s0,at,13d0 <func_80818340+0xde0>
    1230:	87ab00b2 	lh	t3,178(sp)
    1234:	96cb01d4 	lhu	t3,468(s6)
    1238:	24010006 	li	at,6
    123c:	55610064 	bnel	t3,at,13d0 <func_80818340+0xde0>
    1240:	87ab00b2 	lh	t3,178(sp)
    1244:	96cf01e4 	lhu	t7,484(s6)
    1248:	8fad00d8 	lw	t5,216(sp)
    124c:	55e00060 	bnezl	t7,13d0 <func_80818340+0xde0>
    1250:	87ab00b2 	lh	t3,178(sp)
    1254:	95ae0020 	lhu	t6,32(t5)
    1258:	3c01ffff 	lui	at,0xffff
    125c:	34217fff 	ori	at,at,0x7fff
    1260:	01c15027 	nor	t2,t6,at
    1264:	5540005a 	bnezl	t2,13d0 <func_80818340+0xde0>
    1268:	87ab00b2 	lh	t3,178(sp)
    126c:	86c20228 	lh	v0,552(s6)
    1270:	50400057 	beqzl	v0,13d0 <func_80818340+0xde0>
    1274:	87ab00b2 	lh	t3,178(sp)
    1278:	86c60232 	lh	a2,562(s6)
    127c:	24010009 	li	at,9
    1280:	00066080 	sll	t4,a2,0x2
    1284:	03ccc021 	addu	t8,s8,t4
    1288:	0302c821 	addu	t9,t8,v0
    128c:	93230000 	lbu	v1,0(t9)
    1290:	00062400 	sll	a0,a2,0x10
    1294:	00042403 	sra	a0,a0,0x10
    1298:	10610006 	beq	v1,at,12b4 <func_80818340+0xcc4>
    129c:	00000000 	nop
    12a0:	8d0b0004 	lw	t3,4(t0)
    12a4:	3c050000 	lui	a1,0x0
    12a8:	24a50000 	addiu	a1,a1,0
    12ac:	146b003e 	bne	v1,t3,13a8 <func_80818340+0xdb8>
    12b0:	02803825 	move	a3,s4
    12b4:	0c000000 	jal	0 <func_80817D50>
    12b8:	3045ffff 	andi	a1,v0,0xffff
    12bc:	86cf0232 	lh	t7,562(s6)
    12c0:	3c080000 	lui	t0,0x0
    12c4:	25080000 	addiu	t0,t0,0
    12c8:	15e00025 	bnez	t7,1360 <func_80818340+0xd70>
    12cc:	00002825 	move	a1,zero
    12d0:	a5000f32 	sh	zero,3890(t0)
    12d4:	a1100068 	sb	s0,104(t0)
    12d8:	86cd0228 	lh	t5,552(s6)
    12dc:	56ad000a 	bnel	s5,t5,1308 <func_80818340+0xd18>
    12e0:	91020068 	lbu	v0,104(t0)
    12e4:	910e003e 	lbu	t6,62(t0)
    12e8:	240a003d 	li	t2,61
    12ec:	240c0008 	li	t4,8
    12f0:	51c00005 	beqzl	t6,1308 <func_80818340+0xd18>
    12f4:	91020068 	lbu	v0,104(t0)
    12f8:	a10a0068 	sb	t2,104(t0)
    12fc:	10000016 	b	1358 <func_80818340+0xd68>
    1300:	a50c0036 	sh	t4,54(t0)
    1304:	91020068 	lbu	v0,104(t0)
    1308:	2401007a 	li	at,122
    130c:	2418003d 	li	t8,61
    1310:	54410004 	bnel	v0,at,1324 <func_80818340+0xd34>
    1314:	2401003d 	li	at,61
    1318:	a1180068 	sb	t8,104(t0)
    131c:	330200ff 	andi	v0,t8,0xff
    1320:	2401003d 	li	at,61
    1324:	1441000c 	bne	v0,at,1358 <func_80818340+0xd68>
    1328:	00000000 	nop
    132c:	9119003e 	lbu	t9,62(t0)
    1330:	3c0b0000 	lui	t3,0x0
    1334:	17200008 	bnez	t9,1358 <func_80818340+0xd68>
    1338:	00000000 	nop
    133c:	8d6b000c 	lw	t3,12(t3)
    1340:	950f009c 	lhu	t7,156(t0)
    1344:	240e0055 	li	t6,85
    1348:	016f6824 	and	t5,t3,t7
    134c:	11a00002 	beqz	t5,1358 <func_80818340+0xd68>
    1350:	00000000 	nop
    1354:	a10e0068 	sb	t6,104(t0)
    1358:	0c000000 	jal	0 <func_80817D50>
    135c:	8fa400d8 	lw	a0,216(sp)
    1360:	3c0a0000 	lui	t2,0x0
    1364:	254a0000 	addiu	t2,t2,0
    1368:	3c050000 	lui	a1,0x0
    136c:	24a50000 	addiu	a1,a1,0
    1370:	afaa0014 	sw	t2,20(sp)
    1374:	24044808 	li	a0,18440
    1378:	24060004 	li	a2,4
    137c:	02803825 	move	a3,s4
    1380:	0c000000 	jal	0 <func_80817D50>
    1384:	afb40010 	sw	s4,16(sp)
    1388:	240c0007 	li	t4,7
    138c:	3c080000 	lui	t0,0x0
    1390:	a6cc01e4 	sh	t4,484(s6)
    1394:	2418000a 	li	t8,10
    1398:	3c010000 	lui	at,0x0
    139c:	25080000 	addiu	t0,t0,0
    13a0:	1000000a 	b	13cc <func_80818340+0xddc>
    13a4:	a4380000 	sh	t8,0(at)
    13a8:	3c190000 	lui	t9,0x0
    13ac:	27390000 	addiu	t9,t9,0
    13b0:	afb90014 	sw	t9,20(sp)
    13b4:	24044806 	li	a0,18438
    13b8:	24060004 	li	a2,4
    13bc:	0c000000 	jal	0 <func_80817D50>
    13c0:	afb40010 	sw	s4,16(sp)
    13c4:	3c080000 	lui	t0,0x0
    13c8:	25080000 	addiu	t0,t0,0
    13cc:	87ab00b2 	lh	t3,178(sp)
    13d0:	86cf021e 	lh	t7,542(s6)
    13d4:	116f000c 	beq	t3,t7,1408 <func_80818340+0xe18>
    13d8:	3c0d0000 	lui	t5,0x0
    13dc:	25ad0000 	addiu	t5,t5,0
    13e0:	3c050000 	lui	a1,0x0
    13e4:	24a50000 	addiu	a1,a1,0
    13e8:	afad0014 	sw	t5,20(sp)
    13ec:	24044809 	li	a0,18441
    13f0:	24060004 	li	a2,4
    13f4:	02803825 	move	a3,s4
    13f8:	0c000000 	jal	0 <func_80817D50>
    13fc:	afb40010 	sw	s4,16(sp)
    1400:	3c080000 	lui	t0,0x0
    1404:	25080000 	addiu	t0,t0,0
    1408:	1000001c 	b	147c <func_80818340+0xe8c>
    140c:	a7b700ba 	sh	s7,186(sp)
    1410:	96ce01e4 	lhu	t6,484(s6)
    1414:	24010007 	li	at,7
    1418:	24150003 	li	s5,3
    141c:	15c10017 	bne	t6,at,147c <func_80818340+0xe8c>
    1420:	00000000 	nop
    1424:	96ca01e8 	lhu	t2,488(s6)
    1428:	16aa0014 	bne	s5,t2,147c <func_80818340+0xe8c>
    142c:	00000000 	nop
    1430:	96c5024c 	lhu	a1,588(s6)
    1434:	02c02025 	move	a0,s6
    1438:	8ec6015c 	lw	a2,348(s6)
    143c:	00052880 	sll	a1,a1,0x2
    1440:	0c000000 	jal	0 <func_80817D50>
    1444:	30a5ffff 	andi	a1,a1,0xffff
    1448:	240c0008 	li	t4,8
    144c:	a6cc0260 	sh	t4,608(s6)
    1450:	3c180000 	lui	t8,0x0
    1454:	87180000 	lh	t8,0(t8)
    1458:	3c080000 	lui	t0,0x0
    145c:	3c010000 	lui	at,0x0
    1460:	2719ffff 	addiu	t9,t8,-1
    1464:	00195c00 	sll	t3,t9,0x10
    1468:	000b7c03 	sra	t7,t3,0x10
    146c:	25080000 	addiu	t0,t0,0
    1470:	15e00002 	bnez	t7,147c <func_80818340+0xe8c>
    1474:	a4390000 	sh	t9,0(at)
    1478:	a6c001e4 	sh	zero,484(s6)
    147c:	3c1e0000 	lui	s8,0x0
    1480:	27de0000 	addiu	s8,s8,0
    1484:	97b700ba 	lhu	s7,186(sp)
    1488:	0000a825 	move	s5,zero
    148c:	24120004 	li	s2,4
    1490:	a7a000c2 	sh	zero,194(sp)
    1494:	97a700c2 	lhu	a3,194(sp)
    1498:	00008025 	move	s0,zero
    149c:	3254ffff 	andi	s4,s2,0xffff
    14a0:	24f30001 	addiu	s3,a3,1
    14a4:	3273ffff 	andi	s3,s3,0xffff
    14a8:	30f1ffff 	andi	s1,a3,0xffff
    14ac:	00116880 	sll	t5,s1,0x2
    14b0:	3c0e0000 	lui	t6,0x0
    14b4:	01cd7021 	addu	t6,t6,t5
    14b8:	8dce0000 	lw	t6,0(t6)
    14bc:	950a009c 	lhu	t2,156(t0)
    14c0:	26310001 	addiu	s1,s1,1
    14c4:	3231ffff 	andi	s1,s1,0xffff
    14c8:	01ca6024 	and	t4,t6,t2
    14cc:	5180003c 	beqzl	t4,15c0 <func_80818340+0xfd0>
    14d0:	26100001 	addiu	s0,s0,1
    14d4:	86d80238 	lh	t8,568(s6)
    14d8:	0015c880 	sll	t9,s5,0x2
    14dc:	03d95821 	addu	t3,s8,t9
    14e0:	17000036 	bnez	t8,15bc <func_80818340+0xfcc>
    14e4:	01707821 	addu	t7,t3,s0
    14e8:	91e20001 	lbu	v0,1(t7)
    14ec:	24010009 	li	at,9
    14f0:	10410004 	beq	v0,at,1504 <func_80818340+0xf14>
    14f4:	00000000 	nop
    14f8:	8d0d0004 	lw	t5,4(t0)
    14fc:	544d0030 	bnel	v0,t5,15c0 <func_80818340+0xfd0>
    1500:	26100001 	addiu	s0,s0,1
    1504:	56f3002e 	bnel	s7,s3,15c0 <func_80818340+0xfd0>
    1508:	26100001 	addiu	s0,s0,1
    150c:	8ec3015c 	lw	v1,348(s6)
    1510:	00143100 	sll	a2,s4,0x4
    1514:	00142100 	sll	a0,s4,0x4
    1518:	00667021 	addu	t6,v1,a2
    151c:	85c20000 	lh	v0,0(t6)
    1520:	00645021 	addu	t2,v1,a0
    1524:	2442fffe 	addiu	v0,v0,-2
    1528:	00021400 	sll	v0,v0,0x10
    152c:	00021403 	sra	v0,v0,0x10
    1530:	a5420020 	sh	v0,32(t2)
    1534:	8ecc015c 	lw	t4,348(s6)
    1538:	0186c021 	addu	t8,t4,a2
    153c:	a7020000 	sh	v0,0(t8)
    1540:	8ed9015c 	lw	t9,348(s6)
    1544:	03242821 	addu	a1,t9,a0
    1548:	84a20010 	lh	v0,16(a1)
    154c:	24420004 	addiu	v0,v0,4
    1550:	00021400 	sll	v0,v0,0x10
    1554:	00021403 	sra	v0,v0,0x10
    1558:	a4a20030 	sh	v0,48(a1)
    155c:	8ecb015c 	lw	t3,348(s6)
    1560:	01647821 	addu	t7,t3,a0
    1564:	a5e20010 	sh	v0,16(t7)
    1568:	8ec3015c 	lw	v1,348(s6)
    156c:	00666821 	addu	t5,v1,a2
    1570:	85a20002 	lh	v0,2(t5)
    1574:	00647021 	addu	t6,v1,a0
    1578:	24420002 	addiu	v0,v0,2
    157c:	00021400 	sll	v0,v0,0x10
    1580:	00021403 	sra	v0,v0,0x10
    1584:	a5c20012 	sh	v0,18(t6)
    1588:	8eca015c 	lw	t2,348(s6)
    158c:	01466021 	addu	t4,t2,a2
    1590:	a5820002 	sh	v0,2(t4)
    1594:	8ed8015c 	lw	t8,348(s6)
    1598:	03042821 	addu	a1,t8,a0
    159c:	84a20022 	lh	v0,34(a1)
    15a0:	2442fffc 	addiu	v0,v0,-4
    15a4:	00021400 	sll	v0,v0,0x10
    15a8:	00021403 	sra	v0,v0,0x10
    15ac:	a4a20032 	sh	v0,50(a1)
    15b0:	8ed9015c 	lw	t9,348(s6)
    15b4:	03245821 	addu	t3,t9,a0
    15b8:	a5620022 	sh	v0,34(t3)
    15bc:	26100001 	addiu	s0,s0,1
    15c0:	3210ffff 	andi	s0,s0,0xffff
    15c4:	2a010003 	slti	at,s0,3
    15c8:	26940004 	addiu	s4,s4,4
    15cc:	26730001 	addiu	s3,s3,1
    15d0:	3273ffff 	andi	s3,s3,0xffff
    15d4:	1420ffb5 	bnez	at,14ac <func_80818340+0xebc>
    15d8:	3294ffff 	andi	s4,s4,0xffff
    15dc:	26b50001 	addiu	s5,s5,1
    15e0:	32b5ffff 	andi	s5,s5,0xffff
    15e4:	2aa10004 	slti	at,s5,4
    15e8:	24ef0004 	addiu	t7,a3,4
    15ec:	26520010 	addiu	s2,s2,16
    15f0:	3252ffff 	andi	s2,s2,0xffff
    15f4:	1420ffa7 	bnez	at,1494 <func_80818340+0xea4>
    15f8:	a7af00c2 	sh	t7,194(sp)
    15fc:	8fad00d8 	lw	t5,216(sp)
    1600:	0c000000 	jal	0 <func_80817D50>
    1604:	8da40000 	lw	a0,0(t5)
    1608:	8fa400ac 	lw	a0,172(sp)
    160c:	3c0afc11 	lui	t2,0xfc11
    1610:	3c0cff2f 	lui	t4,0xff2f
    1614:	8c8302c0 	lw	v1,704(a0)
    1618:	358cffff 	ori	t4,t4,0xffff
    161c:	354a9623 	ori	t2,t2,0x9623
    1620:	246e0008 	addiu	t6,v1,8
    1624:	ac8e02c0 	sw	t6,704(a0)
    1628:	ac6c0004 	sw	t4,4(v1)
    162c:	ac6a0000 	sw	t2,0(v1)
    1630:	8c8302c0 	lw	v1,704(a0)
    1634:	3c19fa00 	lui	t9,0xfa00
    1638:	2401ff00 	li	at,-256
    163c:	24780008 	addiu	t8,v1,8
    1640:	ac9802c0 	sw	t8,704(a0)
    1644:	ac790000 	sw	t9,0(v1)
    1648:	96cb0208 	lhu	t3,520(s6)
    164c:	3c080000 	lui	t0,0x0
    1650:	3c1e0000 	lui	s8,0x0
    1654:	316f00ff 	andi	t7,t3,0xff
    1658:	01e16825 	or	t5,t7,at
    165c:	ac6d0004 	sw	t5,4(v1)
    1660:	25080000 	addiu	t0,t0,0
    1664:	a7a000c2 	sh	zero,194(sp)
    1668:	27de0000 	addiu	s8,s8,0
    166c:	0000a025 	move	s4,zero
    1670:	00009825 	move	s3,zero
    1674:	0000a825 	move	s5,zero
    1678:	24170002 	li	s7,2
    167c:	8fa400ac 	lw	a0,172(sp)
    1680:	3c0a0101 	lui	t2,0x101
    1684:	354a0020 	ori	t2,t2,0x20
    1688:	8c8302c0 	lw	v1,704(a0)
    168c:	0014c100 	sll	t8,s4,0x4
    1690:	24010005 	li	at,5
    1694:	246e0008 	addiu	t6,v1,8
    1698:	ac8e02c0 	sw	t6,704(a0)
    169c:	ac6a0000 	sw	t2,0(v1)
    16a0:	8ecc015c 	lw	t4,348(s6)
    16a4:	24020011 	li	v0,17
    16a8:	3c0e0000 	lui	t6,0x0
    16ac:	0198c821 	addu	t9,t4,t8
    16b0:	ac790004 	sw	t9,4(v1)
    16b4:	8d0b0004 	lw	t3,4(t0)
    16b8:	11600003 	beqz	t3,16c8 <func_80818340+0x10d8>
    16bc:	00000000 	nop
    16c0:	10000001 	b	16c8 <func_80818340+0x10d8>
    16c4:	24020005 	li	v0,5
    16c8:	14410021 	bne	v0,at,1750 <func_80818340+0x1160>
    16cc:	3c020000 	lui	v0,0x0
    16d0:	00551021 	addu	v0,v0,s5
    16d4:	90420000 	lbu	v0,0(v0)
    16d8:	3c0c0000 	lui	t4,0x0
    16dc:	8d0f00a0 	lw	t7,160(t0)
    16e0:	00026880 	sll	t5,v0,0x2
    16e4:	01cd7021 	addu	t6,t6,t5
    16e8:	8dce0000 	lw	t6,0(t6)
    16ec:	01826021 	addu	t4,t4,v0
    16f0:	918c0000 	lbu	t4,0(t4)
    16f4:	01ee5024 	and	t2,t7,t6
    16f8:	018a1807 	srav	v1,t2,t4
    16fc:	3072ffff 	andi	s2,v1,0xffff
    1700:	5240005f 	beqzl	s2,1880 <func_80818340+0x1290>
    1704:	00008025 	move	s0,zero
    1708:	1060005c 	beqz	v1,187c <func_80818340+0x128c>
    170c:	8fb800d8 	lw	t8,216(sp)
    1710:	3c190000 	lui	t9,0x0
    1714:	0335c821 	addu	t9,t9,s5
    1718:	93390000 	lbu	t9,0(t9)
    171c:	00127880 	sll	t7,s2,0x2
    1720:	8f040000 	lw	a0,0(t8)
    1724:	00195880 	sll	t3,t9,0x2
    1728:	03cb6821 	addu	t5,s8,t3
    172c:	01af7021 	addu	t6,t5,t7
    1730:	8dc5fffc 	lw	a1,-4(t6)
    1734:	afa00010 	sw	zero,16(sp)
    1738:	24060020 	li	a2,32
    173c:	0c000000 	jal	0 <func_80817D50>
    1740:	24070020 	li	a3,32
    1744:	3c080000 	lui	t0,0x0
    1748:	1000004c 	b	187c <func_80818340+0x128c>
    174c:	25080000 	addiu	t0,t0,0
    1750:	16a0002b 	bnez	s5,1800 <func_80818340+0x1210>
    1754:	3c090000 	lui	t1,0x0
    1758:	3c020000 	lui	v0,0x0
    175c:	00551021 	addu	v0,v0,s5
    1760:	90420000 	lbu	v0,0(v0)
    1764:	3c0c0000 	lui	t4,0x0
    1768:	258c0000 	addiu	t4,t4,0
    176c:	00025080 	sll	t2,v0,0x2
    1770:	014cc021 	addu	t8,t2,t4
    1774:	25290000 	addiu	t1,t1,0
    1778:	8f190000 	lw	t9,0(t8)
    177c:	8d0300a0 	lw	v1,160(t0)
    1780:	01226821 	addu	t5,t1,v0
    1784:	91af0000 	lbu	t7,0(t5)
    1788:	00795824 	and	t3,v1,t9
    178c:	3c020000 	lui	v0,0x0
    1790:	01eb7007 	srav	t6,t3,t7
    1794:	15c0001a 	bnez	t6,1800 <func_80818340+0x1210>
    1798:	8faa00d8 	lw	t2,216(sp)
    179c:	00551021 	addu	v0,v0,s5
    17a0:	90420000 	lbu	v0,0(v0)
    17a4:	8d440000 	lw	a0,0(t2)
    17a8:	24060020 	li	a2,32
    17ac:	0002c080 	sll	t8,v0,0x2
    17b0:	030cc821 	addu	t9,t8,t4
    17b4:	8f2d0000 	lw	t5,0(t9)
    17b8:	01227821 	addu	t7,t1,v0
    17bc:	91ee0000 	lbu	t6,0(t7)
    17c0:	3c190000 	lui	t9,0x0
    17c4:	0335c821 	addu	t9,t9,s5
    17c8:	93390000 	lbu	t9,0(t9)
    17cc:	006d5824 	and	t3,v1,t5
    17d0:	01cb5007 	srav	t2,t3,t6
    17d4:	000ac080 	sll	t8,t2,0x2
    17d8:	03d86021 	addu	t4,s8,t8
    17dc:	00196880 	sll	t5,t9,0x2
    17e0:	018d7821 	addu	t7,t4,t5
    17e4:	8de5fffc 	lw	a1,-4(t7)
    17e8:	afa00010 	sw	zero,16(sp)
    17ec:	0c000000 	jal	0 <func_80817D50>
    17f0:	24070020 	li	a3,32
    17f4:	3c080000 	lui	t0,0x0
    17f8:	10000020 	b	187c <func_80818340+0x128c>
    17fc:	25080000 	addiu	t0,t0,0
    1800:	3c020000 	lui	v0,0x0
    1804:	00551021 	addu	v0,v0,s5
    1808:	90420000 	lbu	v0,0(v0)
    180c:	3c090000 	lui	t1,0x0
    1810:	3c0a0000 	lui	t2,0x0
    1814:	00027080 	sll	t6,v0,0x2
    1818:	25290000 	addiu	t1,t1,0
    181c:	014e5021 	addu	t2,t2,t6
    1820:	8d4a0000 	lw	t2,0(t2)
    1824:	8d0b00a0 	lw	t3,160(t0)
    1828:	0122c821 	addu	t9,t1,v0
    182c:	932c0000 	lbu	t4,0(t9)
    1830:	016ac024 	and	t8,t3,t2
    1834:	8fad00d8 	lw	t5,216(sp)
    1838:	01981807 	srav	v1,t8,t4
    183c:	1060000f 	beqz	v1,187c <func_80818340+0x128c>
    1840:	00037880 	sll	t7,v1,0x2
    1844:	3c0b0000 	lui	t3,0x0
    1848:	01755821 	addu	t3,t3,s5
    184c:	916b0000 	lbu	t3,0(t3)
    1850:	03cf7021 	addu	t6,s8,t7
    1854:	8da40000 	lw	a0,0(t5)
    1858:	000b5080 	sll	t2,t3,0x2
    185c:	01cac821 	addu	t9,t6,t2
    1860:	8f25fffc 	lw	a1,-4(t9)
    1864:	afa00010 	sw	zero,16(sp)
    1868:	24060020 	li	a2,32
    186c:	0c000000 	jal	0 <func_80817D50>
    1870:	24070020 	li	a3,32
    1874:	3c080000 	lui	t0,0x0
    1878:	25080000 	addiu	t0,t0,0
    187c:	00008025 	move	s0,zero
    1880:	97b100c2 	lhu	s1,194(sp)
    1884:	24120004 	li	s2,4
    1888:	16a00010 	bnez	s5,18cc <func_80818340+0x12dc>
    188c:	00000000 	nop
    1890:	16f0000e 	bne	s7,s0,18cc <func_80818340+0x12dc>
    1894:	00000000 	nop
    1898:	9118003e 	lbu	t8,62(t0)
    189c:	3c050804 	lui	a1,0x804
    18a0:	24a5d000 	addiu	a1,a1,-12288
    18a4:	13000009 	beqz	t8,18cc <func_80818340+0x12dc>
    18a8:	8fac00d8 	lw	t4,216(sp)
    18ac:	8d840000 	lw	a0,0(t4)
    18b0:	afb20010 	sw	s2,16(sp)
    18b4:	24060020 	li	a2,32
    18b8:	0c000000 	jal	0 <func_80817D50>
    18bc:	24070020 	li	a3,32
    18c0:	3c080000 	lui	t0,0x0
    18c4:	10000026 	b	1960 <func_80818340+0x1370>
    18c8:	25080000 	addiu	t0,t0,0
    18cc:	16a00013 	bnez	s5,191c <func_80818340+0x132c>
    18d0:	9502009c 	lhu	v0,156(t0)
    18d4:	16f00011 	bne	s7,s0,191c <func_80818340+0x132c>
    18d8:	00116880 	sll	t5,s1,0x2
    18dc:	3c0f0000 	lui	t7,0x0
    18e0:	01ed7821 	addu	t7,t7,t5
    18e4:	8def0004 	lw	t7,4(t7)
    18e8:	3c050805 	lui	a1,0x805
    18ec:	24a55000 	addiu	a1,a1,20480
    18f0:	01e25824 	and	t3,t7,v0
    18f4:	11600009 	beqz	t3,191c <func_80818340+0x132c>
    18f8:	8fae00d8 	lw	t6,216(sp)
    18fc:	8dc40000 	lw	a0,0(t6)
    1900:	afb20010 	sw	s2,16(sp)
    1904:	24060020 	li	a2,32
    1908:	0c000000 	jal	0 <func_80817D50>
    190c:	24070020 	li	a3,32
    1910:	3c080000 	lui	t0,0x0
    1914:	10000012 	b	1960 <func_80818340+0x1370>
    1918:	25080000 	addiu	t0,t0,0
    191c:	00115080 	sll	t2,s1,0x2
    1920:	3c190000 	lui	t9,0x0
    1924:	032ac821 	addu	t9,t9,t2
    1928:	8f390000 	lw	t9,0(t9)
    192c:	00136880 	sll	t5,s3,0x2
    1930:	03cd7821 	addu	t7,s8,t5
    1934:	0322c024 	and	t8,t9,v0
    1938:	13000009 	beqz	t8,1960 <func_80818340+0x1370>
    193c:	8fac00d8 	lw	t4,216(sp)
    1940:	8d840000 	lw	a0,0(t4)
    1944:	8de500ec 	lw	a1,236(t7)
    1948:	afb20010 	sw	s2,16(sp)
    194c:	24060020 	li	a2,32
    1950:	0c000000 	jal	0 <func_80817D50>
    1954:	24070020 	li	a3,32
    1958:	3c080000 	lui	t0,0x0
    195c:	25080000 	addiu	t0,t0,0
    1960:	26100001 	addiu	s0,s0,1
    1964:	3210ffff 	andi	s0,s0,0xffff
    1968:	2a010003 	slti	at,s0,3
    196c:	26520004 	addiu	s2,s2,4
    1970:	26730001 	addiu	s3,s3,1
    1974:	26310001 	addiu	s1,s1,1
    1978:	3231ffff 	andi	s1,s1,0xffff
    197c:	3273ffff 	andi	s3,s3,0xffff
    1980:	1420ffc1 	bnez	at,1888 <func_80818340+0x1298>
    1984:	3252ffff 	andi	s2,s2,0xffff
    1988:	97ab00c2 	lhu	t3,194(sp)
    198c:	26b50001 	addiu	s5,s5,1
    1990:	32b5ffff 	andi	s5,s5,0xffff
    1994:	2aa10004 	slti	at,s5,4
    1998:	26940010 	addiu	s4,s4,16
    199c:	256e0004 	addiu	t6,t3,4
    19a0:	a7ae00c2 	sh	t6,194(sp)
    19a4:	1420ff35 	bnez	at,167c <func_80818340+0x108c>
    19a8:	3294ffff 	andi	s4,s4,0xffff
    19ac:	0c000000 	jal	0 <func_80817D50>
    19b0:	8fa400d8 	lw	a0,216(sp)
    19b4:	96c201e4 	lhu	v0,484(s6)
    19b8:	24010007 	li	at,7
    19bc:	14410008 	bne	v0,at,19e0 <func_80818340+0x13f0>
    19c0:	3c0a0000 	lui	t2,0x0
    19c4:	854a0000 	lh	t2,0(t2)
    19c8:	2401000a 	li	at,10
    19cc:	55410005 	bnel	t2,at,19e4 <func_80818340+0x13f4>
    19d0:	24010007 	li	at,7
    19d4:	0c000000 	jal	0 <func_80817D50>
    19d8:	8fa400d8 	lw	a0,216(sp)
    19dc:	96c201e4 	lhu	v0,484(s6)
    19e0:	24010007 	li	at,7
    19e4:	14410007 	bne	v0,at,1a04 <func_80818340+0x1414>
    19e8:	3c190000 	lui	t9,0x0
    19ec:	87390000 	lh	t9,0(t9)
    19f0:	24010009 	li	at,9
    19f4:	57210004 	bnel	t9,at,1a08 <func_80818340+0x1418>
    19f8:	8fb800ac 	lw	t8,172(sp)
    19fc:	0c000000 	jal	0 <func_80817D50>
    1a00:	8fa400d8 	lw	a0,216(sp)
    1a04:	8fb800ac 	lw	t8,172(sp)
    1a08:	3c0ddb06 	lui	t5,0xdb06
    1a0c:	35ad001c 	ori	t5,t5,0x1c
    1a10:	8f0302c0 	lw	v1,704(t8)
    1a14:	3c0adb06 	lui	t2,0xdb06
    1a18:	354a0020 	ori	t2,t2,0x20
    1a1c:	246c0008 	addiu	t4,v1,8
    1a20:	af0c02c0 	sw	t4,704(t8)
    1a24:	ac6d0000 	sw	t5,0(v1)
    1a28:	8ecf013c 	lw	t7,316(s6)
    1a2c:	3c0ddb06 	lui	t5,0xdb06
    1a30:	35ad0024 	ori	t5,t5,0x24
    1a34:	ac6f0004 	sw	t7,4(v1)
    1a38:	8fab00ac 	lw	t3,172(sp)
    1a3c:	8d6302c0 	lw	v1,704(t3)
    1a40:	246e0008 	addiu	t6,v1,8
    1a44:	ad6e02c0 	sw	t6,704(t3)
    1a48:	ac6a0000 	sw	t2,0(v1)
    1a4c:	8ed90128 	lw	t9,296(s6)
    1a50:	3c0adb06 	lui	t2,0xdb06
    1a54:	354a0028 	ori	t2,t2,0x28
    1a58:	ac790004 	sw	t9,4(v1)
    1a5c:	8fac00ac 	lw	t4,172(sp)
    1a60:	8d8302c0 	lw	v1,704(t4)
    1a64:	24780008 	addiu	t8,v1,8
    1a68:	ad9802c0 	sw	t8,704(t4)
    1a6c:	ac6d0000 	sw	t5,0(v1)
    1a70:	8ecf012c 	lw	t7,300(s6)
    1a74:	3c0ddb06 	lui	t5,0xdb06
    1a78:	35ad002c 	ori	t5,t5,0x2c
    1a7c:	ac6f0004 	sw	t7,4(v1)
    1a80:	8fae00ac 	lw	t6,172(sp)
    1a84:	3c0f0001 	lui	t7,0x1
    1a88:	8dc302c0 	lw	v1,704(t6)
    1a8c:	246b0008 	addiu	t3,v1,8
    1a90:	adcb02c0 	sw	t3,704(t6)
    1a94:	ac6a0000 	sw	t2,0(v1)
    1a98:	8ed90138 	lw	t9,312(s6)
    1a9c:	3c0adb06 	lui	t2,0xdb06
    1aa0:	354a0030 	ori	t2,t2,0x30
    1aa4:	ac790004 	sw	t9,4(v1)
    1aa8:	8fb800ac 	lw	t8,172(sp)
    1aac:	8fa500d8 	lw	a1,216(sp)
    1ab0:	8f0302c0 	lw	v1,704(t8)
    1ab4:	01e57821 	addu	t7,t7,a1
    1ab8:	246c0008 	addiu	t4,v1,8
    1abc:	af0c02c0 	sw	t4,704(t8)
    1ac0:	ac6d0000 	sw	t5,0(v1)
    1ac4:	8def062c 	lw	t7,1580(t7)
    1ac8:	ac6f0004 	sw	t7,4(v1)
    1acc:	8fab00ac 	lw	t3,172(sp)
    1ad0:	8d6302c0 	lw	v1,704(t3)
    1ad4:	246e0008 	addiu	t6,v1,8
    1ad8:	ad6e02c0 	sw	t6,704(t3)
    1adc:	ac6a0000 	sw	t2,0(v1)
    1ae0:	8ed90130 	lw	t9,304(s6)
    1ae4:	ac790004 	sw	t9,4(v1)
    1ae8:	0c000000 	jal	0 <func_80817D50>
    1aec:	8ca40000 	lw	a0,0(a1)
    1af0:	8fa400d8 	lw	a0,216(sp)
    1af4:	8ec5013c 	lw	a1,316(s6)
    1af8:	24060040 	li	a2,64
    1afc:	0c000000 	jal	0 <func_80817D50>
    1b00:	24070070 	li	a3,112
    1b04:	8fac00d8 	lw	t4,216(sp)
    1b08:	3c060000 	lui	a2,0x0
    1b0c:	24c60000 	addiu	a2,a2,0
    1b10:	27a4009c 	addiu	a0,sp,156
    1b14:	24070261 	li	a3,609
    1b18:	0c000000 	jal	0 <func_80817D50>
    1b1c:	8d850000 	lw	a1,0(t4)
    1b20:	8fbf0044 	lw	ra,68(sp)
    1b24:	8fb00020 	lw	s0,32(sp)
    1b28:	8fb10024 	lw	s1,36(sp)
    1b2c:	8fb20028 	lw	s2,40(sp)
    1b30:	8fb3002c 	lw	s3,44(sp)
    1b34:	8fb40030 	lw	s4,48(sp)
    1b38:	8fb50034 	lw	s5,52(sp)
    1b3c:	8fb60038 	lw	s6,56(sp)
    1b40:	8fb7003c 	lw	s7,60(sp)
    1b44:	8fbe0040 	lw	s8,64(sp)
    1b48:	03e00008 	jr	ra
    1b4c:	27bd00d8 	addiu	sp,sp,216
