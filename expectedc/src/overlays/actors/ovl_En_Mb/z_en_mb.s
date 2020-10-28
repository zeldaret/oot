
build/src/overlays/actors/ovl_En_Mb/z_en_mb.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <func_80AA6050>:
       0:	03e00008 	jr	ra
       4:	ac850324 	sw	a1,804(a0)

00000008 <EnMb_Init>:
       8:	27bdffb0 	addiu	sp,sp,-80
       c:	afbf002c 	sw	ra,44(sp)
      10:	afb10028 	sw	s1,40(sp)
      14:	afb00024 	sw	s0,36(sp)
      18:	8cae1c44 	lw	t6,7236(a1)
      1c:	00a08825 	move	s1,a1
      20:	3c050000 	lui	a1,0x0
      24:	00808025 	move	s0,a0
      28:	24a50000 	addiu	a1,a1,0
      2c:	0c000000 	jal	0 <func_80AA6050>
      30:	afae0044 	sw	t6,68(sp)
      34:	260400b4 	addiu	a0,s0,180
      38:	3c060000 	lui	a2,0x0
      3c:	24c60000 	addiu	a2,a2,0
      40:	afa40034 	sw	a0,52(sp)
      44:	24050000 	li	a1,0
      48:	0c000000 	jal	0 <func_80AA6050>
      4c:	3c074238 	lui	a3,0x4238
      50:	3c180000 	lui	t8,0x0
      54:	240f00ff 	li	t7,255
      58:	27180000 	addiu	t8,t8,0
      5c:	a20f00ae 	sb	t7,174(s0)
      60:	ae180098 	sw	t8,152(s0)
      64:	26050368 	addiu	a1,s0,872
      68:	afa50038 	sw	a1,56(sp)
      6c:	0c000000 	jal	0 <func_80AA6050>
      70:	02202025 	move	a0,s1
      74:	3c070000 	lui	a3,0x0
      78:	8fa50038 	lw	a1,56(sp)
      7c:	24e70000 	addiu	a3,a3,0
      80:	02202025 	move	a0,s1
      84:	0c000000 	jal	0 <func_80AA6050>
      88:	02003025 	move	a2,s0
      8c:	26050434 	addiu	a1,s0,1076
      90:	afa50038 	sw	a1,56(sp)
      94:	0c000000 	jal	0 <func_80AA6050>
      98:	02202025 	move	a0,s1
      9c:	3c070000 	lui	a3,0x0
      a0:	26190454 	addiu	t9,s0,1108
      a4:	8fa50038 	lw	a1,56(sp)
      a8:	afb90010 	sw	t9,16(sp)
      ac:	24e70000 	addiu	a3,a3,0
      b0:	02202025 	move	a0,s1
      b4:	0c000000 	jal	0 <func_80AA6050>
      b8:	02003025 	move	a2,s0
      bc:	260503b4 	addiu	a1,s0,948
      c0:	afa50038 	sw	a1,56(sp)
      c4:	0c000000 	jal	0 <func_80AA6050>
      c8:	02202025 	move	a0,s1
      cc:	3c070000 	lui	a3,0x0
      d0:	8fa50038 	lw	a1,56(sp)
      d4:	24e70000 	addiu	a3,a3,0
      d8:	02202025 	move	a0,s1
      dc:	0c000000 	jal	0 <func_80AA6050>
      e0:	02003025 	move	a2,s0
      e4:	8603001c 	lh	v1,28(s0)
      e8:	2401ffff 	li	at,-1
      ec:	02202025 	move	a0,s1
      f0:	10610005 	beq	v1,at,108 <EnMb_Init+0x100>
      f4:	2605018c 	addiu	a1,s0,396
      f8:	1060001c 	beqz	v1,16c <EnMb_Init+0x164>
      fc:	02202025 	move	a0,s1
     100:	1000006c 	b	2b4 <EnMb_Init+0x2ac>
     104:	02202025 	move	a0,s1
     108:	3c060601 	lui	a2,0x601
     10c:	3c070600 	lui	a3,0x600
     110:	260801d0 	addiu	t0,s0,464
     114:	26090278 	addiu	t1,s0,632
     118:	240a001c 	li	t2,28
     11c:	afaa0018 	sw	t2,24(sp)
     120:	afa90014 	sw	t1,20(sp)
     124:	afa80010 	sw	t0,16(sp)
     128:	24e728e0 	addiu	a3,a3,10464
     12c:	0c000000 	jal	0 <func_80AA6050>
     130:	24c68f38 	addiu	a2,a2,-28872
     134:	3c01447a 	lui	at,0x447a
     138:	44812000 	mtc1	at,$f4
     13c:	240b0002 	li	t3,2
     140:	240c00fe 	li	t4,254
     144:	a20b00af 	sb	t3,175(s0)
     148:	a20c00ae 	sb	t4,174(s0)
     14c:	3c010000 	lui	at,0x0
     150:	e6040360 	swc1	$f4,864(s0)
     154:	c4260000 	lwc1	$f6,0(at)
     158:	02002025 	move	a0,s0
     15c:	0c000000 	jal	0 <func_80AA6050>
     160:	e6060364 	swc1	$f6,868(s0)
     164:	1000007c 	b	358 <EnMb_Init+0x350>
     168:	8fbf002c 	lw	ra,44(sp)
     16c:	3c060601 	lui	a2,0x601
     170:	3c070601 	lui	a3,0x601
     174:	260d01d0 	addiu	t5,s0,464
     178:	260e0278 	addiu	t6,s0,632
     17c:	240f001c 	li	t7,28
     180:	afaf0018 	sw	t7,24(sp)
     184:	afae0014 	sw	t6,20(sp)
     188:	afad0010 	sw	t5,16(sp)
     18c:	24e7ebe4 	addiu	a3,a3,-5148
     190:	24c64190 	addiu	a2,a2,16784
     194:	0c000000 	jal	0 <func_80AA6050>
     198:	2605018c 	addiu	a1,s0,396
     19c:	3c080000 	lui	t0,0x0
     1a0:	24180006 	li	t8,6
     1a4:	241900ff 	li	t9,255
     1a8:	25080000 	addiu	t0,t0,0
     1ac:	3c053ca3 	lui	a1,0x3ca3
     1b0:	a21800af 	sb	t8,175(s0)
     1b4:	a21900ae 	sb	t9,174(s0)
     1b8:	ae080098 	sw	t0,152(s0)
     1bc:	34a5d70a 	ori	a1,a1,0xd70a
     1c0:	0c000000 	jal	0 <func_80AA6050>
     1c4:	02002025 	move	a0,s0
     1c8:	3c01457a 	lui	at,0x457a
     1cc:	44814000 	mtc1	at,$f8
     1d0:	3c014448 	lui	at,0x4448
     1d4:	44815000 	mtc1	at,$f10
     1d8:	3c0144e1 	lui	at,0x44e1
     1dc:	44818000 	mtc1	at,$f16
     1e0:	240900aa 	li	t1,170
     1e4:	240a002d 	li	t2,45
     1e8:	a60903aa 	sh	t1,938(s0)
     1ec:	a60a03a8 	sh	t2,936(s0)
     1f0:	3c010000 	lui	at,0x0
     1f4:	e60800f4 	swc1	$f8,244(s0)
     1f8:	e60a00f8 	swc1	$f10,248(s0)
     1fc:	e61000fc 	swc1	$f16,252(s0)
     200:	c4320000 	lwc1	$f18,0(at)
     204:	3c0b2000 	lui	t3,0x2000
     208:	ae0b03cc 	sw	t3,972(s0)
     20c:	e6120364 	swc1	$f18,868(s0)
     210:	8fa50044 	lw	a1,68(sp)
     214:	26040024 	addiu	a0,s0,36
     218:	0c000000 	jal	0 <func_80AA6050>
     21c:	24a50024 	addiu	a1,a1,36
     220:	86050032 	lh	a1,50(s0)
     224:	3c060000 	lui	a2,0x0
     228:	24c60000 	addiu	a2,a2,0
     22c:	00a22023 	subu	a0,a1,v0
     230:	00042400 	sll	a0,a0,0x10
     234:	00042403 	sra	a0,a0,0x10
     238:	04800003 	bltz	a0,248 <EnMb_Init+0x240>
     23c:	3c0742b4 	lui	a3,0x42b4
     240:	10000002 	b	24c <EnMb_Init+0x244>
     244:	00801825 	move	v1,a0
     248:	00041823 	negu	v1,a0
     24c:	28614001 	slti	at,v1,16385
     250:	1420000a 	bnez	at,27c <EnMb_Init+0x274>
     254:	34018000 	li	at,0x8000
     258:	00a16021 	addu	t4,a1,at
     25c:	3c014416 	lui	at,0x4416
     260:	44813000 	mtc1	at,$f6
     264:	c604002c 	lwc1	$f4,44(s0)
     268:	a60c0032 	sh	t4,50(s0)
     26c:	860d0032 	lh	t5,50(s0)
     270:	46062200 	add.s	$f8,$f4,$f6
     274:	a60d00b6 	sh	t5,182(s0)
     278:	e608002c 	swc1	$f8,44(s0)
     27c:	8fa40034 	lw	a0,52(sp)
     280:	0c000000 	jal	0 <func_80AA6050>
     284:	24050000 	li	a1,0
     288:	8e0e0004 	lw	t6,4(s0)
     28c:	92180117 	lbu	t8,279(s0)
     290:	2401fffe 	li	at,-2
     294:	01c17824 	and	t7,t6,at
     298:	27190001 	addiu	t9,t8,1
     29c:	ae0f0004 	sw	t7,4(s0)
     2a0:	a2190117 	sb	t9,279(s0)
     2a4:	0c000000 	jal	0 <func_80AA6050>
     2a8:	02002025 	move	a0,s0
     2ac:	1000002a 	b	358 <EnMb_Init+0x350>
     2b0:	8fbf002c 	lw	ra,44(sp)
     2b4:	3c060601 	lui	a2,0x601
     2b8:	3c070600 	lui	a3,0x600
     2bc:	260801d0 	addiu	t0,s0,464
     2c0:	26090278 	addiu	t1,s0,632
     2c4:	240a001c 	li	t2,28
     2c8:	afaa0018 	sw	t2,24(sp)
     2cc:	afa90014 	sw	t1,20(sp)
     2d0:	afa80010 	sw	t0,16(sp)
     2d4:	24e728e0 	addiu	a3,a3,10464
     2d8:	24c68f38 	addiu	a2,a2,-28872
     2dc:	0c000000 	jal	0 <func_80AA6050>
     2e0:	2605018c 	addiu	a1,s0,396
     2e4:	3c053c65 	lui	a1,0x3c65
     2e8:	34a56042 	ori	a1,a1,0x6042
     2ec:	0c000000 	jal	0 <func_80AA6050>
     2f0:	02002025 	move	a0,s0
     2f4:	860b001c 	lh	t3,28(s0)
     2f8:	3c0143af 	lui	at,0x43af
     2fc:	44815000 	mtc1	at,$f10
     300:	316cff00 	andi	t4,t3,0xff00
     304:	000c6a03 	sra	t5,t4,0x8
     308:	240e0001 	li	t6,1
     30c:	240f0001 	li	t7,1
     310:	241800fe 	li	t8,254
     314:	8e190004 	lw	t9,4(s0)
     318:	a20d035d 	sb	t5,861(s0)
     31c:	a60e001c 	sh	t6,28(s0)
     320:	a200035c 	sb	zero,860(s0)
     324:	a20f00af 	sb	t7,175(s0)
     328:	a21800ae 	sb	t8,174(s0)
     32c:	3c010000 	lui	at,0x0
     330:	e60a0360 	swc1	$f10,864(s0)
     334:	c4300000 	lwc1	$f16,0(at)
     338:	2401fffe 	li	at,-2
     33c:	03214024 	and	t0,t9,at
     340:	ae080004 	sw	t0,4(s0)
     344:	02002025 	move	a0,s0
     348:	02202825 	move	a1,s1
     34c:	0c000000 	jal	0 <func_80AA6050>
     350:	e6100364 	swc1	$f16,868(s0)
     354:	8fbf002c 	lw	ra,44(sp)
     358:	8fb00024 	lw	s0,36(sp)
     35c:	8fb10028 	lw	s1,40(sp)
     360:	03e00008 	jr	ra
     364:	27bd0050 	addiu	sp,sp,80

00000368 <EnMb_Destroy>:
     368:	27bdffe8 	addiu	sp,sp,-24
     36c:	afa40018 	sw	a0,24(sp)
     370:	afa5001c 	sw	a1,28(sp)
     374:	00a02025 	move	a0,a1
     378:	8fa50018 	lw	a1,24(sp)
     37c:	afbf0014 	sw	ra,20(sp)
     380:	0c000000 	jal	0 <func_80AA6050>
     384:	24a50434 	addiu	a1,a1,1076
     388:	8fa50018 	lw	a1,24(sp)
     38c:	8fa4001c 	lw	a0,28(sp)
     390:	0c000000 	jal	0 <func_80AA6050>
     394:	24a50368 	addiu	a1,a1,872
     398:	8fa50018 	lw	a1,24(sp)
     39c:	8fa4001c 	lw	a0,28(sp)
     3a0:	0c000000 	jal	0 <func_80AA6050>
     3a4:	24a503b4 	addiu	a1,a1,948
     3a8:	8fbf0014 	lw	ra,20(sp)
     3ac:	27bd0018 	addiu	sp,sp,24
     3b0:	03e00008 	jr	ra
     3b4:	00000000 	nop

000003b8 <func_80AA6408>:
     3b8:	27bdffe8 	addiu	sp,sp,-24
     3bc:	00803025 	move	a2,a0
     3c0:	afbf0014 	sw	ra,20(sp)
     3c4:	afa5001c 	sw	a1,28(sp)
     3c8:	24c50344 	addiu	a1,a2,836
     3cc:	afa60018 	sw	a2,24(sp)
     3d0:	0c000000 	jal	0 <func_80AA6050>
     3d4:	24840024 	addiu	a0,a0,36
     3d8:	8fa60018 	lw	a2,24(sp)
     3dc:	a4c200b6 	sh	v0,182(a2)
     3e0:	a4c20032 	sh	v0,50(a2)
     3e4:	8fbf0014 	lw	ra,20(sp)
     3e8:	27bd0018 	addiu	sp,sp,24
     3ec:	03e00008 	jr	ra
     3f0:	00000000 	nop

000003f4 <func_80AA6444>:
     3f4:	808f035d 	lb	t7,861(a0)
     3f8:	3c0e0001 	lui	t6,0x1
     3fc:	8083035c 	lb	v1,860(a0)
     400:	01c57021 	addu	t6,t6,a1
     404:	8dce1e08 	lw	t6,7688(t6)
     408:	000fc0c0 	sll	t8,t7,0x3
     40c:	14600005 	bnez	v1,424 <func_80AA6444+0x30>
     410:	01d81021 	addu	v0,t6,t8
     414:	24190001 	li	t9,1
     418:	a099035e 	sb	t9,862(a0)
     41c:	1000000a 	b	448 <func_80AA6444+0x54>
     420:	8083035c 	lb	v1,860(a0)
     424:	90480000 	lbu	t0,0(v0)
     428:	240cffff 	li	t4,-1
     42c:	2509ffff 	addiu	t1,t0,-1
     430:	00095600 	sll	t2,t1,0x18
     434:	000a5e03 	sra	t3,t2,0x18
     438:	55630004 	bnel	t3,v1,44c <func_80AA6444+0x58>
     43c:	808d035e 	lb	t5,862(a0)
     440:	a08c035e 	sb	t4,862(a0)
     444:	8083035c 	lb	v1,860(a0)
     448:	808d035e 	lb	t5,862(a0)
     44c:	3c080000 	lui	t0,0x0
     450:	3c0100ff 	lui	at,0xff
     454:	006d7821 	addu	t7,v1,t5
     458:	a08f035c 	sb	t7,860(a0)
     45c:	8c460004 	lw	a2,4(v0)
     460:	808b035c 	lb	t3,860(a0)
     464:	3421ffff 	ori	at,at,0xffff
     468:	00067100 	sll	t6,a2,0x4
     46c:	000ec702 	srl	t8,t6,0x1c
     470:	0018c880 	sll	t9,t8,0x2
     474:	01194021 	addu	t0,t0,t9
     478:	8d080000 	lw	t0,0(t0)
     47c:	000b6080 	sll	t4,t3,0x2
     480:	00c14824 	and	t1,a2,at
     484:	018b6023 	subu	t4,t4,t3
     488:	000c6040 	sll	t4,t4,0x1
     48c:	01095021 	addu	t2,t0,t1
     490:	014c2821 	addu	a1,t2,t4
     494:	3c018000 	lui	at,0x8000
     498:	00a12821 	addu	a1,a1,at
     49c:	84ad0000 	lh	t5,0(a1)
     4a0:	448d2000 	mtc1	t5,$f4
     4a4:	00000000 	nop
     4a8:	468021a0 	cvt.s.w	$f6,$f4
     4ac:	e4860344 	swc1	$f6,836(a0)
     4b0:	84af0002 	lh	t7,2(a1)
     4b4:	448f4000 	mtc1	t7,$f8
     4b8:	00000000 	nop
     4bc:	468042a0 	cvt.s.w	$f10,$f8
     4c0:	e48a0348 	swc1	$f10,840(a0)
     4c4:	84ae0004 	lh	t6,4(a1)
     4c8:	448e8000 	mtc1	t6,$f16
     4cc:	00000000 	nop
     4d0:	468084a0 	cvt.s.w	$f18,$f16
     4d4:	03e00008 	jr	ra
     4d8:	e492034c 	swc1	$f18,844(a0)

000004dc <func_80AA652C>:
     4dc:	27bdffc8 	addiu	sp,sp,-56
     4e0:	afbf0014 	sw	ra,20(sp)
     4e4:	84820032 	lh	v0,50(a0)
     4e8:	00803825 	move	a3,a0
     4ec:	8ca31c44 	lw	v1,7236(a1)
     4f0:	28419d5e 	slti	at,v0,-25250
     4f4:	14200004 	bnez	at,508 <func_80AA652C+0x2c>
     4f8:	00003025 	move	a2,zero
     4fc:	284162a3 	slti	at,v0,25251
     500:	54200004 	bnezl	at,514 <func_80AA652C+0x38>
     504:	2841df20 	slti	at,v0,-8416
     508:	1000000a 	b	534 <func_80AA652C+0x58>
     50c:	24068000 	li	a2,-32768
     510:	2841df20 	slti	at,v0,-8416
     514:	50200004 	beqzl	at,528 <func_80AA652C+0x4c>
     518:	284120e1 	slti	at,v0,8417
     51c:	10000005 	b	534 <func_80AA652C+0x58>
     520:	2406c000 	li	a2,-16384
     524:	284120e1 	slti	at,v0,8417
     528:	54200003 	bnezl	at,538 <func_80AA652C+0x5c>
     52c:	00062400 	sll	a0,a2,0x10
     530:	24064000 	li	a2,16384
     534:	00062400 	sll	a0,a2,0x10
     538:	00042403 	sra	a0,a0,0x10
     53c:	afa30034 	sw	v1,52(sp)
     540:	a7a6001a 	sh	a2,26(sp)
     544:	0c000000 	jal	0 <func_80AA6050>
     548:	afa70038 	sw	a3,56(sp)
     54c:	87a6001a 	lh	a2,26(sp)
     550:	e7a00028 	swc1	$f0,40(sp)
     554:	00062400 	sll	a0,a2,0x10
     558:	0c000000 	jal	0 <func_80AA6050>
     55c:	00042403 	sra	a0,a0,0x10
     560:	c7ae0028 	lwc1	$f14,40(sp)
     564:	44809000 	mtc1	zero,$f18
     568:	8fa30034 	lw	v1,52(sp)
     56c:	8fa70038 	lw	a3,56(sp)
     570:	460e903e 	c.le.s	$f18,$f14
     574:	46000406 	mov.s	$f16,$f0
     578:	3c014214 	lui	at,0x4214
     57c:	8fbf0014 	lw	ra,20(sp)
     580:	45010002 	bc1t	58c <func_80AA652C+0xb0>
     584:	00001025 	move	v0,zero
     588:	46007387 	neg.s	$f14,$f14
     58c:	4600903e 	c.le.s	$f18,$f0
     590:	00000000 	nop
     594:	45030003 	bc1tl	5a4 <func_80AA652C+0xc8>
     598:	c4e40024 	lwc1	$f4,36(a3)
     59c:	46000407 	neg.s	$f16,$f0
     5a0:	c4e40024 	lwc1	$f4,36(a3)
     5a4:	c4660024 	lwc1	$f6,36(v1)
     5a8:	c4e8002c 	lwc1	$f8,44(a3)
     5ac:	c46a002c 	lwc1	$f10,44(v1)
     5b0:	46062001 	sub.s	$f0,$f4,$f6
     5b4:	44812000 	mtc1	at,$f4
     5b8:	3c0143c8 	lui	at,0x43c8
     5bc:	460a4301 	sub.s	$f12,$f8,$f10
     5c0:	44814000 	mtc1	at,$f8
     5c4:	46047182 	mul.s	$f6,$f14,$f4
     5c8:	4600903e 	c.le.s	$f18,$f0
     5cc:	3c014214 	lui	at,0x4214
     5d0:	46088282 	mul.s	$f10,$f16,$f8
     5d4:	45020004 	bc1fl	5e8 <func_80AA652C+0x10c>
     5d8:	46000087 	neg.s	$f2,$f0
     5dc:	10000002 	b	5e8 <func_80AA652C+0x10c>
     5e0:	46000086 	mov.s	$f2,$f0
     5e4:	46000087 	neg.s	$f2,$f0
     5e8:	460a3100 	add.s	$f4,$f6,$f10
     5ec:	4604103c 	c.lt.s	$f2,$f4
     5f0:	00000000 	nop
     5f4:	45000014 	bc1f	648 <func_80AA652C+0x16c>
     5f8:	00000000 	nop
     5fc:	460c903e 	c.le.s	$f18,$f12
     600:	44814000 	mtc1	at,$f8
     604:	3c0143c8 	lui	at,0x43c8
     608:	44815000 	mtc1	at,$f10
     60c:	45020004 	bc1fl	620 <func_80AA652C+0x144>
     610:	46006007 	neg.s	$f0,$f12
     614:	10000002 	b	620 <func_80AA652C+0x144>
     618:	46006006 	mov.s	$f0,$f12
     61c:	46006007 	neg.s	$f0,$f12
     620:	46088182 	mul.s	$f6,$f16,$f8
     624:	00000000 	nop
     628:	460a7102 	mul.s	$f4,$f14,$f10
     62c:	46043200 	add.s	$f8,$f6,$f4
     630:	4608003c 	c.lt.s	$f0,$f8
     634:	00000000 	nop
     638:	45000003 	bc1f	648 <func_80AA652C+0x16c>
     63c:	00000000 	nop
     640:	10000001 	b	648 <func_80AA652C+0x16c>
     644:	24020001 	li	v0,1
     648:	03e00008 	jr	ra
     64c:	27bd0038 	addiu	sp,sp,56

00000650 <func_80AA66A0>:
     650:	27bdff90 	addiu	sp,sp,-112
     654:	afbf003c 	sw	ra,60(sp)
     658:	afbe0038 	sw	s8,56(sp)
     65c:	afb70034 	sw	s7,52(sp)
     660:	afb60030 	sw	s6,48(sp)
     664:	afb5002c 	sw	s5,44(sp)
     668:	afb40028 	sw	s4,40(sp)
     66c:	afb30024 	sw	s3,36(sp)
     670:	afb20020 	sw	s2,32(sp)
     674:	afb1001c 	sw	s1,28(sp)
     678:	afb00018 	sw	s0,24(sp)
     67c:	3c0e0001 	lui	t6,0x1
     680:	808f035d 	lb	t7,861(a0)
     684:	01c57021 	addu	t6,t6,a1
     688:	8dce1e08 	lw	t6,7688(t6)
     68c:	000fc0c0 	sll	t8,t7,0x3
     690:	00809825 	move	s3,a0
     694:	01d8a021 	addu	s4,t6,t8
     698:	92900000 	lbu	s0,0(s4)
     69c:	00008825 	move	s1,zero
     6a0:	00009025 	move	s2,zero
     6a4:	2610ffff 	addiu	s0,s0,-1
     6a8:	06000041 	bltz	s0,7b0 <func_80AA66A0+0x160>
     6ac:	24950024 	addiu	s5,a0,36
     6b0:	3c1e00ff 	lui	s8,0xff
     6b4:	3c170000 	lui	s7,0x0
     6b8:	26f70000 	addiu	s7,s7,0
     6bc:	37deffff 	ori	s8,s8,0xffff
     6c0:	27b6005c 	addiu	s6,sp,92
     6c4:	8e830004 	lw	v1,4(s4)
     6c8:	3c018000 	lui	at,0x8000
     6cc:	02a02025 	move	a0,s5
     6d0:	0003c900 	sll	t9,v1,0x4
     6d4:	00194702 	srl	t0,t9,0x1c
     6d8:	00084880 	sll	t1,t0,0x2
     6dc:	02e95021 	addu	t2,s7,t1
     6e0:	8d4b0000 	lw	t3,0(t2)
     6e4:	007e6024 	and	t4,v1,s8
     6e8:	02c02825 	move	a1,s6
     6ec:	016c6821 	addu	t5,t3,t4
     6f0:	01b11021 	addu	v0,t5,s1
     6f4:	00411021 	addu	v0,v0,at
     6f8:	844f0000 	lh	t7,0(v0)
     6fc:	448f2000 	mtc1	t7,$f4
     700:	00000000 	nop
     704:	468021a0 	cvt.s.w	$f6,$f4
     708:	e7a6005c 	swc1	$f6,92(sp)
     70c:	844e0002 	lh	t6,2(v0)
     710:	448e4000 	mtc1	t6,$f8
     714:	00000000 	nop
     718:	468042a0 	cvt.s.w	$f10,$f8
     71c:	e7aa0060 	swc1	$f10,96(sp)
     720:	84580004 	lh	t8,4(v0)
     724:	44988000 	mtc1	t8,$f16
     728:	00000000 	nop
     72c:	468084a0 	cvt.s.w	$f18,$f16
     730:	0c000000 	jal	0 <func_80AA6050>
     734:	e7b20064 	swc1	$f18,100(sp)
     738:	8679008a 	lh	t9,138(s3)
     73c:	2610ffff 	addiu	s0,s0,-1
     740:	26310006 	addiu	s1,s1,6
     744:	00591823 	subu	v1,v0,t9
     748:	00031c00 	sll	v1,v1,0x10
     74c:	00031c03 	sra	v1,v1,0x10
     750:	04600003 	bltz	v1,760 <func_80AA66A0+0x110>
     754:	00032023 	negu	a0,v1
     758:	10000001 	b	760 <func_80AA66A0+0x110>
     75c:	00602025 	move	a0,v1
     760:	28811771 	slti	at,a0,6001
     764:	10200010 	beqz	at,7a8 <func_80AA66A0+0x158>
     768:	00000000 	nop
     76c:	8268035c 	lb	t0,860(s3)
     770:	a6620032 	sh	v0,50(s3)
     774:	56480005 	bnel	s2,t0,78c <func_80AA66A0+0x13c>
     778:	8ecc0000 	lw	t4,0(s6)
     77c:	8269035e 	lb	t1,862(s3)
     780:	00095023 	negu	t2,t1
     784:	a26a035e 	sb	t2,862(s3)
     788:	8ecc0000 	lw	t4,0(s6)
     78c:	ae6c0344 	sw	t4,836(s3)
     790:	8ecb0004 	lw	t3,4(s6)
     794:	ae6b0348 	sw	t3,840(s3)
     798:	8ecc0008 	lw	t4,8(s6)
     79c:	a272035c 	sb	s2,860(s3)
     7a0:	10000003 	b	7b0 <func_80AA66A0+0x160>
     7a4:	ae6c034c 	sw	t4,844(s3)
     7a8:	0601ffc6 	bgez	s0,6c4 <func_80AA66A0+0x74>
     7ac:	26520001 	addiu	s2,s2,1
     7b0:	8fbf003c 	lw	ra,60(sp)
     7b4:	8fb00018 	lw	s0,24(sp)
     7b8:	8fb1001c 	lw	s1,28(sp)
     7bc:	8fb20020 	lw	s2,32(sp)
     7c0:	8fb30024 	lw	s3,36(sp)
     7c4:	8fb40028 	lw	s4,40(sp)
     7c8:	8fb5002c 	lw	s5,44(sp)
     7cc:	8fb60030 	lw	s6,48(sp)
     7d0:	8fb70034 	lw	s7,52(sp)
     7d4:	8fbe0038 	lw	s8,56(sp)
     7d8:	03e00008 	jr	ra
     7dc:	27bd0070 	addiu	sp,sp,112

