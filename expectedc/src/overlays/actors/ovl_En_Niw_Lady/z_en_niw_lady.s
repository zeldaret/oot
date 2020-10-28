
build/src/overlays/actors/ovl_En_Niw_Lady/z_en_niw_lady.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <EnNiwLady_Init>:
       0:	27bdffd0 	addiu	sp,sp,-48
       4:	afb00018 	sw	s0,24(sp)
       8:	3c010001 	lui	at,0x1
       c:	00808025 	move	s0,a0
      10:	342117a4 	ori	at,at,0x17a4
      14:	afbf001c 	sw	ra,28(sp)
      18:	afa50034 	sw	a1,52(sp)
      1c:	00a12021 	addu	a0,a1,at
      20:	afa40024 	sw	a0,36(sp)
      24:	0c000000 	jal	0 <EnNiwLady_Init>
      28:	24050110 	li	a1,272
      2c:	8fa40024 	lw	a0,36(sp)
      30:	a2020280 	sb	v0,640(s0)
      34:	0c000000 	jal	0 <EnNiwLady_Init>
      38:	240500c5 	li	a1,197
      3c:	a2020281 	sb	v0,641(s0)
      40:	820e0281 	lb	t6,641(s0)
      44:	05c00004 	bltz	t6,58 <EnNiwLady_Init+0x58>
      48:	00000000 	nop
      4c:	820f0280 	lb	t7,640(s0)
      50:	05e30006 	bgezl	t7,6c <EnNiwLady_Init+0x6c>
      54:	a6000278 	sh	zero,632(s0)
      58:	0c000000 	jal	0 <EnNiwLady_Init>
      5c:	02002025 	move	a0,s0
      60:	10000021 	b	e8 <EnNiwLady_Init+0xe8>
      64:	8fbf001c 	lw	ra,28(sp)
      68:	a6000278 	sh	zero,632(s0)
      6c:	8fb80034 	lw	t8,52(sp)
      70:	24010037 	li	at,55
      74:	24080001 	li	t0,1
      78:	871900a4 	lh	t9,164(t8)
      7c:	3c090000 	lui	t1,0x0
      80:	3c040000 	lui	a0,0x0
      84:	57210003 	bnel	t9,at,94 <EnNiwLady_Init+0x94>
      88:	86050278 	lh	a1,632(s0)
      8c:	a6080278 	sh	t0,632(s0)
      90:	86050278 	lh	a1,632(s0)
      94:	10a00008 	beqz	a1,b8 <EnNiwLady_Init+0xb8>
      98:	00000000 	nop
      9c:	8d290010 	lw	t1,16(t1)
      a0:	15200005 	bnez	t1,b8 <EnNiwLady_Init+0xb8>
      a4:	00000000 	nop
      a8:	0c000000 	jal	0 <EnNiwLady_Init>
      ac:	02002025 	move	a0,s0
      b0:	1000000d 	b	e8 <EnNiwLady_Init+0xe8>
      b4:	8fbf001c 	lw	ra,28(sp)
      b8:	0c000000 	jal	0 <EnNiwLady_Init>
      bc:	24840000 	addiu	a0,a0,0
      c0:	3c040000 	lui	a0,0x0
      c4:	0c000000 	jal	0 <EnNiwLady_Init>
      c8:	24840000 	addiu	a0,a0,0
      cc:	3c014416 	lui	at,0x4416
      d0:	44812000 	mtc1	at,$f4
      d4:	3c0a0000 	lui	t2,0x0
      d8:	254a0000 	addiu	t2,t2,0
      dc:	ae0a0250 	sw	t2,592(s0)
      e0:	e60400f4 	swc1	$f4,244(s0)
      e4:	8fbf001c 	lw	ra,28(sp)
      e8:	8fb00018 	lw	s0,24(sp)
      ec:	27bd0030 	addiu	sp,sp,48
      f0:	03e00008 	jr	ra
      f4:	00000000 	nop

000000f8 <EnNiwLady_Destroy>:
      f8:	27bdffe8 	addiu	sp,sp,-24
      fc:	00803025 	move	a2,a0
     100:	afbf0014 	sw	ra,20(sp)
     104:	00a02025 	move	a0,a1
     108:	0c000000 	jal	0 <EnNiwLady_Init>
     10c:	24c502b0 	addiu	a1,a2,688
     110:	8fbf0014 	lw	ra,20(sp)
     114:	27bd0018 	addiu	sp,sp,24
     118:	03e00008 	jr	ra
     11c:	00000000 	nop

00000120 <func_80AB9D60>:
     120:	27bdffd8 	addiu	sp,sp,-40
     124:	afa40028 	sw	a0,40(sp)
     128:	afbf0024 	sw	ra,36(sp)
     12c:	00a02025 	move	a0,a1
     130:	24050008 	li	a1,8
     134:	0c000000 	jal	0 <EnNiwLady_Init>
     138:	afa60030 	sw	a2,48(sp)
     13c:	8fa30028 	lw	v1,40(sp)
     140:	10400002 	beqz	v0,14c <func_80AB9D60+0x2c>
     144:	8fa60030 	lw	a2,48(sp)
     148:	24060008 	li	a2,8
     14c:	846e0270 	lh	t6,624(v1)
     150:	24020001 	li	v0,1
     154:	28c1001e 	slti	at,a2,30
     158:	50ce005f 	beql	a2,t6,2d8 <L80AB9F14+0x4>
     15c:	8fbf0024 	lw	ra,36(sp)
     160:	a0600275 	sb	zero,629(v1)
     164:	a0620276 	sb	v0,630(v1)
     168:	14200006 	bnez	at,184 <func_80AB9D60+0x64>
     16c:	a4660270 	sh	a2,624(v1)
     170:	24010064 	li	at,100
     174:	10c10045 	beq	a2,at,28c <L80AB9E80+0x4c>
     178:	3c040601 	lui	a0,0x601
     17c:	10000056 	b	2d8 <L80AB9F14+0x4>
     180:	8fbf0024 	lw	ra,36(sp)
     184:	2cc1001e 	sltiu	at,a2,30
     188:	10200052 	beqz	at,2d4 <L80AB9F14>
     18c:	00067880 	sll	t7,a2,0x2
     190:	3c010000 	lui	at,0x0
     194:	002f0821 	addu	at,at,t7
     198:	8c2f0000 	lw	t7,0(at)
     19c:	01e00008 	jr	t7
     1a0:	00000000 	nop

000001a4 <L80AB9DE4>:
     1a4:	a0620275 	sb	v0,629(v1)

000001a8 <L80AB9DE8>:
     1a8:	3c040600 	lui	a0,0x600
     1ac:	0c000000 	jal	0 <EnNiwLady_Init>
     1b0:	248407d0 	addiu	a0,a0,2000
     1b4:	44822000 	mtc1	v0,$f4
     1b8:	3c01c120 	lui	at,0xc120
     1bc:	8fa30028 	lw	v1,40(sp)
     1c0:	468021a0 	cvt.s.w	$f6,$f4
     1c4:	44814000 	mtc1	at,$f8
     1c8:	3c050600 	lui	a1,0x600
     1cc:	24a507d0 	addiu	a1,a1,2000
     1d0:	3c063f80 	lui	a2,0x3f80
     1d4:	24070000 	li	a3,0
     1d8:	e7a60010 	swc1	$f6,16(sp)
     1dc:	afa00014 	sw	zero,20(sp)
     1e0:	2464014c 	addiu	a0,v1,332
     1e4:	0c000000 	jal	0 <EnNiwLady_Init>
     1e8:	e7a80018 	swc1	$f8,24(sp)
     1ec:	1000003a 	b	2d8 <L80AB9F14+0x4>
     1f0:	8fbf0024 	lw	ra,36(sp)

000001f4 <L80AB9E34>:
     1f4:	3c040601 	lui	a0,0x601
     1f8:	0c000000 	jal	0 <EnNiwLady_Init>
     1fc:	24849f94 	addiu	a0,a0,-24684
     200:	44825000 	mtc1	v0,$f10
     204:	3c01c120 	lui	at,0xc120
     208:	8fa30028 	lw	v1,40(sp)
     20c:	46805420 	cvt.s.w	$f16,$f10
     210:	44819000 	mtc1	at,$f18
     214:	3c050601 	lui	a1,0x601
     218:	24a59f94 	addiu	a1,a1,-24684
     21c:	3c063f80 	lui	a2,0x3f80
     220:	24070000 	li	a3,0
     224:	e7b00010 	swc1	$f16,16(sp)
     228:	afa00014 	sw	zero,20(sp)
     22c:	2464014c 	addiu	a0,v1,332
     230:	0c000000 	jal	0 <EnNiwLady_Init>
     234:	e7b20018 	swc1	$f18,24(sp)
     238:	10000027 	b	2d8 <L80AB9F14+0x4>
     23c:	8fbf0024 	lw	ra,36(sp)

00000240 <L80AB9E80>:
     240:	3c040600 	lui	a0,0x600
     244:	0c000000 	jal	0 <EnNiwLady_Init>
     248:	24840718 	addiu	a0,a0,1816
     24c:	44822000 	mtc1	v0,$f4
     250:	3c01c120 	lui	at,0xc120
     254:	8fa30028 	lw	v1,40(sp)
     258:	468021a0 	cvt.s.w	$f6,$f4
     25c:	44814000 	mtc1	at,$f8
     260:	3c050600 	lui	a1,0x600
     264:	24a50718 	addiu	a1,a1,1816
     268:	3c063f80 	lui	a2,0x3f80
     26c:	24070000 	li	a3,0
     270:	e7a60010 	swc1	$f6,16(sp)
     274:	afa00014 	sw	zero,20(sp)
     278:	2464014c 	addiu	a0,v1,332
     27c:	0c000000 	jal	0 <EnNiwLady_Init>
     280:	e7a80018 	swc1	$f8,24(sp)
     284:	10000014 	b	2d8 <L80AB9F14+0x4>
     288:	8fbf0024 	lw	ra,36(sp)
     28c:	0c000000 	jal	0 <EnNiwLady_Init>
     290:	2484a630 	addiu	a0,a0,-22992
     294:	44825000 	mtc1	v0,$f10
     298:	3c01c120 	lui	at,0xc120
     29c:	8fa30028 	lw	v1,40(sp)
     2a0:	46805420 	cvt.s.w	$f16,$f10
     2a4:	44819000 	mtc1	at,$f18
     2a8:	3c050601 	lui	a1,0x601
     2ac:	24a5a630 	addiu	a1,a1,-22992
     2b0:	3c063f80 	lui	a2,0x3f80
     2b4:	24070000 	li	a3,0
     2b8:	e7b00010 	swc1	$f16,16(sp)
     2bc:	afa00014 	sw	zero,20(sp)
     2c0:	2464014c 	addiu	a0,v1,332
     2c4:	0c000000 	jal	0 <EnNiwLady_Init>
     2c8:	e7b20018 	swc1	$f18,24(sp)
     2cc:	8fa30028 	lw	v1,40(sp)
     2d0:	a0600276 	sb	zero,630(v1)

000002d4 <L80AB9F14>:
     2d4:	8fbf0024 	lw	ra,36(sp)
     2d8:	27bd0028 	addiu	sp,sp,40
     2dc:	03e00008 	jr	ra
     2e0:	00000000 	nop

