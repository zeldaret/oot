
build/src/overlays/actors/ovl_En_Mm/z_en_mm.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <func_80AAD770>:
       0:	27bdffc8 	addiu	sp,sp,-56
       4:	afbf0024 	sw	ra,36(sp)
       8:	afa40038 	sw	a0,56(sp)
       c:	afa60040 	sw	a2,64(sp)
      10:	8cc20000 	lw	v0,0(a2)
      14:	44803000 	mtc1	zero,$f6
      18:	00057900 	sll	t7,a1,0x4
      1c:	04400003 	bltz	v0,2c <func_80AAD770+0x2c>
      20:	3c180000 	lui	t8,0x0
      24:	14a20005 	bne	a1,v0,3c <func_80AAD770+0x3c>
      28:	0005c900 	sll	t9,a1,0x4
      2c:	44800000 	mtc1	zero,$f0
      30:	27180000 	addiu	t8,t8,0
      34:	10000005 	b	4c <func_80AAD770+0x4c>
      38:	01f81821 	addu	v1,t7,t8
      3c:	3c080000 	lui	t0,0x0
      40:	25080000 	addiu	t0,t0,0
      44:	03281821 	addu	v1,t9,t0
      48:	c460000c 	lwc1	$f0,12(v1)
      4c:	c4640004 	lwc1	$f4,4(v1)
      50:	4604303e 	c.le.s	$f6,$f4
      54:	00000000 	nop
      58:	45020017 	bc1fl	b8 <func_80AAD770+0xb8>
      5c:	8c640000 	lw	a0,0(v1)
      60:	8c640000 	lw	a0,0(v1)
      64:	afa3002c 	sw	v1,44(sp)
      68:	afa5003c 	sw	a1,60(sp)
      6c:	0c000000 	jal	0 <func_80AAD770>
      70:	e7a00034 	swc1	$f0,52(sp)
      74:	44824000 	mtc1	v0,$f8
      78:	8fa3002c 	lw	v1,44(sp)
      7c:	c7a00034 	lwc1	$f0,52(sp)
      80:	468042a0 	cvt.s.w	$f10,$f8
      84:	8fa40038 	lw	a0,56(sp)
      88:	90690008 	lbu	t1,8(v1)
      8c:	24070000 	li	a3,0
      90:	8c650000 	lw	a1,0(v1)
      94:	8c660004 	lw	a2,4(v1)
      98:	e7aa0010 	swc1	$f10,16(sp)
      9c:	e7a00018 	swc1	$f0,24(sp)
      a0:	2484014c 	addiu	a0,a0,332
      a4:	0c000000 	jal	0 <func_80AAD770>
      a8:	afa90014 	sw	t1,20(sp)
      ac:	10000016 	b	108 <func_80AAD770+0x108>
      b0:	8fab003c 	lw	t3,60(sp)
      b4:	8c640000 	lw	a0,0(v1)
      b8:	afa3002c 	sw	v1,44(sp)
      bc:	afa5003c 	sw	a1,60(sp)
      c0:	0c000000 	jal	0 <func_80AAD770>
      c4:	e7a00034 	swc1	$f0,52(sp)
      c8:	44828000 	mtc1	v0,$f16
      cc:	8fa3002c 	lw	v1,44(sp)
      d0:	c7a00034 	lwc1	$f0,52(sp)
      d4:	46808420 	cvt.s.w	$f16,$f16
      d8:	8fa40038 	lw	a0,56(sp)
      dc:	44809000 	mtc1	zero,$f18
      e0:	906a0008 	lbu	t2,8(v1)
      e4:	8c650000 	lw	a1,0(v1)
      e8:	8c660004 	lw	a2,4(v1)
      ec:	44078000 	mfc1	a3,$f16
      f0:	e7a00018 	swc1	$f0,24(sp)
      f4:	2484014c 	addiu	a0,a0,332
      f8:	afaa0014 	sw	t2,20(sp)
      fc:	0c000000 	jal	0 <func_80AAD770>
     100:	e7b20010 	swc1	$f18,16(sp)
     104:	8fab003c 	lw	t3,60(sp)
     108:	8fac0040 	lw	t4,64(sp)
     10c:	ad8b0000 	sw	t3,0(t4)
     110:	8fbf0024 	lw	ra,36(sp)
     114:	27bd0038 	addiu	sp,sp,56
     118:	03e00008 	jr	ra
     11c:	00000000 	nop

00000120 <EnMm_Init>:
     120:	27bdffb8 	addiu	sp,sp,-72
     124:	afa5004c 	sw	a1,76(sp)
     128:	afbf002c 	sw	ra,44(sp)
     12c:	afb00028 	sw	s0,40(sp)
     130:	3c050000 	lui	a1,0x0
     134:	00808025 	move	s0,a0
     138:	0c000000 	jal	0 <func_80AAD770>
     13c:	24a50000 	addiu	a1,a1,0
     140:	3c060000 	lui	a2,0x0
     144:	24c60000 	addiu	a2,a2,0
     148:	260400b4 	addiu	a0,s0,180
     14c:	24050000 	li	a1,0
     150:	0c000000 	jal	0 <func_80AAD770>
     154:	3c0741a8 	lui	a3,0x41a8
     158:	2605014c 	addiu	a1,s0,332
     15c:	3c060600 	lui	a2,0x600
     160:	260e0260 	addiu	t6,s0,608
     164:	260f02c0 	addiu	t7,s0,704
     168:	24180010 	li	t8,16
     16c:	afb80018 	sw	t8,24(sp)
     170:	afaf0014 	sw	t7,20(sp)
     174:	afae0010 	sw	t6,16(sp)
     178:	24c65e18 	addiu	a2,a2,24088
     17c:	afa50038 	sw	a1,56(sp)
     180:	8fa4004c 	lw	a0,76(sp)
     184:	0c000000 	jal	0 <func_80AAD770>
     188:	00003825 	move	a3,zero
     18c:	26050194 	addiu	a1,s0,404
     190:	afa50034 	sw	a1,52(sp)
     194:	0c000000 	jal	0 <func_80AAD770>
     198:	8fa4004c 	lw	a0,76(sp)
     19c:	3c070000 	lui	a3,0x0
     1a0:	8fa50034 	lw	a1,52(sp)
     1a4:	24e70000 	addiu	a3,a3,0
     1a8:	8fa4004c 	lw	a0,76(sp)
     1ac:	0c000000 	jal	0 <func_80AAD770>
     1b0:	02003025 	move	a2,s0
     1b4:	3c050000 	lui	a1,0x0
     1b8:	3c060000 	lui	a2,0x0
     1bc:	24c60000 	addiu	a2,a2,0
     1c0:	24a50000 	addiu	a1,a1,0
     1c4:	0c000000 	jal	0 <func_80AAD770>
     1c8:	26040098 	addiu	a0,s0,152
     1cc:	44800000 	mtc1	zero,$f0
     1d0:	24190004 	li	t9,4
     1d4:	afb90014 	sw	t9,20(sp)
     1d8:	44060000 	mfc1	a2,$f0
     1dc:	44070000 	mfc1	a3,$f0
     1e0:	8fa4004c 	lw	a0,76(sp)
     1e4:	02002825 	move	a1,s0
     1e8:	0c000000 	jal	0 <func_80AAD770>
     1ec:	e7a00010 	swc1	$f0,16(sp)
     1f0:	3c030000 	lui	v1,0x0
     1f4:	24630000 	addiu	v1,v1,0
     1f8:	0c000000 	jal	0 <func_80AAD770>
     1fc:	8c640000 	lw	a0,0(v1)
     200:	44822000 	mtc1	v0,$f4
     204:	3c030000 	lui	v1,0x0
     208:	24630000 	addiu	v1,v1,0
     20c:	468021a0 	cvt.s.w	$f6,$f4
     210:	90680008 	lbu	t0,8(v1)
     214:	c468000c 	lwc1	$f8,12(v1)
     218:	8c650000 	lw	a1,0(v1)
     21c:	8fa40038 	lw	a0,56(sp)
     220:	3c063f80 	lui	a2,0x3f80
     224:	e7a60010 	swc1	$f6,16(sp)
     228:	24070000 	li	a3,0
     22c:	afa80014 	sw	t0,20(sp)
     230:	0c000000 	jal	0 <func_80AAD770>
     234:	e7a80018 	swc1	$f8,24(sp)
     238:	3c01bf80 	lui	at,0xbf80
     23c:	8609001c 	lh	t1,28(s0)
     240:	44815000 	mtc1	at,$f10
     244:	3c014040 	lui	at,0x4040
     248:	44818000 	mtc1	at,$f16
     24c:	820b001e 	lb	t3,30(s0)
     250:	24020002 	li	v0,2
     254:	312a00ff 	andi	t2,t1,0xff
     258:	ae0a01ec 	sw	t2,492(s0)
     25c:	ae0201f0 	sw	v0,496(s0)
     260:	ae0001e8 	sw	zero,488(s0)
     264:	a202001f 	sb	v0,31(s0)
     268:	e60a006c 	swc1	$f10,108(s0)
     26c:	e6100200 	swc1	$f16,512(s0)
     270:	0c000000 	jal	0 <func_80AAD770>
     274:	ae0b0204 	sw	t3,516(s0)
     278:	24030001 	li	v1,1
     27c:	1443000a 	bne	v0,v1,2a8 <EnMm_Init+0x188>
     280:	02002025 	move	a0,s0
     284:	ae0301e4 	sw	v1,484(s0)
     288:	02002025 	move	a0,s0
     28c:	00002825 	move	a1,zero
     290:	0c000000 	jal	0 <func_80AAD770>
     294:	26060258 	addiu	a2,s0,600
     298:	3c0c0000 	lui	t4,0x0
     29c:	258c0000 	addiu	t4,t4,0
     2a0:	10000008 	b	2c4 <EnMm_Init+0x1a4>
     2a4:	ae0c0190 	sw	t4,400(s0)
     2a8:	ae0001e4 	sw	zero,484(s0)
     2ac:	24050002 	li	a1,2
     2b0:	0c000000 	jal	0 <func_80AAD770>
     2b4:	26060258 	addiu	a2,s0,600
     2b8:	3c0d0000 	lui	t5,0x0
     2bc:	25ad0000 	addiu	t5,t5,0
     2c0:	ae0d0190 	sw	t5,400(s0)
     2c4:	8fbf002c 	lw	ra,44(sp)
     2c8:	8fb00028 	lw	s0,40(sp)
     2cc:	27bd0048 	addiu	sp,sp,72
     2d0:	03e00008 	jr	ra
     2d4:	00000000 	nop

