
build/src/overlays/actors/ovl_En_Nb/z_en_nb.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <func_80AB0D90>:
       0:	8483001c 	lh	v1,28(a0)
       4:	00031a03 	sra	v1,v1,0x8
       8:	03e00008 	jr	ra
       c:	306200ff 	andi	v0,v1,0xff

00000010 <func_80AB0DA0>:
      10:	8483001c 	lh	v1,28(a0)
      14:	03e00008 	jr	ra
      18:	306200ff 	andi	v0,v1,0xff

0000001c <func_80AB0DAC>:
      1c:	27bdffd8 	addiu	sp,sp,-40
      20:	3c070001 	lui	a3,0x1
      24:	afbf0014 	sw	ra,20(sp)
      28:	00e53821 	addu	a3,a3,a1
      2c:	8ce71e08 	lw	a3,7688(a3)
      30:	00803025 	move	a2,a0
      34:	10e00048 	beqz	a3,158 <func_80AB0DAC+0x13c>
      38:	00000000 	nop
      3c:	afa60028 	sw	a2,40(sp)
      40:	0c000000 	jal	0 <func_80AB0D90>
      44:	afa70020 	sw	a3,32(sp)
      48:	8fa70020 	lw	a3,32(sp)
      4c:	000270c0 	sll	t6,v0,0x3
      50:	afa20018 	sw	v0,24(sp)
      54:	00ee3821 	addu	a3,a3,t6
      58:	8ce40004 	lw	a0,4(a3)
      5c:	3c080000 	lui	t0,0x0
      60:	3c0100ff 	lui	at,0xff
      64:	00047900 	sll	t7,a0,0x4
      68:	000fc702 	srl	t8,t7,0x1c
      6c:	0018c880 	sll	t9,t8,0x2
      70:	01194021 	addu	t0,t0,t9
      74:	8d080000 	lw	t0,0(t0)
      78:	3421ffff 	ori	at,at,0xffff
      7c:	00814824 	and	t1,a0,at
      80:	3c018000 	lui	at,0x8000
      84:	01091821 	addu	v1,t0,t1
      88:	00611821 	addu	v1,v1,at
      8c:	846a0000 	lh	t2,0(v1)
      90:	8fa60028 	lw	a2,40(sp)
      94:	448a2000 	mtc1	t2,$f4
      98:	00000000 	nop
      9c:	468021a0 	cvt.s.w	$f6,$f4
      a0:	e4c602e4 	swc1	$f6,740(a2)
      a4:	846b0002 	lh	t3,2(v1)
      a8:	448b4000 	mtc1	t3,$f8
      ac:	00000000 	nop
      b0:	468042a0 	cvt.s.w	$f10,$f8
      b4:	e4ca02e8 	swc1	$f10,744(a2)
      b8:	846c0004 	lh	t4,4(v1)
      bc:	448c8000 	mtc1	t4,$f16
      c0:	00000000 	nop
      c4:	468084a0 	cvt.s.w	$f18,$f16
      c8:	e4d202ec 	swc1	$f18,748(a2)
      cc:	846d0006 	lh	t5,6(v1)
      d0:	448d2000 	mtc1	t5,$f4
      d4:	00000000 	nop
      d8:	468021a0 	cvt.s.w	$f6,$f4
      dc:	e4c602f0 	swc1	$f6,752(a2)
      e0:	846e0008 	lh	t6,8(v1)
      e4:	c4c402f0 	lwc1	$f4,752(a2)
      e8:	c4c602e4 	lwc1	$f6,740(a2)
      ec:	448e4000 	mtc1	t6,$f8
      f0:	46062301 	sub.s	$f12,$f4,$f6
      f4:	468042a0 	cvt.s.w	$f10,$f8
      f8:	e4ca02f4 	swc1	$f10,756(a2)
      fc:	846f000a 	lh	t7,10(v1)
     100:	c4ca02ec 	lwc1	$f10,748(a2)
     104:	448f8000 	mtc1	t7,$f16
     108:	00000000 	nop
     10c:	468084a0 	cvt.s.w	$f18,$f16
     110:	e4d202f8 	swc1	$f18,760(a2)
     114:	c4c802f8 	lwc1	$f8,760(a2)
     118:	0c000000 	jal	0 <func_80AB0D90>
     11c:	460a4381 	sub.s	$f14,$f8,$f10
     120:	3c010000 	lui	at,0x0
     124:	c4300000 	lwc1	$f16,0(at)
     128:	8fa60028 	lw	a2,40(sp)
     12c:	3c040000 	lui	a0,0x0
     130:	46100482 	mul.s	$f18,$f0,$f16
     134:	24840000 	addiu	a0,a0,0
     138:	4600910d 	trunc.w.s	$f4,$f18
     13c:	44192000 	mfc1	t9,$f4
     140:	00000000 	nop
     144:	a4d902fc 	sh	t9,764(a2)
     148:	0c000000 	jal	0 <func_80AB0D90>
     14c:	8fa50018 	lw	a1,24(sp)
     150:	10000005 	b	168 <func_80AB0DAC+0x14c>
     154:	8fbf0014 	lw	ra,20(sp)
     158:	3c040000 	lui	a0,0x0
     15c:	0c000000 	jal	0 <func_80AB0D90>
     160:	24840000 	addiu	a0,a0,0
     164:	8fbf0014 	lw	ra,20(sp)
     168:	27bd0028 	addiu	sp,sp,40
     16c:	03e00008 	jr	ra
     170:	00000000 	nop

00000174 <func_80AB0F04>:
     174:	27bdffe0 	addiu	sp,sp,-32
     178:	00803025 	move	a2,a0
     17c:	afa50024 	sw	a1,36(sp)
     180:	00a02025 	move	a0,a1
     184:	afbf0014 	sw	ra,20(sp)
     188:	24c50294 	addiu	a1,a2,660
     18c:	afa50018 	sw	a1,24(sp)
     190:	0c000000 	jal	0 <func_80AB0D90>
     194:	afa60020 	sw	a2,32(sp)
     198:	3c070000 	lui	a3,0x0
     19c:	8fa50018 	lw	a1,24(sp)
     1a0:	8fa60020 	lw	a2,32(sp)
     1a4:	24e70000 	addiu	a3,a3,0
     1a8:	0c000000 	jal	0 <func_80AB0D90>
     1ac:	8fa40024 	lw	a0,36(sp)
     1b0:	8fbf0014 	lw	ra,20(sp)
     1b4:	27bd0020 	addiu	sp,sp,32
     1b8:	03e00008 	jr	ra
     1bc:	00000000 	nop

000001c0 <func_80AB0F50>:
     1c0:	27bdffd0 	addiu	sp,sp,-48
     1c4:	afbf0014 	sw	ra,20(sp)
     1c8:	afa50034 	sw	a1,52(sp)
     1cc:	24860294 	addiu	a2,a0,660
     1d0:	00c02825 	move	a1,a2
     1d4:	0c000000 	jal	0 <func_80AB0D90>
     1d8:	afa60018 	sw	a2,24(sp)
     1dc:	8fa40034 	lw	a0,52(sp)
     1e0:	3c010001 	lui	at,0x1
     1e4:	34211e60 	ori	at,at,0x1e60
     1e8:	8fa60018 	lw	a2,24(sp)
     1ec:	0c000000 	jal	0 <func_80AB0D90>
     1f0:	00812821 	addu	a1,a0,at
     1f4:	8fbf0014 	lw	ra,20(sp)
     1f8:	27bd0030 	addiu	sp,sp,48
     1fc:	03e00008 	jr	ra
     200:	00000000 	nop

00000204 <EnNb_Destroy>:
     204:	27bdffe8 	addiu	sp,sp,-24
     208:	00803025 	move	a2,a0
     20c:	afbf0014 	sw	ra,20(sp)
     210:	00a02025 	move	a0,a1
     214:	0c000000 	jal	0 <func_80AB0D90>
     218:	24c50294 	addiu	a1,a2,660
     21c:	8fbf0014 	lw	ra,20(sp)
     220:	27bd0018 	addiu	sp,sp,24
     224:	03e00008 	jr	ra
     228:	00000000 	nop

0000022c <func_80AB0FBC>:
     22c:	27bdffe8 	addiu	sp,sp,-24
     230:	afbf0014 	sw	ra,20(sp)
     234:	afa5001c 	sw	a1,28(sp)
     238:	8ca21c44 	lw	v0,7236(a1)
     23c:	3c030000 	lui	v1,0x0
     240:	24630000 	addiu	v1,v1,0
     244:	8c580024 	lw	t8,36(v0)
     248:	3c014110 	lui	at,0x4110
     24c:	44814000 	mtc1	at,$f8
     250:	ac980318 	sw	t8,792(a0)
     254:	8c4f0028 	lw	t7,40(v0)
     258:	24850300 	addiu	a1,a0,768
     25c:	24070002 	li	a3,2
     260:	ac8f031c 	sw	t7,796(a0)
     264:	8c58002c 	lw	t8,44(v0)
     268:	ac980320 	sw	t8,800(a0)
     26c:	8c790000 	lw	t9,0(v1)
     270:	87281474 	lh	t0,5236(t9)
     274:	44882000 	mtc1	t0,$f4
     278:	00000000 	nop
     27c:	468021a0 	cvt.s.w	$f6,$f4
     280:	46083280 	add.s	$f10,$f6,$f8
     284:	e48a0314 	swc1	$f10,788(a0)
     288:	8c690000 	lw	t1,0(v1)
     28c:	85261476 	lh	a2,5238(t1)
     290:	24c6000c 	addiu	a2,a2,12
     294:	00063400 	sll	a2,a2,0x10
     298:	0c000000 	jal	0 <func_80AB0D90>
     29c:	00063403 	sra	a2,a2,0x10
     2a0:	8fbf0014 	lw	ra,20(sp)
     2a4:	27bd0018 	addiu	sp,sp,24
     2a8:	03e00008 	jr	ra
     2ac:	00000000 	nop

000002b0 <func_80AB1040>:
     2b0:	27bdffe8 	addiu	sp,sp,-24
     2b4:	afbf0014 	sw	ra,20(sp)
     2b8:	afa5001c 	sw	a1,28(sp)
     2bc:	8ca21c44 	lw	v0,7236(a1)
     2c0:	3c030000 	lui	v1,0x0
     2c4:	24630000 	addiu	v1,v1,0
     2c8:	8c580024 	lw	t8,36(v0)
     2cc:	3c014110 	lui	at,0x4110
     2d0:	44814000 	mtc1	at,$f8
     2d4:	ac980318 	sw	t8,792(a0)
     2d8:	8c4f0028 	lw	t7,40(v0)
     2dc:	24850300 	addiu	a1,a0,768
     2e0:	24070004 	li	a3,4
     2e4:	ac8f031c 	sw	t7,796(a0)
     2e8:	8c58002c 	lw	t8,44(v0)
     2ec:	ac980320 	sw	t8,800(a0)
     2f0:	8c790000 	lw	t9,0(v1)
     2f4:	87281474 	lh	t0,5236(t9)
     2f8:	44882000 	mtc1	t0,$f4
     2fc:	00000000 	nop
     300:	468021a0 	cvt.s.w	$f6,$f4
     304:	46083280 	add.s	$f10,$f6,$f8
     308:	e48a0314 	swc1	$f10,788(a0)
     30c:	8c690000 	lw	t1,0(v1)
     310:	85261476 	lh	a2,5238(t1)
     314:	24c6000c 	addiu	a2,a2,12
     318:	00063400 	sll	a2,a2,0x10
     31c:	0c000000 	jal	0 <func_80AB0D90>
     320:	00063403 	sra	a2,a2,0x10
     324:	8fbf0014 	lw	ra,20(sp)
     328:	27bd0018 	addiu	sp,sp,24
     32c:	03e00008 	jr	ra
     330:	00000000 	nop

00000334 <func_80AB10C4>:
     334:	27bdffc8 	addiu	sp,sp,-56
     338:	afa40038 	sw	a0,56(sp)
     33c:	afbf001c 	sw	ra,28(sp)
     340:	24840308 	addiu	a0,a0,776
     344:	240e0064 	li	t6,100
     348:	afae0010 	sw	t6,16(sp)
     34c:	afa40024 	sw	a0,36(sp)
     350:	00002825 	move	a1,zero
     354:	24060014 	li	a2,20
     358:	0c000000 	jal	0 <func_80AB0D90>
     35c:	24071838 	li	a3,6200
     360:	8fa40024 	lw	a0,36(sp)
     364:	240f0064 	li	t7,100
     368:	afaf0010 	sw	t7,16(sp)
     36c:	00002825 	move	a1,zero
     370:	24060014 	li	a2,20
     374:	24071838 	li	a3,6200
     378:	0c000000 	jal	0 <func_80AB0D90>
     37c:	24840002 	addiu	a0,a0,2
     380:	8fa40038 	lw	a0,56(sp)
     384:	24180064 	li	t8,100
     388:	afb80010 	sw	t8,16(sp)
     38c:	2484030e 	addiu	a0,a0,782
     390:	afa40024 	sw	a0,36(sp)
     394:	00002825 	move	a1,zero
     398:	24060014 	li	a2,20
     39c:	0c000000 	jal	0 <func_80AB0D90>
     3a0:	24071838 	li	a3,6200
     3a4:	8fa40024 	lw	a0,36(sp)
     3a8:	24190064 	li	t9,100
     3ac:	afb90010 	sw	t9,16(sp)
     3b0:	00002825 	move	a1,zero
     3b4:	24060014 	li	a2,20
     3b8:	24071838 	li	a3,6200
     3bc:	0c000000 	jal	0 <func_80AB0D90>
     3c0:	24840002 	addiu	a0,a0,2
     3c4:	8fbf001c 	lw	ra,28(sp)
     3c8:	27bd0038 	addiu	sp,sp,56
     3cc:	03e00008 	jr	ra
     3d0:	00000000 	nop

000003d4 <func_80AB1164>:
     3d4:	27bdffc8 	addiu	sp,sp,-56
     3d8:	afbf0014 	sw	ra,20(sp)
     3dc:	848e0276 	lh	t6,630(a0)
     3e0:	00803025 	move	a2,a0
     3e4:	24c30276 	addiu	v1,a2,630
     3e8:	15c00003 	bnez	t6,3f8 <func_80AB1164+0x24>
     3ec:	00001025 	move	v0,zero
     3f0:	10000005 	b	408 <func_80AB1164+0x34>
     3f4:	24830276 	addiu	v1,a0,630
     3f8:	846f0000 	lh	t7,0(v1)
     3fc:	25f8ffff 	addiu	t8,t7,-1
     400:	a4780000 	sh	t8,0(v1)
     404:	84620000 	lh	v0,0(v1)
     408:	14400008 	bnez	v0,42c <func_80AB1164+0x58>
     40c:	2404003c 	li	a0,60
     410:	2405003c 	li	a1,60
     414:	afa3001c 	sw	v1,28(sp)
     418:	0c000000 	jal	0 <func_80AB0D90>
     41c:	afa60038 	sw	a2,56(sp)
     420:	8fa3001c 	lw	v1,28(sp)
     424:	8fa60038 	lw	a2,56(sp)
     428:	a4620000 	sh	v0,0(v1)
     42c:	84790000 	lh	t9,0(v1)
     430:	24c20274 	addiu	v0,a2,628
     434:	a4590000 	sh	t9,0(v0)
     438:	84480000 	lh	t0,0(v0)
     43c:	29010003 	slti	at,t0,3
     440:	54200003 	bnezl	at,450 <func_80AB1164+0x7c>
     444:	8fbf0014 	lw	ra,20(sp)
     448:	a4400000 	sh	zero,0(v0)
     44c:	8fbf0014 	lw	ra,20(sp)
     450:	27bd0038 	addiu	sp,sp,56
     454:	03e00008 	jr	ra
     458:	00000000 	nop

0000045c <func_80AB11EC>:
     45c:	44802000 	mtc1	zero,$f4
     460:	240e0007 	li	t6,7
     464:	ac8e0278 	sw	t6,632(a0)
     468:	ac80027c 	sw	zero,636(a0)
     46c:	ac800284 	sw	zero,644(a0)
     470:	ac800288 	sw	zero,648(a0)
     474:	a08000c8 	sb	zero,200(a0)
     478:	03e00008 	jr	ra
     47c:	e4840280 	swc1	$f4,640(a0)

00000480 <func_80AB1210>:
     480:	27bdffe8 	addiu	sp,sp,-24
     484:	afbf0014 	sw	ra,20(sp)
     488:	90ae1d6c 	lbu	t6,7532(a1)
     48c:	3c0f0000 	lui	t7,0x0
     490:	3c190000 	lui	t9,0x0
     494:	15c0000d 	bnez	t6,4cc <func_80AB1210+0x4c>
     498:	00000000 	nop
     49c:	8def0000 	lw	t7,0(t7)
     4a0:	51e00011 	beqzl	t7,4e8 <func_80AB1210+0x68>
     4a4:	8fbf0014 	lw	ra,20(sp)
     4a8:	8498001c 	lh	t8,28(a0)
     4ac:	24010002 	li	at,2
     4b0:	17010003 	bne	t8,at,4c0 <func_80AB1210+0x40>
     4b4:	00000000 	nop
     4b8:	0c000000 	jal	0 <func_80AB0D90>
     4bc:	00000000 	nop
     4c0:	3c010000 	lui	at,0x0
     4c4:	10000007 	b	4e4 <func_80AB1210+0x64>
     4c8:	ac200000 	sw	zero,0(at)
     4cc:	8f390000 	lw	t9,0(t9)
     4d0:	24080001 	li	t0,1
     4d4:	3c010000 	lui	at,0x0
     4d8:	57200003 	bnezl	t9,4e8 <func_80AB1210+0x68>
     4dc:	8fbf0014 	lw	ra,20(sp)
     4e0:	ac280000 	sw	t0,0(at)
     4e4:	8fbf0014 	lw	ra,20(sp)
     4e8:	27bd0018 	addiu	sp,sp,24
     4ec:	03e00008 	jr	ra
     4f0:	00000000 	nop

000004f4 <func_80AB1284>:
     4f4:	27bdffe0 	addiu	sp,sp,-32
     4f8:	3c0141f0 	lui	at,0x41f0
     4fc:	44810000 	mtc1	at,$f0
     500:	afa50024 	sw	a1,36(sp)
     504:	00802825 	move	a1,a0
     508:	afbf001c 	sw	ra,28(sp)
     50c:	afa40020 	sw	a0,32(sp)
     510:	240e0004 	li	t6,4
     514:	44070000 	mfc1	a3,$f0
     518:	afae0014 	sw	t6,20(sp)
     51c:	8fa40024 	lw	a0,36(sp)
     520:	3c064296 	lui	a2,0x4296
     524:	0c000000 	jal	0 <func_80AB0D90>
     528:	e7a00010 	swc1	$f0,16(sp)
     52c:	8fbf001c 	lw	ra,28(sp)
     530:	27bd0020 	addiu	sp,sp,32
     534:	03e00008 	jr	ra
     538:	00000000 	nop

0000053c <func_80AB12CC>:
     53c:	27bdffe8 	addiu	sp,sp,-24
     540:	afbf0014 	sw	ra,20(sp)
     544:	0c000000 	jal	0 <func_80AB0D90>
     548:	2484014c 	addiu	a0,a0,332
     54c:	8fbf0014 	lw	ra,20(sp)
     550:	27bd0018 	addiu	sp,sp,24
     554:	03e00008 	jr	ra
     558:	00000000 	nop

0000055c <func_80AB12EC>:
     55c:	908e1d6c 	lbu	t6,7532(a0)
     560:	00057880 	sll	t7,a1,0x2
     564:	008fc021 	addu	t8,a0,t7
     568:	11c00003 	beqz	t6,578 <func_80AB12EC+0x1c>
     56c:	00001025 	move	v0,zero
     570:	03e00008 	jr	ra
     574:	8f021d8c 	lw	v0,7564(t8)
     578:	03e00008 	jr	ra
     57c:	00000000 	nop

00000580 <func_80AB1310>:
     580:	27bdffe8 	addiu	sp,sp,-24
     584:	00803825 	move	a3,a0
     588:	afbf0014 	sw	ra,20(sp)
     58c:	afa5001c 	sw	a1,28(sp)
     590:	00a02025 	move	a0,a1
     594:	00c02825 	move	a1,a2
     598:	0c000000 	jal	0 <func_80AB0D90>
     59c:	afa70018 	sw	a3,24(sp)
     5a0:	10400013 	beqz	v0,5f0 <func_80AB1310+0x70>
     5a4:	8fa70018 	lw	a3,24(sp)
     5a8:	8c4e000c 	lw	t6,12(v0)
     5ac:	448e2000 	mtc1	t6,$f4
     5b0:	00000000 	nop
     5b4:	468021a0 	cvt.s.w	$f6,$f4
     5b8:	e4e60024 	swc1	$f6,36(a3)
     5bc:	8c4f0010 	lw	t7,16(v0)
     5c0:	448f4000 	mtc1	t7,$f8
     5c4:	00000000 	nop
     5c8:	468042a0 	cvt.s.w	$f10,$f8
     5cc:	e4ea0028 	swc1	$f10,40(a3)
     5d0:	8c580014 	lw	t8,20(v0)
     5d4:	44988000 	mtc1	t8,$f16
     5d8:	00000000 	nop
     5dc:	468084a0 	cvt.s.w	$f18,$f16
     5e0:	e4f2002c 	swc1	$f18,44(a3)
     5e4:	84430008 	lh	v1,8(v0)
     5e8:	a4e300b6 	sh	v1,182(a3)
     5ec:	a4e30032 	sh	v1,50(a3)
     5f0:	8fbf0014 	lw	ra,20(sp)
     5f4:	27bd0018 	addiu	sp,sp,24
     5f8:	03e00008 	jr	ra
     5fc:	00000000 	nop

00000600 <func_80AB1390>:
     600:	afa40000 	sw	a0,0(sp)
     604:	afa60008 	sw	a2,8(sp)
     608:	90ae1d6c 	lbu	t6,7532(a1)
     60c:	00077880 	sll	t7,a3,0x2
     610:	30c6ffff 	andi	a2,a2,0xffff
     614:	11c00009 	beqz	t6,63c <func_80AB1390+0x3c>
     618:	00afc021 	addu	t8,a1,t7
     61c:	8f021d8c 	lw	v0,7564(t8)
     620:	50400007 	beqzl	v0,640 <func_80AB1390+0x40>
     624:	00001025 	move	v0,zero
     628:	94590000 	lhu	t9,0(v0)
     62c:	54d90004 	bnel	a2,t9,640 <func_80AB1390+0x40>
     630:	00001025 	move	v0,zero
     634:	03e00008 	jr	ra
     638:	24020001 	li	v0,1
     63c:	00001025 	move	v0,zero
     640:	03e00008 	jr	ra
     644:	00000000 	nop

00000648 <func_80AB13D8>:
     648:	afa40000 	sw	a0,0(sp)
     64c:	afa60008 	sw	a2,8(sp)
     650:	90ae1d6c 	lbu	t6,7532(a1)
     654:	00077880 	sll	t7,a3,0x2
     658:	30c6ffff 	andi	a2,a2,0xffff
     65c:	11c00009 	beqz	t6,684 <func_80AB13D8+0x3c>
     660:	00afc021 	addu	t8,a1,t7
     664:	8f021d8c 	lw	v0,7564(t8)
     668:	50400007 	beqzl	v0,688 <func_80AB13D8+0x40>
     66c:	00001025 	move	v0,zero
     670:	94590000 	lhu	t9,0(v0)
     674:	50d90004 	beql	a2,t9,688 <func_80AB13D8+0x40>
     678:	00001025 	move	v0,zero
     67c:	03e00008 	jr	ra
     680:	24020001 	li	v0,1
     684:	00001025 	move	v0,zero
     688:	03e00008 	jr	ra
     68c:	00000000 	nop

00000690 <func_80AB1420>:
     690:	27bdffe8 	addiu	sp,sp,-24
     694:	00803825 	move	a3,a0
     698:	afbf0014 	sw	ra,20(sp)
     69c:	afa5001c 	sw	a1,28(sp)
     6a0:	00a02025 	move	a0,a1
     6a4:	00c02825 	move	a1,a2
     6a8:	0c000000 	jal	0 <func_80AB0D90>
     6ac:	afa70018 	sw	a3,24(sp)
     6b0:	10400013 	beqz	v0,700 <func_80AB1420+0x70>
     6b4:	8fa70018 	lw	a3,24(sp)
     6b8:	8c4e000c 	lw	t6,12(v0)
     6bc:	448e2000 	mtc1	t6,$f4
     6c0:	00000000 	nop
     6c4:	468021a0 	cvt.s.w	$f6,$f4
     6c8:	e4e60024 	swc1	$f6,36(a3)
     6cc:	8c4f0010 	lw	t7,16(v0)
     6d0:	448f4000 	mtc1	t7,$f8
     6d4:	00000000 	nop
     6d8:	468042a0 	cvt.s.w	$f10,$f8
     6dc:	e4ea0028 	swc1	$f10,40(a3)
     6e0:	8c580014 	lw	t8,20(v0)
     6e4:	44988000 	mtc1	t8,$f16
     6e8:	00000000 	nop
     6ec:	468084a0 	cvt.s.w	$f18,$f16
     6f0:	e4f2002c 	swc1	$f18,44(a3)
     6f4:	84430008 	lh	v1,8(v0)
     6f8:	a4e300b6 	sh	v1,182(a3)
     6fc:	a4e30032 	sh	v1,50(a3)
     700:	8fbf0014 	lw	ra,20(sp)
     704:	27bd0018 	addiu	sp,sp,24
     708:	03e00008 	jr	ra
     70c:	00000000 	nop

