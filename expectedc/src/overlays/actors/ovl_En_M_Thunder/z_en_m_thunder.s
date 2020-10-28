
build/src/overlays/actors/ovl_En_M_Thunder/z_en_m_thunder.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <func_80A9EFE0>:
       0:	03e00008 	jr	ra
       4:	ac8501c0 	sw	a1,448(a0)

00000008 <EnMThunder_Init>:
       8:	27bdffc0 	addiu	sp,sp,-64
       c:	afb00024 	sw	s0,36(sp)
      10:	00808025 	move	s0,a0
      14:	afbf002c 	sw	ra,44(sp)
      18:	afb10028 	sw	s1,40(sp)
      1c:	00a03025 	move	a2,a1
      20:	8cb11c44 	lw	s1,7236(a1)
      24:	00a02025 	move	a0,a1
      28:	2605014c 	addiu	a1,s0,332
      2c:	afa50030 	sw	a1,48(sp)
      30:	0c000000 	jal	0 <func_80A9EFE0>
      34:	afa60044 	sw	a2,68(sp)
      38:	3c070000 	lui	a3,0x0
      3c:	8fa50030 	lw	a1,48(sp)
      40:	24e70000 	addiu	a3,a3,0
      44:	8fa40044 	lw	a0,68(sp)
      48:	0c000000 	jal	0 <func_80A9EFE0>
      4c:	02003025 	move	a2,s0
      50:	c6040024 	lwc1	$f4,36(s0)
      54:	c6080028 	lwc1	$f8,40(s0)
      58:	c610002c 	lwc1	$f16,44(s0)
      5c:	4600218d 	trunc.w.s	$f6,$f4
      60:	860f001c 	lh	t7,28(s0)
      64:	2604019c 	addiu	a0,s0,412
      68:	4600428d 	trunc.w.s	$f10,$f8
      6c:	25f8ffff 	addiu	t8,t7,-1
      70:	44053000 	mfc1	a1,$f6
      74:	4600848d 	trunc.w.s	$f18,$f16
      78:	44065000 	mfc1	a2,$f10
      7c:	a21801c7 	sb	t8,455(s0)
      80:	240a00ff 	li	t2,255
      84:	44079000 	mfc1	a3,$f18
      88:	240b00ff 	li	t3,255
      8c:	240c00ff 	li	t4,255
      90:	00052c00 	sll	a1,a1,0x10
      94:	00063400 	sll	a2,a2,0x10
      98:	00073c00 	sll	a3,a3,0x10
      9c:	00073c03 	sra	a3,a3,0x10
      a0:	00063403 	sra	a2,a2,0x10
      a4:	00052c03 	sra	a1,a1,0x10
      a8:	afac0018 	sw	t4,24(sp)
      ac:	afab0014 	sw	t3,20(sp)
      b0:	afaa0010 	sw	t2,16(sp)
      b4:	afa40030 	sw	a0,48(sp)
      b8:	0c000000 	jal	0 <func_80A9EFE0>
      bc:	afa0001c 	sw	zero,28(sp)
      c0:	8fa40044 	lw	a0,68(sp)
      c4:	8fa60030 	lw	a2,48(sp)
      c8:	0c000000 	jal	0 <func_80A9EFE0>
      cc:	248507a8 	addiu	a1,a0,1960
      d0:	44800000 	mtc1	zero,$f0
      d4:	240d0028 	li	t5,40
      d8:	240effec 	li	t6,-20
      dc:	240f0008 	li	t7,8
      e0:	ae020198 	sw	v0,408(s0)
      e4:	a600018c 	sh	zero,396(s0)
      e8:	a60d018e 	sh	t5,398(s0)
      ec:	a60e0190 	sh	t6,400(s0)
      f0:	a60f01c4 	sh	t7,452(s0)
      f4:	e60001b4 	swc1	$f0,436(s0)
      f8:	8e390908 	lw	t9,2312(s1)
      fc:	34018000 	li	at,0x8000
     100:	240affff 	li	t2,-1
     104:	ae190024 	sw	t9,36(s0)
     108:	8e38090c 	lw	t8,2316(s1)
     10c:	3c053dcc 	lui	a1,0x3dcc
     110:	34a5cccd 	ori	a1,a1,0xcccd
     114:	ae180028 	sw	t8,40(s0)
     118:	8e390910 	lw	t9,2320(s1)
     11c:	e60001ac 	swc1	$f0,428(s0)
     120:	e60001bc 	swc1	$f0,444(s0)
     124:	ae19002c 	sw	t9,44(s0)
     128:	862800b6 	lh	t0,182(s1)
     12c:	a20a0003 	sb	t2,3(s0)
     130:	02002025 	move	a0,s0
     134:	01014821 	addu	t1,t0,at
     138:	0c000000 	jal	0 <func_80A9EFE0>
     13c:	a60900b6 	sh	t1,182(s0)
     140:	a20001ca 	sb	zero,458(s0)
     144:	8e2b0680 	lw	t3,1664(s1)
     148:	3c020000 	lui	v0,0x0
     14c:	02002025 	move	a0,s0
     150:	000b6380 	sll	t4,t3,0xe
     154:	05810054 	bgez	t4,2a8 <EnMThunder_Init+0x2a0>
     158:	3c050000 	lui	a1,0x0
     15c:	24420000 	addiu	v0,v0,0
     160:	904d003a 	lbu	t5,58(v0)
     164:	11a0000e 	beqz	t5,1a0 <EnMThunder_Init+0x198>
     168:	00000000 	nop
     16c:	844e13f0 	lh	t6,5104(v0)
     170:	15c0000b 	bnez	t6,1a0 <EnMThunder_Init+0x198>
     174:	00000000 	nop
     178:	8602001c 	lh	v0,28(s0)
     17c:	8fa40044 	lw	a0,68(sp)
     180:	00003025 	move	a2,zero
     184:	3042ff00 	andi	v0,v0,0xff00
     188:	00021203 	sra	v0,v0,0x8
     18c:	1040001d 	beqz	v0,204 <EnMThunder_Init+0x1fc>
     190:	00022c00 	sll	a1,v0,0x10
     194:	0c000000 	jal	0 <func_80A9EFE0>
     198:	00052c03 	sra	a1,a1,0x10
     19c:	14400019 	bnez	v0,204 <EnMThunder_Init+0x1fc>
     1a0:	3c070000 	lui	a3,0x0
     1a4:	3c0f0000 	lui	t7,0x0
     1a8:	24e70000 	addiu	a3,a3,0
     1ac:	25ef0000 	addiu	t7,t7,0
     1b0:	262500e4 	addiu	a1,s1,228
     1b4:	afa50030 	sw	a1,48(sp)
     1b8:	afaf0014 	sw	t7,20(sp)
     1bc:	afa70010 	sw	a3,16(sp)
     1c0:	24041823 	li	a0,6179
     1c4:	0c000000 	jal	0 <func_80A9EFE0>
     1c8:	24060004 	li	a2,4
     1cc:	3c070000 	lui	a3,0x0
     1d0:	3c180000 	lui	t8,0x0
     1d4:	24e70000 	addiu	a3,a3,0
     1d8:	27180000 	addiu	t8,t8,0
     1dc:	8fa50030 	lw	a1,48(sp)
     1e0:	afb80014 	sw	t8,20(sp)
     1e4:	afa70010 	sw	a3,16(sp)
     1e8:	24041818 	li	a0,6168
     1ec:	0c000000 	jal	0 <func_80A9EFE0>
     1f0:	24060004 	li	a2,4
     1f4:	0c000000 	jal	0 <func_80A9EFE0>
     1f8:	02002025 	move	a0,s0
     1fc:	1000002e 	b	2b8 <EnMThunder_Init+0x2b0>
     200:	8fbf002c 	lw	ra,44(sp)
     204:	8e390680 	lw	t9,1664(s1)
     208:	3c01fffd 	lui	at,0xfffd
     20c:	3421ffff 	ori	at,at,0xffff
     210:	03214024 	and	t0,t9,at
     214:	ae280680 	sw	t0,1664(s1)
     218:	920201c7 	lbu	v0,455(s0)
     21c:	24030001 	li	v1,1
     220:	3c0a0000 	lui	t2,0x0
     224:	00024880 	sll	t1,v0,0x2
     228:	a20301ca 	sb	v1,458(s0)
     22c:	01495021 	addu	t2,t2,t1
     230:	8d4a0000 	lw	t2,0(t2)
     234:	24010001 	li	at,1
     238:	a20301c6 	sb	v1,454(s0)
     23c:	14410004 	bne	v0,at,250 <EnMThunder_Init+0x248>
     240:	ae0a0164 	sw	t2,356(s0)
     244:	240b0002 	li	t3,2
     248:	10000003 	b	258 <EnMThunder_Init+0x250>
     24c:	a20b01c9 	sb	t3,457(s0)
     250:	240c0004 	li	t4,4
     254:	a20c01c9 	sb	t4,457(s0)
     258:	3c050000 	lui	a1,0x0
     25c:	24a50000 	addiu	a1,a1,0
     260:	0c000000 	jal	0 <func_80A9EFE0>
     264:	02002025 	move	a0,s0
     268:	3c070000 	lui	a3,0x0
     26c:	240d0008 	li	t5,8
     270:	3c0e0000 	lui	t6,0x0
     274:	24e70000 	addiu	a3,a3,0
     278:	a60d01c4 	sh	t5,452(s0)
     27c:	25ce0000 	addiu	t6,t6,0
     280:	afae0014 	sw	t6,20(sp)
     284:	afa70010 	sw	a3,16(sp)
     288:	2404182e 	li	a0,6190
     28c:	262500e4 	addiu	a1,s1,228
     290:	0c000000 	jal	0 <func_80A9EFE0>
     294:	24060004 	li	a2,4
     298:	3c013f80 	lui	at,0x3f80
     29c:	44812000 	mtc1	at,$f4
     2a0:	10000003 	b	2b0 <EnMThunder_Init+0x2a8>
     2a4:	e60401ac 	swc1	$f4,428(s0)
     2a8:	0c000000 	jal	0 <func_80A9EFE0>
     2ac:	24a50000 	addiu	a1,a1,0
     2b0:	ae00011c 	sw	zero,284(s0)
     2b4:	8fbf002c 	lw	ra,44(sp)
     2b8:	8fb00024 	lw	s0,36(sp)
     2bc:	8fb10028 	lw	s1,40(sp)
     2c0:	03e00008 	jr	ra
     2c4:	27bd0040 	addiu	sp,sp,64

