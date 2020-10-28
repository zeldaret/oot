
build/src/overlays/actors/ovl_En_Karebaba/z_en_karebaba.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <EnKarebaba_Init>:
       0:	27bdffc0 	addiu	sp,sp,-64
       4:	afb10028 	sw	s1,40(sp)
       8:	00a08825 	move	s1,a1
       c:	afbf002c 	sw	ra,44(sp)
      10:	afb00024 	sw	s0,36(sp)
      14:	3c050000 	lui	a1,0x0
      18:	00808025 	move	s0,a0
      1c:	0c000000 	jal	0 <EnKarebaba_Init>
      20:	24a50000 	addiu	a1,a1,0
      24:	3c060000 	lui	a2,0x0
      28:	24c60000 	addiu	a2,a2,0
      2c:	260400b4 	addiu	a0,s0,180
      30:	24050000 	li	a1,0
      34:	0c000000 	jal	0 <EnKarebaba_Init>
      38:	3c0741b0 	lui	a3,0x41b0
      3c:	3c060600 	lui	a2,0x600
      40:	3c070600 	lui	a3,0x600
      44:	260e0194 	addiu	t6,s0,404
      48:	260f01c4 	addiu	t7,s0,452
      4c:	24180008 	li	t8,8
      50:	afb80018 	sw	t8,24(sp)
      54:	afaf0014 	sw	t7,20(sp)
      58:	afae0010 	sw	t6,16(sp)
      5c:	24e702b8 	addiu	a3,a3,696
      60:	24c62a40 	addiu	a2,a2,10816
      64:	02202025 	move	a0,s1
      68:	0c000000 	jal	0 <EnKarebaba_Init>
      6c:	2605014c 	addiu	a1,s0,332
      70:	26050244 	addiu	a1,s0,580
      74:	afa50034 	sw	a1,52(sp)
      78:	0c000000 	jal	0 <EnKarebaba_Init>
      7c:	02202025 	move	a0,s1
      80:	3c070000 	lui	a3,0x0
      84:	24e70000 	addiu	a3,a3,0
      88:	02202025 	move	a0,s1
      8c:	8fa50034 	lw	a1,52(sp)
      90:	0c000000 	jal	0 <EnKarebaba_Init>
      94:	02003025 	move	a2,s0
      98:	02002025 	move	a0,s0
      9c:	0c000000 	jal	0 <EnKarebaba_Init>
      a0:	8fa50034 	lw	a1,52(sp)
      a4:	260501f8 	addiu	a1,s0,504
      a8:	afa50034 	sw	a1,52(sp)
      ac:	0c000000 	jal	0 <EnKarebaba_Init>
      b0:	02202025 	move	a0,s1
      b4:	3c070000 	lui	a3,0x0
      b8:	24e70000 	addiu	a3,a3,0
      bc:	02202025 	move	a0,s1
      c0:	8fa50034 	lw	a1,52(sp)
      c4:	0c000000 	jal	0 <EnKarebaba_Init>
      c8:	02003025 	move	a2,s0
      cc:	02002025 	move	a0,s0
      d0:	0c000000 	jal	0 <EnKarebaba_Init>
      d4:	8fa50034 	lw	a1,52(sp)
      d8:	0c000000 	jal	0 <EnKarebaba_Init>
      dc:	24040001 	li	a0,1
      e0:	3c060000 	lui	a2,0x0
      e4:	24c60000 	addiu	a2,a2,0
      e8:	26040098 	addiu	a0,s0,152
      ec:	0c000000 	jal	0 <EnKarebaba_Init>
      f0:	00402825 	move	a1,v0
      f4:	8619001c 	lh	t9,28(s0)
      f8:	ae0001f4 	sw	zero,500(s0)
      fc:	17200005 	bnez	t9,114 <EnKarebaba_Init+0x114>
     100:	00000000 	nop
     104:	0c000000 	jal	0 <EnKarebaba_Init>
     108:	02002025 	move	a0,s0
     10c:	10000004 	b	120 <EnKarebaba_Init+0x120>
     110:	8fbf002c 	lw	ra,44(sp)
     114:	0c000000 	jal	0 <EnKarebaba_Init>
     118:	02002025 	move	a0,s0
     11c:	8fbf002c 	lw	ra,44(sp)
     120:	8fb00024 	lw	s0,36(sp)
     124:	8fb10028 	lw	s1,40(sp)
     128:	03e00008 	jr	ra
     12c:	27bd0040 	addiu	sp,sp,64

00000130 <EnKarebaba_Destroy>:
     130:	27bdffe8 	addiu	sp,sp,-24
     134:	afa40018 	sw	a0,24(sp)
     138:	afa5001c 	sw	a1,28(sp)
     13c:	00a02025 	move	a0,a1
     140:	8fa50018 	lw	a1,24(sp)
     144:	afbf0014 	sw	ra,20(sp)
     148:	0c000000 	jal	0 <EnKarebaba_Init>
     14c:	24a50244 	addiu	a1,a1,580
     150:	8fa50018 	lw	a1,24(sp)
     154:	8fa4001c 	lw	a0,28(sp)
     158:	0c000000 	jal	0 <EnKarebaba_Init>
     15c:	24a501f8 	addiu	a1,a1,504
     160:	8fbf0014 	lw	ra,20(sp)
     164:	27bd0018 	addiu	sp,sp,24
     168:	03e00008 	jr	ra
     16c:	00000000 	nop

00000170 <func_80A954C0>:
     170:	90980255 	lbu	t8,597(a0)
     174:	3c08ffcf 	lui	t0,0xffcf
     178:	24020019 	li	v0,25
     17c:	240e0007 	li	t6,7
     180:	240f000c 	li	t7,12
     184:	3508ffff 	ori	t0,t0,0xffff
     188:	37190004 	ori	t9,t8,0x4
     18c:	a48e0284 	sh	t6,644(a0)
     190:	a4820286 	sh	v0,646(a0)
     194:	a08f0258 	sb	t7,600(a0)
     198:	a0990255 	sb	t9,597(a0)
     19c:	ac880264 	sw	t0,612(a0)
     1a0:	03e00008 	jr	ra
     1a4:	a482023a 	sh	v0,570(a0)

000001a8 <func_80A954F8>:
     1a8:	27bdffe8 	addiu	sp,sp,-24
     1ac:	afbf0014 	sw	ra,20(sp)
     1b0:	afa40018 	sw	a0,24(sp)
     1b4:	0c000000 	jal	0 <EnKarebaba_Init>
     1b8:	24050000 	li	a1,0
     1bc:	8fa40018 	lw	a0,24(sp)
     1c0:	3c014160 	lui	at,0x4160
     1c4:	44813000 	mtc1	at,$f6
     1c8:	c484000c 	lwc1	$f4,12(a0)
     1cc:	3c0f0000 	lui	t7,0x0
     1d0:	240ec000 	li	t6,-16384
     1d4:	46062200 	add.s	$f8,$f4,$f6
     1d8:	25ef0000 	addiu	t7,t7,0
     1dc:	a48e00b4 	sh	t6,180(a0)
     1e0:	ac8f0190 	sw	t7,400(a0)
     1e4:	e4880028 	swc1	$f8,40(a0)
     1e8:	8fbf0014 	lw	ra,20(sp)
     1ec:	27bd0018 	addiu	sp,sp,24
     1f0:	03e00008 	jr	ra
     1f4:	00000000 	nop

000001f8 <func_80A95548>:
     1f8:	27bdffe8 	addiu	sp,sp,-24
     1fc:	afbf0014 	sw	ra,20(sp)
     200:	3c053ba3 	lui	a1,0x3ba3
     204:	34a5d70a 	ori	a1,a1,0xd70a
     208:	0c000000 	jal	0 <EnKarebaba_Init>
     20c:	afa40018 	sw	a0,24(sp)
     210:	8fa40018 	lw	a0,24(sp)
     214:	3c014160 	lui	at,0x4160
     218:	44813000 	mtc1	at,$f6
     21c:	c484000c 	lwc1	$f4,12(a0)
     220:	3c0f0000 	lui	t7,0x0
     224:	240ec000 	li	t6,-16384
     228:	46062200 	add.s	$f8,$f4,$f6
     22c:	25ef0000 	addiu	t7,t7,0
     230:	a48e00b4 	sh	t6,180(a0)
     234:	ac8f0190 	sw	t7,400(a0)
     238:	e4880028 	swc1	$f8,40(a0)
     23c:	8fbf0014 	lw	ra,20(sp)
     240:	27bd0018 	addiu	sp,sp,24
     244:	03e00008 	jr	ra
     248:	00000000 	nop

0000024c <func_80A9559C>:
     24c:	27bdffd8 	addiu	sp,sp,-40
     250:	afa40028 	sw	a0,40(sp)
     254:	afbf0024 	sw	ra,36(sp)
     258:	3c040600 	lui	a0,0x600
     25c:	0c000000 	jal	0 <EnKarebaba_Init>
     260:	248402b8 	addiu	a0,a0,696
     264:	44822000 	mtc1	v0,$f4
     268:	3c01c040 	lui	at,0xc040
     26c:	44814000 	mtc1	at,$f8
     270:	468021a0 	cvt.s.w	$f6,$f4
     274:	8fa40028 	lw	a0,40(sp)
     278:	3c050600 	lui	a1,0x600
     27c:	24a502b8 	addiu	a1,a1,696
     280:	3c064080 	lui	a2,0x4080
     284:	24070000 	li	a3,0
     288:	e7a60010 	swc1	$f6,16(sp)
     28c:	afa00014 	sw	zero,20(sp)
     290:	e7a80018 	swc1	$f8,24(sp)
     294:	0c000000 	jal	0 <EnKarebaba_Init>
     298:	2484014c 	addiu	a0,a0,332
     29c:	8fa40028 	lw	a0,40(sp)
     2a0:	0c000000 	jal	0 <EnKarebaba_Init>
     2a4:	240539e2 	li	a1,14818
     2a8:	8faf0028 	lw	t7,40(sp)
     2ac:	3c0e0000 	lui	t6,0x0
     2b0:	25ce0000 	addiu	t6,t6,0
     2b4:	adee0190 	sw	t6,400(t7)
     2b8:	8fbf0024 	lw	ra,36(sp)
     2bc:	27bd0028 	addiu	sp,sp,40
     2c0:	03e00008 	jr	ra
     2c4:	00000000 	nop

