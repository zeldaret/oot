
build/src/overlays/actors/ovl_Obj_Oshihiki/z_obj_oshihiki.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <func_80B9B180>:
       0:	27bdffc8 	addiu	sp,sp,-56
       4:	afbf0024 	sw	ra,36(sp)
       8:	afb00020 	sw	s0,32(sp)
       c:	afa5003c 	sw	a1,60(sp)
      10:	00808025 	move	s0,a0
      14:	afa60040 	sw	a2,64(sp)
      18:	afa00030 	sw	zero,48(sp)
      1c:	0c000000 	jal	0 <func_80B9B180>
      20:	00e02825 	move	a1,a3
      24:	8fa40040 	lw	a0,64(sp)
      28:	0c000000 	jal	0 <func_80B9B180>
      2c:	27a50030 	addiu	a1,sp,48
      30:	8fa4003c 	lw	a0,60(sp)
      34:	02003025 	move	a2,s0
      38:	8fa70030 	lw	a3,48(sp)
      3c:	0c000000 	jal	0 <func_80B9B180>
      40:	24850810 	addiu	a1,a0,2064
      44:	24010032 	li	at,50
      48:	1441000a 	bne	v0,at,74 <func_80B9B180+0x74>
      4c:	ae02014c 	sw	v0,332(s0)
      50:	860e001c 	lh	t6,28(s0)
      54:	3c040000 	lui	a0,0x0
      58:	3c050000 	lui	a1,0x0
      5c:	86070000 	lh	a3,0(s0)
      60:	24a50000 	addiu	a1,a1,0
      64:	24840000 	addiu	a0,a0,0
      68:	24060118 	li	a2,280
      6c:	0c000000 	jal	0 <func_80B9B180>
      70:	afae0010 	sw	t6,16(sp)
      74:	8fbf0024 	lw	ra,36(sp)
      78:	8fb00020 	lw	s0,32(sp)
      7c:	27bd0038 	addiu	sp,sp,56
      80:	03e00008 	jr	ra
      84:	00000000 	nop

00000088 <func_80B9B208>:
      88:	44866000 	mtc1	a2,$f12
      8c:	c4a40008 	lwc1	$f4,8(a1)
      90:	44877000 	mtc1	a3,$f14
      94:	c4a80000 	lwc1	$f8,0(a1)
      98:	460c2182 	mul.s	$f6,$f4,$f12
      9c:	00000000 	nop
      a0:	460e4282 	mul.s	$f10,$f8,$f14
      a4:	460a3400 	add.s	$f16,$f6,$f10
      a8:	e4900000 	swc1	$f16,0(a0)
      ac:	c4b20004 	lwc1	$f18,4(a1)
      b0:	e4920004 	swc1	$f18,4(a0)
      b4:	c4a40008 	lwc1	$f4,8(a1)
      b8:	c4a60000 	lwc1	$f6,0(a1)
      bc:	460e2202 	mul.s	$f8,$f4,$f14
      c0:	00000000 	nop
      c4:	460c3282 	mul.s	$f10,$f6,$f12
      c8:	460a4401 	sub.s	$f16,$f8,$f10
      cc:	03e00008 	jr	ra
      d0:	e4900008 	swc1	$f16,8(a0)

000000d4 <func_80B9B254>:
      d4:	27bdffe8 	addiu	sp,sp,-24
      d8:	afbf0014 	sw	ra,20(sp)
      dc:	908e01be 	lbu	t6,446(a0)
      e0:	11c00003 	beqz	t6,f0 <func_80B9B254+0x1c>
      e4:	00000000 	nop
      e8:	10000017 	b	148 <L80B9B2BC+0xc>
      ec:	00001025 	move	v0,zero
      f0:	0c000000 	jal	0 <func_80B9B180>
      f4:	afa40018 	sw	a0,24(sp)
      f8:	8fa40018 	lw	a0,24(sp)
      fc:	00401825 	move	v1,v0
     100:	00001025 	move	v0,zero
     104:	848f001c 	lh	t7,28(a0)
     108:	31f8000f 	andi	t8,t7,0xf
     10c:	2f010008 	sltiu	at,t8,8
     110:	1020000d 	beqz	at,148 <L80B9B2BC+0xc>
     114:	0018c080 	sll	t8,t8,0x2
     118:	3c010000 	lui	at,0x0
     11c:	00380821 	addu	at,at,t8
     120:	8c380000 	lw	t8,0(at)
     124:	03000008 	jr	t8
     128:	00000000 	nop

0000012c <L80B9B2AC>:
     12c:	10000006 	b	148 <L80B9B2BC+0xc>
     130:	24020001 	li	v0,1

00000134 <L80B9B2B4>:
     134:	10000004 	b	148 <L80B9B2BC+0xc>
     138:	0003102a 	slt	v0,zero,v1

0000013c <L80B9B2BC>:
     13c:	28620002 	slti	v0,v1,2
     140:	10000001 	b	148 <L80B9B2BC+0xc>
     144:	38420001 	xori	v0,v0,0x1
     148:	8fbf0014 	lw	ra,20(sp)
     14c:	27bd0018 	addiu	sp,sp,24
     150:	03e00008 	jr	ra
     154:	00000000 	nop

00000158 <func_80B9B2D8>:
     158:	24020001 	li	v0,1
     15c:	24050032 	li	a1,50
     160:	00027080 	sll	t6,v0,0x2
     164:	ac850180 	sw	a1,384(a0)
     168:	008e1821 	addu	v1,a0,t6
     16c:	ac650184 	sw	a1,388(v1)
     170:	ac650188 	sw	a1,392(v1)
     174:	ac65018c 	sw	a1,396(v1)
     178:	03e00008 	jr	ra
     17c:	ac650180 	sw	a1,384(v1)

00000180 <func_80B9B300>:
     180:	27bdffe8 	addiu	sp,sp,-24
     184:	afbf0014 	sw	ra,20(sp)
     188:	848e01bc 	lh	t6,444(a0)
     18c:	24010032 	li	at,50
     190:	000e7880 	sll	t7,t6,0x2
     194:	008fc021 	addu	t8,a0,t7
     198:	8f060180 	lw	a2,384(t8)
     19c:	50c10017 	beql	a2,at,1fc <func_80B9B300+0x7c>
     1a0:	00001025 	move	v0,zero
     1a4:	c4840080 	lwc1	$f4,128(a0)
     1a8:	c4860028 	lwc1	$f6,40(a0)
     1ac:	3c010000 	lui	at,0x0
     1b0:	c4280000 	lwc1	$f8,0(at)
     1b4:	46062001 	sub.s	$f0,$f4,$f6
     1b8:	24a407c0 	addiu	a0,a1,1984
     1bc:	46000005 	abs.s	$f0,$f0
     1c0:	4608003c 	c.lt.s	$f0,$f8
     1c4:	00000000 	nop
     1c8:	4502000c 	bc1fl	1fc <func_80B9B300+0x7c>
     1cc:	00001025 	move	v0,zero
     1d0:	0c000000 	jal	0 <func_80B9B180>
     1d4:	00c02825 	move	a1,a2
     1d8:	50400008 	beqzl	v0,1fc <func_80B9B300+0x7c>
     1dc:	00001025 	move	v0,zero
     1e0:	84590000 	lh	t9,0(v0)
     1e4:	240100ff 	li	at,255
     1e8:	57210004 	bnel	t9,at,1fc <func_80B9B300+0x7c>
     1ec:	00001025 	move	v0,zero
     1f0:	10000003 	b	200 <func_80B9B300+0x80>
     1f4:	8fbf0014 	lw	ra,20(sp)
     1f8:	00001025 	move	v0,zero
     1fc:	8fbf0014 	lw	ra,20(sp)
     200:	27bd0018 	addiu	sp,sp,24
     204:	03e00008 	jr	ra
     208:	00000000 	nop

0000020c <func_80B9B38C>:
     20c:	c4800008 	lwc1	$f0,8(a0)
     210:	c4820024 	lwc1	$f2,36(a0)
     214:	3c0141a0 	lui	at,0x41a0
     218:	4602003c 	c.lt.s	$f0,$f2
     21c:	00000000 	nop
     220:	45020014 	bc1fl	274 <func_80B9B38C+0x68>
     224:	46020281 	sub.s	$f10,$f0,$f2
     228:	46001101 	sub.s	$f4,$f2,$f0
     22c:	3c0141a0 	lui	at,0x41a0
     230:	44816000 	mtc1	at,$f12
     234:	00000000 	nop
     238:	4604603e 	c.le.s	$f12,$f4
     23c:	00000000 	nop
     240:	4502001b 	bc1fl	2b0 <func_80B9B38C+0xa4>
     244:	c4800010 	lwc1	$f0,16(a0)
     248:	460c0180 	add.s	$f6,$f0,$f12
     24c:	e4860008 	swc1	$f6,8(a0)
     250:	c4800008 	lwc1	$f0,8(a0)
     254:	46001201 	sub.s	$f8,$f2,$f0
     258:	4608603e 	c.le.s	$f12,$f8
     25c:	00000000 	nop
     260:	4503fffa 	bc1tl	24c <func_80B9B38C+0x40>
     264:	460c0180 	add.s	$f6,$f0,$f12
     268:	10000011 	b	2b0 <func_80B9B38C+0xa4>
     26c:	c4800010 	lwc1	$f0,16(a0)
     270:	46020281 	sub.s	$f10,$f0,$f2
     274:	44816000 	mtc1	at,$f12
     278:	00000000 	nop
     27c:	460a603e 	c.le.s	$f12,$f10
     280:	00000000 	nop
     284:	4502000a 	bc1fl	2b0 <func_80B9B38C+0xa4>
     288:	c4800010 	lwc1	$f0,16(a0)
     28c:	460c0401 	sub.s	$f16,$f0,$f12
     290:	e4900008 	swc1	$f16,8(a0)
     294:	c4800008 	lwc1	$f0,8(a0)
     298:	46020481 	sub.s	$f18,$f0,$f2
     29c:	4612603e 	c.le.s	$f12,$f18
     2a0:	00000000 	nop
     2a4:	4503fffa 	bc1tl	290 <func_80B9B38C+0x84>
     2a8:	460c0401 	sub.s	$f16,$f0,$f12
     2ac:	c4800010 	lwc1	$f0,16(a0)
     2b0:	c482002c 	lwc1	$f2,44(a0)
     2b4:	4602003c 	c.lt.s	$f0,$f2
     2b8:	00000000 	nop
     2bc:	45020011 	bc1fl	304 <func_80B9B38C+0xf8>
     2c0:	46020281 	sub.s	$f10,$f0,$f2
     2c4:	46001101 	sub.s	$f4,$f2,$f0
     2c8:	4604603e 	c.le.s	$f12,$f4
     2cc:	00000000 	nop
     2d0:	45000018 	bc1f	334 <func_80B9B38C+0x128>
     2d4:	00000000 	nop
     2d8:	460c0180 	add.s	$f6,$f0,$f12
     2dc:	e4860010 	swc1	$f6,16(a0)
     2e0:	c4800010 	lwc1	$f0,16(a0)
     2e4:	46001201 	sub.s	$f8,$f2,$f0
     2e8:	4608603e 	c.le.s	$f12,$f8
     2ec:	00000000 	nop
     2f0:	4503fffa 	bc1tl	2dc <func_80B9B38C+0xd0>
     2f4:	460c0180 	add.s	$f6,$f0,$f12
     2f8:	03e00008 	jr	ra
     2fc:	00000000 	nop
     300:	46020281 	sub.s	$f10,$f0,$f2
     304:	460a603e 	c.le.s	$f12,$f10
     308:	00000000 	nop
     30c:	45000009 	bc1f	334 <func_80B9B38C+0x128>
     310:	00000000 	nop
     314:	460c0401 	sub.s	$f16,$f0,$f12
     318:	e4900010 	swc1	$f16,16(a0)
     31c:	c4800010 	lwc1	$f0,16(a0)
     320:	46020481 	sub.s	$f18,$f0,$f2
     324:	4612603e 	c.le.s	$f12,$f18
     328:	00000000 	nop
     32c:	4503fffa 	bc1tl	318 <func_80B9B38C+0x10c>
     330:	460c0401 	sub.s	$f16,$f0,$f12
     334:	03e00008 	jr	ra
     338:	00000000 	nop