000007e0 <func_80AA6830>:
     7e0:	27bdffe8 	addiu	sp,sp,-24
     7e4:	afbf0014 	sw	ra,20(sp)
     7e8:	00803825 	move	a3,a0
     7ec:	3c050600 	lui	a1,0x600
     7f0:	24a541a8 	addiu	a1,a1,16808
     7f4:	afa70018 	sw	a3,24(sp)
     7f8:	2484018c 	addiu	a0,a0,396
     7fc:	0c000000 	jal	0 <func_80AA6050>
     800:	3c06c080 	lui	a2,0xc080
     804:	8fa70018 	lw	a3,24(sp)
     808:	44802000 	mtc1	zero,$f4
     80c:	2404001e 	li	a0,30
     810:	24050032 	li	a1,50
     814:	0c000000 	jal	0 <func_80AA6050>
     818:	e4e40068 	swc1	$f4,104(a3)
     81c:	8fa40018 	lw	a0,24(sp)
     820:	240e0006 	li	t6,6
     824:	3c050000 	lui	a1,0x0
     828:	24a50000 	addiu	a1,a1,0
     82c:	a482032a 	sh	v0,810(a0)
     830:	0c000000 	jal	0 <func_80AA6050>
     834:	ac8e0320 	sw	t6,800(a0)
     838:	8fbf0014 	lw	ra,20(sp)
     83c:	27bd0018 	addiu	sp,sp,24
     840:	03e00008 	jr	ra
     844:	00000000 	nop

00000848 <func_80AA6898>:
     848:	27bdffe8 	addiu	sp,sp,-24
     84c:	afbf0014 	sw	ra,20(sp)
     850:	00803025 	move	a2,a0
     854:	3c050601 	lui	a1,0x601
     858:	24a5ebe4 	addiu	a1,a1,-5148
     85c:	afa60018 	sw	a2,24(sp)
     860:	0c000000 	jal	0 <func_80AA6050>
     864:	2484018c 	addiu	a0,a0,396
     868:	8fa60018 	lw	a2,24(sp)
     86c:	44802000 	mtc1	zero,$f4
     870:	2404001e 	li	a0,30
     874:	24050032 	li	a1,50
     878:	0c000000 	jal	0 <func_80AA6050>
     87c:	e4c40068 	swc1	$f4,104(a2)
     880:	8fa40018 	lw	a0,24(sp)
     884:	240e0006 	li	t6,6
     888:	3c050000 	lui	a1,0x0
     88c:	24a50000 	addiu	a1,a1,0
     890:	a482032a 	sh	v0,810(a0)
     894:	0c000000 	jal	0 <func_80AA6050>
     898:	ac8e0320 	sw	t6,800(a0)
     89c:	8fbf0014 	lw	ra,20(sp)
     8a0:	27bd0018 	addiu	sp,sp,24
     8a4:	03e00008 	jr	ra
     8a8:	00000000 	nop

000008ac <func_80AA68FC>:
     8ac:	27bdffe0 	addiu	sp,sp,-32
     8b0:	afb00018 	sw	s0,24(sp)
     8b4:	afa50024 	sw	a1,36(sp)
     8b8:	00808025 	move	s0,a0
     8bc:	afbf001c 	sw	ra,28(sp)
     8c0:	3c050600 	lui	a1,0x600
     8c4:	24a541a8 	addiu	a1,a1,16808
     8c8:	2484018c 	addiu	a0,a0,396
     8cc:	0c000000 	jal	0 <func_80AA6050>
     8d0:	3c06c080 	lui	a2,0xc080
     8d4:	44802000 	mtc1	zero,$f4
     8d8:	24040028 	li	a0,40
     8dc:	24050050 	li	a1,80
     8e0:	0c000000 	jal	0 <func_80AA6050>
     8e4:	e6040068 	swc1	$f4,104(s0)
     8e8:	240e0006 	li	t6,6
     8ec:	a602032a 	sh	v0,810(s0)
     8f0:	ae0e0320 	sw	t6,800(s0)
     8f4:	8fa50024 	lw	a1,36(sp)
     8f8:	0c000000 	jal	0 <func_80AA6050>
     8fc:	02002025 	move	a0,s0
     900:	3c050000 	lui	a1,0x0
     904:	24a50000 	addiu	a1,a1,0
     908:	0c000000 	jal	0 <func_80AA6050>
     90c:	02002025 	move	a0,s0
     910:	8fbf001c 	lw	ra,28(sp)
     914:	8fb00018 	lw	s0,24(sp)
     918:	27bd0020 	addiu	sp,sp,32
     91c:	03e00008 	jr	ra
     920:	00000000 	nop

00000924 <func_80AA6974>:
     924:	27bdffd0 	addiu	sp,sp,-48
     928:	afb00028 	sw	s0,40(sp)
     92c:	00808025 	move	s0,a0
     930:	afbf002c 	sw	ra,44(sp)
     934:	3c040601 	lui	a0,0x601
     938:	0c000000 	jal	0 <func_80AA6050>
     93c:	24849fc0 	addiu	a0,a0,-24640
     940:	44822000 	mtc1	v0,$f4
     944:	44800000 	mtc1	zero,$f0
     948:	3c01c080 	lui	at,0xc080
     94c:	468021a0 	cvt.s.w	$f6,$f4
     950:	44814000 	mtc1	at,$f8
     954:	3c050601 	lui	a1,0x601
     958:	44060000 	mfc1	a2,$f0
     95c:	44070000 	mfc1	a3,$f0
     960:	24a59fc0 	addiu	a1,a1,-24640
     964:	e7a60010 	swc1	$f6,16(sp)
     968:	2604018c 	addiu	a0,s0,396
     96c:	afa00014 	sw	zero,20(sp)
     970:	0c000000 	jal	0 <func_80AA6050>
     974:	e7a80018 	swc1	$f8,24(sp)
     978:	3c010000 	lui	at,0x0
     97c:	c42a0000 	lwc1	$f10,0(at)
     980:	24040032 	li	a0,50
     984:	24050046 	li	a1,70
     988:	0c000000 	jal	0 <func_80AA6050>
     98c:	e60a0068 	swc1	$f10,104(s0)
     990:	240e0001 	li	t6,1
     994:	240f0009 	li	t7,9
     998:	3c050000 	lui	a1,0x0
     99c:	a602032a 	sh	v0,810(s0)
     9a0:	a60e0332 	sh	t6,818(s0)
     9a4:	ae0f0320 	sw	t7,800(s0)
     9a8:	24a50000 	addiu	a1,a1,0
     9ac:	0c000000 	jal	0 <func_80AA6050>
     9b0:	02002025 	move	a0,s0
     9b4:	8fbf002c 	lw	ra,44(sp)
     9b8:	8fb00028 	lw	s0,40(sp)
     9bc:	27bd0030 	addiu	sp,sp,48
     9c0:	03e00008 	jr	ra
     9c4:	00000000 	nop

000009c8 <func_80AA6A18>:
     9c8:	27bdffc8 	addiu	sp,sp,-56
     9cc:	afb00028 	sw	s0,40(sp)
     9d0:	00808025 	move	s0,a0
     9d4:	afbf002c 	sw	ra,44(sp)
     9d8:	3c040601 	lui	a0,0x601
     9dc:	0c000000 	jal	0 <func_80AA6050>
     9e0:	24849fc0 	addiu	a0,a0,-24640
     9e4:	44822000 	mtc1	v0,$f4
     9e8:	3c010000 	lui	at,0x0
     9ec:	c4280000 	lwc1	$f8,0(at)
     9f0:	468021a0 	cvt.s.w	$f6,$f4
     9f4:	24040032 	li	a0,50
     9f8:	24050046 	li	a1,70
     9fc:	e7a60034 	swc1	$f6,52(sp)
     a00:	0c000000 	jal	0 <func_80AA6050>
     a04:	e6080068 	swc1	$f8,104(s0)
     a08:	44800000 	mtc1	zero,$f0
     a0c:	240e0001 	li	t6,1
     a10:	240f0009 	li	t7,9
     a14:	a602032a 	sh	v0,810(s0)
     a18:	a60e0332 	sh	t6,818(s0)
     a1c:	ae0f0320 	sw	t7,800(s0)
     a20:	3c01c080 	lui	at,0xc080
     a24:	44818000 	mtc1	at,$f16
     a28:	c7aa0034 	lwc1	$f10,52(sp)
     a2c:	3c050601 	lui	a1,0x601
     a30:	24180001 	li	t8,1
     a34:	44060000 	mfc1	a2,$f0
     a38:	44070000 	mfc1	a3,$f0
     a3c:	afb80014 	sw	t8,20(sp)
     a40:	24a59fc0 	addiu	a1,a1,-24640
     a44:	2604018c 	addiu	a0,s0,396
     a48:	e7aa0010 	swc1	$f10,16(sp)
     a4c:	0c000000 	jal	0 <func_80AA6050>
     a50:	e7b00018 	swc1	$f16,24(sp)
     a54:	3c050000 	lui	a1,0x0
     a58:	24a50000 	addiu	a1,a1,0
     a5c:	0c000000 	jal	0 <func_80AA6050>
     a60:	02002025 	move	a0,s0
     a64:	8fbf002c 	lw	ra,44(sp)
     a68:	8fb00028 	lw	s0,40(sp)
     a6c:	27bd0038 	addiu	sp,sp,56
     a70:	03e00008 	jr	ra
     a74:	00000000 	nop

00000a78 <func_80AA6AC8>:
     a78:	27bdffd8 	addiu	sp,sp,-40
     a7c:	afb00018 	sw	s0,24(sp)
     a80:	00808025 	move	s0,a0
     a84:	afbf001c 	sw	ra,28(sp)
     a88:	3c040600 	lui	a0,0x600
     a8c:	0c000000 	jal	0 <func_80AA6050>
     a90:	24842c10 	addiu	a0,a0,11280
     a94:	44822000 	mtc1	v0,$f4
     a98:	3c050600 	lui	a1,0x600
     a9c:	24a52c10 	addiu	a1,a1,11280
     aa0:	468021a0 	cvt.s.w	$f6,$f4
     aa4:	2604018c 	addiu	a0,s0,396
     aa8:	3c06c080 	lui	a2,0xc080
     aac:	0c000000 	jal	0 <func_80AA6050>
     ab0:	e7a60024 	swc1	$f6,36(sp)
     ab4:	44804000 	mtc1	zero,$f8
     ab8:	240e000a 	li	t6,10
     abc:	ae0e0320 	sw	t6,800(s0)
     ac0:	e6080068 	swc1	$f8,104(s0)
     ac4:	c7aa0024 	lwc1	$f10,36(sp)
     ac8:	02002025 	move	a0,s0
     acc:	240538bc 	li	a1,14524
     ad0:	4600540d 	trunc.w.s	$f16,$f10
     ad4:	44088000 	mfc1	t0,$f16
     ad8:	00000000 	nop
     adc:	25090006 	addiu	t1,t0,6
     ae0:	0c000000 	jal	0 <func_80AA6050>
     ae4:	a609032e 	sh	t1,814(s0)
     ae8:	860a001c 	lh	t2,28(s0)
     aec:	2401ffff 	li	at,-1
     af0:	02002025 	move	a0,s0
     af4:	15410007 	bne	t2,at,b14 <func_80AA6AC8+0x9c>
     af8:	3c050000 	lui	a1,0x0
     afc:	3c050000 	lui	a1,0x0
     b00:	24a50000 	addiu	a1,a1,0
     b04:	0c000000 	jal	0 <func_80AA6050>
     b08:	02002025 	move	a0,s0
     b0c:	10000004 	b	b20 <func_80AA6AC8+0xa8>
     b10:	8fbf001c 	lw	ra,28(sp)
     b14:	0c000000 	jal	0 <func_80AA6050>
     b18:	24a50000 	addiu	a1,a1,0
     b1c:	8fbf001c 	lw	ra,28(sp)
     b20:	8fb00018 	lw	s0,24(sp)
     b24:	27bd0028 	addiu	sp,sp,40
     b28:	03e00008 	jr	ra
     b2c:	00000000 	nop

00000b30 <func_80AA6B80>:
     b30:	27bdffe8 	addiu	sp,sp,-24
     b34:	afbf0014 	sw	ra,20(sp)
     b38:	00803025 	move	a2,a0
     b3c:	3c050600 	lui	a1,0x600
     b40:	24a52f10 	addiu	a1,a1,12048
     b44:	afa60018 	sw	a2,24(sp)
     b48:	0c000000 	jal	0 <func_80AA6050>
     b4c:	2484018c 	addiu	a0,a0,396
     b50:	8fa40018 	lw	a0,24(sp)
     b54:	0c000000 	jal	0 <func_80AA6050>
     b58:	240538ba 	li	a1,14522
     b5c:	8fa40018 	lw	a0,24(sp)
     b60:	3c014120 	lui	at,0x4120
     b64:	44812000 	mtc1	at,$f4
     b68:	240e0001 	li	t6,1
     b6c:	240f000a 	li	t7,10
     b70:	24180003 	li	t8,3
     b74:	3c050000 	lui	a1,0x0
     b78:	24a50000 	addiu	a1,a1,0
     b7c:	a48e0334 	sh	t6,820(a0)
     b80:	ac8f0320 	sw	t7,800(a0)
     b84:	a498032e 	sh	t8,814(a0)
     b88:	0c000000 	jal	0 <func_80AA6050>
     b8c:	e4840068 	swc1	$f4,104(a0)
     b90:	8fbf0014 	lw	ra,20(sp)
     b94:	27bd0018 	addiu	sp,sp,24
     b98:	03e00008 	jr	ra
     b9c:	00000000 	nop

00000ba0 <func_80AA6BF0>:
     ba0:	27bdffd0 	addiu	sp,sp,-48
     ba4:	afb00028 	sw	s0,40(sp)
     ba8:	00808025 	move	s0,a0
     bac:	afbf002c 	sw	ra,44(sp)
     bb0:	3c040601 	lui	a0,0x601
     bb4:	0c000000 	jal	0 <func_80AA6050>
     bb8:	2484b4bc 	addiu	a0,a0,-19268
     bbc:	44822000 	mtc1	v0,$f4
     bc0:	44800000 	mtc1	zero,$f0
     bc4:	240e000a 	li	t6,10
     bc8:	468021a0 	cvt.s.w	$f6,$f4
     bcc:	ae0e0320 	sw	t6,800(s0)
     bd0:	3c050601 	lui	a1,0x601
     bd4:	240f0003 	li	t7,3
     bd8:	44070000 	mfc1	a3,$f0
     bdc:	afaf0014 	sw	t7,20(sp)
     be0:	24a5b4bc 	addiu	a1,a1,-19268
     be4:	e7a60010 	swc1	$f6,16(sp)
     be8:	2604018c 	addiu	a0,s0,396
     bec:	3c064040 	lui	a2,0x4040
     bf0:	0c000000 	jal	0 <func_80AA6050>
     bf4:	e7a00018 	swc1	$f0,24(sp)
     bf8:	86180032 	lh	t8,50(s0)
     bfc:	8619008a 	lh	t9,138(s0)
     c00:	24040001 	li	a0,1
     c04:	a604032e 	sh	a0,814(s0)
     c08:	03191023 	subu	v0,t8,t9
     c0c:	00021400 	sll	v0,v0,0x10
     c10:	00021403 	sra	v0,v0,0x10
     c14:	04400003 	bltz	v0,c24 <func_80AA6BF0+0x84>
     c18:	3c050000 	lui	a1,0x0
     c1c:	10000002 	b	c28 <func_80AA6BF0+0x88>
     c20:	00401825 	move	v1,v0
     c24:	00021823 	negu	v1,v0
     c28:	28610259 	slti	at,v1,601
     c2c:	10200004 	beqz	at,c40 <func_80AA6BF0+0xa0>
     c30:	24a50000 	addiu	a1,a1,0
     c34:	24080002 	li	t0,2
     c38:	10000006 	b	c54 <func_80AA6BF0+0xb4>
     c3c:	a6080334 	sh	t0,820(s0)
     c40:	04400003 	bltz	v0,c50 <func_80AA6BF0+0xb0>
     c44:	24090003 	li	t1,3
     c48:	10000002 	b	c54 <func_80AA6BF0+0xb4>
     c4c:	a6040334 	sh	a0,820(s0)
     c50:	a6090334 	sh	t1,820(s0)
     c54:	0c000000 	jal	0 <func_80AA6050>
     c58:	02002025 	move	a0,s0
     c5c:	8fbf002c 	lw	ra,44(sp)
     c60:	8fb00028 	lw	s0,40(sp)
     c64:	27bd0030 	addiu	sp,sp,48
     c68:	03e00008 	jr	ra
     c6c:	00000000 	nop

00000c70 <func_80AA6CC0>:
     c70:	27bdffe8 	addiu	sp,sp,-24
     c74:	afbf0014 	sw	ra,20(sp)
     c78:	00803025 	move	a2,a0
     c7c:	3c050601 	lui	a1,0x601
     c80:	24a59280 	addiu	a1,a1,-28032
     c84:	afa60018 	sw	a2,24(sp)
     c88:	0c000000 	jal	0 <func_80AA6050>
     c8c:	2484018c 	addiu	a0,a0,396
     c90:	8fa40018 	lw	a0,24(sp)
     c94:	240e000b 	li	t6,11
     c98:	240f0005 	li	t7,5
     c9c:	240538b9 	li	a1,14521
     ca0:	ac8e0320 	sw	t6,800(a0)
     ca4:	a480032a 	sh	zero,810(a0)
     ca8:	0c000000 	jal	0 <func_80AA6050>
     cac:	a48f032e 	sh	t7,814(a0)
     cb0:	3c050000 	lui	a1,0x0
     cb4:	8fa40018 	lw	a0,24(sp)
     cb8:	0c000000 	jal	0 <func_80AA6050>
     cbc:	24a50000 	addiu	a1,a1,0
     cc0:	8fbf0014 	lw	ra,20(sp)
     cc4:	27bd0018 	addiu	sp,sp,24
     cc8:	03e00008 	jr	ra
     ccc:	00000000 	nop

00000cd0 <func_80AA6D20>:
     cd0:	27bdffe8 	addiu	sp,sp,-24
     cd4:	afbf0014 	sw	ra,20(sp)
     cd8:	00803025 	move	a2,a0
     cdc:	3c050601 	lui	a1,0x601
     ce0:	24a59280 	addiu	a1,a1,-28032
     ce4:	afa60018 	sw	a2,24(sp)
     ce8:	0c000000 	jal	0 <func_80AA6050>
     cec:	2484018c 	addiu	a0,a0,396
     cf0:	8fa40018 	lw	a0,24(sp)
     cf4:	3c01c100 	lui	at,0xc100
     cf8:	44812000 	mtc1	at,$f4
     cfc:	948f0088 	lhu	t7,136(a0)
     d00:	3c0140c0 	lui	at,0x40c0
     d04:	44813000 	mtc1	at,$f6
     d08:	240e000b 	li	t6,11
     d0c:	24190032 	li	t9,50
     d10:	31f8fffe 	andi	t8,t7,0xfffe
     d14:	240538b9 	li	a1,14521
     d18:	ac8e0320 	sw	t6,800(a0)
     d1c:	a4980088 	sh	t8,136(a0)
     d20:	a480032a 	sh	zero,810(a0)
     d24:	a499032e 	sh	t9,814(a0)
     d28:	e4840068 	swc1	$f4,104(a0)
     d2c:	0c000000 	jal	0 <func_80AA6050>
     d30:	e4860060 	swc1	$f6,96(a0)
     d34:	3c050000 	lui	a1,0x0
     d38:	8fa40018 	lw	a0,24(sp)
     d3c:	0c000000 	jal	0 <func_80AA6050>
     d40:	24a50000 	addiu	a1,a1,0
     d44:	8fbf0014 	lw	ra,20(sp)
     d48:	27bd0018 	addiu	sp,sp,24
     d4c:	03e00008 	jr	ra
     d50:	00000000 	nop

00000d54 <func_80AA6DA4>:
     d54:	27bdffd8 	addiu	sp,sp,-40
     d58:	afa40028 	sw	a0,40(sp)
     d5c:	afbf0024 	sw	ra,36(sp)
     d60:	3c040601 	lui	a0,0x601
     d64:	0c000000 	jal	0 <func_80AA6050>
     d68:	2484ebe4 	addiu	a0,a0,-5148
     d6c:	44822000 	mtc1	v0,$f4
     d70:	8fa30028 	lw	v1,40(sp)
     d74:	44800000 	mtc1	zero,$f0
     d78:	468021a0 	cvt.s.w	$f6,$f4
     d7c:	240e000b 	li	t6,11
     d80:	ac6e0320 	sw	t6,800(v1)
     d84:	3c050601 	lui	a1,0x601
     d88:	240f0003 	li	t7,3
     d8c:	44070000 	mfc1	a3,$f0
     d90:	afaf0014 	sw	t7,20(sp)
     d94:	24a5ebe4 	addiu	a1,a1,-5148
     d98:	e7a60010 	swc1	$f6,16(sp)
     d9c:	3c0640a0 	lui	a2,0x40a0
     da0:	2464018c 	addiu	a0,v1,396
     da4:	0c000000 	jal	0 <func_80AA6050>
     da8:	e7a00018 	swc1	$f0,24(sp)
     dac:	3c050000 	lui	a1,0x0
     db0:	24a50000 	addiu	a1,a1,0
     db4:	0c000000 	jal	0 <func_80AA6050>
     db8:	8fa40028 	lw	a0,40(sp)
     dbc:	8fbf0024 	lw	ra,36(sp)
     dc0:	27bd0028 	addiu	sp,sp,40
     dc4:	03e00008 	jr	ra
     dc8:	00000000 	nop

00000dcc <func_80AA6E1C>:
     dcc:	27bdffe8 	addiu	sp,sp,-24
     dd0:	afbf0014 	sw	ra,20(sp)
     dd4:	00803025 	move	a2,a0
     dd8:	3c050601 	lui	a1,0x601
     ddc:	24a5c44c 	addiu	a1,a1,-15284
     de0:	afa60018 	sw	a2,24(sp)
     de4:	0c000000 	jal	0 <func_80AA6050>
     de8:	2484018c 	addiu	a0,a0,396
     dec:	8fa40018 	lw	a0,24(sp)
     df0:	240e0003 	li	t6,3
     df4:	240f0014 	li	t7,20
     df8:	240538be 	li	a1,14526
     dfc:	ac8e0320 	sw	t6,800(a0)
     e00:	a480032a 	sh	zero,810(a0)
     e04:	0c000000 	jal	0 <func_80AA6050>
     e08:	a48f032e 	sh	t7,814(a0)
     e0c:	3c050000 	lui	a1,0x0
     e10:	8fa40018 	lw	a0,24(sp)
     e14:	0c000000 	jal	0 <func_80AA6050>
     e18:	24a50000 	addiu	a1,a1,0
     e1c:	8fbf0014 	lw	ra,20(sp)
     e20:	27bd0018 	addiu	sp,sp,24
     e24:	03e00008 	jr	ra
     e28:	00000000 	nop

00000e2c <func_80AA6E7C>:
     e2c:	27bdffd0 	addiu	sp,sp,-48
     e30:	afb00028 	sw	s0,40(sp)
     e34:	00808025 	move	s0,a0
     e38:	afbf002c 	sw	ra,44(sp)
     e3c:	3c040601 	lui	a0,0x601
     e40:	0c000000 	jal	0 <func_80AA6050>
     e44:	2484d5d4 	addiu	a0,a0,-10796
     e48:	44822000 	mtc1	v0,$f4
     e4c:	240e0002 	li	t6,2
     e50:	240f0006 	li	t7,6
     e54:	468021a0 	cvt.s.w	$f6,$f4
     e58:	44804000 	mtc1	zero,$f8
     e5c:	ae0e0320 	sw	t6,800(s0)
     e60:	a600032a 	sh	zero,810(s0)
     e64:	a60f032e 	sh	t7,814(s0)
     e68:	3c050601 	lui	a1,0x601
     e6c:	24180003 	li	t8,3
     e70:	afb80014 	sw	t8,20(sp)
     e74:	24a5d5d4 	addiu	a1,a1,-10796
     e78:	e7a60010 	swc1	$f6,16(sp)
     e7c:	2604018c 	addiu	a0,s0,396
     e80:	3c063f80 	lui	a2,0x3f80
     e84:	3c074080 	lui	a3,0x4080
     e88:	0c000000 	jal	0 <func_80AA6050>
     e8c:	e7a80018 	swc1	$f8,24(sp)
     e90:	3c050000 	lui	a1,0x0
     e94:	24a50000 	addiu	a1,a1,0
     e98:	0c000000 	jal	0 <func_80AA6050>
     e9c:	02002025 	move	a0,s0
     ea0:	8fbf002c 	lw	ra,44(sp)
     ea4:	8fb00028 	lw	s0,40(sp)
     ea8:	27bd0030 	addiu	sp,sp,48
     eac:	03e00008 	jr	ra
     eb0:	00000000 	nop

00000eb4 <func_80AA6F04>:
     eb4:	27bdffe8 	addiu	sp,sp,-24
     eb8:	afbf0014 	sw	ra,20(sp)
     ebc:	00803825 	move	a3,a0
     ec0:	3c050601 	lui	a1,0x601
     ec4:	24a5be58 	addiu	a1,a1,-16808
     ec8:	afa70018 	sw	a3,24(sp)
     ecc:	2484018c 	addiu	a0,a0,396
     ed0:	0c000000 	jal	0 <func_80AA6050>
     ed4:	3c06c080 	lui	a2,0xc080
     ed8:	8fa40018 	lw	a0,24(sp)
     edc:	44802000 	mtc1	zero,$f4
     ee0:	2401fffe 	li	at,-2
     ee4:	8c8f0004 	lw	t7,4(a0)
     ee8:	240e0001 	li	t6,1
     eec:	24190050 	li	t9,80
     ef0:	2408005f 	li	t0,95
     ef4:	2409001e 	li	t1,30
     ef8:	01e1c024 	and	t8,t7,at
     efc:	240538be 	li	a1,14526
     f00:	ac8e0320 	sw	t6,800(a0)
     f04:	ac980004 	sw	t8,4(a0)
     f08:	a49903aa 	sh	t9,938(a0)
     f0c:	a48803a8 	sh	t0,936(a0)
     f10:	a489032a 	sh	t1,810(a0)
     f14:	0c000000 	jal	0 <func_80AA6050>
     f18:	e4840068 	swc1	$f4,104(a0)
     f1c:	3c050000 	lui	a1,0x0
     f20:	8fa40018 	lw	a0,24(sp)
     f24:	0c000000 	jal	0 <func_80AA6050>
     f28:	24a50000 	addiu	a1,a1,0
     f2c:	8fbf0014 	lw	ra,20(sp)
     f30:	27bd0018 	addiu	sp,sp,24
     f34:	03e00008 	jr	ra
     f38:	00000000 	nop