000002c8 <EnMThunder_Destroy>:
     2c8:	27bdffe0 	addiu	sp,sp,-32
     2cc:	afbf001c 	sw	ra,28(sp)
     2d0:	afb00018 	sw	s0,24(sp)
     2d4:	afa40020 	sw	a0,32(sp)
     2d8:	908f01ca 	lbu	t7,458(a0)
     2dc:	00a08025 	move	s0,a1
     2e0:	51e00004 	beqzl	t7,2f4 <EnMThunder_Destroy+0x2c>
     2e4:	8fa50020 	lw	a1,32(sp)
     2e8:	0c000000 	jal	0 <func_80A9EFE0>
     2ec:	00a02025 	move	a0,a1
     2f0:	8fa50020 	lw	a1,32(sp)
     2f4:	02002025 	move	a0,s0
     2f8:	0c000000 	jal	0 <func_80A9EFE0>
     2fc:	24a5014c 	addiu	a1,a1,332
     300:	02002025 	move	a0,s0
     304:	0c000000 	jal	0 <func_80A9EFE0>
     308:	24050000 	li	a1,0
     30c:	8fb80020 	lw	t8,32(sp)
     310:	02002025 	move	a0,s0
     314:	260507a8 	addiu	a1,s0,1960
     318:	0c000000 	jal	0 <func_80A9EFE0>
     31c:	8f060198 	lw	a2,408(t8)
     320:	8fbf001c 	lw	ra,28(sp)
     324:	8fb00018 	lw	s0,24(sp)
     328:	27bd0020 	addiu	sp,sp,32
     32c:	03e00008 	jr	ra
     330:	00000000 	nop

00000334 <func_80A9F314>:
     334:	44856000 	mtc1	a1,$f12
     338:	44802000 	mtc1	zero,$f4
     33c:	27bdffe0 	addiu	sp,sp,-32
     340:	afbf001c 	sw	ra,28(sp)
     344:	3c064454 	lui	a2,0x4454
     348:	3c073e4c 	lui	a3,0x3e4c
     34c:	44056000 	mfc1	a1,$f12
     350:	34e7cccd 	ori	a3,a3,0xcccd
     354:	34c68000 	ori	a2,a2,0x8000
     358:	0c000000 	jal	0 <func_80A9EFE0>
     35c:	e7a40010 	swc1	$f4,16(sp)
     360:	8fbf001c 	lw	ra,28(sp)
     364:	27bd0020 	addiu	sp,sp,32
     368:	03e00008 	jr	ra
     36c:	00000000 	nop

00000370 <func_80A9F350>:
     370:	27bdffd8 	addiu	sp,sp,-40
     374:	afbf001c 	sw	ra,28(sp)
     378:	afa40028 	sw	a0,40(sp)
     37c:	8ca21c44 	lw	v0,7236(a1)
     380:	8c4e0680 	lw	t6,1664(v0)
     384:	000e7b80 	sll	t7,t6,0xe
     388:	05e3001e 	bgezl	t7,404 <func_80A9F350+0x94>
     38c:	8c49067c 	lw	t1,1660(v0)
     390:	80580842 	lb	t8,2114(v0)
     394:	3c070000 	lui	a3,0x0
     398:	24e70000 	addiu	a3,a3,0
     39c:	2b010018 	slti	at,t8,24
     3a0:	14200013 	bnez	at,3f0 <func_80A9F350+0x80>
     3a4:	24041823 	li	a0,6179
     3a8:	3c190000 	lui	t9,0x0
     3ac:	27390000 	addiu	t9,t9,0
     3b0:	244500e4 	addiu	a1,v0,228
     3b4:	afa50020 	sw	a1,32(sp)
     3b8:	afb90014 	sw	t9,20(sp)
     3bc:	24060004 	li	a2,4
     3c0:	0c000000 	jal	0 <func_80A9EFE0>
     3c4:	afa70010 	sw	a3,16(sp)
     3c8:	3c070000 	lui	a3,0x0
     3cc:	3c080000 	lui	t0,0x0
     3d0:	24e70000 	addiu	a3,a3,0
     3d4:	25080000 	addiu	t0,t0,0
     3d8:	8fa50020 	lw	a1,32(sp)
     3dc:	afa80014 	sw	t0,20(sp)
     3e0:	afa70010 	sw	a3,16(sp)
     3e4:	24041818 	li	a0,6168
     3e8:	0c000000 	jal	0 <func_80A9EFE0>
     3ec:	24060004 	li	a2,4
     3f0:	0c000000 	jal	0 <func_80A9EFE0>
     3f4:	8fa40028 	lw	a0,40(sp)
     3f8:	10000008 	b	41c <func_80A9F350+0xac>
     3fc:	8fbf001c 	lw	ra,28(sp)
     400:	8c49067c 	lw	t1,1660(v0)
     404:	312a1000 	andi	t2,t1,0x1000
     408:	55400004 	bnezl	t2,41c <func_80A9F350+0xac>
     40c:	8fbf001c 	lw	ra,28(sp)
     410:	0c000000 	jal	0 <func_80A9EFE0>
     414:	8fa40028 	lw	a0,40(sp)
     418:	8fbf001c 	lw	ra,28(sp)
     41c:	27bd0028 	addiu	sp,sp,40
     420:	03e00008 	jr	ra
     424:	00000000 	nop

