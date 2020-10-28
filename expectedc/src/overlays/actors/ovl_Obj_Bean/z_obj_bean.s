
build/src/overlays/actors/ovl_Obj_Bean/z_obj_bean.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <func_80B8EA80>:
       0:	27bdffe0 	addiu	sp,sp,-32
       4:	00803025 	move	a2,a0
       8:	afa50024 	sw	a1,36(sp)
       c:	00a02025 	move	a0,a1
      10:	afbf0014 	sw	ra,20(sp)
      14:	24c50168 	addiu	a1,a2,360
      18:	afa50018 	sw	a1,24(sp)
      1c:	0c000000 	jal	0 <func_80B8EA80>
      20:	afa60020 	sw	a2,32(sp)
      24:	3c070000 	lui	a3,0x0
      28:	8fa60020 	lw	a2,32(sp)
      2c:	24e70000 	addiu	a3,a3,0
      30:	8fa40024 	lw	a0,36(sp)
      34:	0c000000 	jal	0 <func_80B8EA80>
      38:	8fa50018 	lw	a1,24(sp)
      3c:	8fa40020 	lw	a0,32(sp)
      40:	0c000000 	jal	0 <func_80B8EA80>
      44:	8fa50018 	lw	a1,24(sp)
      48:	8fbf0014 	lw	ra,20(sp)
      4c:	27bd0020 	addiu	sp,sp,32
      50:	03e00008 	jr	ra
      54:	00000000 	nop

00000058 <func_80B8EAD8>:
      58:	27bdffc8 	addiu	sp,sp,-56
      5c:	afbf0024 	sw	ra,36(sp)
      60:	afb00020 	sw	s0,32(sp)
      64:	afa5003c 	sw	a1,60(sp)
      68:	00808025 	move	s0,a0
      6c:	afa60040 	sw	a2,64(sp)
      70:	afa00030 	sw	zero,48(sp)
      74:	0c000000 	jal	0 <func_80B8EA80>
      78:	00e02825 	move	a1,a3
      7c:	8fa40040 	lw	a0,64(sp)
      80:	0c000000 	jal	0 <func_80B8EA80>
      84:	27a50030 	addiu	a1,sp,48
      88:	8fa4003c 	lw	a0,60(sp)
      8c:	02003025 	move	a2,s0
      90:	8fa70030 	lw	a3,48(sp)
      94:	0c000000 	jal	0 <func_80B8EA80>
      98:	24850810 	addiu	a1,a0,2064
      9c:	24010032 	li	at,50
      a0:	1441000a 	bne	v0,at,cc <func_80B8EAD8+0x74>
      a4:	ae02014c 	sw	v0,332(s0)
      a8:	860e001c 	lh	t6,28(s0)
      ac:	3c040000 	lui	a0,0x0
      b0:	3c050000 	lui	a1,0x0
      b4:	86070000 	lh	a3,0(s0)
      b8:	24a50000 	addiu	a1,a1,0
      bc:	24840000 	addiu	a0,a0,0
      c0:	24060176 	li	a2,374
      c4:	0c000000 	jal	0 <func_80B8EA80>
      c8:	afae0010 	sw	t6,16(sp)
      cc:	8fbf0024 	lw	ra,36(sp)
      d0:	8fb00020 	lw	s0,32(sp)
      d4:	27bd0038 	addiu	sp,sp,56
      d8:	03e00008 	jr	ra
      dc:	00000000 	nop

000000e0 <func_80B8EB60>:
      e0:	27bdffd0 	addiu	sp,sp,-48
      e4:	afbf001c 	sw	ra,28(sp)
      e8:	afa50034 	sw	a1,52(sp)
      ec:	c4840024 	lwc1	$f4,36(a0)
      f0:	3c010000 	lui	at,0x0
      f4:	c4280000 	lwc1	$f8,0(at)
      f8:	e7a40024 	swc1	$f4,36(sp)
      fc:	c4860028 	lwc1	$f6,40(a0)
     100:	00803825 	move	a3,a0
     104:	27ae0024 	addiu	t6,sp,36
     108:	46083280 	add.s	$f10,$f6,$f8
     10c:	27a60020 	addiu	a2,sp,32
     110:	e7aa0028 	swc1	$f10,40(sp)
     114:	c490002c 	lwc1	$f16,44(a0)
     118:	24a407c0 	addiu	a0,a1,1984
     11c:	24e50078 	addiu	a1,a3,120
     120:	afa70030 	sw	a3,48(sp)
     124:	afae0010 	sw	t6,16(sp)
     128:	0c000000 	jal	0 <func_80B8EA80>
     12c:	e7b0002c 	swc1	$f16,44(sp)
     130:	8fa70030 	lw	a3,48(sp)
     134:	e4e00080 	swc1	$f0,128(a3)
     138:	8fbf001c 	lw	ra,28(sp)
     13c:	27bd0030 	addiu	sp,sp,48
     140:	03e00008 	jr	ra
     144:	00000000 	nop

00000148 <func_80B8EBC8>:
     148:	a48001ba 	sh	zero,442(a0)
     14c:	848201ba 	lh	v0,442(a0)
     150:	44802000 	mtc1	zero,$f4
     154:	a48201b8 	sh	v0,440(a0)
     158:	a48201b6 	sh	v0,438(a0)
     15c:	03e00008 	jr	ra
     160:	e48401e4 	swc1	$f4,484(a0)

00000164 <func_80B8EBE4>:
     164:	27bdffd8 	addiu	sp,sp,-40
     168:	afbf0024 	sw	ra,36(sp)
     16c:	afb00020 	sw	s0,32(sp)
     170:	f7b40018 	sdc1	$f20,24(sp)
     174:	848e01b6 	lh	t6,438(a0)
     178:	849801b8 	lh	t8,440(a0)
     17c:	848801ba 	lh	t0,442(a0)
     180:	00808025 	move	s0,a0
     184:	3c063dcc 	lui	a2,0x3dcc
     188:	25cf00b6 	addiu	t7,t6,182
     18c:	271900fb 	addiu	t9,t8,251
     190:	25090064 	addiu	t1,t0,100
     194:	a48f01b6 	sh	t7,438(a0)
     198:	a49901b8 	sh	t9,440(a0)
     19c:	a48901ba 	sh	t1,442(a0)
     1a0:	34c6cccd 	ori	a2,a2,0xcccd
     1a4:	248401e4 	addiu	a0,a0,484
     1a8:	0c000000 	jal	0 <func_80B8EA80>
     1ac:	3c054000 	lui	a1,0x4000
     1b0:	860401b6 	lh	a0,438(s0)
     1b4:	00800821 	move	at,a0
     1b8:	00042080 	sll	a0,a0,0x2
     1bc:	00812023 	subu	a0,a0,at
     1c0:	00042400 	sll	a0,a0,0x10
     1c4:	0c000000 	jal	0 <func_80B8EA80>
     1c8:	00042403 	sra	a0,a0,0x10
     1cc:	860401b8 	lh	a0,440(s0)
     1d0:	46000506 	mov.s	$f20,$f0
     1d4:	00800821 	move	at,a0
     1d8:	00042080 	sll	a0,a0,0x2
     1dc:	00812023 	subu	a0,a0,at
     1e0:	00042400 	sll	a0,a0,0x10
     1e4:	0c000000 	jal	0 <func_80B8EA80>
     1e8:	00042403 	sra	a0,a0,0x10
     1ec:	46140100 	add.s	$f4,$f0,$f20
     1f0:	c60601e4 	lwc1	$f6,484(s0)
     1f4:	860401b6 	lh	a0,438(s0)
     1f8:	46062202 	mul.s	$f8,$f4,$f6
     1fc:	00042080 	sll	a0,a0,0x2
     200:	00042400 	sll	a0,a0,0x10
     204:	00042403 	sra	a0,a0,0x10
     208:	0c000000 	jal	0 <func_80B8EA80>
     20c:	e60801e8 	swc1	$f8,488(s0)
     210:	860401b8 	lh	a0,440(s0)
     214:	46000506 	mov.s	$f20,$f0
     218:	00042080 	sll	a0,a0,0x2
     21c:	00042400 	sll	a0,a0,0x10
     220:	0c000000 	jal	0 <func_80B8EA80>
     224:	00042403 	sra	a0,a0,0x10
     228:	46140280 	add.s	$f10,$f0,$f20
     22c:	c61001e4 	lwc1	$f16,484(s0)
     230:	860401ba 	lh	a0,442(s0)
     234:	46105482 	mul.s	$f18,$f10,$f16
     238:	00800821 	move	at,a0
     23c:	00042080 	sll	a0,a0,0x2
     240:	00812021 	addu	a0,a0,at
     244:	00042400 	sll	a0,a0,0x10
     248:	00042403 	sra	a0,a0,0x10
     24c:	0c000000 	jal	0 <func_80B8EA80>
     250:	e61201ec 	swc1	$f18,492(s0)
     254:	860401b8 	lh	a0,440(s0)
     258:	46000506 	mov.s	$f20,$f0
     25c:	000420c0 	sll	a0,a0,0x3
     260:	00042400 	sll	a0,a0,0x10
     264:	0c000000 	jal	0 <func_80B8EA80>
     268:	00042403 	sra	a0,a0,0x10
     26c:	3c010000 	lui	at,0x0
     270:	c4240000 	lwc1	$f4,0(at)
     274:	3c010000 	lui	at,0x0
     278:	c4280000 	lwc1	$f8,0(at)
     27c:	46040182 	mul.s	$f6,$f0,$f4
     280:	3c010000 	lui	at,0x0
     284:	c4320000 	lwc1	$f18,0(at)
     288:	4608a282 	mul.s	$f10,$f20,$f8
     28c:	3c010000 	lui	at,0x0
     290:	c4280000 	lwc1	$f8,0(at)
     294:	860401ba 	lh	a0,442(s0)
     298:	00800821 	move	at,a0
     29c:	460a3400 	add.s	$f16,$f6,$f10
     2a0:	00042080 	sll	a0,a0,0x2
     2a4:	00812021 	addu	a0,a0,at
     2a8:	00042040 	sll	a0,a0,0x1
     2ac:	46128100 	add.s	$f4,$f16,$f18
     2b0:	00042400 	sll	a0,a0,0x10
     2b4:	00042403 	sra	a0,a0,0x10
     2b8:	46082082 	mul.s	$f2,$f4,$f8
     2bc:	e6020058 	swc1	$f2,88(s0)
     2c0:	0c000000 	jal	0 <func_80B8EA80>
     2c4:	e6020050 	swc1	$f2,80(s0)
     2c8:	3c010000 	lui	at,0x0
     2cc:	c4260000 	lwc1	$f6,0(at)
     2d0:	3c013f80 	lui	at,0x3f80
     2d4:	44818000 	mtc1	at,$f16
     2d8:	46060282 	mul.s	$f10,$f0,$f6
     2dc:	3c010000 	lui	at,0x0
     2e0:	c4240000 	lwc1	$f4,0(at)
     2e4:	860401b6 	lh	a0,438(s0)
     2e8:	00800821 	move	at,a0
     2ec:	46105480 	add.s	$f18,$f10,$f16
     2f0:	00042080 	sll	a0,a0,0x2
     2f4:	00812023 	subu	a0,a0,at
     2f8:	00042400 	sll	a0,a0,0x10
     2fc:	46049202 	mul.s	$f8,$f18,$f4
     300:	00042403 	sra	a0,a0,0x10
     304:	0c000000 	jal	0 <func_80B8EA80>
     308:	e6080054 	swc1	$f8,84(s0)
     30c:	860401ba 	lh	a0,442(s0)
     310:	46000506 	mov.s	$f20,$f0
     314:	00042040 	sll	a0,a0,0x1
     318:	00042400 	sll	a0,a0,0x10
     31c:	0c000000 	jal	0 <func_80B8EA80>
     320:	00042403 	sra	a0,a0,0x10
     324:	860a0016 	lh	t2,22(s0)
     328:	3c01447a 	lui	at,0x447a
     32c:	44818000 	mtc1	at,$f16
     330:	448a3000 	mtc1	t2,$f6
     334:	3c010000 	lui	at,0x0
     338:	4610a482 	mul.s	$f18,$f20,$f16
     33c:	c4280000 	lwc1	$f8,0(at)
     340:	468032a0 	cvt.s.w	$f10,$f6
     344:	46080182 	mul.s	$f6,$f0,$f8
     348:	46125100 	add.s	$f4,$f10,$f18
     34c:	46043400 	add.s	$f16,$f6,$f4
     350:	4600828d 	trunc.w.s	$f10,$f16
     354:	440c5000 	mfc1	t4,$f10
     358:	00000000 	nop
     35c:	a60c00b6 	sh	t4,182(s0)
     360:	8fbf0024 	lw	ra,36(sp)
     364:	8fb00020 	lw	s0,32(sp)
     368:	d7b40018 	ldc1	$f20,24(sp)
     36c:	03e00008 	jr	ra
     370:	27bd0028 	addiu	sp,sp,40

00000374 <func_80B8EDF4>:
     374:	27bdffe8 	addiu	sp,sp,-24
     378:	afbf0014 	sw	ra,20(sp)
     37c:	a48001ba 	sh	zero,442(a0)
     380:	848201ba 	lh	v0,442(a0)
     384:	24050000 	li	a1,0
     388:	a48201b8 	sh	v0,440(a0)
     38c:	0c000000 	jal	0 <func_80B8EA80>
     390:	a48201b6 	sh	v0,438(a0)
     394:	8fbf0014 	lw	ra,20(sp)
     398:	27bd0018 	addiu	sp,sp,24
     39c:	03e00008 	jr	ra
     3a0:	00000000 	nop

000003a4 <func_80B8EE24>:
     3a4:	27bdffe0 	addiu	sp,sp,-32
     3a8:	afbf001c 	sw	ra,28(sp)
     3ac:	afb00018 	sw	s0,24(sp)
     3b0:	848e01b6 	lh	t6,438(a0)
     3b4:	00808025 	move	s0,a0
     3b8:	24195fff 	li	t9,24575
     3bc:	25cf0384 	addiu	t7,t6,900
     3c0:	a48f01b6 	sh	t7,438(a0)
     3c4:	849801b6 	lh	t8,438(a0)
     3c8:	240b4000 	li	t3,16384
     3cc:	2b016000 	slti	at,t8,24576
     3d0:	54200003 	bnezl	at,3e0 <func_80B8EE24+0x3c>
     3d4:	860801b8 	lh	t0,440(s0)
     3d8:	a49901b6 	sh	t9,438(a0)
     3dc:	860801b8 	lh	t0,440(s0)
     3e0:	25090258 	addiu	t1,t0,600
     3e4:	a60901b8 	sh	t1,440(s0)
     3e8:	860a01b8 	lh	t2,440(s0)
     3ec:	29414001 	slti	at,t2,16385
     3f0:	14200002 	bnez	at,3fc <func_80B8EE24+0x58>
     3f4:	00000000 	nop
     3f8:	a60b01b8 	sh	t3,440(s0)
     3fc:	0c000000 	jal	0 <func_80B8EA80>
     400:	860401b6 	lh	a0,438(s0)
     404:	3c010000 	lui	at,0x0
     408:	c4240000 	lwc1	$f4,0(at)
     40c:	860401b8 	lh	a0,440(s0)
     410:	46040182 	mul.s	$f6,$f0,$f4
     414:	0c000000 	jal	0 <func_80B8EA80>
     418:	e6060054 	swc1	$f6,84(s0)
     41c:	3c010000 	lui	at,0x0
     420:	c4280000 	lwc1	$f8,0(at)
     424:	3c063dcc 	lui	a2,0x3dcc
     428:	34c6cccd 	ori	a2,a2,0xcccd
     42c:	46080082 	mul.s	$f2,$f0,$f8
     430:	260401e8 	addiu	a0,s0,488
     434:	24050000 	li	a1,0
     438:	e6020058 	swc1	$f2,88(s0)
     43c:	0c000000 	jal	0 <func_80B8EA80>
     440:	e6020050 	swc1	$f2,80(s0)
     444:	3c063dcc 	lui	a2,0x3dcc
     448:	34c6cccd 	ori	a2,a2,0xcccd
     44c:	260401ec 	addiu	a0,s0,492
     450:	0c000000 	jal	0 <func_80B8EA80>
     454:	24050000 	li	a1,0
     458:	260400b6 	addiu	a0,s0,182
     45c:	86050016 	lh	a1,22(s0)
     460:	0c000000 	jal	0 <func_80B8EA80>
     464:	24060064 	li	a2,100
     468:	8fbf001c 	lw	ra,28(sp)
     46c:	8fb00018 	lw	s0,24(sp)
     470:	27bd0020 	addiu	sp,sp,32
     474:	03e00008 	jr	ra
     478:	00000000 	nop