00000f3c <func_80AA6F8C>:
     f3c:	27bdffd8 	addiu	sp,sp,-40
     f40:	44802000 	mtc1	zero,$f4
     f44:	afbf0024 	sw	ra,36(sp)
     f48:	afb00020 	sw	s0,32(sp)
     f4c:	240e0005 	li	t6,5
     f50:	ac8e0320 	sw	t6,800(a0)
     f54:	240f0050 	li	t7,80
     f58:	e4840068 	swc1	$f4,104(a0)
     f5c:	00808025 	move	s0,a0
     f60:	afaf0010 	sw	t7,16(sp)
     f64:	00002825 	move	a1,zero
     f68:	24060078 	li	a2,120
     f6c:	0c000000 	jal	0 <func_80AA6050>
     f70:	00003825 	move	a3,zero
     f74:	92180188 	lbu	t8,392(s0)
     f78:	24010006 	li	at,6
     f7c:	24190028 	li	t9,40
     f80:	57010004 	bnel	t8,at,f94 <func_80AA6F8C+0x58>
     f84:	8608001c 	lh	t0,28(s0)
     f88:	1000000b 	b	fb8 <func_80AA6F8C+0x7c>
     f8c:	a6190328 	sh	t9,808(s0)
     f90:	8608001c 	lh	t0,28(s0)
     f94:	3c050600 	lui	a1,0x600
     f98:	24a51950 	addiu	a1,a1,6480
     f9c:	11000003 	beqz	t0,fac <func_80AA6F8C+0x70>
     fa0:	2604018c 	addiu	a0,s0,396
     fa4:	0c000000 	jal	0 <func_80AA6050>
     fa8:	24060000 	li	a2,0
     fac:	02002025 	move	a0,s0
     fb0:	0c000000 	jal	0 <func_80AA6050>
     fb4:	2405389e 	li	a1,14494
     fb8:	3c050000 	lui	a1,0x0
     fbc:	24a50000 	addiu	a1,a1,0
     fc0:	0c000000 	jal	0 <func_80AA6050>
     fc4:	02002025 	move	a0,s0
     fc8:	8fbf0024 	lw	ra,36(sp)
     fcc:	8fb00020 	lw	s0,32(sp)
     fd0:	27bd0028 	addiu	sp,sp,40
     fd4:	03e00008 	jr	ra
     fd8:	00000000 	nop

00000fdc <func_80AA702C>:
     fdc:	27bdffd8 	addiu	sp,sp,-40
     fe0:	afbf0024 	sw	ra,36(sp)
     fe4:	afb00020 	sw	s0,32(sp)
     fe8:	afa5002c 	sw	a1,44(sp)
     fec:	8ca21c44 	lw	v0,7236(a1)
     ff0:	00808025 	move	s0,a0
     ff4:	8c430680 	lw	v1,1664(v0)
     ff8:	306f0080 	andi	t7,v1,0x80
     ffc:	51e00013 	beqzl	t7,104c <func_80AA702C+0x70>
    1000:	92090114 	lbu	t1,276(s0)
    1004:	8c580118 	lw	t8,280(v0)
    1008:	3c014080 	lui	at,0x4080
    100c:	240800c8 	li	t0,200
    1010:	1498000d 	bne	a0,t8,1048 <func_80AA702C+0x6c>
    1014:	02002825 	move	a1,s0
    1018:	44810000 	mtc1	at,$f0
    101c:	2401ff7f 	li	at,-129
    1020:	0061c824 	and	t9,v1,at
    1024:	ac590680 	sw	t9,1664(v0)
    1028:	ac400118 	sw	zero,280(v0)
    102c:	a4480850 	sh	t0,2128(v0)
    1030:	86070032 	lh	a3,50(s0)
    1034:	44060000 	mfc1	a2,$f0
    1038:	8fa4002c 	lw	a0,44(sp)
    103c:	0c000000 	jal	0 <func_80AA6050>
    1040:	e7a00010 	swc1	$f0,16(sp)
    1044:	a6000334 	sh	zero,820(s0)
    1048:	92090114 	lbu	t1,276(s0)
    104c:	55200021 	bnezl	t1,10d4 <func_80AA702C+0xf8>
    1050:	8fbf0024 	lw	ra,36(sp)
    1054:	860a001c 	lh	t2,28(s0)
    1058:	55400015 	bnezl	t2,10b0 <func_80AA702C+0xd4>
    105c:	920d00af 	lbu	t5,175(s0)
    1060:	920b00af 	lbu	t3,175(s0)
    1064:	55600006 	bnezl	t3,1080 <func_80AA702C+0xa4>
    1068:	8e0c0320 	lw	t4,800(s0)
    106c:	0c000000 	jal	0 <func_80AA6050>
    1070:	02002025 	move	a0,s0
    1074:	10000017 	b	10d4 <func_80AA702C+0xf8>
    1078:	8fbf0024 	lw	ra,36(sp)
    107c:	8e0c0320 	lw	t4,800(s0)
    1080:	24010003 	li	at,3
    1084:	15810005 	bne	t4,at,109c <func_80AA702C+0xc0>
    1088:	00000000 	nop
    108c:	0c000000 	jal	0 <func_80AA6050>
    1090:	02002025 	move	a0,s0
    1094:	1000000f 	b	10d4 <func_80AA702C+0xf8>
    1098:	8fbf0024 	lw	ra,36(sp)
    109c:	0c000000 	jal	0 <func_80AA6050>
    10a0:	02002025 	move	a0,s0
    10a4:	1000000b 	b	10d4 <func_80AA702C+0xf8>
    10a8:	8fbf0024 	lw	ra,36(sp)
    10ac:	920d00af 	lbu	t5,175(s0)
    10b0:	15a00005 	bnez	t5,10c8 <func_80AA702C+0xec>
    10b4:	00000000 	nop
    10b8:	0c000000 	jal	0 <func_80AA6050>
    10bc:	02002025 	move	a0,s0
    10c0:	10000004 	b	10d4 <func_80AA702C+0xf8>
    10c4:	8fbf0024 	lw	ra,36(sp)
    10c8:	0c000000 	jal	0 <func_80AA6050>
    10cc:	02002025 	move	a0,s0
    10d0:	8fbf0024 	lw	ra,36(sp)
    10d4:	8fb00020 	lw	s0,32(sp)
    10d8:	27bd0028 	addiu	sp,sp,40
    10dc:	03e00008 	jr	ra
    10e0:	00000000 	nop

000010e4 <func_80AA7134>:
    10e4:	27bdffe0 	addiu	sp,sp,-32
    10e8:	00803025 	move	a2,a0
    10ec:	afbf0014 	sw	ra,20(sp)
    10f0:	2484018c 	addiu	a0,a0,396
    10f4:	afa50024 	sw	a1,36(sp)
    10f8:	afa40018 	sw	a0,24(sp)
    10fc:	0c000000 	jal	0 <func_80AA6050>
    1100:	afa60020 	sw	a2,32(sp)
    1104:	8fa60020 	lw	a2,32(sp)
    1108:	8fa40018 	lw	a0,24(sp)
    110c:	24050000 	li	a1,0
    1110:	84c3032a 	lh	v1,810(a2)
    1114:	14600003 	bnez	v1,1124 <func_80AA7134+0x40>
    1118:	246effff 	addiu	t6,v1,-1
    111c:	10000003 	b	112c <func_80AA7134+0x48>
    1120:	00001025 	move	v0,zero
    1124:	a4ce032a 	sh	t6,810(a2)
    1128:	84c2032a 	lh	v0,810(a2)
    112c:	54400008 	bnezl	v0,1150 <func_80AA7134+0x6c>
    1130:	8fbf0014 	lw	ra,20(sp)
    1134:	0c000000 	jal	0 <func_80AA6050>
    1138:	afa60020 	sw	a2,32(sp)
    113c:	10400003 	beqz	v0,114c <func_80AA7134+0x68>
    1140:	8fa60020 	lw	a2,32(sp)
    1144:	0c000000 	jal	0 <func_80AA6050>
    1148:	00c02025 	move	a0,a2
    114c:	8fbf0014 	lw	ra,20(sp)
    1150:	27bd0020 	addiu	sp,sp,32
    1154:	03e00008 	jr	ra
    1158:	00000000 	nop

0000115c <func_80AA71AC>:
    115c:	27bdffd8 	addiu	sp,sp,-40
    1160:	afb00020 	sw	s0,32(sp)
    1164:	00808025 	move	s0,a0
    1168:	afbf0024 	sw	ra,36(sp)
    116c:	afa5002c 	sw	a1,44(sp)
    1170:	0c000000 	jal	0 <func_80AA6050>
    1174:	2484018c 	addiu	a0,a0,396
    1178:	8603032a 	lh	v1,810(s0)
    117c:	260400b6 	addiu	a0,s0,182
    1180:	24060001 	li	a2,1
    1184:	14600013 	bnez	v1,11d4 <func_80AA71AC+0x78>
    1188:	246fffff 	addiu	t7,v1,-1
    118c:	26040024 	addiu	a0,s0,36
    1190:	0c000000 	jal	0 <func_80AA6050>
    1194:	26050344 	addiu	a1,s0,836
    1198:	a6020330 	sh	v0,816(s0)
    119c:	86050330 	lh	a1,816(s0)
    11a0:	afa00010 	sw	zero,16(sp)
    11a4:	260400b6 	addiu	a0,s0,182
    11a8:	24060001 	li	a2,1
    11ac:	0c000000 	jal	0 <func_80AA6050>
    11b0:	240703e8 	li	a3,1000
    11b4:	5440000d 	bnezl	v0,11ec <func_80AA71AC+0x90>
    11b8:	c6000094 	lwc1	$f0,148(s0)
    11bc:	860e00b6 	lh	t6,182(s0)
    11c0:	02002025 	move	a0,s0
    11c4:	0c000000 	jal	0 <func_80AA6050>
    11c8:	a60e0032 	sh	t6,50(s0)
    11cc:	10000007 	b	11ec <func_80AA71AC+0x90>
    11d0:	c6000094 	lwc1	$f0,148(s0)
    11d4:	a60f032a 	sh	t7,810(s0)
    11d8:	86050016 	lh	a1,22(s0)
    11dc:	afa00010 	sw	zero,16(sp)
    11e0:	0c000000 	jal	0 <func_80AA6050>
    11e4:	240703e8 	li	a3,1000
    11e8:	c6000094 	lwc1	$f0,148(s0)
    11ec:	44802000 	mtc1	zero,$f4
    11f0:	3c0141a0 	lui	at,0x41a0
    11f4:	44813000 	mtc1	at,$f6
    11f8:	4600203e 	c.le.s	$f4,$f0
    11fc:	02002025 	move	a0,s0
    1200:	45020004 	bc1fl	1214 <func_80AA71AC+0xb8>
    1204:	46000087 	neg.s	$f2,$f0
    1208:	10000002 	b	1214 <func_80AA71AC+0xb8>
    120c:	46000086 	mov.s	$f2,$f0
    1210:	46000087 	neg.s	$f2,$f0
    1214:	4606103e 	c.le.s	$f2,$f6
    1218:	00000000 	nop
    121c:	45020024 	bc1fl	12b0 <func_80AA71AC+0x154>
    1220:	8fbf0024 	lw	ra,36(sp)
    1224:	0c000000 	jal	0 <func_80AA6050>
    1228:	8fa5002c 	lw	a1,44(sp)
    122c:	50400020 	beqzl	v0,12b0 <func_80AA71AC+0x154>
    1230:	8fbf0024 	lw	ra,36(sp)
    1234:	861800b6 	lh	t8,182(s0)
    1238:	8619008a 	lh	t9,138(s0)
    123c:	03191023 	subu	v0,t8,t9
    1240:	00021400 	sll	v0,v0,0x10
    1244:	00021403 	sra	v0,v0,0x10
    1248:	04400003 	bltz	v0,1258 <func_80AA71AC+0xfc>
    124c:	00021823 	negu	v1,v0
    1250:	10000001 	b	1258 <func_80AA71AC+0xfc>
    1254:	00401825 	move	v1,v0
    1258:	28614001 	slti	at,v1,16385
    125c:	5420000c 	bnezl	at,1290 <func_80AA71AC+0x134>
    1260:	02002025 	move	a0,s0
    1264:	0c000000 	jal	0 <func_80AA6050>
    1268:	8fa4002c 	lw	a0,44(sp)
    126c:	1040000f 	beqz	v0,12ac <func_80AA71AC+0x150>
    1270:	3c014320 	lui	at,0x4320
    1274:	c6080090 	lwc1	$f8,144(s0)
    1278:	44815000 	mtc1	at,$f10
    127c:	00000000 	nop
    1280:	460a403c 	c.lt.s	$f8,$f10
    1284:	00000000 	nop
    1288:	45000008 	bc1f	12ac <func_80AA71AC+0x150>
    128c:	02002025 	move	a0,s0
    1290:	0c000000 	jal	0 <func_80AA6050>
    1294:	8fa5002c 	lw	a1,44(sp)
    1298:	02002025 	move	a0,s0
    129c:	0c000000 	jal	0 <func_80AA6050>
    12a0:	240538bb 	li	a1,14523
    12a4:	0c000000 	jal	0 <func_80AA6050>
    12a8:	02002025 	move	a0,s0
    12ac:	8fbf0024 	lw	ra,36(sp)
    12b0:	8fb00020 	lw	s0,32(sp)
    12b4:	27bd0028 	addiu	sp,sp,40
    12b8:	03e00008 	jr	ra
    12bc:	00000000 	nop

000012c0 <func_80AA7310>:
    12c0:	44800000 	mtc1	zero,$f0
    12c4:	27bdffb8 	addiu	sp,sp,-72
    12c8:	afb00030 	sw	s0,48(sp)
    12cc:	afa5004c 	sw	a1,76(sp)
    12d0:	00808025 	move	s0,a0
    12d4:	afbf0034 	sw	ra,52(sp)
    12d8:	44050000 	mfc1	a1,$f0
    12dc:	24840068 	addiu	a0,a0,104
    12e0:	3c063f00 	lui	a2,0x3f00
    12e4:	3c073f80 	lui	a3,0x3f80
    12e8:	0c000000 	jal	0 <func_80AA6050>
    12ec:	e7a00010 	swc1	$f0,16(sp)
    12f0:	3c013f80 	lui	at,0x3f80
    12f4:	44812000 	mtc1	at,$f4
    12f8:	c6060068 	lwc1	$f6,104(s0)
    12fc:	3c014080 	lui	at,0x4080
    1300:	8fa4004c 	lw	a0,76(sp)
    1304:	4606203c 	c.lt.s	$f4,$f6
    1308:	02002825 	move	a1,s0
    130c:	26060024 	addiu	a2,s0,36
    1310:	3c0740a0 	lui	a3,0x40a0
    1314:	4500000a 	bc1f	1340 <func_80AA7310+0x80>
    1318:	240e0003 	li	t6,3
    131c:	44814000 	mtc1	at,$f8
    1320:	240f0064 	li	t7,100
    1324:	2418000f 	li	t8,15
    1328:	afb8001c 	sw	t8,28(sp)
    132c:	afaf0018 	sw	t7,24(sp)
    1330:	afae0010 	sw	t6,16(sp)
    1334:	afa00020 	sw	zero,32(sp)
    1338:	0c000000 	jal	0 <func_80AA6050>
    133c:	e7a80014 	swc1	$f8,20(sp)
    1340:	2604018c 	addiu	a0,s0,396
    1344:	0c000000 	jal	0 <func_80AA6050>
    1348:	afa4003c 	sw	a0,60(sp)
    134c:	50400032 	beqzl	v0,1418 <func_80AA7310+0x158>
    1350:	8fbf0034 	lw	ra,52(sp)
    1354:	8619032a 	lh	t9,810(s0)
    1358:	57200021 	bnezl	t9,13e0 <func_80AA7310+0x120>
    135c:	860d001c 	lh	t5,28(s0)
    1360:	8608032e 	lh	t0,814(s0)
    1364:	3c040600 	lui	a0,0x600
    1368:	2509ffff 	addiu	t1,t0,-1
    136c:	a609032e 	sh	t1,814(s0)
    1370:	860a032e 	lh	t2,814(s0)
    1374:	55400028 	bnezl	t2,1418 <func_80AA7310+0x158>
    1378:	8fbf0034 	lw	ra,52(sp)
    137c:	0c000000 	jal	0 <func_80AA6050>
    1380:	24842c10 	addiu	a0,a0,11280
    1384:	44825000 	mtc1	v0,$f10
    1388:	44800000 	mtc1	zero,$f0
    138c:	3c050600 	lui	a1,0x600
    1390:	468052a0 	cvt.s.w	$f10,$f10
    1394:	240b0002 	li	t3,2
    1398:	afab0014 	sw	t3,20(sp)
    139c:	24a52c10 	addiu	a1,a1,11280
    13a0:	8fa4003c 	lw	a0,60(sp)
    13a4:	3c06bf80 	lui	a2,0xbf80
    13a8:	44075000 	mfc1	a3,$f10
    13ac:	e7a00010 	swc1	$f0,16(sp)
    13b0:	0c000000 	jal	0 <func_80AA6050>
    13b4:	e7a00018 	swc1	$f0,24(sp)
    13b8:	44808000 	mtc1	zero,$f16
    13bc:	240c0001 	li	t4,1
    13c0:	a60c032a 	sh	t4,810(s0)
    13c4:	02002025 	move	a0,s0
    13c8:	240538bd 	li	a1,14525
    13cc:	0c000000 	jal	0 <func_80AA6050>
    13d0:	e6100068 	swc1	$f16,104(s0)
    13d4:	10000010 	b	1418 <func_80AA7310+0x158>
    13d8:	8fbf0034 	lw	ra,52(sp)
    13dc:	860d001c 	lh	t5,28(s0)
    13e0:	02002025 	move	a0,s0
    13e4:	05a10009 	bgez	t5,140c <func_80AA7310+0x14c>
    13e8:	00000000 	nop
    13ec:	0c000000 	jal	0 <func_80AA6050>
    13f0:	02002025 	move	a0,s0
    13f4:	240e0050 	li	t6,80
    13f8:	a60e032e 	sh	t6,814(s0)
    13fc:	8602032e 	lh	v0,814(s0)
    1400:	a602032c 	sh	v0,812(s0)
    1404:	10000003 	b	1414 <func_80AA7310+0x154>
    1408:	a602032a 	sh	v0,810(s0)
    140c:	0c000000 	jal	0 <func_80AA6050>
    1410:	8fa5004c 	lw	a1,76(sp)
    1414:	8fbf0034 	lw	ra,52(sp)
    1418:	8fb00030 	lw	s0,48(sp)
    141c:	27bd0048 	addiu	sp,sp,72
    1420:	03e00008 	jr	ra
    1424:	00000000 	nop

00001428 <func_80AA7478>:
    1428:	27bdffe8 	addiu	sp,sp,-24
    142c:	afa5001c 	sw	a1,28(sp)
    1430:	afbf0014 	sw	ra,20(sp)
    1434:	afa40018 	sw	a0,24(sp)
    1438:	00802825 	move	a1,a0
    143c:	a4800334 	sh	zero,820(a0)
    1440:	afa50018 	sw	a1,24(sp)
    1444:	0c000000 	jal	0 <func_80AA6050>
    1448:	2484018c 	addiu	a0,a0,396
    144c:	10400003 	beqz	v0,145c <func_80AA7478+0x34>
    1450:	8fa50018 	lw	a1,24(sp)
    1454:	0c000000 	jal	0 <func_80AA6050>
    1458:	00a02025 	move	a0,a1
    145c:	8fbf0014 	lw	ra,20(sp)
    1460:	27bd0018 	addiu	sp,sp,24
    1464:	03e00008 	jr	ra
    1468:	00000000 	nop

0000146c <func_80AA74BC>:
    146c:	27bdffb0 	addiu	sp,sp,-80
    1470:	afbf0034 	sw	ra,52(sp)
    1474:	afb00030 	sw	s0,48(sp)
    1478:	afa50054 	sw	a1,84(sp)
    147c:	8ca21c44 	lw	v0,7236(a1)
    1480:	00808025 	move	s0,a0
    1484:	8c430680 	lw	v1,1664(v0)
    1488:	306f0080 	andi	t7,v1,0x80
    148c:	51e00012 	beqzl	t7,14d8 <func_80AA74BC+0x6c>
    1490:	96090088 	lhu	t1,136(s0)
    1494:	8c580118 	lw	t8,280(v0)
    1498:	3c014080 	lui	at,0x4080
    149c:	240800c8 	li	t0,200
    14a0:	1498000c 	bne	a0,t8,14d4 <func_80AA74BC+0x68>
    14a4:	02002825 	move	a1,s0
    14a8:	44810000 	mtc1	at,$f0
    14ac:	2401ff7f 	li	at,-129
    14b0:	0061c824 	and	t9,v1,at
    14b4:	ac590680 	sw	t9,1664(v0)
    14b8:	ac400118 	sw	zero,280(v0)
    14bc:	a4480850 	sh	t0,2128(v0)
    14c0:	86070032 	lh	a3,50(s0)
    14c4:	44060000 	mfc1	a2,$f0
    14c8:	8fa40054 	lw	a0,84(sp)
    14cc:	0c000000 	jal	0 <func_80AA6050>
    14d0:	e7a00010 	swc1	$f0,16(sp)
    14d4:	96090088 	lhu	t1,136(s0)
    14d8:	26040068 	addiu	a0,s0,104
    14dc:	312a0001 	andi	t2,t1,0x1
    14e0:	514000a3 	beqzl	t2,1770 <func_80AA74BC+0x304>
    14e4:	8fbf0034 	lw	ra,52(sp)
    14e8:	44800000 	mtc1	zero,$f0
    14ec:	3c063f80 	lui	a2,0x3f80
    14f0:	3c073fc0 	lui	a3,0x3fc0
    14f4:	44050000 	mfc1	a1,$f0
    14f8:	0c000000 	jal	0 <func_80AA6050>
    14fc:	e7a00010 	swc1	$f0,16(sp)
    1500:	3c013f80 	lui	at,0x3f80
    1504:	44812000 	mtc1	at,$f4
    1508:	c6060068 	lwc1	$f6,104(s0)
    150c:	3c014080 	lui	at,0x4080
    1510:	8fa40054 	lw	a0,84(sp)
    1514:	4606203c 	c.lt.s	$f4,$f6
    1518:	02002825 	move	a1,s0
    151c:	26060024 	addiu	a2,s0,36
    1520:	3c0740a0 	lui	a3,0x40a0
    1524:	4500000a 	bc1f	1550 <func_80AA74BC+0xe4>
    1528:	240b0003 	li	t3,3
    152c:	44814000 	mtc1	at,$f8
    1530:	240c0064 	li	t4,100
    1534:	240d000f 	li	t5,15
    1538:	afad001c 	sw	t5,28(sp)
    153c:	afac0018 	sw	t4,24(sp)
    1540:	afab0010 	sw	t3,16(sp)
    1544:	afa00020 	sw	zero,32(sp)
    1548:	0c000000 	jal	0 <func_80AA6050>
    154c:	e7a80014 	swc1	$f8,20(sp)
    1550:	860e032a 	lh	t6,810(s0)
    1554:	51c00056 	beqzl	t6,16b0 <func_80AA74BC+0x244>
    1558:	2604018c 	addiu	a0,s0,396
    155c:	860f032e 	lh	t7,814(s0)
    1560:	3c014320 	lui	at,0x4320
    1564:	25f8ffff 	addiu	t8,t7,-1
    1568:	a618032e 	sh	t8,814(s0)
    156c:	8619032e 	lh	t9,814(s0)
    1570:	57200042 	bnezl	t9,167c <func_80AA74BC+0x210>
    1574:	44815000 	mtc1	at,$f10
    1578:	c6000094 	lwc1	$f0,148(s0)
    157c:	44805000 	mtc1	zero,$f10
    1580:	860800b6 	lh	t0,182(s0)
    1584:	8609008a 	lh	t1,138(s0)
    1588:	4600503e 	c.le.s	$f10,$f0
    158c:	3c0141a0 	lui	at,0x41a0
    1590:	01091823 	subu	v1,t0,t1
    1594:	00031c00 	sll	v1,v1,0x10
    1598:	45000003 	bc1f	15a8 <func_80AA74BC+0x13c>
    159c:	00031c03 	sra	v1,v1,0x10
    15a0:	10000002 	b	15ac <func_80AA74BC+0x140>
    15a4:	46000086 	mov.s	$f2,$f0
    15a8:	46000087 	neg.s	$f2,$f0
    15ac:	44818000 	mtc1	at,$f16
    15b0:	02002025 	move	a0,s0
    15b4:	8fa50054 	lw	a1,84(sp)
    15b8:	4610103e 	c.le.s	$f2,$f16
    15bc:	00000000 	nop
    15c0:	45000016 	bc1f	161c <func_80AA74BC+0x1b0>
    15c4:	00000000 	nop
    15c8:	0c000000 	jal	0 <func_80AA6050>
    15cc:	a7a30046 	sh	v1,70(sp)
    15d0:	10400012 	beqz	v0,161c <func_80AA74BC+0x1b0>
    15d4:	87a30046 	lh	v1,70(sp)
    15d8:	04600003 	bltz	v1,15e8 <func_80AA74BC+0x17c>
    15dc:	00031023 	negu	v0,v1
    15e0:	10000001 	b	15e8 <func_80AA74BC+0x17c>
    15e4:	00601025 	move	v0,v1
    15e8:	28414001 	slti	at,v0,16385
    15ec:	1020000b 	beqz	at,161c <func_80AA74BC+0x1b0>
    15f0:	3c014348 	lui	at,0x4348
    15f4:	44819000 	mtc1	at,$f18
    15f8:	c6040090 	lwc1	$f4,144(s0)
    15fc:	4612203e 	c.le.s	$f4,$f18
    1600:	00000000 	nop
    1604:	45000005 	bc1f	161c <func_80AA74BC+0x1b0>
    1608:	00000000 	nop
    160c:	0c000000 	jal	0 <func_80AA6050>
    1610:	02002025 	move	a0,s0
    1614:	10000026 	b	16b0 <func_80AA74BC+0x244>
    1618:	2604018c 	addiu	a0,s0,396
    161c:	3c040600 	lui	a0,0x600
    1620:	0c000000 	jal	0 <func_80AA6050>
    1624:	24842c10 	addiu	a0,a0,11280
    1628:	44823000 	mtc1	v0,$f6
    162c:	44800000 	mtc1	zero,$f0
    1630:	3c050600 	lui	a1,0x600
    1634:	468031a0 	cvt.s.w	$f6,$f6
    1638:	240a0002 	li	t2,2
    163c:	afaa0014 	sw	t2,20(sp)
    1640:	24a52c10 	addiu	a1,a1,11280
    1644:	2604018c 	addiu	a0,s0,396
    1648:	3c06bf80 	lui	a2,0xbf80
    164c:	44073000 	mfc1	a3,$f6
    1650:	e7a00010 	swc1	$f0,16(sp)
    1654:	0c000000 	jal	0 <func_80AA6050>
    1658:	e7a00018 	swc1	$f0,24(sp)
    165c:	44804000 	mtc1	zero,$f8
    1660:	02002025 	move	a0,s0
    1664:	240538bd 	li	a1,14525
    1668:	0c000000 	jal	0 <func_80AA6050>
    166c:	e6080068 	swc1	$f8,104(s0)
    1670:	1000000f 	b	16b0 <func_80AA74BC+0x244>
    1674:	2604018c 	addiu	a0,s0,396
    1678:	44815000 	mtc1	at,$f10
    167c:	c6100090 	lwc1	$f16,144(s0)
    1680:	3c01c0a0 	lui	at,0xc0a0
    1684:	460a803e 	c.le.s	$f16,$f10
    1688:	00000000 	nop
    168c:	45020005 	bc1fl	16a4 <func_80AA74BC+0x238>
    1690:	44802000 	mtc1	zero,$f4
    1694:	44819000 	mtc1	at,$f18
    1698:	10000004 	b	16ac <func_80AA74BC+0x240>
    169c:	e6120068 	swc1	$f18,104(s0)
    16a0:	44802000 	mtc1	zero,$f4
    16a4:	00000000 	nop
    16a8:	e6040068 	swc1	$f4,104(s0)
    16ac:	2604018c 	addiu	a0,s0,396
    16b0:	0c000000 	jal	0 <func_80AA6050>
    16b4:	afa40038 	sw	a0,56(sp)
    16b8:	5040002d 	beqzl	v0,1770 <func_80AA74BC+0x304>
    16bc:	8fbf0034 	lw	ra,52(sp)
    16c0:	860b032a 	lh	t3,810(s0)
    16c4:	26040024 	addiu	a0,s0,36
    16c8:	15600014 	bnez	t3,171c <func_80AA74BC+0x2b0>
    16cc:	00000000 	nop
    16d0:	3c040600 	lui	a0,0x600
    16d4:	0c000000 	jal	0 <func_80AA6050>
    16d8:	24842f10 	addiu	a0,a0,12048
    16dc:	44823000 	mtc1	v0,$f6
    16e0:	44800000 	mtc1	zero,$f0
    16e4:	3c050600 	lui	a1,0x600
    16e8:	46803220 	cvt.s.w	$f8,$f6
    16ec:	240c0001 	li	t4,1
    16f0:	44070000 	mfc1	a3,$f0
    16f4:	afac0014 	sw	t4,20(sp)
    16f8:	24a52f10 	addiu	a1,a1,12048
    16fc:	8fa40038 	lw	a0,56(sp)
    1700:	e7a80010 	swc1	$f8,16(sp)
    1704:	3c063f00 	lui	a2,0x3f00
    1708:	0c000000 	jal	0 <func_80AA6050>
    170c:	e7a00018 	swc1	$f0,24(sp)
    1710:	240d0001 	li	t5,1
    1714:	10000015 	b	176c <func_80AA74BC+0x300>
    1718:	a60d032a 	sh	t5,810(s0)
    171c:	0c000000 	jal	0 <func_80AA6050>
    1720:	26050344 	addiu	a1,s0,836
    1724:	860e008a 	lh	t6,138(s0)
    1728:	02002025 	move	a0,s0
    172c:	004e1823 	subu	v1,v0,t6
    1730:	00031c00 	sll	v1,v1,0x10
    1734:	00031c03 	sra	v1,v1,0x10
    1738:	04600003 	bltz	v1,1748 <func_80AA74BC+0x2dc>
    173c:	00031023 	negu	v0,v1
    1740:	10000001 	b	1748 <func_80AA74BC+0x2dc>
    1744:	00601025 	move	v0,v1
    1748:	28414001 	slti	at,v0,16385
    174c:	10200005 	beqz	at,1764 <func_80AA74BC+0x2f8>
    1750:	00000000 	nop
    1754:	0c000000 	jal	0 <func_80AA6050>
    1758:	8fa50054 	lw	a1,84(sp)
    175c:	10000004 	b	1770 <func_80AA74BC+0x304>
    1760:	8fbf0034 	lw	ra,52(sp)
    1764:	0c000000 	jal	0 <func_80AA6050>
    1768:	02002025 	move	a0,s0
    176c:	8fbf0034 	lw	ra,52(sp)
    1770:	8fb00030 	lw	s0,48(sp)
    1774:	27bd0050 	addiu	sp,sp,80
    1778:	03e00008 	jr	ra
    177c:	00000000 	nop

