
build/src/overlays/actors/ovl_Bg_Mizu_Bwall/z_bg_mizu_bwall.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <func_8089C480>:
       0:	44866000 	mtc1	a2,$f12
       4:	c4a40008 	lwc1	$f4,8(a1)
       8:	44877000 	mtc1	a3,$f14
       c:	c4a80000 	lwc1	$f8,0(a1)
      10:	460c2182 	mul.s	$f6,$f4,$f12
      14:	00000000 	nop
      18:	460e4282 	mul.s	$f10,$f8,$f14
      1c:	460a3400 	add.s	$f16,$f6,$f10
      20:	e4900000 	swc1	$f16,0(a0)
      24:	c4b20004 	lwc1	$f18,4(a1)
      28:	e4920004 	swc1	$f18,4(a0)
      2c:	c4a40008 	lwc1	$f4,8(a1)
      30:	c4a60000 	lwc1	$f6,0(a1)
      34:	460e2202 	mul.s	$f8,$f4,$f14
      38:	00000000 	nop
      3c:	460c3282 	mul.s	$f10,$f6,$f12
      40:	460a4401 	sub.s	$f16,$f8,$f10
      44:	03e00008 	jr	ra
      48:	e4900008 	swc1	$f16,8(a0)

0000004c <BgMizuBwall_Init>:
      4c:	27bdfe40 	addiu	sp,sp,-448
      50:	afb00038 	sw	s0,56(sp)
      54:	00a08025 	move	s0,a1
      58:	afbf005c 	sw	ra,92(sp)
      5c:	afb20040 	sw	s2,64(sp)
      60:	3c050000 	lui	a1,0x0
      64:	00809025 	move	s2,a0
      68:	afbe0058 	sw	s8,88(sp)
      6c:	afb70054 	sw	s7,84(sp)
      70:	afb60050 	sw	s6,80(sp)
      74:	afb5004c 	sw	s5,76(sp)
      78:	afb40048 	sw	s4,72(sp)
      7c:	afb30044 	sw	s3,68(sp)
      80:	afb1003c 	sw	s1,60(sp)
      84:	f7b80030 	sdc1	$f24,48(sp)
      88:	f7b60028 	sdc1	$f22,40(sp)
      8c:	f7b40020 	sdc1	$f20,32(sp)
      90:	afa001b4 	sw	zero,436(sp)
      94:	0c000000 	jal	0 <func_8089C480>
      98:	24a50000 	addiu	a1,a1,0
      9c:	964e001c 	lhu	t6,28(s2)
      a0:	c6440028 	lwc1	$f4,40(s2)
      a4:	3c190000 	lui	t9,0x0
      a8:	31cf000f 	andi	t7,t6,0xf
      ac:	000fc080 	sll	t8,t7,0x2
      b0:	0338c821 	addu	t9,t9,t8
      b4:	e644029c 	swc1	$f4,668(s2)
      b8:	8f390000 	lw	t9,0(t9)
      bc:	02402025 	move	a0,s2
      c0:	24050001 	li	a1,1
      c4:	0c000000 	jal	0 <func_8089C480>
      c8:	ae5902b8 	sw	t9,696(s2)
      cc:	9648001c 	lhu	t0,28(s2)
      d0:	3c040000 	lui	a0,0x0
      d4:	27a501b4 	addiu	a1,sp,436
      d8:	3109000f 	andi	t1,t0,0xf
      dc:	00095080 	sll	t2,t1,0x2
      e0:	008a2021 	addu	a0,a0,t2
      e4:	0c000000 	jal	0 <func_8089C480>
      e8:	8c840000 	lw	a0,0(a0)
      ec:	26110810 	addiu	s1,s0,2064
      f0:	02202825 	move	a1,s1
      f4:	02002025 	move	a0,s0
      f8:	02403025 	move	a2,s2
      fc:	0c000000 	jal	0 <func_8089C480>
     100:	8fa701b4 	lw	a3,436(sp)
     104:	9643001c 	lhu	v1,28(s2)
     108:	ae42014c 	sw	v0,332(s2)
     10c:	306b000f 	andi	t3,v1,0xf
     110:	2d610005 	sltiu	at,t3,5
     114:	102001fa 	beqz	at,900 <L8089CBF0+0x190>
     118:	000b5880 	sll	t3,t3,0x2
     11c:	3c010000 	lui	at,0x0
     120:	002b0821 	addu	at,at,t3
     124:	8c2b0000 	lw	t3,0(at)
     128:	01600008 	jr	t3
     12c:	00000000 	nop

00000130 <L8089C5B0>:
     130:	00032a03 	sra	a1,v1,0x8
     134:	30a5003f 	andi	a1,a1,0x3f
     138:	0c000000 	jal	0 <func_8089C480>
     13c:	02002025 	move	a0,s0
     140:	1040000a 	beqz	v0,16c <L8089C5B0+0x3c>
     144:	02002025 	move	a0,s0
     148:	02002025 	move	a0,s0
     14c:	02202825 	move	a1,s1
     150:	0c000000 	jal	0 <func_8089C480>
     154:	8e46014c 	lw	a2,332(s2)
     158:	3c0c0000 	lui	t4,0x0
     15c:	258c0000 	addiu	t4,t4,0
     160:	ae4002b8 	sw	zero,696(s2)
     164:	100001e6 	b	900 <L8089CBF0+0x190>
     168:	ae4c0298 	sw	t4,664(s2)
     16c:	265e0164 	addiu	s8,s2,356
     170:	0c000000 	jal	0 <func_8089C480>
     174:	03c02825 	move	a1,s8
     178:	3c130000 	lui	s3,0x0
     17c:	26730000 	addiu	s3,s3,0
     180:	264d0184 	addiu	t5,s2,388
     184:	afad0010 	sw	t5,16(sp)
     188:	02603825 	move	a3,s3
     18c:	02002025 	move	a0,s0
     190:	03c02825 	move	a1,s8
     194:	0c000000 	jal	0 <func_8089C480>
     198:	02403025 	move	a2,s2
     19c:	1440000b 	bnez	v0,1cc <L8089C5B0+0x9c>
     1a0:	3c040000 	lui	a0,0x0
     1a4:	3c050000 	lui	a1,0x0
     1a8:	24a50000 	addiu	a1,a1,0
     1ac:	24840000 	addiu	a0,a0,0
     1b0:	240601e4 	li	a2,484
     1b4:	0c000000 	jal	0 <func_8089C480>
     1b8:	8647001c 	lh	a3,28(s2)
     1bc:	0c000000 	jal	0 <func_8089C480>
     1c0:	02402025 	move	a0,s2
     1c4:	100001cf 	b	904 <L8089CBF0+0x194>
     1c8:	8fbf005c 	lw	ra,92(sp)
     1cc:	0c000000 	jal	0 <func_8089C480>
     1d0:	864400b6 	lh	a0,182(s2)
     1d4:	46000586 	mov.s	$f22,$f0
     1d8:	0c000000 	jal	0 <func_8089C480>
     1dc:	864400b6 	lh	a0,182(s2)
     1e0:	3c014000 	lui	at,0x4000
     1e4:	27b50198 	addiu	s5,sp,408
     1e8:	4481a000 	mtc1	at,$f20
     1ec:	46000606 	mov.s	$f24,$f0
     1f0:	02a0b025 	move	s6,s5
     1f4:	0000a025 	move	s4,zero
     1f8:	24170002 	li	s7,2
     1fc:	00008825 	move	s1,zero
     200:	27b00174 	addiu	s0,sp,372
     204:	8e6f000c 	lw	t7,12(s3)
     208:	0014c100 	sll	t8,s4,0x4
     20c:	0314c023 	subu	t8,t8,s4
     210:	0018c080 	sll	t8,t8,0x2
     214:	01f8c821 	addu	t9,t7,t8
     218:	03311021 	addu	v0,t9,s1
     21c:	c4460018 	lwc1	$f6,24(v0)
     220:	4406b000 	mfc1	a2,$f22
     224:	4407c000 	mfc1	a3,$f24
     228:	e7a60198 	swc1	$f6,408(sp)
     22c:	c448001c 	lwc1	$f8,28(v0)
     230:	02002025 	move	a0,s0
     234:	02a02825 	move	a1,s5
     238:	e7a8019c 	swc1	$f8,412(sp)
     23c:	c44a0020 	lwc1	$f10,32(v0)
     240:	46145400 	add.s	$f16,$f10,$f20
     244:	0c000000 	jal	0 <func_8089C480>
     248:	e7b001a0 	swc1	$f16,416(sp)
     24c:	c6120000 	lwc1	$f18,0(s0)
     250:	c6440024 	lwc1	$f4,36(s2)
     254:	c6080004 	lwc1	$f8,4(s0)
     258:	2610000c 	addiu	s0,s0,12
     25c:	46049180 	add.s	$f6,$f18,$f4
     260:	c612fffc 	lwc1	$f18,-4(s0)
     264:	2631000c 	addiu	s1,s1,12
     268:	e606fff4 	swc1	$f6,-12(s0)
     26c:	c64a0028 	lwc1	$f10,40(s2)
     270:	460a4400 	add.s	$f16,$f8,$f10
     274:	e610fff8 	swc1	$f16,-8(s0)
     278:	c644002c 	lwc1	$f4,44(s2)
     27c:	46049180 	add.s	$f6,$f18,$f4
     280:	1616ffe0 	bne	s0,s6,204 <L8089C5B0+0xd4>
     284:	e606fffc 	swc1	$f6,-4(s0)
     288:	27a8018c 	addiu	t0,sp,396
     28c:	afa80010 	sw	t0,16(sp)
     290:	03c02025 	move	a0,s8
     294:	02802825 	move	a1,s4
     298:	27a60174 	addiu	a2,sp,372
     29c:	0c000000 	jal	0 <func_8089C480>
     2a0:	27a70180 	addiu	a3,sp,384
     2a4:	26940001 	addiu	s4,s4,1
     2a8:	5697ffd5 	bnel	s4,s7,200 <L8089C5B0+0xd0>
     2ac:	00008825 	move	s1,zero
     2b0:	3c090000 	lui	t1,0x0
     2b4:	25290000 	addiu	t1,t1,0
     2b8:	10000191 	b	900 <L8089CBF0+0x190>
     2bc:	ae490298 	sw	t1,664(s2)