00000710 <func_80AB14A0>:
     710:	27bdffd8 	addiu	sp,sp,-40
     714:	afbf0024 	sw	ra,36(sp)
     718:	afa40028 	sw	a0,40(sp)
     71c:	afa5002c 	sw	a1,44(sp)
     720:	afa60030 	sw	a2,48(sp)
     724:	afa70034 	sw	a3,52(sp)
     728:	0c000000 	jal	0 <func_80AB0D90>
     72c:	00a02025 	move	a0,a1
     730:	8fae0038 	lw	t6,56(sp)
     734:	8fa40028 	lw	a0,40(sp)
     738:	8fa5002c 	lw	a1,44(sp)
     73c:	15c00007 	bnez	t6,75c <func_80AB14A0+0x4c>
     740:	2484014c 	addiu	a0,a0,332
     744:	44822000 	mtc1	v0,$f4
     748:	3c013f80 	lui	at,0x3f80
     74c:	44800000 	mtc1	zero,$f0
     750:	44816000 	mtc1	at,$f12
     754:	10000006 	b	770 <func_80AB14A0+0x60>
     758:	468020a0 	cvt.s.w	$f2,$f4
     75c:	44823000 	mtc1	v0,$f6
     760:	3c01bf80 	lui	at,0xbf80
     764:	44801000 	mtc1	zero,$f2
     768:	44816000 	mtc1	at,$f12
     76c:	46803020 	cvt.s.w	$f0,$f6
     770:	93af0033 	lbu	t7,51(sp)
     774:	c7a80034 	lwc1	$f8,52(sp)
     778:	44066000 	mfc1	a2,$f12
     77c:	44070000 	mfc1	a3,$f0
     780:	e7a20010 	swc1	$f2,16(sp)
     784:	afaf0014 	sw	t7,20(sp)
     788:	0c000000 	jal	0 <func_80AB0D90>
     78c:	e7a80018 	swc1	$f8,24(sp)
     790:	8fbf0024 	lw	ra,36(sp)
     794:	27bd0028 	addiu	sp,sp,40
     798:	03e00008 	jr	ra
     79c:	00000000 	nop

000007a0 <func_80AB1530>:
     7a0:	27bdffe0 	addiu	sp,sp,-32
     7a4:	afa50024 	sw	a1,36(sp)
     7a8:	afbf001c 	sw	ra,28(sp)
     7ac:	3c050601 	lui	a1,0x601
     7b0:	afa40020 	sw	a0,32(sp)
     7b4:	24a59694 	addiu	a1,a1,-26988
     7b8:	afa00010 	sw	zero,16(sp)
     7bc:	00003025 	move	a2,zero
     7c0:	0c000000 	jal	0 <func_80AB0D90>
     7c4:	24070000 	li	a3,0
     7c8:	3c010000 	lui	at,0x0
     7cc:	c4240000 	lwc1	$f4,0(at)
     7d0:	8fae0020 	lw	t6,32(sp)
     7d4:	e5c400bc 	swc1	$f4,188(t6)
     7d8:	8fbf001c 	lw	ra,28(sp)
     7dc:	27bd0020 	addiu	sp,sp,32
     7e0:	03e00008 	jr	ra
     7e4:	00000000 	nop

000007e8 <func_80AB1578>:
     7e8:	27bdffc8 	addiu	sp,sp,-56
     7ec:	afbf0034 	sw	ra,52(sp)
     7f0:	afa40038 	sw	a0,56(sp)
     7f4:	c4800024 	lwc1	$f0,36(a0)
     7f8:	c4820028 	lwc1	$f2,40(a0)
     7fc:	c48c002c 	lwc1	$f12,44(a0)
     800:	00a03025 	move	a2,a1
     804:	00802825 	move	a1,a0
     808:	240e0002 	li	t6,2
     80c:	afae0028 	sw	t6,40(sp)
     810:	24c41c24 	addiu	a0,a2,7204
     814:	afa00024 	sw	zero,36(sp)
     818:	afa00020 	sw	zero,32(sp)
     81c:	afa0001c 	sw	zero,28(sp)
     820:	2407005d 	li	a3,93
     824:	e7a00010 	swc1	$f0,16(sp)
     828:	e7a20014 	swc1	$f2,20(sp)
     82c:	0c000000 	jal	0 <func_80AB0D90>
     830:	e7ac0018 	swc1	$f12,24(sp)
     834:	8fbf0034 	lw	ra,52(sp)
     838:	27bd0038 	addiu	sp,sp,56
     83c:	03e00008 	jr	ra
     840:	00000000 	nop

00000844 <func_80AB15D4>:
     844:	27bdffc8 	addiu	sp,sp,-56
     848:	afbf0034 	sw	ra,52(sp)
     84c:	afa40038 	sw	a0,56(sp)
     850:	00a03025 	move	a2,a1
     854:	8cc21c44 	lw	v0,7236(a2)
     858:	3c014248 	lui	at,0x4248
     85c:	44813000 	mtc1	at,$f6
     860:	c4440028 	lwc1	$f4,40(v0)
     864:	c4400024 	lwc1	$f0,36(v0)
     868:	c44c002c 	lwc1	$f12,44(v0)
     86c:	46062080 	add.s	$f2,$f4,$f6
     870:	00802825 	move	a1,a0
     874:	240e000c 	li	t6,12
     878:	afae0028 	sw	t6,40(sp)
     87c:	24c41c24 	addiu	a0,a2,7204
     880:	e7a20014 	swc1	$f2,20(sp)
     884:	afa6003c 	sw	a2,60(sp)
     888:	afa00024 	sw	zero,36(sp)
     88c:	afa00020 	sw	zero,32(sp)
     890:	afa0001c 	sw	zero,28(sp)
     894:	2407008b 	li	a3,139
     898:	e7a00010 	swc1	$f0,16(sp)
     89c:	0c000000 	jal	0 <func_80AB0D90>
     8a0:	e7ac0018 	swc1	$f12,24(sp)
     8a4:	8fa4003c 	lw	a0,60(sp)
     8a8:	0c000000 	jal	0 <func_80AB0D90>
     8ac:	24050069 	li	a1,105
     8b0:	8fbf0034 	lw	ra,52(sp)
     8b4:	27bd0038 	addiu	sp,sp,56
     8b8:	03e00008 	jr	ra
     8bc:	00000000 	nop

000008c0 <func_80AB1650>:
     8c0:	afa50004 	sw	a1,4(sp)
     8c4:	3c010000 	lui	at,0x0
     8c8:	c4260000 	lwc1	$f6,0(at)
     8cc:	c48400bc 	lwc1	$f4,188(a0)
     8d0:	46062200 	add.s	$f8,$f4,$f6
     8d4:	03e00008 	jr	ra
     8d8:	e48800bc 	swc1	$f8,188(a0)

000008dc <func_80AB166C>:
     8dc:	3c020000 	lui	v0,0x0
     8e0:	24420000 	addiu	v0,v0,0
     8e4:	904e1415 	lbu	t6,5141(v0)
     8e8:	27bdffd8 	addiu	sp,sp,-40
     8ec:	24010003 	li	at,3
     8f0:	afbf0014 	sw	ra,20(sp)
     8f4:	15c10019 	bne	t6,at,95c <func_80AB166C+0x80>
     8f8:	afa40028 	sw	a0,40(sp)
     8fc:	8c4f1360 	lw	t7,4960(v0)
     900:	3c080000 	lui	t0,0x0
     904:	24180001 	li	t8,1
     908:	29e10004 	slti	at,t7,4
     90c:	10200013 	beqz	at,95c <func_80AB166C+0x80>
     910:	25080000 	addiu	t0,t0,0
     914:	8ca31c44 	lw	v1,7236(a1)
     918:	ac980278 	sw	t8,632(a0)
     91c:	aca81d68 	sw	t0,7528(a1)
     920:	24090002 	li	t1,2
     924:	00a02025 	move	a0,a1
     928:	a0491414 	sb	t1,5140(v0)
     92c:	24050069 	li	a1,105
     930:	0c000000 	jal	0 <func_80AB0D90>
     934:	afa3001c 	sw	v1,28(sp)
     938:	8faa0028 	lw	t2,40(sp)
     93c:	34018000 	li	at,0x8000
     940:	8fa3001c 	lw	v1,28(sp)
     944:	85420032 	lh	v0,50(t2)
     948:	00411021 	addu	v0,v0,at
     94c:	00021400 	sll	v0,v0,0x10
     950:	00021403 	sra	v0,v0,0x10
     954:	a46200b6 	sh	v0,182(v1)
     958:	a4620032 	sh	v0,50(v1)
     95c:	8fbf0014 	lw	ra,20(sp)
     960:	27bd0028 	addiu	sp,sp,40
     964:	03e00008 	jr	ra
     968:	00000000 	nop

0000096c <func_80AB16FC>:
     96c:	27bdffe8 	addiu	sp,sp,-24
     970:	afbf0014 	sw	ra,20(sp)
     974:	90ae1d6c 	lbu	t6,7532(a1)
     978:	51c0000d 	beqzl	t6,9b0 <func_80AB16FC+0x44>
     97c:	8fbf0014 	lw	ra,20(sp)
     980:	8ca21d90 	lw	v0,7568(a1)
     984:	5040000a 	beqzl	v0,9b0 <func_80AB16FC+0x44>
     988:	8fbf0014 	lw	ra,20(sp)
     98c:	944f0000 	lhu	t7,0(v0)
     990:	24030002 	li	v1,2
     994:	24180001 	li	t8,1
     998:	546f0005 	bnel	v1,t7,9b0 <func_80AB16FC+0x44>
     99c:	8fbf0014 	lw	ra,20(sp)
     9a0:	ac830278 	sw	v1,632(a0)
     9a4:	0c000000 	jal	0 <func_80AB0D90>
     9a8:	ac98027c 	sw	t8,636(a0)
     9ac:	8fbf0014 	lw	ra,20(sp)
     9b0:	27bd0018 	addiu	sp,sp,24
     9b4:	03e00008 	jr	ra
     9b8:	00000000 	nop

000009bc <func_80AB174C>:
     9bc:	44800000 	mtc1	zero,$f0
     9c0:	c48400bc 	lwc1	$f4,188(a0)
     9c4:	240e0003 	li	t6,3
     9c8:	4604003e 	c.le.s	$f0,$f4
     9cc:	00000000 	nop
     9d0:	45000003 	bc1f	9e0 <func_80AB174C+0x24>
     9d4:	00000000 	nop
     9d8:	ac8e0278 	sw	t6,632(a0)
     9dc:	e48000bc 	swc1	$f0,188(a0)
     9e0:	03e00008 	jr	ra
     9e4:	00000000 	nop

000009e8 <func_80AB1778>:
     9e8:	27bdffd8 	addiu	sp,sp,-40
     9ec:	afbf0024 	sw	ra,36(sp)
     9f0:	afa40028 	sw	a0,40(sp)
     9f4:	90ae1d6c 	lbu	t6,7532(a1)
     9f8:	51c0001d 	beqzl	t6,a70 <func_80AB1778+0x88>
     9fc:	8fbf0024 	lw	ra,36(sp)
     a00:	8ca21d90 	lw	v0,7568(a1)
     a04:	5040001a 	beqzl	v0,a70 <func_80AB1778+0x88>
     a08:	8fbf0024 	lw	ra,36(sp)
     a0c:	944f0000 	lhu	t7,0(v0)
     a10:	24010003 	li	at,3
     a14:	3c040600 	lui	a0,0x600
     a18:	55e10015 	bnel	t7,at,a70 <func_80AB1778+0x88>
     a1c:	8fbf0024 	lw	ra,36(sp)
     a20:	0c000000 	jal	0 <func_80AB0D90>
     a24:	2484274c 	addiu	a0,a0,10060
     a28:	44822000 	mtc1	v0,$f4
     a2c:	44800000 	mtc1	zero,$f0
     a30:	8fa40028 	lw	a0,40(sp)
     a34:	468021a0 	cvt.s.w	$f6,$f4
     a38:	3c050600 	lui	a1,0x600
     a3c:	24180002 	li	t8,2
     a40:	44070000 	mfc1	a3,$f0
     a44:	afb80014 	sw	t8,20(sp)
     a48:	24a5274c 	addiu	a1,a1,10060
     a4c:	e7a60010 	swc1	$f6,16(sp)
     a50:	3c063f80 	lui	a2,0x3f80
     a54:	2484014c 	addiu	a0,a0,332
     a58:	0c000000 	jal	0 <func_80AB0D90>
     a5c:	e7a00018 	swc1	$f0,24(sp)
     a60:	8fa80028 	lw	t0,40(sp)
     a64:	24190004 	li	t9,4
     a68:	ad190278 	sw	t9,632(t0)
     a6c:	8fbf0024 	lw	ra,36(sp)
     a70:	27bd0028 	addiu	sp,sp,40
     a74:	03e00008 	jr	ra
     a78:	00000000 	nop

00000a7c <func_80AB180C>:
     a7c:	27bdffd8 	addiu	sp,sp,-40
     a80:	afbf0024 	sw	ra,36(sp)
     a84:	10a00014 	beqz	a1,ad8 <func_80AB180C+0x5c>
     a88:	afa40028 	sw	a0,40(sp)
     a8c:	3c040600 	lui	a0,0x600
     a90:	0c000000 	jal	0 <func_80AB0D90>
     a94:	24842b4c 	addiu	a0,a0,11084
     a98:	44822000 	mtc1	v0,$f4
     a9c:	44800000 	mtc1	zero,$f0
     aa0:	8fa40028 	lw	a0,40(sp)
     aa4:	468021a0 	cvt.s.w	$f6,$f4
     aa8:	3c050600 	lui	a1,0x600
     aac:	44070000 	mfc1	a3,$f0
     ab0:	24a52b4c 	addiu	a1,a1,11084
     ab4:	3c063f80 	lui	a2,0x3f80
     ab8:	afa00014 	sw	zero,20(sp)
     abc:	e7a60010 	swc1	$f6,16(sp)
     ac0:	2484014c 	addiu	a0,a0,332
     ac4:	0c000000 	jal	0 <func_80AB0D90>
     ac8:	e7a00018 	swc1	$f0,24(sp)
     acc:	8faf0028 	lw	t7,40(sp)
     ad0:	240e0005 	li	t6,5
     ad4:	adee0278 	sw	t6,632(t7)
     ad8:	8fbf0024 	lw	ra,36(sp)
     adc:	27bd0028 	addiu	sp,sp,40
     ae0:	03e00008 	jr	ra
     ae4:	00000000 	nop

00000ae8 <func_80AB1878>:
     ae8:	27bdffe8 	addiu	sp,sp,-24
     aec:	afbf0014 	sw	ra,20(sp)
     af0:	90ae1d6c 	lbu	t6,7532(a1)
     af4:	51c0000c 	beqzl	t6,b28 <func_80AB1878+0x40>
     af8:	8fbf0014 	lw	ra,20(sp)
     afc:	8ca21da4 	lw	v0,7588(a1)
     b00:	50400009 	beqzl	v0,b28 <func_80AB1878+0x40>
     b04:	8fbf0014 	lw	ra,20(sp)
     b08:	944f0000 	lhu	t7,0(v0)
     b0c:	24010002 	li	at,2
     b10:	24180006 	li	t8,6
     b14:	55e10004 	bnel	t7,at,b28 <func_80AB1878+0x40>
     b18:	8fbf0014 	lw	ra,20(sp)
     b1c:	0c000000 	jal	0 <func_80AB0D90>
     b20:	ac980278 	sw	t8,632(a0)
     b24:	8fbf0014 	lw	ra,20(sp)
     b28:	27bd0018 	addiu	sp,sp,24
     b2c:	03e00008 	jr	ra
     b30:	00000000 	nop

00000b34 <func_80AB18C4>:
     b34:	27bdffe8 	addiu	sp,sp,-24
     b38:	afbf0014 	sw	ra,20(sp)
     b3c:	0c000000 	jal	0 <func_80AB0D90>
     b40:	00000000 	nop
     b44:	8fbf0014 	lw	ra,20(sp)
     b48:	27bd0018 	addiu	sp,sp,24
     b4c:	03e00008 	jr	ra
     b50:	00000000 	nop

00000b54 <func_80AB18E4>:
     b54:	27bdffe8 	addiu	sp,sp,-24
     b58:	afbf0014 	sw	ra,20(sp)
     b5c:	0c000000 	jal	0 <func_80AB0D90>
     b60:	00000000 	nop
     b64:	8fbf0014 	lw	ra,20(sp)
     b68:	27bd0018 	addiu	sp,sp,24
     b6c:	03e00008 	jr	ra
     b70:	00000000 	nop

00000b74 <func_80AB1904>:
     b74:	27bdffe8 	addiu	sp,sp,-24
     b78:	afbf0014 	sw	ra,20(sp)
     b7c:	0c000000 	jal	0 <func_80AB0D90>
     b80:	afa40018 	sw	a0,24(sp)
     b84:	0c000000 	jal	0 <func_80AB0D90>
     b88:	8fa40018 	lw	a0,24(sp)
     b8c:	0c000000 	jal	0 <func_80AB0D90>
     b90:	8fa40018 	lw	a0,24(sp)
     b94:	0c000000 	jal	0 <func_80AB0D90>
     b98:	8fa40018 	lw	a0,24(sp)
     b9c:	8fbf0014 	lw	ra,20(sp)
     ba0:	27bd0018 	addiu	sp,sp,24
     ba4:	03e00008 	jr	ra
     ba8:	00000000 	nop

00000bac <func_80AB193C>:
     bac:	27bdffe8 	addiu	sp,sp,-24
     bb0:	afbf0014 	sw	ra,20(sp)
     bb4:	afa40018 	sw	a0,24(sp)
     bb8:	0c000000 	jal	0 <func_80AB0D90>
     bbc:	afa5001c 	sw	a1,28(sp)
     bc0:	0c000000 	jal	0 <func_80AB0D90>
     bc4:	8fa40018 	lw	a0,24(sp)
     bc8:	0c000000 	jal	0 <func_80AB0D90>
     bcc:	8fa40018 	lw	a0,24(sp)
     bd0:	8fa40018 	lw	a0,24(sp)
     bd4:	0c000000 	jal	0 <func_80AB0D90>
     bd8:	8fa5001c 	lw	a1,28(sp)
     bdc:	8fbf0014 	lw	ra,20(sp)
     be0:	27bd0018 	addiu	sp,sp,24
     be4:	03e00008 	jr	ra
     be8:	00000000 	nop

00000bec <func_80AB197C>:
     bec:	27bdffe0 	addiu	sp,sp,-32
     bf0:	afbf0014 	sw	ra,20(sp)
     bf4:	0c000000 	jal	0 <func_80AB0D90>
     bf8:	afa40020 	sw	a0,32(sp)
     bfc:	0c000000 	jal	0 <func_80AB0D90>
     c00:	8fa40020 	lw	a0,32(sp)
     c04:	afa2001c 	sw	v0,28(sp)
     c08:	0c000000 	jal	0 <func_80AB0D90>
     c0c:	8fa40020 	lw	a0,32(sp)
     c10:	8fa40020 	lw	a0,32(sp)
     c14:	0c000000 	jal	0 <func_80AB0D90>
     c18:	8fa5001c 	lw	a1,28(sp)
     c1c:	8fbf0014 	lw	ra,20(sp)
     c20:	27bd0020 	addiu	sp,sp,32
     c24:	03e00008 	jr	ra
     c28:	00000000 	nop

00000c2c <func_80AB19BC>:
     c2c:	27bdffe8 	addiu	sp,sp,-24
     c30:	afbf0014 	sw	ra,20(sp)
     c34:	afa40018 	sw	a0,24(sp)
     c38:	0c000000 	jal	0 <func_80AB0D90>
     c3c:	afa5001c 	sw	a1,28(sp)
     c40:	0c000000 	jal	0 <func_80AB0D90>
     c44:	8fa40018 	lw	a0,24(sp)
     c48:	0c000000 	jal	0 <func_80AB0D90>
     c4c:	8fa40018 	lw	a0,24(sp)
     c50:	8fa40018 	lw	a0,24(sp)
     c54:	0c000000 	jal	0 <func_80AB0D90>
     c58:	8fa5001c 	lw	a1,28(sp)
     c5c:	8fbf0014 	lw	ra,20(sp)
     c60:	27bd0018 	addiu	sp,sp,24
     c64:	03e00008 	jr	ra
     c68:	00000000 	nop

00000c6c <func_80AB19FC>:
     c6c:	27bdffe8 	addiu	sp,sp,-24
     c70:	afbf0014 	sw	ra,20(sp)
     c74:	0c000000 	jal	0 <func_80AB0D90>
     c78:	afa40018 	sw	a0,24(sp)
     c7c:	0c000000 	jal	0 <func_80AB0D90>
     c80:	8fa40018 	lw	a0,24(sp)
     c84:	0c000000 	jal	0 <func_80AB0D90>
     c88:	8fa40018 	lw	a0,24(sp)
     c8c:	8fbf0014 	lw	ra,20(sp)
     c90:	27bd0018 	addiu	sp,sp,24
     c94:	03e00008 	jr	ra
     c98:	00000000 	nop

00000c9c <func_80AB1A2C>:
     c9c:	27bdffe0 	addiu	sp,sp,-32
     ca0:	afa50024 	sw	a1,36(sp)
     ca4:	afbf001c 	sw	ra,28(sp)
     ca8:	3c050600 	lui	a1,0x600
     cac:	24a50410 	addiu	a1,a1,1040
     cb0:	afa00010 	sw	zero,16(sp)
     cb4:	afa40020 	sw	a0,32(sp)
     cb8:	24060002 	li	a2,2
     cbc:	0c000000 	jal	0 <func_80AB0D90>
     cc0:	24070000 	li	a3,0
     cc4:	8fa40020 	lw	a0,32(sp)
     cc8:	240e0007 	li	t6,7
     ccc:	ac8e0278 	sw	t6,632(a0)
     cd0:	a08000c8 	sb	zero,200(a0)
     cd4:	8fbf001c 	lw	ra,28(sp)
     cd8:	27bd0020 	addiu	sp,sp,32
     cdc:	03e00008 	jr	ra
     ce0:	00000000 	nop

00000ce4 <func_80AB1A74>:
     ce4:	27bdffe8 	addiu	sp,sp,-24
     ce8:	afbf0014 	sw	ra,20(sp)
     cec:	0c000000 	jal	0 <func_80AB0D90>
     cf0:	24044834 	li	a0,18484
     cf4:	8fbf0014 	lw	ra,20(sp)
     cf8:	27bd0018 	addiu	sp,sp,24
     cfc:	03e00008 	jr	ra
     d00:	00000000 	nop

00000d04 <func_80AB1A94>:
     d04:	27bdffc8 	addiu	sp,sp,-56
     d08:	00a03025 	move	a2,a1
     d0c:	00802825 	move	a1,a0
     d10:	afbf0034 	sw	ra,52(sp)
     d14:	afa40038 	sw	a0,56(sp)
     d18:	c4a40024 	lwc1	$f4,36(a1)
     d1c:	3c0e0000 	lui	t6,0x0
     d20:	8dce0000 	lw	t6,0(t6)
     d24:	e7a40010 	swc1	$f4,16(sp)
     d28:	3c0141b0 	lui	at,0x41b0
     d2c:	85cf147e 	lh	t7,5246(t6)
     d30:	44815000 	mtc1	at,$f10
     d34:	c4b20028 	lwc1	$f18,40(a1)
     d38:	448f3000 	mtc1	t7,$f6
     d3c:	24180007 	li	t8,7
     d40:	24c41c24 	addiu	a0,a2,7204
     d44:	46803220 	cvt.s.w	$f8,$f6
     d48:	240700f5 	li	a3,245
     d4c:	460a4400 	add.s	$f16,$f8,$f10
     d50:	46128100 	add.s	$f4,$f16,$f18
     d54:	e7a40014 	swc1	$f4,20(sp)
     d58:	c4a6002c 	lwc1	$f6,44(a1)
     d5c:	afb80028 	sw	t8,40(sp)
     d60:	afa00024 	sw	zero,36(sp)
     d64:	afa00020 	sw	zero,32(sp)
     d68:	afa0001c 	sw	zero,28(sp)
     d6c:	0c000000 	jal	0 <func_80AB0D90>
     d70:	e7a60018 	swc1	$f6,24(sp)
     d74:	8fbf0034 	lw	ra,52(sp)
     d78:	27bd0038 	addiu	sp,sp,56
     d7c:	03e00008 	jr	ra
     d80:	00000000 	nop