000002d8 <EnMm_Destroy>:
     2d8:	27bdffe8 	addiu	sp,sp,-24
     2dc:	00803025 	move	a2,a0
     2e0:	afbf0014 	sw	ra,20(sp)
     2e4:	00a02025 	move	a0,a1
     2e8:	0c000000 	jal	0 <func_80AAD770>
     2ec:	24c50194 	addiu	a1,a2,404
     2f0:	8fbf0014 	lw	ra,20(sp)
     2f4:	27bd0018 	addiu	sp,sp,24
     2f8:	03e00008 	jr	ra
     2fc:	00000000 	nop

00000300 <func_80AADA70>:
     300:	3c020000 	lui	v0,0x0
     304:	9442000c 	lhu	v0,12(v0)
     308:	00001825 	move	v1,zero
     30c:	28413556 	slti	at,v0,13654
     310:	14200005 	bnez	at,328 <func_80AADA70+0x28>
     314:	3401d557 	li	at,0xd557
     318:	0041082a 	slt	at,v0,at
     31c:	10200002 	beqz	at,328 <func_80AADA70+0x28>
     320:	00000000 	nop
     324:	24030001 	li	v1,1
     328:	03e00008 	jr	ra
     32c:	00601025 	move	v0,v1

00000330 <func_80AADAA0>:
     330:	27bdffd8 	addiu	sp,sp,-40
     334:	afbf0014 	sw	ra,20(sp)
     338:	8cae1c44 	lw	t6,7236(a1)
     33c:	00803825 	move	a3,a0
     340:	240f0001 	li	t7,1
     344:	afaf001c 	sw	t7,28(sp)
     348:	afa70028 	sw	a3,40(sp)
     34c:	24a420d8 	addiu	a0,a1,8408
     350:	afa5002c 	sw	a1,44(sp)
     354:	0c000000 	jal	0 <func_80AAD770>
     358:	afae0020 	sw	t6,32(sp)
     35c:	2c410007 	sltiu	at,v0,7
     360:	10200053 	beqz	at,4b0 <L80AADC20>
     364:	8fa70028 	lw	a3,40(sp)
     368:	0002c080 	sll	t8,v0,0x2
     36c:	3c010000 	lui	at,0x0
     370:	00380821 	addu	at,at,t8
     374:	8c380000 	lw	t8,0(at)
     378:	03000008 	jr	t8
     37c:	00000000 	nop

00000380 <L80AADAF0>:
     380:	8fa4002c 	lw	a0,44(sp)
     384:	0c000000 	jal	0 <func_80AAD770>
     388:	afa70028 	sw	a3,40(sp)
     38c:	10400048 	beqz	v0,4b0 <L80AADC20>
     390:	8fa70028 	lw	a3,40(sp)
     394:	8fb9002c 	lw	t9,44(sp)
     398:	3c080001 	lui	t0,0x1
     39c:	2409202d 	li	t1,8237
     3a0:	01194021 	addu	t0,t0,t9
     3a4:	910804bd 	lbu	t0,1213(t0)
     3a8:	8faa0020 	lw	t2,32(sp)
     3ac:	3c030000 	lui	v1,0x0
     3b0:	1500000c 	bnez	t0,3e4 <L80AADAF0+0x64>
     3b4:	8fae0020 	lw	t6,32(sp)
     3b8:	a549010e 	sh	t1,270(t2)
     3bc:	8ceb0254 	lw	t3,596(a3)
     3c0:	2401fffe 	li	at,-2
     3c4:	00e02025 	move	a0,a3
     3c8:	01616024 	and	t4,t3,at
     3cc:	acec0254 	sw	t4,596(a3)
     3d0:	24050006 	li	a1,6
     3d4:	0c000000 	jal	0 <func_80AAD770>
     3d8:	24e60258 	addiu	a2,a3,600
     3dc:	10000008 	b	400 <L80AADAF0+0x80>
     3e0:	24190002 	li	t9,2
     3e4:	240d202c 	li	t5,8236
     3e8:	24630000 	addiu	v1,v1,0
     3ec:	a5cd010e 	sh	t5,270(t6)
     3f0:	946f0f26 	lhu	t7,3878(v1)
     3f4:	35f81000 	ori	t8,t7,0x1000
     3f8:	a4780f26 	sh	t8,3878(v1)
     3fc:	24190002 	li	t9,2
     400:	1000002b 	b	4b0 <L80AADC20>
     404:	afb9001c 	sw	t9,28(sp)

00000408 <L80AADB78>:
     408:	0c000000 	jal	0 <func_80AAD770>
     40c:	8fa4002c 	lw	a0,44(sp)
     410:	50400028 	beqzl	v0,4b4 <L80AADC20+0x4>
     414:	8fbf0014 	lw	ra,20(sp)
     418:	0c000000 	jal	0 <func_80AAD770>
     41c:	8fa4002c 	lw	a0,44(sp)
     420:	8fa4002c 	lw	a0,44(sp)
     424:	0c000000 	jal	0 <func_80AAD770>
     428:	2405002c 	li	a1,44
     42c:	3c030000 	lui	v1,0x0
     430:	24630000 	addiu	v1,v1,0
     434:	94680ef6 	lhu	t0,3830(v1)
     438:	240401f4 	li	a0,500
     43c:	35090800 	ori	t1,t0,0x800
     440:	0c000000 	jal	0 <func_80AAD770>
     444:	a4690ef6 	sh	t1,3830(v1)
     448:	8fab0020 	lw	t3,32(sp)
     44c:	240a202e 	li	t2,8238
     450:	240c0002 	li	t4,2
     454:	a56a010e 	sh	t2,270(t3)
     458:	10000015 	b	4b0 <L80AADC20>
     45c:	afac001c 	sw	t4,28(sp)

00000460 <L80AADBD0>:
     460:	8fa4002c 	lw	a0,44(sp)
     464:	0c000000 	jal	0 <func_80AAD770>
     468:	afa70028 	sw	a3,40(sp)
     46c:	10400010 	beqz	v0,4b0 <L80AADC20>
     470:	8fa70028 	lw	a3,40(sp)
     474:	8fad0020 	lw	t5,32(sp)
     478:	2401202e 	li	at,8238
     47c:	00e02025 	move	a0,a3
     480:	95a2010e 	lhu	v0,270(t5)
     484:	10410003 	beq	v0,at,494 <L80AADBD0+0x34>
     488:	2401202c 	li	at,8236
     48c:	54410008 	bnel	v0,at,4b0 <L80AADC20>
     490:	afa0001c 	sw	zero,28(sp)
     494:	8cee0254 	lw	t6,596(a3)
     498:	24050002 	li	a1,2
     49c:	24e60258 	addiu	a2,a3,600
     4a0:	35cf0001 	ori	t7,t6,0x1
     4a4:	0c000000 	jal	0 <func_80AAD770>
     4a8:	acef0254 	sw	t7,596(a3)
     4ac:	afa0001c 	sw	zero,28(sp)

000004b0 <L80AADC20>:
     4b0:	8fbf0014 	lw	ra,20(sp)
     4b4:	8fa2001c 	lw	v0,28(sp)
     4b8:	27bd0028 	addiu	sp,sp,40
     4bc:	03e00008 	jr	ra
     4c0:	00000000 	nop