0000033c <func_80B9B4BC>:
     33c:	27bdffe8 	addiu	sp,sp,-24
     340:	afbf0014 	sw	ra,20(sp)
     344:	14a00003 	bnez	a1,354 <func_80B9B4BC+0x18>
     348:	00a03825 	move	a3,a1
     34c:	10000029 	b	3f4 <func_80B9B4BC+0xb8>
     350:	24020001 	li	v0,1
     354:	84ee0000 	lh	t6,0(a3)
     358:	2401012a 	li	at,298
     35c:	55c10025 	bnel	t6,at,3f4 <func_80B9B4BC+0xb8>
     360:	24020001 	li	v0,1
     364:	84e2001c 	lh	v0,28(a3)
     368:	24010020 	li	at,32
     36c:	00022a03 	sra	a1,v0,0x8
     370:	30a5003f 	andi	a1,a1,0x3f
     374:	00052c00 	sll	a1,a1,0x10
     378:	30430033 	andi	v1,v0,0x33
     37c:	10610006 	beq	v1,at,398 <func_80B9B4BC+0x5c>
     380:	00052c03 	sra	a1,a1,0x10
     384:	24010030 	li	at,48
     388:	5061000f 	beql	v1,at,3c8 <func_80B9B4BC+0x8c>
     38c:	8488001c 	lh	t0,28(a0)
     390:	10000018 	b	3f4 <func_80B9B4BC+0xb8>
     394:	24020001 	li	v0,1
     398:	848f001c 	lh	t7,28(a0)
     39c:	000fc203 	sra	t8,t7,0x8
     3a0:	3319003f 	andi	t9,t8,0x3f
     3a4:	54b90013 	bnel	a1,t9,3f4 <func_80B9B4BC+0xb8>
     3a8:	24020001 	li	v0,1
     3ac:	0c000000 	jal	0 <func_80B9B180>
     3b0:	00c02025 	move	a0,a2
     3b4:	5040000f 	beqzl	v0,3f4 <func_80B9B4BC+0xb8>
     3b8:	24020001 	li	v0,1
     3bc:	1000000d 	b	3f4 <func_80B9B4BC+0xb8>
     3c0:	00001025 	move	v0,zero
     3c4:	8488001c 	lh	t0,28(a0)
     3c8:	00084a03 	sra	t1,t0,0x8
     3cc:	312a003f 	andi	t2,t1,0x3f
     3d0:	54aa0008 	bnel	a1,t2,3f4 <func_80B9B4BC+0xb8>
     3d4:	24020001 	li	v0,1
     3d8:	0c000000 	jal	0 <func_80B9B180>
     3dc:	00c02025 	move	a0,a2
     3e0:	54400004 	bnezl	v0,3f4 <func_80B9B4BC+0xb8>
     3e4:	24020001 	li	v0,1
     3e8:	10000002 	b	3f4 <func_80B9B4BC+0xb8>
     3ec:	00001025 	move	v0,zero
     3f0:	24020001 	li	v0,1
     3f4:	8fbf0014 	lw	ra,20(sp)
     3f8:	27bd0018 	addiu	sp,sp,24
     3fc:	03e00008 	jr	ra
     400:	00000000 	nop

00000404 <func_80B9B584>:
     404:	27bdffe8 	addiu	sp,sp,-24
     408:	afbf0014 	sw	ra,20(sp)
     40c:	8487001c 	lh	a3,28(a0)
     410:	240601bc 	li	a2,444
     414:	30ee000f 	andi	t6,a3,0xf
     418:	2dc10008 	sltiu	at,t6,8
     41c:	1020000c 	beqz	at,450 <L80B9B5B8+0x18>
     420:	000e7080 	sll	t6,t6,0x2
     424:	3c010000 	lui	at,0x0
     428:	002e0821 	addu	at,at,t6
     42c:	8c2e0000 	lw	t6,0(at)
     430:	01c00008 	jr	t6
     434:	00000000 	nop

00000438 <L80B9B5B8>:
     438:	3c060500 	lui	a2,0x500
     43c:	24c64e98 	addiu	a2,a2,20120
     440:	0c000000 	jal	0 <func_80B9B180>
     444:	24070001 	li	a3,1
     448:	10000007 	b	468 <L80B9B5B8+0x30>
     44c:	8fbf0014 	lw	ra,20(sp)
     450:	3c040000 	lui	a0,0x0
     454:	3c050000 	lui	a1,0x0
     458:	24a50000 	addiu	a1,a1,0
     45c:	0c000000 	jal	0 <func_80B9B180>
     460:	24840000 	addiu	a0,a0,0
     464:	8fbf0014 	lw	ra,20(sp)
     468:	27bd0018 	addiu	sp,sp,24
     46c:	03e00008 	jr	ra
     470:	00000000 	nop

00000474 <func_80B9B5F4>:
     474:	27bdffe8 	addiu	sp,sp,-24
     478:	afbf0014 	sw	ra,20(sp)
     47c:	afa5001c 	sw	a1,28(sp)
     480:	848e001c 	lh	t6,28(a0)
     484:	3c050000 	lui	a1,0x0
     488:	31cf000f 	andi	t7,t6,0xf
     48c:	000fc080 	sll	t8,t7,0x2
     490:	00b82821 	addu	a1,a1,t8
     494:	0c000000 	jal	0 <func_80B9B180>
     498:	8ca50000 	lw	a1,0(a1)
     49c:	8fbf0014 	lw	ra,20(sp)
     4a0:	27bd0018 	addiu	sp,sp,24
     4a4:	03e00008 	jr	ra
     4a8:	00000000 	nop

000004ac <func_80B9B62C>:
     4ac:	afa50004 	sw	a1,4(sp)
     4b0:	848e001c 	lh	t6,28(a0)
     4b4:	31cf000f 	andi	t7,t6,0xf
     4b8:	2de10008 	sltiu	at,t7,8
     4bc:	10200011 	beqz	at,504 <L80B9B678+0xc>
     4c0:	000f7880 	sll	t7,t7,0x2
     4c4:	3c010000 	lui	at,0x0
     4c8:	002f0821 	addu	at,at,t7
     4cc:	8c2f0000 	lw	t7,0(at)
     4d0:	01e00008 	jr	t7
     4d4:	00000000 	nop

000004d8 <L80B9B658>:
     4d8:	3c180500 	lui	t8,0x500
     4dc:	27183350 	addiu	t8,t8,13136
     4e0:	03e00008 	jr	ra
     4e4:	ac9801cc 	sw	t8,460(a0)

000004e8 <L80B9B668>:
     4e8:	3c190500 	lui	t9,0x500
     4ec:	27393b50 	addiu	t9,t9,15184
     4f0:	03e00008 	jr	ra
     4f4:	ac9901cc 	sw	t9,460(a0)

000004f8 <L80B9B678>:
     4f8:	3c080500 	lui	t0,0x500
     4fc:	25084350 	addiu	t0,t0,17232
     500:	ac8801cc 	sw	t0,460(a0)
     504:	03e00008 	jr	ra
     508:	00000000 	nop

0000050c <func_80B9B68C>:
     50c:	27bdffe8 	addiu	sp,sp,-24
     510:	afbf0014 	sw	ra,20(sp)
     514:	8488001c 	lh	t0,28(a0)
     518:	00803825 	move	a3,a0
     51c:	3c020000 	lui	v0,0x0
     520:	00084183 	sra	t0,t0,0x6
     524:	31080003 	andi	t0,t0,0x3
     528:	00084400 	sll	t0,t0,0x10
     52c:	00084403 	sra	t0,t0,0x10
     530:	24420000 	addiu	v0,v0,0
     534:	24040009 	li	a0,9
     538:	84a600a4 	lh	a2,164(a1)
     53c:	00001825 	move	v1,zero
     540:	844e0000 	lh	t6,0(v0)
     544:	50ce0005 	beql	a2,t6,55c <func_80B9B68C+0x50>
     548:	28610009 	slti	at,v1,9
     54c:	24630001 	addiu	v1,v1,1
     550:	1464fffb 	bne	v1,a0,540 <func_80B9B68C+0x34>
     554:	24420002 	addiu	v0,v0,2
     558:	28610009 	slti	at,v1,9
     55c:	1420000f 	bnez	at,59c <func_80B9B68C+0x90>
     560:	0003c080 	sll	t8,v1,0x2
     564:	3c040000 	lui	a0,0x0
     568:	3c050000 	lui	a1,0x0
     56c:	24a50000 	addiu	a1,a1,0
     570:	24840000 	addiu	a0,a0,0
     574:	24060243 	li	a2,579
     578:	0c000000 	jal	0 <func_80B9B180>
     57c:	afa70018 	sw	a3,24(sp)
     580:	8fa70018 	lw	a3,24(sp)
     584:	240300ff 	li	v1,255
     588:	24e201d0 	addiu	v0,a3,464
     58c:	a0430002 	sb	v1,2(v0)
     590:	a0430001 	sb	v1,1(v0)
     594:	10000010 	b	5d8 <func_80B9B68C+0xcc>
     598:	a0430000 	sb	v1,0(v0)
     59c:	0303c023 	subu	t8,t8,v1
     5a0:	0008c880 	sll	t9,t0,0x2
     5a4:	0328c823 	subu	t9,t9,t0
     5a8:	0018c080 	sll	t8,t8,0x2
     5ac:	3c0a0000 	lui	t2,0x0
     5b0:	254a0000 	addiu	t2,t2,0
     5b4:	03194821 	addu	t1,t8,t9
     5b8:	012a2021 	addu	a0,t1,t2
     5bc:	908b0000 	lbu	t3,0(a0)
     5c0:	24e201d0 	addiu	v0,a3,464
     5c4:	a04b0000 	sb	t3,0(v0)
     5c8:	908c0001 	lbu	t4,1(a0)
     5cc:	a04c0001 	sb	t4,1(v0)
     5d0:	908d0002 	lbu	t5,2(a0)
     5d4:	a04d0002 	sb	t5,2(v0)
     5d8:	8fbf0014 	lw	ra,20(sp)
     5dc:	27bd0018 	addiu	sp,sp,24
     5e0:	03e00008 	jr	ra
     5e4:	00000000 	nop