000002c0 <L8089C740>:
     2c0:	00032a03 	sra	a1,v1,0x8
     2c4:	30a5003f 	andi	a1,a1,0x3f
     2c8:	0c000000 	jal	0 <func_8089C480>
     2cc:	02002025 	move	a0,s0
     2d0:	1040000a 	beqz	v0,2fc <L8089C740+0x3c>
     2d4:	02002025 	move	a0,s0
     2d8:	02002025 	move	a0,s0
     2dc:	02202825 	move	a1,s1
     2e0:	0c000000 	jal	0 <func_8089C480>
     2e4:	8e46014c 	lw	a2,332(s2)
     2e8:	3c0a0000 	lui	t2,0x0
     2ec:	254a0000 	addiu	t2,t2,0
     2f0:	ae4002b8 	sw	zero,696(s2)
     2f4:	10000182 	b	900 <L8089CBF0+0x190>
     2f8:	ae4a0298 	sw	t2,664(s2)
     2fc:	265e0164 	addiu	s8,s2,356
     300:	0c000000 	jal	0 <func_8089C480>
     304:	03c02825 	move	a1,s8
     308:	3c160000 	lui	s6,0x0
     30c:	26d60000 	addiu	s6,s6,0
     310:	264b0184 	addiu	t3,s2,388
     314:	afab0010 	sw	t3,16(sp)
     318:	02c03825 	move	a3,s6
     31c:	02002025 	move	a0,s0
     320:	03c02825 	move	a1,s8
     324:	0c000000 	jal	0 <func_8089C480>
     328:	02403025 	move	a2,s2
     32c:	1440000b 	bnez	v0,35c <L8089C740+0x9c>
     330:	3c040000 	lui	a0,0x0
     334:	3c050000 	lui	a1,0x0
     338:	24a50000 	addiu	a1,a1,0
     33c:	24840000 	addiu	a0,a0,0
     340:	2406022e 	li	a2,558
     344:	0c000000 	jal	0 <func_8089C480>
     348:	8647001c 	lh	a3,28(s2)
     34c:	0c000000 	jal	0 <func_8089C480>
     350:	02402025 	move	a0,s2
     354:	1000016b 	b	904 <L8089CBF0+0x194>
     358:	8fbf005c 	lw	ra,92(sp)
     35c:	0c000000 	jal	0 <func_8089C480>
     360:	864400b6 	lh	a0,182(s2)
     364:	46000586 	mov.s	$f22,$f0
     368:	0c000000 	jal	0 <func_8089C480>
     36c:	864400b6 	lh	a0,182(s2)
     370:	3c014000 	lui	at,0x4000
     374:	27b40158 	addiu	s4,sp,344
     378:	4481a000 	mtc1	at,$f20
     37c:	46000606 	mov.s	$f24,$f0
     380:	0280a825 	move	s5,s4
     384:	00009825 	move	s3,zero
     388:	27b70134 	addiu	s7,sp,308
     38c:	00008825 	move	s1,zero
     390:	27b00134 	addiu	s0,sp,308
     394:	8ecd000c 	lw	t5,12(s6)
     398:	00137100 	sll	t6,s3,0x4
     39c:	01d37023 	subu	t6,t6,s3
     3a0:	000e7080 	sll	t6,t6,0x2
     3a4:	01ae7821 	addu	t7,t5,t6
     3a8:	01f11021 	addu	v0,t7,s1
     3ac:	c4480018 	lwc1	$f8,24(v0)
     3b0:	4406b000 	mfc1	a2,$f22
     3b4:	4407c000 	mfc1	a3,$f24
     3b8:	e7a80158 	swc1	$f8,344(sp)
     3bc:	c44a001c 	lwc1	$f10,28(v0)
     3c0:	02002025 	move	a0,s0
     3c4:	02802825 	move	a1,s4
     3c8:	e7aa015c 	swc1	$f10,348(sp)
     3cc:	c4500020 	lwc1	$f16,32(v0)
     3d0:	46148480 	add.s	$f18,$f16,$f20
     3d4:	0c000000 	jal	0 <func_8089C480>
     3d8:	e7b20160 	swc1	$f18,352(sp)
     3dc:	c6040000 	lwc1	$f4,0(s0)
     3e0:	c6460024 	lwc1	$f6,36(s2)
     3e4:	c60a0004 	lwc1	$f10,4(s0)
     3e8:	2610000c 	addiu	s0,s0,12
     3ec:	46062200 	add.s	$f8,$f4,$f6
     3f0:	c604fffc 	lwc1	$f4,-4(s0)
     3f4:	2631000c 	addiu	s1,s1,12
     3f8:	e608fff4 	swc1	$f8,-12(s0)
     3fc:	c6500028 	lwc1	$f16,40(s2)
     400:	46105480 	add.s	$f18,$f10,$f16
     404:	e612fff8 	swc1	$f18,-8(s0)
     408:	c646002c 	lwc1	$f6,44(s2)
     40c:	46062200 	add.s	$f8,$f4,$f6
     410:	1615ffe0 	bne	s0,s5,394 <L8089C740+0xd4>
     414:	e608fffc 	swc1	$f8,-4(s0)
     418:	27b8014c 	addiu	t8,sp,332
     41c:	afb80010 	sw	t8,16(sp)
     420:	03c02025 	move	a0,s8
     424:	02602825 	move	a1,s3
     428:	02e03025 	move	a2,s7
     42c:	0c000000 	jal	0 <func_8089C480>
     430:	27a70140 	addiu	a3,sp,320
     434:	26730001 	addiu	s3,s3,1
     438:	24010001 	li	at,1
     43c:	5661ffd4 	bnel	s3,at,390 <L8089C740+0xd0>
     440:	00008825 	move	s1,zero
     444:	3c190000 	lui	t9,0x0
     448:	27390000 	addiu	t9,t9,0
     44c:	1000012c 	b	900 <L8089CBF0+0x190>
     450:	ae590298 	sw	t9,664(s2)