00000d84 <func_80AB1B14>:
     d84:	27bdffe8 	addiu	sp,sp,-24
     d88:	afbf0014 	sw	ra,20(sp)
     d8c:	afa40018 	sw	a0,24(sp)
     d90:	24060004 	li	a2,4
     d94:	0c000000 	jal	0 <func_80AB0D90>
     d98:	24070001 	li	a3,1
     d9c:	1040000a 	beqz	v0,dc8 <func_80AB1B14+0x44>
     da0:	8fa40018 	lw	a0,24(sp)
     da4:	44802000 	mtc1	zero,$f4
     da8:	240e0008 	li	t6,8
     dac:	240f0002 	li	t7,2
     db0:	ac8e0278 	sw	t6,632(a0)
     db4:	ac8f027c 	sw	t7,636(a0)
     db8:	ac800284 	sw	zero,644(a0)
     dbc:	a08000c8 	sb	zero,200(a0)
     dc0:	0c000000 	jal	0 <func_80AB0D90>
     dc4:	e4840280 	swc1	$f4,640(a0)
     dc8:	8fbf0014 	lw	ra,20(sp)
     dcc:	27bd0018 	addiu	sp,sp,24
     dd0:	03e00008 	jr	ra
     dd4:	00000000 	nop

00000dd8 <func_80AB1B68>:
     dd8:	27bdffe8 	addiu	sp,sp,-24
     ddc:	afbf0014 	sw	ra,20(sp)
     de0:	afa40018 	sw	a0,24(sp)
     de4:	24060004 	li	a2,4
     de8:	0c000000 	jal	0 <func_80AB0D90>
     dec:	24070001 	li	a3,1
     df0:	10400025 	beqz	v0,e88 <func_80AB1B68+0xb0>
     df4:	8fa40018 	lw	a0,24(sp)
     df8:	3c014120 	lui	at,0x4120
     dfc:	44811000 	mtc1	at,$f2
     e00:	3c013f80 	lui	at,0x3f80
     e04:	24820280 	addiu	v0,a0,640
     e08:	c4440000 	lwc1	$f4,0(v0)
     e0c:	44813000 	mtc1	at,$f6
     e10:	3c050000 	lui	a1,0x0
     e14:	24a50000 	addiu	a1,a1,0
     e18:	46062200 	add.s	$f8,$f4,$f6
     e1c:	24180009 	li	t8,9
     e20:	24190001 	li	t9,1
     e24:	e4480000 	swc1	$f8,0(v0)
     e28:	8cae0000 	lw	t6,0(a1)
     e2c:	c4400000 	lwc1	$f0,0(v0)
     e30:	85cf145e 	lh	t7,5214(t6)
     e34:	448f5000 	mtc1	t7,$f10
     e38:	00000000 	nop
     e3c:	46805420 	cvt.s.w	$f16,$f10
     e40:	46028480 	add.s	$f18,$f16,$f2
     e44:	4600903e 	c.le.s	$f18,$f0
     e48:	00000000 	nop
     e4c:	45000020 	bc1f	ed0 <func_80AB1B68+0xf8>
     e50:	00000000 	nop
     e54:	ac980278 	sw	t8,632(a0)
     e58:	ac99027c 	sw	t9,636(a0)
     e5c:	8ca80000 	lw	t0,0(a1)
     e60:	240300ff 	li	v1,255
     e64:	8509145e 	lh	t1,5214(t0)
     e68:	44892000 	mtc1	t1,$f4
     e6c:	00000000 	nop
     e70:	468021a0 	cvt.s.w	$f6,$f4
     e74:	46023200 	add.s	$f8,$f6,$f2
     e78:	e4480000 	swc1	$f8,0(v0)
     e7c:	ac830284 	sw	v1,644(a0)
     e80:	10000026 	b	f1c <func_80AB1B68+0x144>
     e84:	a08300c8 	sb	v1,200(a0)
     e88:	24820280 	addiu	v0,a0,640
     e8c:	3c013f80 	lui	at,0x3f80
     e90:	44818000 	mtc1	at,$f16
     e94:	c44a0000 	lwc1	$f10,0(v0)
     e98:	44801000 	mtc1	zero,$f2
     e9c:	46105481 	sub.s	$f18,$f10,$f16
     ea0:	e4520000 	swc1	$f18,0(v0)
     ea4:	c4400000 	lwc1	$f0,0(v0)
     ea8:	4602003e 	c.le.s	$f0,$f2
     eac:	00000000 	nop
     eb0:	45000007 	bc1f	ed0 <func_80AB1B68+0xf8>
     eb4:	240a0007 	li	t2,7
     eb8:	ac8a0278 	sw	t2,632(a0)
     ebc:	ac80027c 	sw	zero,636(a0)
     ec0:	e4420000 	swc1	$f2,0(v0)
     ec4:	ac800284 	sw	zero,644(a0)
     ec8:	10000014 	b	f1c <func_80AB1B68+0x144>
     ecc:	a08000c8 	sb	zero,200(a0)
     ed0:	3c050000 	lui	a1,0x0
     ed4:	24a50000 	addiu	a1,a1,0
     ed8:	8cab0000 	lw	t3,0(a1)
     edc:	3c014120 	lui	at,0x4120
     ee0:	44811000 	mtc1	at,$f2
     ee4:	856c145e 	lh	t4,5214(t3)
     ee8:	3c01437f 	lui	at,0x437f
     eec:	44818000 	mtc1	at,$f16
     ef0:	448c2000 	mtc1	t4,$f4
     ef4:	00000000 	nop
     ef8:	468021a0 	cvt.s.w	$f6,$f4
     efc:	46023200 	add.s	$f8,$f6,$f2
     f00:	46080283 	div.s	$f10,$f0,$f8
     f04:	46105482 	mul.s	$f18,$f10,$f16
     f08:	4600910d 	trunc.w.s	$f4,$f18
     f0c:	44022000 	mfc1	v0,$f4
     f10:	00000000 	nop
     f14:	ac820284 	sw	v0,644(a0)
     f18:	a08200c8 	sb	v0,200(a0)
     f1c:	8fbf0014 	lw	ra,20(sp)
     f20:	27bd0018 	addiu	sp,sp,24
     f24:	03e00008 	jr	ra
     f28:	00000000 	nop

00000f2c <func_80AB1CBC>:
     f2c:	27bdffe8 	addiu	sp,sp,-24
     f30:	afbf0014 	sw	ra,20(sp)
     f34:	afa5001c 	sw	a1,28(sp)
     f38:	afa40018 	sw	a0,24(sp)
     f3c:	24060004 	li	a2,4
     f40:	0c000000 	jal	0 <func_80AB0D90>
     f44:	24070001 	li	a3,1
     f48:	1040001a 	beqz	v0,fb4 <func_80AB1CBC+0x88>
     f4c:	8fa40018 	lw	a0,24(sp)
     f50:	240e0008 	li	t6,8
     f54:	240f0002 	li	t7,2
     f58:	ac8e0278 	sw	t6,632(a0)
     f5c:	ac8f027c 	sw	t7,636(a0)
     f60:	3c180000 	lui	t8,0x0
     f64:	8f180000 	lw	t8,0(t8)
     f68:	3c014120 	lui	at,0x4120
     f6c:	44814000 	mtc1	at,$f8
     f70:	8719145e 	lh	t9,5214(t8)
     f74:	8c890288 	lw	t1,648(a0)
     f78:	240800ff 	li	t0,255
     f7c:	44992000 	mtc1	t9,$f4
     f80:	ac880284 	sw	t0,644(a0)
     f84:	468021a0 	cvt.s.w	$f6,$f4
     f88:	46083280 	add.s	$f10,$f6,$f8
     f8c:	15200007 	bnez	t1,fac <func_80AB1CBC+0x80>
     f90:	e48a0280 	swc1	$f10,640(a0)
     f94:	8fa5001c 	lw	a1,28(sp)
     f98:	0c000000 	jal	0 <func_80AB0D90>
     f9c:	afa40018 	sw	a0,24(sp)
     fa0:	8fa40018 	lw	a0,24(sp)
     fa4:	240a0001 	li	t2,1
     fa8:	ac8a0288 	sw	t2,648(a0)
     fac:	240b00ff 	li	t3,255
     fb0:	a08b00c8 	sb	t3,200(a0)
     fb4:	8fbf0014 	lw	ra,20(sp)
     fb8:	27bd0018 	addiu	sp,sp,24
     fbc:	03e00008 	jr	ra
     fc0:	00000000 	nop

00000fc4 <func_80AB1D54>:
     fc4:	27bdffe8 	addiu	sp,sp,-24
     fc8:	afbf0014 	sw	ra,20(sp)
     fcc:	afa40018 	sw	a0,24(sp)
     fd0:	0c000000 	jal	0 <func_80AB0D90>
     fd4:	afa5001c 	sw	a1,28(sp)
     fd8:	8fa40018 	lw	a0,24(sp)
     fdc:	0c000000 	jal	0 <func_80AB0D90>
     fe0:	8fa5001c 	lw	a1,28(sp)
     fe4:	8fbf0014 	lw	ra,20(sp)
     fe8:	27bd0018 	addiu	sp,sp,24
     fec:	03e00008 	jr	ra
     ff0:	00000000 	nop

00000ff4 <func_80AB1D84>:
     ff4:	27bdffe0 	addiu	sp,sp,-32
     ff8:	afbf001c 	sw	ra,28(sp)
     ffc:	afb00018 	sw	s0,24(sp)
    1000:	00808025 	move	s0,a0
    1004:	0c000000 	jal	0 <func_80AB0D90>
    1008:	afa50024 	sw	a1,36(sp)
    100c:	0c000000 	jal	0 <func_80AB0D90>
    1010:	02002025 	move	a0,s0
    1014:	0c000000 	jal	0 <func_80AB0D90>
    1018:	02002025 	move	a0,s0
    101c:	02002025 	move	a0,s0
    1020:	0c000000 	jal	0 <func_80AB0D90>
    1024:	8fa50024 	lw	a1,36(sp)
    1028:	02002025 	move	a0,s0
    102c:	0c000000 	jal	0 <func_80AB0D90>
    1030:	8fa50024 	lw	a1,36(sp)
    1034:	8fbf001c 	lw	ra,28(sp)
    1038:	8fb00018 	lw	s0,24(sp)
    103c:	27bd0020 	addiu	sp,sp,32
    1040:	03e00008 	jr	ra
    1044:	00000000 	nop

00001048 <func_80AB1DD8>:
    1048:	27bdffe0 	addiu	sp,sp,-32
    104c:	afbf001c 	sw	ra,28(sp)
    1050:	afb00018 	sw	s0,24(sp)
    1054:	00808025 	move	s0,a0
    1058:	0c000000 	jal	0 <func_80AB0D90>
    105c:	afa50024 	sw	a1,36(sp)
    1060:	0c000000 	jal	0 <func_80AB0D90>
    1064:	02002025 	move	a0,s0
    1068:	0c000000 	jal	0 <func_80AB0D90>
    106c:	02002025 	move	a0,s0
    1070:	02002025 	move	a0,s0
    1074:	0c000000 	jal	0 <func_80AB0D90>
    1078:	8fa50024 	lw	a1,36(sp)
    107c:	02002025 	move	a0,s0
    1080:	0c000000 	jal	0 <func_80AB0D90>
    1084:	8fa50024 	lw	a1,36(sp)
    1088:	8fbf001c 	lw	ra,28(sp)
    108c:	8fb00018 	lw	s0,24(sp)
    1090:	27bd0020 	addiu	sp,sp,32
    1094:	03e00008 	jr	ra
    1098:	00000000 	nop

0000109c <func_80AB1E2C>:
    109c:	27bdff88 	addiu	sp,sp,-120
    10a0:	afbf002c 	sw	ra,44(sp)
    10a4:	afb00028 	sw	s0,40(sp)
    10a8:	afa40078 	sw	a0,120(sp)
    10ac:	afa5007c 	sw	a1,124(sp)
    10b0:	84820274 	lh	v0,628(a0)
    10b4:	3c180000 	lui	t8,0x0
    10b8:	3c060000 	lui	a2,0x0
    10bc:	00027880 	sll	t7,v0,0x2
    10c0:	030fc021 	addu	t8,t8,t7
    10c4:	8f180000 	lw	t8,0(t8)
    10c8:	24c60000 	addiu	a2,a2,0
    10cc:	27a40050 	addiu	a0,sp,80
    10d0:	afb80068 	sw	t8,104(sp)
    10d4:	8ca50000 	lw	a1,0(a1)
    10d8:	24070107 	li	a3,263
    10dc:	0c000000 	jal	0 <func_80AB0D90>
    10e0:	00a08025 	move	s0,a1
    10e4:	8fa9007c 	lw	t1,124(sp)
    10e8:	0c000000 	jal	0 <func_80AB0D90>
    10ec:	8d240000 	lw	a0,0(t1)
    10f0:	8fa70068 	lw	a3,104(sp)
    10f4:	8e0202d0 	lw	v0,720(s0)
    10f8:	3c0bdb06 	lui	t3,0xdb06
    10fc:	00076100 	sll	t4,a3,0x4
    1100:	000c6f02 	srl	t5,t4,0x1c
    1104:	3c0f0000 	lui	t7,0x0
    1108:	244a0008 	addiu	t2,v0,8
    110c:	ae0a02d0 	sw	t2,720(s0)
    1110:	25ef0000 	addiu	t7,t7,0
    1114:	000d7080 	sll	t6,t5,0x2
    1118:	356b0020 	ori	t3,t3,0x20
    111c:	01cf2021 	addu	a0,t6,t7
    1120:	ac4b0000 	sw	t3,0(v0)
    1124:	8c980000 	lw	t8,0(a0)
    1128:	3c0100ff 	lui	at,0xff
    112c:	3421ffff 	ori	at,at,0xffff
    1130:	00e12824 	and	a1,a3,at
    1134:	3c068000 	lui	a2,0x8000
    1138:	0305c821 	addu	t9,t8,a1
    113c:	03264821 	addu	t1,t9,a2
    1140:	ac490004 	sw	t1,4(v0)
    1144:	8e0202d0 	lw	v0,720(s0)
    1148:	3c0bdb06 	lui	t3,0xdb06
    114c:	356b0024 	ori	t3,t3,0x24
    1150:	244a0008 	addiu	t2,v0,8
    1154:	ae0a02d0 	sw	t2,720(s0)
    1158:	ac4b0000 	sw	t3,0(v0)
    115c:	8c8c0000 	lw	t4,0(a0)
    1160:	3c18fb00 	lui	t8,0xfb00
    1164:	3c0bdb06 	lui	t3,0xdb06
    1168:	01856821 	addu	t5,t4,a1
    116c:	01a67021 	addu	t6,t5,a2
    1170:	ac4e0004 	sw	t6,4(v0)
    1174:	8e0202d0 	lw	v0,720(s0)
    1178:	8fa80078 	lw	t0,120(sp)
    117c:	3c0c0000 	lui	t4,0x0
    1180:	244f0008 	addiu	t7,v0,8
    1184:	ae0f02d0 	sw	t7,720(s0)
    1188:	ac580000 	sw	t8,0(v0)
    118c:	8d190284 	lw	t9,644(t0)
    1190:	258c0000 	addiu	t4,t4,0
    1194:	356b0030 	ori	t3,t3,0x30
    1198:	332900ff 	andi	t1,t9,0xff
    119c:	ac490004 	sw	t1,4(v0)
    11a0:	8e0202d0 	lw	v0,720(s0)
    11a4:	244a0008 	addiu	t2,v0,8
    11a8:	ae0a02d0 	sw	t2,720(s0)
    11ac:	ac4c0004 	sw	t4,4(v0)
    11b0:	ac4b0000 	sw	t3,0(v0)
    11b4:	2502014c 	addiu	v0,t0,332
    11b8:	8c450004 	lw	a1,4(v0)
    11bc:	8c460020 	lw	a2,32(v0)
    11c0:	90470002 	lbu	a3,2(v0)
    11c4:	afa00018 	sw	zero,24(sp)
    11c8:	afa00014 	sw	zero,20(sp)
    11cc:	afa00010 	sw	zero,16(sp)
    11d0:	8e0d02d0 	lw	t5,720(s0)
    11d4:	8fa4007c 	lw	a0,124(sp)
    11d8:	0c000000 	jal	0 <func_80AB0D90>
    11dc:	afad001c 	sw	t5,28(sp)
    11e0:	ae0202d0 	sw	v0,720(s0)
    11e4:	8fae007c 	lw	t6,124(sp)
    11e8:	3c060000 	lui	a2,0x0
    11ec:	24c60000 	addiu	a2,a2,0
    11f0:	27a40050 	addiu	a0,sp,80
    11f4:	24070122 	li	a3,290
    11f8:	0c000000 	jal	0 <func_80AB0D90>
    11fc:	8dc50000 	lw	a1,0(t6)
    1200:	8fbf002c 	lw	ra,44(sp)
    1204:	8fb00028 	lw	s0,40(sp)
    1208:	27bd0078 	addiu	sp,sp,120
    120c:	03e00008 	jr	ra
    1210:	00000000 	nop

00001214 <func_80AB1FA4>:
    1214:	27bdffe0 	addiu	sp,sp,-32
    1218:	afa50024 	sw	a1,36(sp)
    121c:	afbf001c 	sw	ra,28(sp)
    1220:	3c050600 	lui	a1,0x600
    1224:	24a51e7c 	addiu	a1,a1,7804
    1228:	afa00010 	sw	zero,16(sp)
    122c:	afa40020 	sw	a0,32(sp)
    1230:	00003025 	move	a2,zero
    1234:	0c000000 	jal	0 <func_80AB0D90>
    1238:	24070000 	li	a3,0
    123c:	8fa40020 	lw	a0,32(sp)
    1240:	3c020000 	lui	v0,0x0
    1244:	240e000a 	li	t6,10
    1248:	24420000 	addiu	v0,v0,0
    124c:	ac8e0278 	sw	t6,632(a0)
    1250:	a08000c8 	sb	zero,200(a0)
    1254:	944f0ee6 	lhu	t7,3814(v0)
    1258:	8fbf001c 	lw	ra,28(sp)
    125c:	27bd0020 	addiu	sp,sp,32
    1260:	35f80020 	ori	t8,t7,0x20
    1264:	03e00008 	jr	ra
    1268:	a4580ee6 	sh	t8,3814(v0)

0000126c <func_80AB1FFC>:
    126c:	27bdffe8 	addiu	sp,sp,-24
    1270:	afbf0014 	sw	ra,20(sp)
    1274:	94ae1d74 	lhu	t6,7540(a1)
    1278:	24010003 	li	at,3
    127c:	248400e4 	addiu	a0,a0,228
    1280:	55c10004 	bnel	t6,at,1294 <func_80AB1FFC+0x28>
    1284:	8fbf0014 	lw	ra,20(sp)
    1288:	0c000000 	jal	0 <func_80AB0D90>
    128c:	2405685b 	li	a1,26715
    1290:	8fbf0014 	lw	ra,20(sp)
    1294:	27bd0018 	addiu	sp,sp,24
    1298:	03e00008 	jr	ra
    129c:	00000000 	nop

000012a0 <func_80AB2030>:
    12a0:	27bdffe8 	addiu	sp,sp,-24
    12a4:	afbf0014 	sw	ra,20(sp)
    12a8:	94ae1d74 	lhu	t6,7540(a1)
    12ac:	240101a4 	li	at,420
    12b0:	248400e4 	addiu	a0,a0,228
    12b4:	55c10004 	bnel	t6,at,12c8 <func_80AB2030+0x28>
    12b8:	8fbf0014 	lw	ra,20(sp)
    12bc:	0c000000 	jal	0 <func_80AB0D90>
    12c0:	2405685a 	li	a1,26714
    12c4:	8fbf0014 	lw	ra,20(sp)
    12c8:	27bd0018 	addiu	sp,sp,24
    12cc:	03e00008 	jr	ra
    12d0:	00000000 	nop

000012d4 <func_80AB2064>:
    12d4:	27bdffc0 	addiu	sp,sp,-64
    12d8:	afa40040 	sw	a0,64(sp)
    12dc:	afbf001c 	sw	ra,28(sp)
    12e0:	afa50044 	sw	a1,68(sp)
    12e4:	00a02025 	move	a0,a1
    12e8:	0c000000 	jal	0 <func_80AB0D90>
    12ec:	24050001 	li	a1,1
    12f0:	1040002d 	beqz	v0,13a8 <func_80AB2064+0xd4>
    12f4:	8fae0044 	lw	t6,68(sp)
    12f8:	94440004 	lhu	a0,4(v0)
    12fc:	94450002 	lhu	a1,2(v0)
    1300:	95c61d74 	lhu	a2,7540(t6)
    1304:	240f0004 	li	t7,4
    1308:	afaf0010 	sw	t7,16(sp)
    130c:	afa2003c 	sw	v0,60(sp)
    1310:	0c000000 	jal	0 <func_80AB0D90>
    1314:	24070004 	li	a3,4
    1318:	8fa3003c 	lw	v1,60(sp)
    131c:	8fa20040 	lw	v0,64(sp)
    1320:	8c790010 	lw	t9,16(v1)
    1324:	8c78000c 	lw	t8,12(v1)
    1328:	8c690018 	lw	t1,24(v1)
    132c:	8c680014 	lw	t0,20(v1)
    1330:	44993000 	mtc1	t9,$f6
    1334:	8c6b0020 	lw	t3,32(v1)
    1338:	44982000 	mtc1	t8,$f4
    133c:	8c6a001c 	lw	t2,28(v1)
    1340:	44895000 	mtc1	t1,$f10
    1344:	46803320 	cvt.s.w	$f12,$f6
    1348:	44884000 	mtc1	t0,$f8
    134c:	448b3000 	mtc1	t3,$f6
    1350:	24420024 	addiu	v0,v0,36
    1354:	468020a0 	cvt.s.w	$f2,$f4
    1358:	448a2000 	mtc1	t2,$f4
    135c:	46805420 	cvt.s.w	$f16,$f10
    1360:	468043a0 	cvt.s.w	$f14,$f8
    1364:	46803220 	cvt.s.w	$f8,$f6
    1368:	468024a0 	cvt.s.w	$f18,$f4
    136c:	e7a80020 	swc1	$f8,32(sp)
    1370:	46028281 	sub.s	$f10,$f16,$f2
    1374:	460c9201 	sub.s	$f8,$f18,$f12
    1378:	46005102 	mul.s	$f4,$f10,$f0
    137c:	00000000 	nop
    1380:	46004282 	mul.s	$f10,$f8,$f0
    1384:	46022180 	add.s	$f6,$f4,$f2
    1388:	460c5100 	add.s	$f4,$f10,$f12
    138c:	e4460000 	swc1	$f6,0(v0)
    1390:	e4440004 	swc1	$f4,4(v0)
    1394:	c7a60020 	lwc1	$f6,32(sp)
    1398:	460e3201 	sub.s	$f8,$f6,$f14
    139c:	46004282 	mul.s	$f10,$f8,$f0
    13a0:	460e5100 	add.s	$f4,$f10,$f14
    13a4:	e4440008 	swc1	$f4,8(v0)
    13a8:	8fbf001c 	lw	ra,28(sp)
    13ac:	27bd0040 	addiu	sp,sp,64
    13b0:	03e00008 	jr	ra
    13b4:	00000000 	nop

000013b8 <func_80AB2148>:
    13b8:	27bdffe8 	addiu	sp,sp,-24
    13bc:	afbf0014 	sw	ra,20(sp)
    13c0:	afa40018 	sw	a0,24(sp)
    13c4:	0c000000 	jal	0 <func_80AB0D90>
    13c8:	24060001 	li	a2,1
    13cc:	8fa40018 	lw	a0,24(sp)
    13d0:	240e000a 	li	t6,10
    13d4:	ac8e0278 	sw	t6,632(a0)
    13d8:	ac80027c 	sw	zero,636(a0)
    13dc:	a08000c8 	sb	zero,200(a0)
    13e0:	8fbf0014 	lw	ra,20(sp)
    13e4:	27bd0018 	addiu	sp,sp,24
    13e8:	03e00008 	jr	ra
    13ec:	00000000 	nop

000013f0 <func_80AB2180>:
    13f0:	27bdffd8 	addiu	sp,sp,-40
    13f4:	afbf0024 	sw	ra,36(sp)
    13f8:	10a00011 	beqz	a1,1440 <func_80AB2180+0x50>
    13fc:	afa40028 	sw	a0,40(sp)
    1400:	3c040600 	lui	a0,0x600
    1404:	0c000000 	jal	0 <func_80AB0D90>
    1408:	24841350 	addiu	a0,a0,4944
    140c:	44822000 	mtc1	v0,$f4
    1410:	44800000 	mtc1	zero,$f0
    1414:	8fa40028 	lw	a0,40(sp)
    1418:	468021a0 	cvt.s.w	$f6,$f4
    141c:	3c050600 	lui	a1,0x600
    1420:	44070000 	mfc1	a3,$f0
    1424:	24a51350 	addiu	a1,a1,4944
    1428:	3c063f80 	lui	a2,0x3f80
    142c:	afa00014 	sw	zero,20(sp)
    1430:	e7a60010 	swc1	$f6,16(sp)
    1434:	2484014c 	addiu	a0,a0,332
    1438:	0c000000 	jal	0 <func_80AB0D90>
    143c:	e7a00018 	swc1	$f0,24(sp)
    1440:	8fbf0024 	lw	ra,36(sp)
    1444:	27bd0028 	addiu	sp,sp,40
    1448:	03e00008 	jr	ra
    144c:	00000000 	nop