000005e8 <ObjOshihiki_Init>:
     5e8:	27bdffe0 	addiu	sp,sp,-32
     5ec:	afbf001c 	sw	ra,28(sp)
     5f0:	afb00018 	sw	s0,24(sp)
     5f4:	00808025 	move	s0,a0
     5f8:	0c000000 	jal	0 <func_80B9B180>
     5fc:	afa50024 	sw	a1,36(sp)
     600:	8602001c 	lh	v0,28(s0)
     604:	00021203 	sra	v0,v0,0x8
     608:	304300ff 	andi	v1,v0,0xff
     60c:	04600025 	bltz	v1,6a4 <ObjOshihiki_Init+0xbc>
     610:	28610040 	slti	at,v1,64
     614:	10200023 	beqz	at,6a4 <ObjOshihiki_Init+0xbc>
     618:	8fa40024 	lw	a0,36(sp)
     61c:	0c000000 	jal	0 <func_80B9B180>
     620:	3045003f 	andi	a1,v0,0x3f
     624:	50400011 	beqzl	v0,66c <ObjOshihiki_Init+0x84>
     628:	8602001c 	lh	v0,28(s0)
     62c:	8602001c 	lh	v0,28(s0)
     630:	24010001 	li	at,1
     634:	3042000f 	andi	v0,v0,0xf
     638:	10400007 	beqz	v0,658 <ObjOshihiki_Init+0x70>
     63c:	00000000 	nop
     640:	10410005 	beq	v0,at,658 <ObjOshihiki_Init+0x70>
     644:	24010002 	li	at,2
     648:	10410003 	beq	v0,at,658 <ObjOshihiki_Init+0x70>
     64c:	24010003 	li	at,3
     650:	54410015 	bnel	v0,at,6a8 <ObjOshihiki_Init+0xc0>
     654:	02002025 	move	a0,s0
     658:	0c000000 	jal	0 <func_80B9B180>
     65c:	02002025 	move	a0,s0
     660:	10000029 	b	708 <ObjOshihiki_Init+0x120>
     664:	8fbf001c 	lw	ra,28(sp)
     668:	8602001c 	lh	v0,28(s0)
     66c:	24010004 	li	at,4
     670:	3042000f 	andi	v0,v0,0xf
     674:	10410007 	beq	v0,at,694 <ObjOshihiki_Init+0xac>
     678:	24010005 	li	at,5
     67c:	10410005 	beq	v0,at,694 <ObjOshihiki_Init+0xac>
     680:	24010006 	li	at,6
     684:	10410003 	beq	v0,at,694 <ObjOshihiki_Init+0xac>
     688:	24010007 	li	at,7
     68c:	54410006 	bnel	v0,at,6a8 <ObjOshihiki_Init+0xc0>
     690:	02002025 	move	a0,s0
     694:	0c000000 	jal	0 <func_80B9B180>
     698:	02002025 	move	a0,s0
     69c:	1000001a 	b	708 <ObjOshihiki_Init+0x120>
     6a0:	8fbf001c 	lw	ra,28(sp)
     6a4:	02002025 	move	a0,s0
     6a8:	0c000000 	jal	0 <func_80B9B180>
     6ac:	8fa50024 	lw	a1,36(sp)
     6b0:	02002025 	move	a0,s0
     6b4:	0c000000 	jal	0 <func_80B9B180>
     6b8:	8fa50024 	lw	a1,36(sp)
     6bc:	3c050000 	lui	a1,0x0
     6c0:	24a50000 	addiu	a1,a1,0
     6c4:	0c000000 	jal	0 <func_80B9B180>
     6c8:	02002025 	move	a0,s0
     6cc:	240e00ff 	li	t6,255
     6d0:	a20e00ae 	sb	t6,174(s0)
     6d4:	8fa50024 	lw	a1,36(sp)
     6d8:	0c000000 	jal	0 <func_80B9B180>
     6dc:	02002025 	move	a0,s0
     6e0:	0c000000 	jal	0 <func_80B9B180>
     6e4:	02002025 	move	a0,s0
     6e8:	02002025 	move	a0,s0
     6ec:	0c000000 	jal	0 <func_80B9B180>
     6f0:	8fa50024 	lw	a1,36(sp)
     6f4:	3c040000 	lui	a0,0x0
     6f8:	24840000 	addiu	a0,a0,0
     6fc:	0c000000 	jal	0 <func_80B9B180>
     700:	8605001c 	lh	a1,28(s0)
     704:	8fbf001c 	lw	ra,28(sp)
     708:	8fb00018 	lw	s0,24(sp)
     70c:	27bd0020 	addiu	sp,sp,32
     710:	03e00008 	jr	ra
     714:	00000000 	nop

00000718 <ObjOshihiki_Destroy>:
     718:	27bdffe8 	addiu	sp,sp,-24
     71c:	afa40018 	sw	a0,24(sp)
     720:	8fae0018 	lw	t6,24(sp)
     724:	afbf0014 	sw	ra,20(sp)
     728:	00a02025 	move	a0,a1
     72c:	24a50810 	addiu	a1,a1,2064
     730:	0c000000 	jal	0 <func_80B9B180>
     734:	8dc6014c 	lw	a2,332(t6)
     738:	8fbf0014 	lw	ra,20(sp)
     73c:	27bd0018 	addiu	sp,sp,24
     740:	03e00008 	jr	ra
     744:	00000000 	nop

00000748 <func_80B9B8C8>:
     748:	27bdff70 	addiu	sp,sp,-144
     74c:	afbe0050 	sw	s8,80(sp)
     750:	afb10034 	sw	s1,52(sp)
     754:	f7b60028 	sdc1	$f22,40(sp)
     758:	f7b40020 	sdc1	$f20,32(sp)
     75c:	3c014120 	lui	at,0x4120
     760:	afb7004c 	sw	s7,76(sp)
     764:	afb60048 	sw	s6,72(sp)
     768:	afb50044 	sw	s5,68(sp)
     76c:	afb40040 	sw	s4,64(sp)
     770:	afb3003c 	sw	s3,60(sp)
     774:	afb20038 	sw	s2,56(sp)
     778:	afb00030 	sw	s0,48(sp)
     77c:	3c110000 	lui	s1,0x0
     780:	3c1e0000 	lui	s8,0x0
     784:	4481a000 	mtc1	at,$f20
     788:	4480b000 	mtc1	zero,$f22
     78c:	00808025 	move	s0,a0
     790:	afbf0054 	sw	ra,84(sp)
     794:	27de0000 	addiu	s8,s8,0
     798:	26310000 	addiu	s1,s1,0
     79c:	00809025 	move	s2,a0
     7a0:	24930194 	addiu	s3,a0,404
     7a4:	24940180 	addiu	s4,a0,384
     7a8:	27b50080 	addiu	s5,sp,128
     7ac:	24b607c0 	addiu	s6,a1,1984
     7b0:	27b70074 	addiu	s7,sp,116
     7b4:	c6060050 	lwc1	$f6,80(s0)
     7b8:	c6240000 	lwc1	$f4,0(s1)
     7bc:	c6300004 	lwc1	$f16,4(s1)
     7c0:	46143202 	mul.s	$f8,$f6,$f20
     7c4:	02a02025 	move	a0,s5
     7c8:	02e02825 	move	a1,s7
     7cc:	46082282 	mul.s	$f10,$f4,$f8
     7d0:	c6280008 	lwc1	$f8,8(s1)
     7d4:	e7aa0074 	swc1	$f10,116(sp)
     7d8:	c6120054 	lwc1	$f18,84(s0)
     7dc:	46149182 	mul.s	$f6,$f18,$f20
     7e0:	00000000 	nop
     7e4:	46068102 	mul.s	$f4,$f16,$f6
     7e8:	e7a40078 	swc1	$f4,120(sp)
     7ec:	c60a0058 	lwc1	$f10,88(s0)
     7f0:	46145482 	mul.s	$f18,$f10,$f20
     7f4:	00000000 	nop
     7f8:	46124402 	mul.s	$f16,$f8,$f18
     7fc:	e7b0007c 	swc1	$f16,124(sp)
     800:	8e070170 	lw	a3,368(s0)
     804:	0c000000 	jal	0 <func_80B9B180>
     808:	8e06016c 	lw	a2,364(s0)
     80c:	c7a60080 	lwc1	$f6,128(sp)
     810:	c6040024 	lwc1	$f4,36(s0)
     814:	c7a80084 	lwc1	$f8,132(sp)
     818:	02c02025 	move	a0,s6
     81c:	46043280 	add.s	$f10,$f6,$f4
     820:	c7a60088 	lwc1	$f6,136(sp)
     824:	02602825 	move	a1,s3
     828:	02803025 	move	a2,s4
     82c:	e7aa0080 	swc1	$f10,128(sp)
     830:	c6120104 	lwc1	$f18,260(s0)
     834:	02003825 	move	a3,s0
     838:	46124400 	add.s	$f16,$f8,$f18
     83c:	e7b00084 	swc1	$f16,132(sp)
     840:	c604002c 	lwc1	$f4,44(s0)
     844:	e7b60014 	swc1	$f22,20(sp)
     848:	afb50010 	sw	s5,16(sp)
     84c:	46043280 	add.s	$f10,$f6,$f4
     850:	0c000000 	jal	0 <func_80B9B180>
     854:	e7aa0088 	swc1	$f10,136(sp)
     858:	2631000c 	addiu	s1,s1,12
     85c:	26520004 	addiu	s2,s2,4
     860:	26730004 	addiu	s3,s3,4
     864:	26940004 	addiu	s4,s4,4
     868:	163effd2 	bne	s1,s8,7b4 <func_80B9B8C8+0x6c>
     86c:	e64001a4 	swc1	$f0,420(s2)
     870:	8fbf0054 	lw	ra,84(sp)
     874:	d7b40020 	ldc1	$f20,32(sp)
     878:	d7b60028 	ldc1	$f22,40(sp)
     87c:	8fb00030 	lw	s0,48(sp)
     880:	8fb10034 	lw	s1,52(sp)
     884:	8fb20038 	lw	s2,56(sp)
     888:	8fb3003c 	lw	s3,60(sp)
     88c:	8fb40040 	lw	s4,64(sp)
     890:	8fb50044 	lw	s5,68(sp)
     894:	8fb60048 	lw	s6,72(sp)
     898:	8fb7004c 	lw	s7,76(sp)
     89c:	8fbe0050 	lw	s8,80(sp)
     8a0:	03e00008 	jr	ra
     8a4:	27bd0090 	addiu	sp,sp,144