000004c4 <func_80AADC34>:
     4c4:	27bdffe0 	addiu	sp,sp,-32
     4c8:	afbf0014 	sw	ra,20(sp)
     4cc:	afa40020 	sw	a0,32(sp)
     4d0:	8cae1c44 	lw	t6,7236(a1)
     4d4:	00a02025 	move	a0,a1
     4d8:	2405001c 	li	a1,28
     4dc:	0c000000 	jal	0 <func_80AAD770>
     4e0:	afae001c 	sw	t6,28(sp)
     4e4:	3c050000 	lui	a1,0x0
     4e8:	24a50000 	addiu	a1,a1,0
     4ec:	94af0ef6 	lhu	t7,3830(a1)
     4f0:	00401825 	move	v1,v0
     4f4:	00402025 	move	a0,v0
     4f8:	31f80800 	andi	t8,t7,0x800
     4fc:	13000005 	beqz	t8,514 <func_80AADC34+0x50>
     500:	8fbf0014 	lw	ra,20(sp)
     504:	54400014 	bnezl	v0,558 <func_80AADC34+0x94>
     508:	00801025 	move	v0,a0
     50c:	10000011 	b	554 <func_80AADC34+0x90>
     510:	2404204d 	li	a0,8269
     514:	8fb9001c 	lw	t9,28(sp)
     518:	24010004 	li	at,4
     51c:	9328015f 	lbu	t0,351(t9)
     520:	15010009 	bne	t0,at,548 <func_80AADC34+0x84>
     524:	00000000 	nop
     528:	94a90f26 	lhu	t1,3878(a1)
     52c:	312a1000 	andi	t2,t1,0x1000
     530:	11400003 	beqz	t2,540 <func_80AADC34+0x7c>
     534:	00000000 	nop
     538:	10000006 	b	554 <func_80AADC34+0x90>
     53c:	2404202b 	li	a0,8235
     540:	10000004 	b	554 <func_80AADC34+0x90>
     544:	2404202a 	li	a0,8234
     548:	54600003 	bnezl	v1,558 <func_80AADC34+0x94>
     54c:	00801025 	move	v0,a0
     550:	24042029 	li	a0,8233
     554:	00801025 	move	v0,a0
     558:	03e00008 	jr	ra
     55c:	27bd0020 	addiu	sp,sp,32

00000560 <func_80AADCD0>:
     560:	27bdffd0 	addiu	sp,sp,-48
     564:	afbf001c 	sw	ra,28(sp)
     568:	afb00018 	sw	s0,24(sp)
     56c:	8c8201e0 	lw	v0,480(a0)
     570:	24010002 	li	at,2
     574:	00808025 	move	s0,a0
     578:	00a03025 	move	a2,a1
     57c:	14410007 	bne	v0,at,59c <func_80AADCD0+0x3c>
     580:	8ca31c44 	lw	v1,7236(a1)
     584:	00a02025 	move	a0,a1
     588:	0c000000 	jal	0 <func_80AAD770>
     58c:	9465010e 	lhu	a1,270(v1)
     590:	240e0001 	li	t6,1
     594:	1000004d 	b	6cc <func_80AADCD0+0x16c>
     598:	ae0e01e0 	sw	t6,480(s0)
     59c:	24010001 	li	at,1
     5a0:	14410006 	bne	v0,at,5bc <func_80AADCD0+0x5c>
     5a4:	02002025 	move	a0,s0
     5a8:	02002025 	move	a0,s0
     5ac:	0c000000 	jal	0 <func_80AAD770>
     5b0:	00c02825 	move	a1,a2
     5b4:	10000045 	b	6cc <func_80AADCD0+0x16c>
     5b8:	ae0201e0 	sw	v0,480(s0)
     5bc:	00c02825 	move	a1,a2
     5c0:	0c000000 	jal	0 <func_80AAD770>
     5c4:	afa60034 	sw	a2,52(sp)
     5c8:	10400014 	beqz	v0,61c <func_80AADCD0+0xbc>
     5cc:	8fa40034 	lw	a0,52(sp)
     5d0:	8e180258 	lw	t8,600(s0)
     5d4:	240f0001 	li	t7,1
     5d8:	24010005 	li	at,5
     5dc:	1301003b 	beq	t8,at,6cc <func_80AADCD0+0x16c>
     5e0:	ae0f01e0 	sw	t7,480(s0)
     5e4:	9602010e 	lhu	v0,270(s0)
     5e8:	2401202a 	li	at,8234
     5ec:	02002025 	move	a0,s0
     5f0:	10410004 	beq	v0,at,604 <func_80AADCD0+0xa4>
     5f4:	24050005 	li	a1,5
     5f8:	2401202b 	li	at,8235
     5fc:	54410034 	bnel	v0,at,6d0 <func_80AADCD0+0x170>
     600:	8fbf001c 	lw	ra,28(sp)
     604:	0c000000 	jal	0 <func_80AAD770>
     608:	26060258 	addiu	a2,s0,600
     60c:	0c000000 	jal	0 <func_80AAD770>
     610:	24044807 	li	a0,18439
     614:	1000002e 	b	6d0 <func_80AADCD0+0x170>
     618:	8fbf001c 	lw	ra,28(sp)
     61c:	02002825 	move	a1,s0
     620:	27a60026 	addiu	a2,sp,38
     624:	0c000000 	jal	0 <func_80AAD770>
     628:	27a70024 	addiu	a3,sp,36
     62c:	8619008a 	lh	t9,138(s0)
     630:	860800b6 	lh	t0,182(s0)
     634:	03281023 	subu	v0,t9,t0
     638:	00021400 	sll	v0,v0,0x10
     63c:	00021403 	sra	v0,v0,0x10
     640:	04400004 	bltz	v0,654 <func_80AADCD0+0xf4>
     644:	00024823 	negu	t1,v0
     648:	44822000 	mtc1	v0,$f4
     64c:	10000004 	b	660 <func_80AADCD0+0x100>
     650:	46802020 	cvt.s.w	$f0,$f4
     654:	44893000 	mtc1	t1,$f6
     658:	00000000 	nop
     65c:	46803020 	cvt.s.w	$f0,$f6
     660:	87a20026 	lh	v0,38(sp)
     664:	04400019 	bltz	v0,6cc <func_80AADCD0+0x16c>
     668:	28410141 	slti	at,v0,321
     66c:	10200017 	beqz	at,6cc <func_80AADCD0+0x16c>
     670:	87a20024 	lh	v0,36(sp)
     674:	04400015 	bltz	v0,6cc <func_80AADCD0+0x16c>
     678:	284100f1 	slti	at,v0,241
     67c:	10200013 	beqz	at,6cc <func_80AADCD0+0x16c>
     680:	3c014686 	lui	at,0x4686
     684:	44814000 	mtc1	at,$f8
     688:	00000000 	nop
     68c:	4608003e 	c.le.s	$f0,$f8
     690:	00000000 	nop
     694:	4502000e 	bc1fl	6d0 <func_80AADCD0+0x170>
     698:	8fbf001c 	lw	ra,28(sp)
     69c:	8e0a01e0 	lw	t2,480(s0)
     6a0:	24010003 	li	at,3
     6a4:	02002025 	move	a0,s0
     6a8:	11410008 	beq	t2,at,6cc <func_80AADCD0+0x16c>
     6ac:	8fa50034 	lw	a1,52(sp)
     6b0:	0c000000 	jal	0 <func_80AAD770>
     6b4:	3c0642c8 	lui	a2,0x42c8
     6b8:	10400004 	beqz	v0,6cc <func_80AADCD0+0x16c>
     6bc:	02002025 	move	a0,s0
     6c0:	0c000000 	jal	0 <func_80AAD770>
     6c4:	8fa50034 	lw	a1,52(sp)
     6c8:	a602010e 	sh	v0,270(s0)
     6cc:	8fbf001c 	lw	ra,28(sp)
     6d0:	8fb00018 	lw	s0,24(sp)
     6d4:	27bd0030 	addiu	sp,sp,48
     6d8:	03e00008 	jr	ra
     6dc:	00000000 	nop

000006e0 <func_80AADE50>:
     6e0:	000570c0 	sll	t6,a1,0x3
     6e4:	01c47821 	addu	t7,t6,a0
     6e8:	03e00008 	jr	ra
     6ec:	91e20000 	lbu	v0,0(t7)

000006f0 <func_80AADE60>:
     6f0:	000670c0 	sll	t6,a2,0x3
     6f4:	008e7821 	addu	t7,a0,t6
     6f8:	8de80004 	lw	t0,4(t7)
     6fc:	3c0a0000 	lui	t2,0x0
     700:	3c0100ff 	lui	at,0xff
     704:	0008c100 	sll	t8,t0,0x4
     708:	0018cf02 	srl	t9,t8,0x1c
     70c:	00194880 	sll	t1,t9,0x2
     710:	01495021 	addu	t2,t2,t1
     714:	8d4a0000 	lw	t2,0(t2)
     718:	3421ffff 	ori	at,at,0xffff
     71c:	00076880 	sll	t5,a3,0x2
     720:	01a76823 	subu	t5,t5,a3
     724:	01015824 	and	t3,t0,at
     728:	000d6840 	sll	t5,t5,0x1
     72c:	014b6021 	addu	t4,t2,t3
     730:	018d1821 	addu	v1,t4,t5
     734:	3c018000 	lui	at,0x8000
     738:	00611821 	addu	v1,v1,at
     73c:	846e0000 	lh	t6,0(v1)
     740:	00001025 	move	v0,zero
     744:	448e2000 	mtc1	t6,$f4
     748:	00000000 	nop
     74c:	468021a0 	cvt.s.w	$f6,$f4
     750:	e4a60000 	swc1	$f6,0(a1)
     754:	846f0002 	lh	t7,2(v1)
     758:	448f4000 	mtc1	t7,$f8
     75c:	00000000 	nop
     760:	468042a0 	cvt.s.w	$f10,$f8
     764:	e4aa0004 	swc1	$f10,4(a1)
     768:	84780004 	lh	t8,4(v1)
     76c:	44988000 	mtc1	t8,$f16
     770:	00000000 	nop
     774:	468084a0 	cvt.s.w	$f18,$f16
     778:	03e00008 	jr	ra
     77c:	e4b20008 	swc1	$f18,8(a1)