00001450 <func_80AB21E0>:
    1450:	27bdffd8 	addiu	sp,sp,-40
    1454:	afa40028 	sw	a0,40(sp)
    1458:	afbf0024 	sw	ra,36(sp)
    145c:	3c040600 	lui	a0,0x600
    1460:	0c000000 	jal	0 <func_80AB0D90>
    1464:	24841e7c 	addiu	a0,a0,7804
    1468:	44822000 	mtc1	v0,$f4
    146c:	3c01c100 	lui	at,0xc100
    1470:	44814000 	mtc1	at,$f8
    1474:	468021a0 	cvt.s.w	$f6,$f4
    1478:	8fa40028 	lw	a0,40(sp)
    147c:	3c050600 	lui	a1,0x600
    1480:	24a51e7c 	addiu	a1,a1,7804
    1484:	3c063f80 	lui	a2,0x3f80
    1488:	24070000 	li	a3,0
    148c:	e7a60010 	swc1	$f6,16(sp)
    1490:	afa00014 	sw	zero,20(sp)
    1494:	e7a80018 	swc1	$f8,24(sp)
    1498:	0c000000 	jal	0 <func_80AB0D90>
    149c:	2484014c 	addiu	a0,a0,332
    14a0:	8fa20028 	lw	v0,40(sp)
    14a4:	240e000b 	li	t6,11
    14a8:	240f0001 	li	t7,1
    14ac:	ac4e0278 	sw	t6,632(v0)
    14b0:	ac4f027c 	sw	t7,636(v0)
    14b4:	8fbf0024 	lw	ra,36(sp)
    14b8:	27bd0028 	addiu	sp,sp,40
    14bc:	03e00008 	jr	ra
    14c0:	00000000 	nop

000014c4 <func_80AB2254>:
    14c4:	27bdffd8 	addiu	sp,sp,-40
    14c8:	afa40028 	sw	a0,40(sp)
    14cc:	afbf0024 	sw	ra,36(sp)
    14d0:	3c040600 	lui	a0,0x600
    14d4:	0c000000 	jal	0 <func_80AB0D90>
    14d8:	24841104 	addiu	a0,a0,4356
    14dc:	44822000 	mtc1	v0,$f4
    14e0:	3c01c100 	lui	at,0xc100
    14e4:	44814000 	mtc1	at,$f8
    14e8:	468021a0 	cvt.s.w	$f6,$f4
    14ec:	8fa40028 	lw	a0,40(sp)
    14f0:	3c050600 	lui	a1,0x600
    14f4:	240e0002 	li	t6,2
    14f8:	afae0014 	sw	t6,20(sp)
    14fc:	24a51104 	addiu	a1,a1,4356
    1500:	e7a60010 	swc1	$f6,16(sp)
    1504:	3c063f80 	lui	a2,0x3f80
    1508:	24070000 	li	a3,0
    150c:	e7a80018 	swc1	$f8,24(sp)
    1510:	0c000000 	jal	0 <func_80AB0D90>
    1514:	2484014c 	addiu	a0,a0,332
    1518:	8fa20028 	lw	v0,40(sp)
    151c:	240f000c 	li	t7,12
    1520:	24180001 	li	t8,1
    1524:	ac4f0278 	sw	t7,632(v0)
    1528:	ac58027c 	sw	t8,636(v0)
    152c:	8fbf0024 	lw	ra,36(sp)
    1530:	27bd0028 	addiu	sp,sp,40
    1534:	03e00008 	jr	ra
    1538:	00000000 	nop

0000153c <func_80AB22CC>:
    153c:	27bdffd8 	addiu	sp,sp,-40
    1540:	afb00018 	sw	s0,24(sp)
    1544:	00808025 	move	s0,a0
    1548:	afbf001c 	sw	ra,28(sp)
    154c:	afa5002c 	sw	a1,44(sp)
    1550:	00a02025 	move	a0,a1
    1554:	0c000000 	jal	0 <func_80AB0D90>
    1558:	24050001 	li	a1,1
    155c:	5040002a 	beqzl	v0,1608 <func_80AB22CC+0xcc>
    1560:	8fbf001c 	lw	ra,28(sp)
    1564:	94460000 	lhu	a2,0(v0)
    1568:	8e03028c 	lw	v1,652(s0)
    156c:	24010001 	li	at,1
    1570:	50c30025 	beql	a2,v1,1608 <func_80AB22CC+0xcc>
    1574:	8fbf001c 	lw	ra,28(sp)
    1578:	10c1000c 	beq	a2,at,15ac <func_80AB22CC+0x70>
    157c:	02002025 	move	a0,s0
    1580:	24010007 	li	at,7
    1584:	10c1000e 	beq	a2,at,15c0 <func_80AB22CC+0x84>
    1588:	02002025 	move	a0,s0
    158c:	24010008 	li	at,8
    1590:	10c1000f 	beq	a2,at,15d0 <func_80AB22CC+0x94>
    1594:	02002025 	move	a0,s0
    1598:	24010009 	li	at,9
    159c:	10c10010 	beq	a2,at,15e0 <func_80AB22CC+0xa4>
    15a0:	02002025 	move	a0,s0
    15a4:	10000012 	b	15f0 <func_80AB22CC+0xb4>
    15a8:	3c040000 	lui	a0,0x0
    15ac:	8fa5002c 	lw	a1,44(sp)
    15b0:	0c000000 	jal	0 <func_80AB0D90>
    15b4:	afa60020 	sw	a2,32(sp)
    15b8:	10000011 	b	1600 <func_80AB22CC+0xc4>
    15bc:	8fa60020 	lw	a2,32(sp)
    15c0:	0c000000 	jal	0 <func_80AB0D90>
    15c4:	afa60020 	sw	a2,32(sp)
    15c8:	1000000d 	b	1600 <func_80AB22CC+0xc4>
    15cc:	8fa60020 	lw	a2,32(sp)
    15d0:	0c000000 	jal	0 <func_80AB0D90>
    15d4:	afa60020 	sw	a2,32(sp)
    15d8:	10000009 	b	1600 <func_80AB22CC+0xc4>
    15dc:	8fa60020 	lw	a2,32(sp)
    15e0:	0c000000 	jal	0 <func_80AB0D90>
    15e4:	afa60020 	sw	a2,32(sp)
    15e8:	10000005 	b	1600 <func_80AB22CC+0xc4>
    15ec:	8fa60020 	lw	a2,32(sp)
    15f0:	24840000 	addiu	a0,a0,0
    15f4:	0c000000 	jal	0 <func_80AB0D90>
    15f8:	afa60020 	sw	a2,32(sp)
    15fc:	8fa60020 	lw	a2,32(sp)
    1600:	ae06028c 	sw	a2,652(s0)
    1604:	8fbf001c 	lw	ra,28(sp)
    1608:	8fb00018 	lw	s0,24(sp)
    160c:	27bd0028 	addiu	sp,sp,40
    1610:	03e00008 	jr	ra
    1614:	00000000 	nop

00001618 <func_80AB23A8>:
    1618:	27bdffe8 	addiu	sp,sp,-24
    161c:	afbf0014 	sw	ra,20(sp)
    1620:	afa40018 	sw	a0,24(sp)
    1624:	0c000000 	jal	0 <func_80AB0D90>
    1628:	afa5001c 	sw	a1,28(sp)
    162c:	8fa40018 	lw	a0,24(sp)
    1630:	0c000000 	jal	0 <func_80AB0D90>
    1634:	8fa5001c 	lw	a1,28(sp)
    1638:	8fbf0014 	lw	ra,20(sp)
    163c:	27bd0018 	addiu	sp,sp,24
    1640:	03e00008 	jr	ra
    1644:	00000000 	nop

00001648 <func_80AB23D8>:
    1648:	27bdffe0 	addiu	sp,sp,-32
    164c:	afbf001c 	sw	ra,28(sp)
    1650:	afb00018 	sw	s0,24(sp)
    1654:	00808025 	move	s0,a0
    1658:	0c000000 	jal	0 <func_80AB0D90>
    165c:	afa50024 	sw	a1,36(sp)
    1660:	02002025 	move	a0,s0
    1664:	0c000000 	jal	0 <func_80AB0D90>
    1668:	8fa50024 	lw	a1,36(sp)
    166c:	0c000000 	jal	0 <func_80AB0D90>
    1670:	02002025 	move	a0,s0
    1674:	0c000000 	jal	0 <func_80AB0D90>
    1678:	02002025 	move	a0,s0
    167c:	02002025 	move	a0,s0
    1680:	0c000000 	jal	0 <func_80AB0D90>
    1684:	8fa50024 	lw	a1,36(sp)
    1688:	8fbf001c 	lw	ra,28(sp)
    168c:	8fb00018 	lw	s0,24(sp)
    1690:	27bd0020 	addiu	sp,sp,32
    1694:	03e00008 	jr	ra
    1698:	00000000 	nop

0000169c <func_80AB242C>:
    169c:	27bdffe0 	addiu	sp,sp,-32
    16a0:	afbf001c 	sw	ra,28(sp)
    16a4:	afb00018 	sw	s0,24(sp)
    16a8:	00808025 	move	s0,a0
    16ac:	0c000000 	jal	0 <func_80AB0D90>
    16b0:	afa50024 	sw	a1,36(sp)
    16b4:	0c000000 	jal	0 <func_80AB0D90>
    16b8:	02002025 	move	a0,s0
    16bc:	02002025 	move	a0,s0
    16c0:	0c000000 	jal	0 <func_80AB0D90>
    16c4:	00402825 	move	a1,v0
    16c8:	02002025 	move	a0,s0
    16cc:	0c000000 	jal	0 <func_80AB0D90>
    16d0:	8fa50024 	lw	a1,36(sp)
    16d4:	02002025 	move	a0,s0
    16d8:	0c000000 	jal	0 <func_80AB0D90>
    16dc:	8fa50024 	lw	a1,36(sp)
    16e0:	8fbf001c 	lw	ra,28(sp)
    16e4:	8fb00018 	lw	s0,24(sp)
    16e8:	27bd0020 	addiu	sp,sp,32
    16ec:	03e00008 	jr	ra
    16f0:	00000000 	nop

000016f4 <func_80AB2484>:
    16f4:	27bdffe0 	addiu	sp,sp,-32
    16f8:	afa50024 	sw	a1,36(sp)
    16fc:	afbf001c 	sw	ra,28(sp)
    1700:	3c050601 	lui	a1,0x601
    1704:	24a58bd0 	addiu	a1,a1,-29744
    1708:	afa00010 	sw	zero,16(sp)
    170c:	afa40020 	sw	a0,32(sp)
    1710:	00003025 	move	a2,zero
    1714:	0c000000 	jal	0 <func_80AB0D90>
    1718:	24070000 	li	a3,0
    171c:	8fa40020 	lw	a0,32(sp)
    1720:	240e000d 	li	t6,13
    1724:	ac8e0278 	sw	t6,632(a0)
    1728:	a08000c8 	sb	zero,200(a0)
    172c:	8fbf001c 	lw	ra,28(sp)
    1730:	27bd0020 	addiu	sp,sp,32
    1734:	03e00008 	jr	ra
    1738:	00000000 	nop

0000173c <func_80AB24CC>:
    173c:	27bdffd8 	addiu	sp,sp,-40
    1740:	afbf0014 	sw	ra,20(sp)
    1744:	94ae1d74 	lhu	t6,7540(a1)
    1748:	24010224 	li	at,548
    174c:	2405685b 	li	a1,26715
    1750:	15c10006 	bne	t6,at,176c <func_80AB24CC+0x30>
    1754:	248400e4 	addiu	a0,a0,228
    1758:	0c000000 	jal	0 <func_80AB0D90>
    175c:	afa4001c 	sw	a0,28(sp)
    1760:	8fa4001c 	lw	a0,28(sp)
    1764:	0c000000 	jal	0 <func_80AB0D90>
    1768:	240538a8 	li	a1,14504
    176c:	8fbf0014 	lw	ra,20(sp)
    1770:	27bd0028 	addiu	sp,sp,40
    1774:	03e00008 	jr	ra
    1778:	00000000 	nop

0000177c <func_80AB250C>:
    177c:	27bdffd8 	addiu	sp,sp,-40
    1780:	afbf0014 	sw	ra,20(sp)
    1784:	908e014d 	lbu	t6,333(a0)
    1788:	00803025 	move	a2,a0
    178c:	24010002 	li	at,2
    1790:	15c1000f 	bne	t6,at,17d0 <func_80AB250C+0x54>
    1794:	2484014c 	addiu	a0,a0,332
    1798:	3c054190 	lui	a1,0x4190
    179c:	afa4001c 	sw	a0,28(sp)
    17a0:	0c000000 	jal	0 <func_80AB0D90>
    17a4:	afa60028 	sw	a2,40(sp)
    17a8:	14400005 	bnez	v0,17c0 <func_80AB250C+0x44>
    17ac:	8fa4001c 	lw	a0,28(sp)
    17b0:	0c000000 	jal	0 <func_80AB0D90>
    17b4:	3c0541c8 	lui	a1,0x41c8
    17b8:	50400006 	beqzl	v0,17d4 <func_80AB250C+0x58>
    17bc:	8fbf0014 	lw	ra,20(sp)
    17c0:	8fa40028 	lw	a0,40(sp)
    17c4:	24052896 	li	a1,10390
    17c8:	0c000000 	jal	0 <func_80AB0D90>
    17cc:	248400e4 	addiu	a0,a0,228
    17d0:	8fbf0014 	lw	ra,20(sp)
    17d4:	27bd0028 	addiu	sp,sp,40
    17d8:	03e00008 	jr	ra
    17dc:	00000000 	nop

000017e0 <func_80AB2570>:
    17e0:	27bdffe8 	addiu	sp,sp,-24
    17e4:	afbf0014 	sw	ra,20(sp)
    17e8:	908e014d 	lbu	t6,333(a0)
    17ec:	00803025 	move	a2,a0
    17f0:	24010002 	li	at,2
    17f4:	15c10009 	bne	t6,at,181c <func_80AB2570+0x3c>
    17f8:	2484014c 	addiu	a0,a0,332
    17fc:	3c054110 	lui	a1,0x4110
    1800:	0c000000 	jal	0 <func_80AB0D90>
    1804:	afa60018 	sw	a2,24(sp)
    1808:	10400004 	beqz	v0,181c <func_80AB2570+0x3c>
    180c:	8fa60018 	lw	a2,24(sp)
    1810:	24c400e4 	addiu	a0,a2,228
    1814:	0c000000 	jal	0 <func_80AB0D90>
    1818:	24050802 	li	a1,2050
    181c:	8fbf0014 	lw	ra,20(sp)
    1820:	27bd0018 	addiu	sp,sp,24
    1824:	03e00008 	jr	ra
    1828:	00000000 	nop

0000182c <func_80AB25BC>:
    182c:	27bdffd8 	addiu	sp,sp,-40
    1830:	afa40028 	sw	a0,40(sp)
    1834:	afbf0014 	sw	ra,20(sp)
    1838:	2484014c 	addiu	a0,a0,332
    183c:	afa4001c 	sw	a0,28(sp)
    1840:	0c000000 	jal	0 <func_80AB0D90>
    1844:	3c054110 	lui	a1,0x4110
    1848:	14400005 	bnez	v0,1860 <func_80AB25BC+0x34>
    184c:	8fa4001c 	lw	a0,28(sp)
    1850:	0c000000 	jal	0 <func_80AB0D90>
    1854:	3c054150 	lui	a1,0x4150
    1858:	50400006 	beqzl	v0,1874 <func_80AB25BC+0x48>
    185c:	8fbf0014 	lw	ra,20(sp)
    1860:	8fa40028 	lw	a0,40(sp)
    1864:	24050802 	li	a1,2050
    1868:	0c000000 	jal	0 <func_80AB0D90>
    186c:	248400e4 	addiu	a0,a0,228
    1870:	8fbf0014 	lw	ra,20(sp)
    1874:	27bd0028 	addiu	sp,sp,40
    1878:	03e00008 	jr	ra
    187c:	00000000 	nop

00001880 <func_80AB2610>:
    1880:	3c0f0000 	lui	t7,0x0
    1884:	8def0000 	lw	t7,0(t7)
    1888:	27bdffd0 	addiu	sp,sp,-48
    188c:	afbf002c 	sw	ra,44(sp)
    1890:	afa40030 	sw	a0,48(sp)
    1894:	85f8147e 	lh	t8,5246(t7)
    1898:	3c0141b0 	lui	at,0x41b0
    189c:	44814000 	mtc1	at,$f8
    18a0:	44982000 	mtc1	t8,$f4
    18a4:	8fae0030 	lw	t6,48(sp)
    18a8:	2419000b 	li	t9,11
    18ac:	468021a0 	cvt.s.w	$f6,$f4
    18b0:	c5d00028 	lwc1	$f16,40(t6)
    18b4:	8dc70024 	lw	a3,36(t6)
    18b8:	24a41c24 	addiu	a0,a1,7204
    18bc:	240600f5 	li	a2,245
    18c0:	46083280 	add.s	$f10,$f6,$f8
    18c4:	46105480 	add.s	$f18,$f10,$f16
    18c8:	e7b20010 	swc1	$f18,16(sp)
    18cc:	c5c4002c 	lwc1	$f4,44(t6)
    18d0:	afb90024 	sw	t9,36(sp)
    18d4:	afa00020 	sw	zero,32(sp)
    18d8:	afa0001c 	sw	zero,28(sp)
    18dc:	afa00018 	sw	zero,24(sp)
    18e0:	0c000000 	jal	0 <func_80AB0D90>
    18e4:	e7a40014 	swc1	$f4,20(sp)
    18e8:	8fbf002c 	lw	ra,44(sp)
    18ec:	27bd0030 	addiu	sp,sp,48
    18f0:	03e00008 	jr	ra
    18f4:	00000000 	nop

000018f8 <func_80AB2688>:
    18f8:	27bdffe8 	addiu	sp,sp,-24
    18fc:	afbf0014 	sw	ra,20(sp)
    1900:	afa40018 	sw	a0,24(sp)
    1904:	afa5001c 	sw	a1,28(sp)
    1908:	908e0181 	lbu	t6,385(a0)
    190c:	00802825 	move	a1,a0
    1910:	24a6014c 	addiu	a2,a1,332
    1914:	35cf0001 	ori	t7,t6,0x1
    1918:	a08f0181 	sb	t7,385(a0)
    191c:	8fa4001c 	lw	a0,28(sp)
    1920:	0c000000 	jal	0 <func_80AB0D90>
    1924:	3c073f80 	lui	a3,0x3f80
    1928:	8fbf0014 	lw	ra,20(sp)
    192c:	27bd0018 	addiu	sp,sp,24
    1930:	03e00008 	jr	ra
    1934:	00000000 	nop

00001938 <func_80AB26C8>:
    1938:	240e000d 	li	t6,13
    193c:	ac8e0278 	sw	t6,632(a0)
    1940:	ac80027c 	sw	zero,636(a0)
    1944:	03e00008 	jr	ra
    1948:	a08000c8 	sb	zero,200(a0)

0000194c <func_80AB26DC>:
    194c:	27bdffc0 	addiu	sp,sp,-64
    1950:	afb00028 	sw	s0,40(sp)
    1954:	00808025 	move	s0,a0
    1958:	afbf002c 	sw	ra,44(sp)
    195c:	3c040601 	lui	a0,0x601
    1960:	afa50044 	sw	a1,68(sp)
    1964:	0c000000 	jal	0 <func_80AB0D90>
    1968:	24848bd0 	addiu	a0,a0,-29744
    196c:	44822000 	mtc1	v0,$f4
    1970:	02002025 	move	a0,s0
    1974:	8fa50044 	lw	a1,68(sp)
    1978:	468021a0 	cvt.s.w	$f6,$f4
    197c:	24060001 	li	a2,1
    1980:	0c000000 	jal	0 <func_80AB0D90>
    1984:	e7a60034 	swc1	$f6,52(sp)
    1988:	44800000 	mtc1	zero,$f0
    198c:	c7a80034 	lwc1	$f8,52(sp)
    1990:	3c050601 	lui	a1,0x601
    1994:	240e0002 	li	t6,2
    1998:	44070000 	mfc1	a3,$f0
    199c:	afae0014 	sw	t6,20(sp)
    19a0:	24a58bd0 	addiu	a1,a1,-29744
    19a4:	2604014c 	addiu	a0,s0,332
    19a8:	3c063f80 	lui	a2,0x3f80
    19ac:	e7a80010 	swc1	$f8,16(sp)
    19b0:	0c000000 	jal	0 <func_80AB0D90>
    19b4:	e7a00018 	swc1	$f0,24(sp)
    19b8:	240f000e 	li	t7,14
    19bc:	24180003 	li	t8,3
    19c0:	241900ff 	li	t9,255
    19c4:	ae0f0278 	sw	t7,632(s0)
    19c8:	ae18027c 	sw	t8,636(s0)
    19cc:	a21900c8 	sb	t9,200(s0)
    19d0:	8fbf002c 	lw	ra,44(sp)
    19d4:	8fb00028 	lw	s0,40(sp)
    19d8:	27bd0040 	addiu	sp,sp,64
    19dc:	03e00008 	jr	ra
    19e0:	00000000 	nop

000019e4 <func_80AB2774>:
    19e4:	27bdffd8 	addiu	sp,sp,-40
    19e8:	afa40028 	sw	a0,40(sp)
    19ec:	afbf0024 	sw	ra,36(sp)
    19f0:	3c040601 	lui	a0,0x601
    19f4:	0c000000 	jal	0 <func_80AB0D90>
    19f8:	24848bd0 	addiu	a0,a0,-29744
    19fc:	44822000 	mtc1	v0,$f4
    1a00:	44800000 	mtc1	zero,$f0
    1a04:	8fa30028 	lw	v1,40(sp)
    1a08:	468021a0 	cvt.s.w	$f6,$f4
    1a0c:	3c050601 	lui	a1,0x601
    1a10:	240e0002 	li	t6,2
    1a14:	44070000 	mfc1	a3,$f0
    1a18:	afae0014 	sw	t6,20(sp)
    1a1c:	24a58bd0 	addiu	a1,a1,-29744
    1a20:	e7a60010 	swc1	$f6,16(sp)
    1a24:	3c063f80 	lui	a2,0x3f80
    1a28:	2464014c 	addiu	a0,v1,332
    1a2c:	0c000000 	jal	0 <func_80AB0D90>
    1a30:	e7a00018 	swc1	$f0,24(sp)
    1a34:	8fa30028 	lw	v1,40(sp)
    1a38:	240f000f 	li	t7,15
    1a3c:	24180003 	li	t8,3
    1a40:	241900ff 	li	t9,255
    1a44:	ac6f0278 	sw	t7,632(v1)
    1a48:	ac78027c 	sw	t8,636(v1)
    1a4c:	a07900c8 	sb	t9,200(v1)
    1a50:	8fbf0024 	lw	ra,36(sp)
    1a54:	27bd0028 	addiu	sp,sp,40
    1a58:	03e00008 	jr	ra
    1a5c:	00000000 	nop

00001a60 <func_80AB27F0>:
    1a60:	27bdffd8 	addiu	sp,sp,-40
    1a64:	afbf0024 	sw	ra,36(sp)
    1a68:	10a00014 	beqz	a1,1abc <func_80AB27F0+0x5c>
    1a6c:	afa40028 	sw	a0,40(sp)
    1a70:	3c040600 	lui	a0,0x600
    1a74:	0c000000 	jal	0 <func_80AB0D90>
    1a78:	248446a8 	addiu	a0,a0,18088
    1a7c:	44822000 	mtc1	v0,$f4
    1a80:	44800000 	mtc1	zero,$f0
    1a84:	8fa40028 	lw	a0,40(sp)
    1a88:	468021a0 	cvt.s.w	$f6,$f4
    1a8c:	3c050600 	lui	a1,0x600
    1a90:	44070000 	mfc1	a3,$f0
    1a94:	24a546a8 	addiu	a1,a1,18088
    1a98:	3c063f80 	lui	a2,0x3f80
    1a9c:	afa00014 	sw	zero,20(sp)
    1aa0:	e7a60010 	swc1	$f6,16(sp)
    1aa4:	2484014c 	addiu	a0,a0,332
    1aa8:	0c000000 	jal	0 <func_80AB0D90>
    1aac:	e7a00018 	swc1	$f0,24(sp)
    1ab0:	8faf0028 	lw	t7,40(sp)
    1ab4:	240e0003 	li	t6,3
    1ab8:	adee027c 	sw	t6,636(t7)
    1abc:	8fbf0024 	lw	ra,36(sp)
    1ac0:	27bd0028 	addiu	sp,sp,40
    1ac4:	03e00008 	jr	ra
    1ac8:	00000000 	nop