0000047c <func_80B8EEFC>:
     47c:	c48401d8 	lwc1	$f4,472(a0)
     480:	c48601e8 	lwc1	$f6,488(a0)
     484:	c49001e0 	lwc1	$f16,480(a0)
     488:	c49201ec 	lwc1	$f18,492(a0)
     48c:	46062200 	add.s	$f8,$f4,$f6
     490:	c48a01dc 	lwc1	$f10,476(a0)
     494:	46128100 	add.s	$f4,$f16,$f18
     498:	e4880024 	swc1	$f8,36(a0)
     49c:	e48a0028 	swc1	$f10,40(a0)
     4a0:	03e00008 	jr	ra
     4a4:	e484002c 	swc1	$f4,44(a0)

000004a8 <func_80B8EF28>:
     4a8:	afa50004 	sw	a1,4(sp)
     4ac:	908e01f7 	lbu	t6,503(a0)
     4b0:	31d8fff0 	andi	t8,t6,0xfff0
     4b4:	a09801f7 	sb	t8,503(a0)
     4b8:	0305c825 	or	t9,t8,a1
     4bc:	03e00008 	jr	ra
     4c0:	a09901f7 	sb	t9,503(a0)

000004c4 <func_80B8EF44>:
     4c4:	848f001c 	lh	t7,28(a0)
     4c8:	3c0e0001 	lui	t6,0x1
     4cc:	01c57021 	addu	t6,t6,a1
     4d0:	8dce1e08 	lw	t6,7688(t6)
     4d4:	000fc203 	sra	t8,t7,0x8
     4d8:	3319001f 	andi	t9,t8,0x1f
     4dc:	001940c0 	sll	t0,t9,0x3
     4e0:	01c84821 	addu	t1,t6,t0
     4e4:	912a0000 	lbu	t2,0(t1)
     4e8:	240c0001 	li	t4,1
     4ec:	a48001f2 	sh	zero,498(a0)
     4f0:	254bffff 	addiu	t3,t2,-1
     4f4:	a48b01f0 	sh	t3,496(a0)
     4f8:	03e00008 	jr	ra
     4fc:	a48c01f4 	sh	t4,500(a0)

00000500 <func_80B8EF80>:
     500:	27bdffe8 	addiu	sp,sp,-24
     504:	afbf0014 	sw	ra,20(sp)
     508:	848f001c 	lh	t7,28(a0)
     50c:	3c0e0001 	lui	t6,0x1
     510:	01c57021 	addu	t6,t6,a1
     514:	8dce1e08 	lw	t6,7688(t6)
     518:	000fc203 	sra	t8,t7,0x8
     51c:	3319001f 	andi	t9,t8,0x1f
     520:	001940c0 	sll	t0,t9,0x3
     524:	01c81821 	addu	v1,t6,t0
     528:	8c620004 	lw	v0,4(v1)
     52c:	3c0c0000 	lui	t4,0x0
     530:	3c0100ff 	lui	at,0xff
     534:	00024900 	sll	t1,v0,0x4
     538:	00095702 	srl	t2,t1,0x1c
     53c:	000a5880 	sll	t3,t2,0x2
     540:	018b6021 	addu	t4,t4,t3
     544:	8d8c0000 	lw	t4,0(t4)
     548:	3421ffff 	ori	at,at,0xffff
     54c:	00416824 	and	t5,v0,at
     550:	3c018000 	lui	at,0x8000
     554:	018d2821 	addu	a1,t4,t5
     558:	00a12821 	addu	a1,a1,at
     55c:	0c000000 	jal	0 <func_80B8EA80>
     560:	248401d8 	addiu	a0,a0,472
     564:	8fbf0014 	lw	ra,20(sp)
     568:	27bd0018 	addiu	sp,sp,24
     56c:	03e00008 	jr	ra
     570:	00000000 	nop

00000574 <func_80B8EFF4>:
     574:	27bdff88 	addiu	sp,sp,-120
     578:	afb00018 	sw	s0,24(sp)
     57c:	00808025 	move	s0,a0
     580:	afbf001c 	sw	ra,28(sp)
     584:	afa5007c 	sw	a1,124(sp)
     588:	920e01f6 	lbu	t6,502(s0)
     58c:	3c180000 	lui	t8,0x0
     590:	27180000 	addiu	t8,t8,0
     594:	000e78c0 	sll	t7,t6,0x3
     598:	01f81021 	addu	v0,t7,t8
     59c:	8c450000 	lw	a1,0(v0)
     5a0:	8c460004 	lw	a2,4(v0)
     5a4:	0c000000 	jal	0 <func_80B8EA80>
     5a8:	24840068 	addiu	a0,a0,104
     5ac:	8fb9007c 	lw	t9,124(sp)
     5b0:	8609001c 	lh	t1,28(s0)
     5b4:	3c080001 	lui	t0,0x1
     5b8:	01194021 	addu	t0,t0,t9
     5bc:	8d081e08 	lw	t0,7688(t0)
     5c0:	00095203 	sra	t2,t1,0x8
     5c4:	314b001f 	andi	t3,t2,0x1f
     5c8:	000b60c0 	sll	t4,t3,0x3
     5cc:	010c3021 	addu	a2,t0,t4
     5d0:	8cc30004 	lw	v1,4(a2)
     5d4:	860a01f4 	lh	t2,500(s0)
     5d8:	3c180000 	lui	t8,0x0
     5dc:	00036900 	sll	t5,v1,0x4
     5e0:	000d7702 	srl	t6,t5,0x1c
     5e4:	000e7880 	sll	t7,t6,0x2
     5e8:	030fc021 	addu	t8,t8,t7
     5ec:	8f180000 	lw	t8,0(t8)
     5f0:	3c0100ff 	lui	at,0xff
     5f4:	3421ffff 	ori	at,at,0xffff
     5f8:	000a5880 	sll	t3,t2,0x2
     5fc:	0061c824 	and	t9,v1,at
     600:	016a5823 	subu	t3,t3,t2
     604:	000b5840 	sll	t3,t3,0x1
     608:	03194821 	addu	t1,t8,t9
     60c:	012b2821 	addu	a1,t1,t3
     610:	3c018000 	lui	at,0x8000
     614:	00a12821 	addu	a1,a1,at
     618:	afa50054 	sw	a1,84(sp)
     61c:	afa60074 	sw	a2,116(sp)
     620:	0c000000 	jal	0 <func_80B8EA80>
     624:	27a4005c 	addiu	a0,sp,92
     628:	260501d8 	addiu	a1,s0,472
     62c:	afa50028 	sw	a1,40(sp)
     630:	27a4005c 	addiu	a0,sp,92
     634:	0c000000 	jal	0 <func_80B8EA80>
     638:	27a60068 	addiu	a2,sp,104
     63c:	0c000000 	jal	0 <func_80B8EA80>
     640:	27a40068 	addiu	a0,sp,104
     644:	3c013f00 	lui	at,0x3f00
     648:	44818000 	mtc1	at,$f16
     64c:	c6020068 	lwc1	$f2,104(s0)
     650:	3c0100ff 	lui	at,0xff
     654:	46000386 	mov.s	$f14,$f0
     658:	4610103c 	c.lt.s	$f2,$f16
     65c:	3421ffff 	ori	at,at,0xffff
     660:	8fa80074 	lw	t0,116(sp)
     664:	3c0f0000 	lui	t7,0x0
     668:	45000003 	bc1f	678 <func_80B8EFF4+0x104>
     66c:	27a5005c 	addiu	a1,sp,92
     670:	10000002 	b	67c <func_80B8EFF4+0x108>
     674:	46008306 	mov.s	$f12,$f16
     678:	46001306 	mov.s	$f12,$f2
     67c:	460c003c 	c.lt.s	$f0,$f12
     680:	00000000 	nop
     684:	4502004f 	bc1fl	7c4 <func_80B8EFF4+0x250>
     688:	460e1283 	div.s	$f10,$f2,$f14
     68c:	8d030004 	lw	v1,4(t0)
     690:	860a01f2 	lh	t2,498(s0)
     694:	8fa40028 	lw	a0,40(sp)
     698:	00036100 	sll	t4,v1,0x4
     69c:	000c6f02 	srl	t5,t4,0x1c
     6a0:	000d7080 	sll	t6,t5,0x2
     6a4:	01ee7821 	addu	t7,t7,t6
     6a8:	8def0000 	lw	t7,0(t7)
     6ac:	000a4880 	sll	t1,t2,0x2
     6b0:	0061c024 	and	t8,v1,at
     6b4:	012a4823 	subu	t1,t1,t2
     6b8:	00094840 	sll	t1,t1,0x1
     6bc:	01f8c821 	addu	t9,t7,t8
     6c0:	03295821 	addu	t3,t9,t1
     6c4:	3c018000 	lui	at,0x8000
     6c8:	01614021 	addu	t0,t3,at
     6cc:	0c000000 	jal	0 <func_80B8EA80>
     6d0:	afa80050 	sw	t0,80(sp)
     6d4:	860201f4 	lh	v0,500(s0)
     6d8:	860d01f0 	lh	t5,496(s0)
     6dc:	3c090000 	lui	t1,0x0
     6e0:	a60201f2 	sh	v0,498(s0)
     6e4:	860c01f2 	lh	t4,498(s0)
     6e8:	27a40040 	addiu	a0,sp,64
     6ec:	244e0001 	addiu	t6,v0,1
     6f0:	018d082a 	slt	at,t4,t5
     6f4:	54200004 	bnezl	at,708 <func_80B8EFF4+0x194>
     6f8:	a60e01f4 	sh	t6,500(s0)
     6fc:	10000002 	b	708 <func_80B8EFF4+0x194>
     700:	a60001f4 	sh	zero,500(s0)
     704:	a60e01f4 	sh	t6,500(s0)
     708:	8faf0074 	lw	t7,116(sp)
     70c:	860c01f4 	lh	t4,500(s0)
     710:	3c0100ff 	lui	at,0xff
     714:	8de30004 	lw	v1,4(t7)
     718:	3421ffff 	ori	at,at,0xffff
     71c:	000c6880 	sll	t5,t4,0x2
     720:	0003c100 	sll	t8,v1,0x4
     724:	00185702 	srl	t2,t8,0x1c
     728:	000ac880 	sll	t9,t2,0x2
     72c:	01394821 	addu	t1,t1,t9
     730:	8d290000 	lw	t1,0(t1)
     734:	01ac6823 	subu	t5,t5,t4
     738:	00615824 	and	t3,v1,at
     73c:	000d6840 	sll	t5,t5,0x1
     740:	012b4021 	addu	t0,t1,t3
     744:	010d7021 	addu	t6,t0,t5
     748:	3c018000 	lui	at,0x8000
     74c:	01c17821 	addu	t7,t6,at
     750:	afaf004c 	sw	t7,76(sp)
     754:	8fa50054 	lw	a1,84(sp)
     758:	0c000000 	jal	0 <func_80B8EA80>
     75c:	8fa60050 	lw	a2,80(sp)
     760:	27a40034 	addiu	a0,sp,52
     764:	8fa5004c 	lw	a1,76(sp)
     768:	0c000000 	jal	0 <func_80B8EA80>
     76c:	8fa60054 	lw	a2,84(sp)
     770:	27a40040 	addiu	a0,sp,64
     774:	27a50034 	addiu	a1,sp,52
     778:	0c000000 	jal	0 <func_80B8EA80>
     77c:	27a60030 	addiu	a2,sp,48
     780:	10400004 	beqz	v0,794 <func_80B8EFF4+0x220>
     784:	c7a60030 	lwc1	$f6,48(sp)
     788:	44802000 	mtc1	zero,$f4
     78c:	1000001d 	b	804 <func_80B8EFF4+0x290>
     790:	e6040068 	swc1	$f4,104(s0)
     794:	3c013f80 	lui	at,0x3f80
     798:	44814000 	mtc1	at,$f8
     79c:	3c013f00 	lui	at,0x3f00
     7a0:	44819000 	mtc1	at,$f18
     7a4:	46083280 	add.s	$f10,$f6,$f8
     7a8:	c6060068 	lwc1	$f6,104(s0)
     7ac:	46125102 	mul.s	$f4,$f10,$f18
     7b0:	00000000 	nop
     7b4:	46043202 	mul.s	$f8,$f6,$f4
     7b8:	10000012 	b	804 <func_80B8EFF4+0x290>
     7bc:	e6080068 	swc1	$f8,104(s0)
     7c0:	460e1283 	div.s	$f10,$f2,$f14
     7c4:	27a40068 	addiu	a0,sp,104
     7c8:	44055000 	mfc1	a1,$f10
     7cc:	0c000000 	jal	0 <func_80B8EA80>
     7d0:	00000000 	nop
     7d4:	c61201d8 	lwc1	$f18,472(s0)
     7d8:	c7a60068 	lwc1	$f6,104(sp)
     7dc:	c60801dc 	lwc1	$f8,476(s0)
     7e0:	46069100 	add.s	$f4,$f18,$f6
     7e4:	c60601e0 	lwc1	$f6,480(s0)
     7e8:	e60401d8 	swc1	$f4,472(s0)
     7ec:	c7aa006c 	lwc1	$f10,108(sp)
     7f0:	460a4480 	add.s	$f18,$f8,$f10
     7f4:	e61201dc 	swc1	$f18,476(s0)
     7f8:	c7a40070 	lwc1	$f4,112(sp)
     7fc:	46043200 	add.s	$f8,$f6,$f4
     800:	e60801e0 	swc1	$f8,480(s0)
     804:	8fbf001c 	lw	ra,28(sp)
     808:	8fb00018 	lw	s0,24(sp)
     80c:	27bd0078 	addiu	sp,sp,120
     810:	03e00008 	jr	ra
     814:	00000000 	nop

00000818 <func_80B8F298>:
     818:	27bdffd0 	addiu	sp,sp,-48
     81c:	afbf002c 	sw	ra,44(sp)
     820:	afb20028 	sw	s2,40(sp)
     824:	afb10024 	sw	s1,36(sp)
     828:	afb00020 	sw	s0,32(sp)
     82c:	f7b40018 	sdc1	$f20,24(sp)
     830:	8cb01c3c 	lw	s0,7228(a1)
     834:	00809025 	move	s2,a0
     838:	24110014 	li	s1,20
     83c:	12000011 	beqz	s0,884 <func_80B8F298+0x6c>
     840:	3c010000 	lui	at,0x0
     844:	c4340000 	lwc1	$f20,0(at)
     848:	860e0000 	lh	t6,0(s0)
     84c:	26040024 	addiu	a0,s0,36
     850:	562e000a 	bnel	s1,t6,87c <func_80B8F298+0x64>
     854:	8e100124 	lw	s0,292(s0)
     858:	0c000000 	jal	0 <func_80B8EA80>
     85c:	26450024 	addiu	a1,s2,36
     860:	4614003c 	c.lt.s	$f0,$f20
     864:	00000000 	nop
     868:	45020004 	bc1fl	87c <func_80B8F298+0x64>
     86c:	8e100124 	lw	s0,292(s0)
     870:	10000005 	b	888 <func_80B8F298+0x70>
     874:	24020001 	li	v0,1
     878:	8e100124 	lw	s0,292(s0)
     87c:	5600fff3 	bnezl	s0,84c <func_80B8F298+0x34>
     880:	860e0000 	lh	t6,0(s0)
     884:	00001025 	move	v0,zero
     888:	8fbf002c 	lw	ra,44(sp)
     88c:	d7b40018 	ldc1	$f20,24(sp)
     890:	8fb00020 	lw	s0,32(sp)
     894:	8fb10024 	lw	s1,36(sp)
     898:	8fb20028 	lw	s2,40(sp)
     89c:	03e00008 	jr	ra
     8a0:	27bd0030 	addiu	sp,sp,48