000002c8 <func_80A95618>:
     2c8:	27bdffe8 	addiu	sp,sp,-24
     2cc:	afbf0014 	sw	ra,20(sp)
     2d0:	8c8f0190 	lw	t7,400(a0)
     2d4:	3c0e0000 	lui	t6,0x0
     2d8:	25ce0000 	addiu	t6,t6,0
     2dc:	11cf0019 	beq	t6,t7,344 <func_80A95618+0x7c>
     2e0:	3c053c23 	lui	a1,0x3c23
     2e4:	34a5d70a 	ori	a1,a1,0xd70a
     2e8:	0c000000 	jal	0 <EnKarebaba_Init>
     2ec:	afa40018 	sw	a0,24(sp)
     2f0:	8fa40018 	lw	a0,24(sp)
     2f4:	24180006 	li	t8,6
     2f8:	3c090000 	lui	t1,0x0
     2fc:	90990255 	lbu	t9,597(a0)
     300:	a0980258 	sb	t8,600(a0)
     304:	3c0b0fc0 	lui	t3,0xfc0
     308:	3328fffb 	andi	t0,t9,0xfffb
     30c:	a0880255 	sb	t0,597(a0)
     310:	8d290004 	lw	t1,4(t1)
     314:	356b0710 	ori	t3,t3,0x710
     318:	24020050 	li	v0,80
     31c:	11200005 	beqz	t1,334 <func_80A95618+0x6c>
     320:	240c000f 	li	t4,15
     324:	3c0a07c0 	lui	t2,0x7c0
     328:	354a0710 	ori	t2,t2,0x710
     32c:	10000002 	b	338 <func_80A95618+0x70>
     330:	ac8a0264 	sw	t2,612(a0)
     334:	ac8b0264 	sw	t3,612(a0)
     338:	a48c0284 	sh	t4,644(a0)
     33c:	a4820286 	sh	v0,646(a0)
     340:	a482023a 	sh	v0,570(a0)
     344:	3c0e0000 	lui	t6,0x0
     348:	240d0028 	li	t5,40
     34c:	25ce0000 	addiu	t6,t6,0
     350:	a48d001c 	sh	t5,28(a0)
     354:	ac8e0190 	sw	t6,400(a0)
     358:	8fbf0014 	lw	ra,20(sp)
     35c:	27bd0018 	addiu	sp,sp,24
     360:	03e00008 	jr	ra
     364:	00000000 	nop

00000368 <func_80A956B8>:
     368:	3c0f0000 	lui	t7,0x0
     36c:	240e0028 	li	t6,40
     370:	25ef0000 	addiu	t7,t7,0
     374:	a48e001c 	sh	t6,28(a0)
     378:	03e00008 	jr	ra
     37c:	ac8f0190 	sw	t7,400(a0)

00000380 <func_80A956D0>:
     380:	27bdffe8 	addiu	sp,sp,-24
     384:	afbf0014 	sw	ra,20(sp)
     388:	a480001c 	sh	zero,28(a0)
     38c:	3c010000 	lui	at,0x0
     390:	c4240000 	lwc1	$f4,0(at)
     394:	848e00b6 	lh	t6,182(a0)
     398:	3c014080 	lui	at,0x4080
     39c:	44813000 	mtc1	at,$f6
     3a0:	34018000 	li	at,0x8000
     3a4:	01c17821 	addu	t7,t6,at
     3a8:	3c014040 	lui	at,0x4040
     3ac:	44814000 	mtc1	at,$f8
     3b0:	a48f0032 	sh	t7,50(a0)
     3b4:	e484006c 	swc1	$f4,108(a0)
     3b8:	e4860060 	swc1	$f6,96(a0)
     3bc:	e4880068 	swc1	$f8,104(a0)
     3c0:	afa40018 	sw	a0,24(sp)
     3c4:	0c000000 	jal	0 <EnKarebaba_Init>
     3c8:	24053862 	li	a1,14434
     3cc:	8fa40018 	lw	a0,24(sp)
     3d0:	3c080000 	lui	t0,0x0
     3d4:	25080000 	addiu	t0,t0,0
     3d8:	8c980004 	lw	t8,4(a0)
     3dc:	ac880190 	sw	t0,400(a0)
     3e0:	37190030 	ori	t9,t8,0x30
     3e4:	ac990004 	sw	t9,4(a0)
     3e8:	8fbf0014 	lw	ra,20(sp)
     3ec:	27bd0018 	addiu	sp,sp,24
     3f0:	03e00008 	jr	ra
     3f4:	00000000 	nop

000003f8 <func_80A95748>:
     3f8:	27bdffe8 	addiu	sp,sp,-24
     3fc:	afa5001c 	sw	a1,28(sp)
     400:	afbf0014 	sw	ra,20(sp)
     404:	3c053cf5 	lui	a1,0x3cf5
     408:	34a5c28f 	ori	a1,a1,0xc28f
     40c:	0c000000 	jal	0 <EnKarebaba_Init>
     410:	afa40018 	sw	a0,24(sp)
     414:	8fa60018 	lw	a2,24(sp)
     418:	8fa4001c 	lw	a0,28(sp)
     41c:	3c01447a 	lui	at,0x447a
     420:	44812000 	mtc1	at,$f4
     424:	84ce00b4 	lh	t6,180(a2)
     428:	44800000 	mtc1	zero,$f0
     42c:	3c014040 	lui	at,0x4040
     430:	44813000 	mtc1	at,$f6
     434:	25cfc000 	addiu	t7,t6,-16384
     438:	24070008 	li	a3,8
     43c:	a4cf00b4 	sh	t7,180(a2)
     440:	24851c24 	addiu	a1,a0,7204
     444:	e4c400bc 	swc1	$f4,188(a2)
     448:	e4c0006c 	swc1	$f0,108(a2)
     44c:	e4c00060 	swc1	$f0,96(a2)
     450:	0c000000 	jal	0 <EnKarebaba_Init>
     454:	e4c600c4 	swc1	$f6,196(a2)
     458:	8fa60018 	lw	a2,24(sp)
     45c:	2401ffdf 	li	at,-33
     460:	3c090000 	lui	t1,0x0
     464:	8cd90004 	lw	t9,4(a2)
     468:	241800c8 	li	t8,200
     46c:	25290000 	addiu	t1,t1,0
     470:	03214024 	and	t0,t9,at
     474:	a4d8001c 	sh	t8,28(a2)
     478:	acc80004 	sw	t0,4(a2)
     47c:	acc90190 	sw	t1,400(a2)
     480:	8fbf0014 	lw	ra,20(sp)
     484:	27bd0018 	addiu	sp,sp,24
     488:	03e00008 	jr	ra
     48c:	00000000 	nop

00000490 <func_80A957E0>:
     490:	27bdffd8 	addiu	sp,sp,-40
     494:	afa40028 	sw	a0,40(sp)
     498:	afbf0024 	sw	ra,36(sp)
     49c:	3c040600 	lui	a0,0x600
     4a0:	0c000000 	jal	0 <EnKarebaba_Init>
     4a4:	248402b8 	addiu	a0,a0,696
     4a8:	44822000 	mtc1	v0,$f4
     4ac:	3c01c040 	lui	at,0xc040
     4b0:	44810000 	mtc1	at,$f0
     4b4:	46802120 	cvt.s.w	$f4,$f4
     4b8:	8fa40028 	lw	a0,40(sp)
     4bc:	44803000 	mtc1	zero,$f6
     4c0:	3c050600 	lui	a1,0x600
     4c4:	240e0002 	li	t6,2
     4c8:	44060000 	mfc1	a2,$f0
     4cc:	44072000 	mfc1	a3,$f4
     4d0:	afae0014 	sw	t6,20(sp)
     4d4:	24a502b8 	addiu	a1,a1,696
     4d8:	e7a00018 	swc1	$f0,24(sp)
     4dc:	2484014c 	addiu	a0,a0,332
     4e0:	0c000000 	jal	0 <EnKarebaba_Init>
     4e4:	e7a60010 	swc1	$f6,16(sp)
     4e8:	0c000000 	jal	0 <EnKarebaba_Init>
     4ec:	8fa40028 	lw	a0,40(sp)
     4f0:	8fb80028 	lw	t8,40(sp)
     4f4:	3c0f0000 	lui	t7,0x0
     4f8:	25ef0000 	addiu	t7,t7,0
     4fc:	af0f0190 	sw	t7,400(t8)
     500:	8fbf0024 	lw	ra,36(sp)
     504:	27bd0028 	addiu	sp,sp,40
     508:	03e00008 	jr	ra
     50c:	00000000 	nop

00000510 <func_80A95860>:
     510:	44800000 	mtc1	zero,$f0
     514:	27bdffd0 	addiu	sp,sp,-48
     518:	afb00028 	sw	s0,40(sp)
     51c:	00808025 	move	s0,a0
     520:	afbf002c 	sw	ra,44(sp)
     524:	3c050600 	lui	a1,0x600
     528:	240e0002 	li	t6,2
     52c:	44060000 	mfc1	a2,$f0
     530:	44070000 	mfc1	a3,$f0
     534:	afae0014 	sw	t6,20(sp)
     538:	24a502b8 	addiu	a1,a1,696
     53c:	2484014c 	addiu	a0,a0,332
     540:	e7a00010 	swc1	$f0,16(sp)
     544:	0c000000 	jal	0 <EnKarebaba_Init>
     548:	e7a00018 	swc1	$f0,24(sp)
     54c:	0c000000 	jal	0 <EnKarebaba_Init>
     550:	02002025 	move	a0,s0
     554:	44800000 	mtc1	zero,$f0
     558:	240fc000 	li	t7,-16384
     55c:	241800c8 	li	t8,200
     560:	a60f00b4 	sh	t7,180(s0)
     564:	a618001c 	sh	t8,28(s0)
     568:	ae000118 	sw	zero,280(s0)
     56c:	26040024 	addiu	a0,s0,36
     570:	26050008 	addiu	a1,s0,8
     574:	0c000000 	jal	0 <EnKarebaba_Init>
     578:	e60000c4 	swc1	$f0,196(s0)
     57c:	3c190000 	lui	t9,0x0
     580:	27390000 	addiu	t9,t9,0
     584:	ae190190 	sw	t9,400(s0)
     588:	8fbf002c 	lw	ra,44(sp)
     58c:	8fb00028 	lw	s0,40(sp)
     590:	27bd0030 	addiu	sp,sp,48
     594:	03e00008 	jr	ra
     598:	00000000 	nop

