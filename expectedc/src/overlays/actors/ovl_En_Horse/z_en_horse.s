
build/src/overlays/actors/ovl_En_Horse/z_en_horse.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <func_80A5B2F0>:
       0:	84ae00a4 	lh	t6,164(a1)
       4:	2401005a 	li	at,90
       8:	11c10003 	beq	t6,at,18 <func_80A5B2F0+0x18>
       c:	00000000 	nop
      10:	03e00008 	jr	ra
      14:	00001025 	move	v0,zero
      18:	3c010000 	lui	at,0x0
      1c:	c4260000 	lwc1	$f6,0(at)
      20:	c4840068 	lwc1	$f4,104(a0)
      24:	3c0f0000 	lui	t7,0x0
      28:	4606203c 	c.lt.s	$f4,$f6
      2c:	00000000 	nop
      30:	45000003 	bc1f	40 <func_80A5B2F0+0x40>
      34:	00000000 	nop
      38:	03e00008 	jr	ra
      3c:	00001025 	move	v0,zero
      40:	95ef0ee6 	lhu	t7,3814(t7)
      44:	2401000f 	li	at,15
      48:	3c030000 	lui	v1,0x0
      4c:	31f8000f 	andi	t8,t7,0xf
      50:	17010003 	bne	t8,at,60 <func_80A5B2F0+0x60>
      54:	24630000 	addiu	v1,v1,0
      58:	03e00008 	jr	ra
      5c:	00001025 	move	v0,zero
      60:	3c070000 	lui	a3,0x0
      64:	24e70000 	addiu	a3,a3,0
      68:	c48e002c 	lwc1	$f14,44(a0)
      6c:	84790004 	lh	t9,4(v1)
      70:	84690006 	lh	t1,6(v1)
      74:	84680008 	lh	t0,8(v1)
      78:	44994000 	mtc1	t9,$f8
      7c:	44899000 	mtc1	t1,$f18
      80:	44885000 	mtc1	t0,$f10
      84:	46804020 	cvt.s.w	$f0,$f8
      88:	46809120 	cvt.s.w	$f4,$f18
      8c:	46805420 	cvt.s.w	$f16,$f10
      90:	46040180 	add.s	$f6,$f0,$f4
      94:	46068080 	add.s	$f2,$f16,$f6
      98:	4600103c 	c.lt.s	$f2,$f0
      9c:	00000000 	nop
      a0:	45020005 	bc1fl	b8 <func_80A5B2F0+0xb8>
      a4:	846a0000 	lh	t2,0(v1)
      a8:	46000306 	mov.s	$f12,$f0
      ac:	46001006 	mov.s	$f0,$f2
      b0:	46006086 	mov.s	$f2,$f12
      b4:	846a0000 	lh	t2,0(v1)
      b8:	448a4000 	mtc1	t2,$f8
      bc:	00000000 	nop
      c0:	468042a0 	cvt.s.w	$f10,$f8
      c4:	460e503c 	c.lt.s	$f10,$f14
      c8:	00000000 	nop
      cc:	4502001f 	bc1fl	14c <func_80A5B2F0+0x14c>
      d0:	24630014 	addiu	v1,v1,20
      d4:	846b0002 	lh	t3,2(v1)
      d8:	448b9000 	mtc1	t3,$f18
      dc:	00000000 	nop
      e0:	46809120 	cvt.s.w	$f4,$f18
      e4:	4604703c 	c.lt.s	$f14,$f4
      e8:	00000000 	nop
      ec:	45020017 	bc1fl	14c <func_80A5B2F0+0x14c>
      f0:	24630014 	addiu	v1,v1,20
      f4:	c48c0024 	lwc1	$f12,36(a0)
      f8:	460c003c 	c.lt.s	$f0,$f12
      fc:	00000000 	nop
     100:	45020012 	bc1fl	14c <func_80A5B2F0+0x14c>
     104:	24630014 	addiu	v1,v1,20
     108:	4602603c 	c.lt.s	$f12,$f2
     10c:	00000000 	nop
     110:	4502000e 	bc1fl	14c <func_80A5B2F0+0x14c>
     114:	24630014 	addiu	v1,v1,20
     118:	8462000a 	lh	v0,10(v1)
     11c:	8465000c 	lh	a1,12(v1)
     120:	84860032 	lh	a2,50(a0)
     124:	00456023 	subu	t4,v0,a1
     128:	0186082a 	slt	at,t4,a2
     12c:	10200006 	beqz	at,148 <func_80A5B2F0+0x148>
     130:	00a26821 	addu	t5,a1,v0
     134:	00cd082a 	slt	at,a2,t5
     138:	50200004 	beqzl	at,14c <func_80A5B2F0+0x14c>
     13c:	24630014 	addiu	v1,v1,20
     140:	03e00008 	jr	ra
     144:	24020001 	li	v0,1
     148:	24630014 	addiu	v1,v1,20
     14c:	5467ffc8 	bnel	v1,a3,70 <func_80A5B2F0+0x70>
     150:	84790004 	lh	t9,4(v1)
     154:	00001025 	move	v0,zero
     158:	03e00008 	jr	ra
     15c:	00000000 	nop

00000160 <func_80A5B450>:
     160:	27bdffe8 	addiu	sp,sp,-24
     164:	afbf0014 	sw	ra,20(sp)
     168:	afa5001c 	sw	a1,28(sp)
     16c:	3c010000 	lui	at,0x0
     170:	c4260000 	lwc1	$f6,0(at)
     174:	c4840068 	lwc1	$f4,104(a0)
     178:	3c020000 	lui	v0,0x0
     17c:	00803825 	move	a3,a0
     180:	4606203c 	c.lt.s	$f4,$f6
     184:	24420000 	addiu	v0,v0,0
     188:	00003025 	move	a2,zero
     18c:	24080002 	li	t0,2
     190:	45020004 	bc1fl	1a4 <func_80A5B450+0x44>
     194:	c4ee002c 	lwc1	$f14,44(a3)
     198:	1000003d 	b	290 <func_80A5B450+0x130>
     19c:	00001025 	move	v0,zero
     1a0:	c4ee002c 	lwc1	$f14,44(a3)
     1a4:	844e0004 	lh	t6,4(v0)
     1a8:	844f0006 	lh	t7,6(v0)
     1ac:	448e4000 	mtc1	t6,$f8
     1b0:	448f5000 	mtc1	t7,$f10
     1b4:	46804020 	cvt.s.w	$f0,$f8
     1b8:	46805420 	cvt.s.w	$f16,$f10
     1bc:	46008300 	add.s	$f12,$f16,$f0
     1c0:	4600603c 	c.lt.s	$f12,$f0
     1c4:	00000000 	nop
     1c8:	45020005 	bc1fl	1e0 <func_80A5B450+0x80>
     1cc:	84580000 	lh	t8,0(v0)
     1d0:	46000086 	mov.s	$f2,$f0
     1d4:	46006006 	mov.s	$f0,$f12
     1d8:	46001306 	mov.s	$f12,$f2
     1dc:	84580000 	lh	t8,0(v0)
     1e0:	44989000 	mtc1	t8,$f18
     1e4:	00000000 	nop
     1e8:	46809120 	cvt.s.w	$f4,$f18
     1ec:	460e203c 	c.lt.s	$f4,$f14
     1f0:	00000000 	nop
     1f4:	45020023 	bc1fl	284 <func_80A5B450+0x124>
     1f8:	24c60001 	addiu	a2,a2,1
     1fc:	84590002 	lh	t9,2(v0)
     200:	44993000 	mtc1	t9,$f6
     204:	00000000 	nop
     208:	46803220 	cvt.s.w	$f8,$f6
     20c:	4608703c 	c.lt.s	$f14,$f8
     210:	00000000 	nop
     214:	4502001b 	bc1fl	284 <func_80A5B450+0x124>
     218:	24c60001 	addiu	a2,a2,1
     21c:	c4e20024 	lwc1	$f2,36(a3)
     220:	4602003c 	c.lt.s	$f0,$f2
     224:	00000000 	nop
     228:	45020016 	bc1fl	284 <func_80A5B450+0x124>
     22c:	24c60001 	addiu	a2,a2,1
     230:	460c103c 	c.lt.s	$f2,$f12
     234:	00000000 	nop
     238:	45020012 	bc1fl	284 <func_80A5B450+0x124>
     23c:	24c60001 	addiu	a2,a2,1
     240:	8443000a 	lh	v1,10(v0)
     244:	8444000c 	lh	a0,12(v0)
     248:	84e50032 	lh	a1,50(a3)
     24c:	00644823 	subu	t1,v1,a0
     250:	0125082a 	slt	at,t1,a1
     254:	1020000a 	beqz	at,280 <func_80A5B450+0x120>
     258:	00835021 	addu	t2,a0,v1
     25c:	00aa082a 	slt	at,a1,t2
     260:	50200008 	beqzl	at,284 <func_80A5B450+0x124>
     264:	24c60001 	addiu	a2,a2,1
     268:	a0e603ac 	sb	a2,940(a3)
     26c:	8fa5001c 	lw	a1,28(sp)
     270:	0c000000 	jal	0 <func_80A5B2F0>
     274:	00e02025 	move	a0,a3
     278:	10000005 	b	290 <func_80A5B450+0x130>
     27c:	24020001 	li	v0,1
     280:	24c60001 	addiu	a2,a2,1
     284:	14c8ffc7 	bne	a2,t0,1a4 <func_80A5B450+0x44>
     288:	24420014 	addiu	v0,v0,20
     28c:	00001025 	move	v0,zero
     290:	8fbf0014 	lw	ra,20(sp)
     294:	27bd0018 	addiu	sp,sp,24
     298:	03e00008 	jr	ra
     29c:	00000000 	nop

000002a0 <func_80A5B590>:
     2a0:	00057080 	sll	t6,a1,0x2
     2a4:	01c57021 	addu	t6,t6,a1
     2a8:	000e7040 	sll	t6,t6,0x1
     2ac:	008e1021 	addu	v0,a0,t6
     2b0:	844f0000 	lh	t7,0(v0)
     2b4:	448f2000 	mtc1	t7,$f4
     2b8:	00000000 	nop
     2bc:	468021a0 	cvt.s.w	$f6,$f4
     2c0:	e4c60000 	swc1	$f6,0(a2)
     2c4:	84580002 	lh	t8,2(v0)
     2c8:	44984000 	mtc1	t8,$f8
     2cc:	00000000 	nop
     2d0:	468042a0 	cvt.s.w	$f10,$f8
     2d4:	e4ca0004 	swc1	$f10,4(a2)
     2d8:	84590004 	lh	t9,4(v0)
     2dc:	44998000 	mtc1	t9,$f16
     2e0:	00000000 	nop
     2e4:	468084a0 	cvt.s.w	$f18,$f16
     2e8:	03e00008 	jr	ra
     2ec:	e4d20008 	swc1	$f18,8(a2)

000002f0 <func_80A5B5E0>:
     2f0:	27bdffe8 	addiu	sp,sp,-24
     2f4:	afa70024 	sw	a3,36(sp)
     2f8:	00073c00 	sll	a3,a3,0x10
     2fc:	afa5001c 	sw	a1,28(sp)
     300:	00073c03 	sra	a3,a3,0x10
     304:	afa60020 	sw	a2,32(sp)
     308:	00c02825 	move	a1,a2
     30c:	afbf0014 	sw	ra,20(sp)
     310:	00073400 	sll	a2,a3,0x10
     314:	0c000000 	jal	0 <func_80A5B2F0>
     318:	00063403 	sra	a2,a2,0x10
     31c:	8fbf0014 	lw	ra,20(sp)
     320:	27bd0018 	addiu	sp,sp,24
     324:	03e00008 	jr	ra
     328:	00000000 	nop

0000032c <func_80A5B61C>:
     32c:	27bdff90 	addiu	sp,sp,-112
     330:	afb00028 	sw	s0,40(sp)
     334:	00808025 	move	s0,a0
     338:	afbf002c 	sw	ra,44(sp)
     33c:	afa50074 	sw	a1,116(sp)
     340:	afa60078 	sw	a2,120(sp)
     344:	8cc40004 	lw	a0,4(a2)
     348:	27a60064 	addiu	a2,sp,100
     34c:	0c000000 	jal	0 <func_80A5B2F0>
     350:	8e050204 	lw	a1,516(s0)
     354:	8faf0078 	lw	t7,120(sp)
     358:	8e190204 	lw	t9,516(s0)
     35c:	27aa0040 	addiu	t2,sp,64
     360:	8df80004 	lw	t8,4(t7)
     364:	00194080 	sll	t0,t9,0x2
     368:	01194021 	addu	t0,t0,t9
     36c:	00084040 	sll	t0,t0,0x1
     370:	03084821 	addu	t1,t8,t0
     374:	85250008 	lh	a1,8(t1)
     378:	afaa0010 	sw	t2,16(sp)
     37c:	27a40064 	addiu	a0,sp,100
     380:	27a60048 	addiu	a2,sp,72
     384:	0c000000 	jal	0 <func_80A5B2F0>
     388:	27a70044 	addiu	a3,sp,68
     38c:	c6060024 	lwc1	$f6,36(s0)
     390:	c7a80048 	lwc1	$f8,72(sp)
     394:	c7b00044 	lwc1	$f16,68(sp)
     398:	c612002c 	lwc1	$f18,44(s0)
     39c:	46083282 	mul.s	$f10,$f6,$f8
     3a0:	44802000 	mtc1	zero,$f4
     3a4:	27a60064 	addiu	a2,sp,100
     3a8:	46128182 	mul.s	$f6,$f16,$f18
     3ac:	c7b00040 	lwc1	$f16,64(sp)
     3b0:	46065200 	add.s	$f8,$f10,$f6
     3b4:	46104480 	add.s	$f18,$f8,$f16
     3b8:	4612203c 	c.lt.s	$f4,$f18
     3bc:	00000000 	nop
     3c0:	4502000b 	bc1fl	3f0 <func_80A5B61C+0xc4>
     3c4:	8fb90078 	lw	t9,120(sp)
     3c8:	8e0b0204 	lw	t3,516(s0)
     3cc:	256c0001 	addiu	t4,t3,1
     3d0:	ae0c0204 	sw	t4,516(s0)
     3d4:	8fae0078 	lw	t6,120(sp)
     3d8:	8dcf0000 	lw	t7,0(t6)
     3dc:	018f082a 	slt	at,t4,t7
     3e0:	54200003 	bnezl	at,3f0 <func_80A5B61C+0xc4>
     3e4:	8fb90078 	lw	t9,120(sp)
     3e8:	ae000204 	sw	zero,516(s0)
     3ec:	8fb90078 	lw	t9,120(sp)
     3f0:	8e050204 	lw	a1,516(s0)
     3f4:	0c000000 	jal	0 <func_80A5B2F0>
     3f8:	8f240004 	lw	a0,4(t9)
     3fc:	8e050204 	lw	a1,516(s0)
     400:	8fb80078 	lw	t8,120(sp)
     404:	8fa80078 	lw	t0,120(sp)
     408:	24a5ffff 	addiu	a1,a1,-1
     40c:	04a10003 	bgez	a1,41c <func_80A5B61C+0xf0>
     410:	27a60058 	addiu	a2,sp,88
     414:	8f050000 	lw	a1,0(t8)
     418:	24a5ffff 	addiu	a1,a1,-1
     41c:	0c000000 	jal	0 <func_80A5B2F0>
     420:	8d040004 	lw	a0,4(t0)
     424:	c7aa0064 	lwc1	$f10,100(sp)
     428:	c7a6006c 	lwc1	$f6,108(sp)
     42c:	c60c0024 	lwc1	$f12,36(s0)
     430:	c60e002c 	lwc1	$f14,44(s0)
     434:	27a9003c 	addiu	t1,sp,60
     438:	afa90018 	sw	t1,24(sp)
     43c:	8fa60058 	lw	a2,88(sp)
     440:	8fa70060 	lw	a3,96(sp)
     444:	e7aa0010 	swc1	$f10,16(sp)
     448:	0c000000 	jal	0 <func_80A5B2F0>
     44c:	e7a60014 	swc1	$f6,20(sp)
     450:	02002025 	move	a0,s0
     454:	8fa50074 	lw	a1,116(sp)
     458:	27a60064 	addiu	a2,sp,100
     45c:	0c000000 	jal	0 <func_80A5B2F0>
     460:	24070190 	li	a3,400
     464:	3c010000 	lui	at,0x0
     468:	c4300000 	lwc1	$f16,0(at)
     46c:	c7a8003c 	lwc1	$f8,60(sp)
     470:	3c014302 	lui	at,0x4302
     474:	4610403c 	c.lt.s	$f8,$f16
     478:	00000000 	nop
     47c:	4502003e 	bc1fl	578 <func_80A5B61C+0x24c>
     480:	8fb90074 	lw	t9,116(sp)
     484:	c6000090 	lwc1	$f0,144(s0)
     488:	44812000 	mtc1	at,$f4
     48c:	00000000 	nop
     490:	4604003c 	c.lt.s	$f0,$f4
     494:	00000000 	nop
     498:	45030008 	bc1tl	4bc <func_80A5B61C+0x190>
     49c:	860e008a 	lh	t6,138(s0)
     4a0:	8e0a032c 	lw	t2,812(s0)
     4a4:	3c014396 	lui	at,0x4396
     4a8:	914b0017 	lbu	t3,23(t2)
     4ac:	316c0002 	andi	t4,t3,0x2
     4b0:	51800016 	beqzl	t4,50c <func_80A5B61C+0x1e0>
     4b4:	44815000 	mtc1	at,$f10
     4b8:	860e008a 	lh	t6,138(s0)
     4bc:	860d0032 	lh	t5,50(s0)
     4c0:	01cd2023 	subu	a0,t6,t5
     4c4:	00042400 	sll	a0,a0,0x10
     4c8:	0c000000 	jal	0 <func_80A5B2F0>
     4cc:	00042403 	sra	a0,a0,0x10
     4d0:	44809000 	mtc1	zero,$f18
     4d4:	00000000 	nop
     4d8:	4600903c 	c.lt.s	$f18,$f0
     4dc:	00000000 	nop
     4e0:	45020006 	bc1fl	4fc <func_80A5B61C+0x1d0>
     4e4:	86180032 	lh	t8,50(s0)
     4e8:	860f0032 	lh	t7,50(s0)
     4ec:	25f9fee8 	addiu	t9,t7,-280
     4f0:	1000001e 	b	56c <func_80A5B61C+0x240>
     4f4:	a6190032 	sh	t9,50(s0)
     4f8:	86180032 	lh	t8,50(s0)
     4fc:	27080118 	addiu	t0,t8,280
     500:	1000001a 	b	56c <func_80A5B61C+0x240>
     504:	a6080032 	sh	t0,50(s0)
     508:	44815000 	mtc1	at,$f10
     50c:	00000000 	nop
     510:	460a003c 	c.lt.s	$f0,$f10
     514:	00000000 	nop
     518:	45020015 	bc1fl	570 <func_80A5B61C+0x244>
     51c:	860f0032 	lh	t7,50(s0)
     520:	8609008a 	lh	t1,138(s0)
     524:	860a0032 	lh	t2,50(s0)
     528:	012a2023 	subu	a0,t1,t2
     52c:	00042400 	sll	a0,a0,0x10
     530:	0c000000 	jal	0 <func_80A5B2F0>
     534:	00042403 	sra	a0,a0,0x10
     538:	44803000 	mtc1	zero,$f6
     53c:	00000000 	nop
     540:	4600303c 	c.lt.s	$f6,$f0
     544:	00000000 	nop
     548:	45020006 	bc1fl	564 <func_80A5B61C+0x238>
     54c:	860e0032 	lh	t6,50(s0)
     550:	860b0032 	lh	t3,50(s0)
     554:	256c0118 	addiu	t4,t3,280
     558:	10000004 	b	56c <func_80A5B61C+0x240>
     55c:	a60c0032 	sh	t4,50(s0)
     560:	860e0032 	lh	t6,50(s0)
     564:	25cdfee8 	addiu	t5,t6,-280
     568:	a60d0032 	sh	t5,50(s0)
     56c:	860f0032 	lh	t7,50(s0)
     570:	a60f00b6 	sh	t7,182(s0)
     574:	8fb90074 	lw	t9,116(sp)
     578:	02002025 	move	a0,s0
     57c:	0c000000 	jal	0 <func_80A5B2F0>
     580:	8f251c44 	lw	a1,7236(t9)
     584:	8fb80074 	lw	t8,116(sp)
     588:	e7a00050 	swc1	$f0,80(sp)
     58c:	02002025 	move	a0,s0
     590:	0c000000 	jal	0 <func_80A5B2F0>
     594:	8f051c44 	lw	a1,7236(t8)
     598:	3c014348 	lui	at,0x4348
     59c:	44814000 	mtc1	at,$f8
     5a0:	c7b00050 	lwc1	$f16,80(sp)
     5a4:	86080032 	lh	t0,50(s0)
     5a8:	4608803e 	c.le.s	$f16,$f8
     5ac:	00482023 	subu	a0,v0,t0
     5b0:	00042400 	sll	a0,a0,0x10
     5b4:	00042403 	sra	a0,a0,0x10
     5b8:	45030014 	bc1tl	60c <func_80A5B61C+0x2e0>
     5bc:	c6000068 	lwc1	$f0,104(s0)
     5c0:	0c000000 	jal	0 <func_80A5B2F0>
     5c4:	a7a4004e 	sh	a0,78(sp)
     5c8:	3c010000 	lui	at,0x0
     5cc:	c4240000 	lwc1	$f4,0(at)
     5d0:	46000005 	abs.s	$f0,$f0
     5d4:	87a4004e 	lh	a0,78(sp)
     5d8:	4604003c 	c.lt.s	$f0,$f4
     5dc:	00000000 	nop
     5e0:	4502001d 	bc1fl	658 <func_80A5B61C+0x32c>
     5e4:	8fab0078 	lw	t3,120(sp)
     5e8:	0c000000 	jal	0 <func_80A5B2F0>
     5ec:	00000000 	nop
     5f0:	44809000 	mtc1	zero,$f18
     5f4:	00000000 	nop
     5f8:	4600903c 	c.lt.s	$f18,$f0
     5fc:	00000000 	nop
     600:	45020015 	bc1fl	658 <func_80A5B61C+0x32c>
     604:	8fab0078 	lw	t3,120(sp)
     608:	c6000068 	lwc1	$f0,104(s0)
     60c:	c60a0398 	lwc1	$f10,920(s0)
     610:	3c010000 	lui	at,0x0
     614:	460a003c 	c.lt.s	$f0,$f10
     618:	00000000 	nop
     61c:	45000006 	bc1f	638 <func_80A5B61C+0x30c>
     620:	00000000 	nop
     624:	3c010000 	lui	at,0x0
     628:	c4260000 	lwc1	$f6,0(at)
     62c:	46060200 	add.s	$f8,$f0,$f6
     630:	10000004 	b	644 <func_80A5B61C+0x318>
     634:	e6080068 	swc1	$f8,104(s0)
     638:	c4300000 	lwc1	$f16,0(at)
     63c:	46100101 	sub.s	$f4,$f0,$f16
     640:	e6040068 	swc1	$f4,104(s0)
     644:	96090394 	lhu	t1,916(s0)
     648:	352a0001 	ori	t2,t1,0x1
     64c:	1000001d 	b	6c4 <func_80A5B61C+0x398>
     650:	a60a0394 	sh	t2,916(s0)
     654:	8fab0078 	lw	t3,120(sp)
     658:	8e0e0204 	lw	t6,516(s0)
     65c:	c6000068 	lwc1	$f0,104(s0)
     660:	8d6c0004 	lw	t4,4(t3)
     664:	000e6880 	sll	t5,t6,0x2
     668:	01ae6821 	addu	t5,t5,t6
     66c:	000d6840 	sll	t5,t5,0x1
     670:	018d7821 	addu	t7,t4,t5
     674:	85f90006 	lh	t9,6(t7)
     678:	3c010000 	lui	at,0x0
     67c:	44999000 	mtc1	t9,$f18
     680:	00000000 	nop
     684:	468092a0 	cvt.s.w	$f10,$f18
     688:	460a003c 	c.lt.s	$f0,$f10
     68c:	00000000 	nop
     690:	45000006 	bc1f	6ac <func_80A5B61C+0x380>
     694:	00000000 	nop
     698:	3c010000 	lui	at,0x0
     69c:	c4260000 	lwc1	$f6,0(at)
     6a0:	46060200 	add.s	$f8,$f0,$f6
     6a4:	10000004 	b	6b8 <func_80A5B61C+0x38c>
     6a8:	e6080068 	swc1	$f8,104(s0)
     6ac:	c4300000 	lwc1	$f16,0(at)
     6b0:	46100101 	sub.s	$f4,$f0,$f16
     6b4:	e6040068 	swc1	$f4,104(s0)
     6b8:	96180394 	lhu	t8,916(s0)
     6bc:	3308fffe 	andi	t0,t8,0xfffe
     6c0:	a6080394 	sh	t0,916(s0)
     6c4:	8fbf002c 	lw	ra,44(sp)
     6c8:	8fb00028 	lw	s0,40(sp)
     6cc:	27bd0070 	addiu	sp,sp,112
     6d0:	03e00008 	jr	ra
     6d4:	00000000 	nop

000006d8 <func_80A5B9C8>:
     6d8:	27bdffd8 	addiu	sp,sp,-40
     6dc:	afbf0024 	sw	ra,36(sp)
     6e0:	afb00020 	sw	s0,32(sp)
     6e4:	8c820218 	lw	v0,536(a0)
     6e8:	3c030000 	lui	v1,0x0
     6ec:	24630000 	addiu	v1,v1,0
     6f0:	00027080 	sll	t6,v0,0x2
     6f4:	006e7821 	addu	t7,v1,t6
     6f8:	8df80000 	lw	t8,0(t7)
     6fc:	c4800214 	lwc1	$f0,532(a0)
     700:	00808025 	move	s0,a0
     704:	44982000 	mtc1	t8,$f4
     708:	00000000 	nop
     70c:	468021a0 	cvt.s.w	$f6,$f4
     710:	4600303c 	c.lt.s	$f6,$f0
     714:	00000000 	nop
     718:	4502001a 	bc1fl	784 <func_80A5B9C8+0xac>
     71c:	8fbf0024 	lw	ra,36(sp)
     720:	14400008 	bnez	v0,744 <func_80A5B9C8+0x6c>
     724:	3c070000 	lui	a3,0x0
     728:	8c790004 	lw	t9,4(v1)
     72c:	44994000 	mtc1	t9,$f8
     730:	00000000 	nop
     734:	468042a0 	cvt.s.w	$f10,$f8
     738:	4600503c 	c.lt.s	$f10,$f0
     73c:	00000000 	nop
     740:	4501000f 	bc1t	780 <func_80A5B9C8+0xa8>
     744:	3c080000 	lui	t0,0x0
     748:	24e70000 	addiu	a3,a3,0
     74c:	25080000 	addiu	t0,t0,0
     750:	afa80014 	sw	t0,20(sp)
     754:	afa70010 	sw	a3,16(sp)
     758:	24042803 	li	a0,10243
     75c:	260500e4 	addiu	a1,s0,228
     760:	0c000000 	jal	0 <func_80A5B2F0>
     764:	24060004 	li	a2,4
     768:	8e090218 	lw	t1,536(s0)
     76c:	252a0001 	addiu	t2,t1,1
     770:	29410002 	slti	at,t2,2
     774:	14200002 	bnez	at,780 <func_80A5B9C8+0xa8>
     778:	ae0a0218 	sw	t2,536(s0)
     77c:	ae000218 	sw	zero,536(s0)
     780:	8fbf0024 	lw	ra,36(sp)
     784:	8fb00020 	lw	s0,32(sp)
     788:	27bd0028 	addiu	sp,sp,40
     78c:	03e00008 	jr	ra
     790:	00000000 	nop

00000794 <func_80A5BA84>:
     794:	27bdffe0 	addiu	sp,sp,-32
     798:	afa40020 	sw	a0,32(sp)
     79c:	8fa50020 	lw	a1,32(sp)
     7a0:	3c070000 	lui	a3,0x0
     7a4:	3c0e0000 	lui	t6,0x0
     7a8:	24e70000 	addiu	a3,a3,0
     7ac:	afbf001c 	sw	ra,28(sp)
     7b0:	25ce0000 	addiu	t6,t6,0
     7b4:	afae0014 	sw	t6,20(sp)
     7b8:	afa70010 	sw	a3,16(sp)
     7bc:	24042804 	li	a0,10244
     7c0:	24060004 	li	a2,4
     7c4:	0c000000 	jal	0 <func_80A5B2F0>
     7c8:	24a500e4 	addiu	a1,a1,228
     7cc:	8fbf001c 	lw	ra,28(sp)
     7d0:	27bd0020 	addiu	sp,sp,32
     7d4:	03e00008 	jr	ra
     7d8:	00000000 	nop

000007dc <func_80A5BACC>:
     7dc:	27bdffe0 	addiu	sp,sp,-32
     7e0:	afa40020 	sw	a0,32(sp)
     7e4:	8fa50020 	lw	a1,32(sp)
     7e8:	3c070000 	lui	a3,0x0
     7ec:	3c0e0000 	lui	t6,0x0
     7f0:	24e70000 	addiu	a3,a3,0
     7f4:	afbf001c 	sw	ra,28(sp)
     7f8:	25ce0000 	addiu	t6,t6,0
     7fc:	afae0014 	sw	t6,20(sp)
     800:	afa70010 	sw	a3,16(sp)
     804:	24042804 	li	a0,10244
     808:	24060004 	li	a2,4
     80c:	0c000000 	jal	0 <func_80A5B2F0>
     810:	24a500e4 	addiu	a1,a1,228
     814:	8fbf001c 	lw	ra,28(sp)
     818:	27bd0020 	addiu	sp,sp,32
     81c:	03e00008 	jr	ra
     820:	00000000 	nop

00000824 <func_80A5BB14>:
     824:	27bdffe0 	addiu	sp,sp,-32
     828:	3c013f80 	lui	at,0x3f80
     82c:	44812000 	mtc1	at,$f4
     830:	afbf0014 	sw	ra,20(sp)
     834:	afa40020 	sw	a0,32(sp)
     838:	afa50024 	sw	a1,36(sp)
     83c:	e7a4001c 	swc1	$f4,28(sp)
     840:	0c000000 	jal	0 <func_80A5B2F0>
     844:	848400b4 	lh	a0,180(a0)
     848:	3c010000 	lui	at,0x0
     84c:	c4260000 	lwc1	$f6,0(at)
     850:	8faf0020 	lw	t7,32(sp)
     854:	4606003c 	c.lt.s	$f0,$f6
     858:	00000000 	nop
     85c:	4502000c 	bc1fl	890 <func_80A5BB14+0x6c>
     860:	8fbf0014 	lw	ra,20(sp)
     864:	0c000000 	jal	0 <func_80A5B2F0>
     868:	85e400b4 	lh	a0,180(t7)
     86c:	44804000 	mtc1	zero,$f8
     870:	3c010000 	lui	at,0x0
     874:	4608003c 	c.lt.s	$f0,$f8
     878:	00000000 	nop
     87c:	45020004 	bc1fl	890 <func_80A5BB14+0x6c>
     880:	8fbf0014 	lw	ra,20(sp)
     884:	c42a0000 	lwc1	$f10,0(at)
     888:	e7aa001c 	swc1	$f10,28(sp)
     88c:	8fbf0014 	lw	ra,20(sp)
     890:	c7a0001c 	lwc1	$f0,28(sp)
     894:	27bd0020 	addiu	sp,sp,32
     898:	03e00008 	jr	ra
     89c:	00000000 	nop

000008a0 <func_80A5BB90>:
     8a0:	27bdffe8 	addiu	sp,sp,-24
     8a4:	3c010001 	lui	at,0x1
     8a8:	afbf0014 	sw	ra,20(sp)
     8ac:	afa40018 	sw	a0,24(sp)
     8b0:	34211d60 	ori	at,at,0x1d60
     8b4:	0c000000 	jal	0 <func_80A5B2F0>
     8b8:	00812021 	addu	a0,a0,at
     8bc:	8fbf0014 	lw	ra,20(sp)
     8c0:	27bd0018 	addiu	sp,sp,24
     8c4:	03e00008 	jr	ra
     8c8:	00000000 	nop

000008cc <func_80A5BBBC>:
     8cc:	27bdffd0 	addiu	sp,sp,-48
     8d0:	afa50034 	sw	a1,52(sp)
     8d4:	afbf0014 	sw	ra,20(sp)
     8d8:	afa60038 	sw	a2,56(sp)
     8dc:	00c02825 	move	a1,a2
     8e0:	afa40030 	sw	a0,48(sp)
     8e4:	27a60024 	addiu	a2,sp,36
     8e8:	0c000000 	jal	0 <func_80A5B2F0>
     8ec:	27a70020 	addiu	a3,sp,32
     8f0:	c7a00020 	lwc1	$f0,32(sp)
     8f4:	3c010000 	lui	at,0x0
     8f8:	c4240000 	lwc1	$f4,0(at)
     8fc:	46000005 	abs.s	$f0,$f0
     900:	8fa50030 	lw	a1,48(sp)
     904:	4604003c 	c.lt.s	$f0,$f4
     908:	24a500e0 	addiu	a1,a1,224
     90c:	45000003 	bc1f	91c <func_80A5BBBC+0x50>
     910:	00000000 	nop
     914:	10000014 	b	968 <func_80A5BBBC+0x9c>
     918:	00001025 	move	v0,zero
     91c:	0c000000 	jal	0 <func_80A5B2F0>
     920:	8fa40038 	lw	a0,56(sp)
     924:	e7a0001c 	swc1	$f0,28(sp)
     928:	8fa40030 	lw	a0,48(sp)
     92c:	8fa50034 	lw	a1,52(sp)
     930:	27a60024 	addiu	a2,sp,36
     934:	0c000000 	jal	0 <func_80A5B2F0>
     938:	8fa70020 	lw	a3,32(sp)
     93c:	0002102b 	sltu	v0,zero,v0
     940:	14400009 	bnez	v0,968 <func_80A5BBBC+0x9c>
     944:	c7a6001c 	lwc1	$f6,28(sp)
     948:	3c0142c8 	lui	at,0x42c8
     94c:	44814000 	mtc1	at,$f8
     950:	00001025 	move	v0,zero
     954:	4608303c 	c.lt.s	$f6,$f8
     958:	00000000 	nop
     95c:	45020003 	bc1fl	96c <func_80A5BBBC+0xa0>
     960:	8fbf0014 	lw	ra,20(sp)
     964:	24020001 	li	v0,1
     968:	8fbf0014 	lw	ra,20(sp)
     96c:	27bd0030 	addiu	sp,sp,48
     970:	03e00008 	jr	ra
     974:	00000000 	nop

00000978 <func_80A5BC68>:
     978:	27bdffd8 	addiu	sp,sp,-40
     97c:	afbf0024 	sw	ra,36(sp)
     980:	afb00020 	sw	s0,32(sp)
     984:	afa5002c 	sw	a1,44(sp)
     988:	8c830210 	lw	v1,528(a0)
     98c:	00808025 	move	s0,a0
     990:	3c01420c 	lui	at,0x420c
     994:	54600027 	bnezl	v1,a34 <func_80A5BC68+0xbc>
     998:	24010003 	li	at,3
     99c:	c4800214 	lwc1	$f0,532(a0)
     9a0:	44812000 	mtc1	at,$f4
     9a4:	3c0141e0 	lui	at,0x41e0
     9a8:	4600203c 	c.lt.s	$f4,$f0
     9ac:	00000000 	nop
     9b0:	45020005 	bc1fl	9c8 <func_80A5BC68+0x50>
     9b4:	44813000 	mtc1	at,$f6
     9b8:	8c8e0158 	lw	t6,344(a0)
     9bc:	51c0000c 	beqzl	t6,9f0 <func_80A5BC68+0x78>
     9c0:	8e0201f0 	lw	v0,496(s0)
     9c4:	44813000 	mtc1	at,$f6
     9c8:	00000000 	nop
     9cc:	4600303c 	c.lt.s	$f6,$f0
     9d0:	00000000 	nop
     9d4:	45020017 	bc1fl	a34 <func_80A5BC68+0xbc>
     9d8:	24010003 	li	at,3
     9dc:	8e0f0158 	lw	t7,344(s0)
     9e0:	24010001 	li	at,1
     9e4:	55e10013 	bnel	t7,at,a34 <func_80A5BC68+0xbc>
     9e8:	24010003 	li	at,3
     9ec:	8e0201f0 	lw	v0,496(s0)
     9f0:	3c070000 	lui	a3,0x0
     9f4:	24e70000 	addiu	a3,a3,0
     9f8:	30581000 	andi	t8,v0,0x1000
     9fc:	1700000c 	bnez	t8,a30 <func_80A5BC68+0xb8>
     a00:	34591000 	ori	t9,v0,0x1000
     a04:	3c080000 	lui	t0,0x0
     a08:	ae1901f0 	sw	t9,496(s0)
     a0c:	25080000 	addiu	t0,t0,0
     a10:	afa80014 	sw	t0,20(sp)
     a14:	afa70010 	sw	a3,16(sp)
     a18:	2404282c 	li	a0,10284
     a1c:	260500e4 	addiu	a1,s0,228
     a20:	0c000000 	jal	0 <func_80A5B2F0>
     a24:	24060004 	li	a2,4
     a28:	1000001a 	b	a94 <func_80A5BC68+0x11c>
     a2c:	8fbf0024 	lw	ra,36(sp)
     a30:	24010003 	li	at,3
     a34:	14610016 	bne	v1,at,a90 <func_80A5BC68+0x118>
     a38:	3c0141c8 	lui	at,0x41c8
     a3c:	44814000 	mtc1	at,$f8
     a40:	c60a0214 	lwc1	$f10,532(s0)
     a44:	460a403c 	c.lt.s	$f8,$f10
     a48:	00000000 	nop
     a4c:	45020011 	bc1fl	a94 <func_80A5BC68+0x11c>
     a50:	8fbf0024 	lw	ra,36(sp)
     a54:	8e0201f0 	lw	v0,496(s0)
     a58:	3c070000 	lui	a3,0x0
     a5c:	24e70000 	addiu	a3,a3,0
     a60:	30490800 	andi	t1,v0,0x800
     a64:	1520000a 	bnez	t1,a90 <func_80A5BC68+0x118>
     a68:	344a0800 	ori	t2,v0,0x800
     a6c:	3c0b0000 	lui	t3,0x0
     a70:	ae0a01f0 	sw	t2,496(s0)
     a74:	256b0000 	addiu	t3,t3,0
     a78:	afab0014 	sw	t3,20(sp)
     a7c:	afa70010 	sw	a3,16(sp)
     a80:	2404282b 	li	a0,10283
     a84:	260500e4 	addiu	a1,s0,228
     a88:	0c000000 	jal	0 <func_80A5B2F0>
     a8c:	24060004 	li	a2,4
     a90:	8fbf0024 	lw	ra,36(sp)
     a94:	8fb00020 	lw	s0,32(sp)
     a98:	27bd0028 	addiu	sp,sp,40
     a9c:	03e00008 	jr	ra
     aa0:	00000000 	nop

00000aa4 <func_80A5BD94>:
     aa4:	27bdff78 	addiu	sp,sp,-136
     aa8:	afb00028 	sw	s0,40(sp)
     aac:	afbe0048 	sw	s8,72(sp)
     ab0:	afb70044 	sw	s7,68(sp)
     ab4:	afb60040 	sw	s6,64(sp)
     ab8:	afb20030 	sw	s2,48(sp)
     abc:	f7b60020 	sdc1	$f22,32(sp)
     ac0:	3c010000 	lui	at,0x0
     ac4:	3c100000 	lui	s0,0x0
     ac8:	00809025 	move	s2,a0
     acc:	00a0b025 	move	s6,a1
     ad0:	afbf004c 	sw	ra,76(sp)
     ad4:	afb5003c 	sw	s5,60(sp)
     ad8:	afb40038 	sw	s4,56(sp)
     adc:	afb30034 	sw	s3,52(sp)
     ae0:	afb1002c 	sw	s1,44(sp)
     ae4:	f7b40018 	sdc1	$f20,24(sp)
     ae8:	c4360000 	lwc1	$f22,0(at)
     aec:	0000f025 	move	s8,zero
     af0:	26100000 	addiu	s0,s0,0
     af4:	27b70068 	addiu	s7,sp,104
     af8:	86c200a4 	lh	v0,164(s6)
     afc:	860e0000 	lh	t6,0(s0)
     b00:	24010063 	li	at,99
     b04:	144e0064 	bne	v0,t6,c98 <func_80A5BD94+0x1f4>
     b08:	00000000 	nop
     b0c:	14410022 	bne	v0,at,b98 <func_80A5BD94+0xf4>
     b10:	8ed11c44 	lw	s1,7236(s6)
     b14:	0c000000 	jal	0 <func_80A5B2F0>
     b18:	24040018 	li	a0,24
     b1c:	1040000a 	beqz	v0,b48 <func_80A5BD94+0xa4>
     b20:	3c0f0000 	lui	t7,0x0
     b24:	95ef13fa 	lhu	t7,5114(t7)
     b28:	24010006 	li	at,6
     b2c:	31f8000f 	andi	t8,t7,0xf
     b30:	5701001a 	bnel	t8,at,b9c <func_80A5BD94+0xf8>
     b34:	860b0002 	lh	t3,2(s0)
     b38:	0c000000 	jal	0 <func_80A5B2F0>
     b3c:	24040018 	li	a0,24
     b40:	54400016 	bnezl	v0,b9c <func_80A5BD94+0xf8>
     b44:	860b0002 	lh	t3,2(s0)
     b48:	86020002 	lh	v0,2(s0)
     b4c:	24010358 	li	at,856
     b50:	54410008 	bnel	v0,at,b74 <func_80A5BD94+0xd0>
     b54:	2401fc15 	li	at,-1003
     b58:	86190004 	lh	t9,4(s0)
     b5c:	57200005 	bnezl	t9,b74 <func_80A5BD94+0xd0>
     b60:	2401fc15 	li	at,-1003
     b64:	86080006 	lh	t0,6(s0)
     b68:	2401fc6a 	li	at,-918
     b6c:	1101000a 	beq	t0,at,b98 <func_80A5BD94+0xf4>
     b70:	2401fc15 	li	at,-1003
     b74:	14410048 	bne	v0,at,c98 <func_80A5BD94+0x1f4>
     b78:	00000000 	nop
     b7c:	86090004 	lh	t1,4(s0)
     b80:	15200045 	bnez	t1,c98 <func_80A5BD94+0x1f4>
     b84:	00000000 	nop
     b88:	860a0006 	lh	t2,6(s0)
     b8c:	2401fd0d 	li	at,-755
     b90:	15410041 	bne	t2,at,c98 <func_80A5BD94+0x1f4>
     b94:	00000000 	nop
     b98:	860b0002 	lh	t3,2(s0)
     b9c:	860c0004 	lh	t4,4(s0)
     ba0:	860d0006 	lh	t5,6(s0)
     ba4:	448b2000 	mtc1	t3,$f4
     ba8:	448c4000 	mtc1	t4,$f8
     bac:	448d8000 	mtc1	t5,$f16
     bb0:	468021a0 	cvt.s.w	$f6,$f4
     bb4:	26240024 	addiu	a0,s1,36
     bb8:	02e02825 	move	a1,s7
     bbc:	468042a0 	cvt.s.w	$f10,$f8
     bc0:	e7a60068 	swc1	$f6,104(sp)
     bc4:	468084a0 	cvt.s.w	$f18,$f16
     bc8:	e7aa006c 	swc1	$f10,108(sp)
     bcc:	0c000000 	jal	0 <func_80A5B2F0>
     bd0:	e7b20070 	swc1	$f18,112(sp)
     bd4:	4600b03c 	c.lt.s	$f22,$f0
     bd8:	46000506 	mov.s	$f20,$f0
     bdc:	02c02025 	move	a0,s6
     be0:	02402825 	move	a1,s2
     be4:	4501002c 	bc1t	c98 <func_80A5BD94+0x1f4>
     be8:	00000000 	nop
     bec:	0c000000 	jal	0 <func_80A5B2F0>
     bf0:	02e03025 	move	a2,s7
     bf4:	14400028 	bnez	v0,c98 <func_80A5BD94+0x1f4>
     bf8:	00000000 	nop
     bfc:	860e0002 	lh	t6,2(s0)
     c00:	26510024 	addiu	s1,s2,36
     c04:	3c010001 	lui	at,0x1
     c08:	448e2000 	mtc1	t6,$f4
     c0c:	34211d60 	ori	at,at,0x1d60
     c10:	4600a586 	mov.s	$f22,$f20
     c14:	468021a0 	cvt.s.w	$f6,$f4
     c18:	02c19821 	addu	s3,s6,at
     c1c:	02402025 	move	a0,s2
     c20:	241e0001 	li	s8,1
     c24:	265400e4 	addiu	s4,s2,228
     c28:	265500f0 	addiu	s5,s2,240
     c2c:	e6460024 	swc1	$f6,36(s2)
     c30:	860f0004 	lh	t7,4(s0)
     c34:	448f4000 	mtc1	t7,$f8
     c38:	00000000 	nop
     c3c:	468042a0 	cvt.s.w	$f10,$f8
     c40:	e64a0028 	swc1	$f10,40(s2)
     c44:	86180006 	lh	t8,6(s0)
     c48:	44988000 	mtc1	t8,$f16
     c4c:	00000000 	nop
     c50:	468084a0 	cvt.s.w	$f18,$f16
     c54:	e652002c 	swc1	$f18,44(s2)
     c58:	8e280000 	lw	t0,0(s1)
     c5c:	ae480100 	sw	t0,256(s2)
     c60:	8e390004 	lw	t9,4(s1)
     c64:	ae590104 	sw	t9,260(s2)
     c68:	8e280008 	lw	t0,8(s1)
     c6c:	ae480108 	sw	t0,264(s2)
     c70:	86090008 	lh	t1,8(s0)
     c74:	a6490032 	sh	t1,50(s2)
     c78:	0c000000 	jal	0 <func_80A5B2F0>
     c7c:	8ec51c44 	lw	a1,7236(s6)
     c80:	a64200b6 	sh	v0,182(s2)
     c84:	02602025 	move	a0,s3
     c88:	02202825 	move	a1,s1
     c8c:	02803025 	move	a2,s4
     c90:	0c000000 	jal	0 <func_80A5B2F0>
     c94:	02a03825 	move	a3,s5
     c98:	3c0a0000 	lui	t2,0x0
     c9c:	254a0000 	addiu	t2,t2,0
     ca0:	2610000a 	addiu	s0,s0,10
     ca4:	560aff95 	bnel	s0,t2,afc <func_80A5BD94+0x58>
     ca8:	86c200a4 	lh	v0,164(s6)
     cac:	8fbf004c 	lw	ra,76(sp)
     cb0:	03c01025 	move	v0,s8
     cb4:	8fbe0048 	lw	s8,72(sp)
     cb8:	d7b40018 	ldc1	$f20,24(sp)
     cbc:	d7b60020 	ldc1	$f22,32(sp)
     cc0:	8fb00028 	lw	s0,40(sp)
     cc4:	8fb1002c 	lw	s1,44(sp)
     cc8:	8fb20030 	lw	s2,48(sp)
     ccc:	8fb30034 	lw	s3,52(sp)
     cd0:	8fb40038 	lw	s4,56(sp)
     cd4:	8fb5003c 	lw	s5,60(sp)
     cd8:	8fb60040 	lw	s6,64(sp)
     cdc:	8fb70044 	lw	s7,68(sp)
     ce0:	03e00008 	jr	ra
     ce4:	27bd0088 	addiu	sp,sp,136

00000ce8 <func_80A5BFD8>:
     ce8:	afa50004 	sw	a1,4(sp)
     cec:	240effff 	li	t6,-1
     cf0:	ac8e0380 	sw	t6,896(a0)
     cf4:	03e00008 	jr	ra
     cf8:	a4800384 	sh	zero,900(a0)

00000cfc <func_80A5BFEC>:
     cfc:	afa50004 	sw	a1,4(sp)
     d00:	03e00008 	jr	ra
     d04:	ac800388 	sw	zero,904(a0)

00000d08 <func_80A5BFF8>:
     d08:	27bdffe0 	addiu	sp,sp,-32
     d0c:	afbf0014 	sw	ra,20(sp)
     d10:	8ca61c44 	lw	a2,7236(a1)
     d14:	00803825 	move	a3,a0
     d18:	8cce067c 	lw	t6,1660(a2)
     d1c:	00c02025 	move	a0,a2
     d20:	31cf0001 	andi	t7,t6,0x1
     d24:	15e00021 	bnez	t7,dac <func_80A5BFF8+0xa4>
     d28:	00000000 	nop
     d2c:	afa6001c 	sw	a2,28(sp)
     d30:	afa50024 	sw	a1,36(sp)
     d34:	0c000000 	jal	0 <func_80A5B2F0>
     d38:	afa70020 	sw	a3,32(sp)
     d3c:	24010001 	li	at,1
     d40:	8fa3001c 	lw	v1,28(sp)
     d44:	8fa50024 	lw	a1,36(sp)
     d48:	10410018 	beq	v0,at,dac <func_80A5BFF8+0xa4>
     d4c:	8fa70020 	lw	a3,32(sp)
     d50:	8c78067c 	lw	t8,1660(v1)
     d54:	0018cac0 	sll	t9,t8,0xb
     d58:	07200014 	bltz	t9,dac <func_80A5BFF8+0xa4>
     d5c:	00000000 	nop
     d60:	8ce801f0 	lw	t0,496(a3)
     d64:	00084b00 	sll	t1,t0,0xc
     d68:	05230005 	bgezl	t1,d80 <func_80A5BFF8+0x78>
     d6c:	8ceb014c 	lw	t3,332(a3)
     d70:	8cea0388 	lw	t2,904(a3)
     d74:	1140000d 	beqz	t2,dac <func_80A5BFF8+0xa4>
     d78:	00000000 	nop
     d7c:	8ceb014c 	lw	t3,332(a3)
     d80:	24010012 	li	at,18
     d84:	11610009 	beq	t3,at,dac <func_80A5BFF8+0xa4>
     d88:	00000000 	nop
     d8c:	8c6c0004 	lw	t4,4(v1)
     d90:	318d0100 	andi	t5,t4,0x100
     d94:	15a00005 	bnez	t5,dac <func_80A5BFF8+0xa4>
     d98:	00000000 	nop
     d9c:	90ae1d6c 	lbu	t6,7532(a1)
     da0:	24020001 	li	v0,1
     da4:	11c00003 	beqz	t6,db4 <func_80A5BFF8+0xac>
     da8:	00000000 	nop
     dac:	10000001 	b	db4 <func_80A5BFF8+0xac>
     db0:	00001025 	move	v0,zero
     db4:	8fbf0014 	lw	ra,20(sp)
     db8:	27bd0020 	addiu	sp,sp,32
     dbc:	03e00008 	jr	ra
     dc0:	00000000 	nop

00000dc4 <func_80A5C0B4>:
     dc4:	afa50004 	sw	a1,4(sp)
     dc8:	ac80039c 	sw	zero,924(a0)
     dcc:	ac8003a0 	sw	zero,928(a0)
     dd0:	03e00008 	jr	ra
     dd4:	ac8003a4 	sw	zero,932(a0)

00000dd8 <func_80A5C0C8>:
     dd8:	03e00008 	jr	ra
     ddc:	a4800000 	sh	zero,0(a0)

00000de0 <EnHorse_Init>:
     de0:	27bdffa8 	addiu	sp,sp,-88
     de4:	afb10030 	sw	s1,48(sp)
     de8:	3c0e0000 	lui	t6,0x0
     dec:	8dce0000 	lw	t6,0(t6)
     df0:	00a08825 	move	s1,a1
     df4:	afbf0034 	sw	ra,52(sp)
     df8:	afb0002c 	sw	s0,44(sp)
     dfc:	3c050000 	lui	a1,0x0
     e00:	00808025 	move	s0,a0
     e04:	24a50000 	addiu	a1,a1,0
     e08:	0c000000 	jal	0 <func_80A5B2F0>
     e0c:	a5c00e60 	sh	zero,3680(t6)
     e10:	0c000000 	jal	0 <func_80A5B2F0>
     e14:	260403c8 	addiu	a0,s0,968
     e18:	3c0f0000 	lui	t7,0x0
     e1c:	8def0000 	lw	t7,0(t7)
     e20:	26180024 	addiu	t8,s0,36
     e24:	3c01428c 	lui	at,0x428c
     e28:	a5e005be 	sh	zero,1470(t7)
     e2c:	afb8003c 	sw	t8,60(sp)
     e30:	8f090000 	lw	t1,0(t8)
     e34:	44813000 	mtc1	at,$f6
     e38:	3c020000 	lui	v0,0x0
     e3c:	ae090258 	sw	t1,600(s0)
     e40:	8f080004 	lw	t0,4(t8)
     e44:	ae08025c 	sw	t0,604(s0)
     e48:	c604025c 	lwc1	$f4,604(s0)
     e4c:	8f090008 	lw	t1,8(t8)
     e50:	ae000150 	sw	zero,336(s0)
     e54:	46062200 	add.s	$f8,$f4,$f6
     e58:	ae000154 	sw	zero,340(s0)
     e5c:	ae090260 	sw	t1,608(s0)
     e60:	e608025c 	swc1	$f8,604(s0)
     e64:	8c420000 	lw	v0,0(v0)
     e68:	844a055c 	lh	t2,1372(v0)
     e6c:	15400002 	bnez	t2,e78 <EnHorse_Init+0x98>
     e70:	240b0046 	li	t3,70
     e74:	a44b055c 	sh	t3,1372(v0)
     e78:	8602001c 	lh	v0,28(s0)
     e7c:	304c8000 	andi	t4,v0,0x8000
     e80:	11800021 	beqz	t4,f08 <EnHorse_Init+0x128>
     e84:	3c01ffff 	lui	at,0xffff
     e88:	34217fff 	ori	at,at,0x7fff
     e8c:	00416824 	and	t5,v0,at
     e90:	3c010001 	lui	at,0x1
     e94:	240e0001 	li	t6,1
     e98:	342117a4 	ori	at,at,0x17a4
     e9c:	a60d001c 	sh	t5,28(s0)
     ea0:	ae0e0158 	sw	t6,344(s0)
     ea4:	02212021 	addu	a0,s1,at
     ea8:	afa40038 	sw	a0,56(sp)
     eac:	0c000000 	jal	0 <func_80A5B2F0>
     eb0:	240500d2 	li	a1,210
     eb4:	00027e00 	sll	t7,v0,0x18
     eb8:	000fc603 	sra	t8,t7,0x18
     ebc:	07010005 	bgez	t8,ed4 <EnHorse_Init+0xf4>
     ec0:	a202015c 	sb	v0,348(s0)
     ec4:	0c000000 	jal	0 <func_80A5B2F0>
     ec8:	02002025 	move	a0,s0
     ecc:	10000192 	b	1518 <EnHorse_Init+0x738>
     ed0:	8fbf0034 	lw	ra,52(sp)
     ed4:	8fa40038 	lw	a0,56(sp)
     ed8:	0c000000 	jal	0 <func_80A5B2F0>
     edc:	8205015c 	lb	a1,348(s0)
     ee0:	5040fffd 	beqzl	v0,ed8 <EnHorse_Init+0xf8>
     ee4:	8fa40038 	lw	a0,56(sp)
     ee8:	8219015c 	lb	t9,348(s0)
     eec:	02202025 	move	a0,s1
     ef0:	02002825 	move	a1,s0
     ef4:	0c000000 	jal	0 <func_80A5B2F0>
     ef8:	a219001e 	sb	t9,30(s0)
     efc:	2408000c 	li	t0,12
     f00:	10000004 	b	f14 <EnHorse_Init+0x134>
     f04:	ae080208 	sw	t0,520(s0)
     f08:	2409000e 	li	t1,14
     f0c:	ae000158 	sw	zero,344(s0)
     f10:	ae090208 	sw	t1,520(s0)
     f14:	860a001c 	lh	t2,28(s0)
     f18:	24017fff 	li	at,32767
     f1c:	15410002 	bne	t2,at,f28 <EnHorse_Init+0x148>
     f20:	240b0001 	li	t3,1
     f24:	a60b001c 	sh	t3,28(s0)
     f28:	862200a4 	lh	v0,164(s1)
     f2c:	2401004c 	li	at,76
     f30:	14410003 	bne	v0,at,f40 <EnHorse_Init+0x160>
     f34:	3c0c0001 	lui	t4,0x1
     f38:	1000003b 	b	1028 <EnHorse_Init+0x248>
     f3c:	ae0c01f0 	sw	t4,496(s0)
     f40:	2401005d 	li	at,93
     f44:	54410009 	bnel	v0,at,f6c <EnHorse_Init+0x18c>
     f48:	8602001c 	lh	v0,28(s0)
     f4c:	8e0d0158 	lw	t5,344(s0)
     f50:	24010001 	li	at,1
     f54:	3c0e0005 	lui	t6,0x5
     f58:	55a10004 	bnel	t5,at,f6c <EnHorse_Init+0x18c>
     f5c:	8602001c 	lh	v0,28(s0)
     f60:	10000031 	b	1028 <EnHorse_Init+0x248>
     f64:	ae0e01f0 	sw	t6,496(s0)
     f68:	8602001c 	lh	v0,28(s0)
     f6c:	24010003 	li	at,3
     f70:	3c0f000b 	lui	t7,0xb
     f74:	54410004 	bnel	v0,at,f88 <EnHorse_Init+0x1a8>
     f78:	24010006 	li	at,6
     f7c:	1000002a 	b	1028 <EnHorse_Init+0x248>
     f80:	ae0f01f0 	sw	t7,496(s0)
     f84:	24010006 	li	at,6
     f88:	14410021 	bne	v0,at,1010 <EnHorse_Init+0x230>
     f8c:	3c18000a 	lui	t8,0xa
     f90:	ae1801f0 	sw	t8,496(s0)
     f94:	0c000000 	jal	0 <func_80A5B2F0>
     f98:	24040018 	li	a0,24
     f9c:	14400006 	bnez	v0,fb8 <EnHorse_Init+0x1d8>
     fa0:	3c190000 	lui	t9,0x0
     fa4:	8f390000 	lw	t9,0(t9)
     fa8:	3c0d0000 	lui	t5,0x0
     fac:	87280556 	lh	t0,1366(t9)
     fb0:	1100000a 	beqz	t0,fdc <EnHorse_Init+0x1fc>
     fb4:	00000000 	nop
     fb8:	8e0901f0 	lw	t1,496(s0)
     fbc:	3c01fffd 	lui	at,0xfffd
     fc0:	3421ffff 	ori	at,at,0xffff
     fc4:	01215024 	and	t2,t1,at
     fc8:	3c010400 	lui	at,0x400
     fcc:	ae0a01f0 	sw	t2,496(s0)
     fd0:	01416025 	or	t4,t2,at
     fd4:	10000014 	b	1028 <EnHorse_Init+0x248>
     fd8:	ae0c01f0 	sw	t4,496(s0)
     fdc:	95ad13fa 	lhu	t5,5114(t5)
     fe0:	31ae0040 	andi	t6,t5,0x40
     fe4:	51c00011 	beqzl	t6,102c <EnHorse_Init+0x24c>
     fe8:	862900a4 	lh	t1,164(s1)
     fec:	8e0f0158 	lw	t7,344(s0)
     ff0:	24010001 	li	at,1
     ff4:	55e1000d 	bnel	t7,at,102c <EnHorse_Init+0x24c>
     ff8:	862900a4 	lh	t1,164(s1)
     ffc:	8e1801f0 	lw	t8,496(s0)
    1000:	3c010030 	lui	at,0x30
    1004:	0301c825 	or	t9,t8,at
    1008:	10000007 	b	1028 <EnHorse_Init+0x248>
    100c:	ae1901f0 	sw	t9,496(s0)
    1010:	24010001 	li	at,1
    1014:	14410003 	bne	v0,at,1024 <EnHorse_Init+0x244>
    1018:	24080080 	li	t0,128
    101c:	10000002 	b	1028 <EnHorse_Init+0x248>
    1020:	ae0801f0 	sw	t0,496(s0)
    1024:	ae0001f0 	sw	zero,496(s0)
    1028:	862900a4 	lh	t1,164(s1)
    102c:	24010063 	li	at,99
    1030:	15210012 	bne	t1,at,107c <EnHorse_Init+0x29c>
    1034:	3c0a0000 	lui	t2,0x0
    1038:	954a13fa 	lhu	t2,5114(t2)
    103c:	24010006 	li	at,6
    1040:	314b000f 	andi	t3,t2,0xf
    1044:	5561000e 	bnel	t3,at,1080 <EnHorse_Init+0x2a0>
    1048:	3c053c23 	lui	a1,0x3c23
    104c:	0c000000 	jal	0 <func_80A5B2F0>
    1050:	24040018 	li	a0,24
    1054:	14400009 	bnez	v0,107c <EnHorse_Init+0x29c>
    1058:	3c0c0000 	lui	t4,0x0
    105c:	8d8c0000 	lw	t4,0(t4)
    1060:	858d0556 	lh	t5,1366(t4)
    1064:	55a00006 	bnezl	t5,1080 <EnHorse_Init+0x2a0>
    1068:	3c053c23 	lui	a1,0x3c23
    106c:	8e0e01f0 	lw	t6,496(s0)
    1070:	3c010200 	lui	at,0x200
    1074:	01c17825 	or	t7,t6,at
    1078:	ae0f01f0 	sw	t7,496(s0)
    107c:	3c053c23 	lui	a1,0x3c23
    1080:	34a5d70a 	ori	a1,a1,0xd70a
    1084:	0c000000 	jal	0 <func_80A5B2F0>
    1088:	02002025 	move	a0,s0
    108c:	3c01c060 	lui	at,0xc060
    1090:	44815000 	mtc1	at,$f10
    1094:	3c060000 	lui	a2,0x0
    1098:	24c60000 	addiu	a2,a2,0
    109c:	260400b4 	addiu	a0,s0,180
    10a0:	24050000 	li	a1,0
    10a4:	3c0741a0 	lui	a3,0x41a0
    10a8:	0c000000 	jal	0 <func_80A5B2F0>
    10ac:	e60a006c 	swc1	$f10,108(s0)
    10b0:	44808000 	mtc1	zero,$f16
    10b4:	24180002 	li	t8,2
    10b8:	ae18014c 	sw	t8,332(s0)
    10bc:	26050278 	addiu	a1,s0,632
    10c0:	e6100068 	swc1	$f16,104(s0)
    10c4:	afa50040 	sw	a1,64(sp)
    10c8:	0c000000 	jal	0 <func_80A5B2F0>
    10cc:	02202025 	move	a0,s1
    10d0:	3c070000 	lui	a3,0x0
    10d4:	8fa50040 	lw	a1,64(sp)
    10d8:	24e70000 	addiu	a3,a3,0
    10dc:	02202025 	move	a0,s1
    10e0:	0c000000 	jal	0 <func_80A5B2F0>
    10e4:	02003025 	move	a2,s0
    10e8:	260502c4 	addiu	a1,s0,708
    10ec:	afa50040 	sw	a1,64(sp)
    10f0:	0c000000 	jal	0 <func_80A5B2F0>
    10f4:	02202025 	move	a0,s1
    10f8:	3c070000 	lui	a3,0x0
    10fc:	8fa50040 	lw	a1,64(sp)
    1100:	24e70000 	addiu	a3,a3,0
    1104:	02202025 	move	a0,s1
    1108:	0c000000 	jal	0 <func_80A5B2F0>
    110c:	02003025 	move	a2,s0
    1110:	26050310 	addiu	a1,s0,784
    1114:	afa50040 	sw	a1,64(sp)
    1118:	0c000000 	jal	0 <func_80A5B2F0>
    111c:	02202025 	move	a0,s1
    1120:	3c070000 	lui	a3,0x0
    1124:	26190330 	addiu	t9,s0,816
    1128:	8fa50040 	lw	a1,64(sp)
    112c:	afb90010 	sw	t9,16(sp)
    1130:	24e70000 	addiu	a3,a3,0
    1134:	02202025 	move	a0,s1
    1138:	0c000000 	jal	0 <func_80A5B2F0>
    113c:	02003025 	move	a2,s0
    1140:	0c000000 	jal	0 <func_80A5B2F0>
    1144:	2404000b 	li	a0,11
    1148:	3c060000 	lui	a2,0x0
    114c:	24c60000 	addiu	a2,a2,0
    1150:	26040098 	addiu	a0,s0,152
    1154:	0c000000 	jal	0 <func_80A5B2F0>
    1158:	00402825 	move	a1,v0
    115c:	8fa8003c 	lw	t0,60(sp)
    1160:	3c01428c 	lui	at,0x428c
    1164:	44812000 	mtc1	at,$f4
    1168:	8d0a0000 	lw	t2,0(t0)
    116c:	24010063 	li	at,99
    1170:	3c0b0000 	lui	t3,0x0
    1174:	ae0a0038 	sw	t2,56(s0)
    1178:	8d090004 	lw	t1,4(t0)
    117c:	ae09003c 	sw	t1,60(s0)
    1180:	c612003c 	lwc1	$f18,60(s0)
    1184:	8d0a0008 	lw	t2,8(t0)
    1188:	ae00020c 	sw	zero,524(s0)
    118c:	46049180 	add.s	$f6,$f18,$f4
    1190:	ae0a0040 	sw	t2,64(s0)
    1194:	e606003c 	swc1	$f6,60(s0)
    1198:	862200a4 	lh	v0,164(s1)
    119c:	54410035 	bnel	v0,at,1274 <EnHorse_Init+0x494>
    11a0:	24010036 	li	at,54
    11a4:	8d6b1360 	lw	t3,4960(t3)
    11a8:	29610004 	slti	at,t3,4
    11ac:	50200031 	beqzl	at,1274 <EnHorse_Init+0x494>
    11b0:	24010036 	li	at,54
    11b4:	8e0c0158 	lw	t4,344(s0)
    11b8:	24010001 	li	at,1
    11bc:	1581001c 	bne	t4,at,1230 <EnHorse_Init+0x450>
    11c0:	00000000 	nop
    11c4:	860d0034 	lh	t5,52(s0)
    11c8:	3c0e0000 	lui	t6,0x0
    11cc:	11a00004 	beqz	t5,11e0 <EnHorse_Init+0x400>
    11d0:	00000000 	nop
    11d4:	8dce0010 	lw	t6,16(t6)
    11d8:	11c00005 	beqz	t6,11f0 <EnHorse_Init+0x410>
    11dc:	00000000 	nop
    11e0:	0c000000 	jal	0 <func_80A5B2F0>
    11e4:	02002025 	move	a0,s0
    11e8:	100000cb 	b	1518 <EnHorse_Init+0x738>
    11ec:	8fbf0034 	lw	ra,52(sp)
    11f0:	0c000000 	jal	0 <func_80A5B2F0>
    11f4:	24040018 	li	a0,24
    11f8:	50400006 	beqzl	v0,1214 <EnHorse_Init+0x434>
    11fc:	860f0034 	lh	t7,52(s0)
    1200:	0c000000 	jal	0 <func_80A5B2F0>
    1204:	02002025 	move	a0,s0
    1208:	100000c3 	b	1518 <EnHorse_Init+0x738>
    120c:	8fbf0034 	lw	ra,52(sp)
    1210:	860f0034 	lh	t7,52(s0)
    1214:	24010005 	li	at,5
    1218:	51e10030 	beql	t7,at,12dc <EnHorse_Init+0x4fc>
    121c:	8e020158 	lw	v0,344(s0)
    1220:	0c000000 	jal	0 <func_80A5B2F0>
    1224:	02002025 	move	a0,s0
    1228:	100000bb 	b	1518 <EnHorse_Init+0x738>
    122c:	8fbf0034 	lw	ra,52(sp)
    1230:	0c000000 	jal	0 <func_80A5B2F0>
    1234:	24040018 	li	a0,24
    1238:	14400027 	bnez	v0,12d8 <EnHorse_Init+0x4f8>
    123c:	3c180000 	lui	t8,0x0
    1240:	8f180000 	lw	t8,0(t8)
    1244:	3c080000 	lui	t0,0x0
    1248:	87190556 	lh	t9,1366(t8)
    124c:	57200023 	bnezl	t9,12dc <EnHorse_Init+0x4fc>
    1250:	8e020158 	lw	v0,344(s0)
    1254:	8d080010 	lw	t0,16(t0)
    1258:	51000020 	beqzl	t0,12dc <EnHorse_Init+0x4fc>
    125c:	8e020158 	lw	v0,344(s0)
    1260:	0c000000 	jal	0 <func_80A5B2F0>
    1264:	02002025 	move	a0,s0
    1268:	100000ab 	b	1518 <EnHorse_Init+0x738>
    126c:	8fbf0034 	lw	ra,52(sp)
    1270:	24010036 	li	at,54
    1274:	14410018 	bne	v0,at,12d8 <EnHorse_Init+0x4f8>
    1278:	3c090000 	lui	t1,0x0
    127c:	8d290010 	lw	t1,16(t1)
    1280:	1120000d 	beqz	t1,12b8 <EnHorse_Init+0x4d8>
    1284:	00000000 	nop
    1288:	0c000000 	jal	0 <func_80A5B2F0>
    128c:	24040018 	li	a0,24
    1290:	14400009 	bnez	v0,12b8 <EnHorse_Init+0x4d8>
    1294:	3c0a0000 	lui	t2,0x0
    1298:	8d4a0000 	lw	t2,0(t2)
    129c:	3c0c0000 	lui	t4,0x0
    12a0:	854b0556 	lh	t3,1366(t2)
    12a4:	15600004 	bnez	t3,12b8 <EnHorse_Init+0x4d8>
    12a8:	00000000 	nop
    12ac:	8d8c0004 	lw	t4,4(t4)
    12b0:	51800006 	beqzl	t4,12cc <EnHorse_Init+0x4ec>
    12b4:	8e0d01f0 	lw	t5,496(s0)
    12b8:	0c000000 	jal	0 <func_80A5B2F0>
    12bc:	02002025 	move	a0,s0
    12c0:	10000095 	b	1518 <EnHorse_Init+0x738>
    12c4:	8fbf0034 	lw	ra,52(sp)
    12c8:	8e0d01f0 	lw	t5,496(s0)
    12cc:	3c010001 	lui	at,0x1
    12d0:	01a17025 	or	t6,t5,at
    12d4:	ae0e01f0 	sw	t6,496(s0)
    12d8:	8e020158 	lw	v0,344(s0)
    12dc:	3c0f0000 	lui	t7,0x0
    12e0:	3c060000 	lui	a2,0x0
    12e4:	00021080 	sll	v0,v0,0x2
    12e8:	01e27821 	addu	t7,t7,v0
    12ec:	8def0000 	lw	t7,0(t7)
    12f0:	00c23021 	addu	a2,a2,v0
    12f4:	8cc60000 	lw	a2,0(a2)
    12f8:	02202025 	move	a0,s1
    12fc:	26050160 	addiu	a1,s0,352
    1300:	0c000000 	jal	0 <func_80A5B2F0>
    1304:	8de70000 	lw	a3,0(t7)
    1308:	8e180158 	lw	t8,344(s0)
    130c:	3c080000 	lui	t0,0x0
    1310:	ae000210 	sw	zero,528(s0)
    1314:	0018c880 	sll	t9,t8,0x2
    1318:	01194021 	addu	t0,t0,t9
    131c:	8d080000 	lw	t0,0(t0)
    1320:	260401ac 	addiu	a0,s0,428
    1324:	0c000000 	jal	0 <func_80A5B2F0>
    1328:	8d050000 	lw	a1,0(t0)
    132c:	24090006 	li	t1,6
    1330:	a2090238 	sb	t1,568(s0)
    1334:	ae00023c 	sw	zero,572(s0)
    1338:	ae000244 	sw	zero,580(s0)
    133c:	a200037a 	sb	zero,890(s0)
    1340:	02002025 	move	a0,s0
    1344:	0c000000 	jal	0 <func_80A5B2F0>
    1348:	02202825 	move	a1,s1
    134c:	02002025 	move	a0,s0
    1350:	0c000000 	jal	0 <func_80A5B2F0>
    1354:	02202825 	move	a1,s1
    1358:	02002025 	move	a0,s0
    135c:	0c000000 	jal	0 <func_80A5B2F0>
    1360:	02202825 	move	a1,s1
    1364:	8602001c 	lh	v0,28(s0)
    1368:	24010002 	li	at,2
    136c:	54410006 	bnel	v0,at,1388 <EnHorse_Init+0x5a8>
    1370:	24010003 	li	at,3
    1374:	0c000000 	jal	0 <func_80A5B2F0>
    1378:	02002025 	move	a0,s0
    137c:	10000062 	b	1508 <EnHorse_Init+0x728>
    1380:	a60000b8 	sh	zero,184(s0)
    1384:	24010003 	li	at,3
    1388:	5441002a 	bnel	v0,at,1434 <EnHorse_Init+0x654>
    138c:	24010007 	li	at,7
    1390:	0c000000 	jal	0 <func_80A5B2F0>
    1394:	02002025 	move	a0,s0
    1398:	c6080028 	lwc1	$f8,40(s0)
    139c:	8e070024 	lw	a3,36(s0)
    13a0:	240c0001 	li	t4,1
    13a4:	e7a80010 	swc1	$f8,16(sp)
    13a8:	c60a002c 	lwc1	$f10,44(s0)
    13ac:	240d0001 	li	t5,1
    13b0:	26241c24 	addiu	a0,s1,7204
    13b4:	e7aa0014 	swc1	$f10,20(sp)
    13b8:	860a00b4 	lh	t2,180(s0)
    13bc:	02202825 	move	a1,s1
    13c0:	240600cb 	li	a2,203
    13c4:	afaa0018 	sw	t2,24(sp)
    13c8:	860b00b6 	lh	t3,182(s0)
    13cc:	afad0024 	sw	t5,36(sp)
    13d0:	afac0020 	sw	t4,32(sp)
    13d4:	0c000000 	jal	0 <func_80A5B2F0>
    13d8:	afab001c 	sw	t3,28(sp)
    13dc:	14400007 	bnez	v0,13fc <EnHorse_Init+0x61c>
    13e0:	ae02038c 	sw	v0,908(s0)
    13e4:	3c040000 	lui	a0,0x0
    13e8:	3c050000 	lui	a1,0x0
    13ec:	24a50000 	addiu	a1,a1,0
    13f0:	24840000 	addiu	a0,a0,0
    13f4:	0c000000 	jal	0 <func_80A5B2F0>
    13f8:	24060c05 	li	a2,3077
    13fc:	3c0e0000 	lui	t6,0x0
    1400:	95ce13fa 	lhu	t6,5114(t6)
    1404:	3c01414a 	lui	at,0x414a
    1408:	31cf0040 	andi	t7,t6,0x40
    140c:	55e00006 	bnezl	t7,1428 <EnHorse_Init+0x648>
    1410:	44819000 	mtc1	at,$f18
    1414:	3c010000 	lui	at,0x0
    1418:	c4300000 	lwc1	$f16,0(at)
    141c:	10000039 	b	1504 <EnHorse_Init+0x724>
    1420:	e6100398 	swc1	$f16,920(s0)
    1424:	44819000 	mtc1	at,$f18
    1428:	10000036 	b	1504 <EnHorse_Init+0x724>
    142c:	e6120398 	swc1	$f18,920(s0)
    1430:	24010007 	li	at,7
    1434:	14410005 	bne	v0,at,144c <EnHorse_Init+0x66c>
    1438:	02002025 	move	a0,s0
    143c:	0c000000 	jal	0 <func_80A5B2F0>
    1440:	02202825 	move	a1,s1
    1444:	10000030 	b	1508 <EnHorse_Init+0x728>
    1448:	a60000b8 	sh	zero,184(s0)
    144c:	24010008 	li	at,8
    1450:	54410008 	bnel	v0,at,1474 <EnHorse_Init+0x694>
    1454:	863800a4 	lh	t8,164(s1)
    1458:	0c000000 	jal	0 <func_80A5B2F0>
    145c:	02002025 	move	a0,s0
    1460:	0c000000 	jal	0 <func_80A5B2F0>
    1464:	02202025 	move	a0,s1
    1468:	10000027 	b	1508 <EnHorse_Init+0x728>
    146c:	a60000b8 	sh	zero,184(s0)
    1470:	863800a4 	lh	t8,164(s1)
    1474:	24010063 	li	at,99
    1478:	5701000e 	bnel	t8,at,14b4 <EnHorse_Init+0x6d4>
    147c:	862200a4 	lh	v0,164(s1)
    1480:	0c000000 	jal	0 <func_80A5B2F0>
    1484:	24040018 	li	a0,24
    1488:	14400009 	bnez	v0,14b0 <EnHorse_Init+0x6d0>
    148c:	3c190000 	lui	t9,0x0
    1490:	8f390000 	lw	t9,0(t9)
    1494:	87280556 	lh	t0,1366(t9)
    1498:	55000006 	bnezl	t0,14b4 <EnHorse_Init+0x6d4>
    149c:	862200a4 	lh	v0,164(s1)
    14a0:	0c000000 	jal	0 <func_80A5B2F0>
    14a4:	02002025 	move	a0,s0
    14a8:	10000017 	b	1508 <EnHorse_Init+0x728>
    14ac:	a60000b8 	sh	zero,184(s0)
    14b0:	862200a4 	lh	v0,164(s1)
    14b4:	2401004c 	li	at,76
    14b8:	54410006 	bnel	v0,at,14d4 <EnHorse_Init+0x6f4>
    14bc:	2401005d 	li	at,93
    14c0:	0c000000 	jal	0 <func_80A5B2F0>
    14c4:	02002025 	move	a0,s0
    14c8:	1000000f 	b	1508 <EnHorse_Init+0x728>
    14cc:	a60000b8 	sh	zero,184(s0)
    14d0:	2401005d 	li	at,93
    14d4:	14410009 	bne	v0,at,14fc <EnHorse_Init+0x71c>
    14d8:	00000000 	nop
    14dc:	8e090158 	lw	t1,344(s0)
    14e0:	24010001 	li	at,1
    14e4:	15210005 	bne	t1,at,14fc <EnHorse_Init+0x71c>
    14e8:	00000000 	nop
    14ec:	0c000000 	jal	0 <func_80A5B2F0>
    14f0:	02002025 	move	a0,s0
    14f4:	10000004 	b	1508 <EnHorse_Init+0x728>
    14f8:	a60000b8 	sh	zero,184(s0)
    14fc:	0c000000 	jal	0 <func_80A5B2F0>
    1500:	02002025 	move	a0,s0
    1504:	a60000b8 	sh	zero,184(s0)
    1508:	860200b8 	lh	v0,184(s0)
    150c:	a6020034 	sh	v0,52(s0)
    1510:	a6020018 	sh	v0,24(s0)
    1514:	8fbf0034 	lw	ra,52(sp)
    1518:	8fb0002c 	lw	s0,44(sp)
    151c:	8fb10030 	lw	s1,48(sp)
    1520:	03e00008 	jr	ra
    1524:	27bd0058 	addiu	sp,sp,88

00001528 <EnHorse_Destroy>:
    1528:	27bdffe0 	addiu	sp,sp,-32
    152c:	afbf001c 	sw	ra,28(sp)
    1530:	afb00018 	sw	s0,24(sp)
    1534:	afa50024 	sw	a1,36(sp)
    1538:	8c8e01f0 	lw	t6,496(a0)
    153c:	00808025 	move	s0,a0
    1540:	000e7900 	sll	t7,t6,0x4
    1544:	05e30004 	bgezl	t7,1558 <EnHorse_Destroy+0x30>
    1548:	8fa40024 	lw	a0,36(sp)
    154c:	0c000000 	jal	0 <func_80A5B2F0>
    1550:	2484021c 	addiu	a0,a0,540
    1554:	8fa40024 	lw	a0,36(sp)
    1558:	0c000000 	jal	0 <func_80A5B2F0>
    155c:	26050160 	addiu	a1,s0,352
    1560:	8fa40024 	lw	a0,36(sp)
    1564:	0c000000 	jal	0 <func_80A5B2F0>
    1568:	26050278 	addiu	a1,s0,632
    156c:	8fa40024 	lw	a0,36(sp)
    1570:	0c000000 	jal	0 <func_80A5B2F0>
    1574:	260502c4 	addiu	a1,s0,708
    1578:	8fa40024 	lw	a0,36(sp)
    157c:	0c000000 	jal	0 <func_80A5B2F0>
    1580:	26050310 	addiu	a1,s0,784
    1584:	8fbf001c 	lw	ra,28(sp)
    1588:	8fb00018 	lw	s0,24(sp)
    158c:	27bd0020 	addiu	sp,sp,32
    1590:	03e00008 	jr	ra
    1594:	00000000 	nop

00001598 <func_80A5C888>:
    1598:	27bdffe8 	addiu	sp,sp,-24
    159c:	afbf0014 	sw	ra,20(sp)
    15a0:	8ca61c44 	lw	a2,7236(a1)
    15a4:	afa40018 	sw	a0,24(sp)
    15a8:	24070190 	li	a3,400
    15ac:	0c000000 	jal	0 <func_80A5B2F0>
    15b0:	24c60024 	addiu	a2,a2,36
    15b4:	8fa40018 	lw	a0,24(sp)
    15b8:	8c8e01f0 	lw	t6,496(a0)
    15bc:	31cf4000 	andi	t7,t6,0x4000
    15c0:	51e0000d 	beqzl	t7,15f8 <func_80A5C888+0x60>
    15c4:	84890032 	lh	t1,50(a0)
    15c8:	84980032 	lh	t8,50(a0)
    15cc:	3c014448 	lui	at,0x4448
    15d0:	44814000 	mtc1	at,$f8
    15d4:	44982000 	mtc1	t8,$f4
    15d8:	00000000 	nop
    15dc:	468021a0 	cvt.s.w	$f6,$f4
    15e0:	46083280 	add.s	$f10,$f6,$f8
    15e4:	4600540d 	trunc.w.s	$f16,$f10
    15e8:	44088000 	mfc1	t0,$f16
    15ec:	00000000 	nop
    15f0:	a4880032 	sh	t0,50(a0)
    15f4:	84890032 	lh	t1,50(a0)
    15f8:	a48900b6 	sh	t1,182(a0)
    15fc:	8fbf0014 	lw	ra,20(sp)
    1600:	27bd0018 	addiu	sp,sp,24
    1604:	03e00008 	jr	ra
    1608:	00000000 	nop

0000160c <func_80A5C8FC>:
    160c:	8c82014c 	lw	v0,332(a0)
    1610:	24010011 	li	at,17
    1614:	1041001b 	beq	v0,at,1684 <func_80A5C8FC+0x78>
    1618:	24010012 	li	at,18
    161c:	10410019 	beq	v0,at,1684 <func_80A5C8FC+0x78>
    1620:	00000000 	nop
    1624:	8483001c 	lh	v1,28(a0)
    1628:	3c0e0000 	lui	t6,0x0
    162c:	24010004 	li	at,4
    1630:	01c37021 	addu	t6,t6,v1
    1634:	91ce0000 	lbu	t6,0(t6)
    1638:	51c00007 	beqzl	t6,1658 <func_80A5C8FC+0x4c>
    163c:	908f028a 	lbu	t7,650(a0)
    1640:	50610005 	beql	v1,at,1658 <func_80A5C8FC+0x4c>
    1644:	908f028a 	lbu	t7,650(a0)
    1648:	ac800150 	sw	zero,336(a0)
    164c:	ac800154 	sw	zero,340(a0)
    1650:	8c82014c 	lw	v0,332(a0)
    1654:	908f028a 	lbu	t7,650(a0)
    1658:	909902d6 	lbu	t9,726(a0)
    165c:	90890322 	lbu	t1,802(a0)
    1660:	31f8fffe 	andi	t8,t7,0xfffe
    1664:	3328fffe 	andi	t0,t9,0xfffe
    1668:	312afffe 	andi	t2,t1,0xfffe
    166c:	ac820254 	sw	v0,596(a0)
    1670:	ac80014c 	sw	zero,332(a0)
    1674:	a098028a 	sb	t8,650(a0)
    1678:	a08802d6 	sb	t0,726(a0)
    167c:	a08a0322 	sb	t2,802(a0)
    1680:	ac800210 	sw	zero,528(a0)
    1684:	03e00008 	jr	ra
    1688:	00000000 	nop

0000168c <func_80A5C97C>:
    168c:	27bdffe0 	addiu	sp,sp,-32
    1690:	afbf001c 	sw	ra,28(sp)
    1694:	afb00018 	sw	s0,24(sp)
    1698:	8c8e0150 	lw	t6,336(a0)
    169c:	44802000 	mtc1	zero,$f4
    16a0:	00808025 	move	s0,a0
    16a4:	25cfffff 	addiu	t7,t6,-1
    16a8:	ac8f0150 	sw	t7,336(a0)
    16ac:	05e1004e 	bgez	t7,17e8 <func_80A5C97C+0x15c>
    16b0:	e4840068 	swc1	$f4,104(a0)
    16b4:	9099028a 	lbu	t9,650(a0)
    16b8:	908902d6 	lbu	t1,726(a0)
    16bc:	908b0322 	lbu	t3,802(a0)
    16c0:	8c8d020c 	lw	t5,524(a0)
    16c4:	24010001 	li	at,1
    16c8:	37280001 	ori	t0,t9,0x1
    16cc:	352a0001 	ori	t2,t1,0x1
    16d0:	356c0001 	ori	t4,t3,0x1
    16d4:	a088028a 	sb	t0,650(a0)
    16d8:	a08a02d6 	sb	t2,726(a0)
    16dc:	15a1002d 	bne	t5,at,1794 <func_80A5C97C+0x108>
    16e0:	a08c0322 	sb	t4,802(a0)
    16e4:	8c8e01f0 	lw	t6,496(a0)
    16e8:	8482001c 	lh	v0,28(a0)
    16ec:	2401ff7f 	li	at,-129
    16f0:	01c17824 	and	t7,t6,at
    16f4:	24010004 	li	at,4
    16f8:	14410005 	bne	v0,at,1710 <func_80A5C97C+0x84>
    16fc:	ac8f01f0 	sw	t7,496(a0)
    1700:	0c000000 	jal	0 <func_80A5B2F0>
    1704:	00000000 	nop
    1708:	1000001e 	b	1784 <func_80A5C97C+0xf8>
    170c:	8609001c 	lh	t1,28(s0)
    1710:	24010009 	li	at,9
    1714:	14410010 	bne	v0,at,1758 <func_80A5C97C+0xcc>
    1718:	24180005 	li	t8,5
    171c:	a618001c 	sh	t8,28(s0)
    1720:	90b91d6c 	lbu	t9,7532(a1)
    1724:	3c014100 	lui	at,0x4100
    1728:	53200006 	beqzl	t9,1744 <func_80A5C97C+0xb8>
    172c:	44813000 	mtc1	at,$f6
    1730:	0c000000 	jal	0 <func_80A5B2F0>
    1734:	02002025 	move	a0,s0
    1738:	10000012 	b	1784 <func_80A5C97C+0xf8>
    173c:	8609001c 	lh	t1,28(s0)
    1740:	44813000 	mtc1	at,$f6
    1744:	02002025 	move	a0,s0
    1748:	0c000000 	jal	0 <func_80A5B2F0>
    174c:	e6060068 	swc1	$f6,104(s0)
    1750:	1000000c 	b	1784 <func_80A5C97C+0xf8>
    1754:	8609001c 	lh	t1,28(s0)
    1758:	8e080254 	lw	t0,596(s0)
    175c:	24010002 	li	at,2
    1760:	15010005 	bne	t0,at,1778 <func_80A5C97C+0xec>
    1764:	00000000 	nop
    1768:	0c000000 	jal	0 <func_80A5B2F0>
    176c:	02002025 	move	a0,s0
    1770:	10000004 	b	1784 <func_80A5C97C+0xf8>
    1774:	8609001c 	lh	t1,28(s0)
    1778:	0c000000 	jal	0 <func_80A5B2F0>
    177c:	02002025 	move	a0,s0
    1780:	8609001c 	lh	t1,28(s0)
    1784:	51200019 	beqzl	t1,17ec <func_80A5C97C+0x160>
    1788:	8fbf001c 	lw	ra,28(sp)
    178c:	10000016 	b	17e8 <func_80A5C97C+0x15c>
    1790:	a600001c 	sh	zero,28(s0)
    1794:	8e020254 	lw	v0,596(s0)
    1798:	24010005 	li	at,5
    179c:	02002025 	move	a0,s0
    17a0:	14410005 	bne	v0,at,17b8 <func_80A5C97C+0x12c>
    17a4:	00002825 	move	a1,zero
    17a8:	0c000000 	jal	0 <func_80A5B2F0>
    17ac:	24060000 	li	a2,0
    17b0:	1000000e 	b	17ec <func_80A5C97C+0x160>
    17b4:	8fbf001c 	lw	ra,28(sp)
    17b8:	24010006 	li	at,6
    17bc:	14410007 	bne	v0,at,17dc <func_80A5C97C+0x150>
    17c0:	02002025 	move	a0,s0
    17c4:	02002025 	move	a0,s0
    17c8:	00002825 	move	a1,zero
    17cc:	0c000000 	jal	0 <func_80A5B2F0>
    17d0:	24060000 	li	a2,0
    17d4:	10000005 	b	17ec <func_80A5C97C+0x160>
    17d8:	8fbf001c 	lw	ra,28(sp)
    17dc:	00002825 	move	a1,zero
    17e0:	0c000000 	jal	0 <func_80A5B2F0>
    17e4:	24060000 	li	a2,0
    17e8:	8fbf001c 	lw	ra,28(sp)
    17ec:	8fb00018 	lw	s0,24(sp)
    17f0:	27bd0020 	addiu	sp,sp,32
    17f4:	03e00008 	jr	ra
    17f8:	00000000 	nop

000017fc <func_80A5CAEC>:
    17fc:	27bdffb8 	addiu	sp,sp,-72
    1800:	afbf001c 	sw	ra,28(sp)
    1804:	afb00018 	sw	s0,24(sp)
    1808:	00808025 	move	s0,a0
    180c:	afa5004c 	sw	a1,76(sp)
    1810:	afa60050 	sw	a2,80(sp)
    1814:	0c000000 	jal	0 <func_80A5B2F0>
    1818:	afa70054 	sw	a3,84(sp)
    181c:	14400014 	bnez	v0,1870 <func_80A5CAEC+0x74>
    1820:	02002025 	move	a0,s0
    1824:	3c014100 	lui	at,0x4100
    1828:	44812000 	mtc1	at,$f4
    182c:	c6020068 	lwc1	$f2,104(s0)
    1830:	c7a6005c 	lwc1	$f6,92(sp)
    1834:	4602203c 	c.lt.s	$f4,$f2
    1838:	00000000 	nop
    183c:	45020005 	bc1fl	1854 <func_80A5CAEC+0x58>
    1840:	44800000 	mtc1	zero,$f0
    1844:	46061201 	sub.s	$f8,$f2,$f6
    1848:	100000f6 	b	1c24 <func_80A5CAEC+0x428>
    184c:	e6080068 	swc1	$f8,104(s0)
    1850:	44800000 	mtc1	zero,$f0
    1854:	00000000 	nop
    1858:	4600103c 	c.lt.s	$f2,$f0
    185c:	00000000 	nop
    1860:	450200f1 	bc1fl	1c28 <func_80A5CAEC+0x42c>
    1864:	8fbf001c 	lw	ra,28(sp)
    1868:	100000ee 	b	1c24 <func_80A5CAEC+0x428>
    186c:	e6000068 	swc1	$f0,104(s0)
    1870:	0c000000 	jal	0 <func_80A5B2F0>
    1874:	8fa5004c 	lw	a1,76(sp)
    1878:	c7ac0060 	lwc1	$f12,96(sp)
    187c:	26040264 	addiu	a0,s0,612
    1880:	27a50040 	addiu	a1,sp,64
    1884:	46006302 	mul.s	$f12,$f12,$f0
    1888:	27a6003e 	addiu	a2,sp,62
    188c:	0c000000 	jal	0 <func_80A5B2F0>
    1890:	e7ac0060 	swc1	$f12,96(sp)
    1894:	0c000000 	jal	0 <func_80A5B2F0>
    1898:	87a4003e 	lh	a0,62(sp)
    189c:	c7aa0054 	lwc1	$f10,84(sp)
    18a0:	c7ac0060 	lwc1	$f12,96(sp)
    18a4:	c7a60050 	lwc1	$f6,80(sp)
    18a8:	460a003e 	c.le.s	$f0,$f10
    18ac:	c7aa0040 	lwc1	$f10,64(sp)
    18b0:	c7a40058 	lwc1	$f4,88(sp)
    18b4:	4502000f 	bc1fl	18f4 <func_80A5CAEC+0xf8>
    18b8:	4604503c 	c.lt.s	$f10,$f4
    18bc:	c6040068 	lwc1	$f4,104(s0)
    18c0:	44800000 	mtc1	zero,$f0
    18c4:	46062201 	sub.s	$f8,$f4,$f6
    18c8:	e6080068 	swc1	$f8,104(s0)
    18cc:	c6020068 	lwc1	$f2,104(s0)
    18d0:	4600103c 	c.lt.s	$f2,$f0
    18d4:	00000000 	nop
    18d8:	45000003 	bc1f	18e8 <func_80A5CAEC+0xec>
    18dc:	00000000 	nop
    18e0:	100000d0 	b	1c24 <func_80A5CAEC+0x428>
    18e4:	e6000068 	swc1	$f0,104(s0)
    18e8:	100000ce 	b	1c24 <func_80A5CAEC+0x428>
    18ec:	e6020068 	swc1	$f2,104(s0)
    18f0:	4604503c 	c.lt.s	$f10,$f4
    18f4:	00000000 	nop
    18f8:	45020015 	bc1fl	1950 <func_80A5CAEC+0x154>
    18fc:	8e0201f0 	lw	v0,496(s0)
    1900:	8e0e01f0 	lw	t6,496(s0)
    1904:	2401fffe 	li	at,-2
    1908:	c6060068 	lwc1	$f6,104(s0)
    190c:	01c17824 	and	t7,t6,at
    1910:	2401fffd 	li	at,-3
    1914:	ae0f01f0 	sw	t7,496(s0)
    1918:	01e1c824 	and	t9,t7,at
    191c:	ae1901f0 	sw	t9,496(s0)
    1920:	c7a8005c 	lwc1	$f8,92(sp)
    1924:	44800000 	mtc1	zero,$f0
    1928:	46083281 	sub.s	$f10,$f6,$f8
    192c:	e60a0068 	swc1	$f10,104(s0)
    1930:	c6040068 	lwc1	$f4,104(s0)
    1934:	4600203c 	c.lt.s	$f4,$f0
    1938:	00000000 	nop
    193c:	450200ba 	bc1fl	1c28 <func_80A5CAEC+0x42c>
    1940:	8fbf001c 	lw	ra,28(sp)
    1944:	100000b7 	b	1c24 <func_80A5CAEC+0x428>
    1948:	e6000068 	swc1	$f0,104(s0)
    194c:	8e0201f0 	lw	v0,496(s0)
    1950:	30480001 	andi	t0,v0,0x1
    1954:	11000035 	beqz	t0,1a2c <func_80A5CAEC+0x230>
    1958:	304c0002 	andi	t4,v0,0x2
    195c:	8e090240 	lw	t1,576(s0)
    1960:	240a0010 	li	t2,16
    1964:	8fa5004c 	lw	a1,76(sp)
    1968:	01495823 	subu	t3,t2,t1
    196c:	19600012 	blez	t3,19b8 <func_80A5CAEC+0x1bc>
    1970:	02002025 	move	a0,s0
    1974:	0c000000 	jal	0 <func_80A5B2F0>
    1978:	02002025 	move	a0,s0
    197c:	8e0c0208 	lw	t4,520(s0)
    1980:	8e0d0240 	lw	t5,576(s0)
    1984:	240e0010 	li	t6,16
    1988:	448c3000 	mtc1	t4,$f6
    198c:	01cd7823 	subu	t7,t6,t5
    1990:	c6020068 	lwc1	$f2,104(s0)
    1994:	46803220 	cvt.s.w	$f8,$f6
    1998:	448f3000 	mtc1	t7,$f6
    199c:	46080282 	mul.s	$f10,$f0,$f8
    19a0:	46803220 	cvt.s.w	$f8,$f6
    19a4:	46025101 	sub.s	$f4,$f10,$f2
    19a8:	46082283 	div.s	$f10,$f4,$f8
    19ac:	46025180 	add.s	$f6,$f10,$f2
    19b0:	10000009 	b	19d8 <func_80A5CAEC+0x1dc>
    19b4:	e6060068 	swc1	$f6,104(s0)
    19b8:	0c000000 	jal	0 <func_80A5B2F0>
    19bc:	8fa5004c 	lw	a1,76(sp)
    19c0:	8e180208 	lw	t8,520(s0)
    19c4:	44982000 	mtc1	t8,$f4
    19c8:	00000000 	nop
    19cc:	46802220 	cvt.s.w	$f8,$f4
    19d0:	46080282 	mul.s	$f10,$f0,$f8
    19d4:	e60a0068 	swc1	$f10,104(s0)
    19d8:	02002025 	move	a0,s0
    19dc:	0c000000 	jal	0 <func_80A5B2F0>
    19e0:	8fa5004c 	lw	a1,76(sp)
    19e4:	8e190208 	lw	t9,520(s0)
    19e8:	c6020068 	lwc1	$f2,104(s0)
    19ec:	44993000 	mtc1	t9,$f6
    19f0:	00000000 	nop
    19f4:	46803120 	cvt.s.w	$f4,$f6
    19f8:	46040202 	mul.s	$f8,$f0,$f4
    19fc:	4602403e 	c.le.s	$f8,$f2
    1a00:	00000000 	nop
    1a04:	45020048 	bc1fl	1b28 <func_80A5CAEC+0x32c>
    1a08:	87ad003e 	lh	t5,62(sp)
    1a0c:	8e0801f0 	lw	t0,496(s0)
    1a10:	2401fffe 	li	at,-2
    1a14:	c6020068 	lwc1	$f2,104(s0)
    1a18:	01015024 	and	t2,t0,at
    1a1c:	ae0a01f0 	sw	t2,496(s0)
    1a20:	354b0002 	ori	t3,t2,0x2
    1a24:	1000003f 	b	1b24 <func_80A5CAEC+0x328>
    1a28:	ae0b01f0 	sw	t3,496(s0)
    1a2c:	11800015 	beqz	t4,1a84 <func_80A5CAEC+0x288>
    1a30:	3c010000 	lui	at,0x0
    1a34:	c6020068 	lwc1	$f2,104(s0)
    1a38:	3c010000 	lui	at,0x0
    1a3c:	4602603c 	c.lt.s	$f12,$f2
    1a40:	00000000 	nop
    1a44:	45020007 	bc1fl	1a64 <func_80A5CAEC+0x268>
    1a48:	460c103c 	c.lt.s	$f2,$f12
    1a4c:	c42a0000 	lwc1	$f10,0(at)
    1a50:	460a1181 	sub.s	$f6,$f2,$f10
    1a54:	e6060068 	swc1	$f6,104(s0)
    1a58:	10000032 	b	1b24 <func_80A5CAEC+0x328>
    1a5c:	c6020068 	lwc1	$f2,104(s0)
    1a60:	460c103c 	c.lt.s	$f2,$f12
    1a64:	2401fffd 	li	at,-3
    1a68:	00417024 	and	t6,v0,at
    1a6c:	4502002e 	bc1fl	1b28 <func_80A5CAEC+0x32c>
    1a70:	87ad003e 	lh	t5,62(sp)
    1a74:	e60c0068 	swc1	$f12,104(s0)
    1a78:	c6020068 	lwc1	$f2,104(s0)
    1a7c:	10000029 	b	1b24 <func_80A5CAEC+0x328>
    1a80:	ae0e01f0 	sw	t6,496(s0)
    1a84:	c4240000 	lwc1	$f4,0(at)
    1a88:	c7aa0040 	lwc1	$f10,64(sp)
    1a8c:	c6020068 	lwc1	$f2,104(s0)
    1a90:	46046202 	mul.s	$f8,$f12,$f4
    1a94:	3c01bf80 	lui	at,0xbf80
    1a98:	460a4182 	mul.s	$f6,$f8,$f10
    1a9c:	4606103e 	c.le.s	$f2,$f6
    1aa0:	00000000 	nop
    1aa4:	45020006 	bc1fl	1ac0 <func_80A5CAEC+0x2c4>
    1aa8:	44810000 	mtc1	at,$f0
    1aac:	3c013f80 	lui	at,0x3f80
    1ab0:	44810000 	mtc1	at,$f0
    1ab4:	10000004 	b	1ac8 <func_80A5CAEC+0x2cc>
    1ab8:	3c014248 	lui	at,0x4248
    1abc:	44810000 	mtc1	at,$f0
    1ac0:	00000000 	nop
    1ac4:	3c014248 	lui	at,0x4248
    1ac8:	44812000 	mtc1	at,$f4
    1acc:	3c010000 	lui	at,0x0
    1ad0:	c42a0000 	lwc1	$f10,0(at)
    1ad4:	46040202 	mul.s	$f8,$f0,$f4
    1ad8:	00000000 	nop
    1adc:	460a4182 	mul.s	$f6,$f8,$f10
    1ae0:	46061100 	add.s	$f4,$f2,$f6
    1ae4:	e6040068 	swc1	$f4,104(s0)
    1ae8:	c6020068 	lwc1	$f2,104(s0)
    1aec:	c7a8005c 	lwc1	$f8,92(sp)
    1af0:	4602603c 	c.lt.s	$f12,$f2
    1af4:	00000000 	nop
    1af8:	4500000a 	bc1f	1b24 <func_80A5CAEC+0x328>
    1afc:	00000000 	nop
    1b00:	46081281 	sub.s	$f10,$f2,$f8
    1b04:	e60a0068 	swc1	$f10,104(s0)
    1b08:	c6020068 	lwc1	$f2,104(s0)
    1b0c:	460c103c 	c.lt.s	$f2,$f12
    1b10:	00000000 	nop
    1b14:	45020004 	bc1fl	1b28 <func_80A5CAEC+0x32c>
    1b18:	87ad003e 	lh	t5,62(sp)
    1b1c:	e60c0068 	swc1	$f12,104(s0)
    1b20:	c6020068 	lwc1	$f2,104(s0)
    1b24:	87ad003e 	lh	t5,62(sp)
    1b28:	8e0f0208 	lw	t7,520(s0)
    1b2c:	3c010000 	lui	at,0x0
    1b30:	448d3000 	mtc1	t5,$f6
    1b34:	448f5000 	mtc1	t7,$f10
    1b38:	c4240000 	lwc1	$f4,0(at)
    1b3c:	46803020 	cvt.s.w	$f0,$f6
    1b40:	3c013f80 	lui	at,0x3f80
    1b44:	44814000 	mtc1	at,$f8
    1b48:	3c010000 	lui	at,0x0
    1b4c:	87a30066 	lh	v1,102(sp)
    1b50:	468051a0 	cvt.s.w	$f6,$f10
    1b54:	46040302 	mul.s	$f12,$f0,$f4
    1b58:	0003c823 	negu	t9,v1
    1b5c:	46064103 	div.s	$f4,$f8,$f6
    1b60:	c4280000 	lwc1	$f8,0(at)
    1b64:	46041282 	mul.s	$f10,$f2,$f4
    1b68:	00000000 	nop
    1b6c:	460c0182 	mul.s	$f6,$f0,$f12
    1b70:	460a4381 	sub.s	$f14,$f8,$f10
    1b74:	460c3102 	mul.s	$f4,$f6,$f12
    1b78:	00000000 	nop
    1b7c:	460e2202 	mul.s	$f8,$f4,$f14
    1b80:	44992000 	mtc1	t9,$f4
    1b84:	4600428d 	trunc.w.s	$f10,$f8
    1b88:	46802220 	cvt.s.w	$f8,$f4
    1b8c:	44025000 	mfc1	v0,$f10
    1b90:	00000000 	nop
    1b94:	00021400 	sll	v0,v0,0x10
    1b98:	00021403 	sra	v0,v0,0x10
    1b9c:	44823000 	mtc1	v0,$f6
    1ba0:	460e4482 	mul.s	$f18,$f8,$f14
    1ba4:	46803420 	cvt.s.w	$f16,$f6
    1ba8:	4612803c 	c.lt.s	$f16,$f18
    1bac:	00000000 	nop
    1bb0:	45000007 	bc1f	1bd0 <func_80A5CAEC+0x3d4>
    1bb4:	00000000 	nop
    1bb8:	4600928d 	trunc.w.s	$f10,$f18
    1bbc:	44025000 	mfc1	v0,$f10
    1bc0:	00000000 	nop
    1bc4:	00021400 	sll	v0,v0,0x10
    1bc8:	10000011 	b	1c10 <func_80A5CAEC+0x414>
    1bcc:	00021403 	sra	v0,v0,0x10
    1bd0:	44833000 	mtc1	v1,$f6
    1bd4:	00000000 	nop
    1bd8:	46803120 	cvt.s.w	$f4,$f6
    1bdc:	460e2082 	mul.s	$f2,$f4,$f14
    1be0:	4610103c 	c.lt.s	$f2,$f16
    1be4:	00000000 	nop
    1be8:	45020004 	bc1fl	1bfc <func_80A5CAEC+0x400>
    1bec:	46008006 	mov.s	$f0,$f16
    1bf0:	10000002 	b	1bfc <func_80A5CAEC+0x400>
    1bf4:	46001006 	mov.s	$f0,$f2
    1bf8:	46008006 	mov.s	$f0,$f16
    1bfc:	4600020d 	trunc.w.s	$f8,$f0
    1c00:	44024000 	mfc1	v0,$f8
    1c04:	00000000 	nop
    1c08:	00021400 	sll	v0,v0,0x10
    1c0c:	00021403 	sra	v0,v0,0x10
    1c10:	86090032 	lh	t1,50(s0)
    1c14:	01225821 	addu	t3,t1,v0
    1c18:	a60b0032 	sh	t3,50(s0)
    1c1c:	860c0032 	lh	t4,50(s0)
    1c20:	a60c00b6 	sh	t4,182(s0)
    1c24:	8fbf001c 	lw	ra,28(sp)
    1c28:	8fb00018 	lw	s0,24(sp)
    1c2c:	27bd0048 	addiu	sp,sp,72
    1c30:	03e00008 	jr	ra
    1c34:	00000000 	nop

00001c38 <func_80A5CF28>:
    1c38:	44802000 	mtc1	zero,$f4
    1c3c:	27bdffe8 	addiu	sp,sp,-24
    1c40:	afbf0014 	sw	ra,20(sp)
    1c44:	e48401c4 	swc1	$f4,452(a0)
    1c48:	0c000000 	jal	0 <func_80A5B2F0>
    1c4c:	afa40018 	sw	a0,24(sp)
    1c50:	8fa40018 	lw	a0,24(sp)
    1c54:	2401efff 	li	at,-4097
    1c58:	8c8e01f0 	lw	t6,496(a0)
    1c5c:	01c17824 	and	t7,t6,at
    1c60:	ac8f01f0 	sw	t7,496(a0)
    1c64:	8fbf0014 	lw	ra,20(sp)
    1c68:	27bd0018 	addiu	sp,sp,24
    1c6c:	03e00008 	jr	ra
    1c70:	00000000 	nop

00001c74 <func_80A5CF64>:
    1c74:	27bdffc8 	addiu	sp,sp,-56
    1c78:	afbf002c 	sw	ra,44(sp)
    1c7c:	afb00028 	sw	s0,40(sp)
    1c80:	3c01420c 	lui	at,0x420c
    1c84:	44812000 	mtc1	at,$f4
    1c88:	c4800214 	lwc1	$f0,532(a0)
    1c8c:	240e0005 	li	t6,5
    1c90:	00808025 	move	s0,a0
    1c94:	4600203c 	c.lt.s	$f4,$f0
    1c98:	ac8e014c 	sw	t6,332(a0)
    1c9c:	ac800210 	sw	zero,528(a0)
    1ca0:	3c0141e0 	lui	at,0x41e0
    1ca4:	45020005 	bc1fl	1cbc <func_80A5CF64+0x48>
    1ca8:	44813000 	mtc1	at,$f6
    1cac:	8c820158 	lw	v0,344(a0)
    1cb0:	5040000b 	beqzl	v0,1ce0 <func_80A5CF64+0x6c>
    1cb4:	8e0301f0 	lw	v1,496(s0)
    1cb8:	44813000 	mtc1	at,$f6
    1cbc:	24010001 	li	at,1
    1cc0:	8e020158 	lw	v0,344(s0)
    1cc4:	4600303c 	c.lt.s	$f6,$f0
    1cc8:	00000000 	nop
    1ccc:	45020014 	bc1fl	1d20 <func_80A5CF64+0xac>
    1cd0:	c60801c4 	lwc1	$f8,452(s0)
    1cd4:	54410012 	bnel	v0,at,1d20 <func_80A5CF64+0xac>
    1cd8:	c60801c4 	lwc1	$f8,452(s0)
    1cdc:	8e0301f0 	lw	v1,496(s0)
    1ce0:	3c070000 	lui	a3,0x0
    1ce4:	24e70000 	addiu	a3,a3,0
    1ce8:	306f1000 	andi	t7,v1,0x1000
    1cec:	15e0000b 	bnez	t7,1d1c <func_80A5CF64+0xa8>
    1cf0:	34781000 	ori	t8,v1,0x1000
    1cf4:	3c190000 	lui	t9,0x0
    1cf8:	ae1801f0 	sw	t8,496(s0)
    1cfc:	27390000 	addiu	t9,t9,0
    1d00:	afb90014 	sw	t9,20(sp)
    1d04:	afa70010 	sw	a3,16(sp)
    1d08:	2404282c 	li	a0,10284
    1d0c:	260500e4 	addiu	a1,s0,228
    1d10:	0c000000 	jal	0 <func_80A5B2F0>
    1d14:	24060004 	li	a2,4
    1d18:	8e020158 	lw	v0,344(s0)
    1d1c:	c60801c4 	lwc1	$f8,452(s0)
    1d20:	00024080 	sll	t0,v0,0x2
    1d24:	3c090000 	lui	t1,0x0
    1d28:	e7a80034 	swc1	$f8,52(sp)
    1d2c:	8e0a0210 	lw	t2,528(s0)
    1d30:	01284821 	addu	t1,t1,t0
    1d34:	8d290000 	lw	t1,0(t1)
    1d38:	000a5880 	sll	t3,t2,0x2
    1d3c:	012b6021 	addu	t4,t1,t3
    1d40:	0c000000 	jal	0 <func_80A5B2F0>
    1d44:	8d840000 	lw	a0,0(t4)
    1d48:	8e0d0158 	lw	t5,344(s0)
    1d4c:	44825000 	mtc1	v0,$f10
    1d50:	3c0f0000 	lui	t7,0x0
    1d54:	000d7080 	sll	t6,t5,0x2
    1d58:	8e180210 	lw	t8,528(s0)
    1d5c:	01ee7821 	addu	t7,t7,t6
    1d60:	8def0000 	lw	t7,0(t7)
    1d64:	46805420 	cvt.s.w	$f16,$f10
    1d68:	0018c880 	sll	t9,t8,0x2
    1d6c:	3c01c040 	lui	at,0xc040
    1d70:	01f94021 	addu	t0,t7,t9
    1d74:	44819000 	mtc1	at,$f18
    1d78:	8d050000 	lw	a1,0(t0)
    1d7c:	240a0002 	li	t2,2
    1d80:	afaa0014 	sw	t2,20(sp)
    1d84:	e7b00010 	swc1	$f16,16(sp)
    1d88:	260401ac 	addiu	a0,s0,428
    1d8c:	3c063f80 	lui	a2,0x3f80
    1d90:	8fa70034 	lw	a3,52(sp)
    1d94:	0c000000 	jal	0 <func_80A5B2F0>
    1d98:	e7b20018 	swc1	$f18,24(sp)
    1d9c:	8fbf002c 	lw	ra,44(sp)
    1da0:	8fb00028 	lw	s0,40(sp)
    1da4:	27bd0038 	addiu	sp,sp,56
    1da8:	03e00008 	jr	ra
    1dac:	00000000 	nop

00001db0 <func_80A5D0A0>:
    1db0:	27bdffd8 	addiu	sp,sp,-40
    1db4:	44802000 	mtc1	zero,$f4
    1db8:	afb00018 	sw	s0,24(sp)
    1dbc:	00808025 	move	s0,a0
    1dc0:	afbf001c 	sw	ra,28(sp)
    1dc4:	afa5002c 	sw	a1,44(sp)
    1dc8:	a7a00022 	sh	zero,34(sp)
    1dcc:	27a50024 	addiu	a1,sp,36
    1dd0:	24840264 	addiu	a0,a0,612
    1dd4:	27a60022 	addiu	a2,sp,34
    1dd8:	0c000000 	jal	0 <func_80A5B2F0>
    1ddc:	e484fe04 	swc1	$f4,-508(a0)
    1de0:	3c014120 	lui	at,0x4120
    1de4:	44813000 	mtc1	at,$f6
    1de8:	c7a80024 	lwc1	$f8,36(sp)
    1dec:	02002025 	move	a0,s0
    1df0:	4608303c 	c.lt.s	$f6,$f8
    1df4:	00000000 	nop
    1df8:	45000022 	bc1f	1e84 <func_80A5D0A0+0xd4>
    1dfc:	00000000 	nop
    1e00:	0c000000 	jal	0 <func_80A5B2F0>
    1e04:	8fa5002c 	lw	a1,44(sp)
    1e08:	24010001 	li	at,1
    1e0c:	1441001d 	bne	v0,at,1e84 <func_80A5D0A0+0xd4>
    1e10:	00000000 	nop
    1e14:	0c000000 	jal	0 <func_80A5B2F0>
    1e18:	87a40022 	lh	a0,34(sp)
    1e1c:	3c01bf00 	lui	at,0xbf00
    1e20:	44815000 	mtc1	at,$f10
    1e24:	00000000 	nop
    1e28:	460a003e 	c.le.s	$f0,$f10
    1e2c:	00000000 	nop
    1e30:	45000005 	bc1f	1e48 <func_80A5D0A0+0x98>
    1e34:	00000000 	nop
    1e38:	0c000000 	jal	0 <func_80A5B2F0>
    1e3c:	02002025 	move	a0,s0
    1e40:	10000010 	b	1e84 <func_80A5D0A0+0xd4>
    1e44:	00000000 	nop
    1e48:	0c000000 	jal	0 <func_80A5B2F0>
    1e4c:	87a40022 	lh	a0,34(sp)
    1e50:	3c010000 	lui	at,0x0
    1e54:	d4300000 	ldc1	$f16,0(at)
    1e58:	460004a1 	cvt.d.s	$f18,$f0
    1e5c:	4630903e 	c.le.d	$f18,$f16
    1e60:	00000000 	nop
    1e64:	45000005 	bc1f	1e7c <func_80A5D0A0+0xcc>
    1e68:	00000000 	nop
    1e6c:	0c000000 	jal	0 <func_80A5B2F0>
    1e70:	02002025 	move	a0,s0
    1e74:	10000003 	b	1e84 <func_80A5D0A0+0xd4>
    1e78:	00000000 	nop
    1e7c:	0c000000 	jal	0 <func_80A5B2F0>
    1e80:	02002025 	move	a0,s0
    1e84:	0c000000 	jal	0 <func_80A5B2F0>
    1e88:	260401ac 	addiu	a0,s0,428
    1e8c:	50400004 	beqzl	v0,1ea0 <func_80A5D0A0+0xf0>
    1e90:	8fbf001c 	lw	ra,28(sp)
    1e94:	0c000000 	jal	0 <func_80A5B2F0>
    1e98:	02002025 	move	a0,s0
    1e9c:	8fbf001c 	lw	ra,28(sp)
    1ea0:	8fb00018 	lw	s0,24(sp)
    1ea4:	27bd0028 	addiu	sp,sp,40
    1ea8:	03e00008 	jr	ra
    1eac:	00000000 	nop

00001eb0 <func_80A5D1A0>:
    1eb0:	44802000 	mtc1	zero,$f4
    1eb4:	27bdffe8 	addiu	sp,sp,-24
    1eb8:	afbf0014 	sw	ra,20(sp)
    1ebc:	0c000000 	jal	0 <func_80A5B2F0>
    1ec0:	e48401c4 	swc1	$f4,452(a0)
    1ec4:	8fbf0014 	lw	ra,20(sp)
    1ec8:	27bd0018 	addiu	sp,sp,24
    1ecc:	03e00008 	jr	ra
    1ed0:	00000000 	nop

00001ed4 <func_80A5D1C4>:
    1ed4:	27bdffc8 	addiu	sp,sp,-56
    1ed8:	afbf002c 	sw	ra,44(sp)
    1edc:	afb00028 	sw	s0,40(sp)
    1ee0:	c48401c4 	lwc1	$f4,452(a0)
    1ee4:	240e0006 	li	t6,6
    1ee8:	240f0001 	li	t7,1
    1eec:	ac8e014c 	sw	t6,332(a0)
    1ef0:	ac8f0210 	sw	t7,528(a0)
    1ef4:	e7a40034 	swc1	$f4,52(sp)
    1ef8:	8c980158 	lw	t8,344(a0)
    1efc:	3c080000 	lui	t0,0x0
    1f00:	00808025 	move	s0,a0
    1f04:	0018c880 	sll	t9,t8,0x2
    1f08:	01194021 	addu	t0,t0,t9
    1f0c:	8d080000 	lw	t0,0(t0)
    1f10:	0c000000 	jal	0 <func_80A5B2F0>
    1f14:	8d040004 	lw	a0,4(t0)
    1f18:	8e090158 	lw	t1,344(s0)
    1f1c:	44823000 	mtc1	v0,$f6
    1f20:	3c0b0000 	lui	t3,0x0
    1f24:	00095080 	sll	t2,t1,0x2
    1f28:	8e0c0210 	lw	t4,528(s0)
    1f2c:	016a5821 	addu	t3,t3,t2
    1f30:	8d6b0000 	lw	t3,0(t3)
    1f34:	46803220 	cvt.s.w	$f8,$f6
    1f38:	000c6880 	sll	t5,t4,0x2
    1f3c:	3c01c040 	lui	at,0xc040
    1f40:	016d7021 	addu	t6,t3,t5
    1f44:	44815000 	mtc1	at,$f10
    1f48:	8dc50000 	lw	a1,0(t6)
    1f4c:	240f0002 	li	t7,2
    1f50:	afaf0014 	sw	t7,20(sp)
    1f54:	e7a80010 	swc1	$f8,16(sp)
    1f58:	260401ac 	addiu	a0,s0,428
    1f5c:	3c063f80 	lui	a2,0x3f80
    1f60:	8fa70034 	lw	a3,52(sp)
    1f64:	0c000000 	jal	0 <func_80A5B2F0>
    1f68:	e7aa0018 	swc1	$f10,24(sp)
    1f6c:	8e190228 	lw	t9,552(s0)
    1f70:	2605021c 	addiu	a1,s0,540
    1f74:	3c070000 	lui	a3,0x0
    1f78:	acb90000 	sw	t9,0(a1)
    1f7c:	8e18022c 	lw	t8,556(s0)
    1f80:	3c0a0000 	lui	t2,0x0
    1f84:	24e70000 	addiu	a3,a3,0
    1f88:	acb80004 	sw	t8,4(a1)
    1f8c:	8e190230 	lw	t9,560(s0)
    1f90:	254a0000 	addiu	t2,t2,0
    1f94:	24042816 	li	a0,10262
    1f98:	acb90008 	sw	t9,8(a1)
    1f9c:	8e0801f0 	lw	t0,496(s0)
    1fa0:	24060004 	li	a2,4
    1fa4:	00084900 	sll	t1,t0,0x4
    1fa8:	05230005 	bgezl	t1,1fc0 <func_80A5D1C4+0xec>
    1fac:	8fbf002c 	lw	ra,44(sp)
    1fb0:	afa70010 	sw	a3,16(sp)
    1fb4:	0c000000 	jal	0 <func_80A5B2F0>
    1fb8:	afaa0014 	sw	t2,20(sp)
    1fbc:	8fbf002c 	lw	ra,44(sp)
    1fc0:	8fb00028 	lw	s0,40(sp)
    1fc4:	27bd0038 	addiu	sp,sp,56
    1fc8:	03e00008 	jr	ra
    1fcc:	00000000 	nop

00001fd0 <func_80A5D2C0>:
    1fd0:	27bdffd8 	addiu	sp,sp,-40
    1fd4:	44802000 	mtc1	zero,$f4
    1fd8:	afb00018 	sw	s0,24(sp)
    1fdc:	00808025 	move	s0,a0
    1fe0:	afbf001c 	sw	ra,28(sp)
    1fe4:	afa5002c 	sw	a1,44(sp)
    1fe8:	a7a00022 	sh	zero,34(sp)
    1fec:	27a50024 	addiu	a1,sp,36
    1ff0:	24840264 	addiu	a0,a0,612
    1ff4:	27a60022 	addiu	a2,sp,34
    1ff8:	0c000000 	jal	0 <func_80A5B2F0>
    1ffc:	e484fe04 	swc1	$f4,-508(a0)
    2000:	3c014120 	lui	at,0x4120
    2004:	44813000 	mtc1	at,$f6
    2008:	c7a80024 	lwc1	$f8,36(sp)
    200c:	02002025 	move	a0,s0
    2010:	4608303c 	c.lt.s	$f6,$f8
    2014:	00000000 	nop
    2018:	45000022 	bc1f	20a4 <func_80A5D2C0+0xd4>
    201c:	00000000 	nop
    2020:	0c000000 	jal	0 <func_80A5B2F0>
    2024:	8fa5002c 	lw	a1,44(sp)
    2028:	24010001 	li	at,1
    202c:	1441001d 	bne	v0,at,20a4 <func_80A5D2C0+0xd4>
    2030:	00000000 	nop
    2034:	0c000000 	jal	0 <func_80A5B2F0>
    2038:	87a40022 	lh	a0,34(sp)
    203c:	3c01bf00 	lui	at,0xbf00
    2040:	44815000 	mtc1	at,$f10
    2044:	00000000 	nop
    2048:	460a003e 	c.le.s	$f0,$f10
    204c:	00000000 	nop
    2050:	45000005 	bc1f	2068 <func_80A5D2C0+0x98>
    2054:	00000000 	nop
    2058:	0c000000 	jal	0 <func_80A5B2F0>
    205c:	02002025 	move	a0,s0
    2060:	10000010 	b	20a4 <func_80A5D2C0+0xd4>
    2064:	00000000 	nop
    2068:	0c000000 	jal	0 <func_80A5B2F0>
    206c:	87a40022 	lh	a0,34(sp)
    2070:	3c010000 	lui	at,0x0
    2074:	d4300000 	ldc1	$f16,0(at)
    2078:	460004a1 	cvt.d.s	$f18,$f0
    207c:	4630903e 	c.le.d	$f18,$f16
    2080:	00000000 	nop
    2084:	45000005 	bc1f	209c <func_80A5D2C0+0xcc>
    2088:	00000000 	nop
    208c:	0c000000 	jal	0 <func_80A5B2F0>
    2090:	02002025 	move	a0,s0
    2094:	10000003 	b	20a4 <func_80A5D2C0+0xd4>
    2098:	00000000 	nop
    209c:	0c000000 	jal	0 <func_80A5B2F0>
    20a0:	02002025 	move	a0,s0
    20a4:	0c000000 	jal	0 <func_80A5B2F0>
    20a8:	260401ac 	addiu	a0,s0,428
    20ac:	50400004 	beqzl	v0,20c0 <func_80A5D2C0+0xf0>
    20b0:	8fbf001c 	lw	ra,28(sp)
    20b4:	0c000000 	jal	0 <func_80A5B2F0>
    20b8:	02002025 	move	a0,s0
    20bc:	8fbf001c 	lw	ra,28(sp)
    20c0:	8fb00018 	lw	s0,24(sp)
    20c4:	27bd0028 	addiu	sp,sp,40
    20c8:	03e00008 	jr	ra
    20cc:	00000000 	nop

000020d0 <func_80A5D3C0>:
    20d0:	27bdffd0 	addiu	sp,sp,-48
    20d4:	afbf002c 	sw	ra,44(sp)
    20d8:	afb00028 	sw	s0,40(sp)
    20dc:	8c980158 	lw	t8,344(a0)
    20e0:	240e0007 	li	t6,7
    20e4:	240f0004 	li	t7,4
    20e8:	3c080000 	lui	t0,0x0
    20ec:	0018c880 	sll	t9,t8,0x2
    20f0:	ac8e014c 	sw	t6,332(a0)
    20f4:	ac800218 	sw	zero,536(a0)
    20f8:	ac8f0210 	sw	t7,528(a0)
    20fc:	01194021 	addu	t0,t0,t9
    2100:	8d080000 	lw	t0,0(t0)
    2104:	00808025 	move	s0,a0
    2108:	0c000000 	jal	0 <func_80A5B2F0>
    210c:	8d040010 	lw	a0,16(t0)
    2110:	8e090158 	lw	t1,344(s0)
    2114:	44822000 	mtc1	v0,$f4
    2118:	3c0b0000 	lui	t3,0x0
    211c:	00095080 	sll	t2,t1,0x2
    2120:	8e0c0210 	lw	t4,528(s0)
    2124:	016a5821 	addu	t3,t3,t2
    2128:	8d6b0000 	lw	t3,0(t3)
    212c:	468021a0 	cvt.s.w	$f6,$f4
    2130:	000c6880 	sll	t5,t4,0x2
    2134:	3c01c040 	lui	at,0xc040
    2138:	016d7021 	addu	t6,t3,t5
    213c:	44814000 	mtc1	at,$f8
    2140:	8dc50000 	lw	a1,0(t6)
    2144:	240f0002 	li	t7,2
    2148:	afaf0014 	sw	t7,20(sp)
    214c:	e7a60010 	swc1	$f6,16(sp)
    2150:	260401ac 	addiu	a0,s0,428
    2154:	3c063f80 	lui	a2,0x3f80
    2158:	24070000 	li	a3,0
    215c:	0c000000 	jal	0 <func_80A5B2F0>
    2160:	e7a80018 	swc1	$f8,24(sp)
    2164:	8fbf002c 	lw	ra,44(sp)
    2168:	8fb00028 	lw	s0,40(sp)
    216c:	27bd0030 	addiu	sp,sp,48
    2170:	03e00008 	jr	ra
    2174:	00000000 	nop

00002178 <func_80A5D468>:
    2178:	27bdffd0 	addiu	sp,sp,-48
    217c:	44802000 	mtc1	zero,$f4
    2180:	afbf001c 	sw	ra,28(sp)
    2184:	afb00018 	sw	s0,24(sp)
    2188:	afa50034 	sw	a1,52(sp)
    218c:	00808025 	move	s0,a0
    2190:	0c000000 	jal	0 <func_80A5B2F0>
    2194:	e4840068 	swc1	$f4,104(a0)
    2198:	26040264 	addiu	a0,s0,612
    219c:	27a5002c 	addiu	a1,sp,44
    21a0:	0c000000 	jal	0 <func_80A5B2F0>
    21a4:	27a60028 	addiu	a2,sp,40
    21a8:	3c014120 	lui	at,0x4120
    21ac:	44813000 	mtc1	at,$f6
    21b0:	c7a8002c 	lwc1	$f8,44(sp)
    21b4:	02002025 	move	a0,s0
    21b8:	4608303c 	c.lt.s	$f6,$f8
    21bc:	00000000 	nop
    21c0:	45000045 	bc1f	22d8 <func_80A5D468+0x160>
    21c4:	00000000 	nop
    21c8:	0c000000 	jal	0 <func_80A5B2F0>
    21cc:	8fa50034 	lw	a1,52(sp)
    21d0:	14400005 	bnez	v0,21e8 <func_80A5D468+0x70>
    21d4:	00000000 	nop
    21d8:	0c000000 	jal	0 <func_80A5B2F0>
    21dc:	02002025 	move	a0,s0
    21e0:	1000003d 	b	22d8 <func_80A5D468+0x160>
    21e4:	00000000 	nop
    21e8:	0c000000 	jal	0 <func_80A5B2F0>
    21ec:	87a40028 	lh	a0,40(sp)
    21f0:	3c01bf00 	lui	at,0xbf00
    21f4:	44815000 	mtc1	at,$f10
    21f8:	00000000 	nop
    21fc:	460a003e 	c.le.s	$f0,$f10
    2200:	00000000 	nop
    2204:	45000005 	bc1f	221c <func_80A5D468+0xa4>
    2208:	00000000 	nop
    220c:	0c000000 	jal	0 <func_80A5B2F0>
    2210:	02002025 	move	a0,s0
    2214:	10000030 	b	22d8 <func_80A5D468+0x160>
    2218:	00000000 	nop
    221c:	0c000000 	jal	0 <func_80A5B2F0>
    2220:	87a40028 	lh	a0,40(sp)
    2224:	3c010000 	lui	at,0x0
    2228:	d4300000 	ldc1	$f16,0(at)
    222c:	460004a1 	cvt.d.s	$f18,$f0
    2230:	87ae0028 	lh	t6,40(sp)
    2234:	4630903e 	c.le.d	$f18,$f16
    2238:	00000000 	nop
    223c:	45000024 	bc1f	22d0 <func_80A5D468+0x158>
    2240:	00000000 	nop
    2244:	448e2000 	mtc1	t6,$f4
    2248:	3c01c448 	lui	at,0xc448
    224c:	44811000 	mtc1	at,$f2
    2250:	46802020 	cvt.s.w	$f0,$f4
    2254:	3c014448 	lui	at,0x4448
    2258:	4602003c 	c.lt.s	$f0,$f2
    225c:	00000000 	nop
    2260:	45020008 	bc1fl	2284 <func_80A5D468+0x10c>
    2264:	44816000 	mtc1	at,$f12
    2268:	4600118d 	trunc.w.s	$f6,$f2
    226c:	44023000 	mfc1	v0,$f6
    2270:	00000000 	nop
    2274:	00021400 	sll	v0,v0,0x10
    2278:	1000000f 	b	22b8 <func_80A5D468+0x140>
    227c:	00021403 	sra	v0,v0,0x10
    2280:	44816000 	mtc1	at,$f12
    2284:	00000000 	nop
    2288:	4600603c 	c.lt.s	$f12,$f0
    228c:	00000000 	nop
    2290:	45020004 	bc1fl	22a4 <func_80A5D468+0x12c>
    2294:	46000086 	mov.s	$f2,$f0
    2298:	10000002 	b	22a4 <func_80A5D468+0x12c>
    229c:	46006086 	mov.s	$f2,$f12
    22a0:	46000086 	mov.s	$f2,$f0
    22a4:	4600120d 	trunc.w.s	$f8,$f2
    22a8:	44024000 	mfc1	v0,$f8
    22ac:	00000000 	nop
    22b0:	00021400 	sll	v0,v0,0x10
    22b4:	00021403 	sra	v0,v0,0x10
    22b8:	86190032 	lh	t9,50(s0)
    22bc:	03224021 	addu	t0,t9,v0
    22c0:	a6080032 	sh	t0,50(s0)
    22c4:	86090032 	lh	t1,50(s0)
    22c8:	10000003 	b	22d8 <func_80A5D468+0x160>
    22cc:	a60900b6 	sh	t1,182(s0)
    22d0:	0c000000 	jal	0 <func_80A5B2F0>
    22d4:	02002025 	move	a0,s0
    22d8:	0c000000 	jal	0 <func_80A5B2F0>
    22dc:	260401ac 	addiu	a0,s0,428
    22e0:	50400011 	beqzl	v0,2328 <func_80A5D468+0x1b0>
    22e4:	8fbf001c 	lw	ra,28(sp)
    22e8:	0c000000 	jal	0 <func_80A5B2F0>
    22ec:	87a40028 	lh	a0,40(sp)
    22f0:	3c010000 	lui	at,0x0
    22f4:	d42a0000 	ldc1	$f10,0(at)
    22f8:	46000421 	cvt.d.s	$f16,$f0
    22fc:	462a803e 	c.le.d	$f16,$f10
    2300:	00000000 	nop
    2304:	45000005 	bc1f	231c <func_80A5D468+0x1a4>
    2308:	00000000 	nop
    230c:	0c000000 	jal	0 <func_80A5B2F0>
    2310:	02002025 	move	a0,s0
    2314:	10000004 	b	2328 <func_80A5D468+0x1b0>
    2318:	8fbf001c 	lw	ra,28(sp)
    231c:	0c000000 	jal	0 <func_80A5B2F0>
    2320:	02002025 	move	a0,s0
    2324:	8fbf001c 	lw	ra,28(sp)
    2328:	8fb00018 	lw	s0,24(sp)
    232c:	27bd0030 	addiu	sp,sp,48
    2330:	03e00008 	jr	ra
    2334:	00000000 	nop

00002338 <func_80A5D628>:
    2338:	27bdffe8 	addiu	sp,sp,-24
    233c:	afbf0014 	sw	ra,20(sp)
    2340:	0c000000 	jal	0 <func_80A5B2F0>
    2344:	afa40018 	sw	a0,24(sp)
    2348:	8fa40018 	lw	a0,24(sp)
    234c:	8c8201f0 	lw	v0,496(a0)
    2350:	304e0100 	andi	t6,v0,0x100
    2354:	15c00007 	bnez	t6,2374 <func_80A5D628+0x3c>
    2358:	304f0200 	andi	t7,v0,0x200
    235c:	15e00005 	bnez	t7,2374 <func_80A5D628+0x3c>
    2360:	34580200 	ori	t8,v0,0x200
    2364:	24190008 	li	t9,8
    2368:	ac9801f0 	sw	t8,496(a0)
    236c:	10000002 	b	2378 <func_80A5D628+0x40>
    2370:	a499037c 	sh	t9,892(a0)
    2374:	a480037c 	sh	zero,892(a0)
    2378:	8fbf0014 	lw	ra,20(sp)
    237c:	27bd0018 	addiu	sp,sp,24
    2380:	03e00008 	jr	ra
    2384:	00000000 	nop

00002388 <func_80A5D678>:
    2388:	27bdffe8 	addiu	sp,sp,-24
    238c:	afbf0014 	sw	ra,20(sp)
    2390:	ac800150 	sw	zero,336(a0)
    2394:	0c000000 	jal	0 <func_80A5B2F0>
    2398:	ac800154 	sw	zero,340(a0)
    239c:	8fbf0014 	lw	ra,20(sp)
    23a0:	27bd0018 	addiu	sp,sp,24
    23a4:	03e00008 	jr	ra
    23a8:	00000000 	nop

000023ac <func_80A5D69C>:
    23ac:	27bdffd0 	addiu	sp,sp,-48
    23b0:	afbf002c 	sw	ra,44(sp)
    23b4:	afb00028 	sw	s0,40(sp)
    23b8:	8c980158 	lw	t8,344(a0)
    23bc:	240e0008 	li	t6,8
    23c0:	240f0004 	li	t7,4
    23c4:	3c080000 	lui	t0,0x0
    23c8:	0018c880 	sll	t9,t8,0x2
    23cc:	ac8e014c 	sw	t6,332(a0)
    23d0:	ac800218 	sw	zero,536(a0)
    23d4:	ac8f0210 	sw	t7,528(a0)
    23d8:	a480037c 	sh	zero,892(a0)
    23dc:	01194021 	addu	t0,t0,t9
    23e0:	8d080000 	lw	t0,0(t0)
    23e4:	00808025 	move	s0,a0
    23e8:	0c000000 	jal	0 <func_80A5B2F0>
    23ec:	8d040010 	lw	a0,16(t0)
    23f0:	8e090158 	lw	t1,344(s0)
    23f4:	44822000 	mtc1	v0,$f4
    23f8:	3c0b0000 	lui	t3,0x0
    23fc:	00095080 	sll	t2,t1,0x2
    2400:	8e0c0210 	lw	t4,528(s0)
    2404:	016a5821 	addu	t3,t3,t2
    2408:	8d6b0000 	lw	t3,0(t3)
    240c:	468021a0 	cvt.s.w	$f6,$f4
    2410:	000c6880 	sll	t5,t4,0x2
    2414:	3c01c040 	lui	at,0xc040
    2418:	016d7021 	addu	t6,t3,t5
    241c:	44814000 	mtc1	at,$f8
    2420:	8dc50000 	lw	a1,0(t6)
    2424:	240f0002 	li	t7,2
    2428:	afaf0014 	sw	t7,20(sp)
    242c:	e7a60010 	swc1	$f6,16(sp)
    2430:	260401ac 	addiu	a0,s0,428
    2434:	3c063f80 	lui	a2,0x3f80
    2438:	24070000 	li	a3,0
    243c:	0c000000 	jal	0 <func_80A5B2F0>
    2440:	e7a80018 	swc1	$f8,24(sp)
    2444:	8fbf002c 	lw	ra,44(sp)
    2448:	8fb00028 	lw	s0,40(sp)
    244c:	27bd0030 	addiu	sp,sp,48
    2450:	03e00008 	jr	ra
    2454:	00000000 	nop

00002458 <func_80A5D748>:
    2458:	27bdffe8 	addiu	sp,sp,-24
    245c:	afbf0014 	sw	ra,20(sp)
    2460:	240e0008 	li	t6,8
    2464:	240f0004 	li	t7,4
    2468:	00803025 	move	a2,a0
    246c:	ac8e014c 	sw	t6,332(a0)
    2470:	ac800218 	sw	zero,536(a0)
    2474:	ac8f0210 	sw	t7,528(a0)
    2478:	a480037c 	sh	zero,892(a0)
    247c:	8cd80158 	lw	t8,344(a2)
    2480:	3c080000 	lui	t0,0x0
    2484:	248401ac 	addiu	a0,a0,428
    2488:	0018c880 	sll	t9,t8,0x2
    248c:	01194021 	addu	t0,t0,t9
    2490:	8d080000 	lw	t0,0(t0)
    2494:	0c000000 	jal	0 <func_80A5B2F0>
    2498:	8d050010 	lw	a1,16(t0)
    249c:	8fbf0014 	lw	ra,20(sp)
    24a0:	27bd0018 	addiu	sp,sp,24
    24a4:	03e00008 	jr	ra
    24a8:	00000000 	nop

000024ac <func_80A5D79C>:
    24ac:	27bdffc0 	addiu	sp,sp,-64
    24b0:	afbf002c 	sw	ra,44(sp)
    24b4:	afb00028 	sw	s0,40(sp)
    24b8:	00808025 	move	s0,a0
    24bc:	0c000000 	jal	0 <func_80A5B2F0>
    24c0:	afa50044 	sw	a1,68(sp)
    24c4:	26040264 	addiu	a0,s0,612
    24c8:	27a5003c 	addiu	a1,sp,60
    24cc:	0c000000 	jal	0 <func_80A5B2F0>
    24d0:	27a6003a 	addiu	a2,sp,58
    24d4:	8e0e0154 	lw	t6,340(s0)
    24d8:	44806000 	mtc1	zero,$f12
    24dc:	3c063e99 	lui	a2,0x3e99
    24e0:	448e2000 	mtc1	t6,$f4
    24e4:	34c6999a 	ori	a2,a2,0x999a
    24e8:	02002025 	move	a0,s0
    24ec:	46802020 	cvt.s.w	$f0,$f4
    24f0:	8fa50044 	lw	a1,68(sp)
    24f4:	3c07bf00 	lui	a3,0xbf00
    24f8:	24180190 	li	t8,400
    24fc:	46006032 	c.eq.s	$f12,$f0
    2500:	00000000 	nop
    2504:	45030011 	bc1tl	254c <func_80A5D79C+0xa0>
    2508:	3c014120 	lui	at,0x4120
    250c:	8e0f0150 	lw	t7,336(s0)
    2510:	3c0141a0 	lui	at,0x41a0
    2514:	448f3000 	mtc1	t7,$f6
    2518:	00000000 	nop
    251c:	468030a0 	cvt.s.w	$f2,$f6
    2520:	4602603c 	c.lt.s	$f12,$f2
    2524:	00000000 	nop
    2528:	45020016 	bc1fl	2584 <func_80A5D79C+0xd8>
    252c:	3c014040 	lui	at,0x4040
    2530:	44814000 	mtc1	at,$f8
    2534:	00000000 	nop
    2538:	46080281 	sub.s	$f10,$f0,$f8
    253c:	460a103c 	c.lt.s	$f2,$f10
    2540:	00000000 	nop
    2544:	4500000e 	bc1f	2580 <func_80A5D79C+0xd4>
    2548:	3c014120 	lui	at,0x4120
    254c:	44818000 	mtc1	at,$f16
    2550:	3c010000 	lui	at,0x0
    2554:	c4320000 	lwc1	$f18,0(at)
    2558:	3c014040 	lui	at,0x4040
    255c:	44812000 	mtc1	at,$f4
    2560:	afb8001c 	sw	t8,28(sp)
    2564:	e7b00010 	swc1	$f16,16(sp)
    2568:	e7b20014 	swc1	$f18,20(sp)
    256c:	0c000000 	jal	0 <func_80A5B2F0>
    2570:	e7a40018 	swc1	$f4,24(sp)
    2574:	44806000 	mtc1	zero,$f12
    2578:	10000006 	b	2594 <func_80A5D79C+0xe8>
    257c:	c6000068 	lwc1	$f0,104(s0)
    2580:	3c014040 	lui	at,0x4040
    2584:	44813000 	mtc1	at,$f6
    2588:	00000000 	nop
    258c:	e6060068 	swc1	$f6,104(s0)
    2590:	c6000068 	lwc1	$f0,104(s0)
    2594:	3c014040 	lui	at,0x4040
    2598:	46006032 	c.eq.s	$f12,$f0
    259c:	00000000 	nop
    25a0:	4502000c 	bc1fl	25d4 <func_80A5D79C+0x128>
    25a4:	44814000 	mtc1	at,$f8
    25a8:	8e1901f0 	lw	t9,496(s0)
    25ac:	2401fdff 	li	at,-513
    25b0:	02002025 	move	a0,s0
    25b4:	03214024 	and	t0,t9,at
    25b8:	0c000000 	jal	0 <func_80A5B2F0>
    25bc:	ae0801f0 	sw	t0,496(s0)
    25c0:	44806000 	mtc1	zero,$f12
    25c4:	ae000150 	sw	zero,336(s0)
    25c8:	10000010 	b	260c <func_80A5D79C+0x160>
    25cc:	ae000154 	sw	zero,340(s0)
    25d0:	44814000 	mtc1	at,$f8
    25d4:	00000000 	nop
    25d8:	4600403c 	c.lt.s	$f8,$f0
    25dc:	00000000 	nop
    25e0:	4502000b 	bc1fl	2610 <func_80A5D79C+0x164>
    25e4:	8e020150 	lw	v0,336(s0)
    25e8:	8e0901f0 	lw	t1,496(s0)
    25ec:	2401fdff 	li	at,-513
    25f0:	02002025 	move	a0,s0
    25f4:	01215024 	and	t2,t1,at
    25f8:	0c000000 	jal	0 <func_80A5B2F0>
    25fc:	ae0a01f0 	sw	t2,496(s0)
    2600:	44806000 	mtc1	zero,$f12
    2604:	ae000150 	sw	zero,336(s0)
    2608:	ae000154 	sw	zero,340(s0)
    260c:	8e020150 	lw	v0,336(s0)
    2610:	44825000 	mtc1	v0,$f10
    2614:	244cffff 	addiu	t4,v0,-1
    2618:	46805420 	cvt.s.w	$f16,$f10
    261c:	4610603c 	c.lt.s	$f12,$f16
    2620:	00000000 	nop
    2624:	4502000a 	bc1fl	2650 <func_80A5D79C+0x1a4>
    2628:	8602037c 	lh	v0,892(s0)
    262c:	448c9000 	mtc1	t4,$f18
    2630:	ae0c0150 	sw	t4,336(s0)
    2634:	46809120 	cvt.s.w	$f4,$f18
    2638:	460c203e 	c.le.s	$f4,$f12
    263c:	00000000 	nop
    2640:	45020003 	bc1fl	2650 <func_80A5D79C+0x1a4>
    2644:	8602037c 	lh	v0,892(s0)
    2648:	ae000154 	sw	zero,340(s0)
    264c:	8602037c 	lh	v0,892(s0)
    2650:	1c400042 	bgtz	v0,275c <func_80A5D79C+0x2b0>
    2654:	2458ffff 	addiu	t8,v0,-1
    2658:	8e0d01f0 	lw	t5,496(s0)
    265c:	2401fdff 	li	at,-513
    2660:	c6060068 	lwc1	$f6,104(s0)
    2664:	01a17024 	and	t6,t5,at
    2668:	3c013f40 	lui	at,0x3f40
    266c:	44814000 	mtc1	at,$f8
    2670:	ae0e01f0 	sw	t6,496(s0)
    2674:	260401ac 	addiu	a0,s0,428
    2678:	46083282 	mul.s	$f10,$f6,$f8
    267c:	0c000000 	jal	0 <func_80A5B2F0>
    2680:	e60a01c8 	swc1	$f10,456(s0)
    2684:	44806000 	mtc1	zero,$f12
    2688:	54400007 	bnezl	v0,26a8 <func_80A5D79C+0x1fc>
    268c:	8e0f0150 	lw	t7,336(s0)
    2690:	c6100068 	lwc1	$f16,104(s0)
    2694:	46106032 	c.eq.s	$f12,$f16
    2698:	00000000 	nop
    269c:	45020032 	bc1fl	2768 <func_80A5D79C+0x2bc>
    26a0:	8fbf002c 	lw	ra,44(sp)
    26a4:	8e0f0150 	lw	t7,336(s0)
    26a8:	3c014040 	lui	at,0x4040
    26ac:	448f9000 	mtc1	t7,$f18
    26b0:	00000000 	nop
    26b4:	46809120 	cvt.s.w	$f4,$f18
    26b8:	460c203e 	c.le.s	$f4,$f12
    26bc:	00000000 	nop
    26c0:	45020029 	bc1fl	2768 <func_80A5D79C+0x2bc>
    26c4:	8fbf002c 	lw	ra,44(sp)
    26c8:	44813000 	mtc1	at,$f6
    26cc:	c6080068 	lwc1	$f8,104(s0)
    26d0:	3c014120 	lui	at,0x4120
    26d4:	c7aa003c 	lwc1	$f10,60(sp)
    26d8:	4608303c 	c.lt.s	$f6,$f8
    26dc:	00000000 	nop
    26e0:	45020007 	bc1fl	2700 <func_80A5D79C+0x254>
    26e4:	44818000 	mtc1	at,$f16
    26e8:	0c000000 	jal	0 <func_80A5B2F0>
    26ec:	02002025 	move	a0,s0
    26f0:	ae000150 	sw	zero,336(s0)
    26f4:	1000001b 	b	2764 <func_80A5D79C+0x2b8>
    26f8:	ae000154 	sw	zero,340(s0)
    26fc:	44818000 	mtc1	at,$f16
    2700:	00000000 	nop
    2704:	4610503c 	c.lt.s	$f10,$f16
    2708:	00000000 	nop
    270c:	4501000a 	bc1t	2738 <func_80A5D79C+0x28c>
    2710:	00000000 	nop
    2714:	0c000000 	jal	0 <func_80A5B2F0>
    2718:	87a4003a 	lh	a0,58(sp)
    271c:	3c01bf00 	lui	at,0xbf00
    2720:	44819000 	mtc1	at,$f18
    2724:	00000000 	nop
    2728:	4612003e 	c.le.s	$f0,$f18
    272c:	00000000 	nop
    2730:	45000006 	bc1f	274c <func_80A5D79C+0x2a0>
    2734:	00000000 	nop
    2738:	0c000000 	jal	0 <func_80A5B2F0>
    273c:	02002025 	move	a0,s0
    2740:	ae000150 	sw	zero,336(s0)
    2744:	10000007 	b	2764 <func_80A5D79C+0x2b8>
    2748:	ae000154 	sw	zero,340(s0)
    274c:	0c000000 	jal	0 <func_80A5B2F0>
    2750:	02002025 	move	a0,s0
    2754:	10000004 	b	2768 <func_80A5D79C+0x2bc>
    2758:	8fbf002c 	lw	ra,44(sp)
    275c:	e60c0068 	swc1	$f12,104(s0)
    2760:	a618037c 	sh	t8,892(s0)
    2764:	8fbf002c 	lw	ra,44(sp)
    2768:	8fb00028 	lw	s0,40(sp)
    276c:	27bd0040 	addiu	sp,sp,64
    2770:	03e00008 	jr	ra
    2774:	00000000 	nop

00002778 <func_80A5DA68>:
    2778:	27bdffd0 	addiu	sp,sp,-48
    277c:	afbf002c 	sw	ra,44(sp)
    2780:	afb00028 	sw	s0,40(sp)
    2784:	8c980158 	lw	t8,344(a0)
    2788:	240e0009 	li	t6,9
    278c:	240f0005 	li	t7,5
    2790:	3c080000 	lui	t0,0x0
    2794:	0018c880 	sll	t9,t8,0x2
    2798:	ac8e014c 	sw	t6,332(a0)
    279c:	ac8f0210 	sw	t7,528(a0)
    27a0:	01194021 	addu	t0,t0,t9
    27a4:	8d080000 	lw	t0,0(t0)
    27a8:	00808025 	move	s0,a0
    27ac:	0c000000 	jal	0 <func_80A5B2F0>
    27b0:	8d040014 	lw	a0,20(t0)
    27b4:	8e090158 	lw	t1,344(s0)
    27b8:	44822000 	mtc1	v0,$f4
    27bc:	3c0b0000 	lui	t3,0x0
    27c0:	00095080 	sll	t2,t1,0x2
    27c4:	8e0c0210 	lw	t4,528(s0)
    27c8:	016a5821 	addu	t3,t3,t2
    27cc:	8d6b0000 	lw	t3,0(t3)
    27d0:	468021a0 	cvt.s.w	$f6,$f4
    27d4:	000c6880 	sll	t5,t4,0x2
    27d8:	3c01c040 	lui	at,0xc040
    27dc:	016d7021 	addu	t6,t3,t5
    27e0:	44814000 	mtc1	at,$f8
    27e4:	8dc50000 	lw	a1,0(t6)
    27e8:	240f0002 	li	t7,2
    27ec:	afaf0014 	sw	t7,20(sp)
    27f0:	e7a60010 	swc1	$f6,16(sp)
    27f4:	260401ac 	addiu	a0,s0,428
    27f8:	3c063f80 	lui	a2,0x3f80
    27fc:	24070000 	li	a3,0
    2800:	0c000000 	jal	0 <func_80A5B2F0>
    2804:	e7a80018 	swc1	$f8,24(sp)
    2808:	8fbf002c 	lw	ra,44(sp)
    280c:	8fb00028 	lw	s0,40(sp)
    2810:	27bd0030 	addiu	sp,sp,48
    2814:	03e00008 	jr	ra
    2818:	00000000 	nop

0000281c <func_80A5DB0C>:
    281c:	27bdffe8 	addiu	sp,sp,-24
    2820:	afbf0014 	sw	ra,20(sp)
    2824:	240e0009 	li	t6,9
    2828:	240f0005 	li	t7,5
    282c:	00803025 	move	a2,a0
    2830:	ac8e014c 	sw	t6,332(a0)
    2834:	ac8f0210 	sw	t7,528(a0)
    2838:	8cd80158 	lw	t8,344(a2)
    283c:	3c080000 	lui	t0,0x0
    2840:	248401ac 	addiu	a0,a0,428
    2844:	0018c880 	sll	t9,t8,0x2
    2848:	01194021 	addu	t0,t0,t9
    284c:	8d080000 	lw	t0,0(t0)
    2850:	0c000000 	jal	0 <func_80A5B2F0>
    2854:	8d050014 	lw	a1,20(t0)
    2858:	8fbf0014 	lw	ra,20(sp)
    285c:	27bd0018 	addiu	sp,sp,24
    2860:	03e00008 	jr	ra
    2864:	00000000 	nop

00002868 <func_80A5DB58>:
    2868:	3c014120 	lui	at,0x4120
    286c:	44812000 	mtc1	at,$f4
    2870:	27bdffc0 	addiu	sp,sp,-64
    2874:	3c010000 	lui	at,0x0
    2878:	c4260000 	lwc1	$f6,0(at)
    287c:	3c0140c0 	lui	at,0x40c0
    2880:	44814000 	mtc1	at,$f8
    2884:	afbf002c 	sw	ra,44(sp)
    2888:	afb00028 	sw	s0,40(sp)
    288c:	3c063e99 	lui	a2,0x3e99
    2890:	240e0190 	li	t6,400
    2894:	00808025 	move	s0,a0
    2898:	afae001c 	sw	t6,28(sp)
    289c:	34c6999a 	ori	a2,a2,0x999a
    28a0:	3c07bf00 	lui	a3,0xbf00
    28a4:	e7a40010 	swc1	$f4,16(sp)
    28a8:	e7a60014 	swc1	$f6,20(sp)
    28ac:	0c000000 	jal	0 <func_80A5B2F0>
    28b0:	e7a80018 	swc1	$f8,24(sp)
    28b4:	26040264 	addiu	a0,s0,612
    28b8:	27a5003c 	addiu	a1,sp,60
    28bc:	0c000000 	jal	0 <func_80A5B2F0>
    28c0:	27a6003a 	addiu	a2,sp,58
    28c4:	3c014040 	lui	at,0x4040
    28c8:	44815000 	mtc1	at,$f10
    28cc:	c6000068 	lwc1	$f0,104(s0)
    28d0:	460a003c 	c.lt.s	$f0,$f10
    28d4:	00000000 	nop
    28d8:	45020005 	bc1fl	28f0 <func_80A5DB58+0x88>
    28dc:	3c013ec0 	lui	at,0x3ec0
    28e0:	0c000000 	jal	0 <func_80A5B2F0>
    28e4:	02002025 	move	a0,s0
    28e8:	c6000068 	lwc1	$f0,104(s0)
    28ec:	3c013ec0 	lui	at,0x3ec0
    28f0:	44818000 	mtc1	at,$f16
    28f4:	260401ac 	addiu	a0,s0,428
    28f8:	46100482 	mul.s	$f18,$f0,$f16
    28fc:	0c000000 	jal	0 <func_80A5B2F0>
    2900:	e61201c8 	swc1	$f18,456(s0)
    2904:	50400021 	beqzl	v0,298c <func_80A5DB58+0x124>
    2908:	8fbf002c 	lw	ra,44(sp)
    290c:	0c000000 	jal	0 <func_80A5B2F0>
    2910:	02002025 	move	a0,s0
    2914:	44806000 	mtc1	zero,$f12
    2918:	2405003c 	li	a1,60
    291c:	24060008 	li	a2,8
    2920:	0c000000 	jal	0 <func_80A5B2F0>
    2924:	240700ff 	li	a3,255
    2928:	3c0140c0 	lui	at,0x40c0
    292c:	44812000 	mtc1	at,$f4
    2930:	c6000068 	lwc1	$f0,104(s0)
    2934:	3c014040 	lui	at,0x4040
    2938:	4600203e 	c.le.s	$f4,$f0
    293c:	00000000 	nop
    2940:	45020006 	bc1fl	295c <func_80A5DB58+0xf4>
    2944:	44813000 	mtc1	at,$f6
    2948:	0c000000 	jal	0 <func_80A5B2F0>
    294c:	02002025 	move	a0,s0
    2950:	1000000e 	b	298c <func_80A5DB58+0x124>
    2954:	8fbf002c 	lw	ra,44(sp)
    2958:	44813000 	mtc1	at,$f6
    295c:	00000000 	nop
    2960:	4606003c 	c.lt.s	$f0,$f6
    2964:	00000000 	nop
    2968:	45000005 	bc1f	2980 <func_80A5DB58+0x118>
    296c:	00000000 	nop
    2970:	0c000000 	jal	0 <func_80A5B2F0>
    2974:	02002025 	move	a0,s0
    2978:	10000004 	b	298c <func_80A5DB58+0x124>
    297c:	8fbf002c 	lw	ra,44(sp)
    2980:	0c000000 	jal	0 <func_80A5B2F0>
    2984:	02002025 	move	a0,s0
    2988:	8fbf002c 	lw	ra,44(sp)
    298c:	8fb00028 	lw	s0,40(sp)
    2990:	27bd0040 	addiu	sp,sp,64
    2994:	03e00008 	jr	ra
    2998:	00000000 	nop

0000299c <func_80A5DC8C>:
    299c:	27bdffe8 	addiu	sp,sp,-24
    29a0:	afbf0014 	sw	ra,20(sp)
    29a4:	ac800154 	sw	zero,340(a0)
    29a8:	0c000000 	jal	0 <func_80A5B2F0>
    29ac:	ac800150 	sw	zero,336(a0)
    29b0:	8fbf0014 	lw	ra,20(sp)
    29b4:	27bd0018 	addiu	sp,sp,24
    29b8:	03e00008 	jr	ra
    29bc:	00000000 	nop

000029c0 <func_80A5DCB0>:
    29c0:	27bdffd0 	addiu	sp,sp,-48
    29c4:	afbf002c 	sw	ra,44(sp)
    29c8:	afb00028 	sw	s0,40(sp)
    29cc:	8c980158 	lw	t8,344(a0)
    29d0:	240e000a 	li	t6,10
    29d4:	240f0006 	li	t7,6
    29d8:	3c080000 	lui	t0,0x0
    29dc:	0018c880 	sll	t9,t8,0x2
    29e0:	ac8e014c 	sw	t6,332(a0)
    29e4:	ac8f0210 	sw	t7,528(a0)
    29e8:	ac800234 	sw	zero,564(a0)
    29ec:	01194021 	addu	t0,t0,t9
    29f0:	8d080000 	lw	t0,0(t0)
    29f4:	00808025 	move	s0,a0
    29f8:	0c000000 	jal	0 <func_80A5B2F0>
    29fc:	8d040018 	lw	a0,24(t0)
    2a00:	8e090158 	lw	t1,344(s0)
    2a04:	44822000 	mtc1	v0,$f4
    2a08:	3c0b0000 	lui	t3,0x0
    2a0c:	00095080 	sll	t2,t1,0x2
    2a10:	8e0c0210 	lw	t4,528(s0)
    2a14:	016a5821 	addu	t3,t3,t2
    2a18:	8d6b0000 	lw	t3,0(t3)
    2a1c:	468021a0 	cvt.s.w	$f6,$f4
    2a20:	000c6880 	sll	t5,t4,0x2
    2a24:	3c01c040 	lui	at,0xc040
    2a28:	016d7021 	addu	t6,t3,t5
    2a2c:	44814000 	mtc1	at,$f8
    2a30:	8dc50000 	lw	a1,0(t6)
    2a34:	240f0002 	li	t7,2
    2a38:	afaf0014 	sw	t7,20(sp)
    2a3c:	e7a60010 	swc1	$f6,16(sp)
    2a40:	260401ac 	addiu	a0,s0,428
    2a44:	3c063f80 	lui	a2,0x3f80
    2a48:	24070000 	li	a3,0
    2a4c:	0c000000 	jal	0 <func_80A5B2F0>
    2a50:	e7a80018 	swc1	$f8,24(sp)
    2a54:	8fbf002c 	lw	ra,44(sp)
    2a58:	8fb00028 	lw	s0,40(sp)
    2a5c:	27bd0030 	addiu	sp,sp,48
    2a60:	03e00008 	jr	ra
    2a64:	00000000 	nop

00002a68 <func_80A5DD58>:
    2a68:	27bdffe8 	addiu	sp,sp,-24
    2a6c:	afbf0014 	sw	ra,20(sp)
    2a70:	240e000a 	li	t6,10
    2a74:	240f0006 	li	t7,6
    2a78:	00803025 	move	a2,a0
    2a7c:	ac800154 	sw	zero,340(a0)
    2a80:	ac800150 	sw	zero,336(a0)
    2a84:	ac8e014c 	sw	t6,332(a0)
    2a88:	ac8f0210 	sw	t7,528(a0)
    2a8c:	ac800234 	sw	zero,564(a0)
    2a90:	8cd80158 	lw	t8,344(a2)
    2a94:	3c080000 	lui	t0,0x0
    2a98:	248401ac 	addiu	a0,a0,428
    2a9c:	0018c880 	sll	t9,t8,0x2
    2aa0:	01194021 	addu	t0,t0,t9
    2aa4:	8d080000 	lw	t0,0(t0)
    2aa8:	0c000000 	jal	0 <func_80A5B2F0>
    2aac:	8d050018 	lw	a1,24(t0)
    2ab0:	8fbf0014 	lw	ra,20(sp)
    2ab4:	27bd0018 	addiu	sp,sp,24
    2ab8:	03e00008 	jr	ra
    2abc:	00000000 	nop

00002ac0 <func_80A5DDB0>:
    2ac0:	27bdffe8 	addiu	sp,sp,-24
    2ac4:	afbf0014 	sw	ra,20(sp)
    2ac8:	afa5001c 	sw	a1,28(sp)
    2acc:	240e000a 	li	t6,10
    2ad0:	240f0006 	li	t7,6
    2ad4:	00803025 	move	a2,a0
    2ad8:	ac8e014c 	sw	t6,332(a0)
    2adc:	ac8f0210 	sw	t7,528(a0)
    2ae0:	8cd80158 	lw	t8,344(a2)
    2ae4:	3c080000 	lui	t0,0x0
    2ae8:	248401ac 	addiu	a0,a0,428
    2aec:	0018c880 	sll	t9,t8,0x2
    2af0:	01194021 	addu	t0,t0,t9
    2af4:	8d080000 	lw	t0,0(t0)
    2af8:	8d050018 	lw	a1,24(t0)
    2afc:	0c000000 	jal	0 <func_80A5B2F0>
    2b00:	afa60018 	sw	a2,24(sp)
    2b04:	8fa60018 	lw	a2,24(sp)
    2b08:	3c010000 	lui	at,0x0
    2b0c:	c4280000 	lwc1	$f8,0(at)
    2b10:	8cc201cc 	lw	v0,460(a2)
    2b14:	c4c6025c 	lwc1	$f6,604(a2)
    2b18:	84490002 	lh	t1,2(v0)
    2b1c:	acc00244 	sw	zero,580(a2)
    2b20:	44892000 	mtc1	t1,$f4
    2b24:	00000000 	nop
    2b28:	46802020 	cvt.s.w	$f0,$f4
    2b2c:	46080282 	mul.s	$f10,$f0,$f8
    2b30:	460a3400 	add.s	$f16,$f6,$f10
    2b34:	e4d0025c 	swc1	$f16,604(a2)
    2b38:	8fbf0014 	lw	ra,20(sp)
    2b3c:	27bd0018 	addiu	sp,sp,24
    2b40:	03e00008 	jr	ra
    2b44:	00000000 	nop

00002b48 <func_80A5DE38>:
    2b48:	27bdffc0 	addiu	sp,sp,-64
    2b4c:	afb00028 	sw	s0,40(sp)
    2b50:	00808025 	move	s0,a0
    2b54:	afbf002c 	sw	ra,44(sp)
    2b58:	afa50044 	sw	a1,68(sp)
    2b5c:	27a5003c 	addiu	a1,sp,60
    2b60:	24840264 	addiu	a0,a0,612
    2b64:	0c000000 	jal	0 <func_80A5B2F0>
    2b68:	27a6003a 	addiu	a2,sp,58
    2b6c:	8e020150 	lw	v0,336(s0)
    2b70:	44801000 	mtc1	zero,$f2
    2b74:	3c063e99 	lui	a2,0x3e99
    2b78:	44822000 	mtc1	v0,$f4
    2b7c:	34c6999a 	ori	a2,a2,0x999a
    2b80:	02002025 	move	a0,s0
    2b84:	46802020 	cvt.s.w	$f0,$f4
    2b88:	8fa50044 	lw	a1,68(sp)
    2b8c:	3c07bf00 	lui	a3,0xbf00
    2b90:	3c014120 	lui	at,0x4120
    2b94:	240e0190 	li	t6,400
    2b98:	4602003e 	c.le.s	$f0,$f2
    2b9c:	00000000 	nop
    2ba0:	4502000e 	bc1fl	2bdc <func_80A5DE38+0x94>
    2ba4:	4600103c 	c.lt.s	$f2,$f0
    2ba8:	44813000 	mtc1	at,$f6
    2bac:	3c010000 	lui	at,0x0
    2bb0:	c4280000 	lwc1	$f8,0(at)
    2bb4:	3c014100 	lui	at,0x4100
    2bb8:	44815000 	mtc1	at,$f10
    2bbc:	afae001c 	sw	t6,28(sp)
    2bc0:	e7a60010 	swc1	$f6,16(sp)
    2bc4:	e7a80014 	swc1	$f8,20(sp)
    2bc8:	0c000000 	jal	0 <func_80A5B2F0>
    2bcc:	e7aa0018 	swc1	$f10,24(sp)
    2bd0:	1000000a 	b	2bfc <func_80A5DE38+0xb4>
    2bd4:	3c0140c0 	lui	at,0x40c0
    2bd8:	4600103c 	c.lt.s	$f2,$f0
    2bdc:	3c014100 	lui	at,0x4100
    2be0:	45020006 	bc1fl	2bfc <func_80A5DE38+0xb4>
    2be4:	3c0140c0 	lui	at,0x40c0
    2be8:	44818000 	mtc1	at,$f16
    2bec:	244fffff 	addiu	t7,v0,-1
    2bf0:	ae0f0150 	sw	t7,336(s0)
    2bf4:	e6100068 	swc1	$f16,104(s0)
    2bf8:	3c0140c0 	lui	at,0x40c0
    2bfc:	44819000 	mtc1	at,$f18
    2c00:	c6000068 	lwc1	$f0,104(s0)
    2c04:	4612003c 	c.lt.s	$f0,$f18
    2c08:	00000000 	nop
    2c0c:	45000004 	bc1f	2c20 <func_80A5DE38+0xd8>
    2c10:	00000000 	nop
    2c14:	0c000000 	jal	0 <func_80A5B2F0>
    2c18:	02002025 	move	a0,s0
    2c1c:	c6000068 	lwc1	$f0,104(s0)
    2c20:	3c010000 	lui	at,0x0
    2c24:	c4240000 	lwc1	$f4,0(at)
    2c28:	260401ac 	addiu	a0,s0,428
    2c2c:	46040182 	mul.s	$f6,$f0,$f4
    2c30:	0c000000 	jal	0 <func_80A5B2F0>
    2c34:	e60601c8 	swc1	$f6,456(s0)
    2c38:	50400034 	beqzl	v0,2d0c <func_80A5DE38+0x1c4>
    2c3c:	8fbf002c 	lw	ra,44(sp)
    2c40:	0c000000 	jal	0 <func_80A5B2F0>
    2c44:	02002025 	move	a0,s0
    2c48:	44806000 	mtc1	zero,$f12
    2c4c:	24050078 	li	a1,120
    2c50:	24060008 	li	a2,8
    2c54:	0c000000 	jal	0 <func_80A5B2F0>
    2c58:	240700ff 	li	a3,255
    2c5c:	02002025 	move	a0,s0
    2c60:	0c000000 	jal	0 <func_80A5B2F0>
    2c64:	8fa50044 	lw	a1,68(sp)
    2c68:	24010001 	li	at,1
    2c6c:	14410024 	bne	v0,at,2d00 <func_80A5DE38+0x1b8>
    2c70:	c7a8003c 	lwc1	$f8,60(sp)
    2c74:	3c014120 	lui	at,0x4120
    2c78:	44815000 	mtc1	at,$f10
    2c7c:	00000000 	nop
    2c80:	4608503e 	c.le.s	$f10,$f8
    2c84:	00000000 	nop
    2c88:	4502000f 	bc1fl	2cc8 <func_80A5DE38+0x180>
    2c8c:	3c0140c0 	lui	at,0x40c0
    2c90:	0c000000 	jal	0 <func_80A5B2F0>
    2c94:	87a4003a 	lh	a0,58(sp)
    2c98:	3c01bf00 	lui	at,0xbf00
    2c9c:	44818000 	mtc1	at,$f16
    2ca0:	02002025 	move	a0,s0
    2ca4:	4610003e 	c.le.s	$f0,$f16
    2ca8:	00000000 	nop
    2cac:	45020006 	bc1fl	2cc8 <func_80A5DE38+0x180>
    2cb0:	3c0140c0 	lui	at,0x40c0
    2cb4:	0c000000 	jal	0 <func_80A5B2F0>
    2cb8:	8fa50044 	lw	a1,68(sp)
    2cbc:	10000013 	b	2d0c <func_80A5DE38+0x1c4>
    2cc0:	8fbf002c 	lw	ra,44(sp)
    2cc4:	3c0140c0 	lui	at,0x40c0
    2cc8:	44812000 	mtc1	at,$f4
    2ccc:	c6120068 	lwc1	$f18,104(s0)
    2cd0:	4604903c 	c.lt.s	$f18,$f4
    2cd4:	00000000 	nop
    2cd8:	45000005 	bc1f	2cf0 <func_80A5DE38+0x1a8>
    2cdc:	00000000 	nop
    2ce0:	0c000000 	jal	0 <func_80A5B2F0>
    2ce4:	02002025 	move	a0,s0
    2ce8:	10000008 	b	2d0c <func_80A5DE38+0x1c4>
    2cec:	8fbf002c 	lw	ra,44(sp)
    2cf0:	0c000000 	jal	0 <func_80A5B2F0>
    2cf4:	02002025 	move	a0,s0
    2cf8:	10000004 	b	2d0c <func_80A5DE38+0x1c4>
    2cfc:	8fbf002c 	lw	ra,44(sp)
    2d00:	0c000000 	jal	0 <func_80A5B2F0>
    2d04:	02002025 	move	a0,s0
    2d08:	8fbf002c 	lw	ra,44(sp)
    2d0c:	8fb00028 	lw	s0,40(sp)
    2d10:	27bd0040 	addiu	sp,sp,64
    2d14:	03e00008 	jr	ra
    2d18:	00000000 	nop

00002d1c <func_80A5E00C>:
    2d1c:	27bdffd0 	addiu	sp,sp,-48
    2d20:	afbf002c 	sw	ra,44(sp)
    2d24:	afb00028 	sw	s0,40(sp)
    2d28:	8c9801f0 	lw	t8,496(a0)
    2d2c:	8c890228 	lw	t1,552(a0)
    2d30:	2401f7ff 	li	at,-2049
    2d34:	240e000b 	li	t6,11
    2d38:	240f0003 	li	t7,3
    2d3c:	0301c824 	and	t9,t8,at
    2d40:	ac8e014c 	sw	t6,332(a0)
    2d44:	ac8f0210 	sw	t7,528(a0)
    2d48:	ac9901f0 	sw	t9,496(a0)
    2d4c:	2485021c 	addiu	a1,a0,540
    2d50:	aca90000 	sw	t1,0(a1)
    2d54:	8c88022c 	lw	t0,556(a0)
    2d58:	00808025 	move	s0,a0
    2d5c:	3c070000 	lui	a3,0x0
    2d60:	aca80004 	sw	t0,4(a1)
    2d64:	8c890230 	lw	t1,560(a0)
    2d68:	3c0c0000 	lui	t4,0x0
    2d6c:	24e70000 	addiu	a3,a3,0
    2d70:	aca90008 	sw	t1,8(a1)
    2d74:	8c8a01f0 	lw	t2,496(a0)
    2d78:	24042805 	li	a0,10245
    2d7c:	258c0000 	addiu	t4,t4,0
    2d80:	000a5900 	sll	t3,t2,0x4
    2d84:	05610004 	bgez	t3,2d98 <func_80A5E00C+0x7c>
    2d88:	24060004 	li	a2,4
    2d8c:	afa70010 	sw	a3,16(sp)
    2d90:	0c000000 	jal	0 <func_80A5B2F0>
    2d94:	afac0014 	sw	t4,20(sp)
    2d98:	44806000 	mtc1	zero,$f12
    2d9c:	240500b4 	li	a1,180
    2da0:	24060014 	li	a2,20
    2da4:	0c000000 	jal	0 <func_80A5B2F0>
    2da8:	24070064 	li	a3,100
    2dac:	8e0d0158 	lw	t5,344(s0)
    2db0:	3c0f0000 	lui	t7,0x0
    2db4:	8e180210 	lw	t8,528(s0)
    2db8:	000d7080 	sll	t6,t5,0x2
    2dbc:	01ee7821 	addu	t7,t7,t6
    2dc0:	8def0000 	lw	t7,0(t7)
    2dc4:	0018c880 	sll	t9,t8,0x2
    2dc8:	01f94021 	addu	t0,t7,t9
    2dcc:	0c000000 	jal	0 <func_80A5B2F0>
    2dd0:	8d040000 	lw	a0,0(t0)
    2dd4:	8e090158 	lw	t1,344(s0)
    2dd8:	44822000 	mtc1	v0,$f4
    2ddc:	3c0b0000 	lui	t3,0x0
    2de0:	00095080 	sll	t2,t1,0x2
    2de4:	8e0c0210 	lw	t4,528(s0)
    2de8:	016a5821 	addu	t3,t3,t2
    2dec:	8d6b0000 	lw	t3,0(t3)
    2df0:	468021a0 	cvt.s.w	$f6,$f4
    2df4:	000c6880 	sll	t5,t4,0x2
    2df8:	3c01c040 	lui	at,0xc040
    2dfc:	016d7021 	addu	t6,t3,t5
    2e00:	44814000 	mtc1	at,$f8
    2e04:	8dc50000 	lw	a1,0(t6)
    2e08:	24180002 	li	t8,2
    2e0c:	afb80014 	sw	t8,20(sp)
    2e10:	e7a60010 	swc1	$f6,16(sp)
    2e14:	260401ac 	addiu	a0,s0,428
    2e18:	3c063f80 	lui	a2,0x3f80
    2e1c:	24070000 	li	a3,0
    2e20:	0c000000 	jal	0 <func_80A5B2F0>
    2e24:	e7a80018 	swc1	$f8,24(sp)
    2e28:	8fbf002c 	lw	ra,44(sp)
    2e2c:	8fb00028 	lw	s0,40(sp)
    2e30:	27bd0030 	addiu	sp,sp,48
    2e34:	03e00008 	jr	ra
    2e38:	00000000 	nop

00002e3c <func_80A5E12C>:
    2e3c:	27bdffc8 	addiu	sp,sp,-56
    2e40:	afbf0024 	sw	ra,36(sp)
    2e44:	afb00020 	sw	s0,32(sp)
    2e48:	afa5003c 	sw	a1,60(sp)
    2e4c:	3c0141c8 	lui	at,0x41c8
    2e50:	44813000 	mtc1	at,$f6
    2e54:	c4880214 	lwc1	$f8,532(a0)
    2e58:	44802000 	mtc1	zero,$f4
    2e5c:	00808025 	move	s0,a0
    2e60:	4608303c 	c.lt.s	$f6,$f8
    2e64:	e4840068 	swc1	$f4,104(a0)
    2e68:	45020016 	bc1fl	2ec4 <func_80A5E12C+0x88>
    2e6c:	26040264 	addiu	a0,s0,612
    2e70:	8c8201f0 	lw	v0,496(a0)
    2e74:	3c070000 	lui	a3,0x0
    2e78:	24e70000 	addiu	a3,a3,0
    2e7c:	304e0800 	andi	t6,v0,0x800
    2e80:	15c0000f 	bnez	t6,2ec0 <func_80A5E12C+0x84>
    2e84:	344f0800 	ori	t7,v0,0x800
    2e88:	ac8f01f0 	sw	t7,496(a0)
    2e8c:	3c180000 	lui	t8,0x0
    2e90:	27180000 	addiu	t8,t8,0
    2e94:	afb80014 	sw	t8,20(sp)
    2e98:	afa70010 	sw	a3,16(sp)
    2e9c:	2404282b 	li	a0,10283
    2ea0:	260500e4 	addiu	a1,s0,228
    2ea4:	0c000000 	jal	0 <func_80A5B2F0>
    2ea8:	24060004 	li	a2,4
    2eac:	44806000 	mtc1	zero,$f12
    2eb0:	240500b4 	li	a1,180
    2eb4:	24060014 	li	a2,20
    2eb8:	0c000000 	jal	0 <func_80A5B2F0>
    2ebc:	24070064 	li	a3,100
    2ec0:	26040264 	addiu	a0,s0,612
    2ec4:	27a50034 	addiu	a1,sp,52
    2ec8:	0c000000 	jal	0 <func_80A5B2F0>
    2ecc:	27a60032 	addiu	a2,sp,50
    2ed0:	0c000000 	jal	0 <func_80A5B2F0>
    2ed4:	260401ac 	addiu	a0,s0,428
    2ed8:	10400032 	beqz	v0,2fa4 <func_80A5E12C+0x168>
    2edc:	02002025 	move	a0,s0
    2ee0:	0c000000 	jal	0 <func_80A5B2F0>
    2ee4:	8fa5003c 	lw	a1,60(sp)
    2ee8:	24010001 	li	at,1
    2eec:	1441002b 	bne	v0,at,2f9c <func_80A5E12C+0x160>
    2ef0:	00000000 	nop
    2ef4:	8e0201f0 	lw	v0,496(s0)
    2ef8:	24030064 	li	v1,100
    2efc:	2401ffef 	li	at,-17
    2f00:	30590010 	andi	t9,v0,0x10
    2f04:	13200009 	beqz	t9,2f2c <func_80A5E12C+0xf0>
    2f08:	30490020 	andi	t1,v0,0x20
    2f0c:	00414024 	and	t0,v0,at
    2f10:	ae030150 	sw	v1,336(s0)
    2f14:	ae030154 	sw	v1,340(s0)
    2f18:	ae0801f0 	sw	t0,496(s0)
    2f1c:	0c000000 	jal	0 <func_80A5B2F0>
    2f20:	02002025 	move	a0,s0
    2f24:	10000020 	b	2fa8 <func_80A5E12C+0x16c>
    2f28:	8fbf0024 	lw	ra,36(sp)
    2f2c:	1120000a 	beqz	t1,2f58 <func_80A5E12C+0x11c>
    2f30:	24030064 	li	v1,100
    2f34:	2401ffdf 	li	at,-33
    2f38:	00415024 	and	t2,v0,at
    2f3c:	ae030150 	sw	v1,336(s0)
    2f40:	ae030154 	sw	v1,340(s0)
    2f44:	ae0a01f0 	sw	t2,496(s0)
    2f48:	0c000000 	jal	0 <func_80A5B2F0>
    2f4c:	02002025 	move	a0,s0
    2f50:	10000015 	b	2fa8 <func_80A5E12C+0x16c>
    2f54:	8fbf0024 	lw	ra,36(sp)
    2f58:	0c000000 	jal	0 <func_80A5B2F0>
    2f5c:	87a40032 	lh	a0,50(sp)
    2f60:	3c01bf00 	lui	at,0xbf00
    2f64:	44815000 	mtc1	at,$f10
    2f68:	00000000 	nop
    2f6c:	460a003e 	c.le.s	$f0,$f10
    2f70:	00000000 	nop
    2f74:	45000005 	bc1f	2f8c <func_80A5E12C+0x150>
    2f78:	00000000 	nop
    2f7c:	0c000000 	jal	0 <func_80A5B2F0>
    2f80:	02002025 	move	a0,s0
    2f84:	10000008 	b	2fa8 <func_80A5E12C+0x16c>
    2f88:	8fbf0024 	lw	ra,36(sp)
    2f8c:	0c000000 	jal	0 <func_80A5B2F0>
    2f90:	02002025 	move	a0,s0
    2f94:	10000004 	b	2fa8 <func_80A5E12C+0x16c>
    2f98:	8fbf0024 	lw	ra,36(sp)
    2f9c:	0c000000 	jal	0 <func_80A5B2F0>
    2fa0:	02002025 	move	a0,s0
    2fa4:	8fbf0024 	lw	ra,36(sp)
    2fa8:	8fb00020 	lw	s0,32(sp)
    2fac:	27bd0038 	addiu	sp,sp,56
    2fb0:	03e00008 	jr	ra
    2fb4:	00000000 	nop

00002fb8 <func_80A5E2A8>:
    2fb8:	27bdffd0 	addiu	sp,sp,-48
    2fbc:	afbf002c 	sw	ra,44(sp)
    2fc0:	afb00028 	sw	s0,40(sp)
    2fc4:	afa50034 	sw	a1,52(sp)
    2fc8:	240e000c 	li	t6,12
    2fcc:	240f0002 	li	t7,2
    2fd0:	3c070000 	lui	a3,0x0
    2fd4:	ac8e014c 	sw	t6,332(a0)
    2fd8:	ac8f0210 	sw	t7,528(a0)
    2fdc:	3c180000 	lui	t8,0x0
    2fe0:	24e70000 	addiu	a3,a3,0
    2fe4:	00808025 	move	s0,a0
    2fe8:	27180000 	addiu	t8,t8,0
    2fec:	afb80014 	sw	t8,20(sp)
    2ff0:	260500e4 	addiu	a1,s0,228
    2ff4:	2404281a 	li	a0,10266
    2ff8:	afa70010 	sw	a3,16(sp)
    2ffc:	0c000000 	jal	0 <func_80A5B2F0>
    3000:	24060004 	li	a2,4
    3004:	8e190158 	lw	t9,344(s0)
    3008:	3c090000 	lui	t1,0x0
    300c:	8e0a0210 	lw	t2,528(s0)
    3010:	00194080 	sll	t0,t9,0x2
    3014:	01284821 	addu	t1,t1,t0
    3018:	8d290000 	lw	t1,0(t1)
    301c:	000a5880 	sll	t3,t2,0x2
    3020:	012b6021 	addu	t4,t1,t3
    3024:	0c000000 	jal	0 <func_80A5B2F0>
    3028:	8d840000 	lw	a0,0(t4)
    302c:	8e0d0158 	lw	t5,344(s0)
    3030:	44822000 	mtc1	v0,$f4
    3034:	3c0f0000 	lui	t7,0x0
    3038:	000d7080 	sll	t6,t5,0x2
    303c:	8e180210 	lw	t8,528(s0)
    3040:	01ee7821 	addu	t7,t7,t6
    3044:	8def0000 	lw	t7,0(t7)
    3048:	468021a0 	cvt.s.w	$f6,$f4
    304c:	0018c880 	sll	t9,t8,0x2
    3050:	3c01c040 	lui	at,0xc040
    3054:	01f94021 	addu	t0,t7,t9
    3058:	44814000 	mtc1	at,$f8
    305c:	8d050000 	lw	a1,0(t0)
    3060:	240a0002 	li	t2,2
    3064:	afaa0014 	sw	t2,20(sp)
    3068:	e7a60010 	swc1	$f6,16(sp)
    306c:	260401ac 	addiu	a0,s0,428
    3070:	3c063fc0 	lui	a2,0x3fc0
    3074:	24070000 	li	a3,0
    3078:	0c000000 	jal	0 <func_80A5B2F0>
    307c:	e7a80018 	swc1	$f8,24(sp)
    3080:	8e0901f0 	lw	t1,496(s0)
    3084:	2401fffe 	li	at,-2
    3088:	352b0400 	ori	t3,t1,0x400
    308c:	ae0b01f0 	sw	t3,496(s0)
    3090:	01616824 	and	t5,t3,at
    3094:	ae0d01f0 	sw	t5,496(s0)
    3098:	8fbf002c 	lw	ra,44(sp)
    309c:	8fb00028 	lw	s0,40(sp)
    30a0:	27bd0030 	addiu	sp,sp,48
    30a4:	03e00008 	jr	ra
    30a8:	00000000 	nop

000030ac <func_80A5E39C>:
    30ac:	27bdffd8 	addiu	sp,sp,-40
    30b0:	afbf0024 	sw	ra,36(sp)
    30b4:	afb00020 	sw	s0,32(sp)
    30b8:	afa5002c 	sw	a1,44(sp)
    30bc:	44801000 	mtc1	zero,$f2
    30c0:	c4800068 	lwc1	$f0,104(a0)
    30c4:	00808025 	move	s0,a0
    30c8:	3c010000 	lui	at,0x0
    30cc:	4600103c 	c.lt.s	$f2,$f0
    30d0:	00000000 	nop
    30d4:	4502000b 	bc1fl	3104 <func_80A5E39C+0x58>
    30d8:	8e0e01f0 	lw	t6,496(s0)
    30dc:	c4240000 	lwc1	$f4,0(at)
    30e0:	46040181 	sub.s	$f6,$f0,$f4
    30e4:	e4860068 	swc1	$f6,104(a0)
    30e8:	c4880068 	lwc1	$f8,104(a0)
    30ec:	4602403c 	c.lt.s	$f8,$f2
    30f0:	00000000 	nop
    30f4:	45020003 	bc1fl	3104 <func_80A5E39C+0x58>
    30f8:	8e0e01f0 	lw	t6,496(s0)
    30fc:	e4820068 	swc1	$f2,104(a0)
    3100:	8e0e01f0 	lw	t6,496(s0)
    3104:	3c0141e8 	lui	at,0x41e8
    3108:	31cf0400 	andi	t7,t6,0x400
    310c:	51e00035 	beqzl	t7,31e4 <func_80A5E39C+0x138>
    3110:	3c0141e8 	lui	at,0x41e8
    3114:	44815000 	mtc1	at,$f10
    3118:	c61001c4 	lwc1	$f16,452(s0)
    311c:	4610503c 	c.lt.s	$f10,$f16
    3120:	00000000 	nop
    3124:	4502002f 	bc1fl	31e4 <func_80A5E39C+0x138>
    3128:	3c0141e8 	lui	at,0x41e8
    312c:	0c000000 	jal	0 <func_80A5B2F0>
    3130:	e6020068 	swc1	$f2,104(s0)
    3134:	3c013fe0 	lui	at,0x3fe0
    3138:	44819800 	mtc1	at,$f19
    313c:	44809000 	mtc1	zero,$f18
    3140:	46000121 	cvt.d.s	$f4,$f0
    3144:	4624903c 	c.lt.d	$f18,$f4
    3148:	00000000 	nop
    314c:	45000020 	bc1f	31d0 <func_80A5E39C+0x124>
    3150:	00000000 	nop
    3154:	8e190228 	lw	t9,552(s0)
    3158:	2605021c 	addiu	a1,s0,540
    315c:	3c070000 	lui	a3,0x0
    3160:	acb90000 	sw	t9,0(a1)
    3164:	8e18022c 	lw	t8,556(s0)
    3168:	3c0a0000 	lui	t2,0x0
    316c:	24e70000 	addiu	a3,a3,0
    3170:	acb80004 	sw	t8,4(a1)
    3174:	8e190230 	lw	t9,560(s0)
    3178:	254a0000 	addiu	t2,t2,0
    317c:	24042805 	li	a0,10245
    3180:	acb90008 	sw	t9,8(a1)
    3184:	8e0801f0 	lw	t0,496(s0)
    3188:	24060004 	li	a2,4
    318c:	00084900 	sll	t1,t0,0x4
    3190:	05230005 	bgezl	t1,31a8 <func_80A5E39C+0xfc>
    3194:	44806000 	mtc1	zero,$f12
    3198:	afa70010 	sw	a3,16(sp)
    319c:	0c000000 	jal	0 <func_80A5B2F0>
    31a0:	afaa0014 	sw	t2,20(sp)
    31a4:	44806000 	mtc1	zero,$f12
    31a8:	240500b4 	li	a1,180
    31ac:	24060014 	li	a2,20
    31b0:	0c000000 	jal	0 <func_80A5B2F0>
    31b4:	24070064 	li	a3,100
    31b8:	8e0b01f0 	lw	t3,496(s0)
    31bc:	2401fbff 	li	at,-1025
    31c0:	44801000 	mtc1	zero,$f2
    31c4:	01616024 	and	t4,t3,at
    31c8:	10000005 	b	31e0 <func_80A5E39C+0x134>
    31cc:	ae0c01f0 	sw	t4,496(s0)
    31d0:	0c000000 	jal	0 <func_80A5B2F0>
    31d4:	02002025 	move	a0,s0
    31d8:	44801000 	mtc1	zero,$f2
    31dc:	00000000 	nop
    31e0:	3c0141e8 	lui	at,0x41e8
    31e4:	44813000 	mtc1	at,$f6
    31e8:	c60801c4 	lwc1	$f8,452(s0)
    31ec:	3c014040 	lui	at,0x4040
    31f0:	4608303c 	c.lt.s	$f6,$f8
    31f4:	00000000 	nop
    31f8:	45020004 	bc1fl	320c <func_80A5E39C+0x160>
    31fc:	44810000 	mtc1	at,$f0
    3200:	1000000c 	b	3234 <func_80A5E39C+0x188>
    3204:	e6020068 	swc1	$f2,104(s0)
    3208:	44810000 	mtc1	at,$f0
    320c:	c60a0068 	lwc1	$f10,104(s0)
    3210:	460a003c 	c.lt.s	$f0,$f10
    3214:	00000000 	nop
    3218:	45000006 	bc1f	3234 <func_80A5E39C+0x188>
    321c:	00000000 	nop
    3220:	8e0d01f0 	lw	t5,496(s0)
    3224:	31ae0010 	andi	t6,t5,0x10
    3228:	11c00002 	beqz	t6,3234 <func_80A5E39C+0x188>
    322c:	00000000 	nop
    3230:	e6000068 	swc1	$f0,104(s0)
    3234:	0c000000 	jal	0 <func_80A5B2F0>
    3238:	260401ac 	addiu	a0,s0,428
    323c:	50400012 	beqzl	v0,3288 <func_80A5E39C+0x1dc>
    3240:	8fbf0024 	lw	ra,36(sp)
    3244:	8e0f01f0 	lw	t7,496(s0)
    3248:	24020064 	li	v0,100
    324c:	02002025 	move	a0,s0
    3250:	31f80010 	andi	t8,t7,0x10
    3254:	13000009 	beqz	t8,327c <func_80A5E39C+0x1d0>
    3258:	00000000 	nop
    325c:	ae020150 	sw	v0,336(s0)
    3260:	0c000000 	jal	0 <func_80A5B2F0>
    3264:	ae020154 	sw	v0,340(s0)
    3268:	8e1901f0 	lw	t9,496(s0)
    326c:	2401ffef 	li	at,-17
    3270:	03214024 	and	t0,t9,at
    3274:	10000003 	b	3284 <func_80A5E39C+0x1d8>
    3278:	ae0801f0 	sw	t0,496(s0)
    327c:	0c000000 	jal	0 <func_80A5B2F0>
    3280:	02002025 	move	a0,s0
    3284:	8fbf0024 	lw	ra,36(sp)
    3288:	8fb00020 	lw	s0,32(sp)
    328c:	27bd0028 	addiu	sp,sp,40
    3290:	03e00008 	jr	ra
    3294:	00000000 	nop

00003298 <func_80A5E588>:
    3298:	27bdffe8 	addiu	sp,sp,-24
    329c:	afbf0014 	sw	ra,20(sp)
    32a0:	ac800154 	sw	zero,340(a0)
    32a4:	0c000000 	jal	0 <func_80A5B2F0>
    32a8:	ac800150 	sw	zero,336(a0)
    32ac:	8fbf0014 	lw	ra,20(sp)
    32b0:	27bd0018 	addiu	sp,sp,24
    32b4:	03e00008 	jr	ra
    32b8:	00000000 	nop

000032bc <func_80A5E5AC>:
    32bc:	27bdffd0 	addiu	sp,sp,-48
    32c0:	afbf002c 	sw	ra,44(sp)
    32c4:	afb00028 	sw	s0,40(sp)
    32c8:	8c980158 	lw	t8,344(a0)
    32cc:	240e000d 	li	t6,13
    32d0:	240f0004 	li	t7,4
    32d4:	3c080000 	lui	t0,0x0
    32d8:	0018c880 	sll	t9,t8,0x2
    32dc:	ac8e014c 	sw	t6,332(a0)
    32e0:	ac8f0210 	sw	t7,528(a0)
    32e4:	ac800218 	sw	zero,536(a0)
    32e8:	01194021 	addu	t0,t0,t9
    32ec:	8d080000 	lw	t0,0(t0)
    32f0:	00808025 	move	s0,a0
    32f4:	0c000000 	jal	0 <func_80A5B2F0>
    32f8:	8d040010 	lw	a0,16(t0)
    32fc:	8e090158 	lw	t1,344(s0)
    3300:	44822000 	mtc1	v0,$f4
    3304:	3c0b0000 	lui	t3,0x0
    3308:	00095080 	sll	t2,t1,0x2
    330c:	8e0c0210 	lw	t4,528(s0)
    3310:	016a5821 	addu	t3,t3,t2
    3314:	8d6b0000 	lw	t3,0(t3)
    3318:	468021a0 	cvt.s.w	$f6,$f4
    331c:	000c6880 	sll	t5,t4,0x2
    3320:	3c01c040 	lui	at,0xc040
    3324:	016d7021 	addu	t6,t3,t5
    3328:	44814000 	mtc1	at,$f8
    332c:	8dc50000 	lw	a1,0(t6)
    3330:	afa00014 	sw	zero,20(sp)
    3334:	e7a60010 	swc1	$f6,16(sp)
    3338:	260401ac 	addiu	a0,s0,428
    333c:	3c063f80 	lui	a2,0x3f80
    3340:	24070000 	li	a3,0
    3344:	0c000000 	jal	0 <func_80A5B2F0>
    3348:	e7a80018 	swc1	$f8,24(sp)
    334c:	8fbf002c 	lw	ra,44(sp)
    3350:	8fb00028 	lw	s0,40(sp)
    3354:	27bd0030 	addiu	sp,sp,48
    3358:	03e00008 	jr	ra
    335c:	00000000 	nop

00003360 <func_80A5E650>:
    3360:	27bdffc8 	addiu	sp,sp,-56
    3364:	afbf001c 	sw	ra,28(sp)
    3368:	afb00018 	sw	s0,24(sp)
    336c:	afa5003c 	sw	a1,60(sp)
    3370:	8caf1c44 	lw	t7,7236(a1)
    3374:	00808025 	move	s0,a0
    3378:	0c000000 	jal	0 <func_80A5B2F0>
    337c:	afaf002c 	sw	t7,44(sp)
    3380:	26040264 	addiu	a0,s0,612
    3384:	27a50034 	addiu	a1,sp,52
    3388:	0c000000 	jal	0 <func_80A5B2F0>
    338c:	27a60032 	addiu	a2,sp,50
    3390:	02002025 	move	a0,s0
    3394:	0c000000 	jal	0 <func_80A5B2F0>
    3398:	8fa5003c 	lw	a1,60(sp)
    339c:	24010001 	li	at,1
    33a0:	14410050 	bne	v0,at,34e4 <func_80A5E650+0x184>
    33a4:	8fab002c 	lw	t3,44(sp)
    33a8:	8e180154 	lw	t8,340(s0)
    33ac:	44806000 	mtc1	zero,$f12
    33b0:	c7b00034 	lwc1	$f16,52(sp)
    33b4:	44982000 	mtc1	t8,$f4
    33b8:	00000000 	nop
    33bc:	46802020 	cvt.s.w	$f0,$f4
    33c0:	46006032 	c.eq.s	$f12,$f0
    33c4:	00000000 	nop
    33c8:	45030012 	bc1tl	3414 <func_80A5E650+0xb4>
    33cc:	3c014120 	lui	at,0x4120
    33d0:	8e190150 	lw	t9,336(s0)
    33d4:	3c0141a0 	lui	at,0x41a0
    33d8:	c7b20034 	lwc1	$f18,52(sp)
    33dc:	44993000 	mtc1	t9,$f6
    33e0:	00000000 	nop
    33e4:	468030a0 	cvt.s.w	$f2,$f6
    33e8:	4602603c 	c.lt.s	$f12,$f2
    33ec:	00000000 	nop
    33f0:	45020034 	bc1fl	34c4 <func_80A5E650+0x164>
    33f4:	3c014120 	lui	at,0x4120
    33f8:	44814000 	mtc1	at,$f8
    33fc:	00000000 	nop
    3400:	46080281 	sub.s	$f10,$f0,$f8
    3404:	460a103c 	c.lt.s	$f2,$f10
    3408:	00000000 	nop
    340c:	4500002c 	bc1f	34c0 <func_80A5E650+0x160>
    3410:	3c014120 	lui	at,0x4120
    3414:	44819000 	mtc1	at,$f18
    3418:	3c014120 	lui	at,0x4120
    341c:	c7a80034 	lwc1	$f8,52(sp)
    3420:	4612803c 	c.lt.s	$f16,$f18
    3424:	00000000 	nop
    3428:	4502000f 	bc1fl	3468 <func_80A5E650+0x108>
    342c:	44815000 	mtc1	at,$f10
    3430:	8e080150 	lw	t0,336(s0)
    3434:	44882000 	mtc1	t0,$f4
    3438:	00000000 	nop
    343c:	468021a0 	cvt.s.w	$f6,$f4
    3440:	460c303e 	c.le.s	$f6,$f12
    3444:	00000000 	nop
    3448:	45020007 	bc1fl	3468 <func_80A5E650+0x108>
    344c:	44815000 	mtc1	at,$f10
    3450:	0c000000 	jal	0 <func_80A5B2F0>
    3454:	02002025 	move	a0,s0
    3458:	44806000 	mtc1	zero,$f12
    345c:	100000a5 	b	36f4 <func_80A5E650+0x394>
    3460:	e60c0068 	swc1	$f12,104(s0)
    3464:	44815000 	mtc1	at,$f10
    3468:	24098001 	li	t1,-32767
    346c:	460a403c 	c.lt.s	$f8,$f10
    3470:	00000000 	nop
    3474:	45000003 	bc1f	3484 <func_80A5E650+0x124>
    3478:	00000000 	nop
    347c:	10000025 	b	3514 <func_80A5E650+0x1b4>
    3480:	a7a90032 	sh	t1,50(sp)
    3484:	0c000000 	jal	0 <func_80A5B2F0>
    3488:	87a40032 	lh	a0,50(sp)
    348c:	3c01bf00 	lui	at,0xbf00
    3490:	44818000 	mtc1	at,$f16
    3494:	44806000 	mtc1	zero,$f12
    3498:	02002025 	move	a0,s0
    349c:	4600803c 	c.lt.s	$f16,$f0
    34a0:	00000000 	nop
    34a4:	4502001c 	bc1fl	3518 <func_80A5E650+0x1b8>
    34a8:	3c01c496 	lui	at,0xc496
    34ac:	0c000000 	jal	0 <func_80A5B2F0>
    34b0:	ae000154 	sw	zero,340(s0)
    34b4:	44806000 	mtc1	zero,$f12
    34b8:	1000008e 	b	36f4 <func_80A5E650+0x394>
    34bc:	e60c0068 	swc1	$f12,104(s0)
    34c0:	3c014120 	lui	at,0x4120
    34c4:	44812000 	mtc1	at,$f4
    34c8:	240a8001 	li	t2,-32767
    34cc:	4604903c 	c.lt.s	$f18,$f4
    34d0:	00000000 	nop
    34d4:	45020010 	bc1fl	3518 <func_80A5E650+0x1b8>
    34d8:	3c01c496 	lui	at,0xc496
    34dc:	1000000d 	b	3514 <func_80A5E650+0x1b4>
    34e0:	a7aa0032 	sh	t2,50(sp)
    34e4:	8d6c0004 	lw	t4,4(t3)
    34e8:	240e8001 	li	t6,-32767
    34ec:	318d0100 	andi	t5,t4,0x100
    34f0:	51a00007 	beqzl	t5,3510 <func_80A5E650+0x1b0>
    34f4:	44806000 	mtc1	zero,$f12
    34f8:	0c000000 	jal	0 <func_80A5B2F0>
    34fc:	02002025 	move	a0,s0
    3500:	44806000 	mtc1	zero,$f12
    3504:	1000007b 	b	36f4 <func_80A5E650+0x394>
    3508:	e60c0068 	swc1	$f12,104(s0)
    350c:	44806000 	mtc1	zero,$f12
    3510:	a7ae0032 	sh	t6,50(sp)
    3514:	3c01c496 	lui	at,0xc496
    3518:	44811000 	mtc1	at,$f2
    351c:	3c01c000 	lui	at,0xc000
    3520:	44813000 	mtc1	at,$f6
    3524:	24187fff 	li	t8,32767
    3528:	3c014496 	lui	at,0x4496
    352c:	e6060068 	swc1	$f6,104(s0)
    3530:	87af0032 	lh	t7,50(sp)
    3534:	030fc823 	subu	t9,t8,t7
    3538:	00194400 	sll	t0,t9,0x10
    353c:	00084c03 	sra	t1,t0,0x10
    3540:	44894000 	mtc1	t1,$f8
    3544:	00000000 	nop
    3548:	46804020 	cvt.s.w	$f0,$f8
    354c:	4602003c 	c.lt.s	$f0,$f2
    3550:	00000000 	nop
    3554:	45020008 	bc1fl	3578 <func_80A5E650+0x218>
    3558:	44817000 	mtc1	at,$f14
    355c:	4600128d 	trunc.w.s	$f10,$f2
    3560:	44035000 	mfc1	v1,$f10
    3564:	00000000 	nop
    3568:	00031c00 	sll	v1,v1,0x10
    356c:	1000000f 	b	35ac <func_80A5E650+0x24c>
    3570:	00031c03 	sra	v1,v1,0x10
    3574:	44817000 	mtc1	at,$f14
    3578:	00000000 	nop
    357c:	4600703c 	c.lt.s	$f14,$f0
    3580:	00000000 	nop
    3584:	45020004 	bc1fl	3598 <func_80A5E650+0x238>
    3588:	46000086 	mov.s	$f2,$f0
    358c:	10000002 	b	3598 <func_80A5E650+0x238>
    3590:	46007086 	mov.s	$f2,$f14
    3594:	46000086 	mov.s	$f2,$f0
    3598:	4600140d 	trunc.w.s	$f16,$f2
    359c:	44038000 	mfc1	v1,$f16
    35a0:	00000000 	nop
    35a4:	00031c00 	sll	v1,v1,0x10
    35a8:	00031c03 	sra	v1,v1,0x10
    35ac:	8e020150 	lw	v0,336(s0)
    35b0:	860c0032 	lh	t4,50(s0)
    35b4:	3c013f00 	lui	at,0x3f00
    35b8:	44829000 	mtc1	v0,$f18
    35bc:	01836821 	addu	t5,t4,v1
    35c0:	a60d0032 	sh	t5,50(s0)
    35c4:	46809120 	cvt.s.w	$f4,$f18
    35c8:	860e0032 	lh	t6,50(s0)
    35cc:	44818000 	mtc1	at,$f16
    35d0:	244fffff 	addiu	t7,v0,-1
    35d4:	a60e00b6 	sh	t6,182(s0)
    35d8:	4604603c 	c.lt.s	$f12,$f4
    35dc:	00000000 	nop
    35e0:	4502000a 	bc1fl	360c <func_80A5E650+0x2ac>
    35e4:	c60a0068 	lwc1	$f10,104(s0)
    35e8:	448f3000 	mtc1	t7,$f6
    35ec:	ae0f0150 	sw	t7,336(s0)
    35f0:	46803220 	cvt.s.w	$f8,$f6
    35f4:	460c403e 	c.le.s	$f8,$f12
    35f8:	00000000 	nop
    35fc:	45020003 	bc1fl	360c <func_80A5E650+0x2ac>
    3600:	c60a0068 	lwc1	$f10,104(s0)
    3604:	ae000154 	sw	zero,340(s0)
    3608:	c60a0068 	lwc1	$f10,104(s0)
    360c:	3c013fc0 	lui	at,0x3fc0
    3610:	44812000 	mtc1	at,$f4
    3614:	46105482 	mul.s	$f18,$f10,$f16
    3618:	260401ac 	addiu	a0,s0,428
    361c:	46049182 	mul.s	$f6,$f18,$f4
    3620:	0c000000 	jal	0 <func_80A5B2F0>
    3624:	e60601c8 	swc1	$f6,456(s0)
    3628:	44806000 	mtc1	zero,$f12
    362c:	50400032 	beqzl	v0,36f8 <func_80A5E650+0x398>
    3630:	8fbf001c 	lw	ra,28(sp)
    3634:	8e190150 	lw	t9,336(s0)
    3638:	02002025 	move	a0,s0
    363c:	44994000 	mtc1	t9,$f8
    3640:	00000000 	nop
    3644:	468042a0 	cvt.s.w	$f10,$f8
    3648:	460c503e 	c.le.s	$f10,$f12
    364c:	00000000 	nop
    3650:	45020029 	bc1fl	36f8 <func_80A5E650+0x398>
    3654:	8fbf001c 	lw	ra,28(sp)
    3658:	0c000000 	jal	0 <func_80A5B2F0>
    365c:	8fa5003c 	lw	a1,60(sp)
    3660:	24010001 	li	at,1
    3664:	14410023 	bne	v0,at,36f4 <func_80A5E650+0x394>
    3668:	c7b20034 	lwc1	$f18,52(sp)
    366c:	3c014120 	lui	at,0x4120
    3670:	44818000 	mtc1	at,$f16
    3674:	00000000 	nop
    3678:	4612803c 	c.lt.s	$f16,$f18
    367c:	00000000 	nop
    3680:	4502000f 	bc1fl	36c0 <func_80A5E650+0x360>
    3684:	3c014120 	lui	at,0x4120
    3688:	0c000000 	jal	0 <func_80A5B2F0>
    368c:	87a40032 	lh	a0,50(sp)
    3690:	3c01bf00 	lui	at,0xbf00
    3694:	44812000 	mtc1	at,$f4
    3698:	02002025 	move	a0,s0
    369c:	4604003e 	c.le.s	$f0,$f4
    36a0:	00000000 	nop
    36a4:	45020006 	bc1fl	36c0 <func_80A5E650+0x360>
    36a8:	3c014120 	lui	at,0x4120
    36ac:	0c000000 	jal	0 <func_80A5B2F0>
    36b0:	ae000154 	sw	zero,340(s0)
    36b4:	10000010 	b	36f8 <func_80A5E650+0x398>
    36b8:	8fbf001c 	lw	ra,28(sp)
    36bc:	3c014120 	lui	at,0x4120
    36c0:	44814000 	mtc1	at,$f8
    36c4:	c7a60034 	lwc1	$f6,52(sp)
    36c8:	02002025 	move	a0,s0
    36cc:	4608303c 	c.lt.s	$f6,$f8
    36d0:	00000000 	nop
    36d4:	45000005 	bc1f	36ec <func_80A5E650+0x38c>
    36d8:	00000000 	nop
    36dc:	0c000000 	jal	0 <func_80A5B2F0>
    36e0:	ae000154 	sw	zero,340(s0)
    36e4:	10000004 	b	36f8 <func_80A5E650+0x398>
    36e8:	8fbf001c 	lw	ra,28(sp)
    36ec:	0c000000 	jal	0 <func_80A5B2F0>
    36f0:	02002025 	move	a0,s0
    36f4:	8fbf001c 	lw	ra,28(sp)
    36f8:	8fb00018 	lw	s0,24(sp)
    36fc:	27bd0038 	addiu	sp,sp,56
    3700:	03e00008 	jr	ra
    3704:	00000000 	nop

00003708 <func_80A5E9F8>:
    3708:	44802000 	mtc1	zero,$f4
    370c:	27bdffe8 	addiu	sp,sp,-24
    3710:	afbf0014 	sw	ra,20(sp)
    3714:	0c000000 	jal	0 <func_80A5B2F0>
    3718:	e48401c4 	swc1	$f4,452(a0)
    371c:	8fbf0014 	lw	ra,20(sp)
    3720:	27bd0018 	addiu	sp,sp,24
    3724:	03e00008 	jr	ra
    3728:	00000000 	nop

0000372c <func_80A5EA1C>:
    372c:	27bdffc8 	addiu	sp,sp,-56
    3730:	afbf002c 	sw	ra,44(sp)
    3734:	afb00028 	sw	s0,40(sp)
    3738:	afa5003c 	sw	a1,60(sp)
    373c:	c48401c4 	lwc1	$f4,452(a0)
    3740:	240e000e 	li	t6,14
    3744:	240f0007 	li	t7,7
    3748:	ac8e014c 	sw	t6,332(a0)
    374c:	ac8f0210 	sw	t7,528(a0)
    3750:	e7a40034 	swc1	$f4,52(sp)
    3754:	8c980158 	lw	t8,344(a0)
    3758:	3c080000 	lui	t0,0x0
    375c:	00808025 	move	s0,a0
    3760:	0018c880 	sll	t9,t8,0x2
    3764:	01194021 	addu	t0,t0,t9
    3768:	8d080000 	lw	t0,0(t0)
    376c:	0c000000 	jal	0 <func_80A5B2F0>
    3770:	8d04001c 	lw	a0,28(t0)
    3774:	8e090158 	lw	t1,344(s0)
    3778:	44823000 	mtc1	v0,$f6
    377c:	3c0b0000 	lui	t3,0x0
    3780:	00095080 	sll	t2,t1,0x2
    3784:	8e0c0210 	lw	t4,528(s0)
    3788:	016a5821 	addu	t3,t3,t2
    378c:	8d6b0000 	lw	t3,0(t3)
    3790:	46803220 	cvt.s.w	$f8,$f6
    3794:	000c6880 	sll	t5,t4,0x2
    3798:	3c01c040 	lui	at,0xc040
    379c:	016d7021 	addu	t6,t3,t5
    37a0:	44815000 	mtc1	at,$f10
    37a4:	8dc50000 	lw	a1,0(t6)
    37a8:	240f0002 	li	t7,2
    37ac:	afaf0014 	sw	t7,20(sp)
    37b0:	e7a80010 	swc1	$f8,16(sp)
    37b4:	260401ac 	addiu	a0,s0,428
    37b8:	3c063fc0 	lui	a2,0x3fc0
    37bc:	8fa70034 	lw	a3,52(sp)
    37c0:	0c000000 	jal	0 <func_80A5B2F0>
    37c4:	e7aa0018 	swc1	$f10,24(sp)
    37c8:	c6100028 	lwc1	$f16,40(s0)
    37cc:	44809000 	mtc1	zero,$f18
    37d0:	44802000 	mtc1	zero,$f4
    37d4:	8e0201cc 	lw	v0,460(s0)
    37d8:	ae000244 	sw	zero,580(s0)
    37dc:	e6100274 	swc1	$f16,628(s0)
    37e0:	e612006c 	swc1	$f18,108(s0)
    37e4:	e6040060 	swc1	$f4,96(s0)
    37e8:	84580002 	lh	t8,2(v0)
    37ec:	3c010000 	lui	at,0x0
    37f0:	c42a0000 	lwc1	$f10,0(at)
    37f4:	44983000 	mtc1	t8,$f6
    37f8:	c608025c 	lwc1	$f8,604(s0)
    37fc:	3c070000 	lui	a3,0x0
    3800:	46803020 	cvt.s.w	$f0,$f6
    3804:	3c190000 	lui	t9,0x0
    3808:	24e70000 	addiu	a3,a3,0
    380c:	27390000 	addiu	t9,t9,0
    3810:	24042818 	li	a0,10264
    3814:	260500e4 	addiu	a1,s0,228
    3818:	460a0402 	mul.s	$f16,$f0,$f10
    381c:	24060004 	li	a2,4
    3820:	46104481 	sub.s	$f18,$f8,$f16
    3824:	e612025c 	swc1	$f18,604(s0)
    3828:	afb90014 	sw	t9,20(sp)
    382c:	0c000000 	jal	0 <func_80A5B2F0>
    3830:	afa70010 	sw	a3,16(sp)
    3834:	44806000 	mtc1	zero,$f12
    3838:	240500aa 	li	a1,170
    383c:	2406000a 	li	a2,10
    3840:	0c000000 	jal	0 <func_80A5B2F0>
    3844:	2407000a 	li	a3,10
    3848:	8fbf002c 	lw	ra,44(sp)
    384c:	8fb00028 	lw	s0,40(sp)
    3850:	27bd0038 	addiu	sp,sp,56
    3854:	03e00008 	jr	ra
    3858:	00000000 	nop

0000385c <func_80A5EB4C>:
    385c:	03e00008 	jr	ra
    3860:	afa40000 	sw	a0,0(sp)

00003864 <func_80A5EB54>:
    3864:	27bdffc0 	addiu	sp,sp,-64
    3868:	3c014140 	lui	at,0x4140
    386c:	44812000 	mtc1	at,$f4
    3870:	afbf0024 	sw	ra,36(sp)
    3874:	afb00020 	sw	s0,32(sp)
    3878:	afa50044 	sw	a1,68(sp)
    387c:	3c014188 	lui	at,0x4188
    3880:	c48201c4 	lwc1	$f2,452(a0)
    3884:	44813000 	mtc1	at,$f6
    3888:	8c8e01f0 	lw	t6,496(a0)
    388c:	00808025 	move	s0,a0
    3890:	4602303c 	c.lt.s	$f6,$f2
    3894:	35cf0004 	ori	t7,t6,0x4
    3898:	ac8f01f0 	sw	t7,496(a0)
    389c:	e4840068 	swc1	$f4,104(a0)
    38a0:	4502001d 	bc1fl	3918 <func_80A5EB54+0xb4>
    38a4:	8e0201cc 	lw	v0,460(s0)
    38a8:	44800000 	mtc1	zero,$f0
    38ac:	c48a0060 	lwc1	$f10,96(a0)
    38b0:	3c01c060 	lui	at,0xc060
    38b4:	44814000 	mtc1	at,$f8
    38b8:	460a0032 	c.eq.s	$f0,$f10
    38bc:	3c01c0c0 	lui	at,0xc0c0
    38c0:	e488006c 	swc1	$f8,108(a0)
    38c4:	45020005 	bc1fl	38dc <func_80A5EB54+0x78>
    38c8:	3c0142b4 	lui	at,0x42b4
    38cc:	44818000 	mtc1	at,$f16
    38d0:	00000000 	nop
    38d4:	e4900060 	swc1	$f16,96(a0)
    38d8:	3c0142b4 	lui	at,0x42b4
    38dc:	44813000 	mtc1	at,$f6
    38e0:	c6040080 	lwc1	$f4,128(s0)
    38e4:	c6120028 	lwc1	$f18,40(s0)
    38e8:	3c013fc0 	lui	at,0x3fc0
    38ec:	46062200 	add.s	$f8,$f4,$f6
    38f0:	4608903c 	c.lt.s	$f18,$f8
    38f4:	00000000 	nop
    38f8:	45000004 	bc1f	390c <func_80A5EB54+0xa8>
    38fc:	00000000 	nop
    3900:	44815000 	mtc1	at,$f10
    3904:	1000000e 	b	3940 <func_80A5EB54+0xdc>
    3908:	e60a01c8 	swc1	$f10,456(s0)
    390c:	1000000c 	b	3940 <func_80A5EB54+0xdc>
    3910:	e60001c8 	swc1	$f0,456(s0)
    3914:	8e0201cc 	lw	v0,460(s0)
    3918:	3c010000 	lui	at,0x0
    391c:	c4260000 	lwc1	$f6,0(at)
    3920:	84580002 	lh	t8,2(v0)
    3924:	c6040274 	lwc1	$f4,628(s0)
    3928:	44988000 	mtc1	t8,$f16
    392c:	00000000 	nop
    3930:	46808020 	cvt.s.w	$f0,$f16
    3934:	46060482 	mul.s	$f18,$f0,$f6
    3938:	46122200 	add.s	$f8,$f4,$f18
    393c:	e6080028 	swc1	$f8,40(s0)
    3940:	260401ac 	addiu	a0,s0,428
    3944:	0c000000 	jal	0 <func_80A5B2F0>
    3948:	e7a2002c 	swc1	$f2,44(sp)
    394c:	14400012 	bnez	v0,3998 <func_80A5EB54+0x134>
    3950:	c7a2002c 	lwc1	$f2,44(sp)
    3954:	3c014188 	lui	at,0x4188
    3958:	44815000 	mtc1	at,$f10
    395c:	00000000 	nop
    3960:	4602503c 	c.lt.s	$f10,$f2
    3964:	00000000 	nop
    3968:	4502002b 	bc1fl	3a18 <func_80A5EB54+0x1b4>
    396c:	8fbf0024 	lw	ra,36(sp)
    3970:	c6060080 	lwc1	$f6,128(s0)
    3974:	c6040060 	lwc1	$f4,96(s0)
    3978:	3c0142a0 	lui	at,0x42a0
    397c:	44814000 	mtc1	at,$f8
    3980:	46043481 	sub.s	$f18,$f6,$f4
    3984:	c6100028 	lwc1	$f16,40(s0)
    3988:	46089280 	add.s	$f10,$f18,$f8
    398c:	460a803c 	c.lt.s	$f16,$f10
    3990:	00000000 	nop
    3994:	4500001f 	bc1f	3a14 <func_80A5EB54+0x1b0>
    3998:	3c070000 	lui	a3,0x0
    399c:	3c190000 	lui	t9,0x0
    39a0:	24e70000 	addiu	a3,a3,0
    39a4:	27390000 	addiu	t9,t9,0
    39a8:	afb90014 	sw	t9,20(sp)
    39ac:	afa70010 	sw	a3,16(sp)
    39b0:	24042819 	li	a0,10265
    39b4:	260500e4 	addiu	a1,s0,228
    39b8:	0c000000 	jal	0 <func_80A5B2F0>
    39bc:	24060004 	li	a2,4
    39c0:	44806000 	mtc1	zero,$f12
    39c4:	240500ff 	li	a1,255
    39c8:	2406000a 	li	a2,10
    39cc:	0c000000 	jal	0 <func_80A5B2F0>
    39d0:	24070050 	li	a3,80
    39d4:	8e0801f0 	lw	t0,496(s0)
    39d8:	2401fffb 	li	at,-5
    39dc:	c6040080 	lwc1	$f4,128(s0)
    39e0:	01014824 	and	t1,t0,at
    39e4:	3c01c060 	lui	at,0xc060
    39e8:	44813000 	mtc1	at,$f6
    39ec:	ae0901f0 	sw	t1,496(s0)
    39f0:	e6040028 	swc1	$f4,40(s0)
    39f4:	e606006c 	swc1	$f6,108(s0)
    39f8:	8fa40044 	lw	a0,68(sp)
    39fc:	3c0541c8 	lui	a1,0x41c8
    3a00:	0c000000 	jal	0 <func_80A5B2F0>
    3a04:	26060024 	addiu	a2,s0,36
    3a08:	02002025 	move	a0,s0
    3a0c:	0c000000 	jal	0 <func_80A5B2F0>
    3a10:	8fa50044 	lw	a1,68(sp)
    3a14:	8fbf0024 	lw	ra,36(sp)
    3a18:	8fb00020 	lw	s0,32(sp)
    3a1c:	27bd0040 	addiu	sp,sp,64
    3a20:	03e00008 	jr	ra
    3a24:	00000000 	nop

00003a28 <func_80A5ED18>:
    3a28:	44802000 	mtc1	zero,$f4
    3a2c:	27bdffe8 	addiu	sp,sp,-24
    3a30:	afbf0014 	sw	ra,20(sp)
    3a34:	0c000000 	jal	0 <func_80A5B2F0>
    3a38:	e48401c4 	swc1	$f4,452(a0)
    3a3c:	8fbf0014 	lw	ra,20(sp)
    3a40:	27bd0018 	addiu	sp,sp,24
    3a44:	03e00008 	jr	ra
    3a48:	00000000 	nop

00003a4c <func_80A5ED3C>:
    3a4c:	27bdffc8 	addiu	sp,sp,-56
    3a50:	afbf002c 	sw	ra,44(sp)
    3a54:	afb00028 	sw	s0,40(sp)
    3a58:	afa5003c 	sw	a1,60(sp)
    3a5c:	c48401c4 	lwc1	$f4,452(a0)
    3a60:	240e000f 	li	t6,15
    3a64:	240f0008 	li	t7,8
    3a68:	ac8e014c 	sw	t6,332(a0)
    3a6c:	ac8f0210 	sw	t7,528(a0)
    3a70:	e7a40034 	swc1	$f4,52(sp)
    3a74:	8c980158 	lw	t8,344(a0)
    3a78:	3c080000 	lui	t0,0x0
    3a7c:	00808025 	move	s0,a0
    3a80:	0018c880 	sll	t9,t8,0x2
    3a84:	01194021 	addu	t0,t0,t9
    3a88:	8d080000 	lw	t0,0(t0)
    3a8c:	0c000000 	jal	0 <func_80A5B2F0>
    3a90:	8d040020 	lw	a0,32(t0)
    3a94:	8e090158 	lw	t1,344(s0)
    3a98:	44823000 	mtc1	v0,$f6
    3a9c:	3c0b0000 	lui	t3,0x0
    3aa0:	00095080 	sll	t2,t1,0x2
    3aa4:	8e0c0210 	lw	t4,528(s0)
    3aa8:	016a5821 	addu	t3,t3,t2
    3aac:	8d6b0000 	lw	t3,0(t3)
    3ab0:	46803220 	cvt.s.w	$f8,$f6
    3ab4:	000c6880 	sll	t5,t4,0x2
    3ab8:	3c01c040 	lui	at,0xc040
    3abc:	016d7021 	addu	t6,t3,t5
    3ac0:	44815000 	mtc1	at,$f10
    3ac4:	8dc50000 	lw	a1,0(t6)
    3ac8:	240f0002 	li	t7,2
    3acc:	afaf0014 	sw	t7,20(sp)
    3ad0:	e7a80010 	swc1	$f8,16(sp)
    3ad4:	260401ac 	addiu	a0,s0,428
    3ad8:	3c063fc0 	lui	a2,0x3fc0
    3adc:	8fa70034 	lw	a3,52(sp)
    3ae0:	0c000000 	jal	0 <func_80A5B2F0>
    3ae4:	e7aa0018 	swc1	$f10,24(sp)
    3ae8:	c6100028 	lwc1	$f16,40(s0)
    3aec:	44809000 	mtc1	zero,$f18
    3af0:	44802000 	mtc1	zero,$f4
    3af4:	8e0201cc 	lw	v0,460(s0)
    3af8:	ae000244 	sw	zero,580(s0)
    3afc:	e6100274 	swc1	$f16,628(s0)
    3b00:	e612006c 	swc1	$f18,108(s0)
    3b04:	e6040060 	swc1	$f4,96(s0)
    3b08:	84580002 	lh	t8,2(v0)
    3b0c:	3c010000 	lui	at,0x0
    3b10:	c42a0000 	lwc1	$f10,0(at)
    3b14:	44983000 	mtc1	t8,$f6
    3b18:	c608025c 	lwc1	$f8,604(s0)
    3b1c:	8e1901f0 	lw	t9,496(s0)
    3b20:	46803020 	cvt.s.w	$f0,$f6
    3b24:	3c070000 	lui	a3,0x0
    3b28:	3c090000 	lui	t1,0x0
    3b2c:	37280008 	ori	t0,t9,0x8
    3b30:	24e70000 	addiu	a3,a3,0
    3b34:	ae0801f0 	sw	t0,496(s0)
    3b38:	460a0402 	mul.s	$f16,$f0,$f10
    3b3c:	25290000 	addiu	t1,t1,0
    3b40:	24042818 	li	a0,10264
    3b44:	260500e4 	addiu	a1,s0,228
    3b48:	24060004 	li	a2,4
    3b4c:	46104481 	sub.s	$f18,$f8,$f16
    3b50:	e612025c 	swc1	$f18,604(s0)
    3b54:	afa90014 	sw	t1,20(sp)
    3b58:	0c000000 	jal	0 <func_80A5B2F0>
    3b5c:	afa70010 	sw	a3,16(sp)
    3b60:	44806000 	mtc1	zero,$f12
    3b64:	240500aa 	li	a1,170
    3b68:	2406000a 	li	a2,10
    3b6c:	0c000000 	jal	0 <func_80A5B2F0>
    3b70:	2407000a 	li	a3,10
    3b74:	8fbf002c 	lw	ra,44(sp)
    3b78:	8fb00028 	lw	s0,40(sp)
    3b7c:	27bd0038 	addiu	sp,sp,56
    3b80:	03e00008 	jr	ra
    3b84:	00000000 	nop

00003b88 <func_80A5EE78>:
    3b88:	03e00008 	jr	ra
    3b8c:	afa40000 	sw	a0,0(sp)

00003b90 <func_80A5EE80>:
    3b90:	27bdffc0 	addiu	sp,sp,-64
    3b94:	3c014150 	lui	at,0x4150
    3b98:	44812000 	mtc1	at,$f4
    3b9c:	afbf0024 	sw	ra,36(sp)
    3ba0:	afb00020 	sw	s0,32(sp)
    3ba4:	afa50044 	sw	a1,68(sp)
    3ba8:	3c0141b8 	lui	at,0x41b8
    3bac:	c48201c4 	lwc1	$f2,452(a0)
    3bb0:	44813000 	mtc1	at,$f6
    3bb4:	8c8e01f0 	lw	t6,496(a0)
    3bb8:	00808025 	move	s0,a0
    3bbc:	4602303c 	c.lt.s	$f6,$f2
    3bc0:	35cf0004 	ori	t7,t6,0x4
    3bc4:	ac8f01f0 	sw	t7,496(a0)
    3bc8:	e4840068 	swc1	$f4,104(a0)
    3bcc:	4502001d 	bc1fl	3c44 <func_80A5EE80+0xb4>
    3bd0:	8e0201cc 	lw	v0,460(s0)
    3bd4:	44800000 	mtc1	zero,$f0
    3bd8:	c48a0060 	lwc1	$f10,96(a0)
    3bdc:	3c01c060 	lui	at,0xc060
    3be0:	44814000 	mtc1	at,$f8
    3be4:	460a0032 	c.eq.s	$f0,$f10
    3be8:	3c01c128 	lui	at,0xc128
    3bec:	e488006c 	swc1	$f8,108(a0)
    3bf0:	45020005 	bc1fl	3c08 <func_80A5EE80+0x78>
    3bf4:	3c0142b4 	lui	at,0x42b4
    3bf8:	44818000 	mtc1	at,$f16
    3bfc:	00000000 	nop
    3c00:	e4900060 	swc1	$f16,96(a0)
    3c04:	3c0142b4 	lui	at,0x42b4
    3c08:	44813000 	mtc1	at,$f6
    3c0c:	c6040080 	lwc1	$f4,128(s0)
    3c10:	c6120028 	lwc1	$f18,40(s0)
    3c14:	3c013fc0 	lui	at,0x3fc0
    3c18:	46062200 	add.s	$f8,$f4,$f6
    3c1c:	4608903c 	c.lt.s	$f18,$f8
    3c20:	00000000 	nop
    3c24:	45000004 	bc1f	3c38 <func_80A5EE80+0xa8>
    3c28:	00000000 	nop
    3c2c:	44815000 	mtc1	at,$f10
    3c30:	1000000e 	b	3c6c <func_80A5EE80+0xdc>
    3c34:	e60a01c8 	swc1	$f10,456(s0)
    3c38:	1000000c 	b	3c6c <func_80A5EE80+0xdc>
    3c3c:	e60001c8 	swc1	$f0,456(s0)
    3c40:	8e0201cc 	lw	v0,460(s0)
    3c44:	3c010000 	lui	at,0x0
    3c48:	c4260000 	lwc1	$f6,0(at)
    3c4c:	84580002 	lh	t8,2(v0)
    3c50:	c6040274 	lwc1	$f4,628(s0)
    3c54:	44988000 	mtc1	t8,$f16
    3c58:	00000000 	nop
    3c5c:	46808020 	cvt.s.w	$f0,$f16
    3c60:	46060482 	mul.s	$f18,$f0,$f6
    3c64:	46122200 	add.s	$f8,$f4,$f18
    3c68:	e6080028 	swc1	$f8,40(s0)
    3c6c:	260401ac 	addiu	a0,s0,428
    3c70:	0c000000 	jal	0 <func_80A5B2F0>
    3c74:	e7a2002c 	swc1	$f2,44(sp)
    3c78:	14400012 	bnez	v0,3cc4 <func_80A5EE80+0x134>
    3c7c:	c7a2002c 	lwc1	$f2,44(sp)
    3c80:	3c0141b8 	lui	at,0x41b8
    3c84:	44815000 	mtc1	at,$f10
    3c88:	00000000 	nop
    3c8c:	4602503c 	c.lt.s	$f10,$f2
    3c90:	00000000 	nop
    3c94:	4502002b 	bc1fl	3d44 <func_80A5EE80+0x1b4>
    3c98:	8fbf0024 	lw	ra,36(sp)
    3c9c:	c6060080 	lwc1	$f6,128(s0)
    3ca0:	c6040060 	lwc1	$f4,96(s0)
    3ca4:	3c0142a0 	lui	at,0x42a0
    3ca8:	44814000 	mtc1	at,$f8
    3cac:	46043481 	sub.s	$f18,$f6,$f4
    3cb0:	c6100028 	lwc1	$f16,40(s0)
    3cb4:	46089280 	add.s	$f10,$f18,$f8
    3cb8:	460a803c 	c.lt.s	$f16,$f10
    3cbc:	00000000 	nop
    3cc0:	4500001f 	bc1f	3d40 <func_80A5EE80+0x1b0>
    3cc4:	3c070000 	lui	a3,0x0
    3cc8:	3c190000 	lui	t9,0x0
    3ccc:	24e70000 	addiu	a3,a3,0
    3cd0:	27390000 	addiu	t9,t9,0
    3cd4:	afb90014 	sw	t9,20(sp)
    3cd8:	afa70010 	sw	a3,16(sp)
    3cdc:	24042819 	li	a0,10265
    3ce0:	260500e4 	addiu	a1,s0,228
    3ce4:	0c000000 	jal	0 <func_80A5B2F0>
    3ce8:	24060004 	li	a2,4
    3cec:	44806000 	mtc1	zero,$f12
    3cf0:	240500ff 	li	a1,255
    3cf4:	2406000a 	li	a2,10
    3cf8:	0c000000 	jal	0 <func_80A5B2F0>
    3cfc:	24070050 	li	a3,80
    3d00:	8e0801f0 	lw	t0,496(s0)
    3d04:	2401fffb 	li	at,-5
    3d08:	c6040080 	lwc1	$f4,128(s0)
    3d0c:	01014824 	and	t1,t0,at
    3d10:	3c01c060 	lui	at,0xc060
    3d14:	44813000 	mtc1	at,$f6
    3d18:	ae0901f0 	sw	t1,496(s0)
    3d1c:	e6040028 	swc1	$f4,40(s0)
    3d20:	e606006c 	swc1	$f6,108(s0)
    3d24:	8fa40044 	lw	a0,68(sp)
    3d28:	3c0541c8 	lui	a1,0x41c8
    3d2c:	0c000000 	jal	0 <func_80A5B2F0>
    3d30:	26060024 	addiu	a2,s0,36
    3d34:	02002025 	move	a0,s0
    3d38:	0c000000 	jal	0 <func_80A5B2F0>
    3d3c:	8fa50044 	lw	a1,68(sp)
    3d40:	8fbf0024 	lw	ra,36(sp)
    3d44:	8fb00020 	lw	s0,32(sp)
    3d48:	27bd0040 	addiu	sp,sp,64
    3d4c:	03e00008 	jr	ra
    3d50:	00000000 	nop

00003d54 <func_80A5F044>:
    3d54:	908e028a 	lbu	t6,650(a0)
    3d58:	909802d6 	lbu	t8,726(a0)
    3d5c:	90880322 	lbu	t0,802(a0)
    3d60:	8c8c01f0 	lw	t4,496(a0)
    3d64:	240a0001 	li	t2,1
    3d68:	240b0004 	li	t3,4
    3d6c:	31cffffe 	andi	t7,t6,0xfffe
    3d70:	3319fffe 	andi	t9,t8,0xfffe
    3d74:	3109fffe 	andi	t1,t0,0xfffe
    3d78:	358d2000 	ori	t5,t4,0x2000
    3d7c:	a08f028a 	sb	t7,650(a0)
    3d80:	a09902d6 	sb	t9,726(a0)
    3d84:	a0890322 	sb	t1,802(a0)
    3d88:	ac8a014c 	sw	t2,332(a0)
    3d8c:	ac8b0210 	sw	t3,528(a0)
    3d90:	ac8d01f0 	sw	t5,496(a0)
    3d94:	03e00008 	jr	ra
    3d98:	a4800250 	sh	zero,592(a0)

00003d9c <func_80A5F08C>:
    3d9c:	27bdffd0 	addiu	sp,sp,-48
    3da0:	3c020000 	lui	v0,0x0
    3da4:	8c420000 	lw	v0,0(v0)
    3da8:	afbf002c 	sw	ra,44(sp)
    3dac:	afb10028 	sw	s1,40(sp)
    3db0:	afb00024 	sw	s0,36(sp)
    3db4:	844e05be 	lh	t6,1470(v0)
    3db8:	00808025 	move	s0,a0
    3dbc:	00a08825 	move	s1,a1
    3dc0:	51c00029 	beqzl	t6,3e68 <func_80A5F08C+0xcc>
    3dc4:	8e0b01f0 	lw	t3,496(s0)
    3dc8:	8c8f0158 	lw	t7,344(a0)
    3dcc:	55e00026 	bnezl	t7,3e68 <func_80A5F08C+0xcc>
    3dd0:	8e0b01f0 	lw	t3,496(s0)
    3dd4:	0c000000 	jal	0 <func_80A5B2F0>
    3dd8:	a44005be 	sh	zero,1470(v0)
    3ddc:	10400021 	beqz	v0,3e64 <func_80A5F08C+0xc8>
    3de0:	3c070000 	lui	a3,0x0
    3de4:	3c180000 	lui	t8,0x0
    3de8:	24e70000 	addiu	a3,a3,0
    3dec:	27180000 	addiu	t8,t8,0
    3df0:	afb80014 	sw	t8,20(sp)
    3df4:	afa70010 	sw	a3,16(sp)
    3df8:	24042805 	li	a0,10245
    3dfc:	260500e4 	addiu	a1,s0,228
    3e00:	0c000000 	jal	0 <func_80A5B2F0>
    3e04:	24060004 	li	a2,4
    3e08:	8e1901f0 	lw	t9,496(s0)
    3e0c:	2401dfff 	li	at,-8193
    3e10:	24050008 	li	a1,8
    3e14:	03214024 	and	t0,t9,at
    3e18:	ae0801f0 	sw	t0,496(s0)
    3e1c:	862900a4 	lh	t1,164(s1)
    3e20:	3c010000 	lui	at,0x0
    3e24:	02003025 	move	a2,s0
    3e28:	a4291348 	sh	t1,4936(at)
    3e2c:	0c000000 	jal	0 <func_80A5B2F0>
    3e30:	8e240790 	lw	a0,1936(s1)
    3e34:	8e240790 	lw	a0,1936(s1)
    3e38:	0c000000 	jal	0 <func_80A5B2F0>
    3e3c:	24050038 	li	a1,56
    3e40:	8e240790 	lw	a0,1936(s1)
    3e44:	240a0051 	li	t2,81
    3e48:	afaa0010 	sw	t2,16(sp)
    3e4c:	afa00018 	sw	zero,24(sp)
    3e50:	afa00014 	sw	zero,20(sp)
    3e54:	24050004 	li	a1,4
    3e58:	00003025 	move	a2,zero
    3e5c:	0c000000 	jal	0 <func_80A5B2F0>
    3e60:	00003825 	move	a3,zero
    3e64:	8e0b01f0 	lw	t3,496(s0)
    3e68:	02002025 	move	a0,s0
    3e6c:	02202825 	move	a1,s1
    3e70:	316c2000 	andi	t4,t3,0x2000
    3e74:	5580000e 	bnezl	t4,3eb0 <func_80A5F08C+0x114>
    3e78:	8fbf002c 	lw	ra,44(sp)
    3e7c:	0c000000 	jal	0 <func_80A5B2F0>
    3e80:	a6000250 	sh	zero,592(s0)
    3e84:	920d028a 	lbu	t5,650(s0)
    3e88:	920f02d6 	lbu	t7,726(s0)
    3e8c:	92190322 	lbu	t9,802(s0)
    3e90:	35ae0001 	ori	t6,t5,0x1
    3e94:	35f80001 	ori	t8,t7,0x1
    3e98:	37280001 	ori	t0,t9,0x1
    3e9c:	a600001c 	sh	zero,28(s0)
    3ea0:	a20e028a 	sb	t6,650(s0)
    3ea4:	a21802d6 	sb	t8,726(s0)
    3ea8:	a2080322 	sb	t0,802(s0)
    3eac:	8fbf002c 	lw	ra,44(sp)
    3eb0:	8fb00024 	lw	s0,36(sp)
    3eb4:	8fb10028 	lw	s1,40(sp)
    3eb8:	03e00008 	jr	ra
    3ebc:	27bd0030 	addiu	sp,sp,48

00003ec0 <func_80A5F1B0>:
    3ec0:	27bdffd0 	addiu	sp,sp,-48
    3ec4:	44802000 	mtc1	zero,$f4
    3ec8:	afb00028 	sw	s0,40(sp)
    3ecc:	afbf002c 	sw	ra,44(sp)
    3ed0:	afa60038 	sw	a2,56(sp)
    3ed4:	afa7003c 	sw	a3,60(sp)
    3ed8:	240e0002 	li	t6,2
    3edc:	00808025 	move	s0,a0
    3ee0:	ac8e014c 	sw	t6,332(a0)
    3ee4:	10a00007 	beqz	a1,3f04 <func_80A5F1B0+0x44>
    3ee8:	e4840068 	swc1	$f4,104(a0)
    3eec:	24010001 	li	at,1
    3ef0:	10a10004 	beq	a1,at,3f04 <func_80A5F1B0+0x44>
    3ef4:	24010003 	li	at,3
    3ef8:	50a10003 	beql	a1,at,3f08 <func_80A5F1B0+0x48>
    3efc:	8e0f0210 	lw	t7,528(s0)
    3f00:	00002825 	move	a1,zero
    3f04:	8e0f0210 	lw	t7,528(s0)
    3f08:	50af005d 	beql	a1,t7,4080 <func_80A5F1B0+0x1c0>
    3f0c:	8fbf002c 	lw	ra,44(sp)
    3f10:	14a00007 	bnez	a1,3f30 <func_80A5F1B0+0x70>
    3f14:	ae050210 	sw	a1,528(s0)
    3f18:	8e1801f0 	lw	t8,496(s0)
    3f1c:	2401efff 	li	at,-4097
    3f20:	00a01025 	move	v0,a1
    3f24:	0301c824 	and	t9,t8,at
    3f28:	10000037 	b	4008 <func_80A5F1B0+0x148>
    3f2c:	ae1901f0 	sw	t9,496(s0)
    3f30:	8e020210 	lw	v0,528(s0)
    3f34:	24010001 	li	at,1
    3f38:	54410018 	bnel	v0,at,3f9c <func_80A5F1B0+0xdc>
    3f3c:	24010003 	li	at,3
    3f40:	8e090228 	lw	t1,552(s0)
    3f44:	2605021c 	addiu	a1,s0,540
    3f48:	3c070000 	lui	a3,0x0
    3f4c:	aca90000 	sw	t1,0(a1)
    3f50:	8e08022c 	lw	t0,556(s0)
    3f54:	3c0c0000 	lui	t4,0x0
    3f58:	24e70000 	addiu	a3,a3,0
    3f5c:	aca80004 	sw	t0,4(a1)
    3f60:	8e090230 	lw	t1,560(s0)
    3f64:	258c0000 	addiu	t4,t4,0
    3f68:	24042816 	li	a0,10262
    3f6c:	aca90008 	sw	t1,8(a1)
    3f70:	8e0a01f0 	lw	t2,496(s0)
    3f74:	24060004 	li	a2,4
    3f78:	000a5900 	sll	t3,t2,0x4
    3f7c:	05610004 	bgez	t3,3f90 <func_80A5F1B0+0xd0>
    3f80:	00000000 	nop
    3f84:	afa70010 	sw	a3,16(sp)
    3f88:	0c000000 	jal	0 <func_80A5B2F0>
    3f8c:	afac0014 	sw	t4,20(sp)
    3f90:	1000001d 	b	4008 <func_80A5F1B0+0x148>
    3f94:	8e020210 	lw	v0,528(s0)
    3f98:	24010003 	li	at,3
    3f9c:	5441001b 	bnel	v0,at,400c <func_80A5F1B0+0x14c>
    3fa0:	8e080158 	lw	t0,344(s0)
    3fa4:	8e0e0228 	lw	t6,552(s0)
    3fa8:	2605021c 	addiu	a1,s0,540
    3fac:	3c070000 	lui	a3,0x0
    3fb0:	acae0000 	sw	t6,0(a1)
    3fb4:	8e0d022c 	lw	t5,556(s0)
    3fb8:	3c180000 	lui	t8,0x0
    3fbc:	24e70000 	addiu	a3,a3,0
    3fc0:	acad0004 	sw	t5,4(a1)
    3fc4:	8e0e0230 	lw	t6,560(s0)
    3fc8:	27180000 	addiu	t8,t8,0
    3fcc:	24042805 	li	a0,10245
    3fd0:	acae0008 	sw	t6,8(a1)
    3fd4:	8e0301f0 	lw	v1,496(s0)
    3fd8:	24060004 	li	a2,4
    3fdc:	00037900 	sll	t7,v1,0x4
    3fe0:	05e30006 	bgezl	t7,3ffc <func_80A5F1B0+0x13c>
    3fe4:	2401f7ff 	li	at,-2049
    3fe8:	afa70010 	sw	a3,16(sp)
    3fec:	0c000000 	jal	0 <func_80A5B2F0>
    3ff0:	afb80014 	sw	t8,20(sp)
    3ff4:	8e0301f0 	lw	v1,496(s0)
    3ff8:	2401f7ff 	li	at,-2049
    3ffc:	0061c824 	and	t9,v1,at
    4000:	ae1901f0 	sw	t9,496(s0)
    4004:	8e020210 	lw	v0,528(s0)
    4008:	8e080158 	lw	t0,344(s0)
    400c:	3c0a0000 	lui	t2,0x0
    4010:	00025880 	sll	t3,v0,0x2
    4014:	00084880 	sll	t1,t0,0x2
    4018:	01495021 	addu	t2,t2,t1
    401c:	8d4a0000 	lw	t2,0(t2)
    4020:	014b6021 	addu	t4,t2,t3
    4024:	0c000000 	jal	0 <func_80A5B2F0>
    4028:	8d840000 	lw	a0,0(t4)
    402c:	8e0d0158 	lw	t5,344(s0)
    4030:	44823000 	mtc1	v0,$f6
    4034:	3c0f0000 	lui	t7,0x0
    4038:	000d7080 	sll	t6,t5,0x2
    403c:	8e180210 	lw	t8,528(s0)
    4040:	01ee7821 	addu	t7,t7,t6
    4044:	8def0000 	lw	t7,0(t7)
    4048:	46803220 	cvt.s.w	$f8,$f6
    404c:	0018c880 	sll	t9,t8,0x2
    4050:	01f94021 	addu	t0,t7,t9
    4054:	c7aa0038 	lwc1	$f10,56(sp)
    4058:	8d050000 	lw	a1,0(t0)
    405c:	24090002 	li	t1,2
    4060:	afa90014 	sw	t1,20(sp)
    4064:	e7a80010 	swc1	$f8,16(sp)
    4068:	260401ac 	addiu	a0,s0,428
    406c:	3c063f80 	lui	a2,0x3f80
    4070:	8fa7003c 	lw	a3,60(sp)
    4074:	0c000000 	jal	0 <func_80A5B2F0>
    4078:	e7aa0018 	swc1	$f10,24(sp)
    407c:	8fbf002c 	lw	ra,44(sp)
    4080:	8fb00028 	lw	s0,40(sp)
    4084:	27bd0030 	addiu	sp,sp,48
    4088:	03e00008 	jr	ra
    408c:	00000000 	nop

00004090 <func_80A5F380>:
    4090:	44866000 	mtc1	a2,$f12
    4094:	27bdffe8 	addiu	sp,sp,-24
    4098:	afbf0014 	sw	ra,20(sp)
    409c:	44066000 	mfc1	a2,$f12
    40a0:	0c000000 	jal	0 <func_80A5B2F0>
    40a4:	8c870214 	lw	a3,532(a0)
    40a8:	8fbf0014 	lw	ra,20(sp)
    40ac:	27bd0018 	addiu	sp,sp,24
    40b0:	03e00008 	jr	ra
    40b4:	00000000 	nop

000040b8 <func_80A5F3A8>:
    40b8:	44800000 	mtc1	zero,$f0
    40bc:	27bdffe8 	addiu	sp,sp,-24
    40c0:	afbf0014 	sw	ra,20(sp)
    40c4:	240e0004 	li	t6,4
    40c8:	44060000 	mfc1	a2,$f0
    40cc:	44070000 	mfc1	a3,$f0
    40d0:	ac8e0210 	sw	t6,528(a0)
    40d4:	0c000000 	jal	0 <func_80A5B2F0>
    40d8:	24050004 	li	a1,4
    40dc:	8fbf0014 	lw	ra,20(sp)
    40e0:	27bd0018 	addiu	sp,sp,24
    40e4:	03e00008 	jr	ra
    40e8:	00000000 	nop

000040ec <func_80A5F3DC>:
    40ec:	27bdffe8 	addiu	sp,sp,-24
    40f0:	afbf0014 	sw	ra,20(sp)
    40f4:	0c000000 	jal	0 <func_80A5B2F0>
    40f8:	afa40018 	sw	a0,24(sp)
    40fc:	8fa40018 	lw	a0,24(sp)
    4100:	3c01fffe 	lui	at,0xfffe
    4104:	3421ffff 	ori	at,at,0xffff
    4108:	8c8e01f0 	lw	t6,496(a0)
    410c:	01c17824 	and	t7,t6,at
    4110:	ac8f01f0 	sw	t7,496(a0)
    4114:	8fbf0014 	lw	ra,20(sp)
    4118:	27bd0018 	addiu	sp,sp,24
    411c:	03e00008 	jr	ra
    4120:	00000000 	nop

00004124 <func_80A5F414>:
    4124:	27bdffc8 	addiu	sp,sp,-56
    4128:	44802000 	mtc1	zero,$f4
    412c:	afbf002c 	sw	ra,44(sp)
    4130:	afb00028 	sw	s0,40(sp)
    4134:	afa5003c 	sw	a1,60(sp)
    4138:	e4840068 	swc1	$f4,104(a0)
    413c:	00808025 	move	s0,a0
    4140:	0c000000 	jal	0 <func_80A5B2F0>
    4144:	8fa5003c 	lw	a1,60(sp)
    4148:	3c020000 	lui	v0,0x0
    414c:	8c420000 	lw	v0,0(v0)
    4150:	844e05be 	lh	t6,1470(v0)
    4154:	11c00041 	beqz	t6,425c <func_80A5F414+0x138>
    4158:	00000000 	nop
    415c:	8e0f0158 	lw	t7,344(s0)
    4160:	02002825 	move	a1,s0
    4164:	26060024 	addiu	a2,s0,36
    4168:	15e0003c 	bnez	t7,425c <func_80A5F414+0x138>
    416c:	00000000 	nop
    4170:	a44005be 	sh	zero,1470(v0)
    4174:	0c000000 	jal	0 <func_80A5B2F0>
    4178:	8fa4003c 	lw	a0,60(sp)
    417c:	14400028 	bnez	v0,4220 <func_80A5F414+0xfc>
    4180:	3c070000 	lui	a3,0x0
    4184:	02002025 	move	a0,s0
    4188:	0c000000 	jal	0 <func_80A5B2F0>
    418c:	8fa5003c 	lw	a1,60(sp)
    4190:	10400032 	beqz	v0,425c <func_80A5F414+0x138>
    4194:	3c070000 	lui	a3,0x0
    4198:	3c180000 	lui	t8,0x0
    419c:	24e70000 	addiu	a3,a3,0
    41a0:	27180000 	addiu	t8,t8,0
    41a4:	afb80014 	sw	t8,20(sp)
    41a8:	afa70010 	sw	a3,16(sp)
    41ac:	24042805 	li	a0,10245
    41b0:	260500e4 	addiu	a1,s0,228
    41b4:	0c000000 	jal	0 <func_80A5B2F0>
    41b8:	24060004 	li	a2,4
    41bc:	a6000250 	sh	zero,592(s0)
    41c0:	8fa5003c 	lw	a1,60(sp)
    41c4:	0c000000 	jal	0 <func_80A5B2F0>
    41c8:	02002025 	move	a0,s0
    41cc:	8fb9003c 	lw	t9,60(sp)
    41d0:	24050008 	li	a1,8
    41d4:	02003025 	move	a2,s0
    41d8:	0c000000 	jal	0 <func_80A5B2F0>
    41dc:	8f240790 	lw	a0,1936(t9)
    41e0:	8fa8003c 	lw	t0,60(sp)
    41e4:	24050038 	li	a1,56
    41e8:	0c000000 	jal	0 <func_80A5B2F0>
    41ec:	8d040790 	lw	a0,1936(t0)
    41f0:	8fa9003c 	lw	t1,60(sp)
    41f4:	240a0051 	li	t2,81
    41f8:	24050004 	li	a1,4
    41fc:	8d240790 	lw	a0,1936(t1)
    4200:	afa00018 	sw	zero,24(sp)
    4204:	afa00014 	sw	zero,20(sp)
    4208:	afaa0010 	sw	t2,16(sp)
    420c:	00003025 	move	a2,zero
    4210:	0c000000 	jal	0 <func_80A5B2F0>
    4214:	00003825 	move	a3,zero
    4218:	10000010 	b	425c <func_80A5F414+0x138>
    421c:	00000000 	nop
    4220:	3c0b0000 	lui	t3,0x0
    4224:	24e70000 	addiu	a3,a3,0
    4228:	256b0000 	addiu	t3,t3,0
    422c:	afab0014 	sw	t3,20(sp)
    4230:	afa70010 	sw	a3,16(sp)
    4234:	24042805 	li	a0,10245
    4238:	260500e4 	addiu	a1,s0,228
    423c:	0c000000 	jal	0 <func_80A5B2F0>
    4240:	24060004 	li	a2,4
    4244:	a6000250 	sh	zero,592(s0)
    4248:	02002025 	move	a0,s0
    424c:	24050006 	li	a1,6
    4250:	3c06c040 	lui	a2,0xc040
    4254:	0c000000 	jal	0 <func_80A5B2F0>
    4258:	24070000 	li	a3,0
    425c:	0c000000 	jal	0 <func_80A5B2F0>
    4260:	260401ac 	addiu	a0,s0,428
    4264:	50400024 	beqzl	v0,42f8 <func_80A5F414+0x1d4>
    4268:	8fbf002c 	lw	ra,44(sp)
    426c:	8e020210 	lw	v0,528(s0)
    4270:	00001825 	move	v1,zero
    4274:	24010001 	li	at,1
    4278:	10400009 	beqz	v0,42a0 <func_80A5F414+0x17c>
    427c:	00000000 	nop
    4280:	54410004 	bnel	v0,at,4294 <func_80A5F414+0x170>
    4284:	24010003 	li	at,3
    4288:	10000005 	b	42a0 <func_80A5F414+0x17c>
    428c:	24030001 	li	v1,1
    4290:	24010003 	li	at,3
    4294:	14410002 	bne	v0,at,42a0 <func_80A5F414+0x17c>
    4298:	00000000 	nop
    429c:	24030002 	li	v1,2
    42a0:	0c000000 	jal	0 <func_80A5B2F0>
    42a4:	afa30034 	sw	v1,52(sp)
    42a8:	3c013f00 	lui	at,0x3f00
    42ac:	44813000 	mtc1	at,$f6
    42b0:	8fa30034 	lw	v1,52(sp)
    42b4:	02002025 	move	a0,s0
    42b8:	4600303c 	c.lt.s	$f6,$f0
    42bc:	44800000 	mtc1	zero,$f0
    42c0:	3c050000 	lui	a1,0x0
    42c4:	24020001 	li	v0,1
    42c8:	45000003 	bc1f	42d8 <func_80A5F414+0x1b4>
    42cc:	000370c0 	sll	t6,v1,0x3
    42d0:	10000001 	b	42d8 <func_80A5F414+0x1b4>
    42d4:	00001025 	move	v0,zero
    42d8:	00026080 	sll	t4,v0,0x2
    42dc:	018e7821 	addu	t7,t4,t6
    42e0:	00af2821 	addu	a1,a1,t7
    42e4:	44060000 	mfc1	a2,$f0
    42e8:	44070000 	mfc1	a3,$f0
    42ec:	0c000000 	jal	0 <func_80A5B2F0>
    42f0:	8ca50000 	lw	a1,0(a1)
    42f4:	8fbf002c 	lw	ra,44(sp)
    42f8:	8fb00028 	lw	s0,40(sp)
    42fc:	27bd0038 	addiu	sp,sp,56
    4300:	03e00008 	jr	ra
    4304:	00000000 	nop

00004308 <func_80A5F5F8>:
    4308:	27bdffd0 	addiu	sp,sp,-48
    430c:	afbf002c 	sw	ra,44(sp)
    4310:	afb00028 	sw	s0,40(sp)
    4314:	afa60038 	sw	a2,56(sp)
    4318:	afa7003c 	sw	a3,60(sp)
    431c:	8c8f01f0 	lw	t7,496(a0)
    4320:	3c01ffff 	lui	at,0xffff
    4324:	34217fff 	ori	at,at,0x7fff
    4328:	01e1c024 	and	t8,t7,at
    432c:	240e0003 	li	t6,3
    4330:	24010005 	li	at,5
    4334:	00808025 	move	s0,a0
    4338:	ac8e014c 	sw	t6,332(a0)
    433c:	10a10007 	beq	a1,at,435c <func_80A5F5F8+0x54>
    4340:	ac9801f0 	sw	t8,496(a0)
    4344:	24010006 	li	at,6
    4348:	10a10004 	beq	a1,at,435c <func_80A5F5F8+0x54>
    434c:	24010004 	li	at,4
    4350:	50a10003 	beql	a1,at,4360 <func_80A5F5F8+0x58>
    4354:	8e020210 	lw	v0,528(s0)
    4358:	24050004 	li	a1,4
    435c:	8e020210 	lw	v0,528(s0)
    4360:	50a20022 	beql	a1,v0,43ec <func_80A5F5F8+0xe4>
    4364:	8e090158 	lw	t1,344(s0)
    4368:	8e190158 	lw	t9,344(s0)
    436c:	3c090000 	lui	t1,0x0
    4370:	ae050210 	sw	a1,528(s0)
    4374:	00194080 	sll	t0,t9,0x2
    4378:	01284821 	addu	t1,t1,t0
    437c:	8d290000 	lw	t1,0(t1)
    4380:	00055080 	sll	t2,a1,0x2
    4384:	012a5821 	addu	t3,t1,t2
    4388:	0c000000 	jal	0 <func_80A5B2F0>
    438c:	8d640000 	lw	a0,0(t3)
    4390:	8e0c0158 	lw	t4,344(s0)
    4394:	44822000 	mtc1	v0,$f4
    4398:	3c0e0000 	lui	t6,0x0
    439c:	000c6880 	sll	t5,t4,0x2
    43a0:	8e0f0210 	lw	t7,528(s0)
    43a4:	01cd7021 	addu	t6,t6,t5
    43a8:	8dce0000 	lw	t6,0(t6)
    43ac:	468021a0 	cvt.s.w	$f6,$f4
    43b0:	000fc080 	sll	t8,t7,0x2
    43b4:	01d8c821 	addu	t9,t6,t8
    43b8:	c7a80038 	lwc1	$f8,56(sp)
    43bc:	8f250000 	lw	a1,0(t9)
    43c0:	24080002 	li	t0,2
    43c4:	afa80014 	sw	t0,20(sp)
    43c8:	e7a60010 	swc1	$f6,16(sp)
    43cc:	260401ac 	addiu	a0,s0,428
    43d0:	3c063f80 	lui	a2,0x3f80
    43d4:	8fa7003c 	lw	a3,60(sp)
    43d8:	0c000000 	jal	0 <func_80A5B2F0>
    43dc:	e7a80018 	swc1	$f8,24(sp)
    43e0:	1000001f 	b	4460 <func_80A5F5F8+0x158>
    43e4:	8fbf002c 	lw	ra,44(sp)
    43e8:	8e090158 	lw	t1,344(s0)
    43ec:	3c0b0000 	lui	t3,0x0
    43f0:	00026080 	sll	t4,v0,0x2
    43f4:	00095080 	sll	t2,t1,0x2
    43f8:	016a5821 	addu	t3,t3,t2
    43fc:	8d6b0000 	lw	t3,0(t3)
    4400:	016c6821 	addu	t5,t3,t4
    4404:	0c000000 	jal	0 <func_80A5B2F0>
    4408:	8da40000 	lw	a0,0(t5)
    440c:	8e0f0158 	lw	t7,344(s0)
    4410:	44825000 	mtc1	v0,$f10
    4414:	3c180000 	lui	t8,0x0
    4418:	000f7080 	sll	t6,t7,0x2
    441c:	8e190210 	lw	t9,528(s0)
    4420:	030ec021 	addu	t8,t8,t6
    4424:	8f180000 	lw	t8,0(t8)
    4428:	46805420 	cvt.s.w	$f16,$f10
    442c:	00194080 	sll	t0,t9,0x2
    4430:	03084821 	addu	t1,t8,t0
    4434:	44809000 	mtc1	zero,$f18
    4438:	8d250000 	lw	a1,0(t1)
    443c:	240a0002 	li	t2,2
    4440:	afaa0014 	sw	t2,20(sp)
    4444:	e7b00010 	swc1	$f16,16(sp)
    4448:	260401ac 	addiu	a0,s0,428
    444c:	3c063f80 	lui	a2,0x3f80
    4450:	8fa7003c 	lw	a3,60(sp)
    4454:	0c000000 	jal	0 <func_80A5B2F0>
    4458:	e7b20018 	swc1	$f18,24(sp)
    445c:	8fbf002c 	lw	ra,44(sp)
    4460:	8fb00028 	lw	s0,40(sp)
    4464:	27bd0030 	addiu	sp,sp,48
    4468:	03e00008 	jr	ra
    446c:	00000000 	nop

00004470 <func_80A5F760>:
    4470:	27bdffe0 	addiu	sp,sp,-32
    4474:	afbf001c 	sw	ra,28(sp)
    4478:	afb00018 	sw	s0,24(sp)
    447c:	8ca51c44 	lw	a1,7236(a1)
    4480:	24100004 	li	s0,4
    4484:	0c000000 	jal	0 <func_80A5B2F0>
    4488:	afa40020 	sw	a0,32(sp)
    448c:	3c0143c8 	lui	at,0x43c8
    4490:	44811000 	mtc1	at,$f2
    4494:	8fa40020 	lw	a0,32(sp)
    4498:	3c014396 	lui	at,0x4396
    449c:	4600103c 	c.lt.s	$f2,$f0
    44a0:	3c06c040 	lui	a2,0xc040
    44a4:	24070000 	li	a3,0
    44a8:	45020006 	bc1fl	44c4 <func_80A5F760+0x54>
    44ac:	44816000 	mtc1	at,$f12
    44b0:	3c014396 	lui	at,0x4396
    44b4:	44816000 	mtc1	at,$f12
    44b8:	1000000c 	b	44ec <func_80A5F760+0x7c>
    44bc:	24100006 	li	s0,6
    44c0:	44816000 	mtc1	at,$f12
    44c4:	00000000 	nop
    44c8:	460c003e 	c.le.s	$f0,$f12
    44cc:	00000000 	nop
    44d0:	45030007 	bc1tl	44f0 <func_80A5F760+0x80>
    44d4:	8c820210 	lw	v0,528(a0)
    44d8:	4602003e 	c.le.s	$f0,$f2
    44dc:	00000000 	nop
    44e0:	45020003 	bc1fl	44f0 <func_80A5F760+0x80>
    44e4:	8c820210 	lw	v0,528(a0)
    44e8:	24100005 	li	s0,5
    44ec:	8c820210 	lw	v0,528(a0)
    44f0:	24010006 	li	at,6
    44f4:	5441000a 	bnel	v0,at,4520 <func_80A5F760+0xb0>
    44f8:	24010005 	li	at,5
    44fc:	4600103c 	c.lt.s	$f2,$f0
    4500:	00000000 	nop
    4504:	45000003 	bc1f	4514 <func_80A5F760+0xa4>
    4508:	00000000 	nop
    450c:	1000001d 	b	4584 <func_80A5F760+0x114>
    4510:	24100006 	li	s0,6
    4514:	1000001b 	b	4584 <func_80A5F760+0x114>
    4518:	24100005 	li	s0,5
    451c:	24010005 	li	at,5
    4520:	54410010 	bnel	v0,at,4564 <func_80A5F760+0xf4>
    4524:	24010004 	li	at,4
    4528:	4600103c 	c.lt.s	$f2,$f0
    452c:	00000000 	nop
    4530:	45020004 	bc1fl	4544 <func_80A5F760+0xd4>
    4534:	460c003c 	c.lt.s	$f0,$f12
    4538:	10000012 	b	4584 <func_80A5F760+0x114>
    453c:	24100006 	li	s0,6
    4540:	460c003c 	c.lt.s	$f0,$f12
    4544:	00000000 	nop
    4548:	45000003 	bc1f	4558 <func_80A5F760+0xe8>
    454c:	00000000 	nop
    4550:	1000000c 	b	4584 <func_80A5F760+0x114>
    4554:	24100004 	li	s0,4
    4558:	1000000a 	b	4584 <func_80A5F760+0x114>
    455c:	24100005 	li	s0,5
    4560:	24010004 	li	at,4
    4564:	14410007 	bne	v0,at,4584 <func_80A5F760+0x114>
    4568:	00000000 	nop
    456c:	4600603c 	c.lt.s	$f12,$f0
    4570:	24100004 	li	s0,4
    4574:	45000003 	bc1f	4584 <func_80A5F760+0x114>
    4578:	00000000 	nop
    457c:	10000001 	b	4584 <func_80A5F760+0x114>
    4580:	24100005 	li	s0,5
    4584:	0c000000 	jal	0 <func_80A5B2F0>
    4588:	02002825 	move	a1,s0
    458c:	8fbf001c 	lw	ra,28(sp)
    4590:	8fb00018 	lw	s0,24(sp)
    4594:	27bd0020 	addiu	sp,sp,32
    4598:	03e00008 	jr	ra
    459c:	00000000 	nop

000045a0 <func_80A5F890>:
    45a0:	27bdffc0 	addiu	sp,sp,-64
    45a4:	3c0e0000 	lui	t6,0x0
    45a8:	8dce0000 	lw	t6,0(t6)
    45ac:	afbf0024 	sw	ra,36(sp)
    45b0:	afb00020 	sw	s0,32(sp)
    45b4:	afa50044 	sw	a1,68(sp)
    45b8:	a5c005be 	sh	zero,1470(t6)
    45bc:	8faf0044 	lw	t7,68(sp)
    45c0:	00808025 	move	s0,a0
    45c4:	0c000000 	jal	0 <func_80A5B2F0>
    45c8:	8de51c44 	lw	a1,7236(t7)
    45cc:	e7a0003c 	swc1	$f0,60(sp)
    45d0:	8e020370 	lw	v0,880(s0)
    45d4:	24010002 	li	at,2
    45d8:	10410002 	beq	v0,at,45e4 <func_80A5F890+0x44>
    45dc:	24010003 	li	at,3
    45e0:	1441005a 	bne	v0,at,474c <func_80A5F890+0x1ac>
    45e4:	3c014396 	lui	at,0x4396
    45e8:	44812000 	mtc1	at,$f4
    45ec:	00000000 	nop
    45f0:	4600203c 	c.lt.s	$f4,$f0
    45f4:	00000000 	nop
    45f8:	45020055 	bc1fl	4750 <func_80A5F890+0x1b0>
    45fc:	8e0a01f0 	lw	t2,496(s0)
    4600:	8e0201f0 	lw	v0,496(s0)
    4604:	24190003 	li	t9,3
    4608:	30588000 	andi	t8,v0,0x8000
    460c:	1700004f 	bnez	t8,474c <func_80A5F890+0x1ac>
    4610:	34488000 	ori	t0,v0,0x8000
    4614:	ae190210 	sw	t9,528(s0)
    4618:	ae0801f0 	sw	t0,496(s0)
    461c:	8fa90044 	lw	t1,68(sp)
    4620:	02002025 	move	a0,s0
    4624:	0c000000 	jal	0 <func_80A5B2F0>
    4628:	8d251c44 	lw	a1,7236(t1)
    462c:	a6020376 	sh	v0,886(s0)
    4630:	860a0376 	lh	t2,886(s0)
    4634:	860b0032 	lh	t3,50(s0)
    4638:	3c010000 	lui	at,0x0
    463c:	448a3000 	mtc1	t2,$f6
    4640:	448b5000 	mtc1	t3,$f10
    4644:	c4320000 	lwc1	$f18,0(at)
    4648:	46803220 	cvt.s.w	$f8,$f6
    464c:	3c010000 	lui	at,0x0
    4650:	46805420 	cvt.s.w	$f16,$f10
    4654:	46104001 	sub.s	$f0,$f8,$f16
    4658:	4600903c 	c.lt.s	$f18,$f0
    465c:	00000000 	nop
    4660:	45000005 	bc1f	4678 <func_80A5F890+0xd8>
    4664:	00000000 	nop
    4668:	3c010000 	lui	at,0x0
    466c:	c4240000 	lwc1	$f4,0(at)
    4670:	10000009 	b	4698 <func_80A5F890+0xf8>
    4674:	46040001 	sub.s	$f0,$f0,$f4
    4678:	c4260000 	lwc1	$f6,0(at)
    467c:	3c010000 	lui	at,0x0
    4680:	4606003c 	c.lt.s	$f0,$f6
    4684:	00000000 	nop
    4688:	45020004 	bc1fl	469c <func_80A5F890+0xfc>
    468c:	8e0c0158 	lw	t4,344(s0)
    4690:	c42a0000 	lwc1	$f10,0(at)
    4694:	460a0000 	add.s	$f0,$f0,$f10
    4698:	8e0c0158 	lw	t4,344(s0)
    469c:	3c0e0000 	lui	t6,0x0
    46a0:	8e0f0210 	lw	t7,528(s0)
    46a4:	000c6880 	sll	t5,t4,0x2
    46a8:	01cd7021 	addu	t6,t6,t5
    46ac:	8dce0000 	lw	t6,0(t6)
    46b0:	000fc080 	sll	t8,t7,0x2
    46b4:	01d8c821 	addu	t9,t6,t8
    46b8:	8f240000 	lw	a0,0(t9)
    46bc:	0c000000 	jal	0 <func_80A5B2F0>
    46c0:	e7a00038 	swc1	$f0,56(sp)
    46c4:	44824000 	mtc1	v0,$f8
    46c8:	c7a00038 	lwc1	$f0,56(sp)
    46cc:	8e0a0158 	lw	t2,344(s0)
    46d0:	46804420 	cvt.s.w	$f16,$f8
    46d4:	3c0c0000 	lui	t4,0x0
    46d8:	000a5880 	sll	t3,t2,0x2
    46dc:	8e0d0210 	lw	t5,528(s0)
    46e0:	018b6021 	addu	t4,t4,t3
    46e4:	260401ac 	addiu	a0,s0,428
    46e8:	46100483 	div.s	$f18,$f0,$f16
    46ec:	000d7880 	sll	t7,t5,0x2
    46f0:	4600910d 	trunc.w.s	$f4,$f18
    46f4:	44092000 	mfc1	t1,$f4
    46f8:	00000000 	nop
    46fc:	a6090378 	sh	t1,888(s0)
    4700:	8d8c0000 	lw	t4,0(t4)
    4704:	018f7021 	addu	t6,t4,t7
    4708:	8dc50000 	lw	a1,0(t6)
    470c:	0c000000 	jal	0 <func_80A5B2F0>
    4710:	afa40030 	sw	a0,48(sp)
    4714:	8e090228 	lw	t1,552(s0)
    4718:	8e1801f0 	lw	t8,496(s0)
    471c:	3c013f80 	lui	at,0x3f80
    4720:	44813000 	mtc1	at,$f6
    4724:	ae09021c 	sw	t1,540(s0)
    4728:	8e090230 	lw	t1,560(s0)
    472c:	8e08022c 	lw	t0,556(s0)
    4730:	2401f7ff 	li	at,-2049
    4734:	0301c824 	and	t9,t8,at
    4738:	ae1901f0 	sw	t9,496(s0)
    473c:	e60601c8 	swc1	$f6,456(s0)
    4740:	ae090224 	sw	t1,548(s0)
    4744:	10000027 	b	47e4 <func_80A5F890+0x244>
    4748:	ae080220 	sw	t0,544(s0)
    474c:	8e0a01f0 	lw	t2,496(s0)
    4750:	3c0141c8 	lui	at,0x41c8
    4754:	02002025 	move	a0,s0
    4758:	314b8000 	andi	t3,t2,0x8000
    475c:	1160001d 	beqz	t3,47d4 <func_80A5F890+0x234>
    4760:	00000000 	nop
    4764:	860d0032 	lh	t5,50(s0)
    4768:	860c0378 	lh	t4,888(s0)
    476c:	44815000 	mtc1	at,$f10
    4770:	c6080214 	lwc1	$f8,532(s0)
    4774:	01ac7821 	addu	t7,t5,t4
    4778:	a60f0032 	sh	t7,50(s0)
    477c:	4608503c 	c.lt.s	$f10,$f8
    4780:	860e0032 	lh	t6,50(s0)
    4784:	45000010 	bc1f	47c8 <func_80A5F890+0x228>
    4788:	a60e00b6 	sh	t6,182(s0)
    478c:	8e0201f0 	lw	v0,496(s0)
    4790:	2404282b 	li	a0,10283
    4794:	260500e4 	addiu	a1,s0,228
    4798:	30580800 	andi	t8,v0,0x800
    479c:	1700000a 	bnez	t8,47c8 <func_80A5F890+0x228>
    47a0:	34590800 	ori	t9,v0,0x800
    47a4:	3c080000 	lui	t0,0x0
    47a8:	3c090000 	lui	t1,0x0
    47ac:	ae1901f0 	sw	t9,496(s0)
    47b0:	25290000 	addiu	t1,t1,0
    47b4:	25070000 	addiu	a3,t0,0
    47b8:	afa70010 	sw	a3,16(sp)
    47bc:	afa90014 	sw	t1,20(sp)
    47c0:	0c000000 	jal	0 <func_80A5B2F0>
    47c4:	24060004 	li	a2,4
    47c8:	260a01ac 	addiu	t2,s0,428
    47cc:	10000005 	b	47e4 <func_80A5F890+0x244>
    47d0:	afaa0030 	sw	t2,48(sp)
    47d4:	0c000000 	jal	0 <func_80A5B2F0>
    47d8:	8fa50044 	lw	a1,68(sp)
    47dc:	260b01ac 	addiu	t3,s0,428
    47e0:	afab0030 	sw	t3,48(sp)
    47e4:	8e020210 	lw	v0,528(s0)
    47e8:	24010006 	li	at,6
    47ec:	14410008 	bne	v0,at,4810 <func_80A5F890+0x270>
    47f0:	3c014100 	lui	at,0x4100
    47f4:	44810000 	mtc1	at,$f0
    47f8:	3c010000 	lui	at,0x0
    47fc:	e6000068 	swc1	$f0,104(s0)
    4800:	c4300000 	lwc1	$f16,0(at)
    4804:	46100482 	mul.s	$f18,$f0,$f16
    4808:	1000001d 	b	4880 <func_80A5F890+0x2e0>
    480c:	e61201c8 	swc1	$f18,456(s0)
    4810:	24010005 	li	at,5
    4814:	14410008 	bne	v0,at,4838 <func_80A5F890+0x298>
    4818:	3c0140c0 	lui	at,0x40c0
    481c:	44810000 	mtc1	at,$f0
    4820:	3c013ec0 	lui	at,0x3ec0
    4824:	44812000 	mtc1	at,$f4
    4828:	e6000068 	swc1	$f0,104(s0)
    482c:	46040182 	mul.s	$f6,$f0,$f4
    4830:	10000013 	b	4880 <func_80A5F890+0x2e0>
    4834:	e60601c8 	swc1	$f6,456(s0)
    4838:	24010004 	li	at,4
    483c:	1441000b 	bne	v0,at,486c <func_80A5F890+0x2cc>
    4840:	3c014040 	lui	at,0x4040
    4844:	44815000 	mtc1	at,$f10
    4848:	02002025 	move	a0,s0
    484c:	0c000000 	jal	0 <func_80A5B2F0>
    4850:	e60a0068 	swc1	$f10,104(s0)
    4854:	3c013f40 	lui	at,0x3f40
    4858:	44818000 	mtc1	at,$f16
    485c:	c6080068 	lwc1	$f8,104(s0)
    4860:	46104482 	mul.s	$f18,$f8,$f16
    4864:	10000006 	b	4880 <func_80A5F890+0x2e0>
    4868:	e61201c8 	swc1	$f18,456(s0)
    486c:	3c013f80 	lui	at,0x3f80
    4870:	44802000 	mtc1	zero,$f4
    4874:	44813000 	mtc1	at,$f6
    4878:	e6040068 	swc1	$f4,104(s0)
    487c:	e60601c8 	swc1	$f6,456(s0)
    4880:	8e0d01f0 	lw	t5,496(s0)
    4884:	31ac8000 	andi	t4,t5,0x8000
    4888:	15800023 	bnez	t4,4918 <func_80A5F890+0x378>
    488c:	00000000 	nop
    4890:	860f0250 	lh	t7,592(s0)
    4894:	02002025 	move	a0,s0
    4898:	2605021c 	addiu	a1,s0,540
    489c:	25ee0001 	addiu	t6,t7,1
    48a0:	a60e0250 	sh	t6,592(s0)
    48a4:	86180250 	lh	t8,592(s0)
    48a8:	26190228 	addiu	t9,s0,552
    48ac:	2b01012d 	slti	at,t8,301
    48b0:	14200019 	bnez	at,4918 <func_80A5F890+0x378>
    48b4:	00000000 	nop
    48b8:	afb9002c 	sw	t9,44(sp)
    48bc:	0c000000 	jal	0 <func_80A5B2F0>
    48c0:	afa50034 	sw	a1,52(sp)
    48c4:	8fa8002c 	lw	t0,44(sp)
    48c8:	8fa50034 	lw	a1,52(sp)
    48cc:	3c070000 	lui	a3,0x0
    48d0:	8d0a0000 	lw	t2,0(t0)
    48d4:	3c0c0000 	lui	t4,0x0
    48d8:	24e70000 	addiu	a3,a3,0
    48dc:	acaa0000 	sw	t2,0(a1)
    48e0:	8d090004 	lw	t1,4(t0)
    48e4:	258c0000 	addiu	t4,t4,0
    48e8:	24042805 	li	a0,10245
    48ec:	aca90004 	sw	t1,4(a1)
    48f0:	8d0a0008 	lw	t2,8(t0)
    48f4:	24060004 	li	a2,4
    48f8:	acaa0008 	sw	t2,8(a1)
    48fc:	8e0b01f0 	lw	t3,496(s0)
    4900:	000b6900 	sll	t5,t3,0x4
    4904:	05a10004 	bgez	t5,4918 <func_80A5F890+0x378>
    4908:	00000000 	nop
    490c:	afa70010 	sw	a3,16(sp)
    4910:	0c000000 	jal	0 <func_80A5B2F0>
    4914:	afac0014 	sw	t4,20(sp)
    4918:	0c000000 	jal	0 <func_80A5B2F0>
    491c:	8fa40030 	lw	a0,48(sp)
    4920:	50400022 	beqzl	v0,49ac <func_80A5F890+0x40c>
    4924:	8fbf0024 	lw	ra,36(sp)
    4928:	8e020210 	lw	v0,528(s0)
    492c:	24010006 	li	at,6
    4930:	54410006 	bnel	v0,at,494c <func_80A5F890+0x3ac>
    4934:	24010005 	li	at,5
    4938:	0c000000 	jal	0 <func_80A5B2F0>
    493c:	02002025 	move	a0,s0
    4940:	10000007 	b	4960 <func_80A5F890+0x3c0>
    4944:	8e0f01f0 	lw	t7,496(s0)
    4948:	24010005 	li	at,5
    494c:	54410004 	bnel	v0,at,4960 <func_80A5F890+0x3c0>
    4950:	8e0f01f0 	lw	t7,496(s0)
    4954:	0c000000 	jal	0 <func_80A5B2F0>
    4958:	02002025 	move	a0,s0
    495c:	8e0f01f0 	lw	t7,496(s0)
    4960:	3c01ffff 	lui	at,0xffff
    4964:	34217fff 	ori	at,at,0x7fff
    4968:	01e17024 	and	t6,t7,at
    496c:	ae0e01f0 	sw	t6,496(s0)
    4970:	3c0142c8 	lui	at,0x42c8
    4974:	44814000 	mtc1	at,$f8
    4978:	c7aa003c 	lwc1	$f10,60(sp)
    497c:	02002025 	move	a0,s0
    4980:	4608503c 	c.lt.s	$f10,$f8
    4984:	00000000 	nop
    4988:	45000005 	bc1f	49a0 <func_80A5F890+0x400>
    498c:	00000000 	nop
    4990:	0c000000 	jal	0 <func_80A5B2F0>
    4994:	02002025 	move	a0,s0
    4998:	10000004 	b	49ac <func_80A5F890+0x40c>
    499c:	8fbf0024 	lw	ra,36(sp)
    49a0:	0c000000 	jal	0 <func_80A5B2F0>
    49a4:	8fa50044 	lw	a1,68(sp)
    49a8:	8fbf0024 	lw	ra,36(sp)
    49ac:	8fb00020 	lw	s0,32(sp)
    49b0:	27bd0040 	addiu	sp,sp,64
    49b4:	03e00008 	jr	ra
    49b8:	00000000 	nop

000049bc <func_80A5FCAC>:
    49bc:	27bdffe0 	addiu	sp,sp,-32
    49c0:	44802000 	mtc1	zero,$f4
    49c4:	afbf001c 	sw	ra,28(sp)
    49c8:	ac800204 	sw	zero,516(a0)
    49cc:	ac800218 	sw	zero,536(a0)
    49d0:	e4840068 	swc1	$f4,104(a0)
    49d4:	0c000000 	jal	0 <func_80A5B2F0>
    49d8:	afa40020 	sw	a0,32(sp)
    49dc:	8fa40020 	lw	a0,32(sp)
    49e0:	3c070000 	lui	a3,0x0
    49e4:	3c080000 	lui	t0,0x0
    49e8:	8c8f0228 	lw	t7,552(a0)
    49ec:	2485021c 	addiu	a1,a0,540
    49f0:	24e70000 	addiu	a3,a3,0
    49f4:	acaf0000 	sw	t7,0(a1)
    49f8:	8c8e022c 	lw	t6,556(a0)
    49fc:	25080000 	addiu	t0,t0,0
    4a00:	24060004 	li	a2,4
    4a04:	acae0004 	sw	t6,4(a1)
    4a08:	8c8f0230 	lw	t7,560(a0)
    4a0c:	acaf0008 	sw	t7,8(a1)
    4a10:	8c9801f0 	lw	t8,496(a0)
    4a14:	24041844 	li	a0,6212
    4a18:	0018c900 	sll	t9,t8,0x4
    4a1c:	07230005 	bgezl	t9,4a34 <func_80A5FCAC+0x78>
    4a20:	8fbf001c 	lw	ra,28(sp)
    4a24:	afa70010 	sw	a3,16(sp)
    4a28:	0c000000 	jal	0 <func_80A5B2F0>
    4a2c:	afa80014 	sw	t0,20(sp)
    4a30:	8fbf001c 	lw	ra,28(sp)
    4a34:	27bd0020 	addiu	sp,sp,32
    4a38:	03e00008 	jr	ra
    4a3c:	00000000 	nop

00004a40 <func_80A5FD30>:
    4a40:	3c0f0000 	lui	t7,0x0
    4a44:	25ef0000 	addiu	t7,t7,0
    4a48:	00047040 	sll	t6,a0,0x1
    4a4c:	01cf1021 	addu	v0,t6,t7
    4a50:	44856000 	mtc1	a1,$f12
    4a54:	84580000 	lh	t8,0(v0)
    4a58:	8fa50010 	lw	a1,16(sp)
    4a5c:	24030003 	li	v1,3
    4a60:	a4f80000 	sh	t8,0(a3)
    4a64:	1083000b 	beq	a0,v1,4a94 <func_80A5FD30+0x54>
    4a68:	e4ac0000 	swc1	$f12,0(a1)
    4a6c:	3c190000 	lui	t9,0x0
    4a70:	27390000 	addiu	t9,t9,0
    4a74:	10590007 	beq	v0,t9,4a94 <func_80A5FD30+0x54>
    4a78:	3c080000 	lui	t0,0x0
    4a7c:	25080000 	addiu	t0,t0,0
    4a80:	10480004 	beq	v0,t0,4a94 <func_80A5FD30+0x54>
    4a84:	3c090000 	lui	t1,0x0
    4a88:	25290000 	addiu	t1,t1,0
    4a8c:	54490005 	bnel	v0,t1,4aa4 <func_80A5FD30+0x64>
    4a90:	24010001 	li	at,1
    4a94:	44802000 	mtc1	zero,$f4
    4a98:	00000000 	nop
    4a9c:	e4a40000 	swc1	$f4,0(a1)
    4aa0:	24010001 	li	at,1
    4aa4:	14c1000d 	bne	a2,at,4adc <func_80A5FD30+0x9c>
    4aa8:	3c0a0000 	lui	t2,0x0
    4aac:	254a0000 	addiu	t2,t2,0
    4ab0:	144a0005 	bne	v0,t2,4ac8 <func_80A5FD30+0x88>
    4ab4:	3c0c0000 	lui	t4,0x0
    4ab8:	240b0004 	li	t3,4
    4abc:	a4eb0000 	sh	t3,0(a3)
    4ac0:	03e00008 	jr	ra
    4ac4:	e4ac0000 	swc1	$f12,0(a1)
    4ac8:	258c0000 	addiu	t4,t4,0
    4acc:	144c0003 	bne	v0,t4,4adc <func_80A5FD30+0x9c>
    4ad0:	00000000 	nop
    4ad4:	a4e30000 	sh	v1,0(a3)
    4ad8:	e4ac0000 	swc1	$f12,0(a1)
    4adc:	03e00008 	jr	ra
    4ae0:	00000000 	nop

00004ae4 <func_80A5FDD4>:
    4ae4:	27bdffc8 	addiu	sp,sp,-56
    4ae8:	afbf002c 	sw	ra,44(sp)
    4aec:	afb00028 	sw	s0,40(sp)
    4af0:	c4800068 	lwc1	$f0,104(a0)
    4af4:	44802000 	mtc1	zero,$f4
    4af8:	8c8e01f0 	lw	t6,496(a0)
    4afc:	2401efff 	li	at,-4097
    4b00:	46002032 	c.eq.s	$f4,$f0
    4b04:	24050004 	li	a1,4
    4b08:	01c17824 	and	t7,t6,at
    4b0c:	00808025 	move	s0,a0
    4b10:	00001825 	move	v1,zero
    4b14:	ac85014c 	sw	a1,332(a0)
    4b18:	45000009 	bc1f	4b40 <func_80A5FDD4+0x5c>
    4b1c:	ac8f01f0 	sw	t7,496(a0)
    4b20:	8c980210 	lw	t8,528(a0)
    4b24:	24040005 	li	a0,5
    4b28:	24060006 	li	a2,6
    4b2c:	13000002 	beqz	t8,4b38 <func_80A5FDD4+0x54>
    4b30:	00000000 	nop
    4b34:	24030001 	li	v1,1
    4b38:	10000023 	b	4bc8 <func_80A5FDD4+0xe4>
    4b3c:	ae000210 	sw	zero,528(s0)
    4b40:	3c014040 	lui	at,0x4040
    4b44:	44813000 	mtc1	at,$f6
    4b48:	24060006 	li	a2,6
    4b4c:	24040005 	li	a0,5
    4b50:	4606003e 	c.le.s	$f0,$f6
    4b54:	3c0140c0 	lui	at,0x40c0
    4b58:	45020008 	bc1fl	4b7c <func_80A5FDD4+0x98>
    4b5c:	44814000 	mtc1	at,$f8
    4b60:	8e190210 	lw	t9,528(s0)
    4b64:	10b90002 	beq	a1,t9,4b70 <func_80A5FDD4+0x8c>
    4b68:	00000000 	nop
    4b6c:	24030001 	li	v1,1
    4b70:	10000015 	b	4bc8 <func_80A5FDD4+0xe4>
    4b74:	ae050210 	sw	a1,528(s0)
    4b78:	44814000 	mtc1	at,$f8
    4b7c:	24060006 	li	a2,6
    4b80:	24040005 	li	a0,5
    4b84:	4608003e 	c.le.s	$f0,$f8
    4b88:	00000000 	nop
    4b8c:	45020009 	bc1fl	4bb4 <func_80A5FDD4+0xd0>
    4b90:	8e090210 	lw	t1,528(s0)
    4b94:	8e080210 	lw	t0,528(s0)
    4b98:	24040005 	li	a0,5
    4b9c:	10880002 	beq	a0,t0,4ba8 <func_80A5FDD4+0xc4>
    4ba0:	00000000 	nop
    4ba4:	24030001 	li	v1,1
    4ba8:	10000007 	b	4bc8 <func_80A5FDD4+0xe4>
    4bac:	ae040210 	sw	a0,528(s0)
    4bb0:	8e090210 	lw	t1,528(s0)
    4bb4:	24060006 	li	a2,6
    4bb8:	50c90003 	beql	a2,t1,4bc8 <func_80A5FDD4+0xe4>
    4bbc:	ae060210 	sw	a2,528(s0)
    4bc0:	24030001 	li	v1,1
    4bc4:	ae060210 	sw	a2,528(s0)
    4bc8:	8e020210 	lw	v0,528(s0)
    4bcc:	3c013f00 	lui	at,0x3f00
    4bd0:	14a20007 	bne	a1,v0,4bf0 <func_80A5FDD4+0x10c>
    4bd4:	00000000 	nop
    4bd8:	c60a0068 	lwc1	$f10,104(s0)
    4bdc:	44818000 	mtc1	at,$f16
    4be0:	00000000 	nop
    4be4:	46105482 	mul.s	$f18,$f10,$f16
    4be8:	1000002d 	b	4ca0 <func_80A5FDD4+0x1bc>
    4bec:	e7b20030 	swc1	$f18,48(sp)
    4bf0:	14820013 	bne	a0,v0,4c40 <func_80A5FDD4+0x15c>
    4bf4:	3c070000 	lui	a3,0x0
    4bf8:	3c013e80 	lui	at,0x3e80
    4bfc:	44813000 	mtc1	at,$f6
    4c00:	c6040068 	lwc1	$f4,104(s0)
    4c04:	3c0a0000 	lui	t2,0x0
    4c08:	24e70000 	addiu	a3,a3,0
    4c0c:	46062202 	mul.s	$f8,$f4,$f6
    4c10:	254a0000 	addiu	t2,t2,0
    4c14:	afaa0014 	sw	t2,20(sp)
    4c18:	afa70010 	sw	a3,16(sp)
    4c1c:	afa30034 	sw	v1,52(sp)
    4c20:	24042804 	li	a0,10244
    4c24:	260500e4 	addiu	a1,s0,228
    4c28:	e7a80030 	swc1	$f8,48(sp)
    4c2c:	0c000000 	jal	0 <func_80A5B2F0>
    4c30:	24060004 	li	a2,4
    4c34:	8fa30034 	lw	v1,52(sp)
    4c38:	10000019 	b	4ca0 <func_80A5FDD4+0x1bc>
    4c3c:	8e020210 	lw	v0,528(s0)
    4c40:	14c20014 	bne	a2,v0,4c94 <func_80A5FDD4+0x1b0>
    4c44:	3c013f80 	lui	at,0x3f80
    4c48:	3c010000 	lui	at,0x0
    4c4c:	c4300000 	lwc1	$f16,0(at)
    4c50:	c60a0068 	lwc1	$f10,104(s0)
    4c54:	3c070000 	lui	a3,0x0
    4c58:	3c0b0000 	lui	t3,0x0
    4c5c:	46105482 	mul.s	$f18,$f10,$f16
    4c60:	24e70000 	addiu	a3,a3,0
    4c64:	256b0000 	addiu	t3,t3,0
    4c68:	afab0014 	sw	t3,20(sp)
    4c6c:	afa70010 	sw	a3,16(sp)
    4c70:	afa30034 	sw	v1,52(sp)
    4c74:	24042804 	li	a0,10244
    4c78:	e7b20030 	swc1	$f18,48(sp)
    4c7c:	260500e4 	addiu	a1,s0,228
    4c80:	0c000000 	jal	0 <func_80A5B2F0>
    4c84:	24060004 	li	a2,4
    4c88:	8fa30034 	lw	v1,52(sp)
    4c8c:	10000004 	b	4ca0 <func_80A5FDD4+0x1bc>
    4c90:	8e020210 	lw	v0,528(s0)
    4c94:	44812000 	mtc1	at,$f4
    4c98:	00000000 	nop
    4c9c:	e7a40030 	swc1	$f4,48(sp)
    4ca0:	24010001 	li	at,1
    4ca4:	5461002b 	bnel	v1,at,4d54 <func_80A5FDD4+0x270>
    4ca8:	8e0c0158 	lw	t4,344(s0)
    4cac:	8e0c0158 	lw	t4,344(s0)
    4cb0:	3c0e0000 	lui	t6,0x0
    4cb4:	00027880 	sll	t7,v0,0x2
    4cb8:	000c6880 	sll	t5,t4,0x2
    4cbc:	01cd7021 	addu	t6,t6,t5
    4cc0:	8dce0000 	lw	t6,0(t6)
    4cc4:	01cfc021 	addu	t8,t6,t7
    4cc8:	0c000000 	jal	0 <func_80A5B2F0>
    4ccc:	8f040000 	lw	a0,0(t8)
    4cd0:	8e030210 	lw	v1,528(s0)
    4cd4:	3c010000 	lui	at,0x0
    4cd8:	c7a80030 	lwc1	$f8,48(sp)
    4cdc:	00031880 	sll	v1,v1,0x2
    4ce0:	00230821 	addu	at,at,v1
    4ce4:	c4260000 	lwc1	$f6,0(at)
    4ce8:	3c013fc0 	lui	at,0x3fc0
    4cec:	44818000 	mtc1	at,$f16
    4cf0:	46083282 	mul.s	$f10,$f6,$f8
    4cf4:	8e190158 	lw	t9,344(s0)
    4cf8:	44822000 	mtc1	v0,$f4
    4cfc:	3c090000 	lui	t1,0x0
    4d00:	00194080 	sll	t0,t9,0x2
    4d04:	01284821 	addu	t1,t1,t0
    4d08:	8d290000 	lw	t1,0(t1)
    4d0c:	46105482 	mul.s	$f18,$f10,$f16
    4d10:	44800000 	mtc1	zero,$f0
    4d14:	3c01c040 	lui	at,0xc040
    4d18:	01235021 	addu	t2,t1,v1
    4d1c:	44814000 	mtc1	at,$f8
    4d20:	8d450000 	lw	a1,0(t2)
    4d24:	468021a0 	cvt.s.w	$f6,$f4
    4d28:	44069000 	mfc1	a2,$f18
    4d2c:	240b0002 	li	t3,2
    4d30:	44070000 	mfc1	a3,$f0
    4d34:	afab0014 	sw	t3,20(sp)
    4d38:	260401ac 	addiu	a0,s0,428
    4d3c:	e7a60010 	swc1	$f6,16(sp)
    4d40:	0c000000 	jal	0 <func_80A5B2F0>
    4d44:	e7a80018 	swc1	$f8,24(sp)
    4d48:	10000027 	b	4de8 <func_80A5FDD4+0x304>
    4d4c:	8fbf002c 	lw	ra,44(sp)
    4d50:	8e0c0158 	lw	t4,344(s0)
    4d54:	3c0e0000 	lui	t6,0x0
    4d58:	00027880 	sll	t7,v0,0x2
    4d5c:	000c6880 	sll	t5,t4,0x2
    4d60:	01cd7021 	addu	t6,t6,t5
    4d64:	8dce0000 	lw	t6,0(t6)
    4d68:	01cfc021 	addu	t8,t6,t7
    4d6c:	0c000000 	jal	0 <func_80A5B2F0>
    4d70:	8f040000 	lw	a0,0(t8)
    4d74:	8e030210 	lw	v1,528(s0)
    4d78:	3c010000 	lui	at,0x0
    4d7c:	c7b00030 	lwc1	$f16,48(sp)
    4d80:	00031880 	sll	v1,v1,0x2
    4d84:	00230821 	addu	at,at,v1
    4d88:	c42a0000 	lwc1	$f10,0(at)
    4d8c:	3c013fc0 	lui	at,0x3fc0
    4d90:	44812000 	mtc1	at,$f4
    4d94:	46105482 	mul.s	$f18,$f10,$f16
    4d98:	8e190158 	lw	t9,344(s0)
    4d9c:	44824000 	mtc1	v0,$f8
    4da0:	3c090000 	lui	t1,0x0
    4da4:	00194080 	sll	t0,t9,0x2
    4da8:	01284821 	addu	t1,t1,t0
    4dac:	8d290000 	lw	t1,0(t1)
    4db0:	46049182 	mul.s	$f6,$f18,$f4
    4db4:	44800000 	mtc1	zero,$f0
    4db8:	01235021 	addu	t2,t1,v1
    4dbc:	8d450000 	lw	a1,0(t2)
    4dc0:	240b0002 	li	t3,2
    4dc4:	44070000 	mfc1	a3,$f0
    4dc8:	468042a0 	cvt.s.w	$f10,$f8
    4dcc:	44063000 	mfc1	a2,$f6
    4dd0:	afab0014 	sw	t3,20(sp)
    4dd4:	260401ac 	addiu	a0,s0,428
    4dd8:	e7a00018 	swc1	$f0,24(sp)
    4ddc:	0c000000 	jal	0 <func_80A5B2F0>
    4de0:	e7aa0010 	swc1	$f10,16(sp)
    4de4:	8fbf002c 	lw	ra,44(sp)
    4de8:	8fb00028 	lw	s0,40(sp)
    4dec:	27bd0038 	addiu	sp,sp,56
    4df0:	03e00008 	jr	ra
    4df4:	00000000 	nop

00004df8 <func_80A600E8>:
    4df8:	27bdffd8 	addiu	sp,sp,-40
    4dfc:	afbf0024 	sw	ra,36(sp)
    4e00:	afb00020 	sw	s0,32(sp)
    4e04:	afa5002c 	sw	a1,44(sp)
    4e08:	8c820210 	lw	v0,528(a0)
    4e0c:	00808025 	move	s0,a0
    4e10:	24010001 	li	at,1
    4e14:	10400003 	beqz	v0,4e24 <func_80A600E8+0x2c>
    4e18:	02002025 	move	a0,s0
    4e1c:	54410006 	bnel	v0,at,4e38 <func_80A600E8+0x40>
    4e20:	24010004 	li	at,4
    4e24:	0c000000 	jal	0 <func_80A5B2F0>
    4e28:	8fa5002c 	lw	a1,44(sp)
    4e2c:	10000006 	b	4e48 <func_80A600E8+0x50>
    4e30:	00000000 	nop
    4e34:	24010004 	li	at,4
    4e38:	14410003 	bne	v0,at,4e48 <func_80A600E8+0x50>
    4e3c:	00000000 	nop
    4e40:	0c000000 	jal	0 <func_80A5B2F0>
    4e44:	02002025 	move	a0,s0
    4e48:	3c060000 	lui	a2,0x0
    4e4c:	24c60000 	addiu	a2,a2,0
    4e50:	02002025 	move	a0,s0
    4e54:	0c000000 	jal	0 <func_80A5B2F0>
    4e58:	8fa5002c 	lw	a1,44(sp)
    4e5c:	8e0e0388 	lw	t6,904(s0)
    4e60:	55c0000c 	bnezl	t6,4e94 <func_80A600E8+0x9c>
    4e64:	8e020210 	lw	v0,528(s0)
    4e68:	44802000 	mtc1	zero,$f4
    4e6c:	44803000 	mtc1	zero,$f6
    4e70:	8e0f038c 	lw	t7,908(s0)
    4e74:	e6040068 	swc1	$f4,104(s0)
    4e78:	e5e60068 	swc1	$f6,104(t7)
    4e7c:	8e180210 	lw	t8,528(s0)
    4e80:	53000004 	beqzl	t8,4e94 <func_80A600E8+0x9c>
    4e84:	8e020210 	lw	v0,528(s0)
    4e88:	0c000000 	jal	0 <func_80A5B2F0>
    4e8c:	02002025 	move	a0,s0
    4e90:	8e020210 	lw	v0,528(s0)
    4e94:	24010004 	li	at,4
    4e98:	260401ac 	addiu	a0,s0,428
    4e9c:	14410006 	bne	v0,at,4eb8 <func_80A600E8+0xc0>
    4ea0:	3c013f00 	lui	at,0x3f00
    4ea4:	44815000 	mtc1	at,$f10
    4ea8:	c6080068 	lwc1	$f8,104(s0)
    4eac:	460a4002 	mul.s	$f0,$f8,$f10
    4eb0:	10000014 	b	4f04 <func_80A600E8+0x10c>
    4eb4:	00000000 	nop
    4eb8:	24010005 	li	at,5
    4ebc:	14410006 	bne	v0,at,4ed8 <func_80A600E8+0xe0>
    4ec0:	3c013e80 	lui	at,0x3e80
    4ec4:	44819000 	mtc1	at,$f18
    4ec8:	c6100068 	lwc1	$f16,104(s0)
    4ecc:	46128002 	mul.s	$f0,$f16,$f18
    4ed0:	1000000c 	b	4f04 <func_80A600E8+0x10c>
    4ed4:	00000000 	nop
    4ed8:	24010006 	li	at,6
    4edc:	14410006 	bne	v0,at,4ef8 <func_80A600E8+0x100>
    4ee0:	3c010000 	lui	at,0x0
    4ee4:	c4260000 	lwc1	$f6,0(at)
    4ee8:	c6040068 	lwc1	$f4,104(s0)
    4eec:	46062002 	mul.s	$f0,$f4,$f6
    4ef0:	10000004 	b	4f04 <func_80A600E8+0x10c>
    4ef4:	00000000 	nop
    4ef8:	3c013f80 	lui	at,0x3f80
    4efc:	44810000 	mtc1	at,$f0
    4f00:	00000000 	nop
    4f04:	0c000000 	jal	0 <func_80A5B2F0>
    4f08:	e60001c8 	swc1	$f0,456(s0)
    4f0c:	1440000a 	bnez	v0,4f38 <func_80A600E8+0x140>
    4f10:	00000000 	nop
    4f14:	8e190210 	lw	t9,528(s0)
    4f18:	5720000a 	bnezl	t9,4f44 <func_80A600E8+0x14c>
    4f1c:	8e0801f0 	lw	t0,496(s0)
    4f20:	44804000 	mtc1	zero,$f8
    4f24:	c60a0068 	lwc1	$f10,104(s0)
    4f28:	460a4032 	c.eq.s	$f8,$f10
    4f2c:	00000000 	nop
    4f30:	45030004 	bc1tl	4f44 <func_80A600E8+0x14c>
    4f34:	8e0801f0 	lw	t0,496(s0)
    4f38:	0c000000 	jal	0 <func_80A5B2F0>
    4f3c:	02002025 	move	a0,s0
    4f40:	8e0801f0 	lw	t0,496(s0)
    4f44:	00084a00 	sll	t1,t0,0x8
    4f48:	05230009 	bgezl	t1,4f70 <func_80A600E8+0x178>
    4f4c:	8e02038c 	lw	v0,908(s0)
    4f50:	8e0b038c 	lw	t3,908(s0)
    4f54:	240a0007 	li	t2,7
    4f58:	44808000 	mtc1	zero,$f16
    4f5c:	a56a01e6 	sh	t2,486(t3)
    4f60:	8e0c038c 	lw	t4,908(s0)
    4f64:	1000000a 	b	4f90 <func_80A600E8+0x198>
    4f68:	e59001e0 	swc1	$f16,480(t4)
    4f6c:	8e02038c 	lw	v0,908(s0)
    4f70:	96060394 	lhu	a2,916(s0)
    4f74:	8e040210 	lw	a0,528(s0)
    4f78:	8e0501c4 	lw	a1,452(s0)
    4f7c:	244d01e0 	addiu	t5,v0,480
    4f80:	afad0010 	sw	t5,16(sp)
    4f84:	244701e6 	addiu	a3,v0,486
    4f88:	0c000000 	jal	0 <func_80A5B2F0>
    4f8c:	30c60001 	andi	a2,a2,0x1
    4f90:	8fbf0024 	lw	ra,36(sp)
    4f94:	8fb00020 	lw	s0,32(sp)
    4f98:	27bd0028 	addiu	sp,sp,40
    4f9c:	03e00008 	jr	ra
    4fa0:	00000000 	nop

00004fa4 <func_80A60294>:
    4fa4:	27bdffe8 	addiu	sp,sp,-24
    4fa8:	afbf0014 	sw	ra,20(sp)
    4fac:	afa5001c 	sw	a1,28(sp)
    4fb0:	afa60020 	sw	a2,32(sp)
    4fb4:	240e0006 	li	t6,6
    4fb8:	240f0001 	li	t7,1
    4fbc:	ac8e0210 	sw	t6,528(a0)
    4fc0:	ac8f0380 	sw	t7,896(a0)
    4fc4:	00803825 	move	a3,a0
    4fc8:	3c010000 	lui	at,0x0
    4fcc:	c4260000 	lwc1	$f6,0(at)
    4fd0:	c4e40068 	lwc1	$f4,104(a3)
    4fd4:	8cf80158 	lw	t8,344(a3)
    4fd8:	3c080000 	lui	t0,0x0
    4fdc:	46062202 	mul.s	$f8,$f4,$f6
    4fe0:	0018c880 	sll	t9,t8,0x2
    4fe4:	01194021 	addu	t0,t0,t9
    4fe8:	8d080000 	lw	t0,0(t0)
    4fec:	248401ac 	addiu	a0,a0,428
    4ff0:	8d050018 	lw	a1,24(t0)
    4ff4:	44064000 	mfc1	a2,$f8
    4ff8:	0c000000 	jal	0 <func_80A5B2F0>
    4ffc:	00000000 	nop
    5000:	8fbf0014 	lw	ra,20(sp)
    5004:	27bd0018 	addiu	sp,sp,24
    5008:	03e00008 	jr	ra
    500c:	00000000 	nop

00005010 <func_80A60300>:
    5010:	27bdffc8 	addiu	sp,sp,-56
    5014:	afbf001c 	sw	ra,28(sp)
    5018:	afb00018 	sw	s0,24(sp)
    501c:	afa5003c 	sw	a1,60(sp)
    5020:	8cce0018 	lw	t6,24(a2)
    5024:	00808025 	move	s0,a0
    5028:	26050024 	addiu	a1,s0,36
    502c:	448e2000 	mtc1	t6,$f4
    5030:	27a4002c 	addiu	a0,sp,44
    5034:	468021a0 	cvt.s.w	$f6,$f4
    5038:	e7a6002c 	swc1	$f6,44(sp)
    503c:	8ccf001c 	lw	t7,28(a2)
    5040:	448f4000 	mtc1	t7,$f8
    5044:	00000000 	nop
    5048:	468042a0 	cvt.s.w	$f10,$f8
    504c:	e7aa0030 	swc1	$f10,48(sp)
    5050:	8cd80020 	lw	t8,32(a2)
    5054:	afa50024 	sw	a1,36(sp)
    5058:	44988000 	mtc1	t8,$f16
    505c:	00000000 	nop
    5060:	468084a0 	cvt.s.w	$f18,$f16
    5064:	0c000000 	jal	0 <func_80A5B2F0>
    5068:	e7b20034 	swc1	$f18,52(sp)
    506c:	3c014100 	lui	at,0x4100
    5070:	44811000 	mtc1	at,$f2
    5074:	8fa50024 	lw	a1,36(sp)
    5078:	27a6002c 	addiu	a2,sp,44
    507c:	4600103c 	c.lt.s	$f2,$f0
    5080:	02002025 	move	a0,s0
    5084:	24070190 	li	a3,400
    5088:	4502000c 	bc1fl	50bc <func_80A60300+0xac>
    508c:	8cc80000 	lw	t0,0(a2)
    5090:	0c000000 	jal	0 <func_80A5B2F0>
    5094:	8fa5003c 	lw	a1,60(sp)
    5098:	3c014100 	lui	at,0x4100
    509c:	44811000 	mtc1	at,$f2
    50a0:	3c010000 	lui	at,0x0
    50a4:	e6020068 	swc1	$f2,104(s0)
    50a8:	c4240000 	lwc1	$f4,0(at)
    50ac:	46041182 	mul.s	$f6,$f2,$f4
    50b0:	10000009 	b	50d8 <func_80A60300+0xc8>
    50b4:	e60601c8 	swc1	$f6,456(s0)
    50b8:	8cc80000 	lw	t0,0(a2)
    50bc:	44804000 	mtc1	zero,$f8
    50c0:	aca80000 	sw	t0,0(a1)
    50c4:	8cd90004 	lw	t9,4(a2)
    50c8:	acb90004 	sw	t9,4(a1)
    50cc:	8cc80008 	lw	t0,8(a2)
    50d0:	aca80008 	sw	t0,8(a1)
    50d4:	e6080068 	swc1	$f8,104(s0)
    50d8:	260401ac 	addiu	a0,s0,428
    50dc:	0c000000 	jal	0 <func_80A5B2F0>
    50e0:	afa40024 	sw	a0,36(sp)
    50e4:	50400019 	beqzl	v0,514c <func_80A60300+0x13c>
    50e8:	8fbf001c 	lw	ra,28(sp)
    50ec:	0c000000 	jal	0 <func_80A5B2F0>
    50f0:	02002025 	move	a0,s0
    50f4:	44806000 	mtc1	zero,$f12
    50f8:	24050078 	li	a1,120
    50fc:	24060008 	li	a2,8
    5100:	0c000000 	jal	0 <func_80A5B2F0>
    5104:	240700ff 	li	a3,255
    5108:	3c010000 	lui	at,0x0
    510c:	c4300000 	lwc1	$f16,0(at)
    5110:	c60a0068 	lwc1	$f10,104(s0)
    5114:	8e090158 	lw	t1,344(s0)
    5118:	3c0b0000 	lui	t3,0x0
    511c:	46105482 	mul.s	$f18,$f10,$f16
    5120:	00095080 	sll	t2,t1,0x2
    5124:	8e0c0210 	lw	t4,528(s0)
    5128:	016a5821 	addu	t3,t3,t2
    512c:	8d6b0000 	lw	t3,0(t3)
    5130:	000c6880 	sll	t5,t4,0x2
    5134:	8fa40024 	lw	a0,36(sp)
    5138:	44069000 	mfc1	a2,$f18
    513c:	016d7021 	addu	t6,t3,t5
    5140:	0c000000 	jal	0 <func_80A5B2F0>
    5144:	8dc50000 	lw	a1,0(t6)
    5148:	8fbf001c 	lw	ra,28(sp)
    514c:	8fb00018 	lw	s0,24(sp)
    5150:	27bd0038 	addiu	sp,sp,56
    5154:	03e00008 	jr	ra
    5158:	00000000 	nop

0000515c <func_80A6044C>:
    515c:	44802000 	mtc1	zero,$f4
    5160:	27bdffe8 	addiu	sp,sp,-24
    5164:	afbf0014 	sw	ra,20(sp)
    5168:	0c000000 	jal	0 <func_80A5B2F0>
    516c:	e48401c4 	swc1	$f4,452(a0)
    5170:	8fbf0014 	lw	ra,20(sp)
    5174:	27bd0018 	addiu	sp,sp,24
    5178:	03e00008 	jr	ra
    517c:	00000000 	nop

00005180 <func_80A60470>:
    5180:	27bdffc8 	addiu	sp,sp,-56
    5184:	afbf002c 	sw	ra,44(sp)
    5188:	afb00028 	sw	s0,40(sp)
    518c:	afa5003c 	sw	a1,60(sp)
    5190:	c48401c4 	lwc1	$f4,452(a0)
    5194:	240e0008 	li	t6,8
    5198:	ac8e0210 	sw	t6,528(a0)
    519c:	e7a40034 	swc1	$f4,52(sp)
    51a0:	8c8f0158 	lw	t7,344(a0)
    51a4:	3c190000 	lui	t9,0x0
    51a8:	00808025 	move	s0,a0
    51ac:	000fc080 	sll	t8,t7,0x2
    51b0:	0338c821 	addu	t9,t9,t8
    51b4:	8f390000 	lw	t9,0(t9)
    51b8:	0c000000 	jal	0 <func_80A5B2F0>
    51bc:	8f240020 	lw	a0,32(t9)
    51c0:	8e080158 	lw	t0,344(s0)
    51c4:	44823000 	mtc1	v0,$f6
    51c8:	3c0a0000 	lui	t2,0x0
    51cc:	00084880 	sll	t1,t0,0x2
    51d0:	8e0b0210 	lw	t3,528(s0)
    51d4:	01495021 	addu	t2,t2,t1
    51d8:	8d4a0000 	lw	t2,0(t2)
    51dc:	46803220 	cvt.s.w	$f8,$f6
    51e0:	000b6080 	sll	t4,t3,0x2
    51e4:	3c01c040 	lui	at,0xc040
    51e8:	014c6821 	addu	t5,t2,t4
    51ec:	44815000 	mtc1	at,$f10
    51f0:	8da50000 	lw	a1,0(t5)
    51f4:	240e0002 	li	t6,2
    51f8:	afae0014 	sw	t6,20(sp)
    51fc:	e7a80010 	swc1	$f8,16(sp)
    5200:	260401ac 	addiu	a0,s0,428
    5204:	3c063fc0 	lui	a2,0x3fc0
    5208:	8fa70034 	lw	a3,52(sp)
    520c:	0c000000 	jal	0 <func_80A5B2F0>
    5210:	e7aa0018 	swc1	$f10,24(sp)
    5214:	c6100028 	lwc1	$f16,40(s0)
    5218:	44809000 	mtc1	zero,$f18
    521c:	44802000 	mtc1	zero,$f4
    5220:	8e0201cc 	lw	v0,460(s0)
    5224:	ae000244 	sw	zero,580(s0)
    5228:	e6100274 	swc1	$f16,628(s0)
    522c:	e612006c 	swc1	$f18,108(s0)
    5230:	e6040060 	swc1	$f4,96(s0)
    5234:	844f0002 	lh	t7,2(v0)
    5238:	3c010000 	lui	at,0x0
    523c:	c42a0000 	lwc1	$f10,0(at)
    5240:	448f3000 	mtc1	t7,$f6
    5244:	c608025c 	lwc1	$f8,604(s0)
    5248:	8e1801f0 	lw	t8,496(s0)
    524c:	46803020 	cvt.s.w	$f0,$f6
    5250:	3c070000 	lui	a3,0x0
    5254:	3c080000 	lui	t0,0x0
    5258:	37190008 	ori	t9,t8,0x8
    525c:	24e70000 	addiu	a3,a3,0
    5260:	ae1901f0 	sw	t9,496(s0)
    5264:	460a0402 	mul.s	$f16,$f0,$f10
    5268:	25080000 	addiu	t0,t0,0
    526c:	24042818 	li	a0,10264
    5270:	260500e4 	addiu	a1,s0,228
    5274:	24060004 	li	a2,4
    5278:	46104481 	sub.s	$f18,$f8,$f16
    527c:	e612025c 	swc1	$f18,604(s0)
    5280:	afa80014 	sw	t0,20(sp)
    5284:	0c000000 	jal	0 <func_80A5B2F0>
    5288:	afa70010 	sw	a3,16(sp)
    528c:	44806000 	mtc1	zero,$f12
    5290:	240500aa 	li	a1,170
    5294:	2406000a 	li	a2,10
    5298:	0c000000 	jal	0 <func_80A5B2F0>
    529c:	2407000a 	li	a3,10
    52a0:	8fbf002c 	lw	ra,44(sp)
    52a4:	8fb00028 	lw	s0,40(sp)
    52a8:	27bd0038 	addiu	sp,sp,56
    52ac:	03e00008 	jr	ra
    52b0:	00000000 	nop

000052b4 <func_80A605A4>:
    52b4:	27bdffe8 	addiu	sp,sp,-24
    52b8:	afbf0014 	sw	ra,20(sp)
    52bc:	afa60020 	sw	a2,32(sp)
    52c0:	0c000000 	jal	0 <func_80A5B2F0>
    52c4:	afa40018 	sw	a0,24(sp)
    52c8:	8fa40018 	lw	a0,24(sp)
    52cc:	240e0002 	li	t6,2
    52d0:	948f0384 	lhu	t7,900(a0)
    52d4:	ac8e0380 	sw	t6,896(a0)
    52d8:	31f8fffe 	andi	t8,t7,0xfffe
    52dc:	a4980384 	sh	t8,900(a0)
    52e0:	8fbf0014 	lw	ra,20(sp)
    52e4:	27bd0018 	addiu	sp,sp,24
    52e8:	03e00008 	jr	ra
    52ec:	00000000 	nop

000052f0 <func_80A605E0>:
    52f0:	27bdffc0 	addiu	sp,sp,-64
    52f4:	afbf0024 	sw	ra,36(sp)
    52f8:	afb00020 	sw	s0,32(sp)
    52fc:	afa50044 	sw	a1,68(sp)
    5300:	948e0384 	lhu	t6,900(a0)
    5304:	00808025 	move	s0,a0
    5308:	3c014150 	lui	at,0x4150
    530c:	31cf0001 	andi	t7,t6,0x1
    5310:	51e00006 	beqzl	t7,532c <func_80A605E0+0x3c>
    5314:	44812000 	mtc1	at,$f4
    5318:	0c000000 	jal	0 <func_80A5B2F0>
    531c:	00000000 	nop
    5320:	10000085 	b	5538 <func_80A605E0+0x248>
    5324:	8fbf0024 	lw	ra,36(sp)
    5328:	44812000 	mtc1	at,$f4
    532c:	3c014198 	lui	at,0x4198
    5330:	c60201c4 	lwc1	$f2,452(s0)
    5334:	44813000 	mtc1	at,$f6
    5338:	8e1801f0 	lw	t8,496(s0)
    533c:	260401ac 	addiu	a0,s0,428
    5340:	4602303c 	c.lt.s	$f6,$f2
    5344:	37190004 	ori	t9,t8,0x4
    5348:	ae1901f0 	sw	t9,496(s0)
    534c:	e6040068 	swc1	$f4,104(s0)
    5350:	4502001e 	bc1fl	53cc <func_80A605E0+0xdc>
    5354:	8e0201cc 	lw	v0,460(s0)
    5358:	44805000 	mtc1	zero,$f10
    535c:	c6100060 	lwc1	$f16,96(s0)
    5360:	3c01c060 	lui	at,0xc060
    5364:	44814000 	mtc1	at,$f8
    5368:	46105032 	c.eq.s	$f10,$f16
    536c:	3c01c128 	lui	at,0xc128
    5370:	e608006c 	swc1	$f8,108(s0)
    5374:	45020005 	bc1fl	538c <func_80A605E0+0x9c>
    5378:	3c0142b4 	lui	at,0x42b4
    537c:	44819000 	mtc1	at,$f18
    5380:	00000000 	nop
    5384:	e6120060 	swc1	$f18,96(s0)
    5388:	3c0142b4 	lui	at,0x42b4
    538c:	44814000 	mtc1	at,$f8
    5390:	c6060080 	lwc1	$f6,128(s0)
    5394:	c6040028 	lwc1	$f4,40(s0)
    5398:	3c013fc0 	lui	at,0x3fc0
    539c:	46083280 	add.s	$f10,$f6,$f8
    53a0:	460a203c 	c.lt.s	$f4,$f10
    53a4:	00000000 	nop
    53a8:	45020005 	bc1fl	53c0 <func_80A605E0+0xd0>
    53ac:	44809000 	mtc1	zero,$f18
    53b0:	44818000 	mtc1	at,$f16
    53b4:	1000000f 	b	53f4 <func_80A605E0+0x104>
    53b8:	e61001c8 	swc1	$f16,456(s0)
    53bc:	44809000 	mtc1	zero,$f18
    53c0:	1000000c 	b	53f4 <func_80A605E0+0x104>
    53c4:	e61201c8 	swc1	$f18,456(s0)
    53c8:	8e0201cc 	lw	v0,460(s0)
    53cc:	3c010000 	lui	at,0x0
    53d0:	c4240000 	lwc1	$f4,0(at)
    53d4:	84480002 	lh	t0,2(v0)
    53d8:	c6080274 	lwc1	$f8,628(s0)
    53dc:	44883000 	mtc1	t0,$f6
    53e0:	00000000 	nop
    53e4:	46803020 	cvt.s.w	$f0,$f6
    53e8:	46040282 	mul.s	$f10,$f0,$f4
    53ec:	460a4400 	add.s	$f16,$f8,$f10
    53f0:	e6100028 	swc1	$f16,40(s0)
    53f4:	afa40028 	sw	a0,40(sp)
    53f8:	0c000000 	jal	0 <func_80A5B2F0>
    53fc:	e7a2003c 	swc1	$f2,60(sp)
    5400:	14400013 	bnez	v0,5450 <func_80A605E0+0x160>
    5404:	c7a2003c 	lwc1	$f2,60(sp)
    5408:	3c014198 	lui	at,0x4198
    540c:	44819000 	mtc1	at,$f18
    5410:	00000000 	nop
    5414:	4602903c 	c.lt.s	$f18,$f2
    5418:	00000000 	nop
    541c:	45020046 	bc1fl	5538 <func_80A605E0+0x248>
    5420:	8fbf0024 	lw	ra,36(sp)
    5424:	c6040080 	lwc1	$f4,128(s0)
    5428:	c6080060 	lwc1	$f8,96(s0)
    542c:	3c0142a0 	lui	at,0x42a0
    5430:	44818000 	mtc1	at,$f16
    5434:	46082281 	sub.s	$f10,$f4,$f8
    5438:	c6060028 	lwc1	$f6,40(s0)
    543c:	46105480 	add.s	$f18,$f10,$f16
    5440:	4612303c 	c.lt.s	$f6,$f18
    5444:	00000000 	nop
    5448:	4502003b 	bc1fl	5538 <func_80A605E0+0x248>
    544c:	8fbf0024 	lw	ra,36(sp)
    5450:	96090384 	lhu	t1,900(s0)
    5454:	3c070000 	lui	a3,0x0
    5458:	3c0b0000 	lui	t3,0x0
    545c:	352a0001 	ori	t2,t1,0x1
    5460:	24e70000 	addiu	a3,a3,0
    5464:	a60a0384 	sh	t2,900(s0)
    5468:	256b0000 	addiu	t3,t3,0
    546c:	afab0014 	sw	t3,20(sp)
    5470:	afa70010 	sw	a3,16(sp)
    5474:	24042819 	li	a0,10265
    5478:	260500e4 	addiu	a1,s0,228
    547c:	0c000000 	jal	0 <func_80A5B2F0>
    5480:	24060004 	li	a2,4
    5484:	44806000 	mtc1	zero,$f12
    5488:	240500ff 	li	a1,255
    548c:	2406000a 	li	a2,10
    5490:	0c000000 	jal	0 <func_80A5B2F0>
    5494:	24070050 	li	a3,80
    5498:	8e0c01f0 	lw	t4,496(s0)
    549c:	2401fffb 	li	at,-5
    54a0:	44804000 	mtc1	zero,$f8
    54a4:	01816824 	and	t5,t4,at
    54a8:	3c01c060 	lui	at,0xc060
    54ac:	44812000 	mtc1	at,$f4
    54b0:	c60a0080 	lwc1	$f10,128(s0)
    54b4:	ae0d01f0 	sw	t5,496(s0)
    54b8:	e6080060 	swc1	$f8,96(s0)
    54bc:	e604006c 	swc1	$f4,108(s0)
    54c0:	e60a0028 	swc1	$f10,40(s0)
    54c4:	8fa40044 	lw	a0,68(sp)
    54c8:	3c0541c8 	lui	a1,0x41c8
    54cc:	0c000000 	jal	0 <func_80A5B2F0>
    54d0:	26060024 	addiu	a2,s0,36
    54d4:	8e0f0158 	lw	t7,344(s0)
    54d8:	240e0006 	li	t6,6
    54dc:	3c190000 	lui	t9,0x0
    54e0:	000fc080 	sll	t8,t7,0x2
    54e4:	ae0e0210 	sw	t6,528(s0)
    54e8:	0338c821 	addu	t9,t9,t8
    54ec:	8f390000 	lw	t9,0(t9)
    54f0:	3c060000 	lui	a2,0x0
    54f4:	8cc60000 	lw	a2,0(a2)
    54f8:	8fa40028 	lw	a0,40(sp)
    54fc:	0c000000 	jal	0 <func_80A5B2F0>
    5500:	8f250018 	lw	a1,24(t9)
    5504:	8e0201cc 	lw	v0,460(s0)
    5508:	3c010000 	lui	at,0x0
    550c:	c4320000 	lwc1	$f18,0(at)
    5510:	84480002 	lh	t0,2(v0)
    5514:	c606025c 	lwc1	$f6,604(s0)
    5518:	ae000244 	sw	zero,580(s0)
    551c:	44888000 	mtc1	t0,$f16
    5520:	00000000 	nop
    5524:	46808020 	cvt.s.w	$f0,$f16
    5528:	46120102 	mul.s	$f4,$f0,$f18
    552c:	46043200 	add.s	$f8,$f6,$f4
    5530:	e608025c 	swc1	$f8,604(s0)
    5534:	8fbf0024 	lw	ra,36(sp)
    5538:	8fb00020 	lw	s0,32(sp)
    553c:	27bd0040 	addiu	sp,sp,64
    5540:	03e00008 	jr	ra
    5544:	00000000 	nop

00005548 <func_80A60838>:
    5548:	27bdffd0 	addiu	sp,sp,-48
    554c:	afa50034 	sw	a1,52(sp)
    5550:	afbf002c 	sw	ra,44(sp)
    5554:	afb00028 	sw	s0,40(sp)
    5558:	afa60038 	sw	a2,56(sp)
    555c:	948e0384 	lhu	t6,900(a0)
    5560:	8c9801f0 	lw	t8,496(a0)
    5564:	8c890228 	lw	t1,552(a0)
    5568:	24020003 	li	v0,3
    556c:	2401f7ff 	li	at,-2049
    5570:	31cffffb 	andi	t7,t6,0xfffb
    5574:	0301c824 	and	t9,t8,at
    5578:	ac820210 	sw	v0,528(a0)
    557c:	ac820380 	sw	v0,896(a0)
    5580:	a48f0384 	sh	t7,900(a0)
    5584:	ac9901f0 	sw	t9,496(a0)
    5588:	2485021c 	addiu	a1,a0,540
    558c:	aca90000 	sw	t1,0(a1)
    5590:	8c88022c 	lw	t0,556(a0)
    5594:	00808025 	move	s0,a0
    5598:	3c070000 	lui	a3,0x0
    559c:	aca80004 	sw	t0,4(a1)
    55a0:	8c890230 	lw	t1,560(a0)
    55a4:	3c0c0000 	lui	t4,0x0
    55a8:	24e70000 	addiu	a3,a3,0
    55ac:	aca90008 	sw	t1,8(a1)
    55b0:	8c8a01f0 	lw	t2,496(a0)
    55b4:	24042805 	li	a0,10245
    55b8:	258c0000 	addiu	t4,t4,0
    55bc:	000a5900 	sll	t3,t2,0x4
    55c0:	05610004 	bgez	t3,55d4 <func_80A60838+0x8c>
    55c4:	24060004 	li	a2,4
    55c8:	afa70010 	sw	a3,16(sp)
    55cc:	0c000000 	jal	0 <func_80A5B2F0>
    55d0:	afac0014 	sw	t4,20(sp)
    55d4:	8e0d0158 	lw	t5,344(s0)
    55d8:	3c0f0000 	lui	t7,0x0
    55dc:	8e180210 	lw	t8,528(s0)
    55e0:	000d7080 	sll	t6,t5,0x2
    55e4:	01ee7821 	addu	t7,t7,t6
    55e8:	8def0000 	lw	t7,0(t7)
    55ec:	0018c880 	sll	t9,t8,0x2
    55f0:	01f94021 	addu	t0,t7,t9
    55f4:	0c000000 	jal	0 <func_80A5B2F0>
    55f8:	8d040000 	lw	a0,0(t0)
    55fc:	8e090158 	lw	t1,344(s0)
    5600:	44822000 	mtc1	v0,$f4
    5604:	3c0b0000 	lui	t3,0x0
    5608:	00095080 	sll	t2,t1,0x2
    560c:	8e0c0210 	lw	t4,528(s0)
    5610:	016a5821 	addu	t3,t3,t2
    5614:	8d6b0000 	lw	t3,0(t3)
    5618:	468021a0 	cvt.s.w	$f6,$f4
    561c:	000c6880 	sll	t5,t4,0x2
    5620:	3c01c040 	lui	at,0xc040
    5624:	016d7021 	addu	t6,t3,t5
    5628:	44814000 	mtc1	at,$f8
    562c:	8dc50000 	lw	a1,0(t6)
    5630:	24180002 	li	t8,2
    5634:	afb80014 	sw	t8,20(sp)
    5638:	e7a60010 	swc1	$f6,16(sp)
    563c:	260401ac 	addiu	a0,s0,428
    5640:	3c063f80 	lui	a2,0x3f80
    5644:	24070000 	li	a3,0
    5648:	0c000000 	jal	0 <func_80A5B2F0>
    564c:	e7a80018 	swc1	$f8,24(sp)
    5650:	8fbf002c 	lw	ra,44(sp)
    5654:	8fb00028 	lw	s0,40(sp)
    5658:	27bd0030 	addiu	sp,sp,48
    565c:	03e00008 	jr	ra
    5660:	00000000 	nop

00005664 <func_80A60954>:
    5664:	27bdffc8 	addiu	sp,sp,-56
    5668:	afbf002c 	sw	ra,44(sp)
    566c:	afb00028 	sw	s0,40(sp)
    5670:	afa5003c 	sw	a1,60(sp)
    5674:	afa60040 	sw	a2,64(sp)
    5678:	3c0141c8 	lui	at,0x41c8
    567c:	44813000 	mtc1	at,$f6
    5680:	c4880214 	lwc1	$f8,532(a0)
    5684:	44802000 	mtc1	zero,$f4
    5688:	00808025 	move	s0,a0
    568c:	4608303c 	c.lt.s	$f6,$f8
    5690:	e4840068 	swc1	$f4,104(a0)
    5694:	45020011 	bc1fl	56dc <func_80A60954+0x78>
    5698:	260401ac 	addiu	a0,s0,428
    569c:	8c8201f0 	lw	v0,496(a0)
    56a0:	3c070000 	lui	a3,0x0
    56a4:	24e70000 	addiu	a3,a3,0
    56a8:	304e0800 	andi	t6,v0,0x800
    56ac:	15c0000a 	bnez	t6,56d8 <func_80A60954+0x74>
    56b0:	344f0800 	ori	t7,v0,0x800
    56b4:	ac8f01f0 	sw	t7,496(a0)
    56b8:	3c180000 	lui	t8,0x0
    56bc:	27180000 	addiu	t8,t8,0
    56c0:	afb80014 	sw	t8,20(sp)
    56c4:	afa70010 	sw	a3,16(sp)
    56c8:	2404282b 	li	a0,10283
    56cc:	260500e4 	addiu	a1,s0,228
    56d0:	0c000000 	jal	0 <func_80A5B2F0>
    56d4:	24060004 	li	a2,4
    56d8:	260401ac 	addiu	a0,s0,428
    56dc:	0c000000 	jal	0 <func_80A5B2F0>
    56e0:	afa40030 	sw	a0,48(sp)
    56e4:	50400045 	beqzl	v0,57fc <func_80A60954+0x198>
    56e8:	8fbf002c 	lw	ra,44(sp)
    56ec:	96020384 	lhu	v0,900(s0)
    56f0:	ae000210 	sw	zero,528(s0)
    56f4:	30590004 	andi	t9,v0,0x4
    56f8:	17200022 	bnez	t9,5784 <func_80A60954+0x120>
    56fc:	34480004 	ori	t0,v0,0x4
    5700:	8e090158 	lw	t1,344(s0)
    5704:	3c0b0000 	lui	t3,0x0
    5708:	a6080384 	sh	t0,900(s0)
    570c:	00095080 	sll	t2,t1,0x2
    5710:	016a5821 	addu	t3,t3,t2
    5714:	8d6b0000 	lw	t3,0(t3)
    5718:	00006880 	sll	t5,zero,0x2
    571c:	016d7021 	addu	t6,t3,t5
    5720:	0c000000 	jal	0 <func_80A5B2F0>
    5724:	8dc40000 	lw	a0,0(t6)
    5728:	8e0f0158 	lw	t7,344(s0)
    572c:	44825000 	mtc1	v0,$f10
    5730:	3c190000 	lui	t9,0x0
    5734:	000fc080 	sll	t8,t7,0x2
    5738:	8e080210 	lw	t0,528(s0)
    573c:	0338c821 	addu	t9,t9,t8
    5740:	8f390000 	lw	t9,0(t9)
    5744:	46805420 	cvt.s.w	$f16,$f10
    5748:	00084880 	sll	t1,t0,0x2
    574c:	3c01c040 	lui	at,0xc040
    5750:	03295021 	addu	t2,t9,t1
    5754:	44819000 	mtc1	at,$f18
    5758:	8d450000 	lw	a1,0(t2)
    575c:	240c0002 	li	t4,2
    5760:	afac0014 	sw	t4,20(sp)
    5764:	e7b00010 	swc1	$f16,16(sp)
    5768:	8fa40030 	lw	a0,48(sp)
    576c:	3c063f80 	lui	a2,0x3f80
    5770:	24070000 	li	a3,0
    5774:	0c000000 	jal	0 <func_80A5B2F0>
    5778:	e7b20018 	swc1	$f18,24(sp)
    577c:	1000001f 	b	57fc <func_80A60954+0x198>
    5780:	8fbf002c 	lw	ra,44(sp)
    5784:	8e0b0158 	lw	t3,344(s0)
    5788:	3c0e0000 	lui	t6,0x0
    578c:	8e0f0210 	lw	t7,528(s0)
    5790:	000b6880 	sll	t5,t3,0x2
    5794:	01cd7021 	addu	t6,t6,t5
    5798:	8dce0000 	lw	t6,0(t6)
    579c:	000fc080 	sll	t8,t7,0x2
    57a0:	01d84021 	addu	t0,t6,t8
    57a4:	0c000000 	jal	0 <func_80A5B2F0>
    57a8:	8d040000 	lw	a0,0(t0)
    57ac:	8e190158 	lw	t9,344(s0)
    57b0:	44822000 	mtc1	v0,$f4
    57b4:	3c0a0000 	lui	t2,0x0
    57b8:	00194880 	sll	t1,t9,0x2
    57bc:	8e0c0210 	lw	t4,528(s0)
    57c0:	01495021 	addu	t2,t2,t1
    57c4:	8d4a0000 	lw	t2,0(t2)
    57c8:	468021a0 	cvt.s.w	$f6,$f4
    57cc:	000c5880 	sll	t3,t4,0x2
    57d0:	014b6821 	addu	t5,t2,t3
    57d4:	44804000 	mtc1	zero,$f8
    57d8:	8da50000 	lw	a1,0(t5)
    57dc:	afa00014 	sw	zero,20(sp)
    57e0:	e7a60010 	swc1	$f6,16(sp)
    57e4:	8fa40030 	lw	a0,48(sp)
    57e8:	3c063f80 	lui	a2,0x3f80
    57ec:	24070000 	li	a3,0
    57f0:	0c000000 	jal	0 <func_80A5B2F0>
    57f4:	e7a80018 	swc1	$f8,24(sp)
    57f8:	8fbf002c 	lw	ra,44(sp)
    57fc:	8fb00028 	lw	s0,40(sp)
    5800:	27bd0038 	addiu	sp,sp,56
    5804:	03e00008 	jr	ra
    5808:	00000000 	nop

0000580c <func_80A60AFC>:
    580c:	27bdffe8 	addiu	sp,sp,-24
    5810:	afbf0014 	sw	ra,20(sp)
    5814:	afa5001c 	sw	a1,28(sp)
    5818:	afa60020 	sw	a2,32(sp)
    581c:	8ccf000c 	lw	t7,12(a2)
    5820:	00803825 	move	a3,a0
    5824:	3c010000 	lui	at,0x0
    5828:	448f2000 	mtc1	t7,$f4
    582c:	248401ac 	addiu	a0,a0,428
    5830:	468021a0 	cvt.s.w	$f6,$f4
    5834:	e486fe78 	swc1	$f6,-392(a0)
    5838:	8fb80020 	lw	t8,32(sp)
    583c:	8c8bfe78 	lw	t3,-392(a0)
    5840:	8f190010 	lw	t9,16(t8)
    5844:	24180006 	li	t8,6
    5848:	44994000 	mtc1	t9,$f8
    584c:	24190004 	li	t9,4
    5850:	468042a0 	cvt.s.w	$f10,$f8
    5854:	e48afe7c 	swc1	$f10,-388(a0)
    5858:	8fa80020 	lw	t0,32(sp)
    585c:	8c8afe7c 	lw	t2,-388(a0)
    5860:	8d090014 	lw	t1,20(t0)
    5864:	ac8bff54 	sw	t3,-172(a0)
    5868:	ac8aff58 	sw	t2,-168(a0)
    586c:	44898000 	mtc1	t1,$f16
    5870:	3c0a0000 	lui	t2,0x0
    5874:	468084a0 	cvt.s.w	$f18,$f16
    5878:	e492fe80 	swc1	$f18,-384(a0)
    587c:	8c8bfe80 	lw	t3,-384(a0)
    5880:	ac8bff5c 	sw	t3,-164(a0)
    5884:	8fac0020 	lw	t4,32(sp)
    5888:	958d0008 	lhu	t5,8(t4)
    588c:	ac980064 	sw	t8,100(a0)
    5890:	ac9901d4 	sw	t9,468(a0)
    5894:	a48dfe86 	sh	t5,-378(a0)
    5898:	888ffe84 	lwl	t7,-380(a0)
    589c:	988ffe87 	lwr	t7,-377(a0)
    58a0:	a88fff08 	swl	t7,-248(a0)
    58a4:	b88fff0b 	swr	t7,-245(a0)
    58a8:	948ffe88 	lhu	t7,-376(a0)
    58ac:	a48fff0c 	sh	t7,-244(a0)
    58b0:	c4260000 	lwc1	$f6,0(at)
    58b4:	c4e40068 	lwc1	$f4,104(a3)
    58b8:	8ce80158 	lw	t0,344(a3)
    58bc:	46062202 	mul.s	$f8,$f4,$f6
    58c0:	00084880 	sll	t1,t0,0x2
    58c4:	01495021 	addu	t2,t2,t1
    58c8:	8d4a0000 	lw	t2,0(t2)
    58cc:	8d450018 	lw	a1,24(t2)
    58d0:	44064000 	mfc1	a2,$f8
    58d4:	0c000000 	jal	0 <func_80A5B2F0>
    58d8:	00000000 	nop
    58dc:	8fbf0014 	lw	ra,20(sp)
    58e0:	27bd0018 	addiu	sp,sp,24
    58e4:	03e00008 	jr	ra
    58e8:	00000000 	nop

000058ec <func_80A60BDC>:
    58ec:	27bdffc8 	addiu	sp,sp,-56
    58f0:	afbf001c 	sw	ra,28(sp)
    58f4:	afb00018 	sw	s0,24(sp)
    58f8:	afa5003c 	sw	a1,60(sp)
    58fc:	8cce0018 	lw	t6,24(a2)
    5900:	00808025 	move	s0,a0
    5904:	26050024 	addiu	a1,s0,36
    5908:	448e2000 	mtc1	t6,$f4
    590c:	27a4002c 	addiu	a0,sp,44
    5910:	468021a0 	cvt.s.w	$f6,$f4
    5914:	e7a6002c 	swc1	$f6,44(sp)
    5918:	8ccf001c 	lw	t7,28(a2)
    591c:	448f4000 	mtc1	t7,$f8
    5920:	00000000 	nop
    5924:	468042a0 	cvt.s.w	$f10,$f8
    5928:	e7aa0030 	swc1	$f10,48(sp)
    592c:	8cd80020 	lw	t8,32(a2)
    5930:	afa50024 	sw	a1,36(sp)
    5934:	44988000 	mtc1	t8,$f16
    5938:	00000000 	nop
    593c:	468084a0 	cvt.s.w	$f18,$f16
    5940:	0c000000 	jal	0 <func_80A5B2F0>
    5944:	e7b20034 	swc1	$f18,52(sp)
    5948:	3c014100 	lui	at,0x4100
    594c:	44811000 	mtc1	at,$f2
    5950:	8fa50024 	lw	a1,36(sp)
    5954:	27a6002c 	addiu	a2,sp,44
    5958:	4600103c 	c.lt.s	$f2,$f0
    595c:	02002025 	move	a0,s0
    5960:	24070190 	li	a3,400
    5964:	4502000c 	bc1fl	5998 <func_80A60BDC+0xac>
    5968:	8cc80000 	lw	t0,0(a2)
    596c:	0c000000 	jal	0 <func_80A5B2F0>
    5970:	8fa5003c 	lw	a1,60(sp)
    5974:	3c014100 	lui	at,0x4100
    5978:	44811000 	mtc1	at,$f2
    597c:	3c010000 	lui	at,0x0
    5980:	e6020068 	swc1	$f2,104(s0)
    5984:	c4240000 	lwc1	$f4,0(at)
    5988:	46041182 	mul.s	$f6,$f2,$f4
    598c:	10000009 	b	59b4 <func_80A60BDC+0xc8>
    5990:	e60601c8 	swc1	$f6,456(s0)
    5994:	8cc80000 	lw	t0,0(a2)
    5998:	44804000 	mtc1	zero,$f8
    599c:	aca80000 	sw	t0,0(a1)
    59a0:	8cd90004 	lw	t9,4(a2)
    59a4:	acb90004 	sw	t9,4(a1)
    59a8:	8cc80008 	lw	t0,8(a2)
    59ac:	aca80008 	sw	t0,8(a1)
    59b0:	e6080068 	swc1	$f8,104(s0)
    59b4:	260401ac 	addiu	a0,s0,428
    59b8:	0c000000 	jal	0 <func_80A5B2F0>
    59bc:	afa40024 	sw	a0,36(sp)
    59c0:	50400019 	beqzl	v0,5a28 <func_80A60BDC+0x13c>
    59c4:	8fbf001c 	lw	ra,28(sp)
    59c8:	0c000000 	jal	0 <func_80A5B2F0>
    59cc:	02002025 	move	a0,s0
    59d0:	44806000 	mtc1	zero,$f12
    59d4:	24050078 	li	a1,120
    59d8:	24060008 	li	a2,8
    59dc:	0c000000 	jal	0 <func_80A5B2F0>
    59e0:	240700ff 	li	a3,255
    59e4:	3c010000 	lui	at,0x0
    59e8:	c4300000 	lwc1	$f16,0(at)
    59ec:	c60a0068 	lwc1	$f10,104(s0)
    59f0:	8e090158 	lw	t1,344(s0)
    59f4:	3c0b0000 	lui	t3,0x0
    59f8:	46105482 	mul.s	$f18,$f10,$f16
    59fc:	00095080 	sll	t2,t1,0x2
    5a00:	8e0c0210 	lw	t4,528(s0)
    5a04:	016a5821 	addu	t3,t3,t2
    5a08:	8d6b0000 	lw	t3,0(t3)
    5a0c:	000c6880 	sll	t5,t4,0x2
    5a10:	8fa40024 	lw	a0,36(sp)
    5a14:	44069000 	mfc1	a2,$f18
    5a18:	016d7021 	addu	t6,t3,t5
    5a1c:	0c000000 	jal	0 <func_80A5B2F0>
    5a20:	8dc50000 	lw	a1,0(t6)
    5a24:	8fbf001c 	lw	ra,28(sp)
    5a28:	8fb00018 	lw	s0,24(sp)
    5a2c:	27bd0038 	addiu	sp,sp,56
    5a30:	03e00008 	jr	ra
    5a34:	00000000 	nop

00005a38 <func_80A60D28>:
    5a38:	27bdffd0 	addiu	sp,sp,-48
    5a3c:	afbf002c 	sw	ra,44(sp)
    5a40:	afb00028 	sw	s0,40(sp)
    5a44:	afa50034 	sw	a1,52(sp)
    5a48:	8cce000c 	lw	t6,12(a2)
    5a4c:	2401f7ff 	li	at,-2049
    5a50:	240c0003 	li	t4,3
    5a54:	448e2000 	mtc1	t6,$f4
    5a58:	948e0384 	lhu	t6,900(a0)
    5a5c:	240d0005 	li	t5,5
    5a60:	468021a0 	cvt.s.w	$f6,$f4
    5a64:	2485021c 	addiu	a1,a0,540
    5a68:	00808025 	move	s0,a0
    5a6c:	3c070000 	lui	a3,0x0
    5a70:	24e70000 	addiu	a3,a3,0
    5a74:	e4860024 	swc1	$f6,36(a0)
    5a78:	8ccf0010 	lw	t7,16(a2)
    5a7c:	8c880024 	lw	t0,36(a0)
    5a80:	448f4000 	mtc1	t7,$f8
    5a84:	31cffffb 	andi	t7,t6,0xfffb
    5a88:	468042a0 	cvt.s.w	$f10,$f8
    5a8c:	e48a0028 	swc1	$f10,40(a0)
    5a90:	8cd80014 	lw	t8,20(a2)
    5a94:	ac880100 	sw	t0,256(a0)
    5a98:	8c990028 	lw	t9,40(a0)
    5a9c:	44988000 	mtc1	t8,$f16
    5aa0:	8c9801f0 	lw	t8,496(a0)
    5aa4:	ac990104 	sw	t9,260(a0)
    5aa8:	468084a0 	cvt.s.w	$f18,$f16
    5aac:	0301c824 	and	t9,t8,at
    5ab0:	e492002c 	swc1	$f18,44(a0)
    5ab4:	8c88002c 	lw	t0,44(a0)
    5ab8:	ac880108 	sw	t0,264(a0)
    5abc:	94c90008 	lhu	t1,8(a2)
    5ac0:	ac8c0210 	sw	t4,528(a0)
    5ac4:	ac8d0380 	sw	t5,896(a0)
    5ac8:	a4890032 	sh	t1,50(a0)
    5acc:	888b0030 	lwl	t3,48(a0)
    5ad0:	988b0033 	lwr	t3,51(a0)
    5ad4:	8c890228 	lw	t1,552(a0)
    5ad8:	a48f0384 	sh	t7,900(a0)
    5adc:	a88b00b4 	swl	t3,180(a0)
    5ae0:	b88b00b7 	swr	t3,183(a0)
    5ae4:	948b0034 	lhu	t3,52(a0)
    5ae8:	ac9901f0 	sw	t9,496(a0)
    5aec:	3c0c0000 	lui	t4,0x0
    5af0:	a48b00b8 	sh	t3,184(a0)
    5af4:	aca90000 	sw	t1,0(a1)
    5af8:	8c88022c 	lw	t0,556(a0)
    5afc:	258c0000 	addiu	t4,t4,0
    5b00:	24060004 	li	a2,4
    5b04:	aca80004 	sw	t0,4(a1)
    5b08:	8c890230 	lw	t1,560(a0)
    5b0c:	aca90008 	sw	t1,8(a1)
    5b10:	8c8a01f0 	lw	t2,496(a0)
    5b14:	24042805 	li	a0,10245
    5b18:	000a5900 	sll	t3,t2,0x4
    5b1c:	05630005 	bgezl	t3,5b34 <func_80A60D28+0xfc>
    5b20:	8e0d0158 	lw	t5,344(s0)
    5b24:	afa70010 	sw	a3,16(sp)
    5b28:	0c000000 	jal	0 <func_80A5B2F0>
    5b2c:	afac0014 	sw	t4,20(sp)
    5b30:	8e0d0158 	lw	t5,344(s0)
    5b34:	3c0f0000 	lui	t7,0x0
    5b38:	8e180210 	lw	t8,528(s0)
    5b3c:	000d7080 	sll	t6,t5,0x2
    5b40:	01ee7821 	addu	t7,t7,t6
    5b44:	8def0000 	lw	t7,0(t7)
    5b48:	0018c880 	sll	t9,t8,0x2
    5b4c:	01f94021 	addu	t0,t7,t9
    5b50:	0c000000 	jal	0 <func_80A5B2F0>
    5b54:	8d040000 	lw	a0,0(t0)
    5b58:	8e090158 	lw	t1,344(s0)
    5b5c:	44822000 	mtc1	v0,$f4
    5b60:	3c0b0000 	lui	t3,0x0
    5b64:	00095080 	sll	t2,t1,0x2
    5b68:	8e0c0210 	lw	t4,528(s0)
    5b6c:	016a5821 	addu	t3,t3,t2
    5b70:	8d6b0000 	lw	t3,0(t3)
    5b74:	468021a0 	cvt.s.w	$f6,$f4
    5b78:	000c6880 	sll	t5,t4,0x2
    5b7c:	3c01c040 	lui	at,0xc040
    5b80:	016d7021 	addu	t6,t3,t5
    5b84:	44814000 	mtc1	at,$f8
    5b88:	8dc50000 	lw	a1,0(t6)
    5b8c:	24180002 	li	t8,2
    5b90:	afb80014 	sw	t8,20(sp)
    5b94:	e7a60010 	swc1	$f6,16(sp)
    5b98:	260401ac 	addiu	a0,s0,428
    5b9c:	3c063f80 	lui	a2,0x3f80
    5ba0:	24070000 	li	a3,0
    5ba4:	0c000000 	jal	0 <func_80A5B2F0>
    5ba8:	e7a80018 	swc1	$f8,24(sp)
    5bac:	8fbf002c 	lw	ra,44(sp)
    5bb0:	8fb00028 	lw	s0,40(sp)
    5bb4:	27bd0030 	addiu	sp,sp,48
    5bb8:	03e00008 	jr	ra
    5bbc:	00000000 	nop

00005bc0 <func_80A60EB0>:
    5bc0:	27bdffc8 	addiu	sp,sp,-56
    5bc4:	afbf002c 	sw	ra,44(sp)
    5bc8:	afb00028 	sw	s0,40(sp)
    5bcc:	afa5003c 	sw	a1,60(sp)
    5bd0:	afa60040 	sw	a2,64(sp)
    5bd4:	3c0141c8 	lui	at,0x41c8
    5bd8:	44813000 	mtc1	at,$f6
    5bdc:	c4880214 	lwc1	$f8,532(a0)
    5be0:	44802000 	mtc1	zero,$f4
    5be4:	00808025 	move	s0,a0
    5be8:	4608303c 	c.lt.s	$f6,$f8
    5bec:	e4840068 	swc1	$f4,104(a0)
    5bf0:	45020011 	bc1fl	5c38 <func_80A60EB0+0x78>
    5bf4:	260401ac 	addiu	a0,s0,428
    5bf8:	8c8201f0 	lw	v0,496(a0)
    5bfc:	3c070000 	lui	a3,0x0
    5c00:	24e70000 	addiu	a3,a3,0
    5c04:	304e0800 	andi	t6,v0,0x800
    5c08:	15c0000a 	bnez	t6,5c34 <func_80A60EB0+0x74>
    5c0c:	344f0800 	ori	t7,v0,0x800
    5c10:	ac8f01f0 	sw	t7,496(a0)
    5c14:	3c180000 	lui	t8,0x0
    5c18:	27180000 	addiu	t8,t8,0
    5c1c:	afb80014 	sw	t8,20(sp)
    5c20:	afa70010 	sw	a3,16(sp)
    5c24:	2404282b 	li	a0,10283
    5c28:	260500e4 	addiu	a1,s0,228
    5c2c:	0c000000 	jal	0 <func_80A5B2F0>
    5c30:	24060004 	li	a2,4
    5c34:	260401ac 	addiu	a0,s0,428
    5c38:	0c000000 	jal	0 <func_80A5B2F0>
    5c3c:	afa40030 	sw	a0,48(sp)
    5c40:	50400045 	beqzl	v0,5d58 <func_80A60EB0+0x198>
    5c44:	8fbf002c 	lw	ra,44(sp)
    5c48:	96020384 	lhu	v0,900(s0)
    5c4c:	ae000210 	sw	zero,528(s0)
    5c50:	30590004 	andi	t9,v0,0x4
    5c54:	17200022 	bnez	t9,5ce0 <func_80A60EB0+0x120>
    5c58:	34480004 	ori	t0,v0,0x4
    5c5c:	8e090158 	lw	t1,344(s0)
    5c60:	3c0b0000 	lui	t3,0x0
    5c64:	a6080384 	sh	t0,900(s0)
    5c68:	00095080 	sll	t2,t1,0x2
    5c6c:	016a5821 	addu	t3,t3,t2
    5c70:	8d6b0000 	lw	t3,0(t3)
    5c74:	00006880 	sll	t5,zero,0x2
    5c78:	016d7021 	addu	t6,t3,t5
    5c7c:	0c000000 	jal	0 <func_80A5B2F0>
    5c80:	8dc40000 	lw	a0,0(t6)
    5c84:	8e0f0158 	lw	t7,344(s0)
    5c88:	44825000 	mtc1	v0,$f10
    5c8c:	3c190000 	lui	t9,0x0
    5c90:	000fc080 	sll	t8,t7,0x2
    5c94:	8e080210 	lw	t0,528(s0)
    5c98:	0338c821 	addu	t9,t9,t8
    5c9c:	8f390000 	lw	t9,0(t9)
    5ca0:	46805420 	cvt.s.w	$f16,$f10
    5ca4:	00084880 	sll	t1,t0,0x2
    5ca8:	3c01c040 	lui	at,0xc040
    5cac:	03295021 	addu	t2,t9,t1
    5cb0:	44819000 	mtc1	at,$f18
    5cb4:	8d450000 	lw	a1,0(t2)
    5cb8:	240c0002 	li	t4,2
    5cbc:	afac0014 	sw	t4,20(sp)
    5cc0:	e7b00010 	swc1	$f16,16(sp)
    5cc4:	8fa40030 	lw	a0,48(sp)
    5cc8:	3c063f80 	lui	a2,0x3f80
    5ccc:	24070000 	li	a3,0
    5cd0:	0c000000 	jal	0 <func_80A5B2F0>
    5cd4:	e7b20018 	swc1	$f18,24(sp)
    5cd8:	1000001f 	b	5d58 <func_80A60EB0+0x198>
    5cdc:	8fbf002c 	lw	ra,44(sp)
    5ce0:	8e0b0158 	lw	t3,344(s0)
    5ce4:	3c0e0000 	lui	t6,0x0
    5ce8:	8e0f0210 	lw	t7,528(s0)
    5cec:	000b6880 	sll	t5,t3,0x2
    5cf0:	01cd7021 	addu	t6,t6,t5
    5cf4:	8dce0000 	lw	t6,0(t6)
    5cf8:	000fc080 	sll	t8,t7,0x2
    5cfc:	01d84021 	addu	t0,t6,t8
    5d00:	0c000000 	jal	0 <func_80A5B2F0>
    5d04:	8d040000 	lw	a0,0(t0)
    5d08:	8e190158 	lw	t9,344(s0)
    5d0c:	44822000 	mtc1	v0,$f4
    5d10:	3c0a0000 	lui	t2,0x0
    5d14:	00194880 	sll	t1,t9,0x2
    5d18:	8e0c0210 	lw	t4,528(s0)
    5d1c:	01495021 	addu	t2,t2,t1
    5d20:	8d4a0000 	lw	t2,0(t2)
    5d24:	468021a0 	cvt.s.w	$f6,$f4
    5d28:	000c5880 	sll	t3,t4,0x2
    5d2c:	014b6821 	addu	t5,t2,t3
    5d30:	44804000 	mtc1	zero,$f8
    5d34:	8da50000 	lw	a1,0(t5)
    5d38:	afa00014 	sw	zero,20(sp)
    5d3c:	e7a60010 	swc1	$f6,16(sp)
    5d40:	8fa40030 	lw	a0,48(sp)
    5d44:	3c063f80 	lui	a2,0x3f80
    5d48:	24070000 	li	a3,0
    5d4c:	0c000000 	jal	0 <func_80A5B2F0>
    5d50:	e7a80018 	swc1	$f8,24(sp)
    5d54:	8fbf002c 	lw	ra,44(sp)
    5d58:	8fb00028 	lw	s0,40(sp)
    5d5c:	27bd0038 	addiu	sp,sp,56
    5d60:	03e00008 	jr	ra
    5d64:	00000000 	nop

00005d68 <func_80A61058>:
    5d68:	afa50004 	sw	a1,4(sp)
    5d6c:	44802000 	mtc1	zero,$f4
    5d70:	240e0011 	li	t6,17
    5d74:	ac80020c 	sw	zero,524(a0)
    5d78:	ac8e014c 	sw	t6,332(a0)
    5d7c:	ac800380 	sw	zero,896(a0)
    5d80:	03e00008 	jr	ra
    5d84:	e4840068 	swc1	$f4,104(a0)

00005d88 <func_80A61078>:
    5d88:	3c050000 	lui	a1,0x0
    5d8c:	24020005 	li	v0,5
    5d90:	24a50000 	addiu	a1,a1,0
    5d94:	00001825 	move	v1,zero
    5d98:	8ca60000 	lw	a2,0(a1)
    5d9c:	24630001 	addiu	v1,v1,1
    5da0:	14860003 	bne	a0,a2,5db0 <func_80A61078+0x28>
    5da4:	0086082a 	slt	at,a0,a2
    5da8:	03e00008 	jr	ra
    5dac:	8ca20004 	lw	v0,4(a1)
    5db0:	50200004 	beqzl	at,5dc4 <func_80A61078+0x3c>
    5db4:	0062082a 	slt	at,v1,v0
    5db8:	03e00008 	jr	ra
    5dbc:	00001025 	move	v0,zero
    5dc0:	0062082a 	slt	at,v1,v0
    5dc4:	1420fff4 	bnez	at,5d98 <func_80A61078+0x10>
    5dc8:	24a50008 	addiu	a1,a1,8
    5dcc:	00001025 	move	v0,zero
    5dd0:	03e00008 	jr	ra
    5dd4:	00000000 	nop

00005dd8 <func_80A610C8>:
    5dd8:	27bdffe0 	addiu	sp,sp,-32
    5ddc:	afbf0014 	sw	ra,20(sp)
    5de0:	90ae1d6c 	lbu	t6,7532(a1)
    5de4:	24010003 	li	at,3
    5de8:	00803825 	move	a3,a0
    5dec:	15c1000a 	bne	t6,at,5e18 <func_80A610C8+0x40>
    5df0:	8ca61d88 	lw	a2,7560(a1)
    5df4:	240f0001 	li	t7,1
    5df8:	2418000a 	li	t8,10
    5dfc:	24190002 	li	t9,2
    5e00:	ac8f020c 	sw	t7,524(a0)
    5e04:	a498001c 	sh	t8,28(a0)
    5e08:	0c000000 	jal	0 <func_80A5B2F0>
    5e0c:	ac99014c 	sw	t9,332(a0)
    5e10:	10000043 	b	5f20 <func_80A610C8+0x148>
    5e14:	8fbf0014 	lw	ra,20(sp)
    5e18:	50c00041 	beqzl	a2,5f20 <func_80A610C8+0x148>
    5e1c:	8fbf0014 	lw	ra,20(sp)
    5e20:	94c40000 	lhu	a0,0(a2)
    5e24:	afa70020 	sw	a3,32(sp)
    5e28:	afa60018 	sw	a2,24(sp)
    5e2c:	0c000000 	jal	0 <func_80A5B2F0>
    5e30:	afa50024 	sw	a1,36(sp)
    5e34:	8fa50024 	lw	a1,36(sp)
    5e38:	8fa60018 	lw	a2,24(sp)
    5e3c:	8fa70020 	lw	a3,32(sp)
    5e40:	10400036 	beqz	v0,5f1c <func_80A610C8+0x144>
    5e44:	00404025 	move	t0,v0
    5e48:	8ce30380 	lw	v1,896(a3)
    5e4c:	00e02025 	move	a0,a3
    5e50:	0008c880 	sll	t9,t0,0x2
    5e54:	1043002a 	beq	v0,v1,5f00 <func_80A610C8+0x128>
    5e58:	3c010000 	lui	at,0x0
    5e5c:	1460001e 	bnez	v1,5ed8 <func_80A610C8+0x100>
    5e60:	00390821 	addu	at,at,t9
    5e64:	8cc9000c 	lw	t1,12(a2)
    5e68:	44892000 	mtc1	t1,$f4
    5e6c:	00000000 	nop
    5e70:	468021a0 	cvt.s.w	$f6,$f4
    5e74:	e4e60024 	swc1	$f6,36(a3)
    5e78:	8cca0010 	lw	t2,16(a2)
    5e7c:	8cf80024 	lw	t8,36(a3)
    5e80:	448a4000 	mtc1	t2,$f8
    5e84:	00000000 	nop
    5e88:	468042a0 	cvt.s.w	$f10,$f8
    5e8c:	e4ea0028 	swc1	$f10,40(a3)
    5e90:	8ccb0014 	lw	t3,20(a2)
    5e94:	8cef0028 	lw	t7,40(a3)
    5e98:	448b8000 	mtc1	t3,$f16
    5e9c:	00000000 	nop
    5ea0:	468084a0 	cvt.s.w	$f18,$f16
    5ea4:	e4f2002c 	swc1	$f18,44(a3)
    5ea8:	94cc0008 	lhu	t4,8(a2)
    5eac:	acf80100 	sw	t8,256(a3)
    5eb0:	8cf8002c 	lw	t8,44(a3)
    5eb4:	a4ec0032 	sh	t4,50(a3)
    5eb8:	88ee0030 	lwl	t6,48(a3)
    5ebc:	98ee0033 	lwr	t6,51(a3)
    5ec0:	acef0104 	sw	t7,260(a3)
    5ec4:	acf80108 	sw	t8,264(a3)
    5ec8:	a8ee00b4 	swl	t6,180(a3)
    5ecc:	b8ee00b7 	swr	t6,183(a3)
    5ed0:	94ee0034 	lhu	t6,52(a3)
    5ed4:	a4ee00b8 	sh	t6,184(a3)
    5ed8:	ace80380 	sw	t0,896(a3)
    5edc:	8c390000 	lw	t9,0(at)
    5ee0:	afa70020 	sw	a3,32(sp)
    5ee4:	afa60018 	sw	a2,24(sp)
    5ee8:	0320f809 	jalr	t9
    5eec:	afa50024 	sw	a1,36(sp)
    5ef0:	8fa70020 	lw	a3,32(sp)
    5ef4:	8fa50024 	lw	a1,36(sp)
    5ef8:	8fa60018 	lw	a2,24(sp)
    5efc:	8ce30380 	lw	v1,896(a3)
    5f00:	00034880 	sll	t1,v1,0x2
    5f04:	3c190000 	lui	t9,0x0
    5f08:	0329c821 	addu	t9,t9,t1
    5f0c:	8f390000 	lw	t9,0(t9)
    5f10:	00e02025 	move	a0,a3
    5f14:	0320f809 	jalr	t9
    5f18:	00000000 	nop
    5f1c:	8fbf0014 	lw	ra,20(sp)
    5f20:	27bd0020 	addiu	sp,sp,32
    5f24:	03e00008 	jr	ra
    5f28:	00000000 	nop

00005f2c <func_80A6121C>:
    5f2c:	27bdffb8 	addiu	sp,sp,-72
    5f30:	afb10020 	sw	s1,32(sp)
    5f34:	afb0001c 	sw	s0,28(sp)
    5f38:	00808025 	move	s0,a0
    5f3c:	afbf0024 	sw	ra,36(sp)
    5f40:	afa5004c 	sw	a1,76(sp)
    5f44:	00c08825 	move	s1,a2
    5f48:	8cc40004 	lw	a0,4(a2)
    5f4c:	27a6003c 	addiu	a2,sp,60
    5f50:	0c000000 	jal	0 <func_80A5B2F0>
    5f54:	8e050204 	lw	a1,516(s0)
    5f58:	8e0f0204 	lw	t7,516(s0)
    5f5c:	8e2e0004 	lw	t6,4(s1)
    5f60:	27a80030 	addiu	t0,sp,48
    5f64:	000fc080 	sll	t8,t7,0x2
    5f68:	030fc021 	addu	t8,t8,t7
    5f6c:	0018c040 	sll	t8,t8,0x1
    5f70:	01d8c821 	addu	t9,t6,t8
    5f74:	87250008 	lh	a1,8(t9)
    5f78:	afa80010 	sw	t0,16(sp)
    5f7c:	27a4003c 	addiu	a0,sp,60
    5f80:	27a60038 	addiu	a2,sp,56
    5f84:	0c000000 	jal	0 <func_80A5B2F0>
    5f88:	27a70034 	addiu	a3,sp,52
    5f8c:	8e2a0000 	lw	t2,0(s1)
    5f90:	8e090204 	lw	t1,516(s0)
    5f94:	27a4003c 	addiu	a0,sp,60
    5f98:	254bffff 	addiu	t3,t2,-1
    5f9c:	012b082a 	slt	at,t1,t3
    5fa0:	54200011 	bnezl	at,5fe8 <func_80A6121C+0xbc>
    5fa4:	c6080024 	lwc1	$f8,36(s0)
    5fa8:	0c000000 	jal	0 <func_80A5B2F0>
    5fac:	26050024 	addiu	a1,s0,36
    5fb0:	3c0c0000 	lui	t4,0x0
    5fb4:	8d8c0000 	lw	t4,0(t4)
    5fb8:	858d0564 	lh	t5,1380(t4)
    5fbc:	448d2000 	mtc1	t5,$f4
    5fc0:	00000000 	nop
    5fc4:	468021a0 	cvt.s.w	$f6,$f4
    5fc8:	4606003c 	c.lt.s	$f0,$f6
    5fcc:	00000000 	nop
    5fd0:	45020005 	bc1fl	5fe8 <func_80A6121C+0xbc>
    5fd4:	c6080024 	lwc1	$f8,36(s0)
    5fd8:	8e0f03a4 	lw	t7,932(s0)
    5fdc:	35ee0002 	ori	t6,t7,0x2
    5fe0:	ae0e03a4 	sw	t6,932(s0)
    5fe4:	c6080024 	lwc1	$f8,36(s0)
    5fe8:	c7aa0038 	lwc1	$f10,56(sp)
    5fec:	c7b20034 	lwc1	$f18,52(sp)
    5ff0:	c604002c 	lwc1	$f4,44(s0)
    5ff4:	460a4402 	mul.s	$f16,$f8,$f10
    5ff8:	c7aa0030 	lwc1	$f10,48(sp)
    5ffc:	44801000 	mtc1	zero,$f2
    6000:	46049182 	mul.s	$f6,$f18,$f4
    6004:	46068200 	add.s	$f8,$f16,$f6
    6008:	460a4480 	add.s	$f18,$f8,$f10
    600c:	4612103c 	c.lt.s	$f2,$f18
    6010:	00000000 	nop
    6014:	4502000e 	bc1fl	6050 <func_80A6121C+0x124>
    6018:	8e0c03a4 	lw	t4,932(s0)
    601c:	8e180204 	lw	t8,516(s0)
    6020:	27190001 	addiu	t9,t8,1
    6024:	ae190204 	sw	t9,516(s0)
    6028:	8e2a0000 	lw	t2,0(s1)
    602c:	032a082a 	slt	at,t9,t2
    6030:	54200007 	bnezl	at,6050 <func_80A6121C+0x124>
    6034:	8e0c03a4 	lw	t4,932(s0)
    6038:	8e0903a4 	lw	t1,932(s0)
    603c:	24020001 	li	v0,1
    6040:	352b0001 	ori	t3,t1,0x1
    6044:	10000030 	b	6108 <func_80A6121C+0x1dc>
    6048:	ae0b03a4 	sw	t3,932(s0)
    604c:	8e0c03a4 	lw	t4,932(s0)
    6050:	02002025 	move	a0,s0
    6054:	8fa5004c 	lw	a1,76(sp)
    6058:	318d0001 	andi	t5,t4,0x1
    605c:	15a00005 	bnez	t5,6074 <func_80A6121C+0x148>
    6060:	27a6003c 	addiu	a2,sp,60
    6064:	0c000000 	jal	0 <func_80A5B2F0>
    6068:	24070320 	li	a3,800
    606c:	44801000 	mtc1	zero,$f2
    6070:	00000000 	nop
    6074:	860f0032 	lh	t7,50(s0)
    6078:	8e180204 	lw	t8,516(s0)
    607c:	c6000068 	lwc1	$f0,104(s0)
    6080:	a60f00b6 	sh	t7,182(s0)
    6084:	8e2e0004 	lw	t6,4(s1)
    6088:	0018c880 	sll	t9,t8,0x2
    608c:	0338c821 	addu	t9,t9,t8
    6090:	0019c840 	sll	t9,t9,0x1
    6094:	01d94021 	addu	t0,t6,t9
    6098:	850a0006 	lh	t2,6(t0)
    609c:	3c010000 	lui	at,0x0
    60a0:	00001025 	move	v0,zero
    60a4:	448a2000 	mtc1	t2,$f4
    60a8:	00000000 	nop
    60ac:	46802420 	cvt.s.w	$f16,$f4
    60b0:	4610003c 	c.lt.s	$f0,$f16
    60b4:	00000000 	nop
    60b8:	4500000a 	bc1f	60e4 <func_80A6121C+0x1b8>
    60bc:	00000000 	nop
    60c0:	8e0903a4 	lw	t1,932(s0)
    60c4:	312b0001 	andi	t3,t1,0x1
    60c8:	15600006 	bnez	t3,60e4 <func_80A6121C+0x1b8>
    60cc:	00000000 	nop
    60d0:	3c010000 	lui	at,0x0
    60d4:	c4260000 	lwc1	$f6,0(at)
    60d8:	46060200 	add.s	$f8,$f0,$f6
    60dc:	1000000a 	b	6108 <func_80A6121C+0x1dc>
    60e0:	e6080068 	swc1	$f8,104(s0)
    60e4:	c42a0000 	lwc1	$f10,0(at)
    60e8:	460a0481 	sub.s	$f18,$f0,$f10
    60ec:	e6120068 	swc1	$f18,104(s0)
    60f0:	c6040068 	lwc1	$f4,104(s0)
    60f4:	4602203c 	c.lt.s	$f4,$f2
    60f8:	00000000 	nop
    60fc:	45000002 	bc1f	6108 <func_80A6121C+0x1dc>
    6100:	00000000 	nop
    6104:	e6020068 	swc1	$f2,104(s0)
    6108:	8fbf0024 	lw	ra,36(sp)
    610c:	8fb0001c 	lw	s0,28(sp)
    6110:	8fb10020 	lw	s1,32(sp)
    6114:	03e00008 	jr	ra
    6118:	27bd0048 	addiu	sp,sp,72

0000611c <func_80A6140C>:
    611c:	27bdffe8 	addiu	sp,sp,-24
    6120:	afbf0014 	sw	ra,20(sp)
    6124:	44802000 	mtc1	zero,$f4
    6128:	ac8003a0 	sw	zero,928(a0)
    612c:	ac800218 	sw	zero,536(a0)
    6130:	ac800204 	sw	zero,516(a0)
    6134:	ac8003a8 	sw	zero,936(a0)
    6138:	0c000000 	jal	0 <func_80A5B2F0>
    613c:	e4840068 	swc1	$f4,104(a0)
    6140:	8fbf0014 	lw	ra,20(sp)
    6144:	27bd0018 	addiu	sp,sp,24
    6148:	03e00008 	jr	ra
    614c:	00000000 	nop

00006150 <func_80A61440>:
    6150:	27bdffc8 	addiu	sp,sp,-56
    6154:	afbf002c 	sw	ra,44(sp)
    6158:	afb00028 	sw	s0,40(sp)
    615c:	c4800068 	lwc1	$f0,104(a0)
    6160:	44802000 	mtc1	zero,$f4
    6164:	240e0012 	li	t6,18
    6168:	00808025 	move	s0,a0
    616c:	46002032 	c.eq.s	$f4,$f0
    6170:	00001825 	move	v1,zero
    6174:	ac8e014c 	sw	t6,332(a0)
    6178:	24060006 	li	a2,6
    617c:	45000009 	bc1f	61a4 <func_80A61440+0x54>
    6180:	3c014040 	lui	at,0x4040
    6184:	8c8f0210 	lw	t7,528(a0)
    6188:	24040004 	li	a0,4
    618c:	24050005 	li	a1,5
    6190:	11e00002 	beqz	t7,619c <func_80A61440+0x4c>
    6194:	00000000 	nop
    6198:	24030001 	li	v1,1
    619c:	10000024 	b	6230 <func_80A61440+0xe0>
    61a0:	ae000210 	sw	zero,528(s0)
    61a4:	44813000 	mtc1	at,$f6
    61a8:	24060006 	li	a2,6
    61ac:	24050005 	li	a1,5
    61b0:	4606003e 	c.le.s	$f0,$f6
    61b4:	3c0140c0 	lui	at,0x40c0
    61b8:	45020009 	bc1fl	61e0 <func_80A61440+0x90>
    61bc:	44814000 	mtc1	at,$f8
    61c0:	8e180210 	lw	t8,528(s0)
    61c4:	24040004 	li	a0,4
    61c8:	10980002 	beq	a0,t8,61d4 <func_80A61440+0x84>
    61cc:	00000000 	nop
    61d0:	24030001 	li	v1,1
    61d4:	10000016 	b	6230 <func_80A61440+0xe0>
    61d8:	ae040210 	sw	a0,528(s0)
    61dc:	44814000 	mtc1	at,$f8
    61e0:	24060006 	li	a2,6
    61e4:	24050005 	li	a1,5
    61e8:	4608003e 	c.le.s	$f0,$f8
    61ec:	24040004 	li	a0,4
    61f0:	4502000a 	bc1fl	621c <func_80A61440+0xcc>
    61f4:	8e080210 	lw	t0,528(s0)
    61f8:	8e190210 	lw	t9,528(s0)
    61fc:	24050005 	li	a1,5
    6200:	24040004 	li	a0,4
    6204:	10b90002 	beq	a1,t9,6210 <func_80A61440+0xc0>
    6208:	00000000 	nop
    620c:	24030001 	li	v1,1
    6210:	10000007 	b	6230 <func_80A61440+0xe0>
    6214:	ae050210 	sw	a1,528(s0)
    6218:	8e080210 	lw	t0,528(s0)
    621c:	24060006 	li	a2,6
    6220:	50c80003 	beql	a2,t0,6230 <func_80A61440+0xe0>
    6224:	ae060210 	sw	a2,528(s0)
    6228:	24030001 	li	v1,1
    622c:	ae060210 	sw	a2,528(s0)
    6230:	8e020210 	lw	v0,528(s0)
    6234:	3c013f00 	lui	at,0x3f00
    6238:	14820007 	bne	a0,v0,6258 <func_80A61440+0x108>
    623c:	00000000 	nop
    6240:	c60a0068 	lwc1	$f10,104(s0)
    6244:	44818000 	mtc1	at,$f16
    6248:	00000000 	nop
    624c:	46105482 	mul.s	$f18,$f10,$f16
    6250:	10000037 	b	6330 <func_80A61440+0x1e0>
    6254:	e7b20030 	swc1	$f18,48(sp)
    6258:	14a20018 	bne	a1,v0,62bc <func_80A61440+0x16c>
    625c:	3c070000 	lui	a3,0x0
    6260:	3c013e80 	lui	at,0x3e80
    6264:	44813000 	mtc1	at,$f6
    6268:	c6040068 	lwc1	$f4,104(s0)
    626c:	3c090000 	lui	t1,0x0
    6270:	24e70000 	addiu	a3,a3,0
    6274:	46062202 	mul.s	$f8,$f4,$f6
    6278:	25290000 	addiu	t1,t1,0
    627c:	afa90014 	sw	t1,20(sp)
    6280:	afa70010 	sw	a3,16(sp)
    6284:	afa30034 	sw	v1,52(sp)
    6288:	24042804 	li	a0,10244
    628c:	260500e4 	addiu	a1,s0,228
    6290:	e7a80030 	swc1	$f8,48(sp)
    6294:	0c000000 	jal	0 <func_80A5B2F0>
    6298:	24060004 	li	a2,4
    629c:	44806000 	mtc1	zero,$f12
    62a0:	2405003c 	li	a1,60
    62a4:	24060008 	li	a2,8
    62a8:	0c000000 	jal	0 <func_80A5B2F0>
    62ac:	240700ff 	li	a3,255
    62b0:	8fa30034 	lw	v1,52(sp)
    62b4:	1000001e 	b	6330 <func_80A61440+0x1e0>
    62b8:	8e020210 	lw	v0,528(s0)
    62bc:	14c20019 	bne	a2,v0,6324 <func_80A61440+0x1d4>
    62c0:	3c013f80 	lui	at,0x3f80
    62c4:	3c010000 	lui	at,0x0
    62c8:	c4300000 	lwc1	$f16,0(at)
    62cc:	c60a0068 	lwc1	$f10,104(s0)
    62d0:	3c070000 	lui	a3,0x0
    62d4:	3c0a0000 	lui	t2,0x0
    62d8:	46105482 	mul.s	$f18,$f10,$f16
    62dc:	24e70000 	addiu	a3,a3,0
    62e0:	254a0000 	addiu	t2,t2,0
    62e4:	afaa0014 	sw	t2,20(sp)
    62e8:	afa70010 	sw	a3,16(sp)
    62ec:	afa30034 	sw	v1,52(sp)
    62f0:	24042804 	li	a0,10244
    62f4:	e7b20030 	swc1	$f18,48(sp)
    62f8:	260500e4 	addiu	a1,s0,228
    62fc:	0c000000 	jal	0 <func_80A5B2F0>
    6300:	24060004 	li	a2,4
    6304:	44806000 	mtc1	zero,$f12
    6308:	24050078 	li	a1,120
    630c:	24060008 	li	a2,8
    6310:	0c000000 	jal	0 <func_80A5B2F0>
    6314:	240700ff 	li	a3,255
    6318:	8fa30034 	lw	v1,52(sp)
    631c:	10000004 	b	6330 <func_80A61440+0x1e0>
    6320:	8e020210 	lw	v0,528(s0)
    6324:	44812000 	mtc1	at,$f4
    6328:	00000000 	nop
    632c:	e7a40030 	swc1	$f4,48(sp)
    6330:	24010001 	li	at,1
    6334:	5461002b 	bnel	v1,at,63e4 <func_80A61440+0x294>
    6338:	8e0b0158 	lw	t3,344(s0)
    633c:	8e0b0158 	lw	t3,344(s0)
    6340:	3c0d0000 	lui	t5,0x0
    6344:	00027080 	sll	t6,v0,0x2
    6348:	000b6080 	sll	t4,t3,0x2
    634c:	01ac6821 	addu	t5,t5,t4
    6350:	8dad0000 	lw	t5,0(t5)
    6354:	01ae7821 	addu	t7,t5,t6
    6358:	0c000000 	jal	0 <func_80A5B2F0>
    635c:	8de40000 	lw	a0,0(t7)
    6360:	8e030210 	lw	v1,528(s0)
    6364:	3c010000 	lui	at,0x0
    6368:	c7a80030 	lwc1	$f8,48(sp)
    636c:	00031880 	sll	v1,v1,0x2
    6370:	00230821 	addu	at,at,v1
    6374:	c4260000 	lwc1	$f6,0(at)
    6378:	3c013fc0 	lui	at,0x3fc0
    637c:	44818000 	mtc1	at,$f16
    6380:	46083282 	mul.s	$f10,$f6,$f8
    6384:	8e180158 	lw	t8,344(s0)
    6388:	44822000 	mtc1	v0,$f4
    638c:	3c080000 	lui	t0,0x0
    6390:	0018c880 	sll	t9,t8,0x2
    6394:	01194021 	addu	t0,t0,t9
    6398:	8d080000 	lw	t0,0(t0)
    639c:	46105482 	mul.s	$f18,$f10,$f16
    63a0:	44800000 	mtc1	zero,$f0
    63a4:	3c01c040 	lui	at,0xc040
    63a8:	01034821 	addu	t1,t0,v1
    63ac:	44814000 	mtc1	at,$f8
    63b0:	8d250000 	lw	a1,0(t1)
    63b4:	468021a0 	cvt.s.w	$f6,$f4
    63b8:	44069000 	mfc1	a2,$f18
    63bc:	240a0002 	li	t2,2
    63c0:	44070000 	mfc1	a3,$f0
    63c4:	afaa0014 	sw	t2,20(sp)
    63c8:	260401ac 	addiu	a0,s0,428
    63cc:	e7a60010 	swc1	$f6,16(sp)
    63d0:	0c000000 	jal	0 <func_80A5B2F0>
    63d4:	e7a80018 	swc1	$f8,24(sp)
    63d8:	10000027 	b	6478 <func_80A61440+0x328>
    63dc:	8fbf002c 	lw	ra,44(sp)
    63e0:	8e0b0158 	lw	t3,344(s0)
    63e4:	3c0d0000 	lui	t5,0x0
    63e8:	00027080 	sll	t6,v0,0x2
    63ec:	000b6080 	sll	t4,t3,0x2
    63f0:	01ac6821 	addu	t5,t5,t4
    63f4:	8dad0000 	lw	t5,0(t5)
    63f8:	01ae7821 	addu	t7,t5,t6
    63fc:	0c000000 	jal	0 <func_80A5B2F0>
    6400:	8de40000 	lw	a0,0(t7)
    6404:	8e030210 	lw	v1,528(s0)
    6408:	3c010000 	lui	at,0x0
    640c:	c7b00030 	lwc1	$f16,48(sp)
    6410:	00031880 	sll	v1,v1,0x2
    6414:	00230821 	addu	at,at,v1
    6418:	c42a0000 	lwc1	$f10,0(at)
    641c:	3c013fc0 	lui	at,0x3fc0
    6420:	44812000 	mtc1	at,$f4
    6424:	46105482 	mul.s	$f18,$f10,$f16
    6428:	8e180158 	lw	t8,344(s0)
    642c:	44824000 	mtc1	v0,$f8
    6430:	3c080000 	lui	t0,0x0
    6434:	0018c880 	sll	t9,t8,0x2
    6438:	01194021 	addu	t0,t0,t9
    643c:	8d080000 	lw	t0,0(t0)
    6440:	46049182 	mul.s	$f6,$f18,$f4
    6444:	44800000 	mtc1	zero,$f0
    6448:	01034821 	addu	t1,t0,v1
    644c:	8d250000 	lw	a1,0(t1)
    6450:	240a0002 	li	t2,2
    6454:	44070000 	mfc1	a3,$f0
    6458:	468042a0 	cvt.s.w	$f10,$f8
    645c:	44063000 	mfc1	a2,$f6
    6460:	afaa0014 	sw	t2,20(sp)
    6464:	260401ac 	addiu	a0,s0,428
    6468:	e7a00018 	swc1	$f0,24(sp)
    646c:	0c000000 	jal	0 <func_80A5B2F0>
    6470:	e7aa0010 	swc1	$f10,16(sp)
    6474:	8fbf002c 	lw	ra,44(sp)
    6478:	8fb00028 	lw	s0,40(sp)
    647c:	27bd0038 	addiu	sp,sp,56
    6480:	03e00008 	jr	ra
    6484:	00000000 	nop

00006488 <func_80A61778>:
    6488:	27bdffd8 	addiu	sp,sp,-40
    648c:	afbf0014 	sw	ra,20(sp)
    6490:	8c8e0210 	lw	t6,528(a0)
    6494:	24010004 	li	at,4
    6498:	00803825 	move	a3,a0
    649c:	55c10007 	bnel	t6,at,64bc <func_80A61778+0x34>
    64a0:	3c010001 	lui	at,0x1
    64a4:	afa5002c 	sw	a1,44(sp)
    64a8:	0c000000 	jal	0 <func_80A5B2F0>
    64ac:	afa70028 	sw	a3,40(sp)
    64b0:	8fa5002c 	lw	a1,44(sp)
    64b4:	8fa70028 	lw	a3,40(sp)
    64b8:	3c010001 	lui	at,0x1
    64bc:	00a14021 	addu	t0,a1,at
    64c0:	950f072e 	lhu	t7,1838(t0)
    64c4:	24040041 	li	a0,65
    64c8:	55e00005 	bnezl	t7,64e0 <func_80A61778+0x58>
    64cc:	afa5002c 	sw	a1,44(sp)
    64d0:	8cf803a8 	lw	t8,936(a3)
    64d4:	27190001 	addiu	t9,t8,1
    64d8:	acf903a8 	sw	t9,936(a3)
    64dc:	afa5002c 	sw	a1,44(sp)
    64e0:	afa70028 	sw	a3,40(sp)
    64e4:	0c000000 	jal	0 <func_80A5B2F0>
    64e8:	afa8001c 	sw	t0,28(sp)
    64ec:	3c060000 	lui	a2,0x0
    64f0:	8fa5002c 	lw	a1,44(sp)
    64f4:	8fa40028 	lw	a0,40(sp)
    64f8:	afa20020 	sw	v0,32(sp)
    64fc:	0c000000 	jal	0 <func_80A5B2F0>
    6500:	24c60000 	addiu	a2,a2,0
    6504:	8fa70028 	lw	a3,40(sp)
    6508:	8fa5002c 	lw	a1,44(sp)
    650c:	8fa8001c 	lw	t0,28(sp)
    6510:	8ce303a4 	lw	v1,932(a3)
    6514:	8fab0020 	lw	t3,32(sp)
    6518:	30690001 	andi	t1,v1,0x1
    651c:	55200005 	bnezl	t1,6534 <func_80A61778+0xac>
    6520:	24010001 	li	at,1
    6524:	8cea03a8 	lw	t2,936(a3)
    6528:	2941002e 	slti	at,t2,46
    652c:	14200015 	bnez	at,6584 <func_80A61778+0xfc>
    6530:	24010001 	li	at,1
    6534:	11610013 	beq	t3,at,6584 <func_80A61778+0xfc>
    6538:	3c040000 	lui	a0,0x0
    653c:	24840000 	addiu	a0,a0,0
    6540:	948c1404 	lhu	t4,5124(a0)
    6544:	24010003 	li	at,3
    6548:	240d03b0 	li	t5,944
    654c:	1181000d 	beq	t4,at,6584 <func_80A61778+0xfc>
    6550:	240e0014 	li	t6,20
    6554:	3c010001 	lui	at,0x1
    6558:	ac800008 	sw	zero,8(a0)
    655c:	00250821 	addu	at,at,a1
    6560:	a42d1e1a 	sh	t5,7706(at)
    6564:	3c010001 	lui	at,0x1
    6568:	00250821 	addu	at,at,a1
    656c:	a02e1e15 	sb	t6,7701(at)
    6570:	3c010001 	lui	at,0x1
    6574:	00250821 	addu	at,at,a1
    6578:	240f0020 	li	t7,32
    657c:	a02f1e5e 	sb	t7,7774(at)
    6580:	8ce303a4 	lw	v1,932(a3)
    6584:	9502072e 	lhu	v0,1838(t0)
    6588:	3c040000 	lui	a0,0x0
    658c:	24840000 	addiu	a0,a0,0
    6590:	10400018 	beqz	v0,65f4 <func_80A61778+0x16c>
    6594:	30780002 	andi	t8,v1,0x2
    6598:	17000016 	bnez	t8,65f4 <func_80A61778+0x16c>
    659c:	00000000 	nop
    65a0:	94990f2a 	lhu	t9,3882(a0)
    65a4:	33290001 	andi	t1,t9,0x1
    65a8:	5120000b 	beqzl	t1,65d8 <func_80A61778+0x150>
    65ac:	948c1406 	lhu	t4,5126(a0)
    65b0:	948a1406 	lhu	t2,5126(a0)
    65b4:	346b0004 	ori	t3,v1,0x4
    65b8:	294105dc 	slti	at,t2,1500
    65bc:	1420000d 	bnez	at,65f4 <func_80A61778+0x16c>
    65c0:	00000000 	nop
    65c4:	aceb03a4 	sw	t3,932(a3)
    65c8:	9502072e 	lhu	v0,1838(t0)
    65cc:	10000009 	b	65f4 <func_80A61778+0x16c>
    65d0:	01601825 	move	v1,t3
    65d4:	948c1406 	lhu	t4,5126(a0)
    65d8:	346d0004 	ori	t5,v1,0x4
    65dc:	298103e8 	slti	at,t4,1000
    65e0:	14200004 	bnez	at,65f4 <func_80A61778+0x16c>
    65e4:	00000000 	nop
    65e8:	aced03a4 	sw	t5,932(a3)
    65ec:	9502072e 	lhu	v0,1838(t0)
    65f0:	01a01825 	move	v1,t5
    65f4:	10400002 	beqz	v0,6600 <func_80A61778+0x178>
    65f8:	306e0002 	andi	t6,v1,0x2
    65fc:	11c00009 	beqz	t6,6624 <func_80A61778+0x19c>
    6600:	306f0004 	andi	t7,v1,0x4
    6604:	11e00007 	beqz	t7,6624 <func_80A61778+0x19c>
    6608:	2401fffb 	li	at,-5
    660c:	0061c024 	and	t8,v1,at
    6610:	acf803a4 	sw	t8,932(a3)
    6614:	afa70028 	sw	a3,40(sp)
    6618:	0c000000 	jal	0 <func_80A5B2F0>
    661c:	24040041 	li	a0,65
    6620:	8fa70028 	lw	a3,40(sp)
    6624:	8cf903a0 	lw	t9,928(a3)
    6628:	5720000a 	bnezl	t9,6654 <func_80A61778+0x1cc>
    662c:	8ce20210 	lw	v0,528(a3)
    6630:	8ce90210 	lw	t1,528(a3)
    6634:	44802000 	mtc1	zero,$f4
    6638:	00e02025 	move	a0,a3
    663c:	11200004 	beqz	t1,6650 <func_80A61778+0x1c8>
    6640:	e4e40068 	swc1	$f4,104(a3)
    6644:	0c000000 	jal	0 <func_80A5B2F0>
    6648:	afa70028 	sw	a3,40(sp)
    664c:	8fa70028 	lw	a3,40(sp)
    6650:	8ce20210 	lw	v0,528(a3)
    6654:	24010004 	li	at,4
    6658:	24e401ac 	addiu	a0,a3,428
    665c:	14410006 	bne	v0,at,6678 <func_80A61778+0x1f0>
    6660:	3c013f00 	lui	at,0x3f00
    6664:	44814000 	mtc1	at,$f8
    6668:	c4e60068 	lwc1	$f6,104(a3)
    666c:	46083002 	mul.s	$f0,$f6,$f8
    6670:	10000015 	b	66c8 <func_80A61778+0x240>
    6674:	e4e001c8 	swc1	$f0,456(a3)
    6678:	24010005 	li	at,5
    667c:	14410006 	bne	v0,at,6698 <func_80A61778+0x210>
    6680:	3c013e80 	lui	at,0x3e80
    6684:	44818000 	mtc1	at,$f16
    6688:	c4ea0068 	lwc1	$f10,104(a3)
    668c:	46105002 	mul.s	$f0,$f10,$f16
    6690:	1000000d 	b	66c8 <func_80A61778+0x240>
    6694:	e4e001c8 	swc1	$f0,456(a3)
    6698:	24010006 	li	at,6
    669c:	14410006 	bne	v0,at,66b8 <func_80A61778+0x230>
    66a0:	3c010000 	lui	at,0x0
    66a4:	c4240000 	lwc1	$f4,0(at)
    66a8:	c4f20068 	lwc1	$f18,104(a3)
    66ac:	46049002 	mul.s	$f0,$f18,$f4
    66b0:	10000005 	b	66c8 <func_80A61778+0x240>
    66b4:	e4e001c8 	swc1	$f0,456(a3)
    66b8:	3c013f80 	lui	at,0x3f80
    66bc:	44810000 	mtc1	at,$f0
    66c0:	00000000 	nop
    66c4:	e4e001c8 	swc1	$f0,456(a3)
    66c8:	0c000000 	jal	0 <func_80A5B2F0>
    66cc:	afa70028 	sw	a3,40(sp)
    66d0:	1440000a 	bnez	v0,66fc <func_80A61778+0x274>
    66d4:	8fa70028 	lw	a3,40(sp)
    66d8:	8cea0210 	lw	t2,528(a3)
    66dc:	5540000a 	bnezl	t2,6708 <func_80A61778+0x280>
    66e0:	8fbf0014 	lw	ra,20(sp)
    66e4:	44803000 	mtc1	zero,$f6
    66e8:	c4e80068 	lwc1	$f8,104(a3)
    66ec:	46083032 	c.eq.s	$f6,$f8
    66f0:	00000000 	nop
    66f4:	45030004 	bc1tl	6708 <func_80A61778+0x280>
    66f8:	8fbf0014 	lw	ra,20(sp)
    66fc:	0c000000 	jal	0 <func_80A5B2F0>
    6700:	00e02025 	move	a0,a3
    6704:	8fbf0014 	lw	ra,20(sp)
    6708:	27bd0028 	addiu	sp,sp,40
    670c:	03e00008 	jr	ra
    6710:	00000000 	nop

00006714 <func_80A61A04>:
    6714:	8c8f01f0 	lw	t7,496(a0)
    6718:	44802000 	mtc1	zero,$f4
    671c:	3c010001 	lui	at,0x1
    6720:	240e0013 	li	t6,19
    6724:	01e1c025 	or	t8,t7,at
    6728:	ac8e014c 	sw	t6,332(a0)
    672c:	ac9801f0 	sw	t8,496(a0)
    6730:	03e00008 	jr	ra
    6734:	e4840068 	swc1	$f4,104(a0)

00006738 <func_80A61A28>:
    6738:	27bdffa0 	addiu	sp,sp,-96
    673c:	afbf002c 	sw	ra,44(sp)
    6740:	afb00028 	sw	s0,40(sp)
    6744:	afa50064 	sw	a1,100(sp)
    6748:	8caf1c44 	lw	t7,7236(a1)
    674c:	3c180000 	lui	t8,0x0
    6750:	8f180000 	lw	t8,0(t8)
    6754:	afaf005c 	sw	t7,92(sp)
    6758:	00808025 	move	s0,a0
    675c:	871905be 	lh	t9,1470(t8)
    6760:	17200005 	bnez	t9,6778 <func_80A61A28+0x40>
    6764:	00000000 	nop
    6768:	8c880158 	lw	t0,344(a0)
    676c:	24010001 	li	at,1
    6770:	5501000e 	bnel	t0,at,67ac <func_80A61A28+0x74>
    6774:	26040008 	addiu	a0,s0,8
    6778:	0c000000 	jal	0 <func_80A5B2F0>
    677c:	02002025 	move	a0,s0
    6780:	3c070000 	lui	a3,0x0
    6784:	3c090000 	lui	t1,0x0
    6788:	24e70000 	addiu	a3,a3,0
    678c:	25290000 	addiu	t1,t1,0
    6790:	afa90014 	sw	t1,20(sp)
    6794:	afa70010 	sw	a3,16(sp)
    6798:	24042805 	li	a0,10245
    679c:	260500e4 	addiu	a1,s0,228
    67a0:	0c000000 	jal	0 <func_80A5B2F0>
    67a4:	24060004 	li	a2,4
    67a8:	26040008 	addiu	a0,s0,8
    67ac:	26050024 	addiu	a1,s0,36
    67b0:	afa50034 	sw	a1,52(sp)
    67b4:	0c000000 	jal	0 <func_80A5B2F0>
    67b8:	afa40038 	sw	a0,56(sp)
    67bc:	8fa4005c 	lw	a0,92(sp)
    67c0:	e7a00058 	swc1	$f0,88(sp)
    67c4:	8fa50038 	lw	a1,56(sp)
    67c8:	24840024 	addiu	a0,a0,36
    67cc:	0c000000 	jal	0 <func_80A5B2F0>
    67d0:	afa40030 	sw	a0,48(sp)
    67d4:	8fa40030 	lw	a0,48(sp)
    67d8:	e7a00054 	swc1	$f0,84(sp)
    67dc:	0c000000 	jal	0 <func_80A5B2F0>
    67e0:	8fa50034 	lw	a1,52(sp)
    67e4:	3c014396 	lui	at,0x4396
    67e8:	44816000 	mtc1	at,$f12
    67ec:	c7a40054 	lwc1	$f4,84(sp)
    67f0:	3c014316 	lui	at,0x4316
    67f4:	c7a80058 	lwc1	$f8,88(sp)
    67f8:	4604603c 	c.lt.s	$f12,$f4
    67fc:	00000000 	nop
    6800:	45020026 	bc1fl	689c <func_80A61A28+0x164>
    6804:	460c003c 	c.lt.s	$f0,$f12
    6808:	44813000 	mtc1	at,$f6
    680c:	3c010000 	lui	at,0x0
    6810:	4608303c 	c.lt.s	$f6,$f8
    6814:	00000000 	nop
    6818:	45020011 	bc1fl	6860 <func_80A61A28+0x128>
    681c:	c6040068 	lwc1	$f4,104(s0)
    6820:	3c014100 	lui	at,0x4100
    6824:	44811000 	mtc1	at,$f2
    6828:	3c010000 	lui	at,0x0
    682c:	c4300000 	lwc1	$f16,0(at)
    6830:	c60a0068 	lwc1	$f10,104(s0)
    6834:	46105480 	add.s	$f18,$f10,$f16
    6838:	e6120068 	swc1	$f18,104(s0)
    683c:	c6000068 	lwc1	$f0,104(s0)
    6840:	4600103c 	c.lt.s	$f2,$f0
    6844:	00000000 	nop
    6848:	45020035 	bc1fl	6920 <func_80A61A28+0x1e8>
    684c:	3c0140c0 	lui	at,0x40c0
    6850:	e6020068 	swc1	$f2,104(s0)
    6854:	10000031 	b	691c <func_80A61A28+0x1e4>
    6858:	c6000068 	lwc1	$f0,104(s0)
    685c:	c6040068 	lwc1	$f4,104(s0)
    6860:	c4260000 	lwc1	$f6,0(at)
    6864:	44805000 	mtc1	zero,$f10
    6868:	46062201 	sub.s	$f8,$f4,$f6
    686c:	e6080068 	swc1	$f8,104(s0)
    6870:	c6000068 	lwc1	$f0,104(s0)
    6874:	460a003c 	c.lt.s	$f0,$f10
    6878:	00000000 	nop
    687c:	45020028 	bc1fl	6920 <func_80A61A28+0x1e8>
    6880:	3c0140c0 	lui	at,0x40c0
    6884:	44808000 	mtc1	zero,$f16
    6888:	00000000 	nop
    688c:	e6100068 	swc1	$f16,104(s0)
    6890:	10000022 	b	691c <func_80A61A28+0x1e4>
    6894:	c6000068 	lwc1	$f0,104(s0)
    6898:	460c003c 	c.lt.s	$f0,$f12
    689c:	3c010000 	lui	at,0x0
    68a0:	45020011 	bc1fl	68e8 <func_80A61A28+0x1b0>
    68a4:	c6080068 	lwc1	$f8,104(s0)
    68a8:	3c014100 	lui	at,0x4100
    68ac:	44811000 	mtc1	at,$f2
    68b0:	3c010000 	lui	at,0x0
    68b4:	c4240000 	lwc1	$f4,0(at)
    68b8:	c6120068 	lwc1	$f18,104(s0)
    68bc:	46049180 	add.s	$f6,$f18,$f4
    68c0:	e6060068 	swc1	$f6,104(s0)
    68c4:	c6000068 	lwc1	$f0,104(s0)
    68c8:	4600103c 	c.lt.s	$f2,$f0
    68cc:	00000000 	nop
    68d0:	45020013 	bc1fl	6920 <func_80A61A28+0x1e8>
    68d4:	3c0140c0 	lui	at,0x40c0
    68d8:	e6020068 	swc1	$f2,104(s0)
    68dc:	1000000f 	b	691c <func_80A61A28+0x1e4>
    68e0:	c6000068 	lwc1	$f0,104(s0)
    68e4:	c6080068 	lwc1	$f8,104(s0)
    68e8:	c42a0000 	lwc1	$f10,0(at)
    68ec:	44809000 	mtc1	zero,$f18
    68f0:	460a4401 	sub.s	$f16,$f8,$f10
    68f4:	e6100068 	swc1	$f16,104(s0)
    68f8:	c6000068 	lwc1	$f0,104(s0)
    68fc:	4612003c 	c.lt.s	$f0,$f18
    6900:	00000000 	nop
    6904:	45020006 	bc1fl	6920 <func_80A61A28+0x1e8>
    6908:	3c0140c0 	lui	at,0x40c0
    690c:	44802000 	mtc1	zero,$f4
    6910:	00000000 	nop
    6914:	e6040068 	swc1	$f4,104(s0)
    6918:	c6000068 	lwc1	$f0,104(s0)
    691c:	3c0140c0 	lui	at,0x40c0
    6920:	44813000 	mtc1	at,$f6
    6924:	3c014040 	lui	at,0x4040
    6928:	4600303e 	c.le.s	$f6,$f0
    692c:	00000000 	nop
    6930:	45020008 	bc1fl	6954 <func_80A61A28+0x21c>
    6934:	44818000 	mtc1	at,$f16
    6938:	3c010000 	lui	at,0x0
    693c:	c4280000 	lwc1	$f8,0(at)
    6940:	24060006 	li	a2,6
    6944:	46080282 	mul.s	$f10,$f0,$f8
    6948:	10000032 	b	6a14 <func_80A61A28+0x2dc>
    694c:	e60a01c8 	swc1	$f10,456(s0)
    6950:	44818000 	mtc1	at,$f16
    6954:	3c010000 	lui	at,0x0
    6958:	4600803e 	c.le.s	$f16,$f0
    695c:	00000000 	nop
    6960:	45000007 	bc1f	6980 <func_80A61A28+0x248>
    6964:	00000000 	nop
    6968:	3c013ec0 	lui	at,0x3ec0
    696c:	44819000 	mtc1	at,$f18
    6970:	24060005 	li	a2,5
    6974:	46120102 	mul.s	$f4,$f0,$f18
    6978:	10000026 	b	6a14 <func_80A61A28+0x2dc>
    697c:	e60401c8 	swc1	$f4,456(s0)
    6980:	c4260000 	lwc1	$f6,0(at)
    6984:	3c013f40 	lui	at,0x3f40
    6988:	4600303c 	c.lt.s	$f6,$f0
    698c:	00000000 	nop
    6990:	4500000c 	bc1f	69c4 <func_80A61A28+0x28c>
    6994:	00000000 	nop
    6998:	44814000 	mtc1	at,$f8
    699c:	24060004 	li	a2,4
    69a0:	02002025 	move	a0,s0
    69a4:	46080282 	mul.s	$f10,$f0,$f8
    69a8:	e60a01c8 	swc1	$f10,456(s0)
    69ac:	0c000000 	jal	0 <func_80A5B2F0>
    69b0:	afa6004c 	sw	a2,76(sp)
    69b4:	3c014396 	lui	at,0x4396
    69b8:	44816000 	mtc1	at,$f12
    69bc:	10000015 	b	6a14 <func_80A61A28+0x2dc>
    69c0:	8fa6004c 	lw	a2,76(sp)
    69c4:	0c000000 	jal	0 <func_80A5B2F0>
    69c8:	00000000 	nop
    69cc:	3c013f00 	lui	at,0x3f00
    69d0:	44818000 	mtc1	at,$f16
    69d4:	00003025 	move	a2,zero
    69d8:	02002025 	move	a0,s0
    69dc:	4600803c 	c.lt.s	$f16,$f0
    69e0:	8fa50064 	lw	a1,100(sp)
    69e4:	45000003 	bc1f	69f4 <func_80A61A28+0x2bc>
    69e8:	00000000 	nop
    69ec:	10000001 	b	69f4 <func_80A61A28+0x2bc>
    69f0:	24060001 	li	a2,1
    69f4:	0c000000 	jal	0 <func_80A5B2F0>
    69f8:	afa6004c 	sw	a2,76(sp)
    69fc:	3c013f80 	lui	at,0x3f80
    6a00:	44819000 	mtc1	at,$f18
    6a04:	3c014396 	lui	at,0x4396
    6a08:	8fa6004c 	lw	a2,76(sp)
    6a0c:	44816000 	mtc1	at,$f12
    6a10:	e61201c8 	swc1	$f18,456(s0)
    6a14:	24010006 	li	at,6
    6a18:	10c10006 	beq	a2,at,6a34 <func_80A61A28+0x2fc>
    6a1c:	c7a40054 	lwc1	$f4,84(sp)
    6a20:	24010005 	li	at,5
    6a24:	10c10003 	beq	a2,at,6a34 <func_80A61A28+0x2fc>
    6a28:	24010004 	li	at,4
    6a2c:	54c1002f 	bnel	a2,at,6aec <func_80A61A28+0x3b4>
    6a30:	260401ac 	addiu	a0,s0,428
    6a34:	460c203c 	c.lt.s	$f4,$f12
    6a38:	8fa40034 	lw	a0,52(sp)
    6a3c:	8fa50038 	lw	a1,56(sp)
    6a40:	45000014 	bc1f	6a94 <func_80A61A28+0x35c>
    6a44:	00000000 	nop
    6a48:	8fa5005c 	lw	a1,92(sp)
    6a4c:	02002025 	move	a0,s0
    6a50:	84a300b6 	lh	v1,182(a1)
    6a54:	afa6004c 	sw	a2,76(sp)
    6a58:	0c000000 	jal	0 <func_80A5B2F0>
    6a5c:	a7a30046 	sh	v1,70(sp)
    6a60:	87a30046 	lh	v1,70(sp)
    6a64:	18400003 	blez	v0,6a74 <func_80A61A28+0x33c>
    6a68:	8fa6004c 	lw	a2,76(sp)
    6a6c:	10000002 	b	6a78 <func_80A61A28+0x340>
    6a70:	24020001 	li	v0,1
    6a74:	2402ffff 	li	v0,-1
    6a78:	00025b80 	sll	t3,v0,0xe
    6a7c:	01625823 	subu	t3,t3,v0
    6a80:	006b1821 	addu	v1,v1,t3
    6a84:	00031c00 	sll	v1,v1,0x10
    6a88:	00031c03 	sra	v1,v1,0x10
    6a8c:	10000008 	b	6ab0 <func_80A61A28+0x378>
    6a90:	86040032 	lh	a0,50(s0)
    6a94:	0c000000 	jal	0 <func_80A5B2F0>
    6a98:	afa6004c 	sw	a2,76(sp)
    6a9c:	86040032 	lh	a0,50(s0)
    6aa0:	8fa6004c 	lw	a2,76(sp)
    6aa4:	00441823 	subu	v1,v0,a0
    6aa8:	00031c00 	sll	v1,v1,0x10
    6aac:	00031c03 	sra	v1,v1,0x10
    6ab0:	28610191 	slti	at,v1,401
    6ab4:	14200003 	bnez	at,6ac4 <func_80A61A28+0x38c>
    6ab8:	248c0190 	addiu	t4,a0,400
    6abc:	10000008 	b	6ae0 <func_80A61A28+0x3a8>
    6ac0:	a60c0032 	sh	t4,50(s0)
    6ac4:	2861fe70 	slti	at,v1,-400
    6ac8:	10200004 	beqz	at,6adc <func_80A61A28+0x3a4>
    6acc:	00837021 	addu	t6,a0,v1
    6ad0:	248dfe70 	addiu	t5,a0,-400
    6ad4:	10000002 	b	6ae0 <func_80A61A28+0x3a8>
    6ad8:	a60d0032 	sh	t5,50(s0)
    6adc:	a60e0032 	sh	t6,50(s0)
    6ae0:	860f0032 	lh	t7,50(s0)
    6ae4:	a60f00b6 	sh	t7,182(s0)
    6ae8:	260401ac 	addiu	a0,s0,428
    6aec:	afa40034 	sw	a0,52(sp)
    6af0:	0c000000 	jal	0 <func_80A5B2F0>
    6af4:	afa6004c 	sw	a2,76(sp)
    6af8:	8e030210 	lw	v1,528(s0)
    6afc:	8fa6004c 	lw	a2,76(sp)
    6b00:	24010001 	li	at,1
    6b04:	50600003 	beqzl	v1,6b14 <func_80A61A28+0x3dc>
    6b08:	24010006 	li	at,6
    6b0c:	14610035 	bne	v1,at,6be4 <func_80A61A28+0x4ac>
    6b10:	24010006 	li	at,6
    6b14:	10c10005 	beq	a2,at,6b2c <func_80A61A28+0x3f4>
    6b18:	24010005 	li	at,5
    6b1c:	10c10003 	beq	a2,at,6b2c <func_80A61A28+0x3f4>
    6b20:	24010004 	li	at,4
    6b24:	14c1002f 	bne	a2,at,6be4 <func_80A61A28+0x4ac>
    6b28:	00000000 	nop
    6b2c:	8e180158 	lw	t8,344(s0)
    6b30:	3c080000 	lui	t0,0x0
    6b34:	ae060210 	sw	a2,528(s0)
    6b38:	0018c880 	sll	t9,t8,0x2
    6b3c:	01194021 	addu	t0,t0,t9
    6b40:	8d080000 	lw	t0,0(t0)
    6b44:	00064880 	sll	t1,a2,0x2
    6b48:	01095021 	addu	t2,t0,t1
    6b4c:	0c000000 	jal	0 <func_80A5B2F0>
    6b50:	8d440000 	lw	a0,0(t2)
    6b54:	8e0b0158 	lw	t3,344(s0)
    6b58:	44823000 	mtc1	v0,$f6
    6b5c:	3c0d0000 	lui	t5,0x0
    6b60:	000b6080 	sll	t4,t3,0x2
    6b64:	8e0e0210 	lw	t6,528(s0)
    6b68:	01ac6821 	addu	t5,t5,t4
    6b6c:	8dad0000 	lw	t5,0(t5)
    6b70:	46803220 	cvt.s.w	$f8,$f6
    6b74:	000e7880 	sll	t7,t6,0x2
    6b78:	3c01c040 	lui	at,0xc040
    6b7c:	01afc021 	addu	t8,t5,t7
    6b80:	44815000 	mtc1	at,$f10
    6b84:	8f050000 	lw	a1,0(t8)
    6b88:	24190002 	li	t9,2
    6b8c:	afb90014 	sw	t9,20(sp)
    6b90:	e7a80010 	swc1	$f8,16(sp)
    6b94:	8fa40034 	lw	a0,52(sp)
    6b98:	3c063f80 	lui	a2,0x3f80
    6b9c:	24070000 	li	a3,0
    6ba0:	0c000000 	jal	0 <func_80A5B2F0>
    6ba4:	e7aa0018 	swc1	$f10,24(sp)
    6ba8:	8e030210 	lw	v1,528(s0)
    6bac:	24010006 	li	at,6
    6bb0:	54610006 	bnel	v1,at,6bcc <func_80A61A28+0x494>
    6bb4:	24010005 	li	at,5
    6bb8:	0c000000 	jal	0 <func_80A5B2F0>
    6bbc:	02002025 	move	a0,s0
    6bc0:	100000ed 	b	6f78 <func_80A61A28+0x840>
    6bc4:	8fbf002c 	lw	ra,44(sp)
    6bc8:	24010005 	li	at,5
    6bcc:	546100ea 	bnel	v1,at,6f78 <func_80A61A28+0x840>
    6bd0:	8fbf002c 	lw	ra,44(sp)
    6bd4:	0c000000 	jal	0 <func_80A5B2F0>
    6bd8:	02002025 	move	a0,s0
    6bdc:	100000e6 	b	6f78 <func_80A61A28+0x840>
    6be0:	8fbf002c 	lw	ra,44(sp)
    6be4:	104000be 	beqz	v0,6ee0 <func_80A61A28+0x7a8>
    6be8:	24010004 	li	at,4
    6bec:	24010006 	li	at,6
    6bf0:	14c10006 	bne	a2,at,6c0c <func_80A61A28+0x4d4>
    6bf4:	02002025 	move	a0,s0
    6bf8:	0c000000 	jal	0 <func_80A5B2F0>
    6bfc:	afa6004c 	sw	a2,76(sp)
    6c00:	8fa6004c 	lw	a2,76(sp)
    6c04:	10000008 	b	6c28 <func_80A61A28+0x4f0>
    6c08:	8e030210 	lw	v1,528(s0)
    6c0c:	24010005 	li	at,5
    6c10:	14c10005 	bne	a2,at,6c28 <func_80A61A28+0x4f0>
    6c14:	02002025 	move	a0,s0
    6c18:	0c000000 	jal	0 <func_80A5B2F0>
    6c1c:	afa6004c 	sw	a2,76(sp)
    6c20:	8fa6004c 	lw	a2,76(sp)
    6c24:	8e030210 	lw	v1,528(s0)
    6c28:	10600003 	beqz	v1,6c38 <func_80A61A28+0x500>
    6c2c:	24010001 	li	at,1
    6c30:	14610069 	bne	v1,at,6dd8 <func_80A61A28+0x6a0>
    6c34:	00000000 	nop
    6c38:	10c30022 	beq	a2,v1,6cc4 <func_80A61A28+0x58c>
    6c3c:	00000000 	nop
    6c40:	8e080158 	lw	t0,344(s0)
    6c44:	3c0a0000 	lui	t2,0x0
    6c48:	ae060210 	sw	a2,528(s0)
    6c4c:	00084880 	sll	t1,t0,0x2
    6c50:	01495021 	addu	t2,t2,t1
    6c54:	8d4a0000 	lw	t2,0(t2)
    6c58:	00065880 	sll	t3,a2,0x2
    6c5c:	014b6021 	addu	t4,t2,t3
    6c60:	0c000000 	jal	0 <func_80A5B2F0>
    6c64:	8d840000 	lw	a0,0(t4)
    6c68:	8e0e0158 	lw	t6,344(s0)
    6c6c:	44828000 	mtc1	v0,$f16
    6c70:	3c0f0000 	lui	t7,0x0
    6c74:	000e6880 	sll	t5,t6,0x2
    6c78:	8e180210 	lw	t8,528(s0)
    6c7c:	01ed7821 	addu	t7,t7,t5
    6c80:	8def0000 	lw	t7,0(t7)
    6c84:	468084a0 	cvt.s.w	$f18,$f16
    6c88:	0018c880 	sll	t9,t8,0x2
    6c8c:	3c01c040 	lui	at,0xc040
    6c90:	01f94021 	addu	t0,t7,t9
    6c94:	44812000 	mtc1	at,$f4
    6c98:	8d050000 	lw	a1,0(t0)
    6c9c:	24090002 	li	t1,2
    6ca0:	afa90014 	sw	t1,20(sp)
    6ca4:	e7b20010 	swc1	$f18,16(sp)
    6ca8:	8fa40034 	lw	a0,52(sp)
    6cac:	3c063f80 	lui	a2,0x3f80
    6cb0:	24070000 	li	a3,0
    6cb4:	0c000000 	jal	0 <func_80A5B2F0>
    6cb8:	e7a40018 	swc1	$f4,24(sp)
    6cbc:	100000ae 	b	6f78 <func_80A61A28+0x840>
    6cc0:	8fbf002c 	lw	ra,44(sp)
    6cc4:	0c000000 	jal	0 <func_80A5B2F0>
    6cc8:	00000000 	nop
    6ccc:	3c013f00 	lui	at,0x3f00
    6cd0:	44813000 	mtc1	at,$f6
    6cd4:	240c0001 	li	t4,1
    6cd8:	4600303c 	c.lt.s	$f6,$f0
    6cdc:	00000000 	nop
    6ce0:	45020008 	bc1fl	6d04 <func_80A61A28+0x5cc>
    6ce4:	8e0d0228 	lw	t5,552(s0)
    6ce8:	8e0a01f0 	lw	t2,496(s0)
    6cec:	2401efff 	li	at,-4097
    6cf0:	ae000210 	sw	zero,528(s0)
    6cf4:	01415824 	and	t3,t2,at
    6cf8:	10000016 	b	6d54 <func_80A61A28+0x61c>
    6cfc:	ae0b01f0 	sw	t3,496(s0)
    6d00:	8e0d0228 	lw	t5,552(s0)
    6d04:	ae0c0210 	sw	t4,528(s0)
    6d08:	2605021c 	addiu	a1,s0,540
    6d0c:	acad0000 	sw	t5,0(a1)
    6d10:	8e0e022c 	lw	t6,556(s0)
    6d14:	3c190000 	lui	t9,0x0
    6d18:	3c080000 	lui	t0,0x0
    6d1c:	acae0004 	sw	t6,4(a1)
    6d20:	8e0d0230 	lw	t5,560(s0)
    6d24:	25080000 	addiu	t0,t0,0
    6d28:	27270000 	addiu	a3,t9,0
    6d2c:	acad0008 	sw	t5,8(a1)
    6d30:	8e1801f0 	lw	t8,496(s0)
    6d34:	24042816 	li	a0,10262
    6d38:	24060004 	li	a2,4
    6d3c:	00187900 	sll	t7,t8,0x4
    6d40:	05e30005 	bgezl	t7,6d58 <func_80A61A28+0x620>
    6d44:	8e090158 	lw	t1,344(s0)
    6d48:	afa70010 	sw	a3,16(sp)
    6d4c:	0c000000 	jal	0 <func_80A5B2F0>
    6d50:	afa80014 	sw	t0,20(sp)
    6d54:	8e090158 	lw	t1,344(s0)
    6d58:	3c0b0000 	lui	t3,0x0
    6d5c:	8e0c0210 	lw	t4,528(s0)
    6d60:	00095080 	sll	t2,t1,0x2
    6d64:	016a5821 	addu	t3,t3,t2
    6d68:	8d6b0000 	lw	t3,0(t3)
    6d6c:	000c7080 	sll	t6,t4,0x2
    6d70:	016e6821 	addu	t5,t3,t6
    6d74:	0c000000 	jal	0 <func_80A5B2F0>
    6d78:	8da40000 	lw	a0,0(t5)
    6d7c:	8e180158 	lw	t8,344(s0)
    6d80:	44824000 	mtc1	v0,$f8
    6d84:	3c190000 	lui	t9,0x0
    6d88:	00187880 	sll	t7,t8,0x2
    6d8c:	8e080210 	lw	t0,528(s0)
    6d90:	032fc821 	addu	t9,t9,t7
    6d94:	8f390000 	lw	t9,0(t9)
    6d98:	468042a0 	cvt.s.w	$f10,$f8
    6d9c:	00084880 	sll	t1,t0,0x2
    6da0:	3c01c040 	lui	at,0xc040
    6da4:	03295021 	addu	t2,t9,t1
    6da8:	44818000 	mtc1	at,$f16
    6dac:	8d450000 	lw	a1,0(t2)
    6db0:	240c0002 	li	t4,2
    6db4:	afac0014 	sw	t4,20(sp)
    6db8:	e7aa0010 	swc1	$f10,16(sp)
    6dbc:	8fa40034 	lw	a0,52(sp)
    6dc0:	3c063f80 	lui	a2,0x3f80
    6dc4:	24070000 	li	a3,0
    6dc8:	0c000000 	jal	0 <func_80A5B2F0>
    6dcc:	e7b00018 	swc1	$f16,24(sp)
    6dd0:	10000069 	b	6f78 <func_80A61A28+0x840>
    6dd4:	8fbf002c 	lw	ra,44(sp)
    6dd8:	50c30023 	beql	a2,v1,6e68 <func_80A61A28+0x730>
    6ddc:	8e0d0158 	lw	t5,344(s0)
    6de0:	8e0b0158 	lw	t3,344(s0)
    6de4:	3c0d0000 	lui	t5,0x0
    6de8:	ae060210 	sw	a2,528(s0)
    6dec:	000b7080 	sll	t6,t3,0x2
    6df0:	01ae6821 	addu	t5,t5,t6
    6df4:	8dad0000 	lw	t5,0(t5)
    6df8:	0006c080 	sll	t8,a2,0x2
    6dfc:	01b87821 	addu	t7,t5,t8
    6e00:	0c000000 	jal	0 <func_80A5B2F0>
    6e04:	8de40000 	lw	a0,0(t7)
    6e08:	8e080158 	lw	t0,344(s0)
    6e0c:	44829000 	mtc1	v0,$f18
    6e10:	3c090000 	lui	t1,0x0
    6e14:	0008c880 	sll	t9,t0,0x2
    6e18:	8e0a0210 	lw	t2,528(s0)
    6e1c:	01394821 	addu	t1,t1,t9
    6e20:	8d290000 	lw	t1,0(t1)
    6e24:	46809120 	cvt.s.w	$f4,$f18
    6e28:	000a6080 	sll	t4,t2,0x2
    6e2c:	3c01c040 	lui	at,0xc040
    6e30:	012c5821 	addu	t3,t1,t4
    6e34:	44813000 	mtc1	at,$f6
    6e38:	8d650000 	lw	a1,0(t3)
    6e3c:	240e0002 	li	t6,2
    6e40:	afae0014 	sw	t6,20(sp)
    6e44:	e7a40010 	swc1	$f4,16(sp)
    6e48:	8fa40034 	lw	a0,52(sp)
    6e4c:	3c063f80 	lui	a2,0x3f80
    6e50:	24070000 	li	a3,0
    6e54:	0c000000 	jal	0 <func_80A5B2F0>
    6e58:	e7a60018 	swc1	$f6,24(sp)
    6e5c:	10000046 	b	6f78 <func_80A61A28+0x840>
    6e60:	8fbf002c 	lw	ra,44(sp)
    6e64:	8e0d0158 	lw	t5,344(s0)
    6e68:	3c0f0000 	lui	t7,0x0
    6e6c:	00034080 	sll	t0,v1,0x2
    6e70:	000dc080 	sll	t8,t5,0x2
    6e74:	01f87821 	addu	t7,t7,t8
    6e78:	8def0000 	lw	t7,0(t7)
    6e7c:	01e8c821 	addu	t9,t7,t0
    6e80:	0c000000 	jal	0 <func_80A5B2F0>
    6e84:	8f240000 	lw	a0,0(t9)
    6e88:	8e0a0158 	lw	t2,344(s0)
    6e8c:	44824000 	mtc1	v0,$f8
    6e90:	3c0c0000 	lui	t4,0x0
    6e94:	000a4880 	sll	t1,t2,0x2
    6e98:	8e0b0210 	lw	t3,528(s0)
    6e9c:	01896021 	addu	t4,t4,t1
    6ea0:	8d8c0000 	lw	t4,0(t4)
    6ea4:	468042a0 	cvt.s.w	$f10,$f8
    6ea8:	44800000 	mtc1	zero,$f0
    6eac:	000b7080 	sll	t6,t3,0x2
    6eb0:	018e6821 	addu	t5,t4,t6
    6eb4:	8da50000 	lw	a1,0(t5)
    6eb8:	24180002 	li	t8,2
    6ebc:	44070000 	mfc1	a3,$f0
    6ec0:	afb80014 	sw	t8,20(sp)
    6ec4:	e7aa0010 	swc1	$f10,16(sp)
    6ec8:	8fa40034 	lw	a0,52(sp)
    6ecc:	3c063f80 	lui	a2,0x3f80
    6ed0:	0c000000 	jal	0 <func_80A5B2F0>
    6ed4:	e7a00018 	swc1	$f0,24(sp)
    6ed8:	10000027 	b	6f78 <func_80A61A28+0x840>
    6edc:	8fbf002c 	lw	ra,44(sp)
    6ee0:	54610025 	bnel	v1,at,6f78 <func_80A61A28+0x840>
    6ee4:	8fbf002c 	lw	ra,44(sp)
    6ee8:	10c00003 	beqz	a2,6ef8 <func_80A61A28+0x7c0>
    6eec:	24010001 	li	at,1
    6ef0:	54c10021 	bnel	a2,at,6f78 <func_80A61A28+0x840>
    6ef4:	8fbf002c 	lw	ra,44(sp)
    6ef8:	8e0f0158 	lw	t7,344(s0)
    6efc:	3c190000 	lui	t9,0x0
    6f00:	ae060210 	sw	a2,528(s0)
    6f04:	000f4080 	sll	t0,t7,0x2
    6f08:	0328c821 	addu	t9,t9,t0
    6f0c:	8f390000 	lw	t9,0(t9)
    6f10:	00065080 	sll	t2,a2,0x2
    6f14:	032a4821 	addu	t1,t9,t2
    6f18:	0c000000 	jal	0 <func_80A5B2F0>
    6f1c:	8d240000 	lw	a0,0(t1)
    6f20:	8e0b0158 	lw	t3,344(s0)
    6f24:	44828000 	mtc1	v0,$f16
    6f28:	3c0e0000 	lui	t6,0x0
    6f2c:	000b6080 	sll	t4,t3,0x2
    6f30:	8e0d0210 	lw	t5,528(s0)
    6f34:	01cc7021 	addu	t6,t6,t4
    6f38:	8dce0000 	lw	t6,0(t6)
    6f3c:	468084a0 	cvt.s.w	$f18,$f16
    6f40:	000dc080 	sll	t8,t5,0x2
    6f44:	3c01c040 	lui	at,0xc040
    6f48:	01d87821 	addu	t7,t6,t8
    6f4c:	44812000 	mtc1	at,$f4
    6f50:	8de50000 	lw	a1,0(t7)
    6f54:	24080002 	li	t0,2
    6f58:	afa80014 	sw	t0,20(sp)
    6f5c:	e7b20010 	swc1	$f18,16(sp)
    6f60:	8fa40034 	lw	a0,52(sp)
    6f64:	3c063f80 	lui	a2,0x3f80
    6f68:	24070000 	li	a3,0
    6f6c:	0c000000 	jal	0 <func_80A5B2F0>
    6f70:	e7a40018 	swc1	$f4,24(sp)
    6f74:	8fbf002c 	lw	ra,44(sp)
    6f78:	8fb00028 	lw	s0,40(sp)
    6f7c:	27bd0060 	addiu	sp,sp,96
    6f80:	03e00008 	jr	ra
    6f84:	00000000 	nop

00006f88 <func_80A62278>:
    6f88:	27bdffc0 	addiu	sp,sp,-64
    6f8c:	afb00028 	sw	s0,40(sp)
    6f90:	00808025 	move	s0,a0
    6f94:	afbf002c 	sw	ra,44(sp)
    6f98:	26060024 	addiu	a2,s0,36
    6f9c:	00a02025 	move	a0,a1
    6fa0:	3c0541c8 	lui	a1,0x41c8
    6fa4:	0c000000 	jal	0 <func_80A5B2F0>
    6fa8:	afa60034 	sw	a2,52(sp)
    6fac:	8e0f01f0 	lw	t7,496(s0)
    6fb0:	8fa60034 	lw	a2,52(sp)
    6fb4:	8e0801cc 	lw	t0,460(s0)
    6fb8:	240e0010 	li	t6,16
    6fbc:	24190008 	li	t9,8
    6fc0:	35f80004 	ori	t8,t7,0x4
    6fc4:	ae0e014c 	sw	t6,332(s0)
    6fc8:	ae1801f0 	sw	t8,496(s0)
    6fcc:	ae190210 	sw	t9,528(s0)
    6fd0:	85090002 	lh	t1,2(t0)
    6fd4:	8ccb0000 	lw	t3,0(a2)
    6fd8:	3c010000 	lui	at,0x0
    6fdc:	44892000 	mtc1	t1,$f4
    6fe0:	c4260000 	lwc1	$f6,0(at)
    6fe4:	ae0b03b0 	sw	t3,944(s0)
    6fe8:	46802020 	cvt.s.w	$f0,$f4
    6fec:	8cca0004 	lw	t2,4(a2)
    6ff0:	920c03ac 	lbu	t4,940(s0)
    6ff4:	3c0e0000 	lui	t6,0x0
    6ff8:	ae0a03b4 	sw	t2,948(s0)
    6ffc:	c60803b4 	lwc1	$f8,948(s0)
    7000:	46060002 	mul.s	$f0,$f0,$f6
    7004:	8ccb0008 	lw	t3,8(a2)
    7008:	000c6880 	sll	t5,t4,0x2
    700c:	01ac6821 	addu	t5,t5,t4
    7010:	000d6880 	sll	t5,t5,0x2
    7014:	25ce0000 	addiu	t6,t6,0
    7018:	01ae1021 	addu	v0,t5,t6
    701c:	46004280 	add.s	$f10,$f8,$f0
    7020:	ae0b03b8 	sw	t3,952(s0)
    7024:	3c010000 	lui	at,0x0
    7028:	37190008 	ori	t9,t8,0x8
    702c:	e60a03b4 	swc1	$f10,948(s0)
    7030:	844f0010 	lh	t7,16(v0)
    7034:	c4240000 	lwc1	$f4,0(at)
    7038:	c60803b4 	lwc1	$f8,948(s0)
    703c:	448f8000 	mtc1	t7,$f16
    7040:	3c01c3b4 	lui	at,0xc3b4
    7044:	ae1901f0 	sw	t9,496(s0)
    7048:	468084a0 	cvt.s.w	$f18,$f16
    704c:	44818000 	mtc1	at,$f16
    7050:	3c0141f0 	lui	at,0x41f0
    7054:	86080032 	lh	t0,50(s0)
    7058:	8e0b0158 	lw	t3,344(s0)
    705c:	3c0d0000 	lui	t5,0x0
    7060:	46049180 	add.s	$f6,$f18,$f4
    7064:	44812000 	mtc1	at,$f4
    7068:	000b6080 	sll	t4,t3,0x2
    706c:	8e0e0210 	lw	t6,528(s0)
    7070:	46083281 	sub.s	$f10,$f6,$f8
    7074:	c608025c 	lwc1	$f8,604(s0)
    7078:	01ac6821 	addu	t5,t5,t4
    707c:	000e7880 	sll	t7,t6,0x2
    7080:	46105481 	sub.s	$f18,$f10,$f16
    7084:	44808000 	mtc1	zero,$f16
    7088:	46004281 	sub.s	$f10,$f8,$f0
    708c:	46049183 	div.s	$f6,$f18,$f4
    7090:	e60a025c 	swc1	$f10,604(s0)
    7094:	44809000 	mtc1	zero,$f18
    7098:	e60603c0 	swc1	$f6,960(s0)
    709c:	8449000a 	lh	t1,10(v0)
    70a0:	ae0003bc 	sw	zero,956(s0)
    70a4:	e610006c 	swc1	$f16,108(s0)
    70a8:	01095023 	subu	t2,t0,t1
    70ac:	a60a03c4 	sh	t2,964(s0)
    70b0:	e6120068 	swc1	$f18,104(s0)
    70b4:	8dad0000 	lw	t5,0(t5)
    70b8:	01afc021 	addu	t8,t5,t7
    70bc:	0c000000 	jal	0 <func_80A5B2F0>
    70c0:	8f040000 	lw	a0,0(t8)
    70c4:	8e190158 	lw	t9,344(s0)
    70c8:	44822000 	mtc1	v0,$f4
    70cc:	3c090000 	lui	t1,0x0
    70d0:	00194080 	sll	t0,t9,0x2
    70d4:	8e0a0210 	lw	t2,528(s0)
    70d8:	01284821 	addu	t1,t1,t0
    70dc:	8d290000 	lw	t1,0(t1)
    70e0:	468021a0 	cvt.s.w	$f6,$f4
    70e4:	000a5880 	sll	t3,t2,0x2
    70e8:	3c01c040 	lui	at,0xc040
    70ec:	012b6021 	addu	t4,t1,t3
    70f0:	44814000 	mtc1	at,$f8
    70f4:	8d850000 	lw	a1,0(t4)
    70f8:	240e0002 	li	t6,2
    70fc:	afae0014 	sw	t6,20(sp)
    7100:	e7a60010 	swc1	$f6,16(sp)
    7104:	260401ac 	addiu	a0,s0,428
    7108:	3c063fc0 	lui	a2,0x3fc0
    710c:	24070000 	li	a3,0
    7110:	0c000000 	jal	0 <func_80A5B2F0>
    7114:	e7a80018 	swc1	$f8,24(sp)
    7118:	8e0f0228 	lw	t7,552(s0)
    711c:	2605021c 	addiu	a1,s0,540
    7120:	3c070000 	lui	a3,0x0
    7124:	acaf0000 	sw	t7,0(a1)
    7128:	8e0d022c 	lw	t5,556(s0)
    712c:	3c080000 	lui	t0,0x0
    7130:	24e70000 	addiu	a3,a3,0
    7134:	acad0004 	sw	t5,4(a1)
    7138:	8e0f0230 	lw	t7,560(s0)
    713c:	25080000 	addiu	t0,t0,0
    7140:	24042805 	li	a0,10245
    7144:	acaf0008 	sw	t7,8(a1)
    7148:	8e1801f0 	lw	t8,496(s0)
    714c:	24060004 	li	a2,4
    7150:	0018c900 	sll	t9,t8,0x4
    7154:	07210004 	bgez	t9,7168 <func_80A62278+0x1e0>
    7158:	00000000 	nop
    715c:	afa70010 	sw	a3,16(sp)
    7160:	0c000000 	jal	0 <func_80A5B2F0>
    7164:	afa80014 	sw	t0,20(sp)
    7168:	3c0a0000 	lui	t2,0x0
    716c:	3c090000 	lui	t1,0x0
    7170:	25290000 	addiu	t1,t1,0
    7174:	25470000 	addiu	a3,t2,0
    7178:	afa70010 	sw	a3,16(sp)
    717c:	afa90014 	sw	t1,20(sp)
    7180:	24042818 	li	a0,10264
    7184:	260500e4 	addiu	a1,s0,228
    7188:	0c000000 	jal	0 <func_80A5B2F0>
    718c:	24060004 	li	a2,4
    7190:	44806000 	mtc1	zero,$f12
    7194:	240500aa 	li	a1,170
    7198:	2406000a 	li	a2,10
    719c:	0c000000 	jal	0 <func_80A5B2F0>
    71a0:	2407000a 	li	a3,10
    71a4:	ae000244 	sw	zero,580(s0)
    71a8:	8fbf002c 	lw	ra,44(sp)
    71ac:	8fb00028 	lw	s0,40(sp)
    71b0:	27bd0040 	addiu	sp,sp,64
    71b4:	03e00008 	jr	ra
    71b8:	00000000 	nop

000071bc <func_80A624AC>:
    71bc:	908f03ac 	lbu	t7,940(a0)
    71c0:	3c0e0000 	lui	t6,0x0
    71c4:	25ce0000 	addiu	t6,t6,0
    71c8:	15e00014 	bnez	t7,721c <func_80A624AC+0x60>
    71cc:	ac8e0244 	sw	t6,580(a0)
    71d0:	3c020200 	lui	v0,0x200
    71d4:	24422ac0 	addiu	v0,v0,10944
    71d8:	0002c100 	sll	t8,v0,0x4
    71dc:	0018cf02 	srl	t9,t8,0x1c
    71e0:	00194080 	sll	t0,t9,0x2
    71e4:	3c090000 	lui	t1,0x0
    71e8:	01284821 	addu	t1,t1,t0
    71ec:	3c0100ff 	lui	at,0xff
    71f0:	8d290000 	lw	t1,0(t1)
    71f4:	3421ffff 	ori	at,at,0xffff
    71f8:	00415024 	and	t2,v0,at
    71fc:	3c018000 	lui	at,0x8000
    7200:	012a5821 	addu	t3,t1,t2
    7204:	01616021 	addu	t4,t3,at
    7208:	acac1d68 	sw	t4,7528(a1)
    720c:	3c010000 	lui	at,0x0
    7210:	240d0001 	li	t5,1
    7214:	03e00008 	jr	ra
    7218:	a02d1414 	sb	t5,5140(at)
    721c:	3c020200 	lui	v0,0x200
    7220:	24420230 	addiu	v0,v0,560
    7224:	00027100 	sll	t6,v0,0x4
    7228:	000e7f02 	srl	t7,t6,0x1c
    722c:	000fc080 	sll	t8,t7,0x2
    7230:	3c190000 	lui	t9,0x0
    7234:	0338c821 	addu	t9,t9,t8
    7238:	3c0100ff 	lui	at,0xff
    723c:	8f390000 	lw	t9,0(t9)
    7240:	3421ffff 	ori	at,at,0xffff
    7244:	00414024 	and	t0,v0,at
    7248:	3c018000 	lui	at,0x8000
    724c:	03284821 	addu	t1,t9,t0
    7250:	01215021 	addu	t2,t1,at
    7254:	acaa1d68 	sw	t2,7528(a1)
    7258:	3c010000 	lui	at,0x0
    725c:	240b0001 	li	t3,1
    7260:	a02b1414 	sb	t3,5140(at)
    7264:	03e00008 	jr	ra
    7268:	00000000 	nop

0000726c <func_80A6255C>:
    726c:	27bdffe8 	addiu	sp,sp,-24
    7270:	afbf0014 	sw	ra,20(sp)
    7274:	afa40018 	sw	a0,24(sp)
    7278:	afa5001c 	sw	a1,28(sp)
    727c:	8c8203bc 	lw	v0,956(a0)
    7280:	3c0141f0 	lui	at,0x41f0
    7284:	44813000 	mtc1	at,$f6
    7288:	44822000 	mtc1	v0,$f4
    728c:	908f03ac 	lbu	t7,940(a0)
    7290:	3c190000 	lui	t9,0x0
    7294:	46802020 	cvt.s.w	$f0,$f4
    7298:	000fc080 	sll	t8,t7,0x2
    729c:	030fc021 	addu	t8,t8,t7
    72a0:	0018c080 	sll	t8,t8,0x2
    72a4:	27390000 	addiu	t9,t9,0
    72a8:	03191821 	addu	v1,t8,t9
    72ac:	46060383 	div.s	$f14,$f0,$f6
    72b0:	8468000e 	lh	t0,14(v1)
    72b4:	00420019 	multu	v0,v0
    72b8:	c48203b0 	lwc1	$f2,944(a0)
    72bc:	44885000 	mtc1	t0,$f10
    72c0:	c48c03b8 	lwc1	$f12,952(a0)
    72c4:	3c010000 	lui	at,0x0
    72c8:	468054a0 	cvt.s.w	$f18,$f10
    72cc:	848a03c4 	lh	t2,964(a0)
    72d0:	00802825 	move	a1,a0
    72d4:	248401ac 	addiu	a0,a0,428
    72d8:	00007012 	mflo	t6
    72dc:	448e4000 	mtc1	t6,$f8
    72e0:	46029101 	sub.s	$f4,$f18,$f2
    72e4:	46804420 	cvt.s.w	$f16,$f8
    72e8:	460e2182 	mul.s	$f6,$f4,$f14
    72ec:	46023200 	add.s	$f8,$f6,$f2
    72f0:	e488fe78 	swc1	$f8,-392(a0)
    72f4:	84690012 	lh	t1,18(v1)
    72f8:	44895000 	mtc1	t1,$f10
    72fc:	00000000 	nop
    7300:	468054a0 	cvt.s.w	$f18,$f10
    7304:	c48a0208 	lwc1	$f10,520(a0)
    7308:	460c9101 	sub.s	$f4,$f18,$f12
    730c:	c4920214 	lwc1	$f18,532(a0)
    7310:	460e2182 	mul.s	$f6,$f4,$f14
    7314:	460c3200 	add.s	$f8,$f6,$f12
    7318:	46009102 	mul.s	$f4,$f18,$f0
    731c:	e488fe80 	swc1	$f8,-384(a0)
    7320:	c4280000 	lwc1	$f8,0(at)
    7324:	3c013f80 	lui	at,0x3f80
    7328:	46104482 	mul.s	$f18,$f8,$f16
    732c:	46045180 	add.s	$f6,$f10,$f4
    7330:	44812000 	mtc1	at,$f4
    7334:	3c0141b8 	lui	at,0x41b8
    7338:	460e2201 	sub.s	$f8,$f4,$f14
    733c:	46123280 	add.s	$f10,$f6,$f18
    7340:	448a3000 	mtc1	t2,$f6
    7344:	00000000 	nop
    7348:	468034a0 	cvt.s.w	$f18,$f6
    734c:	e48afe7c 	swc1	$f10,-388(a0)
    7350:	846b000a 	lh	t3,10(v1)
    7354:	448b2000 	mtc1	t3,$f4
    7358:	46124282 	mul.s	$f10,$f8,$f18
    735c:	468021a0 	cvt.s.w	$f6,$f4
    7360:	44812000 	mtc1	at,$f4
    7364:	460a3200 	add.s	$f8,$f6,$f10
    7368:	460e2182 	mul.s	$f6,$f4,$f14
    736c:	4600448d 	trunc.w.s	$f18,$f8
    7370:	e4860018 	swc1	$f6,24(a0)
    7374:	44069000 	mfc1	a2,$f18
    7378:	00000000 	nop
    737c:	00063400 	sll	a2,a2,0x10
    7380:	00063403 	sra	a2,a2,0x10
    7384:	a486ff0a 	sh	a2,-246(a0)
    7388:	a486fe86 	sh	a2,-378(a0)
    738c:	0c000000 	jal	0 <func_80A5B2F0>
    7390:	afa50018 	sw	a1,24(sp)
    7394:	8fa50018 	lw	a1,24(sp)
    7398:	8cad03bc 	lw	t5,956(a1)
    739c:	29a1001e 	slti	at,t5,30
    73a0:	50200006 	beqzl	at,73bc <func_80A6255C+0x150>
    73a4:	8fbf0014 	lw	ra,20(sp)
    73a8:	8cae01f0 	lw	t6,496(a1)
    73ac:	3c010100 	lui	at,0x100
    73b0:	01c17825 	or	t7,t6,at
    73b4:	acaf01f0 	sw	t7,496(a1)
    73b8:	8fbf0014 	lw	ra,20(sp)
    73bc:	27bd0018 	addiu	sp,sp,24
    73c0:	03e00008 	jr	ra
    73c4:	00000000 	nop

000073c8 <func_80A626B8>:
    73c8:	3c014100 	lui	at,0x4100
    73cc:	44812000 	mtc1	at,$f4
    73d0:	27bdffd8 	addiu	sp,sp,-40
    73d4:	3c013fc0 	lui	at,0x3fc0
    73d8:	44813000 	mtc1	at,$f6
    73dc:	afbf0024 	sw	ra,36(sp)
    73e0:	afb00020 	sw	s0,32(sp)
    73e4:	00808025 	move	s0,a0
    73e8:	afa5002c 	sw	a1,44(sp)
    73ec:	248401ac 	addiu	a0,a0,428
    73f0:	e484febc 	swc1	$f4,-324(a0)
    73f4:	0c000000 	jal	0 <func_80A5B2F0>
    73f8:	e486001c 	swc1	$f6,28(a0)
    73fc:	10400028 	beqz	v0,74a0 <func_80A626B8+0xd8>
    7400:	2401fffb 	li	at,-5
    7404:	8e0e01f0 	lw	t6,496(s0)
    7408:	921803ac 	lbu	t8,940(s0)
    740c:	3c080000 	lui	t0,0x0
    7410:	01c17824 	and	t7,t6,at
    7414:	3c01c060 	lui	at,0xc060
    7418:	44814000 	mtc1	at,$f8
    741c:	0018c880 	sll	t9,t8,0x2
    7420:	0338c821 	addu	t9,t9,t8
    7424:	0019c880 	sll	t9,t9,0x2
    7428:	ae0f01f0 	sw	t7,496(s0)
    742c:	01194021 	addu	t0,t0,t9
    7430:	e608006c 	swc1	$f8,108(s0)
    7434:	85080000 	lh	t0,0(t0)
    7438:	3c0541c8 	lui	a1,0x41c8
    743c:	26060024 	addiu	a2,s0,36
    7440:	44885000 	mtc1	t0,$f10
    7444:	00000000 	nop
    7448:	46805420 	cvt.s.w	$f16,$f10
    744c:	e6100028 	swc1	$f16,40(s0)
    7450:	0c000000 	jal	0 <func_80A5B2F0>
    7454:	8fa4002c 	lw	a0,44(sp)
    7458:	02002025 	move	a0,s0
    745c:	0c000000 	jal	0 <func_80A5B2F0>
    7460:	8fa5002c 	lw	a1,44(sp)
    7464:	3c070000 	lui	a3,0x0
    7468:	3c090000 	lui	t1,0x0
    746c:	24e70000 	addiu	a3,a3,0
    7470:	25290000 	addiu	t1,t1,0
    7474:	afa90014 	sw	t1,20(sp)
    7478:	afa70010 	sw	a3,16(sp)
    747c:	24042819 	li	a0,10265
    7480:	260500e4 	addiu	a1,s0,228
    7484:	0c000000 	jal	0 <func_80A5B2F0>
    7488:	24060004 	li	a2,4
    748c:	44806000 	mtc1	zero,$f12
    7490:	240500ff 	li	a1,255
    7494:	2406000a 	li	a2,10
    7498:	0c000000 	jal	0 <func_80A5B2F0>
    749c:	24070050 	li	a3,80
    74a0:	8fbf0024 	lw	ra,36(sp)
    74a4:	8fb00020 	lw	s0,32(sp)
    74a8:	27bd0028 	addiu	sp,sp,40
    74ac:	03e00008 	jr	ra
    74b0:	00000000 	nop

000074b4 <func_80A627A4>:
    74b4:	27bdffe8 	addiu	sp,sp,-24
    74b8:	afbf0014 	sw	ra,20(sp)
    74bc:	8c8e03bc 	lw	t6,956(a0)
    74c0:	25cf0001 	addiu	t7,t6,1
    74c4:	29e1001e 	slti	at,t7,30
    74c8:	10200005 	beqz	at,74e0 <func_80A627A4+0x2c>
    74cc:	ac8f03bc 	sw	t7,956(a0)
    74d0:	0c000000 	jal	0 <func_80A5B2F0>
    74d4:	00000000 	nop
    74d8:	10000004 	b	74ec <func_80A627A4+0x38>
    74dc:	8fbf0014 	lw	ra,20(sp)
    74e0:	0c000000 	jal	0 <func_80A5B2F0>
    74e4:	00000000 	nop
    74e8:	8fbf0014 	lw	ra,20(sp)
    74ec:	27bd0018 	addiu	sp,sp,24
    74f0:	03e00008 	jr	ra
    74f4:	00000000 	nop

000074f8 <func_80A627E8>:
    74f8:	27bdffe8 	addiu	sp,sp,-24
    74fc:	afbf0014 	sw	ra,20(sp)
    7500:	afa40018 	sw	a0,24(sp)
    7504:	afa5001c 	sw	a1,28(sp)
    7508:	afa60020 	sw	a2,32(sp)
    750c:	afa70024 	sw	a3,36(sp)
    7510:	0c000000 	jal	0 <func_80A5B2F0>
    7514:	87a4001e 	lh	a0,30(sp)
    7518:	c7a40020 	lwc1	$f4,32(sp)
    751c:	8fa30018 	lw	v1,24(sp)
    7520:	8fa20028 	lw	v0,40(sp)
    7524:	46040182 	mul.s	$f6,$f0,$f4
    7528:	c4680000 	lwc1	$f8,0(v1)
    752c:	46083280 	add.s	$f10,$f6,$f8
    7530:	e44a0000 	swc1	$f10,0(v0)
    7534:	c7b20024 	lwc1	$f18,36(sp)
    7538:	c4700004 	lwc1	$f16,4(v1)
    753c:	46128100 	add.s	$f4,$f16,$f18
    7540:	e4440004 	swc1	$f4,4(v0)
    7544:	0c000000 	jal	0 <func_80A5B2F0>
    7548:	87a4001e 	lh	a0,30(sp)
    754c:	c7a60020 	lwc1	$f6,32(sp)
    7550:	8fae0018 	lw	t6,24(sp)
    7554:	8faf0028 	lw	t7,40(sp)
    7558:	46060202 	mul.s	$f8,$f0,$f6
    755c:	c5ca0008 	lwc1	$f10,8(t6)
    7560:	460a4400 	add.s	$f16,$f8,$f10
    7564:	e5f00008 	swc1	$f16,8(t7)
    7568:	8fbf0014 	lw	ra,20(sp)
    756c:	27bd0018 	addiu	sp,sp,24
    7570:	03e00008 	jr	ra
    7574:	00000000 	nop

00007578 <func_80A62868>:
    7578:	27bdffc0 	addiu	sp,sp,-64
    757c:	afbf0024 	sw	ra,36(sp)
    7580:	afb00020 	sw	s0,32(sp)
    7584:	afa40040 	sw	a0,64(sp)
    7588:	afa50044 	sw	a1,68(sp)
    758c:	afa60048 	sw	a2,72(sp)
    7590:	afa7004c 	sw	a3,76(sp)
    7594:	ace00000 	sw	zero,0(a3)
    7598:	8fb00044 	lw	s0,68(sp)
    759c:	8fa70048 	lw	a3,72(sp)
    75a0:	8fa5004c 	lw	a1,76(sp)
    75a4:	261007c0 	addiu	s0,s0,1984
    75a8:	02002025 	move	a0,s0
    75ac:	0c000000 	jal	0 <func_80A5B2F0>
    75b0:	27a6003c 	addiu	a2,sp,60
    75b4:	3c01c6fa 	lui	at,0xc6fa
    75b8:	44812000 	mtc1	at,$f4
    75bc:	8faf0050 	lw	t7,80(sp)
    75c0:	8fa20048 	lw	v0,72(sp)
    75c4:	46040032 	c.eq.s	$f0,$f4
    75c8:	e5e00000 	swc1	$f0,0(t7)
    75cc:	8fa40044 	lw	a0,68(sp)
    75d0:	02002825 	move	a1,s0
    75d4:	45000003 	bc1f	75e4 <func_80A62868+0x6c>
    75d8:	27b80038 	addiu	t8,sp,56
    75dc:	10000030 	b	76a0 <func_80A62868+0x128>
    75e0:	24020001 	li	v0,1
    75e4:	8c460000 	lw	a2,0(v0)
    75e8:	8c470008 	lw	a3,8(v0)
    75ec:	27b90034 	addiu	t9,sp,52
    75f0:	afb90014 	sw	t9,20(sp)
    75f4:	0c000000 	jal	0 <func_80A5B2F0>
    75f8:	afb80010 	sw	t8,16(sp)
    75fc:	24010001 	li	at,1
    7600:	14410009 	bne	v0,at,7628 <func_80A62868+0xb0>
    7604:	8fa80050 	lw	t0,80(sp)
    7608:	c5060000 	lwc1	$f6,0(t0)
    760c:	c7a80038 	lwc1	$f8,56(sp)
    7610:	4608303c 	c.lt.s	$f6,$f8
    7614:	00000000 	nop
    7618:	45020004 	bc1fl	762c <func_80A62868+0xb4>
    761c:	8fa9004c 	lw	t1,76(sp)
    7620:	1000001f 	b	76a0 <func_80A62868+0x128>
    7624:	24020002 	li	v0,2
    7628:	8fa9004c 	lw	t1,76(sp)
    762c:	3c010000 	lui	at,0x0
    7630:	c4320000 	lwc1	$f18,0(at)
    7634:	8d250000 	lw	a1,0(t1)
    7638:	3c010000 	lui	at,0x0
    763c:	c4260000 	lwc1	$f6,0(at)
    7640:	84aa000a 	lh	t2,10(a1)
    7644:	02002025 	move	a0,s0
    7648:	448a5000 	mtc1	t2,$f10
    764c:	00000000 	nop
    7650:	46805420 	cvt.s.w	$f16,$f10
    7654:	46128102 	mul.s	$f4,$f16,$f18
    7658:	4606203c 	c.lt.s	$f4,$f6
    765c:	00000000 	nop
    7660:	4501000c 	bc1t	7694 <func_80A62868+0x11c>
    7664:	00000000 	nop
    7668:	0c000000 	jal	0 <func_80A5B2F0>
    766c:	8fa6003c 	lw	a2,60(sp)
    7670:	14400008 	bnez	v0,7694 <func_80A62868+0x11c>
    7674:	02002025 	move	a0,s0
    7678:	8fab004c 	lw	t3,76(sp)
    767c:	8fa6003c 	lw	a2,60(sp)
    7680:	0c000000 	jal	0 <func_80A5B2F0>
    7684:	8d650000 	lw	a1,0(t3)
    7688:	24010007 	li	at,7
    768c:	54410004 	bnel	v0,at,76a0 <func_80A62868+0x128>
    7690:	00001025 	move	v0,zero
    7694:	10000002 	b	76a0 <func_80A62868+0x128>
    7698:	24020003 	li	v0,3
    769c:	00001025 	move	v0,zero
    76a0:	8fbf0024 	lw	ra,36(sp)
    76a4:	8fb00020 	lw	s0,32(sp)
    76a8:	27bd0040 	addiu	sp,sp,64
    76ac:	03e00008 	jr	ra
    76b0:	00000000 	nop

000076b4 <func_80A629A4>:
    76b4:	27bdffe8 	addiu	sp,sp,-24
    76b8:	afbf0014 	sw	ra,20(sp)
    76bc:	afa70024 	sw	a3,36(sp)
    76c0:	8c8e014c 	lw	t6,332(a0)
    76c4:	24010011 	li	at,17
    76c8:	51c10041 	beql	t6,at,77d0 <func_80A629A4+0x11c>
    76cc:	8fbf0014 	lw	ra,20(sp)
    76d0:	afa40018 	sw	a0,24(sp)
    76d4:	0c000000 	jal	0 <func_80A5B2F0>
    76d8:	afa60020 	sw	a2,32(sp)
    76dc:	8fa40018 	lw	a0,24(sp)
    76e0:	1440003a 	bnez	v0,77cc <func_80A629A4+0x118>
    76e4:	8fa60020 	lw	a2,32(sp)
    76e8:	8c9801f4 	lw	t8,500(a0)
    76ec:	8c9901f0 	lw	t9,496(a0)
    76f0:	84820200 	lh	v0,512(a0)
    76f4:	8c89020c 	lw	t1,524(a0)
    76f8:	ac980024 	sw	t8,36(a0)
    76fc:	8c9801fc 	lw	t8,508(a0)
    7700:	8c8f01f8 	lw	t7,504(a0)
    7704:	37284000 	ori	t0,t9,0x4000
    7708:	ac8801f0 	sw	t0,496(a0)
    770c:	a48200b6 	sh	v0,182(a0)
    7710:	a4820032 	sh	v0,50(a0)
    7714:	ac98002c 	sw	t8,44(a0)
    7718:	15200007 	bnez	t1,7738 <func_80A629A4+0x84>
    771c:	ac8f0028 	sw	t7,40(a0)
    7720:	8c8a0210 	lw	t2,528(a0)
    7724:	24010003 	li	at,3
    7728:	51410029 	beql	t2,at,77d0 <func_80A629A4+0x11c>
    772c:	8fbf0014 	lw	ra,20(sp)
    7730:	10000027 	b	77d0 <func_80A629A4+0x11c>
    7734:	8fbf0014 	lw	ra,20(sp)
    7738:	8c8b014c 	lw	t3,332(a0)
    773c:	2401000b 	li	at,11
    7740:	51610023 	beql	t3,at,77d0 <func_80A629A4+0x11c>
    7744:	8fbf0014 	lw	ra,20(sp)
    7748:	8c8201f0 	lw	v0,496(a0)
    774c:	2401fffb 	li	at,-5
    7750:	304c0004 	andi	t4,v0,0x4
    7754:	11800007 	beqz	t4,7774 <func_80A629A4+0xc0>
    7758:	00416824 	and	t5,v0,at
    775c:	3c01c060 	lui	at,0xc060
    7760:	44812000 	mtc1	at,$f4
    7764:	c4860080 	lwc1	$f6,128(a0)
    7768:	ac8d01f0 	sw	t5,496(a0)
    776c:	e484006c 	swc1	$f4,108(a0)
    7770:	e4860028 	swc1	$f6,40(a0)
    7774:	24020001 	li	v0,1
    7778:	10c20003 	beq	a2,v0,7788 <func_80A629A4+0xd4>
    777c:	24010004 	li	at,4
    7780:	54c10006 	bnel	a2,at,779c <func_80A629A4+0xe8>
    7784:	24010002 	li	at,2
    7788:	8c8e01f0 	lw	t6,496(a0)
    778c:	35cf0010 	ori	t7,t6,0x10
    7790:	10000009 	b	77b8 <func_80A629A4+0x104>
    7794:	ac8f01f0 	sw	t7,496(a0)
    7798:	24010002 	li	at,2
    779c:	10c10003 	beq	a2,at,77ac <func_80A629A4+0xf8>
    77a0:	24010005 	li	at,5
    77a4:	54c10005 	bnel	a2,at,77bc <func_80A629A4+0x108>
    77a8:	8fa80024 	lw	t0,36(sp)
    77ac:	8c9801f0 	lw	t8,496(a0)
    77b0:	37190020 	ori	t9,t8,0x20
    77b4:	ac9901f0 	sw	t9,496(a0)
    77b8:	8fa80024 	lw	t0,36(sp)
    77bc:	55020004 	bnel	t0,v0,77d0 <func_80A629A4+0x11c>
    77c0:	8fbf0014 	lw	ra,20(sp)
    77c4:	0c000000 	jal	0 <func_80A5B2F0>
    77c8:	00000000 	nop
    77cc:	8fbf0014 	lw	ra,20(sp)
    77d0:	27bd0018 	addiu	sp,sp,24
    77d4:	03e00008 	jr	ra
    77d8:	00000000 	nop

000077dc <func_80A62ACC>:
    77dc:	27bdff78 	addiu	sp,sp,-136
    77e0:	afbf0024 	sw	ra,36(sp)
    77e4:	afb00020 	sw	s0,32(sp)
    77e8:	afa5008c 	sw	a1,140(sp)
    77ec:	3c014100 	lui	at,0x4100
    77f0:	44812000 	mtc1	at,$f4
    77f4:	c4860068 	lwc1	$f6,104(a0)
    77f8:	00808025 	move	s0,a0
    77fc:	00007025 	move	t6,zero
    7800:	4606203c 	c.lt.s	$f4,$f6
    7804:	27b8003c 	addiu	t8,sp,60
    7808:	27b90038 	addiu	t9,sp,56
    780c:	45020003 	bc1fl	781c <func_80A62ACC+0x40>
    7810:	8fa4008c 	lw	a0,140(sp)
    7814:	240e0001 	li	t6,1
    7818:	8fa4008c 	lw	a0,140(sp)
    781c:	afae0044 	sw	t6,68(sp)
    7820:	8e07002c 	lw	a3,44(s0)
    7824:	8e060024 	lw	a2,36(s0)
    7828:	248507c0 	addiu	a1,a0,1984
    782c:	afa50030 	sw	a1,48(sp)
    7830:	afb90014 	sw	t9,20(sp)
    7834:	0c000000 	jal	0 <func_80A5B2F0>
    7838:	afb80010 	sw	t8,16(sp)
    783c:	24010001 	li	at,1
    7840:	1441000c 	bne	v0,at,7874 <func_80A62ACC+0x98>
    7844:	c7aa003c 	lwc1	$f10,60(sp)
    7848:	c6080080 	lwc1	$f8,128(s0)
    784c:	02002025 	move	a0,s0
    7850:	8fa5008c 	lw	a1,140(sp)
    7854:	460a403c 	c.lt.s	$f8,$f10
    7858:	24060001 	li	a2,1
    785c:	45020006 	bc1fl	7878 <func_80A62ACC+0x9c>
    7860:	26040024 	addiu	a0,s0,36
    7864:	0c000000 	jal	0 <func_80A5B2F0>
    7868:	8fa70044 	lw	a3,68(sp)
    786c:	10000137 	b	7d4c <func_80A62ACC+0x570>
    7870:	8fbf0024 	lw	ra,36(sp)
    7874:	26040024 	addiu	a0,s0,36
    7878:	860500b6 	lh	a1,182(s0)
    787c:	27a8006c 	addiu	t0,sp,108
    7880:	afa80010 	sw	t0,16(sp)
    7884:	afa4002c 	sw	a0,44(sp)
    7888:	3c0641f0 	lui	a2,0x41f0
    788c:	0c000000 	jal	0 <func_80A5B2F0>
    7890:	3c074270 	lui	a3,0x4270
    7894:	26090248 	addiu	t1,s0,584
    7898:	afa90010 	sw	t1,16(sp)
    789c:	02002025 	move	a0,s0
    78a0:	8fa5008c 	lw	a1,140(sp)
    78a4:	27a6006c 	addiu	a2,sp,108
    78a8:	0c000000 	jal	0 <func_80A5B2F0>
    78ac:	27a70080 	addiu	a3,sp,128
    78b0:	24010001 	li	at,1
    78b4:	14410008 	bne	v0,at,78d8 <func_80A62ACC+0xfc>
    78b8:	02002025 	move	a0,s0
    78bc:	a60000b4 	sh	zero,180(s0)
    78c0:	8fa70044 	lw	a3,68(sp)
    78c4:	8fa5008c 	lw	a1,140(sp)
    78c8:	0c000000 	jal	0 <func_80A5B2F0>
    78cc:	24060004 	li	a2,4
    78d0:	1000011e 	b	7d4c <func_80A62ACC+0x570>
    78d4:	8fbf0024 	lw	ra,36(sp)
    78d8:	24010002 	li	at,2
    78dc:	14410007 	bne	v0,at,78fc <func_80A62ACC+0x120>
    78e0:	02002025 	move	a0,s0
    78e4:	8fa5008c 	lw	a1,140(sp)
    78e8:	24060004 	li	a2,4
    78ec:	0c000000 	jal	0 <func_80A5B2F0>
    78f0:	8fa70044 	lw	a3,68(sp)
    78f4:	10000115 	b	7d4c <func_80A62ACC+0x570>
    78f8:	8fbf0024 	lw	ra,36(sp)
    78fc:	24010003 	li	at,3
    7900:	14410008 	bne	v0,at,7924 <func_80A62ACC+0x148>
    7904:	8fa4002c 	lw	a0,44(sp)
    7908:	02002025 	move	a0,s0
    790c:	8fa5008c 	lw	a1,140(sp)
    7910:	24060004 	li	a2,4
    7914:	0c000000 	jal	0 <func_80A5B2F0>
    7918:	8fa70044 	lw	a3,68(sp)
    791c:	1000010b 	b	7d4c <func_80A62ACC+0x570>
    7920:	8fbf0024 	lw	ra,36(sp)
    7924:	860500b6 	lh	a1,182(s0)
    7928:	27aa0060 	addiu	t2,sp,96
    792c:	afaa0010 	sw	t2,16(sp)
    7930:	3c06c1f0 	lui	a2,0xc1f0
    7934:	0c000000 	jal	0 <func_80A5B2F0>
    7938:	3c074270 	lui	a3,0x4270
    793c:	260b024c 	addiu	t3,s0,588
    7940:	afab0010 	sw	t3,16(sp)
    7944:	02002025 	move	a0,s0
    7948:	8fa5008c 	lw	a1,140(sp)
    794c:	27a60060 	addiu	a2,sp,96
    7950:	0c000000 	jal	0 <func_80A5B2F0>
    7954:	27a7007c 	addiu	a3,sp,124
    7958:	24010001 	li	at,1
    795c:	14410008 	bne	v0,at,7980 <func_80A62ACC+0x1a4>
    7960:	02002025 	move	a0,s0
    7964:	a60000b4 	sh	zero,180(s0)
    7968:	8fa70044 	lw	a3,68(sp)
    796c:	8fa5008c 	lw	a1,140(sp)
    7970:	0c000000 	jal	0 <func_80A5B2F0>
    7974:	24060005 	li	a2,5
    7978:	100000f4 	b	7d4c <func_80A62ACC+0x570>
    797c:	8fbf0024 	lw	ra,36(sp)
    7980:	24010002 	li	at,2
    7984:	14410007 	bne	v0,at,79a4 <func_80A62ACC+0x1c8>
    7988:	02002025 	move	a0,s0
    798c:	8fa5008c 	lw	a1,140(sp)
    7990:	24060005 	li	a2,5
    7994:	0c000000 	jal	0 <func_80A5B2F0>
    7998:	8fa70044 	lw	a3,68(sp)
    799c:	100000eb 	b	7d4c <func_80A62ACC+0x570>
    79a0:	8fbf0024 	lw	ra,36(sp)
    79a4:	24010003 	li	at,3
    79a8:	14410007 	bne	v0,at,79c8 <func_80A62ACC+0x1ec>
    79ac:	02002025 	move	a0,s0
    79b0:	8fa5008c 	lw	a1,140(sp)
    79b4:	24060005 	li	a2,5
    79b8:	0c000000 	jal	0 <func_80A5B2F0>
    79bc:	8fa70044 	lw	a3,68(sp)
    79c0:	100000e2 	b	7d4c <func_80A62ACC+0x570>
    79c4:	8fbf0024 	lw	ra,36(sp)
    79c8:	c610024c 	lwc1	$f16,588(s0)
    79cc:	c6120248 	lwc1	$f18,584(s0)
    79d0:	3c014270 	lui	at,0x4270
    79d4:	44817000 	mtc1	at,$f14
    79d8:	0c000000 	jal	0 <func_80A5B2F0>
    79dc:	46128301 	sub.s	$f12,$f16,$f18
    79e0:	3c010000 	lui	at,0x0
    79e4:	c4240000 	lwc1	$f4,0(at)
    79e8:	3c010000 	lui	at,0x0
    79ec:	27a30054 	addiu	v1,sp,84
    79f0:	46040182 	mul.s	$f6,$f0,$f4
    79f4:	27b9006c 	addiu	t9,sp,108
    79f8:	4600320d 	trunc.w.s	$f8,$f6
    79fc:	440d4000 	mfc1	t5,$f8
    7a00:	00000000 	nop
    7a04:	a7ad007a 	sh	t5,122(sp)
    7a08:	8e050078 	lw	a1,120(s0)
    7a0c:	50a000cf 	beqzl	a1,7d4c <func_80A62ACC+0x570>
    7a10:	8fbf0024 	lw	ra,36(sp)
    7a14:	8f290000 	lw	t1,0(t9)
    7a18:	c4200000 	lwc1	$f0,0(at)
    7a1c:	84ae0008 	lh	t6,8(a1)
    7a20:	84af000a 	lh	t7,10(a1)
    7a24:	84b8000c 	lh	t8,12(a1)
    7a28:	ac690000 	sw	t1,0(v1)
    7a2c:	8f280004 	lw	t0,4(t9)
    7a30:	448e5000 	mtc1	t6,$f10
    7a34:	448f9000 	mtc1	t7,$f18
    7a38:	ac680004 	sw	t0,4(v1)
    7a3c:	8f290008 	lw	t1,8(t9)
    7a40:	46805420 	cvt.s.w	$f16,$f10
    7a44:	44983000 	mtc1	t8,$f6
    7a48:	ac690008 	sw	t1,8(v1)
    7a4c:	c60a0248 	lwc1	$f10,584(s0)
    7a50:	46809120 	cvt.s.w	$f4,$f18
    7a54:	e7aa0058 	swc1	$f10,88(sp)
    7a58:	8e0a0078 	lw	t2,120(s0)
    7a5c:	46008302 	mul.s	$f12,$f16,$f0
    7a60:	854b000e 	lh	t3,14(t2)
    7a64:	46002382 	mul.s	$f14,$f4,$f0
    7a68:	afa30010 	sw	v1,16(sp)
    7a6c:	448b8000 	mtc1	t3,$f16
    7a70:	e7ac0050 	swc1	$f12,80(sp)
    7a74:	46803220 	cvt.s.w	$f8,$f6
    7a78:	e7ae004c 	swc1	$f14,76(sp)
    7a7c:	46808420 	cvt.s.w	$f16,$f16
    7a80:	46004082 	mul.s	$f2,$f8,$f0
    7a84:	44078000 	mfc1	a3,$f16
    7a88:	44061000 	mfc1	a2,$f2
    7a8c:	0c000000 	jal	0 <func_80A5B2F0>
    7a90:	e7a20048 	swc1	$f2,72(sp)
    7a94:	8fac0080 	lw	t4,128(sp)
    7a98:	8e0d0078 	lw	t5,120(s0)
    7a9c:	27a30054 	addiu	v1,sp,84
    7aa0:	c7a20048 	lwc1	$f2,72(sp)
    7aa4:	118d0021 	beq	t4,t5,7b2c <func_80A62ACC+0x350>
    7aa8:	c7ac0050 	lwc1	$f12,80(sp)
    7aac:	c6120068 	lwc1	$f18,104(s0)
    7ab0:	44802000 	mtc1	zero,$f4
    7ab4:	00000000 	nop
    7ab8:	4612203e 	c.le.s	$f4,$f18
    7abc:	00000000 	nop
    7ac0:	4502001b 	bc1fl	7b30 <func_80A62ACC+0x354>
    7ac4:	27ae0060 	addiu	t6,sp,96
    7ac8:	8e0201f0 	lw	v0,496(s0)
    7acc:	3c01c220 	lui	at,0xc220
    7ad0:	30420004 	andi	v0,v0,0x4
    7ad4:	14400007 	bnez	v0,7af4 <func_80A62ACC+0x318>
    7ad8:	00000000 	nop
    7adc:	44813000 	mtc1	at,$f6
    7ae0:	00000000 	nop
    7ae4:	4606003c 	c.lt.s	$f0,$f6
    7ae8:	00000000 	nop
    7aec:	45030009 	bc1tl	7b14 <func_80A62ACC+0x338>
    7af0:	02002025 	move	a0,s0
    7af4:	1040000d 	beqz	v0,7b2c <func_80A62ACC+0x350>
    7af8:	3c01c348 	lui	at,0xc348
    7afc:	44814000 	mtc1	at,$f8
    7b00:	00000000 	nop
    7b04:	4608003c 	c.lt.s	$f0,$f8
    7b08:	00000000 	nop
    7b0c:	45000007 	bc1f	7b2c <func_80A62ACC+0x350>
    7b10:	02002025 	move	a0,s0
    7b14:	8fa5008c 	lw	a1,140(sp)
    7b18:	24060004 	li	a2,4
    7b1c:	0c000000 	jal	0 <func_80A5B2F0>
    7b20:	8fa70044 	lw	a3,68(sp)
    7b24:	10000089 	b	7d4c <func_80A62ACC+0x570>
    7b28:	8fbf0024 	lw	ra,36(sp)
    7b2c:	27ae0060 	addiu	t6,sp,96
    7b30:	8dd80000 	lw	t8,0(t6)
    7b34:	44061000 	mfc1	a2,$f2
    7b38:	ac780000 	sw	t8,0(v1)
    7b3c:	8dcf0004 	lw	t7,4(t6)
    7b40:	ac6f0004 	sw	t7,4(v1)
    7b44:	8dd80008 	lw	t8,8(t6)
    7b48:	ac780008 	sw	t8,8(v1)
    7b4c:	c60a024c 	lwc1	$f10,588(s0)
    7b50:	c7ae004c 	lwc1	$f14,76(sp)
    7b54:	e7aa0058 	swc1	$f10,88(sp)
    7b58:	8e190078 	lw	t9,120(s0)
    7b5c:	8728000e 	lh	t0,14(t9)
    7b60:	afa30010 	sw	v1,16(sp)
    7b64:	44888000 	mtc1	t0,$f16
    7b68:	00000000 	nop
    7b6c:	46808420 	cvt.s.w	$f16,$f16
    7b70:	44078000 	mfc1	a3,$f16
    7b74:	0c000000 	jal	0 <func_80A5B2F0>
    7b78:	00000000 	nop
    7b7c:	8e050078 	lw	a1,120(s0)
    7b80:	8fa9007c 	lw	t1,124(sp)
    7b84:	51250013 	beql	t1,a1,7bd4 <func_80A62ACC+0x3f8>
    7b88:	8e0c01f0 	lw	t4,496(s0)
    7b8c:	44809000 	mtc1	zero,$f18
    7b90:	c6040068 	lwc1	$f4,104(s0)
    7b94:	4612203e 	c.le.s	$f4,$f18
    7b98:	00000000 	nop
    7b9c:	4502000d 	bc1fl	7bd4 <func_80A62ACC+0x3f8>
    7ba0:	8e0c01f0 	lw	t4,496(s0)
    7ba4:	8e0a01f0 	lw	t2,496(s0)
    7ba8:	3c01c220 	lui	at,0xc220
    7bac:	314b0004 	andi	t3,t2,0x4
    7bb0:	55600008 	bnezl	t3,7bd4 <func_80A62ACC+0x3f8>
    7bb4:	8e0c01f0 	lw	t4,496(s0)
    7bb8:	44813000 	mtc1	at,$f6
    7bbc:	00000000 	nop
    7bc0:	4606003c 	c.lt.s	$f0,$f6
    7bc4:	00000000 	nop
    7bc8:	4503000d 	bc1tl	7c00 <func_80A62ACC+0x424>
    7bcc:	02002025 	move	a0,s0
    7bd0:	8e0c01f0 	lw	t4,496(s0)
    7bd4:	3c01c348 	lui	at,0xc348
    7bd8:	c7aa004c 	lwc1	$f10,76(sp)
    7bdc:	318d0004 	andi	t5,t4,0x4
    7be0:	11a0000d 	beqz	t5,7c18 <func_80A62ACC+0x43c>
    7be4:	00000000 	nop
    7be8:	44814000 	mtc1	at,$f8
    7bec:	00000000 	nop
    7bf0:	4608003c 	c.lt.s	$f0,$f8
    7bf4:	00000000 	nop
    7bf8:	45000007 	bc1f	7c18 <func_80A62ACC+0x43c>
    7bfc:	02002025 	move	a0,s0
    7c00:	8fa5008c 	lw	a1,140(sp)
    7c04:	24060005 	li	a2,5
    7c08:	0c000000 	jal	0 <func_80A5B2F0>
    7c0c:	8fa70044 	lw	a3,68(sp)
    7c10:	1000004e 	b	7d4c <func_80A62ACC+0x570>
    7c14:	8fbf0024 	lw	ra,36(sp)
    7c18:	3c010000 	lui	at,0x0
    7c1c:	c4300000 	lwc1	$f16,0(at)
    7c20:	8fa40030 	lw	a0,48(sp)
    7c24:	4610503c 	c.lt.s	$f10,$f16
    7c28:	00000000 	nop
    7c2c:	4503000c 	bc1tl	7c60 <func_80A62ACC+0x484>
    7c30:	c6120068 	lwc1	$f18,104(s0)
    7c34:	0c000000 	jal	0 <func_80A5B2F0>
    7c38:	9206007d 	lbu	a2,125(s0)
    7c3c:	14400007 	bnez	v0,7c5c <func_80A62ACC+0x480>
    7c40:	8fa40030 	lw	a0,48(sp)
    7c44:	8e050078 	lw	a1,120(s0)
    7c48:	0c000000 	jal	0 <func_80A5B2F0>
    7c4c:	9206007d 	lbu	a2,125(s0)
    7c50:	24010007 	li	at,7
    7c54:	54410015 	bnel	v0,at,7cac <func_80A62ACC+0x4d0>
    7c58:	8e0e01f0 	lw	t6,496(s0)
    7c5c:	c6120068 	lwc1	$f18,104(s0)
    7c60:	44802000 	mtc1	zero,$f4
    7c64:	8fa70044 	lw	a3,68(sp)
    7c68:	02002025 	move	a0,s0
    7c6c:	4612203e 	c.le.s	$f4,$f18
    7c70:	8fa5008c 	lw	a1,140(sp)
    7c74:	24060005 	li	a2,5
    7c78:	45000007 	bc1f	7c98 <func_80A62ACC+0x4bc>
    7c7c:	00000000 	nop
    7c80:	02002025 	move	a0,s0
    7c84:	8fa5008c 	lw	a1,140(sp)
    7c88:	0c000000 	jal	0 <func_80A5B2F0>
    7c8c:	24060004 	li	a2,4
    7c90:	1000002e 	b	7d4c <func_80A62ACC+0x570>
    7c94:	8fbf0024 	lw	ra,36(sp)
    7c98:	0c000000 	jal	0 <func_80A5B2F0>
    7c9c:	8fa70044 	lw	a3,68(sp)
    7ca0:	1000002a 	b	7d4c <func_80A62ACC+0x570>
    7ca4:	8fbf0024 	lw	ra,36(sp)
    7ca8:	8e0e01f0 	lw	t6,496(s0)
    7cac:	3c014080 	lui	at,0x4080
    7cb0:	31cf0004 	andi	t7,t6,0x4
    7cb4:	51e00004 	beqzl	t7,7cc8 <func_80A62ACC+0x4ec>
    7cb8:	c6020080 	lwc1	$f2,128(s0)
    7cbc:	10000022 	b	7d48 <func_80A62ACC+0x56c>
    7cc0:	a60000b4 	sh	zero,180(s0)
    7cc4:	c6020080 	lwc1	$f2,128(s0)
    7cc8:	44813000 	mtc1	at,$f6
    7ccc:	c60a0028 	lwc1	$f10,40(s0)
    7cd0:	87a2007a 	lh	v0,122(sp)
    7cd4:	46061200 	add.s	$f8,$f2,$f6
    7cd8:	460a403c 	c.lt.s	$f8,$f10
    7cdc:	00000000 	nop
    7ce0:	45020004 	bc1fl	7cf4 <func_80A62ACC+0x518>
    7ce4:	44828000 	mtc1	v0,$f16
    7ce8:	10000017 	b	7d48 <func_80A62ACC+0x56c>
    7cec:	a60000b4 	sh	zero,180(s0)
    7cf0:	44828000 	mtc1	v0,$f16
    7cf4:	3c010000 	lui	at,0x0
    7cf8:	c4320000 	lwc1	$f18,0(at)
    7cfc:	46808020 	cvt.s.w	$f0,$f16
    7d00:	46000005 	abs.s	$f0,$f0
    7d04:	4600903c 	c.lt.s	$f18,$f0
    7d08:	00000000 	nop
    7d0c:	4503000f 	bc1tl	7d4c <func_80A62ACC+0x570>
    7d10:	8fbf0024 	lw	ra,36(sp)
    7d14:	c6000248 	lwc1	$f0,584(s0)
    7d18:	c604024c 	lwc1	$f4,588(s0)
    7d1c:	3c0141a0 	lui	at,0x41a0
    7d20:	44814000 	mtc1	at,$f8
    7d24:	46002181 	sub.s	$f6,$f4,$f0
    7d28:	3c014234 	lui	at,0x4234
    7d2c:	44818000 	mtc1	at,$f16
    7d30:	a60200b4 	sh	v0,180(s0)
    7d34:	46083282 	mul.s	$f10,$f6,$f8
    7d38:	46105483 	div.s	$f18,$f10,$f16
    7d3c:	46120100 	add.s	$f4,$f0,$f18
    7d40:	46022181 	sub.s	$f6,$f4,$f2
    7d44:	e60600bc 	swc1	$f6,188(s0)
    7d48:	8fbf0024 	lw	ra,36(sp)
    7d4c:	8fb00020 	lw	s0,32(sp)
    7d50:	27bd0088 	addiu	sp,sp,136
    7d54:	03e00008 	jr	ra
    7d58:	00000000 	nop

00007d5c <func_80A6304C>:
    7d5c:	27bdffd0 	addiu	sp,sp,-48
    7d60:	afbf001c 	sw	ra,28(sp)
    7d64:	afb10018 	sw	s1,24(sp)
    7d68:	afb00014 	sw	s0,20(sp)
    7d6c:	8cae1c44 	lw	t6,7236(a1)
    7d70:	00808025 	move	s0,a0
    7d74:	00a08825 	move	s1,a1
    7d78:	0c000000 	jal	0 <func_80A5B2F0>
    7d7c:	afae0020 	sw	t6,32(sp)
    7d80:	1040000c 	beqz	v0,7db4 <func_80A6304C+0x58>
    7d84:	00403025 	move	a2,v0
    7d88:	8e0f01f0 	lw	t7,496(s0)
    7d8c:	8fb90020 	lw	t9,32(sp)
    7d90:	000fc3c0 	sll	t8,t7,0xf
    7d94:	07020008 	bltzl	t8,7db8 <func_80A6304C+0x5c>
    7d98:	8e09020c 	lw	t1,524(s0)
    7d9c:	8f280440 	lw	t0,1088(t9)
    7da0:	02202025 	move	a0,s1
    7da4:	55000004 	bnezl	t0,7db8 <func_80A6304C+0x5c>
    7da8:	8e09020c 	lw	t1,524(s0)
    7dac:	0c000000 	jal	0 <func_80A5B2F0>
    7db0:	02002825 	move	a1,s0
    7db4:	8e09020c 	lw	t1,524(s0)
    7db8:	02202025 	move	a0,s1
    7dbc:	5520000e 	bnezl	t1,7df8 <func_80A6304C+0x9c>
    7dc0:	8e0a020c 	lw	t2,524(s0)
    7dc4:	0c000000 	jal	0 <func_80A5B2F0>
    7dc8:	02002825 	move	a1,s0
    7dcc:	24030001 	li	v1,1
    7dd0:	14430008 	bne	v0,v1,7df4 <func_80A6304C+0x98>
    7dd4:	02002025 	move	a0,s0
    7dd8:	24020037 	li	v0,55
    7ddc:	ae020150 	sw	v0,336(s0)
    7de0:	ae020154 	sw	v0,340(s0)
    7de4:	0c000000 	jal	0 <func_80A5B2F0>
    7de8:	ae03020c 	sw	v1,524(s0)
    7dec:	10000016 	b	7e48 <func_80A6304C+0xec>
    7df0:	8fbf001c 	lw	ra,28(sp)
    7df4:	8e0a020c 	lw	t2,524(s0)
    7df8:	24030001 	li	v1,1
    7dfc:	02202025 	move	a0,s1
    7e00:	546a0011 	bnel	v1,t2,7e48 <func_80A6304C+0xec>
    7e04:	8fbf001c 	lw	ra,28(sp)
    7e08:	0c000000 	jal	0 <func_80A5B2F0>
    7e0c:	02002825 	move	a1,s0
    7e10:	24030001 	li	v1,1
    7e14:	1443000b 	bne	v0,v1,7e44 <func_80A6304C+0xe8>
    7e18:	3c01fffe 	lui	at,0xfffe
    7e1c:	8e0b01f0 	lw	t3,496(s0)
    7e20:	3421ffff 	ori	at,at,0xffff
    7e24:	24020023 	li	v0,35
    7e28:	01616024 	and	t4,t3,at
    7e2c:	ae020150 	sw	v0,336(s0)
    7e30:	ae020154 	sw	v0,340(s0)
    7e34:	ae0c01f0 	sw	t4,496(s0)
    7e38:	ae00020c 	sw	zero,524(s0)
    7e3c:	0c000000 	jal	0 <func_80A5B2F0>
    7e40:	02002025 	move	a0,s0
    7e44:	8fbf001c 	lw	ra,28(sp)
    7e48:	8fb00014 	lw	s0,20(sp)
    7e4c:	8fb10018 	lw	s1,24(sp)
    7e50:	03e00008 	jr	ra
    7e54:	27bd0030 	addiu	sp,sp,48

00007e58 <func_80A63148>:
    7e58:	27bdffe8 	addiu	sp,sp,-24
    7e5c:	afbf0014 	sw	ra,20(sp)
    7e60:	afa60020 	sw	a2,32(sp)
    7e64:	c4820000 	lwc1	$f2,0(a0)
    7e68:	c48c0004 	lwc1	$f12,4(a0)
    7e6c:	3c014270 	lui	at,0x4270
    7e70:	46021102 	mul.s	$f4,$f2,$f2
    7e74:	44817000 	mtc1	at,$f14
    7e78:	460c6182 	mul.s	$f6,$f12,$f12
    7e7c:	46062000 	add.s	$f0,$f4,$f6
    7e80:	46000004 	sqrt.s	$f0,$f0
    7e84:	4600703c 	c.lt.s	$f14,$f0
    7e88:	e4a00000 	swc1	$f0,0(a1)
    7e8c:	45020004 	bc1fl	7ea0 <func_80A63148+0x48>
    7e90:	c4a80000 	lwc1	$f8,0(a1)
    7e94:	10000003 	b	7ea4 <func_80A63148+0x4c>
    7e98:	e4ae0000 	swc1	$f14,0(a1)
    7e9c:	c4a80000 	lwc1	$f8,0(a1)
    7ea0:	e4a80000 	swc1	$f8,0(a1)
    7ea4:	c48c0000 	lwc1	$f12,0(a0)
    7ea8:	c48e0004 	lwc1	$f14,4(a0)
    7eac:	0c000000 	jal	0 <func_80A5B2F0>
    7eb0:	46006307 	neg.s	$f12,$f12
    7eb4:	3c010000 	lui	at,0x0
    7eb8:	c42a0000 	lwc1	$f10,0(at)
    7ebc:	8fb80020 	lw	t8,32(sp)
    7ec0:	460a0402 	mul.s	$f16,$f0,$f10
    7ec4:	4600848d 	trunc.w.s	$f18,$f16
    7ec8:	440f9000 	mfc1	t7,$f18
    7ecc:	00000000 	nop
    7ed0:	a70f0000 	sh	t7,0(t8)
    7ed4:	8fbf0014 	lw	ra,20(sp)
    7ed8:	27bd0018 	addiu	sp,sp,24
    7edc:	03e00008 	jr	ra
    7ee0:	00000000 	nop

00007ee4 <func_80A631D4>:
    7ee4:	8c8f0264 	lw	t7,612(a0)
    7ee8:	8c8e0268 	lw	t6,616(a0)
    7eec:	ac8f026c 	sw	t7,620(a0)
    7ef0:	ac8e0270 	sw	t6,624(a0)
    7ef4:	80b80028 	lb	t8,40(a1)
    7ef8:	44982000 	mtc1	t8,$f4
    7efc:	00000000 	nop
    7f00:	468021a0 	cvt.s.w	$f6,$f4
    7f04:	e4860264 	swc1	$f6,612(a0)
    7f08:	80b90029 	lb	t9,41(a1)
    7f0c:	44994000 	mtc1	t9,$f8
    7f10:	00000000 	nop
    7f14:	468042a0 	cvt.s.w	$f10,$f8
    7f18:	03e00008 	jr	ra
    7f1c:	e48a0268 	swc1	$f10,616(a0)

00007f20 <func_80A63210>:
    7f20:	27bdffb8 	addiu	sp,sp,-72
    7f24:	afbf0034 	sw	ra,52(sp)
    7f28:	afb00030 	sw	s0,48(sp)
    7f2c:	f7b60028 	sdc1	$f22,40(sp)
    7f30:	f7b40020 	sdc1	$f20,32(sp)
    7f34:	afa5004c 	sw	a1,76(sp)
    7f38:	84ce0008 	lh	t6,8(a2)
    7f3c:	84cf000a 	lh	t7,10(a2)
    7f40:	3c010000 	lui	at,0x0
    7f44:	448e2000 	mtc1	t6,$f4
    7f48:	448f3000 	mtc1	t7,$f6
    7f4c:	c4200000 	lwc1	$f0,0(at)
    7f50:	46802320 	cvt.s.w	$f12,$f4
    7f54:	00808025 	move	s0,a0
    7f58:	46803220 	cvt.s.w	$f8,$f6
    7f5c:	46006502 	mul.s	$f20,$f12,$f0
    7f60:	00000000 	nop
    7f64:	46004282 	mul.s	$f10,$f8,$f0
    7f68:	e7aa003c 	swc1	$f10,60(sp)
    7f6c:	84d8000c 	lh	t8,12(a2)
    7f70:	afa60050 	sw	a2,80(sp)
    7f74:	44988000 	mtc1	t8,$f16
    7f78:	00000000 	nop
    7f7c:	468083a0 	cvt.s.w	$f14,$f16
    7f80:	46007582 	mul.s	$f22,$f14,$f0
    7f84:	0c000000 	jal	0 <func_80A5B2F0>
    7f88:	00000000 	nop
    7f8c:	3c010000 	lui	at,0x0
    7f90:	c4320000 	lwc1	$f18,0(at)
    7f94:	86190032 	lh	t9,50(s0)
    7f98:	46120102 	mul.s	$f4,$f0,$f18
    7f9c:	4600218d 	trunc.w.s	$f6,$f4
    7fa0:	440b3000 	mfc1	t3,$f6
    7fa4:	00000000 	nop
    7fa8:	032b2023 	subu	a0,t9,t3
    7fac:	24848001 	addiu	a0,a0,-32767
    7fb0:	00042400 	sll	a0,a0,0x10
    7fb4:	0c000000 	jal	0 <func_80A5B2F0>
    7fb8:	00042403 	sra	a0,a0,0x10
    7fbc:	3c010000 	lui	at,0x0
    7fc0:	c4280000 	lwc1	$f8,0(at)
    7fc4:	8fa50050 	lw	a1,80(sp)
    7fc8:	4608003c 	c.lt.s	$f0,$f8
    7fcc:	00000000 	nop
    7fd0:	45030023 	bc1tl	8060 <func_80A63210+0x140>
    7fd4:	8fbf0034 	lw	ra,52(sp)
    7fd8:	84ac000e 	lh	t4,14(a1)
    7fdc:	4406b000 	mfc1	a2,$f22
    7fe0:	260d0024 	addiu	t5,s0,36
    7fe4:	448c5000 	mtc1	t4,$f10
    7fe8:	afad0010 	sw	t5,16(sp)
    7fec:	4600a306 	mov.s	$f12,$f20
    7ff0:	468052a0 	cvt.s.w	$f10,$f10
    7ff4:	c7ae003c 	lwc1	$f14,60(sp)
    7ff8:	44075000 	mfc1	a3,$f10
    7ffc:	0c000000 	jal	0 <func_80A5B2F0>
    8000:	00000000 	nop
    8004:	4614a402 	mul.s	$f16,$f20,$f20
    8008:	46000306 	mov.s	$f12,$f0
    800c:	3c0141f0 	lui	at,0x41f0
    8010:	4616b482 	mul.s	$f18,$f22,$f22
    8014:	44812000 	mtc1	at,$f4
    8018:	3c013f80 	lui	at,0x3f80
    801c:	44814000 	mtc1	at,$f8
    8020:	460c2181 	sub.s	$f6,$f4,$f12
    8024:	46128000 	add.s	$f0,$f16,$f18
    8028:	c6100024 	lwc1	$f16,36(s0)
    802c:	46000004 	sqrt.s	$f0,$f0
    8030:	46004283 	div.s	$f10,$f8,$f0
    8034:	c608002c 	lwc1	$f8,44(s0)
    8038:	460a3082 	mul.s	$f2,$f6,$f10
    803c:	00000000 	nop
    8040:	46141482 	mul.s	$f18,$f2,$f20
    8044:	00000000 	nop
    8048:	46161182 	mul.s	$f6,$f2,$f22
    804c:	46128100 	add.s	$f4,$f16,$f18
    8050:	46064280 	add.s	$f10,$f8,$f6
    8054:	e6040024 	swc1	$f4,36(s0)
    8058:	e60a002c 	swc1	$f10,44(s0)
    805c:	8fbf0034 	lw	ra,52(sp)
    8060:	d7b40020 	ldc1	$f20,32(sp)
    8064:	d7b60028 	ldc1	$f22,40(sp)
    8068:	8fb00030 	lw	s0,48(sp)
    806c:	03e00008 	jr	ra
    8070:	27bd0048 	addiu	sp,sp,72

00008074 <func_80A63364>:
    8074:	27bdff90 	addiu	sp,sp,-112
    8078:	afbf0034 	sw	ra,52(sp)
    807c:	afb00030 	sw	s0,48(sp)
    8080:	afa50074 	sw	a1,116(sp)
    8084:	84af00a4 	lh	t7,164(a1)
    8088:	00808025 	move	s0,a0
    808c:	24010063 	li	at,99
    8090:	15e10005 	bne	t7,at,80a8 <func_80A63364+0x34>
    8094:	27a40060 	addiu	a0,sp,96
    8098:	3c014198 	lui	at,0x4198
    809c:	44810000 	mtc1	at,$f0
    80a0:	10000005 	b	80b8 <func_80A63364+0x44>
    80a4:	26050024 	addiu	a1,s0,36
    80a8:	3c014220 	lui	at,0x4220
    80ac:	44810000 	mtc1	at,$f0
    80b0:	00000000 	nop
    80b4:	26050024 	addiu	a1,s0,36
    80b8:	0c000000 	jal	0 <func_80A5B2F0>
    80bc:	e7a0006c 	swc1	$f0,108(sp)
    80c0:	c7a0006c 	lwc1	$f0,108(sp)
    80c4:	c7a40064 	lwc1	$f4,100(sp)
    80c8:	27a40054 	addiu	a0,sp,84
    80cc:	27a50060 	addiu	a1,sp,96
    80d0:	46002180 	add.s	$f6,$f4,$f0
    80d4:	0c000000 	jal	0 <func_80A5B2F0>
    80d8:	e7a60064 	swc1	$f6,100(sp)
    80dc:	0c000000 	jal	0 <func_80A5B2F0>
    80e0:	86040032 	lh	a0,50(s0)
    80e4:	3c0141f0 	lui	at,0x41f0
    80e8:	44815000 	mtc1	at,$f10
    80ec:	c7a80054 	lwc1	$f8,84(sp)
    80f0:	46005402 	mul.s	$f16,$f10,$f0
    80f4:	46104480 	add.s	$f18,$f8,$f16
    80f8:	e7b20054 	swc1	$f18,84(sp)
    80fc:	860400b4 	lh	a0,180(s0)
    8100:	00042023 	negu	a0,a0
    8104:	00042400 	sll	a0,a0,0x10
    8108:	0c000000 	jal	0 <func_80A5B2F0>
    810c:	00042403 	sra	a0,a0,0x10
    8110:	3c0141f0 	lui	at,0x41f0
    8114:	44813000 	mtc1	at,$f6
    8118:	c7a40058 	lwc1	$f4,88(sp)
    811c:	46003282 	mul.s	$f10,$f6,$f0
    8120:	460a2200 	add.s	$f8,$f4,$f10
    8124:	e7a80058 	swc1	$f8,88(sp)
    8128:	0c000000 	jal	0 <func_80A5B2F0>
    812c:	86040032 	lh	a0,50(s0)
    8130:	3c0141f0 	lui	at,0x41f0
    8134:	44819000 	mtc1	at,$f18
    8138:	c7b0005c 	lwc1	$f16,92(sp)
    813c:	8fa40074 	lw	a0,116(sp)
    8140:	46009182 	mul.s	$f6,$f18,$f0
    8144:	27b80044 	addiu	t8,sp,68
    8148:	24190001 	li	t9,1
    814c:	24080001 	li	t0,1
    8150:	27a90040 	addiu	t1,sp,64
    8154:	afa90024 	sw	t1,36(sp)
    8158:	afa80020 	sw	t0,32(sp)
    815c:	46068100 	add.s	$f4,$f16,$f6
    8160:	afb90014 	sw	t9,20(sp)
    8164:	afb80010 	sw	t8,16(sp)
    8168:	27a50060 	addiu	a1,sp,96
    816c:	e7a4005c 	swc1	$f4,92(sp)
    8170:	27a60054 	addiu	a2,sp,84
    8174:	27a70048 	addiu	a3,sp,72
    8178:	afa00018 	sw	zero,24(sp)
    817c:	afa0001c 	sw	zero,28(sp)
    8180:	0c000000 	jal	0 <func_80A5B2F0>
    8184:	248407c0 	addiu	a0,a0,1984
    8188:	10400004 	beqz	v0,819c <func_80A63364+0x128>
    818c:	02002025 	move	a0,s0
    8190:	8fa50074 	lw	a1,116(sp)
    8194:	0c000000 	jal	0 <func_80A5B2F0>
    8198:	8fa60044 	lw	a2,68(sp)
    819c:	8fbf0034 	lw	ra,52(sp)
    81a0:	8fb00030 	lw	s0,48(sp)
    81a4:	27bd0070 	addiu	sp,sp,112
    81a8:	03e00008 	jr	ra
    81ac:	00000000 	nop

000081b0 <func_80A634A0>:
    81b0:	27bdff40 	addiu	sp,sp,-192
    81b4:	afbf0034 	sw	ra,52(sp)
    81b8:	afb00030 	sw	s0,48(sp)
    81bc:	afa500c4 	sw	a1,196(sp)
    81c0:	afa00088 	sw	zero,136(sp)
    81c4:	afa00084 	sw	zero,132(sp)
    81c8:	84af00a4 	lh	t7,164(a1)
    81cc:	00808025 	move	s0,a0
    81d0:	24010063 	li	at,99
    81d4:	15e10005 	bne	t7,at,81ec <func_80A634A0+0x3c>
    81d8:	8fa400c4 	lw	a0,196(sp)
    81dc:	3c014198 	lui	at,0x4198
    81e0:	44810000 	mtc1	at,$f0
    81e4:	10000005 	b	81fc <func_80A634A0+0x4c>
    81e8:	3c0142c8 	lui	at,0x42c8
    81ec:	3c014220 	lui	at,0x4220
    81f0:	44810000 	mtc1	at,$f0
    81f4:	00000000 	nop
    81f8:	3c0142c8 	lui	at,0x42c8
    81fc:	44812000 	mtc1	at,$f4
    8200:	44060000 	mfc1	a2,$f0
    8204:	2418001d 	li	t8,29
    8208:	afb80014 	sw	t8,20(sp)
    820c:	02002825 	move	a1,s0
    8210:	3c07420c 	lui	a3,0x420c
    8214:	0c000000 	jal	0 <func_80A5B2F0>
    8218:	e7a40010 	swc1	$f4,16(sp)
    821c:	02002025 	move	a0,s0
    8220:	0c000000 	jal	0 <func_80A5B2F0>
    8224:	8fa500c4 	lw	a1,196(sp)
    8228:	5440029f 	bnezl	v0,8ca8 <func_80A634A0+0xaf8>
    822c:	8fbf0034 	lw	ra,52(sp)
    8230:	96190088 	lhu	t9,136(s0)
    8234:	33280008 	andi	t0,t9,0x8
    8238:	51000022 	beqzl	t0,82c4 <func_80A634A0+0x114>
    823c:	8e0c01f0 	lw	t4,496(s0)
    8240:	8609007e 	lh	t1,126(s0)
    8244:	860a0032 	lh	t2,50(s0)
    8248:	012a2023 	subu	a0,t1,t2
    824c:	00042400 	sll	a0,a0,0x10
    8250:	0c000000 	jal	0 <func_80A5B2F0>
    8254:	00042403 	sra	a0,a0,0x10
    8258:	3c010000 	lui	at,0x0
    825c:	c4260000 	lwc1	$f6,0(at)
    8260:	3c014080 	lui	at,0x4080
    8264:	4606003c 	c.lt.s	$f0,$f6
    8268:	00000000 	nop
    826c:	45020015 	bc1fl	82c4 <func_80A634A0+0x114>
    8270:	8e0c01f0 	lw	t4,496(s0)
    8274:	c6000068 	lwc1	$f0,104(s0)
    8278:	44814000 	mtc1	at,$f8
    827c:	3c070000 	lui	a3,0x0
    8280:	24e70000 	addiu	a3,a3,0
    8284:	4600403c 	c.lt.s	$f8,$f0
    8288:	3c013f80 	lui	at,0x3f80
    828c:	4502000d 	bc1fl	82c4 <func_80A634A0+0x114>
    8290:	8e0c01f0 	lw	t4,496(s0)
    8294:	44815000 	mtc1	at,$f10
    8298:	3c0b0000 	lui	t3,0x0
    829c:	256b0000 	addiu	t3,t3,0
    82a0:	460a0401 	sub.s	$f16,$f0,$f10
    82a4:	2404282c 	li	a0,10284
    82a8:	260500e4 	addiu	a1,s0,228
    82ac:	24060004 	li	a2,4
    82b0:	e6100068 	swc1	$f16,104(s0)
    82b4:	afab0014 	sw	t3,20(sp)
    82b8:	0c000000 	jal	0 <func_80A5B2F0>
    82bc:	afa70010 	sw	a3,16(sp)
    82c0:	8e0c01f0 	lw	t4,496(s0)
    82c4:	318d0004 	andi	t5,t4,0x4
    82c8:	55a00277 	bnezl	t5,8ca8 <func_80A634A0+0xaf8>
    82cc:	8fbf0034 	lw	ra,52(sp)
    82d0:	8e0e020c 	lw	t6,524(s0)
    82d4:	51c00274 	beqzl	t6,8ca8 <func_80A634A0+0xaf8>
    82d8:	8fbf0034 	lw	ra,52(sp)
    82dc:	c6000068 	lwc1	$f0,104(s0)
    82e0:	44809000 	mtc1	zero,$f18
    82e4:	00000000 	nop
    82e8:	4612003c 	c.lt.s	$f0,$f18
    82ec:	00000000 	nop
    82f0:	4503026d 	bc1tl	8ca8 <func_80A634A0+0xaf8>
    82f4:	8fbf0034 	lw	ra,52(sp)
    82f8:	8e02014c 	lw	v0,332(s0)
    82fc:	2401000c 	li	at,12
    8300:	10410268 	beq	v0,at,8ca4 <func_80A634A0+0xaf4>
    8304:	2401000b 	li	at,11
    8308:	10410266 	beq	v0,at,8ca4 <func_80A634A0+0xaf4>
    830c:	3c014100 	lui	at,0x4100
    8310:	44812000 	mtc1	at,$f4
    8314:	3c010000 	lui	at,0x0
    8318:	02002025 	move	a0,s0
    831c:	4600203c 	c.lt.s	$f4,$f0
    8320:	26030024 	addiu	v1,s0,36
    8324:	45000011 	bc1f	836c <func_80A634A0+0x1bc>
    8328:	00000000 	nop
    832c:	c4260000 	lwc1	$f6,0(at)
    8330:	3c014366 	lui	at,0x4366
    8334:	240f0001 	li	t7,1
    8338:	4606003c 	c.lt.s	$f0,$f6
    833c:	00000000 	nop
    8340:	45020007 	bc1fl	8360 <func_80A634A0+0x1b0>
    8344:	44815000 	mtc1	at,$f10
    8348:	3c014320 	lui	at,0x4320
    834c:	44814000 	mtc1	at,$f8
    8350:	afa00070 	sw	zero,112(sp)
    8354:	10000009 	b	837c <func_80A634A0+0x1cc>
    8358:	e7a8008c 	swc1	$f8,140(sp)
    835c:	44815000 	mtc1	at,$f10
    8360:	afaf0070 	sw	t7,112(sp)
    8364:	10000005 	b	837c <func_80A634A0+0x1cc>
    8368:	e7aa008c 	swc1	$f10,140(sp)
    836c:	0c000000 	jal	0 <func_80A5B2F0>
    8370:	8fa500c4 	lw	a1,196(sp)
    8374:	1000024c 	b	8ca8 <func_80A634A0+0xaf8>
    8378:	8fbf0034 	lw	ra,52(sp)
    837c:	8c790000 	lw	t9,0(v1)
    8380:	27a200ac 	addiu	v0,sp,172
    8384:	3c014198 	lui	at,0x4198
    8388:	ac590000 	sw	t9,0(v0)
    838c:	8c780004 	lw	t8,4(v1)
    8390:	44819000 	mtc1	at,$f18
    8394:	27a800a0 	addiu	t0,sp,160
    8398:	ac580004 	sw	t8,4(v0)
    839c:	8c790008 	lw	t9,8(v1)
    83a0:	ac590008 	sw	t9,8(v0)
    83a4:	c7b000b0 	lwc1	$f16,176(sp)
    83a8:	46128100 	add.s	$f4,$f16,$f18
    83ac:	e7a400b0 	swc1	$f4,176(sp)
    83b0:	8c4a0000 	lw	t2,0(v0)
    83b4:	ad0a0000 	sw	t2,0(t0)
    83b8:	8c490004 	lw	t1,4(v0)
    83bc:	ad090004 	sw	t1,4(t0)
    83c0:	8c4a0008 	lw	t2,8(v0)
    83c4:	ad0a0008 	sw	t2,8(t0)
    83c8:	86040032 	lh	a0,50(s0)
    83cc:	0c000000 	jal	0 <func_80A5B2F0>
    83d0:	afa30044 	sw	v1,68(sp)
    83d4:	c7a8008c 	lwc1	$f8,140(sp)
    83d8:	c7a600a0 	lwc1	$f6,160(sp)
    83dc:	46004282 	mul.s	$f10,$f8,$f0
    83e0:	460a3400 	add.s	$f16,$f6,$f10
    83e4:	e7b000a0 	swc1	$f16,160(sp)
    83e8:	860400b4 	lh	a0,180(s0)
    83ec:	00042023 	negu	a0,a0
    83f0:	00042400 	sll	a0,a0,0x10
    83f4:	0c000000 	jal	0 <func_80A5B2F0>
    83f8:	00042403 	sra	a0,a0,0x10
    83fc:	c7a4008c 	lwc1	$f4,140(sp)
    8400:	c7b200a4 	lwc1	$f18,164(sp)
    8404:	46002202 	mul.s	$f8,$f4,$f0
    8408:	46089180 	add.s	$f6,$f18,$f8
    840c:	e7a600a4 	swc1	$f6,164(sp)
    8410:	0c000000 	jal	0 <func_80A5B2F0>
    8414:	86040032 	lh	a0,50(s0)
    8418:	c7b0008c 	lwc1	$f16,140(sp)
    841c:	c7aa00a8 	lwc1	$f10,168(sp)
    8420:	27a600a0 	addiu	a2,sp,160
    8424:	46008102 	mul.s	$f4,$f16,$f0
    8428:	27a7005c 	addiu	a3,sp,92
    842c:	27ad0088 	addiu	t5,sp,136
    8430:	240e0001 	li	t6,1
    8434:	240f0001 	li	t7,1
    8438:	27b80080 	addiu	t8,sp,128
    843c:	27a500ac 	addiu	a1,sp,172
    8440:	46045480 	add.s	$f18,$f10,$f4
    8444:	e7b200a8 	swc1	$f18,168(sp)
    8448:	8ccc0000 	lw	t4,0(a2)
    844c:	8ccb0004 	lw	t3,4(a2)
    8450:	acec0000 	sw	t4,0(a3)
    8454:	8ccc0008 	lw	t4,8(a2)
    8458:	aceb0004 	sw	t3,4(a3)
    845c:	acec0008 	sw	t4,8(a3)
    8460:	8fa400c4 	lw	a0,196(sp)
    8464:	afa00088 	sw	zero,136(sp)
    8468:	afb80024 	sw	t8,36(sp)
    846c:	248407c0 	addiu	a0,a0,1984
    8470:	afa4003c 	sw	a0,60(sp)
    8474:	afaf0020 	sw	t7,32(sp)
    8478:	afa0001c 	sw	zero,28(sp)
    847c:	afa00018 	sw	zero,24(sp)
    8480:	afae0014 	sw	t6,20(sp)
    8484:	0c000000 	jal	0 <func_80A5B2F0>
    8488:	afad0010 	sw	t5,16(sp)
    848c:	24010001 	li	at,1
    8490:	1441000a 	bne	v0,at,84bc <func_80A634A0+0x30c>
    8494:	27a400ac 	addiu	a0,sp,172
    8498:	0c000000 	jal	0 <func_80A5B2F0>
    849c:	27a5005c 	addiu	a1,sp,92
    84a0:	46000021 	cvt.d.s	$f0,$f0
    84a4:	46200004 	sqrt.d	$f0,$f0
    84a8:	46200220 	cvt.s.d	$f8,$f0
    84ac:	e7a8008c 	swc1	$f8,140(sp)
    84b0:	8e1901f0 	lw	t9,496(s0)
    84b4:	37284000 	ori	t0,t9,0x4000
    84b8:	ae0801f0 	sw	t0,496(s0)
    84bc:	8fa90088 	lw	t1,136(sp)
    84c0:	c7a6008c 	lwc1	$f6,140(sp)
    84c4:	3c0141f0 	lui	at,0x41f0
    84c8:	5120006d 	beqzl	t1,8680 <func_80A634A0+0x4d0>
    84cc:	3c0140a0 	lui	at,0x40a0
    84d0:	44818000 	mtc1	at,$f16
    84d4:	02002025 	move	a0,s0
    84d8:	8fa500c4 	lw	a1,196(sp)
    84dc:	4610303c 	c.lt.s	$f6,$f16
    84e0:	00000000 	nop
    84e4:	45020004 	bc1fl	84f8 <func_80A634A0+0x348>
    84e8:	8faa0088 	lw	t2,136(sp)
    84ec:	0c000000 	jal	0 <func_80A5B2F0>
    84f0:	01203025 	move	a2,t1
    84f4:	8faa0088 	lw	t2,136(sp)
    84f8:	854b0008 	lh	t3,8(t2)
    84fc:	854c000c 	lh	t4,12(t2)
    8500:	448b5000 	mtc1	t3,$f10
    8504:	448c2000 	mtc1	t4,$f4
    8508:	46805320 	cvt.s.w	$f12,$f10
    850c:	0c000000 	jal	0 <func_80A5B2F0>
    8510:	468023a0 	cvt.s.w	$f14,$f4
    8514:	3c010000 	lui	at,0x0
    8518:	c4320000 	lwc1	$f18,0(at)
    851c:	860d0032 	lh	t5,50(s0)
    8520:	46120202 	mul.s	$f8,$f0,$f18
    8524:	4600418d 	trunc.w.s	$f6,$f8
    8528:	44193000 	mfc1	t9,$f6
    852c:	00000000 	nop
    8530:	01b92023 	subu	a0,t5,t9
    8534:	24848001 	addiu	a0,a0,-32767
    8538:	00042400 	sll	a0,a0,0x10
    853c:	0c000000 	jal	0 <func_80A5B2F0>
    8540:	00042403 	sra	a0,a0,0x10
    8544:	3c013f00 	lui	at,0x3f00
    8548:	44818000 	mtc1	at,$f16
    854c:	8fa4003c 	lw	a0,60(sp)
    8550:	8fa50088 	lw	a1,136(sp)
    8554:	4610003c 	c.lt.s	$f0,$f16
    8558:	00000000 	nop
    855c:	450301d2 	bc1tl	8ca8 <func_80A634A0+0xaf8>
    8560:	8fbf0034 	lw	ra,52(sp)
    8564:	0c000000 	jal	0 <func_80A5B2F0>
    8568:	8fa60080 	lw	a2,128(sp)
    856c:	544001ce 	bnezl	v0,8ca8 <func_80A634A0+0xaf8>
    8570:	8fbf0034 	lw	ra,52(sp)
    8574:	8fa20070 	lw	v0,112(sp)
    8578:	c7aa008c 	lwc1	$f10,140(sp)
    857c:	3c0142a0 	lui	at,0x42a0
    8580:	54400007 	bnezl	v0,85a0 <func_80A634A0+0x3f0>
    8584:	24010001 	li	at,1
    8588:	44812000 	mtc1	at,$f4
    858c:	00000000 	nop
    8590:	4604503c 	c.lt.s	$f10,$f4
    8594:	00000000 	nop
    8598:	4501000a 	bc1t	85c4 <func_80A634A0+0x414>
    859c:	24010001 	li	at,1
    85a0:	14410018 	bne	v0,at,8604 <func_80A634A0+0x454>
    85a4:	c7b2008c 	lwc1	$f18,140(sp)
    85a8:	3c014316 	lui	at,0x4316
    85ac:	44814000 	mtc1	at,$f8
    85b0:	00000000 	nop
    85b4:	4608903c 	c.lt.s	$f18,$f8
    85b8:	00000000 	nop
    85bc:	45020012 	bc1fl	8608 <func_80A634A0+0x458>
    85c0:	8fa4003c 	lw	a0,60(sp)
    85c4:	14400005 	bnez	v0,85dc <func_80A634A0+0x42c>
    85c8:	24010001 	li	at,1
    85cc:	8e0801f0 	lw	t0,496(s0)
    85d0:	35090010 	ori	t1,t0,0x10
    85d4:	100001b3 	b	8ca4 <func_80A634A0+0xaf4>
    85d8:	ae0901f0 	sw	t1,496(s0)
    85dc:	544101b2 	bnel	v0,at,8ca8 <func_80A634A0+0xaf8>
    85e0:	8fbf0034 	lw	ra,52(sp)
    85e4:	8e0b01f0 	lw	t3,496(s0)
    85e8:	02002025 	move	a0,s0
    85ec:	356a0010 	ori	t2,t3,0x10
    85f0:	ae0a01f0 	sw	t2,496(s0)
    85f4:	0c000000 	jal	0 <func_80A5B2F0>
    85f8:	8fa500c4 	lw	a1,196(sp)
    85fc:	100001aa 	b	8ca8 <func_80A634A0+0xaf8>
    8600:	8fbf0034 	lw	ra,52(sp)
    8604:	8fa4003c 	lw	a0,60(sp)
    8608:	0c000000 	jal	0 <func_80A5B2F0>
    860c:	8fa50080 	lw	a1,128(sp)
    8610:	8e0301f0 	lw	v1,496(s0)
    8614:	00036140 	sll	t4,v1,0x5
    8618:	05830019 	bgezl	t4,8680 <func_80A634A0+0x4d0>
    861c:	3c0140a0 	lui	at,0x40a0
    8620:	10400005 	beqz	v0,8638 <func_80A634A0+0x488>
    8624:	00000000 	nop
    8628:	844e0000 	lh	t6,0(v0)
    862c:	24010108 	li	at,264
    8630:	55c10004 	bnel	t6,at,8644 <func_80A634A0+0x494>
    8634:	8fa20070 	lw	v0,112(sp)
    8638:	54400011 	bnezl	v0,8680 <func_80A634A0+0x4d0>
    863c:	3c0140a0 	lui	at,0x40a0
    8640:	8fa20070 	lw	v0,112(sp)
    8644:	346f0010 	ori	t7,v1,0x10
    8648:	24010001 	li	at,1
    864c:	14400003 	bnez	v0,865c <func_80A634A0+0x4ac>
    8650:	00000000 	nop
    8654:	10000193 	b	8ca4 <func_80A634A0+0xaf4>
    8658:	ae0f01f0 	sw	t7,496(s0)
    865c:	14410191 	bne	v0,at,8ca4 <func_80A634A0+0xaf4>
    8660:	34780010 	ori	t8,v1,0x10
    8664:	ae1801f0 	sw	t8,496(s0)
    8668:	8fa500c4 	lw	a1,196(sp)
    866c:	0c000000 	jal	0 <func_80A5B2F0>
    8670:	02002025 	move	a0,s0
    8674:	1000018c 	b	8ca8 <func_80A634A0+0xaf8>
    8678:	8fbf0034 	lw	ra,52(sp)
    867c:	3c0140a0 	lui	at,0x40a0
    8680:	44818000 	mtc1	at,$f16
    8684:	c7a6008c 	lwc1	$f6,140(sp)
    8688:	27b900ac 	addiu	t9,sp,172
    868c:	27ad0094 	addiu	t5,sp,148
    8690:	46103280 	add.s	$f10,$f6,$f16
    8694:	e7aa008c 	swc1	$f10,140(sp)
    8698:	8f290000 	lw	t1,0(t9)
    869c:	ada90000 	sw	t1,0(t5)
    86a0:	8f280004 	lw	t0,4(t9)
    86a4:	ada80004 	sw	t0,4(t5)
    86a8:	8f290008 	lw	t1,8(t9)
    86ac:	ada90008 	sw	t1,8(t5)
    86b0:	0c000000 	jal	0 <func_80A5B2F0>
    86b4:	86040032 	lh	a0,50(s0)
    86b8:	c7b2008c 	lwc1	$f18,140(sp)
    86bc:	c7a40094 	lwc1	$f4,148(sp)
    86c0:	3c0142f0 	lui	at,0x42f0
    86c4:	46009202 	mul.s	$f8,$f18,$f0
    86c8:	44815000 	mtc1	at,$f10
    86cc:	46082180 	add.s	$f6,$f4,$f8
    86d0:	e7a60094 	swc1	$f6,148(sp)
    86d4:	c6100028 	lwc1	$f16,40(s0)
    86d8:	460a8480 	add.s	$f18,$f16,$f10
    86dc:	e7b20098 	swc1	$f18,152(sp)
    86e0:	0c000000 	jal	0 <func_80A5B2F0>
    86e4:	86040032 	lh	a0,50(s0)
    86e8:	c7a8008c 	lwc1	$f8,140(sp)
    86ec:	c7a4009c 	lwc1	$f4,156(sp)
    86f0:	27a70094 	addiu	a3,sp,148
    86f4:	46004182 	mul.s	$f6,$f8,$f0
    86f8:	27ab0050 	addiu	t3,sp,80
    86fc:	27a50084 	addiu	a1,sp,132
    8700:	27a60080 	addiu	a2,sp,128
    8704:	46062400 	add.s	$f16,$f4,$f6
    8708:	e7b0009c 	swc1	$f16,156(sp)
    870c:	8cec0000 	lw	t4,0(a3)
    8710:	ad6c0000 	sw	t4,0(t3)
    8714:	8cea0004 	lw	t2,4(a3)
    8718:	ad6a0004 	sw	t2,4(t3)
    871c:	8cec0008 	lw	t4,8(a3)
    8720:	ad6c0008 	sw	t4,8(t3)
    8724:	0c000000 	jal	0 <func_80A5B2F0>
    8728:	8fa4003c 	lw	a0,60(sp)
    872c:	3c01c6fa 	lui	at,0xc6fa
    8730:	44815000 	mtc1	at,$f10
    8734:	e7a00054 	swc1	$f0,84(sp)
    8738:	460a0032 	c.eq.s	$f0,$f10
    873c:	00000000 	nop
    8740:	45030159 	bc1tl	8ca8 <func_80A634A0+0xaf8>
    8744:	8fbf0034 	lw	ra,52(sp)
    8748:	c6120028 	lwc1	$f18,40(s0)
    874c:	8fae0084 	lw	t6,132(sp)
    8750:	46120201 	sub.s	$f8,$f0,$f18
    8754:	e7a8007c 	swc1	$f8,124(sp)
    8758:	8e020078 	lw	v0,120(s0)
    875c:	50400152 	beqzl	v0,8ca8 <func_80A634A0+0xaf8>
    8760:	8fbf0034 	lw	ra,52(sp)
    8764:	51c00150 	beqzl	t6,8ca8 <func_80A634A0+0xaf8>
    8768:	8fbf0034 	lw	ra,52(sp)
    876c:	844f0008 	lh	t7,8(v0)
    8770:	8458000a 	lh	t8,10(v0)
    8774:	844d000c 	lh	t5,12(v0)
    8778:	448f2000 	mtc1	t7,$f4
    877c:	44988000 	mtc1	t8,$f16
    8780:	3c010000 	lui	at,0x0
    8784:	468021a0 	cvt.s.w	$f6,$f4
    8788:	c4200000 	lwc1	$f0,0(at)
    878c:	448d9000 	mtc1	t5,$f18
    8790:	8459000e 	lh	t9,14(v0)
    8794:	27a80050 	addiu	t0,sp,80
    8798:	468082a0 	cvt.s.w	$f10,$f16
    879c:	46003302 	mul.s	$f12,$f6,$f0
    87a0:	44993000 	mtc1	t9,$f6
    87a4:	afa80010 	sw	t0,16(sp)
    87a8:	46005382 	mul.s	$f14,$f10,$f0
    87ac:	46809220 	cvt.s.w	$f8,$f18
    87b0:	468031a0 	cvt.s.w	$f6,$f6
    87b4:	46004102 	mul.s	$f4,$f8,$f0
    87b8:	44073000 	mfc1	a3,$f6
    87bc:	44062000 	mfc1	a2,$f4
    87c0:	0c000000 	jal	0 <func_80A5B2F0>
    87c4:	00000000 	nop
    87c8:	3c01c220 	lui	at,0xc220
    87cc:	44818000 	mtc1	at,$f16
    87d0:	8fa90084 	lw	t1,132(sp)
    87d4:	4610003c 	c.lt.s	$f0,$f16
    87d8:	00000000 	nop
    87dc:	45020031 	bc1fl	88a4 <func_80A634A0+0x6f4>
    87e0:	8fac0084 	lw	t4,132(sp)
    87e4:	852b0008 	lh	t3,8(t1)
    87e8:	852a000a 	lh	t2,10(t1)
    87ec:	852c000c 	lh	t4,12(t1)
    87f0:	448b5000 	mtc1	t3,$f10
    87f4:	448a4000 	mtc1	t2,$f8
    87f8:	3c010000 	lui	at,0x0
    87fc:	468054a0 	cvt.s.w	$f18,$f10
    8800:	c4200000 	lwc1	$f0,0(at)
    8804:	448c3000 	mtc1	t4,$f6
    8808:	852e000e 	lh	t6,14(t1)
    880c:	8faf0044 	lw	t7,68(sp)
    8810:	46804120 	cvt.s.w	$f4,$f8
    8814:	46009302 	mul.s	$f12,$f18,$f0
    8818:	448e9000 	mtc1	t6,$f18
    881c:	afaf0010 	sw	t7,16(sp)
    8820:	46002382 	mul.s	$f14,$f4,$f0
    8824:	46803420 	cvt.s.w	$f16,$f6
    8828:	468094a0 	cvt.s.w	$f18,$f18
    882c:	46008282 	mul.s	$f10,$f16,$f0
    8830:	44079000 	mfc1	a3,$f18
    8834:	44065000 	mfc1	a2,$f10
    8838:	0c000000 	jal	0 <func_80A5B2F0>
    883c:	00000000 	nop
    8840:	3c014220 	lui	at,0x4220
    8844:	44814000 	mtc1	at,$f8
    8848:	24010001 	li	at,1
    884c:	8fb80070 	lw	t8,112(sp)
    8850:	4600403c 	c.lt.s	$f8,$f0
    8854:	00000000 	nop
    8858:	45020012 	bc1fl	88a4 <func_80A634A0+0x6f4>
    885c:	8fac0084 	lw	t4,132(sp)
    8860:	5701000c 	bnel	t8,at,8894 <func_80A634A0+0x6e4>
    8864:	8e0b01f0 	lw	t3,496(s0)
    8868:	8e0d014c 	lw	t5,332(s0)
    886c:	2401000c 	li	at,12
    8870:	51a10008 	beql	t5,at,8894 <func_80A634A0+0x6e4>
    8874:	8e0b01f0 	lw	t3,496(s0)
    8878:	8e1901f0 	lw	t9,496(s0)
    887c:	02002025 	move	a0,s0
    8880:	37280010 	ori	t0,t9,0x10
    8884:	ae0801f0 	sw	t0,496(s0)
    8888:	0c000000 	jal	0 <func_80A5B2F0>
    888c:	8fa500c4 	lw	a1,196(sp)
    8890:	8e0b01f0 	lw	t3,496(s0)
    8894:	356a4000 	ori	t2,t3,0x4000
    8898:	10000102 	b	8ca4 <func_80A634A0+0xaf4>
    889c:	ae0a01f0 	sw	t2,496(s0)
    88a0:	8fac0084 	lw	t4,132(sp)
    88a4:	3c010000 	lui	at,0x0
    88a8:	c4300000 	lwc1	$f16,0(at)
    88ac:	8589000a 	lh	t1,10(t4)
    88b0:	3c010000 	lui	at,0x0
    88b4:	c42a0000 	lwc1	$f10,0(at)
    88b8:	44892000 	mtc1	t1,$f4
    88bc:	8fa4003c 	lw	a0,60(sp)
    88c0:	01802825 	move	a1,t4
    88c4:	468021a0 	cvt.s.w	$f6,$f4
    88c8:	46103002 	mul.s	$f0,$f6,$f16
    88cc:	460a003c 	c.lt.s	$f0,$f10
    88d0:	00000000 	nop
    88d4:	4503000c 	bc1tl	8908 <func_80A634A0+0x758>
    88d8:	8fae0070 	lw	t6,112(sp)
    88dc:	0c000000 	jal	0 <func_80A5B2F0>
    88e0:	8fa60080 	lw	a2,128(sp)
    88e4:	14400007 	bnez	v0,8904 <func_80A634A0+0x754>
    88e8:	8fa4003c 	lw	a0,60(sp)
    88ec:	8fa50084 	lw	a1,132(sp)
    88f0:	0c000000 	jal	0 <func_80A5B2F0>
    88f4:	8fa60080 	lw	a2,128(sp)
    88f8:	24010007 	li	at,7
    88fc:	14410011 	bne	v0,at,8944 <func_80A634A0+0x794>
    8900:	8fb90088 	lw	t9,136(sp)
    8904:	8fae0070 	lw	t6,112(sp)
    8908:	24010001 	li	at,1
    890c:	55c100e6 	bnel	t6,at,8ca8 <func_80A634A0+0xaf8>
    8910:	8fbf0034 	lw	ra,52(sp)
    8914:	8e0f014c 	lw	t7,332(s0)
    8918:	2401000c 	li	at,12
    891c:	51e100e2 	beql	t7,at,8ca8 <func_80A634A0+0xaf8>
    8920:	8fbf0034 	lw	ra,52(sp)
    8924:	8e1801f0 	lw	t8,496(s0)
    8928:	02002025 	move	a0,s0
    892c:	370d0010 	ori	t5,t8,0x10
    8930:	ae0d01f0 	sw	t5,496(s0)
    8934:	0c000000 	jal	0 <func_80A5B2F0>
    8938:	8fa500c4 	lw	a1,196(sp)
    893c:	100000da 	b	8ca8 <func_80A634A0+0xaf8>
    8940:	8fbf0034 	lw	ra,52(sp)
    8944:	132000d7 	beqz	t9,8ca4 <func_80A634A0+0xaf4>
    8948:	c7b20054 	lwc1	$f18,84(sp)
    894c:	c7a80060 	lwc1	$f8,96(sp)
    8950:	4608903c 	c.lt.s	$f18,$f8
    8954:	00000000 	nop
    8958:	450300d3 	bc1tl	8ca8 <func_80A634A0+0xaf8>
    895c:	8fbf0034 	lw	ra,52(sp)
    8960:	8e0801f0 	lw	t0,496(s0)
    8964:	27a900ac 	addiu	t1,sp,172
    8968:	00085b80 	sll	t3,t0,0xe
    896c:	056200ce 	bltzl	t3,8ca8 <func_80A634A0+0xaf8>
    8970:	8fbf0034 	lw	ra,52(sp)
    8974:	8d2e0000 	lw	t6,0(t1)
    8978:	27aa0094 	addiu	t2,sp,148
    897c:	3c0142f0 	lui	at,0x42f0
    8980:	ad4e0000 	sw	t6,0(t2)
    8984:	8d2c0004 	lw	t4,4(t1)
    8988:	44813000 	mtc1	at,$f6
    898c:	ad4c0004 	sw	t4,4(t2)
    8990:	8d2e0008 	lw	t6,8(t1)
    8994:	ad4e0008 	sw	t6,8(t2)
    8998:	c6040028 	lwc1	$f4,40(s0)
    899c:	8faf0070 	lw	t7,112(sp)
    89a0:	46062400 	add.s	$f16,$f4,$f6
    89a4:	15e00012 	bnez	t7,89f0 <func_80A634A0+0x840>
    89a8:	e7b00098 	swc1	$f16,152(sp)
    89ac:	0c000000 	jal	0 <func_80A5B2F0>
    89b0:	86040032 	lh	a0,50(s0)
    89b4:	3c01438a 	lui	at,0x438a
    89b8:	44819000 	mtc1	at,$f18
    89bc:	c7aa0094 	lwc1	$f10,148(sp)
    89c0:	46009202 	mul.s	$f8,$f18,$f0
    89c4:	46085100 	add.s	$f4,$f10,$f8
    89c8:	e7a40094 	swc1	$f4,148(sp)
    89cc:	0c000000 	jal	0 <func_80A5B2F0>
    89d0:	86040032 	lh	a0,50(s0)
    89d4:	3c01438a 	lui	at,0x438a
    89d8:	44818000 	mtc1	at,$f16
    89dc:	c7a6009c 	lwc1	$f6,156(sp)
    89e0:	46008482 	mul.s	$f18,$f16,$f0
    89e4:	46123280 	add.s	$f10,$f6,$f18
    89e8:	10000011 	b	8a30 <func_80A634A0+0x880>
    89ec:	e7aa009c 	swc1	$f10,156(sp)
    89f0:	0c000000 	jal	0 <func_80A5B2F0>
    89f4:	86040032 	lh	a0,50(s0)
    89f8:	3c0143c3 	lui	at,0x43c3
    89fc:	44812000 	mtc1	at,$f4
    8a00:	c7a80094 	lwc1	$f8,148(sp)
    8a04:	46002402 	mul.s	$f16,$f4,$f0
    8a08:	46104180 	add.s	$f6,$f8,$f16
    8a0c:	e7a60094 	swc1	$f6,148(sp)
    8a10:	0c000000 	jal	0 <func_80A5B2F0>
    8a14:	86040032 	lh	a0,50(s0)
    8a18:	3c0143c3 	lui	at,0x43c3
    8a1c:	44815000 	mtc1	at,$f10
    8a20:	c7b2009c 	lwc1	$f18,156(sp)
    8a24:	46005102 	mul.s	$f4,$f10,$f0
    8a28:	46049200 	add.s	$f8,$f18,$f4
    8a2c:	e7a8009c 	swc1	$f8,156(sp)
    8a30:	27ad0094 	addiu	t5,sp,148
    8a34:	8da80000 	lw	t0,0(t5)
    8a38:	27b80050 	addiu	t8,sp,80
    8a3c:	27a50084 	addiu	a1,sp,132
    8a40:	af080000 	sw	t0,0(t8)
    8a44:	8db90004 	lw	t9,4(t5)
    8a48:	27a60080 	addiu	a2,sp,128
    8a4c:	27a70094 	addiu	a3,sp,148
    8a50:	af190004 	sw	t9,4(t8)
    8a54:	8da80008 	lw	t0,8(t5)
    8a58:	af080008 	sw	t0,8(t8)
    8a5c:	0c000000 	jal	0 <func_80A5B2F0>
    8a60:	8fa4003c 	lw	a0,60(sp)
    8a64:	3c01c6fa 	lui	at,0xc6fa
    8a68:	44818000 	mtc1	at,$f16
    8a6c:	e7a00054 	swc1	$f0,84(sp)
    8a70:	46100032 	c.eq.s	$f0,$f16
    8a74:	00000000 	nop
    8a78:	4503008b 	bc1tl	8ca8 <func_80A634A0+0xaf8>
    8a7c:	8fbf0034 	lw	ra,52(sp)
    8a80:	c6060028 	lwc1	$f6,40(s0)
    8a84:	8fab0084 	lw	t3,132(sp)
    8a88:	8faa0084 	lw	t2,132(sp)
    8a8c:	46060281 	sub.s	$f10,$f0,$f6
    8a90:	11600084 	beqz	t3,8ca4 <func_80A634A0+0xaf4>
    8a94:	e7aa0078 	swc1	$f10,120(sp)
    8a98:	8549000a 	lh	t1,10(t2)
    8a9c:	3c010000 	lui	at,0x0
    8aa0:	c4280000 	lwc1	$f8,0(at)
    8aa4:	44899000 	mtc1	t1,$f18
    8aa8:	3c010000 	lui	at,0x0
    8aac:	c4300000 	lwc1	$f16,0(at)
    8ab0:	46809120 	cvt.s.w	$f4,$f18
    8ab4:	8fa4003c 	lw	a0,60(sp)
    8ab8:	01402825 	move	a1,t2
    8abc:	46082002 	mul.s	$f0,$f4,$f8
    8ac0:	4610003c 	c.lt.s	$f0,$f16
    8ac4:	00000000 	nop
    8ac8:	4503000c 	bc1tl	8afc <func_80A634A0+0x94c>
    8acc:	8fac0070 	lw	t4,112(sp)
    8ad0:	0c000000 	jal	0 <func_80A5B2F0>
    8ad4:	8fa60080 	lw	a2,128(sp)
    8ad8:	14400007 	bnez	v0,8af8 <func_80A634A0+0x948>
    8adc:	8fa4003c 	lw	a0,60(sp)
    8ae0:	8fa50084 	lw	a1,132(sp)
    8ae4:	0c000000 	jal	0 <func_80A5B2F0>
    8ae8:	8fa60080 	lw	a2,128(sp)
    8aec:	24010007 	li	at,7
    8af0:	14410011 	bne	v0,at,8b38 <func_80A634A0+0x988>
    8af4:	3c0d0000 	lui	t5,0x0
    8af8:	8fac0070 	lw	t4,112(sp)
    8afc:	24010001 	li	at,1
    8b00:	55810069 	bnel	t4,at,8ca8 <func_80A634A0+0xaf8>
    8b04:	8fbf0034 	lw	ra,52(sp)
    8b08:	8e0e014c 	lw	t6,332(s0)
    8b0c:	2401000c 	li	at,12
    8b10:	51c10065 	beql	t6,at,8ca8 <func_80A634A0+0xaf8>
    8b14:	8fbf0034 	lw	ra,52(sp)
    8b18:	8e0f01f0 	lw	t7,496(s0)
    8b1c:	02002025 	move	a0,s0
    8b20:	35f80010 	ori	t8,t7,0x10
    8b24:	ae1801f0 	sw	t8,496(s0)
    8b28:	0c000000 	jal	0 <func_80A5B2F0>
    8b2c:	8fa500c4 	lw	a1,196(sp)
    8b30:	1000005d 	b	8ca8 <func_80A634A0+0xaf8>
    8b34:	8fbf0034 	lw	ra,52(sp)
    8b38:	8dad0000 	lw	t5,0(t5)
    8b3c:	c7a60078 	lwc1	$f6,120(sp)
    8b40:	8fab0070 	lw	t3,112(sp)
    8b44:	85b9055c 	lh	t9,1372(t5)
    8b48:	24010001 	li	at,1
    8b4c:	8fae0070 	lw	t6,112(sp)
    8b50:	00194023 	negu	t0,t9
    8b54:	44885000 	mtc1	t0,$f10
    8b58:	00000000 	nop
    8b5c:	468054a0 	cvt.s.w	$f18,$f10
    8b60:	4612303c 	c.lt.s	$f6,$f18
    8b64:	00000000 	nop
    8b68:	4500000f 	bc1f	8ba8 <func_80A634A0+0x9f8>
    8b6c:	00000000 	nop
    8b70:	5561004d 	bnel	t3,at,8ca8 <func_80A634A0+0xaf8>
    8b74:	8fbf0034 	lw	ra,52(sp)
    8b78:	8e09014c 	lw	t1,332(s0)
    8b7c:	2401000c 	li	at,12
    8b80:	51210049 	beql	t1,at,8ca8 <func_80A634A0+0xaf8>
    8b84:	8fbf0034 	lw	ra,52(sp)
    8b88:	8e0a01f0 	lw	t2,496(s0)
    8b8c:	02002025 	move	a0,s0
    8b90:	354c0010 	ori	t4,t2,0x10
    8b94:	ae0c01f0 	sw	t4,496(s0)
    8b98:	0c000000 	jal	0 <func_80A5B2F0>
    8b9c:	8fa500c4 	lw	a1,196(sp)
    8ba0:	10000041 	b	8ca8 <func_80A634A0+0xaf8>
    8ba4:	8fbf0034 	lw	ra,52(sp)
    8ba8:	15c00014 	bnez	t6,8bfc <func_80A634A0+0xa4c>
    8bac:	c7a0007c 	lwc1	$f0,124(sp)
    8bb0:	3c014198 	lui	at,0x4198
    8bb4:	44812000 	mtc1	at,$f4
    8bb8:	3c014220 	lui	at,0x4220
    8bbc:	4600203c 	c.lt.s	$f4,$f0
    8bc0:	00000000 	nop
    8bc4:	4502000e 	bc1fl	8c00 <func_80A634A0+0xa50>
    8bc8:	8fb80070 	lw	t8,112(sp)
    8bcc:	44814000 	mtc1	at,$f8
    8bd0:	00000000 	nop
    8bd4:	4608003e 	c.le.s	$f0,$f8
    8bd8:	00000000 	nop
    8bdc:	45020008 	bc1fl	8c00 <func_80A634A0+0xa50>
    8be0:	8fb80070 	lw	t8,112(sp)
    8be4:	0c000000 	jal	0 <func_80A5B2F0>
    8be8:	02002025 	move	a0,s0
    8bec:	3c0f0000 	lui	t7,0x0
    8bf0:	25ef0000 	addiu	t7,t7,0
    8bf4:	1000002b 	b	8ca4 <func_80A634A0+0xaf4>
    8bf8:	ae0f0244 	sw	t7,580(s0)
    8bfc:	8fb80070 	lw	t8,112(sp)
    8c00:	24010001 	li	at,1
    8c04:	c7a0007c 	lwc1	$f0,124(sp)
    8c08:	17010013 	bne	t8,at,8c58 <func_80A634A0+0xaa8>
    8c0c:	3c010000 	lui	at,0x0
    8c10:	c42a0000 	lwc1	$f10,0(at)
    8c14:	c6100068 	lwc1	$f16,104(s0)
    8c18:	3c014198 	lui	at,0x4198
    8c1c:	460a803c 	c.lt.s	$f16,$f10
    8c20:	00000000 	nop
    8c24:	4500000c 	bc1f	8c58 <func_80A634A0+0xaa8>
    8c28:	00000000 	nop
    8c2c:	44813000 	mtc1	at,$f6
    8c30:	3c014290 	lui	at,0x4290
    8c34:	4600303c 	c.lt.s	$f6,$f0
    8c38:	00000000 	nop
    8c3c:	45000006 	bc1f	8c58 <func_80A634A0+0xaa8>
    8c40:	00000000 	nop
    8c44:	44819000 	mtc1	at,$f18
    8c48:	00000000 	nop
    8c4c:	4612003e 	c.le.s	$f0,$f18
    8c50:	00000000 	nop
    8c54:	4501000e 	bc1t	8c90 <func_80A634A0+0xae0>
    8c58:	3c010000 	lui	at,0x0
    8c5c:	c4240000 	lwc1	$f4,0(at)
    8c60:	c6080068 	lwc1	$f8,104(s0)
    8c64:	3c0142e0 	lui	at,0x42e0
    8c68:	4608203c 	c.lt.s	$f4,$f8
    8c6c:	00000000 	nop
    8c70:	4502000d 	bc1fl	8ca8 <func_80A634A0+0xaf8>
    8c74:	8fbf0034 	lw	ra,52(sp)
    8c78:	44818000 	mtc1	at,$f16
    8c7c:	00000000 	nop
    8c80:	4610003e 	c.le.s	$f0,$f16
    8c84:	00000000 	nop
    8c88:	45020007 	bc1fl	8ca8 <func_80A634A0+0xaf8>
    8c8c:	8fbf0034 	lw	ra,52(sp)
    8c90:	0c000000 	jal	0 <func_80A5B2F0>
    8c94:	02002025 	move	a0,s0
    8c98:	3c0d0000 	lui	t5,0x0
    8c9c:	25ad0000 	addiu	t5,t5,0
    8ca0:	ae0d0244 	sw	t5,580(s0)
    8ca4:	8fbf0034 	lw	ra,52(sp)
    8ca8:	8fb00030 	lw	s0,48(sp)
    8cac:	27bd00c0 	addiu	sp,sp,192
    8cb0:	03e00008 	jr	ra
    8cb4:	00000000 	nop

00008cb8 <func_80A63FA8>:
    8cb8:	27bdffc8 	addiu	sp,sp,-56
    8cbc:	afbf0024 	sw	ra,36(sp)
    8cc0:	afb00020 	sw	s0,32(sp)
    8cc4:	8c82014c 	lw	v0,332(a0)
    8cc8:	24080008 	li	t0,8
    8ccc:	00808025 	move	s0,a0
    8cd0:	11020005 	beq	t0,v0,8ce8 <func_80A63FA8+0x30>
    8cd4:	24010009 	li	at,9
    8cd8:	10410003 	beq	v0,at,8ce8 <func_80A63FA8+0x30>
    8cdc:	2401000a 	li	at,10
    8ce0:	5441005b 	bnel	v0,at,8e50 <func_80A63FA8+0x198>
    8ce4:	8fbf0024 	lw	ra,36(sp)
    8ce8:	94ae0020 	lhu	t6,32(a1)
    8cec:	3c01ffff 	lui	at,0xffff
    8cf0:	34217fff 	ori	at,at,0x7fff
    8cf4:	01c17827 	nor	t7,t6,at
    8cf8:	15e00054 	bnez	t7,8e4c <func_80A63FA8+0x194>
    8cfc:	3c180001 	lui	t8,0x1
    8d00:	0305c021 	addu	t8,t8,a1
    8d04:	971806de 	lhu	t8,1758(t8)
    8d08:	55180051 	bnel	t0,t8,8e50 <func_80A63FA8+0x198>
    8d0c:	8fbf0024 	lw	ra,36(sp)
    8d10:	8e0201f0 	lw	v0,496(s0)
    8d14:	30590001 	andi	t9,v0,0x1
    8d18:	1720004c 	bnez	t9,8e4c <func_80A63FA8+0x194>
    8d1c:	30490100 	andi	t1,v0,0x100
    8d20:	1520004a 	bnez	t1,8e4c <func_80A63FA8+0x194>
    8d24:	304a0200 	andi	t2,v0,0x200
    8d28:	55400049 	bnezl	t2,8e50 <func_80A63FA8+0x198>
    8d2c:	8fbf0024 	lw	ra,36(sp)
    8d30:	920b0238 	lbu	t3,568(s0)
    8d34:	240500b4 	li	a1,180
    8d38:	24060014 	li	a2,20
    8d3c:	59600029 	blezl	t3,8de4 <func_80A63FA8+0x12c>
    8d40:	8e0a0228 	lw	t2,552(s0)
    8d44:	44806000 	mtc1	zero,$f12
    8d48:	0c000000 	jal	0 <func_80A5B2F0>
    8d4c:	24070064 	li	a3,100
    8d50:	8e0c01f0 	lw	t4,496(s0)
    8d54:	92090238 	lbu	t1,568(s0)
    8d58:	3c030040 	lui	v1,0x40
    8d5c:	358d0001 	ori	t5,t4,0x1
    8d60:	01a37825 	or	t7,t5,v1
    8d64:	ae0d01f0 	sw	t5,496(s0)
    8d68:	252affff 	addiu	t2,t1,-1
    8d6c:	ae0f01f0 	sw	t7,496(s0)
    8d70:	35f90100 	ori	t9,t7,0x100
    8d74:	314b00ff 	andi	t3,t2,0xff
    8d78:	24080008 	li	t0,8
    8d7c:	ae1901f0 	sw	t9,496(s0)
    8d80:	a20a0238 	sb	t2,568(s0)
    8d84:	15600004 	bnez	t3,8d98 <func_80A63FA8+0xe0>
    8d88:	ae000240 	sw	zero,576(s0)
    8d8c:	240c008c 	li	t4,140
    8d90:	1000002e 	b	8e4c <func_80A63FA8+0x194>
    8d94:	ae0c023c 	sw	t4,572(s0)
    8d98:	8e0d0158 	lw	t5,344(s0)
    8d9c:	24190046 	li	t9,70
    8da0:	15a0000d 	bnez	t5,8dd8 <func_80A63FA8+0x120>
    8da4:	00000000 	nop
    8da8:	8e0201f0 	lw	v0,496(s0)
    8dac:	3c01ffbf 	lui	at,0xffbf
    8db0:	240f003c 	li	t7,60
    8db4:	00437024 	and	t6,v0,v1
    8db8:	11c00005 	beqz	t6,8dd0 <func_80A63FA8+0x118>
    8dbc:	3421ffff 	ori	at,at,0xffff
    8dc0:	0041c024 	and	t8,v0,at
    8dc4:	ae0f023c 	sw	t7,572(s0)
    8dc8:	10000020 	b	8e4c <func_80A63FA8+0x194>
    8dcc:	ae1801f0 	sw	t8,496(s0)
    8dd0:	1000001e 	b	8e4c <func_80A63FA8+0x194>
    8dd4:	ae08023c 	sw	t0,572(s0)
    8dd8:	1000001c 	b	8e4c <func_80A63FA8+0x194>
    8ddc:	ae19023c 	sw	t9,572(s0)
    8de0:	8e0a0228 	lw	t2,552(s0)
    8de4:	2605021c 	addiu	a1,s0,540
    8de8:	acaa0000 	sw	t2,0(a1)
    8dec:	8e09022c 	lw	t1,556(s0)
    8df0:	aca90004 	sw	t1,4(a1)
    8df4:	8e0a0230 	lw	t2,560(s0)
    8df8:	acaa0008 	sw	t2,8(a1)
    8dfc:	8e0b01f0 	lw	t3,496(s0)
    8e00:	000b6100 	sll	t4,t3,0x4
    8e04:	05830012 	bgezl	t4,8e50 <func_80A63FA8+0x198>
    8e08:	8fbf0024 	lw	ra,36(sp)
    8e0c:	0c000000 	jal	0 <func_80A5B2F0>
    8e10:	afa50028 	sw	a1,40(sp)
    8e14:	3c010000 	lui	at,0x0
    8e18:	c4240000 	lwc1	$f4,0(at)
    8e1c:	3c070000 	lui	a3,0x0
    8e20:	24e70000 	addiu	a3,a3,0
    8e24:	4604003c 	c.lt.s	$f0,$f4
    8e28:	8fa50028 	lw	a1,40(sp)
    8e2c:	24042805 	li	a0,10245
    8e30:	24060004 	li	a2,4
    8e34:	45000005 	bc1f	8e4c <func_80A63FA8+0x194>
    8e38:	3c0d0000 	lui	t5,0x0
    8e3c:	25ad0000 	addiu	t5,t5,0
    8e40:	afad0014 	sw	t5,20(sp)
    8e44:	0c000000 	jal	0 <func_80A5B2F0>
    8e48:	afa70010 	sw	a3,16(sp)
    8e4c:	8fbf0024 	lw	ra,36(sp)
    8e50:	8fb00020 	lw	s0,32(sp)
    8e54:	27bd0038 	addiu	sp,sp,56
    8e58:	03e00008 	jr	ra
    8e5c:	00000000 	nop

00008e60 <func_80A64150>:
    8e60:	27bdffd8 	addiu	sp,sp,-40
    8e64:	afbf0024 	sw	ra,36(sp)
    8e68:	afb00020 	sw	s0,32(sp)
    8e6c:	afa5002c 	sw	a1,44(sp)
    8e70:	90820238 	lbu	v0,568(a0)
    8e74:	00808025 	move	s0,a0
    8e78:	28410006 	slti	at,v0,6
    8e7c:	10200030 	beqz	at,8f40 <func_80A64150+0xe0>
    8e80:	00000000 	nop
    8e84:	1840002e 	blez	v0,8f40 <func_80A64150+0xe0>
    8e88:	00000000 	nop
    8e8c:	8c8e023c 	lw	t6,572(a0)
    8e90:	8c980240 	lw	t8,576(a0)
    8e94:	25cfffff 	addiu	t7,t6,-1
    8e98:	27190001 	addiu	t9,t8,1
    8e9c:	ac8f023c 	sw	t7,572(a0)
    8ea0:	1de0004f 	bgtz	t7,8fe0 <func_80A64150+0x180>
    8ea4:	ac990240 	sw	t9,576(a0)
    8ea8:	90890238 	lbu	t1,568(a0)
    8eac:	8c82014c 	lw	v0,332(a0)
    8eb0:	24010005 	li	at,5
    8eb4:	252a0001 	addiu	t2,t1,1
    8eb8:	10410005 	beq	v0,at,8ed0 <func_80A64150+0x70>
    8ebc:	a08a0238 	sb	t2,568(a0)
    8ec0:	10400003 	beqz	v0,8ed0 <func_80A64150+0x70>
    8ec4:	24010006 	li	at,6
    8ec8:	5441000a 	bnel	v0,at,8ef4 <func_80A64150+0x94>
    8ecc:	00001025 	move	v0,zero
    8ed0:	8e0201f0 	lw	v0,496(s0)
    8ed4:	00025b00 	sll	t3,v0,0xc
    8ed8:	05600005 	bltz	t3,8ef0 <func_80A64150+0x90>
    8edc:	00026180 	sll	t4,v0,0x6
    8ee0:	05820004 	bltzl	t4,8ef4 <func_80A64150+0x94>
    8ee4:	00001025 	move	v0,zero
    8ee8:	10000002 	b	8ef4 <func_80A64150+0x94>
    8eec:	24020001 	li	v0,1
    8ef0:	00001025 	move	v0,zero
    8ef4:	1440000b 	bnez	v0,8f24 <func_80A64150+0xc4>
    8ef8:	3c070000 	lui	a3,0x0
    8efc:	3c0d0000 	lui	t5,0x0
    8f00:	24e70000 	addiu	a3,a3,0
    8f04:	25ad0000 	addiu	t5,t5,0
    8f08:	3c050000 	lui	a1,0x0
    8f0c:	24a50000 	addiu	a1,a1,0
    8f10:	afad0014 	sw	t5,20(sp)
    8f14:	afa70010 	sw	a3,16(sp)
    8f18:	24044845 	li	a0,18501
    8f1c:	0c000000 	jal	0 <func_80A5B2F0>
    8f20:	24060004 	li	a2,4
    8f24:	920e0238 	lbu	t6,568(s0)
    8f28:	240f000b 	li	t7,11
    8f2c:	29c10006 	slti	at,t6,6
    8f30:	5020002c 	beqzl	at,8fe4 <func_80A64150+0x184>
    8f34:	8e180240 	lw	t8,576(s0)
    8f38:	10000029 	b	8fe0 <func_80A64150+0x180>
    8f3c:	ae0f023c 	sw	t7,572(s0)
    8f40:	54400028 	bnezl	v0,8fe4 <func_80A64150+0x184>
    8f44:	8e180240 	lw	t8,576(s0)
    8f48:	8e18023c 	lw	t8,572(s0)
    8f4c:	8e080240 	lw	t0,576(s0)
    8f50:	240b0006 	li	t3,6
    8f54:	2719ffff 	addiu	t9,t8,-1
    8f58:	25090001 	addiu	t1,t0,1
    8f5c:	ae19023c 	sw	t9,572(s0)
    8f60:	1f20001f 	bgtz	t9,8fe0 <func_80A64150+0x180>
    8f64:	ae090240 	sw	t1,576(s0)
    8f68:	8e02014c 	lw	v0,332(s0)
    8f6c:	24010005 	li	at,5
    8f70:	ae00023c 	sw	zero,572(s0)
    8f74:	10410005 	beq	v0,at,8f8c <func_80A64150+0x12c>
    8f78:	a20b0238 	sb	t3,568(s0)
    8f7c:	10400003 	beqz	v0,8f8c <func_80A64150+0x12c>
    8f80:	24010006 	li	at,6
    8f84:	5441000a 	bnel	v0,at,8fb0 <func_80A64150+0x150>
    8f88:	00001025 	move	v0,zero
    8f8c:	8e0201f0 	lw	v0,496(s0)
    8f90:	00026300 	sll	t4,v0,0xc
    8f94:	05800005 	bltz	t4,8fac <func_80A64150+0x14c>
    8f98:	00026980 	sll	t5,v0,0x6
    8f9c:	05a20004 	bltzl	t5,8fb0 <func_80A64150+0x150>
    8fa0:	00001025 	move	v0,zero
    8fa4:	10000002 	b	8fb0 <func_80A64150+0x150>
    8fa8:	24020001 	li	v0,1
    8fac:	00001025 	move	v0,zero
    8fb0:	1440000b 	bnez	v0,8fe0 <func_80A64150+0x180>
    8fb4:	24044845 	li	a0,18501
    8fb8:	3c0e0000 	lui	t6,0x0
    8fbc:	3c0f0000 	lui	t7,0x0
    8fc0:	25ef0000 	addiu	t7,t7,0
    8fc4:	25c70000 	addiu	a3,t6,0
    8fc8:	3c050000 	lui	a1,0x0
    8fcc:	24a50000 	addiu	a1,a1,0
    8fd0:	afa70010 	sw	a3,16(sp)
    8fd4:	afaf0014 	sw	t7,20(sp)
    8fd8:	0c000000 	jal	0 <func_80A5B2F0>
    8fdc:	24060004 	li	a2,4
    8fe0:	8e180240 	lw	t8,576(s0)
    8fe4:	24010008 	li	at,8
    8fe8:	5701001f 	bnel	t8,at,9068 <func_80A64150+0x208>
    8fec:	8fae002c 	lw	t6,44(sp)
    8ff0:	0c000000 	jal	0 <func_80A5B2F0>
    8ff4:	00000000 	nop
    8ff8:	3c013e80 	lui	at,0x3e80
    8ffc:	44812000 	mtc1	at,$f4
    9000:	00000000 	nop
    9004:	4604003c 	c.lt.s	$f0,$f4
    9008:	00000000 	nop
    900c:	45020016 	bc1fl	9068 <func_80A64150+0x208>
    9010:	8fae002c 	lw	t6,44(sp)
    9014:	8e080228 	lw	t0,552(s0)
    9018:	2605021c 	addiu	a1,s0,540
    901c:	3c0b0000 	lui	t3,0x0
    9020:	aca80000 	sw	t0,0(a1)
    9024:	8e19022c 	lw	t9,556(s0)
    9028:	3c0c0000 	lui	t4,0x0
    902c:	258c0000 	addiu	t4,t4,0
    9030:	acb90004 	sw	t9,4(a1)
    9034:	8e080230 	lw	t0,560(s0)
    9038:	25670000 	addiu	a3,t3,0
    903c:	24042805 	li	a0,10245
    9040:	aca80008 	sw	t0,8(a1)
    9044:	8e0901f0 	lw	t1,496(s0)
    9048:	24060004 	li	a2,4
    904c:	00095100 	sll	t2,t1,0x4
    9050:	05430005 	bgezl	t2,9068 <func_80A64150+0x208>
    9054:	8fae002c 	lw	t6,44(sp)
    9058:	afa70010 	sw	a3,16(sp)
    905c:	0c000000 	jal	0 <func_80A5B2F0>
    9060:	afac0014 	sw	t4,20(sp)
    9064:	8fae002c 	lw	t6,44(sp)
    9068:	920d0238 	lbu	t5,568(s0)
    906c:	3c010001 	lui	at,0x1
    9070:	002e0821 	addu	at,at,t6
    9074:	a02d072a 	sb	t5,1834(at)
    9078:	8fbf0024 	lw	ra,36(sp)
    907c:	8fb00020 	lw	s0,32(sp)
    9080:	27bd0028 	addiu	sp,sp,40
    9084:	03e00008 	jr	ra
    9088:	00000000 	nop

0000908c <func_80A6437C>:
    908c:	27bdffd0 	addiu	sp,sp,-48
    9090:	afbf001c 	sw	ra,28(sp)
    9094:	afb00018 	sw	s0,24(sp)
    9098:	00808025 	move	s0,a0
    909c:	0c000000 	jal	0 <func_80A5B2F0>
    90a0:	8ca51c44 	lw	a1,7236(a1)
    90a4:	860e0032 	lh	t6,50(s0)
    90a8:	004e2023 	subu	a0,v0,t6
    90ac:	00042400 	sll	a0,a0,0x10
    90b0:	00042403 	sra	a0,a0,0x10
    90b4:	0c000000 	jal	0 <func_80A5B2F0>
    90b8:	a7a4002a 	sh	a0,42(sp)
    90bc:	87a4002a 	lh	a0,42(sp)
    90c0:	0c000000 	jal	0 <func_80A5B2F0>
    90c4:	e7a00024 	swc1	$f0,36(sp)
    90c8:	3c010000 	lui	at,0x0
    90cc:	c7a20024 	lwc1	$f2,36(sp)
    90d0:	c4240000 	lwc1	$f4,0(at)
    90d4:	240f0005 	li	t7,5
    90d8:	3c010000 	lui	at,0x0
    90dc:	4602203c 	c.lt.s	$f4,$f2
    90e0:	00000000 	nop
    90e4:	45000003 	bc1f	90f4 <func_80A6437C+0x68>
    90e8:	00000000 	nop
    90ec:	10000023 	b	917c <func_80A6437C+0xf0>
    90f0:	ae0f0370 	sw	t7,880(s0)
    90f4:	c4260000 	lwc1	$f6,0(at)
    90f8:	24180004 	li	t8,4
    90fc:	4606103c 	c.lt.s	$f2,$f6
    9100:	00000000 	nop
    9104:	45020004 	bc1fl	9118 <func_80A6437C+0x8c>
    9108:	44804000 	mtc1	zero,$f8
    910c:	1000001b 	b	917c <func_80A6437C+0xf0>
    9110:	ae180370 	sw	t8,880(s0)
    9114:	44804000 	mtc1	zero,$f8
    9118:	00000000 	nop
    911c:	4600403c 	c.lt.s	$f8,$f0
    9120:	00000000 	nop
    9124:	4502000c 	bc1fl	9158 <func_80A6437C+0xcc>
    9128:	44808000 	mtc1	zero,$f16
    912c:	44805000 	mtc1	zero,$f10
    9130:	24190001 	li	t9,1
    9134:	4602503c 	c.lt.s	$f10,$f2
    9138:	00000000 	nop
    913c:	45000003 	bc1f	914c <func_80A6437C+0xc0>
    9140:	00000000 	nop
    9144:	1000000d 	b	917c <func_80A6437C+0xf0>
    9148:	ae190370 	sw	t9,880(s0)
    914c:	1000000b 	b	917c <func_80A6437C+0xf0>
    9150:	ae000370 	sw	zero,880(s0)
    9154:	44808000 	mtc1	zero,$f16
    9158:	24080003 	li	t0,3
    915c:	24090002 	li	t1,2
    9160:	4602803c 	c.lt.s	$f16,$f2
    9164:	00000000 	nop
    9168:	45020004 	bc1fl	917c <func_80A6437C+0xf0>
    916c:	ae090370 	sw	t1,880(s0)
    9170:	10000002 	b	917c <func_80A6437C+0xf0>
    9174:	ae080370 	sw	t0,880(s0)
    9178:	ae090370 	sw	t1,880(s0)
    917c:	8fbf001c 	lw	ra,28(sp)
    9180:	8fb00018 	lw	s0,24(sp)
    9184:	27bd0030 	addiu	sp,sp,48
    9188:	03e00008 	jr	ra
    918c:	00000000 	nop

00009190 <func_80A64480>:
    9190:	afa50004 	sw	a1,4(sp)
    9194:	8c8e0208 	lw	t6,520(a0)
    9198:	84980200 	lh	t8,512(a0)
    919c:	848f00b6 	lh	t7,182(a0)
    91a0:	448e3000 	mtc1	t6,$f6
    91a4:	c4840068 	lwc1	$f4,104(a0)
    91a8:	01f81023 	subu	v0,t7,t8
    91ac:	46803220 	cvt.s.w	$f8,$f6
    91b0:	00021400 	sll	v0,v0,0x10
    91b4:	00021403 	sra	v0,v0,0x10
    91b8:	44825000 	mtc1	v0,$f10
    91bc:	3c0142c8 	lui	at,0x42c8
    91c0:	44817000 	mtc1	at,$f14
    91c4:	46082083 	div.s	$f2,$f4,$f8
    91c8:	3c010000 	lui	at,0x0
    91cc:	c4320000 	lwc1	$f18,0(at)
    91d0:	3c010000 	lui	at,0x0
    91d4:	46805420 	cvt.s.w	$f16,$f10
    91d8:	c4240000 	lwc1	$f4,0(at)
    91dc:	84850034 	lh	a1,52(a0)
    91e0:	46128183 	div.s	$f6,$f16,$f18
    91e4:	46022202 	mul.s	$f8,$f4,$f2
    91e8:	00000000 	nop
    91ec:	46064282 	mul.s	$f10,$f8,$f6
    91f0:	4600540d 	trunc.w.s	$f16,$f10
    91f4:	44038000 	mfc1	v1,$f16
    91f8:	00000000 	nop
    91fc:	00031c00 	sll	v1,v1,0x10
    9200:	00031c03 	sra	v1,v1,0x10
    9204:	00031823 	negu	v1,v1
    9208:	44832000 	mtc1	v1,$f4
    920c:	00654023 	subu	t0,v1,a1
    9210:	44889000 	mtc1	t0,$f18
    9214:	46802020 	cvt.s.w	$f0,$f4
    9218:	46809320 	cvt.s.w	$f12,$f18
    921c:	46000005 	abs.s	$f0,$f0
    9220:	460e003c 	c.lt.s	$f0,$f14
    9224:	00000000 	nop
    9228:	45000003 	bc1f	9238 <func_80A64480+0xa8>
    922c:	00000000 	nop
    9230:	10000012 	b	927c <func_80A64480+0xec>
    9234:	a4800034 	sh	zero,52(a0)
    9238:	46006005 	abs.s	$f0,$f12
    923c:	460e003c 	c.lt.s	$f0,$f14
    9240:	00000000 	nop
    9244:	45020004 	bc1fl	9258 <func_80A64480+0xc8>
    9248:	44804000 	mtc1	zero,$f8
    924c:	1000000b 	b	927c <func_80A64480+0xec>
    9250:	a4830034 	sh	v1,52(a0)
    9254:	44804000 	mtc1	zero,$f8
    9258:	24a90064 	addiu	t1,a1,100
    925c:	24aaff9c 	addiu	t2,a1,-100
    9260:	460c403c 	c.lt.s	$f8,$f12
    9264:	00000000 	nop
    9268:	45020004 	bc1fl	927c <func_80A64480+0xec>
    926c:	a48a0034 	sh	t2,52(a0)
    9270:	10000002 	b	927c <func_80A64480+0xec>
    9274:	a4890034 	sh	t1,52(a0)
    9278:	a48a0034 	sh	t2,52(a0)
    927c:	848b0034 	lh	t3,52(a0)
    9280:	03e00008 	jr	ra
    9284:	a48b00b8 	sh	t3,184(a0)

00009288 <func_80A64578>:
    9288:	27bdffd8 	addiu	sp,sp,-40
    928c:	afbf0014 	sw	ra,20(sp)
    9290:	afa5002c 	sw	a1,44(sp)
    9294:	8c8f0078 	lw	t7,120(a0)
    9298:	8ca21c44 	lw	v0,7236(a1)
    929c:	00803825 	move	a3,a0
    92a0:	15e00006 	bnez	t7,92bc <func_80A64578+0x34>
    92a4:	afaf001c 	sw	t7,28(sp)
    92a8:	8c590440 	lw	t9,1088(v0)
    92ac:	50990004 	beql	a0,t9,92c0 <func_80A64578+0x38>
    92b0:	8fa4002c 	lw	a0,44(sp)
    92b4:	10000031 	b	937c <func_80A64578+0xf4>
    92b8:	00001025 	move	v0,zero
    92bc:	8fa4002c 	lw	a0,44(sp)
    92c0:	90e6007d 	lbu	a2,125(a3)
    92c4:	afa70028 	sw	a3,40(sp)
    92c8:	8fa5001c 	lw	a1,28(sp)
    92cc:	0c000000 	jal	0 <func_80A5B2F0>
    92d0:	248407c0 	addiu	a0,a0,1984
    92d4:	8fa70028 	lw	a3,40(sp)
    92d8:	00025280 	sll	t2,v0,0xa
    92dc:	3c014448 	lui	at,0x4448
    92e0:	84e30032 	lh	v1,50(a3)
    92e4:	44811000 	mtc1	at,$f2
    92e8:	3c01c448 	lui	at,0xc448
    92ec:	01432023 	subu	a0,t2,v1
    92f0:	00042400 	sll	a0,a0,0x10
    92f4:	00042403 	sra	a0,a0,0x10
    92f8:	44842000 	mtc1	a0,$f4
    92fc:	00000000 	nop
    9300:	46802020 	cvt.s.w	$f0,$f4
    9304:	4600103c 	c.lt.s	$f2,$f0
    9308:	00000000 	nop
    930c:	4502000a 	bc1fl	9338 <func_80A64578+0xb0>
    9310:	44819000 	mtc1	at,$f18
    9314:	44833000 	mtc1	v1,$f6
    9318:	00000000 	nop
    931c:	46803220 	cvt.s.w	$f8,$f6
    9320:	46024280 	add.s	$f10,$f8,$f2
    9324:	4600540d 	trunc.w.s	$f16,$f10
    9328:	440c8000 	mfc1	t4,$f16
    932c:	10000010 	b	9370 <func_80A64578+0xe8>
    9330:	a4ec0032 	sh	t4,50(a3)
    9334:	44819000 	mtc1	at,$f18
    9338:	00647821 	addu	t7,v1,a0
    933c:	4612003c 	c.lt.s	$f0,$f18
    9340:	00000000 	nop
    9344:	4502000a 	bc1fl	9370 <func_80A64578+0xe8>
    9348:	a4ef0032 	sh	t7,50(a3)
    934c:	44832000 	mtc1	v1,$f4
    9350:	00000000 	nop
    9354:	468021a0 	cvt.s.w	$f6,$f4
    9358:	46023201 	sub.s	$f8,$f6,$f2
    935c:	4600428d 	trunc.w.s	$f10,$f8
    9360:	440e5000 	mfc1	t6,$f10
    9364:	10000002 	b	9370 <func_80A64578+0xe8>
    9368:	a4ee0032 	sh	t6,50(a3)
    936c:	a4ef0032 	sh	t7,50(a3)
    9370:	84f80032 	lh	t8,50(a3)
    9374:	24020001 	li	v0,1
    9378:	a4f800b6 	sh	t8,182(a3)
    937c:	8fbf0014 	lw	ra,20(sp)
    9380:	27bd0028 	addiu	sp,sp,40
    9384:	03e00008 	jr	ra
    9388:	00000000 	nop

0000938c <func_80A6467C>:
    938c:	27bdffe8 	addiu	sp,sp,-24
    9390:	afbf0014 	sw	ra,20(sp)
    9394:	0c000000 	jal	0 <func_80A5B2F0>
    9398:	e7ac0018 	swc1	$f12,24(sp)
    939c:	c7a40018 	lwc1	$f4,24(sp)
    93a0:	8fbf0014 	lw	ra,20(sp)
    93a4:	27bd0018 	addiu	sp,sp,24
    93a8:	46040182 	mul.s	$f6,$f0,$f4
    93ac:	4600320d 	trunc.w.s	$f8,$f6
    93b0:	44024000 	mfc1	v0,$f8
    93b4:	03e00008 	jr	ra
    93b8:	00000000 	nop

000093bc <EnHorse_Update>:
    93bc:	27bdff90 	addiu	sp,sp,-112
    93c0:	3c0f0000 	lui	t7,0x0
    93c4:	afbf002c 	sw	ra,44(sp)
    93c8:	afb00028 	sw	s0,40(sp)
    93cc:	25ef0000 	addiu	t7,t7,0
    93d0:	8df90000 	lw	t9,0(t7)
    93d4:	27ae005c 	addiu	t6,sp,92
    93d8:	8df80004 	lw	t8,4(t7)
    93dc:	add90000 	sw	t9,0(t6)
    93e0:	8df90008 	lw	t9,8(t7)
    93e4:	3c090000 	lui	t1,0x0
    93e8:	25290000 	addiu	t1,t1,0
    93ec:	add80004 	sw	t8,4(t6)
    93f0:	add90008 	sw	t9,8(t6)
    93f4:	8d2b0000 	lw	t3,0(t1)
    93f8:	27a80050 	addiu	t0,sp,80
    93fc:	8d2a0004 	lw	t2,4(t1)
    9400:	ad0b0000 	sw	t3,0(t0)
    9404:	8d2b0008 	lw	t3,8(t1)
    9408:	ad0a0004 	sw	t2,4(t0)
    940c:	00808025 	move	s0,a0
    9410:	ad0b0008 	sw	t3,8(t0)
    9414:	8cac1c44 	lw	t4,7236(a1)
    9418:	afac004c 	sw	t4,76(sp)
    941c:	848d00b6 	lh	t5,182(a0)
    9420:	a48d0200 	sh	t5,512(a0)
    9424:	0c000000 	jal	0 <func_80A5B2F0>
    9428:	afa50074 	sw	a1,116(sp)
    942c:	02002025 	move	a0,s0
    9430:	0c000000 	jal	0 <func_80A5B2F0>
    9434:	8fa50074 	lw	a1,116(sp)
    9438:	8e0201f0 	lw	v0,496(s0)
    943c:	02002025 	move	a0,s0
    9440:	304e2000 	andi	t6,v0,0x2000
    9444:	55c00005 	bnezl	t6,945c <EnHorse_Update+0xa0>
    9448:	00027b00 	sll	t7,v0,0xc
    944c:	0c000000 	jal	0 <func_80A5B2F0>
    9450:	8fa50074 	lw	a1,116(sp)
    9454:	8e0201f0 	lw	v0,496(s0)
    9458:	00027b00 	sll	t7,v0,0xc
    945c:	05e10020 	bgez	t7,94e0 <EnHorse_Update+0x124>
    9460:	3c010010 	lui	at,0x10
    9464:	00411824 	and	v1,v0,at
    9468:	1060000c 	beqz	v1,949c <EnHorse_Update+0xe0>
    946c:	00000000 	nop
    9470:	8e180388 	lw	t8,904(s0)
    9474:	24010001 	li	at,1
    9478:	02002025 	move	a0,s0
    947c:	17010007 	bne	t8,at,949c <EnHorse_Update+0xe0>
    9480:	3c01ffef 	lui	at,0xffef
    9484:	3421ffff 	ori	at,at,0xffff
    9488:	0041c824 	and	t9,v0,at
    948c:	0c000000 	jal	0 <func_80A5B2F0>
    9490:	ae1901f0 	sw	t9,496(s0)
    9494:	10000013 	b	94e4 <EnHorse_Update+0x128>
    9498:	8e0c014c 	lw	t4,332(s0)
    949c:	14600010 	bnez	v1,94e0 <EnHorse_Update+0x124>
    94a0:	00024280 	sll	t0,v0,0xa
    94a4:	0503000f 	bgezl	t0,94e4 <EnHorse_Update+0x128>
    94a8:	8e0c014c 	lw	t4,332(s0)
    94ac:	8e09014c 	lw	t1,332(s0)
    94b0:	2401000b 	li	at,11
    94b4:	5121000b 	beql	t1,at,94e4 <EnHorse_Update+0x128>
    94b8:	8e0c014c 	lw	t4,332(s0)
    94bc:	8e0a0388 	lw	t2,904(s0)
    94c0:	24010001 	li	at,1
    94c4:	02002025 	move	a0,s0
    94c8:	15410005 	bne	t2,at,94e0 <EnHorse_Update+0x124>
    94cc:	3c01ffdf 	lui	at,0xffdf
    94d0:	3421ffff 	ori	at,at,0xffff
    94d4:	00415824 	and	t3,v0,at
    94d8:	0c000000 	jal	0 <func_80A5B2F0>
    94dc:	ae0b01f0 	sw	t3,496(s0)
    94e0:	8e0c014c 	lw	t4,332(s0)
    94e4:	3c190000 	lui	t9,0x0
    94e8:	02002025 	move	a0,s0
    94ec:	000c6880 	sll	t5,t4,0x2
    94f0:	032dc821 	addu	t9,t9,t5
    94f4:	8f390000 	lw	t9,0(t9)
    94f8:	8fa50074 	lw	a1,116(sp)
    94fc:	0320f809 	jalr	t9
    9500:	00000000 	nop
    9504:	8e0e01f0 	lw	t6,496(s0)
    9508:	c60401c4 	lwc1	$f4,452(s0)
    950c:	2401bfff 	li	at,-16385
    9510:	01c17824 	and	t7,t6,at
    9514:	ae0f01f0 	sw	t7,496(s0)
    9518:	26180024 	addiu	t8,s0,36
    951c:	e6040214 	swc1	$f4,532(s0)
    9520:	afb8003c 	sw	t8,60(sp)
    9524:	8f0a0000 	lw	t2,0(t8)
    9528:	8e0b01f0 	lw	t3,496(s0)
    952c:	ae0a01f4 	sw	t2,500(s0)
    9530:	8f090004 	lw	t1,4(t8)
    9534:	316c2000 	andi	t4,t3,0x2000
    9538:	ae0901f8 	sw	t1,504(s0)
    953c:	8f0a0008 	lw	t2,8(t8)
    9540:	158001a3 	bnez	t4,9bd0 <EnHorse_Update+0x814>
    9544:	ae0a01fc 	sw	t2,508(s0)
    9548:	8e02014c 	lw	v0,332(s0)
    954c:	2401000a 	li	at,10
    9550:	10410004 	beq	v0,at,9564 <EnHorse_Update+0x1a8>
    9554:	24010009 	li	at,9
    9558:	10410002 	beq	v0,at,9564 <EnHorse_Update+0x1a8>
    955c:	24010008 	li	at,8
    9560:	14410003 	bne	v0,at,9570 <EnHorse_Update+0x1b4>
    9564:	02002025 	move	a0,s0
    9568:	0c000000 	jal	0 <func_80A5B2F0>
    956c:	8fa50074 	lw	a1,116(sp)
    9570:	8e0d020c 	lw	t5,524(s0)
    9574:	24010001 	li	at,1
    9578:	15a10003 	bne	t5,at,9588 <EnHorse_Update+0x1cc>
    957c:	02002025 	move	a0,s0
    9580:	0c000000 	jal	0 <func_80A5B2F0>
    9584:	8fa50074 	lw	a1,116(sp)
    9588:	0c000000 	jal	0 <func_80A5B2F0>
    958c:	02002025 	move	a0,s0
    9590:	8e19014c 	lw	t9,332(s0)
    9594:	24010004 	li	at,4
    9598:	57210016 	bnel	t9,at,95f4 <EnHorse_Update+0x238>
    959c:	8e0b032c 	lw	t3,812(s0)
    95a0:	8e02038c 	lw	v0,908(s0)
    95a4:	50400013 	beqzl	v0,95f4 <EnHorse_Update+0x238>
    95a8:	8e0b032c 	lw	t3,812(s0)
    95ac:	c6060024 	lwc1	$f6,36(s0)
    95b0:	3c014120 	lui	at,0x4120
    95b4:	44815000 	mtc1	at,$f10
    95b8:	e4460024 	swc1	$f6,36(v0)
    95bc:	c6080028 	lwc1	$f8,40(s0)
    95c0:	8e0e038c 	lw	t6,908(s0)
    95c4:	460a4400 	add.s	$f16,$f8,$f10
    95c8:	e5d00028 	swc1	$f16,40(t6)
    95cc:	8e0f038c 	lw	t7,908(s0)
    95d0:	c612002c 	lwc1	$f18,44(s0)
    95d4:	e5f2002c 	swc1	$f18,44(t7)
    95d8:	8e08038c 	lw	t0,908(s0)
    95dc:	861800b4 	lh	t8,180(s0)
    95e0:	a51800b4 	sh	t8,180(t0)
    95e4:	8e0a038c 	lw	t2,908(s0)
    95e8:	860900b6 	lh	t1,182(s0)
    95ec:	a54900b6 	sh	t1,182(t2)
    95f0:	8e0b032c 	lw	t3,812(s0)
    95f4:	916c0017 	lbu	t4,23(t3)
    95f8:	318d0002 	andi	t5,t4,0x2
    95fc:	11a0000c 	beqz	t5,9630 <EnHorse_Update+0x274>
    9600:	3c0140c0 	lui	at,0x40c0
    9604:	44812000 	mtc1	at,$f4
    9608:	c6000068 	lwc1	$f0,104(s0)
    960c:	3c013f80 	lui	at,0x3f80
    9610:	4600203c 	c.lt.s	$f4,$f0
    9614:	00000000 	nop
    9618:	45020006 	bc1fl	9634 <EnHorse_Update+0x278>
    961c:	92190321 	lbu	t9,801(s0)
    9620:	44813000 	mtc1	at,$f6
    9624:	00000000 	nop
    9628:	46060201 	sub.s	$f8,$f0,$f6
    962c:	e6080068 	swc1	$f8,104(s0)
    9630:	92190321 	lbu	t9,801(s0)
    9634:	332e0002 	andi	t6,t9,0x2
    9638:	51c00016 	beqzl	t6,9694 <EnHorse_Update+0x2d8>
    963c:	8e0b014c 	lw	t3,332(s0)
    9640:	8e180228 	lw	t8,552(s0)
    9644:	2605021c 	addiu	a1,s0,540
    9648:	3c070000 	lui	a3,0x0
    964c:	acb80000 	sw	t8,0(a1)
    9650:	8e0f022c 	lw	t7,556(s0)
    9654:	3c0a0000 	lui	t2,0x0
    9658:	24e70000 	addiu	a3,a3,0
    965c:	acaf0004 	sw	t7,4(a1)
    9660:	8e180230 	lw	t8,560(s0)
    9664:	254a0000 	addiu	t2,t2,0
    9668:	24042805 	li	a0,10245
    966c:	acb80008 	sw	t8,8(a1)
    9670:	8e0801f0 	lw	t0,496(s0)
    9674:	24060004 	li	a2,4
    9678:	00084900 	sll	t1,t0,0x4
    967c:	05230005 	bgezl	t1,9694 <EnHorse_Update+0x2d8>
    9680:	8e0b014c 	lw	t3,332(s0)
    9684:	afa70010 	sw	a3,16(sp)
    9688:	0c000000 	jal	0 <func_80A5B2F0>
    968c:	afaa0014 	sw	t2,20(sp)
    9690:	8e0b014c 	lw	t3,332(s0)
    9694:	24010004 	li	at,4
    9698:	11610003 	beq	t3,at,96a8 <EnHorse_Update+0x2ec>
    969c:	02002025 	move	a0,s0
    96a0:	0c000000 	jal	0 <func_80A5B2F0>
    96a4:	8fa50074 	lw	a1,116(sp)
    96a8:	26050278 	addiu	a1,s0,632
    96ac:	afa50030 	sw	a1,48(sp)
    96b0:	0c000000 	jal	0 <func_80A5B2F0>
    96b4:	02002025 	move	a0,s0
    96b8:	260502c4 	addiu	a1,s0,708
    96bc:	afa50034 	sw	a1,52(sp)
    96c0:	0c000000 	jal	0 <func_80A5B2F0>
    96c4:	02002025 	move	a0,s0
    96c8:	0c000000 	jal	0 <func_80A5B2F0>
    96cc:	860400b6 	lh	a0,182(s0)
    96d0:	3c014130 	lui	at,0x4130
    96d4:	44815000 	mtc1	at,$f10
    96d8:	860f02be 	lh	t7,702(s0)
    96dc:	860400b6 	lh	a0,182(s0)
    96e0:	460a0402 	mul.s	$f16,$f0,$f10
    96e4:	4600848d 	trunc.w.s	$f18,$f16
    96e8:	440e9000 	mfc1	t6,$f18
    96ec:	00000000 	nop
    96f0:	01cfc021 	addu	t8,t6,t7
    96f4:	0c000000 	jal	0 <func_80A5B2F0>
    96f8:	a61802be 	sh	t8,702(s0)
    96fc:	3c014130 	lui	at,0x4130
    9700:	44812000 	mtc1	at,$f4
    9704:	860c02c2 	lh	t4,706(s0)
    9708:	860400b6 	lh	a0,182(s0)
    970c:	46040182 	mul.s	$f6,$f0,$f4
    9710:	4600320d 	trunc.w.s	$f8,$f6
    9714:	440b4000 	mfc1	t3,$f8
    9718:	00000000 	nop
    971c:	016c6821 	addu	t5,t3,t4
    9720:	0c000000 	jal	0 <func_80A5B2F0>
    9724:	a60d02c2 	sh	t5,706(s0)
    9728:	3c01c190 	lui	at,0xc190
    972c:	44815000 	mtc1	at,$f10
    9730:	8608030a 	lh	t0,778(s0)
    9734:	860400b6 	lh	a0,182(s0)
    9738:	460a0402 	mul.s	$f16,$f0,$f10
    973c:	4600848d 	trunc.w.s	$f18,$f16
    9740:	44189000 	mfc1	t8,$f18
    9744:	00000000 	nop
    9748:	03084821 	addu	t1,t8,t0
    974c:	0c000000 	jal	0 <func_80A5B2F0>
    9750:	a609030a 	sh	t1,778(s0)
    9754:	3c01c190 	lui	at,0xc190
    9758:	44812000 	mtc1	at,$f4
    975c:	8619030e 	lh	t9,782(s0)
    9760:	8fa40074 	lw	a0,116(sp)
    9764:	46040182 	mul.s	$f6,$f0,$f4
    9768:	3c010001 	lui	at,0x1
    976c:	34211e60 	ori	at,at,0x1e60
    9770:	00812821 	addu	a1,a0,at
    9774:	4600320d 	trunc.w.s	$f8,$f6
    9778:	440d4000 	mfc1	t5,$f8
    977c:	00000000 	nop
    9780:	01b97021 	addu	t6,t5,t9
    9784:	a60e030e 	sh	t6,782(s0)
    9788:	afa50038 	sw	a1,56(sp)
    978c:	0c000000 	jal	0 <func_80A5B2F0>
    9790:	8fa60030 	lw	a2,48(sp)
    9794:	8fa40074 	lw	a0,116(sp)
    9798:	8fa50038 	lw	a1,56(sp)
    979c:	0c000000 	jal	0 <func_80A5B2F0>
    97a0:	8fa60030 	lw	a2,48(sp)
    97a4:	8fa40074 	lw	a0,116(sp)
    97a8:	8fa50038 	lw	a1,56(sp)
    97ac:	0c000000 	jal	0 <func_80A5B2F0>
    97b0:	8fa60034 	lw	a2,52(sp)
    97b4:	8fa3004c 	lw	v1,76(sp)
    97b8:	8c6f067c 	lw	t7,1660(v1)
    97bc:	31f80001 	andi	t8,t7,0x1
    97c0:	53000015 	beqzl	t8,9818 <EnHorse_Update+0x45c>
    97c4:	8e0201f0 	lw	v0,496(s0)
    97c8:	8c680440 	lw	t0,1088(v1)
    97cc:	8fa50074 	lw	a1,116(sp)
    97d0:	51000011 	beqzl	t0,9818 <EnHorse_Update+0x45c>
    97d4:	8e0201f0 	lw	v0,496(s0)
    97d8:	84a200a4 	lh	v0,164(a1)
    97dc:	24030063 	li	v1,99
    97e0:	1462000a 	bne	v1,v0,980c <EnHorse_Update+0x450>
    97e4:	00000000 	nop
    97e8:	1462000a 	bne	v1,v0,9814 <EnHorse_Update+0x458>
    97ec:	3c01c516 	lui	at,0xc516
    97f0:	c60a002c 	lwc1	$f10,44(s0)
    97f4:	44818000 	mtc1	at,$f16
    97f8:	00000000 	nop
    97fc:	4610503c 	c.lt.s	$f10,$f16
    9800:	00000000 	nop
    9804:	45020004 	bc1fl	9818 <EnHorse_Update+0x45c>
    9808:	8e0201f0 	lw	v0,496(s0)
    980c:	0c000000 	jal	0 <func_80A5B2F0>
    9810:	02002025 	move	a0,s0
    9814:	8e0201f0 	lw	v0,496(s0)
    9818:	3c01feff 	lui	at,0xfeff
    981c:	8fa50074 	lw	a1,116(sp)
    9820:	000249c0 	sll	t1,v0,0x7
    9824:	0520001a 	bltz	t1,9890 <EnHorse_Update+0x4d4>
    9828:	3421ffff 	ori	at,at,0xffff
    982c:	0c000000 	jal	0 <func_80A5B2F0>
    9830:	02002025 	move	a0,s0
    9834:	02002025 	move	a0,s0
    9838:	0c000000 	jal	0 <func_80A5B2F0>
    983c:	8fa50074 	lw	a1,116(sp)
    9840:	c60c0028 	lwc1	$f12,40(s0)
    9844:	c6000248 	lwc1	$f0,584(s0)
    9848:	4600603c 	c.lt.s	$f12,$f0
    984c:	00000000 	nop
    9850:	4500000d 	bc1f	9888 <EnHorse_Update+0x4cc>
    9854:	00000000 	nop
    9858:	c602024c 	lwc1	$f2,588(s0)
    985c:	4602603c 	c.lt.s	$f12,$f2
    9860:	00000000 	nop
    9864:	45000008 	bc1f	9888 <EnHorse_Update+0x4cc>
    9868:	00000000 	nop
    986c:	4600103c 	c.lt.s	$f2,$f0
    9870:	00000000 	nop
    9874:	45020004 	bc1fl	9888 <EnHorse_Update+0x4cc>
    9878:	e6000028 	swc1	$f0,40(s0)
    987c:	10000002 	b	9888 <EnHorse_Update+0x4cc>
    9880:	e6020028 	swc1	$f2,40(s0)
    9884:	e6000028 	swc1	$f0,40(s0)
    9888:	10000003 	b	9898 <EnHorse_Update+0x4dc>
    988c:	8fa50074 	lw	a1,116(sp)
    9890:	00415024 	and	t2,v0,at
    9894:	ae0a01f0 	sw	t2,496(s0)
    9898:	84ab00a4 	lh	t3,164(a1)
    989c:	2401005a 	li	at,90
    98a0:	3c0c0000 	lui	t4,0x0
    98a4:	55610009 	bnel	t3,at,98cc <EnHorse_Update+0x510>
    98a8:	8fb9003c 	lw	t9,60(sp)
    98ac:	958c0ee6 	lhu	t4,3814(t4)
    98b0:	2401000f 	li	at,15
    98b4:	318d000f 	andi	t5,t4,0xf
    98b8:	51a10004 	beql	t5,at,98cc <EnHorse_Update+0x510>
    98bc:	8fb9003c 	lw	t9,60(sp)
    98c0:	0c000000 	jal	0 <func_80A5B2F0>
    98c4:	02002025 	move	a0,s0
    98c8:	8fb9003c 	lw	t9,60(sp)
    98cc:	3c01428c 	lui	at,0x428c
    98d0:	44812000 	mtc1	at,$f4
    98d4:	8f2f0000 	lw	t7,0(t9)
    98d8:	ae0f0038 	sw	t7,56(s0)
    98dc:	8f2e0004 	lw	t6,4(t9)
    98e0:	ae0e003c 	sw	t6,60(s0)
    98e4:	c612003c 	lwc1	$f18,60(s0)
    98e8:	8f2f0008 	lw	t7,8(t9)
    98ec:	46049180 	add.s	$f6,$f18,$f4
    98f0:	ae0f0040 	sw	t7,64(s0)
    98f4:	0c000000 	jal	0 <func_80A5B2F0>
    98f8:	e606003c 	swc1	$f6,60(s0)
    98fc:	3c010000 	lui	at,0x0
    9900:	c4280000 	lwc1	$f8,0(at)
    9904:	44805000 	mtc1	zero,$f10
    9908:	240d00fe 	li	t5,254
    990c:	4608003c 	c.lt.s	$f0,$f8
    9910:	00000000 	nop
    9914:	45020007 	bc1fl	9934 <EnHorse_Update+0x578>
    9918:	9202037a 	lbu	v0,890(s0)
    991c:	9202037a 	lbu	v0,890(s0)
    9920:	14400003 	bnez	v0,9930 <EnHorse_Update+0x574>
    9924:	24580001 	addiu	t8,v0,1
    9928:	10000009 	b	9950 <EnHorse_Update+0x594>
    992c:	a218037a 	sb	t8,890(s0)
    9930:	9202037a 	lbu	v0,890(s0)
    9934:	18400006 	blez	v0,9950 <EnHorse_Update+0x594>
    9938:	24480001 	addiu	t0,v0,1
    993c:	310900ff 	andi	t1,t0,0xff
    9940:	29210004 	slti	at,t1,4
    9944:	14200002 	bnez	at,9950 <EnHorse_Update+0x594>
    9948:	a208037a 	sb	t0,890(s0)
    994c:	a200037a 	sb	zero,890(s0)
    9950:	c6100068 	lwc1	$f16,104(s0)
    9954:	3c0140a0 	lui	at,0x40a0
    9958:	44812000 	mtc1	at,$f4
    995c:	46105032 	c.eq.s	$f10,$f16
    9960:	3c080000 	lui	t0,0x0
    9964:	3c090000 	lui	t1,0x0
    9968:	45020009 	bc1fl	9990 <EnHorse_Update+0x5d4>
    996c:	a20d00ae 	sb	t5,174(s0)
    9970:	8e0a01f0 	lw	t2,496(s0)
    9974:	240c00ff 	li	t4,255
    9978:	000a5b00 	sll	t3,t2,0xc
    997c:	05620004 	bltzl	t3,9990 <EnHorse_Update+0x5d4>
    9980:	a20d00ae 	sb	t5,174(s0)
    9984:	10000002 	b	9990 <EnHorse_Update+0x5d4>
    9988:	a20c00ae 	sb	t4,174(s0)
    998c:	a20d00ae 	sb	t5,174(s0)
    9990:	c6120068 	lwc1	$f18,104(s0)
    9994:	4612203e 	c.le.s	$f4,$f18
    9998:	00000000 	nop
    999c:	45020006 	bc1fl	99b8 <EnHorse_Update+0x5fc>
    99a0:	920f0288 	lbu	t7,648(s0)
    99a4:	92190288 	lbu	t9,648(s0)
    99a8:	372e0001 	ori	t6,t9,0x1
    99ac:	10000004 	b	99c0 <EnHorse_Update+0x604>
    99b0:	a20e0288 	sb	t6,648(s0)
    99b4:	920f0288 	lbu	t7,648(s0)
    99b8:	31f8fffe 	andi	t8,t7,0xfffe
    99bc:	a2180288 	sb	t8,648(s0)
    99c0:	8d080000 	lw	t0,0(t0)
    99c4:	24010157 	li	at,343
    99c8:	55010006 	bnel	t0,at,99e4 <EnHorse_Update+0x628>
    99cc:	960203c8 	lhu	v0,968(s0)
    99d0:	8d291360 	lw	t1,4960(t1)
    99d4:	24010009 	li	at,9
    99d8:	51210079 	beql	t1,at,9bc0 <EnHorse_Update+0x804>
    99dc:	8e0801f0 	lw	t0,496(s0)
    99e0:	960203c8 	lhu	v0,968(s0)
    99e4:	3c0142c8 	lui	at,0x42c8
    99e8:	304a0001 	andi	t2,v0,0x1
    99ec:	1140001c 	beqz	t2,9a60 <EnHorse_Update+0x6a4>
    99f0:	30580002 	andi	t8,v0,0x2
    99f4:	304bfffe 	andi	t3,v0,0xfffe
    99f8:	44816000 	mtc1	at,$f12
    99fc:	0c000000 	jal	0 <func_80A5B2F0>
    9a00:	a60b03c8 	sh	t3,968(s0)
    9a04:	3c014120 	lui	at,0x4120
    9a08:	44816000 	mtc1	at,$f12
    9a0c:	0c000000 	jal	0 <func_80A5B2F0>
    9a10:	afa20040 	sw	v0,64(sp)
    9a14:	3c0141a0 	lui	at,0x41a0
    9a18:	44816000 	mtc1	at,$f12
    9a1c:	0c000000 	jal	0 <func_80A5B2F0>
    9a20:	afa20044 	sw	v0,68(sp)
    9a24:	8fac0040 	lw	t4,64(sp)
    9a28:	8fb90044 	lw	t9,68(sp)
    9a2c:	244f001e 	addiu	t7,v0,30
    9a30:	258d00c8 	addiu	t5,t4,200
    9a34:	272e001e 	addiu	t6,t9,30
    9a38:	afae0014 	sw	t6,20(sp)
    9a3c:	afad0010 	sw	t5,16(sp)
    9a40:	afaf0018 	sw	t7,24(sp)
    9a44:	8fa40074 	lw	a0,116(sp)
    9a48:	260503cc 	addiu	a1,s0,972
    9a4c:	27a60050 	addiu	a2,sp,80
    9a50:	0c000000 	jal	0 <func_80A5B2F0>
    9a54:	27a7005c 	addiu	a3,sp,92
    9a58:	10000059 	b	9bc0 <EnHorse_Update+0x804>
    9a5c:	8e0801f0 	lw	t0,496(s0)
    9a60:	1300001d 	beqz	t8,9ad8 <EnHorse_Update+0x71c>
    9a64:	30590004 	andi	t9,v0,0x4
    9a68:	3c0142c8 	lui	at,0x42c8
    9a6c:	3048fffd 	andi	t0,v0,0xfffd
    9a70:	44816000 	mtc1	at,$f12
    9a74:	0c000000 	jal	0 <func_80A5B2F0>
    9a78:	a60803c8 	sh	t0,968(s0)
    9a7c:	3c014120 	lui	at,0x4120
    9a80:	44816000 	mtc1	at,$f12
    9a84:	0c000000 	jal	0 <func_80A5B2F0>
    9a88:	afa20040 	sw	v0,64(sp)
    9a8c:	3c0141a0 	lui	at,0x41a0
    9a90:	44816000 	mtc1	at,$f12
    9a94:	0c000000 	jal	0 <func_80A5B2F0>
    9a98:	afa20044 	sw	v0,68(sp)
    9a9c:	8fa90040 	lw	t1,64(sp)
    9aa0:	8fab0044 	lw	t3,68(sp)
    9aa4:	244d001e 	addiu	t5,v0,30
    9aa8:	252a00c8 	addiu	t2,t1,200
    9aac:	256c001e 	addiu	t4,t3,30
    9ab0:	afac0014 	sw	t4,20(sp)
    9ab4:	afaa0010 	sw	t2,16(sp)
    9ab8:	afad0018 	sw	t5,24(sp)
    9abc:	8fa40074 	lw	a0,116(sp)
    9ac0:	260503d8 	addiu	a1,s0,984
    9ac4:	27a60050 	addiu	a2,sp,80
    9ac8:	0c000000 	jal	0 <func_80A5B2F0>
    9acc:	27a7005c 	addiu	a3,sp,92
    9ad0:	1000003b 	b	9bc0 <EnHorse_Update+0x804>
    9ad4:	8e0801f0 	lw	t0,496(s0)
    9ad8:	1320001d 	beqz	t9,9b50 <EnHorse_Update+0x794>
    9adc:	304b0008 	andi	t3,v0,0x8
    9ae0:	3c0142c8 	lui	at,0x42c8
    9ae4:	304efffb 	andi	t6,v0,0xfffb
    9ae8:	44816000 	mtc1	at,$f12
    9aec:	0c000000 	jal	0 <func_80A5B2F0>
    9af0:	a60e03c8 	sh	t6,968(s0)
    9af4:	3c014120 	lui	at,0x4120
    9af8:	44816000 	mtc1	at,$f12
    9afc:	0c000000 	jal	0 <func_80A5B2F0>
    9b00:	afa20040 	sw	v0,64(sp)
    9b04:	3c0141a0 	lui	at,0x41a0
    9b08:	44816000 	mtc1	at,$f12
    9b0c:	0c000000 	jal	0 <func_80A5B2F0>
    9b10:	afa20044 	sw	v0,68(sp)
    9b14:	8faf0040 	lw	t7,64(sp)
    9b18:	8fa80044 	lw	t0,68(sp)
    9b1c:	244a001e 	addiu	t2,v0,30
    9b20:	25f800c8 	addiu	t8,t7,200
    9b24:	2509001e 	addiu	t1,t0,30
    9b28:	afa90014 	sw	t1,20(sp)
    9b2c:	afb80010 	sw	t8,16(sp)
    9b30:	afaa0018 	sw	t2,24(sp)
    9b34:	8fa40074 	lw	a0,116(sp)
    9b38:	260503e4 	addiu	a1,s0,996
    9b3c:	27a60050 	addiu	a2,sp,80
    9b40:	0c000000 	jal	0 <func_80A5B2F0>
    9b44:	27a7005c 	addiu	a3,sp,92
    9b48:	1000001d 	b	9bc0 <EnHorse_Update+0x804>
    9b4c:	8e0801f0 	lw	t0,496(s0)
    9b50:	1160001a 	beqz	t3,9bbc <EnHorse_Update+0x800>
    9b54:	304cfff7 	andi	t4,v0,0xfff7
    9b58:	3c0142c8 	lui	at,0x42c8
    9b5c:	44816000 	mtc1	at,$f12
    9b60:	0c000000 	jal	0 <func_80A5B2F0>
    9b64:	a60c03c8 	sh	t4,968(s0)
    9b68:	3c014120 	lui	at,0x4120
    9b6c:	44816000 	mtc1	at,$f12
    9b70:	0c000000 	jal	0 <func_80A5B2F0>
    9b74:	afa20040 	sw	v0,64(sp)
    9b78:	3c0141a0 	lui	at,0x41a0
    9b7c:	44816000 	mtc1	at,$f12
    9b80:	0c000000 	jal	0 <func_80A5B2F0>
    9b84:	afa20044 	sw	v0,68(sp)
    9b88:	8fad0040 	lw	t5,64(sp)
    9b8c:	8fae0044 	lw	t6,68(sp)
    9b90:	2458001e 	addiu	t8,v0,30
    9b94:	25b900c8 	addiu	t9,t5,200
    9b98:	25cf001e 	addiu	t7,t6,30
    9b9c:	afaf0014 	sw	t7,20(sp)
    9ba0:	afb90010 	sw	t9,16(sp)
    9ba4:	afb80018 	sw	t8,24(sp)
    9ba8:	8fa40074 	lw	a0,116(sp)
    9bac:	260503f0 	addiu	a1,s0,1008
    9bb0:	27a60050 	addiu	a2,sp,80
    9bb4:	0c000000 	jal	0 <func_80A5B2F0>
    9bb8:	27a7005c 	addiu	a3,sp,92
    9bbc:	8e0801f0 	lw	t0,496(s0)
    9bc0:	3c01f7ff 	lui	at,0xf7ff
    9bc4:	3421ffff 	ori	at,at,0xffff
    9bc8:	01014824 	and	t1,t0,at
    9bcc:	ae0901f0 	sw	t1,496(s0)
    9bd0:	8fbf002c 	lw	ra,44(sp)
    9bd4:	8fb00028 	lw	s0,40(sp)
    9bd8:	27bd0070 	addiu	sp,sp,112
    9bdc:	03e00008 	jr	ra
    9be0:	00000000 	nop

00009be4 <func_80A64ED4>:
    9be4:	afa50004 	sw	a1,4(sp)
    9be8:	afa60008 	sw	a2,8(sp)
    9bec:	8c820370 	lw	v0,880(a0)
    9bf0:	24010005 	li	at,5
    9bf4:	54410004 	bnel	v0,at,9c08 <func_80A64ED4+0x24>
    9bf8:	24010004 	li	at,4
    9bfc:	03e00008 	jr	ra
    9c00:	2402ffff 	li	v0,-1
    9c04:	24010004 	li	at,4
    9c08:	54410004 	bnel	v0,at,9c1c <func_80A64ED4+0x38>
    9c0c:	00001025 	move	v0,zero
    9c10:	03e00008 	jr	ra
    9c14:	24020001 	li	v0,1
    9c18:	00001025 	move	v0,zero
    9c1c:	03e00008 	jr	ra
    9c20:	00000000 	nop

00009c24 <func_80A64F14>:
    9c24:	27bdffe0 	addiu	sp,sp,-32
    9c28:	afbf001c 	sw	ra,28(sp)
    9c2c:	afb00018 	sw	s0,24(sp)
    9c30:	afa50024 	sw	a1,36(sp)
    9c34:	00c08025 	move	s0,a2
    9c38:	afa40020 	sw	a0,32(sp)
    9c3c:	0c000000 	jal	0 <func_80A5B2F0>
    9c40:	00c02825 	move	a1,a2
    9c44:	3c014296 	lui	at,0x4296
    9c48:	44812000 	mtc1	at,$f4
    9c4c:	8fa50020 	lw	a1,32(sp)
    9c50:	4600203c 	c.lt.s	$f4,$f0
    9c54:	00000000 	nop
    9c58:	45020004 	bc1fl	9c6c <func_80A64F14+0x48>
    9c5c:	c4a60028 	lwc1	$f6,40(a1)
    9c60:	1000002b 	b	9d10 <func_80A64F14+0xec>
    9c64:	00001025 	move	v0,zero
    9c68:	c4a60028 	lwc1	$f6,40(a1)
    9c6c:	c6080028 	lwc1	$f8,40(s0)
    9c70:	3c0141f0 	lui	at,0x41f0
    9c74:	44815000 	mtc1	at,$f10
    9c78:	46083001 	sub.s	$f0,$f6,$f8
    9c7c:	46000005 	abs.s	$f0,$f0
    9c80:	4600503c 	c.lt.s	$f10,$f0
    9c84:	00000000 	nop
    9c88:	45000003 	bc1f	9c98 <func_80A64F14+0x74>
    9c8c:	00000000 	nop
    9c90:	1000001f 	b	9d10 <func_80A64F14+0xec>
    9c94:	00001025 	move	v0,zero
    9c98:	0c000000 	jal	0 <func_80A5B2F0>
    9c9c:	02002025 	move	a0,s0
    9ca0:	860e0032 	lh	t6,50(s0)
    9ca4:	004e2023 	subu	a0,v0,t6
    9ca8:	00042400 	sll	a0,a0,0x10
    9cac:	0c000000 	jal	0 <func_80A5B2F0>
    9cb0:	00042403 	sra	a0,a0,0x10
    9cb4:	3c010000 	lui	at,0x0
    9cb8:	c4300000 	lwc1	$f16,0(at)
    9cbc:	8fa40020 	lw	a0,32(sp)
    9cc0:	8fa50024 	lw	a1,36(sp)
    9cc4:	4610003c 	c.lt.s	$f0,$f16
    9cc8:	00000000 	nop
    9ccc:	45000003 	bc1f	9cdc <func_80A64F14+0xb8>
    9cd0:	00000000 	nop
    9cd4:	1000000e 	b	9d10 <func_80A64F14+0xec>
    9cd8:	00001025 	move	v0,zero
    9cdc:	0c000000 	jal	0 <func_80A5B2F0>
    9ce0:	02003025 	move	a2,s0
    9ce4:	2401ffff 	li	at,-1
    9ce8:	54410004 	bnel	v0,at,9cfc <func_80A64F14+0xd8>
    9cec:	24010001 	li	at,1
    9cf0:	10000007 	b	9d10 <func_80A64F14+0xec>
    9cf4:	2402ffff 	li	v0,-1
    9cf8:	24010001 	li	at,1
    9cfc:	54410004 	bnel	v0,at,9d10 <func_80A64F14+0xec>
    9d00:	00001025 	move	v0,zero
    9d04:	10000002 	b	9d10 <func_80A64F14+0xec>
    9d08:	24020001 	li	v0,1
    9d0c:	00001025 	move	v0,zero
    9d10:	8fbf001c 	lw	ra,28(sp)
    9d14:	8fb00018 	lw	s0,24(sp)
    9d18:	27bd0020 	addiu	sp,sp,32
    9d1c:	03e00008 	jr	ra
    9d20:	00000000 	nop

00009d24 <func_80A65014>:
    9d24:	27bdffe8 	addiu	sp,sp,-24
    9d28:	afbf0014 	sw	ra,20(sp)
    9d2c:	8c8e014c 	lw	t6,332(a0)
    9d30:	24010002 	li	at,2
    9d34:	51c10004 	beql	t6,at,9d48 <func_80A65014+0x24>
    9d38:	8c820210 	lw	v0,528(a0)
    9d3c:	1000000b 	b	9d6c <func_80A65014+0x48>
    9d40:	00001025 	move	v0,zero
    9d44:	8c820210 	lw	v0,528(a0)
    9d48:	24010001 	li	at,1
    9d4c:	10400005 	beqz	v0,9d64 <func_80A65014+0x40>
    9d50:	00000000 	nop
    9d54:	10410003 	beq	v0,at,9d64 <func_80A65014+0x40>
    9d58:	00000000 	nop
    9d5c:	10000003 	b	9d6c <func_80A65014+0x48>
    9d60:	00001025 	move	v0,zero
    9d64:	0c000000 	jal	0 <func_80A5B2F0>
    9d68:	8ca61c44 	lw	a2,7236(a1)
    9d6c:	8fbf0014 	lw	ra,20(sp)
    9d70:	27bd0018 	addiu	sp,sp,24
    9d74:	03e00008 	jr	ra
    9d78:	00000000 	nop

00009d7c <func_80A6506C>:
    9d7c:	27bdffd8 	addiu	sp,sp,-40
    9d80:	f7b40010 	sdc1	$f20,16(sp)
    9d84:	4485a000 	mtc1	a1,$f20
    9d88:	afbf001c 	sw	ra,28(sp)
    9d8c:	afa40028 	sw	a0,40(sp)
    9d90:	0c000000 	jal	0 <func_80A5B2F0>
    9d94:	afa60030 	sw	a2,48(sp)
    9d98:	4614a080 	add.s	$f2,$f20,$f20
    9d9c:	8fae0028 	lw	t6,40(sp)
    9da0:	8faf0030 	lw	t7,48(sp)
    9da4:	46020102 	mul.s	$f4,$f0,$f2
    9da8:	c5c60000 	lwc1	$f6,0(t6)
    9dac:	46062200 	add.s	$f8,$f4,$f6
    9db0:	46144281 	sub.s	$f10,$f8,$f20
    9db4:	e5ea0000 	swc1	$f10,0(t7)
    9db8:	0c000000 	jal	0 <func_80A5B2F0>
    9dbc:	e7a20024 	swc1	$f2,36(sp)
    9dc0:	c7b00024 	lwc1	$f16,36(sp)
    9dc4:	8fb80028 	lw	t8,40(sp)
    9dc8:	8fb90030 	lw	t9,48(sp)
    9dcc:	46100482 	mul.s	$f18,$f0,$f16
    9dd0:	c7040004 	lwc1	$f4,4(t8)
    9dd4:	46049180 	add.s	$f6,$f18,$f4
    9dd8:	46143201 	sub.s	$f8,$f6,$f20
    9ddc:	0c000000 	jal	0 <func_80A5B2F0>
    9de0:	e7280004 	swc1	$f8,4(t9)
    9de4:	c7aa0024 	lwc1	$f10,36(sp)
    9de8:	8fa80028 	lw	t0,40(sp)
    9dec:	8fa90030 	lw	t1,48(sp)
    9df0:	460a0402 	mul.s	$f16,$f0,$f10
    9df4:	c5120008 	lwc1	$f18,8(t0)
    9df8:	46128100 	add.s	$f4,$f16,$f18
    9dfc:	46142181 	sub.s	$f6,$f4,$f20
    9e00:	e5260008 	swc1	$f6,8(t1)
    9e04:	8fbf001c 	lw	ra,28(sp)
    9e08:	d7b40010 	ldc1	$f20,16(sp)
    9e0c:	27bd0028 	addiu	sp,sp,40
    9e10:	03e00008 	jr	ra
    9e14:	00000000 	nop

00009e18 <func_80A65108>:
    9e18:	27bdff58 	addiu	sp,sp,-168
    9e1c:	3c0f0000 	lui	t7,0x0
    9e20:	afbf001c 	sw	ra,28(sp)
    9e24:	afb00018 	sw	s0,24(sp)
    9e28:	afa500ac 	sw	a1,172(sp)
    9e2c:	afa600b0 	sw	a2,176(sp)
    9e30:	25ef0000 	addiu	t7,t7,0
    9e34:	8df90000 	lw	t9,0(t7)
    9e38:	27ae0094 	addiu	t6,sp,148
    9e3c:	8df80004 	lw	t8,4(t7)
    9e40:	add90000 	sw	t9,0(t6)
    9e44:	8df90008 	lw	t9,8(t7)
    9e48:	3c0a0000 	lui	t2,0x0
    9e4c:	254a0000 	addiu	t2,t2,0
    9e50:	add80004 	sw	t8,4(t6)
    9e54:	add90008 	sw	t9,8(t6)
    9e58:	8d4c0000 	lw	t4,0(t2)
    9e5c:	27a90088 	addiu	t1,sp,136
    9e60:	8d4b0004 	lw	t3,4(t2)
    9e64:	ad2c0000 	sw	t4,0(t1)
    9e68:	8d4c0008 	lw	t4,8(t2)
    9e6c:	3c0e0000 	lui	t6,0x0
    9e70:	25ce0000 	addiu	t6,t6,0
    9e74:	ad2b0004 	sw	t3,4(t1)
    9e78:	ad2c0008 	sw	t4,8(t1)
    9e7c:	8dd80000 	lw	t8,0(t6)
    9e80:	27ad007c 	addiu	t5,sp,124
    9e84:	8dcf0004 	lw	t7,4(t6)
    9e88:	adb80000 	sw	t8,0(t5)
    9e8c:	8dd80008 	lw	t8,8(t6)
    9e90:	3c090000 	lui	t1,0x0
    9e94:	25290000 	addiu	t1,t1,0
    9e98:	adaf0004 	sw	t7,4(t5)
    9e9c:	adb80008 	sw	t8,8(t5)
    9ea0:	8d2b0000 	lw	t3,0(t1)
    9ea4:	27b90064 	addiu	t9,sp,100
    9ea8:	8d2a0004 	lw	t2,4(t1)
    9eac:	af2b0000 	sw	t3,0(t9)
    9eb0:	8d2b0008 	lw	t3,8(t1)
    9eb4:	3c0d0000 	lui	t5,0x0
    9eb8:	25ad0000 	addiu	t5,t5,0
    9ebc:	af2a0004 	sw	t2,4(t9)
    9ec0:	af2b0008 	sw	t3,8(t9)
    9ec4:	8daf0000 	lw	t7,0(t5)
    9ec8:	27ac0058 	addiu	t4,sp,88
    9ecc:	8dae0004 	lw	t6,4(t5)
    9ed0:	ad8f0000 	sw	t7,0(t4)
    9ed4:	8daf0008 	lw	t7,8(t5)
    9ed8:	ad8e0004 	sw	t6,4(t4)
    9edc:	2401fff7 	li	at,-9
    9ee0:	ad8f0008 	sw	t7,8(t4)
    9ee4:	8c8201f0 	lw	v0,496(a0)
    9ee8:	00808025 	move	s0,a0
    9eec:	c48201c4 	lwc1	$f2,452(a0)
    9ef0:	30580008 	andi	t8,v0,0x8
    9ef4:	17000015 	bnez	t8,9f4c <func_80A65108+0x134>
    9ef8:	0041c824 	and	t9,v0,at
    9efc:	8fa400b0 	lw	a0,176(sp)
    9f00:	2405001e 	li	a1,30
    9f04:	27a6007c 	addiu	a2,sp,124
    9f08:	26070258 	addiu	a3,s0,600
    9f0c:	0c000000 	jal	0 <func_80A5B2F0>
    9f10:	e7a20054 	swc1	$f2,84(sp)
    9f14:	c6040258 	lwc1	$f4,600(s0)
    9f18:	c6060024 	lwc1	$f6,36(s0)
    9f1c:	c60a025c 	lwc1	$f10,604(s0)
    9f20:	c6100028 	lwc1	$f16,40(s0)
    9f24:	46062201 	sub.s	$f8,$f4,$f6
    9f28:	c606002c 	lwc1	$f6,44(s0)
    9f2c:	c6040260 	lwc1	$f4,608(s0)
    9f30:	c7a20054 	lwc1	$f2,84(sp)
    9f34:	e6080258 	swc1	$f8,600(s0)
    9f38:	46105481 	sub.s	$f18,$f10,$f16
    9f3c:	46062201 	sub.s	$f8,$f4,$f6
    9f40:	e612025c 	swc1	$f18,604(s0)
    9f44:	10000002 	b	9f50 <func_80A65108+0x138>
    9f48:	e6080260 	swc1	$f8,608(s0)
    9f4c:	ae1901f0 	sw	t9,496(s0)
    9f50:	8fa400b0 	lw	a0,176(sp)
    9f54:	2405000d 	li	a1,13
    9f58:	27a60094 	addiu	a2,sp,148
    9f5c:	27a7002c 	addiu	a3,sp,44
    9f60:	0c000000 	jal	0 <func_80A5B2F0>
    9f64:	e7a20054 	swc1	$f2,84(sp)
    9f68:	8fa400ac 	lw	a0,172(sp)
    9f6c:	3c010001 	lui	at,0x1
    9f70:	34211d60 	ori	at,at,0x1d60
    9f74:	27a5002c 	addiu	a1,sp,44
    9f78:	26060228 	addiu	a2,s0,552
    9f7c:	27a70028 	addiu	a3,sp,40
    9f80:	0c000000 	jal	0 <func_80A5B2F0>
    9f84:	00812021 	addu	a0,a0,at
    9f88:	8e030210 	lw	v1,528(s0)
    9f8c:	c7a20054 	lwc1	$f2,84(sp)
    9f90:	5460003b 	bnezl	v1,a080 <func_80A65108+0x268>
    9f94:	8e02014c 	lw	v0,332(s0)
    9f98:	8e09014c 	lw	t1,332(s0)
    9f9c:	3c014220 	lui	at,0x4220
    9fa0:	51200037 	beqzl	t1,a080 <func_80A65108+0x268>
    9fa4:	8e02014c 	lw	v0,332(s0)
    9fa8:	44815000 	mtc1	at,$f10
    9fac:	3c014234 	lui	at,0x4234
    9fb0:	4602503c 	c.lt.s	$f10,$f2
    9fb4:	00000000 	nop
    9fb8:	4502000a 	bc1fl	9fe4 <func_80A65108+0x1cc>
    9fbc:	3c0141e0 	lui	at,0x41e0
    9fc0:	44818000 	mtc1	at,$f16
    9fc4:	00000000 	nop
    9fc8:	4610103c 	c.lt.s	$f2,$f16
    9fcc:	00000000 	nop
    9fd0:	45020004 	bc1fl	9fe4 <func_80A65108+0x1cc>
    9fd4:	3c0141e0 	lui	at,0x41e0
    9fd8:	8e0a0158 	lw	t2,344(s0)
    9fdc:	11400011 	beqz	t2,a024 <func_80A65108+0x20c>
    9fe0:	3c0141e0 	lui	at,0x41e0
    9fe4:	44819000 	mtc1	at,$f18
    9fe8:	3c014204 	lui	at,0x4204
    9fec:	4602903c 	c.lt.s	$f18,$f2
    9ff0:	00000000 	nop
    9ff4:	45020022 	bc1fl	a080 <func_80A65108+0x268>
    9ff8:	8e02014c 	lw	v0,332(s0)
    9ffc:	44812000 	mtc1	at,$f4
    a000:	00000000 	nop
    a004:	4604103c 	c.lt.s	$f2,$f4
    a008:	00000000 	nop
    a00c:	4502001c 	bc1fl	a080 <func_80A65108+0x268>
    a010:	8e02014c 	lw	v0,332(s0)
    a014:	8e0b0158 	lw	t3,344(s0)
    a018:	24010001 	li	at,1
    a01c:	55610018 	bnel	t3,at,a080 <func_80A65108+0x268>
    a020:	8e02014c 	lw	v0,332(s0)
    a024:	0c000000 	jal	0 <func_80A5B2F0>
    a028:	00000000 	nop
    a02c:	3c010000 	lui	at,0x0
    a030:	c4260000 	lwc1	$f6,0(at)
    a034:	2405001c 	li	a1,28
    a038:	4606003c 	c.lt.s	$f0,$f6
    a03c:	00000000 	nop
    a040:	450201d8 	bc1fl	a7a4 <func_80A65108+0x98c>
    a044:	8e190328 	lw	t9,808(s0)
    a048:	960c03c8 	lhu	t4,968(s0)
    a04c:	27a60088 	addiu	a2,sp,136
    a050:	260703cc 	addiu	a3,s0,972
    a054:	358d0001 	ori	t5,t4,0x1
    a058:	a60d03c8 	sh	t5,968(s0)
    a05c:	0c000000 	jal	0 <func_80A5B2F0>
    a060:	8fa400b0 	lw	a0,176(sp)
    a064:	3c0140a0 	lui	at,0x40a0
    a068:	44815000 	mtc1	at,$f10
    a06c:	c60803d0 	lwc1	$f8,976(s0)
    a070:	460a4401 	sub.s	$f16,$f8,$f10
    a074:	100001ca 	b	a7a0 <func_80A65108+0x988>
    a078:	e61003d0 	swc1	$f16,976(s0)
    a07c:	8e02014c 	lw	v0,332(s0)
    a080:	2401000c 	li	at,12
    a084:	144100a6 	bne	v0,at,a320 <func_80A65108+0x508>
    a088:	3c014120 	lui	at,0x4120
    a08c:	44819000 	mtc1	at,$f18
    a090:	3c014150 	lui	at,0x4150
    a094:	4602903c 	c.lt.s	$f18,$f2
    a098:	00000000 	nop
    a09c:	45020007 	bc1fl	a0bc <func_80A65108+0x2a4>
    a0a0:	3c0141c8 	lui	at,0x41c8
    a0a4:	44812000 	mtc1	at,$f4
    a0a8:	00000000 	nop
    a0ac:	4604103c 	c.lt.s	$f2,$f4
    a0b0:	00000000 	nop
    a0b4:	4501000d 	bc1t	a0ec <func_80A65108+0x2d4>
    a0b8:	3c0141c8 	lui	at,0x41c8
    a0bc:	44813000 	mtc1	at,$f6
    a0c0:	3c014204 	lui	at,0x4204
    a0c4:	4602303c 	c.lt.s	$f6,$f2
    a0c8:	00000000 	nop
    a0cc:	45020036 	bc1fl	a1a8 <func_80A65108+0x390>
    a0d0:	3c0140c0 	lui	at,0x40c0
    a0d4:	44814000 	mtc1	at,$f8
    a0d8:	00000000 	nop
    a0dc:	4608103c 	c.lt.s	$f2,$f8
    a0e0:	00000000 	nop
    a0e4:	45020030 	bc1fl	a1a8 <func_80A65108+0x390>
    a0e8:	3c0140c0 	lui	at,0x40c0
    a0ec:	0c000000 	jal	0 <func_80A5B2F0>
    a0f0:	e7a20054 	swc1	$f2,84(sp)
    a0f4:	3c010000 	lui	at,0x0
    a0f8:	c42a0000 	lwc1	$f10,0(at)
    a0fc:	c7a20054 	lwc1	$f2,84(sp)
    a100:	24050014 	li	a1,20
    a104:	460a003c 	c.lt.s	$f0,$f10
    a108:	00000000 	nop
    a10c:	4500000e 	bc1f	a148 <func_80A65108+0x330>
    a110:	00000000 	nop
    a114:	960e03c8 	lhu	t6,968(s0)
    a118:	27a60088 	addiu	a2,sp,136
    a11c:	27a70070 	addiu	a3,sp,112
    a120:	35cf0002 	ori	t7,t6,0x2
    a124:	a60f03c8 	sh	t7,968(s0)
    a128:	e7a20054 	swc1	$f2,84(sp)
    a12c:	0c000000 	jal	0 <func_80A5B2F0>
    a130:	8fa400b0 	lw	a0,176(sp)
    a134:	27a40070 	addiu	a0,sp,112
    a138:	3c054120 	lui	a1,0x4120
    a13c:	0c000000 	jal	0 <func_80A5B2F0>
    a140:	260603d8 	addiu	a2,s0,984
    a144:	c7a20054 	lwc1	$f2,84(sp)
    a148:	0c000000 	jal	0 <func_80A5B2F0>
    a14c:	e7a20054 	swc1	$f2,84(sp)
    a150:	3c010000 	lui	at,0x0
    a154:	c4300000 	lwc1	$f16,0(at)
    a158:	c7a20054 	lwc1	$f2,84(sp)
    a15c:	2405001c 	li	a1,28
    a160:	4610003c 	c.lt.s	$f0,$f16
    a164:	00000000 	nop
    a168:	4502000f 	bc1fl	a1a8 <func_80A65108+0x390>
    a16c:	3c0140c0 	lui	at,0x40c0
    a170:	961803c8 	lhu	t8,968(s0)
    a174:	27a60088 	addiu	a2,sp,136
    a178:	27a70070 	addiu	a3,sp,112
    a17c:	37190001 	ori	t9,t8,0x1
    a180:	a61903c8 	sh	t9,968(s0)
    a184:	e7a20054 	swc1	$f2,84(sp)
    a188:	0c000000 	jal	0 <func_80A5B2F0>
    a18c:	8fa400b0 	lw	a0,176(sp)
    a190:	27a40070 	addiu	a0,sp,112
    a194:	3c054120 	lui	a1,0x4120
    a198:	0c000000 	jal	0 <func_80A5B2F0>
    a19c:	260603cc 	addiu	a2,s0,972
    a1a0:	c7a20054 	lwc1	$f2,84(sp)
    a1a4:	3c0140c0 	lui	at,0x40c0
    a1a8:	44819000 	mtc1	at,$f18
    a1ac:	3c014120 	lui	at,0x4120
    a1b0:	4602903c 	c.lt.s	$f18,$f2
    a1b4:	00000000 	nop
    a1b8:	45020007 	bc1fl	a1d8 <func_80A65108+0x3c0>
    a1bc:	3c0141b8 	lui	at,0x41b8
    a1c0:	44812000 	mtc1	at,$f4
    a1c4:	00000000 	nop
    a1c8:	4604103c 	c.lt.s	$f2,$f4
    a1cc:	00000000 	nop
    a1d0:	4501000d 	bc1t	a208 <func_80A65108+0x3f0>
    a1d4:	3c0141b8 	lui	at,0x41b8
    a1d8:	44813000 	mtc1	at,$f6
    a1dc:	3c0141e8 	lui	at,0x41e8
    a1e0:	4602303c 	c.lt.s	$f6,$f2
    a1e4:	00000000 	nop
    a1e8:	4502001f 	bc1fl	a268 <func_80A65108+0x450>
    a1ec:	3c0140e0 	lui	at,0x40e0
    a1f0:	44814000 	mtc1	at,$f8
    a1f4:	00000000 	nop
    a1f8:	4608103c 	c.lt.s	$f2,$f8
    a1fc:	00000000 	nop
    a200:	45020019 	bc1fl	a268 <func_80A65108+0x450>
    a204:	3c0140e0 	lui	at,0x40e0
    a208:	0c000000 	jal	0 <func_80A5B2F0>
    a20c:	e7a20054 	swc1	$f2,84(sp)
    a210:	3c010000 	lui	at,0x0
    a214:	c42a0000 	lwc1	$f10,0(at)
    a218:	c7a20054 	lwc1	$f2,84(sp)
    a21c:	24050025 	li	a1,37
    a220:	460a003c 	c.lt.s	$f0,$f10
    a224:	00000000 	nop
    a228:	4502000f 	bc1fl	a268 <func_80A65108+0x450>
    a22c:	3c0140e0 	lui	at,0x40e0
    a230:	960903c8 	lhu	t1,968(s0)
    a234:	27a60088 	addiu	a2,sp,136
    a238:	27a70070 	addiu	a3,sp,112
    a23c:	352a0008 	ori	t2,t1,0x8
    a240:	a60a03c8 	sh	t2,968(s0)
    a244:	e7a20054 	swc1	$f2,84(sp)
    a248:	0c000000 	jal	0 <func_80A5B2F0>
    a24c:	8fa400b0 	lw	a0,176(sp)
    a250:	27a40070 	addiu	a0,sp,112
    a254:	3c054120 	lui	a1,0x4120
    a258:	0c000000 	jal	0 <func_80A5B2F0>
    a25c:	260603f0 	addiu	a2,s0,1008
    a260:	c7a20054 	lwc1	$f2,84(sp)
    a264:	3c0140e0 	lui	at,0x40e0
    a268:	44818000 	mtc1	at,$f16
    a26c:	3c014160 	lui	at,0x4160
    a270:	4602803c 	c.lt.s	$f16,$f2
    a274:	00000000 	nop
    a278:	45020007 	bc1fl	a298 <func_80A65108+0x480>
    a27c:	3c0141d0 	lui	at,0x41d0
    a280:	44819000 	mtc1	at,$f18
    a284:	00000000 	nop
    a288:	4612103c 	c.lt.s	$f2,$f18
    a28c:	00000000 	nop
    a290:	4501000d 	bc1t	a2c8 <func_80A65108+0x4b0>
    a294:	3c0141d0 	lui	at,0x41d0
    a298:	44812000 	mtc1	at,$f4
    a29c:	3c0141f0 	lui	at,0x41f0
    a2a0:	4602203c 	c.lt.s	$f4,$f2
    a2a4:	00000000 	nop
    a2a8:	4502013e 	bc1fl	a7a4 <func_80A65108+0x98c>
    a2ac:	8e190328 	lw	t9,808(s0)
    a2b0:	44813000 	mtc1	at,$f6
    a2b4:	00000000 	nop
    a2b8:	4606103c 	c.lt.s	$f2,$f6
    a2bc:	00000000 	nop
    a2c0:	45020138 	bc1fl	a7a4 <func_80A65108+0x98c>
    a2c4:	8e190328 	lw	t9,808(s0)
    a2c8:	0c000000 	jal	0 <func_80A5B2F0>
    a2cc:	00000000 	nop
    a2d0:	3c010000 	lui	at,0x0
    a2d4:	c4280000 	lwc1	$f8,0(at)
    a2d8:	2405002d 	li	a1,45
    a2dc:	4608003c 	c.lt.s	$f0,$f8
    a2e0:	00000000 	nop
    a2e4:	4502012f 	bc1fl	a7a4 <func_80A65108+0x98c>
    a2e8:	8e190328 	lw	t9,808(s0)
    a2ec:	960b03c8 	lhu	t3,968(s0)
    a2f0:	27a60088 	addiu	a2,sp,136
    a2f4:	27a70070 	addiu	a3,sp,112
    a2f8:	356c0004 	ori	t4,t3,0x4
    a2fc:	a60c03c8 	sh	t4,968(s0)
    a300:	0c000000 	jal	0 <func_80A5B2F0>
    a304:	8fa400b0 	lw	a0,176(sp)
    a308:	27a40070 	addiu	a0,sp,112
    a30c:	3c054120 	lui	a1,0x4120
    a310:	0c000000 	jal	0 <func_80A5B2F0>
    a314:	260603e4 	addiu	a2,s0,996
    a318:	10000122 	b	a7a4 <func_80A65108+0x98c>
    a31c:	8e190328 	lw	t9,808(s0)
    a320:	24010006 	li	at,6
    a324:	14610068 	bne	v1,at,a4c8 <func_80A65108+0x6b0>
    a328:	3c014160 	lui	at,0x4160
    a32c:	44815000 	mtc1	at,$f10
    a330:	3c014180 	lui	at,0x4180
    a334:	4602503c 	c.lt.s	$f10,$f2
    a338:	00000000 	nop
    a33c:	45020015 	bc1fl	a394 <func_80A65108+0x57c>
    a340:	3c014100 	lui	at,0x4100
    a344:	44818000 	mtc1	at,$f16
    a348:	2405001c 	li	a1,28
    a34c:	4610103c 	c.lt.s	$f2,$f16
    a350:	00000000 	nop
    a354:	4502000f 	bc1fl	a394 <func_80A65108+0x57c>
    a358:	3c014100 	lui	at,0x4100
    a35c:	960d03c8 	lhu	t5,968(s0)
    a360:	27a60088 	addiu	a2,sp,136
    a364:	27a70070 	addiu	a3,sp,112
    a368:	35ae0001 	ori	t6,t5,0x1
    a36c:	a60e03c8 	sh	t6,968(s0)
    a370:	0c000000 	jal	0 <func_80A5B2F0>
    a374:	8fa400b0 	lw	a0,176(sp)
    a378:	27a40070 	addiu	a0,sp,112
    a37c:	3c0540a0 	lui	a1,0x40a0
    a380:	0c000000 	jal	0 <func_80A5B2F0>
    a384:	260603cc 	addiu	a2,s0,972
    a388:	10000106 	b	a7a4 <func_80A65108+0x98c>
    a38c:	8e190328 	lw	t9,808(s0)
    a390:	3c014100 	lui	at,0x4100
    a394:	44819000 	mtc1	at,$f18
    a398:	3c014120 	lui	at,0x4120
    a39c:	4602903c 	c.lt.s	$f18,$f2
    a3a0:	00000000 	nop
    a3a4:	45020015 	bc1fl	a3fc <func_80A65108+0x5e4>
    a3a8:	3c013f80 	lui	at,0x3f80
    a3ac:	44812000 	mtc1	at,$f4
    a3b0:	24050014 	li	a1,20
    a3b4:	4604103c 	c.lt.s	$f2,$f4
    a3b8:	00000000 	nop
    a3bc:	4502000f 	bc1fl	a3fc <func_80A65108+0x5e4>
    a3c0:	3c013f80 	lui	at,0x3f80
    a3c4:	960f03c8 	lhu	t7,968(s0)
    a3c8:	27a60088 	addiu	a2,sp,136
    a3cc:	27a70070 	addiu	a3,sp,112
    a3d0:	35f80002 	ori	t8,t7,0x2
    a3d4:	a61803c8 	sh	t8,968(s0)
    a3d8:	0c000000 	jal	0 <func_80A5B2F0>
    a3dc:	8fa400b0 	lw	a0,176(sp)
    a3e0:	27a40070 	addiu	a0,sp,112
    a3e4:	3c054120 	lui	a1,0x4120
    a3e8:	0c000000 	jal	0 <func_80A5B2F0>
    a3ec:	260603d8 	addiu	a2,s0,984
    a3f0:	100000ec 	b	a7a4 <func_80A65108+0x98c>
    a3f4:	8e190328 	lw	t9,808(s0)
    a3f8:	3c013f80 	lui	at,0x3f80
    a3fc:	44813000 	mtc1	at,$f6
    a400:	3c014040 	lui	at,0x4040
    a404:	4602303c 	c.lt.s	$f6,$f2
    a408:	00000000 	nop
    a40c:	45020015 	bc1fl	a464 <func_80A65108+0x64c>
    a410:	3c0141d0 	lui	at,0x41d0
    a414:	44814000 	mtc1	at,$f8
    a418:	2405002d 	li	a1,45
    a41c:	4608103c 	c.lt.s	$f2,$f8
    a420:	00000000 	nop
    a424:	4502000f 	bc1fl	a464 <func_80A65108+0x64c>
    a428:	3c0141d0 	lui	at,0x41d0
    a42c:	961903c8 	lhu	t9,968(s0)
    a430:	27a60088 	addiu	a2,sp,136
    a434:	27a70070 	addiu	a3,sp,112
    a438:	37290004 	ori	t1,t9,0x4
    a43c:	a60903c8 	sh	t1,968(s0)
    a440:	0c000000 	jal	0 <func_80A5B2F0>
    a444:	8fa400b0 	lw	a0,176(sp)
    a448:	27a40070 	addiu	a0,sp,112
    a44c:	3c054120 	lui	a1,0x4120
    a450:	0c000000 	jal	0 <func_80A5B2F0>
    a454:	260603e4 	addiu	a2,s0,996
    a458:	100000d2 	b	a7a4 <func_80A65108+0x98c>
    a45c:	8e190328 	lw	t9,808(s0)
    a460:	3c0141d0 	lui	at,0x41d0
    a464:	44815000 	mtc1	at,$f10
    a468:	3c0141e0 	lui	at,0x41e0
    a46c:	4602503c 	c.lt.s	$f10,$f2
    a470:	00000000 	nop
    a474:	450200cb 	bc1fl	a7a4 <func_80A65108+0x98c>
    a478:	8e190328 	lw	t9,808(s0)
    a47c:	44818000 	mtc1	at,$f16
    a480:	24050025 	li	a1,37
    a484:	4610103c 	c.lt.s	$f2,$f16
    a488:	00000000 	nop
    a48c:	450200c5 	bc1fl	a7a4 <func_80A65108+0x98c>
    a490:	8e190328 	lw	t9,808(s0)
    a494:	960a03c8 	lhu	t2,968(s0)
    a498:	27a60088 	addiu	a2,sp,136
    a49c:	27a70070 	addiu	a3,sp,112
    a4a0:	354b0008 	ori	t3,t2,0x8
    a4a4:	a60b03c8 	sh	t3,968(s0)
    a4a8:	0c000000 	jal	0 <func_80A5B2F0>
    a4ac:	8fa400b0 	lw	a0,176(sp)
    a4b0:	27a40070 	addiu	a0,sp,112
    a4b4:	3c054120 	lui	a1,0x4120
    a4b8:	0c000000 	jal	0 <func_80A5B2F0>
    a4bc:	260603f0 	addiu	a2,s0,1008
    a4c0:	100000b8 	b	a7a4 <func_80A65108+0x98c>
    a4c4:	8e190328 	lw	t9,808(s0)
    a4c8:	2401000e 	li	at,14
    a4cc:	14410041 	bne	v0,at,a5d4 <func_80A65108+0x7bc>
    a4d0:	3c0140c0 	lui	at,0x40c0
    a4d4:	44819000 	mtc1	at,$f18
    a4d8:	00000000 	nop
    a4dc:	4602903c 	c.lt.s	$f18,$f2
    a4e0:	00000000 	nop
    a4e4:	4502003c 	bc1fl	a5d8 <func_80A65108+0x7c0>
    a4e8:	8e18014c 	lw	t8,332(s0)
    a4ec:	0c000000 	jal	0 <func_80A5B2F0>
    a4f0:	e7a20054 	swc1	$f2,84(sp)
    a4f4:	3c0140c0 	lui	at,0x40c0
    a4f8:	44812000 	mtc1	at,$f4
    a4fc:	c7a20054 	lwc1	$f2,84(sp)
    a500:	3c010000 	lui	at,0x0
    a504:	c4280000 	lwc1	$f8,0(at)
    a508:	46041181 	sub.s	$f6,$f2,$f4
    a50c:	3c013f80 	lui	at,0x3f80
    a510:	44818000 	mtc1	at,$f16
    a514:	46083282 	mul.s	$f10,$f6,$f8
    a518:	460a8481 	sub.s	$f18,$f16,$f10
    a51c:	4612003c 	c.lt.s	$f0,$f18
    a520:	00000000 	nop
    a524:	4502002c 	bc1fl	a5d8 <func_80A65108+0x7c0>
    a528:	8e18014c 	lw	t8,332(s0)
    a52c:	0c000000 	jal	0 <func_80A5B2F0>
    a530:	00000000 	nop
    a534:	3c013f00 	lui	at,0x3f00
    a538:	44812000 	mtc1	at,$f4
    a53c:	24050025 	li	a1,37
    a540:	4604003c 	c.lt.s	$f0,$f4
    a544:	00000000 	nop
    a548:	4500000c 	bc1f	a57c <func_80A65108+0x764>
    a54c:	00000000 	nop
    a550:	960c03c8 	lhu	t4,968(s0)
    a554:	27a60088 	addiu	a2,sp,136
    a558:	27a70070 	addiu	a3,sp,112
    a55c:	358d0008 	ori	t5,t4,0x8
    a560:	a60d03c8 	sh	t5,968(s0)
    a564:	0c000000 	jal	0 <func_80A5B2F0>
    a568:	8fa400b0 	lw	a0,176(sp)
    a56c:	27a40070 	addiu	a0,sp,112
    a570:	3c054120 	lui	a1,0x4120
    a574:	0c000000 	jal	0 <func_80A5B2F0>
    a578:	260603f0 	addiu	a2,s0,1008
    a57c:	0c000000 	jal	0 <func_80A5B2F0>
    a580:	00000000 	nop
    a584:	3c013f00 	lui	at,0x3f00
    a588:	44813000 	mtc1	at,$f6
    a58c:	2405002d 	li	a1,45
    a590:	4606003c 	c.lt.s	$f0,$f6
    a594:	00000000 	nop
    a598:	45020082 	bc1fl	a7a4 <func_80A65108+0x98c>
    a59c:	8e190328 	lw	t9,808(s0)
    a5a0:	960e03c8 	lhu	t6,968(s0)
    a5a4:	27a60088 	addiu	a2,sp,136
    a5a8:	27a70070 	addiu	a3,sp,112
    a5ac:	35cf0004 	ori	t7,t6,0x4
    a5b0:	a60f03c8 	sh	t7,968(s0)
    a5b4:	0c000000 	jal	0 <func_80A5B2F0>
    a5b8:	8fa400b0 	lw	a0,176(sp)
    a5bc:	27a40070 	addiu	a0,sp,112
    a5c0:	3c054120 	lui	a1,0x4120
    a5c4:	0c000000 	jal	0 <func_80A5B2F0>
    a5c8:	260603e4 	addiu	a2,s0,996
    a5cc:	10000075 	b	a7a4 <func_80A65108+0x98c>
    a5d0:	8e190328 	lw	t9,808(s0)
    a5d4:	8e18014c 	lw	t8,332(s0)
    a5d8:	2401000f 	li	at,15
    a5dc:	17010041 	bne	t8,at,a6e4 <func_80A65108+0x8cc>
    a5e0:	3c0140a0 	lui	at,0x40a0
    a5e4:	44814000 	mtc1	at,$f8
    a5e8:	00000000 	nop
    a5ec:	4602403c 	c.lt.s	$f8,$f2
    a5f0:	00000000 	nop
    a5f4:	4502003c 	bc1fl	a6e8 <func_80A65108+0x8d0>
    a5f8:	8e0c014c 	lw	t4,332(s0)
    a5fc:	0c000000 	jal	0 <func_80A5B2F0>
    a600:	e7a20054 	swc1	$f2,84(sp)
    a604:	3c0140a0 	lui	at,0x40a0
    a608:	44818000 	mtc1	at,$f16
    a60c:	c7a20054 	lwc1	$f2,84(sp)
    a610:	3c010000 	lui	at,0x0
    a614:	c4320000 	lwc1	$f18,0(at)
    a618:	46101281 	sub.s	$f10,$f2,$f16
    a61c:	3c013f80 	lui	at,0x3f80
    a620:	44813000 	mtc1	at,$f6
    a624:	46125102 	mul.s	$f4,$f10,$f18
    a628:	46043201 	sub.s	$f8,$f6,$f4
    a62c:	4608003c 	c.lt.s	$f0,$f8
    a630:	00000000 	nop
    a634:	4502002c 	bc1fl	a6e8 <func_80A65108+0x8d0>
    a638:	8e0c014c 	lw	t4,332(s0)
    a63c:	0c000000 	jal	0 <func_80A5B2F0>
    a640:	00000000 	nop
    a644:	3c013f00 	lui	at,0x3f00
    a648:	44818000 	mtc1	at,$f16
    a64c:	24050025 	li	a1,37
    a650:	4610003c 	c.lt.s	$f0,$f16
    a654:	00000000 	nop
    a658:	4500000c 	bc1f	a68c <func_80A65108+0x874>
    a65c:	00000000 	nop
    a660:	961903c8 	lhu	t9,968(s0)
    a664:	27a60088 	addiu	a2,sp,136
    a668:	27a70070 	addiu	a3,sp,112
    a66c:	37290008 	ori	t1,t9,0x8
    a670:	a60903c8 	sh	t1,968(s0)
    a674:	0c000000 	jal	0 <func_80A5B2F0>
    a678:	8fa400b0 	lw	a0,176(sp)
    a67c:	27a40070 	addiu	a0,sp,112
    a680:	3c054120 	lui	a1,0x4120
    a684:	0c000000 	jal	0 <func_80A5B2F0>
    a688:	260603f0 	addiu	a2,s0,1008
    a68c:	0c000000 	jal	0 <func_80A5B2F0>
    a690:	00000000 	nop
    a694:	3c013f00 	lui	at,0x3f00
    a698:	44815000 	mtc1	at,$f10
    a69c:	2405002d 	li	a1,45
    a6a0:	460a003c 	c.lt.s	$f0,$f10
    a6a4:	00000000 	nop
    a6a8:	4502003e 	bc1fl	a7a4 <func_80A65108+0x98c>
    a6ac:	8e190328 	lw	t9,808(s0)
    a6b0:	960a03c8 	lhu	t2,968(s0)
    a6b4:	27a60088 	addiu	a2,sp,136
    a6b8:	27a70070 	addiu	a3,sp,112
    a6bc:	354b0004 	ori	t3,t2,0x4
    a6c0:	a60b03c8 	sh	t3,968(s0)
    a6c4:	0c000000 	jal	0 <func_80A5B2F0>
    a6c8:	8fa400b0 	lw	a0,176(sp)
    a6cc:	27a40070 	addiu	a0,sp,112
    a6d0:	3c054120 	lui	a1,0x4120
    a6d4:	0c000000 	jal	0 <func_80A5B2F0>
    a6d8:	260603e4 	addiu	a2,s0,996
    a6dc:	10000031 	b	a7a4 <func_80A65108+0x98c>
    a6e0:	8e190328 	lw	t9,808(s0)
    a6e4:	8e0c014c 	lw	t4,332(s0)
    a6e8:	24010010 	li	at,16
    a6ec:	5581002d 	bnel	t4,at,a7a4 <func_80A65108+0x98c>
    a6f0:	8e190328 	lw	t9,808(s0)
    a6f4:	0c000000 	jal	0 <func_80A5B2F0>
    a6f8:	00000000 	nop
    a6fc:	3c013f00 	lui	at,0x3f00
    a700:	44819000 	mtc1	at,$f18
    a704:	00000000 	nop
    a708:	4612003c 	c.lt.s	$f0,$f18
    a70c:	00000000 	nop
    a710:	45020024 	bc1fl	a7a4 <func_80A65108+0x98c>
    a714:	8e190328 	lw	t9,808(s0)
    a718:	0c000000 	jal	0 <func_80A5B2F0>
    a71c:	00000000 	nop
    a720:	3c013f00 	lui	at,0x3f00
    a724:	44813000 	mtc1	at,$f6
    a728:	27a60088 	addiu	a2,sp,136
    a72c:	2405002d 	li	a1,45
    a730:	4606003c 	c.lt.s	$f0,$f6
    a734:	00000000 	nop
    a738:	4502000f 	bc1fl	a778 <func_80A65108+0x960>
    a73c:	960f03c8 	lhu	t7,968(s0)
    a740:	960d03c8 	lhu	t5,968(s0)
    a744:	24050025 	li	a1,37
    a748:	27a70070 	addiu	a3,sp,112
    a74c:	35ae0008 	ori	t6,t5,0x8
    a750:	a60e03c8 	sh	t6,968(s0)
    a754:	0c000000 	jal	0 <func_80A5B2F0>
    a758:	8fa400b0 	lw	a0,176(sp)
    a75c:	27a40070 	addiu	a0,sp,112
    a760:	3c054120 	lui	a1,0x4120
    a764:	0c000000 	jal	0 <func_80A5B2F0>
    a768:	260603f0 	addiu	a2,s0,1008
    a76c:	1000000d 	b	a7a4 <func_80A65108+0x98c>
    a770:	8e190328 	lw	t9,808(s0)
    a774:	960f03c8 	lhu	t7,968(s0)
    a778:	27a60088 	addiu	a2,sp,136
    a77c:	27a70070 	addiu	a3,sp,112
    a780:	35f80004 	ori	t8,t7,0x4
    a784:	a61803c8 	sh	t8,968(s0)
    a788:	0c000000 	jal	0 <func_80A5B2F0>
    a78c:	8fa400b0 	lw	a0,176(sp)
    a790:	27a40070 	addiu	a0,sp,112
    a794:	3c054120 	lui	a1,0x4120
    a798:	0c000000 	jal	0 <func_80A5B2F0>
    a79c:	260603e4 	addiu	a2,s0,996
    a7a0:	8e190328 	lw	t9,808(s0)
    a7a4:	00004025 	move	t0,zero
    a7a8:	00001025 	move	v0,zero
    a7ac:	5b200048 	blezl	t9,a8d0 <func_80A65108+0xab8>
    a7b0:	8fa400ac 	lw	a0,172(sp)
    a7b4:	8e09032c 	lw	t1,812(s0)
    a7b8:	8fa400b0 	lw	a0,176(sp)
    a7bc:	27a60048 	addiu	a2,sp,72
    a7c0:	01225021 	addu	t2,t1,v0
    a7c4:	854b0028 	lh	t3,40(t2)
    a7c8:	27a7003c 	addiu	a3,sp,60
    a7cc:	448b2000 	mtc1	t3,$f4
    a7d0:	00000000 	nop
    a7d4:	46802220 	cvt.s.w	$f8,$f4
    a7d8:	e7a80048 	swc1	$f8,72(sp)
    a7dc:	8e0c032c 	lw	t4,812(s0)
    a7e0:	01826821 	addu	t5,t4,v0
    a7e4:	85ae002a 	lh	t6,42(t5)
    a7e8:	448e8000 	mtc1	t6,$f16
    a7ec:	00000000 	nop
    a7f0:	468082a0 	cvt.s.w	$f10,$f16
    a7f4:	e7aa004c 	swc1	$f10,76(sp)
    a7f8:	8e0f032c 	lw	t7,812(s0)
    a7fc:	01e2c021 	addu	t8,t7,v0
    a800:	8719002c 	lh	t9,44(t8)
    a804:	44999000 	mtc1	t9,$f18
    a808:	00000000 	nop
    a80c:	468091a0 	cvt.s.w	$f6,$f18
    a810:	e7a60050 	swc1	$f6,80(sp)
    a814:	8e09032c 	lw	t1,812(s0)
    a818:	01225021 	addu	t2,t1,v0
    a81c:	9145003c 	lbu	a1,60(t2)
    a820:	afa80038 	sw	t0,56(sp)
    a824:	0c000000 	jal	0 <func_80A5B2F0>
    a828:	afa20024 	sw	v0,36(sp)
    a82c:	c7a4003c 	lwc1	$f4,60(sp)
    a830:	8fa20024 	lw	v0,36(sp)
    a834:	8e0d032c 	lw	t5,812(s0)
    a838:	4600220d 	trunc.w.s	$f8,$f4
    a83c:	8fa80038 	lw	t0,56(sp)
    a840:	01a27021 	addu	t6,t5,v0
    a844:	440c4000 	mfc1	t4,$f8
    a848:	25080001 	addiu	t0,t0,1
    a84c:	a5cc0030 	sh	t4,48(t6)
    a850:	c7b00040 	lwc1	$f16,64(sp)
    a854:	8e19032c 	lw	t9,812(s0)
    a858:	4600828d 	trunc.w.s	$f10,$f16
    a85c:	03224821 	addu	t1,t9,v0
    a860:	44185000 	mfc1	t8,$f10
    a864:	00000000 	nop
    a868:	a5380032 	sh	t8,50(t1)
    a86c:	c7b20044 	lwc1	$f18,68(sp)
    a870:	8e0d032c 	lw	t5,812(s0)
    a874:	4600918d 	trunc.w.s	$f6,$f18
    a878:	01a26021 	addu	t4,t5,v0
    a87c:	440b3000 	mfc1	t3,$f6
    a880:	00000000 	nop
    a884:	a58b0034 	sh	t3,52(t4)
    a888:	8e0e032c 	lw	t6,812(s0)
    a88c:	01c21821 	addu	v1,t6,v0
    a890:	846f002e 	lh	t7,46(v1)
    a894:	c4640038 	lwc1	$f4,56(v1)
    a898:	24420040 	addiu	v0,v0,64
    a89c:	448f4000 	mtc1	t7,$f8
    a8a0:	00000000 	nop
    a8a4:	46804420 	cvt.s.w	$f16,$f8
    a8a8:	46102282 	mul.s	$f10,$f4,$f16
    a8ac:	4600548d 	trunc.w.s	$f18,$f10
    a8b0:	44189000 	mfc1	t8,$f18
    a8b4:	00000000 	nop
    a8b8:	a4780036 	sh	t8,54(v1)
    a8bc:	8e090328 	lw	t1,808(s0)
    a8c0:	0109082a 	slt	at,t0,t1
    a8c4:	5420ffbc 	bnezl	at,a7b8 <func_80A65108+0x9a0>
    a8c8:	8e09032c 	lw	t1,812(s0)
    a8cc:	8fa400ac 	lw	a0,172(sp)
    a8d0:	3c010001 	lui	at,0x1
    a8d4:	34211e60 	ori	at,at,0x1e60
    a8d8:	26060310 	addiu	a2,s0,784
    a8dc:	00812821 	addu	a1,a0,at
    a8e0:	afa50024 	sw	a1,36(sp)
    a8e4:	0c000000 	jal	0 <func_80A5B2F0>
    a8e8:	afa60020 	sw	a2,32(sp)
    a8ec:	8fa50024 	lw	a1,36(sp)
    a8f0:	8fa60020 	lw	a2,32(sp)
    a8f4:	0c000000 	jal	0 <func_80A5B2F0>
    a8f8:	8fa400ac 	lw	a0,172(sp)
    a8fc:	8fbf001c 	lw	ra,28(sp)
    a900:	8fb00018 	lw	s0,24(sp)
    a904:	27bd00a8 	addiu	sp,sp,168
    a908:	03e00008 	jr	ra
    a90c:	00000000 	nop

0000a910 <func_80A65C00>:
    a910:	27bdffb0 	addiu	sp,sp,-80
    a914:	240e0001 	li	t6,1
    a918:	afbf0024 	sw	ra,36(sp)
    a91c:	afb00020 	sw	s0,32(sp)
    a920:	afa50054 	sw	a1,84(sp)
    a924:	afa60058 	sw	a2,88(sp)
    a928:	afa7005c 	sw	a3,92(sp)
    a92c:	afae0048 	sw	t6,72(sp)
    a930:	8ca50000 	lw	a1,0(a1)
    a934:	00808025 	move	s0,a0
    a938:	3c060000 	lui	a2,0x0
    a93c:	24c60000 	addiu	a2,a2,0
    a940:	27a40034 	addiu	a0,sp,52
    a944:	24072186 	li	a3,8582
    a948:	0c000000 	jal	0 <func_80A5B2F0>
    a94c:	afa50044 	sw	a1,68(sp)
    a950:	8fa60058 	lw	a2,88(sp)
    a954:	2401000d 	li	at,13
    a958:	8fa80044 	lw	t0,68(sp)
    a95c:	54c10020 	bnel	a2,at,a9e0 <func_80A65C00+0xd0>
    a960:	8e0a0158 	lw	t2,344(s0)
    a964:	8e180158 	lw	t8,344(s0)
    a968:	3c0adb06 	lui	t2,0xdb06
    a96c:	3c050000 	lui	a1,0x0
    a970:	1700001a 	bnez	t8,a9dc <func_80A65C00+0xcc>
    a974:	354a0020 	ori	t2,t2,0x20
    a978:	9219037a 	lbu	t9,890(s0)
    a97c:	8d0302c0 	lw	v1,704(t0)
    a980:	3c040000 	lui	a0,0x0
    a984:	00b92821 	addu	a1,a1,t9
    a988:	90a50000 	lbu	a1,0(a1)
    a98c:	24690008 	addiu	t1,v1,8
    a990:	ad0902c0 	sw	t1,704(t0)
    a994:	00055880 	sll	t3,a1,0x2
    a998:	008b2021 	addu	a0,a0,t3
    a99c:	ac6a0000 	sw	t2,0(v1)
    a9a0:	8c840000 	lw	a0,0(a0)
    a9a4:	3c180000 	lui	t8,0x0
    a9a8:	3c0100ff 	lui	at,0xff
    a9ac:	00046900 	sll	t5,a0,0x4
    a9b0:	000d7702 	srl	t6,t5,0x1c
    a9b4:	000e7880 	sll	t7,t6,0x2
    a9b8:	030fc021 	addu	t8,t8,t7
    a9bc:	8f180000 	lw	t8,0(t8)
    a9c0:	3421ffff 	ori	at,at,0xffff
    a9c4:	00816024 	and	t4,a0,at
    a9c8:	3c018000 	lui	at,0x8000
    a9cc:	0198c821 	addu	t9,t4,t8
    a9d0:	03214821 	addu	t1,t9,at
    a9d4:	10000013 	b	aa24 <func_80A65C00+0x114>
    a9d8:	ac690004 	sw	t1,4(v1)
    a9dc:	8e0a0158 	lw	t2,344(s0)
    a9e0:	24010001 	li	at,1
    a9e4:	55410010 	bnel	t2,at,aa28 <func_80A65C00+0x118>
    a9e8:	8faf0054 	lw	t7,84(sp)
    a9ec:	8e0b01f0 	lw	t3,496(s0)
    a9f0:	2401001e 	li	at,30
    a9f4:	000b6b40 	sll	t5,t3,0xd
    a9f8:	05a3000b 	bgezl	t5,aa28 <func_80A65C00+0x118>
    a9fc:	8faf0054 	lw	t7,84(sp)
    aa00:	14c10008 	bne	a2,at,aa24 <func_80A65C00+0x114>
    aa04:	8fae0054 	lw	t6,84(sp)
    aa08:	8dc40000 	lw	a0,0(t6)
    aa0c:	3c070600 	lui	a3,0x600
    aa10:	24e76530 	addiu	a3,a3,25904
    aa14:	afa00010 	sw	zero,16(sp)
    aa18:	0c000000 	jal	0 <func_80A5B2F0>
    aa1c:	26050160 	addiu	a1,s0,352
    aa20:	afa00048 	sw	zero,72(sp)
    aa24:	8faf0054 	lw	t7,84(sp)
    aa28:	3c060000 	lui	a2,0x0
    aa2c:	24c60000 	addiu	a2,a2,0
    aa30:	27a40034 	addiu	a0,sp,52
    aa34:	24072199 	li	a3,8601
    aa38:	0c000000 	jal	0 <func_80A5B2F0>
    aa3c:	8de50000 	lw	a1,0(t7)
    aa40:	8fbf0024 	lw	ra,36(sp)
    aa44:	8fa20048 	lw	v0,72(sp)
    aa48:	8fb00020 	lw	s0,32(sp)
    aa4c:	03e00008 	jr	ra
    aa50:	27bd0050 	addiu	sp,sp,80

0000aa54 <EnHorse_Draw>:
    aa54:	27bdffd8 	addiu	sp,sp,-40
    aa58:	afbf0024 	sw	ra,36(sp)
    aa5c:	afb00020 	sw	s0,32(sp)
    aa60:	afa5002c 	sw	a1,44(sp)
    aa64:	8c8e01f0 	lw	t6,496(a0)
    aa68:	00808025 	move	s0,a0
    aa6c:	31cf2000 	andi	t7,t6,0x2000
    aa70:	55e00027 	bnezl	t7,ab10 <EnHorse_Draw+0xbc>
    aa74:	8fbf0024 	lw	ra,36(sp)
    aa78:	0c000000 	jal	0 <func_80A5B2F0>
    aa7c:	8ca40000 	lw	a0,0(a1)
    aa80:	8e1901f0 	lw	t9,496(s0)
    aa84:	3c010800 	lui	at,0x800
    aa88:	02002025 	move	a0,s0
    aa8c:	03214025 	or	t0,t9,at
    aa90:	310a0004 	andi	t2,t0,0x4
    aa94:	1140000d 	beqz	t2,aacc <EnHorse_Draw+0x78>
    aa98:	ae0801f0 	sw	t0,496(s0)
    aa9c:	3c0b0000 	lui	t3,0x0
    aaa0:	256b0000 	addiu	t3,t3,0
    aaa4:	3c070000 	lui	a3,0x0
    aaa8:	24e70000 	addiu	a3,a3,0
    aaac:	afab0010 	sw	t3,16(sp)
    aab0:	02002025 	move	a0,s0
    aab4:	8fa5002c 	lw	a1,44(sp)
    aab8:	26060160 	addiu	a2,s0,352
    aabc:	0c000000 	jal	0 <func_80A5B2F0>
    aac0:	afa00014 	sw	zero,20(sp)
    aac4:	1000000c 	b	aaf8 <EnHorse_Draw+0xa4>
    aac8:	8e020244 	lw	v0,580(s0)
    aacc:	3c0c0000 	lui	t4,0x0
    aad0:	258c0000 	addiu	t4,t4,0
    aad4:	3c070000 	lui	a3,0x0
    aad8:	240d0001 	li	t5,1
    aadc:	afad0014 	sw	t5,20(sp)
    aae0:	24e70000 	addiu	a3,a3,0
    aae4:	afac0010 	sw	t4,16(sp)
    aae8:	8fa5002c 	lw	a1,44(sp)
    aaec:	0c000000 	jal	0 <func_80A5B2F0>
    aaf0:	26060160 	addiu	a2,s0,352
    aaf4:	8e020244 	lw	v0,580(s0)
    aaf8:	02002025 	move	a0,s0
    aafc:	50400004 	beqzl	v0,ab10 <EnHorse_Draw+0xbc>
    ab00:	8fbf0024 	lw	ra,36(sp)
    ab04:	0040f809 	jalr	v0
    ab08:	8fa5002c 	lw	a1,44(sp)
    ab0c:	8fbf0024 	lw	ra,36(sp)
    ab10:	8fb00020 	lw	s0,32(sp)
    ab14:	27bd0028 	addiu	sp,sp,40
    ab18:	03e00008 	jr	ra
    ab1c:	00000000 	nop