000008a4 <func_80B8F324>:
     8a4:	27bdff30 	addiu	sp,sp,-208
     8a8:	f7be0070 	sdc1	$f30,112(sp)
     8ac:	3c010000 	lui	at,0x0
     8b0:	c43e0000 	lwc1	$f30,0(at)
     8b4:	f7bc0068 	sdc1	$f28,104(sp)
     8b8:	3c014334 	lui	at,0x4334
     8bc:	4481e000 	mtc1	at,$f28
     8c0:	f7ba0060 	sdc1	$f26,96(sp)
     8c4:	3c014150 	lui	at,0x4150
     8c8:	4481d000 	mtc1	at,$f26
     8cc:	f7b80058 	sdc1	$f24,88(sp)
     8d0:	3c014270 	lui	at,0x4270
     8d4:	4481c000 	mtc1	at,$f24
     8d8:	afbe0098 	sw	s8,152(sp)
     8dc:	f7b60050 	sdc1	$f22,80(sp)
     8e0:	3c014060 	lui	at,0x4060
     8e4:	afb70094 	sw	s7,148(sp)
     8e8:	afb60090 	sw	s6,144(sp)
     8ec:	afb5008c 	sw	s5,140(sp)
     8f0:	afb40088 	sw	s4,136(sp)
     8f4:	afb1007c 	sw	s1,124(sp)
     8f8:	afb00078 	sw	s0,120(sp)
     8fc:	3c1e0000 	lui	s8,0x0
     900:	4481b000 	mtc1	at,$f22
     904:	00808025 	move	s0,a0
     908:	00a0b025 	move	s6,a1
     90c:	afbf009c 	sw	ra,156(sp)
     910:	afb30084 	sw	s3,132(sp)
     914:	afb20080 	sw	s2,128(sp)
     918:	f7b40048 	sdc1	$f20,72(sp)
     91c:	00008825 	move	s1,zero
     920:	27de0000 	addiu	s8,s8,0
     924:	0000a025 	move	s4,zero
     928:	27b500c4 	addiu	s5,sp,196
     92c:	27b700b8 	addiu	s7,sp,184
     930:	26314e20 	addiu	s1,s1,20000
     934:	00118c00 	sll	s1,s1,0x10
     938:	0c000000 	jal	0 <func_80B8EA80>
     93c:	00118c03 	sra	s1,s1,0x10
     940:	46180502 	mul.s	$f20,$f0,$f24
     944:	00112400 	sll	a0,s1,0x10
     948:	0c000000 	jal	0 <func_80B8EA80>
     94c:	00042403 	sra	a0,a0,0x10
     950:	46140102 	mul.s	$f4,$f0,$f20
     954:	c6060024 	lwc1	$f6,36(s0)
     958:	00112400 	sll	a0,s1,0x10
     95c:	00042403 	sra	a0,a0,0x10
     960:	46062200 	add.s	$f8,$f4,$f6
     964:	e7a800c4 	swc1	$f8,196(sp)
     968:	c60a0028 	lwc1	$f10,40(s0)
     96c:	0c000000 	jal	0 <func_80B8EA80>
     970:	e7aa00c8 	swc1	$f10,200(sp)
     974:	46140402 	mul.s	$f16,$f0,$f20
     978:	c612002c 	lwc1	$f18,44(s0)
     97c:	00112400 	sll	a0,s1,0x10
     980:	00042403 	sra	a0,a0,0x10
     984:	46128100 	add.s	$f4,$f16,$f18
     988:	0c000000 	jal	0 <func_80B8EA80>
     98c:	e7a400cc 	swc1	$f4,204(sp)
     990:	46160182 	mul.s	$f6,$f0,$f22
     994:	0c000000 	jal	0 <func_80B8EA80>
     998:	e7a600b8 	swc1	$f6,184(sp)
     99c:	461a0202 	mul.s	$f8,$f0,$f26
     9a0:	00112400 	sll	a0,s1,0x10
     9a4:	00042403 	sra	a0,a0,0x10
     9a8:	0c000000 	jal	0 <func_80B8EA80>
     9ac:	e7a800bc 	swc1	$f8,188(sp)
     9b0:	46160282 	mul.s	$f10,$f0,$f22
     9b4:	c7a600b8 	lwc1	$f6,184(sp)
     9b8:	e7aa00c0 	swc1	$f10,192(sp)
     9bc:	c6120100 	lwc1	$f18,256(s0)
     9c0:	c6100024 	lwc1	$f16,36(s0)
     9c4:	46128101 	sub.s	$f4,$f16,$f18
     9c8:	46043200 	add.s	$f8,$f6,$f4
     9cc:	c7a600bc 	lwc1	$f6,188(sp)
     9d0:	e7a800b8 	swc1	$f8,184(sp)
     9d4:	c6100104 	lwc1	$f16,260(s0)
     9d8:	c60a0028 	lwc1	$f10,40(s0)
     9dc:	46105481 	sub.s	$f18,$f10,$f16
     9e0:	46123100 	add.s	$f4,$f6,$f18
     9e4:	c7a600c0 	lwc1	$f6,192(sp)
     9e8:	e7a400bc 	swc1	$f4,188(sp)
     9ec:	c60a0108 	lwc1	$f10,264(s0)
     9f0:	c608002c 	lwc1	$f8,44(s0)
     9f4:	460a4401 	sub.s	$f16,$f8,$f10
     9f8:	46103480 	add.s	$f18,$f6,$f16
     9fc:	0c000000 	jal	0 <func_80B8EA80>
     a00:	e7b200c0 	swc1	$f18,192(sp)
     a04:	461c0102 	mul.s	$f4,$f0,$f28
     a08:	2413ff9c 	li	s3,-100
     a0c:	4600220d 	trunc.w.s	$f8,$f4
     a10:	44024000 	mfc1	v0,$f8
     a14:	00000000 	nop
     a18:	2452001e 	addiu	s2,v0,30
     a1c:	2a41005a 	slti	at,s2,90
     a20:	1020000b 	beqz	at,a50 <func_80B8F324+0x1ac>
     a24:	24020040 	li	v0,64
     a28:	0c000000 	jal	0 <func_80B8EA80>
     a2c:	2413ffb0 	li	s3,-80
     a30:	461e003c 	c.lt.s	$f0,$f30
     a34:	00000000 	nop
     a38:	45000003 	bc1f	a48 <func_80B8F324+0x1a4>
     a3c:	00000000 	nop
     a40:	10000003 	b	a50 <func_80B8F324+0x1ac>
     a44:	24020060 	li	v0,96
     a48:	10000001 	b	a50 <func_80B8F324+0x1ac>
     a4c:	24020040 	li	v0,64
     a50:	240f0028 	li	t7,40
     a54:	328d0001 	andi	t5,s4,0x1
     a58:	000d7080 	sll	t6,t5,0x2
     a5c:	afaf0018 	sw	t7,24(sp)
     a60:	24180003 	li	t8,3
     a64:	0012c8c3 	sra	t9,s2,0x3
     a68:	27280028 	addiu	t0,t9,40
     a6c:	afb8001c 	sw	t8,28(sp)
     a70:	03ce7821 	addu	t7,s8,t6
     a74:	8df80000 	lw	t8,0(t7)
     a78:	00084c00 	sll	t1,t0,0x10
     a7c:	00095403 	sra	t2,t1,0x10
     a80:	240bffff 	li	t3,-1
     a84:	240c0001 	li	t4,1
     a88:	afac0038 	sw	t4,56(sp)
     a8c:	afab0034 	sw	t3,52(sp)
     a90:	afaa0030 	sw	t2,48(sp)
     a94:	02c02025 	move	a0,s6
     a98:	02a02825 	move	a1,s5
     a9c:	02e03025 	move	a2,s7
     aa0:	02a03825 	move	a3,s5
     aa4:	afb30010 	sw	s3,16(sp)
     aa8:	afa20014 	sw	v0,20(sp)
     aac:	afa00020 	sw	zero,32(sp)
     ab0:	afb20024 	sw	s2,36(sp)
     ab4:	afa00028 	sw	zero,40(sp)
     ab8:	afa0002c 	sw	zero,44(sp)
     abc:	0c000000 	jal	0 <func_80B8EA80>
     ac0:	afb8003c 	sw	t8,60(sp)
     ac4:	26940001 	addiu	s4,s4,1
     ac8:	24010024 	li	at,36
     acc:	5681ff99 	bnel	s4,at,934 <func_80B8F324+0x90>
     ad0:	26314e20 	addiu	s1,s1,20000
     ad4:	8fbf009c 	lw	ra,156(sp)
     ad8:	d7b40048 	ldc1	$f20,72(sp)
     adc:	d7b60050 	ldc1	$f22,80(sp)
     ae0:	d7b80058 	ldc1	$f24,88(sp)
     ae4:	d7ba0060 	ldc1	$f26,96(sp)
     ae8:	d7bc0068 	ldc1	$f28,104(sp)
     aec:	d7be0070 	ldc1	$f30,112(sp)
     af0:	8fb00078 	lw	s0,120(sp)
     af4:	8fb1007c 	lw	s1,124(sp)
     af8:	8fb20080 	lw	s2,128(sp)
     afc:	8fb30084 	lw	s3,132(sp)
     b00:	8fb40088 	lw	s4,136(sp)
     b04:	8fb5008c 	lw	s5,140(sp)
     b08:	8fb60090 	lw	s6,144(sp)
     b0c:	8fb70094 	lw	s7,148(sp)
     b10:	8fbe0098 	lw	s8,152(sp)
     b14:	03e00008 	jr	ra
     b18:	27bd00d0 	addiu	sp,sp,208

00000b1c <func_80B8F59C>:
     b1c:	27bdffe0 	addiu	sp,sp,-32
     b20:	afb00018 	sw	s0,24(sp)
     b24:	00808025 	move	s0,a0
     b28:	afbf001c 	sw	ra,28(sp)
     b2c:	860601c6 	lh	a2,454(s0)
     b30:	860501c4 	lh	a1,452(s0)
     b34:	0c000000 	jal	0 <func_80B8EA80>
     b38:	248401c2 	addiu	a0,a0,450
     b3c:	260401c8 	addiu	a0,s0,456
     b40:	860501ca 	lh	a1,458(s0)
     b44:	0c000000 	jal	0 <func_80B8EA80>
     b48:	860601cc 	lh	a2,460(s0)
     b4c:	860e01ce 	lh	t6,462(s0)
     b50:	860f01c8 	lh	t7,456(s0)
     b54:	01cfc021 	addu	t8,t6,t7
     b58:	a61801ce 	sh	t8,462(s0)
     b5c:	0c000000 	jal	0 <func_80B8EA80>
     b60:	860401ce 	lh	a0,462(s0)
     b64:	861901c2 	lh	t9,450(s0)
     b68:	3c010000 	lui	at,0x0
     b6c:	c4240000 	lwc1	$f4,0(at)
     b70:	44993000 	mtc1	t9,$f6
     b74:	00000000 	nop
     b78:	46803220 	cvt.s.w	$f8,$f6
     b7c:	46080282 	mul.s	$f10,$f0,$f8
     b80:	460a2401 	sub.s	$f16,$f4,$f10
     b84:	4600848d 	trunc.w.s	$f18,$f16
     b88:	44099000 	mfc1	t1,$f18
     b8c:	00000000 	nop
     b90:	a60901d0 	sh	t1,464(s0)
     b94:	0c000000 	jal	0 <func_80B8EA80>
     b98:	860401d0 	lh	a0,464(s0)
     b9c:	3c010000 	lui	at,0x0
     ba0:	c4260000 	lwc1	$f6,0(at)
     ba4:	860401d0 	lh	a0,464(s0)
     ba8:	46060202 	mul.s	$f8,$f0,$f6
     bac:	0c000000 	jal	0 <func_80B8EA80>
     bb0:	e6080054 	swc1	$f8,84(s0)
     bb4:	3c010000 	lui	at,0x0
     bb8:	c4240000 	lwc1	$f4,0(at)
     bbc:	46040082 	mul.s	$f2,$f0,$f4
     bc0:	e6020058 	swc1	$f2,88(s0)
     bc4:	e6020050 	swc1	$f2,80(s0)
     bc8:	8fbf001c 	lw	ra,28(sp)
     bcc:	8fb00018 	lw	s0,24(sp)
     bd0:	27bd0020 	addiu	sp,sp,32
     bd4:	03e00008 	jr	ra
     bd8:	00000000 	nop

00000bdc <func_80B8F65C>:
     bdc:	27bdffe0 	addiu	sp,sp,-32
     be0:	afb00018 	sw	s0,24(sp)
     be4:	3c0e0000 	lui	t6,0x0
     be8:	afbf001c 	sw	ra,28(sp)
     bec:	25ce0000 	addiu	t6,t6,0
     bf0:	00808025 	move	s0,a0
     bf4:	ac8e01bc 	sw	t6,444(a0)
     bf8:	2404000c 	li	a0,12
     bfc:	0c000000 	jal	0 <func_80B8EA80>
     c00:	24050028 	li	a1,40
     c04:	a60201c0 	sh	v0,448(s0)
     c08:	240400c8 	li	a0,200
     c0c:	0c000000 	jal	0 <func_80B8EA80>
     c10:	24050190 	li	a1,400
     c14:	240f0014 	li	t7,20
     c18:	a60201c4 	sh	v0,452(s0)
     c1c:	a60f01c6 	sh	t7,454(s0)
     c20:	24040064 	li	a0,100
     c24:	0c000000 	jal	0 <func_80B8EA80>
     c28:	24050320 	li	a1,800
     c2c:	24180014 	li	t8,20
     c30:	a60201ca 	sh	v0,458(s0)
     c34:	a61801cc 	sh	t8,460(s0)
     c38:	8fbf001c 	lw	ra,28(sp)
     c3c:	8fb00018 	lw	s0,24(sp)
     c40:	27bd0020 	addiu	sp,sp,32
     c44:	03e00008 	jr	ra
     c48:	00000000 	nop

00000c4c <func_80B8F6CC>:
     c4c:	27bdffe8 	addiu	sp,sp,-24
     c50:	afbf0014 	sw	ra,20(sp)
     c54:	848e01c0 	lh	t6,448(a0)
     c58:	25cfffff 	addiu	t7,t6,-1
     c5c:	a48f01c0 	sh	t7,448(a0)
     c60:	0c000000 	jal	0 <func_80B8EA80>
     c64:	afa40018 	sw	a0,24(sp)
     c68:	8fa40018 	lw	a0,24(sp)
     c6c:	849801c0 	lh	t8,448(a0)
     c70:	07030004 	bgezl	t8,c84 <func_80B8F6CC+0x38>
     c74:	8fbf0014 	lw	ra,20(sp)
     c78:	0c000000 	jal	0 <func_80B8EA80>
     c7c:	00000000 	nop
     c80:	8fbf0014 	lw	ra,20(sp)
     c84:	27bd0018 	addiu	sp,sp,24
     c88:	03e00008 	jr	ra
     c8c:	00000000 	nop

00000c90 <func_80B8F710>:
     c90:	27bdffe0 	addiu	sp,sp,-32
     c94:	afb00018 	sw	s0,24(sp)
     c98:	3c0e0000 	lui	t6,0x0
     c9c:	afbf001c 	sw	ra,28(sp)
     ca0:	25ce0000 	addiu	t6,t6,0
     ca4:	00808025 	move	s0,a0
     ca8:	ac8e01bc 	sw	t6,444(a0)
     cac:	2404001e 	li	a0,30
     cb0:	0c000000 	jal	0 <func_80B8EA80>
     cb4:	24050004 	li	a1,4
     cb8:	a60201c0 	sh	v0,448(s0)
     cbc:	240407d0 	li	a0,2000
     cc0:	0c000000 	jal	0 <func_80B8EA80>
     cc4:	240503e8 	li	a1,1000
     cc8:	240f00c8 	li	t7,200
     ccc:	a60201c4 	sh	v0,452(s0)
     cd0:	a60f01c6 	sh	t7,454(s0)
     cd4:	240436b0 	li	a0,14000
     cd8:	0c000000 	jal	0 <func_80B8EA80>
     cdc:	24051770 	li	a1,6000
     ce0:	24180fa0 	li	t8,4000
     ce4:	241918e4 	li	t9,6372
     ce8:	a60201ca 	sh	v0,458(s0)
     cec:	a61801cc 	sh	t8,460(s0)
     cf0:	a61901d0 	sh	t9,464(s0)
     cf4:	8fbf001c 	lw	ra,28(sp)
     cf8:	8fb00018 	lw	s0,24(sp)
     cfc:	27bd0020 	addiu	sp,sp,32
     d00:	03e00008 	jr	ra
     d04:	00000000 	nop

00000d08 <func_80B8F788>:
     d08:	27bdffe0 	addiu	sp,sp,-32
     d0c:	afbf001c 	sw	ra,28(sp)
     d10:	afb00018 	sw	s0,24(sp)
     d14:	848e01c0 	lh	t6,448(a0)
     d18:	00808025 	move	s0,a0
     d1c:	2401000e 	li	at,14
     d20:	25cfffff 	addiu	t7,t6,-1
     d24:	a48f01c0 	sh	t7,448(a0)
     d28:	849801c0 	lh	t8,448(a0)
     d2c:	240400c8 	li	a0,200
     d30:	1701000a 	bne	t8,at,d5c <func_80B8F788+0x54>
     d34:	00000000 	nop
     d38:	0c000000 	jal	0 <func_80B8EA80>
     d3c:	24050190 	li	a1,400
     d40:	a60201c4 	sh	v0,452(s0)
     d44:	24040064 	li	a0,100
     d48:	0c000000 	jal	0 <func_80B8EA80>
     d4c:	240501f4 	li	a1,500
     d50:	241907d0 	li	t9,2000
     d54:	a60201ca 	sh	v0,458(s0)
     d58:	a61901cc 	sh	t9,460(s0)
     d5c:	0c000000 	jal	0 <func_80B8EA80>
     d60:	02002025 	move	a0,s0
     d64:	860801c0 	lh	t0,448(s0)
     d68:	05030004 	bgezl	t0,d7c <func_80B8F788+0x74>
     d6c:	8fbf001c 	lw	ra,28(sp)
     d70:	0c000000 	jal	0 <func_80B8EA80>
     d74:	02002025 	move	a0,s0
     d78:	8fbf001c 	lw	ra,28(sp)
     d7c:	8fb00018 	lw	s0,24(sp)
     d80:	27bd0020 	addiu	sp,sp,32
     d84:	03e00008 	jr	ra
     d88:	00000000 	nop