000002e4 <func_80AB9F24>:
     2e4:	27bdffb8 	addiu	sp,sp,-72
     2e8:	afb00028 	sw	s0,40(sp)
     2ec:	3c010001 	lui	at,0x1
     2f0:	00808025 	move	s0,a0
     2f4:	342117a4 	ori	at,at,0x17a4
     2f8:	afbf002c 	sw	ra,44(sp)
     2fc:	afa5004c 	sw	a1,76(sp)
     300:	00a12021 	addu	a0,a1,at
     304:	82050280 	lb	a1,640(s0)
     308:	0c000000 	jal	0 <EnNiwLady_Init>
     30c:	afa40038 	sw	a0,56(sp)
     310:	104000ad 	beqz	v0,5c8 <func_80AB9F24+0x2e4>
     314:	8fa40038 	lw	a0,56(sp)
     318:	0c000000 	jal	0 <EnNiwLady_Init>
     31c:	82050281 	lb	a1,641(s0)
     320:	104000a9 	beqz	v0,5c8 <func_80AB9F24+0x2e4>
     324:	8fa4004c 	lw	a0,76(sp)
     328:	820e0280 	lb	t6,640(s0)
     32c:	3c190001 	lui	t9,0x1
     330:	3c018000 	lui	at,0x8000
     334:	000e7900 	sll	t7,t6,0x4
     338:	01ee7821 	addu	t7,t7,t6
     33c:	000f7880 	sll	t7,t7,0x2
     340:	008fc021 	addu	t8,a0,t7
     344:	0338c821 	addu	t9,t9,t8
     348:	8f3917b4 	lw	t9,6068(t9)
     34c:	2605014c 	addiu	a1,s0,332
     350:	3c060600 	lui	a2,0x600
     354:	03214021 	addu	t0,t9,at
     358:	3c010000 	lui	at,0x0
     35c:	26090190 	addiu	t1,s0,400
     360:	260a01f0 	addiu	t2,s0,496
     364:	240b0010 	li	t3,16
     368:	ac280018 	sw	t0,24(at)
     36c:	afab0018 	sw	t3,24(sp)
     370:	afaa0014 	sw	t2,20(sp)
     374:	afa90010 	sw	t1,16(sp)
     378:	24c600f0 	addiu	a2,a2,240
     37c:	afa50038 	sw	a1,56(sp)
     380:	0c000000 	jal	0 <EnNiwLady_Init>
     384:	00003825 	move	a3,zero
     388:	820d0281 	lb	t5,641(s0)
     38c:	8fac004c 	lw	t4,76(sp)
     390:	3c180001 	lui	t8,0x1
     394:	000d7100 	sll	t6,t5,0x4
     398:	01cd7021 	addu	t6,t6,t5
     39c:	000e7080 	sll	t6,t6,0x2
     3a0:	018e7821 	addu	t7,t4,t6
     3a4:	030fc021 	addu	t8,t8,t7
     3a8:	8f1817b4 	lw	t8,6068(t8)
     3ac:	3c018000 	lui	at,0x8000
     3b0:	24080001 	li	t0,1
     3b4:	0301c821 	addu	t9,t8,at
     3b8:	3c010000 	lui	at,0x0
     3bc:	ac390018 	sw	t9,24(at)
     3c0:	3c01c040 	lui	at,0xc040
     3c4:	44812000 	mtc1	at,$f4
     3c8:	3c053c23 	lui	a1,0x3c23
     3cc:	a608027e 	sh	t0,638(s0)
     3d0:	34a5d70a 	ori	a1,a1,0xd70a
     3d4:	02002025 	move	a0,s0
     3d8:	0c000000 	jal	0 <EnNiwLady_Init>
     3dc:	e604006c 	swc1	$f4,108(s0)
     3e0:	3c060000 	lui	a2,0x0
     3e4:	24c60000 	addiu	a2,a2,0
     3e8:	260400b4 	addiu	a0,s0,180
     3ec:	24050000 	li	a1,0
     3f0:	0c000000 	jal	0 <EnNiwLady_Init>
     3f4:	3c0741a0 	lui	a3,0x41a0
     3f8:	260502b0 	addiu	a1,s0,688
     3fc:	afa50034 	sw	a1,52(sp)
     400:	0c000000 	jal	0 <EnNiwLady_Init>
     404:	8fa4004c 	lw	a0,76(sp)
     408:	3c070000 	lui	a3,0x0
     40c:	8fa50034 	lw	a1,52(sp)
     410:	24e70000 	addiu	a3,a3,0
     414:	8fa4004c 	lw	a0,76(sp)
     418:	0c000000 	jal	0 <EnNiwLady_Init>
     41c:	02003025 	move	a2,s0
     420:	86030278 	lh	v1,632(s0)
     424:	3c0a0000 	lui	t2,0x0
     428:	24090006 	li	t1,6
     42c:	254a0000 	addiu	t2,t2,0
     430:	a2000272 	sb	zero,626(s0)
     434:	a209001f 	sb	t1,31(s0)
     438:	10600006 	beqz	v1,454 <func_80AB9F24+0x170>
     43c:	ae0a0134 	sw	t2,308(s0)
     440:	24010001 	li	at,1
     444:	10610047 	beq	v1,at,564 <func_80AB9F24+0x280>
     448:	3c040600 	lui	a0,0x600
     44c:	1000005f 	b	5cc <func_80AB9F24+0x2e8>
     450:	8fbf002c 	lw	ra,44(sp)
     454:	3c020000 	lui	v0,0x0
     458:	24420000 	addiu	v0,v0,0
     45c:	944b0ef0 	lhu	t3,3824(v0)
     460:	3c040600 	lui	a0,0x600
     464:	316d1000 	andi	t5,t3,0x1000
     468:	15a0001d 	bnez	t5,4e0 <func_80AB9F24+0x1fc>
     46c:	00000000 	nop
     470:	8c4c0004 	lw	t4,4(v0)
     474:	1180001a 	beqz	t4,4e0 <func_80AB9F24+0x1fc>
     478:	00000000 	nop
     47c:	3c040601 	lui	a0,0x601
     480:	0c000000 	jal	0 <EnNiwLady_Init>
     484:	2484a630 	addiu	a0,a0,-22992
     488:	44823000 	mtc1	v0,$f6
     48c:	44800000 	mtc1	zero,$f0
     490:	3c050601 	lui	a1,0x601
     494:	46803220 	cvt.s.w	$f8,$f6
     498:	44070000 	mfc1	a3,$f0
     49c:	24a5a630 	addiu	a1,a1,-22992
     4a0:	8fa40038 	lw	a0,56(sp)
     4a4:	3c063f80 	lui	a2,0x3f80
     4a8:	afa00014 	sw	zero,20(sp)
     4ac:	4600428d 	trunc.w.s	$f10,$f8
     4b0:	e7a00018 	swc1	$f0,24(sp)
     4b4:	440f5000 	mfc1	t7,$f10
     4b8:	00000000 	nop
     4bc:	000fc400 	sll	t8,t7,0x10
     4c0:	0018cc03 	sra	t9,t8,0x10
     4c4:	44998000 	mtc1	t9,$f16
     4c8:	00000000 	nop
     4cc:	468084a0 	cvt.s.w	$f18,$f16
     4d0:	0c000000 	jal	0 <EnNiwLady_Init>
     4d4:	e7b20010 	swc1	$f18,16(sp)
     4d8:	10000017 	b	538 <func_80AB9F24+0x254>
     4dc:	00000000 	nop
     4e0:	0c000000 	jal	0 <EnNiwLady_Init>
     4e4:	248407d0 	addiu	a0,a0,2000
     4e8:	44822000 	mtc1	v0,$f4
     4ec:	44800000 	mtc1	zero,$f0
     4f0:	3c050600 	lui	a1,0x600
     4f4:	468021a0 	cvt.s.w	$f6,$f4
     4f8:	44070000 	mfc1	a3,$f0
     4fc:	24a507d0 	addiu	a1,a1,2000
     500:	8fa40038 	lw	a0,56(sp)
     504:	3c063f80 	lui	a2,0x3f80
     508:	afa00014 	sw	zero,20(sp)
     50c:	4600320d 	trunc.w.s	$f8,$f6
     510:	e7a00018 	swc1	$f0,24(sp)
     514:	44094000 	mfc1	t1,$f8
     518:	00000000 	nop
     51c:	00095400 	sll	t2,t1,0x10
     520:	000a5c03 	sra	t3,t2,0x10
     524:	448b5000 	mtc1	t3,$f10
     528:	00000000 	nop
     52c:	46805420 	cvt.s.w	$f16,$f10
     530:	0c000000 	jal	0 <EnNiwLady_Init>
     534:	e7b00010 	swc1	$f16,16(sp)
     538:	3c0d0000 	lui	t5,0x0
     53c:	8dad0004 	lw	t5,4(t5)
     540:	3c0e0000 	lui	t6,0x0
     544:	3c0c0000 	lui	t4,0x0
     548:	15a00004 	bnez	t5,55c <func_80AB9F24+0x278>
     54c:	25ce0000 	addiu	t6,t6,0
     550:	258c0000 	addiu	t4,t4,0
     554:	1000001c 	b	5c8 <func_80AB9F24+0x2e4>
     558:	ae0c0250 	sw	t4,592(s0)
     55c:	1000001a 	b	5c8 <func_80AB9F24+0x2e4>
     560:	ae0e0250 	sw	t6,592(s0)
     564:	0c000000 	jal	0 <EnNiwLady_Init>
     568:	248407d0 	addiu	a0,a0,2000
     56c:	44829000 	mtc1	v0,$f18
     570:	44800000 	mtc1	zero,$f0
     574:	3c050600 	lui	a1,0x600
     578:	46809120 	cvt.s.w	$f4,$f18
     57c:	44070000 	mfc1	a3,$f0
     580:	24a507d0 	addiu	a1,a1,2000
     584:	8fa40038 	lw	a0,56(sp)
     588:	3c063f80 	lui	a2,0x3f80
     58c:	afa00014 	sw	zero,20(sp)
     590:	4600218d 	trunc.w.s	$f6,$f4
     594:	e7a00018 	swc1	$f0,24(sp)
     598:	44183000 	mfc1	t8,$f6
     59c:	00000000 	nop
     5a0:	0018cc00 	sll	t9,t8,0x10
     5a4:	00194403 	sra	t0,t9,0x10
     5a8:	44884000 	mtc1	t0,$f8
     5ac:	00000000 	nop
     5b0:	468042a0 	cvt.s.w	$f10,$f8
     5b4:	0c000000 	jal	0 <EnNiwLady_Init>
     5b8:	e7aa0010 	swc1	$f10,16(sp)
     5bc:	3c090000 	lui	t1,0x0
     5c0:	25290000 	addiu	t1,t1,0
     5c4:	ae090250 	sw	t1,592(s0)
     5c8:	8fbf002c 	lw	ra,44(sp)
     5cc:	8fb00028 	lw	s0,40(sp)
     5d0:	27bd0048 	addiu	sp,sp,72
     5d4:	03e00008 	jr	ra
     5d8:	00000000 	nop