00000428 <func_80A9F408>:
     428:	27bdffb0 	addiu	sp,sp,-80
     42c:	afbf003c 	sw	ra,60(sp)
     430:	afb00038 	sw	s0,56(sp)
     434:	afa50054 	sw	a1,84(sp)
     438:	8ca31c44 	lw	v1,7236(a1)
     43c:	908a01ca 	lbu	t2,458(a0)
     440:	34018000 	li	at,0x8000
     444:	c4640858 	lwc1	$f4,2136(v1)
     448:	00808025 	move	s0,a0
     44c:	8c88011c 	lw	t0,284(a0)
     450:	e48401b8 	swc1	$f4,440(a0)
     454:	8c780908 	lw	t8,2312(v1)
     458:	ac980024 	sw	t8,36(a0)
     45c:	8c6f090c 	lw	t7,2316(v1)
     460:	ac8f0028 	sw	t7,40(a0)
     464:	8c780910 	lw	t8,2320(v1)
     468:	ac98002c 	sw	t8,44(a0)
     46c:	847900b6 	lh	t9,182(v1)
     470:	03214821 	addu	t1,t9,at
     474:	15400029 	bnez	t2,51c <func_80A9F408+0xf4>
     478:	a48900b6 	sh	t1,182(a0)
     47c:	3c010000 	lui	at,0x0
     480:	c4280000 	lwc1	$f8,0(at)
     484:	c4660858 	lwc1	$f6,2136(v1)
     488:	3c0b0000 	lui	t3,0x0
     48c:	4606403e 	c.le.s	$f8,$f6
     490:	00000000 	nop
     494:	45000021 	bc1f	51c <func_80A9F408+0xf4>
     498:	00000000 	nop
     49c:	856b13f0 	lh	t3,5104(t3)
     4a0:	55600010 	bnezl	t3,4e4 <func_80A9F408+0xbc>
     4a4:	02002025 	move	a0,s0
     4a8:	8482001c 	lh	v0,28(a0)
     4ac:	8fa40054 	lw	a0,84(sp)
     4b0:	24060004 	li	a2,4
     4b4:	3042ff00 	andi	v0,v0,0xff00
     4b8:	00021203 	sra	v0,v0,0x8
     4bc:	10400015 	beqz	v0,514 <func_80A9F408+0xec>
     4c0:	00022c00 	sll	a1,v0,0x10
     4c4:	00052c03 	sra	a1,a1,0x10
     4c8:	afa3004c 	sw	v1,76(sp)
     4cc:	0c000000 	jal	0 <func_80A9EFE0>
     4d0:	afa80048 	sw	t0,72(sp)
     4d4:	8fa3004c 	lw	v1,76(sp)
     4d8:	1440000e 	bnez	v0,514 <func_80A9F408+0xec>
     4dc:	8fa80048 	lw	t0,72(sp)
     4e0:	02002025 	move	a0,s0
     4e4:	0c000000 	jal	0 <func_80A9EFE0>
     4e8:	8fa50054 	lw	a1,84(sp)
     4ec:	3c050000 	lui	a1,0x0
     4f0:	24a50000 	addiu	a1,a1,0
     4f4:	0c000000 	jal	0 <func_80A9EFE0>
     4f8:	02002025 	move	a0,s0
     4fc:	44805000 	mtc1	zero,$f10
     500:	44808000 	mtc1	zero,$f16
     504:	a20001c8 	sb	zero,456(s0)
     508:	e60a01bc 	swc1	$f10,444(s0)
     50c:	1000010d 	b	944 <func_80A9F408+0x51c>
     510:	e61001ac 	swc1	$f16,428(s0)
     514:	240c0001 	li	t4,1
     518:	a20c01ca 	sb	t4,458(s0)
     51c:	3c010000 	lui	at,0x0
     520:	c4320000 	lwc1	$f18,0(at)
     524:	c4600858 	lwc1	$f0,2136(v1)
     528:	3c014316 	lui	at,0x4316
     52c:	4600903e 	c.le.s	$f18,$f0
     530:	00000000 	nop
     534:	45020010 	bc1fl	578 <func_80A9F408+0x150>
     538:	8c6e0680 	lw	t6,1664(v1)
     53c:	44812000 	mtc1	at,$f4
     540:	44806000 	mtc1	zero,$f12
     544:	24060002 	li	a2,2
     548:	46040182 	mul.s	$f6,$f0,$f4
     54c:	afa3004c 	sw	v1,76(sp)
     550:	afa80048 	sw	t0,72(sp)
     554:	4600320d 	trunc.w.s	$f8,$f6
     558:	44054000 	mfc1	a1,$f8
     55c:	00000000 	nop
     560:	30a500ff 	andi	a1,a1,0xff
     564:	0c000000 	jal	0 <func_80A9EFE0>
     568:	30a700ff 	andi	a3,a1,0xff
     56c:	8fa3004c 	lw	v1,76(sp)
     570:	8fa80048 	lw	t0,72(sp)
     574:	8c6e0680 	lw	t6,1664(v1)
     578:	3c010000 	lui	at,0x0
     57c:	000e7b80 	sll	t7,t6,0xe
     580:	05e3007a 	bgezl	t7,76c <func_80A9F408+0x344>
     584:	8c6b067c 	lw	t3,1660(v1)
     588:	11000005 	beqz	t0,5a0 <func_80A9F408+0x178>
     58c:	3c050000 	lui	a1,0x0
     590:	8d180130 	lw	t8,304(t0)
     594:	13000002 	beqz	t8,5a0 <func_80A9F408+0x178>
     598:	00000000 	nop
     59c:	ad000118 	sw	zero,280(t0)
     5a0:	c42c0000 	lwc1	$f12,0(at)
     5a4:	c4600858 	lwc1	$f0,2136(v1)
     5a8:	3c010000 	lui	at,0x0
     5ac:	24a50000 	addiu	a1,a1,0
     5b0:	460c003e 	c.le.s	$f0,$f12
     5b4:	00000000 	nop
     5b8:	45020023 	bc1fl	648 <func_80A9F408+0x220>
     5bc:	8c6b0680 	lw	t3,1664(v1)
     5c0:	c42a0000 	lwc1	$f10,0(at)
     5c4:	4600503e 	c.le.s	$f10,$f0
     5c8:	00000000 	nop
     5cc:	45000019 	bc1f	634 <func_80A9F408+0x20c>
     5d0:	00000000 	nop
     5d4:	80790842 	lb	t9,2114(v1)
     5d8:	3c070000 	lui	a3,0x0
     5dc:	24e70000 	addiu	a3,a3,0
     5e0:	2b210018 	slti	at,t9,24
     5e4:	14200013 	bnez	at,634 <func_80A9F408+0x20c>
     5e8:	24041823 	li	a0,6179
     5ec:	3c090000 	lui	t1,0x0
     5f0:	25290000 	addiu	t1,t1,0
     5f4:	246500e4 	addiu	a1,v1,228
     5f8:	afa50044 	sw	a1,68(sp)
     5fc:	afa90014 	sw	t1,20(sp)
     600:	24060004 	li	a2,4
     604:	0c000000 	jal	0 <func_80A9EFE0>
     608:	afa70010 	sw	a3,16(sp)
     60c:	3c070000 	lui	a3,0x0
     610:	3c0a0000 	lui	t2,0x0
     614:	24e70000 	addiu	a3,a3,0
     618:	254a0000 	addiu	t2,t2,0
     61c:	8fa50044 	lw	a1,68(sp)
     620:	afaa0014 	sw	t2,20(sp)
     624:	afa70010 	sw	a3,16(sp)
     628:	24041818 	li	a0,6168
     62c:	0c000000 	jal	0 <func_80A9EFE0>
     630:	24060004 	li	a2,4
     634:	0c000000 	jal	0 <func_80A9EFE0>
     638:	02002025 	move	a0,s0
     63c:	100000c2 	b	948 <func_80A9F408+0x520>
     640:	8fbf003c 	lw	ra,60(sp)
     644:	8c6b0680 	lw	t3,1664(v1)
     648:	3c01fffd 	lui	at,0xfffd
     64c:	3421ffff 	ori	at,at,0xffff
     650:	01616024 	and	t4,t3,at
     654:	ac6c0680 	sw	t4,1664(v1)
     658:	860d001c 	lh	t5,28(s0)
     65c:	24040001 	li	a0,1
     660:	3c010000 	lui	at,0x0
     664:	31aeff00 	andi	t6,t5,0xff00
     668:	000e7a03 	sra	t7,t6,0x8
     66c:	11e00002 	beqz	t7,678 <func_80A9F408+0x250>
     670:	00000000 	nop
     674:	a42413f0 	sh	a0,5104(at)
     678:	3c010000 	lui	at,0x0
     67c:	c4320000 	lwc1	$f18,0(at)
     680:	c4700858 	lwc1	$f16,2136(v1)
     684:	24040001 	li	a0,1
     688:	4612803c 	c.lt.s	$f16,$f18
     68c:	00000000 	nop
     690:	45020011 	bc1fl	6d8 <func_80A9F408+0x2b0>
     694:	920201c7 	lbu	v0,455(s0)
     698:	920201c7 	lbu	v0,455(s0)
     69c:	3c190000 	lui	t9,0x0
     6a0:	24090001 	li	t1,1
     6a4:	0002c080 	sll	t8,v0,0x2
     6a8:	0338c821 	addu	t9,t9,t8
     6ac:	8f390000 	lw	t9,0(t9)
     6b0:	a20901c6 	sb	t1,454(s0)
     6b4:	14820004 	bne	a0,v0,6c8 <func_80A9F408+0x2a0>
     6b8:	ae190164 	sw	t9,356(s0)
     6bc:	240a0002 	li	t2,2
     6c0:	10000011 	b	708 <func_80A9F408+0x2e0>
     6c4:	a20a01c9 	sb	t2,457(s0)
     6c8:	240b0004 	li	t3,4
     6cc:	1000000e 	b	708 <func_80A9F408+0x2e0>
     6d0:	a20b01c9 	sb	t3,457(s0)
     6d4:	920201c7 	lbu	v0,455(s0)
     6d8:	3c0d0000 	lui	t5,0x0
     6dc:	240f0008 	li	t7,8
     6e0:	00026080 	sll	t4,v0,0x2
     6e4:	01ac6821 	addu	t5,t5,t4
     6e8:	8dad0000 	lw	t5,0(t5)
     6ec:	a20001c6 	sb	zero,454(s0)
     6f0:	14820004 	bne	a0,v0,704 <func_80A9F408+0x2dc>
     6f4:	ae0d0164 	sw	t5,356(s0)
     6f8:	240e0004 	li	t6,4
     6fc:	10000002 	b	708 <func_80A9F408+0x2e0>
     700:	a20e01c9 	sb	t6,457(s0)
     704:	a20f01c9 	sb	t7,457(s0)
     708:	02002025 	move	a0,s0
     70c:	0c000000 	jal	0 <func_80A9EFE0>
     710:	afa3004c 	sw	v1,76(sp)
     714:	921901c6 	lbu	t9,454(s0)
     718:	8fa3004c 	lw	v1,76(sp)
     71c:	24180008 	li	t8,8
     720:	3c070000 	lui	a3,0x0
     724:	a61801c4 	sh	t8,452(s0)
     728:	3c040000 	lui	a0,0x0
     72c:	3c0a0000 	lui	t2,0x0
     730:	00194840 	sll	t1,t9,0x1
     734:	24e70000 	addiu	a3,a3,0
     738:	00892021 	addu	a0,a0,t1
     73c:	254a0000 	addiu	t2,t2,0
     740:	afaa0014 	sw	t2,20(sp)
     744:	94840000 	lhu	a0,0(a0)
     748:	afa70010 	sw	a3,16(sp)
     74c:	24060004 	li	a2,4
     750:	0c000000 	jal	0 <func_80A9EFE0>
     754:	246500e4 	addiu	a1,v1,228
     758:	3c013f80 	lui	at,0x3f80
     75c:	44812000 	mtc1	at,$f4
     760:	10000078 	b	944 <func_80A9F408+0x51c>
     764:	e60401ac 	swc1	$f4,428(s0)
     768:	8c6b067c 	lw	t3,1660(v1)
     76c:	3c010000 	lui	at,0x0
     770:	316c1000 	andi	t4,t3,0x1000
     774:	15800009 	bnez	t4,79c <func_80A9F408+0x374>
     778:	00000000 	nop
     77c:	8e02011c 	lw	v0,284(s0)
     780:	10400002 	beqz	v0,78c <func_80A9F408+0x364>
     784:	00000000 	nop
     788:	ac400118 	sw	zero,280(v0)
     78c:	0c000000 	jal	0 <func_80A9EFE0>
     790:	02002025 	move	a0,s0
     794:	1000006c 	b	948 <func_80A9F408+0x520>
     798:	8fbf003c 	lw	ra,60(sp)
     79c:	c42c0000 	lwc1	$f12,0(at)
     7a0:	c4600858 	lwc1	$f0,2136(v1)
     7a4:	3c010000 	lui	at,0x0
     7a8:	4600603c 	c.lt.s	$f12,$f0
     7ac:	00000000 	nop
     7b0:	45000029 	bc1f	858 <func_80A9F408+0x430>
     7b4:	00000000 	nop
     7b8:	8e0e011c 	lw	t6,284(s0)
     7bc:	240d00ff 	li	t5,255
     7c0:	a20d01c8 	sb	t5,456(s0)
     7c4:	55c00018 	bnezl	t6,828 <func_80A9F408+0x400>
     7c8:	c4700858 	lwc1	$f16,2136(v1)
     7cc:	c6060024 	lwc1	$f6,36(s0)
     7d0:	8fa60054 	lw	a2,84(sp)
     7d4:	02002825 	move	a1,s0
     7d8:	e7a60010 	swc1	$f6,16(sp)
     7dc:	c6080028 	lwc1	$f8,40(s0)
     7e0:	24070101 	li	a3,257
     7e4:	24c41c24 	addiu	a0,a2,7204
     7e8:	e7a80014 	swc1	$f8,20(sp)
     7ec:	c60a002c 	lwc1	$f10,44(s0)
     7f0:	afa0001c 	sw	zero,28(sp)
     7f4:	e7aa0018 	swc1	$f10,24(sp)
     7f8:	861800b6 	lh	t8,182(s0)
     7fc:	afa00024 	sw	zero,36(sp)
     800:	afb80020 	sw	t8,32(sp)
     804:	921901c7 	lbu	t9,455(s0)
     808:	afa3004c 	sw	v1,76(sp)
     80c:	27290002 	addiu	t1,t9,2
     810:	0c000000 	jal	0 <func_80A9EFE0>
     814:	afa90028 	sw	t1,40(sp)
     818:	3c010000 	lui	at,0x0
     81c:	c42c0000 	lwc1	$f12,0(at)
     820:	8fa3004c 	lw	v1,76(sp)
     824:	c4700858 	lwc1	$f16,2136(v1)
     828:	3c013fc0 	lui	at,0x3fc0
     82c:	44812000 	mtc1	at,$f4
     830:	460c8481 	sub.s	$f18,$f16,$f12
     834:	c60001bc 	lwc1	$f0,444(s0)
     838:	3c013f00 	lui	at,0x3f00
     83c:	44815000 	mtc1	at,$f10
     840:	46049182 	mul.s	$f6,$f18,$f4
     844:	46003201 	sub.s	$f8,$f6,$f0
     848:	460a4402 	mul.s	$f16,$f8,$f10
     84c:	46100480 	add.s	$f18,$f0,$f16
     850:	10000019 	b	8b8 <func_80A9F408+0x490>
     854:	e61201bc 	swc1	$f18,444(s0)
     858:	c4220000 	lwc1	$f2,0(at)
     85c:	3c01437f 	lui	at,0x437f
     860:	4600103c 	c.lt.s	$f2,$f0
     864:	00000000 	nop
     868:	45020013 	bc1fl	8b8 <func_80A9F408+0x490>
     86c:	a20001c8 	sb	zero,456(s0)
     870:	46020101 	sub.s	$f4,$f0,$f2
     874:	44813000 	mtc1	at,$f6
     878:	3c0141a0 	lui	at,0x41a0
     87c:	44815000 	mtc1	at,$f10
     880:	46062202 	mul.s	$f8,$f4,$f6
     884:	3c014120 	lui	at,0x4120
     888:	460a4402 	mul.s	$f16,$f8,$f10
     88c:	44814000 	mtc1	at,$f8
     890:	4600848d 	trunc.w.s	$f18,$f16
     894:	440b9000 	mfc1	t3,$f18
     898:	00000000 	nop
     89c:	a20b01c8 	sb	t3,456(s0)
     8a0:	c4640858 	lwc1	$f4,2136(v1)
     8a4:	46022181 	sub.s	$f6,$f4,$f2
     8a8:	46083282 	mul.s	$f10,$f6,$f8
     8ac:	10000002 	b	8b8 <func_80A9F408+0x490>
     8b0:	e60a01ac 	swc1	$f10,428(s0)
     8b4:	a20001c8 	sb	zero,456(s0)
     8b8:	3c010000 	lui	at,0x0
     8bc:	c4300000 	lwc1	$f16,0(at)
     8c0:	c4600858 	lwc1	$f0,2136(v1)
     8c4:	246400e4 	addiu	a0,v1,228
     8c8:	4600803c 	c.lt.s	$f16,$f0
     8cc:	00000000 	nop
     8d0:	45020006 	bc1fl	8ec <func_80A9F408+0x4c4>
     8d4:	4600603c 	c.lt.s	$f12,$f0
     8d8:	0c000000 	jal	0 <func_80A9EFE0>
     8dc:	24050002 	li	a1,2
     8e0:	10000012 	b	92c <func_80A9F408+0x504>
     8e4:	00000000 	nop
     8e8:	4600603c 	c.lt.s	$f12,$f0
     8ec:	246400e4 	addiu	a0,v1,228
     8f0:	3c010000 	lui	at,0x0
     8f4:	45000005 	bc1f	90c <func_80A9F408+0x4e4>
     8f8:	00000000 	nop
     8fc:	0c000000 	jal	0 <func_80A9EFE0>
     900:	24050001 	li	a1,1
     904:	10000009 	b	92c <func_80A9F408+0x504>
     908:	00000000 	nop
     90c:	c4320000 	lwc1	$f18,0(at)
     910:	246400e4 	addiu	a0,v1,228
     914:	4600903c 	c.lt.s	$f18,$f0
     918:	00000000 	nop
     91c:	45000003 	bc1f	92c <func_80A9F408+0x504>
     920:	00000000 	nop
     924:	0c000000 	jal	0 <func_80A9EFE0>
     928:	00002825 	move	a1,zero
     92c:	0c000000 	jal	0 <func_80A9EFE0>
     930:	8fa40054 	lw	a0,84(sp)
     934:	50400004 	beqzl	v0,948 <func_80A9F408+0x520>
     938:	8fbf003c 	lw	ra,60(sp)
     93c:	0c000000 	jal	0 <func_80A9EFE0>
     940:	02002025 	move	a0,s0
     944:	8fbf003c 	lw	ra,60(sp)
     948:	8fb00038 	lw	s0,56(sp)
     94c:	27bd0050 	addiu	sp,sp,80
     950:	03e00008 	jr	ra
     954:	00000000 	nop