00000d8c <func_80B8F80C>:
     d8c:	3c0e0000 	lui	t6,0x0
     d90:	25ce0000 	addiu	t6,t6,0
     d94:	240f0028 	li	t7,40
     d98:	24180bb8 	li	t8,3000
     d9c:	2419012c 	li	t9,300
     da0:	24083a98 	li	t0,15000
     da4:	24090fa0 	li	t1,4000
     da8:	240a18e4 	li	t2,6372
     dac:	ac8e01bc 	sw	t6,444(a0)
     db0:	a48f01c0 	sh	t7,448(a0)
     db4:	a49801c4 	sh	t8,452(a0)
     db8:	a49901c6 	sh	t9,454(a0)
     dbc:	a48801ca 	sh	t0,458(a0)
     dc0:	a48901cc 	sh	t1,460(a0)
     dc4:	03e00008 	jr	ra
     dc8:	a48a01d0 	sh	t2,464(a0)

00000dcc <func_80B8F84C>:
     dcc:	27bdffe0 	addiu	sp,sp,-32
     dd0:	afbf001c 	sw	ra,28(sp)
     dd4:	afb00018 	sw	s0,24(sp)
     dd8:	848e01c0 	lh	t6,448(a0)
     ddc:	00808025 	move	s0,a0
     de0:	25cfffff 	addiu	t7,t6,-1
     de4:	0c000000 	jal	0 <func_80B8EA80>
     de8:	a48f01c0 	sh	t7,448(a0)
     dec:	3c010000 	lui	at,0x0
     df0:	c4240000 	lwc1	$f4,0(at)
     df4:	24040898 	li	a0,2200
     df8:	4604003c 	c.lt.s	$f0,$f4
     dfc:	00000000 	nop
     e00:	45000008 	bc1f	e24 <func_80B8F84C+0x58>
     e04:	00000000 	nop
     e08:	0c000000 	jal	0 <func_80B8EA80>
     e0c:	240503e8 	li	a1,1000
     e10:	a60201c4 	sh	v0,452(s0)
     e14:	24042ee0 	li	a0,12000
     e18:	0c000000 	jal	0 <func_80B8EA80>
     e1c:	24051f40 	li	a1,8000
     e20:	a60201ca 	sh	v0,458(s0)
     e24:	0c000000 	jal	0 <func_80B8EA80>
     e28:	02002025 	move	a0,s0
     e2c:	861801c0 	lh	t8,448(s0)
     e30:	07030004 	bgezl	t8,e44 <func_80B8F84C+0x78>
     e34:	8fbf001c 	lw	ra,28(sp)
     e38:	0c000000 	jal	0 <func_80B8EA80>
     e3c:	02002025 	move	a0,s0
     e40:	8fbf001c 	lw	ra,28(sp)
     e44:	8fb00018 	lw	s0,24(sp)
     e48:	27bd0020 	addiu	sp,sp,32
     e4c:	03e00008 	jr	ra
     e50:	00000000 	nop

00000e54 <func_80B8F8D4>:
     e54:	3c0e0000 	lui	t6,0x0
     e58:	25ce0000 	addiu	t6,t6,0
     e5c:	03e00008 	jr	ra
     e60:	ac8e01bc 	sw	t6,444(a0)

00000e64 <func_80B8F8E4>:
     e64:	27bdffe0 	addiu	sp,sp,-32
     e68:	afb00018 	sw	s0,24(sp)
     e6c:	00808025 	move	s0,a0
     e70:	afbf001c 	sw	ra,28(sp)
     e74:	248401d0 	addiu	a0,a0,464
     e78:	240533e9 	li	a1,13289
     e7c:	0c000000 	jal	0 <func_80B8EA80>
     e80:	24060168 	li	a2,360
     e84:	0c000000 	jal	0 <func_80B8EA80>
     e88:	860401d0 	lh	a0,464(s0)
     e8c:	3c010000 	lui	at,0x0
     e90:	c4240000 	lwc1	$f4,0(at)
     e94:	860401d0 	lh	a0,464(s0)
     e98:	46040182 	mul.s	$f6,$f0,$f4
     e9c:	0c000000 	jal	0 <func_80B8EA80>
     ea0:	e6060054 	swc1	$f6,84(s0)
     ea4:	3c010000 	lui	at,0x0
     ea8:	c4280000 	lwc1	$f8,0(at)
     eac:	46080082 	mul.s	$f2,$f0,$f8
     eb0:	e6020058 	swc1	$f2,88(s0)
     eb4:	e6020050 	swc1	$f2,80(s0)
     eb8:	8fbf001c 	lw	ra,28(sp)
     ebc:	8fb00018 	lw	s0,24(sp)
     ec0:	27bd0020 	addiu	sp,sp,32
     ec4:	03e00008 	jr	ra
     ec8:	00000000 	nop

00000ecc <func_80B8F94C>:
     ecc:	3c0e0000 	lui	t6,0x0
     ed0:	25ce0000 	addiu	t6,t6,0
     ed4:	240f33e9 	li	t7,13289
     ed8:	ac8e01bc 	sw	t6,444(a0)
     edc:	03e00008 	jr	ra
     ee0:	a48f01d0 	sh	t7,464(a0)

00000ee4 <func_80B8F964>:
     ee4:	27bdffe8 	addiu	sp,sp,-24
     ee8:	afbf0014 	sw	ra,20(sp)
     eec:	848e01d0 	lh	t6,464(a0)
     ef0:	00802825 	move	a1,a0
     ef4:	25cff6a0 	addiu	t7,t6,-2400
     ef8:	a48f01d0 	sh	t7,464(a0)
     efc:	848401d0 	lh	a0,464(a0)
     f00:	0c000000 	jal	0 <func_80B8EA80>
     f04:	afa50018 	sw	a1,24(sp)
     f08:	3c010000 	lui	at,0x0
     f0c:	c4240000 	lwc1	$f4,0(at)
     f10:	8fa50018 	lw	a1,24(sp)
     f14:	46040182 	mul.s	$f6,$f0,$f4
     f18:	84a401d0 	lh	a0,464(a1)
     f1c:	0c000000 	jal	0 <func_80B8EA80>
     f20:	e4a60054 	swc1	$f6,84(a1)
     f24:	3c010000 	lui	at,0x0
     f28:	c4280000 	lwc1	$f8,0(at)
     f2c:	8fa50018 	lw	a1,24(sp)
     f30:	46080082 	mul.s	$f2,$f0,$f8
     f34:	84b801d0 	lh	t8,464(a1)
     f38:	2b0118e4 	slti	at,t8,6372
     f3c:	e4a20058 	swc1	$f2,88(a1)
     f40:	10200003 	beqz	at,f50 <func_80B8F964+0x6c>
     f44:	e4a20050 	swc1	$f2,80(a1)
     f48:	0c000000 	jal	0 <func_80B8EA80>
     f4c:	00a02025 	move	a0,a1
     f50:	8fbf0014 	lw	ra,20(sp)
     f54:	27bd0018 	addiu	sp,sp,24
     f58:	03e00008 	jr	ra
     f5c:	00000000 	nop

00000f60 <func_80B8F9E0>:
     f60:	3c0e0000 	lui	t6,0x0
     f64:	25ce0000 	addiu	t6,t6,0
     f68:	240f0bb8 	li	t7,3000
     f6c:	241800c8 	li	t8,200
     f70:	24193e80 	li	t9,16000
     f74:	240801f4 	li	t0,500
     f78:	24090010 	li	t1,16
     f7c:	ac8e01bc 	sw	t6,444(a0)
     f80:	a48f01c2 	sh	t7,450(a0)
     f84:	a48001c4 	sh	zero,452(a0)
     f88:	a49801c6 	sh	t8,454(a0)
     f8c:	a49901c8 	sh	t9,456(a0)
     f90:	a48801ca 	sh	t0,458(a0)
     f94:	a48001cc 	sh	zero,460(a0)
     f98:	03e00008 	jr	ra
     f9c:	a48901c0 	sh	t1,448(a0)

00000fa0 <func_80B8FA20>:
     fa0:	27bdffe8 	addiu	sp,sp,-24
     fa4:	afbf0014 	sw	ra,20(sp)
     fa8:	848e01c0 	lh	t6,448(a0)
     fac:	24010006 	li	at,6
     fb0:	241907d0 	li	t9,2000
     fb4:	25cfffff 	addiu	t7,t6,-1
     fb8:	a48f01c0 	sh	t7,448(a0)
     fbc:	849801c0 	lh	t8,448(a0)
     fc0:	17010002 	bne	t8,at,fcc <func_80B8FA20+0x2c>
     fc4:	00000000 	nop
     fc8:	a49901cc 	sh	t9,460(a0)
     fcc:	0c000000 	jal	0 <func_80B8EA80>
     fd0:	afa40018 	sw	a0,24(sp)
     fd4:	8fa40018 	lw	a0,24(sp)
     fd8:	848801c2 	lh	t0,450(a0)
     fdc:	5d000004 	bgtzl	t0,ff0 <func_80B8FA20+0x50>
     fe0:	8fbf0014 	lw	ra,20(sp)
     fe4:	0c000000 	jal	0 <func_80B8EA80>
     fe8:	00000000 	nop
     fec:	8fbf0014 	lw	ra,20(sp)
     ff0:	27bd0018 	addiu	sp,sp,24
     ff4:	03e00008 	jr	ra
     ff8:	00000000 	nop

00000ffc <ObjBean_Init>:
     ffc:	27bdffe0 	addiu	sp,sp,-32
    1000:	afa50024 	sw	a1,36(sp)
    1004:	afbf001c 	sw	ra,28(sp)
    1008:	afb00018 	sw	s0,24(sp)
    100c:	3c050000 	lui	a1,0x0
    1010:	00808025 	move	s0,a0
    1014:	0c000000 	jal	0 <func_80B8EA80>
    1018:	24a50000 	addiu	a1,a1,0
    101c:	3c0e0000 	lui	t6,0x0
    1020:	8dce0004 	lw	t6,4(t6)
    1024:	24010011 	li	at,17
    1028:	24020011 	li	v0,17
    102c:	11c00003 	beqz	t6,103c <ObjBean_Init+0x40>
    1030:	00000000 	nop
    1034:	10000001 	b	103c <ObjBean_Init+0x40>
    1038:	24020005 	li	v0,5
    103c:	54410068 	bnel	v0,at,11e0 <ObjBean_Init+0x1e4>
    1040:	8605001c 	lh	a1,28(s0)
    1044:	8605001c 	lh	a1,28(s0)
    1048:	8fa40024 	lw	a0,36(sp)
    104c:	0c000000 	jal	0 <func_80B8EA80>
    1050:	30a5003f 	andi	a1,a1,0x3f
    1054:	14400006 	bnez	v0,1070 <ObjBean_Init+0x74>
    1058:	3c0f0000 	lui	t7,0x0
    105c:	8def0000 	lw	t7,0(t7)
    1060:	24010001 	li	at,1
    1064:	85f81156 	lh	t8,4438(t7)
    1068:	17010058 	bne	t8,at,11cc <ObjBean_Init+0x1d0>
    106c:	00000000 	nop
    1070:	8602001c 	lh	v0,28(s0)
    1074:	2401001f 	li	at,31
    1078:	8fa50024 	lw	a1,36(sp)
    107c:	00021203 	sra	v0,v0,0x8
    1080:	3042001f 	andi	v0,v0,0x1f
    1084:	14410012 	bne	v0,at,10d0 <ObjBean_Init+0xd4>
    1088:	3c190001 	lui	t9,0x1
    108c:	3c040000 	lui	a0,0x0
    1090:	0c000000 	jal	0 <func_80B8EA80>
    1094:	24840000 	addiu	a0,a0,0
    1098:	3c040000 	lui	a0,0x0
    109c:	3c050000 	lui	a1,0x0
    10a0:	24a50000 	addiu	a1,a1,0
    10a4:	24840000 	addiu	a0,a0,0
    10a8:	2406038d 	li	a2,909
    10ac:	0c000000 	jal	0 <func_80B8EA80>
    10b0:	8607001c 	lh	a3,28(s0)
    10b4:	3c040000 	lui	a0,0x0
    10b8:	0c000000 	jal	0 <func_80B8EA80>
    10bc:	24840000 	addiu	a0,a0,0
    10c0:	0c000000 	jal	0 <func_80B8EA80>
    10c4:	02002025 	move	a0,s0
    10c8:	1000005e 	b	1244 <ObjBean_Init+0x248>
    10cc:	8fbf001c 	lw	ra,28(sp)
    10d0:	0325c821 	addu	t9,t9,a1
    10d4:	8f391e08 	lw	t9,7688(t9)
    10d8:	000240c0 	sll	t0,v0,0x3
    10dc:	3c040000 	lui	a0,0x0
    10e0:	03284821 	addu	t1,t9,t0
    10e4:	912a0000 	lbu	t2,0(t1)
    10e8:	29410003 	slti	at,t2,3
    10ec:	10200011 	beqz	at,1134 <ObjBean_Init+0x138>
    10f0:	00000000 	nop
    10f4:	0c000000 	jal	0 <func_80B8EA80>
    10f8:	24840000 	addiu	a0,a0,0
    10fc:	3c040000 	lui	a0,0x0
    1100:	3c050000 	lui	a1,0x0
    1104:	24a50000 	addiu	a1,a1,0
    1108:	24840000 	addiu	a0,a0,0
    110c:	24060399 	li	a2,921
    1110:	0c000000 	jal	0 <func_80B8EA80>
    1114:	8607001c 	lh	a3,28(s0)
    1118:	3c040000 	lui	a0,0x0
    111c:	0c000000 	jal	0 <func_80B8EA80>
    1120:	24840000 	addiu	a0,a0,0
    1124:	0c000000 	jal	0 <func_80B8EA80>
    1128:	02002025 	move	a0,s0
    112c:	10000045 	b	1244 <ObjBean_Init+0x248>
    1130:	8fbf001c 	lw	ra,28(sp)
    1134:	0c000000 	jal	0 <func_80B8EA80>
    1138:	02002025 	move	a0,s0
    113c:	02002025 	move	a0,s0
    1140:	0c000000 	jal	0 <func_80B8EA80>
    1144:	8fa50024 	lw	a1,36(sp)
    1148:	0c000000 	jal	0 <func_80B8EA80>
    114c:	02002025 	move	a0,s0
    1150:	0c000000 	jal	0 <func_80B8EA80>
    1154:	02002025 	move	a0,s0
    1158:	3c060600 	lui	a2,0x600
    115c:	24c605dc 	addiu	a2,a2,1500
    1160:	02002025 	move	a0,s0
    1164:	8fa50024 	lw	a1,36(sp)
    1168:	0c000000 	jal	0 <func_80B8EA80>
    116c:	24070003 	li	a3,3
    1170:	920b01f7 	lbu	t3,503(s0)
    1174:	02002025 	move	a0,s0
    1178:	356c0020 	ori	t4,t3,0x20
    117c:	a20c01f7 	sb	t4,503(s0)
    1180:	0c000000 	jal	0 <func_80B8EA80>
    1184:	8fa50024 	lw	a1,36(sp)
    1188:	920d01f7 	lbu	t5,503(s0)
    118c:	3c060000 	lui	a2,0x0
    1190:	3c07410c 	lui	a3,0x410c
    1194:	35ae0010 	ori	t6,t5,0x10
    1198:	a20e01f7 	sb	t6,503(s0)
    119c:	34e7cccd 	ori	a3,a3,0xcccd
    11a0:	24c60000 	addiu	a2,a2,0
    11a4:	260400b4 	addiu	a0,s0,180
    11a8:	0c000000 	jal	0 <func_80B8EA80>
    11ac:	24050000 	li	a1,0
    11b0:	02002025 	move	a0,s0
    11b4:	0c000000 	jal	0 <func_80B8EA80>
    11b8:	8fa50024 	lw	a1,36(sp)
    11bc:	860f0018 	lh	t7,24(s0)
    11c0:	31f80003 	andi	t8,t7,0x3
    11c4:	10000016 	b	1220 <ObjBean_Init+0x224>
    11c8:	a21801f6 	sb	t8,502(s0)
    11cc:	0c000000 	jal	0 <func_80B8EA80>
    11d0:	02002025 	move	a0,s0
    11d4:	1000001b 	b	1244 <ObjBean_Init+0x248>
    11d8:	8fbf001c 	lw	ra,28(sp)
    11dc:	8605001c 	lh	a1,28(s0)
    11e0:	8fa40024 	lw	a0,36(sp)
    11e4:	0c000000 	jal	0 <func_80B8EA80>
    11e8:	30a5003f 	andi	a1,a1,0x3f
    11ec:	14400006 	bnez	v0,1208 <ObjBean_Init+0x20c>
    11f0:	3c190000 	lui	t9,0x0
    11f4:	8f390000 	lw	t9,0(t9)
    11f8:	24010001 	li	at,1
    11fc:	87281156 	lh	t0,4438(t9)
    1200:	15010005 	bne	t0,at,1218 <ObjBean_Init+0x21c>
    1204:	00000000 	nop
    1208:	0c000000 	jal	0 <func_80B8EA80>
    120c:	02002025 	move	a0,s0
    1210:	10000004 	b	1224 <ObjBean_Init+0x228>
    1214:	a60000b8 	sh	zero,184(s0)
    1218:	0c000000 	jal	0 <func_80B8EA80>
    121c:	02002025 	move	a0,s0
    1220:	a60000b8 	sh	zero,184(s0)
    1224:	860200b8 	lh	v0,184(s0)
    1228:	3c040000 	lui	a0,0x0
    122c:	24840000 	addiu	a0,a0,0
    1230:	8605001c 	lh	a1,28(s0)
    1234:	a6020018 	sh	v0,24(s0)
    1238:	0c000000 	jal	0 <func_80B8EA80>
    123c:	a6020034 	sh	v0,52(s0)
    1240:	8fbf001c 	lw	ra,28(sp)
    1244:	8fb00018 	lw	s0,24(sp)
    1248:	27bd0020 	addiu	sp,sp,32
    124c:	03e00008 	jr	ra
    1250:	00000000 	nop