000005dc <func_80ABA21C>:
     5dc:	3c0e0000 	lui	t6,0x0
     5e0:	85ce0000 	lh	t6,0(t6)
     5e4:	afa50004 	sw	a1,4(sp)
     5e8:	3c180000 	lui	t8,0x0
     5ec:	240f0006 	li	t7,6
     5f0:	27180000 	addiu	t8,t8,0
     5f4:	a48f0262 	sh	t7,610(a0)
     5f8:	ac980250 	sw	t8,592(a0)
     5fc:	03e00008 	jr	ra
     600:	a48e010e 	sh	t6,270(a0)

00000604 <func_80ABA244>:
     604:	27bdffd8 	addiu	sp,sp,-40
     608:	afbf0024 	sw	ra,36(sp)
     60c:	afb30020 	sw	s3,32(sp)
     610:	afb2001c 	sw	s2,28(sp)
     614:	afb10018 	sw	s1,24(sp)
     618:	afb00014 	sw	s0,20(sp)
     61c:	afa5002c 	sw	a1,44(sp)
     620:	a4800268 	sh	zero,616(a0)
     624:	8fae002c 	lw	t6,44(sp)
     628:	00809025 	move	s2,a0
     62c:	8dd01c64 	lw	s0,7268(t6)
     630:	12000044 	beqz	s0,744 <func_80ABA244+0x140>
     634:	3c130000 	lui	s3,0x0
     638:	3c110000 	lui	s1,0x0
     63c:	26310000 	addiu	s1,s1,0
     640:	26730000 	addiu	s3,s3,0
     644:	860f0000 	lh	t7,0(s0)
     648:	24010019 	li	at,25
     64c:	15e1003a 	bne	t7,at,738 <func_80ABA244+0x134>
     650:	3c0143a5 	lui	at,0x43a5
     654:	44813000 	mtc1	at,$f6
     658:	c6040024 	lwc1	$f4,36(s0)
     65c:	3c0142b4 	lui	at,0x42b4
     660:	44814000 	mtc1	at,$f8
     664:	46062001 	sub.s	$f0,$f4,$f6
     668:	3c010000 	lui	at,0x0
     66c:	8642026c 	lh	v0,620(s2)
     670:	46000005 	abs.s	$f0,$f0
     674:	4608003c 	c.lt.s	$f0,$f8
     678:	00000000 	nop
     67c:	45000024 	bc1f	710 <func_80ABA244+0x10c>
     680:	00000000 	nop
     684:	c60a002c 	lwc1	$f10,44(s0)
     688:	c4300000 	lwc1	$f16,0(at)
     68c:	3c01433e 	lui	at,0x433e
     690:	44819000 	mtc1	at,$f18
     694:	46105001 	sub.s	$f0,$f10,$f16
     698:	46000005 	abs.s	$f0,$f0
     69c:	4612003c 	c.lt.s	$f0,$f18
     6a0:	00000000 	nop
     6a4:	4500001a 	bc1f	710 <func_80ABA244+0x10c>
     6a8:	00000000 	nop
     6ac:	54400015 	bnezl	v0,704 <func_80ABA244+0x100>
     6b0:	86480268 	lh	t0,616(s2)
     6b4:	861902aa 	lh	t9,682(s0)
     6b8:	96780f2a 	lhu	t8,3882(s3)
     6bc:	3c0c0000 	lui	t4,0x0
     6c0:	00194040 	sll	t0,t9,0x1
     6c4:	02284821 	addu	t1,s1,t0
     6c8:	852a0000 	lh	t2,0(t1)
     6cc:	030a5825 	or	t3,t8,t2
     6d0:	a66b0f2a 	sh	t3,3882(s3)
     6d4:	8d8c0000 	lw	t4,0(t4)
     6d8:	858d12d6 	lh	t5,4822(t4)
     6dc:	51a00009 	beqzl	t5,704 <func_80ABA244+0x100>
     6e0:	86480268 	lh	t0,616(s2)
     6e4:	860e02aa 	lh	t6,682(s0)
     6e8:	3c040000 	lui	a0,0x0
     6ec:	24840000 	addiu	a0,a0,0
     6f0:	000e7840 	sll	t7,t6,0x1
     6f4:	022fc821 	addu	t9,s1,t7
     6f8:	0c000000 	jal	0 <EnNiwLady_Init>
     6fc:	87250000 	lh	a1,0(t9)
     700:	86480268 	lh	t0,616(s2)
     704:	25090001 	addiu	t1,t0,1
     708:	1000000b 	b	738 <func_80ABA244+0x134>
     70c:	a6490268 	sh	t1,616(s2)
     710:	5440000a 	bnezl	v0,73c <func_80ABA244+0x138>
     714:	8e100124 	lw	s0,292(s0)
     718:	860a02aa 	lh	t2,682(s0)
     71c:	96780f2a 	lhu	t8,3882(s3)
     720:	000a5840 	sll	t3,t2,0x1
     724:	022b6021 	addu	t4,s1,t3
     728:	858d0000 	lh	t5,0(t4)
     72c:	01a07027 	nor	t6,t5,zero
     730:	030e7824 	and	t7,t8,t6
     734:	a66f0f2a 	sh	t7,3882(s3)
     738:	8e100124 	lw	s0,292(s0)
     73c:	5600ffc2 	bnezl	s0,648 <func_80ABA244+0x44>
     740:	860f0000 	lh	t7,0(s0)
     744:	3c190000 	lui	t9,0x0
     748:	8f390000 	lw	t9,0(t9)
     74c:	3c130000 	lui	s3,0x0
     750:	26730000 	addiu	s3,s3,0
     754:	872212e2 	lh	v0,4834(t9)
     758:	10400002 	beqz	v0,764 <func_80ABA244+0x160>
     75c:	2448ffff 	addiu	t0,v0,-1
     760:	a6480268 	sh	t0,616(s2)
     764:	8fb0002c 	lw	s0,44(sp)
     768:	86510268 	lh	s1,616(s2)
     76c:	261020d8 	addiu	s0,s0,8408
     770:	0c000000 	jal	0 <EnNiwLady_Init>
     774:	02002025 	move	a0,s0
     778:	50400006 	beqzl	v0,794 <func_80ABA244+0x190>
     77c:	24090065 	li	t1,101
     780:	0c000000 	jal	0 <EnNiwLady_Init>
     784:	02002025 	move	a0,s0
     788:	24010006 	li	at,6
     78c:	14410002 	bne	v0,at,798 <func_80ABA244+0x194>
     790:	24090065 	li	t1,101
     794:	a649026e 	sh	t1,622(s2)
     798:	864a0268 	lh	t2,616(s2)
     79c:	3c0d0000 	lui	t5,0x0
     7a0:	29410007 	slti	at,t2,7
     7a4:	5420000a 	bnezl	at,7d0 <func_80ABA244+0x1cc>
     7a8:	864b026c 	lh	t3,620(s2)
     7ac:	8642026c 	lh	v0,620(s2)
     7b0:	24110008 	li	s1,8
     7b4:	28410002 	slti	at,v0,2
     7b8:	50200005 	beqzl	at,7d0 <func_80ABA244+0x1cc>
     7bc:	864b026c 	lh	t3,620(s2)
     7c0:	54400003 	bnezl	v0,7d0 <func_80ABA244+0x1cc>
     7c4:	864b026c 	lh	t3,620(s2)
     7c8:	24110007 	li	s1,7
     7cc:	864b026c 	lh	t3,620(s2)
     7d0:	2a210007 	slti	at,s1,7
     7d4:	51600005 	beqzl	t3,7ec <func_80ABA244+0x1e8>
     7d8:	00116040 	sll	t4,s1,0x1
     7dc:	50200003 	beqzl	at,7ec <func_80ABA244+0x1e8>
     7e0:	00116040 	sll	t4,s1,0x1
     7e4:	24110009 	li	s1,9
     7e8:	00116040 	sll	t4,s1,0x1
     7ec:	01ac6821 	addu	t5,t5,t4
     7f0:	85ad0000 	lh	t5,0(t5)
     7f4:	24050008 	li	a1,8
     7f8:	a64d010e 	sh	t5,270(s2)
     7fc:	0c000000 	jal	0 <EnNiwLady_Init>
     800:	8fa4002c 	lw	a0,44(sp)
     804:	10400006 	beqz	v0,820 <func_80ABA244+0x21c>
     808:	8fa4002c 	lw	a0,44(sp)
     80c:	0c000000 	jal	0 <EnNiwLady_Init>
     810:	24050008 	li	a1,8
     814:	24180006 	li	t8,6
     818:	a642010e 	sh	v0,270(s2)
     81c:	a6580262 	sh	t8,610(s2)
     820:	864e026c 	lh	t6,620(s2)
     824:	24010009 	li	at,9
     828:	02402025 	move	a0,s2
     82c:	11c00005 	beqz	t6,844 <func_80ABA244+0x240>
     830:	00000000 	nop
     834:	12210003 	beq	s1,at,844 <func_80ABA244+0x240>
     838:	240f000b 	li	t7,11
     83c:	2411000a 	li	s1,10
     840:	a64f026e 	sh	t7,622(s2)
     844:	0c000000 	jal	0 <EnNiwLady_Init>
     848:	8fa5002c 	lw	a1,44(sp)
     84c:	10400067 	beqz	v0,9ec <func_80ABA244+0x3e8>
     850:	02402025 	move	a0,s2
     854:	3c040000 	lui	a0,0x0
     858:	0c000000 	jal	0 <EnNiwLady_Init>
     85c:	24840000 	addiu	a0,a0,0
     860:	3c040000 	lui	a0,0x0
     864:	24840000 	addiu	a0,a0,0
     868:	0c000000 	jal	0 <EnNiwLady_Init>
     86c:	02202825 	move	a1,s1
     870:	3c040000 	lui	a0,0x0
     874:	24840000 	addiu	a0,a0,0
     878:	0c000000 	jal	0 <EnNiwLady_Init>
     87c:	8645026c 	lh	a1,620(s2)
     880:	3c040000 	lui	a0,0x0
     884:	24840000 	addiu	a0,a0,0
     888:	0c000000 	jal	0 <EnNiwLady_Init>
     88c:	8645026a 	lh	a1,618(s2)
     890:	3c040000 	lui	a0,0x0
     894:	24840000 	addiu	a0,a0,0
     898:	0c000000 	jal	0 <EnNiwLady_Init>
     89c:	86450268 	lh	a1,616(s2)
     8a0:	3c040000 	lui	a0,0x0
     8a4:	24840000 	addiu	a0,a0,0
     8a8:	0c000000 	jal	0 <EnNiwLady_Init>
     8ac:	9645010e 	lhu	a1,270(s2)
     8b0:	3c040000 	lui	a0,0x0
     8b4:	24840000 	addiu	a0,a0,0
     8b8:	0c000000 	jal	0 <EnNiwLady_Init>
     8bc:	86450262 	lh	a1,610(s2)
     8c0:	3c040000 	lui	a0,0x0
     8c4:	0c000000 	jal	0 <EnNiwLady_Init>
     8c8:	24840000 	addiu	a0,a0,0
     8cc:	8fa4002c 	lw	a0,44(sp)
     8d0:	0c000000 	jal	0 <EnNiwLady_Init>
     8d4:	24050008 	li	a1,8
     8d8:	54400048 	bnezl	v0,9fc <func_80ABA244+0x3f8>
     8dc:	8fbf0024 	lw	ra,36(sp)
     8e0:	9659010e 	lhu	t9,270(s2)
     8e4:	2401503c 	li	at,20540
     8e8:	26240001 	addiu	a0,s1,1
     8ec:	5721000c 	bnel	t9,at,920 <func_80ABA244+0x31c>
     8f0:	24010007 	li	at,7
     8f4:	0c000000 	jal	0 <EnNiwLady_Init>
     8f8:	24044806 	li	a0,18438
     8fc:	3c0a0000 	lui	t2,0x0
     900:	24080002 	li	t0,2
     904:	24090005 	li	t1,5
     908:	254a0000 	addiu	t2,t2,0
     90c:	a648026c 	sh	t0,620(s2)
     910:	a6490262 	sh	t1,610(s2)
     914:	10000038 	b	9f8 <func_80ABA244+0x3f4>
     918:	ae4a0250 	sw	t2,592(s2)
     91c:	24010007 	li	at,7
     920:	1621001b 	bne	s1,at,990 <func_80ABA244+0x38c>
     924:	a644026e 	sh	a0,622(s2)
     928:	0c000000 	jal	0 <EnNiwLady_Init>
     92c:	24044807 	li	a0,18439
     930:	864d0268 	lh	t5,616(s2)
     934:	240b0001 	li	t3,1
     938:	240c0005 	li	t4,5
     93c:	a64b026c 	sh	t3,620(s2)
     940:	a64c0262 	sh	t4,610(s2)
     944:	3c040000 	lui	a0,0x0
     948:	a64d026a 	sh	t5,618(s2)
     94c:	96650f2a 	lhu	a1,3882(s3)
     950:	0c000000 	jal	0 <EnNiwLady_Init>
     954:	24840000 	addiu	a0,a0,0
     958:	96780f2a 	lhu	t8,3882(s3)
     95c:	3c040000 	lui	a0,0x0
     960:	24840000 	addiu	a0,a0,0
     964:	330e01ff 	andi	t6,t8,0x1ff
     968:	a66e0f2a 	sh	t6,3882(s3)
     96c:	0c000000 	jal	0 <EnNiwLady_Init>
     970:	31c5ffff 	andi	a1,t6,0xffff
     974:	3c040000 	lui	a0,0x0
     978:	0c000000 	jal	0 <EnNiwLady_Init>
     97c:	24840000 	addiu	a0,a0,0
     980:	3c0f0000 	lui	t7,0x0
     984:	25ef0000 	addiu	t7,t7,0
     988:	1000001b 	b	9f8 <func_80ABA244+0x3f4>
     98c:	ae4f0250 	sw	t7,592(s2)
     990:	86420268 	lh	v0,616(s2)
     994:	8643026a 	lh	v1,618(s2)
     998:	1043000f 	beq	v0,v1,9d8 <func_80ABA244+0x3d4>
     99c:	0043082a 	slt	at,v0,v1
     9a0:	50200007 	beqzl	at,9c0 <func_80ABA244+0x3bc>
     9a4:	28810009 	slti	at,a0,9
     9a8:	0c000000 	jal	0 <EnNiwLady_Init>
     9ac:	24044806 	li	a0,18438
     9b0:	86420268 	lh	v0,616(s2)
     9b4:	10000008 	b	9d8 <func_80ABA244+0x3d4>
     9b8:	8643026a 	lh	v1,618(s2)
     9bc:	28810009 	slti	at,a0,9
     9c0:	50200006 	beqzl	at,9dc <func_80ABA244+0x3d8>
     9c4:	0062082a 	slt	at,v1,v0
     9c8:	0c000000 	jal	0 <EnNiwLady_Init>
     9cc:	24044807 	li	a0,18439
     9d0:	86420268 	lh	v0,616(s2)
     9d4:	8643026a 	lh	v1,618(s2)
     9d8:	0062082a 	slt	at,v1,v0
     9dc:	50200007 	beqzl	at,9fc <func_80ABA244+0x3f8>
     9e0:	8fbf0024 	lw	ra,36(sp)
     9e4:	10000004 	b	9f8 <func_80ABA244+0x3f4>
     9e8:	a642026a 	sh	v0,618(s2)
     9ec:	8fa5002c 	lw	a1,44(sp)
     9f0:	0c000000 	jal	0 <EnNiwLady_Init>
     9f4:	3c0642c8 	lui	a2,0x42c8
     9f8:	8fbf0024 	lw	ra,36(sp)
     9fc:	8fb00014 	lw	s0,20(sp)
     a00:	8fb10018 	lw	s1,24(sp)
     a04:	8fb2001c 	lw	s2,28(sp)
     a08:	8fb30020 	lw	s3,32(sp)
     a0c:	03e00008 	jr	ra
     a10:	27bd0028 	addiu	sp,sp,40