00000780 <func_80AADEF0>:
     780:	27bdff88 	addiu	sp,sp,-120
     784:	afbf0044 	sw	ra,68(sp)
     788:	afb10034 	sw	s1,52(sp)
     78c:	afb00030 	sw	s0,48(sp)
     790:	afa5007c 	sw	a1,124(sp)
     794:	00808025 	move	s0,a0
     798:	afb40040 	sw	s4,64(sp)
     79c:	afb3003c 	sw	s3,60(sp)
     7a0:	afb20038 	sw	s2,56(sp)
     7a4:	f7b60028 	sdc1	$f22,40(sp)
     7a8:	f7b40020 	sdc1	$f20,32(sp)
     7ac:	3c010001 	lui	at,0x1
     7b0:	00a18821 	addu	s1,a1,at
     7b4:	8e241e08 	lw	a0,7688(s1)
     7b8:	27a50064 	addiu	a1,sp,100
     7bc:	8e0701f4 	lw	a3,500(s0)
     7c0:	0c000000 	jal	0 <func_80AAD770>
     7c4:	8e0601ec 	lw	a2,492(s0)
     7c8:	c7a40064 	lwc1	$f4,100(sp)
     7cc:	c6060024 	lwc1	$f6,36(s0)
     7d0:	c7a8006c 	lwc1	$f8,108(sp)
     7d4:	c60a002c 	lwc1	$f10,44(s0)
     7d8:	46062501 	sub.s	$f20,$f4,$f6
     7dc:	460a4581 	sub.s	$f22,$f8,$f10
     7e0:	4600a306 	mov.s	$f12,$f20
     7e4:	0c000000 	jal	0 <func_80AAD770>
     7e8:	4600b386 	mov.s	$f14,$f22
     7ec:	3c010000 	lui	at,0x0
     7f0:	c4300000 	lwc1	$f16,0(at)
     7f4:	3c010000 	lui	at,0x0
     7f8:	46100482 	mul.s	$f18,$f0,$f16
     7fc:	00000000 	nop
     800:	4614a282 	mul.s	$f10,$f20,$f20
     804:	00000000 	nop
     808:	4616b402 	mul.s	$f16,$f22,$f22
     80c:	4600910d 	trunc.w.s	$f4,$f18
     810:	46105000 	add.s	$f0,$f10,$f16
     814:	440f2000 	mfc1	t7,$f4
     818:	46000004 	sqrt.s	$f0,$f0
     81c:	448f3000 	mtc1	t7,$f6
     820:	00000000 	nop
     824:	46803220 	cvt.s.w	$f8,$f6
     828:	e60001fc 	swc1	$f0,508(s0)
     82c:	e60801f8 	swc1	$f8,504(s0)
     830:	c4320000 	lwc1	$f18,0(at)
     834:	4612003e 	c.le.s	$f0,$f18
     838:	00000000 	nop
     83c:	45000073 	bc1f	a0c <func_80AADEF0+0x28c>
     840:	00000000 	nop
     844:	8e0201e8 	lw	v0,488(s0)
     848:	24140002 	li	s4,2
     84c:	24130001 	li	s3,1
     850:	1040006e 	beqz	v0,a0c <func_80AADEF0+0x28c>
     854:	3c120000 	lui	s2,0x0
     858:	26520000 	addiu	s2,s2,0
     85c:	0002c100 	sll	t8,v0,0x4
     860:	02582021 	addu	a0,s2,t8
     864:	8c880000 	lw	t0,0(a0)
     868:	8e1901f4 	lw	t9,500(s0)
     86c:	03284821 	addu	t1,t9,t0
     870:	ae0901f4 	sw	t1,500(s0)
     874:	8c860008 	lw	a2,8(a0)
     878:	10c00007 	beqz	a2,898 <func_80AADEF0+0x118>
     87c:	00000000 	nop
     880:	50d30008 	beql	a2,s3,8a4 <func_80AADEF0+0x124>
     884:	8e241e08 	lw	a0,7688(s1)
     888:	50d4000e 	beql	a2,s4,8c4 <func_80AADEF0+0x144>
     88c:	8e0601f0 	lw	a2,496(s0)
     890:	1000000d 	b	8c8 <func_80AADEF0+0x148>
     894:	8c83000c 	lw	v1,12(a0)
     898:	1000000a 	b	8c4 <func_80AADEF0+0x144>
     89c:	00003025 	move	a2,zero
     8a0:	8e241e08 	lw	a0,7688(s1)
     8a4:	0c000000 	jal	0 <func_80AAD770>
     8a8:	8e0501ec 	lw	a1,492(s0)
     8ac:	8e0a01e8 	lw	t2,488(s0)
     8b0:	2446ffff 	addiu	a2,v0,-1
     8b4:	000a5900 	sll	t3,t2,0x4
     8b8:	10000002 	b	8c4 <func_80AADEF0+0x144>
     8bc:	024b2021 	addu	a0,s2,t3
     8c0:	8e0601f0 	lw	a2,496(s0)
     8c4:	8c83000c 	lw	v1,12(a0)
     8c8:	10600007 	beqz	v1,8e8 <func_80AADEF0+0x168>
     8cc:	00000000 	nop
     8d0:	50730008 	beql	v1,s3,8f4 <func_80AADEF0+0x174>
     8d4:	8e241e08 	lw	a0,7688(s1)
     8d8:	50740010 	beql	v1,s4,91c <func_80AADEF0+0x19c>
     8dc:	8e0301f0 	lw	v1,496(s0)
     8e0:	1000000f 	b	920 <func_80AADEF0+0x1a0>
     8e4:	8c820000 	lw	v0,0(a0)
     8e8:	1000000c 	b	91c <func_80AADEF0+0x19c>
     8ec:	00001825 	move	v1,zero
     8f0:	8e241e08 	lw	a0,7688(s1)
     8f4:	8e0501ec 	lw	a1,492(s0)
     8f8:	0c000000 	jal	0 <func_80AAD770>
     8fc:	afa60060 	sw	a2,96(sp)
     900:	8e0c01e8 	lw	t4,488(s0)
     904:	8fa60060 	lw	a2,96(sp)
     908:	2443ffff 	addiu	v1,v0,-1
     90c:	000c6900 	sll	t5,t4,0x4
     910:	10000002 	b	91c <func_80AADEF0+0x19c>
     914:	024d2021 	addu	a0,s2,t5
     918:	8e0301f0 	lw	v1,496(s0)
     91c:	8c820000 	lw	v0,0(a0)
     920:	27a50064 	addiu	a1,sp,100
     924:	04400007 	bltz	v0,944 <func_80AADEF0+0x1c4>
     928:	00000000 	nop
     92c:	8e0701f4 	lw	a3,500(s0)
     930:	00e6082a 	slt	at,a3,a2
     934:	1420000a 	bnez	at,960 <func_80AADEF0+0x1e0>
     938:	0067082a 	slt	at,v1,a3
     93c:	54200009 	bnezl	at,964 <func_80AADEF0+0x1e4>
     940:	8c8e0004 	lw	t6,4(a0)
     944:	0441000c 	bgez	v0,978 <func_80AADEF0+0x1f8>
     948:	8e0701f4 	lw	a3,500(s0)
     94c:	00c7082a 	slt	at,a2,a3
     950:	14200003 	bnez	at,960 <func_80AADEF0+0x1e0>
     954:	00e3082a 	slt	at,a3,v1
     958:	50200008 	beqzl	at,97c <func_80AADEF0+0x1fc>
     95c:	8e241e08 	lw	a0,7688(s1)
     960:	8c8e0004 	lw	t6,4(a0)
     964:	000ec100 	sll	t8,t6,0x4
     968:	0258c821 	addu	t9,s2,t8
     96c:	ae0e01e8 	sw	t6,488(s0)
     970:	8f270008 	lw	a3,8(t9)
     974:	ae0701f4 	sw	a3,500(s0)
     978:	8e241e08 	lw	a0,7688(s1)
     97c:	0c000000 	jal	0 <func_80AAD770>
     980:	8e0601ec 	lw	a2,492(s0)
     984:	c7a40064 	lwc1	$f4,100(sp)
     988:	c6060024 	lwc1	$f6,36(s0)
     98c:	c7a8006c 	lwc1	$f8,108(sp)
     990:	c60a002c 	lwc1	$f10,44(s0)
     994:	46062501 	sub.s	$f20,$f4,$f6
     998:	460a4581 	sub.s	$f22,$f8,$f10
     99c:	4600a306 	mov.s	$f12,$f20
     9a0:	0c000000 	jal	0 <func_80AAD770>
     9a4:	4600b386 	mov.s	$f14,$f22
     9a8:	3c010000 	lui	at,0x0
     9ac:	c4300000 	lwc1	$f16,0(at)
     9b0:	3c010000 	lui	at,0x0
     9b4:	46100482 	mul.s	$f18,$f0,$f16
     9b8:	00000000 	nop
     9bc:	4614a282 	mul.s	$f10,$f20,$f20
     9c0:	00000000 	nop
     9c4:	4616b402 	mul.s	$f16,$f22,$f22
     9c8:	4600910d 	trunc.w.s	$f4,$f18
     9cc:	46105000 	add.s	$f0,$f10,$f16
     9d0:	440a2000 	mfc1	t2,$f4
     9d4:	46000004 	sqrt.s	$f0,$f0
     9d8:	448a3000 	mtc1	t2,$f6
     9dc:	00000000 	nop
     9e0:	46803220 	cvt.s.w	$f8,$f6
     9e4:	e60001fc 	swc1	$f0,508(s0)
     9e8:	e60801f8 	swc1	$f8,504(s0)
     9ec:	c4320000 	lwc1	$f18,0(at)
     9f0:	4612003e 	c.le.s	$f0,$f18
     9f4:	00000000 	nop
     9f8:	45000004 	bc1f	a0c <func_80AADEF0+0x28c>
     9fc:	00000000 	nop
     a00:	8e0201e8 	lw	v0,488(s0)
     a04:	5440ff96 	bnezl	v0,860 <func_80AADEF0+0xe0>
     a08:	0002c100 	sll	t8,v0,0x4
     a0c:	c60401f8 	lwc1	$f4,504(s0)
     a10:	afa00010 	sw	zero,16(sp)
     a14:	260400b6 	addiu	a0,s0,182
     a18:	4600218d 	trunc.w.s	$f6,$f4
     a1c:	24060001 	li	a2,1
     a20:	240709c4 	li	a3,2500
     a24:	44053000 	mfc1	a1,$f6
     a28:	00000000 	nop
     a2c:	00052c00 	sll	a1,a1,0x10
     a30:	0c000000 	jal	0 <func_80AAD770>
     a34:	00052c03 	sra	a1,a1,0x10
     a38:	860c00b6 	lh	t4,182(s0)
     a3c:	4480a000 	mtc1	zero,$f20
     a40:	8e050200 	lw	a1,512(s0)
     a44:	3c063f19 	lui	a2,0x3f19
     a48:	8e0701fc 	lw	a3,508(s0)
     a4c:	a60c0032 	sh	t4,50(s0)
     a50:	34c6999a 	ori	a2,a2,0x999a
     a54:	26040068 	addiu	a0,s0,104
     a58:	0c000000 	jal	0 <func_80AAD770>
     a5c:	e7b40010 	swc1	$f20,16(sp)
     a60:	0c000000 	jal	0 <func_80AAD770>
     a64:	02002025 	move	a0,s0
     a68:	4406a000 	mfc1	a2,$f20
     a6c:	4407a000 	mfc1	a3,$f20
     a70:	240d0004 	li	t5,4
     a74:	afad0014 	sw	t5,20(sp)
     a78:	8fa4007c 	lw	a0,124(sp)
     a7c:	02002825 	move	a1,s0
     a80:	0c000000 	jal	0 <func_80AAD770>
     a84:	e7b40010 	swc1	$f20,16(sp)
     a88:	8fbf0044 	lw	ra,68(sp)
     a8c:	d7b40020 	ldc1	$f20,32(sp)
     a90:	d7b60028 	ldc1	$f22,40(sp)
     a94:	8fb00030 	lw	s0,48(sp)
     a98:	8fb10034 	lw	s1,52(sp)
     a9c:	8fb20038 	lw	s2,56(sp)
     aa0:	8fb3003c 	lw	s3,60(sp)
     aa4:	8fb40040 	lw	s4,64(sp)
     aa8:	27bd0078 	addiu	sp,sp,120
     aac:	03e00008 	jr	ra
     ab0:	00001025 	move	v0,zero