00001254 <ObjBean_Destroy>:
    1254:	27bdffe8 	addiu	sp,sp,-24
    1258:	afbf0014 	sw	ra,20(sp)
    125c:	afa5001c 	sw	a1,28(sp)
    1260:	908201f7 	lbu	v0,503(a0)
    1264:	00803825 	move	a3,a0
    1268:	00a02025 	move	a0,a1
    126c:	304e0020 	andi	t6,v0,0x20
    1270:	11c00006 	beqz	t6,128c <ObjBean_Destroy+0x38>
    1274:	24a50810 	addiu	a1,a1,2064
    1278:	8ce6014c 	lw	a2,332(a3)
    127c:	0c000000 	jal	0 <func_80B8EA80>
    1280:	afa70018 	sw	a3,24(sp)
    1284:	8fa70018 	lw	a3,24(sp)
    1288:	90e201f7 	lbu	v0,503(a3)
    128c:	30580010 	andi	t8,v0,0x10
    1290:	13000005 	beqz	t8,12a8 <ObjBean_Destroy+0x54>
    1294:	8fa4001c 	lw	a0,28(sp)
    1298:	24e50168 	addiu	a1,a3,360
    129c:	0c000000 	jal	0 <func_80B8EA80>
    12a0:	afa70018 	sw	a3,24(sp)
    12a4:	8fa70018 	lw	a3,24(sp)
    12a8:	3c020000 	lui	v0,0x0
    12ac:	24420000 	addiu	v0,v0,0
    12b0:	8c590000 	lw	t9,0(v0)
    12b4:	54f90003 	bnel	a3,t9,12c4 <ObjBean_Destroy+0x70>
    12b8:	8fbf0014 	lw	ra,20(sp)
    12bc:	ac400000 	sw	zero,0(v0)
    12c0:	8fbf0014 	lw	ra,20(sp)
    12c4:	27bd0018 	addiu	sp,sp,24
    12c8:	03e00008 	jr	ra
    12cc:	00000000 	nop

000012d0 <func_80B8FD50>:
    12d0:	27bdffe8 	addiu	sp,sp,-24
    12d4:	3c0e0000 	lui	t6,0x0
    12d8:	afbf0014 	sw	ra,20(sp)
    12dc:	25ce0000 	addiu	t6,t6,0
    12e0:	ac8e0164 	sw	t6,356(a0)
    12e4:	afa40018 	sw	a0,24(sp)
    12e8:	0c000000 	jal	0 <func_80B8EA80>
    12ec:	24050001 	li	a1,1
    12f0:	8fa40018 	lw	a0,24(sp)
    12f4:	240f002f 	li	t7,47
    12f8:	a48f010e 	sh	t7,270(a0)
    12fc:	8fbf0014 	lw	ra,20(sp)
    1300:	27bd0018 	addiu	sp,sp,24
    1304:	03e00008 	jr	ra
    1308:	00000000 	nop

0000130c <func_80B8FD8C>:
    130c:	27bdffe8 	addiu	sp,sp,-24
    1310:	afbf0014 	sw	ra,20(sp)
    1314:	afa40018 	sw	a0,24(sp)
    1318:	0c000000 	jal	0 <func_80B8EA80>
    131c:	afa5001c 	sw	a1,28(sp)
    1320:	1040000f 	beqz	v0,1360 <func_80B8FD8C+0x54>
    1324:	8fa40018 	lw	a0,24(sp)
    1328:	0c000000 	jal	0 <func_80B8EA80>
    132c:	8fa4001c 	lw	a0,28(sp)
    1330:	24010004 	li	at,4
    1334:	5441000f 	bnel	v0,at,1374 <func_80B8FD8C+0x68>
    1338:	8fbf0014 	lw	ra,20(sp)
    133c:	0c000000 	jal	0 <func_80B8EA80>
    1340:	8fa40018 	lw	a0,24(sp)
    1344:	8fae0018 	lw	t6,24(sp)
    1348:	8fa4001c 	lw	a0,28(sp)
    134c:	85c5001c 	lh	a1,28(t6)
    1350:	0c000000 	jal	0 <func_80B8EA80>
    1354:	30a5003f 	andi	a1,a1,0x3f
    1358:	10000006 	b	1374 <func_80B8FD8C+0x68>
    135c:	8fbf0014 	lw	ra,20(sp)
    1360:	8fa5001c 	lw	a1,28(sp)
    1364:	3c064220 	lui	a2,0x4220
    1368:	0c000000 	jal	0 <func_80B8EA80>
    136c:	24070004 	li	a3,4
    1370:	8fbf0014 	lw	ra,20(sp)
    1374:	27bd0018 	addiu	sp,sp,24
    1378:	03e00008 	jr	ra
    137c:	00000000 	nop

00001380 <func_80B8FE00>:
    1380:	27bdffe8 	addiu	sp,sp,-24
    1384:	3c0e0000 	lui	t6,0x0
    1388:	afbf0014 	sw	ra,20(sp)
    138c:	25ce0000 	addiu	t6,t6,0
    1390:	ac8e0164 	sw	t6,356(a0)
    1394:	afa40018 	sw	a0,24(sp)
    1398:	0c000000 	jal	0 <func_80B8EA80>
    139c:	24050001 	li	a1,1
    13a0:	8fa40018 	lw	a0,24(sp)
    13a4:	240f003c 	li	t7,60
    13a8:	a48f01b4 	sh	t7,436(a0)
    13ac:	8fbf0014 	lw	ra,20(sp)
    13b0:	27bd0018 	addiu	sp,sp,24
    13b4:	03e00008 	jr	ra
    13b8:	00000000 	nop

000013bc <func_80B8FE3C>:
    13bc:	27bdffe8 	addiu	sp,sp,-24
    13c0:	afbf0014 	sw	ra,20(sp)
    13c4:	afa5001c 	sw	a1,28(sp)
    13c8:	848e01b4 	lh	t6,436(a0)
    13cc:	5dc00004 	bgtzl	t6,13e0 <func_80B8FE3C+0x24>
    13d0:	8fbf0014 	lw	ra,20(sp)
    13d4:	0c000000 	jal	0 <func_80B8EA80>
    13d8:	00000000 	nop
    13dc:	8fbf0014 	lw	ra,20(sp)
    13e0:	27bd0018 	addiu	sp,sp,24
    13e4:	03e00008 	jr	ra
    13e8:	00000000 	nop

000013ec <func_80B8FE6C>:
    13ec:	27bdffe8 	addiu	sp,sp,-24
    13f0:	3c0e0000 	lui	t6,0x0
    13f4:	afbf0014 	sw	ra,20(sp)
    13f8:	25ce0000 	addiu	t6,t6,0
    13fc:	ac8e0164 	sw	t6,356(a0)
    1400:	afa40018 	sw	a0,24(sp)
    1404:	0c000000 	jal	0 <func_80B8EA80>
    1408:	24050003 	li	a1,3
    140c:	3c053c23 	lui	a1,0x3c23
    1410:	8fa40018 	lw	a0,24(sp)
    1414:	0c000000 	jal	0 <func_80B8EA80>
    1418:	34a5d70a 	ori	a1,a1,0xd70a
    141c:	8fbf0014 	lw	ra,20(sp)
    1420:	27bd0018 	addiu	sp,sp,24
    1424:	03e00008 	jr	ra
    1428:	00000000 	nop

0000142c <func_80B8FEAC>:
    142c:	27bdffd8 	addiu	sp,sp,-40
    1430:	afb00018 	sw	s0,24(sp)
    1434:	afa5002c 	sw	a1,44(sp)
    1438:	00808025 	move	s0,a0
    143c:	afbf001c 	sw	ra,28(sp)
    1440:	3c053e2a 	lui	a1,0x3e2a
    1444:	3c063c23 	lui	a2,0x3c23
    1448:	34c6d70a 	ori	a2,a2,0xd70a
    144c:	34a5ba63 	ori	a1,a1,0xba63
    1450:	0c000000 	jal	0 <func_80B8EA80>
    1454:	24840054 	addiu	a0,a0,84
    1458:	30430001 	andi	v1,v0,0x1
    145c:	3c053d12 	lui	a1,0x3d12
    1460:	3c063a94 	lui	a2,0x3a94
    1464:	34c61c82 	ori	a2,a2,0x1c82
    1468:	34a531c4 	ori	a1,a1,0x31c4
    146c:	afa30024 	sw	v1,36(sp)
    1470:	0c000000 	jal	0 <func_80B8EA80>
    1474:	26040050 	addiu	a0,s0,80
    1478:	8fa30024 	lw	v1,36(sp)
    147c:	c6040050 	lwc1	$f4,80(s0)
    1480:	240f0001 	li	t7,1
    1484:	00621824 	and	v1,v1,v0
    1488:	10600008 	beqz	v1,14ac <func_80B8FEAC+0x80>
    148c:	e6040058 	swc1	$f4,88(s0)
    1490:	860e01b4 	lh	t6,436(s0)
    1494:	5dc00007 	bgtzl	t6,14b4 <func_80B8FEAC+0x88>
    1498:	02002025 	move	a0,s0
    149c:	0c000000 	jal	0 <func_80B8EA80>
    14a0:	02002025 	move	a0,s0
    14a4:	10000003 	b	14b4 <func_80B8FEAC+0x88>
    14a8:	02002025 	move	a0,s0
    14ac:	a60f01b4 	sh	t7,436(s0)
    14b0:	02002025 	move	a0,s0
    14b4:	0c000000 	jal	0 <func_80B8EA80>
    14b8:	240500c6 	li	a1,198
    14bc:	8fbf001c 	lw	ra,28(sp)
    14c0:	8fb00018 	lw	s0,24(sp)
    14c4:	27bd0028 	addiu	sp,sp,40
    14c8:	03e00008 	jr	ra
    14cc:	00000000 	nop

000014d0 <func_80B8FF50>:
    14d0:	27bdffe8 	addiu	sp,sp,-24
    14d4:	3c0e0000 	lui	t6,0x0
    14d8:	afbf0014 	sw	ra,20(sp)
    14dc:	25ce0000 	addiu	t6,t6,0
    14e0:	ac8e0164 	sw	t6,356(a0)
    14e4:	afa40018 	sw	a0,24(sp)
    14e8:	0c000000 	jal	0 <func_80B8EA80>
    14ec:	24050003 	li	a1,3
    14f0:	8fa40018 	lw	a0,24(sp)
    14f4:	240f33e9 	li	t7,13289
    14f8:	a48f01b6 	sh	t7,438(a0)
    14fc:	8fbf0014 	lw	ra,20(sp)
    1500:	27bd0018 	addiu	sp,sp,24
    1504:	03e00008 	jr	ra
    1508:	00000000 	nop

0000150c <func_80B8FF8C>:
    150c:	27bdffe8 	addiu	sp,sp,-24
    1510:	afbf0014 	sw	ra,20(sp)
    1514:	afa40018 	sw	a0,24(sp)
    1518:	afa5001c 	sw	a1,28(sp)
    151c:	848e01b6 	lh	t6,438(a0)
    1520:	00802825 	move	a1,a0
    1524:	25cff6a0 	addiu	t7,t6,-2400
    1528:	a48f01b6 	sh	t7,438(a0)
    152c:	848401b6 	lh	a0,438(a0)
    1530:	0c000000 	jal	0 <func_80B8EA80>
    1534:	afa50018 	sw	a1,24(sp)
    1538:	3c010000 	lui	at,0x0
    153c:	c4240000 	lwc1	$f4,0(at)
    1540:	8fa50018 	lw	a1,24(sp)
    1544:	46040182 	mul.s	$f6,$f0,$f4
    1548:	84a401b6 	lh	a0,438(a1)
    154c:	0c000000 	jal	0 <func_80B8EA80>
    1550:	e4a60054 	swc1	$f6,84(a1)
    1554:	3c010000 	lui	at,0x0
    1558:	c4280000 	lwc1	$f8,0(at)
    155c:	8fa50018 	lw	a1,24(sp)
    1560:	46080082 	mul.s	$f2,$f0,$f8
    1564:	84b801b6 	lh	t8,438(a1)
    1568:	2b0118e4 	slti	at,t8,6372
    156c:	e4a20058 	swc1	$f2,88(a1)
    1570:	10200003 	beqz	at,1580 <func_80B8FF8C+0x74>
    1574:	e4a20050 	swc1	$f2,80(a1)
    1578:	0c000000 	jal	0 <func_80B8EA80>
    157c:	00a02025 	move	a0,a1
    1580:	8fbf0014 	lw	ra,20(sp)
    1584:	27bd0018 	addiu	sp,sp,24
    1588:	03e00008 	jr	ra
    158c:	00000000 	nop

00001590 <func_80B90010>:
    1590:	27bdffe8 	addiu	sp,sp,-24
    1594:	3c0e0000 	lui	t6,0x0
    1598:	afbf0014 	sw	ra,20(sp)
    159c:	25ce0000 	addiu	t6,t6,0
    15a0:	ac8e0164 	sw	t6,356(a0)
    15a4:	afa40018 	sw	a0,24(sp)
    15a8:	0c000000 	jal	0 <func_80B8EA80>
    15ac:	24050003 	li	a1,3
    15b0:	8fa40018 	lw	a0,24(sp)
    15b4:	240f0bb8 	li	t7,3000
    15b8:	a48001b6 	sh	zero,438(a0)
    15bc:	a48f01b8 	sh	t7,440(a0)
    15c0:	8fbf0014 	lw	ra,20(sp)
    15c4:	27bd0018 	addiu	sp,sp,24
    15c8:	03e00008 	jr	ra
    15cc:	00000000 	nop

000015d0 <func_80B90050>:
    15d0:	27bdffd8 	addiu	sp,sp,-40
    15d4:	afbf001c 	sw	ra,28(sp)
    15d8:	afb00018 	sw	s0,24(sp)
    15dc:	afa5002c 	sw	a1,44(sp)
    15e0:	848e01b6 	lh	t6,438(a0)
    15e4:	849801b8 	lh	t8,440(a0)
    15e8:	00808025 	move	s0,a0
    15ec:	25cf3e80 	addiu	t7,t6,16000
    15f0:	2719ff38 	addiu	t9,t8,-200
    15f4:	a48f01b6 	sh	t7,438(a0)
    15f8:	a49901b8 	sh	t9,440(a0)
    15fc:	0c000000 	jal	0 <func_80B8EA80>
    1600:	848401b6 	lh	a0,438(a0)
    1604:	860801b8 	lh	t0,440(s0)
    1608:	3c010000 	lui	at,0x0
    160c:	c4240000 	lwc1	$f4,0(at)
    1610:	44883000 	mtc1	t0,$f6
    1614:	00000000 	nop
    1618:	46803220 	cvt.s.w	$f8,$f6
    161c:	46080282 	mul.s	$f10,$f0,$f8
    1620:	460a2401 	sub.s	$f16,$f4,$f10
    1624:	4600848d 	trunc.w.s	$f18,$f16
    1628:	44049000 	mfc1	a0,$f18
    162c:	00000000 	nop
    1630:	00042400 	sll	a0,a0,0x10
    1634:	00042403 	sra	a0,a0,0x10
    1638:	0c000000 	jal	0 <func_80B8EA80>
    163c:	a7a40026 	sh	a0,38(sp)
    1640:	3c010000 	lui	at,0x0
    1644:	c4260000 	lwc1	$f6,0(at)
    1648:	87a40026 	lh	a0,38(sp)
    164c:	46060202 	mul.s	$f8,$f0,$f6
    1650:	0c000000 	jal	0 <func_80B8EA80>
    1654:	e6080054 	swc1	$f8,84(s0)
    1658:	3c010000 	lui	at,0x0
    165c:	c4240000 	lwc1	$f4,0(at)
    1660:	860a01b8 	lh	t2,440(s0)
    1664:	46040082 	mul.s	$f2,$f0,$f4
    1668:	e6020058 	swc1	$f2,88(s0)
    166c:	05410003 	bgez	t2,167c <func_80B90050+0xac>
    1670:	e6020050 	swc1	$f2,80(s0)
    1674:	0c000000 	jal	0 <func_80B8EA80>
    1678:	02002025 	move	a0,s0
    167c:	8fbf001c 	lw	ra,28(sp)
    1680:	8fb00018 	lw	s0,24(sp)
    1684:	27bd0028 	addiu	sp,sp,40
    1688:	03e00008 	jr	ra
    168c:	00000000 	nop