00000a14 <func_80ABA654>:
     a14:	27bdffd8 	addiu	sp,sp,-40
     a18:	afb0001c 	sw	s0,28(sp)
     a1c:	00808025 	move	s0,a0
     a20:	afbf0024 	sw	ra,36(sp)
     a24:	afb10020 	sw	s1,32(sp)
     a28:	00a08825 	move	s1,a1
     a2c:	0c000000 	jal	0 <EnNiwLady_Init>
     a30:	24a420d8 	addiu	a0,a1,8408
     a34:	860e0262 	lh	t6,610(s0)
     a38:	55c2003b 	bnel	t6,v0,b28 <func_80ABA654+0x114>
     a3c:	8fbf0024 	lw	ra,36(sp)
     a40:	0c000000 	jal	0 <EnNiwLady_Init>
     a44:	02202025 	move	a0,s1
     a48:	50400037 	beqzl	v0,b28 <func_80ABA654+0x114>
     a4c:	8fbf0024 	lw	ra,36(sp)
     a50:	0c000000 	jal	0 <EnNiwLady_Init>
     a54:	02202025 	move	a0,s1
     a58:	3c040000 	lui	a0,0x0
     a5c:	24840000 	addiu	a0,a0,0
     a60:	0c000000 	jal	0 <EnNiwLady_Init>
     a64:	8605026c 	lh	a1,620(s0)
     a68:	3c040000 	lui	a0,0x0
     a6c:	24840000 	addiu	a0,a0,0
     a70:	0c000000 	jal	0 <EnNiwLady_Init>
     a74:	92050272 	lbu	a1,626(s0)
     a78:	3c040000 	lui	a0,0x0
     a7c:	0c000000 	jal	0 <EnNiwLady_Init>
     a80:	24840000 	addiu	a0,a0,0
     a84:	240f000b 	li	t7,11
     a88:	a60f026e 	sh	t7,622(s0)
     a8c:	3c180000 	lui	t8,0x0
     a90:	97180ef0 	lhu	t8,3824(t8)
     a94:	2408000f 	li	t0,15
     a98:	02002025 	move	a0,s0
     a9c:	33191000 	andi	t9,t8,0x1000
     aa0:	1720000d 	bnez	t9,ad8 <func_80ABA654+0xc4>
     aa4:	02202825 	move	a1,s1
     aa8:	3c014248 	lui	at,0x4248
     aac:	44812000 	mtc1	at,$f4
     ab0:	ae000118 	sw	zero,280(s0)
     ab4:	ae080284 	sw	t0,644(s0)
     ab8:	2406000f 	li	a2,15
     abc:	3c0742c8 	lui	a3,0x42c8
     ac0:	0c000000 	jal	0 <EnNiwLady_Init>
     ac4:	e7a40010 	swc1	$f4,16(sp)
     ac8:	3c090000 	lui	t1,0x0
     acc:	25290000 	addiu	t1,t1,0
     ad0:	10000014 	b	b24 <func_80ABA654+0x110>
     ad4:	ae090250 	sw	t1,592(s0)
     ad8:	860a026c 	lh	t2,620(s0)
     adc:	24010001 	li	at,1
     ae0:	240b0055 	li	t3,85
     ae4:	1541000c 	bne	t2,at,b18 <func_80ABA654+0x104>
     ae8:	02002025 	move	a0,s0
     aec:	3c014248 	lui	at,0x4248
     af0:	44813000 	mtc1	at,$f6
     af4:	ae0b0284 	sw	t3,644(s0)
     af8:	02202825 	move	a1,s1
     afc:	24060055 	li	a2,85
     b00:	3c0742c8 	lui	a3,0x42c8
     b04:	0c000000 	jal	0 <EnNiwLady_Init>
     b08:	e7a60010 	swc1	$f6,16(sp)
     b0c:	3c0c0000 	lui	t4,0x0
     b10:	258c0000 	addiu	t4,t4,0
     b14:	ae0c0250 	sw	t4,592(s0)
     b18:	3c0d0000 	lui	t5,0x0
     b1c:	25ad0000 	addiu	t5,t5,0
     b20:	ae0d0250 	sw	t5,592(s0)
     b24:	8fbf0024 	lw	ra,36(sp)
     b28:	8fb0001c 	lw	s0,28(sp)
     b2c:	8fb10020 	lw	s1,32(sp)
     b30:	03e00008 	jr	ra
     b34:	27bd0028 	addiu	sp,sp,40