00000ab4 <func_80AAE224>:
     ab4:	27bdffe8 	addiu	sp,sp,-24
     ab8:	afbf0014 	sw	ra,20(sp)
     abc:	00803825 	move	a3,a0
     ac0:	afa5001c 	sw	a1,28(sp)
     ac4:	afa70018 	sw	a3,24(sp)
     ac8:	0c000000 	jal	0 <func_80AAD770>
     acc:	2484014c 	addiu	a0,a0,332
     ad0:	10400010 	beqz	v0,b14 <func_80AAE224+0x60>
     ad4:	8fa70018 	lw	a3,24(sp)
     ad8:	8cef0254 	lw	t7,596(a3)
     adc:	44802000 	mtc1	zero,$f4
     ae0:	3c0e0000 	lui	t6,0x0
     ae4:	25ce0000 	addiu	t6,t6,0
     ae8:	35f80001 	ori	t8,t7,0x1
     aec:	acee0190 	sw	t6,400(a3)
     af0:	ace001e8 	sw	zero,488(a3)
     af4:	ace001e4 	sw	zero,484(a3)
     af8:	acf80254 	sw	t8,596(a3)
     afc:	ace001e0 	sw	zero,480(a3)
     b00:	00e02025 	move	a0,a3
     b04:	24050002 	li	a1,2
     b08:	24e60258 	addiu	a2,a3,600
     b0c:	0c000000 	jal	0 <func_80AAD770>
     b10:	e4e40068 	swc1	$f4,104(a3)
     b14:	8fbf0014 	lw	ra,20(sp)
     b18:	27bd0018 	addiu	sp,sp,24
     b1c:	03e00008 	jr	ra
     b20:	00000000 	nop