00001690 <func_80B90110>:
    1690:	27bdffe8 	addiu	sp,sp,-24
    1694:	3c0e0000 	lui	t6,0x0
    1698:	afbf0014 	sw	ra,20(sp)
    169c:	25ce0000 	addiu	t6,t6,0
    16a0:	ac8e0164 	sw	t6,356(a0)
    16a4:	afa40018 	sw	a0,24(sp)
    16a8:	0c000000 	jal	0 <func_80B8EA80>
    16ac:	24050003 	li	a1,3
    16b0:	3c053dcc 	lui	a1,0x3dcc
    16b4:	34a5cccd 	ori	a1,a1,0xcccd
    16b8:	0c000000 	jal	0 <func_80B8EA80>
    16bc:	8fa40018 	lw	a0,24(sp)
    16c0:	0c000000 	jal	0 <func_80B8EA80>
    16c4:	8fa40018 	lw	a0,24(sp)
    16c8:	8fbf0014 	lw	ra,20(sp)
    16cc:	27bd0018 	addiu	sp,sp,24
    16d0:	03e00008 	jr	ra
    16d4:	00000000 	nop

000016d8 <func_80B90158>:
    16d8:	27bdffd8 	addiu	sp,sp,-40
    16dc:	afb00020 	sw	s0,32(sp)
    16e0:	00808025 	move	s0,a0
    16e4:	afbf0024 	sw	ra,36(sp)
    16e8:	afa5002c 	sw	a1,44(sp)
    16ec:	8e1901bc 	lw	t9,444(s0)
    16f0:	0320f809 	jalr	t9
    16f4:	00000000 	nop
    16f8:	920e01f7 	lbu	t6,503(s0)
    16fc:	8fa4002c 	lw	a0,44(sp)
    1700:	31cf0040 	andi	t7,t6,0x40
    1704:	15e00020 	bnez	t7,1788 <func_80B90158+0xb0>
    1708:	00000000 	nop
    170c:	0c000000 	jal	0 <func_80B8EA80>
    1710:	24050005 	li	a1,5
    1714:	1040001c 	beqz	v0,1788 <func_80B90158+0xb0>
    1718:	3c030000 	lui	v1,0x0
    171c:	24630000 	addiu	v1,v1,0
    1720:	8c780000 	lw	t8,0(v1)
    1724:	3c014248 	lui	at,0x4248
    1728:	17000017 	bnez	t8,1788 <func_80B90158+0xb0>
    172c:	00000000 	nop
    1730:	c6040090 	lwc1	$f4,144(s0)
    1734:	44813000 	mtc1	at,$f6
    1738:	00000000 	nop
    173c:	4606203c 	c.lt.s	$f4,$f6
    1740:	00000000 	nop
    1744:	45000010 	bc1f	1788 <func_80B90158+0xb0>
    1748:	00000000 	nop
    174c:	0c000000 	jal	0 <func_80B8EA80>
    1750:	02002025 	move	a0,s0
    1754:	3c030000 	lui	v1,0x0
    1758:	24630000 	addiu	v1,v1,0
    175c:	ac700000 	sw	s0,0(v1)
    1760:	8fa4002c 	lw	a0,44(sp)
    1764:	240508a2 	li	a1,2210
    1768:	2406ff9d 	li	a2,-99
    176c:	02003825 	move	a3,s0
    1770:	0c000000 	jal	0 <func_80B8EA80>
    1774:	afa00010 	sw	zero,16(sp)
    1778:	8e080004 	lw	t0,4(s0)
    177c:	35090010 	ori	t1,t0,0x10
    1780:	1000000d 	b	17b8 <func_80B90158+0xe0>
    1784:	ae090004 	sw	t1,4(s0)
    1788:	3c030000 	lui	v1,0x0
    178c:	24630000 	addiu	v1,v1,0
    1790:	8c6a0000 	lw	t2,0(v1)
    1794:	8fa4002c 	lw	a0,44(sp)
    1798:	560a0008 	bnel	s0,t2,17bc <func_80B90158+0xe4>
    179c:	8fbf0024 	lw	ra,36(sp)
    17a0:	0c000000 	jal	0 <func_80B8EA80>
    17a4:	24050005 	li	a1,5
    17a8:	3c030000 	lui	v1,0x0
    17ac:	14400002 	bnez	v0,17b8 <func_80B90158+0xe0>
    17b0:	24630000 	addiu	v1,v1,0
    17b4:	ac600000 	sw	zero,0(v1)
    17b8:	8fbf0024 	lw	ra,36(sp)
    17bc:	8fb00020 	lw	s0,32(sp)
    17c0:	27bd0028 	addiu	sp,sp,40
    17c4:	03e00008 	jr	ra
    17c8:	00000000 	nop

000017cc <func_80B9024C>:
    17cc:	27bdffe8 	addiu	sp,sp,-24
    17d0:	3c0e0000 	lui	t6,0x0
    17d4:	afbf0014 	sw	ra,20(sp)
    17d8:	25ce0000 	addiu	t6,t6,0
    17dc:	ac8e0164 	sw	t6,356(a0)
    17e0:	afa40018 	sw	a0,24(sp)
    17e4:	0c000000 	jal	0 <func_80B8EA80>
    17e8:	24050003 	li	a1,3
    17ec:	0c000000 	jal	0 <func_80B8EA80>
    17f0:	8fa40018 	lw	a0,24(sp)
    17f4:	8fb80018 	lw	t8,24(sp)
    17f8:	240f0032 	li	t7,50
    17fc:	a70f01b4 	sh	t7,436(t8)
    1800:	8fbf0014 	lw	ra,20(sp)
    1804:	27bd0018 	addiu	sp,sp,24
    1808:	03e00008 	jr	ra
    180c:	00000000 	nop

00001810 <func_80B90290>:
    1810:	27bdffe8 	addiu	sp,sp,-24
    1814:	afbf0014 	sw	ra,20(sp)
    1818:	afa5001c 	sw	a1,28(sp)
    181c:	afa40018 	sw	a0,24(sp)
    1820:	8c9901bc 	lw	t9,444(a0)
    1824:	0320f809 	jalr	t9
    1828:	00000000 	nop
    182c:	8fa40018 	lw	a0,24(sp)
    1830:	848e01b4 	lh	t6,436(a0)
    1834:	5dc00004 	bgtzl	t6,1848 <func_80B90290+0x38>
    1838:	8fbf0014 	lw	ra,20(sp)
    183c:	0c000000 	jal	0 <func_80B8EA80>
    1840:	00000000 	nop
    1844:	8fbf0014 	lw	ra,20(sp)
    1848:	27bd0018 	addiu	sp,sp,24
    184c:	03e00008 	jr	ra
    1850:	00000000 	nop

00001854 <func_80B902D4>:
    1854:	27bdffe8 	addiu	sp,sp,-24
    1858:	3c0e0000 	lui	t6,0x0
    185c:	afbf0014 	sw	ra,20(sp)
    1860:	25ce0000 	addiu	t6,t6,0
    1864:	ac8e0164 	sw	t6,356(a0)
    1868:	afa40018 	sw	a0,24(sp)
    186c:	0c000000 	jal	0 <func_80B8EA80>
    1870:	2405000b 	li	a1,11
    1874:	8fa40018 	lw	a0,24(sp)
    1878:	44802000 	mtc1	zero,$f4
    187c:	00000000 	nop
    1880:	e48401d4 	swc1	$f4,468(a0)
    1884:	8fbf0014 	lw	ra,20(sp)
    1888:	27bd0018 	addiu	sp,sp,24
    188c:	03e00008 	jr	ra
    1890:	00000000 	nop

00001894 <func_80B90314>:
    1894:	27bdffe8 	addiu	sp,sp,-24
    1898:	afbf0014 	sw	ra,20(sp)
    189c:	afa5001c 	sw	a1,28(sp)
    18a0:	afa40018 	sw	a0,24(sp)
    18a4:	8c9901bc 	lw	t9,444(a0)
    18a8:	0320f809 	jalr	t9
    18ac:	00000000 	nop
    18b0:	8fa40018 	lw	a0,24(sp)
    18b4:	3c010000 	lui	at,0x0
    18b8:	c4260000 	lwc1	$f6,0(at)
    18bc:	c48401d4 	lwc1	$f4,468(a0)
    18c0:	3c010000 	lui	at,0x0
    18c4:	848e0016 	lh	t6,22(a0)
    18c8:	46062200 	add.s	$f8,$f4,$f6
    18cc:	c484000c 	lwc1	$f4,12(a0)
    18d0:	e48801d4 	swc1	$f8,468(a0)
    18d4:	c42a0000 	lwc1	$f10,0(at)
    18d8:	c48001d4 	lwc1	$f0,468(a0)
    18dc:	3c014448 	lui	at,0x4448
    18e0:	44813000 	mtc1	at,$f6
    18e4:	460a0402 	mul.s	$f16,$f0,$f10
    18e8:	3c010000 	lui	at,0x0
    18ec:	46060202 	mul.s	$f8,$f0,$f6
    18f0:	4600848d 	trunc.w.s	$f18,$f16
    18f4:	46082280 	add.s	$f10,$f4,$f8
    18f8:	44099000 	mfc1	t1,$f18
    18fc:	00000000 	nop
    1900:	01c95021 	addu	t2,t6,t1
    1904:	a48a00b6 	sh	t2,182(a0)
    1908:	e48a0028 	swc1	$f10,40(a0)
    190c:	c4300000 	lwc1	$f16,0(at)
    1910:	4600803e 	c.le.s	$f16,$f0
    1914:	00000000 	nop
    1918:	45000004 	bc1f	192c <func_80B90314+0x98>
    191c:	00000000 	nop
    1920:	0c000000 	jal	0 <func_80B8EA80>
    1924:	afa40018 	sw	a0,24(sp)
    1928:	8fa40018 	lw	a0,24(sp)
    192c:	0c000000 	jal	0 <func_80B8EA80>
    1930:	240500c7 	li	a1,199
    1934:	8fbf0014 	lw	ra,20(sp)
    1938:	27bd0018 	addiu	sp,sp,24
    193c:	03e00008 	jr	ra
    1940:	00000000 	nop

00001944 <func_80B903C4>:
    1944:	27bdffe8 	addiu	sp,sp,-24
    1948:	3c0e0000 	lui	t6,0x0
    194c:	afbf0014 	sw	ra,20(sp)
    1950:	25ce0000 	addiu	t6,t6,0
    1954:	ac8e0164 	sw	t6,356(a0)
    1958:	afa40018 	sw	a0,24(sp)
    195c:	0c000000 	jal	0 <func_80B8EA80>
    1960:	2405000b 	li	a1,11
    1964:	8fa40018 	lw	a0,24(sp)
    1968:	240f003c 	li	t7,60
    196c:	a48f01b4 	sh	t7,436(a0)
    1970:	8fbf0014 	lw	ra,20(sp)
    1974:	27bd0018 	addiu	sp,sp,24
    1978:	03e00008 	jr	ra
    197c:	00000000 	nop

00001980 <func_80B90400>:
    1980:	27bdffb8 	addiu	sp,sp,-72
    1984:	afb40028 	sw	s4,40(sp)
    1988:	0080a025 	move	s4,a0
    198c:	afbf002c 	sw	ra,44(sp)
    1990:	afb30024 	sw	s3,36(sp)
    1994:	afb20020 	sw	s2,32(sp)
    1998:	afb1001c 	sw	s1,28(sp)
    199c:	afb00018 	sw	s0,24(sp)
    19a0:	8e9901bc 	lw	t9,444(s4)
    19a4:	00a09825 	move	s3,a1
    19a8:	0320f809 	jalr	t9
    19ac:	00000000 	nop
    19b0:	868201b4 	lh	v0,436(s4)
    19b4:	24010028 	li	at,40
    19b8:	54410006 	bnel	v0,at,19d4 <func_80B90400+0x54>
    19bc:	2401001e 	li	at,30
    19c0:	0c000000 	jal	0 <func_80B8EA80>
    19c4:	02802025 	move	a0,s4
    19c8:	1000002a 	b	1a74 <func_80B90400+0xf4>
    19cc:	8fbf002c 	lw	ra,44(sp)
    19d0:	2401001e 	li	at,30
    19d4:	14410022 	bne	v0,at,1a60 <func_80B90400+0xe0>
    19d8:	00000000 	nop
    19dc:	928e01f7 	lbu	t6,503(s4)
    19e0:	31cf0040 	andi	t7,t6,0x40
    19e4:	55e00023 	bnezl	t7,1a74 <func_80B90400+0xf4>
    19e8:	8fbf002c 	lw	ra,44(sp)
    19ec:	c6840024 	lwc1	$f4,36(s4)
    19f0:	3c0141c8 	lui	at,0x41c8
    19f4:	44814000 	mtc1	at,$f8
    19f8:	e7a40038 	swc1	$f4,56(sp)
    19fc:	c6860028 	lwc1	$f6,40(s4)
    1a00:	00008025 	move	s0,zero
    1a04:	24120003 	li	s2,3
    1a08:	46083281 	sub.s	$f10,$f6,$f8
    1a0c:	27b10038 	addiu	s1,sp,56
    1a10:	e7aa003c 	swc1	$f10,60(sp)
    1a14:	c690002c 	lwc1	$f16,44(s4)
    1a18:	e7b00040 	swc1	$f16,64(sp)
    1a1c:	02602025 	move	a0,s3
    1a20:	02202825 	move	a1,s1
    1a24:	0c000000 	jal	0 <func_80B8EA80>
    1a28:	24060012 	li	a2,18
    1a2c:	26100001 	addiu	s0,s0,1
    1a30:	5612fffb 	bnel	s0,s2,1a20 <func_80B90400+0xa0>
    1a34:	02602025 	move	a0,s3
    1a38:	929801f7 	lbu	t8,503(s4)
    1a3c:	02802025 	move	a0,s4
    1a40:	240528e7 	li	a1,10471
    1a44:	37080040 	ori	t0,t8,0x40
    1a48:	0c000000 	jal	0 <func_80B8EA80>
    1a4c:	a28801f7 	sb	t0,503(s4)
    1a50:	0c000000 	jal	0 <func_80B8EA80>
    1a54:	24044807 	li	a0,18439
    1a58:	10000006 	b	1a74 <func_80B90400+0xf4>
    1a5c:	8fbf002c 	lw	ra,44(sp)
    1a60:	5c400004 	bgtzl	v0,1a74 <func_80B90400+0xf4>
    1a64:	8fbf002c 	lw	ra,44(sp)
    1a68:	0c000000 	jal	0 <func_80B8EA80>
    1a6c:	02802025 	move	a0,s4
    1a70:	8fbf002c 	lw	ra,44(sp)
    1a74:	8fb00018 	lw	s0,24(sp)
    1a78:	8fb1001c 	lw	s1,28(sp)
    1a7c:	8fb20020 	lw	s2,32(sp)
    1a80:	8fb30024 	lw	s3,36(sp)
    1a84:	8fb40028 	lw	s4,40(sp)
    1a88:	03e00008 	jr	ra
    1a8c:	27bd0048 	addiu	sp,sp,72

00001a90 <func_80B90510>:
    1a90:	27bdffe8 	addiu	sp,sp,-24
    1a94:	3c0e0000 	lui	t6,0x0
    1a98:	afbf0014 	sw	ra,20(sp)
    1a9c:	25ce0000 	addiu	t6,t6,0
    1aa0:	ac8e0164 	sw	t6,356(a0)
    1aa4:	afa40018 	sw	a0,24(sp)
    1aa8:	0c000000 	jal	0 <func_80B8EA80>
    1aac:	2405000b 	li	a1,11
    1ab0:	0c000000 	jal	0 <func_80B8EA80>
    1ab4:	8fa40018 	lw	a0,24(sp)
    1ab8:	8fbf0014 	lw	ra,20(sp)
    1abc:	27bd0018 	addiu	sp,sp,24
    1ac0:	03e00008 	jr	ra
    1ac4:	00000000 	nop