0000059c <func_80A958EC>:
     59c:	3c0141b0 	lui	at,0x41b0
     5a0:	44800000 	mtc1	zero,$f0
     5a4:	44812000 	mtc1	at,$f4
     5a8:	27bdffe8 	addiu	sp,sp,-24
     5ac:	afbf0014 	sw	ra,20(sp)
     5b0:	3c0e0000 	lui	t6,0x0
     5b4:	e48000bc 	swc1	$f0,188(a0)
     5b8:	e48400c4 	swc1	$f4,196(a0)
     5bc:	85ce0000 	lh	t6,0(t6)
     5c0:	44050000 	mfc1	a1,$f0
     5c4:	a48e0238 	sh	t6,568(a0)
     5c8:	0c000000 	jal	0 <EnKarebaba_Init>
     5cc:	afa40018 	sw	a0,24(sp)
     5d0:	8fa40018 	lw	a0,24(sp)
     5d4:	3c0f0000 	lui	t7,0x0
     5d8:	25ef0000 	addiu	t7,t7,0
     5dc:	ac8f0190 	sw	t7,400(a0)
     5e0:	8fbf0014 	lw	ra,20(sp)
     5e4:	27bd0018 	addiu	sp,sp,24
     5e8:	03e00008 	jr	ra
     5ec:	00000000 	nop

000005f0 <func_80A95940>:
     5f0:	27bdffe0 	addiu	sp,sp,-32
     5f4:	afbf0014 	sw	ra,20(sp)
     5f8:	afa50024 	sw	a1,36(sp)
     5fc:	848e001c 	lh	t6,28(a0)
     600:	3c010000 	lui	at,0x0
     604:	25cf0001 	addiu	t7,t6,1
     608:	a48f001c 	sh	t7,28(a0)
     60c:	8498001c 	lh	t8,28(a0)
     610:	c4280000 	lwc1	$f8,0(at)
     614:	3c010000 	lui	at,0x0
     618:	44982000 	mtc1	t8,$f4
     61c:	c42a0000 	lwc1	$f10,0(at)
     620:	afa40020 	sw	a0,32(sp)
     624:	468021a0 	cvt.s.w	$f6,$f4
     628:	46083002 	mul.s	$f0,$f6,$f8
     62c:	00000000 	nop
     630:	46005402 	mul.s	$f16,$f10,$f0
     634:	e7a0001c 	swc1	$f0,28(sp)
     638:	44058000 	mfc1	a1,$f16
     63c:	0c000000 	jal	0 <EnKarebaba_Init>
     640:	00000000 	nop
     644:	3c014160 	lui	at,0x4160
     648:	c7a0001c 	lwc1	$f0,28(sp)
     64c:	44812000 	mtc1	at,$f4
     650:	8fa40020 	lw	a0,32(sp)
     654:	24010014 	li	at,20
     658:	46002182 	mul.s	$f6,$f4,$f0
     65c:	c492000c 	lwc1	$f18,12(a0)
     660:	8499001c 	lh	t9,28(a0)
     664:	46069200 	add.s	$f8,$f18,$f6
     668:	17210003 	bne	t9,at,678 <func_80A95940+0x88>
     66c:	e4880028 	swc1	$f8,40(a0)
     670:	0c000000 	jal	0 <EnKarebaba_Init>
     674:	00000000 	nop
     678:	8fbf0014 	lw	ra,20(sp)
     67c:	27bd0020 	addiu	sp,sp,32
     680:	03e00008 	jr	ra
     684:	00000000 	nop

00000688 <func_80A959D8>:
     688:	27bdffe8 	addiu	sp,sp,-24
     68c:	afbf0014 	sw	ra,20(sp)
     690:	afa5001c 	sw	a1,28(sp)
     694:	3c014348 	lui	at,0x4348
     698:	44813000 	mtc1	at,$f6
     69c:	c4840090 	lwc1	$f4,144(a0)
     6a0:	4606203c 	c.lt.s	$f4,$f6
     6a4:	00000000 	nop
     6a8:	4502000c 	bc1fl	6dc <func_80A959D8+0x54>
     6ac:	8fbf0014 	lw	ra,20(sp)
     6b0:	c4800094 	lwc1	$f0,148(a0)
     6b4:	3c0141f0 	lui	at,0x41f0
     6b8:	44814000 	mtc1	at,$f8
     6bc:	46000005 	abs.s	$f0,$f0
     6c0:	4608003c 	c.lt.s	$f0,$f8
     6c4:	00000000 	nop
     6c8:	45020004 	bc1fl	6dc <func_80A959D8+0x54>
     6cc:	8fbf0014 	lw	ra,20(sp)
     6d0:	0c000000 	jal	0 <EnKarebaba_Init>
     6d4:	00000000 	nop
     6d8:	8fbf0014 	lw	ra,20(sp)
     6dc:	27bd0018 	addiu	sp,sp,24
     6e0:	03e00008 	jr	ra
     6e4:	00000000 	nop

000006e8 <func_80A95A38>:
     6e8:	27bdffc8 	addiu	sp,sp,-56
     6ec:	afb00030 	sw	s0,48(sp)
     6f0:	00808025 	move	s0,a0
     6f4:	afbf0034 	sw	ra,52(sp)
     6f8:	afa5003c 	sw	a1,60(sp)
     6fc:	0c000000 	jal	0 <EnKarebaba_Init>
     700:	2484014c 	addiu	a0,a0,332
     704:	3c053c23 	lui	a1,0x3c23
     708:	3c063a03 	lui	a2,0x3a03
     70c:	34c6126f 	ori	a2,a2,0x126f
     710:	34a5d70a 	ori	a1,a1,0xd70a
     714:	0c000000 	jal	0 <EnKarebaba_Init>
     718:	26040050 	addiu	a0,s0,80
     71c:	3c014270 	lui	at,0x4270
     720:	44813000 	mtc1	at,$f6
     724:	c604000c 	lwc1	$f4,12(s0)
     728:	c6000050 	lwc1	$f0,80(s0)
     72c:	26040028 	addiu	a0,s0,40
     730:	46062200 	add.s	$f8,$f4,$f6
     734:	3c0640a0 	lui	a2,0x40a0
     738:	e6000058 	swc1	$f0,88(s0)
     73c:	e6000054 	swc1	$f0,84(s0)
     740:	44054000 	mfc1	a1,$f8
     744:	0c000000 	jal	0 <EnKarebaba_Init>
     748:	00000000 	nop
     74c:	50400004 	beqzl	v0,760 <func_80A95A38+0x78>
     750:	860e00b6 	lh	t6,182(s0)
     754:	0c000000 	jal	0 <EnKarebaba_Init>
     758:	02002025 	move	a0,s0
     75c:	860e00b6 	lh	t6,182(s0)
     760:	2418000c 	li	t8,12
     764:	24190005 	li	t9,5
     768:	25cf1999 	addiu	t7,t6,6553
     76c:	a60f00b6 	sh	t7,182(s0)
     770:	24080001 	li	t0,1
     774:	2409ffff 	li	t1,-1
     778:	240a000a 	li	t2,10
     77c:	afaa0020 	sw	t2,32(sp)
     780:	afa9001c 	sw	t1,28(sp)
     784:	afa80018 	sw	t0,24(sp)
     788:	afa00024 	sw	zero,36(sp)
     78c:	afb90014 	sw	t9,20(sp)
     790:	afb80010 	sw	t8,16(sp)
     794:	8fa4003c 	lw	a0,60(sp)
     798:	26050008 	addiu	a1,s0,8
     79c:	3c064040 	lui	a2,0x4040
     7a0:	0c000000 	jal	0 <EnKarebaba_Init>
     7a4:	00003825 	move	a3,zero
     7a8:	8fbf0034 	lw	ra,52(sp)
     7ac:	8fb00030 	lw	s0,48(sp)
     7b0:	27bd0038 	addiu	sp,sp,56
     7b4:	03e00008 	jr	ra
     7b8:	00000000 	nop

000007bc <func_80A95B0C>:
     7bc:	27bdffd8 	addiu	sp,sp,-40
     7c0:	afb00018 	sw	s0,24(sp)
     7c4:	afbf001c 	sw	ra,28(sp)
     7c8:	afa5002c 	sw	a1,44(sp)
     7cc:	8caf1c44 	lw	t7,7236(a1)
     7d0:	00808025 	move	s0,a0
     7d4:	2484014c 	addiu	a0,a0,332
     7d8:	afa40020 	sw	a0,32(sp)
     7dc:	0c000000 	jal	0 <EnKarebaba_Init>
     7e0:	afaf0024 	sw	t7,36(sp)
     7e4:	8603001c 	lh	v1,28(s0)
     7e8:	24050000 	li	a1,0
     7ec:	10600002 	beqz	v1,7f8 <func_80A95B0C+0x3c>
     7f0:	2478ffff 	addiu	t8,v1,-1
     7f4:	a618001c 	sh	t8,28(s0)
     7f8:	0c000000 	jal	0 <EnKarebaba_Init>
     7fc:	8fa40020 	lw	a0,32(sp)
     800:	14400004 	bnez	v0,814 <func_80A95B0C+0x58>
     804:	8fa40020 	lw	a0,32(sp)
     808:	0c000000 	jal	0 <EnKarebaba_Init>
     80c:	3c054140 	lui	a1,0x4140
     810:	10400003 	beqz	v0,820 <func_80A95B0C+0x64>
     814:	02002025 	move	a0,s0
     818:	0c000000 	jal	0 <EnKarebaba_Init>
     81c:	24053860 	li	a1,14432
     820:	92190255 	lbu	t9,597(s0)
     824:	8fa50024 	lw	a1,36(sp)
     828:	33280002 	andi	t0,t9,0x2
     82c:	11000008 	beqz	t0,850 <func_80A95B0C+0x94>
     830:	24a50024 	addiu	a1,a1,36
     834:	0c000000 	jal	0 <EnKarebaba_Init>
     838:	02002025 	move	a0,s0
     83c:	8fa4002c 	lw	a0,44(sp)
     840:	0c000000 	jal	0 <EnKarebaba_Init>
     844:	02002825 	move	a1,s0
     848:	10000014 	b	89c <func_80A95B0C+0xe0>
     84c:	8fbf001c 	lw	ra,28(sp)
     850:	0c000000 	jal	0 <EnKarebaba_Init>
     854:	26040008 	addiu	a0,s0,8
     858:	3c014370 	lui	at,0x4370
     85c:	44812000 	mtc1	at,$f4
     860:	00000000 	nop
     864:	4600203c 	c.lt.s	$f4,$f0
     868:	00000000 	nop
     86c:	45020006 	bc1fl	888 <func_80A95B0C+0xcc>
     870:	8609001c 	lh	t1,28(s0)
     874:	0c000000 	jal	0 <EnKarebaba_Init>
     878:	02002025 	move	a0,s0
     87c:	10000007 	b	89c <func_80A95B0C+0xe0>
     880:	8fbf001c 	lw	ra,28(sp)
     884:	8609001c 	lh	t1,28(s0)
     888:	55200004 	bnezl	t1,89c <func_80A95B0C+0xe0>
     88c:	8fbf001c 	lw	ra,28(sp)
     890:	0c000000 	jal	0 <EnKarebaba_Init>
     894:	02002025 	move	a0,s0
     898:	8fbf001c 	lw	ra,28(sp)
     89c:	8fb00018 	lw	s0,24(sp)
     8a0:	27bd0028 	addiu	sp,sp,40
     8a4:	03e00008 	jr	ra
     8a8:	00000000 	nop