00000454 <L8089C8D4>:
     454:	00032a03 	sra	a1,v1,0x8
     458:	30a5003f 	andi	a1,a1,0x3f
     45c:	0c000000 	jal	0 <func_8089C480>
     460:	02002025 	move	a0,s0
     464:	1040000a 	beqz	v0,490 <L8089C8D4+0x3c>
     468:	02002025 	move	a0,s0
     46c:	02002025 	move	a0,s0
     470:	02202825 	move	a1,s1
     474:	0c000000 	jal	0 <func_8089C480>
     478:	8e46014c 	lw	a2,332(s2)
     47c:	3c080000 	lui	t0,0x0
     480:	25080000 	addiu	t0,t0,0
     484:	ae4002b8 	sw	zero,696(s2)
     488:	1000011d 	b	900 <L8089CBF0+0x190>
     48c:	ae480298 	sw	t0,664(s2)
     490:	265e0164 	addiu	s8,s2,356
     494:	0c000000 	jal	0 <func_8089C480>
     498:	03c02825 	move	a1,s8
     49c:	3c070000 	lui	a3,0x0
     4a0:	26490184 	addiu	t1,s2,388
     4a4:	afa90010 	sw	t1,16(sp)
     4a8:	24e70000 	addiu	a3,a3,0
     4ac:	02002025 	move	a0,s0
     4b0:	03c02825 	move	a1,s8
     4b4:	0c000000 	jal	0 <func_8089C480>
     4b8:	02403025 	move	a2,s2
     4bc:	1440000b 	bnez	v0,4ec <L8089C8D4+0x98>
     4c0:	3c040000 	lui	a0,0x0
     4c4:	3c050000 	lui	a1,0x0
     4c8:	24a50000 	addiu	a1,a1,0
     4cc:	24840000 	addiu	a0,a0,0
     4d0:	2406027e 	li	a2,638
     4d4:	0c000000 	jal	0 <func_8089C480>
     4d8:	8647001c 	lh	a3,28(s2)
     4dc:	0c000000 	jal	0 <func_8089C480>
     4e0:	02402025 	move	a0,s2
     4e4:	10000107 	b	904 <L8089CBF0+0x194>
     4e8:	8fbf005c 	lw	ra,92(sp)
     4ec:	0c000000 	jal	0 <func_8089C480>
     4f0:	864400b6 	lh	a0,182(s2)
     4f4:	46000506 	mov.s	$f20,$f0
     4f8:	0c000000 	jal	0 <func_8089C480>
     4fc:	864400b6 	lh	a0,182(s2)
     500:	27b50118 	addiu	s5,sp,280
     504:	3c130000 	lui	s3,0x0
     508:	46000586 	mov.s	$f22,$f0
     50c:	26730000 	addiu	s3,s3,0
     510:	02a0b025 	move	s6,s5
     514:	0000a025 	move	s4,zero
     518:	24170002 	li	s7,2
     51c:	00008825 	move	s1,zero
     520:	27b000f4 	addiu	s0,sp,244
     524:	8e6b000c 	lw	t3,12(s3)
     528:	00146100 	sll	t4,s4,0x4
     52c:	01946023 	subu	t4,t4,s4
     530:	000c6080 	sll	t4,t4,0x2
     534:	016c6821 	addu	t5,t3,t4
     538:	01b11021 	addu	v0,t5,s1
     53c:	c44a0018 	lwc1	$f10,24(v0)
     540:	4406a000 	mfc1	a2,$f20
     544:	4407b000 	mfc1	a3,$f22
     548:	e7aa0118 	swc1	$f10,280(sp)
     54c:	c450001c 	lwc1	$f16,28(v0)
     550:	02002025 	move	a0,s0
     554:	02a02825 	move	a1,s5
     558:	e7b0011c 	swc1	$f16,284(sp)
     55c:	c4520020 	lwc1	$f18,32(v0)
     560:	0c000000 	jal	0 <func_8089C480>
     564:	e7b20120 	swc1	$f18,288(sp)
     568:	c6040000 	lwc1	$f4,0(s0)
     56c:	c6460024 	lwc1	$f6,36(s2)
     570:	c60a0004 	lwc1	$f10,4(s0)
     574:	2610000c 	addiu	s0,s0,12
     578:	46062200 	add.s	$f8,$f4,$f6
     57c:	c604fffc 	lwc1	$f4,-4(s0)
     580:	2631000c 	addiu	s1,s1,12
     584:	e608fff4 	swc1	$f8,-12(s0)
     588:	c6500028 	lwc1	$f16,40(s2)
     58c:	46105480 	add.s	$f18,$f10,$f16
     590:	e612fff8 	swc1	$f18,-8(s0)
     594:	c646002c 	lwc1	$f6,44(s2)
     598:	46062200 	add.s	$f8,$f4,$f6
     59c:	1616ffe1 	bne	s0,s6,524 <L8089C8D4+0xd0>
     5a0:	e608fffc 	swc1	$f8,-4(s0)
     5a4:	27ae010c 	addiu	t6,sp,268
     5a8:	afae0010 	sw	t6,16(sp)
     5ac:	03c02025 	move	a0,s8
     5b0:	02802825 	move	a1,s4
     5b4:	27a600f4 	addiu	a2,sp,244
     5b8:	0c000000 	jal	0 <func_8089C480>
     5bc:	27a70100 	addiu	a3,sp,256
     5c0:	26940001 	addiu	s4,s4,1
     5c4:	5697ffd6 	bnel	s4,s7,520 <L8089C8D4+0xcc>
     5c8:	00008825 	move	s1,zero
     5cc:	3c0f0000 	lui	t7,0x0
     5d0:	25ef0000 	addiu	t7,t7,0
     5d4:	100000ca 	b	900 <L8089CBF0+0x190>
     5d8:	ae4f0298 	sw	t7,664(s2)

000005dc <L8089CA5C>:
     5dc:	00032a03 	sra	a1,v1,0x8
     5e0:	30a5003f 	andi	a1,a1,0x3f
     5e4:	0c000000 	jal	0 <func_8089C480>
     5e8:	02002025 	move	a0,s0
     5ec:	1040000a 	beqz	v0,618 <L8089CA5C+0x3c>
     5f0:	02002025 	move	a0,s0
     5f4:	02002025 	move	a0,s0
     5f8:	02202825 	move	a1,s1
     5fc:	0c000000 	jal	0 <func_8089C480>
     600:	8e46014c 	lw	a2,332(s2)
     604:	3c180000 	lui	t8,0x0
     608:	27180000 	addiu	t8,t8,0
     60c:	ae4002b8 	sw	zero,696(s2)
     610:	100000bb 	b	900 <L8089CBF0+0x190>
     614:	ae580298 	sw	t8,664(s2)
     618:	265e0164 	addiu	s8,s2,356
     61c:	0c000000 	jal	0 <func_8089C480>
     620:	03c02825 	move	a1,s8
     624:	3c070000 	lui	a3,0x0
     628:	26590184 	addiu	t9,s2,388
     62c:	afb90010 	sw	t9,16(sp)
     630:	24e70000 	addiu	a3,a3,0
     634:	02002025 	move	a0,s0
     638:	03c02825 	move	a1,s8
     63c:	0c000000 	jal	0 <func_8089C480>
     640:	02403025 	move	a2,s2
     644:	1440000b 	bnez	v0,674 <L8089CA5C+0x98>
     648:	3c040000 	lui	a0,0x0
     64c:	3c050000 	lui	a1,0x0
     650:	24a50000 	addiu	a1,a1,0
     654:	24840000 	addiu	a0,a0,0
     658:	240602d4 	li	a2,724
     65c:	0c000000 	jal	0 <func_8089C480>
     660:	8647001c 	lh	a3,28(s2)
     664:	0c000000 	jal	0 <func_8089C480>
     668:	02402025 	move	a0,s2
     66c:	100000a5 	b	904 <L8089CBF0+0x194>
     670:	8fbf005c 	lw	ra,92(sp)
     674:	0c000000 	jal	0 <func_8089C480>
     678:	864400b6 	lh	a0,182(s2)
     67c:	46000586 	mov.s	$f22,$f0
     680:	0c000000 	jal	0 <func_8089C480>
     684:	864400b6 	lh	a0,182(s2)
     688:	3c014000 	lui	at,0x4000
     68c:	27b500d8 	addiu	s5,sp,216
     690:	3c130000 	lui	s3,0x0
     694:	4481a000 	mtc1	at,$f20
     698:	46000606 	mov.s	$f24,$f0
     69c:	26730000 	addiu	s3,s3,0
     6a0:	02a0b025 	move	s6,s5
     6a4:	0000a025 	move	s4,zero
     6a8:	24170002 	li	s7,2
     6ac:	00008825 	move	s1,zero
     6b0:	27b000b4 	addiu	s0,sp,180
     6b4:	8e69000c 	lw	t1,12(s3)
     6b8:	00145100 	sll	t2,s4,0x4
     6bc:	01545023 	subu	t2,t2,s4
     6c0:	000a5080 	sll	t2,t2,0x2
     6c4:	012a5821 	addu	t3,t1,t2
     6c8:	01711021 	addu	v0,t3,s1
     6cc:	c44a0018 	lwc1	$f10,24(v0)
     6d0:	4406b000 	mfc1	a2,$f22
     6d4:	4407c000 	mfc1	a3,$f24
     6d8:	e7aa00d8 	swc1	$f10,216(sp)
     6dc:	c450001c 	lwc1	$f16,28(v0)
     6e0:	02002025 	move	a0,s0
     6e4:	02a02825 	move	a1,s5
     6e8:	e7b000dc 	swc1	$f16,220(sp)
     6ec:	c4520020 	lwc1	$f18,32(v0)
     6f0:	46149100 	add.s	$f4,$f18,$f20
     6f4:	0c000000 	jal	0 <func_8089C480>
     6f8:	e7a400e0 	swc1	$f4,224(sp)
     6fc:	c6060000 	lwc1	$f6,0(s0)
     700:	c6480024 	lwc1	$f8,36(s2)
     704:	c6100004 	lwc1	$f16,4(s0)
     708:	2610000c 	addiu	s0,s0,12
     70c:	46083280 	add.s	$f10,$f6,$f8
     710:	c606fffc 	lwc1	$f6,-4(s0)
     714:	2631000c 	addiu	s1,s1,12
     718:	e60afff4 	swc1	$f10,-12(s0)
     71c:	c6520028 	lwc1	$f18,40(s2)
     720:	46128100 	add.s	$f4,$f16,$f18
     724:	e604fff8 	swc1	$f4,-8(s0)
     728:	c648002c 	lwc1	$f8,44(s2)
     72c:	46083280 	add.s	$f10,$f6,$f8
     730:	1616ffe0 	bne	s0,s6,6b4 <L8089CA5C+0xd8>
     734:	e60afffc 	swc1	$f10,-4(s0)
     738:	27ac00cc 	addiu	t4,sp,204
     73c:	afac0010 	sw	t4,16(sp)
     740:	03c02025 	move	a0,s8
     744:	02802825 	move	a1,s4
     748:	27a600b4 	addiu	a2,sp,180
     74c:	0c000000 	jal	0 <func_8089C480>
     750:	27a700c0 	addiu	a3,sp,192
     754:	26940001 	addiu	s4,s4,1
     758:	5697ffd5 	bnel	s4,s7,6b0 <L8089CA5C+0xd4>
     75c:	00008825 	move	s1,zero
     760:	3c0d0000 	lui	t5,0x0
     764:	25ad0000 	addiu	t5,t5,0
     768:	10000065 	b	900 <L8089CBF0+0x190>
     76c:	ae4d0298 	sw	t5,664(s2)