00001acc <func_80AB285C>:
    1acc:	27bdffd8 	addiu	sp,sp,-40
    1ad0:	afa40028 	sw	a0,40(sp)
    1ad4:	afbf0024 	sw	ra,36(sp)
    1ad8:	3c040600 	lui	a0,0x600
    1adc:	0c000000 	jal	0 <func_80AB0D90>
    1ae0:	24843954 	addiu	a0,a0,14676
    1ae4:	44822000 	mtc1	v0,$f4
    1ae8:	3c01c100 	lui	at,0xc100
    1aec:	8fa30028 	lw	v1,40(sp)
    1af0:	468021a0 	cvt.s.w	$f6,$f4
    1af4:	44814000 	mtc1	at,$f8
    1af8:	3c050600 	lui	a1,0x600
    1afc:	240e0002 	li	t6,2
    1b00:	afae0014 	sw	t6,20(sp)
    1b04:	24a53954 	addiu	a1,a1,14676
    1b08:	e7a60010 	swc1	$f6,16(sp)
    1b0c:	3c063f80 	lui	a2,0x3f80
    1b10:	24070000 	li	a3,0
    1b14:	2464014c 	addiu	a0,v1,332
    1b18:	0c000000 	jal	0 <func_80AB0D90>
    1b1c:	e7a80018 	swc1	$f8,24(sp)
    1b20:	8fa30028 	lw	v1,40(sp)
    1b24:	240f0010 	li	t7,16
    1b28:	24180001 	li	t8,1
    1b2c:	241900ff 	li	t9,255
    1b30:	ac6f0278 	sw	t7,632(v1)
    1b34:	ac78027c 	sw	t8,636(v1)
    1b38:	a07900c8 	sb	t9,200(v1)
    1b3c:	8fbf0024 	lw	ra,36(sp)
    1b40:	27bd0028 	addiu	sp,sp,40
    1b44:	03e00008 	jr	ra
    1b48:	00000000 	nop

00001b4c <func_80AB28DC>:
    1b4c:	27bdffd8 	addiu	sp,sp,-40
    1b50:	afbf0024 	sw	ra,36(sp)
    1b54:	10a00014 	beqz	a1,1ba8 <func_80AB28DC+0x5c>
    1b58:	afa40028 	sw	a0,40(sp)
    1b5c:	3c040600 	lui	a0,0x600
    1b60:	0c000000 	jal	0 <func_80AB0D90>
    1b64:	24844030 	addiu	a0,a0,16432
    1b68:	44822000 	mtc1	v0,$f4
    1b6c:	44800000 	mtc1	zero,$f0
    1b70:	8fa40028 	lw	a0,40(sp)
    1b74:	468021a0 	cvt.s.w	$f6,$f4
    1b78:	3c050600 	lui	a1,0x600
    1b7c:	44070000 	mfc1	a3,$f0
    1b80:	24a54030 	addiu	a1,a1,16432
    1b84:	3c063f80 	lui	a2,0x3f80
    1b88:	afa00014 	sw	zero,20(sp)
    1b8c:	e7a60010 	swc1	$f6,16(sp)
    1b90:	2484014c 	addiu	a0,a0,332
    1b94:	0c000000 	jal	0 <func_80AB0D90>
    1b98:	e7a00018 	swc1	$f0,24(sp)
    1b9c:	8faf0028 	lw	t7,40(sp)
    1ba0:	240e0004 	li	t6,4
    1ba4:	adee027c 	sw	t6,636(t7)
    1ba8:	8fbf0024 	lw	ra,36(sp)
    1bac:	27bd0028 	addiu	sp,sp,40
    1bb0:	03e00008 	jr	ra
    1bb4:	00000000 	nop

00001bb8 <func_80AB2948>:
    1bb8:	27bdffd8 	addiu	sp,sp,-40
    1bbc:	afa40028 	sw	a0,40(sp)
    1bc0:	afbf0024 	sw	ra,36(sp)
    1bc4:	3c040600 	lui	a0,0x600
    1bc8:	0c000000 	jal	0 <func_80AB0D90>
    1bcc:	24842dbc 	addiu	a0,a0,11708
    1bd0:	44822000 	mtc1	v0,$f4
    1bd4:	3c01c100 	lui	at,0xc100
    1bd8:	8fa30028 	lw	v1,40(sp)
    1bdc:	468021a0 	cvt.s.w	$f6,$f4
    1be0:	44814000 	mtc1	at,$f8
    1be4:	3c050600 	lui	a1,0x600
    1be8:	240e0002 	li	t6,2
    1bec:	afae0014 	sw	t6,20(sp)
    1bf0:	24a52dbc 	addiu	a1,a1,11708
    1bf4:	e7a60010 	swc1	$f6,16(sp)
    1bf8:	3c063f80 	lui	a2,0x3f80
    1bfc:	24070000 	li	a3,0
    1c00:	2464014c 	addiu	a0,v1,332
    1c04:	0c000000 	jal	0 <func_80AB0D90>
    1c08:	e7a80018 	swc1	$f8,24(sp)
    1c0c:	8fa30028 	lw	v1,40(sp)
    1c10:	240f0011 	li	t7,17
    1c14:	24180004 	li	t8,4
    1c18:	241900ff 	li	t9,255
    1c1c:	ac6f0278 	sw	t7,632(v1)
    1c20:	ac78027c 	sw	t8,636(v1)
    1c24:	a07900c8 	sb	t9,200(v1)
    1c28:	8fbf0024 	lw	ra,36(sp)
    1c2c:	27bd0028 	addiu	sp,sp,40
    1c30:	03e00008 	jr	ra
    1c34:	00000000 	nop

00001c38 <func_80AB29C8>:
    1c38:	27bdffd8 	addiu	sp,sp,-40
    1c3c:	afbf0024 	sw	ra,36(sp)
    1c40:	10a00011 	beqz	a1,1c88 <func_80AB29C8+0x50>
    1c44:	afa40028 	sw	a0,40(sp)
    1c48:	3c040600 	lui	a0,0x600
    1c4c:	0c000000 	jal	0 <func_80AB0D90>
    1c50:	248435a8 	addiu	a0,a0,13736
    1c54:	44822000 	mtc1	v0,$f4
    1c58:	44800000 	mtc1	zero,$f0
    1c5c:	8fa40028 	lw	a0,40(sp)
    1c60:	468021a0 	cvt.s.w	$f6,$f4
    1c64:	3c050600 	lui	a1,0x600
    1c68:	44070000 	mfc1	a3,$f0
    1c6c:	24a535a8 	addiu	a1,a1,13736
    1c70:	3c063f80 	lui	a2,0x3f80
    1c74:	afa00014 	sw	zero,20(sp)
    1c78:	e7a60010 	swc1	$f6,16(sp)
    1c7c:	2484014c 	addiu	a0,a0,332
    1c80:	0c000000 	jal	0 <func_80AB0D90>
    1c84:	e7a00018 	swc1	$f0,24(sp)
    1c88:	8fbf0024 	lw	ra,36(sp)
    1c8c:	27bd0028 	addiu	sp,sp,40
    1c90:	03e00008 	jr	ra
    1c94:	00000000 	nop

00001c98 <func_80AB2A28>:
    1c98:	27bdffe8 	addiu	sp,sp,-24
    1c9c:	afbf0014 	sw	ra,20(sp)
    1ca0:	8c8e0288 	lw	t6,648(a0)
    1ca4:	55c00009 	bnezl	t6,1ccc <func_80AB2A28+0x34>
    1ca8:	8fbf0014 	lw	ra,20(sp)
    1cac:	50c00007 	beqzl	a2,1ccc <func_80AB2A28+0x34>
    1cb0:	8fbf0014 	lw	ra,20(sp)
    1cb4:	0c000000 	jal	0 <func_80AB0D90>
    1cb8:	afa40018 	sw	a0,24(sp)
    1cbc:	8fa40018 	lw	a0,24(sp)
    1cc0:	240f0001 	li	t7,1
    1cc4:	ac8f0288 	sw	t7,648(a0)
    1cc8:	8fbf0014 	lw	ra,20(sp)
    1ccc:	27bd0018 	addiu	sp,sp,24
    1cd0:	03e00008 	jr	ra
    1cd4:	00000000 	nop

00001cd8 <func_80AB2A68>:
    1cd8:	27bdffd8 	addiu	sp,sp,-40
    1cdc:	afa40028 	sw	a0,40(sp)
    1ce0:	afbf0024 	sw	ra,36(sp)
    1ce4:	3c040600 	lui	a0,0x600
    1ce8:	0c000000 	jal	0 <func_80AB0D90>
    1cec:	24846320 	addiu	a0,a0,25376
    1cf0:	44822000 	mtc1	v0,$f4
    1cf4:	3c01c100 	lui	at,0xc100
    1cf8:	8fa30028 	lw	v1,40(sp)
    1cfc:	468021a0 	cvt.s.w	$f6,$f4
    1d00:	44814000 	mtc1	at,$f8
    1d04:	3c050600 	lui	a1,0x600
    1d08:	240e0002 	li	t6,2
    1d0c:	afae0014 	sw	t6,20(sp)
    1d10:	24a56320 	addiu	a1,a1,25376
    1d14:	e7a60010 	swc1	$f6,16(sp)
    1d18:	3c063f80 	lui	a2,0x3f80
    1d1c:	24070000 	li	a3,0
    1d20:	2464014c 	addiu	a0,v1,332
    1d24:	0c000000 	jal	0 <func_80AB0D90>
    1d28:	e7a80018 	swc1	$f8,24(sp)
    1d2c:	8fa30028 	lw	v1,40(sp)
    1d30:	240f0012 	li	t7,18
    1d34:	24180004 	li	t8,4
    1d38:	241900ff 	li	t9,255
    1d3c:	ac6f0278 	sw	t7,632(v1)
    1d40:	ac78027c 	sw	t8,636(v1)
    1d44:	a07900c8 	sb	t9,200(v1)
    1d48:	8fbf0024 	lw	ra,36(sp)
    1d4c:	27bd0028 	addiu	sp,sp,40
    1d50:	03e00008 	jr	ra
    1d54:	00000000 	nop

00001d58 <func_80AB2AE8>:
    1d58:	240e0013 	li	t6,19
    1d5c:	ac8e0278 	sw	t6,632(a0)
    1d60:	ac80027c 	sw	zero,636(a0)
    1d64:	03e00008 	jr	ra
    1d68:	a08000c8 	sb	zero,200(a0)

00001d6c <func_80AB2AFC>:
    1d6c:	27bdffd8 	addiu	sp,sp,-40
    1d70:	afb00018 	sw	s0,24(sp)
    1d74:	00808025 	move	s0,a0
    1d78:	afbf001c 	sw	ra,28(sp)
    1d7c:	afa5002c 	sw	a1,44(sp)
    1d80:	00a02025 	move	a0,a1
    1d84:	0c000000 	jal	0 <func_80AB0D90>
    1d88:	24050001 	li	a1,1
    1d8c:	50400032 	beqzl	v0,1e58 <L80AB2BD0+0x18>
    1d90:	8fbf001c 	lw	ra,28(sp)
    1d94:	944e0000 	lhu	t6,0(v0)
    1d98:	afae0020 	sw	t6,32(sp)
    1d9c:	8e03028c 	lw	v1,652(s0)
    1da0:	25d8ffff 	addiu	t8,t6,-1
    1da4:	2f01000e 	sltiu	at,t8,14
    1da8:	51c3002b 	beql	t6,v1,1e58 <L80AB2BD0+0x18>
    1dac:	8fbf001c 	lw	ra,28(sp)
    1db0:	10200023 	beqz	at,1e40 <L80AB2BD0>
    1db4:	0018c080 	sll	t8,t8,0x2
    1db8:	3c010000 	lui	at,0x0
    1dbc:	00380821 	addu	at,at,t8
    1dc0:	8c380000 	lw	t8,0(at)
    1dc4:	03000008 	jr	t8
    1dc8:	00000000 	nop

00001dcc <L80AB2B5C>:
    1dcc:	0c000000 	jal	0 <func_80AB0D90>
    1dd0:	02002025 	move	a0,s0
    1dd4:	1000001e 	b	1e50 <L80AB2BD0+0x10>
    1dd8:	8fb90020 	lw	t9,32(sp)

00001ddc <L80AB2B6C>:
    1ddc:	02002025 	move	a0,s0
    1de0:	0c000000 	jal	0 <func_80AB0D90>
    1de4:	8fa5002c 	lw	a1,44(sp)
    1de8:	10000019 	b	1e50 <L80AB2BD0+0x10>
    1dec:	8fb90020 	lw	t9,32(sp)

00001df0 <L80AB2B80>:
    1df0:	0c000000 	jal	0 <func_80AB0D90>
    1df4:	02002025 	move	a0,s0
    1df8:	10000015 	b	1e50 <L80AB2BD0+0x10>
    1dfc:	8fb90020 	lw	t9,32(sp)

00001e00 <L80AB2B90>:
    1e00:	0c000000 	jal	0 <func_80AB0D90>
    1e04:	02002025 	move	a0,s0
    1e08:	10000011 	b	1e50 <L80AB2BD0+0x10>
    1e0c:	8fb90020 	lw	t9,32(sp)

00001e10 <L80AB2BA0>:
    1e10:	0c000000 	jal	0 <func_80AB0D90>
    1e14:	02002025 	move	a0,s0
    1e18:	1000000d 	b	1e50 <L80AB2BD0+0x10>
    1e1c:	8fb90020 	lw	t9,32(sp)

00001e20 <L80AB2BB0>:
    1e20:	0c000000 	jal	0 <func_80AB0D90>
    1e24:	02002025 	move	a0,s0
    1e28:	10000009 	b	1e50 <L80AB2BD0+0x10>
    1e2c:	8fb90020 	lw	t9,32(sp)

00001e30 <L80AB2BC0>:
    1e30:	0c000000 	jal	0 <func_80AB0D90>
    1e34:	02002025 	move	a0,s0
    1e38:	10000005 	b	1e50 <L80AB2BD0+0x10>
    1e3c:	8fb90020 	lw	t9,32(sp)

00001e40 <L80AB2BD0>:
    1e40:	3c040000 	lui	a0,0x0
    1e44:	0c000000 	jal	0 <func_80AB0D90>
    1e48:	24840000 	addiu	a0,a0,0
    1e4c:	8fb90020 	lw	t9,32(sp)
    1e50:	ae19028c 	sw	t9,652(s0)
    1e54:	8fbf001c 	lw	ra,28(sp)
    1e58:	8fb00018 	lw	s0,24(sp)
    1e5c:	27bd0028 	addiu	sp,sp,40
    1e60:	03e00008 	jr	ra
    1e64:	00000000 	nop

00001e68 <func_80AB2BF8>:
    1e68:	27bdffe8 	addiu	sp,sp,-24
    1e6c:	afbf0014 	sw	ra,20(sp)
    1e70:	0c000000 	jal	0 <func_80AB0D90>
    1e74:	00000000 	nop
    1e78:	8fbf0014 	lw	ra,20(sp)
    1e7c:	27bd0018 	addiu	sp,sp,24
    1e80:	03e00008 	jr	ra
    1e84:	00000000 	nop

00001e88 <func_80AB2C18>:
    1e88:	27bdffe8 	addiu	sp,sp,-24
    1e8c:	afbf0014 	sw	ra,20(sp)
    1e90:	afa40018 	sw	a0,24(sp)
    1e94:	0c000000 	jal	0 <func_80AB0D90>
    1e98:	afa5001c 	sw	a1,28(sp)
    1e9c:	8fa40018 	lw	a0,24(sp)
    1ea0:	0c000000 	jal	0 <func_80AB0D90>
    1ea4:	8fa5001c 	lw	a1,28(sp)
    1ea8:	8fa40018 	lw	a0,24(sp)
    1eac:	0c000000 	jal	0 <func_80AB0D90>
    1eb0:	8fa5001c 	lw	a1,28(sp)
    1eb4:	8fa40018 	lw	a0,24(sp)
    1eb8:	0c000000 	jal	0 <func_80AB0D90>
    1ebc:	8fa5001c 	lw	a1,28(sp)
    1ec0:	8fbf0014 	lw	ra,20(sp)
    1ec4:	27bd0018 	addiu	sp,sp,24
    1ec8:	03e00008 	jr	ra
    1ecc:	00000000 	nop

00001ed0 <func_80AB2C60>:
    1ed0:	27bdffe0 	addiu	sp,sp,-32
    1ed4:	afbf001c 	sw	ra,28(sp)
    1ed8:	afb00018 	sw	s0,24(sp)
    1edc:	00808025 	move	s0,a0
    1ee0:	0c000000 	jal	0 <func_80AB0D90>
    1ee4:	afa50024 	sw	a1,36(sp)
    1ee8:	0c000000 	jal	0 <func_80AB0D90>
    1eec:	02002025 	move	a0,s0
    1ef0:	02002025 	move	a0,s0
    1ef4:	0c000000 	jal	0 <func_80AB0D90>
    1ef8:	00402825 	move	a1,v0
    1efc:	0c000000 	jal	0 <func_80AB0D90>
    1f00:	02002025 	move	a0,s0
    1f04:	02002025 	move	a0,s0
    1f08:	0c000000 	jal	0 <func_80AB0D90>
    1f0c:	8fa50024 	lw	a1,36(sp)
    1f10:	02002025 	move	a0,s0
    1f14:	0c000000 	jal	0 <func_80AB0D90>
    1f18:	8fa50024 	lw	a1,36(sp)
    1f1c:	02002025 	move	a0,s0
    1f20:	0c000000 	jal	0 <func_80AB0D90>
    1f24:	8fa50024 	lw	a1,36(sp)
    1f28:	8fbf001c 	lw	ra,28(sp)
    1f2c:	8fb00018 	lw	s0,24(sp)
    1f30:	27bd0020 	addiu	sp,sp,32
    1f34:	03e00008 	jr	ra
    1f38:	00000000 	nop

00001f3c <func_80AB2CCC>:
    1f3c:	27bdffe0 	addiu	sp,sp,-32
    1f40:	afbf001c 	sw	ra,28(sp)
    1f44:	afb00018 	sw	s0,24(sp)
    1f48:	00808025 	move	s0,a0
    1f4c:	0c000000 	jal	0 <func_80AB0D90>
    1f50:	afa50024 	sw	a1,36(sp)
    1f54:	0c000000 	jal	0 <func_80AB0D90>
    1f58:	02002025 	move	a0,s0
    1f5c:	02002025 	move	a0,s0
    1f60:	0c000000 	jal	0 <func_80AB0D90>
    1f64:	00402825 	move	a1,v0
    1f68:	0c000000 	jal	0 <func_80AB0D90>
    1f6c:	02002025 	move	a0,s0
    1f70:	02002025 	move	a0,s0
    1f74:	0c000000 	jal	0 <func_80AB0D90>
    1f78:	8fa50024 	lw	a1,36(sp)
    1f7c:	02002025 	move	a0,s0
    1f80:	0c000000 	jal	0 <func_80AB0D90>
    1f84:	8fa50024 	lw	a1,36(sp)
    1f88:	02002025 	move	a0,s0
    1f8c:	0c000000 	jal	0 <func_80AB0D90>
    1f90:	8fa50024 	lw	a1,36(sp)
    1f94:	8fbf001c 	lw	ra,28(sp)
    1f98:	8fb00018 	lw	s0,24(sp)
    1f9c:	27bd0020 	addiu	sp,sp,32
    1fa0:	03e00008 	jr	ra
    1fa4:	00000000 	nop

00001fa8 <func_80AB2D38>:
    1fa8:	27bdffe0 	addiu	sp,sp,-32
    1fac:	afbf001c 	sw	ra,28(sp)
    1fb0:	afb00018 	sw	s0,24(sp)
    1fb4:	00808025 	move	s0,a0
    1fb8:	0c000000 	jal	0 <func_80AB0D90>
    1fbc:	afa50024 	sw	a1,36(sp)
    1fc0:	0c000000 	jal	0 <func_80AB0D90>
    1fc4:	02002025 	move	a0,s0
    1fc8:	02002025 	move	a0,s0
    1fcc:	0c000000 	jal	0 <func_80AB0D90>
    1fd0:	00402825 	move	a1,v0
    1fd4:	02002025 	move	a0,s0
    1fd8:	0c000000 	jal	0 <func_80AB0D90>
    1fdc:	8fa50024 	lw	a1,36(sp)
    1fe0:	02002025 	move	a0,s0
    1fe4:	0c000000 	jal	0 <func_80AB0D90>
    1fe8:	8fa50024 	lw	a1,36(sp)
    1fec:	02002025 	move	a0,s0
    1ff0:	0c000000 	jal	0 <func_80AB0D90>
    1ff4:	8fa50024 	lw	a1,36(sp)
    1ff8:	8fbf001c 	lw	ra,28(sp)
    1ffc:	8fb00018 	lw	s0,24(sp)
    2000:	27bd0020 	addiu	sp,sp,32
    2004:	03e00008 	jr	ra
    2008:	00000000 	nop

0000200c <func_80AB2D9C>:
    200c:	27bdffd8 	addiu	sp,sp,-40
    2010:	afbf001c 	sw	ra,28(sp)
    2014:	afb10018 	sw	s1,24(sp)
    2018:	afb00014 	sw	s0,20(sp)
    201c:	00808025 	move	s0,a0
    2020:	0c000000 	jal	0 <func_80AB0D90>
    2024:	00a08825 	move	s1,a1
    2028:	0c000000 	jal	0 <func_80AB0D90>
    202c:	02002025 	move	a0,s0
    2030:	0c000000 	jal	0 <func_80AB0D90>
    2034:	02002025 	move	a0,s0
    2038:	afa20024 	sw	v0,36(sp)
    203c:	0c000000 	jal	0 <func_80AB0D90>
    2040:	02002025 	move	a0,s0
    2044:	02002025 	move	a0,s0
    2048:	0c000000 	jal	0 <func_80AB0D90>
    204c:	02202825 	move	a1,s1
    2050:	02002025 	move	a0,s0
    2054:	0c000000 	jal	0 <func_80AB0D90>
    2058:	02202825 	move	a1,s1
    205c:	02002025 	move	a0,s0
    2060:	02202825 	move	a1,s1
    2064:	0c000000 	jal	0 <func_80AB0D90>
    2068:	8fa60024 	lw	a2,36(sp)
    206c:	02002025 	move	a0,s0
    2070:	0c000000 	jal	0 <func_80AB0D90>
    2074:	02202825 	move	a1,s1
    2078:	8fbf001c 	lw	ra,28(sp)
    207c:	8fb00014 	lw	s0,20(sp)
    2080:	8fb10018 	lw	s1,24(sp)
    2084:	03e00008 	jr	ra
    2088:	27bd0028 	addiu	sp,sp,40

0000208c <func_80AB2E1C>:
    208c:	27bdffe8 	addiu	sp,sp,-24
    2090:	afbf0014 	sw	ra,20(sp)
    2094:	afa5001c 	sw	a1,28(sp)
    2098:	3c013f80 	lui	at,0x3f80
    209c:	44813000 	mtc1	at,$f6
    20a0:	c4840290 	lwc1	$f4,656(a0)
    20a4:	3c014270 	lui	at,0x4270
    20a8:	44815000 	mtc1	at,$f10
    20ac:	46062200 	add.s	$f8,$f4,$f6
    20b0:	e4880290 	swc1	$f8,656(a0)
    20b4:	c4900290 	lwc1	$f16,656(a0)
    20b8:	4610503c 	c.lt.s	$f10,$f16
    20bc:	00000000 	nop
    20c0:	45020004 	bc1fl	20d4 <func_80AB2E1C+0x48>
    20c4:	8fbf0014 	lw	ra,20(sp)
    20c8:	0c000000 	jal	0 <func_80AB0D90>
    20cc:	00000000 	nop
    20d0:	8fbf0014 	lw	ra,20(sp)
    20d4:	27bd0018 	addiu	sp,sp,24
    20d8:	03e00008 	jr	ra
    20dc:	00000000 	nop