00000958 <func_80A9F938>:
     958:	afa50004 	sw	a1,4(sp)
     95c:	948e01c4 	lhu	t6,452(a0)
     960:	29c10002 	slti	at,t6,2
     964:	50200009 	beqzl	at,98c <func_80A9F938+0x34>
     968:	c48001b0 	lwc1	$f0,432(a0)
     96c:	908201c8 	lbu	v0,456(a0)
     970:	28410028 	slti	at,v0,40
     974:	10200003 	beqz	at,984 <func_80A9F938+0x2c>
     978:	244fffd8 	addiu	t7,v0,-40
     97c:	10000002 	b	988 <func_80A9F938+0x30>
     980:	a08001c8 	sb	zero,456(a0)
     984:	a08f01c8 	sb	t7,456(a0)
     988:	c48001b0 	lwc1	$f0,432(a0)
     98c:	c48201bc 	lwc1	$f2,444(a0)
     990:	c48c01ac 	lwc1	$f12,428(a0)
     994:	46000180 	add.s	$f6,$f0,$f0
     998:	c48401b4 	lwc1	$f4,436(a0)
     99c:	3c010000 	lui	at,0x0
     9a0:	460c103c 	c.lt.s	$f2,$f12
     9a4:	46062200 	add.s	$f8,$f4,$f6
     9a8:	45000007 	bc1f	9c8 <func_80A9F938+0x70>
     9ac:	e48801b4 	swc1	$f8,436(a0)
     9b0:	46026281 	sub.s	$f10,$f12,$f2
     9b4:	c4300000 	lwc1	$f16,0(at)
     9b8:	46105482 	mul.s	$f18,$f10,$f16
     9bc:	46121100 	add.s	$f4,$f2,$f18
     9c0:	03e00008 	jr	ra
     9c4:	e48401bc 	swc1	$f4,444(a0)
     9c8:	e48c01bc 	swc1	$f12,444(a0)
     9cc:	03e00008 	jr	ra
     9d0:	00000000 	nop