000008ac <func_80A95BFC>:
     8ac:	27bdffd0 	addiu	sp,sp,-48
     8b0:	afbf001c 	sw	ra,28(sp)
     8b4:	afb00018 	sw	s0,24(sp)
     8b8:	afa50034 	sw	a1,52(sp)
     8bc:	8482001c 	lh	v0,28(a0)
     8c0:	00808025 	move	s0,a0
     8c4:	10400002 	beqz	v0,8d0 <func_80A95BFC+0x24>
     8c8:	244effff 	addiu	t6,v0,-1
     8cc:	a48e001c 	sh	t6,28(a0)
     8d0:	2604014c 	addiu	a0,s0,332
     8d4:	0c000000 	jal	0 <EnKarebaba_Init>
     8d8:	afa40020 	sw	a0,32(sp)
     8dc:	8fa40020 	lw	a0,32(sp)
     8e0:	0c000000 	jal	0 <EnKarebaba_Init>
     8e4:	24050000 	li	a1,0
     8e8:	14400004 	bnez	v0,8fc <func_80A95BFC+0x50>
     8ec:	8fa40020 	lw	a0,32(sp)
     8f0:	0c000000 	jal	0 <EnKarebaba_Init>
     8f4:	3c054140 	lui	a1,0x4140
     8f8:	10400003 	beqz	v0,908 <func_80A95BFC+0x5c>
     8fc:	02002025 	move	a0,s0
     900:	0c000000 	jal	0 <EnKarebaba_Init>
     904:	24053860 	li	a1,14432
     908:	860f001c 	lh	t7,28(s0)
     90c:	24050014 	li	a1,20
     910:	3c180000 	lui	t8,0x0
     914:	00af1023 	subu	v0,a1,t7
     918:	04400003 	bltz	v0,928 <func_80A95BFC+0x7c>
     91c:	340ac000 	li	t2,0xc000
     920:	10000002 	b	92c <func_80A95BFC+0x80>
     924:	00402025 	move	a0,v0
     928:	00022023 	negu	a0,v0
     92c:	00a41023 	subu	v0,a1,a0
     930:	2841000b 	slti	at,v0,11
     934:	54200003 	bnezl	at,944 <func_80A95BFC+0x98>
     938:	00026880 	sll	t5,v0,0x2
     93c:	2402000a 	li	v0,10
     940:	00026880 	sll	t5,v0,0x2
     944:	01a26823 	subu	t5,t5,v0
     948:	87180000 	lh	t8,0(t8)
     94c:	860c00b6 	lh	t4,182(s0)
     950:	000d6880 	sll	t5,t5,0x2
     954:	00024a00 	sll	t1,v0,0x8
     958:	01a26823 	subu	t5,t5,v0
     95c:	0002c840 	sll	t9,v0,0x1
     960:	01495823 	subu	t3,t2,t1
     964:	000d6980 	sll	t5,t5,0x6
     968:	a60b00b4 	sh	t3,180(s0)
     96c:	03194021 	addu	t0,t8,t9
     970:	018d7021 	addu	t6,t4,t5
     974:	a6080238 	sh	t0,568(s0)
     978:	a60e00b6 	sh	t6,182(s0)
     97c:	0c000000 	jal	0 <EnKarebaba_Init>
     980:	860400b4 	lh	a0,180(s0)
     984:	3c01c270 	lui	at,0xc270
     988:	44812000 	mtc1	at,$f4
     98c:	c608000c 	lwc1	$f8,12(s0)
     990:	860400b4 	lh	a0,180(s0)
     994:	46040182 	mul.s	$f6,$f0,$f4
     998:	46083280 	add.s	$f10,$f6,$f8
     99c:	0c000000 	jal	0 <EnKarebaba_Init>
     9a0:	e60a0028 	swc1	$f10,40(s0)
     9a4:	3c014270 	lui	at,0x4270
     9a8:	44818000 	mtc1	at,$f16
     9ac:	00000000 	nop
     9b0:	46100482 	mul.s	$f18,$f0,$f16
     9b4:	e7b20028 	swc1	$f18,40(sp)
     9b8:	0c000000 	jal	0 <EnKarebaba_Init>
     9bc:	860400b6 	lh	a0,182(s0)
     9c0:	c7a40028 	lwc1	$f4,40(sp)
     9c4:	c6080008 	lwc1	$f8,8(s0)
     9c8:	860400b6 	lh	a0,182(s0)
     9cc:	46040182 	mul.s	$f6,$f0,$f4
     9d0:	46083280 	add.s	$f10,$f6,$f8
     9d4:	0c000000 	jal	0 <EnKarebaba_Init>
     9d8:	e60a0024 	swc1	$f10,36(s0)
     9dc:	c7b00028 	lwc1	$f16,40(sp)
     9e0:	c6040010 	lwc1	$f4,16(s0)
     9e4:	920f0255 	lbu	t7,597(s0)
     9e8:	46100482 	mul.s	$f18,$f0,$f16
     9ec:	31f80002 	andi	t8,t7,0x2
     9f0:	46049180 	add.s	$f6,$f18,$f4
     9f4:	13000008 	beqz	t8,a18 <func_80A95BFC+0x16c>
     9f8:	e606002c 	swc1	$f6,44(s0)
     9fc:	0c000000 	jal	0 <EnKarebaba_Init>
     a00:	02002025 	move	a0,s0
     a04:	8fa40034 	lw	a0,52(sp)
     a08:	0c000000 	jal	0 <EnKarebaba_Init>
     a0c:	02002825 	move	a1,s0
     a10:	10000007 	b	a30 <func_80A95BFC+0x184>
     a14:	8fbf001c 	lw	ra,28(sp)
     a18:	8619001c 	lh	t9,28(s0)
     a1c:	57200004 	bnezl	t9,a30 <func_80A95BFC+0x184>
     a20:	8fbf001c 	lw	ra,28(sp)
     a24:	0c000000 	jal	0 <EnKarebaba_Init>
     a28:	02002025 	move	a0,s0
     a2c:	8fbf001c 	lw	ra,28(sp)
     a30:	8fb00018 	lw	s0,24(sp)
     a34:	27bd0030 	addiu	sp,sp,48
     a38:	03e00008 	jr	ra
     a3c:	00000000 	nop