00000770 <L8089CBF0>:
     770:	00032a03 	sra	a1,v1,0x8
     774:	30a5003f 	andi	a1,a1,0x3f
     778:	0c000000 	jal	0 <func_8089C480>
     77c:	02002025 	move	a0,s0
     780:	1040000a 	beqz	v0,7ac <L8089CBF0+0x3c>
     784:	02002025 	move	a0,s0
     788:	02002025 	move	a0,s0
     78c:	02202825 	move	a1,s1
     790:	0c000000 	jal	0 <func_8089C480>
     794:	8e46014c 	lw	a2,332(s2)
     798:	3c0e0000 	lui	t6,0x0
     79c:	25ce0000 	addiu	t6,t6,0
     7a0:	ae4002b8 	sw	zero,696(s2)
     7a4:	10000056 	b	900 <L8089CBF0+0x190>
     7a8:	ae4e0298 	sw	t6,664(s2)
     7ac:	265e0164 	addiu	s8,s2,356
     7b0:	0c000000 	jal	0 <func_8089C480>
     7b4:	03c02825 	move	a1,s8
     7b8:	3c070000 	lui	a3,0x0
     7bc:	264f0184 	addiu	t7,s2,388
     7c0:	afaf0010 	sw	t7,16(sp)
     7c4:	24e70000 	addiu	a3,a3,0
     7c8:	02002025 	move	a0,s0
     7cc:	03c02825 	move	a1,s8
     7d0:	0c000000 	jal	0 <func_8089C480>
     7d4:	02403025 	move	a2,s2
     7d8:	1440000b 	bnez	v0,808 <L8089CBF0+0x98>
     7dc:	3c040000 	lui	a0,0x0
     7e0:	3c050000 	lui	a1,0x0
     7e4:	24a50000 	addiu	a1,a1,0
     7e8:	24840000 	addiu	a0,a0,0
     7ec:	2406031e 	li	a2,798
     7f0:	0c000000 	jal	0 <func_8089C480>
     7f4:	8647001c 	lh	a3,28(s2)
     7f8:	0c000000 	jal	0 <func_8089C480>
     7fc:	02402025 	move	a0,s2
     800:	10000040 	b	904 <L8089CBF0+0x194>
     804:	8fbf005c 	lw	ra,92(sp)
     808:	0c000000 	jal	0 <func_8089C480>
     80c:	864400b6 	lh	a0,182(s2)
     810:	46000586 	mov.s	$f22,$f0
     814:	0c000000 	jal	0 <func_8089C480>
     818:	864400b6 	lh	a0,182(s2)
     81c:	3c014000 	lui	at,0x4000
     820:	27b50098 	addiu	s5,sp,152
     824:	3c130000 	lui	s3,0x0
     828:	4481a000 	mtc1	at,$f20
     82c:	46000606 	mov.s	$f24,$f0
     830:	26730000 	addiu	s3,s3,0
     834:	02a0b025 	move	s6,s5
     838:	0000a025 	move	s4,zero
     83c:	24170002 	li	s7,2
     840:	00008825 	move	s1,zero
     844:	27b00074 	addiu	s0,sp,116
     848:	8e79000c 	lw	t9,12(s3)
     84c:	00144100 	sll	t0,s4,0x4
     850:	01144023 	subu	t0,t0,s4
     854:	00084080 	sll	t0,t0,0x2
     858:	03284821 	addu	t1,t9,t0
     85c:	01311021 	addu	v0,t1,s1
     860:	c4500018 	lwc1	$f16,24(v0)
     864:	4406b000 	mfc1	a2,$f22
     868:	4407c000 	mfc1	a3,$f24
     86c:	e7b00098 	swc1	$f16,152(sp)
     870:	c452001c 	lwc1	$f18,28(v0)
     874:	02002025 	move	a0,s0
     878:	02a02825 	move	a1,s5
     87c:	e7b2009c 	swc1	$f18,156(sp)
     880:	c4440020 	lwc1	$f4,32(v0)
     884:	46142180 	add.s	$f6,$f4,$f20
     888:	0c000000 	jal	0 <func_8089C480>
     88c:	e7a600a0 	swc1	$f6,160(sp)
     890:	c6080000 	lwc1	$f8,0(s0)
     894:	c64a0024 	lwc1	$f10,36(s2)
     898:	c6120004 	lwc1	$f18,4(s0)
     89c:	2610000c 	addiu	s0,s0,12
     8a0:	460a4400 	add.s	$f16,$f8,$f10
     8a4:	c608fffc 	lwc1	$f8,-4(s0)
     8a8:	2631000c 	addiu	s1,s1,12
     8ac:	e610fff4 	swc1	$f16,-12(s0)
     8b0:	c6440028 	lwc1	$f4,40(s2)
     8b4:	46049180 	add.s	$f6,$f18,$f4
     8b8:	e606fff8 	swc1	$f6,-8(s0)
     8bc:	c64a002c 	lwc1	$f10,44(s2)
     8c0:	460a4400 	add.s	$f16,$f8,$f10
     8c4:	1616ffe0 	bne	s0,s6,848 <L8089CBF0+0xd8>
     8c8:	e610fffc 	swc1	$f16,-4(s0)
     8cc:	27aa008c 	addiu	t2,sp,140
     8d0:	afaa0010 	sw	t2,16(sp)
     8d4:	03c02025 	move	a0,s8
     8d8:	02802825 	move	a1,s4
     8dc:	27a60074 	addiu	a2,sp,116
     8e0:	0c000000 	jal	0 <func_8089C480>
     8e4:	27a70080 	addiu	a3,sp,128
     8e8:	26940001 	addiu	s4,s4,1
     8ec:	5697ffd5 	bnel	s4,s7,844 <L8089CBF0+0xd4>
     8f0:	00008825 	move	s1,zero
     8f4:	3c0b0000 	lui	t3,0x0
     8f8:	256b0000 	addiu	t3,t3,0
     8fc:	ae4b0298 	sw	t3,664(s2)
     900:	8fbf005c 	lw	ra,92(sp)
     904:	d7b40020 	ldc1	$f20,32(sp)
     908:	d7b60028 	ldc1	$f22,40(sp)
     90c:	d7b80030 	ldc1	$f24,48(sp)
     910:	8fb00038 	lw	s0,56(sp)
     914:	8fb1003c 	lw	s1,60(sp)
     918:	8fb20040 	lw	s2,64(sp)
     91c:	8fb30044 	lw	s3,68(sp)
     920:	8fb40048 	lw	s4,72(sp)
     924:	8fb5004c 	lw	s5,76(sp)
     928:	8fb60050 	lw	s6,80(sp)
     92c:	8fb70054 	lw	s7,84(sp)
     930:	8fbe0058 	lw	s8,88(sp)
     934:	03e00008 	jr	ra
     938:	27bd01c0 	addiu	sp,sp,448