000008a8 <func_80B9BA28>:
     8a8:	24820004 	addiu	v0,a0,4
     8ac:	c44001a8 	lwc1	$f0,424(v0)
     8b0:	c48201a8 	lwc1	$f2,424(a0)
     8b4:	00001825 	move	v1,zero
     8b8:	24050032 	li	a1,50
     8bc:	4600103c 	c.lt.s	$f2,$f0
     8c0:	00000000 	nop
     8c4:	45020004 	bc1fl	8d8 <func_80B9BA28+0x30>
     8c8:	8c4e0180 	lw	t6,384(v0)
     8cc:	1000000d 	b	904 <func_80B9BA28+0x5c>
     8d0:	24030001 	li	v1,1
     8d4:	8c4e0180 	lw	t6,384(v0)
     8d8:	24050032 	li	a1,50
     8dc:	3c010000 	lui	at,0x0
     8e0:	54ae0009 	bnel	a1,t6,908 <func_80B9BA28+0x60>
     8e4:	00037880 	sll	t7,v1,0x2
     8e8:	46020101 	sub.s	$f4,$f0,$f2
     8ec:	c42c0000 	lwc1	$f12,0(at)
     8f0:	4604603c 	c.lt.s	$f12,$f4
     8f4:	00000000 	nop
     8f8:	45020003 	bc1fl	908 <func_80B9BA28+0x60>
     8fc:	00037880 	sll	t7,v1,0x2
     900:	24030001 	li	v1,1
     904:	00037880 	sll	t7,v1,0x2
     908:	008fc021 	addu	t8,a0,t7
     90c:	c70001a8 	lwc1	$f0,424(t8)
     910:	c44201ac 	lwc1	$f2,428(v0)
     914:	3c010000 	lui	at,0x0
     918:	c42c0000 	lwc1	$f12,0(at)
     91c:	4602003c 	c.lt.s	$f0,$f2
     920:	00000000 	nop
     924:	45020005 	bc1fl	93c <func_80B9BA28+0x94>
     928:	8c590184 	lw	t9,388(v0)
     92c:	24030002 	li	v1,2
     930:	1000000b 	b	960 <func_80B9BA28+0xb8>
     934:	c48001b0 	lwc1	$f0,432(a0)
     938:	8c590184 	lw	t9,388(v0)
     93c:	54b90009 	bnel	a1,t9,964 <func_80B9BA28+0xbc>
     940:	c44201b0 	lwc1	$f2,432(v0)
     944:	46001181 	sub.s	$f6,$f2,$f0
     948:	4606603c 	c.lt.s	$f12,$f6
     94c:	00000000 	nop
     950:	45020004 	bc1fl	964 <func_80B9BA28+0xbc>
     954:	c44201b0 	lwc1	$f2,432(v0)
     958:	24030002 	li	v1,2
     95c:	c48001b0 	lwc1	$f0,432(a0)
     960:	c44201b0 	lwc1	$f2,432(v0)
     964:	4602003c 	c.lt.s	$f0,$f2
     968:	00000000 	nop
     96c:	45020005 	bc1fl	984 <func_80B9BA28+0xdc>
     970:	8c480188 	lw	t0,392(v0)
     974:	24030003 	li	v1,3
     978:	1000000b 	b	9a8 <func_80B9BA28+0x100>
     97c:	c48001b4 	lwc1	$f0,436(a0)
     980:	8c480188 	lw	t0,392(v0)
     984:	54a80009 	bnel	a1,t0,9ac <func_80B9BA28+0x104>
     988:	c44201b4 	lwc1	$f2,436(v0)
     98c:	46001201 	sub.s	$f8,$f2,$f0
     990:	4608603c 	c.lt.s	$f12,$f8
     994:	00000000 	nop
     998:	45020004 	bc1fl	9ac <func_80B9BA28+0x104>
     99c:	c44201b4 	lwc1	$f2,436(v0)
     9a0:	24030003 	li	v1,3
     9a4:	c48001b4 	lwc1	$f0,436(a0)
     9a8:	c44201b4 	lwc1	$f2,436(v0)
     9ac:	4602003c 	c.lt.s	$f0,$f2
     9b0:	00000000 	nop
     9b4:	45020004 	bc1fl	9c8 <func_80B9BA28+0x120>
     9b8:	8c49018c 	lw	t1,396(v0)
     9bc:	03e00008 	jr	ra
     9c0:	24020004 	li	v0,4
     9c4:	8c49018c 	lw	t1,396(v0)
     9c8:	14a90007 	bne	a1,t1,9e8 <func_80B9BA28+0x140>
     9cc:	00000000 	nop
     9d0:	46001281 	sub.s	$f10,$f2,$f0
     9d4:	460a603c 	c.lt.s	$f12,$f10
     9d8:	00000000 	nop
     9dc:	45000002 	bc1f	9e8 <func_80B9BA28+0x140>
     9e0:	00000000 	nop
     9e4:	24030004 	li	v1,4
     9e8:	03e00008 	jr	ra
     9ec:	00601025 	move	v0,v1

000009f0 <func_80B9BB70>:
     9f0:	27bdffe0 	addiu	sp,sp,-32
     9f4:	afbf001c 	sw	ra,28(sp)
     9f8:	afb00018 	sw	s0,24(sp)
     9fc:	00808025 	move	s0,a0
     a00:	0c000000 	jal	0 <func_80B9B180>
     a04:	afa50024 	sw	a1,36(sp)
     a08:	02002025 	move	a0,s0
     a0c:	0c000000 	jal	0 <func_80B9B180>
     a10:	8fa50024 	lw	a1,36(sp)
     a14:	0c000000 	jal	0 <func_80B9B180>
     a18:	02002025 	move	a0,s0
     a1c:	a60201bc 	sh	v0,444(s0)
     a20:	860e01bc 	lh	t6,444(s0)
     a24:	000e7880 	sll	t7,t6,0x2
     a28:	020fc021 	addu	t8,s0,t7
     a2c:	c70401a8 	lwc1	$f4,424(t8)
     a30:	e6040080 	swc1	$f4,128(s0)
     a34:	8fbf001c 	lw	ra,28(sp)
     a38:	8fb00018 	lw	s0,24(sp)
     a3c:	27bd0020 	addiu	sp,sp,32
     a40:	03e00008 	jr	ra
     a44:	00000000 	nop

00000a48 <func_80B9BBC8>:
     a48:	27bdffe8 	addiu	sp,sp,-24
     a4c:	afbf0014 	sw	ra,20(sp)
     a50:	0c000000 	jal	0 <func_80B9B180>
     a54:	afa40018 	sw	a0,24(sp)
     a58:	8fa40018 	lw	a0,24(sp)
     a5c:	3c010000 	lui	at,0x0
     a60:	c4280000 	lwc1	$f8,0(at)
     a64:	c4800080 	lwc1	$f0,128(a0)
     a68:	c4840028 	lwc1	$f4,40(a0)
     a6c:	00001025 	move	v0,zero
     a70:	46040181 	sub.s	$f6,$f0,$f4
     a74:	4606403e 	c.le.s	$f8,$f6
     a78:	00000000 	nop
     a7c:	45000004 	bc1f	a90 <func_80B9BBC8+0x48>
     a80:	00000000 	nop
     a84:	e4800028 	swc1	$f0,40(a0)
     a88:	10000001 	b	a90 <func_80B9BBC8+0x48>
     a8c:	24020001 	li	v0,1
     a90:	8fbf0014 	lw	ra,20(sp)
     a94:	27bd0018 	addiu	sp,sp,24
     a98:	03e00008 	jr	ra
     a9c:	00000000 	nop

00000aa0 <func_80B9BC20>:
     aa0:	27bdffe0 	addiu	sp,sp,-32
     aa4:	afbf001c 	sw	ra,28(sp)
     aa8:	afb00018 	sw	s0,24(sp)
     aac:	afa50024 	sw	a1,36(sp)
     ab0:	3c010000 	lui	at,0x0
     ab4:	c4240000 	lwc1	$f4,0(at)
     ab8:	c4800028 	lwc1	$f0,40(a0)
     abc:	00808025 	move	s0,a0
     ac0:	3c040000 	lui	a0,0x0
     ac4:	4604003e 	c.le.s	$f0,$f4
     ac8:	3c050000 	lui	a1,0x0
     acc:	24a50000 	addiu	a1,a1,0
     ad0:	24840000 	addiu	a0,a0,0
     ad4:	45000007 	bc1f	af4 <func_80B9BC20+0x54>
     ad8:	24060329 	li	a2,809
     adc:	0c000000 	jal	0 <func_80B9B180>
     ae0:	8607001c 	lh	a3,28(s0)
     ae4:	0c000000 	jal	0 <func_80B9B180>
     ae8:	02002025 	move	a0,s0
     aec:	1000000d 	b	b24 <func_80B9BC20+0x84>
     af0:	00001025 	move	v0,zero
     af4:	c6020080 	lwc1	$f2,128(s0)
     af8:	3c010000 	lui	at,0x0
     afc:	c4280000 	lwc1	$f8,0(at)
     b00:	46001181 	sub.s	$f6,$f2,$f0
     b04:	00001025 	move	v0,zero
     b08:	4606403e 	c.le.s	$f8,$f6
     b0c:	00000000 	nop
     b10:	45000004 	bc1f	b24 <func_80B9BC20+0x84>
     b14:	00000000 	nop
     b18:	e6020028 	swc1	$f2,40(s0)
     b1c:	10000001 	b	b24 <func_80B9BC20+0x84>
     b20:	24020001 	li	v0,1
     b24:	8fbf001c 	lw	ra,28(sp)
     b28:	8fb00018 	lw	s0,24(sp)
     b2c:	27bd0020 	addiu	sp,sp,32
     b30:	03e00008 	jr	ra
     b34:	00000000 	nop