00000a40 <func_80A95D90>:
     a40:	27bdff78 	addiu	sp,sp,-136
     a44:	f7b40028 	sdc1	$f20,40(sp)
     a48:	4480a000 	mtc1	zero,$f20
     a4c:	afb50058 	sw	s5,88(sp)
     a50:	00a0a825 	move	s5,a1
     a54:	afb40054 	sw	s4,84(sp)
     a58:	0080a025 	move	s4,a0
     a5c:	afbf005c 	sw	ra,92(sp)
     a60:	3c063dcc 	lui	a2,0x3dcc
     a64:	4405a000 	mfc1	a1,$f20
     a68:	afb30050 	sw	s3,80(sp)
     a6c:	afb2004c 	sw	s2,76(sp)
     a70:	afb10048 	sw	s1,72(sp)
     a74:	afb00044 	sw	s0,68(sp)
     a78:	f7b80038 	sdc1	$f24,56(sp)
     a7c:	f7b60030 	sdc1	$f22,48(sp)
     a80:	34c6cccd 	ori	a2,a2,0xcccd
     a84:	0c000000 	jal	0 <EnKarebaba_Init>
     a88:	24840068 	addiu	a0,a0,104
     a8c:	8682001c 	lh	v0,28(s4)
     a90:	268400b4 	addiu	a0,s4,180
     a94:	24054800 	li	a1,18432
     a98:	14400045 	bnez	v0,bb0 <func_80A95D90+0x170>
     a9c:	24010001 	li	at,1
     aa0:	0c000000 	jal	0 <EnKarebaba_Init>
     aa4:	2406071c 	li	a2,1820
     aa8:	3c014040 	lui	at,0x4040
     aac:	4481b000 	mtc1	at,$f22
     ab0:	26900024 	addiu	s0,s4,36
     ab4:	240e000c 	li	t6,12
     ab8:	240f0005 	li	t7,5
     abc:	24180001 	li	t8,1
     ac0:	2419ffff 	li	t9,-1
     ac4:	2408000a 	li	t0,10
     ac8:	4406b000 	mfc1	a2,$f22
     acc:	afa80020 	sw	t0,32(sp)
     ad0:	afb9001c 	sw	t9,28(sp)
     ad4:	afb80018 	sw	t8,24(sp)
     ad8:	afaf0014 	sw	t7,20(sp)
     adc:	afae0010 	sw	t6,16(sp)
     ae0:	02002825 	move	a1,s0
     ae4:	02a02025 	move	a0,s5
     ae8:	00003825 	move	a3,zero
     aec:	0c000000 	jal	0 <EnKarebaba_Init>
     af0:	afa00024 	sw	zero,36(sp)
     af4:	3c010000 	lui	at,0x0
     af8:	c4240000 	lwc1	$f4,0(at)
     afc:	c6860050 	lwc1	$f6,80(s4)
     b00:	4606203c 	c.lt.s	$f4,$f6
     b04:	00000000 	nop
     b08:	45020020 	bc1fl	b8c <func_80A95D90+0x14c>
     b0c:	96880088 	lhu	t0,136(s4)
     b10:	96820088 	lhu	v0,136(s4)
     b14:	2401fffa 	li	at,-6
     b18:	02a02025 	move	a0,s5
     b1c:	30490002 	andi	t1,v0,0x2
     b20:	15200003 	bnez	t1,b30 <func_80A95D90+0xf0>
     b24:	304a0008 	andi	t2,v0,0x8
     b28:	51400018 	beqzl	t2,b8c <func_80A95D90+0x14c>
     b2c:	96880088 	lhu	t0,136(s4)
     b30:	8e8b0004 	lw	t3,4(s4)
     b34:	e6940058 	swc1	$f20,88(s4)
     b38:	e6940054 	swc1	$f20,84(s4)
     b3c:	01616024 	and	t4,t3,at
     b40:	e6940050 	swc1	$f20,80(s4)
     b44:	e6940068 	swc1	$f20,104(s4)
     b48:	ae8c0004 	sw	t4,4(s4)
     b4c:	4406b000 	mfc1	a2,$f22
     b50:	240d000c 	li	t5,12
     b54:	240e0005 	li	t6,5
     b58:	240f000f 	li	t7,15
     b5c:	2418ffff 	li	t8,-1
     b60:	2419000a 	li	t9,10
     b64:	afb90020 	sw	t9,32(sp)
     b68:	afb8001c 	sw	t8,28(sp)
     b6c:	afaf0018 	sw	t7,24(sp)
     b70:	afae0014 	sw	t6,20(sp)
     b74:	afad0010 	sw	t5,16(sp)
     b78:	afa00024 	sw	zero,36(sp)
     b7c:	02002825 	move	a1,s0
     b80:	0c000000 	jal	0 <EnKarebaba_Init>
     b84:	00003825 	move	a3,zero
     b88:	96880088 	lhu	t0,136(s4)
     b8c:	02802025 	move	a0,s4
     b90:	31090002 	andi	t1,t0,0x2
     b94:	5120004d 	beqzl	t1,ccc <func_80A95D90+0x28c>
     b98:	8fbf005c 	lw	ra,92(sp)
     b9c:	0c000000 	jal	0 <EnKarebaba_Init>
     ba0:	2405387b 	li	a1,14459
     ba4:	240a0001 	li	t2,1
     ba8:	10000047 	b	cc8 <func_80A95D90+0x288>
     bac:	a68a001c 	sh	t2,28(s4)
     bb0:	14410045 	bne	v0,at,cc8 <func_80A95D90+0x288>
     bb4:	27b30078 	addiu	s3,sp,120
     bb8:	02602025 	move	a0,s3
     bbc:	0c000000 	jal	0 <EnKarebaba_Init>
     bc0:	26850024 	addiu	a1,s4,36
     bc4:	0c000000 	jal	0 <EnKarebaba_Init>
     bc8:	868400b4 	lh	a0,180(s4)
     bcc:	3c0141a0 	lui	at,0x41a0
     bd0:	44814000 	mtc1	at,$f8
     bd4:	868400b4 	lh	a0,180(s4)
     bd8:	46080602 	mul.s	$f24,$f0,$f8
     bdc:	0c000000 	jal	0 <EnKarebaba_Init>
     be0:	00000000 	nop
     be4:	e7a00068 	swc1	$f0,104(sp)
     be8:	0c000000 	jal	0 <EnKarebaba_Init>
     bec:	868400b6 	lh	a0,182(s4)
     bf0:	3c01c1a0 	lui	at,0xc1a0
     bf4:	44815000 	mtc1	at,$f10
     bf8:	c7b00068 	lwc1	$f16,104(sp)
     bfc:	868400b4 	lh	a0,180(s4)
     c00:	46105482 	mul.s	$f18,$f10,$f16
     c04:	00000000 	nop
     c08:	46120502 	mul.s	$f20,$f0,$f18
     c0c:	0c000000 	jal	0 <EnKarebaba_Init>
     c10:	00000000 	nop
     c14:	e7a00068 	swc1	$f0,104(sp)
     c18:	0c000000 	jal	0 <EnKarebaba_Init>
     c1c:	868400b6 	lh	a0,182(s4)
     c20:	3c01c1a0 	lui	at,0xc1a0
     c24:	44812000 	mtc1	at,$f4
     c28:	c7a60068 	lwc1	$f6,104(sp)
     c2c:	3c110000 	lui	s1,0x0
     c30:	26310000 	addiu	s1,s1,0
     c34:	46062202 	mul.s	$f8,$f4,$f6
     c38:	00008025 	move	s0,zero
     c3c:	24120004 	li	s2,4
     c40:	46080582 	mul.s	$f22,$f0,$f8
     c44:	00000000 	nop
     c48:	240b01f4 	li	t3,500
     c4c:	240c0032 	li	t4,50
     c50:	afac0014 	sw	t4,20(sp)
     c54:	afab0010 	sw	t3,16(sp)
     c58:	02a02025 	move	a0,s5
     c5c:	02602825 	move	a1,s3
     c60:	02203025 	move	a2,s1
     c64:	0c000000 	jal	0 <EnKarebaba_Init>
     c68:	02203825 	move	a3,s1
     c6c:	c7aa0078 	lwc1	$f10,120(sp)
     c70:	c7b2007c 	lwc1	$f18,124(sp)
     c74:	c7a60080 	lwc1	$f6,128(sp)
     c78:	46145400 	add.s	$f16,$f10,$f20
     c7c:	26100001 	addiu	s0,s0,1
     c80:	46189100 	add.s	$f4,$f18,$f24
     c84:	e7b00078 	swc1	$f16,120(sp)
     c88:	46163200 	add.s	$f8,$f6,$f22
     c8c:	e7a4007c 	swc1	$f4,124(sp)
     c90:	1612ffed 	bne	s0,s2,c48 <func_80A95D90+0x208>
     c94:	e7a80080 	swc1	$f8,128(sp)
     c98:	240d01f4 	li	t5,500
     c9c:	240e0064 	li	t6,100
     ca0:	afae0014 	sw	t6,20(sp)
     ca4:	afad0010 	sw	t5,16(sp)
     ca8:	02a02025 	move	a0,s5
     cac:	26850008 	addiu	a1,s4,8
     cb0:	02203025 	move	a2,s1
     cb4:	0c000000 	jal	0 <EnKarebaba_Init>
     cb8:	02203825 	move	a3,s1
     cbc:	02802025 	move	a0,s4
     cc0:	0c000000 	jal	0 <EnKarebaba_Init>
     cc4:	02a02825 	move	a1,s5
     cc8:	8fbf005c 	lw	ra,92(sp)
     ccc:	d7b40028 	ldc1	$f20,40(sp)
     cd0:	d7b60030 	ldc1	$f22,48(sp)
     cd4:	d7b80038 	ldc1	$f24,56(sp)
     cd8:	8fb00044 	lw	s0,68(sp)
     cdc:	8fb10048 	lw	s1,72(sp)
     ce0:	8fb2004c 	lw	s2,76(sp)
     ce4:	8fb30050 	lw	s3,80(sp)
     ce8:	8fb40054 	lw	s4,84(sp)
     cec:	8fb50058 	lw	s5,88(sp)
     cf0:	03e00008 	jr	ra
     cf4:	27bd0088 	addiu	sp,sp,136

00000cf8 <func_80A96048>:
     cf8:	27bdffe8 	addiu	sp,sp,-24
     cfc:	afbf0014 	sw	ra,20(sp)
     d00:	afa5001c 	sw	a1,28(sp)
     d04:	8482001c 	lh	v0,28(a0)
     d08:	10400002 	beqz	v0,d14 <func_80A96048+0x1c>
     d0c:	244effff 	addiu	t6,v0,-1
     d10:	a48e001c 	sh	t6,28(a0)
     d14:	8fa5001c 	lw	a1,28(sp)
     d18:	0c000000 	jal	0 <EnKarebaba_Init>
     d1c:	afa40018 	sw	a0,24(sp)
     d20:	14400005 	bnez	v0,d38 <func_80A96048+0x40>
     d24:	8fa40018 	lw	a0,24(sp)
     d28:	848f001c 	lh	t7,28(a0)
     d2c:	8fa5001c 	lw	a1,28(sp)
     d30:	15e00005 	bnez	t7,d48 <func_80A96048+0x50>
     d34:	00000000 	nop
     d38:	0c000000 	jal	0 <EnKarebaba_Init>
     d3c:	00000000 	nop
     d40:	10000004 	b	d54 <func_80A96048+0x5c>
     d44:	8fbf0014 	lw	ra,20(sp)
     d48:	0c000000 	jal	0 <EnKarebaba_Init>
     d4c:	24060007 	li	a2,7
     d50:	8fbf0014 	lw	ra,20(sp)
     d54:	27bd0018 	addiu	sp,sp,24
     d58:	03e00008 	jr	ra
     d5c:	00000000 	nop

00000d60 <func_80A960B0>:
     d60:	27bdffc8 	addiu	sp,sp,-56
     d64:	afb00030 	sw	s0,48(sp)
     d68:	00808025 	move	s0,a0
     d6c:	afbf0034 	sw	ra,52(sp)
     d70:	afa5003c 	sw	a1,60(sp)
     d74:	0c000000 	jal	0 <EnKarebaba_Init>
     d78:	2484014c 	addiu	a0,a0,332
     d7c:	3c053ba3 	lui	a1,0x3ba3
     d80:	3c063a03 	lui	a2,0x3a03
     d84:	34c6126f 	ori	a2,a2,0x126f
     d88:	34a5d70a 	ori	a1,a1,0xd70a
     d8c:	0c000000 	jal	0 <EnKarebaba_Init>
     d90:	26040050 	addiu	a0,s0,80
     d94:	3c014160 	lui	at,0x4160
     d98:	44813000 	mtc1	at,$f6
     d9c:	c604000c 	lwc1	$f4,12(s0)
     da0:	c6000050 	lwc1	$f0,80(s0)
     da4:	26040028 	addiu	a0,s0,40
     da8:	46062200 	add.s	$f8,$f4,$f6
     dac:	3c0640a0 	lui	a2,0x40a0
     db0:	e6000058 	swc1	$f0,88(s0)
     db4:	e6000054 	swc1	$f0,84(s0)
     db8:	44054000 	mfc1	a1,$f8
     dbc:	0c000000 	jal	0 <EnKarebaba_Init>
     dc0:	00000000 	nop
     dc4:	50400004 	beqzl	v0,dd8 <func_80A960B0+0x78>
     dc8:	860e00b6 	lh	t6,182(s0)
     dcc:	0c000000 	jal	0 <EnKarebaba_Init>
     dd0:	02002025 	move	a0,s0
     dd4:	860e00b6 	lh	t6,182(s0)
     dd8:	2418000c 	li	t8,12
     ddc:	24190005 	li	t9,5
     de0:	25cf1999 	addiu	t7,t6,6553
     de4:	a60f00b6 	sh	t7,182(s0)
     de8:	24080001 	li	t0,1
     dec:	2409ffff 	li	t1,-1
     df0:	240a000a 	li	t2,10
     df4:	afaa0020 	sw	t2,32(sp)
     df8:	afa9001c 	sw	t1,28(sp)
     dfc:	afa80018 	sw	t0,24(sp)
     e00:	afa00024 	sw	zero,36(sp)
     e04:	afb90014 	sw	t9,20(sp)
     e08:	afb80010 	sw	t8,16(sp)
     e0c:	8fa4003c 	lw	a0,60(sp)
     e10:	26050008 	addiu	a1,s0,8
     e14:	3c064040 	lui	a2,0x4040
     e18:	0c000000 	jal	0 <EnKarebaba_Init>
     e1c:	00003825 	move	a3,zero
     e20:	8fbf0034 	lw	ra,52(sp)
     e24:	8fb00030 	lw	s0,48(sp)
     e28:	27bd0038 	addiu	sp,sp,56
     e2c:	03e00008 	jr	ra
     e30:	00000000 	nop