000009d4 <func_80A9F9B4>:
     9d4:	27bdffd0 	addiu	sp,sp,-48
     9d8:	afbf0024 	sw	ra,36(sp)
     9dc:	afb00020 	sw	s0,32(sp)
     9e0:	afa50034 	sw	a1,52(sp)
     9e4:	8caf1c44 	lw	t7,7236(a1)
     9e8:	00808025 	move	s0,a0
     9ec:	248401ac 	addiu	a0,a0,428
     9f0:	24050000 	li	a1,0
     9f4:	3c063d80 	lui	a2,0x3d80
     9f8:	0c000000 	jal	0 <func_80A9EFE0>
     9fc:	afaf002c 	sw	t7,44(sp)
     a00:	50400006 	beqzl	v0,a1c <func_80A9F9B4+0x48>
     a04:	921801c9 	lbu	t8,457(s0)
     a08:	0c000000 	jal	0 <func_80A9EFE0>
     a0c:	02002025 	move	a0,s0
     a10:	10000025 	b	aa8 <func_80A9F9B4+0xd4>
     a14:	960201c4 	lhu	v0,452(s0)
     a18:	921801c9 	lbu	t8,457(s0)
     a1c:	44803000 	mtc1	zero,$f6
     a20:	3c063f19 	lui	a2,0x3f19
     a24:	44982000 	mtc1	t8,$f4
     a28:	3c073f4c 	lui	a3,0x3f4c
     a2c:	34e7cccd 	ori	a3,a3,0xcccd
     a30:	46802120 	cvt.s.w	$f4,$f4
     a34:	34c6999a 	ori	a2,a2,0x999a
     a38:	26040050 	addiu	a0,s0,80
     a3c:	e7a60010 	swc1	$f6,16(sp)
     a40:	44052000 	mfc1	a1,$f4
     a44:	0c000000 	jal	0 <func_80A9EFE0>
     a48:	00000000 	nop
     a4c:	02002025 	move	a0,s0
     a50:	0c000000 	jal	0 <func_80A9EFE0>
     a54:	8e050050 	lw	a1,80(s0)
     a58:	3c0141c8 	lui	at,0x41c8
     a5c:	44815000 	mtc1	at,$f10
     a60:	c6080050 	lwc1	$f8,80(s0)
     a64:	2606014c 	addiu	a2,s0,332
     a68:	00c02825 	move	a1,a2
     a6c:	460a4402 	mul.s	$f16,$f8,$f10
     a70:	02002025 	move	a0,s0
     a74:	4600848d 	trunc.w.s	$f18,$f16
     a78:	44089000 	mfc1	t0,$f18
     a7c:	00000000 	nop
     a80:	a608018c 	sh	t0,396(s0)
     a84:	0c000000 	jal	0 <func_80A9EFE0>
     a88:	afa60028 	sw	a2,40(sp)
     a8c:	8fa40034 	lw	a0,52(sp)
     a90:	3c010001 	lui	at,0x1
     a94:	34211e60 	ori	at,at,0x1e60
     a98:	8fa60028 	lw	a2,40(sp)
     a9c:	0c000000 	jal	0 <func_80A9EFE0>
     aa0:	00812821 	addu	a1,a0,at
     aa4:	960201c4 	lhu	v0,452(s0)
     aa8:	8fa3002c 	lw	v1,44(sp)
     aac:	3c010000 	lui	at,0x0
     ab0:	18400007 	blez	v0,ad0 <func_80A9F9B4+0xfc>
     ab4:	02002025 	move	a0,s0
     ab8:	c4640908 	lwc1	$f4,2312(v1)
     abc:	2449ffff 	addiu	t1,v0,-1
     ac0:	e6040024 	swc1	$f4,36(s0)
     ac4:	c4660910 	lwc1	$f6,2320(v1)
     ac8:	a60901c4 	sh	t1,452(s0)
     acc:	e606002c 	swc1	$f6,44(s0)
     ad0:	c60001ac 	lwc1	$f0,428(s0)
     ad4:	c4280000 	lwc1	$f8,0(at)
     ad8:	3c010000 	lui	at,0x0
     adc:	4600403c 	c.lt.s	$f8,$f0
     ae0:	00000000 	nop
     ae4:	45000005 	bc1f	afc <func_80A9F9B4+0x128>
     ae8:	00000000 	nop
     aec:	3c013f80 	lui	at,0x3f80
     af0:	44815000 	mtc1	at,$f10
     af4:	10000004 	b	b08 <func_80A9F9B4+0x134>
     af8:	e60a01b0 	swc1	$f10,432(s0)
     afc:	c4300000 	lwc1	$f16,0(at)
     b00:	46100482 	mul.s	$f18,$f0,$f16
     b04:	e61201b0 	swc1	$f18,432(s0)
     b08:	0c000000 	jal	0 <func_80A9EFE0>
     b0c:	8fa50034 	lw	a1,52(sp)
     b10:	0c000000 	jal	0 <func_80A9EFE0>
     b14:	8fa40034 	lw	a0,52(sp)
     b18:	50400004 	beqzl	v0,b2c <func_80A9F9B4+0x158>
     b1c:	8fbf0024 	lw	ra,36(sp)
     b20:	0c000000 	jal	0 <func_80A9EFE0>
     b24:	02002025 	move	a0,s0
     b28:	8fbf0024 	lw	ra,36(sp)
     b2c:	8fb00020 	lw	s0,32(sp)
     b30:	27bd0030 	addiu	sp,sp,48
     b34:	03e00008 	jr	ra
     b38:	00000000 	nop

00000b3c <EnMThunder_Update>:
     b3c:	27bdffd0 	addiu	sp,sp,-48
     b40:	afb00028 	sw	s0,40(sp)
     b44:	00808025 	move	s0,a0
     b48:	afbf002c 	sw	ra,44(sp)
     b4c:	afa50034 	sw	a1,52(sp)
     b50:	8e1901c0 	lw	t9,448(s0)
     b54:	0320f809 	jalr	t9
     b58:	00000000 	nop
     b5c:	8fa40034 	lw	a0,52(sp)
     b60:	0c000000 	jal	0 <func_80A9EFE0>
     b64:	8e0501bc 	lw	a1,444(s0)
     b68:	c6040024 	lwc1	$f4,36(s0)
     b6c:	3c01437f 	lui	at,0x437f
     b70:	c60001ac 	lwc1	$f0,428(s0)
     b74:	4600218d 	trunc.w.s	$f6,$f4
     b78:	44812000 	mtc1	at,$f4
     b7c:	c6080028 	lwc1	$f8,40(s0)
     b80:	c610002c 	lwc1	$f16,44(s0)
     b84:	44053000 	mfc1	a1,$f6
     b88:	46040182 	mul.s	$f6,$f0,$f4
     b8c:	4600428d 	trunc.w.s	$f10,$f8
     b90:	24020001 	li	v0,1
     b94:	00052c00 	sll	a1,a1,0x10
     b98:	00052c03 	sra	a1,a1,0x10
     b9c:	44065000 	mfc1	a2,$f10
     ba0:	4600848d 	trunc.w.s	$f18,$f16
     ba4:	3c014f00 	lui	at,0x4f00
     ba8:	00063400 	sll	a2,a2,0x10
     bac:	00063403 	sra	a2,a2,0x10
     bb0:	4448f800 	cfc1	t0,$31
     bb4:	44c2f800 	ctc1	v0,$31
     bb8:	44079000 	mfc1	a3,$f18
     bbc:	2604019c 	addiu	a0,s0,412
     bc0:	46003224 	cvt.w.s	$f8,$f6
     bc4:	00073c00 	sll	a3,a3,0x10
     bc8:	00073c03 	sra	a3,a3,0x10
     bcc:	4442f800 	cfc1	v0,$31
     bd0:	00000000 	nop
     bd4:	30420078 	andi	v0,v0,0x78
     bd8:	50400013 	beqzl	v0,c28 <EnMThunder_Update+0xec>
     bdc:	44024000 	mfc1	v0,$f8
     be0:	44814000 	mtc1	at,$f8
     be4:	24020001 	li	v0,1
     be8:	46083201 	sub.s	$f8,$f6,$f8
     bec:	44c2f800 	ctc1	v0,$31
     bf0:	00000000 	nop
     bf4:	46004224 	cvt.w.s	$f8,$f8
     bf8:	4442f800 	cfc1	v0,$31
     bfc:	00000000 	nop
     c00:	30420078 	andi	v0,v0,0x78
     c04:	14400005 	bnez	v0,c1c <EnMThunder_Update+0xe0>
     c08:	00000000 	nop
     c0c:	44024000 	mfc1	v0,$f8
     c10:	3c018000 	lui	at,0x8000
     c14:	10000007 	b	c34 <EnMThunder_Update+0xf8>
     c18:	00411025 	or	v0,v0,at
     c1c:	10000005 	b	c34 <EnMThunder_Update+0xf8>
     c20:	2402ffff 	li	v0,-1
     c24:	44024000 	mfc1	v0,$f8
     c28:	00000000 	nop
     c2c:	0440fffb 	bltz	v0,c1c <EnMThunder_Update+0xe0>
     c30:	00000000 	nop
     c34:	3c0142c8 	lui	at,0x42c8
     c38:	44c8f800 	ctc1	t0,$31
     c3c:	44815000 	mtc1	at,$f10
     c40:	240a0001 	li	t2,1
     c44:	304200ff 	andi	v0,v0,0xff
     c48:	460a0402 	mul.s	$f16,$f0,$f10
     c4c:	afa20010 	sw	v0,16(sp)
     c50:	afa20014 	sw	v0,20(sp)
     c54:	3c014f00 	lui	at,0x4f00
     c58:	4449f800 	cfc1	t1,$31
     c5c:	44caf800 	ctc1	t2,$31
     c60:	00000000 	nop
     c64:	460084a4 	cvt.w.s	$f18,$f16
     c68:	444af800 	cfc1	t2,$31
     c6c:	00000000 	nop
     c70:	314a0078 	andi	t2,t2,0x78
     c74:	51400013 	beqzl	t2,cc4 <EnMThunder_Update+0x188>
     c78:	440a9000 	mfc1	t2,$f18
     c7c:	44819000 	mtc1	at,$f18
     c80:	240a0001 	li	t2,1
     c84:	46128481 	sub.s	$f18,$f16,$f18
     c88:	44caf800 	ctc1	t2,$31
     c8c:	00000000 	nop
     c90:	460094a4 	cvt.w.s	$f18,$f18
     c94:	444af800 	cfc1	t2,$31
     c98:	00000000 	nop
     c9c:	314a0078 	andi	t2,t2,0x78
     ca0:	15400005 	bnez	t2,cb8 <EnMThunder_Update+0x17c>
     ca4:	00000000 	nop
     ca8:	440a9000 	mfc1	t2,$f18
     cac:	3c018000 	lui	at,0x8000
     cb0:	10000007 	b	cd0 <EnMThunder_Update+0x194>
     cb4:	01415025 	or	t2,t2,at
     cb8:	10000005 	b	cd0 <EnMThunder_Update+0x194>
     cbc:	240affff 	li	t2,-1
     cc0:	440a9000 	mfc1	t2,$f18
     cc4:	00000000 	nop
     cc8:	0540fffb 	bltz	t2,cb8 <EnMThunder_Update+0x17c>
     ccc:	00000000 	nop
     cd0:	3c014448 	lui	at,0x4448
     cd4:	44812000 	mtc1	at,$f4
     cd8:	44c9f800 	ctc1	t1,$31
     cdc:	afaa0018 	sw	t2,24(sp)
     ce0:	46040182 	mul.s	$f6,$f0,$f4
     ce4:	4600320d 	trunc.w.s	$f8,$f6
     ce8:	440c4000 	mfc1	t4,$f8
     cec:	0c000000 	jal	0 <func_80A9EFE0>
     cf0:	afac001c 	sw	t4,28(sp)
     cf4:	8fbf002c 	lw	ra,44(sp)
     cf8:	8fb00028 	lw	s0,40(sp)
     cfc:	27bd0030 	addiu	sp,sp,48
     d00:	03e00008 	jr	ra
     d04:	00000000 	nop