0000093c <BgMizuBwall_Destroy>:
     93c:	27bdffe8 	addiu	sp,sp,-24
     940:	afa40018 	sw	a0,24(sp)
     944:	8fae0018 	lw	t6,24(sp)
     948:	afbf0014 	sw	ra,20(sp)
     94c:	00a03825 	move	a3,a1
     950:	00a02025 	move	a0,a1
     954:	8dc6014c 	lw	a2,332(t6)
     958:	afa7001c 	sw	a3,28(sp)
     95c:	0c000000 	jal	0 <func_8089C480>
     960:	24a50810 	addiu	a1,a1,2064
     964:	8fa50018 	lw	a1,24(sp)
     968:	8fa4001c 	lw	a0,28(sp)
     96c:	0c000000 	jal	0 <func_8089C480>
     970:	24a50164 	addiu	a1,a1,356
     974:	8fbf0014 	lw	ra,20(sp)
     978:	27bd0018 	addiu	sp,sp,24
     97c:	03e00008 	jr	ra
     980:	00000000 	nop

00000984 <func_8089CE04>:
     984:	8cae07c0 	lw	t6,1984(a1)
     988:	3c01c170 	lui	at,0xc170
     98c:	44811000 	mtc1	at,$f2
     990:	8dc20028 	lw	v0,40(t6)
     994:	3c010000 	lui	at,0x0
     998:	240300a0 	li	v1,160
     99c:	844f0022 	lh	t7,34(v0)
     9a0:	240200ff 	li	v0,255
     9a4:	448f2000 	mtc1	t7,$f4
     9a8:	00000000 	nop
     9ac:	46802020 	cvt.s.w	$f0,$f4
     9b0:	4602003c 	c.lt.s	$f0,$f2
     9b4:	00000000 	nop
     9b8:	45000007 	bc1f	9d8 <func_8089CE04+0x54>
     9bc:	00000000 	nop
     9c0:	3c0142be 	lui	at,0x42be
     9c4:	44817000 	mtc1	at,$f14
     9c8:	3c010000 	lui	at,0x0
     9cc:	ac8202a0 	sw	v0,672(a0)
     9d0:	10000019 	b	a38 <func_8089CE04+0xb4>
     9d4:	c42c0000 	lwc1	$f12,0(at)
     9d8:	c42c0000 	lwc1	$f12,0(at)
     9dc:	240300a0 	li	v1,160
     9e0:	3c0142be 	lui	at,0x42be
     9e4:	460c003c 	c.lt.s	$f0,$f12
     9e8:	240200ff 	li	v0,255
     9ec:	45020011 	bc1fl	a34 <func_8089CE04+0xb0>
     9f0:	44817000 	mtc1	at,$f14
     9f4:	3c0142be 	lui	at,0x42be
     9f8:	44817000 	mtc1	at,$f14
     9fc:	46020181 	sub.s	$f6,$f0,$f2
     a00:	3c0143e6 	lui	at,0x43e6
     a04:	44814000 	mtc1	at,$f8
     a08:	240200ff 	li	v0,255
     a0c:	240300a0 	li	v1,160
     a10:	46083283 	div.s	$f10,$f6,$f8
     a14:	460e5402 	mul.s	$f16,$f10,$f14
     a18:	4600848d 	trunc.w.s	$f18,$f16
     a1c:	44199000 	mfc1	t9,$f18
     a20:	00000000 	nop
     a24:	00594023 	subu	t0,v0,t9
     a28:	10000003 	b	a38 <func_8089CE04+0xb4>
     a2c:	ac8802a0 	sw	t0,672(a0)
     a30:	44817000 	mtc1	at,$f14
     a34:	ac8302a0 	sw	v1,672(a0)
     a38:	460c003c 	c.lt.s	$f0,$f12
     a3c:	3c010000 	lui	at,0x0
     a40:	45000003 	bc1f	a50 <func_8089CE04+0xcc>
     a44:	00000000 	nop
     a48:	10000013 	b	a98 <func_8089CE04+0x114>
     a4c:	ac8202a4 	sw	v0,676(a0)
     a50:	c4240000 	lwc1	$f4,0(at)
     a54:	3c0143a0 	lui	at,0x43a0
     a58:	4604003c 	c.lt.s	$f0,$f4
     a5c:	00000000 	nop
     a60:	4502000d 	bc1fl	a98 <func_8089CE04+0x114>
     a64:	ac8302a4 	sw	v1,676(a0)
     a68:	460c0181 	sub.s	$f6,$f0,$f12
     a6c:	44814000 	mtc1	at,$f8
     a70:	00000000 	nop
     a74:	46083283 	div.s	$f10,$f6,$f8
     a78:	460e5402 	mul.s	$f16,$f10,$f14
     a7c:	4600848d 	trunc.w.s	$f18,$f16
     a80:	440a9000 	mfc1	t2,$f18
     a84:	00000000 	nop
     a88:	004a5823 	subu	t3,v0,t2
     a8c:	10000002 	b	a98 <func_8089CE04+0x114>
     a90:	ac8b02a4 	sw	t3,676(a0)
     a94:	ac8302a4 	sw	v1,676(a0)
     a98:	3c010000 	lui	at,0x0
     a9c:	c42c0000 	lwc1	$f12,0(at)
     aa0:	460c003c 	c.lt.s	$f0,$f12
     aa4:	00000000 	nop
     aa8:	45020004 	bc1fl	abc <func_8089CE04+0x138>
     aac:	4602003c 	c.lt.s	$f0,$f2
     ab0:	10000011 	b	af8 <func_8089CE04+0x174>
     ab4:	ac8202a8 	sw	v0,680(a0)
     ab8:	4602003c 	c.lt.s	$f0,$f2
     abc:	3c01444d 	lui	at,0x444d
     ac0:	4502000d 	bc1fl	af8 <func_8089CE04+0x174>
     ac4:	ac8302a8 	sw	v1,680(a0)
     ac8:	460c0101 	sub.s	$f4,$f0,$f12
     acc:	44813000 	mtc1	at,$f6
     ad0:	00000000 	nop
     ad4:	46062203 	div.s	$f8,$f4,$f6
     ad8:	460e4282 	mul.s	$f10,$f8,$f14
     adc:	4600540d 	trunc.w.s	$f16,$f10
     ae0:	440d8000 	mfc1	t5,$f16
     ae4:	00000000 	nop
     ae8:	004d7023 	subu	t6,v0,t5
     aec:	10000002 	b	af8 <func_8089CE04+0x174>
     af0:	ac8e02a8 	sw	t6,680(a0)
     af4:	ac8302a8 	sw	v1,680(a0)
     af8:	8c8f02a8 	lw	t7,680(a0)
     afc:	03e00008 	jr	ra
     b00:	ac8f02ac 	sw	t7,684(a0)