00001780 <func_80AA77D0>:
    1780:	27bdffb8 	addiu	sp,sp,-72
    1784:	afbf0034 	sw	ra,52(sp)
    1788:	afb00030 	sw	s0,48(sp)
    178c:	afa5004c 	sw	a1,76(sp)
    1790:	848f00b6 	lh	t7,182(a0)
    1794:	848e008a 	lh	t6,138(a0)
    1798:	00808025 	move	s0,a0
    179c:	01cf1023 	subu	v0,t6,t7
    17a0:	00021400 	sll	v0,v0,0x10
    17a4:	00021403 	sra	v0,v0,0x10
    17a8:	04430005 	bgezl	v0,17c0 <func_80AA77D0+0x40>
    17ac:	c60401a4 	lwc1	$f4,420(s0)
    17b0:	00021023 	negu	v0,v0
    17b4:	00021400 	sll	v0,v0,0x10
    17b8:	00021403 	sra	v0,v0,0x10
    17bc:	c60401a4 	lwc1	$f4,420(s0)
    17c0:	2604018c 	addiu	a0,s0,396
    17c4:	afa4003c 	sw	a0,60(sp)
    17c8:	4600218d 	trunc.w.s	$f6,$f4
    17cc:	a7a20042 	sh	v0,66(sp)
    17d0:	44193000 	mfc1	t9,$f6
    17d4:	0c000000 	jal	0 <func_80AA6050>
    17d8:	afb90044 	sw	t9,68(sp)
    17dc:	10400007 	beqz	v0,17fc <func_80AA77D0+0x7c>
    17e0:	8fa4003c 	lw	a0,60(sp)
    17e4:	3c050600 	lui	a1,0x600
    17e8:	0c000000 	jal	0 <func_80AA6050>
    17ec:	24a52f10 	addiu	a1,a1,12048
    17f0:	02002025 	move	a0,s0
    17f4:	0c000000 	jal	0 <func_80AA6050>
    17f8:	240538ba 	li	a1,14522
    17fc:	8602032e 	lh	v0,814(s0)
    1800:	3c014120 	lui	at,0x4120
    1804:	24090001 	li	t1,1
    1808:	1040000b 	beqz	v0,1838 <func_80AA77D0+0xb8>
    180c:	02002825 	move	a1,s0
    1810:	2448ffff 	addiu	t0,v0,-1
    1814:	a608032e 	sh	t0,814(s0)
    1818:	8605008a 	lh	a1,138(s0)
    181c:	afa00010 	sw	zero,16(sp)
    1820:	26040032 	addiu	a0,s0,50
    1824:	24060001 	li	a2,1
    1828:	0c000000 	jal	0 <func_80AA6050>
    182c:	24070bb8 	li	a3,3000
    1830:	10000022 	b	18bc <func_80AA77D0+0x13c>
    1834:	87af0042 	lh	t7,66(sp)
    1838:	44814000 	mtc1	at,$f8
    183c:	a6090334 	sh	t1,820(s0)
    1840:	3c014080 	lui	at,0x4080
    1844:	e6080068 	swc1	$f8,104(s0)
    1848:	44815000 	mtc1	at,$f10
    184c:	240a0003 	li	t2,3
    1850:	240b0064 	li	t3,100
    1854:	240c000f 	li	t4,15
    1858:	afac001c 	sw	t4,28(sp)
    185c:	afab0018 	sw	t3,24(sp)
    1860:	afaa0010 	sw	t2,16(sp)
    1864:	afa00020 	sw	zero,32(sp)
    1868:	8fa4004c 	lw	a0,76(sp)
    186c:	26060024 	addiu	a2,s0,36
    1870:	3c0740a0 	lui	a3,0x40a0
    1874:	0c000000 	jal	0 <func_80AA6050>
    1878:	e7aa0014 	swc1	$f10,20(sp)
    187c:	c61001a4 	lwc1	$f16,420(s0)
    1880:	8fae0044 	lw	t6,68(sp)
    1884:	24010002 	li	at,2
    1888:	4600848d 	trunc.w.s	$f18,$f16
    188c:	44029000 	mfc1	v0,$f18
    1890:	00000000 	nop
    1894:	51c20009 	beql	t6,v0,18bc <func_80AA77D0+0x13c>
    1898:	87af0042 	lh	t7,66(sp)
    189c:	10410004 	beq	v0,at,18b0 <func_80AA77D0+0x130>
    18a0:	02002025 	move	a0,s0
    18a4:	24010006 	li	at,6
    18a8:	54410004 	bnel	v0,at,18bc <func_80AA77D0+0x13c>
    18ac:	87af0042 	lh	t7,66(sp)
    18b0:	0c000000 	jal	0 <func_80AA6050>
    18b4:	240538bf 	li	a1,14527
    18b8:	87af0042 	lh	t7,66(sp)
    18bc:	02002025 	move	a0,s0
    18c0:	29e11389 	slti	at,t7,5001
    18c4:	54200004 	bnezl	at,18d8 <func_80AA77D0+0x158>
    18c8:	8fbf0034 	lw	ra,52(sp)
    18cc:	0c000000 	jal	0 <func_80AA6050>
    18d0:	a6000334 	sh	zero,820(s0)
    18d4:	8fbf0034 	lw	ra,52(sp)
    18d8:	8fb00030 	lw	s0,48(sp)
    18dc:	27bd0048 	addiu	sp,sp,72
    18e0:	03e00008 	jr	ra
    18e4:	00000000 	nop

000018e8 <func_80AA7938>:
    18e8:	27bdff78 	addiu	sp,sp,-136
    18ec:	3c180000 	lui	t8,0x0
    18f0:	afbf0034 	sw	ra,52(sp)
    18f4:	afb00030 	sw	s0,48(sp)
    18f8:	afa5008c 	sw	a1,140(sp)
    18fc:	27180000 	addiu	t8,t8,0
    1900:	8f080000 	lw	t0,0(t8)
    1904:	8ca31c44 	lw	v1,7236(a1)
    1908:	27af0068 	addiu	t7,sp,104
    190c:	ade80000 	sw	t0,0(t7)
    1910:	8f080008 	lw	t0,8(t8)
    1914:	8f190004 	lw	t9,4(t8)
    1918:	3c0a0000 	lui	t2,0x0
    191c:	254a0000 	addiu	t2,t2,0
    1920:	ade80008 	sw	t0,8(t7)
    1924:	adf90004 	sw	t9,4(t7)
    1928:	8d4c0000 	lw	t4,0(t2)
    192c:	27a9005c 	addiu	t1,sp,92
    1930:	8d4b0004 	lw	t3,4(t2)
    1934:	ad2c0000 	sw	t4,0(t1)
    1938:	8d4c0008 	lw	t4,8(t2)
    193c:	3c0e0000 	lui	t6,0x0
    1940:	25ce0000 	addiu	t6,t6,0
    1944:	ad2b0004 	sw	t3,4(t1)
    1948:	ad2c0008 	sw	t4,8(t1)
    194c:	8dd80000 	lw	t8,0(t6)
    1950:	27ad0054 	addiu	t5,sp,84
    1954:	3c190000 	lui	t9,0x0
    1958:	adb80000 	sw	t8,0(t5)
    195c:	95d80004 	lhu	t8,4(t6)
    1960:	27390000 	addiu	t9,t9,0
    1964:	27a2004c 	addiu	v0,sp,76
    1968:	a5b80004 	sh	t8,4(t5)
    196c:	8f290000 	lw	t1,0(t9)
    1970:	00808025 	move	s0,a0
    1974:	248400b6 	addiu	a0,a0,182
    1978:	ac490000 	sw	t1,0(v0)
    197c:	97290004 	lhu	t1,4(t9)
    1980:	24060001 	li	a2,1
    1984:	240702ee 	li	a3,750
    1988:	a4490004 	sh	t1,4(v0)
    198c:	860a0334 	lh	t2,820(s0)
    1990:	860e0032 	lh	t6,50(s0)
    1994:	000a5840 	sll	t3,t2,0x1
    1998:	004b6021 	addu	t4,v0,t3
    199c:	858dfffe 	lh	t5,-2(t4)
    19a0:	afa00010 	sw	zero,16(sp)
    19a4:	afa30084 	sw	v1,132(sp)
    19a8:	01ae2821 	addu	a1,t5,t6
    19ac:	00052c00 	sll	a1,a1,0x10
    19b0:	0c000000 	jal	0 <func_80AA6050>
    19b4:	00052c03 	sra	a1,a1,0x10
    19b8:	920403c4 	lbu	a0,964(s0)
    19bc:	8fa30084 	lw	v1,132(sp)
    19c0:	308f0002 	andi	t7,a0,0x2
    19c4:	51e00030 	beqzl	t7,1a88 <func_80AA7938+0x1a0>
    19c8:	2604018c 	addiu	a0,s0,396
    19cc:	8e1903b8 	lw	t9,952(s0)
    19d0:	3098fffd 	andi	t8,a0,0xfffd
    19d4:	a21803c4 	sb	t8,964(s0)
    19d8:	5479002b 	bnel	v1,t9,1a88 <func_80AA7938+0x1a0>
    19dc:	2604018c 	addiu	a0,s0,396
    19e0:	80620a78 	lb	v0,2680(v1)
    19e4:	04410010 	bgez	v0,1a28 <func_80AA7938+0x140>
    19e8:	a3a2004b 	sb	v0,75(sp)
    19ec:	2841ffd9 	slti	at,v0,-39
    19f0:	50200004 	beqzl	at,1a04 <func_80AA7938+0x11c>
    19f4:	a0600a78 	sb	zero,2680(v1)
    19f8:	1000000b 	b	1a28 <func_80AA7938+0x140>
    19fc:	a0600a78 	sb	zero,2680(v1)
    1a00:	a0600a78 	sb	zero,2680(v1)
    1a04:	8fa4008c 	lw	a0,140(sp)
    1a08:	3c190001 	lui	t9,0x1
    1a0c:	afa30084 	sw	v1,132(sp)
    1a10:	0324c821 	addu	t9,t9,a0
    1a14:	8f391d58 	lw	t9,7512(t9)
    1a18:	2405fff8 	li	a1,-8
    1a1c:	0320f809 	jalr	t9
    1a20:	00000000 	nop
    1a24:	8fa30084 	lw	v1,132(sp)
    1a28:	3c010000 	lui	at,0x0
    1a2c:	c4240000 	lwc1	$f4,0(at)
    1a30:	c6060090 	lwc1	$f6,144(s0)
    1a34:	3c010000 	lui	at,0x0
    1a38:	c42a0000 	lwc1	$f10,0(at)
    1a3c:	46062201 	sub.s	$f8,$f4,$f6
    1a40:	3c014080 	lui	at,0x4080
    1a44:	44819000 	mtc1	at,$f18
    1a48:	3c014100 	lui	at,0x4100
    1a4c:	460a4402 	mul.s	$f16,$f8,$f10
    1a50:	44813000 	mtc1	at,$f6
    1a54:	86070032 	lh	a3,50(s0)
    1a58:	afa30084 	sw	v1,132(sp)
    1a5c:	8fa4008c 	lw	a0,140(sp)
    1a60:	02002825 	move	a1,s0
    1a64:	e7a60010 	swc1	$f6,16(sp)
    1a68:	46128100 	add.s	$f4,$f16,$f18
    1a6c:	44062000 	mfc1	a2,$f4
    1a70:	0c000000 	jal	0 <func_80AA6050>
    1a74:	00000000 	nop
    1a78:	8fa30084 	lw	v1,132(sp)
    1a7c:	93a9004b 	lbu	t1,75(sp)
    1a80:	a0690a78 	sb	t1,2680(v1)
    1a84:	2604018c 	addiu	a0,s0,396
    1a88:	0c000000 	jal	0 <func_80AA6050>
    1a8c:	afa40040 	sw	a0,64(sp)
    1a90:	50400054 	beqzl	v0,1be4 <func_80AA7938+0x2fc>
    1a94:	8602032e 	lh	v0,814(s0)
    1a98:	8602032e 	lh	v0,814(s0)
    1a9c:	10400017 	beqz	v0,1afc <func_80AA7938+0x214>
    1aa0:	244affff 	addiu	t2,v0,-1
    1aa4:	a60a032e 	sh	t2,814(s0)
    1aa8:	860b032e 	lh	t3,814(s0)
    1aac:	3c100601 	lui	s0,0x601
    1ab0:	2610abe0 	addiu	s0,s0,-21536
    1ab4:	55600065 	bnezl	t3,1c4c <func_80AA7938+0x364>
    1ab8:	8fbf0034 	lw	ra,52(sp)
    1abc:	0c000000 	jal	0 <func_80AA6050>
    1ac0:	02002025 	move	a0,s0
    1ac4:	44824000 	mtc1	v0,$f8
    1ac8:	44800000 	mtc1	zero,$f0
    1acc:	240c0003 	li	t4,3
    1ad0:	468042a0 	cvt.s.w	$f10,$f8
    1ad4:	44070000 	mfc1	a3,$f0
    1ad8:	afac0014 	sw	t4,20(sp)
    1adc:	8fa40040 	lw	a0,64(sp)
    1ae0:	02002825 	move	a1,s0
    1ae4:	3c063fc0 	lui	a2,0x3fc0
    1ae8:	e7aa0010 	swc1	$f10,16(sp)
    1aec:	0c000000 	jal	0 <func_80AA6050>
    1af0:	e7a00018 	swc1	$f0,24(sp)
    1af4:	10000055 	b	1c4c <func_80AA7938+0x364>
    1af8:	8fbf0034 	lw	ra,52(sp)
    1afc:	8e0f0338 	lw	t7,824(s0)
    1b00:	27ad0074 	addiu	t5,sp,116
    1b04:	02002025 	move	a0,s0
    1b08:	adaf0000 	sw	t7,0(t5)
    1b0c:	8e0e033c 	lw	t6,828(s0)
    1b10:	240539ef 	li	a1,14831
    1b14:	adae0004 	sw	t6,4(t5)
    1b18:	8e0f0340 	lw	t7,832(s0)
    1b1c:	adaf0008 	sw	t7,8(t5)
    1b20:	c6100080 	lwc1	$f16,128(s0)
    1b24:	0c000000 	jal	0 <func_80AA6050>
    1b28:	e7b00078 	swc1	$f16,120(sp)
    1b2c:	c60c0090 	lwc1	$f12,144(s0)
    1b30:	240500ff 	li	a1,255
    1b34:	24060014 	li	a2,20
    1b38:	0c000000 	jal	0 <func_80AA6050>
    1b3c:	24070096 	li	a3,150
    1b40:	27a60068 	addiu	a2,sp,104
    1b44:	00c03825 	move	a3,a2
    1b48:	8fa4008c 	lw	a0,140(sp)
    1b4c:	0c000000 	jal	0 <func_80AA6050>
    1b50:	27a50074 	addiu	a1,sp,116
    1b54:	2418012c 	li	t8,300
    1b58:	240800b4 	li	t0,180
    1b5c:	24190001 	li	t9,1
    1b60:	afb90018 	sw	t9,24(sp)
    1b64:	afa80014 	sw	t0,20(sp)
    1b68:	afb80010 	sw	t8,16(sp)
    1b6c:	8fa4008c 	lw	a0,140(sp)
    1b70:	27a50074 	addiu	a1,sp,116
    1b74:	3c064000 	lui	a2,0x4000
    1b78:	0c000000 	jal	0 <func_80AA6050>
    1b7c:	24070003 	li	a3,3
    1b80:	8fa4008c 	lw	a0,140(sp)
    1b84:	24050002 	li	a1,2
    1b88:	24060019 	li	a2,25
    1b8c:	24070005 	li	a3,5
    1b90:	0c000000 	jal	0 <func_80AA6050>
    1b94:	248401e0 	addiu	a0,a0,480
    1b98:	8fab008c 	lw	t3,140(sp)
    1b9c:	24090014 	li	t1,20
    1ba0:	27aa0054 	addiu	t2,sp,84
    1ba4:	240cffff 	li	t4,-1
    1ba8:	afac001c 	sw	t4,28(sp)
    1bac:	afaa0014 	sw	t2,20(sp)
    1bb0:	afa90010 	sw	t1,16(sp)
    1bb4:	02002025 	move	a0,s0
    1bb8:	27a50074 	addiu	a1,sp,116
    1bbc:	26060030 	addiu	a2,s0,48
    1bc0:	27a7005c 	addiu	a3,sp,92
    1bc4:	afa00020 	sw	zero,32(sp)
    1bc8:	0c000000 	jal	0 <func_80AA6050>
    1bcc:	afab0018 	sw	t3,24(sp)
    1bd0:	0c000000 	jal	0 <func_80AA6050>
    1bd4:	02002025 	move	a0,s0
    1bd8:	1000001c 	b	1c4c <func_80AA7938+0x364>
    1bdc:	8fbf0034 	lw	ra,52(sp)
    1be0:	8602032e 	lh	v0,814(s0)
    1be4:	3c0140c0 	lui	at,0x40c0
    1be8:	1040000c 	beqz	v0,1c1c <func_80AA7938+0x334>
    1bec:	00000000 	nop
    1bf0:	44819000 	mtc1	at,$f18
    1bf4:	c60401a4 	lwc1	$f4,420(s0)
    1bf8:	02002025 	move	a0,s0
    1bfc:	46049032 	c.eq.s	$f18,$f4
    1c00:	00000000 	nop
    1c04:	45000005 	bc1f	1c1c <func_80AA7938+0x334>
    1c08:	00000000 	nop
    1c0c:	0c000000 	jal	0 <func_80AA6050>
    1c10:	240538e2 	li	a1,14562
    1c14:	1000000d 	b	1c4c <func_80AA7938+0x364>
    1c18:	8fbf0034 	lw	ra,52(sp)
    1c1c:	1440000a 	bnez	v0,1c48 <func_80AA7938+0x360>
    1c20:	3c014040 	lui	at,0x4040
    1c24:	44813000 	mtc1	at,$f6
    1c28:	c60801a4 	lwc1	$f8,420(s0)
    1c2c:	02002025 	move	a0,s0
    1c30:	46083032 	c.eq.s	$f6,$f8
    1c34:	00000000 	nop
    1c38:	45020004 	bc1fl	1c4c <func_80AA7938+0x364>
    1c3c:	8fbf0034 	lw	ra,52(sp)
    1c40:	0c000000 	jal	0 <func_80AA6050>
    1c44:	240538e1 	li	a1,14561
    1c48:	8fbf0034 	lw	ra,52(sp)
    1c4c:	8fb00030 	lw	s0,48(sp)
    1c50:	27bd0088 	addiu	sp,sp,136
    1c54:	03e00008 	jr	ra
    1c58:	00000000 	nop

00001c5c <func_80AA7CAC>:
    1c5c:	27bdffa8 	addiu	sp,sp,-88
    1c60:	afbf0034 	sw	ra,52(sp)
    1c64:	afb10030 	sw	s1,48(sp)
    1c68:	afb0002c 	sw	s0,44(sp)
    1c6c:	8cb11c44 	lw	s1,7236(a1)
    1c70:	00808025 	move	s0,a0
    1c74:	afa0004c 	sw	zero,76(sp)
    1c78:	86070032 	lh	a3,50(s0)
    1c7c:	afa5005c 	sw	a1,92(sp)
    1c80:	0c000000 	jal	0 <func_80AA6050>
    1c84:	3c0642dc 	lui	a2,0x42dc
    1c88:	2c4e0001 	sltiu	t6,v0,1
    1c8c:	afae0048 	sw	t6,72(sp)
    1c90:	c60401a4 	lwc1	$f4,420(s0)
    1c94:	2604018c 	addiu	a0,s0,396
    1c98:	afa4003c 	sw	a0,60(sp)
    1c9c:	4600218d 	trunc.w.s	$f6,$f4
    1ca0:	44183000 	mfc1	t8,$f6
    1ca4:	0c000000 	jal	0 <func_80AA6050>
    1ca8:	afb80050 	sw	t8,80(sp)
    1cac:	10400007 	beqz	v0,1ccc <func_80AA7CAC+0x70>
    1cb0:	8fa4003c 	lw	a0,60(sp)
    1cb4:	3c050600 	lui	a1,0x600
    1cb8:	0c000000 	jal	0 <func_80AA6050>
    1cbc:	24a52f10 	addiu	a1,a1,12048
    1cc0:	02002025 	move	a0,s0
    1cc4:	0c000000 	jal	0 <func_80AA6050>
    1cc8:	240538ba 	li	a1,14522
    1ccc:	8602032e 	lh	v0,814(s0)
    1cd0:	3c014120 	lui	at,0x4120
    1cd4:	24080001 	li	t0,1
    1cd8:	1040000b 	beqz	v0,1d08 <func_80AA7CAC+0xac>
    1cdc:	02002825 	move	a1,s0
    1ce0:	2459ffff 	addiu	t9,v0,-1
    1ce4:	a619032e 	sh	t9,814(s0)
    1ce8:	86050032 	lh	a1,50(s0)
    1cec:	afa00010 	sw	zero,16(sp)
    1cf0:	260400b6 	addiu	a0,s0,182
    1cf4:	24060001 	li	a2,1
    1cf8:	0c000000 	jal	0 <func_80AA6050>
    1cfc:	24071f40 	li	a3,8000
    1d00:	10000021 	b	1d88 <func_80AA7CAC+0x12c>
    1d04:	afa00048 	sw	zero,72(sp)
    1d08:	44814000 	mtc1	at,$f8
    1d0c:	a6080334 	sh	t0,820(s0)
    1d10:	3c014080 	lui	at,0x4080
    1d14:	e6080068 	swc1	$f8,104(s0)
    1d18:	44815000 	mtc1	at,$f10
    1d1c:	24090003 	li	t1,3
    1d20:	240a0064 	li	t2,100
    1d24:	240b000f 	li	t3,15
    1d28:	afab001c 	sw	t3,28(sp)
    1d2c:	afaa0018 	sw	t2,24(sp)
    1d30:	afa90010 	sw	t1,16(sp)
    1d34:	afa00020 	sw	zero,32(sp)
    1d38:	8fa4005c 	lw	a0,92(sp)
    1d3c:	26060024 	addiu	a2,s0,36
    1d40:	3c0740a0 	lui	a3,0x40a0
    1d44:	0c000000 	jal	0 <func_80AA6050>
    1d48:	e7aa0014 	swc1	$f10,20(sp)
    1d4c:	c61001a4 	lwc1	$f16,420(s0)
    1d50:	8fad0050 	lw	t5,80(sp)
    1d54:	24010002 	li	at,2
    1d58:	4600848d 	trunc.w.s	$f18,$f16
    1d5c:	44029000 	mfc1	v0,$f18
    1d60:	00000000 	nop
    1d64:	51a20009 	beql	t5,v0,1d8c <func_80AA7CAC+0x130>
    1d68:	920303c4 	lbu	v1,964(s0)
    1d6c:	10410004 	beq	v0,at,1d80 <func_80AA7CAC+0x124>
    1d70:	02002025 	move	a0,s0
    1d74:	24010006 	li	at,6
    1d78:	54410004 	bnel	v0,at,1d8c <func_80AA7CAC+0x130>
    1d7c:	920303c4 	lbu	v1,964(s0)
    1d80:	0c000000 	jal	0 <func_80AA6050>
    1d84:	240538bf 	li	a1,14527
    1d88:	920303c4 	lbu	v1,964(s0)
    1d8c:	306e0002 	andi	t6,v1,0x2
    1d90:	51c00034 	beqzl	t6,1e64 <func_80AA7CAC+0x208>
    1d94:	8e2d0680 	lw	t5,1664(s1)
    1d98:	8e0f03b8 	lw	t7,952(s0)
    1d9c:	8fb80048 	lw	t8,72(sp)
    1da0:	306cfffd 	andi	t4,v1,0xfffd
    1da4:	562f002e 	bnel	s1,t7,1e60 <func_80AA7CAC+0x204>
    1da8:	a20c03c4 	sb	t4,964(s0)
    1dac:	57000029 	bnezl	t8,1e54 <func_80AA7CAC+0x1f8>
    1db0:	240b0001 	li	t3,1
    1db4:	8e390680 	lw	t9,1664(s1)
    1db8:	33280080 	andi	t0,t9,0x80
    1dbc:	55000025 	bnezl	t0,1e54 <func_80AA7CAC+0x1f8>
    1dc0:	240b0001 	li	t3,1
    1dc4:	82220a78 	lb	v0,2680(s1)
    1dc8:	0441000f 	bgez	v0,1e08 <func_80AA7CAC+0x1ac>
    1dcc:	2841ffd9 	slti	at,v0,-39
    1dd0:	50200005 	beqzl	at,1de8 <func_80AA7CAC+0x18c>
    1dd4:	a2200a78 	sb	zero,2680(s1)
    1dd8:	a2200a78 	sb	zero,2680(s1)
    1ddc:	1000000a 	b	1e08 <func_80AA7CAC+0x1ac>
    1de0:	920303c4 	lbu	v1,964(s0)
    1de4:	a2200a78 	sb	zero,2680(s1)
    1de8:	8fa4005c 	lw	a0,92(sp)
    1dec:	3c190001 	lui	t9,0x1
    1df0:	2405fff8 	li	a1,-8
    1df4:	0324c821 	addu	t9,t9,a0
    1df8:	8f391d58 	lw	t9,7512(t9)
    1dfc:	0320f809 	jalr	t9
    1e00:	00000000 	nop
    1e04:	920303c4 	lbu	v1,964(s0)
    1e08:	8fa2005c 	lw	v0,92(sp)
    1e0c:	3c010001 	lui	at,0x1
    1e10:	306a0004 	andi	t2,v1,0x4
    1e14:	15400006 	bnez	t2,1e30 <func_80AA7CAC+0x1d4>
    1e18:	00411021 	addu	v0,v0,at
    1e1c:	02202025 	move	a0,s1
    1e20:	2405083e 	li	a1,2110
    1e24:	0c000000 	jal	0 <func_80AA6050>
    1e28:	afa20038 	sw	v0,56(sp)
    1e2c:	8fa20038 	lw	v0,56(sp)
    1e30:	8c591d4c 	lw	t9,7500(v0)
    1e34:	8fa4005c 	lw	a0,92(sp)
    1e38:	02202825 	move	a1,s1
    1e3c:	0320f809 	jalr	t9
    1e40:	00000000 	nop
    1e44:	50400003 	beqzl	v0,1e54 <func_80AA7CAC+0x1f8>
    1e48:	240b0001 	li	t3,1
    1e4c:	ae300118 	sw	s0,280(s1)
    1e50:	240b0001 	li	t3,1
    1e54:	10000002 	b	1e60 <func_80AA7CAC+0x204>
    1e58:	afab004c 	sw	t3,76(sp)
    1e5c:	a20c03c4 	sb	t4,964(s0)
    1e60:	8e2d0680 	lw	t5,1664(s1)
    1e64:	31ae0080 	andi	t6,t5,0x80
    1e68:	51c0002b 	beqzl	t6,1f18 <func_80AA7CAC+0x2bc>
    1e6c:	8fa80048 	lw	t0,72(sp)
    1e70:	8e2f0118 	lw	t7,280(s1)
    1e74:	24180001 	li	t8,1
    1e78:	560f0027 	bnel	s0,t7,1f18 <func_80AA7CAC+0x2bc>
    1e7c:	8fa80048 	lw	t0,72(sp)
    1e80:	860400b6 	lh	a0,182(s0)
    1e84:	0c000000 	jal	0 <func_80AA6050>
    1e88:	afb8004c 	sw	t8,76(sp)
    1e8c:	e7a00040 	swc1	$f0,64(sp)
    1e90:	0c000000 	jal	0 <func_80AA6050>
    1e94:	860400b6 	lh	a0,182(s0)
    1e98:	3c014120 	lui	at,0x4120
    1e9c:	44813000 	mtc1	at,$f6
    1ea0:	c7a40040 	lwc1	$f4,64(sp)
    1ea4:	3c0142b2 	lui	at,0x42b2
    1ea8:	44819000 	mtc1	at,$f18
    1eac:	46062202 	mul.s	$f8,$f4,$f6
    1eb0:	c60a0024 	lwc1	$f10,36(s0)
    1eb4:	46120102 	mul.s	$f4,$f0,$f18
    1eb8:	46085400 	add.s	$f16,$f10,$f8
    1ebc:	46102180 	add.s	$f6,$f4,$f16
    1ec0:	e6260024 	swc1	$f6,36(s1)
    1ec4:	0c000000 	jal	0 <func_80AA6050>
    1ec8:	860400b6 	lh	a0,182(s0)
    1ecc:	e7a00040 	swc1	$f0,64(sp)
    1ed0:	0c000000 	jal	0 <func_80AA6050>
    1ed4:	860400b6 	lh	a0,182(s0)
    1ed8:	3c014120 	lui	at,0x4120
    1edc:	44814000 	mtc1	at,$f8
    1ee0:	c7aa0040 	lwc1	$f10,64(sp)
    1ee4:	3c0142b2 	lui	at,0x42b2
    1ee8:	44813000 	mtc1	at,$f6
    1eec:	46085482 	mul.s	$f18,$f10,$f8
    1ef0:	c604002c 	lwc1	$f4,44(s0)
    1ef4:	44801000 	mtc1	zero,$f2
    1ef8:	46060282 	mul.s	$f10,$f0,$f6
    1efc:	a6200850 	sh	zero,2128(s1)
    1f00:	e6220068 	swc1	$f2,104(s1)
    1f04:	e6220060 	swc1	$f2,96(s1)
    1f08:	46122400 	add.s	$f16,$f4,$f18
    1f0c:	46105200 	add.s	$f8,$f10,$f16
    1f10:	e628002c 	swc1	$f8,44(s1)
    1f14:	8fa80048 	lw	t0,72(sp)
    1f18:	8fa9004c 	lw	t1,76(sp)
    1f1c:	51000023 	beqzl	t0,1fac <func_80AA7CAC+0x350>
    1f20:	8fbf0034 	lw	ra,52(sp)
    1f24:	55200006 	bnezl	t1,1f40 <func_80AA7CAC+0x2e4>
    1f28:	920b03c4 	lbu	t3,964(s0)
    1f2c:	8e2a0680 	lw	t2,1664(s1)
    1f30:	31590080 	andi	t9,t2,0x80
    1f34:	53200017 	beqzl	t9,1f94 <func_80AA7CAC+0x338>
    1f38:	3c01c120 	lui	at,0xc120
    1f3c:	920b03c4 	lbu	t3,964(s0)
    1f40:	3c014080 	lui	at,0x4080
    1f44:	240f00c8 	li	t7,200
    1f48:	316cfffd 	andi	t4,t3,0xfffd
    1f4c:	a20c03c4 	sb	t4,964(s0)
    1f50:	8e220680 	lw	v0,1664(s1)
    1f54:	02002825 	move	a1,s0
    1f58:	304d0080 	andi	t5,v0,0x80
    1f5c:	51a0000d 	beqzl	t5,1f94 <func_80AA7CAC+0x338>
    1f60:	3c01c120 	lui	at,0xc120
    1f64:	44810000 	mtc1	at,$f0
    1f68:	2401ff7f 	li	at,-129
    1f6c:	00417024 	and	t6,v0,at
    1f70:	ae2e0680 	sw	t6,1664(s1)
    1f74:	ae200118 	sw	zero,280(s1)
    1f78:	a62f0850 	sh	t7,2128(s1)
    1f7c:	86070032 	lh	a3,50(s0)
    1f80:	44060000 	mfc1	a2,$f0
    1f84:	8fa4005c 	lw	a0,92(sp)
    1f88:	0c000000 	jal	0 <func_80AA6050>
    1f8c:	e7a00010 	swc1	$f0,16(sp)
    1f90:	3c01c120 	lui	at,0xc120
    1f94:	44812000 	mtc1	at,$f4
    1f98:	a6000334 	sh	zero,820(s0)
    1f9c:	02002025 	move	a0,s0
    1fa0:	0c000000 	jal	0 <func_80AA6050>
    1fa4:	e6040068 	swc1	$f4,104(s0)
    1fa8:	8fbf0034 	lw	ra,52(sp)
    1fac:	8fb0002c 	lw	s0,44(sp)
    1fb0:	8fb10030 	lw	s1,48(sp)
    1fb4:	03e00008 	jr	ra
    1fb8:	27bd0058 	addiu	sp,sp,88