00000b38 <func_80ABA778>:
     b38:	27bdffe8 	addiu	sp,sp,-24
     b3c:	afa5001c 	sw	a1,28(sp)
     b40:	00802825 	move	a1,a0
     b44:	afa40018 	sw	a0,24(sp)
     b48:	afbf0014 	sw	ra,20(sp)
     b4c:	3c040000 	lui	a0,0x0
     b50:	24840000 	addiu	a0,a0,0
     b54:	0c000000 	jal	0 <EnNiwLady_Init>
     b58:	afa50018 	sw	a1,24(sp)
     b5c:	8fa50018 	lw	a1,24(sp)
     b60:	3c020000 	lui	v0,0x0
     b64:	240e0006 	li	t6,6
     b68:	24420000 	addiu	v0,v0,0
     b6c:	a4ae0262 	sh	t6,610(a1)
     b70:	a0a00273 	sb	zero,627(a1)
     b74:	944f0ef4 	lhu	t7,3828(v0)
     b78:	24090001 	li	t1,1
     b7c:	240a0004 	li	t2,4
     b80:	31f81000 	andi	t8,t7,0x1000
     b84:	1700000b 	bnez	t8,bb4 <func_80ABA778+0x7c>
     b88:	240b0002 	li	t3,2
     b8c:	90b90274 	lbu	t9,628(a1)
     b90:	24080001 	li	t0,1
     b94:	53200004 	beqzl	t9,ba8 <func_80ABA778+0x70>
     b98:	a4a0027a 	sh	zero,634(a1)
     b9c:	10000002 	b	ba8 <func_80ABA778+0x70>
     ba0:	a4a8027a 	sh	t0,634(a1)
     ba4:	a4a0027a 	sh	zero,634(a1)
     ba8:	a0a90273 	sb	t1,627(a1)
     bac:	10000015 	b	c04 <func_80ABA778+0xcc>
     bb0:	a4aa0262 	sh	t2,610(a1)
     bb4:	a4ab027a 	sh	t3,634(a1)
     bb8:	944c0ef4 	lhu	t4,3828(v0)
     bbc:	240e0003 	li	t6,3
     bc0:	318d4000 	andi	t5,t4,0x4000
     bc4:	55a00010 	bnezl	t5,c08 <func_80ABA778+0xd0>
     bc8:	84ab027a 	lh	t3,634(a1)
     bcc:	a4ae027a 	sh	t6,634(a1)
     bd0:	944f0ee0 	lhu	t7,3808(v0)
     bd4:	240a0004 	li	t2,4
     bd8:	31f80400 	andi	t8,t7,0x400
     bdc:	53000009 	beqzl	t8,c04 <func_80ABA778+0xcc>
     be0:	a4aa027a 	sh	t2,634(a1)
     be4:	90a80277 	lbu	t0,631(a1)
     be8:	24190009 	li	t9,9
     bec:	a4b9027a 	sh	t9,634(a1)
     bf0:	11000004 	beqz	t0,c04 <func_80ABA778+0xcc>
     bf4:	2409000a 	li	t1,10
     bf8:	10000002 	b	c04 <func_80ABA778+0xcc>
     bfc:	a4a9027a 	sh	t1,634(a1)
     c00:	a4aa027a 	sh	t2,634(a1)
     c04:	84ab027a 	lh	t3,634(a1)
     c08:	3c0d0000 	lui	t5,0x0
     c0c:	3c0e0000 	lui	t6,0x0
     c10:	000b6040 	sll	t4,t3,0x1
     c14:	01ac6821 	addu	t5,t5,t4
     c18:	85ad0000 	lh	t5,0(t5)
     c1c:	25ce0000 	addiu	t6,t6,0
     c20:	acae0250 	sw	t6,592(a1)
     c24:	a4ad010e 	sh	t5,270(a1)
     c28:	8fbf0014 	lw	ra,20(sp)
     c2c:	27bd0018 	addiu	sp,sp,24
     c30:	03e00008 	jr	ra
     c34:	00000000 	nop

00000c38 <func_80ABA878>:
     c38:	27bdffd0 	addiu	sp,sp,-48
     c3c:	afb00018 	sw	s0,24(sp)
     c40:	afbf001c 	sw	ra,28(sp)
     c44:	8cae1c44 	lw	t6,7236(a1)
     c48:	00808025 	move	s0,a0
     c4c:	24a420d8 	addiu	a0,a1,8408
     c50:	afa40024 	sw	a0,36(sp)
     c54:	afa50034 	sw	a1,52(sp)
     c58:	0c000000 	jal	0 <EnNiwLady_Init>
     c5c:	afae002c 	sw	t6,44(sp)
     c60:	10400005 	beqz	v0,c78 <func_80ABA878+0x40>
     c64:	8fa40024 	lw	a0,36(sp)
     c68:	0c000000 	jal	0 <EnNiwLady_Init>
     c6c:	00000000 	nop
     c70:	24010006 	li	at,6
     c74:	14410002 	bne	v0,at,c80 <func_80ABA878+0x48>
     c78:	240f000b 	li	t7,11
     c7c:	a60f026e 	sh	t7,622(s0)
     c80:	02002025 	move	a0,s0
     c84:	0c000000 	jal	0 <EnNiwLady_Init>
     c88:	8fa50034 	lw	a1,52(sp)
     c8c:	10400031 	beqz	v0,d54 <func_80ABA878+0x11c>
     c90:	02002025 	move	a0,s0
     c94:	0c000000 	jal	0 <EnNiwLady_Init>
     c98:	8fa40034 	lw	a0,52(sp)
     c9c:	24010006 	li	at,6
     ca0:	14410014 	bne	v0,at,cf4 <func_80ABA878+0xbc>
     ca4:	3c180000 	lui	t8,0x0
     ca8:	97180ee0 	lhu	t8,3808(t8)
     cac:	33190400 	andi	t9,t8,0x400
     cb0:	13200010 	beqz	t9,cf4 <func_80ABA878+0xbc>
     cb4:	00000000 	nop
     cb8:	0c000000 	jal	0 <EnNiwLady_Init>
     cbc:	24044807 	li	a0,18439
     cc0:	3c080000 	lui	t0,0x0
     cc4:	85080000 	lh	t0,0(t0)
     cc8:	8fa9002c 	lw	t1,44(sp)
     ccc:	3c0d0000 	lui	t5,0x0
     cd0:	240c0004 	li	t4,4
     cd4:	a528010e 	sh	t0,270(t1)
     cd8:	860a027a 	lh	t2,634(s0)
     cdc:	25ad0000 	addiu	t5,t5,0
     ce0:	a60c0262 	sh	t4,610(s0)
     ce4:	254b0015 	addiu	t3,t2,21
     ce8:	a60b026e 	sh	t3,622(s0)
     cec:	1000001d 	b	d64 <func_80ABA878+0x12c>
     cf0:	ae0d0250 	sw	t5,592(s0)
     cf4:	10400009 	beqz	v0,d1c <func_80ABA878+0xe4>
     cf8:	24080001 	li	t0,1
     cfc:	3c0e0000 	lui	t6,0x0
     d00:	85ce0000 	lh	t6,0(t6)
     d04:	8faf002c 	lw	t7,44(sp)
     d08:	a5ee010e 	sh	t6,270(t7)
     d0c:	8618027a 	lh	t8,634(s0)
     d10:	27190015 	addiu	t9,t8,21
     d14:	10000013 	b	d64 <func_80ABA878+0x12c>
     d18:	a619026e 	sh	t9,622(s0)
     d1c:	8609027a 	lh	t1,634(s0)
     d20:	920b0273 	lbu	t3,627(s0)
     d24:	a2080274 	sb	t0,628(s0)
     d28:	252a0015 	addiu	t2,t1,21
     d2c:	15600005 	bnez	t3,d44 <func_80ABA878+0x10c>
     d30:	a60a026e 	sh	t2,622(s0)
     d34:	3c0c0000 	lui	t4,0x0
     d38:	258c0000 	addiu	t4,t4,0
     d3c:	10000009 	b	d64 <func_80ABA878+0x12c>
     d40:	ae0c0250 	sw	t4,592(s0)
     d44:	3c0d0000 	lui	t5,0x0
     d48:	25ad0000 	addiu	t5,t5,0
     d4c:	10000005 	b	d64 <func_80ABA878+0x12c>
     d50:	ae0d0250 	sw	t5,592(s0)
     d54:	8fa50034 	lw	a1,52(sp)
     d58:	3c064248 	lui	a2,0x4248
     d5c:	0c000000 	jal	0 <EnNiwLady_Init>
     d60:	24070006 	li	a3,6
     d64:	8fbf001c 	lw	ra,28(sp)
     d68:	8fb00018 	lw	s0,24(sp)
     d6c:	27bd0030 	addiu	sp,sp,48
     d70:	03e00008 	jr	ra
     d74:	00000000 	nop

00000d78 <func_80ABA9B8>:
     d78:	27bdffd8 	addiu	sp,sp,-40
     d7c:	afb0001c 	sw	s0,28(sp)
     d80:	00808025 	move	s0,a0
     d84:	afbf0024 	sw	ra,36(sp)
     d88:	afb10020 	sw	s1,32(sp)
     d8c:	00a08825 	move	s1,a1
     d90:	0c000000 	jal	0 <EnNiwLady_Init>
     d94:	24a420d8 	addiu	a0,a1,8408
     d98:	860e0262 	lh	t6,610(s0)
     d9c:	55c2002b 	bnel	t6,v0,e4c <func_80ABA9B8+0xd4>
     da0:	8fbf0024 	lw	ra,36(sp)
     da4:	0c000000 	jal	0 <EnNiwLady_Init>
     da8:	02202025 	move	a0,s1
     dac:	10400026 	beqz	v0,e48 <func_80ABA9B8+0xd0>
     db0:	3c020001 	lui	v0,0x1
     db4:	00511021 	addu	v0,v0,s1
     db8:	904204bd 	lbu	v0,1213(v0)
     dbc:	24010001 	li	at,1
     dc0:	10400005 	beqz	v0,dd8 <func_80ABA9B8+0x60>
     dc4:	00000000 	nop
     dc8:	10410012 	beq	v0,at,e14 <func_80ABA9B8+0x9c>
     dcc:	3c180000 	lui	t8,0x0
     dd0:	1000001e 	b	e4c <func_80ABA9B8+0xd4>
     dd4:	8fbf0024 	lw	ra,36(sp)
     dd8:	0c000000 	jal	0 <EnNiwLady_Init>
     ddc:	02202025 	move	a0,s1
     de0:	3c0142c8 	lui	at,0x42c8
     de4:	44812000 	mtc1	at,$f4
     de8:	ae000118 	sw	zero,280(s0)
     dec:	02002025 	move	a0,s0
     df0:	02202825 	move	a1,s1
     df4:	2406001d 	li	a2,29
     df8:	3c074348 	lui	a3,0x4348
     dfc:	0c000000 	jal	0 <EnNiwLady_Init>
     e00:	e7a40010 	swc1	$f4,16(sp)
     e04:	3c0f0000 	lui	t7,0x0
     e08:	25ef0000 	addiu	t7,t7,0
     e0c:	1000000e 	b	e48 <func_80ABA9B8+0xd0>
     e10:	ae0f0250 	sw	t7,592(s0)
     e14:	8619027a 	lh	t9,634(s0)
     e18:	87180000 	lh	t8,0(t8)
     e1c:	02202025 	move	a0,s1
     e20:	27280015 	addiu	t0,t9,21
     e24:	a608026e 	sh	t0,622(s0)
     e28:	a618010e 	sh	t8,270(s0)
     e2c:	0c000000 	jal	0 <EnNiwLady_Init>
     e30:	3305ffff 	andi	a1,t8,0xffff
     e34:	3c0a0000 	lui	t2,0x0
     e38:	24090005 	li	t1,5
     e3c:	254a0000 	addiu	t2,t2,0
     e40:	a6090262 	sh	t1,610(s0)
     e44:	ae0a0250 	sw	t2,592(s0)
     e48:	8fbf0024 	lw	ra,36(sp)
     e4c:	8fb0001c 	lw	s0,28(sp)
     e50:	8fb10020 	lw	s1,32(sp)
     e54:	03e00008 	jr	ra
     e58:	27bd0028 	addiu	sp,sp,40