000020e0 <func_80AB2E70>:
    20e0:	27bdffa0 	addiu	sp,sp,-96
    20e4:	afbf0024 	sw	ra,36(sp)
    20e8:	afa40060 	sw	a0,96(sp)
    20ec:	afa50064 	sw	a1,100(sp)
    20f0:	8ca50000 	lw	a1,0(a1)
    20f4:	3c060000 	lui	a2,0x0
    20f8:	24c60000 	addiu	a2,a2,0
    20fc:	27a40044 	addiu	a0,sp,68
    2100:	2407023c 	li	a3,572
    2104:	0c000000 	jal	0 <func_80AB0D90>
    2108:	afa50054 	sw	a1,84(sp)
    210c:	8faf0064 	lw	t7,100(sp)
    2110:	0c000000 	jal	0 <func_80AB0D90>
    2114:	8de40000 	lw	a0,0(t7)
    2118:	8fa80054 	lw	t0,84(sp)
    211c:	3c040601 	lui	a0,0x601
    2120:	2484d8e8 	addiu	a0,a0,-10008
    2124:	8d0202c0 	lw	v0,704(t0)
    2128:	00044900 	sll	t1,a0,0x4
    212c:	00095702 	srl	t2,t1,0x1c
    2130:	3c19db06 	lui	t9,0xdb06
    2134:	3c0c0000 	lui	t4,0x0
    2138:	24580008 	addiu	t8,v0,8
    213c:	258c0000 	addiu	t4,t4,0
    2140:	37390020 	ori	t9,t9,0x20
    2144:	000a5880 	sll	t3,t2,0x2
    2148:	ad1802c0 	sw	t8,704(t0)
    214c:	016c2821 	addu	a1,t3,t4
    2150:	ac590000 	sw	t9,0(v0)
    2154:	8cad0000 	lw	t5,0(a1)
    2158:	3c0100ff 	lui	at,0xff
    215c:	3421ffff 	ori	at,at,0xffff
    2160:	00813024 	and	a2,a0,at
    2164:	3c078000 	lui	a3,0x8000
    2168:	01a67021 	addu	t6,t5,a2
    216c:	01c77821 	addu	t7,t6,a3
    2170:	ac4f0004 	sw	t7,4(v0)
    2174:	8d0202c0 	lw	v0,704(t0)
    2178:	3c19db06 	lui	t9,0xdb06
    217c:	37390024 	ori	t9,t9,0x24
    2180:	24580008 	addiu	t8,v0,8
    2184:	ad1802c0 	sw	t8,704(t0)
    2188:	ac590000 	sw	t9,0(v0)
    218c:	8ca90000 	lw	t1,0(a1)
    2190:	240e00ff 	li	t6,255
    2194:	3c0dfb00 	lui	t5,0xfb00
    2198:	01265021 	addu	t2,t1,a2
    219c:	01475821 	addu	t3,t2,a3
    21a0:	ac4b0004 	sw	t3,4(v0)
    21a4:	8d0202c0 	lw	v0,704(t0)
    21a8:	3c190000 	lui	t9,0x0
    21ac:	3c18db06 	lui	t8,0xdb06
    21b0:	244c0008 	addiu	t4,v0,8
    21b4:	ad0c02c0 	sw	t4,704(t0)
    21b8:	ac4e0004 	sw	t6,4(v0)
    21bc:	ac4d0000 	sw	t5,0(v0)
    21c0:	8d0202c0 	lw	v0,704(t0)
    21c4:	37180030 	ori	t8,t8,0x30
    21c8:	27390010 	addiu	t9,t9,16
    21cc:	244f0008 	addiu	t7,v0,8
    21d0:	ad0f02c0 	sw	t7,704(t0)
    21d4:	ac590004 	sw	t9,4(v0)
    21d8:	ac580000 	sw	t8,0(v0)
    21dc:	8fa30060 	lw	v1,96(sp)
    21e0:	8fa40064 	lw	a0,100(sp)
    21e4:	2462014c 	addiu	v0,v1,332
    21e8:	8c450004 	lw	a1,4(v0)
    21ec:	8c460020 	lw	a2,32(v0)
    21f0:	90470002 	lbu	a3,2(v0)
    21f4:	afa00014 	sw	zero,20(sp)
    21f8:	afa00010 	sw	zero,16(sp)
    21fc:	0c000000 	jal	0 <func_80AB0D90>
    2200:	afa30018 	sw	v1,24(sp)
    2204:	8fa90064 	lw	t1,100(sp)
    2208:	3c060000 	lui	a2,0x0
    220c:	24c60000 	addiu	a2,a2,0
    2210:	27a40044 	addiu	a0,sp,68
    2214:	24070251 	li	a3,593
    2218:	0c000000 	jal	0 <func_80AB0D90>
    221c:	8d250000 	lw	a1,0(t1)
    2220:	8fbf0024 	lw	ra,36(sp)
    2224:	27bd0060 	addiu	sp,sp,96
    2228:	03e00008 	jr	ra
    222c:	00000000 	nop

00002230 <func_80AB2FC0>:
    2230:	2401000f 	li	at,15
    2234:	afa40000 	sw	a0,0(sp)
    2238:	14a10004 	bne	a1,at,224c <func_80AB2FC0+0x1c>
    223c:	afa7000c 	sw	a3,12(sp)
    2240:	3c0e0601 	lui	t6,0x601
    2244:	25ce3158 	addiu	t6,t6,12632
    2248:	acce0000 	sw	t6,0(a2)
    224c:	03e00008 	jr	ra
    2250:	00001025 	move	v0,zero

00002254 <func_80AB2FE4>:
    2254:	27bdff90 	addiu	sp,sp,-112
    2258:	afbf0024 	sw	ra,36(sp)
    225c:	afa40070 	sw	a0,112(sp)
    2260:	afa50074 	sw	a1,116(sp)
    2264:	84820274 	lh	v0,628(a0)
    2268:	3c180000 	lui	t8,0x0
    226c:	3c060000 	lui	a2,0x0
    2270:	00027880 	sll	t7,v0,0x2
    2274:	030fc021 	addu	t8,t8,t7
    2278:	8f180000 	lw	t8,0(t8)
    227c:	24c60000 	addiu	a2,a2,0
    2280:	27a40048 	addiu	a0,sp,72
    2284:	afb80060 	sw	t8,96(sp)
    2288:	8ca50000 	lw	a1,0(a1)
    228c:	2407026f 	li	a3,623
    2290:	0c000000 	jal	0 <func_80AB0D90>
    2294:	afa50058 	sw	a1,88(sp)
    2298:	8fa90074 	lw	t1,116(sp)
    229c:	0c000000 	jal	0 <func_80AB0D90>
    22a0:	8d240000 	lw	a0,0(t1)
    22a4:	8fa80058 	lw	t0,88(sp)
    22a8:	8fa70060 	lw	a3,96(sp)
    22ac:	3c0bdb06 	lui	t3,0xdb06
    22b0:	8d0202c0 	lw	v0,704(t0)
    22b4:	00076100 	sll	t4,a3,0x4
    22b8:	000c6f02 	srl	t5,t4,0x1c
    22bc:	3c0f0000 	lui	t7,0x0
    22c0:	244a0008 	addiu	t2,v0,8
    22c4:	25ef0000 	addiu	t7,t7,0
    22c8:	000d7080 	sll	t6,t5,0x2
    22cc:	356b0020 	ori	t3,t3,0x20
    22d0:	ad0a02c0 	sw	t2,704(t0)
    22d4:	01cf2021 	addu	a0,t6,t7
    22d8:	ac4b0000 	sw	t3,0(v0)
    22dc:	8c980000 	lw	t8,0(a0)
    22e0:	3c0100ff 	lui	at,0xff
    22e4:	3421ffff 	ori	at,at,0xffff
    22e8:	00e12824 	and	a1,a3,at
    22ec:	3c068000 	lui	a2,0x8000
    22f0:	0305c821 	addu	t9,t8,a1
    22f4:	03264821 	addu	t1,t9,a2
    22f8:	ac490004 	sw	t1,4(v0)
    22fc:	8d0202c0 	lw	v0,704(t0)
    2300:	3c0bdb06 	lui	t3,0xdb06
    2304:	356b0024 	ori	t3,t3,0x24
    2308:	244a0008 	addiu	t2,v0,8
    230c:	ad0a02c0 	sw	t2,704(t0)
    2310:	ac4b0000 	sw	t3,0(v0)
    2314:	8c8c0000 	lw	t4,0(a0)
    2318:	241900ff 	li	t9,255
    231c:	3c18fb00 	lui	t8,0xfb00
    2320:	01856821 	addu	t5,t4,a1
    2324:	01a67021 	addu	t6,t5,a2
    2328:	ac4e0004 	sw	t6,4(v0)
    232c:	8d0202c0 	lw	v0,704(t0)
    2330:	3c0b0000 	lui	t3,0x0
    2334:	3c0adb06 	lui	t2,0xdb06
    2338:	244f0008 	addiu	t7,v0,8
    233c:	ad0f02c0 	sw	t7,704(t0)
    2340:	ac590004 	sw	t9,4(v0)
    2344:	ac580000 	sw	t8,0(v0)
    2348:	8d0202c0 	lw	v0,704(t0)
    234c:	354a0030 	ori	t2,t2,0x30
    2350:	256b0010 	addiu	t3,t3,16
    2354:	24490008 	addiu	t1,v0,8
    2358:	ad0902c0 	sw	t1,704(t0)
    235c:	ac4b0004 	sw	t3,4(v0)
    2360:	ac4a0000 	sw	t2,0(v0)
    2364:	8fa30070 	lw	v1,112(sp)
    2368:	3c0c0000 	lui	t4,0x0
    236c:	258c0000 	addiu	t4,t4,0
    2370:	2462014c 	addiu	v0,v1,332
    2374:	8c450004 	lw	a1,4(v0)
    2378:	8c460020 	lw	a2,32(v0)
    237c:	90470002 	lbu	a3,2(v0)
    2380:	afa00014 	sw	zero,20(sp)
    2384:	afac0010 	sw	t4,16(sp)
    2388:	8fa40074 	lw	a0,116(sp)
    238c:	0c000000 	jal	0 <func_80AB0D90>
    2390:	afa30018 	sw	v1,24(sp)
    2394:	8fad0074 	lw	t5,116(sp)
    2398:	3c060000 	lui	a2,0x0
    239c:	24c60000 	addiu	a2,a2,0
    23a0:	27a40048 	addiu	a0,sp,72
    23a4:	24070284 	li	a3,644
    23a8:	0c000000 	jal	0 <func_80AB0D90>
    23ac:	8da50000 	lw	a1,0(t5)
    23b0:	8fbf0024 	lw	ra,36(sp)
    23b4:	27bd0070 	addiu	sp,sp,112
    23b8:	03e00008 	jr	ra
    23bc:	00000000 	nop

000023c0 <func_80AB3150>:
    23c0:	27bdffe0 	addiu	sp,sp,-32
    23c4:	afa50024 	sw	a1,36(sp)
    23c8:	afbf001c 	sw	ra,28(sp)
    23cc:	3c050600 	lui	a1,0x600
    23d0:	24a50bc0 	addiu	a1,a1,3008
    23d4:	afa00010 	sw	zero,16(sp)
    23d8:	afa40020 	sw	a0,32(sp)
    23dc:	00003025 	move	a2,zero
    23e0:	0c000000 	jal	0 <func_80AB0D90>
    23e4:	24070000 	li	a3,0
    23e8:	8fa40020 	lw	a0,32(sp)
    23ec:	240e0014 	li	t6,20
    23f0:	ac8e0278 	sw	t6,632(a0)
    23f4:	ac80027c 	sw	zero,636(a0)
    23f8:	a08000c8 	sb	zero,200(a0)
    23fc:	8fbf001c 	lw	ra,28(sp)
    2400:	27bd0020 	addiu	sp,sp,32
    2404:	03e00008 	jr	ra
    2408:	00000000 	nop

0000240c <func_80AB319C>:
    240c:	3c013f80 	lui	at,0x3f80
    2410:	44813000 	mtc1	at,$f6
    2414:	c4840280 	lwc1	$f4,640(a0)
    2418:	3c0e0000 	lui	t6,0x0
    241c:	3c014120 	lui	at,0x4120
    2420:	46062200 	add.s	$f8,$f4,$f6
    2424:	44819000 	mtc1	at,$f18
    2428:	240200ff 	li	v0,255
    242c:	e4880280 	swc1	$f8,640(a0)
    2430:	8dce0000 	lw	t6,0(t6)
    2434:	c4840280 	lwc1	$f4,640(a0)
    2438:	85cf1476 	lh	t7,5238(t6)
    243c:	448f5000 	mtc1	t7,$f10
    2440:	00000000 	nop
    2444:	46805420 	cvt.s.w	$f16,$f10
    2448:	46128000 	add.s	$f0,$f16,$f18
    244c:	4604003e 	c.le.s	$f0,$f4
    2450:	00000000 	nop
    2454:	45020005 	bc1fl	246c <func_80AB319C+0x60>
    2458:	c4860280 	lwc1	$f6,640(a0)
    245c:	ac820284 	sw	v0,644(a0)
    2460:	03e00008 	jr	ra
    2464:	a08200c8 	sb	v0,200(a0)
    2468:	c4860280 	lwc1	$f6,640(a0)
    246c:	3c01437f 	lui	at,0x437f
    2470:	44815000 	mtc1	at,$f10
    2474:	46003203 	div.s	$f8,$f6,$f0
    2478:	460a4402 	mul.s	$f16,$f8,$f10
    247c:	4600848d 	trunc.w.s	$f18,$f16
    2480:	44029000 	mfc1	v0,$f18
    2484:	00000000 	nop
    2488:	ac820284 	sw	v0,644(a0)
    248c:	a08200c8 	sb	v0,200(a0)
    2490:	03e00008 	jr	ra
    2494:	00000000 	nop

00002498 <func_80AB3228>:
    2498:	27bdffe8 	addiu	sp,sp,-24
    249c:	afbf0014 	sw	ra,20(sp)
    24a0:	afa40018 	sw	a0,24(sp)
    24a4:	0c000000 	jal	0 <func_80AB0D90>
    24a8:	24060001 	li	a2,1
    24ac:	8fa40018 	lw	a0,24(sp)
    24b0:	240e0015 	li	t6,21
    24b4:	240f0002 	li	t7,2
    24b8:	ac8e0278 	sw	t6,632(a0)
    24bc:	ac8f027c 	sw	t7,636(a0)
    24c0:	8fbf0014 	lw	ra,20(sp)
    24c4:	27bd0018 	addiu	sp,sp,24
    24c8:	03e00008 	jr	ra
    24cc:	00000000 	nop

000024d0 <func_80AB3260>:
    24d0:	3c0e0000 	lui	t6,0x0
    24d4:	8dce0000 	lw	t6,0(t6)
    24d8:	3c014120 	lui	at,0x4120
    24dc:	44815000 	mtc1	at,$f10
    24e0:	85cf1476 	lh	t7,5238(t6)
    24e4:	c4840280 	lwc1	$f4,640(a0)
    24e8:	24180016 	li	t8,22
    24ec:	448f3000 	mtc1	t7,$f6
    24f0:	24190001 	li	t9,1
    24f4:	46803220 	cvt.s.w	$f8,$f6
    24f8:	460a4400 	add.s	$f16,$f8,$f10
    24fc:	4604803e 	c.le.s	$f16,$f4
    2500:	00000000 	nop
    2504:	45000003 	bc1f	2514 <func_80AB3260+0x44>
    2508:	00000000 	nop
    250c:	ac980278 	sw	t8,632(a0)
    2510:	ac99027c 	sw	t9,636(a0)
    2514:	03e00008 	jr	ra
    2518:	00000000 	nop

0000251c <func_80AB32AC>:
    251c:	27bdffe0 	addiu	sp,sp,-32
    2520:	afbf001c 	sw	ra,28(sp)
    2524:	3c050600 	lui	a1,0x600
    2528:	afa40020 	sw	a0,32(sp)
    252c:	24a55ca4 	addiu	a1,a1,23716
    2530:	afa00010 	sw	zero,16(sp)
    2534:	24060002 	li	a2,2
    2538:	0c000000 	jal	0 <func_80AB0D90>
    253c:	3c07c100 	lui	a3,0xc100
    2540:	8faf0020 	lw	t7,32(sp)
    2544:	240e0017 	li	t6,23
    2548:	adee0278 	sw	t6,632(t7)
    254c:	8fbf001c 	lw	ra,28(sp)
    2550:	27bd0020 	addiu	sp,sp,32
    2554:	03e00008 	jr	ra
    2558:	00000000 	nop

0000255c <func_80AB32EC>:
    255c:	27bdffe0 	addiu	sp,sp,-32
    2560:	10a00007 	beqz	a1,2580 <func_80AB32EC+0x24>
    2564:	afbf001c 	sw	ra,28(sp)
    2568:	3c050600 	lui	a1,0x600
    256c:	24a55614 	addiu	a1,a1,22036
    2570:	00003025 	move	a2,zero
    2574:	24070000 	li	a3,0
    2578:	0c000000 	jal	0 <func_80AB0D90>
    257c:	afa00010 	sw	zero,16(sp)
    2580:	8fbf001c 	lw	ra,28(sp)
    2584:	27bd0020 	addiu	sp,sp,32
    2588:	03e00008 	jr	ra
    258c:	00000000 	nop

00002590 <func_80AB3320>:
    2590:	27bdffe0 	addiu	sp,sp,-32
    2594:	afa40020 	sw	a0,32(sp)
    2598:	afbf0014 	sw	ra,20(sp)
    259c:	afa50024 	sw	a1,36(sp)
    25a0:	00a02025 	move	a0,a1
    25a4:	0c000000 	jal	0 <func_80AB0D90>
    25a8:	24050001 	li	a1,1
    25ac:	1040001c 	beqz	v0,2620 <func_80AB3320+0x90>
    25b0:	8fa70020 	lw	a3,32(sp)
    25b4:	94460000 	lhu	a2,0(v0)
    25b8:	8ce3028c 	lw	v1,652(a3)
    25bc:	2401000f 	li	at,15
    25c0:	50c30018 	beql	a2,v1,2624 <func_80AB3320+0x94>
    25c4:	8fbf0014 	lw	ra,20(sp)
    25c8:	10c10006 	beq	a2,at,25e4 <func_80AB3320+0x54>
    25cc:	00e02025 	move	a0,a3
    25d0:	24010010 	li	at,16
    25d4:	10c10008 	beq	a2,at,25f8 <func_80AB3320+0x68>
    25d8:	00e02025 	move	a0,a3
    25dc:	1000000a 	b	2608 <func_80AB3320+0x78>
    25e0:	3c040000 	lui	a0,0x0
    25e4:	8fa50024 	lw	a1,36(sp)
    25e8:	0c000000 	jal	0 <func_80AB0D90>
    25ec:	afa60018 	sw	a2,24(sp)
    25f0:	10000009 	b	2618 <func_80AB3320+0x88>
    25f4:	8fa60018 	lw	a2,24(sp)
    25f8:	0c000000 	jal	0 <func_80AB0D90>
    25fc:	afa60018 	sw	a2,24(sp)
    2600:	10000005 	b	2618 <func_80AB3320+0x88>
    2604:	8fa60018 	lw	a2,24(sp)
    2608:	24840000 	addiu	a0,a0,0
    260c:	0c000000 	jal	0 <func_80AB0D90>
    2610:	afa60018 	sw	a2,24(sp)
    2614:	8fa60018 	lw	a2,24(sp)
    2618:	8fae0020 	lw	t6,32(sp)
    261c:	adc6028c 	sw	a2,652(t6)
    2620:	8fbf0014 	lw	ra,20(sp)
    2624:	27bd0020 	addiu	sp,sp,32
    2628:	03e00008 	jr	ra
    262c:	00000000 	nop

00002630 <func_80AB33C0>:
    2630:	27bdffe8 	addiu	sp,sp,-24
    2634:	afbf0014 	sw	ra,20(sp)
    2638:	0c000000 	jal	0 <func_80AB0D90>
    263c:	00000000 	nop
    2640:	8fbf0014 	lw	ra,20(sp)
    2644:	27bd0018 	addiu	sp,sp,24
    2648:	03e00008 	jr	ra
    264c:	00000000 	nop

00002650 <func_80AB33E0>:
    2650:	27bdffe0 	addiu	sp,sp,-32
    2654:	afbf001c 	sw	ra,28(sp)
    2658:	afb00018 	sw	s0,24(sp)
    265c:	0c000000 	jal	0 <func_80AB0D90>
    2660:	00808025 	move	s0,a0
    2664:	0c000000 	jal	0 <func_80AB0D90>
    2668:	02002025 	move	a0,s0
    266c:	0c000000 	jal	0 <func_80AB0D90>
    2670:	02002025 	move	a0,s0
    2674:	0c000000 	jal	0 <func_80AB0D90>
    2678:	02002025 	move	a0,s0
    267c:	0c000000 	jal	0 <func_80AB0D90>
    2680:	02002025 	move	a0,s0
    2684:	8fbf001c 	lw	ra,28(sp)
    2688:	8fb00018 	lw	s0,24(sp)
    268c:	27bd0020 	addiu	sp,sp,32
    2690:	03e00008 	jr	ra
    2694:	00000000 	nop

00002698 <func_80AB3428>:
    2698:	27bdffe8 	addiu	sp,sp,-24
    269c:	afbf0014 	sw	ra,20(sp)
    26a0:	afa40018 	sw	a0,24(sp)
    26a4:	0c000000 	jal	0 <func_80AB0D90>
    26a8:	afa5001c 	sw	a1,28(sp)
    26ac:	0c000000 	jal	0 <func_80AB0D90>
    26b0:	8fa40018 	lw	a0,24(sp)
    26b4:	0c000000 	jal	0 <func_80AB0D90>
    26b8:	8fa40018 	lw	a0,24(sp)
    26bc:	8fa40018 	lw	a0,24(sp)
    26c0:	0c000000 	jal	0 <func_80AB0D90>
    26c4:	8fa5001c 	lw	a1,28(sp)
    26c8:	8fbf0014 	lw	ra,20(sp)
    26cc:	27bd0018 	addiu	sp,sp,24
    26d0:	03e00008 	jr	ra
    26d4:	00000000 	nop

000026d8 <func_80AB3468>:
    26d8:	27bdffe0 	addiu	sp,sp,-32
    26dc:	afbf0014 	sw	ra,20(sp)
    26e0:	0c000000 	jal	0 <func_80AB0D90>
    26e4:	afa40020 	sw	a0,32(sp)
    26e8:	0c000000 	jal	0 <func_80AB0D90>
    26ec:	8fa40020 	lw	a0,32(sp)
    26f0:	afa2001c 	sw	v0,28(sp)
    26f4:	0c000000 	jal	0 <func_80AB0D90>
    26f8:	8fa40020 	lw	a0,32(sp)
    26fc:	8fa40020 	lw	a0,32(sp)
    2700:	0c000000 	jal	0 <func_80AB0D90>
    2704:	8fa5001c 	lw	a1,28(sp)
    2708:	8fbf0014 	lw	ra,20(sp)
    270c:	27bd0020 	addiu	sp,sp,32
    2710:	03e00008 	jr	ra
    2714:	00000000 	nop

00002718 <func_80AB34A8>:
    2718:	3c020000 	lui	v0,0x0
    271c:	24420000 	addiu	v0,v0,0
    2720:	944e0ee6 	lhu	t6,3814(v0)
    2724:	27bdffd8 	addiu	sp,sp,-40
    2728:	afb00020 	sw	s0,32(sp)
    272c:	31cf0020 	andi	t7,t6,0x20
    2730:	00808025 	move	s0,a0
    2734:	15e0002e 	bnez	t7,27f0 <func_80AB34A8+0xd8>
    2738:	afbf0024 	sw	ra,36(sp)
    273c:	8c580004 	lw	t8,4(v0)
    2740:	24010001 	li	at,1
    2744:	1701002a 	bne	t8,at,27f0 <func_80AB34A8+0xd8>
    2748:	00000000 	nop
    274c:	0c000000 	jal	0 <func_80AB0D90>
    2750:	00000000 	nop
    2754:	3c020000 	lui	v0,0x0
    2758:	24420000 	addiu	v0,v0,0
    275c:	94590ee6 	lhu	t9,3814(v0)
    2760:	3c050600 	lui	a1,0x600
    2764:	24a54bb4 	addiu	a1,a1,19380
    2768:	33280010 	andi	t0,t9,0x10
    276c:	1500000d 	bnez	t0,27a4 <func_80AB34A8+0x8c>
    2770:	02002025 	move	a0,s0
    2774:	3c050600 	lui	a1,0x600
    2778:	24a56e78 	addiu	a1,a1,28280
    277c:	02002025 	move	a0,s0
    2780:	00003025 	move	a2,zero
    2784:	24070000 	li	a3,0
    2788:	0c000000 	jal	0 <func_80AB0D90>
    278c:	afa00010 	sw	zero,16(sp)
    2790:	24090018 	li	t1,24
    2794:	240a0001 	li	t2,1
    2798:	ae090278 	sw	t1,632(s0)
    279c:	10000016 	b	27f8 <func_80AB34A8+0xe0>
    27a0:	ae0a027c 	sw	t2,636(s0)
    27a4:	00003025 	move	a2,zero
    27a8:	24070000 	li	a3,0
    27ac:	0c000000 	jal	0 <func_80AB0D90>
    27b0:	afa00010 	sw	zero,16(sp)
    27b4:	8e0e02f0 	lw	t6,752(s0)
    27b8:	8e0b0004 	lw	t3,4(s0)
    27bc:	8e0d02f4 	lw	t5,756(s0)
    27c0:	ae0e0024 	sw	t6,36(s0)
    27c4:	8e0e02f8 	lw	t6,760(s0)
    27c8:	24020001 	li	v0,1
    27cc:	240f001d 	li	t7,29
    27d0:	356c0009 	ori	t4,t3,0x9
    27d4:	ae0202e0 	sw	v0,736(s0)
    27d8:	ae0c0004 	sw	t4,4(s0)
    27dc:	ae0f0278 	sw	t7,632(s0)
    27e0:	ae02027c 	sw	v0,636(s0)
    27e4:	ae0d0028 	sw	t5,40(s0)
    27e8:	10000003 	b	27f8 <func_80AB34A8+0xe0>
    27ec:	ae0e002c 	sw	t6,44(s0)
    27f0:	0c000000 	jal	0 <func_80AB0D90>
    27f4:	02002025 	move	a0,s0
    27f8:	8fbf0024 	lw	ra,36(sp)
    27fc:	8fb00020 	lw	s0,32(sp)
    2800:	27bd0028 	addiu	sp,sp,40
    2804:	03e00008 	jr	ra
    2808:	00000000 	nop