00000b38 <func_80B9BCB8>:
     b38:	27bdff10 	addiu	sp,sp,-240
     b3c:	f7bc0058 	sdc1	$f28,88(sp)
     b40:	4480e000 	mtc1	zero,$f28
     b44:	44866000 	mtc1	a2,$f12
     b48:	afb00068 	sw	s0,104(sp)
     b4c:	00058400 	sll	s0,a1,0x10
     b50:	460ce03e 	c.le.s	$f28,$f12
     b54:	afb30074 	sw	s3,116(sp)
     b58:	afb20070 	sw	s2,112(sp)
     b5c:	00e09025 	move	s2,a3
     b60:	00809825 	move	s3,a0
     b64:	00108403 	sra	s0,s0,0x10
     b68:	afbf008c 	sw	ra,140(sp)
     b6c:	afbe0088 	sw	s8,136(sp)
     b70:	afb70084 	sw	s7,132(sp)
     b74:	afb60080 	sw	s6,128(sp)
     b78:	afb5007c 	sw	s5,124(sp)
     b7c:	afb40078 	sw	s4,120(sp)
     b80:	afb1006c 	sw	s1,108(sp)
     b84:	f7be0060 	sdc1	$f30,96(sp)
     b88:	f7ba0050 	sdc1	$f26,80(sp)
     b8c:	f7b80048 	sdc1	$f24,72(sp)
     b90:	f7b60040 	sdc1	$f22,64(sp)
     b94:	f7b40038 	sdc1	$f20,56(sp)
     b98:	45000005 	bc1f	bb0 <func_80B9BCB8+0x78>
     b9c:	afa500f4 	sw	a1,244(sp)
     ba0:	3c013f80 	lui	at,0x3f80
     ba4:	44810000 	mtc1	at,$f0
     ba8:	10000005 	b	bc0 <func_80B9BCB8+0x88>
     bac:	3c014396 	lui	at,0x4396
     bb0:	3c01bf80 	lui	at,0xbf80
     bb4:	44810000 	mtc1	at,$f0
     bb8:	00000000 	nop
     bbc:	3c014396 	lui	at,0x4396
     bc0:	44812000 	mtc1	at,$f4
     bc4:	c6460050 	lwc1	$f6,80(s2)
     bc8:	3c0141a0 	lui	at,0x41a0
     bcc:	44815000 	mtc1	at,$f10
     bd0:	46062202 	mul.s	$f8,$f4,$f6
     bd4:	3c013f00 	lui	at,0x3f00
     bd8:	44819000 	mtc1	at,$f18
     bdc:	00102400 	sll	a0,s0,0x10
     be0:	00042403 	sra	a0,a0,0x10
     be4:	460a4400 	add.s	$f16,$f8,$f10
     be8:	46128101 	sub.s	$f4,$f16,$f18
     bec:	46040502 	mul.s	$f20,$f0,$f4
     bf0:	0c000000 	jal	0 <func_80B9B180>
     bf4:	00000000 	nop
     bf8:	00102400 	sll	a0,s0,0x10
     bfc:	46000786 	mov.s	$f30,$f0
     c00:	0c000000 	jal	0 <func_80B9B180>
     c04:	00042403 	sra	a0,a0,0x10
     c08:	461ea602 	mul.s	$f24,$f20,$f30
     c0c:	3c014120 	lui	at,0x4120
     c10:	3c110000 	lui	s1,0x0
     c14:	4600a682 	mul.s	$f26,$f20,$f0
     c18:	3c100000 	lui	s0,0x0
     c1c:	267407c0 	addiu	s4,s3,1984
     c20:	4481a000 	mtc1	at,$f20
     c24:	46000586 	mov.s	$f22,$f0
     c28:	27b300d4 	addiu	s3,sp,212
     c2c:	26100000 	addiu	s0,s0,0
     c30:	26310000 	addiu	s1,s1,0
     c34:	27be00a8 	addiu	s8,sp,168
     c38:	27b700bc 	addiu	s7,sp,188
     c3c:	27b600c8 	addiu	s6,sp,200
     c40:	27b500b0 	addiu	s5,sp,176
     c44:	c6060000 	lwc1	$f6,0(s0)
     c48:	c6480050 	lwc1	$f8,80(s2)
     c4c:	c6320000 	lwc1	$f18,0(s1)
     c50:	4406f000 	mfc1	a2,$f30
     c54:	46083282 	mul.s	$f10,$f6,$f8
     c58:	c6060004 	lwc1	$f6,4(s0)
     c5c:	4407b000 	mfc1	a3,$f22
     c60:	02602025 	move	a0,s3
     c64:	02a02825 	move	a1,s5
     c68:	46145402 	mul.s	$f16,$f10,$f20
     c6c:	46109100 	add.s	$f4,$f18,$f16
     c70:	c6300004 	lwc1	$f16,4(s1)
     c74:	e7a400b0 	swc1	$f4,176(sp)
     c78:	c6480054 	lwc1	$f8,84(s2)
     c7c:	e7bc00b8 	swc1	$f28,184(sp)
     c80:	46083282 	mul.s	$f10,$f6,$f8
     c84:	00000000 	nop
     c88:	46145482 	mul.s	$f18,$f10,$f20
     c8c:	46128100 	add.s	$f4,$f16,$f18
     c90:	0c000000 	jal	0 <func_80B9B180>
     c94:	e7a400b4 	swc1	$f4,180(sp)
     c98:	c7a600d4 	lwc1	$f6,212(sp)
     c9c:	c6480024 	lwc1	$f8,36(s2)
     ca0:	c7b000d8 	lwc1	$f16,216(sp)
     ca4:	240e0001 	li	t6,1
     ca8:	46083280 	add.s	$f10,$f6,$f8
     cac:	c7a600dc 	lwc1	$f6,220(sp)
     cb0:	240f0001 	li	t7,1
     cb4:	27b800ac 	addiu	t8,sp,172
     cb8:	e7aa00d4 	swc1	$f10,212(sp)
     cbc:	c6520028 	lwc1	$f18,40(s2)
     cc0:	02802025 	move	a0,s4
     cc4:	02602825 	move	a1,s3
     cc8:	46128100 	add.s	$f4,$f16,$f18
     ccc:	02c03025 	move	a2,s6
     cd0:	02e03825 	move	a3,s7
     cd4:	460ac480 	add.s	$f18,$f24,$f10
     cd8:	e7a400d8 	swc1	$f4,216(sp)
     cdc:	c648002c 	lwc1	$f8,44(s2)
     ce0:	e7a400cc 	swc1	$f4,204(sp)
     ce4:	e7b200c8 	swc1	$f18,200(sp)
     ce8:	46083400 	add.s	$f16,$f6,$f8
     cec:	e7bc002c 	swc1	$f28,44(sp)
     cf0:	afb20028 	sw	s2,40(sp)
     cf4:	afb80024 	sw	t8,36(sp)
     cf8:	4610d180 	add.s	$f6,$f26,$f16
     cfc:	e7b000dc 	swc1	$f16,220(sp)
     d00:	afaf0020 	sw	t7,32(sp)
     d04:	afa0001c 	sw	zero,28(sp)
     d08:	e7a600d0 	swc1	$f6,208(sp)
     d0c:	afa00018 	sw	zero,24(sp)
     d10:	afae0014 	sw	t6,20(sp)
     d14:	0c000000 	jal	0 <func_80B9B180>
     d18:	afbe0010 	sw	s8,16(sp)
     d1c:	10400003 	beqz	v0,d2c <func_80B9BCB8+0x1f4>
     d20:	26100008 	addiu	s0,s0,8
     d24:	10000006 	b	d40 <func_80B9BCB8+0x208>
     d28:	24020001 	li	v0,1
     d2c:	3c190000 	lui	t9,0x0
     d30:	27390000 	addiu	t9,t9,0
     d34:	1619ffc3 	bne	s0,t9,c44 <func_80B9BCB8+0x10c>
     d38:	26310008 	addiu	s1,s1,8
     d3c:	00001025 	move	v0,zero
     d40:	8fbf008c 	lw	ra,140(sp)
     d44:	d7b40038 	ldc1	$f20,56(sp)
     d48:	d7b60040 	ldc1	$f22,64(sp)
     d4c:	d7b80048 	ldc1	$f24,72(sp)
     d50:	d7ba0050 	ldc1	$f26,80(sp)
     d54:	d7bc0058 	ldc1	$f28,88(sp)
     d58:	d7be0060 	ldc1	$f30,96(sp)
     d5c:	8fb00068 	lw	s0,104(sp)
     d60:	8fb1006c 	lw	s1,108(sp)
     d64:	8fb20070 	lw	s2,112(sp)
     d68:	8fb30074 	lw	s3,116(sp)
     d6c:	8fb40078 	lw	s4,120(sp)
     d70:	8fb5007c 	lw	s5,124(sp)
     d74:	8fb60080 	lw	s6,128(sp)
     d78:	8fb70084 	lw	s7,132(sp)
     d7c:	8fbe0088 	lw	s8,136(sp)
     d80:	03e00008 	jr	ra
     d84:	27bd00f0 	addiu	sp,sp,240

00000d88 <func_80B9BF08>:
     d88:	27bdffe0 	addiu	sp,sp,-32
     d8c:	afbf0014 	sw	ra,20(sp)
     d90:	afa50024 	sw	a1,36(sp)
     d94:	0c000000 	jal	0 <func_80B9B180>
     d98:	afa40020 	sw	a0,32(sp)
     d9c:	1040000f 	beqz	v0,ddc <func_80B9BF08+0x54>
     da0:	8fa70020 	lw	a3,32(sp)
     da4:	944e0168 	lhu	t6,360(v0)
     da8:	8fa40024 	lw	a0,36(sp)
     dac:	31cf0020 	andi	t7,t6,0x20
     db0:	51e0000b 	beqzl	t7,de0 <func_80B9BF08+0x58>
     db4:	94f80168 	lhu	t8,360(a3)
     db8:	84450158 	lh	a1,344(v0)
     dbc:	8c46017c 	lw	a2,380(v0)
     dc0:	afa70020 	sw	a3,32(sp)
     dc4:	0c000000 	jal	0 <func_80B9B180>
     dc8:	afa20018 	sw	v0,24(sp)
     dcc:	8fa30018 	lw	v1,24(sp)
     dd0:	14400002 	bnez	v0,ddc <func_80B9BF08+0x54>
     dd4:	8fa70020 	lw	a3,32(sp)
     dd8:	ace301c0 	sw	v1,448(a3)
     ddc:	94f80168 	lhu	t8,360(a3)
     de0:	33190100 	andi	t9,t8,0x100
     de4:	53200020 	beqzl	t9,e68 <func_80B9BF08+0xe0>
     de8:	00001025 	move	v0,zero
     dec:	8ce201c0 	lw	v0,448(a3)
     df0:	5040001d 	beqzl	v0,e68 <func_80B9BF08+0xe0>
     df4:	00001025 	move	v0,zero
     df8:	94430168 	lhu	v1,360(v0)
     dfc:	30680010 	andi	t0,v1,0x10
     e00:	11000015 	beqz	t0,e58 <func_80B9BF08+0xd0>
     e04:	30690020 	andi	t1,v1,0x20
     e08:	c4440024 	lwc1	$f4,36(v0)
     e0c:	c4460100 	lwc1	$f6,256(v0)
     e10:	00e02025 	move	a0,a3
     e14:	46062201 	sub.s	$f8,$f4,$f6
     e18:	c4e40024 	lwc1	$f4,36(a3)
     e1c:	e4e801c4 	swc1	$f8,452(a3)
     e20:	c4500108 	lwc1	$f16,264(v0)
     e24:	c44a002c 	lwc1	$f10,44(v0)
     e28:	c4e601c4 	lwc1	$f6,452(a3)
     e2c:	46105481 	sub.s	$f18,$f10,$f16
     e30:	c4ea002c 	lwc1	$f10,44(a3)
     e34:	46062200 	add.s	$f8,$f4,$f6
     e38:	e4f201c8 	swc1	$f18,456(a3)
     e3c:	c4f001c8 	lwc1	$f16,456(a3)
     e40:	e4e80024 	swc1	$f8,36(a3)
     e44:	46105480 	add.s	$f18,$f10,$f16
     e48:	0c000000 	jal	0 <func_80B9B180>
     e4c:	e4f2002c 	swc1	$f18,44(a3)
     e50:	10000005 	b	e68 <func_80B9BF08+0xe0>
     e54:	24020001 	li	v0,1
     e58:	55200003 	bnezl	t1,e68 <func_80B9BF08+0xe0>
     e5c:	00001025 	move	v0,zero
     e60:	ace001c0 	sw	zero,448(a3)
     e64:	00001025 	move	v0,zero
     e68:	8fbf0014 	lw	ra,20(sp)
     e6c:	27bd0020 	addiu	sp,sp,32
     e70:	03e00008 	jr	ra
     e74:	00000000 	nop

00000e78 <func_80B9BFF8>:
     e78:	afa50004 	sw	a1,4(sp)
     e7c:	44800000 	mtc1	zero,$f0
     e80:	948e0168 	lhu	t6,360(a0)
     e84:	3c180000 	lui	t8,0x0
     e88:	27180000 	addiu	t8,t8,0
     e8c:	35cf0002 	ori	t7,t6,0x2
     e90:	a48f0168 	sh	t7,360(a0)
     e94:	ac980164 	sw	t8,356(a0)
     e98:	e480006c 	swc1	$f0,108(a0)
     e9c:	e4800064 	swc1	$f0,100(a0)
     ea0:	e4800060 	swc1	$f0,96(a0)
     ea4:	03e00008 	jr	ra
     ea8:	e480005c 	swc1	$f0,92(a0)