00000e5c <func_80ABAA9C>:
     e5c:	27bdffe8 	addiu	sp,sp,-24
     e60:	afbf0014 	sw	ra,20(sp)
     e64:	afa40018 	sw	a0,24(sp)
     e68:	afa5001c 	sw	a1,28(sp)
     e6c:	240e000b 	li	t6,11
     e70:	a48e026e 	sh	t6,622(a0)
     e74:	8fa4001c 	lw	a0,28(sp)
     e78:	0c000000 	jal	0 <EnNiwLady_Init>
     e7c:	248420d8 	addiu	a0,a0,8408
     e80:	8fb80018 	lw	t8,24(sp)
     e84:	87190262 	lh	t9,610(t8)
     e88:	5722000c 	bnel	t9,v0,ebc <func_80ABAA9C+0x60>
     e8c:	8fbf0014 	lw	ra,20(sp)
     e90:	0c000000 	jal	0 <EnNiwLady_Init>
     e94:	8fa4001c 	lw	a0,28(sp)
     e98:	50400008 	beqzl	v0,ebc <func_80ABAA9C+0x60>
     e9c:	8fbf0014 	lw	ra,20(sp)
     ea0:	0c000000 	jal	0 <EnNiwLady_Init>
     ea4:	8fa4001c 	lw	a0,28(sp)
     ea8:	8fa90018 	lw	t1,24(sp)
     eac:	3c080000 	lui	t0,0x0
     eb0:	25080000 	addiu	t0,t0,0
     eb4:	ad280250 	sw	t0,592(t1)
     eb8:	8fbf0014 	lw	ra,20(sp)
     ebc:	27bd0018 	addiu	sp,sp,24
     ec0:	03e00008 	jr	ra
     ec4:	00000000 	nop

00000ec8 <func_80ABAB08>:
     ec8:	27bdffd8 	addiu	sp,sp,-40
     ecc:	afb0001c 	sw	s0,28(sp)
     ed0:	00808025 	move	s0,a0
     ed4:	afbf0024 	sw	ra,36(sp)
     ed8:	afb10020 	sw	s1,32(sp)
     edc:	00a08825 	move	s1,a1
     ee0:	0c000000 	jal	0 <EnNiwLady_Init>
     ee4:	24a420d8 	addiu	a0,a1,8408
     ee8:	860e0262 	lh	t6,610(s0)
     eec:	55c20030 	bnel	t6,v0,fb0 <func_80ABAB08+0xe8>
     ef0:	8fbf0024 	lw	ra,36(sp)
     ef4:	0c000000 	jal	0 <EnNiwLady_Init>
     ef8:	02202025 	move	a0,s1
     efc:	1040002b 	beqz	v0,fac <func_80ABAB08+0xe4>
     f00:	3c020001 	lui	v0,0x1
     f04:	00511021 	addu	v0,v0,s1
     f08:	904204bd 	lbu	v0,1213(v0)
     f0c:	24010001 	li	at,1
     f10:	10400005 	beqz	v0,f28 <func_80ABAB08+0x60>
     f14:	00000000 	nop
     f18:	10410012 	beq	v0,at,f64 <func_80ABAB08+0x9c>
     f1c:	00000000 	nop
     f20:	10000023 	b	fb0 <func_80ABAB08+0xe8>
     f24:	8fbf0024 	lw	ra,36(sp)
     f28:	0c000000 	jal	0 <EnNiwLady_Init>
     f2c:	02202025 	move	a0,s1
     f30:	3c0142c8 	lui	at,0x42c8
     f34:	44812000 	mtc1	at,$f4
     f38:	ae000118 	sw	zero,280(s0)
     f3c:	02002025 	move	a0,s0
     f40:	02202825 	move	a1,s1
     f44:	2406000e 	li	a2,14
     f48:	3c074348 	lui	a3,0x4348
     f4c:	0c000000 	jal	0 <EnNiwLady_Init>
     f50:	e7a40010 	swc1	$f4,16(sp)
     f54:	3c0f0000 	lui	t7,0x0
     f58:	25ef0000 	addiu	t7,t7,0
     f5c:	10000013 	b	fac <func_80ABAB08+0xe4>
     f60:	ae0f0250 	sw	t7,592(s0)
     f64:	0c000000 	jal	0 <EnNiwLady_Init>
     f68:	02202025 	move	a0,s1
     f6c:	24180001 	li	t8,1
     f70:	8608027a 	lh	t0,634(s0)
     f74:	a2180277 	sb	t8,631(s0)
     f78:	3c190000 	lui	t9,0x0
     f7c:	87390000 	lh	t9,0(t9)
     f80:	25090015 	addiu	t1,t0,21
     f84:	a609026e 	sh	t1,622(s0)
     f88:	02202025 	move	a0,s1
     f8c:	a619010e 	sh	t9,270(s0)
     f90:	0c000000 	jal	0 <EnNiwLady_Init>
     f94:	3325ffff 	andi	a1,t9,0xffff
     f98:	3c0b0000 	lui	t3,0x0
     f9c:	240a0005 	li	t2,5
     fa0:	256b0000 	addiu	t3,t3,0
     fa4:	a60a0262 	sh	t2,610(s0)
     fa8:	ae0b0250 	sw	t3,592(s0)
     fac:	8fbf0024 	lw	ra,36(sp)
     fb0:	8fb0001c 	lw	s0,28(sp)
     fb4:	8fb10020 	lw	s1,32(sp)
     fb8:	03e00008 	jr	ra
     fbc:	27bd0028 	addiu	sp,sp,40

00000fc0 <func_80ABAC00>:
     fc0:	27bdffe0 	addiu	sp,sp,-32
     fc4:	afbf001c 	sw	ra,28(sp)
     fc8:	afa50024 	sw	a1,36(sp)
     fcc:	0c000000 	jal	0 <EnNiwLady_Init>
     fd0:	afa40020 	sw	a0,32(sp)
     fd4:	10400005 	beqz	v0,fec <func_80ABAC00+0x2c>
     fd8:	8fa40020 	lw	a0,32(sp)
     fdc:	3c0e0000 	lui	t6,0x0
     fe0:	25ce0000 	addiu	t6,t6,0
     fe4:	10000013 	b	1034 <func_80ABAC00+0x74>
     fe8:	ac8e0250 	sw	t6,592(a0)
     fec:	3c020000 	lui	v0,0x0
     ff0:	24420000 	addiu	v0,v0,0
     ff4:	8c4f0004 	lw	t7,4(v0)
     ff8:	8c860284 	lw	a2,644(a0)
     ffc:	8fa50024 	lw	a1,36(sp)
    1000:	15e00008 	bnez	t7,1024 <func_80ABAC00+0x64>
    1004:	3c0142c8 	lui	at,0x42c8
    1008:	94580ef4 	lhu	t8,3828(v0)
    100c:	2406000e 	li	a2,14
    1010:	33191000 	andi	t9,t8,0x1000
    1014:	17200003 	bnez	t9,1024 <func_80ABAC00+0x64>
    1018:	00000000 	nop
    101c:	10000001 	b	1024 <func_80ABAC00+0x64>
    1020:	2406001d 	li	a2,29
    1024:	44812000 	mtc1	at,$f4
    1028:	3c074348 	lui	a3,0x4348
    102c:	0c000000 	jal	0 <EnNiwLady_Init>
    1030:	e7a40010 	swc1	$f4,16(sp)
    1034:	8fbf001c 	lw	ra,28(sp)
    1038:	27bd0020 	addiu	sp,sp,32
    103c:	03e00008 	jr	ra
    1040:	00000000 	nop

00001044 <func_80ABAC84>:
    1044:	27bdffe8 	addiu	sp,sp,-24
    1048:	afbf0014 	sw	ra,20(sp)
    104c:	afa40018 	sw	a0,24(sp)
    1050:	afa5001c 	sw	a1,28(sp)
    1054:	0c000000 	jal	0 <EnNiwLady_Init>
    1058:	24a420d8 	addiu	a0,a1,8408
    105c:	24010006 	li	at,6
    1060:	54410022 	bnel	v0,at,10ec <func_80ABAC84+0xa8>
    1064:	8fbf0014 	lw	ra,20(sp)
    1068:	0c000000 	jal	0 <EnNiwLady_Init>
    106c:	8fa4001c 	lw	a0,28(sp)
    1070:	1040001d 	beqz	v0,10e8 <func_80ABAC84+0xa4>
    1074:	3c040000 	lui	a0,0x0
    1078:	0c000000 	jal	0 <EnNiwLady_Init>
    107c:	24840000 	addiu	a0,a0,0
    1080:	3c020000 	lui	v0,0x0
    1084:	24420000 	addiu	v0,v0,0
    1088:	8c4e0004 	lw	t6,4(v0)
    108c:	8fa30018 	lw	v1,24(sp)
    1090:	3c080000 	lui	t0,0x0
    1094:	15c0000d 	bnez	t6,10cc <func_80ABAC84+0x88>
    1098:	240c0006 	li	t4,6
    109c:	94430ef4 	lhu	v1,3828(v0)
    10a0:	306f1000 	andi	t7,v1,0x1000
    10a4:	15e00004 	bnez	t7,10b8 <func_80ABAC84+0x74>
    10a8:	34794000 	ori	t9,v1,0x4000
    10ac:	34781000 	ori	t8,v1,0x1000
    10b0:	10000002 	b	10bc <func_80ABAC84+0x78>
    10b4:	a4580ef4 	sh	t8,3828(v0)
    10b8:	a4590ef4 	sh	t9,3828(v0)
    10bc:	8fa90018 	lw	t1,24(sp)
    10c0:	25080000 	addiu	t0,t0,0
    10c4:	10000008 	b	10e8 <func_80ABAC84+0xa4>
    10c8:	ad280250 	sw	t0,592(t1)
    10cc:	944a0ef0 	lhu	t2,3824(v0)
    10d0:	3c0d0000 	lui	t5,0x0
    10d4:	25ad0000 	addiu	t5,t5,0
    10d8:	354b1000 	ori	t3,t2,0x1000
    10dc:	a44b0ef0 	sh	t3,3824(v0)
    10e0:	a46c0262 	sh	t4,610(v1)
    10e4:	ac6d0250 	sw	t5,592(v1)
    10e8:	8fbf0014 	lw	ra,20(sp)
    10ec:	27bd0018 	addiu	sp,sp,24
    10f0:	03e00008 	jr	ra
    10f4:	00000000 	nop

000010f8 <func_80ABAD38>:
    10f8:	27bdffe8 	addiu	sp,sp,-24
    10fc:	afa40018 	sw	a0,24(sp)
    1100:	afbf0014 	sw	ra,20(sp)
    1104:	3c040000 	lui	a0,0x0
    1108:	afa5001c 	sw	a1,28(sp)
    110c:	0c000000 	jal	0 <EnNiwLady_Init>
    1110:	24840000 	addiu	a0,a0,0
    1114:	8fa20018 	lw	v0,24(sp)
    1118:	3c0f0000 	lui	t7,0x0
    111c:	240e0006 	li	t6,6
    1120:	25ef0000 	addiu	t7,t7,0
    1124:	a44e0262 	sh	t6,610(v0)
    1128:	ac4f0250 	sw	t7,592(v0)
    112c:	8fbf0014 	lw	ra,20(sp)
    1130:	27bd0018 	addiu	sp,sp,24
    1134:	03e00008 	jr	ra
    1138:	00000000 	nop