0000280c <func_80AB359C>:
    280c:	27bdffb8 	addiu	sp,sp,-72
    2810:	afbf0024 	sw	ra,36(sp)
    2814:	afb00020 	sw	s0,32(sp)
    2818:	948e02fe 	lhu	t6,766(a0)
    281c:	3c180000 	lui	t8,0x0
    2820:	00808025 	move	s0,a0
    2824:	25cf0001 	addiu	t7,t6,1
    2828:	a48f02fe 	sh	t7,766(a0)
    282c:	8f180000 	lw	t8,0(t8)
    2830:	00002825 	move	a1,zero
    2834:	24070003 	li	a3,3
    2838:	87191476 	lh	t9,5238(t8)
    283c:	240a0003 	li	t2,3
    2840:	27280019 	addiu	t0,t9,25
    2844:	3109ffff 	andi	t1,t0,0xffff
    2848:	afa9002c 	sw	t1,44(sp)
    284c:	948602fe 	lhu	a2,766(a0)
    2850:	97a4002e 	lhu	a0,46(sp)
    2854:	0126082a 	slt	at,t1,a2
    2858:	54200019 	bnezl	at,28c0 <func_80AB359C+0xb4>
    285c:	8fbf0024 	lw	ra,36(sp)
    2860:	0c000000 	jal	0 <func_80AB0D90>
    2864:	afaa0010 	sw	t2,16(sp)
    2868:	260302e4 	addiu	v1,s0,740
    286c:	260402f0 	addiu	a0,s0,752
    2870:	c4840000 	lwc1	$f4,0(a0)
    2874:	c4620000 	lwc1	$f2,0(v1)
    2878:	26020024 	addiu	v0,s0,36
    287c:	46022181 	sub.s	$f6,$f4,$f2
    2880:	46060202 	mul.s	$f8,$f0,$f6
    2884:	46081280 	add.s	$f10,$f2,$f8
    2888:	e44a0000 	swc1	$f10,0(v0)
    288c:	c4900004 	lwc1	$f16,4(a0)
    2890:	c46c0004 	lwc1	$f12,4(v1)
    2894:	460c8481 	sub.s	$f18,$f16,$f12
    2898:	46120102 	mul.s	$f4,$f0,$f18
    289c:	46046180 	add.s	$f6,$f12,$f4
    28a0:	e4460004 	swc1	$f6,4(v0)
    28a4:	c4880008 	lwc1	$f8,8(a0)
    28a8:	c46e0008 	lwc1	$f14,8(v1)
    28ac:	460e4281 	sub.s	$f10,$f8,$f14
    28b0:	460a0402 	mul.s	$f16,$f0,$f10
    28b4:	46107480 	add.s	$f18,$f14,$f16
    28b8:	e4520008 	swc1	$f18,8(v0)
    28bc:	8fbf0024 	lw	ra,36(sp)
    28c0:	8fb00020 	lw	s0,32(sp)
    28c4:	27bd0048 	addiu	sp,sp,72
    28c8:	03e00008 	jr	ra
    28cc:	00000000 	nop

000028d0 <func_80AB3660>:
    28d0:	27bdffe8 	addiu	sp,sp,-24
    28d4:	afbf0014 	sw	ra,20(sp)
    28d8:	248400e4 	addiu	a0,a0,228
    28dc:	0c000000 	jal	0 <func_80AB0D90>
    28e0:	2405685c 	li	a1,26716
    28e4:	8fbf0014 	lw	ra,20(sp)
    28e8:	27bd0018 	addiu	sp,sp,24
    28ec:	03e00008 	jr	ra
    28f0:	00000000 	nop

000028f4 <func_80AB3684>:
    28f4:	8ca21c44 	lw	v0,7236(a1)
    28f8:	c48c0024 	lwc1	$f12,36(a0)
    28fc:	c48e002c 	lwc1	$f14,44(a0)
    2900:	c4400024 	lwc1	$f0,36(v0)
    2904:	c442002c 	lwc1	$f2,44(v0)
    2908:	3c0145c8 	lui	at,0x45c8
    290c:	460c0401 	sub.s	$f16,$f0,$f12
    2910:	44815000 	mtc1	at,$f10
    2914:	00001025 	move	v0,zero
    2918:	460e1481 	sub.s	$f18,$f2,$f14
    291c:	46108102 	mul.s	$f4,$f16,$f16
    2920:	00000000 	nop
    2924:	46129182 	mul.s	$f6,$f18,$f18
    2928:	46062200 	add.s	$f8,$f4,$f6
    292c:	460a403c 	c.lt.s	$f8,$f10
    2930:	00000000 	nop
    2934:	45000003 	bc1f	2944 <func_80AB3684+0x50>
    2938:	00000000 	nop
    293c:	03e00008 	jr	ra
    2940:	24020001 	li	v0,1
    2944:	03e00008 	jr	ra
    2948:	00000000 	nop

0000294c <func_80AB36DC>:
    294c:	27bdffd8 	addiu	sp,sp,-40
    2950:	3c0e0000 	lui	t6,0x0
    2954:	8dce0000 	lw	t6,0(t6)
    2958:	afbf0024 	sw	ra,36(sp)
    295c:	afb00020 	sw	s0,32(sp)
    2960:	afa5002c 	sw	a1,44(sp)
    2964:	85c51476 	lh	a1,5238(t6)
    2968:	948202fe 	lhu	v0,766(a0)
    296c:	00808025 	move	s0,a0
    2970:	24a50019 	addiu	a1,a1,25
    2974:	30a5ffff 	andi	a1,a1,0xffff
    2978:	24affffc 	addiu	t7,a1,-4
    297c:	31f8ffff 	andi	t8,t7,0xffff
    2980:	0058082a 	slt	at,v0,t8
    2984:	1020000e 	beqz	at,29c0 <func_80AB36DC+0x74>
    2988:	00401825 	move	v1,v0
    298c:	24190004 	li	t9,4
    2990:	03223023 	subu	a2,t9,v0
    2994:	00063400 	sll	a2,a2,0x10
    2998:	00063403 	sra	a2,a2,0x10
    299c:	18c00012 	blez	a2,29e8 <func_80AB36DC+0x9c>
    29a0:	248400b6 	addiu	a0,a0,182
    29a4:	860502fc 	lh	a1,764(s0)
    29a8:	24080064 	li	t0,100
    29ac:	afa80010 	sw	t0,16(sp)
    29b0:	0c000000 	jal	0 <func_80AB0D90>
    29b4:	24071838 	li	a3,6200
    29b8:	1000000c 	b	29ec <func_80AB36DC+0xa0>
    29bc:	8fbf0024 	lw	ra,36(sp)
    29c0:	00a33023 	subu	a2,a1,v1
    29c4:	00063400 	sll	a2,a2,0x10
    29c8:	00063403 	sra	a2,a2,0x10
    29cc:	18c00006 	blez	a2,29e8 <func_80AB36DC+0x9c>
    29d0:	260400b6 	addiu	a0,s0,182
    29d4:	86050016 	lh	a1,22(s0)
    29d8:	24090064 	li	t1,100
    29dc:	afa90010 	sw	t1,16(sp)
    29e0:	0c000000 	jal	0 <func_80AB0D90>
    29e4:	24071838 	li	a3,6200
    29e8:	8fbf0024 	lw	ra,36(sp)
    29ec:	8fb00020 	lw	s0,32(sp)
    29f0:	27bd0028 	addiu	sp,sp,40
    29f4:	03e00008 	jr	ra
    29f8:	00000000 	nop

000029fc <func_80AB378C>:
    29fc:	27bdffe0 	addiu	sp,sp,-32
    2a00:	afbf001c 	sw	ra,28(sp)
    2a04:	0c000000 	jal	0 <func_80AB0D90>
    2a08:	afa40020 	sw	a0,32(sp)
    2a0c:	1040000c 	beqz	v0,2a40 <func_80AB378C+0x44>
    2a10:	8fa40020 	lw	a0,32(sp)
    2a14:	3c050600 	lui	a1,0x600
    2a18:	24a54e60 	addiu	a1,a1,20064
    2a1c:	24060002 	li	a2,2
    2a20:	3c07c100 	lui	a3,0xc100
    2a24:	0c000000 	jal	0 <func_80AB0D90>
    2a28:	afa00010 	sw	zero,16(sp)
    2a2c:	8faf0020 	lw	t7,32(sp)
    2a30:	240e0019 	li	t6,25
    2a34:	adee0278 	sw	t6,632(t7)
    2a38:	0c000000 	jal	0 <func_80AB0D90>
    2a3c:	8fa40020 	lw	a0,32(sp)
    2a40:	8fbf001c 	lw	ra,28(sp)
    2a44:	27bd0020 	addiu	sp,sp,32
    2a48:	03e00008 	jr	ra
    2a4c:	00000000 	nop

00002a50 <func_80AB37E0>:
    2a50:	27bdffe0 	addiu	sp,sp,-32
    2a54:	10a00010 	beqz	a1,2a98 <func_80AB37E0+0x48>
    2a58:	afbf001c 	sw	ra,28(sp)
    2a5c:	3c050600 	lui	a1,0x600
    2a60:	24a54bb4 	addiu	a1,a1,19380
    2a64:	00003025 	move	a2,zero
    2a68:	3c07c100 	lui	a3,0xc100
    2a6c:	afa00010 	sw	zero,16(sp)
    2a70:	0c000000 	jal	0 <func_80AB0D90>
    2a74:	afa40020 	sw	a0,32(sp)
    2a78:	8fa40020 	lw	a0,32(sp)
    2a7c:	240e0001 	li	t6,1
    2a80:	2419001a 	li	t9,26
    2a84:	8c8f0004 	lw	t7,4(a0)
    2a88:	ac8e02e0 	sw	t6,736(a0)
    2a8c:	ac990278 	sw	t9,632(a0)
    2a90:	35f80009 	ori	t8,t7,0x9
    2a94:	ac980004 	sw	t8,4(a0)
    2a98:	8fbf001c 	lw	ra,28(sp)
    2a9c:	27bd0020 	addiu	sp,sp,32
    2aa0:	03e00008 	jr	ra
    2aa4:	00000000 	nop

00002aa8 <func_80AB3838>:
    2aa8:	27bdffe8 	addiu	sp,sp,-24
    2aac:	afbf0014 	sw	ra,20(sp)
    2ab0:	afa5001c 	sw	a1,28(sp)
    2ab4:	0c000000 	jal	0 <func_80AB0D90>
    2ab8:	afa40018 	sw	a0,24(sp)
    2abc:	10400004 	beqz	v0,2ad0 <func_80AB3838+0x28>
    2ac0:	8fa40018 	lw	a0,24(sp)
    2ac4:	240e001b 	li	t6,27
    2ac8:	10000010 	b	2b0c <func_80AB3838+0x64>
    2acc:	ac8e0278 	sw	t6,632(a0)
    2ad0:	8c8f0004 	lw	t7,4(a0)
    2ad4:	3c190000 	lui	t9,0x0
    2ad8:	2409601d 	li	t1,24605
    2adc:	35f80009 	ori	t8,t7,0x9
    2ae0:	ac980004 	sw	t8,4(a0)
    2ae4:	97390f24 	lhu	t9,3876(t9)
    2ae8:	240a6024 	li	t2,24612
    2aec:	33281000 	andi	t0,t9,0x1000
    2af0:	55000004 	bnezl	t0,2b04 <func_80AB3838+0x5c>
    2af4:	a48a010e 	sh	t2,270(a0)
    2af8:	10000002 	b	2b04 <func_80AB3838+0x5c>
    2afc:	a489010e 	sh	t1,270(a0)
    2b00:	a48a010e 	sh	t2,270(a0)
    2b04:	0c000000 	jal	0 <func_80AB0D90>
    2b08:	8fa5001c 	lw	a1,28(sp)
    2b0c:	8fbf0014 	lw	ra,20(sp)
    2b10:	27bd0018 	addiu	sp,sp,24
    2b14:	03e00008 	jr	ra
    2b18:	00000000 	nop

00002b1c <func_80AB38AC>:
    2b1c:	27bdffe0 	addiu	sp,sp,-32
    2b20:	afa50024 	sw	a1,36(sp)
    2b24:	afbf001c 	sw	ra,28(sp)
    2b28:	3c050600 	lui	a1,0x600
    2b2c:	24a54e60 	addiu	a1,a1,20064
    2b30:	afa00010 	sw	zero,16(sp)
    2b34:	afa40020 	sw	a0,32(sp)
    2b38:	24060002 	li	a2,2
    2b3c:	0c000000 	jal	0 <func_80AB0D90>
    2b40:	3c07c100 	lui	a3,0xc100
    2b44:	3c020000 	lui	v0,0x0
    2b48:	24420000 	addiu	v0,v0,0
    2b4c:	944e0ee6 	lhu	t6,3814(v0)
    2b50:	8fa40020 	lw	a0,32(sp)
    2b54:	2401fff6 	li	at,-10
    2b58:	35cf0010 	ori	t7,t6,0x10
    2b5c:	a44f0ee6 	sh	t7,3814(v0)
    2b60:	8c990004 	lw	t9,4(a0)
    2b64:	2418001c 	li	t8,28
    2b68:	ac980278 	sw	t8,632(a0)
    2b6c:	03214024 	and	t0,t9,at
    2b70:	ac880004 	sw	t0,4(a0)
    2b74:	8fbf001c 	lw	ra,28(sp)
    2b78:	27bd0020 	addiu	sp,sp,32
    2b7c:	03e00008 	jr	ra
    2b80:	00000000 	nop

00002b84 <func_80AB3914>:
    2b84:	27bdffd0 	addiu	sp,sp,-48
    2b88:	afbf0014 	sw	ra,20(sp)
    2b8c:	afa50034 	sw	a1,52(sp)
    2b90:	948e010e 	lhu	t6,270(a0)
    2b94:	00803025 	move	a2,a0
    2b98:	24a420d8 	addiu	a0,a1,8408
    2b9c:	afa40018 	sw	a0,24(sp)
    2ba0:	afa60030 	sw	a2,48(sp)
    2ba4:	0c000000 	jal	0 <func_80AB0D90>
    2ba8:	a7ae0022 	sh	t6,34(sp)
    2bac:	24010002 	li	at,2
    2bb0:	8fa40018 	lw	a0,24(sp)
    2bb4:	14410018 	bne	v0,at,2c18 <func_80AB3914+0x94>
    2bb8:	8fa60030 	lw	a2,48(sp)
    2bbc:	97a20022 	lhu	v0,34(sp)
    2bc0:	24016025 	li	at,24613
    2bc4:	00c02025 	move	a0,a2
    2bc8:	14410006 	bne	v0,at,2be4 <func_80AB3914+0x60>
    2bcc:	2419001a 	li	t9,26
    2bd0:	8fa50034 	lw	a1,52(sp)
    2bd4:	0c000000 	jal	0 <func_80AB0D90>
    2bd8:	afa60030 	sw	a2,48(sp)
    2bdc:	10000009 	b	2c04 <func_80AB3914+0x80>
    2be0:	8fa60030 	lw	a2,48(sp)
    2be4:	24016027 	li	at,24615
    2be8:	14410005 	bne	v0,at,2c00 <func_80AB3914+0x7c>
    2bec:	3c020000 	lui	v0,0x0
    2bf0:	24420000 	addiu	v0,v0,0
    2bf4:	944f0f24 	lhu	t7,3876(v0)
    2bf8:	35f81000 	ori	t8,t7,0x1000
    2bfc:	a4580f24 	sh	t8,3876(v0)
    2c00:	acd90278 	sw	t9,632(a2)
    2c04:	8cc80004 	lw	t0,4(a2)
    2c08:	2401fff6 	li	at,-10
    2c0c:	01014824 	and	t1,t0,at
    2c10:	10000032 	b	2cdc <func_80AB3914+0x158>
    2c14:	acc90004 	sw	t1,4(a2)
    2c18:	0c000000 	jal	0 <func_80AB0D90>
    2c1c:	afa60030 	sw	a2,48(sp)
    2c20:	24010004 	li	at,4
    2c24:	1441002d 	bne	v0,at,2cdc <func_80AB3914+0x158>
    2c28:	8fa60030 	lw	a2,48(sp)
    2c2c:	8fa40034 	lw	a0,52(sp)
    2c30:	0c000000 	jal	0 <func_80AB0D90>
    2c34:	afa60030 	sw	a2,48(sp)
    2c38:	10400028 	beqz	v0,2cdc <func_80AB3914+0x158>
    2c3c:	8fa60030 	lw	a2,48(sp)
    2c40:	8faa0034 	lw	t2,52(sp)
    2c44:	97a20022 	lhu	v0,34(sp)
    2c48:	3c030001 	lui	v1,0x1
    2c4c:	2401601d 	li	at,24605
    2c50:	006a1821 	addu	v1,v1,t2
    2c54:	1441000e 	bne	v0,at,2c90 <func_80AB3914+0x10c>
    2c58:	906304bd 	lbu	v1,1213(v1)
    2c5c:	10600006 	beqz	v1,2c78 <func_80AB3914+0xf4>
    2c60:	240b601e 	li	t3,24606
    2c64:	24010001 	li	at,1
    2c68:	10610005 	beq	v1,at,2c80 <func_80AB3914+0xfc>
    2c6c:	240c601f 	li	t4,24607
    2c70:	10000005 	b	2c88 <func_80AB3914+0x104>
    2c74:	240d6020 	li	t5,24608
    2c78:	10000015 	b	2cd0 <func_80AB3914+0x14c>
    2c7c:	a4cb010e 	sh	t3,270(a2)
    2c80:	10000013 	b	2cd0 <func_80AB3914+0x14c>
    2c84:	a4cc010e 	sh	t4,270(a2)
    2c88:	10000011 	b	2cd0 <func_80AB3914+0x14c>
    2c8c:	a4cd010e 	sh	t5,270(a2)
    2c90:	24016020 	li	at,24608
    2c94:	14410008 	bne	v0,at,2cb8 <func_80AB3914+0x134>
    2c98:	00000000 	nop
    2c9c:	14600004 	bnez	v1,2cb0 <func_80AB3914+0x12c>
    2ca0:	240f6022 	li	t7,24610
    2ca4:	240e6021 	li	t6,24609
    2ca8:	10000009 	b	2cd0 <func_80AB3914+0x14c>
    2cac:	a4ce010e 	sh	t6,270(a2)
    2cb0:	10000007 	b	2cd0 <func_80AB3914+0x14c>
    2cb4:	a4cf010e 	sh	t7,270(a2)
    2cb8:	14600004 	bnez	v1,2ccc <func_80AB3914+0x148>
    2cbc:	24196027 	li	t9,24615
    2cc0:	24186025 	li	t8,24613
    2cc4:	10000002 	b	2cd0 <func_80AB3914+0x14c>
    2cc8:	a4d8010e 	sh	t8,270(a2)
    2ccc:	a4d9010e 	sh	t9,270(a2)
    2cd0:	8fa40034 	lw	a0,52(sp)
    2cd4:	0c000000 	jal	0 <func_80AB0D90>
    2cd8:	94c5010e 	lhu	a1,270(a2)
    2cdc:	8fbf0014 	lw	ra,20(sp)
    2ce0:	27bd0030 	addiu	sp,sp,48
    2ce4:	03e00008 	jr	ra
    2ce8:	00000000 	nop

00002cec <func_80AB3A7C>:
    2cec:	3c0e0000 	lui	t6,0x0
    2cf0:	8dce0000 	lw	t6,0(t6)
    2cf4:	27bdffe0 	addiu	sp,sp,-32
    2cf8:	afbf001c 	sw	ra,28(sp)
    2cfc:	afa50024 	sw	a1,36(sp)
    2d00:	85cf1476 	lh	t7,5238(t6)
    2d04:	948202fe 	lhu	v0,766(a0)
    2d08:	3c050600 	lui	a1,0x600
    2d0c:	25f80019 	addiu	t8,t7,25
    2d10:	3319ffff 	andi	t9,t8,0xffff
    2d14:	0059082a 	slt	at,v0,t9
    2d18:	1020000a 	beqz	at,2d44 <func_80AB3A7C+0x58>
    2d1c:	24a54bb4 	addiu	a1,a1,19380
    2d20:	10c00010 	beqz	a2,2d64 <func_80AB3A7C+0x78>
    2d24:	3c050601 	lui	a1,0x601
    2d28:	24a59238 	addiu	a1,a1,-28104
    2d2c:	00003025 	move	a2,zero
    2d30:	24070000 	li	a3,0
    2d34:	0c000000 	jal	0 <func_80AB0D90>
    2d38:	afa00010 	sw	zero,16(sp)
    2d3c:	1000000a 	b	2d68 <func_80AB3A7C+0x7c>
    2d40:	8fbf001c 	lw	ra,28(sp)
    2d44:	00003025 	move	a2,zero
    2d48:	3c07c100 	lui	a3,0xc100
    2d4c:	afa00010 	sw	zero,16(sp)
    2d50:	0c000000 	jal	0 <func_80AB0D90>
    2d54:	afa40020 	sw	a0,32(sp)
    2d58:	8fa40020 	lw	a0,32(sp)
    2d5c:	2408001d 	li	t0,29
    2d60:	ac880278 	sw	t0,632(a0)
    2d64:	8fbf001c 	lw	ra,28(sp)
    2d68:	27bd0020 	addiu	sp,sp,32
    2d6c:	03e00008 	jr	ra
    2d70:	00000000 	nop

00002d74 <func_80AB3B04>:
    2d74:	27bdffe8 	addiu	sp,sp,-24
    2d78:	afbf0014 	sw	ra,20(sp)
    2d7c:	afa5001c 	sw	a1,28(sp)
    2d80:	0c000000 	jal	0 <func_80AB0D90>
    2d84:	afa40018 	sw	a0,24(sp)
    2d88:	10400004 	beqz	v0,2d9c <func_80AB3B04+0x28>
    2d8c:	8fa60018 	lw	a2,24(sp)
    2d90:	240e001e 	li	t6,30
    2d94:	10000011 	b	2ddc <func_80AB3B04+0x68>
    2d98:	acce0278 	sw	t6,632(a2)
    2d9c:	8ccf0004 	lw	t7,4(a2)
    2da0:	24050023 	li	a1,35
    2da4:	35f80009 	ori	t8,t7,0x9
    2da8:	acd80004 	sw	t8,4(a2)
    2dac:	afa60018 	sw	a2,24(sp)
    2db0:	0c000000 	jal	0 <func_80AB0D90>
    2db4:	8fa4001c 	lw	a0,28(sp)
    2db8:	8fa60018 	lw	a2,24(sp)
    2dbc:	3059ffff 	andi	t9,v0,0xffff
    2dc0:	17200003 	bnez	t9,2dd0 <func_80AB3B04+0x5c>
    2dc4:	a4c2010e 	sh	v0,270(a2)
    2dc8:	24086026 	li	t0,24614
    2dcc:	a4c8010e 	sh	t0,270(a2)
    2dd0:	00c02025 	move	a0,a2
    2dd4:	0c000000 	jal	0 <func_80AB0D90>
    2dd8:	8fa5001c 	lw	a1,28(sp)
    2ddc:	8fbf0014 	lw	ra,20(sp)
    2de0:	27bd0018 	addiu	sp,sp,24
    2de4:	03e00008 	jr	ra
    2de8:	00000000 	nop

00002dec <func_80AB3B7C>:
    2dec:	27bdffe8 	addiu	sp,sp,-24
    2df0:	afbf0014 	sw	ra,20(sp)
    2df4:	00803025 	move	a2,a0
    2df8:	afa60018 	sw	a2,24(sp)
    2dfc:	0c000000 	jal	0 <func_80AB0D90>
    2e00:	24a420d8 	addiu	a0,a1,8408
    2e04:	24010002 	li	at,2
    2e08:	14410007 	bne	v0,at,2e28 <func_80AB3B7C+0x3c>
    2e0c:	8fa60018 	lw	a2,24(sp)
    2e10:	8ccf0004 	lw	t7,4(a2)
    2e14:	2401fff6 	li	at,-10
    2e18:	240e001d 	li	t6,29
    2e1c:	01e1c024 	and	t8,t7,at
    2e20:	acce0278 	sw	t6,632(a2)
    2e24:	acd80004 	sw	t8,4(a2)
    2e28:	8fbf0014 	lw	ra,20(sp)
    2e2c:	27bd0018 	addiu	sp,sp,24
    2e30:	03e00008 	jr	ra
    2e34:	00000000 	nop

00002e38 <func_80AB3BC8>:
    2e38:	27bdffe0 	addiu	sp,sp,-32
    2e3c:	afbf001c 	sw	ra,28(sp)
    2e40:	afb00018 	sw	s0,24(sp)
    2e44:	00808025 	move	s0,a0
    2e48:	0c000000 	jal	0 <func_80AB0D90>
    2e4c:	afa50024 	sw	a1,36(sp)
    2e50:	02002025 	move	a0,s0
    2e54:	0c000000 	jal	0 <func_80AB0D90>
    2e58:	8fa50024 	lw	a1,36(sp)
    2e5c:	0c000000 	jal	0 <func_80AB0D90>
    2e60:	02002025 	move	a0,s0
    2e64:	0c000000 	jal	0 <func_80AB0D90>
    2e68:	02002025 	move	a0,s0
    2e6c:	02002025 	move	a0,s0
    2e70:	0c000000 	jal	0 <func_80AB0D90>
    2e74:	8fa50024 	lw	a1,36(sp)
    2e78:	8fbf001c 	lw	ra,28(sp)
    2e7c:	8fb00018 	lw	s0,24(sp)
    2e80:	27bd0020 	addiu	sp,sp,32
    2e84:	03e00008 	jr	ra
    2e88:	00000000 	nop