00000eac <func_80B9C02C>:
     eac:	27bdffe0 	addiu	sp,sp,-32
     eb0:	afbf0014 	sw	ra,20(sp)
     eb4:	afa50024 	sw	a1,36(sp)
     eb8:	948f0168 	lhu	t7,360(a0)
     ebc:	8499016a 	lh	t9,362(a0)
     ec0:	8ca31c44 	lw	v1,7236(a1)
     ec4:	35f80001 	ori	t8,t7,0x1
     ec8:	00803825 	move	a3,a0
     ecc:	1f200026 	bgtz	t9,f68 <func_80B9C02C+0xbc>
     ed0:	a4980168 	sh	t8,360(a0)
     ed4:	c4800150 	lwc1	$f0,336(a0)
     ed8:	3c010000 	lui	at,0x0
     edc:	c4240000 	lwc1	$f4,0(at)
     ee0:	46000005 	abs.s	$f0,$f0
     ee4:	4600203c 	c.lt.s	$f4,$f0
     ee8:	00000000 	nop
     eec:	4502001f 	bc1fl	f6c <func_80B9C02C+0xc0>
     ef0:	8c6a0680 	lw	t2,1664(v1)
     ef4:	afa30018 	sw	v1,24(sp)
     ef8:	0c000000 	jal	0 <func_80B9B180>
     efc:	afa70020 	sw	a3,32(sp)
     f00:	8fa30018 	lw	v1,24(sp)
     f04:	10400011 	beqz	v0,f4c <func_80B9C02C+0xa0>
     f08:	8fa70020 	lw	a3,32(sp)
     f0c:	84e50158 	lh	a1,344(a3)
     f10:	8ce60150 	lw	a2,336(a3)
     f14:	afa70020 	sw	a3,32(sp)
     f18:	afa30018 	sw	v1,24(sp)
     f1c:	0c000000 	jal	0 <func_80B9B180>
     f20:	8fa40024 	lw	a0,36(sp)
     f24:	8fa30018 	lw	v1,24(sp)
     f28:	14400008 	bnez	v0,f4c <func_80B9C02C+0xa0>
     f2c:	8fa70020 	lw	a3,32(sp)
     f30:	c4e60150 	lwc1	$f6,336(a3)
     f34:	00e02025 	move	a0,a3
     f38:	e4e6017c 	swc1	$f6,380(a3)
     f3c:	0c000000 	jal	0 <func_80B9B180>
     f40:	8fa50024 	lw	a1,36(sp)
     f44:	1000000f 	b	f84 <func_80B9C02C+0xd8>
     f48:	8fbf0014 	lw	ra,20(sp)
     f4c:	8c680680 	lw	t0,1664(v1)
     f50:	2401ffef 	li	at,-17
     f54:	44804000 	mtc1	zero,$f8
     f58:	01014824 	and	t1,t0,at
     f5c:	ac690680 	sw	t1,1664(v1)
     f60:	10000007 	b	f80 <func_80B9C02C+0xd4>
     f64:	e4e80150 	swc1	$f8,336(a3)
     f68:	8c6a0680 	lw	t2,1664(v1)
     f6c:	44805000 	mtc1	zero,$f10
     f70:	2401ffef 	li	at,-17
     f74:	01415824 	and	t3,t2,at
     f78:	ac6b0680 	sw	t3,1664(v1)
     f7c:	e4ea0150 	swc1	$f10,336(a3)
     f80:	8fbf0014 	lw	ra,20(sp)
     f84:	27bd0020 	addiu	sp,sp,32
     f88:	03e00008 	jr	ra
     f8c:	00000000 	nop

00000f90 <func_80B9C110>:
     f90:	afa50004 	sw	a1,4(sp)
     f94:	44800000 	mtc1	zero,$f0
     f98:	948e0168 	lhu	t6,360(a0)
     f9c:	3c01bf80 	lui	at,0xbf80
     fa0:	44812000 	mtc1	at,$f4
     fa4:	3c180000 	lui	t8,0x0
     fa8:	27180000 	addiu	t8,t8,0
     fac:	35cf0008 	ori	t7,t6,0x8
     fb0:	a48f0168 	sh	t7,360(a0)
     fb4:	ac980164 	sw	t8,356(a0)
     fb8:	e4800064 	swc1	$f0,100(a0)
     fbc:	e4800060 	swc1	$f0,96(a0)
     fc0:	e480005c 	swc1	$f0,92(a0)
     fc4:	03e00008 	jr	ra
     fc8:	e484006c 	swc1	$f4,108(a0)

00000fcc <func_80B9C14C>:
     fcc:	27bdffd0 	addiu	sp,sp,-48
     fd0:	afbf001c 	sw	ra,28(sp)
     fd4:	afb10018 	sw	s1,24(sp)
     fd8:	afb00014 	sw	s0,20(sp)
     fdc:	8cae1c44 	lw	t6,7236(a1)
     fe0:	00808025 	move	s0,a0
     fe4:	00a08825 	move	s1,a1
     fe8:	afae0028 	sw	t6,40(sp)
     fec:	948f0168 	lhu	t7,360(a0)
     ff0:	35f80004 	ori	t8,t7,0x4
     ff4:	0c000000 	jal	0 <func_80B9B180>
     ff8:	a4980168 	sh	t8,360(a0)
     ffc:	02002025 	move	a0,s0
    1000:	0c000000 	jal	0 <func_80B9B180>
    1004:	02202825 	move	a1,s1
    1008:	5040004b 	beqzl	v0,1138 <func_80B9C14C+0x16c>
    100c:	860f01bc 	lh	t7,444(s0)
    1010:	861901bc 	lh	t9,444(s0)
    1014:	24010032 	li	at,50
    1018:	02002025 	move	a0,s0
    101c:	00194080 	sll	t0,t9,0x2
    1020:	02084821 	addu	t1,s0,t0
    1024:	8d250180 	lw	a1,384(t1)
    1028:	14a10005 	bne	a1,at,1040 <func_80B9C14C+0x74>
    102c:	00000000 	nop
    1030:	0c000000 	jal	0 <func_80B9B180>
    1034:	02202825 	move	a1,s1
    1038:	1000005d 	b	11b0 <func_80B9C14C+0x1e4>
    103c:	8fbf001c 	lw	ra,28(sp)
    1040:	0c000000 	jal	0 <func_80B9B180>
    1044:	262407c0 	addiu	a0,s1,1984
    1048:	10400035 	beqz	v0,1120 <func_80B9C14C+0x154>
    104c:	00402025 	move	a0,v0
    1050:	0c000000 	jal	0 <func_80B9B180>
    1054:	afa20024 	sw	v0,36(sp)
    1058:	0c000000 	jal	0 <func_80B9B180>
    105c:	8fa40024 	lw	a0,36(sp)
    1060:	860a016a 	lh	t2,362(s0)
    1064:	8fa20028 	lw	v0,40(sp)
    1068:	5d400027 	bgtzl	t2,1108 <func_80B9C14C+0x13c>
    106c:	8c4d0680 	lw	t5,1664(v0)
    1070:	c6000150 	lwc1	$f0,336(s0)
    1074:	3c010000 	lui	at,0x0
    1078:	c4240000 	lwc1	$f4,0(at)
    107c:	46000005 	abs.s	$f0,$f0
    1080:	4600203c 	c.lt.s	$f4,$f0
    1084:	00000000 	nop
    1088:	4502001f 	bc1fl	1108 <func_80B9C14C+0x13c>
    108c:	8c4d0680 	lw	t5,1664(v0)
    1090:	0c000000 	jal	0 <func_80B9B180>
    1094:	02002025 	move	a0,s0
    1098:	10400012 	beqz	v0,10e4 <func_80B9C14C+0x118>
    109c:	02002025 	move	a0,s0
    10a0:	8fa50024 	lw	a1,36(sp)
    10a4:	0c000000 	jal	0 <func_80B9B180>
    10a8:	02203025 	move	a2,s1
    10ac:	1040000d 	beqz	v0,10e4 <func_80B9C14C+0x118>
    10b0:	02202025 	move	a0,s1
    10b4:	86050158 	lh	a1,344(s0)
    10b8:	8e060150 	lw	a2,336(s0)
    10bc:	0c000000 	jal	0 <func_80B9B180>
    10c0:	02003825 	move	a3,s0
    10c4:	14400007 	bnez	v0,10e4 <func_80B9C14C+0x118>
    10c8:	02002025 	move	a0,s0
    10cc:	c6060150 	lwc1	$f6,336(s0)
    10d0:	02202825 	move	a1,s1
    10d4:	0c000000 	jal	0 <func_80B9B180>
    10d8:	e606017c 	swc1	$f6,380(s0)
    10dc:	10000034 	b	11b0 <func_80B9C14C+0x1e4>
    10e0:	8fbf001c 	lw	ra,28(sp)
    10e4:	8fa20028 	lw	v0,40(sp)
    10e8:	2401ffef 	li	at,-17
    10ec:	44804000 	mtc1	zero,$f8
    10f0:	8c4b0680 	lw	t3,1664(v0)
    10f4:	01616024 	and	t4,t3,at
    10f8:	ac4c0680 	sw	t4,1664(v0)
    10fc:	1000002b 	b	11ac <func_80B9C14C+0x1e0>
    1100:	e6080150 	swc1	$f8,336(s0)
    1104:	8c4d0680 	lw	t5,1664(v0)
    1108:	2401ffef 	li	at,-17
    110c:	44805000 	mtc1	zero,$f10
    1110:	01a17024 	and	t6,t5,at
    1114:	ac4e0680 	sw	t6,1664(v0)
    1118:	10000024 	b	11ac <func_80B9C14C+0x1e0>
    111c:	e60a0150 	swc1	$f10,336(s0)
    1120:	02002025 	move	a0,s0
    1124:	0c000000 	jal	0 <func_80B9B180>
    1128:	02202825 	move	a1,s1
    112c:	10000020 	b	11b0 <func_80B9C14C+0x1e4>
    1130:	8fbf001c 	lw	ra,28(sp)
    1134:	860f01bc 	lh	t7,444(s0)
    1138:	24010032 	li	at,50
    113c:	02002025 	move	a0,s0
    1140:	000fc080 	sll	t8,t7,0x2
    1144:	0218c821 	addu	t9,s0,t8
    1148:	8f250180 	lw	a1,384(t9)
    114c:	14a10005 	bne	a1,at,1164 <func_80B9C14C+0x198>
    1150:	00000000 	nop
    1154:	0c000000 	jal	0 <func_80B9B180>
    1158:	02202825 	move	a1,s1
    115c:	10000014 	b	11b0 <func_80B9C14C+0x1e4>
    1160:	8fbf001c 	lw	ra,28(sp)
    1164:	0c000000 	jal	0 <func_80B9B180>
    1168:	262407c0 	addiu	a0,s1,1984
    116c:	1040000c 	beqz	v0,11a0 <func_80B9C14C+0x1d4>
    1170:	00402025 	move	a0,v0
    1174:	8c48015c 	lw	t0,348(v0)
    1178:	31090001 	andi	t1,t0,0x1
    117c:	51200009 	beqzl	t1,11a4 <func_80B9C14C+0x1d8>
    1180:	02002025 	move	a0,s0
    1184:	0c000000 	jal	0 <func_80B9B180>
    1188:	afa20024 	sw	v0,36(sp)
    118c:	0c000000 	jal	0 <func_80B9B180>
    1190:	8fa40024 	lw	a0,36(sp)
    1194:	c6100080 	lwc1	$f16,128(s0)
    1198:	10000004 	b	11ac <func_80B9C14C+0x1e0>
    119c:	e6100028 	swc1	$f16,40(s0)
    11a0:	02002025 	move	a0,s0
    11a4:	0c000000 	jal	0 <func_80B9B180>
    11a8:	02202825 	move	a1,s1
    11ac:	8fbf001c 	lw	ra,28(sp)
    11b0:	8fb00014 	lw	s0,20(sp)
    11b4:	8fb10018 	lw	s1,24(sp)
    11b8:	03e00008 	jr	ra
    11bc:	27bd0030 	addiu	sp,sp,48

000011c0 <func_80B9C340>:
    11c0:	afa50004 	sw	a1,4(sp)
    11c4:	948e0168 	lhu	t6,360(a0)
    11c8:	44802000 	mtc1	zero,$f4
    11cc:	3c180000 	lui	t8,0x0
    11d0:	27180000 	addiu	t8,t8,0
    11d4:	35cf0020 	ori	t7,t6,0x20
    11d8:	a48f0168 	sh	t7,360(a0)
    11dc:	ac980164 	sw	t8,356(a0)
    11e0:	03e00008 	jr	ra
    11e4:	e484006c 	swc1	$f4,108(a0)