00000d08 <EnMThunder_Draw>:
     d08:	27bdff50 	addiu	sp,sp,-176
     d0c:	afbf003c 	sw	ra,60(sp)
     d10:	afb00038 	sw	s0,56(sp)
     d14:	afa400b0 	sw	a0,176(sp)
     d18:	afa500b4 	sw	a1,180(sp)
     d1c:	8caf1c44 	lw	t7,7236(a1)
     d20:	3c060000 	lui	a2,0x0
     d24:	24c60000 	addiu	a2,a2,0
     d28:	afaf00a4 	sw	t7,164(sp)
     d2c:	8ca50000 	lw	a1,0(a1)
     d30:	27a40088 	addiu	a0,sp,136
     d34:	2407034c 	li	a3,844
     d38:	0c000000 	jal	0 <func_80A9EFE0>
     d3c:	00a08025 	move	s0,a1
     d40:	8fb800b4 	lw	t8,180(sp)
     d44:	0c000000 	jal	0 <func_80A9EFE0>
     d48:	8f040000 	lw	a0,0(t8)
     d4c:	3c010000 	lui	at,0x0
     d50:	c42c0000 	lwc1	$f12,0(at)
     d54:	24070001 	li	a3,1
     d58:	44066000 	mfc1	a2,$f12
     d5c:	0c000000 	jal	0 <func_80A9EFE0>
     d60:	46006386 	mov.s	$f14,$f12
     d64:	8e0202d0 	lw	v0,720(s0)
     d68:	3c0cda38 	lui	t4,0xda38
     d6c:	358c0003 	ori	t4,t4,0x3
     d70:	24590008 	addiu	t9,v0,8
     d74:	ae1902d0 	sw	t9,720(s0)
     d78:	ac4c0000 	sw	t4,0(v0)
     d7c:	8fad00b4 	lw	t5,180(sp)
     d80:	3c050000 	lui	a1,0x0
     d84:	24a50000 	addiu	a1,a1,0
     d88:	8da40000 	lw	a0,0(t5)
     d8c:	24060355 	li	a2,853
     d90:	0c000000 	jal	0 <func_80A9EFE0>
     d94:	afa20084 	sw	v0,132(sp)
     d98:	8fa30084 	lw	v1,132(sp)
     d9c:	3c0edb06 	lui	t6,0xdb06
     da0:	24010001 	li	at,1
     da4:	ac620004 	sw	v0,4(v1)
     da8:	8fa900b0 	lw	t1,176(sp)
     dac:	35ce0020 	ori	t6,t6,0x20
     db0:	240800ff 	li	t0,255
     db4:	912201c6 	lbu	v0,454(t1)
     db8:	00002825 	move	a1,zero
     dbc:	00003825 	move	a3,zero
     dc0:	10400003 	beqz	v0,dd0 <EnMThunder_Draw+0xc8>
     dc4:	24190001 	li	t9,1
     dc8:	14410027 	bne	v0,at,e68 <EnMThunder_Draw+0x160>
     dcc:	00000000 	nop
     dd0:	8e0202d0 	lw	v0,720(s0)
     dd4:	3c0141f0 	lui	at,0x41f0
     dd8:	44812000 	mtc1	at,$f4
     ddc:	244f0008 	addiu	t7,v0,8
     de0:	ae0f02d0 	sw	t7,720(s0)
     de4:	ac4e0000 	sw	t6,0(v0)
     de8:	c52001b4 	lwc1	$f0,436(t1)
     dec:	3c0141a0 	lui	at,0x41a0
     df0:	44815000 	mtc1	at,$f10
     df4:	46040182 	mul.s	$f6,$f0,$f4
     df8:	8fb800b4 	lw	t8,180(sp)
     dfc:	240e0040 	li	t6,64
     e00:	460a0402 	mul.s	$f16,$f0,$f10
     e04:	8f040000 	lw	a0,0(t8)
     e08:	afae0010 	sw	t6,16(sp)
     e0c:	24180020 	li	t8,32
     e10:	afb80014 	sw	t8,20(sp)
     e14:	afb90018 	sw	t9,24(sp)
     e18:	4600320d 	trunc.w.s	$f8,$f6
     e1c:	24190008 	li	t9,8
     e20:	240c0008 	li	t4,8
     e24:	4600848d 	trunc.w.s	$f18,$f16
     e28:	440d4000 	mfc1	t5,$f8
     e2c:	afac0028 	sw	t4,40(sp)
     e30:	afb90024 	sw	t9,36(sp)
     e34:	31af00ff 	andi	t7,t5,0xff
     e38:	010f3023 	subu	a2,t0,t7
     e3c:	440f9000 	mfc1	t7,$f18
     e40:	afa00020 	sw	zero,32(sp)
     e44:	afa20080 	sw	v0,128(sp)
     e48:	31ee00ff 	andi	t6,t7,0xff
     e4c:	010ec023 	subu	t8,t0,t6
     e50:	0c000000 	jal	0 <func_80A9EFE0>
     e54:	afb8001c 	sw	t8,28(sp)
     e58:	8fa30080 	lw	v1,128(sp)
     e5c:	ac620004 	sw	v0,4(v1)
     e60:	8fa900b0 	lw	t1,176(sp)
     e64:	912201c6 	lbu	v0,454(t1)
     e68:	10400006 	beqz	v0,e84 <EnMThunder_Draw+0x17c>
     e6c:	3c0efa00 	lui	t6,0xfa00
     e70:	24010001 	li	at,1
     e74:	10410043 	beq	v0,at,f84 <EnMThunder_Draw+0x27c>
     e78:	3c18fa00 	lui	t8,0xfa00
     e7c:	10000082 	b	1088 <EnMThunder_Draw+0x380>
     e80:	8fa400a4 	lw	a0,164(sp)
     e84:	8e0302d0 	lw	v1,720(s0)
     e88:	35ce0080 	ori	t6,t6,0x80
     e8c:	3c01437f 	lui	at,0x437f
     e90:	246f0008 	addiu	t7,v1,8
     e94:	ae0f02d0 	sw	t7,720(s0)
     e98:	ac6e0000 	sw	t6,0(v1)
     e9c:	c52401b0 	lwc1	$f4,432(t1)
     ea0:	44813000 	mtc1	at,$f6
     ea4:	24190001 	li	t9,1
     ea8:	3c014f00 	lui	at,0x4f00
     eac:	46062202 	mul.s	$f8,$f4,$f6
     eb0:	4458f800 	cfc1	t8,$31
     eb4:	44d9f800 	ctc1	t9,$31
     eb8:	00000000 	nop
     ebc:	460042a4 	cvt.w.s	$f10,$f8
     ec0:	4459f800 	cfc1	t9,$31
     ec4:	00000000 	nop
     ec8:	33390078 	andi	t9,t9,0x78
     ecc:	53200013 	beqzl	t9,f1c <EnMThunder_Draw+0x214>
     ed0:	44195000 	mfc1	t9,$f10
     ed4:	44815000 	mtc1	at,$f10
     ed8:	24190001 	li	t9,1
     edc:	460a4281 	sub.s	$f10,$f8,$f10
     ee0:	44d9f800 	ctc1	t9,$31
     ee4:	00000000 	nop
     ee8:	460052a4 	cvt.w.s	$f10,$f10
     eec:	4459f800 	cfc1	t9,$31
     ef0:	00000000 	nop
     ef4:	33390078 	andi	t9,t9,0x78
     ef8:	17200005 	bnez	t9,f10 <EnMThunder_Draw+0x208>
     efc:	00000000 	nop
     f00:	44195000 	mfc1	t9,$f10
     f04:	3c018000 	lui	at,0x8000
     f08:	10000007 	b	f28 <EnMThunder_Draw+0x220>
     f0c:	0321c825 	or	t9,t9,at
     f10:	10000005 	b	f28 <EnMThunder_Draw+0x220>
     f14:	2419ffff 	li	t9,-1
     f18:	44195000 	mfc1	t9,$f10
     f1c:	00000000 	nop
     f20:	0720fffb 	bltz	t9,f10 <EnMThunder_Draw+0x208>
     f24:	00000000 	nop
     f28:	03206025 	move	t4,t9
     f2c:	318d00ff 	andi	t5,t4,0xff
     f30:	2401aa00 	li	at,-22016
     f34:	01a17825 	or	t7,t5,at
     f38:	ac6f0004 	sw	t7,4(v1)
     f3c:	8e0202d0 	lw	v0,720(s0)
     f40:	44d8f800 	ctc1	t8,$31
     f44:	3c190401 	lui	t9,0x401
     f48:	244e0008 	addiu	t6,v0,8
     f4c:	ae0e02d0 	sw	t6,720(s0)
     f50:	27392af0 	addiu	t9,t9,10992
     f54:	3c18de00 	lui	t8,0xde00
     f58:	ac580000 	sw	t8,0(v0)
     f5c:	ac590004 	sw	t9,4(v0)
     f60:	8e0202d0 	lw	v0,720(s0)
     f64:	3c0f0401 	lui	t7,0x401
     f68:	25ef2c10 	addiu	t7,t7,11280
     f6c:	244c0008 	addiu	t4,v0,8
     f70:	ae0c02d0 	sw	t4,720(s0)
     f74:	3c0dde00 	lui	t5,0xde00
     f78:	ac4d0000 	sw	t5,0(v0)
     f7c:	10000041 	b	1084 <EnMThunder_Draw+0x37c>
     f80:	ac4f0004 	sw	t7,4(v0)
     f84:	8e0302d0 	lw	v1,720(s0)
     f88:	37180080 	ori	t8,t8,0x80
     f8c:	3c01437f 	lui	at,0x437f
     f90:	246e0008 	addiu	t6,v1,8
     f94:	ae0e02d0 	sw	t6,720(s0)
     f98:	ac780000 	sw	t8,0(v1)
     f9c:	c53001b0 	lwc1	$f16,432(t1)
     fa0:	44819000 	mtc1	at,$f18
     fa4:	240c0001 	li	t4,1
     fa8:	3c014f00 	lui	at,0x4f00
     fac:	46128102 	mul.s	$f4,$f16,$f18
     fb0:	4459f800 	cfc1	t9,$31
     fb4:	44ccf800 	ctc1	t4,$31
     fb8:	00000000 	nop
     fbc:	460021a4 	cvt.w.s	$f6,$f4
     fc0:	444cf800 	cfc1	t4,$31
     fc4:	00000000 	nop
     fc8:	318c0078 	andi	t4,t4,0x78
     fcc:	51800013 	beqzl	t4,101c <EnMThunder_Draw+0x314>
     fd0:	440c3000 	mfc1	t4,$f6
     fd4:	44813000 	mtc1	at,$f6
     fd8:	240c0001 	li	t4,1
     fdc:	46062181 	sub.s	$f6,$f4,$f6
     fe0:	44ccf800 	ctc1	t4,$31
     fe4:	00000000 	nop
     fe8:	460031a4 	cvt.w.s	$f6,$f6
     fec:	444cf800 	cfc1	t4,$31
     ff0:	00000000 	nop
     ff4:	318c0078 	andi	t4,t4,0x78
     ff8:	15800005 	bnez	t4,1010 <EnMThunder_Draw+0x308>
     ffc:	00000000 	nop
    1000:	440c3000 	mfc1	t4,$f6
    1004:	3c018000 	lui	at,0x8000
    1008:	10000007 	b	1028 <EnMThunder_Draw+0x320>
    100c:	01816025 	or	t4,t4,at
    1010:	10000005 	b	1028 <EnMThunder_Draw+0x320>
    1014:	240cffff 	li	t4,-1
    1018:	440c3000 	mfc1	t4,$f6
    101c:	00000000 	nop
    1020:	0580fffb 	bltz	t4,1010 <EnMThunder_Draw+0x308>
    1024:	00000000 	nop
    1028:	01806825 	move	t5,t4
    102c:	3c01aaff 	lui	at,0xaaff
    1030:	3421ff00 	ori	at,at,0xff00
    1034:	31af00ff 	andi	t7,t5,0xff
    1038:	01e17025 	or	t6,t7,at
    103c:	ac6e0004 	sw	t6,4(v1)
    1040:	8e0202d0 	lw	v0,720(s0)
    1044:	44d9f800 	ctc1	t9,$31
    1048:	3c0c0401 	lui	t4,0x401
    104c:	24580008 	addiu	t8,v0,8
    1050:	ae1802d0 	sw	t8,720(s0)
    1054:	258c2570 	addiu	t4,t4,9584
    1058:	3c19de00 	lui	t9,0xde00
    105c:	ac590000 	sw	t9,0(v0)
    1060:	ac4c0004 	sw	t4,4(v0)
    1064:	8e0202d0 	lw	v0,720(s0)
    1068:	3c0e0401 	lui	t6,0x401
    106c:	25ce2690 	addiu	t6,t6,9872
    1070:	244d0008 	addiu	t5,v0,8
    1074:	ae0d02d0 	sw	t5,720(s0)
    1078:	3c0fde00 	lui	t7,0xde00
    107c:	ac4f0000 	sw	t7,0(v0)
    1080:	ac4e0004 	sw	t6,4(v0)
    1084:	8fa400a4 	lw	a0,164(sp)
    1088:	00002825 	move	a1,zero
    108c:	0c000000 	jal	0 <func_80A9EFE0>
    1090:	248409e0 	addiu	a0,a0,2528
    1094:	8fa400b0 	lw	a0,176(sp)
    1098:	3c014396 	lui	at,0x4396
    109c:	3c06c2c8 	lui	a2,0xc2c8
    10a0:	908201c7 	lbu	v0,455(a0)
    10a4:	5040001d 	beqzl	v0,111c <EnMThunder_Draw+0x414>
    10a8:	44806000 	mtc1	zero,$f12
    10ac:	24010001 	li	at,1
    10b0:	10410005 	beq	v0,at,10c8 <EnMThunder_Draw+0x3c0>
    10b4:	24010002 	li	at,2
    10b8:	10410029 	beq	v0,at,1160 <EnMThunder_Draw+0x458>
    10bc:	24060000 	li	a2,0
    10c0:	1000003a 	b	11ac <EnMThunder_Draw+0x4a4>
    10c4:	00000000 	nop
    10c8:	44806000 	mtc1	zero,$f12
    10cc:	3c01435c 	lui	at,0x435c
    10d0:	44817000 	mtc1	at,$f14
    10d4:	44066000 	mfc1	a2,$f12
    10d8:	0c000000 	jal	0 <func_80A9EFE0>
    10dc:	24070001 	li	a3,1
    10e0:	3c010000 	lui	at,0x0
    10e4:	c42c0000 	lwc1	$f12,0(at)
    10e8:	3c010000 	lui	at,0x0
    10ec:	3c06becc 	lui	a2,0xbecc
    10f0:	34c6cccd 	ori	a2,a2,0xcccd
    10f4:	c42e0000 	lwc1	$f14,0(at)
    10f8:	0c000000 	jal	0 <func_80A9EFE0>
    10fc:	24070001 	li	a3,1
    1100:	3c014680 	lui	at,0x4680
    1104:	44816000 	mtc1	at,$f12
    1108:	0c000000 	jal	0 <func_80A9EFE0>
    110c:	24050001 	li	a1,1
    1110:	10000026 	b	11ac <EnMThunder_Draw+0x4a4>
    1114:	8fa400b0 	lw	a0,176(sp)
    1118:	44806000 	mtc1	zero,$f12
    111c:	44817000 	mtc1	at,$f14
    1120:	0c000000 	jal	0 <func_80A9EFE0>
    1124:	24070001 	li	a3,1
    1128:	3c010000 	lui	at,0x0
    112c:	c42c0000 	lwc1	$f12,0(at)
    1130:	3c01bf80 	lui	at,0xbf80
    1134:	44817000 	mtc1	at,$f14
    1138:	3c06bf33 	lui	a2,0xbf33
    113c:	34c63333 	ori	a2,a2,0x3333
    1140:	0c000000 	jal	0 <func_80A9EFE0>
    1144:	24070001 	li	a3,1
    1148:	3c014680 	lui	at,0x4680
    114c:	44816000 	mtc1	at,$f12
    1150:	0c000000 	jal	0 <func_80A9EFE0>
    1154:	24050001 	li	a1,1
    1158:	10000014 	b	11ac <EnMThunder_Draw+0x4a4>
    115c:	8fa400b0 	lw	a0,176(sp)
    1160:	3c014348 	lui	at,0x4348
    1164:	44816000 	mtc1	at,$f12
    1168:	3c0143af 	lui	at,0x43af
    116c:	44817000 	mtc1	at,$f14
    1170:	0c000000 	jal	0 <func_80A9EFE0>
    1174:	24070001 	li	a3,1
    1178:	3c010000 	lui	at,0x0
    117c:	c42c0000 	lwc1	$f12,0(at)
    1180:	3c010000 	lui	at,0x0
    1184:	3c06bf33 	lui	a2,0xbf33
    1188:	34c63333 	ori	a2,a2,0x3333
    118c:	c42e0000 	lwc1	$f14,0(at)
    1190:	0c000000 	jal	0 <func_80A9EFE0>
    1194:	24070001 	li	a3,1
    1198:	3c014680 	lui	at,0x4680
    119c:	44816000 	mtc1	at,$f12
    11a0:	0c000000 	jal	0 <func_80A9EFE0>
    11a4:	24050001 	li	a1,1
    11a8:	8fa400b0 	lw	a0,176(sp)
    11ac:	3c010000 	lui	at,0x0
    11b0:	c42a0000 	lwc1	$f10,0(at)
    11b4:	c48801b8 	lwc1	$f8,440(a0)
    11b8:	3c0dfa00 	lui	t5,0xfa00
    11bc:	3c013f80 	lui	at,0x3f80
    11c0:	4608503e 	c.le.s	$f10,$f8
    11c4:	8faa00b4 	lw	t2,180(sp)
    11c8:	35ad0080 	ori	t5,t5,0x80
    11cc:	24090014 	li	t1,20
    11d0:	45000024 	bc1f	1264 <EnMThunder_Draw+0x55c>
    11d4:	24070001 	li	a3,1
    11d8:	8faa00b4 	lw	t2,180(sp)
    11dc:	3c013f80 	lui	at,0x3f80
    11e0:	44816000 	mtc1	at,$f12
    11e4:	3c010001 	lui	at,0x1
    11e8:	01415021 	addu	t2,t2,at
    11ec:	8d581de4 	lw	t8,7652(t2)
    11f0:	8e0202d0 	lw	v0,720(s0)
    11f4:	3c010000 	lui	at,0x0
    11f8:	33190007 	andi	t9,t8,0x7
    11fc:	00196080 	sll	t4,t9,0x2
    1200:	002c0821 	addu	at,at,t4
    1204:	c4300000 	lwc1	$f16,0(at)
    1208:	3c0ffa00 	lui	t7,0xfa00
    120c:	244d0008 	addiu	t5,v0,8
    1210:	ae0d02d0 	sw	t5,720(s0)
    1214:	35ef0080 	ori	t7,t7,0x80
    1218:	3c0140c0 	lui	at,0x40c0
    121c:	ac4f0000 	sw	t7,0(v0)
    1220:	44819000 	mtc1	at,$f18
    1224:	909801c8 	lbu	t8,456(a0)
    1228:	2401aa00 	li	at,-22016
    122c:	46128102 	mul.s	$f4,$f16,$f18
    1230:	0301c825 	or	t9,t8,at
    1234:	ac590004 	sw	t9,4(v0)
    1238:	8e0202d0 	lw	v0,720(s0)
    123c:	3c0fff64 	lui	t7,0xff64
    1240:	35ef0080 	ori	t7,t7,0x80
    1244:	244c0008 	addiu	t4,v0,8
    1248:	ae0c02d0 	sw	t4,720(s0)
    124c:	3c0dfb00 	lui	t5,0xfb00
    1250:	24090028 	li	t1,40
    1254:	460c2380 	add.s	$f14,$f4,$f12
    1258:	ac4d0000 	sw	t5,0(v0)
    125c:	1000001d 	b	12d4 <EnMThunder_Draw+0x5cc>
    1260:	ac4f0004 	sw	t7,4(v0)
    1264:	44816000 	mtc1	at,$f12
    1268:	3c010001 	lui	at,0x1
    126c:	01415021 	addu	t2,t2,at
    1270:	8d4e1de4 	lw	t6,7652(t2)
    1274:	8e0202d0 	lw	v0,720(s0)
    1278:	3c010000 	lui	at,0x0
    127c:	31d80007 	andi	t8,t6,0x7
    1280:	0018c880 	sll	t9,t8,0x2
    1284:	00390821 	addu	at,at,t9
    1288:	c4200000 	lwc1	$f0,0(at)
    128c:	244c0008 	addiu	t4,v0,8
    1290:	ae0c02d0 	sw	t4,720(s0)
    1294:	ac4d0000 	sw	t5,0(v0)
    1298:	908e01c8 	lbu	t6,456(a0)
    129c:	3c01aaff 	lui	at,0xaaff
    12a0:	3421ff00 	ori	at,at,0xff00
    12a4:	01c1c025 	or	t8,t6,at
    12a8:	ac580004 	sw	t8,4(v0)
    12ac:	8e0202d0 	lw	v0,720(s0)
    12b0:	46000180 	add.s	$f6,$f0,$f0
    12b4:	3c0d0064 	lui	t5,0x64
    12b8:	24590008 	addiu	t9,v0,8
    12bc:	ae1902d0 	sw	t9,720(s0)
    12c0:	35adff80 	ori	t5,t5,0xff80
    12c4:	3c0cfb00 	lui	t4,0xfb00
    12c8:	460c3380 	add.s	$f14,$f6,$f12
    12cc:	ac4c0000 	sw	t4,0(v0)
    12d0:	ac4d0004 	sw	t5,4(v0)
    12d4:	44067000 	mfc1	a2,$f14
    12d8:	afa9009c 	sw	t1,156(sp)
    12dc:	0c000000 	jal	0 <func_80A9EFE0>
    12e0:	afaa0044 	sw	t2,68(sp)
    12e4:	8e0202d0 	lw	v0,720(s0)
    12e8:	8fa9009c 	lw	t1,156(sp)
    12ec:	8faa0044 	lw	t2,68(sp)
    12f0:	3c0eda38 	lui	t6,0xda38
    12f4:	244f0008 	addiu	t7,v0,8
    12f8:	ae0f02d0 	sw	t7,720(s0)
    12fc:	35ce0003 	ori	t6,t6,0x3
    1300:	ac4e0000 	sw	t6,0(v0)
    1304:	8fb800b4 	lw	t8,180(sp)
    1308:	3c050000 	lui	a1,0x0
    130c:	24a50000 	addiu	a1,a1,0
    1310:	8f040000 	lw	a0,0(t8)
    1314:	240603c0 	li	a2,960
    1318:	afa20054 	sw	v0,84(sp)
    131c:	afa9009c 	sw	t1,156(sp)
    1320:	0c000000 	jal	0 <func_80A9EFE0>
    1324:	afaa0044 	sw	t2,68(sp)
    1328:	8fa30054 	lw	v1,84(sp)
    132c:	8fa9009c 	lw	t1,156(sp)
    1330:	8faa0044 	lw	t2,68(sp)
    1334:	ac620004 	sw	v0,4(v1)
    1338:	8e0202d0 	lw	v0,720(s0)
    133c:	8fab00b4 	lw	t3,180(sp)
    1340:	3c0cdb06 	lui	t4,0xdb06
    1344:	24590008 	addiu	t9,v0,8
    1348:	ae1902d0 	sw	t9,720(s0)
    134c:	358c0024 	ori	t4,t4,0x24
    1350:	ac4c0000 	sw	t4,0(v0)
    1354:	8d431de4 	lw	v1,7652(t2)
    1358:	8d640000 	lw	a0,0(t3)
    135c:	240d0020 	li	t5,32
    1360:	00690019 	multu	v1,t1
    1364:	0003c080 	sll	t8,v1,0x2
    1368:	240f0020 	li	t7,32
    136c:	240e0001 	li	t6,1
    1370:	0303c021 	addu	t8,t8,v1
    1374:	0018c080 	sll	t8,t8,0x2
    1378:	afae0018 	sw	t6,24(sp)
    137c:	afaf0014 	sw	t7,20(sp)
    1380:	afad0010 	sw	t5,16(sp)
    1384:	00033080 	sll	a2,v1,0x2
    1388:	00006012 	mflo	t4
    138c:	318d00ff 	andi	t5,t4,0xff
    1390:	240f0008 	li	t7,8
    1394:	240e0008 	li	t6,8
    1398:	331900ff 	andi	t9,t8,0xff
    139c:	00c33021 	addu	a2,a2,v1
    13a0:	30c600ff 	andi	a2,a2,0xff
    13a4:	afb9001c 	sw	t9,28(sp)
    13a8:	afae0028 	sw	t6,40(sp)
    13ac:	afaf0024 	sw	t7,36(sp)
    13b0:	afad0020 	sw	t5,32(sp)
    13b4:	00002825 	move	a1,zero
    13b8:	00003825 	move	a3,zero
    13bc:	0c000000 	jal	0 <func_80A9EFE0>
    13c0:	afa20050 	sw	v0,80(sp)
    13c4:	8fa80050 	lw	t0,80(sp)
    13c8:	3c0c0401 	lui	t4,0x401
    13cc:	258c3610 	addiu	t4,t4,13840
    13d0:	ad020004 	sw	v0,4(t0)
    13d4:	8e0202d0 	lw	v0,720(s0)
    13d8:	3c19de00 	lui	t9,0xde00
    13dc:	3c060000 	lui	a2,0x0
    13e0:	24580008 	addiu	t8,v0,8
    13e4:	ae1802d0 	sw	t8,720(s0)
    13e8:	ac4c0004 	sw	t4,4(v0)
    13ec:	ac590000 	sw	t9,0(v0)
    13f0:	8fad00b4 	lw	t5,180(sp)
    13f4:	24c60000 	addiu	a2,a2,0
    13f8:	27a40088 	addiu	a0,sp,136
    13fc:	24070407 	li	a3,1031
    1400:	0c000000 	jal	0 <func_80A9EFE0>
    1404:	8da50000 	lw	a1,0(t5)
    1408:	8fbf003c 	lw	ra,60(sp)
    140c:	8fb00038 	lw	s0,56(sp)
    1410:	27bd00b0 	addiu	sp,sp,176
    1414:	03e00008 	jr	ra
    1418:	00000000 	nop
    141c:	00000000 	nop