00000b04 <func_8089CF84>:
     b04:	27bdfe90 	addiu	sp,sp,-368
     b08:	afb20068 	sw	s2,104(sp)
     b0c:	00809025 	move	s2,a0
     b10:	afbf007c 	sw	ra,124(sp)
     b14:	afb60078 	sw	s6,120(sp)
     b18:	afb50074 	sw	s5,116(sp)
     b1c:	afb40070 	sw	s4,112(sp)
     b20:	afb3006c 	sw	s3,108(sp)
     b24:	afb10064 	sw	s1,100(sp)
     b28:	afb00060 	sw	s0,96(sp)
     b2c:	f7be0058 	sdc1	$f30,88(sp)
     b30:	f7bc0050 	sdc1	$f28,80(sp)
     b34:	f7ba0048 	sdc1	$f26,72(sp)
     b38:	f7b80040 	sdc1	$f24,64(sp)
     b3c:	f7b60038 	sdc1	$f22,56(sp)
     b40:	f7b40030 	sdc1	$f20,48(sp)
     b44:	00a0b025 	move	s6,a1
     b48:	0c000000 	jal	0 <func_8089C480>
     b4c:	848400b6 	lh	a0,182(a0)
     b50:	46000706 	mov.s	$f28,$f0
     b54:	0c000000 	jal	0 <func_8089C480>
     b58:	864400b6 	lh	a0,182(s2)
     b5c:	3c0142f0 	lui	at,0x42f0
     b60:	4481d000 	mtc1	at,$f26
     b64:	3c014220 	lui	at,0x4220
     b68:	4481c000 	mtc1	at,$f24
     b6c:	3c0142a0 	lui	at,0x42a0
     b70:	4481b000 	mtc1	at,$f22
     b74:	4480a000 	mtc1	zero,$f20
     b78:	46000786 	mov.s	$f30,$f0
     b7c:	27b00090 	addiu	s0,sp,144
     b80:	27b50144 	addiu	s5,sp,324
     b84:	24140003 	li	s4,3
     b88:	24130002 	li	s3,2
     b8c:	24110001 	li	s1,1
     b90:	9642001c 	lhu	v0,28(s2)
     b94:	3042000f 	andi	v0,v0,0xf
     b98:	10400009 	beqz	v0,bc0 <func_8089CF84+0xbc>
     b9c:	00000000 	nop
     ba0:	10510014 	beq	v0,s1,bf4 <func_8089CF84+0xf0>
     ba4:	00000000 	nop
     ba8:	10530021 	beq	v0,s3,c30 <func_8089CF84+0x12c>
     bac:	00000000 	nop
     bb0:	1054001f 	beq	v0,s4,c30 <func_8089CF84+0x12c>
     bb4:	00000000 	nop
     bb8:	1000001d 	b	c30 <func_8089CF84+0x12c>
     bbc:	00000000 	nop
     bc0:	0c000000 	jal	0 <func_8089C480>
     bc4:	00000000 	nop
     bc8:	46160102 	mul.s	$f4,$f0,$f22
     bcc:	46182181 	sub.s	$f6,$f4,$f24
     bd0:	0c000000 	jal	0 <func_8089C480>
     bd4:	e6060000 	swc1	$f6,0(s0)
     bd8:	46140202 	mul.s	$f8,$f0,$f20
     bdc:	0c000000 	jal	0 <func_8089C480>
     be0:	e6080004 	swc1	$f8,4(s0)
     be4:	46160282 	mul.s	$f10,$f0,$f22
     be8:	46185401 	sub.s	$f16,$f10,$f24
     bec:	1000001e 	b	c68 <func_8089CF84+0x164>
     bf0:	e6100008 	swc1	$f16,8(s0)
     bf4:	0c000000 	jal	0 <func_8089C480>
     bf8:	00000000 	nop
     bfc:	46140482 	mul.s	$f18,$f0,$f20
     c00:	0c000000 	jal	0 <func_8089C480>
     c04:	e6120000 	swc1	$f18,0(s0)
     c08:	3c0142c8 	lui	at,0x42c8
     c0c:	44812000 	mtc1	at,$f4
     c10:	00000000 	nop
     c14:	46040182 	mul.s	$f6,$f0,$f4
     c18:	0c000000 	jal	0 <func_8089C480>
     c1c:	e6060004 	swc1	$f6,4(s0)
     c20:	46160202 	mul.s	$f8,$f0,$f22
     c24:	46184281 	sub.s	$f10,$f8,$f24
     c28:	1000000f 	b	c68 <func_8089CF84+0x164>
     c2c:	e60a0008 	swc1	$f10,8(s0)
     c30:	0c000000 	jal	0 <func_8089C480>
     c34:	00000000 	nop
     c38:	461a0402 	mul.s	$f16,$f0,$f26
     c3c:	3c014270 	lui	at,0x4270
     c40:	44819000 	mtc1	at,$f18
     c44:	00000000 	nop
     c48:	46128101 	sub.s	$f4,$f16,$f18
     c4c:	0c000000 	jal	0 <func_8089C480>
     c50:	e6040000 	swc1	$f4,0(s0)
     c54:	461a0182 	mul.s	$f6,$f0,$f26
     c58:	0c000000 	jal	0 <func_8089C480>
     c5c:	e6060004 	swc1	$f6,4(s0)
     c60:	46140202 	mul.s	$f8,$f0,$f20
     c64:	e6080008 	swc1	$f8,8(s0)
     c68:	2610000c 	addiu	s0,s0,12
     c6c:	0215082b 	sltu	at,s0,s5
     c70:	5420ffc8 	bnezl	at,b94 <func_8089CF84+0x90>
     c74:	9642001c 	lhu	v0,28(s2)
     c78:	3c014370 	lui	at,0x4370
     c7c:	4481c000 	mtc1	at,$f24
     c80:	3c014248 	lui	at,0x4248
     c84:	4481b000 	mtc1	at,$f22
     c88:	3c0142f0 	lui	at,0x42f0
     c8c:	4481a000 	mtc1	at,$f20
     c90:	26510024 	addiu	s1,s2,36
     c94:	27b00090 	addiu	s0,sp,144
     c98:	26d51c24 	addiu	s5,s6,7204
     c9c:	27b40144 	addiu	s4,sp,324
     ca0:	27b30154 	addiu	s3,sp,340
     ca4:	c6020008 	lwc1	$f2,8(s0)
     ca8:	c6000000 	lwc1	$f0,0(s0)
     cac:	c62a0000 	lwc1	$f10,0(s1)
     cb0:	461c1402 	mul.s	$f16,$f2,$f28
     cb4:	46105480 	add.s	$f18,$f10,$f16
     cb8:	461e0102 	mul.s	$f4,$f0,$f30
     cbc:	46049180 	add.s	$f6,$f18,$f4
     cc0:	461e1102 	mul.s	$f4,$f2,$f30
     cc4:	e7a60154 	swc1	$f6,340(sp)
     cc8:	c62a0004 	lwc1	$f10,4(s1)
     ccc:	c6080004 	lwc1	$f8,4(s0)
     cd0:	460a4400 	add.s	$f16,$f8,$f10
     cd4:	461c0202 	mul.s	$f8,$f0,$f28
     cd8:	e7b00158 	swc1	$f16,344(sp)
     cdc:	c6320008 	lwc1	$f18,8(s1)
     ce0:	46049180 	add.s	$f6,$f18,$f4
     ce4:	46083281 	sub.s	$f10,$f6,$f8
     ce8:	0c000000 	jal	0 <func_8089C480>
     cec:	e7aa015c 	swc1	$f10,348(sp)
     cf0:	46140402 	mul.s	$f16,$f0,$f20
     cf4:	4600848d 	trunc.w.s	$f18,$f16
     cf8:	44129000 	mfc1	s2,$f18
     cfc:	00000000 	nop
     d00:	00129400 	sll	s2,s2,0x10
     d04:	00129403 	sra	s2,s2,0x10
     d08:	26520014 	addiu	s2,s2,20
     d0c:	00129400 	sll	s2,s2,0x10
     d10:	0c000000 	jal	0 <func_8089C480>
     d14:	00129403 	sra	s2,s2,0x10
     d18:	46180102 	mul.s	$f4,$f0,$f24
     d1c:	4406b000 	mfc1	a2,$f22
     d20:	02c02025 	move	a0,s6
     d24:	02602825 	move	a1,s3
     d28:	24070002 	li	a3,2
     d2c:	afb20010 	sw	s2,16(sp)
     d30:	afa00018 	sw	zero,24(sp)
     d34:	4600218d 	trunc.w.s	$f6,$f4
     d38:	44183000 	mfc1	t8,$f6
     d3c:	00000000 	nop
     d40:	0018cc00 	sll	t9,t8,0x10
     d44:	00194403 	sra	t0,t9,0x10
     d48:	25090014 	addiu	t1,t0,20
     d4c:	0c000000 	jal	0 <func_8089C480>
     d50:	afa90014 	sw	t1,20(sp)
     d54:	c7a80158 	lwc1	$f8,344(sp)
     d58:	c7aa015c 	lwc1	$f10,348(sp)
     d5c:	240a000b 	li	t2,11
     d60:	afaa0024 	sw	t2,36(sp)
     d64:	02a02025 	move	a0,s5
     d68:	02c02825 	move	a1,s6
     d6c:	24060039 	li	a2,57
     d70:	8fa70154 	lw	a3,340(sp)
     d74:	afa00018 	sw	zero,24(sp)
     d78:	afa0001c 	sw	zero,28(sp)
     d7c:	afa00020 	sw	zero,32(sp)
     d80:	e7a80010 	swc1	$f8,16(sp)
     d84:	0c000000 	jal	0 <func_8089C480>
     d88:	e7aa0014 	swc1	$f10,20(sp)
     d8c:	2610000c 	addiu	s0,s0,12
     d90:	5614ffc5 	bnel	s0,s4,ca8 <func_8089CF84+0x1a4>
     d94:	c6020008 	lwc1	$f2,8(s0)
     d98:	8fbf007c 	lw	ra,124(sp)
     d9c:	d7b40030 	ldc1	$f20,48(sp)
     da0:	d7b60038 	ldc1	$f22,56(sp)
     da4:	d7b80040 	ldc1	$f24,64(sp)
     da8:	d7ba0048 	ldc1	$f26,72(sp)
     dac:	d7bc0050 	ldc1	$f28,80(sp)
     db0:	d7be0058 	ldc1	$f30,88(sp)
     db4:	8fb00060 	lw	s0,96(sp)
     db8:	8fb10064 	lw	s1,100(sp)
     dbc:	8fb20068 	lw	s2,104(sp)
     dc0:	8fb3006c 	lw	s3,108(sp)
     dc4:	8fb40070 	lw	s4,112(sp)
     dc8:	8fb50074 	lw	s5,116(sp)
     dcc:	8fb60078 	lw	s6,120(sp)
     dd0:	03e00008 	jr	ra
     dd4:	27bd0170 	addiu	sp,sp,368