00001fbc <func_80AA800C>:
    1fbc:	27bdffa0 	addiu	sp,sp,-96
    1fc0:	afbf0034 	sw	ra,52(sp)
    1fc4:	afb10030 	sw	s1,48(sp)
    1fc8:	afb0002c 	sw	s0,44(sp)
    1fcc:	8cb11c44 	lw	s1,7236(a1)
    1fd0:	00808025 	move	s0,a0
    1fd4:	afa00054 	sw	zero,84(sp)
    1fd8:	86070032 	lh	a3,50(s0)
    1fdc:	afa50064 	sw	a1,100(sp)
    1fe0:	0c000000 	jal	0 <func_80AA6050>
    1fe4:	3c0642dc 	lui	a2,0x42dc
    1fe8:	2c4e0001 	sltiu	t6,v0,1
    1fec:	afae0050 	sw	t6,80(sp)
    1ff0:	c60401a4 	lwc1	$f4,420(s0)
    1ff4:	2604018c 	addiu	a0,s0,396
    1ff8:	4600218d 	trunc.w.s	$f6,$f4
    1ffc:	44183000 	mfc1	t8,$f6
    2000:	0c000000 	jal	0 <func_80AA6050>
    2004:	afb80058 	sw	t8,88(sp)
    2008:	3c014080 	lui	at,0x4080
    200c:	44814000 	mtc1	at,$f8
    2010:	26060024 	addiu	a2,s0,36
    2014:	24190003 	li	t9,3
    2018:	24080064 	li	t0,100
    201c:	2409000f 	li	t1,15
    2020:	afa9001c 	sw	t1,28(sp)
    2024:	afa80018 	sw	t0,24(sp)
    2028:	afb90010 	sw	t9,16(sp)
    202c:	afa60040 	sw	a2,64(sp)
    2030:	8fa40064 	lw	a0,100(sp)
    2034:	02002825 	move	a1,s0
    2038:	3c0740a0 	lui	a3,0x40a0
    203c:	afa00020 	sw	zero,32(sp)
    2040:	0c000000 	jal	0 <func_80AA6050>
    2044:	e7a80014 	swc1	$f8,20(sp)
    2048:	c60a01a4 	lwc1	$f10,420(s0)
    204c:	8fab0058 	lw	t3,88(sp)
    2050:	24010002 	li	at,2
    2054:	4600540d 	trunc.w.s	$f16,$f10
    2058:	44028000 	mfc1	v0,$f16
    205c:	00000000 	nop
    2060:	51620009 	beql	t3,v0,2088 <func_80AA800C+0xcc>
    2064:	920303c4 	lbu	v1,964(s0)
    2068:	10410004 	beq	v0,at,207c <func_80AA800C+0xc0>
    206c:	02002025 	move	a0,s0
    2070:	24010006 	li	at,6
    2074:	54410004 	bnel	v0,at,2088 <func_80AA800C+0xcc>
    2078:	920303c4 	lbu	v1,964(s0)
    207c:	0c000000 	jal	0 <func_80AA6050>
    2080:	240538bf 	li	a1,14527
    2084:	920303c4 	lbu	v1,964(s0)
    2088:	306c0002 	andi	t4,v1,0x2
    208c:	51800034 	beqzl	t4,2160 <func_80AA800C+0x1a4>
    2090:	8e2b0680 	lw	t3,1664(s1)
    2094:	8e0d03b8 	lw	t5,952(s0)
    2098:	8fae0050 	lw	t6,80(sp)
    209c:	306afffd 	andi	t2,v1,0xfffd
    20a0:	562d002e 	bnel	s1,t5,215c <func_80AA800C+0x1a0>
    20a4:	a20a03c4 	sb	t2,964(s0)
    20a8:	55c00029 	bnezl	t6,2150 <func_80AA800C+0x194>
    20ac:	24090001 	li	t1,1
    20b0:	8e2f0680 	lw	t7,1664(s1)
    20b4:	31f80080 	andi	t8,t7,0x80
    20b8:	57000025 	bnezl	t8,2150 <func_80AA800C+0x194>
    20bc:	24090001 	li	t1,1
    20c0:	82220a78 	lb	v0,2680(s1)
    20c4:	0441000f 	bgez	v0,2104 <func_80AA800C+0x148>
    20c8:	2841ffd9 	slti	at,v0,-39
    20cc:	50200005 	beqzl	at,20e4 <func_80AA800C+0x128>
    20d0:	a2200a78 	sb	zero,2680(s1)
    20d4:	a2200a78 	sb	zero,2680(s1)
    20d8:	1000000a 	b	2104 <func_80AA800C+0x148>
    20dc:	920303c4 	lbu	v1,964(s0)
    20e0:	a2200a78 	sb	zero,2680(s1)
    20e4:	8fa40064 	lw	a0,100(sp)
    20e8:	3c010001 	lui	at,0x1
    20ec:	2405fff8 	li	a1,-8
    20f0:	00240821 	addu	at,at,a0
    20f4:	8c391d58 	lw	t9,7512(at)
    20f8:	0320f809 	jalr	t9
    20fc:	00000000 	nop
    2100:	920303c4 	lbu	v1,964(s0)
    2104:	8fa20064 	lw	v0,100(sp)
    2108:	3c010001 	lui	at,0x1
    210c:	30680004 	andi	t0,v1,0x4
    2110:	15000006 	bnez	t0,212c <func_80AA800C+0x170>
    2114:	00411021 	addu	v0,v0,at
    2118:	02202025 	move	a0,s1
    211c:	2405083e 	li	a1,2110
    2120:	0c000000 	jal	0 <func_80AA6050>
    2124:	afa2003c 	sw	v0,60(sp)
    2128:	8fa2003c 	lw	v0,60(sp)
    212c:	8c591d4c 	lw	t9,7500(v0)
    2130:	8fa40064 	lw	a0,100(sp)
    2134:	02202825 	move	a1,s1
    2138:	0320f809 	jalr	t9
    213c:	00000000 	nop
    2140:	50400003 	beqzl	v0,2150 <func_80AA800C+0x194>
    2144:	24090001 	li	t1,1
    2148:	ae300118 	sw	s0,280(s1)
    214c:	24090001 	li	t1,1
    2150:	10000002 	b	215c <func_80AA800C+0x1a0>
    2154:	afa90054 	sw	t1,84(sp)
    2158:	a20a03c4 	sb	t2,964(s0)
    215c:	8e2b0680 	lw	t3,1664(s1)
    2160:	316c0080 	andi	t4,t3,0x80
    2164:	5180002b 	beqzl	t4,2214 <func_80AA800C+0x258>
    2168:	8faf0050 	lw	t7,80(sp)
    216c:	8e2d0118 	lw	t5,280(s1)
    2170:	240e0001 	li	t6,1
    2174:	560d0027 	bnel	s0,t5,2214 <func_80AA800C+0x258>
    2178:	8faf0050 	lw	t7,80(sp)
    217c:	860400b6 	lh	a0,182(s0)
    2180:	0c000000 	jal	0 <func_80AA6050>
    2184:	afae0054 	sw	t6,84(sp)
    2188:	e7a00048 	swc1	$f0,72(sp)
    218c:	0c000000 	jal	0 <func_80AA6050>
    2190:	860400b6 	lh	a0,182(s0)
    2194:	3c014120 	lui	at,0x4120
    2198:	44812000 	mtc1	at,$f4
    219c:	c7b20048 	lwc1	$f18,72(sp)
    21a0:	3c0142b2 	lui	at,0x42b2
    21a4:	44818000 	mtc1	at,$f16
    21a8:	46049182 	mul.s	$f6,$f18,$f4
    21ac:	c6080024 	lwc1	$f8,36(s0)
    21b0:	46100482 	mul.s	$f18,$f0,$f16
    21b4:	46064280 	add.s	$f10,$f8,$f6
    21b8:	460a9100 	add.s	$f4,$f18,$f10
    21bc:	e6240024 	swc1	$f4,36(s1)
    21c0:	0c000000 	jal	0 <func_80AA6050>
    21c4:	860400b6 	lh	a0,182(s0)
    21c8:	e7a00048 	swc1	$f0,72(sp)
    21cc:	0c000000 	jal	0 <func_80AA6050>
    21d0:	860400b6 	lh	a0,182(s0)
    21d4:	3c014120 	lui	at,0x4120
    21d8:	44813000 	mtc1	at,$f6
    21dc:	c7a80048 	lwc1	$f8,72(sp)
    21e0:	3c0142b2 	lui	at,0x42b2
    21e4:	44812000 	mtc1	at,$f4
    21e8:	46064402 	mul.s	$f16,$f8,$f6
    21ec:	c612002c 	lwc1	$f18,44(s0)
    21f0:	44801000 	mtc1	zero,$f2
    21f4:	46040202 	mul.s	$f8,$f0,$f4
    21f8:	a6200850 	sh	zero,2128(s1)
    21fc:	e6220068 	swc1	$f2,104(s1)
    2200:	e6220060 	swc1	$f2,96(s1)
    2204:	46109280 	add.s	$f10,$f18,$f16
    2208:	460a4180 	add.s	$f6,$f8,$f10
    220c:	e626002c 	swc1	$f6,44(s1)
    2210:	8faf0050 	lw	t7,80(sp)
    2214:	8fb80054 	lw	t8,84(sp)
    2218:	51e0002c 	beqzl	t7,22cc <func_80AA800C+0x310>
    221c:	02002025 	move	a0,s0
    2220:	57000006 	bnezl	t8,223c <func_80AA800C+0x280>
    2224:	920903c4 	lbu	t1,964(s0)
    2228:	8e280680 	lw	t0,1664(s1)
    222c:	31190080 	andi	t9,t0,0x80
    2230:	53200020 	beqzl	t9,22b4 <func_80AA800C+0x2f8>
    2234:	860f032e 	lh	t7,814(s0)
    2238:	920903c4 	lbu	t1,964(s0)
    223c:	3c014080 	lui	at,0x4080
    2240:	240d00c8 	li	t5,200
    2244:	312afffd 	andi	t2,t1,0xfffd
    2248:	a20a03c4 	sb	t2,964(s0)
    224c:	8e220680 	lw	v0,1664(s1)
    2250:	02002825 	move	a1,s0
    2254:	304b0080 	andi	t3,v0,0x80
    2258:	5160000d 	beqzl	t3,2290 <func_80AA800C+0x2d4>
    225c:	3c01c120 	lui	at,0xc120
    2260:	44810000 	mtc1	at,$f0
    2264:	2401ff7f 	li	at,-129
    2268:	00416024 	and	t4,v0,at
    226c:	ae2c0680 	sw	t4,1664(s1)
    2270:	ae200118 	sw	zero,280(s1)
    2274:	a62d0850 	sh	t5,2128(s1)
    2278:	86070032 	lh	a3,50(s0)
    227c:	44060000 	mfc1	a2,$f0
    2280:	8fa40064 	lw	a0,100(sp)
    2284:	0c000000 	jal	0 <func_80AA6050>
    2288:	e7a00010 	swc1	$f0,16(sp)
    228c:	3c01c120 	lui	at,0xc120
    2290:	44819000 	mtc1	at,$f18
    2294:	a6000334 	sh	zero,820(s0)
    2298:	02002025 	move	a0,s0
    229c:	0c000000 	jal	0 <func_80AA6050>
    22a0:	e6120068 	swc1	$f18,104(s0)
    22a4:	240e0001 	li	t6,1
    22a8:	10000007 	b	22c8 <func_80AA800C+0x30c>
    22ac:	a60e032e 	sh	t6,814(s0)
    22b0:	860f032e 	lh	t7,814(s0)
    22b4:	02002025 	move	a0,s0
    22b8:	25f8ffff 	addiu	t8,t7,-1
    22bc:	a618032e 	sh	t8,814(s0)
    22c0:	0c000000 	jal	0 <func_80AA6050>
    22c4:	8fa50064 	lw	a1,100(sp)
    22c8:	02002025 	move	a0,s0
    22cc:	0c000000 	jal	0 <func_80AA6050>
    22d0:	8fa50064 	lw	a1,100(sp)
    22d4:	8619032e 	lh	t9,814(s0)
    22d8:	86080032 	lh	t0,50(s0)
    22dc:	26040008 	addiu	a0,s0,8
    22e0:	1720000c 	bnez	t9,2314 <func_80AA800C+0x358>
    22e4:	a60800b6 	sh	t0,182(s0)
    22e8:	0c000000 	jal	0 <func_80AA6050>
    22ec:	8fa50040 	lw	a1,64(sp)
    22f0:	3c0142a0 	lui	at,0x42a0
    22f4:	44818000 	mtc1	at,$f16
    22f8:	02002025 	move	a0,s0
    22fc:	4610003c 	c.lt.s	$f0,$f16
    2300:	00000000 	nop
    2304:	45020004 	bc1fl	2318 <func_80AA800C+0x35c>
    2308:	8fbf0034 	lw	ra,52(sp)
    230c:	0c000000 	jal	0 <func_80AA6050>
    2310:	a6000334 	sh	zero,820(s0)
    2314:	8fbf0034 	lw	ra,52(sp)
    2318:	8fb0002c 	lw	s0,44(sp)
    231c:	8fb10030 	lw	s1,48(sp)
    2320:	03e00008 	jr	ra
    2324:	27bd0060 	addiu	sp,sp,96

00002328 <func_80AA8378>:
    2328:	27bdffd8 	addiu	sp,sp,-40
    232c:	afb00018 	sw	s0,24(sp)
    2330:	00808025 	move	s0,a0
    2334:	afbf001c 	sw	ra,28(sp)
    2338:	2484018c 	addiu	a0,a0,396
    233c:	afa5002c 	sw	a1,44(sp)
    2340:	0c000000 	jal	0 <func_80AA6050>
    2344:	afa40024 	sw	a0,36(sp)
    2348:	10400017 	beqz	v0,23a8 <func_80AA8378+0x80>
    234c:	8fa40024 	lw	a0,36(sp)
    2350:	860e032e 	lh	t6,814(s0)
    2354:	3c050601 	lui	a1,0x601
    2358:	11c00011 	beqz	t6,23a0 <func_80AA8378+0x78>
    235c:	00000000 	nop
    2360:	0c000000 	jal	0 <func_80AA6050>
    2364:	24a5e18c 	addiu	a1,a1,-7796
    2368:	a600032e 	sh	zero,814(s0)
    236c:	c60c0090 	lwc1	$f12,144(s0)
    2370:	240500ff 	li	a1,255
    2374:	24060014 	li	a2,20
    2378:	0c000000 	jal	0 <func_80AA6050>
    237c:	24070096 	li	a3,150
    2380:	8fa4002c 	lw	a0,44(sp)
    2384:	24050002 	li	a1,2
    2388:	24060019 	li	a2,25
    238c:	24070005 	li	a3,5
    2390:	0c000000 	jal	0 <func_80AA6050>
    2394:	248401e0 	addiu	a0,a0,480
    2398:	10000004 	b	23ac <func_80AA8378+0x84>
    239c:	8fbf001c 	lw	ra,28(sp)
    23a0:	0c000000 	jal	0 <func_80AA6050>
    23a4:	02002025 	move	a0,s0
    23a8:	8fbf001c 	lw	ra,28(sp)
    23ac:	8fb00018 	lw	s0,24(sp)
    23b0:	27bd0028 	addiu	sp,sp,40
    23b4:	03e00008 	jr	ra
    23b8:	00000000 	nop

000023bc <func_80AA840C>:
    23bc:	27bdffc0 	addiu	sp,sp,-64
    23c0:	afb00028 	sw	s0,40(sp)
    23c4:	00808025 	move	s0,a0
    23c8:	afbf002c 	sw	ra,44(sp)
    23cc:	2484018c 	addiu	a0,a0,396
    23d0:	afa50044 	sw	a1,68(sp)
    23d4:	0c000000 	jal	0 <func_80AA6050>
    23d8:	afa40034 	sw	a0,52(sp)
    23dc:	50400035 	beqzl	v0,24b4 <func_80AA840C+0xf8>
    23e0:	8fbf002c 	lw	ra,44(sp)
    23e4:	8602032e 	lh	v0,814(s0)
    23e8:	1040002f 	beqz	v0,24a8 <func_80AA840C+0xec>
    23ec:	244effff 	addiu	t6,v0,-1
    23f0:	a60e032e 	sh	t6,814(s0)
    23f4:	860f032e 	lh	t7,814(s0)
    23f8:	55e0002e 	bnezl	t7,24b4 <func_80AA840C+0xf8>
    23fc:	8fbf002c 	lw	ra,44(sp)
    2400:	8618032a 	lh	t8,810(s0)
    2404:	3c040601 	lui	a0,0x601
    2408:	17000015 	bnez	t8,2460 <func_80AA840C+0xa4>
    240c:	00000000 	nop
    2410:	0c000000 	jal	0 <func_80AA6050>
    2414:	2484e18c 	addiu	a0,a0,-7796
    2418:	44822000 	mtc1	v0,$f4
    241c:	44800000 	mtc1	zero,$f0
    2420:	3c050601 	lui	a1,0x601
    2424:	468021a0 	cvt.s.w	$f6,$f4
    2428:	24190003 	li	t9,3
    242c:	44070000 	mfc1	a3,$f0
    2430:	afb90014 	sw	t9,20(sp)
    2434:	24a5e18c 	addiu	a1,a1,-7796
    2438:	8fa40034 	lw	a0,52(sp)
    243c:	e7a60010 	swc1	$f6,16(sp)
    2440:	3c064040 	lui	a2,0x4040
    2444:	0c000000 	jal	0 <func_80AA6050>
    2448:	e7a00018 	swc1	$f0,24(sp)
    244c:	24080001 	li	t0,1
    2450:	24090006 	li	t1,6
    2454:	a608032a 	sh	t0,810(s0)
    2458:	10000015 	b	24b0 <func_80AA840C+0xf4>
    245c:	a609032e 	sh	t1,814(s0)
    2460:	3c100601 	lui	s0,0x601
    2464:	2610e18c 	addiu	s0,s0,-7796
    2468:	0c000000 	jal	0 <func_80AA6050>
    246c:	02002025 	move	a0,s0
    2470:	44824000 	mtc1	v0,$f8
    2474:	44800000 	mtc1	zero,$f0
    2478:	240a0003 	li	t2,3
    247c:	468042a0 	cvt.s.w	$f10,$f8
    2480:	44070000 	mfc1	a3,$f0
    2484:	afaa0014 	sw	t2,20(sp)
    2488:	8fa40034 	lw	a0,52(sp)
    248c:	02002825 	move	a1,s0
    2490:	3c064040 	lui	a2,0x4040
    2494:	e7aa0010 	swc1	$f10,16(sp)
    2498:	0c000000 	jal	0 <func_80AA6050>
    249c:	e7a00018 	swc1	$f0,24(sp)
    24a0:	10000004 	b	24b4 <func_80AA840C+0xf8>
    24a4:	8fbf002c 	lw	ra,44(sp)
    24a8:	0c000000 	jal	0 <func_80AA6050>
    24ac:	02002025 	move	a0,s0
    24b0:	8fbf002c 	lw	ra,44(sp)
    24b4:	8fb00028 	lw	s0,40(sp)
    24b8:	27bd0040 	addiu	sp,sp,64
    24bc:	03e00008 	jr	ra
    24c0:	00000000 	nop