000011e8 <func_80B9C368>:
    11e8:	27bdffd0 	addiu	sp,sp,-48
    11ec:	3c014000 	lui	at,0x4000
    11f0:	44811000 	mtc1	at,$f2
    11f4:	afbf001c 	sw	ra,28(sp)
    11f8:	afb10018 	sw	s1,24(sp)
    11fc:	afb00014 	sw	s0,20(sp)
    1200:	3c013f00 	lui	at,0x3f00
    1204:	44813000 	mtc1	at,$f6
    1208:	c4840174 	lwc1	$f4,372(a0)
    120c:	8ca31c44 	lw	v1,7236(a1)
    1210:	948e0168 	lhu	t6,360(a0)
    1214:	46062200 	add.s	$f8,$f4,$f6
    1218:	00a08825 	move	s1,a1
    121c:	35cf0010 	ori	t7,t6,0x10
    1220:	00808025 	move	s0,a0
    1224:	e4880174 	swc1	$f8,372(a0)
    1228:	c4800174 	lwc1	$f0,372(a0)
    122c:	a48f0168 	sh	t7,360(a0)
    1230:	3c0541a0 	lui	a1,0x41a0
    1234:	4600103c 	c.lt.s	$f2,$f0
    1238:	00000000 	nop
    123c:	45020004 	bc1fl	1250 <func_80B9C368+0x68>
    1240:	e6000174 	swc1	$f0,372(s0)
    1244:	10000002 	b	1250 <func_80B9C368+0x68>
    1248:	e4820174 	swc1	$f2,372(a0)
    124c:	e6000174 	swc1	$f0,372(s0)
    1250:	8e060174 	lw	a2,372(s0)
    1254:	afa30028 	sw	v1,40(sp)
    1258:	0c000000 	jal	0 <func_80B9B180>
    125c:	26040178 	addiu	a0,s0,376
    1260:	44806000 	mtc1	zero,$f12
    1264:	c60a017c 	lwc1	$f10,380(s0)
    1268:	8fa30028 	lw	v1,40(sp)
    126c:	00403025 	move	a2,v0
    1270:	460a603e 	c.le.s	$f12,$f10
    1274:	3c01bf80 	lui	at,0xbf80
    1278:	45020006 	bc1fl	1294 <func_80B9C368+0xac>
    127c:	44811000 	mtc1	at,$f2
    1280:	3c013f80 	lui	at,0x3f80
    1284:	44811000 	mtc1	at,$f2
    1288:	10000004 	b	129c <func_80B9C368+0xb4>
    128c:	c6100178 	lwc1	$f16,376(s0)
    1290:	44811000 	mtc1	at,$f2
    1294:	00000000 	nop
    1298:	c6100178 	lwc1	$f16,376(s0)
    129c:	c604016c 	lwc1	$f4,364(s0)
    12a0:	c6120008 	lwc1	$f18,8(s0)
    12a4:	46101002 	mul.s	$f0,$f2,$f16
    12a8:	c6100170 	lwc1	$f16,368(s0)
    12ac:	c60a0010 	lwc1	$f10,16(s0)
    12b0:	02002025 	move	a0,s0
    12b4:	02202825 	move	a1,s1
    12b8:	46040182 	mul.s	$f6,$f0,$f4
    12bc:	00000000 	nop
    12c0:	46100102 	mul.s	$f4,$f0,$f16
    12c4:	46069200 	add.s	$f8,$f18,$f6
    12c8:	46045480 	add.s	$f18,$f10,$f4
    12cc:	e6080024 	swc1	$f8,36(s0)
    12d0:	e612002c 	swc1	$f18,44(s0)
    12d4:	afa60020 	sw	a2,32(sp)
    12d8:	0c000000 	jal	0 <func_80B9B180>
    12dc:	afa30028 	sw	v1,40(sp)
    12e0:	44806000 	mtc1	zero,$f12
    12e4:	8fa30028 	lw	v1,40(sp)
    12e8:	14400011 	bnez	v0,1330 <func_80B9C368+0x148>
    12ec:	8fa60020 	lw	a2,32(sp)
    12f0:	c6060024 	lwc1	$f6,36(s0)
    12f4:	c608002c 	lwc1	$f8,44(s0)
    12f8:	2401ffef 	li	at,-17
    12fc:	e6060008 	swc1	$f6,8(s0)
    1300:	e6080010 	swc1	$f8,16(s0)
    1304:	8c780680 	lw	t8,1664(v1)
    1308:	02002025 	move	a0,s0
    130c:	02202825 	move	a1,s1
    1310:	0301c824 	and	t9,t8,at
    1314:	ac790680 	sw	t9,1664(v1)
    1318:	e60c0150 	swc1	$f12,336(s0)
    131c:	e60c0178 	swc1	$f12,376(s0)
    1320:	0c000000 	jal	0 <func_80B9B180>
    1324:	e60c0174 	swc1	$f12,372(s0)
    1328:	1000002f 	b	13e8 <func_80B9C368+0x200>
    132c:	02002025 	move	a0,s0
    1330:	10c0002c 	beqz	a2,13e4 <func_80B9C368+0x1fc>
    1334:	02202025 	move	a0,s1
    1338:	8e231c44 	lw	v1,7236(s1)
    133c:	86050158 	lh	a1,344(s0)
    1340:	8e060150 	lw	a2,336(s0)
    1344:	02003825 	move	a3,s0
    1348:	0c000000 	jal	0 <func_80B9B180>
    134c:	afa30028 	sw	v1,40(sp)
    1350:	44806000 	mtc1	zero,$f12
    1354:	10400007 	beqz	v0,1374 <func_80B9C368+0x18c>
    1358:	8fa30028 	lw	v1,40(sp)
    135c:	02002025 	move	a0,s0
    1360:	24052835 	li	a1,10293
    1364:	0c000000 	jal	0 <func_80B9B180>
    1368:	afa30028 	sw	v1,40(sp)
    136c:	44806000 	mtc1	zero,$f12
    1370:	8fa30028 	lw	v1,40(sp)
    1374:	c6100024 	lwc1	$f16,36(s0)
    1378:	c60a002c 	lwc1	$f10,44(s0)
    137c:	2401ffef 	li	at,-17
    1380:	e6100008 	swc1	$f16,8(s0)
    1384:	e60a0010 	swc1	$f10,16(s0)
    1388:	8c680680 	lw	t0,1664(v1)
    138c:	240a000a 	li	t2,10
    1390:	02202825 	move	a1,s1
    1394:	01014824 	and	t1,t0,at
    1398:	ac690680 	sw	t1,1664(v1)
    139c:	860b01bc 	lh	t3,444(s0)
    13a0:	e60c0150 	swc1	$f12,336(s0)
    13a4:	e60c0178 	swc1	$f12,376(s0)
    13a8:	000b6080 	sll	t4,t3,0x2
    13ac:	e60c0174 	swc1	$f12,372(s0)
    13b0:	a60a016a 	sh	t2,362(s0)
    13b4:	020c6821 	addu	t5,s0,t4
    13b8:	8dae0180 	lw	t6,384(t5)
    13bc:	24010032 	li	at,50
    13c0:	02002025 	move	a0,s0
    13c4:	15c10005 	bne	t6,at,13dc <func_80B9C368+0x1f4>
    13c8:	00000000 	nop
    13cc:	0c000000 	jal	0 <func_80B9B180>
    13d0:	02002025 	move	a0,s0
    13d4:	10000004 	b	13e8 <func_80B9C368+0x200>
    13d8:	02002025 	move	a0,s0
    13dc:	0c000000 	jal	0 <func_80B9B180>
    13e0:	02202825 	move	a1,s1
    13e4:	02002025 	move	a0,s0
    13e8:	0c000000 	jal	0 <func_80B9B180>
    13ec:	2405200a 	li	a1,8202
    13f0:	8fbf001c 	lw	ra,28(sp)
    13f4:	8fb00014 	lw	s0,20(sp)
    13f8:	8fb10018 	lw	s1,24(sp)
    13fc:	03e00008 	jr	ra
    1400:	27bd0030 	addiu	sp,sp,48

00001404 <func_80B9C584>:
    1404:	27bdffe8 	addiu	sp,sp,-24
    1408:	afbf0014 	sw	ra,20(sp)
    140c:	44800000 	mtc1	zero,$f0
    1410:	948e0168 	lhu	t6,360(a0)
    1414:	3c01bf80 	lui	at,0xbf80
    1418:	44812000 	mtc1	at,$f4
    141c:	35cf0080 	ori	t7,t6,0x80
    1420:	a48f0168 	sh	t7,360(a0)
    1424:	e4800064 	swc1	$f0,100(a0)
    1428:	e4800060 	swc1	$f0,96(a0)
    142c:	e480005c 	swc1	$f0,92(a0)
    1430:	e484006c 	swc1	$f4,108(a0)
    1434:	0c000000 	jal	0 <func_80B9B180>
    1438:	afa40018 	sw	a0,24(sp)
    143c:	8fa40018 	lw	a0,24(sp)
    1440:	3c180000 	lui	t8,0x0
    1444:	27180000 	addiu	t8,t8,0
    1448:	ac980164 	sw	t8,356(a0)
    144c:	8fbf0014 	lw	ra,20(sp)
    1450:	27bd0018 	addiu	sp,sp,24
    1454:	03e00008 	jr	ra
    1458:	00000000 	nop

0000145c <func_80B9C5DC>:
    145c:	27bdffe0 	addiu	sp,sp,-32
    1460:	afbf001c 	sw	ra,28(sp)
    1464:	afb10018 	sw	s1,24(sp)
    1468:	afb00014 	sw	s0,20(sp)
    146c:	948e0168 	lhu	t6,360(a0)
    1470:	c4800150 	lwc1	$f0,336(a0)
    1474:	8ca21c44 	lw	v0,7236(a1)
    1478:	35cf0040 	ori	t7,t6,0x40
    147c:	a48f0168 	sh	t7,360(a0)
    1480:	3c010000 	lui	at,0x0
    1484:	c4240000 	lwc1	$f4,0(at)
    1488:	46000005 	abs.s	$f0,$f0
    148c:	00808025 	move	s0,a0
    1490:	4600203c 	c.lt.s	$f4,$f0
    1494:	00a08825 	move	s1,a1
    1498:	45000007 	bc1f	14b8 <func_80B9C5DC+0x5c>
    149c:	00000000 	nop
    14a0:	44803000 	mtc1	zero,$f6
    14a4:	2401ffef 	li	at,-17
    14a8:	e4860150 	swc1	$f6,336(a0)
    14ac:	8c580680 	lw	t8,1664(v0)
    14b0:	0301c824 	and	t9,t8,at
    14b4:	ac590680 	sw	t9,1664(v0)
    14b8:	0c000000 	jal	0 <func_80B9B180>
    14bc:	02002025 	move	a0,s0
    14c0:	02002025 	move	a0,s0
    14c4:	0c000000 	jal	0 <func_80B9B180>
    14c8:	02202825 	move	a1,s1
    14cc:	5040001f 	beqzl	v0,154c <func_80B9C5DC+0xf0>
    14d0:	8fbf001c 	lw	ra,28(sp)
    14d4:	860801bc 	lh	t0,444(s0)
    14d8:	24010032 	li	at,50
    14dc:	02202825 	move	a1,s1
    14e0:	00084880 	sll	t1,t0,0x2
    14e4:	02095021 	addu	t2,s0,t1
    14e8:	8d4b0180 	lw	t3,384(t2)
    14ec:	02002025 	move	a0,s0
    14f0:	15610005 	bne	t3,at,1508 <func_80B9C5DC+0xac>
    14f4:	00000000 	nop
    14f8:	0c000000 	jal	0 <func_80B9B180>
    14fc:	02002025 	move	a0,s0
    1500:	10000004 	b	1514 <func_80B9C5DC+0xb8>
    1504:	02002025 	move	a0,s0
    1508:	0c000000 	jal	0 <func_80B9B180>
    150c:	02202825 	move	a1,s1
    1510:	02002025 	move	a0,s0
    1514:	0c000000 	jal	0 <func_80B9B180>
    1518:	24052835 	li	a1,10293
    151c:	860c01bc 	lh	t4,444(s0)
    1520:	262407c0 	addiu	a0,s1,1984
    1524:	000c6880 	sll	t5,t4,0x2
    1528:	020d1021 	addu	v0,s0,t5
    152c:	8c450194 	lw	a1,404(v0)
    1530:	0c000000 	jal	0 <func_80B9B180>
    1534:	8c460180 	lw	a2,384(v0)
    1538:	24450800 	addiu	a1,v0,2048
    153c:	30a5ffff 	andi	a1,a1,0xffff
    1540:	0c000000 	jal	0 <func_80B9B180>
    1544:	02002025 	move	a0,s0
    1548:	8fbf001c 	lw	ra,28(sp)
    154c:	8fb00014 	lw	s0,20(sp)
    1550:	8fb10018 	lw	s1,24(sp)
    1554:	03e00008 	jr	ra
    1558:	27bd0020 	addiu	sp,sp,32