00000dd8 <func_8089D258>:
     dd8:	27bdffd8 	addiu	sp,sp,-40
     ddc:	afbf0024 	sw	ra,36(sp)
     de0:	afb10020 	sw	s1,32(sp)
     de4:	afb0001c 	sw	s0,28(sp)
     de8:	00808025 	move	s0,a0
     dec:	0c000000 	jal	0 <func_8089C480>
     df0:	00a08825 	move	s1,a1
     df4:	92020175 	lbu	v0,373(s0)
     df8:	3c014416 	lui	at,0x4416
     dfc:	304e0002 	andi	t6,v0,0x2
     e00:	11c00023 	beqz	t6,e90 <func_8089D258+0xb8>
     e04:	304ffffd 	andi	t7,v0,0xfffd
     e08:	9605001c 	lhu	a1,28(s0)
     e0c:	a20f0175 	sb	t7,373(s0)
     e10:	02202025 	move	a0,s1
     e14:	00052a03 	sra	a1,a1,0x8
     e18:	0c000000 	jal	0 <func_8089C480>
     e1c:	30a5003f 	andi	a1,a1,0x3f
     e20:	24180001 	li	t8,1
     e24:	ae1802b0 	sw	t8,688(s0)
     e28:	02202025 	move	a0,s1
     e2c:	26250810 	addiu	a1,s1,2064
     e30:	0c000000 	jal	0 <func_8089C480>
     e34:	8e06014c 	lw	a2,332(s0)
     e38:	ae0002b8 	sw	zero,696(s0)
     e3c:	02002025 	move	a0,s0
     e40:	0c000000 	jal	0 <func_8089C480>
     e44:	02202825 	move	a1,s1
     e48:	02002025 	move	a0,s0
     e4c:	0c000000 	jal	0 <func_8089C480>
     e50:	24052810 	li	a1,10256
     e54:	3c070000 	lui	a3,0x0
     e58:	3c190000 	lui	t9,0x0
     e5c:	24e70000 	addiu	a3,a3,0
     e60:	27390000 	addiu	t9,t9,0
     e64:	3c050000 	lui	a1,0x0
     e68:	24a50000 	addiu	a1,a1,0
     e6c:	afb90014 	sw	t9,20(sp)
     e70:	afa70010 	sw	a3,16(sp)
     e74:	24044802 	li	a0,18434
     e78:	0c000000 	jal	0 <func_8089C480>
     e7c:	24060004 	li	a2,4
     e80:	3c080000 	lui	t0,0x0
     e84:	25080000 	addiu	t0,t0,0
     e88:	1000000c 	b	ebc <func_8089D258+0xe4>
     e8c:	ae080298 	sw	t0,664(s0)
     e90:	c6040090 	lwc1	$f4,144(s0)
     e94:	44813000 	mtc1	at,$f6
     e98:	3c010001 	lui	at,0x1
     e9c:	34211e60 	ori	at,at,0x1e60
     ea0:	4606203c 	c.lt.s	$f4,$f6
     ea4:	02212821 	addu	a1,s1,at
     ea8:	02202025 	move	a0,s1
     eac:	45020004 	bc1fl	ec0 <func_8089D258+0xe8>
     eb0:	8fbf0024 	lw	ra,36(sp)
     eb4:	0c000000 	jal	0 <func_8089C480>
     eb8:	26060164 	addiu	a2,s0,356
     ebc:	8fbf0024 	lw	ra,36(sp)
     ec0:	8fb0001c 	lw	s0,28(sp)
     ec4:	8fb10020 	lw	s1,32(sp)
     ec8:	03e00008 	jr	ra
     ecc:	27bd0028 	addiu	sp,sp,40

00000ed0 <func_8089D350>:
     ed0:	afa50004 	sw	a1,4(sp)
     ed4:	8c8202b0 	lw	v0,688(a0)
     ed8:	3c0f0000 	lui	t7,0x0
     edc:	25ef0000 	addiu	t7,t7,0
     ee0:	18400003 	blez	v0,ef0 <func_8089D350+0x20>
     ee4:	244effff 	addiu	t6,v0,-1
     ee8:	03e00008 	jr	ra
     eec:	ac8e02b0 	sw	t6,688(a0)
     ef0:	ac8f0298 	sw	t7,664(a0)
     ef4:	03e00008 	jr	ra
     ef8:	00000000 	nop

00000efc <func_8089D37C>:
     efc:	afa40000 	sw	a0,0(sp)
     f00:	03e00008 	jr	ra
     f04:	afa50004 	sw	a1,4(sp)

00000f08 <BgMizuBwall_Update>:
     f08:	27bdffe8 	addiu	sp,sp,-24
     f0c:	afbf0014 	sw	ra,20(sp)
     f10:	8c990298 	lw	t9,664(a0)
     f14:	0320f809 	jalr	t9
     f18:	00000000 	nop
     f1c:	8fbf0014 	lw	ra,20(sp)
     f20:	27bd0018 	addiu	sp,sp,24
     f24:	03e00008 	jr	ra
     f28:	00000000 	nop