00002e8c <func_80AB3C1C>:
    2e8c:	27bdffd8 	addiu	sp,sp,-40
    2e90:	afbf001c 	sw	ra,28(sp)
    2e94:	afb00018 	sw	s0,24(sp)
    2e98:	00808025 	move	s0,a0
    2e9c:	0c000000 	jal	0 <func_80AB0D90>
    2ea0:	afa5002c 	sw	a1,44(sp)
    2ea4:	02002025 	move	a0,s0
    2ea8:	0c000000 	jal	0 <func_80AB0D90>
    2eac:	8fa5002c 	lw	a1,44(sp)
    2eb0:	0c000000 	jal	0 <func_80AB0D90>
    2eb4:	02002025 	move	a0,s0
    2eb8:	afa20024 	sw	v0,36(sp)
    2ebc:	0c000000 	jal	0 <func_80AB0D90>
    2ec0:	02002025 	move	a0,s0
    2ec4:	02002025 	move	a0,s0
    2ec8:	0c000000 	jal	0 <func_80AB0D90>
    2ecc:	8fa50024 	lw	a1,36(sp)
    2ed0:	8fbf001c 	lw	ra,28(sp)
    2ed4:	8fb00018 	lw	s0,24(sp)
    2ed8:	27bd0028 	addiu	sp,sp,40
    2edc:	03e00008 	jr	ra
    2ee0:	00000000 	nop

00002ee4 <func_80AB3C74>:
    2ee4:	27bdffe0 	addiu	sp,sp,-32
    2ee8:	afbf001c 	sw	ra,28(sp)
    2eec:	afb00018 	sw	s0,24(sp)
    2ef0:	00808025 	move	s0,a0
    2ef4:	0c000000 	jal	0 <func_80AB0D90>
    2ef8:	afa50024 	sw	a1,36(sp)
    2efc:	02002025 	move	a0,s0
    2f00:	0c000000 	jal	0 <func_80AB0D90>
    2f04:	8fa50024 	lw	a1,36(sp)
    2f08:	02002025 	move	a0,s0
    2f0c:	0c000000 	jal	0 <func_80AB0D90>
    2f10:	8fa50024 	lw	a1,36(sp)
    2f14:	0c000000 	jal	0 <func_80AB0D90>
    2f18:	02002025 	move	a0,s0
    2f1c:	0c000000 	jal	0 <func_80AB0D90>
    2f20:	02002025 	move	a0,s0
    2f24:	02002025 	move	a0,s0
    2f28:	0c000000 	jal	0 <func_80AB0D90>
    2f2c:	8fa50024 	lw	a1,36(sp)
    2f30:	8fbf001c 	lw	ra,28(sp)
    2f34:	8fb00018 	lw	s0,24(sp)
    2f38:	27bd0020 	addiu	sp,sp,32
    2f3c:	03e00008 	jr	ra
    2f40:	00000000 	nop

00002f44 <func_80AB3CD4>:
    2f44:	27bdffe0 	addiu	sp,sp,-32
    2f48:	afbf001c 	sw	ra,28(sp)
    2f4c:	afb00018 	sw	s0,24(sp)
    2f50:	00808025 	move	s0,a0
    2f54:	0c000000 	jal	0 <func_80AB0D90>
    2f58:	afa50024 	sw	a1,36(sp)
    2f5c:	02002025 	move	a0,s0
    2f60:	0c000000 	jal	0 <func_80AB0D90>
    2f64:	8fa50024 	lw	a1,36(sp)
    2f68:	02002025 	move	a0,s0
    2f6c:	0c000000 	jal	0 <func_80AB0D90>
    2f70:	8fa50024 	lw	a1,36(sp)
    2f74:	0c000000 	jal	0 <func_80AB0D90>
    2f78:	02002025 	move	a0,s0
    2f7c:	0c000000 	jal	0 <func_80AB0D90>
    2f80:	02002025 	move	a0,s0
    2f84:	02002025 	move	a0,s0
    2f88:	0c000000 	jal	0 <func_80AB0D90>
    2f8c:	8fa50024 	lw	a1,36(sp)
    2f90:	8fbf001c 	lw	ra,28(sp)
    2f94:	8fb00018 	lw	s0,24(sp)
    2f98:	27bd0020 	addiu	sp,sp,32
    2f9c:	03e00008 	jr	ra
    2fa0:	00000000 	nop

00002fa4 <func_80AB3D34>:
    2fa4:	27bdffd8 	addiu	sp,sp,-40
    2fa8:	afbf001c 	sw	ra,28(sp)
    2fac:	afb00018 	sw	s0,24(sp)
    2fb0:	00808025 	move	s0,a0
    2fb4:	0c000000 	jal	0 <func_80AB0D90>
    2fb8:	afa5002c 	sw	a1,44(sp)
    2fbc:	02002025 	move	a0,s0
    2fc0:	0c000000 	jal	0 <func_80AB0D90>
    2fc4:	8fa5002c 	lw	a1,44(sp)
    2fc8:	02002025 	move	a0,s0
    2fcc:	0c000000 	jal	0 <func_80AB0D90>
    2fd0:	8fa5002c 	lw	a1,44(sp)
    2fd4:	02002025 	move	a0,s0
    2fd8:	0c000000 	jal	0 <func_80AB0D90>
    2fdc:	8fa5002c 	lw	a1,44(sp)
    2fe0:	0c000000 	jal	0 <func_80AB0D90>
    2fe4:	02002025 	move	a0,s0
    2fe8:	0c000000 	jal	0 <func_80AB0D90>
    2fec:	02002025 	move	a0,s0
    2ff0:	afa20024 	sw	v0,36(sp)
    2ff4:	0c000000 	jal	0 <func_80AB0D90>
    2ff8:	02002025 	move	a0,s0
    2ffc:	02002025 	move	a0,s0
    3000:	8fa5002c 	lw	a1,44(sp)
    3004:	0c000000 	jal	0 <func_80AB0D90>
    3008:	8fa60024 	lw	a2,36(sp)
    300c:	8fbf001c 	lw	ra,28(sp)
    3010:	8fb00018 	lw	s0,24(sp)
    3014:	27bd0028 	addiu	sp,sp,40
    3018:	03e00008 	jr	ra
    301c:	00000000 	nop

00003020 <func_80AB3DB0>:
    3020:	27bdffe0 	addiu	sp,sp,-32
    3024:	afbf001c 	sw	ra,28(sp)
    3028:	afb00018 	sw	s0,24(sp)
    302c:	00808025 	move	s0,a0
    3030:	0c000000 	jal	0 <func_80AB0D90>
    3034:	afa50024 	sw	a1,36(sp)
    3038:	02002025 	move	a0,s0
    303c:	0c000000 	jal	0 <func_80AB0D90>
    3040:	8fa50024 	lw	a1,36(sp)
    3044:	02002025 	move	a0,s0
    3048:	0c000000 	jal	0 <func_80AB0D90>
    304c:	8fa50024 	lw	a1,36(sp)
    3050:	0c000000 	jal	0 <func_80AB0D90>
    3054:	02002025 	move	a0,s0
    3058:	0c000000 	jal	0 <func_80AB0D90>
    305c:	02002025 	move	a0,s0
    3060:	02002025 	move	a0,s0
    3064:	0c000000 	jal	0 <func_80AB0D90>
    3068:	8fa50024 	lw	a1,36(sp)
    306c:	8fbf001c 	lw	ra,28(sp)
    3070:	8fb00018 	lw	s0,24(sp)
    3074:	27bd0020 	addiu	sp,sp,32
    3078:	03e00008 	jr	ra
    307c:	00000000 	nop

00003080 <func_80AB3E10>:
    3080:	27bdffe0 	addiu	sp,sp,-32
    3084:	afbf001c 	sw	ra,28(sp)
    3088:	afb00018 	sw	s0,24(sp)
    308c:	00808025 	move	s0,a0
    3090:	0c000000 	jal	0 <func_80AB0D90>
    3094:	afa50024 	sw	a1,36(sp)
    3098:	02002025 	move	a0,s0
    309c:	0c000000 	jal	0 <func_80AB0D90>
    30a0:	8fa50024 	lw	a1,36(sp)
    30a4:	02002025 	move	a0,s0
    30a8:	0c000000 	jal	0 <func_80AB0D90>
    30ac:	8fa50024 	lw	a1,36(sp)
    30b0:	0c000000 	jal	0 <func_80AB0D90>
    30b4:	02002025 	move	a0,s0
    30b8:	0c000000 	jal	0 <func_80AB0D90>
    30bc:	02002025 	move	a0,s0
    30c0:	02002025 	move	a0,s0
    30c4:	0c000000 	jal	0 <func_80AB0D90>
    30c8:	8fa50024 	lw	a1,36(sp)
    30cc:	8fbf001c 	lw	ra,28(sp)
    30d0:	8fb00018 	lw	s0,24(sp)
    30d4:	27bd0020 	addiu	sp,sp,32
    30d8:	03e00008 	jr	ra
    30dc:	00000000 	nop

000030e0 <EnNb_Update>:
    30e0:	27bdffe8 	addiu	sp,sp,-24
    30e4:	afbf0014 	sw	ra,20(sp)
    30e8:	8c820278 	lw	v0,632(a0)
    30ec:	04400008 	bltz	v0,3110 <EnNb_Update+0x30>
    30f0:	2841001f 	slti	at,v0,31
    30f4:	10200006 	beqz	at,3110 <EnNb_Update+0x30>
    30f8:	00027080 	sll	t6,v0,0x2
    30fc:	3c030000 	lui	v1,0x0
    3100:	006e1821 	addu	v1,v1,t6
    3104:	8c630000 	lw	v1,0(v1)
    3108:	14600006 	bnez	v1,3124 <EnNb_Update+0x44>
    310c:	00000000 	nop
    3110:	3c040000 	lui	a0,0x0
    3114:	0c000000 	jal	0 <func_80AB0D90>
    3118:	24840000 	addiu	a0,a0,0
    311c:	10000004 	b	3130 <EnNb_Update+0x50>
    3120:	8fbf0014 	lw	ra,20(sp)
    3124:	0060f809 	jalr	v1
    3128:	00000000 	nop
    312c:	8fbf0014 	lw	ra,20(sp)
    3130:	27bd0018 	addiu	sp,sp,24
    3134:	03e00008 	jr	ra
    3138:	00000000 	nop

0000313c <EnNb_Init>:
    313c:	27bdffd0 	addiu	sp,sp,-48
    3140:	afb10028 	sw	s1,40(sp)
    3144:	afb00024 	sw	s0,36(sp)
    3148:	00808025 	move	s0,a0
    314c:	00a08825 	move	s1,a1
    3150:	afbf002c 	sw	ra,44(sp)
    3154:	3c060000 	lui	a2,0x0
    3158:	24c60000 	addiu	a2,a2,0
    315c:	24050000 	li	a1,0
    3160:	248400b4 	addiu	a0,a0,180
    3164:	0c000000 	jal	0 <func_80AB0D90>
    3168:	3c0741f0 	lui	a3,0x41f0
    316c:	02002025 	move	a0,s0
    3170:	0c000000 	jal	0 <func_80AB0D90>
    3174:	02202825 	move	a1,s1
    3178:	3c060602 	lui	a2,0x602
    317c:	260e0190 	addiu	t6,s0,400
    3180:	260f0202 	addiu	t7,s0,514
    3184:	24180013 	li	t8,19
    3188:	afb80018 	sw	t8,24(sp)
    318c:	afaf0014 	sw	t7,20(sp)
    3190:	afae0010 	sw	t6,16(sp)
    3194:	24c681c8 	addiu	a2,a2,-32312
    3198:	02202025 	move	a0,s1
    319c:	2605014c 	addiu	a1,s0,332
    31a0:	0c000000 	jal	0 <func_80AB0D90>
    31a4:	00003825 	move	a3,zero
    31a8:	0c000000 	jal	0 <func_80AB0D90>
    31ac:	02002025 	move	a0,s0
    31b0:	2459fffe 	addiu	t9,v0,-2
    31b4:	2f210005 	sltiu	at,t9,5
    31b8:	1020001f 	beqz	at,3238 <L80AB3FB4+0x14>
    31bc:	0019c880 	sll	t9,t9,0x2
    31c0:	3c010000 	lui	at,0x0
    31c4:	00390821 	addu	at,at,t9
    31c8:	8c390000 	lw	t9,0(at)
    31cc:	03200008 	jr	t9
    31d0:	00000000 	nop

000031d4 <L80AB3F64>:
    31d4:	02002025 	move	a0,s0
    31d8:	0c000000 	jal	0 <func_80AB0D90>
    31dc:	02202825 	move	a1,s1
    31e0:	10000019 	b	3248 <L80AB3FB4+0x24>
    31e4:	8fbf002c 	lw	ra,44(sp)

000031e8 <L80AB3F78>:
    31e8:	02002025 	move	a0,s0
    31ec:	0c000000 	jal	0 <func_80AB0D90>
    31f0:	02202825 	move	a1,s1
    31f4:	10000014 	b	3248 <L80AB3FB4+0x24>
    31f8:	8fbf002c 	lw	ra,44(sp)

000031fc <L80AB3F8C>:
    31fc:	02002025 	move	a0,s0
    3200:	0c000000 	jal	0 <func_80AB0D90>
    3204:	02202825 	move	a1,s1
    3208:	1000000f 	b	3248 <L80AB3FB4+0x24>
    320c:	8fbf002c 	lw	ra,44(sp)

00003210 <L80AB3FA0>:
    3210:	02002025 	move	a0,s0
    3214:	0c000000 	jal	0 <func_80AB0D90>
    3218:	02202825 	move	a1,s1
    321c:	1000000a 	b	3248 <L80AB3FB4+0x24>
    3220:	8fbf002c 	lw	ra,44(sp)

00003224 <L80AB3FB4>:
    3224:	02002025 	move	a0,s0
    3228:	0c000000 	jal	0 <func_80AB0D90>
    322c:	02202825 	move	a1,s1
    3230:	10000005 	b	3248 <L80AB3FB4+0x24>
    3234:	8fbf002c 	lw	ra,44(sp)
    3238:	02002025 	move	a0,s0
    323c:	0c000000 	jal	0 <func_80AB0D90>
    3240:	02202825 	move	a1,s1
    3244:	8fbf002c 	lw	ra,44(sp)
    3248:	8fb00024 	lw	s0,36(sp)
    324c:	8fb10028 	lw	s1,40(sp)
    3250:	03e00008 	jr	ra
    3254:	27bd0030 	addiu	sp,sp,48

00003258 <func_80AB3FE8>:
    3258:	afa40000 	sw	a0,0(sp)
    325c:	8fa40014 	lw	a0,20(sp)
    3260:	afa60008 	sw	a2,8(sp)
    3264:	afa7000c 	sw	a3,12(sp)
    3268:	8c8e02e0 	lw	t6,736(a0)
    326c:	24010008 	li	at,8
    3270:	11c0001a 	beqz	t6,32dc <func_80AB3FE8+0x84>
    3274:	00000000 	nop
    3278:	14a1000c 	bne	a1,at,32ac <func_80AB3FE8+0x54>
    327c:	8fa30010 	lw	v1,16(sp)
    3280:	24820300 	addiu	v0,a0,768
    3284:	84580010 	lh	t8,16(v0)
    3288:	846f0000 	lh	t7,0(v1)
    328c:	84680002 	lh	t0,2(v1)
    3290:	01f8c821 	addu	t9,t7,t8
    3294:	a4790000 	sh	t9,0(v1)
    3298:	8449000e 	lh	t1,14(v0)
    329c:	00001025 	move	v0,zero
    32a0:	01095023 	subu	t2,t0,t1
    32a4:	03e00008 	jr	ra
    32a8:	a46a0002 	sh	t2,2(v1)
    32ac:	2401000f 	li	at,15
    32b0:	14a1000a 	bne	a1,at,32dc <func_80AB3FE8+0x84>
    32b4:	8fa30010 	lw	v1,16(sp)
    32b8:	24820300 	addiu	v0,a0,768
    32bc:	844c000a 	lh	t4,10(v0)
    32c0:	846b0000 	lh	t3,0(v1)
    32c4:	846e0004 	lh	t6,4(v1)
    32c8:	016c6821 	addu	t5,t3,t4
    32cc:	a46d0000 	sh	t5,0(v1)
    32d0:	844f0008 	lh	t7,8(v0)
    32d4:	01cfc021 	addu	t8,t6,t7
    32d8:	a4780004 	sh	t8,4(v1)
    32dc:	03e00008 	jr	ra
    32e0:	00001025 	move	v0,zero

000032e4 <func_80AB4074>:
    32e4:	27bdffc8 	addiu	sp,sp,-56
    32e8:	2401000f 	li	at,15
    32ec:	afbf0014 	sw	ra,20(sp)
    32f0:	afa40038 	sw	a0,56(sp)
    32f4:	afa60040 	sw	a2,64(sp)
    32f8:	14a10019 	bne	a1,at,3360 <func_80AB4074+0x7c>
    32fc:	afa70044 	sw	a3,68(sp)
    3300:	3c0e0000 	lui	t6,0x0
    3304:	25ce0000 	addiu	t6,t6,0
    3308:	8dd80000 	lw	t8,0(t6)
    330c:	27a40028 	addiu	a0,sp,40
    3310:	27a5001c 	addiu	a1,sp,28
    3314:	ac980000 	sw	t8,0(a0)
    3318:	8dcf0004 	lw	t7,4(t6)
    331c:	ac8f0004 	sw	t7,4(a0)
    3320:	8dd80008 	lw	t8,8(t6)
    3324:	0c000000 	jal	0 <func_80AB0D90>
    3328:	ac980008 	sw	t8,8(a0)
    332c:	8fa20048 	lw	v0,72(sp)
    3330:	c7a4001c 	lwc1	$f4,28(sp)
    3334:	84590030 	lh	t9,48(v0)
    3338:	e4440038 	swc1	$f4,56(v0)
    333c:	c7a60020 	lwc1	$f6,32(sp)
    3340:	84480032 	lh	t0,50(v0)
    3344:	84490034 	lh	t1,52(v0)
    3348:	e446003c 	swc1	$f6,60(v0)
    334c:	c7a80024 	lwc1	$f8,36(sp)
    3350:	a4590044 	sh	t9,68(v0)
    3354:	a4480046 	sh	t0,70(v0)
    3358:	a4490048 	sh	t1,72(v0)
    335c:	e4480040 	swc1	$f8,64(v0)
    3360:	8fbf0014 	lw	ra,20(sp)
    3364:	27bd0038 	addiu	sp,sp,56
    3368:	03e00008 	jr	ra
    336c:	00000000 	nop

00003370 <func_80AB4100>:
    3370:	afa40000 	sw	a0,0(sp)
    3374:	03e00008 	jr	ra
    3378:	afa50004 	sw	a1,4(sp)

0000337c <func_80AB410C>:
    337c:	27bdff90 	addiu	sp,sp,-112
    3380:	afbf0024 	sw	ra,36(sp)
    3384:	afa40070 	sw	a0,112(sp)
    3388:	afa50074 	sw	a1,116(sp)
    338c:	84820274 	lh	v0,628(a0)
    3390:	3c180000 	lui	t8,0x0
    3394:	3c060000 	lui	a2,0x0
    3398:	00027880 	sll	t7,v0,0x2
    339c:	030fc021 	addu	t8,t8,t7
    33a0:	8f180000 	lw	t8,0(t8)
    33a4:	24c60000 	addiu	a2,a2,0
    33a8:	27a40048 	addiu	a0,sp,72
    33ac:	afb80060 	sw	t8,96(sp)
    33b0:	8ca50000 	lw	a1,0(a1)
    33b4:	240703e0 	li	a3,992
    33b8:	0c000000 	jal	0 <func_80AB0D90>
    33bc:	afa50058 	sw	a1,88(sp)
    33c0:	8fa90074 	lw	t1,116(sp)
    33c4:	0c000000 	jal	0 <func_80AB0D90>
    33c8:	8d240000 	lw	a0,0(t1)
    33cc:	8fa80058 	lw	t0,88(sp)
    33d0:	8fa70060 	lw	a3,96(sp)
    33d4:	3c0bdb06 	lui	t3,0xdb06
    33d8:	8d0202c0 	lw	v0,704(t0)
    33dc:	00076100 	sll	t4,a3,0x4
    33e0:	000c6f02 	srl	t5,t4,0x1c
    33e4:	3c0f0000 	lui	t7,0x0
    33e8:	244a0008 	addiu	t2,v0,8
    33ec:	25ef0000 	addiu	t7,t7,0
    33f0:	000d7080 	sll	t6,t5,0x2
    33f4:	356b0020 	ori	t3,t3,0x20
    33f8:	ad0a02c0 	sw	t2,704(t0)
    33fc:	01cf2021 	addu	a0,t6,t7
    3400:	ac4b0000 	sw	t3,0(v0)
    3404:	8c980000 	lw	t8,0(a0)
    3408:	3c0100ff 	lui	at,0xff
    340c:	3421ffff 	ori	at,at,0xffff
    3410:	00e12824 	and	a1,a3,at
    3414:	3c068000 	lui	a2,0x8000
    3418:	0305c821 	addu	t9,t8,a1
    341c:	03264821 	addu	t1,t9,a2
    3420:	ac490004 	sw	t1,4(v0)
    3424:	8d0202c0 	lw	v0,704(t0)
    3428:	3c0bdb06 	lui	t3,0xdb06
    342c:	356b0024 	ori	t3,t3,0x24
    3430:	244a0008 	addiu	t2,v0,8
    3434:	ad0a02c0 	sw	t2,704(t0)
    3438:	ac4b0000 	sw	t3,0(v0)
    343c:	8c8c0000 	lw	t4,0(a0)
    3440:	241900ff 	li	t9,255
    3444:	3c18fb00 	lui	t8,0xfb00
    3448:	01856821 	addu	t5,t4,a1
    344c:	01a67021 	addu	t6,t5,a2
    3450:	ac4e0004 	sw	t6,4(v0)
    3454:	8d0202c0 	lw	v0,704(t0)
    3458:	3c0b0000 	lui	t3,0x0
    345c:	3c0adb06 	lui	t2,0xdb06
    3460:	244f0008 	addiu	t7,v0,8
    3464:	ad0f02c0 	sw	t7,704(t0)
    3468:	ac590004 	sw	t9,4(v0)
    346c:	ac580000 	sw	t8,0(v0)
    3470:	8d0202c0 	lw	v0,704(t0)
    3474:	354a0030 	ori	t2,t2,0x30
    3478:	256b0010 	addiu	t3,t3,16
    347c:	24490008 	addiu	t1,v0,8
    3480:	ad0902c0 	sw	t1,704(t0)
    3484:	ac4b0004 	sw	t3,4(v0)
    3488:	ac4a0000 	sw	t2,0(v0)
    348c:	8fa30070 	lw	v1,112(sp)
    3490:	3c0d0000 	lui	t5,0x0
    3494:	3c0c0000 	lui	t4,0x0
    3498:	2462014c 	addiu	v0,v1,332
    349c:	8c450004 	lw	a1,4(v0)
    34a0:	8c460020 	lw	a2,32(v0)
    34a4:	90470002 	lbu	a3,2(v0)
    34a8:	258c0000 	addiu	t4,t4,0
    34ac:	25ad0000 	addiu	t5,t5,0
    34b0:	afad0014 	sw	t5,20(sp)
    34b4:	afac0010 	sw	t4,16(sp)
    34b8:	8fa40074 	lw	a0,116(sp)
    34bc:	0c000000 	jal	0 <func_80AB0D90>
    34c0:	afa30018 	sw	v1,24(sp)
    34c4:	8fae0074 	lw	t6,116(sp)
    34c8:	3c060000 	lui	a2,0x0
    34cc:	24c60000 	addiu	a2,a2,0
    34d0:	27a40048 	addiu	a0,sp,72
    34d4:	240703f5 	li	a3,1013
    34d8:	0c000000 	jal	0 <func_80AB0D90>
    34dc:	8dc50000 	lw	a1,0(t6)
    34e0:	8fbf0024 	lw	ra,36(sp)
    34e4:	27bd0070 	addiu	sp,sp,112
    34e8:	03e00008 	jr	ra
    34ec:	00000000 	nop

000034f0 <EnNb_Draw>:
    34f0:	27bdffe8 	addiu	sp,sp,-24
    34f4:	afbf0014 	sw	ra,20(sp)
    34f8:	8c82027c 	lw	v0,636(a0)
    34fc:	04400008 	bltz	v0,3520 <EnNb_Draw+0x30>
    3500:	28410005 	slti	at,v0,5
    3504:	10200006 	beqz	at,3520 <EnNb_Draw+0x30>
    3508:	00027080 	sll	t6,v0,0x2
    350c:	3c030000 	lui	v1,0x0
    3510:	006e1821 	addu	v1,v1,t6
    3514:	8c630000 	lw	v1,0(v1)
    3518:	14600006 	bnez	v1,3534 <EnNb_Draw+0x44>
    351c:	00000000 	nop
    3520:	3c040000 	lui	a0,0x0
    3524:	0c000000 	jal	0 <func_80AB0D90>
    3528:	24840000 	addiu	a0,a0,0
    352c:	10000004 	b	3540 <EnNb_Draw+0x50>
    3530:	8fbf0014 	lw	ra,20(sp)
    3534:	0060f809 	jalr	v1
    3538:	00000000 	nop
    353c:	8fbf0014 	lw	ra,20(sp)
    3540:	27bd0018 	addiu	sp,sp,24
    3544:	03e00008 	jr	ra
    3548:	00000000 	nop
    354c:	00000000 	nop