000024c4 <func_80AA8514>:
    24c4:	27bdff58 	addiu	sp,sp,-168
    24c8:	afbf0074 	sw	ra,116(sp)
    24cc:	afb40070 	sw	s4,112(sp)
    24d0:	afb3006c 	sw	s3,108(sp)
    24d4:	afb20068 	sw	s2,104(sp)
    24d8:	afb10064 	sw	s1,100(sp)
    24dc:	afb00060 	sw	s0,96(sp)
    24e0:	f7b80058 	sdc1	$f24,88(sp)
    24e4:	f7b60050 	sdc1	$f22,80(sp)
    24e8:	f7b40048 	sdc1	$f20,72(sp)
    24ec:	8c8f0024 	lw	t7,36(a0)
    24f0:	27b4009c 	addiu	s4,sp,156
    24f4:	00809025 	move	s2,a0
    24f8:	ae8f0000 	sw	t7,0(s4)
    24fc:	8c8e0028 	lw	t6,40(a0)
    2500:	00a09825 	move	s3,a1
    2504:	ae8e0004 	sw	t6,4(s4)
    2508:	8c8f002c 	lw	t7,44(a0)
    250c:	ae8f0008 	sw	t7,8(s4)
    2510:	0c000000 	jal	0 <func_80AA6050>
    2514:	848400b6 	lh	a0,182(a0)
    2518:	3c01c28c 	lui	at,0xc28c
    251c:	4481a000 	mtc1	at,$f20
    2520:	c7a4009c 	lwc1	$f4,156(sp)
    2524:	46140182 	mul.s	$f6,$f0,$f20
    2528:	46062200 	add.s	$f8,$f4,$f6
    252c:	e7a8009c 	swc1	$f8,156(sp)
    2530:	0c000000 	jal	0 <func_80AA6050>
    2534:	864400b6 	lh	a0,182(s2)
    2538:	46140402 	mul.s	$f16,$f0,$f20
    253c:	c7aa00a4 	lwc1	$f10,164(sp)
    2540:	44801000 	mtc1	zero,$f2
    2544:	26440068 	addiu	a0,s2,104
    2548:	3c063f80 	lui	a2,0x3f80
    254c:	44051000 	mfc1	a1,$f2
    2550:	3c073f00 	lui	a3,0x3f00
    2554:	46105480 	add.s	$f18,$f10,$f16
    2558:	e7a20010 	swc1	$f2,16(sp)
    255c:	0c000000 	jal	0 <func_80AA6050>
    2560:	e7b200a4 	swc1	$f18,164(sp)
    2564:	8e880000 	lw	t0,0(s4)
    2568:	27b80090 	addiu	t8,sp,144
    256c:	2644018c 	addiu	a0,s2,396
    2570:	af080000 	sw	t0,0(t8)
    2574:	8e990004 	lw	t9,4(s4)
    2578:	af190004 	sw	t9,4(t8)
    257c:	8e880008 	lw	t0,8(s4)
    2580:	0c000000 	jal	0 <func_80AA6050>
    2584:	af080008 	sw	t0,8(t8)
    2588:	50400050 	beqzl	v0,26cc <func_80AA8514+0x208>
    258c:	c64601a4 	lwc1	$f6,420(s2)
    2590:	8649032a 	lh	t1,810(s2)
    2594:	02602025 	move	a0,s3
    2598:	02402825 	move	a1,s2
    259c:	19200044 	blez	t1,26b0 <func_80AA8514+0x1ec>
    25a0:	02803025 	move	a2,s4
    25a4:	3c0a0000 	lui	t2,0x0
    25a8:	254a0000 	addiu	t2,t2,0
    25ac:	8d4c0000 	lw	t4,0(t2)
    25b0:	27b10084 	addiu	s1,sp,132
    25b4:	3c0141a0 	lui	at,0x41a0
    25b8:	ae2c0000 	sw	t4,0(s1)
    25bc:	8d4b0004 	lw	t3,4(t2)
    25c0:	4481c000 	mtc1	at,$f24
    25c4:	3c014170 	lui	at,0x4170
    25c8:	ae2b0004 	sw	t3,4(s1)
    25cc:	8d4c0008 	lw	t4,8(t2)
    25d0:	4481b000 	mtc1	at,$f22
    25d4:	3c014370 	lui	at,0x4370
    25d8:	ae2c0008 	sw	t4,8(s1)
    25dc:	864d032a 	lh	t5,810(s2)
    25e0:	4481a000 	mtc1	at,$f20
    25e4:	24100004 	li	s0,4
    25e8:	25aeffff 	addiu	t6,t5,-1
    25ec:	a64e032a 	sh	t6,810(s2)
    25f0:	0c000000 	jal	0 <func_80AA6050>
    25f4:	4600a306 	mov.s	$f12,$f20
    25f8:	c7a40090 	lwc1	$f4,144(sp)
    25fc:	4600b306 	mov.s	$f12,$f22
    2600:	46040180 	add.s	$f6,$f0,$f4
    2604:	0c000000 	jal	0 <func_80AA6050>
    2608:	e7a6009c 	swc1	$f6,156(sp)
    260c:	c7a80094 	lwc1	$f8,148(sp)
    2610:	4600a306 	mov.s	$f12,$f20
    2614:	46184280 	add.s	$f10,$f8,$f24
    2618:	460a0400 	add.s	$f16,$f0,$f10
    261c:	0c000000 	jal	0 <func_80AA6050>
    2620:	e7b000a0 	swc1	$f16,160(sp)
    2624:	c7b20098 	lwc1	$f18,152(sp)
    2628:	240f00e6 	li	t7,230
    262c:	24180007 	li	t8,7
    2630:	46120100 	add.s	$f4,$f0,$f18
    2634:	241900ff 	li	t9,255
    2638:	240800ff 	li	t0,255
    263c:	240900ff 	li	t1,255
    2640:	240a00ff 	li	t2,255
    2644:	240b00ff 	li	t3,255
    2648:	240c0001 	li	t4,1
    264c:	240d0009 	li	t5,9
    2650:	240e0001 	li	t6,1
    2654:	e7a400a4 	swc1	$f4,164(sp)
    2658:	afae003c 	sw	t6,60(sp)
    265c:	afad0038 	sw	t5,56(sp)
    2660:	afac0034 	sw	t4,52(sp)
    2664:	afab002c 	sw	t3,44(sp)
    2668:	afaa0024 	sw	t2,36(sp)
    266c:	afa90020 	sw	t1,32(sp)
    2670:	afa8001c 	sw	t0,28(sp)
    2674:	afb90018 	sw	t9,24(sp)
    2678:	afb80014 	sw	t8,20(sp)
    267c:	afaf0010 	sw	t7,16(sp)
    2680:	02602025 	move	a0,s3
    2684:	02802825 	move	a1,s4
    2688:	02203025 	move	a2,s1
    268c:	02203825 	move	a3,s1
    2690:	afa00028 	sw	zero,40(sp)
    2694:	0c000000 	jal	0 <func_80AA6050>
    2698:	afa00030 	sw	zero,48(sp)
    269c:	2610ffff 	addiu	s0,s0,-1
    26a0:	0601ffd3 	bgez	s0,25f0 <func_80AA8514+0x12c>
    26a4:	00000000 	nop
    26a8:	1000002d 	b	2760 <func_80AA8514+0x29c>
    26ac:	8fbf0074 	lw	ra,116(sp)
    26b0:	0c000000 	jal	0 <func_80AA6050>
    26b4:	240700c0 	li	a3,192
    26b8:	0c000000 	jal	0 <func_80AA6050>
    26bc:	02402025 	move	a0,s2
    26c0:	10000027 	b	2760 <func_80AA8514+0x29c>
    26c4:	8fbf0074 	lw	ra,116(sp)
    26c8:	c64601a4 	lwc1	$f6,420(s2)
    26cc:	2401000f 	li	at,15
    26d0:	240500ff 	li	a1,255
    26d4:	4600320d 	trunc.w.s	$f8,$f6
    26d8:	24060014 	li	a2,20
    26dc:	24070096 	li	a3,150
    26e0:	44024000 	mfc1	v0,$f8
    26e4:	00000000 	nop
    26e8:	10410003 	beq	v0,at,26f8 <func_80AA8514+0x234>
    26ec:	24010016 	li	at,22
    26f0:	5441001b 	bnel	v0,at,2760 <func_80AA8514+0x29c>
    26f4:	8fbf0074 	lw	ra,116(sp)
    26f8:	0c000000 	jal	0 <func_80AA6050>
    26fc:	c64c0090 	lwc1	$f12,144(s2)
    2700:	3c014040 	lui	at,0x4040
    2704:	44815000 	mtc1	at,$f10
    2708:	2418000a 	li	t8,10
    270c:	24190190 	li	t9,400
    2710:	2408003c 	li	t0,60
    2714:	afa8001c 	sw	t0,28(sp)
    2718:	afb90018 	sw	t9,24(sp)
    271c:	afb80010 	sw	t8,16(sp)
    2720:	02602025 	move	a0,s3
    2724:	02402825 	move	a1,s2
    2728:	02803025 	move	a2,s4
    272c:	3c074248 	lui	a3,0x4248
    2730:	afa00020 	sw	zero,32(sp)
    2734:	0c000000 	jal	0 <func_80AA6050>
    2738:	e7aa0014 	swc1	$f10,20(sp)
    273c:	02402025 	move	a0,s2
    2740:	0c000000 	jal	0 <func_80AA6050>
    2744:	2405387a 	li	a1,14458
    2748:	266401e0 	addiu	a0,s3,480
    274c:	24050002 	li	a1,2
    2750:	24060019 	li	a2,25
    2754:	0c000000 	jal	0 <func_80AA6050>
    2758:	24070005 	li	a3,5
    275c:	8fbf0074 	lw	ra,116(sp)
    2760:	d7b40048 	ldc1	$f20,72(sp)
    2764:	d7b60050 	ldc1	$f22,80(sp)
    2768:	d7b80058 	ldc1	$f24,88(sp)
    276c:	8fb00060 	lw	s0,96(sp)
    2770:	8fb10064 	lw	s1,100(sp)
    2774:	8fb20068 	lw	s2,104(sp)
    2778:	8fb3006c 	lw	s3,108(sp)
    277c:	8fb40070 	lw	s4,112(sp)
    2780:	03e00008 	jr	ra
    2784:	27bd00a8 	addiu	sp,sp,168

00002788 <func_80AA87D8>:
    2788:	27bdffb0 	addiu	sp,sp,-80
    278c:	afbf0024 	sw	ra,36(sp)
    2790:	afb00020 	sw	s0,32(sp)
    2794:	8cae1c44 	lw	t6,7236(a1)
    2798:	00808025 	move	s0,a0
    279c:	3c053f19 	lui	a1,0x3f19
    27a0:	afae003c 	sw	t6,60(sp)
    27a4:	849800b6 	lh	t8,182(a0)
    27a8:	848f008a 	lh	t7,138(a0)
    27ac:	26040068 	addiu	a0,s0,104
    27b0:	34a59999 	ori	a1,a1,0x9999
    27b4:	01f81823 	subu	v1,t7,t8
    27b8:	00031c00 	sll	v1,v1,0x10
    27bc:	00031c03 	sra	v1,v1,0x10
    27c0:	04610004 	bgez	v1,27d4 <func_80AA87D8+0x4c>
    27c4:	3c063dcc 	lui	a2,0x3dcc
    27c8:	00031823 	negu	v1,v1
    27cc:	00031c00 	sll	v1,v1,0x10
    27d0:	00031c03 	sra	v1,v1,0x10
    27d4:	44802000 	mtc1	zero,$f4
    27d8:	34c6cccd 	ori	a2,a2,0xcccd
    27dc:	3c073f80 	lui	a3,0x3f80
    27e0:	a7a3003a 	sh	v1,58(sp)
    27e4:	0c000000 	jal	0 <func_80AA6050>
    27e8:	e7a40010 	swc1	$f4,16(sp)
    27ec:	c60801a4 	lwc1	$f8,420(s0)
    27f0:	c6060068 	lwc1	$f6,104(s0)
    27f4:	2604018c 	addiu	a0,s0,396
    27f8:	4600428d 	trunc.w.s	$f10,$f8
    27fc:	e60601a8 	swc1	$f6,424(s0)
    2800:	44085000 	mfc1	t0,$f10
    2804:	0c000000 	jal	0 <func_80AA6050>
    2808:	afa8004c 	sw	t0,76(sp)
    280c:	44801000 	mtc1	zero,$f2
    2810:	c60001a8 	lwc1	$f0,424(s0)
    2814:	87a3003a 	lh	v1,58(sp)
    2818:	26040008 	addiu	a0,s0,8
    281c:	4600103e 	c.le.s	$f2,$f0
    2820:	00000000 	nop
    2824:	45020004 	bc1fl	2838 <func_80AA87D8+0xb0>
    2828:	46000407 	neg.s	$f16,$f0
    282c:	10000003 	b	283c <func_80AA87D8+0xb4>
    2830:	e7a00034 	swc1	$f0,52(sp)
    2834:	46000407 	neg.s	$f16,$f0
    2838:	e7b00034 	swc1	$f16,52(sp)
    283c:	c61201a4 	lwc1	$f18,420(s0)
    2840:	c7a40034 	lwc1	$f4,52(sp)
    2844:	4600103e 	c.le.s	$f2,$f0
    2848:	46049181 	sub.s	$f6,$f18,$f4
    284c:	4600320d 	trunc.w.s	$f8,$f6
    2850:	440a4000 	mfc1	t2,$f8
    2854:	45000003 	bc1f	2864 <func_80AA87D8+0xdc>
    2858:	afaa0048 	sw	t2,72(sp)
    285c:	10000003 	b	286c <func_80AA87D8+0xe4>
    2860:	e7a00034 	swc1	$f0,52(sp)
    2864:	46000287 	neg.s	$f10,$f0
    2868:	e7aa0034 	swc1	$f10,52(sp)
    286c:	860b032e 	lh	t3,814(s0)
    2870:	8fa5003c 	lw	a1,60(sp)
    2874:	15600020 	bnez	t3,28f8 <func_80AA87D8+0x170>
    2878:	24a50024 	addiu	a1,a1,36
    287c:	0c000000 	jal	0 <func_80AA6050>
    2880:	a7a3003a 	sh	v1,58(sp)
    2884:	c6100364 	lwc1	$f16,868(s0)
    2888:	87a3003a 	lh	v1,58(sp)
    288c:	26040032 	addiu	a0,s0,50
    2890:	4610003c 	c.lt.s	$f0,$f16
    2894:	24060001 	li	a2,1
    2898:	240702ee 	li	a3,750
    289c:	45020017 	bc1fl	28fc <func_80AA87D8+0x174>
    28a0:	8e0e0004 	lw	t6,4(s0)
    28a4:	8605008a 	lh	a1,138(s0)
    28a8:	a7a3003a 	sh	v1,58(sp)
    28ac:	0c000000 	jal	0 <func_80AA6050>
    28b0:	afa00010 	sw	zero,16(sp)
    28b4:	3c0143fa 	lui	at,0x43fa
    28b8:	44812000 	mtc1	at,$f4
    28bc:	c6120090 	lwc1	$f18,144(s0)
    28c0:	8e0c0004 	lw	t4,4(s0)
    28c4:	87a3003a 	lh	v1,58(sp)
    28c8:	4604903c 	c.lt.s	$f18,$f4
    28cc:	358d0001 	ori	t5,t4,0x1
    28d0:	ae0d0004 	sw	t5,4(s0)
    28d4:	28611388 	slti	at,v1,5000
    28d8:	4502004b 	bc1fl	2a08 <func_80AA87D8+0x280>
    28dc:	c60a01a4 	lwc1	$f10,420(s0)
    28e0:	50200049 	beqzl	at,2a08 <func_80AA87D8+0x280>
    28e4:	c60a01a4 	lwc1	$f10,420(s0)
    28e8:	0c000000 	jal	0 <func_80AA6050>
    28ec:	02002025 	move	a0,s0
    28f0:	10000045 	b	2a08 <func_80AA87D8+0x280>
    28f4:	c60a01a4 	lwc1	$f10,420(s0)
    28f8:	8e0e0004 	lw	t6,4(s0)
    28fc:	2401fffe 	li	at,-2
    2900:	26040024 	addiu	a0,s0,36
    2904:	01c17824 	and	t7,t6,at
    2908:	ae0f0004 	sw	t7,4(s0)
    290c:	26050008 	addiu	a1,s0,8
    2910:	afa50030 	sw	a1,48(sp)
    2914:	0c000000 	jal	0 <func_80AA6050>
    2918:	afa4002c 	sw	a0,44(sp)
    291c:	c6060360 	lwc1	$f6,864(s0)
    2920:	8fa4002c 	lw	a0,44(sp)
    2924:	8fa50030 	lw	a1,48(sp)
    2928:	4600303c 	c.lt.s	$f6,$f0
    292c:	00000000 	nop
    2930:	45010004 	bc1t	2944 <func_80AA87D8+0x1bc>
    2934:	00000000 	nop
    2938:	8603032c 	lh	v1,812(s0)
    293c:	1060000b 	beqz	v1,296c <func_80AA87D8+0x1e4>
    2940:	00000000 	nop
    2944:	0c000000 	jal	0 <func_80AA6050>
    2948:	00000000 	nop
    294c:	00022c00 	sll	a1,v0,0x10
    2950:	00052c03 	sra	a1,a1,0x10
    2954:	26040032 	addiu	a0,s0,50
    2958:	24060001 	li	a2,1
    295c:	240702ee 	li	a3,750
    2960:	0c000000 	jal	0 <func_80AA6050>
    2964:	afa00010 	sw	zero,16(sp)
    2968:	8603032c 	lh	v1,812(s0)
    296c:	10600002 	beqz	v1,2978 <func_80AA87D8+0x1f0>
    2970:	2478ffff 	addiu	t8,v1,-1
    2974:	a618032c 	sh	t8,812(s0)
    2978:	8602032e 	lh	v0,814(s0)
    297c:	02002025 	move	a0,s0
    2980:	10400002 	beqz	v0,298c <func_80AA87D8+0x204>
    2984:	2459ffff 	addiu	t9,v0,-1
    2988:	a619032e 	sh	t9,814(s0)
    298c:	8608032c 	lh	t0,812(s0)
    2990:	55000004 	bnezl	t0,29a4 <func_80AA87D8+0x21c>
    2994:	8609032a 	lh	t1,810(s0)
    2998:	0c000000 	jal	0 <func_80AA6050>
    299c:	240538bb 	li	a1,14523
    29a0:	8609032a 	lh	t1,810(s0)
    29a4:	252affff 	addiu	t2,t1,-1
    29a8:	a60a032a 	sh	t2,810(s0)
    29ac:	860b032a 	lh	t3,810(s0)
    29b0:	55600015 	bnezl	t3,2a08 <func_80AA87D8+0x280>
    29b4:	c60a01a4 	lwc1	$f10,420(s0)
    29b8:	0c000000 	jal	0 <func_80AA6050>
    29bc:	00000000 	nop
    29c0:	3c010000 	lui	at,0x0
    29c4:	c4280000 	lwc1	$f8,0(at)
    29c8:	24040032 	li	a0,50
    29cc:	4600403c 	c.lt.s	$f8,$f0
    29d0:	00000000 	nop
    29d4:	45000009 	bc1f	29fc <func_80AA87D8+0x274>
    29d8:	00000000 	nop
    29dc:	0c000000 	jal	0 <func_80AA6050>
    29e0:	24050046 	li	a1,70
    29e4:	a602032a 	sh	v0,810(s0)
    29e8:	2404000f 	li	a0,15
    29ec:	0c000000 	jal	0 <func_80AA6050>
    29f0:	24050028 	li	a1,40
    29f4:	10000003 	b	2a04 <func_80AA87D8+0x27c>
    29f8:	a602032c 	sh	v0,812(s0)
    29fc:	0c000000 	jal	0 <func_80AA6050>
    2a00:	02002025 	move	a0,s0
    2a04:	c60a01a4 	lwc1	$f10,420(s0)
    2a08:	8fa2004c 	lw	v0,76(sp)
    2a0c:	8fae0048 	lw	t6,72(sp)
    2a10:	4600540d 	trunc.w.s	$f16,$f10
    2a14:	29c10002 	slti	at,t6,2
    2a18:	440d8000 	mfc1	t5,$f16
    2a1c:	00000000 	nop
    2a20:	504d0018 	beql	v0,t5,2a84 <func_80AA87D8+0x2fc>
    2a24:	860c0032 	lh	t4,50(s0)
    2a28:	10200007 	beqz	at,2a48 <func_80AA87D8+0x2c0>
    2a2c:	c7b20034 	lwc1	$f18,52(sp)
    2a30:	4600910d 	trunc.w.s	$f4,$f18
    2a34:	44182000 	mfc1	t8,$f4
    2a38:	00000000 	nop
    2a3c:	0302c821 	addu	t9,t8,v0
    2a40:	5f20000d 	bgtzl	t9,2a78 <func_80AA87D8+0x2f0>
    2a44:	02002025 	move	a0,s0
    2a48:	8fa80048 	lw	t0,72(sp)
    2a4c:	c7a60034 	lwc1	$f6,52(sp)
    2a50:	29010015 	slti	at,t0,21
    2a54:	5020000b 	beqzl	at,2a84 <func_80AA87D8+0x2fc>
    2a58:	860c0032 	lh	t4,50(s0)
    2a5c:	4600320d 	trunc.w.s	$f8,$f6
    2a60:	440a4000 	mfc1	t2,$f8
    2a64:	00000000 	nop
    2a68:	01425821 	addu	t3,t2,v0
    2a6c:	29610014 	slti	at,t3,20
    2a70:	14200003 	bnez	at,2a80 <func_80AA87D8+0x2f8>
    2a74:	02002025 	move	a0,s0
    2a78:	0c000000 	jal	0 <func_80AA6050>
    2a7c:	240538b8 	li	a1,14520
    2a80:	860c0032 	lh	t4,50(s0)
    2a84:	a60c00b6 	sh	t4,182(s0)
    2a88:	8fbf0024 	lw	ra,36(sp)
    2a8c:	8fb00020 	lw	s0,32(sp)
    2a90:	27bd0050 	addiu	sp,sp,80
    2a94:	03e00008 	jr	ra
    2a98:	00000000 	nop

00002a9c <func_80AA8AEC>:
    2a9c:	27bdffb8 	addiu	sp,sp,-72
    2aa0:	afb00020 	sw	s0,32(sp)
    2aa4:	00808025 	move	s0,a0
    2aa8:	afa5004c 	sw	a1,76(sp)
    2aac:	afbf0024 	sw	ra,36(sp)
    2ab0:	26050024 	addiu	a1,s0,36
    2ab4:	24840344 	addiu	a0,a0,836
    2ab8:	afa4002c 	sw	a0,44(sp)
    2abc:	0c000000 	jal	0 <func_80AA6050>
    2ac0:	afa50028 	sw	a1,40(sp)
    2ac4:	3c014100 	lui	at,0x4100
    2ac8:	44812000 	mtc1	at,$f4
    2acc:	00000000 	nop
    2ad0:	4604003e 	c.le.s	$f0,$f4
    2ad4:	00000000 	nop
    2ad8:	45030013 	bc1tl	2b28 <func_80AA8AEC+0x8c>
    2adc:	02002025 	move	a0,s0
    2ae0:	0c000000 	jal	0 <func_80AA6050>
    2ae4:	00000000 	nop
    2ae8:	3c010000 	lui	at,0x0
    2aec:	c4260000 	lwc1	$f6,0(at)
    2af0:	26040008 	addiu	a0,s0,8
    2af4:	4606003c 	c.lt.s	$f0,$f6
    2af8:	00000000 	nop
    2afc:	4502000f 	bc1fl	2b3c <func_80AA8AEC+0xa0>
    2b00:	44805000 	mtc1	zero,$f10
    2b04:	0c000000 	jal	0 <func_80AA6050>
    2b08:	8fa50028 	lw	a1,40(sp)
    2b0c:	3c014080 	lui	at,0x4080
    2b10:	44814000 	mtc1	at,$f8
    2b14:	00000000 	nop
    2b18:	4608003e 	c.le.s	$f0,$f8
    2b1c:	00000000 	nop
    2b20:	45000005 	bc1f	2b38 <func_80AA8AEC+0x9c>
    2b24:	02002025 	move	a0,s0
    2b28:	0c000000 	jal	0 <func_80AA6050>
    2b2c:	8fa5004c 	lw	a1,76(sp)
    2b30:	1000000e 	b	2b6c <func_80AA8AEC+0xd0>
    2b34:	8fa40028 	lw	a0,40(sp)
    2b38:	44805000 	mtc1	zero,$f10
    2b3c:	3c053f19 	lui	a1,0x3f19
    2b40:	3c063dcc 	lui	a2,0x3dcc
    2b44:	34c6cccd 	ori	a2,a2,0xcccd
    2b48:	34a59999 	ori	a1,a1,0x9999
    2b4c:	26040068 	addiu	a0,s0,104
    2b50:	3c073f80 	lui	a3,0x3f80
    2b54:	0c000000 	jal	0 <func_80AA6050>
    2b58:	e7aa0010 	swc1	$f10,16(sp)
    2b5c:	c6020068 	lwc1	$f2,104(s0)
    2b60:	46021400 	add.s	$f16,$f2,$f2
    2b64:	e61001a8 	swc1	$f16,424(s0)
    2b68:	8fa40028 	lw	a0,40(sp)
    2b6c:	0c000000 	jal	0 <func_80AA6050>
    2b70:	8fa5002c 	lw	a1,44(sp)
    2b74:	a6020330 	sh	v0,816(s0)
    2b78:	86050330 	lh	a1,816(s0)
    2b7c:	afa00010 	sw	zero,16(sp)
    2b80:	26040032 	addiu	a0,s0,50
    2b84:	24060001 	li	a2,1
    2b88:	0c000000 	jal	0 <func_80AA6050>
    2b8c:	240705dc 	li	a3,1500
    2b90:	c6000094 	lwc1	$f0,148(s0)
    2b94:	44809000 	mtc1	zero,$f18
    2b98:	3c0141a0 	lui	at,0x41a0
    2b9c:	44812000 	mtc1	at,$f4
    2ba0:	4600903e 	c.le.s	$f18,$f0
    2ba4:	02002025 	move	a0,s0
    2ba8:	45020004 	bc1fl	2bbc <func_80AA8AEC+0x120>
    2bac:	46000087 	neg.s	$f2,$f0
    2bb0:	10000002 	b	2bbc <func_80AA8AEC+0x120>
    2bb4:	46000086 	mov.s	$f2,$f0
    2bb8:	46000087 	neg.s	$f2,$f0
    2bbc:	4604103e 	c.le.s	$f2,$f4
    2bc0:	00000000 	nop
    2bc4:	45020026 	bc1fl	2c60 <func_80AA8AEC+0x1c4>
    2bc8:	8602032c 	lh	v0,812(s0)
    2bcc:	0c000000 	jal	0 <func_80AA6050>
    2bd0:	8fa5004c 	lw	a1,76(sp)
    2bd4:	50400022 	beqzl	v0,2c60 <func_80AA8AEC+0x1c4>
    2bd8:	8602032c 	lh	v0,812(s0)
    2bdc:	860e00b6 	lh	t6,182(s0)
    2be0:	860f008a 	lh	t7,138(s0)
    2be4:	01cf1023 	subu	v0,t6,t7
    2be8:	00021400 	sll	v0,v0,0x10
    2bec:	00021403 	sra	v0,v0,0x10
    2bf0:	04400003 	bltz	v0,2c00 <func_80AA8AEC+0x164>
    2bf4:	00021823 	negu	v1,v0
    2bf8:	10000001 	b	2c00 <func_80AA8AEC+0x164>
    2bfc:	00401825 	move	v1,v0
    2c00:	28614001 	slti	at,v1,16385
    2c04:	5420000c 	bnezl	at,2c38 <func_80AA8AEC+0x19c>
    2c08:	02002025 	move	a0,s0
    2c0c:	0c000000 	jal	0 <func_80AA6050>
    2c10:	8fa4004c 	lw	a0,76(sp)
    2c14:	10400011 	beqz	v0,2c5c <func_80AA8AEC+0x1c0>
    2c18:	3c014320 	lui	at,0x4320
    2c1c:	c6060090 	lwc1	$f6,144(s0)
    2c20:	44814000 	mtc1	at,$f8
    2c24:	00000000 	nop
    2c28:	4608303c 	c.lt.s	$f6,$f8
    2c2c:	00000000 	nop
    2c30:	4500000a 	bc1f	2c5c <func_80AA8AEC+0x1c0>
    2c34:	02002025 	move	a0,s0
    2c38:	0c000000 	jal	0 <func_80AA6050>
    2c3c:	8fa5004c 	lw	a1,76(sp)
    2c40:	02002025 	move	a0,s0
    2c44:	0c000000 	jal	0 <func_80AA6050>
    2c48:	240538bb 	li	a1,14523
    2c4c:	0c000000 	jal	0 <func_80AA6050>
    2c50:	02002025 	move	a0,s0
    2c54:	10000048 	b	2d78 <func_80AA8AEC+0x2dc>
    2c58:	8fbf0024 	lw	ra,36(sp)
    2c5c:	8602032c 	lh	v0,812(s0)
    2c60:	02002025 	move	a0,s0
    2c64:	10400002 	beqz	v0,2c70 <func_80AA8AEC+0x1d4>
    2c68:	2458ffff 	addiu	t8,v0,-1
    2c6c:	a618032c 	sh	t8,812(s0)
    2c70:	8602032e 	lh	v0,814(s0)
    2c74:	10400002 	beqz	v0,2c80 <func_80AA8AEC+0x1e4>
    2c78:	2459ffff 	addiu	t9,v0,-1
    2c7c:	a619032e 	sh	t9,814(s0)
    2c80:	8608032c 	lh	t0,812(s0)
    2c84:	55000008 	bnezl	t0,2ca8 <func_80AA8AEC+0x20c>
    2c88:	c60a01a4 	lwc1	$f10,420(s0)
    2c8c:	0c000000 	jal	0 <func_80AA6050>
    2c90:	240538bb 	li	a1,14523
    2c94:	2404001e 	li	a0,30
    2c98:	0c000000 	jal	0 <func_80AA6050>
    2c9c:	24050046 	li	a1,70
    2ca0:	a602032c 	sh	v0,812(s0)
    2ca4:	c60a01a4 	lwc1	$f10,420(s0)
    2ca8:	2604018c 	addiu	a0,s0,396
    2cac:	4600540d 	trunc.w.s	$f16,$f10
    2cb0:	44038000 	mfc1	v1,$f16
    2cb4:	0c000000 	jal	0 <func_80AA6050>
    2cb8:	afa30044 	sw	v1,68(sp)
    2cbc:	c60001a8 	lwc1	$f0,424(s0)
    2cc0:	44809000 	mtc1	zero,$f18
    2cc4:	44804000 	mtc1	zero,$f8
    2cc8:	8fa30044 	lw	v1,68(sp)
    2ccc:	4600903e 	c.le.s	$f18,$f0
    2cd0:	00000000 	nop
    2cd4:	45020004 	bc1fl	2ce8 <func_80AA8AEC+0x24c>
    2cd8:	46000087 	neg.s	$f2,$f0
    2cdc:	10000002 	b	2ce8 <func_80AA8AEC+0x24c>
    2ce0:	46000086 	mov.s	$f2,$f0
    2ce4:	46000087 	neg.s	$f2,$f0
    2ce8:	c60c01a4 	lwc1	$f12,420(s0)
    2cec:	4600403e 	c.le.s	$f8,$f0
    2cf0:	46026101 	sub.s	$f4,$f12,$f2
    2cf4:	4600628d 	trunc.w.s	$f10,$f12
    2cf8:	4600218d 	trunc.w.s	$f6,$f4
    2cfc:	440c5000 	mfc1	t4,$f10
    2d00:	44023000 	mfc1	v0,$f6
    2d04:	45020004 	bc1fl	2d18 <func_80AA8AEC+0x27c>
    2d08:	46000087 	neg.s	$f2,$f0
    2d0c:	10000002 	b	2d18 <func_80AA8AEC+0x27c>
    2d10:	46000086 	mov.s	$f2,$f0
    2d14:	46000087 	neg.s	$f2,$f0
    2d18:	106c0014 	beq	v1,t4,2d6c <func_80AA8AEC+0x2d0>
    2d1c:	28410002 	slti	at,v0,2
    2d20:	50200007 	beqzl	at,2d40 <func_80AA8AEC+0x2a4>
    2d24:	28410015 	slti	at,v0,21
    2d28:	4600140d 	trunc.w.s	$f16,$f2
    2d2c:	440e8000 	mfc1	t6,$f16
    2d30:	00000000 	nop
    2d34:	01c37821 	addu	t7,t6,v1
    2d38:	1de00009 	bgtz	t7,2d60 <func_80AA8AEC+0x2c4>
    2d3c:	28410015 	slti	at,v0,21
    2d40:	5020000b 	beqzl	at,2d70 <func_80AA8AEC+0x2d4>
    2d44:	86090032 	lh	t1,50(s0)
    2d48:	4600148d 	trunc.w.s	$f18,$f2
    2d4c:	44199000 	mfc1	t9,$f18
    2d50:	00000000 	nop
    2d54:	03234021 	addu	t0,t9,v1
    2d58:	29010014 	slti	at,t0,20
    2d5c:	14200003 	bnez	at,2d6c <func_80AA8AEC+0x2d0>
    2d60:	02002025 	move	a0,s0
    2d64:	0c000000 	jal	0 <func_80AA6050>
    2d68:	240538b8 	li	a1,14520
    2d6c:	86090032 	lh	t1,50(s0)
    2d70:	a60900b6 	sh	t1,182(s0)
    2d74:	8fbf0024 	lw	ra,36(sp)
    2d78:	8fb00020 	lw	s0,32(sp)
    2d7c:	27bd0048 	addiu	sp,sp,72
    2d80:	03e00008 	jr	ra
    2d84:	00000000 	nop