00000e34 <func_80A96184>:
     e34:	27bdffe8 	addiu	sp,sp,-24
     e38:	afa5001c 	sw	a1,28(sp)
     e3c:	00802825 	move	a1,a0
     e40:	afbf0014 	sw	ra,20(sp)
     e44:	afa40018 	sw	a0,24(sp)
     e48:	afa50018 	sw	a1,24(sp)
     e4c:	0c000000 	jal	0 <EnKarebaba_Init>
     e50:	2484014c 	addiu	a0,a0,332
     e54:	8fa50018 	lw	a1,24(sp)
     e58:	84a2001c 	lh	v0,28(a1)
     e5c:	10400003 	beqz	v0,e6c <func_80A96184+0x38>
     e60:	244effff 	addiu	t6,v0,-1
     e64:	a4ae001c 	sh	t6,28(a1)
     e68:	84a2001c 	lh	v0,28(a1)
     e6c:	54400004 	bnezl	v0,e80 <func_80A96184+0x4c>
     e70:	8fbf0014 	lw	ra,20(sp)
     e74:	0c000000 	jal	0 <EnKarebaba_Init>
     e78:	00a02025 	move	a0,a1
     e7c:	8fbf0014 	lw	ra,20(sp)
     e80:	27bd0018 	addiu	sp,sp,24
     e84:	03e00008 	jr	ra
     e88:	00000000 	nop

00000e8c <func_80A961DC>:
     e8c:	27bdffe0 	addiu	sp,sp,-32
     e90:	afbf0014 	sw	ra,20(sp)
     e94:	afa50024 	sw	a1,36(sp)
     e98:	848e001c 	lh	t6,28(a0)
     e9c:	3c010000 	lui	at,0x0
     ea0:	25cf0001 	addiu	t7,t6,1
     ea4:	a48f001c 	sh	t7,28(a0)
     ea8:	8498001c 	lh	t8,28(a0)
     eac:	c4280000 	lwc1	$f8,0(at)
     eb0:	3c010000 	lui	at,0x0
     eb4:	44982000 	mtc1	t8,$f4
     eb8:	c42a0000 	lwc1	$f10,0(at)
     ebc:	afa40020 	sw	a0,32(sp)
     ec0:	468021a0 	cvt.s.w	$f6,$f4
     ec4:	46083002 	mul.s	$f0,$f6,$f8
     ec8:	00000000 	nop
     ecc:	46005402 	mul.s	$f16,$f10,$f0
     ed0:	e7a0001c 	swc1	$f0,28(sp)
     ed4:	44058000 	mfc1	a1,$f16
     ed8:	0c000000 	jal	0 <EnKarebaba_Init>
     edc:	00000000 	nop
     ee0:	3c014160 	lui	at,0x4160
     ee4:	c7a0001c 	lwc1	$f0,28(sp)
     ee8:	44812000 	mtc1	at,$f4
     eec:	8fa60020 	lw	a2,32(sp)
     ef0:	8fa40024 	lw	a0,36(sp)
     ef4:	46002182 	mul.s	$f6,$f4,$f0
     ef8:	c4d2000c 	lwc1	$f18,12(a2)
     efc:	84d9001c 	lh	t9,28(a2)
     f00:	24010014 	li	at,20
     f04:	24851c24 	addiu	a1,a0,7204
     f08:	46069200 	add.s	$f8,$f18,$f6
     f0c:	1721000c 	bne	t9,at,f40 <func_80A961DC+0xb4>
     f10:	e4c80028 	swc1	$f8,40(a2)
     f14:	8cc80004 	lw	t0,4(a2)
     f18:	2401ffef 	li	at,-17
     f1c:	24070005 	li	a3,5
     f20:	01014824 	and	t1,t0,at
     f24:	acc90004 	sw	t1,4(a2)
     f28:	352b0005 	ori	t3,t1,0x5
     f2c:	accb0004 	sw	t3,4(a2)
     f30:	0c000000 	jal	0 <EnKarebaba_Init>
     f34:	afa60020 	sw	a2,32(sp)
     f38:	0c000000 	jal	0 <EnKarebaba_Init>
     f3c:	8fa40020 	lw	a0,32(sp)
     f40:	8fbf0014 	lw	ra,20(sp)
     f44:	27bd0020 	addiu	sp,sp,32
     f48:	03e00008 	jr	ra
     f4c:	00000000 	nop

00000f50 <EnKarebaba_Update>:
     f50:	27bdffc0 	addiu	sp,sp,-64
     f54:	afb0001c 	sw	s0,28(sp)
     f58:	00808025 	move	s0,a0
     f5c:	afbf0024 	sw	ra,36(sp)
     f60:	afb10020 	sw	s1,32(sp)
     f64:	8e190190 	lw	t9,400(s0)
     f68:	00a08825 	move	s1,a1
     f6c:	0320f809 	jalr	t9
     f70:	00000000 	nop
     f74:	8e020190 	lw	v0,400(s0)
     f78:	3c0e0000 	lui	t6,0x0
     f7c:	25ce0000 	addiu	t6,t6,0
     f80:	11c20059 	beq	t6,v0,10e8 <EnKarebaba_Update+0x198>
     f84:	3c0f0000 	lui	t7,0x0
     f88:	25ef0000 	addiu	t7,t7,0
     f8c:	15e2000f 	bne	t7,v0,fcc <EnKarebaba_Update+0x7c>
     f90:	afaf002c 	sw	t7,44(sp)
     f94:	0c000000 	jal	0 <EnKarebaba_Init>
     f98:	02002025 	move	a0,s0
     f9c:	3c014120 	lui	at,0x4120
     fa0:	44810000 	mtc1	at,$f0
     fa4:	24180005 	li	t8,5
     fa8:	afb80014 	sw	t8,20(sp)
     fac:	44060000 	mfc1	a2,$f0
     fb0:	02202025 	move	a0,s1
     fb4:	02002825 	move	a1,s0
     fb8:	3c074170 	lui	a3,0x4170
     fbc:	0c000000 	jal	0 <EnKarebaba_Init>
     fc0:	e7a00010 	swc1	$f0,16(sp)
     fc4:	10000010 	b	1008 <EnKarebaba_Update+0xb8>
     fc8:	8e020190 	lw	v0,400(s0)
     fcc:	44800000 	mtc1	zero,$f0
     fd0:	24080004 	li	t0,4
     fd4:	afa80014 	sw	t0,20(sp)
     fd8:	44060000 	mfc1	a2,$f0
     fdc:	44070000 	mfc1	a3,$f0
     fe0:	02202025 	move	a0,s1
     fe4:	02002825 	move	a1,s0
     fe8:	0c000000 	jal	0 <EnKarebaba_Init>
     fec:	e7a00010 	swc1	$f0,16(sp)
     ff0:	8e0901f4 	lw	t1,500(s0)
     ff4:	55200004 	bnezl	t1,1008 <EnKarebaba_Update+0xb8>
     ff8:	8e020190 	lw	v0,400(s0)
     ffc:	8e0a0078 	lw	t2,120(s0)
    1000:	ae0a01f4 	sw	t2,500(s0)
    1004:	8e020190 	lw	v0,400(s0)
    1008:	8fab002c 	lw	t3,44(sp)
    100c:	3c0c0000 	lui	t4,0x0
    1010:	258c0000 	addiu	t4,t4,0
    1014:	51620035 	beql	t3,v0,10ec <EnKarebaba_Update+0x19c>
    1018:	8fbf0024 	lw	ra,36(sp)
    101c:	11820032 	beq	t4,v0,10e8 <EnKarebaba_Update+0x198>
    1020:	3c0d0000 	lui	t5,0x0
    1024:	25ad0000 	addiu	t5,t5,0
    1028:	11a2000e 	beq	t5,v0,1064 <EnKarebaba_Update+0x114>
    102c:	3c190000 	lui	t9,0x0
    1030:	27390000 	addiu	t9,t9,0
    1034:	1322000b 	beq	t9,v0,1064 <EnKarebaba_Update+0x114>
    1038:	02202025 	move	a0,s1
    103c:	3c010001 	lui	at,0x1
    1040:	34211e60 	ori	at,at,0x1e60
    1044:	02212821 	addu	a1,s1,at
    1048:	afa50030 	sw	a1,48(sp)
    104c:	0c000000 	jal	0 <EnKarebaba_Init>
    1050:	260601f8 	addiu	a2,s0,504
    1054:	8fa50030 	lw	a1,48(sp)
    1058:	02202025 	move	a0,s1
    105c:	0c000000 	jal	0 <EnKarebaba_Init>
    1060:	26060244 	addiu	a2,s0,580
    1064:	3c010001 	lui	at,0x1
    1068:	34211e60 	ori	at,at,0x1e60
    106c:	02212821 	addu	a1,s1,at
    1070:	02202025 	move	a0,s1
    1074:	0c000000 	jal	0 <EnKarebaba_Init>
    1078:	260601f8 	addiu	a2,s0,504
    107c:	3c014120 	lui	at,0x4120
    1080:	44813000 	mtc1	at,$f6
    1084:	c6040050 	lwc1	$f4,80(s0)
    1088:	3c010000 	lui	at,0x0
    108c:	c42a0000 	lwc1	$f10,0(at)
    1090:	46062202 	mul.s	$f8,$f4,$f6
    1094:	02002025 	move	a0,s0
    1098:	460a4403 	div.s	$f16,$f8,$f10
    109c:	44058000 	mfc1	a1,$f16
    10a0:	0c000000 	jal	0 <EnKarebaba_Init>
    10a4:	00000000 	nop
    10a8:	3c014220 	lui	at,0x4220
    10ac:	44812000 	mtc1	at,$f4
    10b0:	c612000c 	lwc1	$f18,12(s0)
    10b4:	c602003c 	lwc1	$f2,60(s0)
    10b8:	c6060008 	lwc1	$f6,8(s0)
    10bc:	46049000 	add.s	$f0,$f18,$f4
    10c0:	e6060038 	swc1	$f6,56(s0)
    10c4:	4602003c 	c.lt.s	$f0,$f2
    10c8:	00000000 	nop
    10cc:	45020004 	bc1fl	10e0 <EnKarebaba_Update+0x190>
    10d0:	e602003c 	swc1	$f2,60(s0)
    10d4:	10000002 	b	10e0 <EnKarebaba_Update+0x190>
    10d8:	e600003c 	swc1	$f0,60(s0)
    10dc:	e602003c 	swc1	$f2,60(s0)
    10e0:	c6080010 	lwc1	$f8,16(s0)
    10e4:	e6080040 	swc1	$f8,64(s0)
    10e8:	8fbf0024 	lw	ra,36(sp)
    10ec:	8fb0001c 	lw	s0,28(sp)
    10f0:	8fb10020 	lw	s1,32(sp)
    10f4:	03e00008 	jr	ra
    10f8:	27bd0040 	addiu	sp,sp,64