00000b24 <func_80AAE294>:
     b24:	27bdffb8 	addiu	sp,sp,-72
     b28:	afb00028 	sw	s0,40(sp)
     b2c:	00808025 	move	s0,a0
     b30:	afbf002c 	sw	ra,44(sp)
     b34:	afa5004c 	sw	a1,76(sp)
     b38:	0c000000 	jal	0 <func_80AAD770>
     b3c:	00a02025 	move	a0,a1
     b40:	54400092 	bnezl	v0,d8c <func_80AAE294+0x268>
     b44:	8fbf002c 	lw	ra,44(sp)
     b48:	0c000000 	jal	0 <func_80AAD770>
     b4c:	2604014c 	addiu	a0,s0,332
     b50:	8e030258 	lw	v1,600(s0)
     b54:	5460000f 	bnezl	v1,b94 <func_80AAE294+0x70>
     b58:	24010004 	li	at,4
     b5c:	c6040164 	lwc1	$f4,356(s0)
     b60:	24010001 	li	at,1
     b64:	02002025 	move	a0,s0
     b68:	4600218d 	trunc.w.s	$f6,$f4
     b6c:	44023000 	mfc1	v0,$f6
     b70:	00000000 	nop
     b74:	10410003 	beq	v0,at,b84 <func_80AAE294+0x60>
     b78:	24010006 	li	at,6
     b7c:	54410005 	bnel	v0,at,b94 <func_80AAE294+0x70>
     b80:	24010004 	li	at,4
     b84:	0c000000 	jal	0 <func_80AAD770>
     b88:	24050800 	li	a1,2048
     b8c:	8e030258 	lw	v1,600(s0)
     b90:	24010004 	li	at,4
     b94:	1461001b 	bne	v1,at,c04 <func_80AAE294+0xe0>
     b98:	00000000 	nop
     b9c:	c6000164 	lwc1	$f0,356(s0)
     ba0:	c6080168 	lwc1	$f8,360(s0)
     ba4:	3c014110 	lui	at,0x4110
     ba8:	44816000 	mtc1	at,$f12
     bac:	46080081 	sub.s	$f2,$f0,$f8
     bb0:	3c014198 	lui	at,0x4198
     bb4:	460c103c 	c.lt.s	$f2,$f12
     bb8:	00000000 	nop
     bbc:	45020006 	bc1fl	bd8 <func_80AAE294+0xb4>
     bc0:	44816000 	mtc1	at,$f12
     bc4:	4600603e 	c.le.s	$f12,$f0
     bc8:	00000000 	nop
     bcc:	4503000b 	bc1tl	bfc <func_80AAE294+0xd8>
     bd0:	02002025 	move	a0,s0
     bd4:	44816000 	mtc1	at,$f12
     bd8:	00000000 	nop
     bdc:	460c103c 	c.lt.s	$f2,$f12
     be0:	00000000 	nop
     be4:	45000007 	bc1f	c04 <func_80AAE294+0xe0>
     be8:	00000000 	nop
     bec:	4600603e 	c.le.s	$f12,$f0
     bf0:	00000000 	nop
     bf4:	45000003 	bc1f	c04 <func_80AAE294+0xe0>
     bf8:	02002025 	move	a0,s0
     bfc:	0c000000 	jal	0 <func_80AAD770>
     c00:	240538b8 	li	a1,14520
     c04:	3c0f0000 	lui	t7,0x0
     c08:	95ef0ef6 	lhu	t7,3830(t7)
     c0c:	3c014040 	lui	at,0x4040
     c10:	02002025 	move	a0,s0
     c14:	31f80800 	andi	t8,t7,0x800
     c18:	53000009 	beqzl	t8,c40 <func_80AAE294+0x11c>
     c1c:	44819000 	mtc1	at,$f18
     c20:	3c014120 	lui	at,0x4120
     c24:	44815000 	mtc1	at,$f10
     c28:	3c014000 	lui	at,0x4000
     c2c:	44818000 	mtc1	at,$f16
     c30:	e60a0200 	swc1	$f10,512(s0)
     c34:	10000006 	b	c50 <func_80AAE294+0x12c>
     c38:	e6100168 	swc1	$f16,360(s0)
     c3c:	44819000 	mtc1	at,$f18
     c40:	3c013f80 	lui	at,0x3f80
     c44:	44812000 	mtc1	at,$f4
     c48:	e6120200 	swc1	$f18,512(s0)
     c4c:	e6040168 	swc1	$f4,360(s0)
     c50:	0c000000 	jal	0 <func_80AAD770>
     c54:	8fa5004c 	lw	a1,76(sp)
     c58:	0c000000 	jal	0 <func_80AAD770>
     c5c:	00000000 	nop
     c60:	14400025 	bnez	v0,cf8 <func_80AAE294+0x1d4>
     c64:	00000000 	nop
     c68:	8e020078 	lw	v0,120(s0)
     c6c:	10400022 	beqz	v0,cf8 <func_80AAE294+0x1d4>
     c70:	00000000 	nop
     c74:	8459000a 	lh	t9,10(v0)
     c78:	3c010000 	lui	at,0x0
     c7c:	c42a0000 	lwc1	$f10,0(at)
     c80:	44993000 	mtc1	t9,$f6
     c84:	3c010000 	lui	at,0x0
     c88:	c4300000 	lwc1	$f16,0(at)
     c8c:	46803220 	cvt.s.w	$f8,$f6
     c90:	3c010000 	lui	at,0x0
     c94:	460a4002 	mul.s	$f0,$f8,$f10
     c98:	4600803c 	c.lt.s	$f16,$f0
     c9c:	00000000 	nop
     ca0:	45030007 	bc1tl	cc0 <func_80AAE294+0x19c>
     ca4:	8e02025c 	lw	v0,604(s0)
     ca8:	c4320000 	lwc1	$f18,0(at)
     cac:	4612003c 	c.lt.s	$f0,$f18
     cb0:	00000000 	nop
     cb4:	45020010 	bc1fl	cf8 <func_80AAE294+0x1d4>
     cb8:	ae00025c 	sw	zero,604(s0)
     cbc:	8e02025c 	lw	v0,604(s0)
     cc0:	02002025 	move	a0,s0
     cc4:	24050001 	li	a1,1
     cc8:	2841001f 	slti	at,v0,31
     ccc:	14200007 	bnez	at,cec <func_80AAE294+0x1c8>
     cd0:	24490001 	addiu	t1,v0,1
     cd4:	0c000000 	jal	0 <func_80AAD770>
     cd8:	26060258 	addiu	a2,s0,600
     cdc:	3c080000 	lui	t0,0x0
     ce0:	25080000 	addiu	t0,t0,0
     ce4:	10000004 	b	cf8 <func_80AAE294+0x1d4>
     ce8:	ae080190 	sw	t0,400(s0)
     cec:	10000002 	b	cf8 <func_80AAE294+0x1d4>
     cf0:	ae09025c 	sw	t1,604(s0)
     cf4:	ae00025c 	sw	zero,604(s0)
     cf8:	3c020000 	lui	v0,0x0
     cfc:	24420000 	addiu	v0,v0,0
     d00:	944a0ef6 	lhu	t2,3830(v0)
     d04:	314b0800 	andi	t3,t2,0x800
     d08:	51600020 	beqzl	t3,d8c <func_80AAE294+0x268>
     d0c:	8fbf002c 	lw	ra,44(sp)
     d10:	c6040024 	lwc1	$f4,36(s0)
     d14:	8c4c135c 	lw	t4,4956(v0)
     d18:	24010003 	li	at,3
     d1c:	e7a40038 	swc1	$f4,56(sp)
     d20:	c6060028 	lwc1	$f6,40(s0)
     d24:	8fa4004c 	lw	a0,76(sp)
     d28:	27a50038 	addiu	a1,sp,56
     d2c:	e7a6003c 	swc1	$f6,60(sp)
     d30:	c608002c 	lwc1	$f8,44(s0)
     d34:	3c064248 	lui	a2,0x4248
     d38:	11810008 	beq	t4,at,d5c <func_80AAE294+0x238>
     d3c:	e7a80040 	swc1	$f8,64(sp)
     d40:	240d015e 	li	t5,350
     d44:	240e0014 	li	t6,20
     d48:	afae0014 	sw	t6,20(sp)
     d4c:	afad0010 	sw	t5,16(sp)
     d50:	24070002 	li	a3,2
     d54:	0c000000 	jal	0 <func_80AAD770>
     d58:	afa00018 	sw	zero,24(sp)
     d5c:	920f01a7 	lbu	t7,423(s0)
     d60:	8fa4004c 	lw	a0,76(sp)
     d64:	02002825 	move	a1,s0
     d68:	31f80001 	andi	t8,t7,0x1
     d6c:	13000006 	beqz	t8,d88 <func_80AAE294+0x264>
     d70:	3c064040 	lui	a2,0x4040
     d74:	3c014080 	lui	at,0x4080
     d78:	44815000 	mtc1	at,$f10
     d7c:	8607008a 	lh	a3,138(s0)
     d80:	0c000000 	jal	0 <func_80AAD770>
     d84:	e7aa0010 	swc1	$f10,16(sp)
     d88:	8fbf002c 	lw	ra,44(sp)
     d8c:	8fb00028 	lw	s0,40(sp)
     d90:	27bd0048 	addiu	sp,sp,72
     d94:	03e00008 	jr	ra
     d98:	00000000 	nop

00000d9c <func_80AAE50C>:
     d9c:	27bdffe0 	addiu	sp,sp,-32
     da0:	afb00018 	sw	s0,24(sp)
     da4:	00808025 	move	s0,a0
     da8:	afbf001c 	sw	ra,28(sp)
     dac:	afa50024 	sw	a1,36(sp)
     db0:	0c000000 	jal	0 <func_80AAD770>
     db4:	2484014c 	addiu	a0,a0,332
     db8:	10400016 	beqz	v0,e14 <func_80AAE50C+0x78>
     dbc:	3c0e0000 	lui	t6,0x0
     dc0:	25ce0000 	addiu	t6,t6,0
     dc4:	ae00025c 	sw	zero,604(s0)
     dc8:	ae0e0190 	sw	t6,400(s0)
     dcc:	3c0f0000 	lui	t7,0x0
     dd0:	95ef0ef6 	lhu	t7,3830(t7)
     dd4:	26060258 	addiu	a2,s0,600
     dd8:	02002025 	move	a0,s0
     ddc:	31f80800 	andi	t8,t7,0x800
     de0:	13000006 	beqz	t8,dfc <func_80AAE50C+0x60>
     de4:	00002825 	move	a1,zero
     de8:	02002025 	move	a0,s0
     dec:	0c000000 	jal	0 <func_80AAD770>
     df0:	24050004 	li	a1,4
     df4:	10000005 	b	e0c <func_80AAE50C+0x70>
     df8:	ae0001e4 	sw	zero,484(s0)
     dfc:	0c000000 	jal	0 <func_80AAD770>
     e00:	26060258 	addiu	a2,s0,600
     e04:	24190001 	li	t9,1
     e08:	ae1901e4 	sw	t9,484(s0)
     e0c:	24080001 	li	t0,1
     e10:	ae0801e8 	sw	t0,488(s0)
     e14:	8fbf001c 	lw	ra,28(sp)
     e18:	8fb00018 	lw	s0,24(sp)
     e1c:	27bd0020 	addiu	sp,sp,32
     e20:	03e00008 	jr	ra
     e24:	00000000 	nop