0000113c <func_80ABAD7C>:
    113c:	27bdffd8 	addiu	sp,sp,-40
    1140:	afb00014 	sw	s0,20(sp)
    1144:	afbf001c 	sw	ra,28(sp)
    1148:	afb10018 	sw	s1,24(sp)
    114c:	240e503d 	li	t6,20541
    1150:	00808025 	move	s0,a0
    1154:	a48e010e 	sh	t6,270(a0)
    1158:	00a08825 	move	s1,a1
    115c:	00a02025 	move	a0,a1
    1160:	0c000000 	jal	0 <EnNiwLady_Init>
    1164:	24050008 	li	a1,8
    1168:	10400004 	beqz	v0,117c <func_80ABAD7C+0x40>
    116c:	02202025 	move	a0,s1
    1170:	0c000000 	jal	0 <EnNiwLady_Init>
    1174:	24050008 	li	a1,8
    1178:	a602010e 	sh	v0,270(s0)
    117c:	262420d8 	addiu	a0,s1,8408
    1180:	0c000000 	jal	0 <EnNiwLady_Init>
    1184:	afa40024 	sw	a0,36(sp)
    1188:	10400005 	beqz	v0,11a0 <func_80ABAD7C+0x64>
    118c:	8fa40024 	lw	a0,36(sp)
    1190:	0c000000 	jal	0 <EnNiwLady_Init>
    1194:	00000000 	nop
    1198:	24010006 	li	at,6
    119c:	14410002 	bne	v0,at,11a8 <func_80ABAD7C+0x6c>
    11a0:	240f0008 	li	t7,8
    11a4:	a60f026e 	sh	t7,622(s0)
    11a8:	02002025 	move	a0,s0
    11ac:	0c000000 	jal	0 <EnNiwLady_Init>
    11b0:	02202825 	move	a1,s1
    11b4:	1040000a 	beqz	v0,11e0 <func_80ABAD7C+0xa4>
    11b8:	02002025 	move	a0,s0
    11bc:	8619027a 	lh	t9,634(s0)
    11c0:	3c090000 	lui	t1,0x0
    11c4:	24180001 	li	t8,1
    11c8:	25290000 	addiu	t1,t1,0
    11cc:	27280009 	addiu	t0,t9,9
    11d0:	a2180274 	sb	t8,628(s0)
    11d4:	a608026e 	sh	t0,622(s0)
    11d8:	10000004 	b	11ec <func_80ABAD7C+0xb0>
    11dc:	ae090250 	sw	t1,592(s0)
    11e0:	02202825 	move	a1,s1
    11e4:	0c000000 	jal	0 <EnNiwLady_Init>
    11e8:	3c0642c8 	lui	a2,0x42c8
    11ec:	8fbf001c 	lw	ra,28(sp)
    11f0:	8fb00014 	lw	s0,20(sp)
    11f4:	8fb10018 	lw	s1,24(sp)
    11f8:	03e00008 	jr	ra
    11fc:	27bd0028 	addiu	sp,sp,40

00001200 <EnNiwLady_Update>:
    1200:	27bdffc8 	addiu	sp,sp,-56
    1204:	afbf0024 	sw	ra,36(sp)
    1208:	afb00020 	sw	s0,32(sp)
    120c:	afa5003c 	sw	a1,60(sp)
    1210:	8ca21c44 	lw	v0,7236(a1)
    1214:	00808025 	move	s0,a0
    1218:	3c054270 	lui	a1,0x4270
    121c:	0c000000 	jal	0 <EnNiwLady_Init>
    1220:	afa2002c 	sw	v0,44(sp)
    1224:	8fa2002c 	lw	v0,44(sp)
    1228:	3c190000 	lui	t9,0x0
    122c:	3c014120 	lui	at,0x4120
    1230:	8c580024 	lw	t8,36(v0)
    1234:	02002025 	move	a0,s0
    1238:	26050288 	addiu	a1,s0,648
    123c:	ae1802a0 	sw	t8,672(s0)
    1240:	8c4f0028 	lw	t7,40(v0)
    1244:	24060002 	li	a2,2
    1248:	ae0f02a4 	sw	t7,676(s0)
    124c:	8c58002c 	lw	t8,44(v0)
    1250:	ae1802a8 	sw	t8,680(s0)
    1254:	8f390004 	lw	t9,4(t9)
    1258:	13200006 	beqz	t9,1274 <EnNiwLady_Update+0x74>
    125c:	00000000 	nop
    1260:	c4440028 	lwc1	$f4,40(v0)
    1264:	44813000 	mtc1	at,$f6
    1268:	00000000 	nop
    126c:	46062201 	sub.s	$f8,$f4,$f6
    1270:	e60802a4 	swc1	$f8,676(s0)
    1274:	0c000000 	jal	0 <EnNiwLady_Init>
    1278:	24070004 	li	a3,4
    127c:	8a090290 	lwl	t1,656(s0)
    1280:	8a0b0296 	lwl	t3,662(s0)
    1284:	9a090293 	lwr	t1,659(s0)
    1288:	9a0b0299 	lwr	t3,665(s0)
    128c:	920c0276 	lbu	t4,630(s0)
    1290:	aa090254 	swl	t1,596(s0)
    1294:	aa0b025a 	swl	t3,602(s0)
    1298:	ba090257 	swr	t1,599(s0)
    129c:	ba0b025d 	swr	t3,605(s0)
    12a0:	96090294 	lhu	t1,660(s0)
    12a4:	960b029a 	lhu	t3,666(s0)
    12a8:	26040256 	addiu	a0,s0,598
    12ac:	a6090258 	sh	t1,600(s0)
    12b0:	15800006 	bnez	t4,12cc <EnNiwLady_Update+0xcc>
    12b4:	a60b025e 	sh	t3,606(s0)
    12b8:	00002825 	move	a1,zero
    12bc:	24060005 	li	a2,5
    12c0:	24070bb8 	li	a3,3000
    12c4:	0c000000 	jal	0 <EnNiwLady_Init>
    12c8:	afa00010 	sw	zero,16(sp)
    12cc:	820e0281 	lb	t6,641(s0)
    12d0:	8fad003c 	lw	t5,60(sp)
    12d4:	3c190001 	lui	t9,0x1
    12d8:	000e7900 	sll	t7,t6,0x4
    12dc:	01ee7821 	addu	t7,t7,t6
    12e0:	000f7880 	sll	t7,t7,0x2
    12e4:	01afc021 	addu	t8,t5,t7
    12e8:	0338c821 	addu	t9,t9,t8
    12ec:	8f3917b4 	lw	t9,6068(t9)
    12f0:	3c018000 	lui	at,0x8000
    12f4:	03214021 	addu	t0,t9,at
    12f8:	3c010000 	lui	at,0x0
    12fc:	ac280018 	sw	t0,24(at)
    1300:	82090281 	lb	t1,641(s0)
    1304:	05220052 	bltzl	t1,1450 <EnNiwLady_Update+0x250>
    1308:	8fbf0024 	lw	ra,36(sp)
    130c:	860a027e 	lh	t2,638(s0)
    1310:	5140000d 	beqzl	t2,1348 <EnNiwLady_Update+0x148>
    1314:	8fa4003c 	lw	a0,60(sp)
    1318:	8602026e 	lh	v0,622(s0)
    131c:	02002025 	move	a0,s0
    1320:	10400006 	beqz	v0,133c <EnNiwLady_Update+0x13c>
    1324:	244bffff 	addiu	t3,v0,-1
    1328:	a60b026e 	sh	t3,622(s0)
    132c:	8606026e 	lh	a2,622(s0)
    1330:	0c000000 	jal	0 <EnNiwLady_Init>
    1334:	8fa5003c 	lw	a1,60(sp)
    1338:	a600026e 	sh	zero,622(s0)
    133c:	0c000000 	jal	0 <EnNiwLady_Init>
    1340:	2604014c 	addiu	a0,s0,332
    1344:	8fa4003c 	lw	a0,60(sp)
    1348:	3c010001 	lui	at,0x1
    134c:	342117a4 	ori	at,at,0x17a4
    1350:	24050110 	li	a1,272
    1354:	0c000000 	jal	0 <EnNiwLady_Init>
    1358:	00812021 	addu	a0,a0,at
    135c:	a2020280 	sb	v0,640(s0)
    1360:	820c0280 	lb	t4,640(s0)
    1364:	0582003a 	bltzl	t4,1450 <EnNiwLady_Update+0x250>
    1368:	8fbf0024 	lw	ra,36(sp)
    136c:	8e190250 	lw	t9,592(s0)
    1370:	02002025 	move	a0,s0
    1374:	8fa5003c 	lw	a1,60(sp)
    1378:	0320f809 	jalr	t9
    137c:	00000000 	nop
    1380:	86020264 	lh	v0,612(s0)
    1384:	10400002 	beqz	v0,1390 <EnNiwLady_Update+0x190>
    1388:	244effff 	addiu	t6,v0,-1
    138c:	a60e0264 	sh	t6,612(s0)
    1390:	86020266 	lh	v0,614(s0)
    1394:	10400003 	beqz	v0,13a4 <EnNiwLady_Update+0x1a4>
    1398:	244dffff 	addiu	t5,v0,-1
    139c:	a60d0266 	sh	t5,614(s0)
    13a0:	86020266 	lh	v0,614(s0)
    13a4:	860f0260 	lh	t7,608(s0)
    13a8:	25f80001 	addiu	t8,t7,1
    13ac:	14400010 	bnez	v0,13f0 <EnNiwLady_Update+0x1f0>
    13b0:	a6180260 	sh	t8,608(s0)
    13b4:	8608027c 	lh	t0,636(s0)
    13b8:	25090001 	addiu	t1,t0,1
    13bc:	a609027c 	sh	t1,636(s0)
    13c0:	860a027c 	lh	t2,636(s0)
    13c4:	29410003 	slti	at,t2,3
    13c8:	14200009 	bnez	at,13f0 <EnNiwLady_Update+0x1f0>
    13cc:	3c014270 	lui	at,0x4270
    13d0:	44816000 	mtc1	at,$f12
    13d4:	0c000000 	jal	0 <EnNiwLady_Init>
    13d8:	a600027c 	sh	zero,636(s0)
    13dc:	4600028d 	trunc.w.s	$f10,$f0
    13e0:	440e5000 	mfc1	t6,$f10
    13e4:	00000000 	nop
    13e8:	25cd0014 	addiu	t5,t6,20
    13ec:	a60d0266 	sh	t5,614(s0)
    13f0:	3c0141a0 	lui	at,0x41a0
    13f4:	44810000 	mtc1	at,$f0
    13f8:	3c014270 	lui	at,0x4270
    13fc:	44818000 	mtc1	at,$f16
    1400:	240f001d 	li	t7,29
    1404:	44060000 	mfc1	a2,$f0
    1408:	44070000 	mfc1	a3,$f0
    140c:	afaf0014 	sw	t7,20(sp)
    1410:	8fa4003c 	lw	a0,60(sp)
    1414:	02002825 	move	a1,s0
    1418:	0c000000 	jal	0 <EnNiwLady_Init>
    141c:	e7b00010 	swc1	$f16,16(sp)
    1420:	260602b0 	addiu	a2,s0,688
    1424:	00c02825 	move	a1,a2
    1428:	afa60028 	sw	a2,40(sp)
    142c:	0c000000 	jal	0 <EnNiwLady_Init>
    1430:	02002025 	move	a0,s0
    1434:	8fa4003c 	lw	a0,60(sp)
    1438:	3c010001 	lui	at,0x1
    143c:	34211e60 	ori	at,at,0x1e60
    1440:	8fa60028 	lw	a2,40(sp)
    1444:	0c000000 	jal	0 <EnNiwLady_Init>
    1448:	00812821 	addu	a1,a0,at
    144c:	8fbf0024 	lw	ra,36(sp)
    1450:	8fb00020 	lw	s0,32(sp)
    1454:	27bd0038 	addiu	sp,sp,56
    1458:	03e00008 	jr	ra
    145c:	00000000 	nop