000010fc <func_80A9644C>:
    10fc:	27bdff70 	addiu	sp,sp,-144
    1100:	afbf0024 	sw	ra,36(sp)
    1104:	afb00020 	sw	s0,32(sp)
    1108:	afa40090 	sw	a0,144(sp)
    110c:	afa50094 	sw	a1,148(sp)
    1110:	8ca50000 	lw	a1,0(a1)
    1114:	3c060000 	lui	a2,0x0
    1118:	24c60000 	addiu	a2,a2,0
    111c:	27a4003c 	addiu	a0,sp,60
    1120:	240703f5 	li	a3,1013
    1124:	0c000000 	jal	0 <EnKarebaba_Init>
    1128:	00a08025 	move	s0,a1
    112c:	8faf0094 	lw	t7,148(sp)
    1130:	0c000000 	jal	0 <EnKarebaba_Init>
    1134:	8de40000 	lw	a0,0(t7)
    1138:	8e0202d0 	lw	v0,720(s0)
    113c:	8fa80090 	lw	t0,144(sp)
    1140:	3c19fa00 	lui	t9,0xfa00
    1144:	24580008 	addiu	t8,v0,8
    1148:	ae1802d0 	sw	t8,720(s0)
    114c:	240900ff 	li	t1,255
    1150:	ac490004 	sw	t1,4(v0)
    1154:	ac590000 	sw	t9,0(v0)
    1158:	27aa0050 	addiu	t2,sp,80
    115c:	8d070010 	lw	a3,16(t0)
    1160:	8d06000c 	lw	a2,12(t0)
    1164:	8d050008 	lw	a1,8(t0)
    1168:	8d0401f4 	lw	a0,500(t0)
    116c:	0c000000 	jal	0 <EnKarebaba_Init>
    1170:	afaa0010 	sw	t2,16(sp)
    1174:	27a40050 	addiu	a0,sp,80
    1178:	0c000000 	jal	0 <EnKarebaba_Init>
    117c:	00002825 	move	a1,zero
    1180:	3c010000 	lui	at,0x0
    1184:	c42c0000 	lwc1	$f12,0(at)
    1188:	3c013f80 	lui	at,0x3f80
    118c:	44817000 	mtc1	at,$f14
    1190:	44066000 	mfc1	a2,$f12
    1194:	0c000000 	jal	0 <EnKarebaba_Init>
    1198:	24070001 	li	a3,1
    119c:	8e0202d0 	lw	v0,720(s0)
    11a0:	3c0cda38 	lui	t4,0xda38
    11a4:	358c0003 	ori	t4,t4,0x3
    11a8:	244b0008 	addiu	t3,v0,8
    11ac:	ae0b02d0 	sw	t3,720(s0)
    11b0:	ac4c0000 	sw	t4,0(v0)
    11b4:	8fad0094 	lw	t5,148(sp)
    11b8:	3c050000 	lui	a1,0x0
    11bc:	24a50000 	addiu	a1,a1,0
    11c0:	8da40000 	lw	a0,0(t5)
    11c4:	24060405 	li	a2,1029
    11c8:	0c000000 	jal	0 <EnKarebaba_Init>
    11cc:	afa20034 	sw	v0,52(sp)
    11d0:	8fa30034 	lw	v1,52(sp)
    11d4:	3c180405 	lui	t8,0x405
    11d8:	27189210 	addiu	t8,t8,-28144
    11dc:	ac620004 	sw	v0,4(v1)
    11e0:	8e0202d0 	lw	v0,720(s0)
    11e4:	3c0fde00 	lui	t7,0xde00
    11e8:	3c060000 	lui	a2,0x0
    11ec:	244e0008 	addiu	t6,v0,8
    11f0:	ae0e02d0 	sw	t6,720(s0)
    11f4:	ac580004 	sw	t8,4(v0)
    11f8:	ac4f0000 	sw	t7,0(v0)
    11fc:	8fb90094 	lw	t9,148(sp)
    1200:	24c60000 	addiu	a2,a2,0
    1204:	27a4003c 	addiu	a0,sp,60
    1208:	2407040a 	li	a3,1034
    120c:	0c000000 	jal	0 <EnKarebaba_Init>
    1210:	8f250000 	lw	a1,0(t9)
    1214:	8fbf0024 	lw	ra,36(sp)
    1218:	8fb00020 	lw	s0,32(sp)
    121c:	27bd0090 	addiu	sp,sp,144
    1220:	03e00008 	jr	ra
    1224:	00000000 	nop