00000e28 <func_80AAE598>:
     e28:	27bdffd0 	addiu	sp,sp,-48
     e2c:	afb00028 	sw	s0,40(sp)
     e30:	00808025 	move	s0,a0
     e34:	afbf002c 	sw	ra,44(sp)
     e38:	afa50034 	sw	a1,52(sp)
     e3c:	8e0f0038 	lw	t7,56(s0)
     e40:	00a02025 	move	a0,a1
     e44:	02002825 	move	a1,s0
     e48:	afaf0010 	sw	t7,16(sp)
     e4c:	8e0e003c 	lw	t6,60(s0)
     e50:	26060248 	addiu	a2,s0,584
     e54:	2607024e 	addiu	a3,s0,590
     e58:	afae0014 	sw	t6,20(sp)
     e5c:	8e0f0040 	lw	t7,64(s0)
     e60:	0c000000 	jal	0 <func_80AAD770>
     e64:	afaf0018 	sw	t7,24(sp)
     e68:	0c000000 	jal	0 <func_80AAD770>
     e6c:	2604014c 	addiu	a0,s0,332
     e70:	0c000000 	jal	0 <func_80AAD770>
     e74:	00000000 	nop
     e78:	50400011 	beqzl	v0,ec0 <func_80AAE598+0x98>
     e7c:	8fbf002c 	lw	ra,44(sp)
     e80:	8e1801e0 	lw	t8,480(s0)
     e84:	3c080000 	lui	t0,0x0
     e88:	24190003 	li	t9,3
     e8c:	1700000b 	bnez	t8,ebc <func_80AAE598+0x94>
     e90:	25080000 	addiu	t0,t0,0
     e94:	8e090254 	lw	t1,596(s0)
     e98:	2401fffe 	li	at,-2
     e9c:	ae1901e0 	sw	t9,480(s0)
     ea0:	01215024 	and	t2,t1,at
     ea4:	ae080190 	sw	t0,400(s0)
     ea8:	ae0a0254 	sw	t2,596(s0)
     eac:	02002025 	move	a0,s0
     eb0:	24050003 	li	a1,3
     eb4:	0c000000 	jal	0 <func_80AAD770>
     eb8:	26060258 	addiu	a2,s0,600
     ebc:	8fbf002c 	lw	ra,44(sp)
     ec0:	8fb00028 	lw	s0,40(sp)
     ec4:	27bd0030 	addiu	sp,sp,48
     ec8:	03e00008 	jr	ra
     ecc:	00000000 	nop

00000ed0 <EnMm_Update>:
     ed0:	27bdffd0 	addiu	sp,sp,-48
     ed4:	afb00018 	sw	s0,24(sp)
     ed8:	00808025 	move	s0,a0
     edc:	afbf001c 	sw	ra,28(sp)
     ee0:	afa50034 	sw	a1,52(sp)
     ee4:	8e190190 	lw	t9,400(s0)
     ee8:	0320f809 	jalr	t9
     eec:	00000000 	nop
     ef0:	02002025 	move	a0,s0
     ef4:	0c000000 	jal	0 <func_80AAD770>
     ef8:	8fa50034 	lw	a1,52(sp)
     efc:	26060194 	addiu	a2,s0,404
     f00:	00c02825 	move	a1,a2
     f04:	afa60024 	sw	a2,36(sp)
     f08:	0c000000 	jal	0 <func_80AAD770>
     f0c:	02002025 	move	a0,s0
     f10:	8fa40034 	lw	a0,52(sp)
     f14:	3c010001 	lui	at,0x1
     f18:	34211e60 	ori	at,at,0x1e60
     f1c:	8fa60024 	lw	a2,36(sp)
     f20:	0c000000 	jal	0 <func_80AAD770>
     f24:	00812821 	addu	a1,a0,at
     f28:	8fbf001c 	lw	ra,28(sp)
     f2c:	8fb00018 	lw	s0,24(sp)
     f30:	27bd0030 	addiu	sp,sp,48
     f34:	03e00008 	jr	ra
     f38:	00000000 	nop

00000f3c <EnMm_Draw>:
     f3c:	27bdff80 	addiu	sp,sp,-128
     f40:	afb10028 	sw	s1,40(sp)
     f44:	00a08825 	move	s1,a1
     f48:	afbf002c 	sw	ra,44(sp)
     f4c:	afb00024 	sw	s0,36(sp)
     f50:	afa40080 	sw	a0,128(sp)
     f54:	8ca50000 	lw	a1,0(a1)
     f58:	3c060000 	lui	a2,0x0
     f5c:	24c60000 	addiu	a2,a2,0
     f60:	27a40064 	addiu	a0,sp,100
     f64:	24070429 	li	a3,1065
     f68:	0c000000 	jal	0 <func_80AAD770>
     f6c:	00a08025 	move	s0,a1
     f70:	0c000000 	jal	0 <func_80AAD770>
     f74:	8e240000 	lw	a0,0(s1)
     f78:	8e0302c0 	lw	v1,704(s0)
     f7c:	8fa80080 	lw	t0,128(sp)
     f80:	3c0fdb06 	lui	t7,0xdb06
     f84:	246e0008 	addiu	t6,v1,8
     f88:	ae0e02c0 	sw	t6,704(s0)
     f8c:	35ef0020 	ori	t7,t7,0x20
     f90:	ac6f0000 	sw	t7,0(v1)
     f94:	8d1801e4 	lw	t8,484(t0)
     f98:	3c040000 	lui	a0,0x0
     f9c:	3c0d0000 	lui	t5,0x0
     fa0:	0018c880 	sll	t9,t8,0x2
     fa4:	00992021 	addu	a0,a0,t9
     fa8:	8c840000 	lw	a0,0(a0)
     fac:	3c0100ff 	lui	at,0xff
     fb0:	3421ffff 	ori	at,at,0xffff
     fb4:	00045100 	sll	t2,a0,0x4
     fb8:	000a5f02 	srl	t3,t2,0x1c
     fbc:	000b6080 	sll	t4,t3,0x2
     fc0:	01ac6821 	addu	t5,t5,t4
     fc4:	8dad0000 	lw	t5,0(t5)
     fc8:	00814824 	and	t1,a0,at
     fcc:	3c018000 	lui	at,0x8000
     fd0:	012d7021 	addu	t6,t1,t5
     fd4:	01c17821 	addu	t7,t6,at
     fd8:	ac6f0004 	sw	t7,4(v1)
     fdc:	3c190000 	lui	t9,0x0
     fe0:	3c180000 	lui	t8,0x0
     fe4:	9107014e 	lbu	a3,334(t0)
     fe8:	8d06016c 	lw	a2,364(t0)
     fec:	8d050150 	lw	a1,336(t0)
     ff0:	27180000 	addiu	t8,t8,0
     ff4:	27390000 	addiu	t9,t9,0
     ff8:	afb90014 	sw	t9,20(sp)
     ffc:	afb80010 	sw	t8,16(sp)
    1000:	02202025 	move	a0,s1
    1004:	0c000000 	jal	0 <func_80AAD770>
    1008:	afa80018 	sw	t0,24(sp)
    100c:	3c0a0000 	lui	t2,0x0
    1010:	954a0ef6 	lhu	t2,3830(t2)
    1014:	3c010001 	lui	at,0x1
    1018:	342117a4 	ori	at,at,0x17a4
    101c:	314b0800 	andi	t3,t2,0x800
    1020:	1160006f 	beqz	t3,11e0 <EnMm_Draw+0x2a4>
    1024:	02212021 	addu	a0,s1,at
    1028:	0c000000 	jal	0 <func_80AAD770>
    102c:	24050015 	li	a1,21
    1030:	0440006b 	bltz	v0,11e0 <EnMm_Draw+0x2a4>
    1034:	afa2005c 	sw	v0,92(sp)
    1038:	8e240000 	lw	a0,0(s1)
    103c:	0c000000 	jal	0 <func_80AAD770>
    1040:	24050080 	li	a1,128
    1044:	8fa40080 	lw	a0,128(sp)
    1048:	afa20058 	sw	v0,88(sp)
    104c:	0c000000 	jal	0 <func_80AAD770>
    1050:	24840208 	addiu	a0,a0,520
    1054:	3c050000 	lui	a1,0x0
    1058:	24a50000 	addiu	a1,a1,0
    105c:	8e240000 	lw	a0,0(s1)
    1060:	0c000000 	jal	0 <func_80AAD770>
    1064:	24060457 	li	a2,1111
    1068:	8e0302c0 	lw	v1,704(s0)
    106c:	3c09db06 	lui	t1,0xdb06
    1070:	35290018 	ori	t1,t1,0x18
    1074:	246c0008 	addiu	t4,v1,8
    1078:	ae0c02c0 	sw	t4,704(s0)
    107c:	ac690000 	sw	t1,0(v1)
    1080:	8fad005c 	lw	t5,92(sp)
    1084:	3c180001 	lui	t8,0x1
    1088:	3c0adb06 	lui	t2,0xdb06
    108c:	000d7100 	sll	t6,t5,0x4
    1090:	01cd7021 	addu	t6,t6,t5
    1094:	000e7080 	sll	t6,t6,0x2
    1098:	022e7821 	addu	t7,s1,t6
    109c:	030fc021 	addu	t8,t8,t7
    10a0:	8f1817b4 	lw	t8,6068(t8)
    10a4:	354a002c 	ori	t2,t2,0x2c
    10a8:	3c09db06 	lui	t1,0xdb06
    10ac:	ac780004 	sw	t8,4(v1)
    10b0:	8e0302c0 	lw	v1,704(s0)
    10b4:	35290034 	ori	t1,t1,0x34
    10b8:	244dfe40 	addiu	t5,v0,-448
    10bc:	24790008 	addiu	t9,v1,8
    10c0:	ae1902c0 	sw	t9,704(s0)
    10c4:	ac6a0000 	sw	t2,0(v1)
    10c8:	8fab0058 	lw	t3,88(sp)
    10cc:	3c0142c2 	lui	at,0x42c2
    10d0:	44816000 	mtc1	at,$f12
    10d4:	ac6b0004 	sw	t3,4(v1)
    10d8:	8e0302c0 	lw	v1,704(s0)
    10dc:	240e03e2 	li	t6,994
    10e0:	240f0dbe 	li	t7,3518
    10e4:	246c0008 	addiu	t4,v1,8
    10e8:	ae0c02c0 	sw	t4,704(s0)
    10ec:	ac6d0004 	sw	t5,4(v1)
    10f0:	ac690000 	sw	t1,0(v1)
    10f4:	2418cb76 	li	t8,-13450
    10f8:	3c010000 	lui	at,0x0
    10fc:	a7ae0050 	sh	t6,80(sp)
    1100:	a7af0052 	sh	t7,82(sp)
    1104:	a7b80054 	sh	t8,84(sp)
    1108:	c42e0000 	lwc1	$f14,0(at)
    110c:	3c06c370 	lui	a2,0xc370
    1110:	0c000000 	jal	0 <func_80AAD770>
    1114:	27a70050 	addiu	a3,sp,80
    1118:	8fa20058 	lw	v0,88(sp)
    111c:	3c050000 	lui	a1,0x0
    1120:	24a50000 	addiu	a1,a1,0
    1124:	00402025 	move	a0,v0
    1128:	24420040 	addiu	v0,v0,64
    112c:	afa20058 	sw	v0,88(sp)
    1130:	0c000000 	jal	0 <func_80AAD770>
    1134:	24060464 	li	a2,1124
    1138:	3c0142c2 	lui	at,0x42c2
    113c:	44816000 	mtc1	at,$f12
    1140:	2419fc1e 	li	t9,-994
    1144:	240af242 	li	t2,-3518
    1148:	240bcb76 	li	t3,-13450
    114c:	3c010000 	lui	at,0x0
    1150:	a7b90050 	sh	t9,80(sp)
    1154:	a7aa0052 	sh	t2,82(sp)
    1158:	a7ab0054 	sh	t3,84(sp)
    115c:	c42e0000 	lwc1	$f14,0(at)
    1160:	3c064370 	lui	a2,0x4370
    1164:	0c000000 	jal	0 <func_80AAD770>
    1168:	27a70050 	addiu	a3,sp,80
    116c:	3c050000 	lui	a1,0x0
    1170:	24a50000 	addiu	a1,a1,0
    1174:	8fa40058 	lw	a0,88(sp)
    1178:	0c000000 	jal	0 <func_80AAD770>
    117c:	2406046b 	li	a2,1131
    1180:	8e0302c0 	lw	v1,704(s0)
    1184:	3c0d0603 	lui	t5,0x603
    1188:	25adca38 	addiu	t5,t5,-13768
    118c:	246c0008 	addiu	t4,v1,8
    1190:	ae0c02c0 	sw	t4,704(s0)
    1194:	3c09de00 	lui	t1,0xde00
    1198:	ac690000 	sw	t1,0(v1)
    119c:	ac6d0004 	sw	t5,4(v1)
    11a0:	8e0302c0 	lw	v1,704(s0)
    11a4:	3c0fdb06 	lui	t7,0xdb06
    11a8:	35ef0018 	ori	t7,t7,0x18
    11ac:	246e0008 	addiu	t6,v1,8
    11b0:	ae0e02c0 	sw	t6,704(s0)
    11b4:	ac6f0000 	sw	t7,0(v1)
    11b8:	8fb80080 	lw	t8,128(sp)
    11bc:	3c0c0001 	lui	t4,0x1
    11c0:	8319001e 	lb	t9,30(t8)
    11c4:	00195100 	sll	t2,t9,0x4
    11c8:	01595021 	addu	t2,t2,t9
    11cc:	000a5080 	sll	t2,t2,0x2
    11d0:	022a5821 	addu	t3,s1,t2
    11d4:	018b6021 	addu	t4,t4,t3
    11d8:	8d8c17b4 	lw	t4,6068(t4)
    11dc:	ac6c0004 	sw	t4,4(v1)
    11e0:	3c060000 	lui	a2,0x0
    11e4:	24c60000 	addiu	a2,a2,0
    11e8:	27a40064 	addiu	a0,sp,100
    11ec:	8e250000 	lw	a1,0(s1)
    11f0:	0c000000 	jal	0 <func_80AAD770>
    11f4:	24070475 	li	a3,1141
    11f8:	8fbf002c 	lw	ra,44(sp)
    11fc:	8fb00024 	lw	s0,36(sp)
    1200:	8fb10028 	lw	s1,40(sp)
    1204:	03e00008 	jr	ra
    1208:	27bd0080 	addiu	sp,sp,128