00001460 <func_80ABB0A0>:
    1460:	27bdffe8 	addiu	sp,sp,-24
    1464:	afbf0014 	sw	ra,20(sp)
    1468:	0c000000 	jal	0 <EnNiwLady_Init>
    146c:	24050008 	li	a1,8
    1470:	3c0edf00 	lui	t6,0xdf00
    1474:	ac4e0000 	sw	t6,0(v0)
    1478:	ac400004 	sw	zero,4(v0)
    147c:	8fbf0014 	lw	ra,20(sp)
    1480:	27bd0018 	addiu	sp,sp,24
    1484:	03e00008 	jr	ra
    1488:	00000000 	nop

0000148c <func_80ABB0CC>:
    148c:	27bdffd8 	addiu	sp,sp,-40
    1490:	2401000f 	li	at,15
    1494:	afbf0014 	sw	ra,20(sp)
    1498:	afa40028 	sw	a0,40(sp)
    149c:	afa60030 	sw	a2,48(sp)
    14a0:	14a1000b 	bne	a1,at,14d0 <func_80ABB0CC+0x44>
    14a4:	afa70034 	sw	a3,52(sp)
    14a8:	8fa20038 	lw	v0,56(sp)
    14ac:	8fa3003c 	lw	v1,60(sp)
    14b0:	844e0000 	lh	t6,0(v0)
    14b4:	846f0256 	lh	t7,598(v1)
    14b8:	84590004 	lh	t9,4(v0)
    14bc:	01cfc021 	addu	t8,t6,t7
    14c0:	a4580000 	sh	t8,0(v0)
    14c4:	84680254 	lh	t0,596(v1)
    14c8:	03284821 	addu	t1,t9,t0
    14cc:	a4490004 	sh	t1,4(v0)
    14d0:	24040008 	li	a0,8
    14d4:	8fa20038 	lw	v0,56(sp)
    14d8:	14a40005 	bne	a1,a0,14f0 <func_80ABB0CC+0x64>
    14dc:	8fa3003c 	lw	v1,60(sp)
    14e0:	844a0000 	lh	t2,0(v0)
    14e4:	846b025c 	lh	t3,604(v1)
    14e8:	014b6021 	addu	t4,t2,t3
    14ec:	a44c0000 	sh	t4,0(v0)
    14f0:	906d0275 	lbu	t5,629(v1)
    14f4:	51a00038 	beqzl	t5,15d8 <func_80ABB0CC+0x14c>
    14f8:	8fbf0014 	lw	ra,20(sp)
    14fc:	10a40005 	beq	a1,a0,1514 <func_80ABB0CC+0x88>
    1500:	2401000a 	li	at,10
    1504:	10a10003 	beq	a1,at,1514 <func_80ABB0CC+0x88>
    1508:	2401000d 	li	at,13
    150c:	54a10032 	bnel	a1,at,15d8 <func_80ABB0CC+0x14c>
    1510:	8fbf0014 	lw	ra,20(sp)
    1514:	8fae0028 	lw	t6,40(sp)
    1518:	00051880 	sll	v1,a1,0x2
    151c:	00651823 	subu	v1,v1,a1
    1520:	000318c0 	sll	v1,v1,0x3
    1524:	8dcf009c 	lw	t7,156(t6)
    1528:	00651821 	addu	v1,v1,a1
    152c:	00031840 	sll	v1,v1,0x1
    1530:	24780814 	addiu	t8,v1,2068
    1534:	01f80019 	multu	t7,t8
    1538:	afa30018 	sw	v1,24(sp)
    153c:	00002012 	mflo	a0
    1540:	00042400 	sll	a0,a0,0x10
    1544:	0c000000 	jal	0 <EnNiwLady_Init>
    1548:	00042403 	sra	a0,a0,0x10
    154c:	8fa20038 	lw	v0,56(sp)
    1550:	3c014348 	lui	at,0x4348
    1554:	44814000 	mtc1	at,$f8
    1558:	84590002 	lh	t9,2(v0)
    155c:	8fa30018 	lw	v1,24(sp)
    1560:	46080282 	mul.s	$f10,$f0,$f8
    1564:	44992000 	mtc1	t9,$f4
    1568:	246c0940 	addiu	t4,v1,2368
    156c:	468021a0 	cvt.s.w	$f6,$f4
    1570:	460a3400 	add.s	$f16,$f6,$f10
    1574:	4600848d 	trunc.w.s	$f18,$f16
    1578:	44099000 	mfc1	t1,$f18
    157c:	00000000 	nop
    1580:	a4490002 	sh	t1,2(v0)
    1584:	8faa0028 	lw	t2,40(sp)
    1588:	8d4b009c 	lw	t3,156(t2)
    158c:	016c0019 	multu	t3,t4
    1590:	00002012 	mflo	a0
    1594:	00042400 	sll	a0,a0,0x10
    1598:	0c000000 	jal	0 <EnNiwLady_Init>
    159c:	00042403 	sra	a0,a0,0x10
    15a0:	8fa20038 	lw	v0,56(sp)
    15a4:	3c014348 	lui	at,0x4348
    15a8:	44813000 	mtc1	at,$f6
    15ac:	844d0004 	lh	t5,4(v0)
    15b0:	46060282 	mul.s	$f10,$f0,$f6
    15b4:	448d2000 	mtc1	t5,$f4
    15b8:	00000000 	nop
    15bc:	46802220 	cvt.s.w	$f8,$f4
    15c0:	460a4400 	add.s	$f16,$f8,$f10
    15c4:	4600848d 	trunc.w.s	$f18,$f16
    15c8:	440f9000 	mfc1	t7,$f18
    15cc:	00000000 	nop
    15d0:	a44f0004 	sh	t7,4(v0)
    15d4:	8fbf0014 	lw	ra,20(sp)
    15d8:	27bd0028 	addiu	sp,sp,40
    15dc:	00001025 	move	v0,zero
    15e0:	03e00008 	jr	ra
    15e4:	00000000 	nop

000015e8 <func_80ABB228>:
    15e8:	27bdffa0 	addiu	sp,sp,-96
    15ec:	afb10028 	sw	s1,40(sp)
    15f0:	00a08825 	move	s1,a1
    15f4:	afbf002c 	sw	ra,44(sp)
    15f8:	afb00024 	sw	s0,36(sp)
    15fc:	8ca50000 	lw	a1,0(a1)
    1600:	00808025 	move	s0,a0
    1604:	3c060000 	lui	a2,0x0
    1608:	24c60000 	addiu	a2,a2,0
    160c:	27a40044 	addiu	a0,sp,68
    1610:	24070543 	li	a3,1347
    1614:	0c000000 	jal	0 <EnNiwLady_Init>
    1618:	afa50054 	sw	a1,84(sp)
    161c:	860e027e 	lh	t6,638(s0)
    1620:	8fa80054 	lw	t0,84(sp)
    1624:	11c00039 	beqz	t6,170c <func_80ABB228+0x124>
    1628:	00000000 	nop
    162c:	8e240000 	lw	a0,0(s1)
    1630:	0c000000 	jal	0 <EnNiwLady_Init>
    1634:	afa80054 	sw	t0,84(sp)
    1638:	8fa80054 	lw	t0,84(sp)
    163c:	3c18fb00 	lui	t8,0xfb00
    1640:	241900ff 	li	t9,255
    1644:	8d0202c0 	lw	v0,704(t0)
    1648:	3c0adb06 	lui	t2,0xdb06
    164c:	354a0020 	ori	t2,t2,0x20
    1650:	244f0008 	addiu	t7,v0,8
    1654:	ad0f02c0 	sw	t7,704(t0)
    1658:	ac580000 	sw	t8,0(v0)
    165c:	ac590004 	sw	t9,4(v0)
    1660:	8d0202c0 	lw	v0,704(t0)
    1664:	3c040000 	lui	a0,0x0
    1668:	3c190000 	lui	t9,0x0
    166c:	24490008 	addiu	t1,v0,8
    1670:	ad0902c0 	sw	t1,704(t0)
    1674:	ac4a0000 	sw	t2,0(v0)
    1678:	860b027c 	lh	t3,636(s0)
    167c:	3c0100ff 	lui	at,0xff
    1680:	3421ffff 	ori	at,at,0xffff
    1684:	000b6080 	sll	t4,t3,0x2
    1688:	008c2021 	addu	a0,a0,t4
    168c:	8c840000 	lw	a0,0(a0)
    1690:	3c0cdb06 	lui	t4,0xdb06
    1694:	358c0030 	ori	t4,t4,0x30
    1698:	00047100 	sll	t6,a0,0x4
    169c:	000e7f02 	srl	t7,t6,0x1c
    16a0:	000fc080 	sll	t8,t7,0x2
    16a4:	0338c821 	addu	t9,t9,t8
    16a8:	8f390000 	lw	t9,0(t9)
    16ac:	00816824 	and	t5,a0,at
    16b0:	3c018000 	lui	at,0x8000
    16b4:	01b94821 	addu	t1,t5,t9
    16b8:	01215021 	addu	t2,t1,at
    16bc:	ac4a0004 	sw	t2,4(v0)
    16c0:	8d0202c0 	lw	v0,704(t0)
    16c4:	244b0008 	addiu	t3,v0,8
    16c8:	ad0b02c0 	sw	t3,704(t0)
    16cc:	ac4c0000 	sw	t4,0(v0)
    16d0:	8e240000 	lw	a0,0(s1)
    16d4:	0c000000 	jal	0 <EnNiwLady_Init>
    16d8:	afa20038 	sw	v0,56(sp)
    16dc:	8fa30038 	lw	v1,56(sp)
    16e0:	3c0e0000 	lui	t6,0x0
    16e4:	25ce0000 	addiu	t6,t6,0
    16e8:	ac620004 	sw	v0,4(v1)
    16ec:	9207014e 	lbu	a3,334(s0)
    16f0:	8e06016c 	lw	a2,364(s0)
    16f4:	8e050150 	lw	a1,336(s0)
    16f8:	afb00018 	sw	s0,24(sp)
    16fc:	afa00014 	sw	zero,20(sp)
    1700:	afae0010 	sw	t6,16(sp)
    1704:	0c000000 	jal	0 <EnNiwLady_Init>
    1708:	02202025 	move	a0,s1
    170c:	3c060000 	lui	a2,0x0
    1710:	24c60000 	addiu	a2,a2,0
    1714:	27a40044 	addiu	a0,sp,68
    1718:	8e250000 	lw	a1,0(s1)
    171c:	0c000000 	jal	0 <EnNiwLady_Init>
    1720:	2407055a 	li	a3,1370
    1724:	8fbf002c 	lw	ra,44(sp)
    1728:	8fb00024 	lw	s0,36(sp)
    172c:	8fb10028 	lw	s1,40(sp)
    1730:	03e00008 	jr	ra
    1734:	27bd0060 	addiu	sp,sp,96
	...