0000155c <ObjOshihiki_Update>:
    155c:	27bdffe8 	addiu	sp,sp,-24
    1560:	afbf0014 	sw	ra,20(sp)
    1564:	afa5001c 	sw	a1,28(sp)
    1568:	948e0168 	lhu	t6,360(a0)
    156c:	8482016a 	lh	v0,362(a0)
    1570:	00803025 	move	a2,a0
    1574:	31d8ff00 	andi	t8,t6,0xff00
    1578:	a4980168 	sh	t8,360(a0)
    157c:	37190100 	ori	t9,t8,0x100
    1580:	18400003 	blez	v0,1590 <ObjOshihiki_Update+0x34>
    1584:	a4990168 	sh	t9,360(a0)
    1588:	2448ffff 	addiu	t0,v0,-1
    158c:	a488016a 	sh	t0,362(a0)
    1590:	84c90158 	lh	t1,344(a2)
    1594:	a4c90032 	sh	t1,50(a2)
    1598:	84c40032 	lh	a0,50(a2)
    159c:	0c000000 	jal	0 <func_80B9B180>
    15a0:	afa60018 	sw	a2,24(sp)
    15a4:	8fa60018 	lw	a2,24(sp)
    15a8:	e4c0016c 	swc1	$f0,364(a2)
    15ac:	0c000000 	jal	0 <func_80B9B180>
    15b0:	84c40032 	lh	a0,50(a2)
    15b4:	8fa60018 	lw	a2,24(sp)
    15b8:	8cc20164 	lw	v0,356(a2)
    15bc:	e4c00170 	swc1	$f0,368(a2)
    15c0:	00c02025 	move	a0,a2
    15c4:	50400004 	beqzl	v0,15d8 <ObjOshihiki_Update+0x7c>
    15c8:	8fbf0014 	lw	ra,20(sp)
    15cc:	0040f809 	jalr	v0
    15d0:	8fa5001c 	lw	a1,28(sp)
    15d4:	8fbf0014 	lw	ra,20(sp)
    15d8:	27bd0018 	addiu	sp,sp,24
    15dc:	03e00008 	jr	ra
    15e0:	00000000 	nop

000015e4 <ObjOshihiki_Draw>:
    15e4:	27bdffa8 	addiu	sp,sp,-88
    15e8:	afbf001c 	sw	ra,28(sp)
    15ec:	afb00018 	sw	s0,24(sp)
    15f0:	afa5005c 	sw	a1,92(sp)
    15f4:	8ca50000 	lw	a1,0(a1)
    15f8:	00808025 	move	s0,a0
    15fc:	3c060000 	lui	a2,0x0
    1600:	24c60000 	addiu	a2,a2,0
    1604:	27a4003c 	addiu	a0,sp,60
    1608:	24070509 	li	a3,1289
    160c:	0c000000 	jal	0 <func_80B9B180>
    1610:	afa5004c 	sw	a1,76(sp)
    1614:	02002025 	move	a0,s0
    1618:	0c000000 	jal	0 <func_80B9B180>
    161c:	8fa5005c 	lw	a1,92(sp)
    1620:	1040000e 	beqz	v0,165c <ObjOshihiki_Draw+0x78>
    1624:	8fa8004c 	lw	t0,76(sp)
    1628:	3c014120 	lui	at,0x4120
    162c:	44810000 	mtc1	at,$f0
    1630:	c60401c4 	lwc1	$f4,452(s0)
    1634:	c60601c8 	lwc1	$f6,456(s0)
    1638:	44807000 	mtc1	zero,$f14
    163c:	46002302 	mul.s	$f12,$f4,$f0
    1640:	afa8004c 	sw	t0,76(sp)
    1644:	24070001 	li	a3,1
    1648:	46003202 	mul.s	$f8,$f6,$f0
    164c:	44064000 	mfc1	a2,$f8
    1650:	0c000000 	jal	0 <func_80B9B180>
    1654:	00000000 	nop
    1658:	8fa8004c 	lw	t0,76(sp)
    165c:	960f0168 	lhu	t7,360(s0)
    1660:	31f8feff 	andi	t8,t7,0xfeff
    1664:	a6180168 	sh	t8,360(s0)
    1668:	8fb9005c 	lw	t9,92(sp)
    166c:	8f240000 	lw	a0,0(t9)
    1670:	0c000000 	jal	0 <func_80B9B180>
    1674:	afa8004c 	sw	t0,76(sp)
    1678:	8fa8004c 	lw	t0,76(sp)
    167c:	3c0adb06 	lui	t2,0xdb06
    1680:	354a0020 	ori	t2,t2,0x20
    1684:	8d0202c0 	lw	v0,704(t0)
    1688:	3c0e0000 	lui	t6,0x0
    168c:	3c0100ff 	lui	at,0xff
    1690:	24490008 	addiu	t1,v0,8
    1694:	ad0902c0 	sw	t1,704(t0)
    1698:	ac4a0000 	sw	t2,0(v0)
    169c:	8e0401cc 	lw	a0,460(s0)
    16a0:	3421ffff 	ori	at,at,0xffff
    16a4:	3c0ada38 	lui	t2,0xda38
    16a8:	00045900 	sll	t3,a0,0x4
    16ac:	000b6702 	srl	t4,t3,0x1c
    16b0:	000c6880 	sll	t5,t4,0x2
    16b4:	01cd7021 	addu	t6,t6,t5
    16b8:	8dce0000 	lw	t6,0(t6)
    16bc:	00817824 	and	t7,a0,at
    16c0:	3c018000 	lui	at,0x8000
    16c4:	01cfc021 	addu	t8,t6,t7
    16c8:	0301c821 	addu	t9,t8,at
    16cc:	ac590004 	sw	t9,4(v0)
    16d0:	8d0202c0 	lw	v0,704(t0)
    16d4:	354a0003 	ori	t2,t2,0x3
    16d8:	3c050000 	lui	a1,0x0
    16dc:	24490008 	addiu	t1,v0,8
    16e0:	ad0902c0 	sw	t1,704(t0)
    16e4:	ac4a0000 	sw	t2,0(v0)
    16e8:	8fab005c 	lw	t3,92(sp)
    16ec:	24a50000 	addiu	a1,a1,0
    16f0:	2406051c 	li	a2,1308
    16f4:	8d640000 	lw	a0,0(t3)
    16f8:	afa8004c 	sw	t0,76(sp)
    16fc:	0c000000 	jal	0 <func_80B9B180>
    1700:	afa20034 	sw	v0,52(sp)
    1704:	8fa30034 	lw	v1,52(sp)
    1708:	8fa8004c 	lw	t0,76(sp)
    170c:	ac620004 	sw	v0,4(v1)
    1710:	8fac005c 	lw	t4,92(sp)
    1714:	958d00a4 	lhu	t5,164(t4)
    1718:	2da1000c 	sltiu	at,t5,12
    171c:	10200016 	beqz	at,1778 <L80B9C8F8>
    1720:	000d6880 	sll	t5,t5,0x2
    1724:	3c010000 	lui	at,0x0
    1728:	002d0821 	addu	at,at,t5
    172c:	8c2d0000 	lw	t5,0(at)
    1730:	01a00008 	jr	t5
    1734:	00000000 	nop

00001738 <L80B9C8B8>:
    1738:	8d0202c0 	lw	v0,704(t0)
    173c:	3c0ffb00 	lui	t7,0xfb00
    1740:	244e0008 	addiu	t6,v0,8
    1744:	ad0e02c0 	sw	t6,704(t0)
    1748:	ac4f0000 	sw	t7,0(v0)
    174c:	920b01d1 	lbu	t3,465(s0)
    1750:	921901d0 	lbu	t9,464(s0)
    1754:	920f01d2 	lbu	t7,466(s0)
    1758:	000b6400 	sll	t4,t3,0x10
    175c:	00194e00 	sll	t1,t9,0x18
    1760:	012c6825 	or	t5,t1,t4
    1764:	000fc200 	sll	t8,t7,0x8
    1768:	01b8c825 	or	t9,t5,t8
    176c:	372a00ff 	ori	t2,t9,0xff
    1770:	10000014 	b	17c4 <L80B9C8F8+0x4c>
    1774:	ac4a0004 	sw	t2,4(v0)

00001778 <L80B9C8F8>:
    1778:	8d0202c0 	lw	v0,704(t0)
    177c:	3c09fb00 	lui	t1,0xfb00
    1780:	3c030000 	lui	v1,0x0
    1784:	244b0008 	addiu	t3,v0,8
    1788:	ad0b02c0 	sw	t3,704(t0)
    178c:	ac490000 	sw	t1,0(v0)
    1790:	8c630000 	lw	v1,0(v1)
    1794:	846c1172 	lh	t4,4466(v1)
    1798:	8478116e 	lh	t8,4462(v1)
    179c:	846b1170 	lh	t3,4464(v1)
    17a0:	318e00ff 	andi	t6,t4,0xff
    17a4:	000e7a00 	sll	t7,t6,0x8
    17a8:	0018ce00 	sll	t9,t8,0x18
    17ac:	316900ff 	andi	t1,t3,0xff
    17b0:	00096400 	sll	t4,t1,0x10
    17b4:	01f95025 	or	t2,t7,t9
    17b8:	014c7025 	or	t6,t2,t4
    17bc:	35cd00ff 	ori	t5,t6,0xff
    17c0:	ac4d0004 	sw	t5,4(v0)
    17c4:	8d0202c0 	lw	v0,704(t0)
    17c8:	3c190500 	lui	t9,0x500
    17cc:	27394cd0 	addiu	t9,t9,19664
    17d0:	24580008 	addiu	t8,v0,8
    17d4:	ad1802c0 	sw	t8,704(t0)
    17d8:	3c0fde00 	lui	t7,0xde00
    17dc:	ac4f0000 	sw	t7,0(v0)
    17e0:	ac590004 	sw	t9,4(v0)
    17e4:	8fab005c 	lw	t3,92(sp)
    17e8:	3c060000 	lui	a2,0x0
    17ec:	24c60000 	addiu	a2,a2,0
    17f0:	27a4003c 	addiu	a0,sp,60
    17f4:	24070536 	li	a3,1334
    17f8:	0c000000 	jal	0 <func_80B9B180>
    17fc:	8d650000 	lw	a1,0(t3)
    1800:	8fbf001c 	lw	ra,28(sp)
    1804:	8fb00018 	lw	s0,24(sp)
    1808:	27bd0058 	addiu	sp,sp,88
    180c:	03e00008 	jr	ra
    1810:	00000000 	nop
	...