00002d88 <func_80AA8DD8>:
    2d88:	27bdffd8 	addiu	sp,sp,-40
    2d8c:	afbf0014 	sw	ra,20(sp)
    2d90:	8cae1c44 	lw	t6,7236(a1)
    2d94:	00803025 	move	a2,a0
    2d98:	2484018c 	addiu	a0,a0,396
    2d9c:	afae0024 	sw	t6,36(sp)
    2da0:	8498fefe 	lh	t8,-258(a0)
    2da4:	848ffea6 	lh	t7,-346(a0)
    2da8:	afa60028 	sw	a2,40(sp)
    2dac:	01f81823 	subu	v1,t7,t8
    2db0:	00031c00 	sll	v1,v1,0x10
    2db4:	00031c03 	sra	v1,v1,0x10
    2db8:	0c000000 	jal	0 <func_80AA6050>
    2dbc:	a7a3001e 	sh	v1,30(sp)
    2dc0:	8fa60028 	lw	a2,40(sp)
    2dc4:	8fa50024 	lw	a1,36(sp)
    2dc8:	24c40008 	addiu	a0,a2,8
    2dcc:	0c000000 	jal	0 <func_80AA6050>
    2dd0:	24a50024 	addiu	a1,a1,36
    2dd4:	8fa60028 	lw	a2,40(sp)
    2dd8:	87a3001e 	lh	v1,30(sp)
    2ddc:	8fb90024 	lw	t9,36(sp)
    2de0:	c4c40364 	lwc1	$f4,868(a2)
    2de4:	4604003c 	c.lt.s	$f0,$f4
    2de8:	00000000 	nop
    2dec:	4502000f 	bc1fl	2e2c <func_80AA8DD8+0xa4>
    2df0:	8fbf0014 	lw	ra,20(sp)
    2df4:	8f28067c 	lw	t0,1660(t9)
    2df8:	00084940 	sll	t1,t0,0x5
    2dfc:	0522000b 	bltzl	t1,2e2c <func_80AA8DD8+0xa4>
    2e00:	8fbf0014 	lw	ra,20(sp)
    2e04:	04600003 	bltz	v1,2e14 <func_80AA8DD8+0x8c>
    2e08:	00031023 	negu	v0,v1
    2e0c:	10000001 	b	2e14 <func_80AA8DD8+0x8c>
    2e10:	00601025 	move	v0,v1
    2e14:	28413e80 	slti	at,v0,16000
    2e18:	50200004 	beqzl	at,2e2c <func_80AA8DD8+0xa4>
    2e1c:	8fbf0014 	lw	ra,20(sp)
    2e20:	0c000000 	jal	0 <func_80AA6050>
    2e24:	00c02025 	move	a0,a2
    2e28:	8fbf0014 	lw	ra,20(sp)
    2e2c:	27bd0028 	addiu	sp,sp,40
    2e30:	03e00008 	jr	ra
    2e34:	00000000 	nop

00002e38 <func_80AA8E88>:
    2e38:	27bdffe0 	addiu	sp,sp,-32
    2e3c:	afbf001c 	sw	ra,28(sp)
    2e40:	afb00018 	sw	s0,24(sp)
    2e44:	848f00b6 	lh	t7,182(a0)
    2e48:	848e008a 	lh	t6,138(a0)
    2e4c:	00808025 	move	s0,a0
    2e50:	2604018c 	addiu	a0,s0,396
    2e54:	01cf1023 	subu	v0,t6,t7
    2e58:	00021400 	sll	v0,v0,0x10
    2e5c:	00021403 	sra	v0,v0,0x10
    2e60:	04400003 	bltz	v0,2e70 <func_80AA8E88+0x38>
    2e64:	00021823 	negu	v1,v0
    2e68:	10000001 	b	2e70 <func_80AA8E88+0x38>
    2e6c:	00401825 	move	v1,v0
    2e70:	28614001 	slti	at,v1,16385
    2e74:	1020000a 	beqz	at,2ea0 <func_80AA8E88+0x68>
    2e78:	3c050600 	lui	a1,0x600
    2e7c:	3c050600 	lui	a1,0x600
    2e80:	24a51950 	addiu	a1,a1,6480
    2e84:	2604018c 	addiu	a0,s0,396
    2e88:	0c000000 	jal	0 <func_80AA6050>
    2e8c:	3c06c080 	lui	a2,0xc080
    2e90:	3c01c100 	lui	at,0xc100
    2e94:	44812000 	mtc1	at,$f4
    2e98:	10000008 	b	2ebc <func_80AA8E88+0x84>
    2e9c:	e6040068 	swc1	$f4,104(s0)
    2ea0:	24a5095c 	addiu	a1,a1,2396
    2ea4:	0c000000 	jal	0 <func_80AA6050>
    2ea8:	3c06c080 	lui	a2,0xc080
    2eac:	3c014100 	lui	at,0x4100
    2eb0:	44813000 	mtc1	at,$f6
    2eb4:	00000000 	nop
    2eb8:	e6060068 	swc1	$f6,104(s0)
    2ebc:	86190032 	lh	t9,50(s0)
    2ec0:	2418001e 	li	t8,30
    2ec4:	a618032a 	sh	t8,810(s0)
    2ec8:	ae000320 	sw	zero,800(s0)
    2ecc:	02002025 	move	a0,s0
    2ed0:	240538be 	li	a1,14526
    2ed4:	0c000000 	jal	0 <func_80AA6050>
    2ed8:	a61900b6 	sh	t9,182(s0)
    2edc:	3c050000 	lui	a1,0x0
    2ee0:	24a50000 	addiu	a1,a1,0
    2ee4:	0c000000 	jal	0 <func_80AA6050>
    2ee8:	02002025 	move	a0,s0
    2eec:	8fbf001c 	lw	ra,28(sp)
    2ef0:	8fb00018 	lw	s0,24(sp)
    2ef4:	27bd0020 	addiu	sp,sp,32
    2ef8:	03e00008 	jr	ra
    2efc:	00000000 	nop

00002f00 <func_80AA8F50>:
    2f00:	44800000 	mtc1	zero,$f0
    2f04:	27bdffd8 	addiu	sp,sp,-40
    2f08:	afb00020 	sw	s0,32(sp)
    2f0c:	afa5002c 	sw	a1,44(sp)
    2f10:	00808025 	move	s0,a0
    2f14:	afbf0024 	sw	ra,36(sp)
    2f18:	44050000 	mfc1	a1,$f0
    2f1c:	24840068 	addiu	a0,a0,104
    2f20:	3c063f80 	lui	a2,0x3f80
    2f24:	3c073f00 	lui	a3,0x3f00
    2f28:	0c000000 	jal	0 <func_80AA6050>
    2f2c:	e7a00010 	swc1	$f0,16(sp)
    2f30:	0c000000 	jal	0 <func_80AA6050>
    2f34:	2604018c 	addiu	a0,s0,396
    2f38:	5040000b 	beqzl	v0,2f68 <func_80AA8F50+0x68>
    2f3c:	8fbf0024 	lw	ra,36(sp)
    2f40:	860e001c 	lh	t6,28(s0)
    2f44:	05c10005 	bgez	t6,2f5c <func_80AA8F50+0x5c>
    2f48:	00000000 	nop
    2f4c:	0c000000 	jal	0 <func_80AA6050>
    2f50:	02002025 	move	a0,s0
    2f54:	10000004 	b	2f68 <func_80AA8F50+0x68>
    2f58:	8fbf0024 	lw	ra,36(sp)
    2f5c:	0c000000 	jal	0 <func_80AA6050>
    2f60:	02002025 	move	a0,s0
    2f64:	8fbf0024 	lw	ra,36(sp)
    2f68:	8fb00020 	lw	s0,32(sp)
    2f6c:	27bd0028 	addiu	sp,sp,40
    2f70:	03e00008 	jr	ra
    2f74:	00000000 	nop

00002f78 <func_80AA8FC8>:
    2f78:	27bdffe0 	addiu	sp,sp,-32
    2f7c:	afbf001c 	sw	ra,28(sp)
    2f80:	afb00018 	sw	s0,24(sp)
    2f84:	848f00b6 	lh	t7,182(a0)
    2f88:	848e008a 	lh	t6,138(a0)
    2f8c:	00808025 	move	s0,a0
    2f90:	2604018c 	addiu	a0,s0,396
    2f94:	01cf1023 	subu	v0,t6,t7
    2f98:	00021400 	sll	v0,v0,0x10
    2f9c:	00021403 	sra	v0,v0,0x10
    2fa0:	04400003 	bltz	v0,2fb0 <func_80AA8FC8+0x38>
    2fa4:	00021823 	negu	v1,v0
    2fa8:	10000001 	b	2fb0 <func_80AA8FC8+0x38>
    2fac:	00401825 	move	v1,v0
    2fb0:	28614001 	slti	at,v1,16385
    2fb4:	1020000a 	beqz	at,2fe0 <func_80AA8FC8+0x68>
    2fb8:	3c050600 	lui	a1,0x600
    2fbc:	3c050600 	lui	a1,0x600
    2fc0:	24a516b4 	addiu	a1,a1,5812
    2fc4:	2604018c 	addiu	a0,s0,396
    2fc8:	0c000000 	jal	0 <func_80AA6050>
    2fcc:	3c06c080 	lui	a2,0xc080
    2fd0:	3c01c100 	lui	at,0xc100
    2fd4:	44812000 	mtc1	at,$f4
    2fd8:	10000008 	b	2ffc <func_80AA8FC8+0x84>
    2fdc:	e6040068 	swc1	$f4,104(s0)
    2fe0:	24a516b4 	addiu	a1,a1,5812
    2fe4:	0c000000 	jal	0 <func_80AA6050>
    2fe8:	3c06c080 	lui	a2,0xc080
    2fec:	3c014100 	lui	at,0x4100
    2ff0:	44813000 	mtc1	at,$f6
    2ff4:	00000000 	nop
    2ff8:	e6060068 	swc1	$f6,104(s0)
    2ffc:	861800b6 	lh	t8,182(s0)
    3000:	2419001e 	li	t9,30
    3004:	a619032a 	sh	t9,810(s0)
    3008:	ae000320 	sw	zero,800(s0)
    300c:	02002025 	move	a0,s0
    3010:	240538be 	li	a1,14526
    3014:	0c000000 	jal	0 <func_80AA6050>
    3018:	a6180032 	sh	t8,50(s0)
    301c:	8e080004 	lw	t0,4(s0)
    3020:	2401fffe 	li	at,-2
    3024:	3c050000 	lui	a1,0x0
    3028:	01014824 	and	t1,t0,at
    302c:	ae090004 	sw	t1,4(s0)
    3030:	24a50000 	addiu	a1,a1,0
    3034:	0c000000 	jal	0 <func_80AA6050>
    3038:	02002025 	move	a0,s0
    303c:	8fbf001c 	lw	ra,28(sp)
    3040:	8fb00018 	lw	s0,24(sp)
    3044:	27bd0020 	addiu	sp,sp,32
    3048:	03e00008 	jr	ra
    304c:	00000000 	nop

00003050 <func_80AA90A0>:
    3050:	27bdff60 	addiu	sp,sp,-160
    3054:	f7b40048 	sdc1	$f20,72(sp)
    3058:	4480a000 	mtc1	zero,$f20
    305c:	afb40070 	sw	s4,112(sp)
    3060:	afbf0074 	sw	ra,116(sp)
    3064:	afb3006c 	sw	s3,108(sp)
    3068:	afb20068 	sw	s2,104(sp)
    306c:	afb10064 	sw	s1,100(sp)
    3070:	afb00060 	sw	s0,96(sp)
    3074:	f7b80058 	sdc1	$f24,88(sp)
    3078:	f7b60050 	sdc1	$f22,80(sp)
    307c:	00a0a025 	move	s4,a1
    3080:	8cb01c44 	lw	s0,7236(a1)
    3084:	00808825 	move	s1,a0
    3088:	4405a000 	mfc1	a1,$f20
    308c:	24840068 	addiu	a0,a0,104
    3090:	3c063f80 	lui	a2,0x3f80
    3094:	3c073f00 	lui	a3,0x3f00
    3098:	0c000000 	jal	0 <func_80AA6050>
    309c:	e7b40010 	swc1	$f20,16(sp)
    30a0:	8e020680 	lw	v0,1664(s0)
    30a4:	304e0080 	andi	t6,v0,0x80
    30a8:	11c00012 	beqz	t6,30f4 <func_80AA90A0+0xa4>
    30ac:	00000000 	nop
    30b0:	8e0f0118 	lw	t7,280(s0)
    30b4:	3c014080 	lui	at,0x4080
    30b8:	241900c8 	li	t9,200
    30bc:	162f000d 	bne	s1,t7,30f4 <func_80AA90A0+0xa4>
    30c0:	02802025 	move	a0,s4
    30c4:	44810000 	mtc1	at,$f0
    30c8:	2401ff7f 	li	at,-129
    30cc:	0041c024 	and	t8,v0,at
    30d0:	ae180680 	sw	t8,1664(s0)
    30d4:	ae000118 	sw	zero,280(s0)
    30d8:	a6190850 	sh	t9,2128(s0)
    30dc:	86270032 	lh	a3,50(s1)
    30e0:	44060000 	mfc1	a2,$f0
    30e4:	02202825 	move	a1,s1
    30e8:	0c000000 	jal	0 <func_80AA6050>
    30ec:	e7a00010 	swc1	$f0,16(sp)
    30f0:	a6200334 	sh	zero,820(s1)
    30f4:	0c000000 	jal	0 <func_80AA6050>
    30f8:	2624018c 	addiu	a0,s1,396
    30fc:	50400050 	beqzl	v0,3240 <func_80AA90A0+0x1f0>
    3100:	8fbf0074 	lw	ra,116(sp)
    3104:	8628032a 	lh	t0,810(s1)
    3108:	02802025 	move	a0,s4
    310c:	02202825 	move	a1,s1
    3110:	19000046 	blez	t0,322c <func_80AA90A0+0x1dc>
    3114:	26260024 	addiu	a2,s1,36
    3118:	3c090000 	lui	t1,0x0
    311c:	25290000 	addiu	t1,t1,0
    3120:	8d2b0000 	lw	t3,0(t1)
    3124:	27b20090 	addiu	s2,sp,144
    3128:	3c0141a0 	lui	at,0x41a0
    312c:	ae4b0000 	sw	t3,0(s2)
    3130:	8d2a0004 	lw	t2,4(t1)
    3134:	4481c000 	mtc1	at,$f24
    3138:	3c014170 	lui	at,0x4170
    313c:	ae4a0004 	sw	t2,4(s2)
    3140:	8d2b0008 	lw	t3,8(t1)
    3144:	4481b000 	mtc1	at,$f22
    3148:	3c0142dc 	lui	at,0x42dc
    314c:	ae4b0008 	sw	t3,8(s2)
    3150:	862c032a 	lh	t4,810(s1)
    3154:	e63400c4 	swc1	$f20,196(s1)
    3158:	4481a000 	mtc1	at,$f20
    315c:	258dffff 	addiu	t5,t4,-1
    3160:	a62d032a 	sh	t5,810(s1)
    3164:	24100004 	li	s0,4
    3168:	27b30080 	addiu	s3,sp,128
    316c:	0c000000 	jal	0 <func_80AA6050>
    3170:	4600a306 	mov.s	$f12,$f20
    3174:	c6240024 	lwc1	$f4,36(s1)
    3178:	4600b306 	mov.s	$f12,$f22
    317c:	46040180 	add.s	$f6,$f0,$f4
    3180:	0c000000 	jal	0 <func_80AA6050>
    3184:	e7a60080 	swc1	$f6,128(sp)
    3188:	c6280028 	lwc1	$f8,40(s1)
    318c:	4600a306 	mov.s	$f12,$f20
    3190:	46184280 	add.s	$f10,$f8,$f24
    3194:	460a0400 	add.s	$f16,$f0,$f10
    3198:	0c000000 	jal	0 <func_80AA6050>
    319c:	e7b00084 	swc1	$f16,132(sp)
    31a0:	c632002c 	lwc1	$f18,44(s1)
    31a4:	240e0064 	li	t6,100
    31a8:	240f0007 	li	t7,7
    31ac:	46120100 	add.s	$f4,$f0,$f18
    31b0:	241800ff 	li	t8,255
    31b4:	241900ff 	li	t9,255
    31b8:	240800ff 	li	t0,255
    31bc:	240900ff 	li	t1,255
    31c0:	240a00ff 	li	t2,255
    31c4:	240b0001 	li	t3,1
    31c8:	240c0009 	li	t4,9
    31cc:	240d0001 	li	t5,1
    31d0:	e7a40088 	swc1	$f4,136(sp)
    31d4:	afad003c 	sw	t5,60(sp)
    31d8:	afac0038 	sw	t4,56(sp)
    31dc:	afab0034 	sw	t3,52(sp)
    31e0:	afaa002c 	sw	t2,44(sp)
    31e4:	afa90024 	sw	t1,36(sp)
    31e8:	afa80020 	sw	t0,32(sp)
    31ec:	afb9001c 	sw	t9,28(sp)
    31f0:	afb80018 	sw	t8,24(sp)
    31f4:	afaf0014 	sw	t7,20(sp)
    31f8:	afae0010 	sw	t6,16(sp)
    31fc:	afa00030 	sw	zero,48(sp)
    3200:	afa00028 	sw	zero,40(sp)
    3204:	02802025 	move	a0,s4
    3208:	02602825 	move	a1,s3
    320c:	02403025 	move	a2,s2
    3210:	0c000000 	jal	0 <func_80AA6050>
    3214:	02403825 	move	a3,s2
    3218:	2610ffff 	addiu	s0,s0,-1
    321c:	0601ffd3 	bgez	s0,316c <func_80AA90A0+0x11c>
    3220:	00000000 	nop
    3224:	10000006 	b	3240 <func_80AA90A0+0x1f0>
    3228:	8fbf0074 	lw	ra,116(sp)
    322c:	0c000000 	jal	0 <func_80AA6050>
    3230:	240700e0 	li	a3,224
    3234:	0c000000 	jal	0 <func_80AA6050>
    3238:	02202025 	move	a0,s1
    323c:	8fbf0074 	lw	ra,116(sp)
    3240:	d7b40048 	ldc1	$f20,72(sp)
    3244:	d7b60050 	ldc1	$f22,80(sp)
    3248:	d7b80058 	ldc1	$f24,88(sp)
    324c:	8fb00060 	lw	s0,96(sp)
    3250:	8fb10064 	lw	s1,100(sp)
    3254:	8fb20068 	lw	s2,104(sp)
    3258:	8fb3006c 	lw	s3,108(sp)
    325c:	8fb40070 	lw	s4,112(sp)
    3260:	03e00008 	jr	ra
    3264:	27bd00a0 	addiu	sp,sp,160

00003268 <func_80AA92B8>:
    3268:	27bdff90 	addiu	sp,sp,-112
    326c:	3c0e0000 	lui	t6,0x0
    3270:	afbf0024 	sw	ra,36(sp)
    3274:	afb00020 	sw	s0,32(sp)
    3278:	afa50074 	sw	a1,116(sp)
    327c:	25ce0000 	addiu	t6,t6,0
    3280:	8dd80000 	lw	t8,0(t6)
    3284:	27a60064 	addiu	a2,sp,100
    3288:	3c080000 	lui	t0,0x0
    328c:	acd80000 	sw	t8,0(a2)
    3290:	8dcf0004 	lw	t7,4(t6)
    3294:	25080000 	addiu	t0,t0,0
    3298:	27b90058 	addiu	t9,sp,88
    329c:	accf0004 	sw	t7,4(a2)
    32a0:	8dd80008 	lw	t8,8(t6)
    32a4:	3c0c0000 	lui	t4,0x0
    32a8:	258c0000 	addiu	t4,t4,0
    32ac:	acd80008 	sw	t8,8(a2)
    32b0:	8d0a0000 	lw	t2,0(t0)
    32b4:	8d090004 	lw	t1,4(t0)
    32b8:	27ab004c 	addiu	t3,sp,76
    32bc:	af2a0000 	sw	t2,0(t9)
    32c0:	8d0a0008 	lw	t2,8(t0)
    32c4:	af290004 	sw	t1,4(t9)
    32c8:	3c180000 	lui	t8,0x0
    32cc:	af2a0008 	sw	t2,8(t9)
    32d0:	8d8e0000 	lw	t6,0(t4)
    32d4:	8d8d0004 	lw	t5,4(t4)
    32d8:	27180000 	addiu	t8,t8,0
    32dc:	ad6e0000 	sw	t6,0(t3)
    32e0:	8d8e0008 	lw	t6,8(t4)
    32e4:	ad6d0004 	sw	t5,4(t3)
    32e8:	27af0040 	addiu	t7,sp,64
    32ec:	ad6e0008 	sw	t6,8(t3)
    32f0:	8f080000 	lw	t0,0(t8)
    32f4:	8f190004 	lw	t9,4(t8)
    32f8:	00808025 	move	s0,a0
    32fc:	ade80000 	sw	t0,0(t7)
    3300:	8f080008 	lw	t0,8(t8)
    3304:	adf90004 	sw	t9,4(t7)
    3308:	3c0144fa 	lui	at,0x44fa
    330c:	ade80008 	sw	t0,8(t7)
    3310:	8489001c 	lh	t1,28(a0)
    3314:	c7a40064 	lwc1	$f4,100(sp)
    3318:	00c02025 	move	a0,a2
    331c:	19200019 	blez	t1,3384 <func_80AA92B8+0x11c>
    3320:	26050400 	addiu	a1,s0,1024
    3324:	44810000 	mtc1	at,$f0
    3328:	c7a8004c 	lwc1	$f8,76(sp)
    332c:	c7b00058 	lwc1	$f16,88(sp)
    3330:	3c01c57a 	lui	at,0xc57a
    3334:	44811000 	mtc1	at,$f2
    3338:	46002180 	add.s	$f6,$f4,$f0
    333c:	3c01457a 	lui	at,0x457a
    3340:	44816000 	mtc1	at,$f12
    3344:	46004280 	add.s	$f10,$f8,$f0
    3348:	c7a40040 	lwc1	$f4,64(sp)
    334c:	c7a80054 	lwc1	$f8,84(sp)
    3350:	46008481 	sub.s	$f18,$f16,$f0
    3354:	c7b00048 	lwc1	$f16,72(sp)
    3358:	e7a60064 	swc1	$f6,100(sp)
    335c:	e7aa004c 	swc1	$f10,76(sp)
    3360:	e7b20058 	swc1	$f18,88(sp)
    3364:	46002181 	sub.s	$f6,$f4,$f0
    3368:	e7a2006c 	swc1	$f2,108(sp)
    336c:	e7a20060 	swc1	$f2,96(sp)
    3370:	460c4280 	add.s	$f10,$f8,$f12
    3374:	e7a60040 	swc1	$f6,64(sp)
    3378:	460c8480 	add.s	$f18,$f16,$f12
    337c:	e7aa0054 	swc1	$f10,84(sp)
    3380:	e7b20048 	swc1	$f18,72(sp)
    3384:	0c000000 	jal	0 <func_80AA6050>
    3388:	afa50034 	sw	a1,52(sp)
    338c:	260503f4 	addiu	a1,s0,1012
    3390:	afa50038 	sw	a1,56(sp)
    3394:	0c000000 	jal	0 <func_80AA6050>
    3398:	27a40058 	addiu	a0,sp,88
    339c:	26050418 	addiu	a1,s0,1048
    33a0:	afa5002c 	sw	a1,44(sp)
    33a4:	0c000000 	jal	0 <func_80AA6050>
    33a8:	27a4004c 	addiu	a0,sp,76
    33ac:	2607040c 	addiu	a3,s0,1036
    33b0:	00e02825 	move	a1,a3
    33b4:	afa70030 	sw	a3,48(sp)
    33b8:	0c000000 	jal	0 <func_80AA6050>
    33bc:	27a40040 	addiu	a0,sp,64
    33c0:	8faa002c 	lw	t2,44(sp)
    33c4:	8fa70030 	lw	a3,48(sp)
    33c8:	260403b4 	addiu	a0,s0,948
    33cc:	8fa50038 	lw	a1,56(sp)
    33d0:	8fa60034 	lw	a2,52(sp)
    33d4:	0c000000 	jal	0 <func_80AA6050>
    33d8:	afaa0010 	sw	t2,16(sp)
    33dc:	8fbf0024 	lw	ra,36(sp)
    33e0:	8fb00020 	lw	s0,32(sp)
    33e4:	27bd0070 	addiu	sp,sp,112
    33e8:	03e00008 	jr	ra
    33ec:	00000000 	nop