00001228 <EnKarebaba_Draw>:
    1228:	27bdff68 	addiu	sp,sp,-152
    122c:	afb40038 	sw	s4,56(sp)
    1230:	00a0a025 	move	s4,a1
    1234:	afbf003c 	sw	ra,60(sp)
    1238:	afb30034 	sw	s3,52(sp)
    123c:	afb20030 	sw	s2,48(sp)
    1240:	afb1002c 	sw	s1,44(sp)
    1244:	afb00028 	sw	s0,40(sp)
    1248:	f7b40020 	sdc1	$f20,32(sp)
    124c:	8ca50000 	lw	a1,0(a1)
    1250:	00809825 	move	s3,a0
    1254:	3c060000 	lui	a2,0x0
    1258:	24c60000 	addiu	a2,a2,0
    125c:	27a40074 	addiu	a0,sp,116
    1260:	24070420 	li	a3,1056
    1264:	0c000000 	jal	0 <EnKarebaba_Init>
    1268:	00a09025 	move	s2,a1
    126c:	0c000000 	jal	0 <EnKarebaba_Init>
    1270:	8e840000 	lw	a0,0(s4)
    1274:	8e620190 	lw	v0,400(s3)
    1278:	3c0e0000 	lui	t6,0x0
    127c:	25ce0000 	addiu	t6,t6,0
    1280:	15c20021 	bne	t6,v0,1308 <EnKarebaba_Draw+0xe0>
    1284:	00000000 	nop
    1288:	8662001c 	lh	v0,28(s3)
    128c:	3c064348 	lui	a2,0x4348
    1290:	28410029 	slti	at,v0,41
    1294:	10200003 	beqz	at,12a4 <EnKarebaba_Draw+0x7c>
    1298:	304f0001 	andi	t7,v0,0x1
    129c:	11e00087 	beqz	t7,14bc <EnKarebaba_Draw+0x294>
    12a0:	00000000 	nop
    12a4:	44807000 	mtc1	zero,$f14
    12a8:	24070001 	li	a3,1
    12ac:	0c000000 	jal	0 <EnKarebaba_Init>
    12b0:	46007306 	mov.s	$f12,$f14
    12b4:	8e5002c0 	lw	s0,704(s2)
    12b8:	3c19da38 	lui	t9,0xda38
    12bc:	37390003 	ori	t9,t9,0x3
    12c0:	26180008 	addiu	t8,s0,8
    12c4:	ae5802c0 	sw	t8,704(s2)
    12c8:	3c050000 	lui	a1,0x0
    12cc:	ae190000 	sw	t9,0(s0)
    12d0:	8e840000 	lw	a0,0(s4)
    12d4:	24a50000 	addiu	a1,a1,0
    12d8:	0c000000 	jal	0 <EnKarebaba_Init>
    12dc:	2406042a 	li	a2,1066
    12e0:	ae020004 	sw	v0,4(s0)
    12e4:	8e4302c0 	lw	v1,704(s2)
    12e8:	3c0a0600 	lui	t2,0x600
    12ec:	254a3070 	addiu	t2,t2,12400
    12f0:	24680008 	addiu	t0,v1,8
    12f4:	ae4802c0 	sw	t0,704(s2)
    12f8:	3c09de00 	lui	t1,0xde00
    12fc:	ac690000 	sw	t1,0(v1)
    1300:	1000006e 	b	14bc <EnKarebaba_Draw+0x294>
    1304:	ac6a0004 	sw	t2,4(v1)
    1308:	3c0b0000 	lui	t3,0x0
    130c:	256b0000 	addiu	t3,t3,0
    1310:	1162006a 	beq	t3,v0,14bc <EnKarebaba_Draw+0x294>
    1314:	02802025 	move	a0,s4
    1318:	3c050000 	lui	a1,0x0
    131c:	24a50000 	addiu	a1,a1,0
    1320:	24060001 	li	a2,1
    1324:	0c000000 	jal	0 <EnKarebaba_Init>
    1328:	24070002 	li	a3,2
    132c:	8e650150 	lw	a1,336(s3)
    1330:	8e66016c 	lw	a2,364(s3)
    1334:	afa00014 	sw	zero,20(sp)
    1338:	afa00010 	sw	zero,16(sp)
    133c:	02802025 	move	a0,s4
    1340:	0c000000 	jal	0 <EnKarebaba_Init>
    1344:	00003825 	move	a3,zero
    1348:	c66c0024 	lwc1	$f12,36(s3)
    134c:	c66e0028 	lwc1	$f14,40(s3)
    1350:	8e66002c 	lw	a2,44(s3)
    1354:	0c000000 	jal	0 <EnKarebaba_Init>
    1358:	00003825 	move	a3,zero
    135c:	8e620190 	lw	v0,400(s3)
    1360:	3c0c0000 	lui	t4,0x0
    1364:	258c0000 	addiu	t4,t4,0
    1368:	11820004 	beq	t4,v0,137c <EnKarebaba_Draw+0x154>
    136c:	3c0d0000 	lui	t5,0x0
    1370:	25ad0000 	addiu	t5,t5,0
    1374:	15a2000a 	bne	t5,v0,13a0 <EnKarebaba_Draw+0x178>
    1378:	3c010000 	lui	at,0x0
    137c:	866e001c 	lh	t6,28(s3)
    1380:	3c010000 	lui	at,0x0
    1384:	c4280000 	lwc1	$f8,0(at)
    1388:	448e2000 	mtc1	t6,$f4
    138c:	00000000 	nop
    1390:	468021a0 	cvt.s.w	$f6,$f4
    1394:	46083302 	mul.s	$f12,$f6,$f8
    1398:	10000003 	b	13a8 <EnKarebaba_Draw+0x180>
    139c:	e7ac0088 	swc1	$f12,136(sp)
    13a0:	c42a0000 	lwc1	$f10,0(at)
    13a4:	e7aa0088 	swc1	$f10,136(sp)
    13a8:	c7ac0088 	lwc1	$f12,136(sp)
    13ac:	24070001 	li	a3,1
    13b0:	44066000 	mfc1	a2,$f12
    13b4:	0c000000 	jal	0 <EnKarebaba_Init>
    13b8:	46006386 	mov.s	$f14,$f12
    13bc:	866400b4 	lh	a0,180(s3)
    13c0:	866500b6 	lh	a1,182(s3)
    13c4:	00003025 	move	a2,zero
    13c8:	0c000000 	jal	0 <EnKarebaba_Init>
    13cc:	24070001 	li	a3,1
    13d0:	8e6f0190 	lw	t7,400(s3)
    13d4:	3c030000 	lui	v1,0x0
    13d8:	24630000 	addiu	v1,v1,0
    13dc:	146f0004 	bne	v1,t7,13f0 <EnKarebaba_Draw+0x1c8>
    13e0:	24190003 	li	t9,3
    13e4:	24180002 	li	t8,2
    13e8:	10000002 	b	13f4 <EnKarebaba_Draw+0x1cc>
    13ec:	afb8008c 	sw	t8,140(sp)
    13f0:	afb9008c 	sw	t9,140(sp)
    13f4:	8fa8008c 	lw	t0,140(sp)
    13f8:	3c090000 	lui	t1,0x0
    13fc:	25310000 	addiu	s1,t1,0
    1400:	1900002c 	blez	t0,14b4 <EnKarebaba_Draw+0x28c>
    1404:	00085080 	sll	t2,t0,0x2
    1408:	01515821 	addu	t3,t2,s1
    140c:	4480a000 	mtc1	zero,$f20
    1410:	afab0048 	sw	t3,72(sp)
    1414:	afa3004c 	sw	v1,76(sp)
    1418:	4600a306 	mov.s	$f12,$f20
    141c:	4600a386 	mov.s	$f14,$f20
    1420:	3c06c4fa 	lui	a2,0xc4fa
    1424:	0c000000 	jal	0 <EnKarebaba_Init>
    1428:	24070001 	li	a3,1
    142c:	8e5002c0 	lw	s0,704(s2)
    1430:	3c0dda38 	lui	t5,0xda38
    1434:	35ad0003 	ori	t5,t5,0x3
    1438:	260c0008 	addiu	t4,s0,8
    143c:	ae4c02c0 	sw	t4,704(s2)
    1440:	3c050000 	lui	a1,0x0
    1444:	ae0d0000 	sw	t5,0(s0)
    1448:	8e840000 	lw	a0,0(s4)
    144c:	24a50000 	addiu	a1,a1,0
    1450:	0c000000 	jal	0 <EnKarebaba_Init>
    1454:	2406045c 	li	a2,1116
    1458:	ae020004 	sw	v0,4(s0)
    145c:	8e4302c0 	lw	v1,704(s2)
    1460:	3c0fde00 	lui	t7,0xde00
    1464:	3c190000 	lui	t9,0x0
    1468:	246e0008 	addiu	t6,v1,8
    146c:	ae4e02c0 	sw	t6,704(s2)
    1470:	ac6f0000 	sw	t7,0(v1)
    1474:	8e380000 	lw	t8,0(s1)
    1478:	27390000 	addiu	t9,t9,0
    147c:	16390009 	bne	s1,t9,14a4 <EnKarebaba_Draw+0x27c>
    1480:	ac780004 	sw	t8,4(v1)
    1484:	8fa8004c 	lw	t0,76(sp)
    1488:	8e6a0190 	lw	t2,400(s3)
    148c:	3c040000 	lui	a0,0x0
    1490:	24840000 	addiu	a0,a0,0
    1494:	550a0004 	bnel	t0,t2,14a8 <EnKarebaba_Draw+0x280>
    1498:	8fa90048 	lw	t1,72(sp)
    149c:	0c000000 	jal	0 <EnKarebaba_Init>
    14a0:	26650038 	addiu	a1,s3,56
    14a4:	8fa90048 	lw	t1,72(sp)
    14a8:	26310004 	addiu	s1,s1,4
    14ac:	5629ffdb 	bnel	s1,t1,141c <EnKarebaba_Draw+0x1f4>
    14b0:	4600a306 	mov.s	$f12,$f20
    14b4:	0c000000 	jal	0 <EnKarebaba_Init>
    14b8:	02802025 	move	a0,s4
    14bc:	3c0b0000 	lui	t3,0x0
    14c0:	256b0000 	addiu	t3,t3,0
    14c4:	3c050000 	lui	a1,0x0
    14c8:	3c100000 	lui	s0,0x0
    14cc:	26100000 	addiu	s0,s0,0
    14d0:	24a50000 	addiu	a1,a1,0
    14d4:	afab004c 	sw	t3,76(sp)
    14d8:	02802025 	move	a0,s4
    14dc:	24060001 	li	a2,1
    14e0:	0c000000 	jal	0 <EnKarebaba_Init>
    14e4:	24070002 	li	a3,2
    14e8:	c66c0008 	lwc1	$f12,8(s3)
    14ec:	c66e000c 	lwc1	$f14,12(s3)
    14f0:	8e660010 	lw	a2,16(s3)
    14f4:	0c000000 	jal	0 <EnKarebaba_Init>
    14f8:	00003825 	move	a3,zero
    14fc:	8e6c0190 	lw	t4,400(s3)
    1500:	3c010000 	lui	at,0x0
    1504:	520c0004 	beql	s0,t4,1518 <EnKarebaba_Draw+0x2f0>
    1508:	c7ac0088 	lwc1	$f12,136(sp)
    150c:	c42c0000 	lwc1	$f12,0(at)
    1510:	e7ac0088 	swc1	$f12,136(sp)
    1514:	c7ac0088 	lwc1	$f12,136(sp)
    1518:	24070001 	li	a3,1
    151c:	44066000 	mfc1	a2,$f12
    1520:	0c000000 	jal	0 <EnKarebaba_Init>
    1524:	46006386 	mov.s	$f14,$f12
    1528:	866d0016 	lh	t5,22(s3)
    152c:	3c010000 	lui	at,0x0
    1530:	c4240000 	lwc1	$f4,0(at)
    1534:	448d8000 	mtc1	t5,$f16
    1538:	24050001 	li	a1,1
    153c:	468084a0 	cvt.s.w	$f18,$f16
    1540:	46049302 	mul.s	$f12,$f18,$f4
    1544:	0c000000 	jal	0 <EnKarebaba_Init>
    1548:	00000000 	nop
    154c:	8e5002c0 	lw	s0,704(s2)
    1550:	3c0fda38 	lui	t7,0xda38
    1554:	35ef0003 	ori	t7,t7,0x3
    1558:	260e0008 	addiu	t6,s0,8
    155c:	ae4e02c0 	sw	t6,704(s2)
    1560:	3c050000 	lui	a1,0x0
    1564:	ae0f0000 	sw	t7,0(s0)
    1568:	8e840000 	lw	a0,0(s4)
    156c:	24a50000 	addiu	a1,a1,0
    1570:	0c000000 	jal	0 <EnKarebaba_Init>
    1574:	24060478 	li	a2,1144
    1578:	ae020004 	sw	v0,4(s0)
    157c:	8e4302c0 	lw	v1,704(s2)
    1580:	3c080600 	lui	t0,0x600
    1584:	250810f0 	addiu	t0,t0,4336
    1588:	24780008 	addiu	t8,v1,8
    158c:	ae5802c0 	sw	t8,704(s2)
    1590:	3c19de00 	lui	t9,0xde00
    1594:	ac790000 	sw	t9,0(v1)
    1598:	ac680004 	sw	t0,4(v1)
    159c:	8e690190 	lw	t1,400(s3)
    15a0:	8faa004c 	lw	t2,76(sp)
    15a4:	2404c000 	li	a0,-16384
    15a8:	1549001d 	bne	t2,t1,1620 <EnKarebaba_Draw+0x3f8>
    15ac:	00000000 	nop
    15b0:	866b00b6 	lh	t3,182(s3)
    15b4:	866c0016 	lh	t4,22(s3)
    15b8:	00003025 	move	a2,zero
    15bc:	24070001 	li	a3,1
    15c0:	016c2823 	subu	a1,t3,t4
    15c4:	00052c00 	sll	a1,a1,0x10
    15c8:	0c000000 	jal	0 <EnKarebaba_Init>
    15cc:	00052c03 	sra	a1,a1,0x10
    15d0:	8e5002c0 	lw	s0,704(s2)
    15d4:	3c0eda38 	lui	t6,0xda38
    15d8:	35ce0003 	ori	t6,t6,0x3
    15dc:	260d0008 	addiu	t5,s0,8
    15e0:	ae4d02c0 	sw	t5,704(s2)
    15e4:	3c050000 	lui	a1,0x0
    15e8:	ae0e0000 	sw	t6,0(s0)
    15ec:	8e840000 	lw	a0,0(s4)
    15f0:	24a50000 	addiu	a1,a1,0
    15f4:	0c000000 	jal	0 <EnKarebaba_Init>
    15f8:	24060483 	li	a2,1155
    15fc:	ae020004 	sw	v0,4(s0)
    1600:	8e4302c0 	lw	v1,704(s2)
    1604:	3c190600 	lui	t9,0x600
    1608:	27391828 	addiu	t9,t9,6184
    160c:	246f0008 	addiu	t7,v1,8
    1610:	ae4f02c0 	sw	t7,704(s2)
    1614:	3c18de00 	lui	t8,0xde00
    1618:	ac780000 	sw	t8,0(v1)
    161c:	ac790004 	sw	t9,4(v1)
    1620:	0c000000 	jal	0 <EnKarebaba_Init>
    1624:	02802025 	move	a0,s4
    1628:	3c060000 	lui	a2,0x0
    162c:	24c60000 	addiu	a2,a2,0
    1630:	27a40074 	addiu	a0,sp,116
    1634:	8e850000 	lw	a1,0(s4)
    1638:	0c000000 	jal	0 <EnKarebaba_Init>
    163c:	2407048b 	li	a3,1163
    1640:	8e6801f4 	lw	t0,500(s3)
    1644:	02602025 	move	a0,s3
    1648:	51000004 	beqzl	t0,165c <EnKarebaba_Draw+0x434>
    164c:	8fbf003c 	lw	ra,60(sp)
    1650:	0c000000 	jal	0 <EnKarebaba_Init>
    1654:	02802825 	move	a1,s4
    1658:	8fbf003c 	lw	ra,60(sp)
    165c:	d7b40020 	ldc1	$f20,32(sp)
    1660:	8fb00028 	lw	s0,40(sp)
    1664:	8fb1002c 	lw	s1,44(sp)
    1668:	8fb20030 	lw	s2,48(sp)
    166c:	8fb30034 	lw	s3,52(sp)
    1670:	8fb40038 	lw	s4,56(sp)
    1674:	03e00008 	jr	ra
    1678:	27bd0098 	addiu	sp,sp,152
    167c:	00000000 	nop