00000f2c <BgMizuBwall_Draw>:
     f2c:	27bdff70 	addiu	sp,sp,-144
     f30:	afb10048 	sw	s1,72(sp)
     f34:	00a08825 	move	s1,a1
     f38:	afbf004c 	sw	ra,76(sp)
     f3c:	afb00044 	sw	s0,68(sp)
     f40:	afa40090 	sw	a0,144(sp)
     f44:	8ca50000 	lw	a1,0(a1)
     f48:	3c060000 	lui	a2,0x0
     f4c:	24c60000 	addiu	a2,a2,0
     f50:	27a40070 	addiu	a0,sp,112
     f54:	24070447 	li	a3,1095
     f58:	0c000000 	jal	0 <func_8089C480>
     f5c:	00a08025 	move	s0,a1
     f60:	3c0e0001 	lui	t6,0x1
     f64:	01d17021 	addu	t6,t6,s1
     f68:	8dce1de4 	lw	t6,7652(t6)
     f6c:	afae0084 	sw	t6,132(sp)
     f70:	0c000000 	jal	0 <func_8089C480>
     f74:	8e240000 	lw	a0,0(s1)
     f78:	8e0202c0 	lw	v0,704(s0)
     f7c:	3c18db06 	lui	t8,0xdb06
     f80:	37180020 	ori	t8,t8,0x20
     f84:	244f0008 	addiu	t7,v0,8
     f88:	ae0f02c0 	sw	t7,704(s0)
     f8c:	ac580000 	sw	t8,0(v0)
     f90:	8e240000 	lw	a0,0(s1)
     f94:	8fac0090 	lw	t4,144(sp)
     f98:	24190020 	li	t9,32
     f9c:	24080020 	li	t0,32
     fa0:	24090001 	li	t1,1
     fa4:	240a0020 	li	t2,32
     fa8:	240b0020 	li	t3,32
     fac:	afab0028 	sw	t3,40(sp)
     fb0:	afaa0024 	sw	t2,36(sp)
     fb4:	afa90018 	sw	t1,24(sp)
     fb8:	afa80014 	sw	t0,20(sp)
     fbc:	afb90010 	sw	t9,16(sp)
     fc0:	afa00034 	sw	zero,52(sp)
     fc4:	afa00030 	sw	zero,48(sp)
     fc8:	afa0002c 	sw	zero,44(sp)
     fcc:	afa00020 	sw	zero,32(sp)
     fd0:	afa0001c 	sw	zero,28(sp)
     fd4:	8fa60084 	lw	a2,132(sp)
     fd8:	8d8d02a0 	lw	t5,672(t4)
     fdc:	00002825 	move	a1,zero
     fe0:	00003825 	move	a3,zero
     fe4:	afa2006c 	sw	v0,108(sp)
     fe8:	afa60054 	sw	a2,84(sp)
     fec:	0c000000 	jal	0 <func_8089C480>
     ff0:	afad0038 	sw	t5,56(sp)
     ff4:	8fa3006c 	lw	v1,108(sp)
     ff8:	3c0fdb06 	lui	t7,0xdb06
     ffc:	35ef0024 	ori	t7,t7,0x24
    1000:	ac620004 	sw	v0,4(v1)
    1004:	8e0202c0 	lw	v0,704(s0)
    1008:	24180020 	li	t8,32
    100c:	24190020 	li	t9,32
    1010:	244e0008 	addiu	t6,v0,8
    1014:	ae0e02c0 	sw	t6,704(s0)
    1018:	ac4f0000 	sw	t7,0(v0)
    101c:	8e240000 	lw	a0,0(s1)
    1020:	8fab0090 	lw	t3,144(sp)
    1024:	24080001 	li	t0,1
    1028:	24090020 	li	t1,32
    102c:	240a0020 	li	t2,32
    1030:	afaa0028 	sw	t2,40(sp)
    1034:	afa90024 	sw	t1,36(sp)
    1038:	afa80018 	sw	t0,24(sp)
    103c:	afa00034 	sw	zero,52(sp)
    1040:	afa00030 	sw	zero,48(sp)
    1044:	afa0002c 	sw	zero,44(sp)
    1048:	afa00020 	sw	zero,32(sp)
    104c:	afa0001c 	sw	zero,28(sp)
    1050:	afb90014 	sw	t9,20(sp)
    1054:	afb80010 	sw	t8,16(sp)
    1058:	8d6c02a4 	lw	t4,676(t3)
    105c:	8fa60054 	lw	a2,84(sp)
    1060:	00002825 	move	a1,zero
    1064:	00003825 	move	a3,zero
    1068:	afa20068 	sw	v0,104(sp)
    106c:	0c000000 	jal	0 <func_8089C480>
    1070:	afac0038 	sw	t4,56(sp)
    1074:	8fa30068 	lw	v1,104(sp)
    1078:	3c0edb06 	lui	t6,0xdb06
    107c:	35ce0028 	ori	t6,t6,0x28
    1080:	ac620004 	sw	v0,4(v1)
    1084:	8e0202c0 	lw	v0,704(s0)
    1088:	240f0020 	li	t7,32
    108c:	24180020 	li	t8,32
    1090:	244d0008 	addiu	t5,v0,8
    1094:	ae0d02c0 	sw	t5,704(s0)
    1098:	ac4e0000 	sw	t6,0(v0)
    109c:	8e240000 	lw	a0,0(s1)
    10a0:	8faa0090 	lw	t2,144(sp)
    10a4:	24190001 	li	t9,1
    10a8:	24080020 	li	t0,32
    10ac:	24090020 	li	t1,32
    10b0:	afa90028 	sw	t1,40(sp)
    10b4:	afa80024 	sw	t0,36(sp)
    10b8:	afb90018 	sw	t9,24(sp)
    10bc:	afa00034 	sw	zero,52(sp)
    10c0:	afa00030 	sw	zero,48(sp)
    10c4:	afa0002c 	sw	zero,44(sp)
    10c8:	afa00020 	sw	zero,32(sp)
    10cc:	afa0001c 	sw	zero,28(sp)
    10d0:	afb80014 	sw	t8,20(sp)
    10d4:	afaf0010 	sw	t7,16(sp)
    10d8:	8d4b02a8 	lw	t3,680(t2)
    10dc:	8fa60054 	lw	a2,84(sp)
    10e0:	00002825 	move	a1,zero
    10e4:	00003825 	move	a3,zero
    10e8:	afa20064 	sw	v0,100(sp)
    10ec:	0c000000 	jal	0 <func_8089C480>
    10f0:	afab0038 	sw	t3,56(sp)
    10f4:	8fa30064 	lw	v1,100(sp)
    10f8:	3c0ddb06 	lui	t5,0xdb06
    10fc:	35ad002c 	ori	t5,t5,0x2c
    1100:	ac620004 	sw	v0,4(v1)
    1104:	8e0202c0 	lw	v0,704(s0)
    1108:	240e0020 	li	t6,32
    110c:	240f0020 	li	t7,32
    1110:	244c0008 	addiu	t4,v0,8
    1114:	ae0c02c0 	sw	t4,704(s0)
    1118:	ac4d0000 	sw	t5,0(v0)
    111c:	8e240000 	lw	a0,0(s1)
    1120:	8fa90090 	lw	t1,144(sp)
    1124:	8fa60084 	lw	a2,132(sp)
    1128:	24180001 	li	t8,1
    112c:	24190020 	li	t9,32
    1130:	24080020 	li	t0,32
    1134:	afa80028 	sw	t0,40(sp)
    1138:	afb90024 	sw	t9,36(sp)
    113c:	afb80018 	sw	t8,24(sp)
    1140:	afa00034 	sw	zero,52(sp)
    1144:	afa00030 	sw	zero,48(sp)
    1148:	afa0002c 	sw	zero,44(sp)
    114c:	afa00020 	sw	zero,32(sp)
    1150:	afa0001c 	sw	zero,28(sp)
    1154:	afaf0014 	sw	t7,20(sp)
    1158:	afae0010 	sw	t6,16(sp)
    115c:	8d2a02ac 	lw	t2,684(t1)
    1160:	00c00821 	move	at,a2
    1164:	00063080 	sll	a2,a2,0x2
    1168:	00c13023 	subu	a2,a2,at
    116c:	00002825 	move	a1,zero
    1170:	00003825 	move	a3,zero
    1174:	afa20060 	sw	v0,96(sp)
    1178:	0c000000 	jal	0 <func_8089C480>
    117c:	afaa0038 	sw	t2,56(sp)
    1180:	8fa30060 	lw	v1,96(sp)
    1184:	3c0cda38 	lui	t4,0xda38
    1188:	358c0003 	ori	t4,t4,0x3
    118c:	ac620004 	sw	v0,4(v1)
    1190:	8e0202c0 	lw	v0,704(s0)
    1194:	3c050000 	lui	a1,0x0
    1198:	24a50000 	addiu	a1,a1,0
    119c:	244b0008 	addiu	t3,v0,8
    11a0:	ae0b02c0 	sw	t3,704(s0)
    11a4:	ac4c0000 	sw	t4,0(v0)
    11a8:	8e240000 	lw	a0,0(s1)
    11ac:	24060469 	li	a2,1129
    11b0:	0c000000 	jal	0 <func_8089C480>
    11b4:	afa2005c 	sw	v0,92(sp)
    11b8:	8fa3005c 	lw	v1,92(sp)
    11bc:	3c060000 	lui	a2,0x0
    11c0:	24c60000 	addiu	a2,a2,0
    11c4:	ac620004 	sw	v0,4(v1)
    11c8:	8fad0090 	lw	t5,144(sp)
    11cc:	27a40070 	addiu	a0,sp,112
    11d0:	24070470 	li	a3,1136
    11d4:	8dae02b8 	lw	t6,696(t5)
    11d8:	11c00009 	beqz	t6,1200 <BgMizuBwall_Draw+0x2d4>
    11dc:	00000000 	nop
    11e0:	8e0202c0 	lw	v0,704(s0)
    11e4:	3c18de00 	lui	t8,0xde00
    11e8:	244f0008 	addiu	t7,v0,8
    11ec:	ae0f02c0 	sw	t7,704(s0)
    11f0:	ac580000 	sw	t8,0(v0)
    11f4:	8fb90090 	lw	t9,144(sp)
    11f8:	8f2802b8 	lw	t0,696(t9)
    11fc:	ac480004 	sw	t0,4(v0)
    1200:	0c000000 	jal	0 <func_8089C480>
    1204:	8e250000 	lw	a1,0(s1)
    1208:	8fbf004c 	lw	ra,76(sp)
    120c:	8fb00044 	lw	s0,68(sp)
    1210:	8fb10048 	lw	s1,72(sp)
    1214:	03e00008 	jr	ra
    1218:	27bd0090 	addiu	sp,sp,144
    121c:	00000000 	nop