000033f0 <func_80AA9440>:
    33f0:	27bdffc0 	addiu	sp,sp,-64
    33f4:	afb00020 	sw	s0,32(sp)
    33f8:	00808025 	move	s0,a0
    33fc:	afa50044 	sw	a1,68(sp)
    3400:	afbf0024 	sw	ra,36(sp)
    3404:	26050400 	addiu	a1,s0,1024
    3408:	3c040000 	lui	a0,0x0
    340c:	24840000 	addiu	a0,a0,0
    3410:	0c000000 	jal	0 <func_80AA6050>
    3414:	afa50038 	sw	a1,56(sp)
    3418:	3c040000 	lui	a0,0x0
    341c:	260503f4 	addiu	a1,s0,1012
    3420:	afa50034 	sw	a1,52(sp)
    3424:	0c000000 	jal	0 <func_80AA6050>
    3428:	24840000 	addiu	a0,a0,0
    342c:	3c040000 	lui	a0,0x0
    3430:	26050418 	addiu	a1,s0,1048
    3434:	afa5002c 	sw	a1,44(sp)
    3438:	0c000000 	jal	0 <func_80AA6050>
    343c:	24840000 	addiu	a0,a0,0
    3440:	3c040000 	lui	a0,0x0
    3444:	2607040c 	addiu	a3,s0,1036
    3448:	00e02825 	move	a1,a3
    344c:	afa70030 	sw	a3,48(sp)
    3450:	0c000000 	jal	0 <func_80AA6050>
    3454:	24840000 	addiu	a0,a0,0
    3458:	8fae002c 	lw	t6,44(sp)
    345c:	8fa70030 	lw	a3,48(sp)
    3460:	260403b4 	addiu	a0,s0,948
    3464:	8fa50034 	lw	a1,52(sp)
    3468:	8fa60038 	lw	a2,56(sp)
    346c:	0c000000 	jal	0 <func_80AA6050>
    3470:	afae0010 	sw	t6,16(sp)
    3474:	8fbf0024 	lw	ra,36(sp)
    3478:	8fb00020 	lw	s0,32(sp)
    347c:	27bd0040 	addiu	sp,sp,64
    3480:	03e00008 	jr	ra
    3484:	00000000 	nop

00003488 <func_80AA94D8>:
    3488:	27bdffd8 	addiu	sp,sp,-40
    348c:	afbf0024 	sw	ra,36(sp)
    3490:	afb00020 	sw	s0,32(sp)
    3494:	afa5002c 	sw	a1,44(sp)
    3498:	90820445 	lbu	v0,1093(a0)
    349c:	00808025 	move	s0,a0
    34a0:	8ca31c44 	lw	v1,7236(a1)
    34a4:	304f0002 	andi	t7,v0,0x2
    34a8:	51e00008 	beqzl	t7,34cc <func_80AA94D8+0x44>
    34ac:	92040379 	lbu	a0,889(s0)
    34b0:	90990379 	lbu	t9,889(a0)
    34b4:	3058ff7d 	andi	t8,v0,0xff7d
    34b8:	a0980445 	sb	t8,1093(a0)
    34bc:	3328fffd 	andi	t0,t9,0xfffd
    34c0:	1000005f 	b	3640 <func_80AA94D8+0x1b8>
    34c4:	a0880379 	sb	t0,889(a0)
    34c8:	92040379 	lbu	a0,889(s0)
    34cc:	30890002 	andi	t1,a0,0x2
    34d0:	5120005c 	beqzl	t1,3644 <func_80AA94D8+0x1bc>
    34d4:	8fbf0024 	lw	ra,36(sp)
    34d8:	8e0a0320 	lw	t2,800(s0)
    34dc:	29410005 	slti	at,t2,5
    34e0:	54200058 	bnezl	at,3644 <func_80AA94D8+0x1bc>
    34e4:	8fbf0024 	lw	ra,36(sp)
    34e8:	920700b1 	lbu	a3,177(s0)
    34ec:	308bfffd 	andi	t3,a0,0xfffd
    34f0:	a20b0379 	sb	t3,889(s0)
    34f4:	10e00052 	beqz	a3,3640 <func_80AA94D8+0x1b8>
    34f8:	24010005 	li	at,5
    34fc:	50e10051 	beql	a3,at,3644 <func_80AA94D8+0x1bc>
    3500:	8fbf0024 	lw	ra,36(sp)
    3504:	8c620680 	lw	v0,1664(v1)
    3508:	304c0080 	andi	t4,v0,0x80
    350c:	51800013 	beqzl	t4,355c <func_80AA94D8+0xd4>
    3510:	a2070188 	sb	a3,392(s0)
    3514:	8c6d0118 	lw	t5,280(v1)
    3518:	3c0140c0 	lui	at,0x40c0
    351c:	240f00c8 	li	t7,200
    3520:	160d000d 	bne	s0,t5,3558 <func_80AA94D8+0xd0>
    3524:	02002825 	move	a1,s0
    3528:	44810000 	mtc1	at,$f0
    352c:	2401ff7f 	li	at,-129
    3530:	00417024 	and	t6,v0,at
    3534:	ac6e0680 	sw	t6,1664(v1)
    3538:	ac600118 	sw	zero,280(v1)
    353c:	a46f0850 	sh	t7,2128(v1)
    3540:	86070032 	lh	a3,50(s0)
    3544:	44060000 	mfc1	a2,$f0
    3548:	8fa4002c 	lw	a0,44(sp)
    354c:	0c000000 	jal	0 <func_80AA6050>
    3550:	e7a00010 	swc1	$f0,16(sp)
    3554:	920700b1 	lbu	a3,177(s0)
    3558:	a2070188 	sb	a3,392(s0)
    355c:	a6000334 	sh	zero,820(s0)
    3560:	02002025 	move	a0,s0
    3564:	26050380 	addiu	a1,s0,896
    3568:	0c000000 	jal	0 <func_80AA6050>
    356c:	00003025 	move	a2,zero
    3570:	920200b1 	lbu	v0,177(s0)
    3574:	24010001 	li	at,1
    3578:	10410003 	beq	v0,at,3588 <func_80AA94D8+0x100>
    357c:	24010006 	li	at,6
    3580:	1441000b 	bne	v0,at,35b0 <func_80AA94D8+0x128>
    3584:	00000000 	nop
    3588:	8e180320 	lw	t8,800(s0)
    358c:	24010005 	li	at,5
    3590:	5301002c 	beql	t8,at,3644 <func_80AA94D8+0x1bc>
    3594:	8fbf0024 	lw	ra,36(sp)
    3598:	0c000000 	jal	0 <func_80AA6050>
    359c:	02002025 	move	a0,s0
    35a0:	0c000000 	jal	0 <func_80AA6050>
    35a4:	02002025 	move	a0,s0
    35a8:	10000026 	b	3644 <func_80AA94D8+0x1bc>
    35ac:	8fbf0024 	lw	ra,36(sp)
    35b0:	0c000000 	jal	0 <func_80AA6050>
    35b4:	02002025 	move	a0,s0
    35b8:	2419000c 	li	t9,12
    35bc:	afb90010 	sw	t9,16(sp)
    35c0:	02002025 	move	a0,s0
    35c4:	24054000 	li	a1,16384
    35c8:	240600fa 	li	a2,250
    35cc:	0c000000 	jal	0 <func_80AA6050>
    35d0:	00003825 	move	a3,zero
    35d4:	8608001c 	lh	t0,28(s0)
    35d8:	55000011 	bnezl	t0,3620 <func_80AA94D8+0x198>
    35dc:	920b00af 	lbu	t3,175(s0)
    35e0:	920900af 	lbu	t1,175(s0)
    35e4:	55200006 	bnezl	t1,3600 <func_80AA94D8+0x178>
    35e8:	8e0a0320 	lw	t2,800(s0)
    35ec:	0c000000 	jal	0 <func_80AA6050>
    35f0:	02002025 	move	a0,s0
    35f4:	10000013 	b	3644 <func_80AA94D8+0x1bc>
    35f8:	8fbf0024 	lw	ra,36(sp)
    35fc:	8e0a0320 	lw	t2,800(s0)
    3600:	24010003 	li	at,3
    3604:	5141000f 	beql	t2,at,3644 <func_80AA94D8+0x1bc>
    3608:	8fbf0024 	lw	ra,36(sp)
    360c:	0c000000 	jal	0 <func_80AA6050>
    3610:	02002025 	move	a0,s0
    3614:	1000000b 	b	3644 <func_80AA94D8+0x1bc>
    3618:	8fbf0024 	lw	ra,36(sp)
    361c:	920b00af 	lbu	t3,175(s0)
    3620:	15600005 	bnez	t3,3638 <func_80AA94D8+0x1b0>
    3624:	00000000 	nop
    3628:	0c000000 	jal	0 <func_80AA6050>
    362c:	02002025 	move	a0,s0
    3630:	10000004 	b	3644 <func_80AA94D8+0x1bc>
    3634:	8fbf0024 	lw	ra,36(sp)
    3638:	0c000000 	jal	0 <func_80AA6050>
    363c:	02002025 	move	a0,s0
    3640:	8fbf0024 	lw	ra,36(sp)
    3644:	8fb00020 	lw	s0,32(sp)
    3648:	27bd0028 	addiu	sp,sp,40
    364c:	03e00008 	jr	ra
    3650:	00000000 	nop

00003654 <EnMb_Update>:
    3654:	27bdffc0 	addiu	sp,sp,-64
    3658:	afbf0024 	sw	ra,36(sp)
    365c:	afb10020 	sw	s1,32(sp)
    3660:	afb0001c 	sw	s0,28(sp)
    3664:	00808025 	move	s0,a0
    3668:	0c000000 	jal	0 <func_80AA6050>
    366c:	00a08825 	move	s1,a1
    3670:	920e00b1 	lbu	t6,177(s0)
    3674:	24010005 	li	at,5
    3678:	51c10065 	beql	t6,at,3810 <EnMb_Update+0x1bc>
    367c:	8fbf0024 	lw	ra,36(sp)
    3680:	8e190324 	lw	t9,804(s0)
    3684:	02002025 	move	a0,s0
    3688:	02202825 	move	a1,s1
    368c:	0320f809 	jalr	t9
    3690:	00000000 	nop
    3694:	0c000000 	jal	0 <func_80AA6050>
    3698:	02002025 	move	a0,s0
    369c:	3c014220 	lui	at,0x4220
    36a0:	44810000 	mtc1	at,$f0
    36a4:	3c01428c 	lui	at,0x428c
    36a8:	44812000 	mtc1	at,$f4
    36ac:	240f001d 	li	t7,29
    36b0:	44060000 	mfc1	a2,$f0
    36b4:	44070000 	mfc1	a3,$f0
    36b8:	afaf0014 	sw	t7,20(sp)
    36bc:	02202025 	move	a0,s1
    36c0:	02002825 	move	a1,s0
    36c4:	0c000000 	jal	0 <func_80AA6050>
    36c8:	e7a40010 	swc1	$f4,16(sp)
    36cc:	3c010000 	lui	at,0x0
    36d0:	c4280000 	lwc1	$f8,0(at)
    36d4:	c6060050 	lwc1	$f6,80(s0)
    36d8:	02002025 	move	a0,s0
    36dc:	46083282 	mul.s	$f10,$f6,$f8
    36e0:	44055000 	mfc1	a1,$f10
    36e4:	0c000000 	jal	0 <func_80AA6050>
    36e8:	00000000 	nop
    36ec:	26050368 	addiu	a1,s0,872
    36f0:	afa50028 	sw	a1,40(sp)
    36f4:	0c000000 	jal	0 <func_80AA6050>
    36f8:	02002025 	move	a0,s0
    36fc:	921800af 	lbu	t8,175(s0)
    3700:	5f000021 	bgtzl	t8,3788 <EnMb_Update+0x134>
    3704:	3c010001 	lui	at,0x1
    3708:	0c000000 	jal	0 <func_80AA6050>
    370c:	860400b6 	lh	a0,182(s0)
    3710:	3c010000 	lui	at,0x0
    3714:	c4300000 	lwc1	$f16,0(at)
    3718:	c6120054 	lwc1	$f18,84(s0)
    371c:	860803ae 	lh	t0,942(s0)
    3720:	860400b6 	lh	a0,182(s0)
    3724:	46128102 	mul.s	$f4,$f16,$f18
    3728:	44884000 	mtc1	t0,$f8
    372c:	00000000 	nop
    3730:	468042a0 	cvt.s.w	$f10,$f8
    3734:	46040182 	mul.s	$f6,$f0,$f4
    3738:	46065400 	add.s	$f16,$f10,$f6
    373c:	4600848d 	trunc.w.s	$f18,$f16
    3740:	440a9000 	mfc1	t2,$f18
    3744:	0c000000 	jal	0 <func_80AA6050>
    3748:	a60a03ae 	sh	t2,942(s0)
    374c:	3c010000 	lui	at,0x0
    3750:	c4240000 	lwc1	$f4,0(at)
    3754:	c6080054 	lwc1	$f8,84(s0)
    3758:	860b03b2 	lh	t3,946(s0)
    375c:	46082282 	mul.s	$f10,$f4,$f8
    3760:	448b8000 	mtc1	t3,$f16
    3764:	00000000 	nop
    3768:	468084a0 	cvt.s.w	$f18,$f16
    376c:	460a0182 	mul.s	$f6,$f0,$f10
    3770:	46069100 	add.s	$f4,$f18,$f6
    3774:	4600220d 	trunc.w.s	$f8,$f4
    3778:	440d4000 	mfc1	t5,$f8
    377c:	00000000 	nop
    3780:	a60d03b2 	sh	t5,946(s0)
    3784:	3c010001 	lui	at,0x1
    3788:	34211e60 	ori	at,at,0x1e60
    378c:	02212821 	addu	a1,s1,at
    3790:	afa50030 	sw	a1,48(sp)
    3794:	02202025 	move	a0,s1
    3798:	0c000000 	jal	0 <func_80AA6050>
    379c:	8fa60028 	lw	a2,40(sp)
    37a0:	8e020320 	lw	v0,800(s0)
    37a4:	28410005 	slti	at,v0,5
    37a8:	5420000c 	bnezl	at,37dc <EnMb_Update+0x188>
    37ac:	28410006 	slti	at,v0,6
    37b0:	860e001c 	lh	t6,28(s0)
    37b4:	2401000a 	li	at,10
    37b8:	02202025 	move	a0,s1
    37bc:	11c00003 	beqz	t6,37cc <EnMb_Update+0x178>
    37c0:	8fa50030 	lw	a1,48(sp)
    37c4:	50410005 	beql	v0,at,37dc <EnMb_Update+0x188>
    37c8:	28410006 	slti	at,v0,6
    37cc:	0c000000 	jal	0 <func_80AA6050>
    37d0:	8fa60028 	lw	a2,40(sp)
    37d4:	8e020320 	lw	v0,800(s0)
    37d8:	28410006 	slti	at,v0,6
    37dc:	14200004 	bnez	at,37f0 <EnMb_Update+0x19c>
    37e0:	02202025 	move	a0,s1
    37e4:	8fa50030 	lw	a1,48(sp)
    37e8:	0c000000 	jal	0 <func_80AA6050>
    37ec:	26060434 	addiu	a2,s0,1076
    37f0:	86190334 	lh	t9,820(s0)
    37f4:	02202025 	move	a0,s1
    37f8:	8fa50030 	lw	a1,48(sp)
    37fc:	5b200004 	blezl	t9,3810 <EnMb_Update+0x1bc>
    3800:	8fbf0024 	lw	ra,36(sp)
    3804:	0c000000 	jal	0 <func_80AA6050>
    3808:	260603b4 	addiu	a2,s0,948
    380c:	8fbf0024 	lw	ra,36(sp)
    3810:	8fb0001c 	lw	s0,28(sp)
    3814:	8fb10020 	lw	s1,32(sp)
    3818:	03e00008 	jr	ra
    381c:	27bd0040 	addiu	sp,sp,64

00003820 <func_80AA9870>:
    3820:	27bdffc8 	addiu	sp,sp,-56
    3824:	8fae0048 	lw	t6,72(sp)
    3828:	afbf001c 	sw	ra,28(sp)
    382c:	afa40038 	sw	a0,56(sp)
    3830:	afa5003c 	sw	a1,60(sp)
    3834:	afa60040 	sw	a2,64(sp)
    3838:	afa70044 	sw	a3,68(sp)
    383c:	85cf001c 	lh	t7,28(t6)
    3840:	2403ffff 	li	v1,-1
    3844:	2401000c 	li	at,12
    3848:	55e0001d 	bnezl	t7,38c0 <func_80AA9870+0xa0>
    384c:	8faa0048 	lw	t2,72(sp)
    3850:	14a1000f 	bne	a1,at,3890 <func_80AA9870+0x70>
    3854:	3c040000 	lui	a0,0x0
    3858:	24840000 	addiu	a0,a0,0
    385c:	25c50338 	addiu	a1,t6,824
    3860:	0c000000 	jal	0 <func_80AA6050>
    3864:	afa30034 	sw	v1,52(sp)
    3868:	8fb90048 	lw	t9,72(sp)
    386c:	8fa30034 	lw	v1,52(sp)
    3870:	8fa50038 	lw	a1,56(sp)
    3874:	87280334 	lh	t0,820(t9)
    3878:	03202025 	move	a0,t9
    387c:	19000004 	blez	t0,3890 <func_80AA9870+0x70>
    3880:	00000000 	nop
    3884:	0c000000 	jal	0 <func_80AA6050>
    3888:	afa30034 	sw	v1,52(sp)
    388c:	8fa30034 	lw	v1,52(sp)
    3890:	3c070000 	lui	a3,0x0
    3894:	24e70000 	addiu	a3,a3,0
    3898:	2409001b 	li	t1,27
    389c:	afa90010 	sw	t1,16(sp)
    38a0:	afa70014 	sw	a3,20(sp)
    38a4:	8fa40048 	lw	a0,72(sp)
    38a8:	8fa5003c 	lw	a1,60(sp)
    38ac:	24060016 	li	a2,22
    38b0:	0c000000 	jal	0 <func_80AA6050>
    38b4:	afa30034 	sw	v1,52(sp)
    38b8:	8fa30034 	lw	v1,52(sp)
    38bc:	8faa0048 	lw	t2,72(sp)
    38c0:	8fac003c 	lw	t4,60(sp)
    38c4:	854b0328 	lh	t3,808(t2)
    38c8:	258dfffa 	addiu	t5,t4,-6
    38cc:	2da10016 	sltiu	at,t5,22
    38d0:	51600036 	beqzl	t3,39ac <L80AA9990+0x6c>
    38d4:	8fbf001c 	lw	ra,28(sp)
    38d8:	10200019 	beqz	at,3940 <L80AA9990>
    38dc:	000d6880 	sll	t5,t5,0x2
    38e0:	3c010000 	lui	at,0x0
    38e4:	002d0821 	addu	at,at,t5
    38e8:	8c2d0000 	lw	t5,0(at)
    38ec:	01a00008 	jr	t5
    38f0:	00000000 	nop

000038f4 <L80AA9944>:
    38f4:	10000012 	b	3940 <L80AA9990>
    38f8:	00001825 	move	v1,zero

000038fc <L80AA994C>:
    38fc:	10000010 	b	3940 <L80AA9990>
    3900:	24030001 	li	v1,1

00003904 <L80AA9954>:
    3904:	1000000e 	b	3940 <L80AA9990>
    3908:	24030002 	li	v1,2

0000390c <L80AA995C>:
    390c:	1000000c 	b	3940 <L80AA9990>
    3910:	24030003 	li	v1,3

00003914 <L80AA9964>:
    3914:	1000000a 	b	3940 <L80AA9990>
    3918:	24030004 	li	v1,4

0000391c <L80AA996C>:
    391c:	10000008 	b	3940 <L80AA9990>
    3920:	24030005 	li	v1,5

00003924 <L80AA9974>:
    3924:	10000006 	b	3940 <L80AA9990>
    3928:	24030006 	li	v1,6

0000392c <L80AA997C>:
    392c:	10000004 	b	3940 <L80AA9990>
    3930:	24030007 	li	v1,7

00003934 <L80AA9984>:
    3934:	10000002 	b	3940 <L80AA9990>
    3938:	24030008 	li	v1,8

0000393c <L80AA998C>:
    393c:	24030009 	li	v1,9

00003940 <L80AA9990>:
    3940:	04600019 	bltz	v1,39a8 <L80AA9990+0x68>
    3944:	3c040000 	lui	a0,0x0
    3948:	24840000 	addiu	a0,a0,0
    394c:	27a50024 	addiu	a1,sp,36
    3950:	0c000000 	jal	0 <func_80AA6050>
    3954:	afa30034 	sw	v1,52(sp)
    3958:	c7a40024 	lwc1	$f4,36(sp)
    395c:	8fa30034 	lw	v1,52(sp)
    3960:	8faf0048 	lw	t7,72(sp)
    3964:	4600218d 	trunc.w.s	$f6,$f4
    3968:	0003c080 	sll	t8,v1,0x2
    396c:	0303c023 	subu	t8,t8,v1
    3970:	0018c040 	sll	t8,t8,0x1
    3974:	44083000 	mfc1	t0,$f6
    3978:	01f81021 	addu	v0,t7,t8
    397c:	a448014c 	sh	t0,332(v0)
    3980:	c7a80028 	lwc1	$f8,40(sp)
    3984:	4600428d 	trunc.w.s	$f10,$f8
    3988:	44095000 	mfc1	t1,$f10
    398c:	00000000 	nop
    3990:	a449014e 	sh	t1,334(v0)
    3994:	c7b0002c 	lwc1	$f16,44(sp)
    3998:	4600848d 	trunc.w.s	$f18,$f16
    399c:	440b9000 	mfc1	t3,$f18
    39a0:	00000000 	nop
    39a4:	a44b0150 	sh	t3,336(v0)
    39a8:	8fbf001c 	lw	ra,28(sp)
    39ac:	27bd0038 	addiu	sp,sp,56
    39b0:	03e00008 	jr	ra
    39b4:	00000000 	nop

000039b8 <EnMb_Draw>:
    39b8:	27bdff48 	addiu	sp,sp,-184
    39bc:	afb50048 	sw	s5,72(sp)
    39c0:	0080a825 	move	s5,a0
    39c4:	afbf004c 	sw	ra,76(sp)
    39c8:	afb40044 	sw	s4,68(sp)
    39cc:	afb30040 	sw	s3,64(sp)
    39d0:	afb2003c 	sw	s2,60(sp)
    39d4:	afb10038 	sw	s1,56(sp)
    39d8:	afb00034 	sw	s0,52(sp)
    39dc:	afa500bc 	sw	a1,188(sp)
    39e0:	0c000000 	jal	0 <func_80AA6050>
    39e4:	8ca40000 	lw	a0,0(a1)
    39e8:	8ea50190 	lw	a1,400(s5)
    39ec:	8ea601ac 	lw	a2,428(s5)
    39f0:	92a7018e 	lbu	a3,398(s5)
    39f4:	3c0f0000 	lui	t7,0x0
    39f8:	25ef0000 	addiu	t7,t7,0
    39fc:	afaf0014 	sw	t7,20(sp)
    3a00:	afb50018 	sw	s5,24(sp)
    3a04:	afa00010 	sw	zero,16(sp)
    3a08:	0c000000 	jal	0 <func_80AA6050>
    3a0c:	8fa400bc 	lw	a0,188(sp)
    3a10:	86b8001c 	lh	t8,28(s5)
    3a14:	53000029 	beqzl	t8,3abc <EnMb_Draw+0x104>
    3a18:	86aa0328 	lh	t2,808(s5)
    3a1c:	86b90334 	lh	t9,820(s5)
    3a20:	02a02025 	move	a0,s5
    3a24:	1b200003 	blez	t9,3a34 <EnMb_Draw+0x7c>
    3a28:	00000000 	nop
    3a2c:	0c000000 	jal	0 <func_80AA6050>
    3a30:	8fa500bc 	lw	a1,188(sp)
    3a34:	3c110000 	lui	s1,0x0
    3a38:	3c130000 	lui	s3,0x0
    3a3c:	26730000 	addiu	s3,s3,0
    3a40:	26310000 	addiu	s1,s1,0
    3a44:	27b2008c 	addiu	s2,sp,140
    3a48:	27b00068 	addiu	s0,sp,104
    3a4c:	27b4008c 	addiu	s4,sp,140
    3a50:	02202025 	move	a0,s1
    3a54:	0c000000 	jal	0 <func_80AA6050>
    3a58:	02402825 	move	a1,s2
    3a5c:	02602025 	move	a0,s3
    3a60:	0c000000 	jal	0 <func_80AA6050>
    3a64:	02002825 	move	a1,s0
    3a68:	2610000c 	addiu	s0,s0,12
    3a6c:	2631000c 	addiu	s1,s1,12
    3a70:	2652000c 	addiu	s2,s2,12
    3a74:	1614fff6 	bne	s0,s4,3a50 <EnMb_Draw+0x98>
    3a78:	2673000c 	addiu	s3,s3,12
    3a7c:	26b00434 	addiu	s0,s5,1076
    3a80:	27a800a4 	addiu	t0,sp,164
    3a84:	afa80010 	sw	t0,16(sp)
    3a88:	02002025 	move	a0,s0
    3a8c:	00002825 	move	a1,zero
    3a90:	27a6008c 	addiu	a2,sp,140
    3a94:	0c000000 	jal	0 <func_80AA6050>
    3a98:	27a70098 	addiu	a3,sp,152
    3a9c:	27a90080 	addiu	t1,sp,128
    3aa0:	afa90010 	sw	t1,16(sp)
    3aa4:	02002025 	move	a0,s0
    3aa8:	24050001 	li	a1,1
    3aac:	27a60068 	addiu	a2,sp,104
    3ab0:	0c000000 	jal	0 <func_80AA6050>
    3ab4:	27a70074 	addiu	a3,sp,116
    3ab8:	86aa0328 	lh	t2,808(s5)
    3abc:	5140002a 	beqzl	t2,3b68 <EnMb_Draw+0x1b0>
    3ac0:	8fbf004c 	lw	ra,76(sp)
    3ac4:	92ab0114 	lbu	t3,276(s5)
    3ac8:	86a30328 	lh	v1,808(s5)
    3acc:	02a02825 	move	a1,s5
    3ad0:	256c0001 	addiu	t4,t3,1
    3ad4:	04600004 	bltz	v1,3ae8 <EnMb_Draw+0x130>
    3ad8:	a2ac0114 	sb	t4,276(s5)
    3adc:	246dffff 	addiu	t5,v1,-1
    3ae0:	a6ad0328 	sh	t5,808(s5)
    3ae4:	86a30328 	lh	v1,808(s5)
    3ae8:	306e0003 	andi	t6,v1,0x3
    3aec:	15c0001d 	bnez	t6,3b64 <EnMb_Draw+0x1ac>
    3af0:	00031083 	sra	v0,v1,0x2
    3af4:	86af001c 	lh	t7,28(s5)
    3af8:	3c014020 	lui	at,0x4020
    3afc:	44810000 	mtc1	at,$f0
    3b00:	15e00004 	bnez	t7,3b14 <EnMb_Draw+0x15c>
    3b04:	8fa400bc 	lw	a0,188(sp)
    3b08:	3c014080 	lui	at,0x4080
    3b0c:	44810000 	mtc1	at,$f0
    3b10:	00000000 	nop
    3b14:	0002c080 	sll	t8,v0,0x2
    3b18:	0302c023 	subu	t8,t8,v0
    3b1c:	0018c040 	sll	t8,t8,0x1
    3b20:	02b83021 	addu	a2,s5,t8
    3b24:	24190096 	li	t9,150
    3b28:	24080096 	li	t0,150
    3b2c:	240900fa 	li	t1,250
    3b30:	240a00eb 	li	t2,235
    3b34:	240b00f5 	li	t3,245
    3b38:	240c00ff 	li	t4,255
    3b3c:	afac0024 	sw	t4,36(sp)
    3b40:	afab0020 	sw	t3,32(sp)
    3b44:	afaa001c 	sw	t2,28(sp)
    3b48:	afa90018 	sw	t1,24(sp)
    3b4c:	afa80014 	sw	t0,20(sp)
    3b50:	afb90010 	sw	t9,16(sp)
    3b54:	24c6014c 	addiu	a2,a2,332
    3b58:	24070096 	li	a3,150
    3b5c:	0c000000 	jal	0 <func_80AA6050>
    3b60:	e7a00028 	swc1	$f0,40(sp)
    3b64:	8fbf004c 	lw	ra,76(sp)
    3b68:	8fb00034 	lw	s0,52(sp)
    3b6c:	8fb10038 	lw	s1,56(sp)
    3b70:	8fb2003c 	lw	s2,60(sp)
    3b74:	8fb30040 	lw	s3,64(sp)
    3b78:	8fb40044 	lw	s4,68(sp)
    3b7c:	8fb50048 	lw	s5,72(sp)
    3b80:	03e00008 	jr	ra
    3b84:	27bd00b8 	addiu	sp,sp,184
	...