00001ac8 <func_80B90548>:
    1ac8:	27bdffe8 	addiu	sp,sp,-24
    1acc:	afbf0014 	sw	ra,20(sp)
    1ad0:	afa5001c 	sw	a1,28(sp)
    1ad4:	afa40018 	sw	a0,24(sp)
    1ad8:	8c9901bc 	lw	t9,444(a0)
    1adc:	0320f809 	jalr	t9
    1ae0:	00000000 	nop
    1ae4:	8fa40018 	lw	a0,24(sp)
    1ae8:	3c010000 	lui	at,0x0
    1aec:	c4260000 	lwc1	$f6,0(at)
    1af0:	c48401d4 	lwc1	$f4,468(a0)
    1af4:	3c010000 	lui	at,0x0
    1af8:	44801000 	mtc1	zero,$f2
    1afc:	46062201 	sub.s	$f8,$f4,$f6
    1b00:	c484000c 	lwc1	$f4,12(a0)
    1b04:	84820016 	lh	v0,22(a0)
    1b08:	e48801d4 	swc1	$f8,468(a0)
    1b0c:	c42a0000 	lwc1	$f10,0(at)
    1b10:	c48001d4 	lwc1	$f0,468(a0)
    1b14:	3c014448 	lui	at,0x4448
    1b18:	44813000 	mtc1	at,$f6
    1b1c:	460a0402 	mul.s	$f16,$f0,$f10
    1b20:	4602003e 	c.le.s	$f0,$f2
    1b24:	46060202 	mul.s	$f8,$f0,$f6
    1b28:	4600848d 	trunc.w.s	$f18,$f16
    1b2c:	46082280 	add.s	$f10,$f4,$f8
    1b30:	44089000 	mfc1	t0,$f18
    1b34:	00000000 	nop
    1b38:	00484821 	addu	t1,v0,t0
    1b3c:	a48900b6 	sh	t1,182(a0)
    1b40:	45000004 	bc1f	1b54 <func_80B90548+0x8c>
    1b44:	e48a0028 	swc1	$f10,40(a0)
    1b48:	e48201d4 	swc1	$f2,468(a0)
    1b4c:	0c000000 	jal	0 <func_80B8EA80>
    1b50:	a48200b6 	sh	v0,182(a0)
    1b54:	8fbf0014 	lw	ra,20(sp)
    1b58:	27bd0018 	addiu	sp,sp,24
    1b5c:	03e00008 	jr	ra
    1b60:	00000000 	nop

00001b64 <func_80B905E4>:
    1b64:	27bdffe8 	addiu	sp,sp,-24
    1b68:	3c0e0000 	lui	t6,0x0
    1b6c:	afbf0014 	sw	ra,20(sp)
    1b70:	25ce0000 	addiu	t6,t6,0
    1b74:	ac8e0164 	sw	t6,356(a0)
    1b78:	afa40018 	sw	a0,24(sp)
    1b7c:	0c000000 	jal	0 <func_80B8EA80>
    1b80:	24050003 	li	a1,3
    1b84:	8fa40018 	lw	a0,24(sp)
    1b88:	240f001e 	li	t7,30
    1b8c:	a48f01b4 	sh	t7,436(a0)
    1b90:	8fbf0014 	lw	ra,20(sp)
    1b94:	27bd0018 	addiu	sp,sp,24
    1b98:	03e00008 	jr	ra
    1b9c:	00000000 	nop

00001ba0 <func_80B90620>:
    1ba0:	27bdffe8 	addiu	sp,sp,-24
    1ba4:	afbf0014 	sw	ra,20(sp)
    1ba8:	afa5001c 	sw	a1,28(sp)
    1bac:	afa40018 	sw	a0,24(sp)
    1bb0:	8c9901bc 	lw	t9,444(a0)
    1bb4:	0320f809 	jalr	t9
    1bb8:	00000000 	nop
    1bbc:	8fa40018 	lw	a0,24(sp)
    1bc0:	848e01b4 	lh	t6,436(a0)
    1bc4:	5dc00009 	bgtzl	t6,1bec <func_80B90620+0x4c>
    1bc8:	8fbf0014 	lw	ra,20(sp)
    1bcc:	0c000000 	jal	0 <func_80B8EA80>
    1bd0:	afa40018 	sw	a0,24(sp)
    1bd4:	8fa40018 	lw	a0,24(sp)
    1bd8:	2401ffef 	li	at,-17
    1bdc:	8c8f0004 	lw	t7,4(a0)
    1be0:	01e1c024 	and	t8,t7,at
    1be4:	ac980004 	sw	t8,4(a0)
    1be8:	8fbf0014 	lw	ra,20(sp)
    1bec:	27bd0018 	addiu	sp,sp,24
    1bf0:	03e00008 	jr	ra
    1bf4:	00000000 	nop

00001bf8 <func_80B90678>:
    1bf8:	27bdffe8 	addiu	sp,sp,-24
    1bfc:	3c0e0000 	lui	t6,0x0
    1c00:	afbf0014 	sw	ra,20(sp)
    1c04:	25ce0000 	addiu	t6,t6,0
    1c08:	ac8e0164 	sw	t6,356(a0)
    1c0c:	0c000000 	jal	0 <func_80B8EA80>
    1c10:	24050004 	li	a1,4
    1c14:	8fbf0014 	lw	ra,20(sp)
    1c18:	27bd0018 	addiu	sp,sp,24
    1c1c:	03e00008 	jr	ra
    1c20:	00000000 	nop

00001c24 <func_80B906A4>:
    1c24:	27bdffe8 	addiu	sp,sp,-24
    1c28:	afbf0014 	sw	ra,20(sp)
    1c2c:	afa40018 	sw	a0,24(sp)
    1c30:	0c000000 	jal	0 <func_80B8EA80>
    1c34:	afa5001c 	sw	a1,28(sp)
    1c38:	10400010 	beqz	v0,1c7c <func_80B906A4+0x58>
    1c3c:	00000000 	nop
    1c40:	0c000000 	jal	0 <func_80B8EA80>
    1c44:	8fa40018 	lw	a0,24(sp)
    1c48:	8fa3001c 	lw	v1,28(sp)
    1c4c:	2401005b 	li	at,91
    1c50:	2405002c 	li	a1,44
    1c54:	846e00a4 	lh	t6,164(v1)
    1c58:	15c10006 	bne	t6,at,1c74 <func_80B906A4+0x50>
    1c5c:	00000000 	nop
    1c60:	8c640790 	lw	a0,1936(v1)
    1c64:	0c000000 	jal	0 <func_80B8EA80>
    1c68:	2405002d 	li	a1,45
    1c6c:	10000003 	b	1c7c <func_80B906A4+0x58>
    1c70:	00000000 	nop
    1c74:	0c000000 	jal	0 <func_80B8EA80>
    1c78:	8c640790 	lw	a0,1936(v1)
    1c7c:	0c000000 	jal	0 <func_80B8EA80>
    1c80:	8fa40018 	lw	a0,24(sp)
    1c84:	8fbf0014 	lw	ra,20(sp)
    1c88:	27bd0018 	addiu	sp,sp,24
    1c8c:	03e00008 	jr	ra
    1c90:	00000000 	nop

00001c94 <func_80B90714>:
    1c94:	27bdffe8 	addiu	sp,sp,-24
    1c98:	3c0e0000 	lui	t6,0x0
    1c9c:	afbf0014 	sw	ra,20(sp)
    1ca0:	25ce0000 	addiu	t6,t6,0
    1ca4:	ac8e0164 	sw	t6,356(a0)
    1ca8:	afa40018 	sw	a0,24(sp)
    1cac:	0c000000 	jal	0 <func_80B8EA80>
    1cb0:	24050004 	li	a1,4
    1cb4:	8fa40018 	lw	a0,24(sp)
    1cb8:	44802000 	mtc1	zero,$f4
    1cbc:	8c8f0004 	lw	t7,4(a0)
    1cc0:	e4840068 	swc1	$f4,104(a0)
    1cc4:	35f80010 	ori	t8,t7,0x10
    1cc8:	ac980004 	sw	t8,4(a0)
    1ccc:	8fbf0014 	lw	ra,20(sp)
    1cd0:	27bd0018 	addiu	sp,sp,24
    1cd4:	03e00008 	jr	ra
    1cd8:	00000000 	nop

00001cdc <func_80B9075C>:
    1cdc:	27bdffe0 	addiu	sp,sp,-32
    1ce0:	afbf001c 	sw	ra,28(sp)
    1ce4:	afb10018 	sw	s1,24(sp)
    1ce8:	afb00014 	sw	s0,20(sp)
    1cec:	00a08025 	move	s0,a1
    1cf0:	0c000000 	jal	0 <func_80B8EA80>
    1cf4:	00808825 	move	s1,a0
    1cf8:	862e01f0 	lh	t6,496(s1)
    1cfc:	862f01f2 	lh	t7,498(s1)
    1d00:	02202025 	move	a0,s1
    1d04:	15cf0017 	bne	t6,t7,1d64 <func_80B9075C+0x88>
    1d08:	00000000 	nop
    1d0c:	0c000000 	jal	0 <func_80B8EA80>
    1d10:	02002825 	move	a1,s0
    1d14:	02202025 	move	a0,s1
    1d18:	0c000000 	jal	0 <func_80B8EA80>
    1d1c:	02002825 	move	a1,s0
    1d20:	0c000000 	jal	0 <func_80B8EA80>
    1d24:	02202025 	move	a0,s1
    1d28:	8e380004 	lw	t8,4(s1)
    1d2c:	2401ffef 	li	at,-17
    1d30:	0301c824 	and	t9,t8,at
    1d34:	ae390004 	sw	t9,4(s1)
    1d38:	8e040790 	lw	a0,1936(s0)
    1d3c:	2401002d 	li	at,45
    1d40:	84820142 	lh	v0,322(a0)
    1d44:	10410003 	beq	v0,at,1d54 <func_80B9075C+0x78>
    1d48:	2401002c 	li	at,44
    1d4c:	14410026 	bne	v0,at,1de8 <func_80B9075C+0x10c>
    1d50:	00000000 	nop
    1d54:	0c000000 	jal	0 <func_80B8EA80>
    1d58:	24050001 	li	a1,1
    1d5c:	10000022 	b	1de8 <func_80B9075C+0x10c>
    1d60:	00000000 	nop
    1d64:	0c000000 	jal	0 <func_80B8EA80>
    1d68:	02202025 	move	a0,s1
    1d6c:	10400011 	beqz	v0,1db4 <func_80B9075C+0xd8>
    1d70:	02202025 	move	a0,s1
    1d74:	0c000000 	jal	0 <func_80B8EA80>
    1d78:	240500ca 	li	a1,202
    1d7c:	860800a4 	lh	t0,164(s0)
    1d80:	2401005b 	li	at,91
    1d84:	2405002c 	li	a1,44
    1d88:	15010006 	bne	t0,at,1da4 <func_80B9075C+0xc8>
    1d8c:	00000000 	nop
    1d90:	8e040790 	lw	a0,1936(s0)
    1d94:	0c000000 	jal	0 <func_80B8EA80>
    1d98:	2405002d 	li	a1,45
    1d9c:	10000012 	b	1de8 <func_80B9075C+0x10c>
    1da0:	00000000 	nop
    1da4:	0c000000 	jal	0 <func_80B8EA80>
    1da8:	8e040790 	lw	a0,1936(s0)
    1dac:	1000000e 	b	1de8 <func_80B9075C+0x10c>
    1db0:	00000000 	nop
    1db4:	922901f7 	lbu	t1,503(s1)
    1db8:	312a0080 	andi	t2,t1,0x80
    1dbc:	1140000a 	beqz	t2,1de8 <func_80B9075C+0x10c>
    1dc0:	00000000 	nop
    1dc4:	8e040790 	lw	a0,1936(s0)
    1dc8:	2401002d 	li	at,45
    1dcc:	84820142 	lh	v0,322(a0)
    1dd0:	10410003 	beq	v0,at,1de0 <func_80B9075C+0x104>
    1dd4:	2401002c 	li	at,44
    1dd8:	14410003 	bne	v0,at,1de8 <func_80B9075C+0x10c>
    1ddc:	00000000 	nop
    1de0:	0c000000 	jal	0 <func_80B8EA80>
    1de4:	24050001 	li	a1,1
    1de8:	0c000000 	jal	0 <func_80B8EA80>
    1dec:	02202025 	move	a0,s1
    1df0:	8fbf001c 	lw	ra,28(sp)
    1df4:	8fb00014 	lw	s0,20(sp)
    1df8:	8fb10018 	lw	s1,24(sp)
    1dfc:	03e00008 	jr	ra
    1e00:	27bd0020 	addiu	sp,sp,32

00001e04 <func_80B90884>:
    1e04:	27bdffe8 	addiu	sp,sp,-24
    1e08:	3c0e0000 	lui	t6,0x0
    1e0c:	afbf0014 	sw	ra,20(sp)
    1e10:	25ce0000 	addiu	t6,t6,0
    1e14:	ac8e0164 	sw	t6,356(a0)
    1e18:	0c000000 	jal	0 <func_80B8EA80>
    1e1c:	24050004 	li	a1,4
    1e20:	8fbf0014 	lw	ra,20(sp)
    1e24:	27bd0018 	addiu	sp,sp,24
    1e28:	03e00008 	jr	ra
    1e2c:	00000000 	nop

00001e30 <func_80B908B0>:
    1e30:	27bdffe8 	addiu	sp,sp,-24
    1e34:	afbf0014 	sw	ra,20(sp)
    1e38:	afa40018 	sw	a0,24(sp)
    1e3c:	0c000000 	jal	0 <func_80B8EA80>
    1e40:	afa5001c 	sw	a1,28(sp)
    1e44:	14400003 	bnez	v0,1e54 <func_80B908B0+0x24>
    1e48:	00000000 	nop
    1e4c:	0c000000 	jal	0 <func_80B8EA80>
    1e50:	8fa40018 	lw	a0,24(sp)
    1e54:	0c000000 	jal	0 <func_80B8EA80>
    1e58:	8fa40018 	lw	a0,24(sp)
    1e5c:	8fbf0014 	lw	ra,20(sp)
    1e60:	27bd0018 	addiu	sp,sp,24
    1e64:	03e00008 	jr	ra
    1e68:	00000000 	nop

00001e6c <func_80B908EC>:
    1e6c:	27bdffe8 	addiu	sp,sp,-24
    1e70:	3c0e0000 	lui	t6,0x0
    1e74:	afbf0014 	sw	ra,20(sp)
    1e78:	25ce0000 	addiu	t6,t6,0
    1e7c:	ac8e0164 	sw	t6,356(a0)
    1e80:	0c000000 	jal	0 <func_80B8EA80>
    1e84:	00002825 	move	a1,zero
    1e88:	8fbf0014 	lw	ra,20(sp)
    1e8c:	27bd0018 	addiu	sp,sp,24
    1e90:	03e00008 	jr	ra
    1e94:	00000000 	nop

00001e98 <func_80B90918>:
    1e98:	27bdffe0 	addiu	sp,sp,-32
    1e9c:	afbf001c 	sw	ra,28(sp)
    1ea0:	afb00018 	sw	s0,24(sp)
    1ea4:	00808025 	move	s0,a0
    1ea8:	0c000000 	jal	0 <func_80B8EA80>
    1eac:	afa50024 	sw	a1,36(sp)
    1eb0:	1440000a 	bnez	v0,1edc <func_80B90918+0x44>
    1eb4:	02002025 	move	a0,s0
    1eb8:	0c000000 	jal	0 <func_80B8EA80>
    1ebc:	8fa50024 	lw	a1,36(sp)
    1ec0:	02002025 	move	a0,s0
    1ec4:	0c000000 	jal	0 <func_80B8EA80>
    1ec8:	8fa50024 	lw	a1,36(sp)
    1ecc:	0c000000 	jal	0 <func_80B8EA80>
    1ed0:	02002025 	move	a0,s0
    1ed4:	0c000000 	jal	0 <func_80B8EA80>
    1ed8:	02002025 	move	a0,s0
    1edc:	8fbf001c 	lw	ra,28(sp)
    1ee0:	8fb00018 	lw	s0,24(sp)
    1ee4:	27bd0020 	addiu	sp,sp,32
    1ee8:	03e00008 	jr	ra
    1eec:	00000000 	nop

00001ef0 <func_80B90970>:
    1ef0:	27bdffe8 	addiu	sp,sp,-24
    1ef4:	3c0e0000 	lui	t6,0x0
    1ef8:	afbf0014 	sw	ra,20(sp)
    1efc:	25ce0000 	addiu	t6,t6,0
    1f00:	ac8e0164 	sw	t6,356(a0)
    1f04:	afa40018 	sw	a0,24(sp)
    1f08:	0c000000 	jal	0 <func_80B8EA80>
    1f0c:	00002825 	move	a1,zero
    1f10:	8fa40018 	lw	a0,24(sp)
    1f14:	240f0064 	li	t7,100
    1f18:	0c000000 	jal	0 <func_80B8EA80>
    1f1c:	a48f01b4 	sh	t7,436(a0)
    1f20:	8fbf0014 	lw	ra,20(sp)
    1f24:	27bd0018 	addiu	sp,sp,24
    1f28:	03e00008 	jr	ra
    1f2c:	00000000 	nop