0000120c <func_80AAE97C>:
    120c:	afa40000 	sw	a0,0(sp)
    1210:	8fa40014 	lw	a0,20(sp)
    1214:	afa60008 	sw	a2,8(sp)
    1218:	afa7000c 	sw	a3,12(sp)
    121c:	8c8e0254 	lw	t6,596(a0)
    1220:	24010008 	li	at,8
    1224:	31cf0001 	andi	t7,t6,0x1
    1228:	11e0001b 	beqz	t7,1298 <func_80AAE97C+0x8c>
    122c:	00000000 	nop
    1230:	10a10006 	beq	a1,at,124c <func_80AAE97C+0x40>
    1234:	8fa20010 	lw	v0,16(sp)
    1238:	2401000f 	li	at,15
    123c:	10a1000d 	beq	a1,at,1274 <func_80AAE97C+0x68>
    1240:	8fa20010 	lw	v0,16(sp)
    1244:	03e00008 	jr	ra
    1248:	00001025 	move	v0,zero
    124c:	84580000 	lh	t8,0(v0)
    1250:	84990250 	lh	t9,592(a0)
    1254:	84490002 	lh	t1,2(v0)
    1258:	03194021 	addu	t0,t8,t9
    125c:	a4480000 	sh	t0,0(v0)
    1260:	848a024e 	lh	t2,590(a0)
    1264:	012a5823 	subu	t3,t1,t2
    1268:	a44b0002 	sh	t3,2(v0)
    126c:	03e00008 	jr	ra
    1270:	00001025 	move	v0,zero
    1274:	844c0000 	lh	t4,0(v0)
    1278:	848d024a 	lh	t5,586(a0)
    127c:	844f0004 	lh	t7,4(v0)
    1280:	018d7021 	addu	t6,t4,t5
    1284:	a44e0000 	sh	t6,0(v0)
    1288:	84980248 	lh	t8,584(a0)
    128c:	01f8c821 	addu	t9,t7,t8
    1290:	27280fa0 	addiu	t0,t9,4000
    1294:	a4480004 	sh	t0,4(v0)
    1298:	03e00008 	jr	ra
    129c:	00001025 	move	v0,zero

000012a0 <func_80AAEA10>:
    12a0:	27bdffe8 	addiu	sp,sp,-24
    12a4:	2401000f 	li	at,15
    12a8:	afbf0014 	sw	ra,20(sp)
    12ac:	afa40018 	sw	a0,24(sp)
    12b0:	afa60020 	sw	a2,32(sp)
    12b4:	14a10021 	bne	a1,at,133c <func_80AAEA10+0x9c>
    12b8:	afa70024 	sw	a3,36(sp)
    12bc:	8fa50028 	lw	a1,40(sp)
    12c0:	3c040000 	lui	a0,0x0
    12c4:	24840000 	addiu	a0,a0,0
    12c8:	0c000000 	jal	0 <func_80AAD770>
    12cc:	24a50038 	addiu	a1,a1,56
    12d0:	3c014382 	lui	at,0x4382
    12d4:	44816000 	mtc1	at,$f12
    12d8:	3c0141a0 	lui	at,0x41a0
    12dc:	44817000 	mtc1	at,$f14
    12e0:	24060000 	li	a2,0
    12e4:	0c000000 	jal	0 <func_80AAD770>
    12e8:	24070001 	li	a3,1
    12ec:	44806000 	mtc1	zero,$f12
    12f0:	0c000000 	jal	0 <func_80AAD770>
    12f4:	24050001 	li	a1,1
    12f8:	44806000 	mtc1	zero,$f12
    12fc:	0c000000 	jal	0 <func_80AAD770>
    1300:	24050001 	li	a1,1
    1304:	3c010000 	lui	at,0x0
    1308:	c42c0000 	lwc1	$f12,0(at)
    130c:	0c000000 	jal	0 <func_80AAD770>
    1310:	24050001 	li	a1,1
    1314:	3c01c382 	lui	at,0xc382
    1318:	44816000 	mtc1	at,$f12
    131c:	3c014268 	lui	at,0x4268
    1320:	44817000 	mtc1	at,$f14
    1324:	3c064120 	lui	a2,0x4120
    1328:	0c000000 	jal	0 <func_80AAD770>
    132c:	24070001 	li	a3,1
    1330:	8fa40028 	lw	a0,40(sp)
    1334:	0c000000 	jal	0 <func_80AAD770>
    1338:	24840208 	addiu	a0,a0,520
    133c:	8fbf0014 	lw	ra,20(sp)
    1340:	27bd0018 	addiu	sp,sp,24
    1344:	03e00008 	jr	ra
    1348:	00000000 	nop
    134c:	00000000 	nop