00001f30 <func_80B909B0>:
    1f30:	27bdffe8 	addiu	sp,sp,-24
    1f34:	afbf0014 	sw	ra,20(sp)
    1f38:	0c000000 	jal	0 <func_80B8EA80>
    1f3c:	afa40018 	sw	a0,24(sp)
    1f40:	10400004 	beqz	v0,1f54 <func_80B909B0+0x24>
    1f44:	8fa40018 	lw	a0,24(sp)
    1f48:	240e0064 	li	t6,100
    1f4c:	10000006 	b	1f68 <func_80B909B0+0x38>
    1f50:	a48e01b4 	sh	t6,436(a0)
    1f54:	848f01b4 	lh	t7,436(a0)
    1f58:	5de00004 	bgtzl	t7,1f6c <func_80B909B0+0x3c>
    1f5c:	8fbf0014 	lw	ra,20(sp)
    1f60:	0c000000 	jal	0 <func_80B8EA80>
    1f64:	00000000 	nop
    1f68:	8fbf0014 	lw	ra,20(sp)
    1f6c:	27bd0018 	addiu	sp,sp,24
    1f70:	03e00008 	jr	ra
    1f74:	00000000 	nop

00001f78 <func_80B909F8>:
    1f78:	27bdffe8 	addiu	sp,sp,-24
    1f7c:	3c0e0000 	lui	t6,0x0
    1f80:	afbf0014 	sw	ra,20(sp)
    1f84:	25ce0000 	addiu	t6,t6,0
    1f88:	ac8e0164 	sw	t6,356(a0)
    1f8c:	afa40018 	sw	a0,24(sp)
    1f90:	0c000000 	jal	0 <func_80B8EA80>
    1f94:	24050004 	li	a1,4
    1f98:	8fa40018 	lw	a0,24(sp)
    1f9c:	240f001e 	li	t7,30
    1fa0:	a48f01b4 	sh	t7,436(a0)
    1fa4:	8fbf0014 	lw	ra,20(sp)
    1fa8:	27bd0018 	addiu	sp,sp,24
    1fac:	03e00008 	jr	ra
    1fb0:	00000000 	nop

00001fb4 <func_80B90A34>:
    1fb4:	27bdffd8 	addiu	sp,sp,-40
    1fb8:	afbf001c 	sw	ra,28(sp)
    1fbc:	afb00018 	sw	s0,24(sp)
    1fc0:	00808025 	move	s0,a0
    1fc4:	0c000000 	jal	0 <func_80B8EA80>
    1fc8:	afa5002c 	sw	a1,44(sp)
    1fcc:	afa20024 	sw	v0,36(sp)
    1fd0:	0c000000 	jal	0 <func_80B8EA80>
    1fd4:	02002025 	move	a0,s0
    1fd8:	8fae0024 	lw	t6,36(sp)
    1fdc:	8fa7002c 	lw	a3,44(sp)
    1fe0:	11c00007 	beqz	t6,2000 <func_80B90A34+0x4c>
    1fe4:	00e02025 	move	a0,a3
    1fe8:	00e02025 	move	a0,a3
    1fec:	24e50810 	addiu	a1,a3,2064
    1ff0:	0c000000 	jal	0 <func_80B8EA80>
    1ff4:	8e06014c 	lw	a2,332(s0)
    1ff8:	10000005 	b	2010 <func_80B90A34+0x5c>
    1ffc:	860f01b4 	lh	t7,436(s0)
    2000:	24e50810 	addiu	a1,a3,2064
    2004:	0c000000 	jal	0 <func_80B8EA80>
    2008:	8e06014c 	lw	a2,332(s0)
    200c:	860f01b4 	lh	t7,436(s0)
    2010:	8fb80024 	lw	t8,36(sp)
    2014:	5de00008 	bgtzl	t7,2038 <func_80B90A34+0x84>
    2018:	8fbf001c 	lw	ra,28(sp)
    201c:	57000006 	bnezl	t8,2038 <func_80B90A34+0x84>
    2020:	8fbf001c 	lw	ra,28(sp)
    2024:	0c000000 	jal	0 <func_80B8EA80>
    2028:	02002025 	move	a0,s0
    202c:	0c000000 	jal	0 <func_80B8EA80>
    2030:	02002025 	move	a0,s0
    2034:	8fbf001c 	lw	ra,28(sp)
    2038:	8fb00018 	lw	s0,24(sp)
    203c:	27bd0028 	addiu	sp,sp,40
    2040:	03e00008 	jr	ra
    2044:	00000000 	nop

00002048 <ObjBean_Update>:
    2048:	27bdffd0 	addiu	sp,sp,-48
    204c:	afbf001c 	sw	ra,28(sp)
    2050:	afb10018 	sw	s1,24(sp)
    2054:	afb00014 	sw	s0,20(sp)
    2058:	848201b4 	lh	v0,436(a0)
    205c:	00808025 	move	s0,a0
    2060:	00a08825 	move	s1,a1
    2064:	18400002 	blez	v0,2070 <ObjBean_Update+0x28>
    2068:	244effff 	addiu	t6,v0,-1
    206c:	a48e01b4 	sh	t6,436(a0)
    2070:	8e190164 	lw	t9,356(s0)
    2074:	02002025 	move	a0,s0
    2078:	02202825 	move	a1,s1
    207c:	0320f809 	jalr	t9
    2080:	00000000 	nop
    2084:	920f01f7 	lbu	t7,503(s0)
    2088:	31f80004 	andi	t8,t7,0x4
    208c:	53000044 	beqzl	t8,21a0 <ObjBean_Update+0x158>
    2090:	ae0000c0 	sw	zero,192(s0)
    2094:	0c000000 	jal	0 <func_80B8EA80>
    2098:	02002025 	move	a0,s0
    209c:	3c014316 	lui	at,0x4316
    20a0:	44813000 	mtc1	at,$f6
    20a4:	c6040090 	lwc1	$f4,144(s0)
    20a8:	3c014420 	lui	at,0x4420
    20ac:	4606203c 	c.lt.s	$f4,$f6
    20b0:	00000000 	nop
    20b4:	45020017 	bc1fl	2114 <ObjBean_Update+0xcc>
    20b8:	02002025 	move	a0,s0
    20bc:	c6080050 	lwc1	$f8,80(s0)
    20c0:	44815000 	mtc1	at,$f10
    20c4:	3c013f00 	lui	at,0x3f00
    20c8:	44819000 	mtc1	at,$f18
    20cc:	460a4402 	mul.s	$f16,$f8,$f10
    20d0:	26060168 	addiu	a2,s0,360
    20d4:	00c02825 	move	a1,a2
    20d8:	02002025 	move	a0,s0
    20dc:	46128100 	add.s	$f4,$f16,$f18
    20e0:	4600218d 	trunc.w.s	$f6,$f4
    20e4:	44093000 	mfc1	t1,$f6
    20e8:	00000000 	nop
    20ec:	a60901a8 	sh	t1,424(s0)
    20f0:	0c000000 	jal	0 <func_80B8EA80>
    20f4:	afa60024 	sw	a2,36(sp)
    20f8:	3c010001 	lui	at,0x1
    20fc:	34211e60 	ori	at,at,0x1e60
    2100:	8fa60024 	lw	a2,36(sp)
    2104:	02212821 	addu	a1,s1,at
    2108:	0c000000 	jal	0 <func_80B8EA80>
    210c:	02202025 	move	a0,s1
    2110:	02002025 	move	a0,s0
    2114:	0c000000 	jal	0 <func_80B8EA80>
    2118:	02202825 	move	a1,s1
    211c:	3c0142b0 	lui	at,0x42b0
    2120:	44815000 	mtc1	at,$f10
    2124:	c6080050 	lwc1	$f8,80(s0)
    2128:	3c0a0000 	lui	t2,0x0
    212c:	254a0000 	addiu	t2,t2,0
    2130:	460a4402 	mul.s	$f16,$f8,$f10
    2134:	ae0a00c0 	sw	t2,192(s0)
    2138:	02002025 	move	a0,s0
    213c:	02202825 	move	a1,s1
    2140:	0c000000 	jal	0 <func_80B8EA80>
    2144:	e61000c4 	swc1	$f16,196(s0)
    2148:	10400015 	beqz	v0,21a0 <ObjBean_Update+0x158>
    214c:	3c040000 	lui	a0,0x0
    2150:	0c000000 	jal	0 <func_80B8EA80>
    2154:	24840000 	addiu	a0,a0,0
    2158:	3c040000 	lui	a0,0x0
    215c:	0c000000 	jal	0 <func_80B8EA80>
    2160:	24840000 	addiu	a0,a0,0
    2164:	3c040000 	lui	a0,0x0
    2168:	0c000000 	jal	0 <func_80B8EA80>
    216c:	24840000 	addiu	a0,a0,0
    2170:	02002025 	move	a0,s0
    2174:	0c000000 	jal	0 <func_80B8EA80>
    2178:	02202825 	move	a1,s1
    217c:	02202025 	move	a0,s1
    2180:	26250810 	addiu	a1,s1,2064
    2184:	0c000000 	jal	0 <func_80B8EA80>
    2188:	8e06014c 	lw	a2,332(s0)
    218c:	0c000000 	jal	0 <func_80B8EA80>
    2190:	02002025 	move	a0,s0
    2194:	10000003 	b	21a4 <ObjBean_Update+0x15c>
    2198:	02002025 	move	a0,s0
    219c:	ae0000c0 	sw	zero,192(s0)
    21a0:	02002025 	move	a0,s0
    21a4:	0c000000 	jal	0 <func_80B8EA80>
    21a8:	3c0540c0 	lui	a1,0x40c0
    21ac:	920b01f7 	lbu	t3,503(s0)
    21b0:	316c0020 	andi	t4,t3,0x20
    21b4:	5180000d 	beqzl	t4,21ec <ObjBean_Update+0x1a4>
    21b8:	8fbf001c 	lw	ra,28(sp)
    21bc:	0c000000 	jal	0 <func_80B8EA80>
    21c0:	02002025 	move	a0,s0
    21c4:	50400006 	beqzl	v0,21e0 <ObjBean_Update+0x198>
    21c8:	921901f7 	lbu	t9,503(s0)
    21cc:	920d01f7 	lbu	t5,503(s0)
    21d0:	35ae0080 	ori	t6,t5,0x80
    21d4:	10000004 	b	21e8 <ObjBean_Update+0x1a0>
    21d8:	a20e01f7 	sb	t6,503(s0)
    21dc:	921901f7 	lbu	t9,503(s0)
    21e0:	332fff7f 	andi	t7,t9,0xff7f
    21e4:	a20f01f7 	sb	t7,503(s0)
    21e8:	8fbf001c 	lw	ra,28(sp)
    21ec:	8fb00014 	lw	s0,20(sp)
    21f0:	8fb10018 	lw	s1,24(sp)
    21f4:	03e00008 	jr	ra
    21f8:	27bd0030 	addiu	sp,sp,48

000021fc <func_80B90C7C>:
    21fc:	27bdffe8 	addiu	sp,sp,-24
    2200:	afbf0014 	sw	ra,20(sp)
    2204:	afa5001c 	sw	a1,28(sp)
    2208:	8c860010 	lw	a2,16(a0)
    220c:	c48e000c 	lwc1	$f14,12(a0)
    2210:	c48c0008 	lwc1	$f12,8(a0)
    2214:	afa40018 	sw	a0,24(sp)
    2218:	0c000000 	jal	0 <func_80B8EA80>
    221c:	00003825 	move	a3,zero
    2220:	8fa40018 	lw	a0,24(sp)
    2224:	3c010000 	lui	at,0x0
    2228:	c4280000 	lwc1	$f8,0(at)
    222c:	848e0016 	lh	t6,22(a0)
    2230:	24050001 	li	a1,1
    2234:	448e2000 	mtc1	t6,$f4
    2238:	00000000 	nop
    223c:	468021a0 	cvt.s.w	$f6,$f4
    2240:	46083302 	mul.s	$f12,$f6,$f8
    2244:	0c000000 	jal	0 <func_80B8EA80>
    2248:	00000000 	nop
    224c:	3c010000 	lui	at,0x0
    2250:	c42c0000 	lwc1	$f12,0(at)
    2254:	24070001 	li	a3,1
    2258:	44066000 	mfc1	a2,$f12
    225c:	0c000000 	jal	0 <func_80B8EA80>
    2260:	46006386 	mov.s	$f14,$f12
    2264:	3c050600 	lui	a1,0x600
    2268:	24a50650 	addiu	a1,a1,1616
    226c:	0c000000 	jal	0 <func_80B8EA80>
    2270:	8fa4001c 	lw	a0,28(sp)
    2274:	8fbf0014 	lw	ra,20(sp)
    2278:	27bd0018 	addiu	sp,sp,24
    227c:	03e00008 	jr	ra
    2280:	00000000 	nop

00002284 <func_80B90D04>:
    2284:	27bdffe8 	addiu	sp,sp,-24
    2288:	afbf0014 	sw	ra,20(sp)
    228c:	afa5001c 	sw	a1,28(sp)
    2290:	8c86002c 	lw	a2,44(a0)
    2294:	c48e0028 	lwc1	$f14,40(a0)
    2298:	c48c0024 	lwc1	$f12,36(a0)
    229c:	afa40018 	sw	a0,24(sp)
    22a0:	0c000000 	jal	0 <func_80B8EA80>
    22a4:	00003825 	move	a3,zero
    22a8:	8fa40018 	lw	a0,24(sp)
    22ac:	3c010000 	lui	at,0x0
    22b0:	c4280000 	lwc1	$f8,0(at)
    22b4:	848e00b6 	lh	t6,182(a0)
    22b8:	24050001 	li	a1,1
    22bc:	448e2000 	mtc1	t6,$f4
    22c0:	00000000 	nop
    22c4:	468021a0 	cvt.s.w	$f6,$f4
    22c8:	46083302 	mul.s	$f12,$f6,$f8
    22cc:	0c000000 	jal	0 <func_80B8EA80>
    22d0:	00000000 	nop
    22d4:	3c010000 	lui	at,0x0
    22d8:	c42c0000 	lwc1	$f12,0(at)
    22dc:	8fa40018 	lw	a0,24(sp)
    22e0:	24070001 	li	a3,1
    22e4:	44066000 	mfc1	a2,$f12
    22e8:	0c000000 	jal	0 <func_80B8EA80>
    22ec:	c48e01d4 	lwc1	$f14,468(a0)
    22f0:	3c050600 	lui	a1,0x600
    22f4:	24a501b0 	addiu	a1,a1,432
    22f8:	0c000000 	jal	0 <func_80B8EA80>
    22fc:	8fa4001c 	lw	a0,28(sp)
    2300:	8fbf0014 	lw	ra,20(sp)
    2304:	27bd0018 	addiu	sp,sp,24
    2308:	03e00008 	jr	ra
    230c:	00000000 	nop

00002310 <ObjBean_Draw>:
    2310:	27bdffe8 	addiu	sp,sp,-24
    2314:	afbf0014 	sw	ra,20(sp)
    2318:	afa5001c 	sw	a1,28(sp)
    231c:	908201f7 	lbu	v0,503(a0)
    2320:	00803025 	move	a2,a0
    2324:	00a02025 	move	a0,a1
    2328:	304e0002 	andi	t6,v0,0x2
    232c:	11c00006 	beqz	t6,2348 <ObjBean_Draw+0x38>
    2330:	3c050600 	lui	a1,0x600
    2334:	24a50090 	addiu	a1,a1,144
    2338:	0c000000 	jal	0 <func_80B8EA80>
    233c:	afa60018 	sw	a2,24(sp)
    2340:	8fa60018 	lw	a2,24(sp)
    2344:	90c201f7 	lbu	v0,503(a2)
    2348:	304f0004 	andi	t7,v0,0x4
    234c:	11e00007 	beqz	t7,236c <ObjBean_Draw+0x5c>
    2350:	8fa4001c 	lw	a0,28(sp)
    2354:	3c050600 	lui	a1,0x600
    2358:	24a503f0 	addiu	a1,a1,1008
    235c:	0c000000 	jal	0 <func_80B8EA80>
    2360:	afa60018 	sw	a2,24(sp)
    2364:	8fa60018 	lw	a2,24(sp)
    2368:	90c201f7 	lbu	v0,503(a2)
    236c:	30580001 	andi	t8,v0,0x1
    2370:	13000006 	beqz	t8,238c <ObjBean_Draw+0x7c>
    2374:	00c02025 	move	a0,a2
    2378:	8fa5001c 	lw	a1,28(sp)
    237c:	0c000000 	jal	0 <func_80B8EA80>
    2380:	afa60018 	sw	a2,24(sp)
    2384:	8fa60018 	lw	a2,24(sp)
    2388:	90c201f7 	lbu	v0,503(a2)
    238c:	30590008 	andi	t9,v0,0x8
    2390:	13200003 	beqz	t9,23a0 <ObjBean_Draw+0x90>
    2394:	00c02025 	move	a0,a2
    2398:	0c000000 	jal	0 <func_80B8EA80>
    239c:	8fa5001c 	lw	a1,28(sp)
    23a0:	8fbf0014 	lw	ra,20(sp)
    23a4:	27bd0018 	addiu	sp,sp,24
    23a8:	03e00008 	jr	ra
    23ac:	00000000 	nop
