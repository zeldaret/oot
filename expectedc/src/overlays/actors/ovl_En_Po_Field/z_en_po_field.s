
build/src/overlays/actors/ovl_En_Po_Field/z_en_po_field.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <EnPoField_Init>:
       0:	3c060000 	lui	a2,0x0
       4:	24c60000 	addiu	a2,a2,0
       8:	8cc30000 	lw	v1,0(a2)
       c:	27bdffc0 	addiu	sp,sp,-64
      10:	afb10028 	sw	s1,40(sp)
      14:	afb00024 	sw	s0,36(sp)
      18:	2401000a 	li	at,10
      1c:	00808025 	move	s0,a0
      20:	00a08825 	move	s1,a1
      24:	1061001c 	beq	v1,at,98 <EnPoField_Init+0x98>
      28:	afbf002c 	sw	ra,44(sp)
      2c:	c4840024 	lwc1	$f4,36(a0)
      30:	00037080 	sll	t6,v1,0x2
      34:	01c37023 	subu	t6,t6,v1
      38:	4600218d 	trunc.w.s	$f6,$f4
      3c:	3c0f0000 	lui	t7,0x0
      40:	25ef0000 	addiu	t7,t7,0
      44:	000e7040 	sll	t6,t6,0x1
      48:	44193000 	mfc1	t9,$f6
      4c:	01cf1021 	addu	v0,t6,t7
      50:	3c010000 	lui	at,0x0
      54:	a4590000 	sh	t9,0(v0)
      58:	c4880028 	lwc1	$f8,40(a0)
      5c:	00230821 	addu	at,at,v1
      60:	246e0001 	addiu	t6,v1,1
      64:	4600428d 	trunc.w.s	$f10,$f8
      68:	01c01825 	move	v1,t6
      6c:	44095000 	mfc1	t1,$f10
      70:	00000000 	nop
      74:	a4490002 	sh	t1,2(v0)
      78:	c490002c 	lwc1	$f16,44(a0)
      7c:	4600848d 	trunc.w.s	$f18,$f16
      80:	440b9000 	mfc1	t3,$f18
      84:	00000000 	nop
      88:	a44b0004 	sh	t3,4(v0)
      8c:	848d001c 	lh	t5,28(a0)
      90:	a02d0000 	sb	t5,0(at)
      94:	acce0000 	sw	t6,0(a2)
      98:	28610002 	slti	at,v1,2
      9c:	14200007 	bnez	at,bc <EnPoField_Init+0xbc>
      a0:	02002025 	move	a0,s0
      a4:	240f00ff 	li	t7,255
      a8:	a60f001c 	sh	t7,28(s0)
      ac:	0c000000 	jal	0 <EnPoField_Init>
      b0:	02002025 	move	a0,s0
      b4:	10000050 	b	1f8 <EnPoField_Init+0x1f8>
      b8:	8fbf002c 	lw	ra,44(sp)
      bc:	3c050000 	lui	a1,0x0
      c0:	0c000000 	jal	0 <EnPoField_Init>
      c4:	24a50000 	addiu	a1,a1,0
      c8:	3c060600 	lui	a2,0x600
      cc:	3c070600 	lui	a3,0x600
      d0:	2618019c 	addiu	t8,s0,412
      d4:	261901d8 	addiu	t9,s0,472
      d8:	2408000a 	li	t0,10
      dc:	afa80018 	sw	t0,24(sp)
      e0:	afb90014 	sw	t9,20(sp)
      e4:	afb80010 	sw	t8,16(sp)
      e8:	24e70924 	addiu	a3,a3,2340
      ec:	24c66a30 	addiu	a2,a2,27184
      f0:	02202025 	move	a0,s1
      f4:	0c000000 	jal	0 <EnPoField_Init>
      f8:	2605014c 	addiu	a1,s0,332
      fc:	26050244 	addiu	a1,s0,580
     100:	afa50034 	sw	a1,52(sp)
     104:	0c000000 	jal	0 <EnPoField_Init>
     108:	02202025 	move	a0,s1
     10c:	3c070000 	lui	a3,0x0
     110:	8fa50034 	lw	a1,52(sp)
     114:	24e70000 	addiu	a3,a3,0
     118:	02202025 	move	a0,s1
     11c:	0c000000 	jal	0 <EnPoField_Init>
     120:	02003025 	move	a2,s0
     124:	26050290 	addiu	a1,s0,656
     128:	afa50034 	sw	a1,52(sp)
     12c:	0c000000 	jal	0 <EnPoField_Init>
     130:	02202025 	move	a0,s1
     134:	3c070000 	lui	a3,0x0
     138:	8fa50034 	lw	a1,52(sp)
     13c:	24e70000 	addiu	a3,a3,0
     140:	02202025 	move	a0,s1
     144:	0c000000 	jal	0 <EnPoField_Init>
     148:	02003025 	move	a2,s0
     14c:	3c050000 	lui	a1,0x0
     150:	3c060000 	lui	a2,0x0
     154:	24c60000 	addiu	a2,a2,0
     158:	24a50000 	addiu	a1,a1,0
     15c:	0c000000 	jal	0 <EnPoField_Init>
     160:	26040098 	addiu	a0,s0,152
     164:	26060234 	addiu	a2,s0,564
     168:	afa60034 	sw	a2,52(sp)
     16c:	02202025 	move	a0,s1
     170:	0c000000 	jal	0 <EnPoField_Init>
     174:	262507a8 	addiu	a1,s1,1960
     178:	c6040008 	lwc1	$f4,8(s0)
     17c:	c608000c 	lwc1	$f8,12(s0)
     180:	c6100010 	lwc1	$f16,16(s0)
     184:	4600218d 	trunc.w.s	$f6,$f4
     188:	ae020230 	sw	v0,560(s0)
     18c:	240c00ff 	li	t4,255
     190:	4600428d 	trunc.w.s	$f10,$f8
     194:	44053000 	mfc1	a1,$f6
     198:	240d00ff 	li	t5,255
     19c:	4600848d 	trunc.w.s	$f18,$f16
     1a0:	44065000 	mfc1	a2,$f10
     1a4:	240e00ff 	li	t6,255
     1a8:	00052c00 	sll	a1,a1,0x10
     1ac:	44079000 	mfc1	a3,$f18
     1b0:	00063400 	sll	a2,a2,0x10
     1b4:	00063403 	sra	a2,a2,0x10
     1b8:	00073c00 	sll	a3,a3,0x10
     1bc:	00073c03 	sra	a3,a3,0x10
     1c0:	00052c03 	sra	a1,a1,0x10
     1c4:	afae0018 	sw	t6,24(sp)
     1c8:	afad0014 	sw	t5,20(sp)
     1cc:	afac0010 	sw	t4,16(sp)
     1d0:	afa0001c 	sw	zero,28(sp)
     1d4:	0c000000 	jal	0 <EnPoField_Init>
     1d8:	8fa40034 	lw	a0,52(sp)
     1dc:	3c0f0000 	lui	t7,0x0
     1e0:	25ef0000 	addiu	t7,t7,0
     1e4:	ae0f00c0 	sw	t7,192(s0)
     1e8:	02002025 	move	a0,s0
     1ec:	0c000000 	jal	0 <EnPoField_Init>
     1f0:	02202825 	move	a1,s1
     1f4:	8fbf002c 	lw	ra,44(sp)
     1f8:	8fb00024 	lw	s0,36(sp)
     1fc:	8fb10028 	lw	s1,40(sp)
     200:	03e00008 	jr	ra
     204:	27bd0040 	addiu	sp,sp,64

00000208 <EnPoField_Destroy>:
     208:	27bdffe8 	addiu	sp,sp,-24
     20c:	afbf0014 	sw	ra,20(sp)
     210:	afa5001c 	sw	a1,28(sp)
     214:	848e001c 	lh	t6,28(a0)
     218:	00803825 	move	a3,a0
     21c:	240100ff 	li	at,255
     220:	11c1000d 	beq	t6,at,258 <EnPoField_Destroy+0x50>
     224:	00a02025 	move	a0,a1
     228:	8ce60230 	lw	a2,560(a3)
     22c:	afa70018 	sw	a3,24(sp)
     230:	0c000000 	jal	0 <EnPoField_Init>
     234:	24a507a8 	addiu	a1,a1,1960
     238:	8fa50018 	lw	a1,24(sp)
     23c:	8fa4001c 	lw	a0,28(sp)
     240:	0c000000 	jal	0 <EnPoField_Init>
     244:	24a50290 	addiu	a1,a1,656
     248:	8fa50018 	lw	a1,24(sp)
     24c:	8fa4001c 	lw	a0,28(sp)
     250:	0c000000 	jal	0 <EnPoField_Init>
     254:	24a50244 	addiu	a1,a1,580
     258:	8fbf0014 	lw	ra,20(sp)
     25c:	27bd0018 	addiu	sp,sp,24
     260:	03e00008 	jr	ra
     264:	00000000 	nop

00000268 <func_80AD3D68>:
     268:	27bdffd8 	addiu	sp,sp,-40
     26c:	afb00020 	sw	s0,32(sp)
     270:	3c0e0000 	lui	t6,0x0
     274:	afbf0024 	sw	ra,36(sp)
     278:	afa5002c 	sw	a1,44(sp)
     27c:	25ce0000 	addiu	t6,t6,0
     280:	00808025 	move	s0,a0
     284:	ac8e0130 	sw	t6,304(a0)
     288:	8fa4002c 	lw	a0,44(sp)
     28c:	02003025 	move	a2,s0
     290:	24070005 	li	a3,5
     294:	0c000000 	jal	0 <EnPoField_Init>
     298:	24851c24 	addiu	a1,a0,7204
     29c:	a60000b4 	sh	zero,180(s0)
     2a0:	afa00010 	sw	zero,16(sp)
     2a4:	26040234 	addiu	a0,s0,564
     2a8:	00002825 	move	a1,zero
     2ac:	00003025 	move	a2,zero
     2b0:	0c000000 	jal	0 <EnPoField_Init>
     2b4:	00003825 	move	a3,zero
     2b8:	241800c8 	li	t8,200
     2bc:	a6180196 	sh	t8,406(s0)
     2c0:	02002025 	move	a0,s0
     2c4:	0c000000 	jal	0 <EnPoField_Init>
     2c8:	24050000 	li	a1,0
     2cc:	8e190004 	lw	t9,4(s0)
     2d0:	92090255 	lbu	t1,597(s0)
     2d4:	3c01fffe 	lui	at,0xfffe
     2d8:	3421fffe 	ori	at,at,0xfffe
     2dc:	240b0039 	li	t3,57
     2e0:	03214024 	and	t0,t9,at
     2e4:	312afffe 	andi	t2,t1,0xfffe
     2e8:	ae080004 	sw	t0,4(s0)
     2ec:	a20a0255 	sb	t2,597(s0)
     2f0:	a20b0256 	sb	t3,598(s0)
     2f4:	3c0c0000 	lui	t4,0x0
     2f8:	44800000 	mtc1	zero,$f0
     2fc:	918c0000 	lbu	t4,0(t4)
     300:	3c0d0000 	lui	t5,0x0
     304:	25ad0000 	addiu	t5,t5,0
     308:	ae0d0190 	sw	t5,400(s0)
     30c:	a20c00af 	sb	t4,175(s0)
     310:	e600006c 	swc1	$f0,108(s0)
     314:	e6000060 	swc1	$f0,96(s0)
     318:	8fbf0024 	lw	ra,36(sp)
     31c:	8fb00020 	lw	s0,32(sp)
     320:	27bd0028 	addiu	sp,sp,40
     324:	03e00008 	jr	ra
     328:	00000000 	nop

0000032c <func_80AD3E2C>:
     32c:	27bdffe8 	addiu	sp,sp,-24
     330:	afbf0014 	sw	ra,20(sp)
     334:	00803025 	move	a2,a0
     338:	3c050600 	lui	a1,0x600
     33c:	24a50f9c 	addiu	a1,a1,3996
     340:	afa60018 	sw	a2,24(sp)
     344:	0c000000 	jal	0 <EnPoField_Init>
     348:	2484014c 	addiu	a0,a0,332
     34c:	8fa40018 	lw	a0,24(sp)
     350:	44802000 	mtc1	zero,$f4
     354:	3c0e0000 	lui	t6,0x0
     358:	240200ff 	li	v0,255
     35c:	25ce0000 	addiu	t6,t6,0
     360:	240f00d2 	li	t7,210
     364:	24053873 	li	a1,14451
     368:	ac8e0134 	sw	t6,308(a0)
     36c:	a0820214 	sb	v0,532(a0)
     370:	a0820215 	sb	v0,533(a0)
     374:	a08f0216 	sb	t7,534(a0)
     378:	a0800217 	sb	zero,535(a0)
     37c:	a08000c8 	sb	zero,200(a0)
     380:	0c000000 	jal	0 <EnPoField_Init>
     384:	e48400bc 	swc1	$f4,188(a0)
     388:	8fa60018 	lw	a2,24(sp)
     38c:	24010001 	li	at,1
     390:	3c0f0000 	lui	t7,0x0
     394:	84d8001c 	lh	t8,28(a2)
     398:	c4c60028 	lwc1	$f6,40(a2)
     39c:	25ef0000 	addiu	t7,t7,0
     3a0:	17010013 	bne	t8,at,3f0 <func_80AD3E2C+0xc4>
     3a4:	e4c6000c 	swc1	$f6,12(a2)
     3a8:	3c014140 	lui	at,0x4140
     3ac:	44814000 	mtc1	at,$f8
     3b0:	3c014234 	lui	at,0x4234
     3b4:	44815000 	mtc1	at,$f10
     3b8:	24190023 	li	t9,35
     3bc:	24080064 	li	t0,100
     3c0:	2409000a 	li	t1,10
     3c4:	a4d90284 	sh	t9,644(a2)
     3c8:	a4c80286 	sh	t0,646(a2)
     3cc:	a4c90288 	sh	t1,648(a2)
     3d0:	3c010000 	lui	at,0x0
     3d4:	e4c80068 	swc1	$f8,104(a2)
     3d8:	e4ca00c4 	swc1	$f10,196(a2)
     3dc:	c4300000 	lwc1	$f16,0(at)
     3e0:	240a005a 	li	t2,90
     3e4:	a0ca0117 	sb	t2,279(a2)
     3e8:	10000013 	b	438 <func_80AD3E2C+0x10c>
     3ec:	e4d0021c 	swc1	$f16,540(a2)
     3f0:	44809000 	mtc1	zero,$f18
     3f4:	3c020000 	lui	v0,0x0
     3f8:	24420000 	addiu	v0,v0,0
     3fc:	e4d20068 	swc1	$f18,104(a2)
     400:	844b0020 	lh	t3,32(v0)
     404:	3c014214 	lui	at,0x4214
     408:	44812000 	mtc1	at,$f4
     40c:	a4cb0284 	sh	t3,644(a2)
     410:	844c0022 	lh	t4,34(v0)
     414:	3c010000 	lui	at,0x0
     418:	240e005c 	li	t6,92
     41c:	a4cc0286 	sh	t4,646(a2)
     420:	844d0024 	lh	t5,36(v0)
     424:	e4c400c4 	swc1	$f4,196(a2)
     428:	a4cd0288 	sh	t5,648(a2)
     42c:	c4260000 	lwc1	$f6,0(at)
     430:	a0ce0117 	sb	t6,279(a2)
     434:	e4c6021c 	swc1	$f6,540(a2)
     438:	accf0190 	sw	t7,400(a2)
     43c:	8fbf0014 	lw	ra,20(sp)
     440:	27bd0018 	addiu	sp,sp,24
     444:	03e00008 	jr	ra
     448:	00000000 	nop

0000044c <func_80AD3F4C>:
     44c:	27bdffe0 	addiu	sp,sp,-32
     450:	afbf0014 	sw	ra,20(sp)
     454:	8cae1c44 	lw	t6,7236(a1)
     458:	00803025 	move	a2,a0
     45c:	3c050600 	lui	a1,0x600
     460:	24a50924 	addiu	a1,a1,2340
     464:	afa60020 	sw	a2,32(sp)
     468:	2484014c 	addiu	a0,a0,332
     46c:	0c000000 	jal	0 <EnPoField_Init>
     470:	afae001c 	sw	t6,28(sp)
     474:	8fa60020 	lw	a2,32(sp)
     478:	90cf0255 	lbu	t7,597(a2)
     47c:	c4c40090 	lwc1	$f4,144(a2)
     480:	24c40008 	addiu	a0,a2,8
     484:	35f80001 	ori	t8,t7,0x1
     488:	a0d80255 	sb	t8,597(a2)
     48c:	e4c4021c 	swc1	$f4,540(a2)
     490:	8fa5001c 	lw	a1,28(sp)
     494:	0c000000 	jal	0 <EnPoField_Init>
     498:	24a50024 	addiu	a1,a1,36
     49c:	8fa60020 	lw	a2,32(sp)
     4a0:	3c080000 	lui	t0,0x0
     4a4:	25080000 	addiu	t0,t0,0
     4a8:	8cc90190 	lw	t1,400(a2)
     4ac:	84d9008a 	lh	t9,138(a2)
     4b0:	3c0e0000 	lui	t6,0x0
     4b4:	11090008 	beq	t0,t1,4d8 <func_80AD3F4C+0x8c>
     4b8:	a4d90032 	sh	t9,50(a2)
     4bc:	8cca0004 	lw	t2,4(a2)
     4c0:	240c0258 	li	t4,600
     4c4:	240d0020 	li	t5,32
     4c8:	354b0001 	ori	t3,t2,0x1
     4cc:	accb0004 	sw	t3,4(a2)
     4d0:	a4cc0196 	sh	t4,406(a2)
     4d4:	a0cd0194 	sb	t5,404(a2)
     4d8:	25ce0000 	addiu	t6,t6,0
     4dc:	acce0190 	sw	t6,400(a2)
     4e0:	8fbf0014 	lw	ra,20(sp)
     4e4:	27bd0020 	addiu	sp,sp,32
     4e8:	03e00008 	jr	ra
     4ec:	00000000 	nop

000004f0 <func_80AD3FF0>:
     4f0:	27bdffe8 	addiu	sp,sp,-24
     4f4:	afbf0014 	sw	ra,20(sp)
     4f8:	00803825 	move	a3,a0
     4fc:	3c050600 	lui	a1,0x600
     500:	24a50608 	addiu	a1,a1,1544
     504:	afa70018 	sw	a3,24(sp)
     508:	2484014c 	addiu	a0,a0,332
     50c:	0c000000 	jal	0 <EnPoField_Init>
     510:	3c06c0a0 	lui	a2,0xc0a0
     514:	8fa70018 	lw	a3,24(sp)
     518:	3c014140 	lui	at,0x4140
     51c:	44812000 	mtc1	at,$f4
     520:	90ee0255 	lbu	t6,597(a3)
     524:	3c020000 	lui	v0,0x0
     528:	3c180000 	lui	t8,0x0
     52c:	24420000 	addiu	v0,v0,0
     530:	27180000 	addiu	t8,t8,0
     534:	35cf0001 	ori	t7,t6,0x1
     538:	a0ef0255 	sb	t7,597(a3)
     53c:	ace20190 	sw	v0,400(a3)
     540:	1302000c 	beq	t8,v0,574 <func_80AD3FF0+0x84>
     544:	e4e40068 	swc1	$f4,104(a3)
     548:	8cf90004 	lw	t9,4(a3)
     54c:	84e900b6 	lh	t1,182(a3)
     550:	34018000 	li	at,0x8000
     554:	240b07d0 	li	t3,2000
     558:	240c0020 	li	t4,32
     55c:	37280001 	ori	t0,t9,0x1
     560:	01215021 	addu	t2,t1,at
     564:	ace80004 	sw	t0,4(a3)
     568:	a4ea0032 	sh	t2,50(a3)
     56c:	a4eb0196 	sh	t3,406(a3)
     570:	a0ec0194 	sb	t4,404(a3)
     574:	8fbf0014 	lw	ra,20(sp)
     578:	27bd0018 	addiu	sp,sp,24
     57c:	03e00008 	jr	ra
     580:	00000000 	nop

00000584 <func_80AD4084>:
     584:	27bdffd8 	addiu	sp,sp,-40
     588:	afb00020 	sw	s0,32(sp)
     58c:	00808025 	move	s0,a0
     590:	afbf0024 	sw	ra,36(sp)
     594:	3c050600 	lui	a1,0x600
     598:	24a50454 	addiu	a1,a1,1108
     59c:	2484014c 	addiu	a0,a0,332
     5a0:	0c000000 	jal	0 <EnPoField_Init>
     5a4:	3c06c0c0 	lui	a2,0xc0c0
     5a8:	8e0e0280 	lw	t6,640(s0)
     5ac:	3c010001 	lui	at,0x1
     5b0:	3421f824 	ori	at,at,0xf824
     5b4:	8dcf0000 	lw	t7,0(t6)
     5b8:	02002025 	move	a0,s0
     5bc:	01e1c024 	and	t8,t7,at
     5c0:	13000005 	beqz	t8,5d8 <func_80AD4084+0x54>
     5c4:	00000000 	nop
     5c8:	8e19024c 	lw	t9,588(s0)
     5cc:	87280032 	lh	t0,50(t9)
     5d0:	10000006 	b	5ec <func_80AD4084+0x68>
     5d4:	a6080032 	sh	t0,50(s0)
     5d8:	0c000000 	jal	0 <EnPoField_Init>
     5dc:	8e05024c 	lw	a1,588(s0)
     5e0:	34018000 	li	at,0x8000
     5e4:	00414821 	addu	t1,v0,at
     5e8:	a6090032 	sh	t1,50(s0)
     5ec:	920a0255 	lbu	t2,597(s0)
     5f0:	3c0140a0 	lui	at,0x40a0
     5f4:	44812000 	mtc1	at,$f4
     5f8:	314bfffc 	andi	t3,t2,0xfffc
     5fc:	a20b0255 	sb	t3,597(s0)
     600:	240c0010 	li	t4,16
     604:	e6040068 	swc1	$f4,104(s0)
     608:	afac0010 	sw	t4,16(sp)
     60c:	02002025 	move	a0,s0
     610:	24054000 	li	a1,16384
     614:	240600ff 	li	a2,255
     618:	0c000000 	jal	0 <EnPoField_Init>
     61c:	00003825 	move	a3,zero
     620:	3c0d0000 	lui	t5,0x0
     624:	25ad0000 	addiu	t5,t5,0
     628:	ae0d0190 	sw	t5,400(s0)
     62c:	8fbf0024 	lw	ra,36(sp)
     630:	8fb00020 	lw	s0,32(sp)
     634:	27bd0028 	addiu	sp,sp,40
     638:	03e00008 	jr	ra
     63c:	00000000 	nop

00000640 <func_80AD4140>:
     640:	8c8e0004 	lw	t6,4(a0)
     644:	8488019a 	lh	t0,410(a0)
     648:	2401fffe 	li	at,-2
     64c:	44802000 	mtc1	zero,$f4
     650:	849800b6 	lh	t8,182(a0)
     654:	01c17824 	and	t7,t6,at
     658:	241900ff 	li	t9,255
     65c:	29010014 	slti	at,t0,20
     660:	a4800196 	sh	zero,406(a0)
     664:	ac8f0004 	sw	t7,4(a0)
     668:	a0990117 	sb	t9,279(a0)
     66c:	e4840068 	swc1	$f4,104(a0)
     670:	14200003 	bnez	at,680 <func_80AD4140+0x40>
     674:	a4980032 	sh	t8,50(a0)
     678:	24090013 	li	t1,19
     67c:	a489019a 	sh	t1,410(a0)
     680:	3c0a0000 	lui	t2,0x0
     684:	254a0000 	addiu	t2,t2,0
     688:	03e00008 	jr	ra
     68c:	ac8a0190 	sw	t2,400(a0)

00000690 <func_80AD4190>:
     690:	27bdffe0 	addiu	sp,sp,-32
     694:	afb00018 	sw	s0,24(sp)
     698:	00808025 	move	s0,a0
     69c:	afbf001c 	sw	ra,28(sp)
     6a0:	3c050600 	lui	a1,0x600
     6a4:	24a51360 	addiu	a1,a1,4960
     6a8:	2484014c 	addiu	a0,a0,332
     6ac:	0c000000 	jal	0 <EnPoField_Init>
     6b0:	3c06c0c0 	lui	a2,0xc0c0
     6b4:	920f0255 	lbu	t7,597(s0)
     6b8:	44802000 	mtc1	zero,$f4
     6bc:	240e0010 	li	t6,16
     6c0:	31f8fffc 	andi	t8,t7,0xfffc
     6c4:	a60e0196 	sh	t6,406(s0)
     6c8:	a2180255 	sb	t8,597(s0)
     6cc:	02002025 	move	a0,s0
     6d0:	240538ec 	li	a1,14572
     6d4:	0c000000 	jal	0 <EnPoField_Init>
     6d8:	e6040068 	swc1	$f4,104(s0)
     6dc:	02002025 	move	a0,s0
     6e0:	0c000000 	jal	0 <EnPoField_Init>
     6e4:	24053874 	li	a1,14452
     6e8:	3c190000 	lui	t9,0x0
     6ec:	27390000 	addiu	t9,t9,0
     6f0:	ae190190 	sw	t9,400(s0)
     6f4:	8fbf001c 	lw	ra,28(sp)
     6f8:	8fb00018 	lw	s0,24(sp)
     6fc:	27bd0020 	addiu	sp,sp,32
     700:	03e00008 	jr	ra
     704:	00000000 	nop

00000708 <func_80AD4208>:
     708:	27bdffe8 	addiu	sp,sp,-24
     70c:	afa5001c 	sw	a1,28(sp)
     710:	afbf0014 	sw	ra,20(sp)
     714:	3c0e0000 	lui	t6,0x0
     718:	3c0f0000 	lui	t7,0x0
     71c:	25ce0000 	addiu	t6,t6,0
     720:	25ef0000 	addiu	t7,t7,0
     724:	ac8e0130 	sw	t6,304(a0)
     728:	ac8f0134 	sw	t7,308(a0)
     72c:	ac8000c0 	sw	zero,192(a0)
     730:	3c053c23 	lui	a1,0x3c23
     734:	34a5d70a 	ori	a1,a1,0xd70a
     738:	0c000000 	jal	0 <EnPoField_Init>
     73c:	afa40018 	sw	a0,24(sp)
     740:	3c01bf80 	lui	at,0xbf80
     744:	8fa60018 	lw	a2,24(sp)
     748:	44812000 	mtc1	at,$f4
     74c:	8fa4001c 	lw	a0,28(sp)
     750:	3c010000 	lui	at,0x0
     754:	e4c4006c 	swc1	$f4,108(a2)
     758:	c4260000 	lwc1	$f6,0(at)
     75c:	3c014170 	lui	at,0x4170
     760:	44815000 	mtc1	at,$f10
     764:	c4c80028 	lwc1	$f8,40(a2)
     768:	24188000 	li	t8,-32768
     76c:	2419003c 	li	t9,60
     770:	460a4401 	sub.s	$f16,$f8,$f10
     774:	24070008 	li	a3,8
     778:	a4d800b4 	sh	t8,180(a2)
     77c:	a4d90196 	sh	t9,406(a2)
     780:	e4d00028 	swc1	$f16,40(a2)
     784:	24851c24 	addiu	a1,a0,7204
     788:	0c000000 	jal	0 <EnPoField_Init>
     78c:	e4c600bc 	swc1	$f6,188(a2)
     790:	8fa60018 	lw	a2,24(sp)
     794:	3c080000 	lui	t0,0x0
     798:	25080000 	addiu	t0,t0,0
     79c:	acc80190 	sw	t0,400(a2)
     7a0:	8fbf0014 	lw	ra,20(sp)
     7a4:	27bd0018 	addiu	sp,sp,24
     7a8:	03e00008 	jr	ra
     7ac:	00000000 	nop

000007b0 <func_80AD42B0>:
     7b0:	27bdffd0 	addiu	sp,sp,-48
     7b4:	afb00028 	sw	s0,40(sp)
     7b8:	00808025 	move	s0,a0
     7bc:	afbf002c 	sw	ra,44(sp)
     7c0:	c610002c 	lwc1	$f16,44(s0)
     7c4:	c6080028 	lwc1	$f8,40(s0)
     7c8:	c6040024 	lwc1	$f4,36(s0)
     7cc:	4600848d 	trunc.w.s	$f18,$f16
     7d0:	afa0001c 	sw	zero,28(sp)
     7d4:	afa00018 	sw	zero,24(sp)
     7d8:	4600428d 	trunc.w.s	$f10,$f8
     7dc:	44079000 	mfc1	a3,$f18
     7e0:	afa00014 	sw	zero,20(sp)
     7e4:	4600218d 	trunc.w.s	$f6,$f4
     7e8:	44065000 	mfc1	a2,$f10
     7ec:	00073c00 	sll	a3,a3,0x10
     7f0:	00073c03 	sra	a3,a3,0x10
     7f4:	44053000 	mfc1	a1,$f6
     7f8:	00063400 	sll	a2,a2,0x10
     7fc:	00063403 	sra	a2,a2,0x10
     800:	00052c00 	sll	a1,a1,0x10
     804:	00052c03 	sra	a1,a1,0x10
     808:	afa00010 	sw	zero,16(sp)
     80c:	0c000000 	jal	0 <EnPoField_Init>
     810:	24840234 	addiu	a0,a0,564
     814:	44800000 	mtc1	zero,$f0
     818:	c6040028 	lwc1	$f4,40(s0)
     81c:	a60000b6 	sh	zero,182(s0)
     820:	a2000217 	sb	zero,535(s0)
     824:	a60000b4 	sh	zero,180(s0)
     828:	02002025 	move	a0,s0
     82c:	240528e0 	li	a1,10464
     830:	e60000bc 	swc1	$f0,188(s0)
     834:	e600006c 	swc1	$f0,108(s0)
     838:	e6000060 	swc1	$f0,96(s0)
     83c:	e604000c 	swc1	$f4,12(s0)
     840:	e6000050 	swc1	$f0,80(s0)
     844:	0c000000 	jal	0 <EnPoField_Init>
     848:	e6000054 	swc1	$f0,84(s0)
     84c:	8619001c 	lh	t9,28(s0)
     850:	24010001 	li	at,1
     854:	17210003 	bne	t9,at,864 <func_80AD42B0+0xb4>
     858:	00000000 	nop
     85c:	0c000000 	jal	0 <EnPoField_Init>
     860:	24044807 	li	a0,18439
     864:	3c080000 	lui	t0,0x0
     868:	25080000 	addiu	t0,t0,0
     86c:	ae080190 	sw	t0,400(s0)
     870:	8fbf002c 	lw	ra,44(sp)
     874:	8fb00028 	lw	s0,40(sp)
     878:	27bd0030 	addiu	sp,sp,48
     87c:	03e00008 	jr	ra
     880:	00000000 	nop

00000884 <func_80AD4384>:
     884:	27bdffe8 	addiu	sp,sp,-24
     888:	afbf0014 	sw	ra,20(sp)
     88c:	c4840028 	lwc1	$f4,40(a0)
     890:	3c05c120 	lui	a1,0xc120
     894:	e484000c 	swc1	$f4,12(a0)
     898:	0c000000 	jal	0 <EnPoField_Init>
     89c:	afa40018 	sw	a0,24(sp)
     8a0:	8fa40018 	lw	a0,24(sp)
     8a4:	3c0141a0 	lui	at,0x41a0
     8a8:	44818000 	mtc1	at,$f16
     8ac:	c4860024 	lwc1	$f6,36(a0)
     8b0:	c48a0028 	lwc1	$f10,40(a0)
     8b4:	8c980004 	lw	t8,4(a0)
     8b8:	4600320d 	trunc.w.s	$f8,$f6
     8bc:	c486002c 	lwc1	$f6,44(a0)
     8c0:	240e000d 	li	t6,13
     8c4:	46105481 	sub.s	$f18,$f10,$f16
     8c8:	44194000 	mfc1	t9,$f8
     8cc:	240f001e 	li	t7,30
     8d0:	4600320d 	trunc.w.s	$f8,$f6
     8d4:	3c080000 	lui	t0,0x0
     8d8:	a48e0284 	sh	t6,644(a0)
     8dc:	4600910d 	trunc.w.s	$f4,$f18
     8e0:	440b4000 	mfc1	t3,$f8
     8e4:	a48f0286 	sh	t7,646(a0)
     8e8:	a499028a 	sh	t9,650(a0)
     8ec:	44092000 	mfc1	t1,$f4
     8f0:	240c0009 	li	t4,9
     8f4:	240d5005 	li	t5,20485
     8f8:	240e0190 	li	t6,400
     8fc:	240f0020 	li	t7,32
     900:	25080000 	addiu	t0,t0,0
     904:	37190001 	ori	t9,t8,0x1
     908:	a4800288 	sh	zero,648(a0)
     90c:	a08c0256 	sb	t4,598(a0)
     910:	a48d010e 	sh	t5,270(a0)
     914:	a48e0196 	sh	t6,406(a0)
     918:	a08f0194 	sb	t7,404(a0)
     91c:	ac990004 	sw	t9,4(a0)
     920:	ac880190 	sw	t0,400(a0)
     924:	a48b028e 	sh	t3,654(a0)
     928:	a489028c 	sh	t1,652(a0)
     92c:	8fbf0014 	lw	ra,20(sp)
     930:	27bd0018 	addiu	sp,sp,24
     934:	03e00008 	jr	ra
     938:	00000000 	nop

0000093c <func_80AD443C>:
     93c:	3c0e0000 	lui	t6,0x0
     940:	25ce0000 	addiu	t6,t6,0
     944:	03e00008 	jr	ra
     948:	ac8e0190 	sw	t6,400(a0)

0000094c <func_80AD444C>:
     94c:	3c014170 	lui	at,0x4170
     950:	44813000 	mtc1	at,$f6
     954:	c4840028 	lwc1	$f4,40(a0)
     958:	3c0e0000 	lui	t6,0x0
     95c:	25ce0000 	addiu	t6,t6,0
     960:	46062201 	sub.s	$f8,$f4,$f6
     964:	ac8e0190 	sw	t6,400(a0)
     968:	03e00008 	jr	ra
     96c:	e488000c 	swc1	$f8,12(a0)

00000970 <func_80AD4470>:
     970:	27bdffe0 	addiu	sp,sp,-32
     974:	afbf001c 	sw	ra,28(sp)
     978:	afb00018 	sw	s0,24(sp)
     97c:	90820194 	lbu	v0,404(a0)
     980:	00808025 	move	s0,a0
     984:	8ca31c44 	lw	v1,7236(a1)
     988:	14400004 	bnez	v0,99c <func_80AD4470+0x2c>
     98c:	3c01c6fa 	lui	at,0xc6fa
     990:	240e0020 	li	t6,32
     994:	a08e0194 	sb	t6,404(a0)
     998:	31c200ff 	andi	v0,t6,0xff
     99c:	10400002 	beqz	v0,9a8 <func_80AD4470+0x38>
     9a0:	244fffff 	addiu	t7,v0,-1
     9a4:	a20f0194 	sb	t7,404(s0)
     9a8:	c6000080 	lwc1	$f0,128(s0)
     9ac:	44812000 	mtc1	at,$f4
     9b0:	3c014150 	lui	at,0x4150
     9b4:	46002032 	c.eq.s	$f4,$f0
     9b8:	00000000 	nop
     9bc:	45020006 	bc1fl	9d8 <func_80AD4470+0x68>
     9c0:	c4620028 	lwc1	$f2,40(v1)
     9c4:	0c000000 	jal	0 <EnPoField_Init>
     9c8:	02002025 	move	a0,s0
     9cc:	1000001d 	b	a44 <func_80AD4470+0xd4>
     9d0:	8fbf001c 	lw	ra,28(sp)
     9d4:	c4620028 	lwc1	$f2,40(v1)
     9d8:	44813000 	mtc1	at,$f6
     9dc:	4602003c 	c.lt.s	$f0,$f2
     9e0:	00000000 	nop
     9e4:	45020004 	bc1fl	9f8 <func_80AD4470+0x88>
     9e8:	46000306 	mov.s	$f12,$f0
     9ec:	10000002 	b	9f8 <func_80AD4470+0x88>
     9f0:	46001306 	mov.s	$f12,$f2
     9f4:	46000306 	mov.s	$f12,$f0
     9f8:	46066200 	add.s	$f8,$f12,$f6
     9fc:	3c063e4c 	lui	a2,0x3e4c
     a00:	34c6cccd 	ori	a2,a2,0xcccd
     a04:	2604000c 	addiu	a0,s0,12
     a08:	44054000 	mfc1	a1,$f8
     a0c:	0c000000 	jal	0 <EnPoField_Init>
     a10:	3c0740a0 	lui	a3,0x40a0
     a14:	92040194 	lbu	a0,404(s0)
     a18:	000422c0 	sll	a0,a0,0xb
     a1c:	00042400 	sll	a0,a0,0x10
     a20:	0c000000 	jal	0 <EnPoField_Init>
     a24:	00042403 	sra	a0,a0,0x10
     a28:	3c014150 	lui	at,0x4150
     a2c:	44815000 	mtc1	at,$f10
     a30:	c612000c 	lwc1	$f18,12(s0)
     a34:	460a0402 	mul.s	$f16,$f0,$f10
     a38:	46128100 	add.s	$f4,$f16,$f18
     a3c:	e6040028 	swc1	$f4,40(s0)
     a40:	8fbf001c 	lw	ra,28(sp)
     a44:	8fb00018 	lw	s0,24(sp)
     a48:	27bd0020 	addiu	sp,sp,32
     a4c:	03e00008 	jr	ra
     a50:	00000000 	nop

00000a54 <func_80AD4554>:
     a54:	8ca21c44 	lw	v0,7236(a1)
     a58:	3c014140 	lui	at,0x4140
     a5c:	8c4e067c 	lw	t6,1660(v0)
     a60:	000e7a00 	sll	t7,t6,0x8
     a64:	05e30009 	bgezl	t7,a8c <func_80AD4554+0x38>
     a68:	44816000 	mtc1	at,$f12
     a6c:	8c430440 	lw	v1,1088(v0)
     a70:	50600006 	beqzl	v1,a8c <func_80AD4554+0x38>
     a74:	44816000 	mtc1	at,$f12
     a78:	3c014140 	lui	at,0x4140
     a7c:	44816000 	mtc1	at,$f12
     a80:	10000004 	b	a94 <func_80AD4554+0x40>
     a84:	c4600068 	lwc1	$f0,104(v1)
     a88:	44816000 	mtc1	at,$f12
     a8c:	00000000 	nop
     a90:	46006006 	mov.s	$f0,$f12
     a94:	3c014396 	lui	at,0x4396
     a98:	44812000 	mtc1	at,$f4
     a9c:	c4820090 	lwc1	$f2,144(a0)
     aa0:	3c0143c8 	lui	at,0x43c8
     aa4:	4604103c 	c.lt.s	$f2,$f4
     aa8:	00000000 	nop
     aac:	4502000a 	bc1fl	ad8 <func_80AD4554+0x84>
     ab0:	44819000 	mtc1	at,$f18
     ab4:	3c013fc0 	lui	at,0x3fc0
     ab8:	44813000 	mtc1	at,$f6
     abc:	3c014000 	lui	at,0x4000
     ac0:	44815000 	mtc1	at,$f10
     ac4:	46060202 	mul.s	$f8,$f0,$f6
     ac8:	460a4400 	add.s	$f16,$f8,$f10
     acc:	1000001b 	b	b3c <func_80AD4554+0xe8>
     ad0:	e4900068 	swc1	$f16,104(a0)
     ad4:	44819000 	mtc1	at,$f18
     ad8:	3c0143fa 	lui	at,0x43fa
     adc:	4612103c 	c.lt.s	$f2,$f18
     ae0:	00000000 	nop
     ae4:	4502000a 	bc1fl	b10 <func_80AD4554+0xbc>
     ae8:	44818000 	mtc1	at,$f16
     aec:	3c013fa0 	lui	at,0x3fa0
     af0:	44812000 	mtc1	at,$f4
     af4:	3c014000 	lui	at,0x4000
     af8:	44814000 	mtc1	at,$f8
     afc:	46040182 	mul.s	$f6,$f0,$f4
     b00:	46083280 	add.s	$f10,$f6,$f8
     b04:	1000000d 	b	b3c <func_80AD4554+0xe8>
     b08:	e48a0068 	swc1	$f10,104(a0)
     b0c:	44818000 	mtc1	at,$f16
     b10:	3c014000 	lui	at,0x4000
     b14:	4610103c 	c.lt.s	$f2,$f16
     b18:	00000000 	nop
     b1c:	45020007 	bc1fl	b3c <func_80AD4554+0xe8>
     b20:	e48c0068 	swc1	$f12,104(a0)
     b24:	44819000 	mtc1	at,$f18
     b28:	00000000 	nop
     b2c:	46120100 	add.s	$f4,$f0,$f18
     b30:	10000002 	b	b3c <func_80AD4554+0xe8>
     b34:	e4840068 	swc1	$f4,104(a0)
     b38:	e48c0068 	swc1	$f12,104(a0)
     b3c:	c4800068 	lwc1	$f0,104(a0)
     b40:	460c003c 	c.lt.s	$f0,$f12
     b44:	00000000 	nop
     b48:	45020004 	bc1fl	b5c <func_80AD4554+0x108>
     b4c:	e4800068 	swc1	$f0,104(a0)
     b50:	03e00008 	jr	ra
     b54:	e48c0068 	swc1	$f12,104(a0)
     b58:	e4800068 	swc1	$f0,104(a0)
     b5c:	03e00008 	jr	ra
     b60:	00000000 	nop

00000b64 <func_80AD4664>:
     b64:	27bdff68 	addiu	sp,sp,-152
     b68:	afbf0074 	sw	ra,116(sp)
     b6c:	afbe0070 	sw	s8,112(sp)
     b70:	afb7006c 	sw	s7,108(sp)
     b74:	afb60068 	sw	s6,104(sp)
     b78:	afb50064 	sw	s5,100(sp)
     b7c:	afb40060 	sw	s4,96(sp)
     b80:	afb3005c 	sw	s3,92(sp)
     b84:	afb20058 	sw	s2,88(sp)
     b88:	afb10054 	sw	s1,84(sp)
     b8c:	afb00050 	sw	s0,80(sp)
     b90:	f7be0048 	sdc1	$f30,72(sp)
     b94:	f7bc0040 	sdc1	$f28,64(sp)
     b98:	f7ba0038 	sdc1	$f26,56(sp)
     b9c:	f7b80030 	sdc1	$f24,48(sp)
     ba0:	f7b60028 	sdc1	$f22,40(sp)
     ba4:	f7b40020 	sdc1	$f20,32(sp)
     ba8:	84820196 	lh	v0,406(a0)
     bac:	00808025 	move	s0,a0
     bb0:	00a0b825 	move	s7,a1
     bb4:	10400004 	beqz	v0,bc8 <func_80AD4664+0x64>
     bb8:	8cb11c44 	lw	s1,7236(a1)
     bbc:	244effff 	addiu	t6,v0,-1
     bc0:	a48e0196 	sh	t6,406(a0)
     bc4:	84820196 	lh	v0,406(a0)
     bc8:	1440006e 	bnez	v0,d84 <func_80AD4664+0x220>
     bcc:	3c020000 	lui	v0,0x0
     bd0:	8c420000 	lw	v0,0(v0)
     bd4:	3c160000 	lui	s6,0x0
     bd8:	26d60000 	addiu	s6,s6,0
     bdc:	18400069 	blez	v0,d84 <func_80AD4664+0x220>
     be0:	0000a825 	move	s5,zero
     be4:	3c010000 	lui	at,0x0
     be8:	c43e0000 	lwc1	$f30,0(at)
     bec:	3c01c6fa 	lui	at,0xc6fa
     bf0:	4481e000 	mtc1	at,$f28
     bf4:	3c01447a 	lui	at,0x447a
     bf8:	4481d000 	mtc1	at,$f26
     bfc:	3c014396 	lui	at,0x4396
     c00:	4481c000 	mtc1	at,$f24
     c04:	3c014316 	lui	at,0x4316
     c08:	4481b000 	mtc1	at,$f22
     c0c:	3c1e0080 	lui	s8,0x80
     c10:	86cf0000 	lh	t7,0(s6)
     c14:	c6280024 	lwc1	$f8,36(s1)
     c18:	448f2000 	mtc1	t7,$f4
     c1c:	00000000 	nop
     c20:	468021a0 	cvt.s.w	$f6,$f4
     c24:	46083001 	sub.s	$f0,$f6,$f8
     c28:	46000005 	abs.s	$f0,$f0
     c2c:	4616003c 	c.lt.s	$f0,$f22
     c30:	00000000 	nop
     c34:	45020050 	bc1fl	d78 <func_80AD4664+0x214>
     c38:	26b50001 	addiu	s5,s5,1
     c3c:	86d80004 	lh	t8,4(s6)
     c40:	c632002c 	lwc1	$f18,44(s1)
     c44:	3c050000 	lui	a1,0x0
     c48:	44985000 	mtc1	t8,$f10
     c4c:	00b52821 	addu	a1,a1,s5
     c50:	02e02025 	move	a0,s7
     c54:	46805420 	cvt.s.w	$f16,$f10
     c58:	46128001 	sub.s	$f0,$f16,$f18
     c5c:	46000005 	abs.s	$f0,$f0
     c60:	4616003c 	c.lt.s	$f0,$f22
     c64:	00000000 	nop
     c68:	45020043 	bc1fl	d78 <func_80AD4664+0x214>
     c6c:	26b50001 	addiu	s5,s5,1
     c70:	0c000000 	jal	0 <EnPoField_Init>
     c74:	90a50000 	lbu	a1,0(a1)
     c78:	1040000a 	beqz	v0,ca4 <func_80AD4664+0x140>
     c7c:	26f207c0 	addiu	s2,s7,1984
     c80:	8e39067c 	lw	t9,1660(s1)
     c84:	26130078 	addiu	s3,s0,120
     c88:	26140024 	addiu	s4,s0,36
     c8c:	033e4024 	and	t0,t9,s8
     c90:	5500003d 	bnezl	t0,d88 <func_80AD4664+0x224>
     c94:	8fbf0074 	lw	ra,116(sp)
     c98:	a600001c 	sh	zero,28(s0)
     c9c:	10000014 	b	cf0 <func_80AD4664+0x18c>
     ca0:	4600c506 	mov.s	$f20,$f24
     ca4:	8e29067c 	lw	t1,1660(s1)
     ca8:	26f207c0 	addiu	s2,s7,1984
     cac:	26130078 	addiu	s3,s0,120
     cb0:	013e5024 	and	t2,t1,s8
     cb4:	15400006 	bnez	t2,cd0 <func_80AD4664+0x16c>
     cb8:	26140024 	addiu	s4,s0,36
     cbc:	0c000000 	jal	0 <EnPoField_Init>
     cc0:	00000000 	nop
     cc4:	461e003c 	c.lt.s	$f0,$f30
     cc8:	00000000 	nop
     ccc:	45000006 	bc1f	ce8 <func_80AD4664+0x184>
     cd0:	3c0143f0 	lui	at,0x43f0
     cd4:	240b0001 	li	t3,1
     cd8:	4481a000 	mtc1	at,$f20
     cdc:	a60b001c 	sh	t3,28(s0)
     ce0:	10000003 	b	cf0 <func_80AD4664+0x18c>
     ce4:	a2150195 	sb	s5,405(s0)
     ce8:	a600001c 	sh	zero,28(s0)
     cec:	4600c506 	mov.s	$f20,$f24
     cf0:	0c000000 	jal	0 <EnPoField_Init>
     cf4:	862400b6 	lh	a0,182(s1)
     cf8:	46140102 	mul.s	$f4,$f0,$f20
     cfc:	c6260024 	lwc1	$f6,36(s1)
     d00:	46062200 	add.s	$f8,$f4,$f6
     d04:	e6080024 	swc1	$f8,36(s0)
     d08:	0c000000 	jal	0 <EnPoField_Init>
     d0c:	862400b6 	lh	a0,182(s1)
     d10:	46140282 	mul.s	$f10,$f0,$f20
     d14:	c630002c 	lwc1	$f16,44(s1)
     d18:	02402025 	move	a0,s2
     d1c:	02602825 	move	a1,s3
     d20:	27a60088 	addiu	a2,sp,136
     d24:	02003825 	move	a3,s0
     d28:	46105480 	add.s	$f18,$f10,$f16
     d2c:	e612002c 	swc1	$f18,44(s0)
     d30:	c6240028 	lwc1	$f4,40(s1)
     d34:	461a2180 	add.s	$f6,$f4,$f26
     d38:	e6060028 	swc1	$f6,40(s0)
     d3c:	0c000000 	jal	0 <EnPoField_Init>
     d40:	afb40010 	sw	s4,16(sp)
     d44:	461c0032 	c.eq.s	$f0,$f28
     d48:	e6000028 	swc1	$f0,40(s0)
     d4c:	02002025 	move	a0,s0
     d50:	4503000d 	bc1tl	d88 <func_80AD4664+0x224>
     d54:	8fbf0074 	lw	ra,116(sp)
     d58:	0c000000 	jal	0 <EnPoField_Init>
     d5c:	02202825 	move	a1,s1
     d60:	a60200b6 	sh	v0,182(s0)
     d64:	0c000000 	jal	0 <EnPoField_Init>
     d68:	02002025 	move	a0,s0
     d6c:	3c020000 	lui	v0,0x0
     d70:	8c420000 	lw	v0,0(v0)
     d74:	26b50001 	addiu	s5,s5,1
     d78:	02a2082a 	slt	at,s5,v0
     d7c:	1420ffa4 	bnez	at,c10 <func_80AD4664+0xac>
     d80:	26d60006 	addiu	s6,s6,6
     d84:	8fbf0074 	lw	ra,116(sp)
     d88:	d7b40020 	ldc1	$f20,32(sp)
     d8c:	d7b60028 	ldc1	$f22,40(sp)
     d90:	d7b80030 	ldc1	$f24,48(sp)
     d94:	d7ba0038 	ldc1	$f26,56(sp)
     d98:	d7bc0040 	ldc1	$f28,64(sp)
     d9c:	d7be0048 	ldc1	$f30,72(sp)
     da0:	8fb00050 	lw	s0,80(sp)
     da4:	8fb10054 	lw	s1,84(sp)
     da8:	8fb20058 	lw	s2,88(sp)
     dac:	8fb3005c 	lw	s3,92(sp)
     db0:	8fb40060 	lw	s4,96(sp)
     db4:	8fb50064 	lw	s5,100(sp)
     db8:	8fb60068 	lw	s6,104(sp)
     dbc:	8fb7006c 	lw	s7,108(sp)
     dc0:	8fbe0070 	lw	s8,112(sp)
     dc4:	03e00008 	jr	ra
     dc8:	27bd0098 	addiu	sp,sp,152

00000dcc <func_80AD48CC>:
     dcc:	27bdffe0 	addiu	sp,sp,-32
     dd0:	afb00018 	sw	s0,24(sp)
     dd4:	00808025 	move	s0,a0
     dd8:	afbf001c 	sw	ra,28(sp)
     ddc:	afa50024 	sw	a1,36(sp)
     de0:	0c000000 	jal	0 <EnPoField_Init>
     de4:	2484014c 	addiu	a0,a0,332
     de8:	10400013 	beqz	v0,e38 <func_80AD48CC+0x6c>
     dec:	3c014120 	lui	at,0x4120
     df0:	240e00ff 	li	t6,255
     df4:	a20e0217 	sb	t6,535(s0)
     df8:	02002025 	move	a0,s0
     dfc:	0c000000 	jal	0 <EnPoField_Init>
     e00:	8e05021c 	lw	a1,540(s0)
     e04:	860f001c 	lh	t7,28(s0)
     e08:	24010001 	li	at,1
     e0c:	02002025 	move	a0,s0
     e10:	15e10005 	bne	t7,at,e28 <func_80AD48CC+0x5c>
     e14:	00000000 	nop
     e18:	0c000000 	jal	0 <EnPoField_Init>
     e1c:	02002025 	move	a0,s0
     e20:	10000040 	b	f24 <func_80AD48CC+0x158>
     e24:	8609001c 	lh	t1,28(s0)
     e28:	0c000000 	jal	0 <EnPoField_Init>
     e2c:	8fa50024 	lw	a1,36(sp)
     e30:	1000003c 	b	f24 <func_80AD48CC+0x158>
     e34:	8609001c 	lh	t1,28(s0)
     e38:	44811000 	mtc1	at,$f2
     e3c:	c6000164 	lwc1	$f0,356(s0)
     e40:	3c010000 	lui	at,0x0
     e44:	4600103c 	c.lt.s	$f2,$f0
     e48:	00000000 	nop
     e4c:	4502002c 	bc1fl	f00 <func_80AD48CC+0x134>
     e50:	c604021c 	lwc1	$f4,540(s0)
     e54:	46020101 	sub.s	$f4,$f0,$f2
     e58:	3c010000 	lui	at,0x0
     e5c:	c4260000 	lwc1	$f6,0(at)
     e60:	3c01437f 	lui	at,0x437f
     e64:	44815000 	mtc1	at,$f10
     e68:	46062202 	mul.s	$f8,$f4,$f6
     e6c:	24190001 	li	t9,1
     e70:	3c014f00 	lui	at,0x4f00
     e74:	460a4402 	mul.s	$f16,$f8,$f10
     e78:	4458f800 	cfc1	t8,$31
     e7c:	44d9f800 	ctc1	t9,$31
     e80:	00000000 	nop
     e84:	460084a4 	cvt.w.s	$f18,$f16
     e88:	4459f800 	cfc1	t9,$31
     e8c:	00000000 	nop
     e90:	33390078 	andi	t9,t9,0x78
     e94:	53200013 	beqzl	t9,ee4 <func_80AD48CC+0x118>
     e98:	44199000 	mfc1	t9,$f18
     e9c:	44819000 	mtc1	at,$f18
     ea0:	24190001 	li	t9,1
     ea4:	46128481 	sub.s	$f18,$f16,$f18
     ea8:	44d9f800 	ctc1	t9,$31
     eac:	00000000 	nop
     eb0:	460094a4 	cvt.w.s	$f18,$f18
     eb4:	4459f800 	cfc1	t9,$31
     eb8:	00000000 	nop
     ebc:	33390078 	andi	t9,t9,0x78
     ec0:	17200005 	bnez	t9,ed8 <func_80AD48CC+0x10c>
     ec4:	00000000 	nop
     ec8:	44199000 	mfc1	t9,$f18
     ecc:	3c018000 	lui	at,0x8000
     ed0:	10000007 	b	ef0 <func_80AD48CC+0x124>
     ed4:	0321c825 	or	t9,t9,at
     ed8:	10000005 	b	ef0 <func_80AD48CC+0x124>
     edc:	2419ffff 	li	t9,-1
     ee0:	44199000 	mfc1	t9,$f18
     ee4:	00000000 	nop
     ee8:	0720fffb 	bltz	t9,ed8 <func_80AD48CC+0x10c>
     eec:	00000000 	nop
     ef0:	44d8f800 	ctc1	t8,$31
     ef4:	1000000a 	b	f20 <func_80AD48CC+0x154>
     ef8:	a2190217 	sb	t9,535(s0)
     efc:	c604021c 	lwc1	$f4,540(s0)
     f00:	c4260000 	lwc1	$f6,0(at)
     f04:	c60a0050 	lwc1	$f10,80(s0)
     f08:	46062202 	mul.s	$f8,$f4,$f6
     f0c:	46085400 	add.s	$f16,$f10,$f8
     f10:	e6100050 	swc1	$f16,80(s0)
     f14:	c6000050 	lwc1	$f0,80(s0)
     f18:	e6000054 	swc1	$f0,84(s0)
     f1c:	e6000058 	swc1	$f0,88(s0)
     f20:	8609001c 	lh	t1,28(s0)
     f24:	92080217 	lbu	t0,535(s0)
     f28:	8602008a 	lh	v0,138(s0)
     f2c:	24010001 	li	at,1
     f30:	a20800c8 	sb	t0,200(s0)
     f34:	15210007 	bne	t1,at,f54 <func_80AD48CC+0x188>
     f38:	a60200b6 	sh	v0,182(s0)
     f3c:	34018000 	li	at,0x8000
     f40:	00415021 	addu	t2,v0,at
     f44:	a60a0032 	sh	t2,50(s0)
     f48:	8fa50024 	lw	a1,36(sp)
     f4c:	0c000000 	jal	0 <EnPoField_Init>
     f50:	02002025 	move	a0,s0
     f54:	8fbf001c 	lw	ra,28(sp)
     f58:	8fb00018 	lw	s0,24(sp)
     f5c:	27bd0020 	addiu	sp,sp,32
     f60:	03e00008 	jr	ra
     f64:	00000000 	nop

00000f68 <func_80AD4A68>:
     f68:	27bdffd0 	addiu	sp,sp,-48
     f6c:	afbf0024 	sw	ra,36(sp)
     f70:	afb00020 	sw	s0,32(sp)
     f74:	afa50034 	sw	a1,52(sp)
     f78:	8caf1c44 	lw	t7,7236(a1)
     f7c:	24190010 	li	t9,16
     f80:	00808025 	move	s0,a0
     f84:	afaf002c 	sw	t7,44(sp)
     f88:	90980194 	lbu	t8,404(a0)
     f8c:	2484014c 	addiu	a0,a0,332
     f90:	03381823 	subu	v1,t9,t8
     f94:	0c000000 	jal	0 <EnPoField_Init>
     f98:	afa30028 	sw	v1,40(sp)
     f9c:	86020196 	lh	v0,406(s0)
     fa0:	8fa30028 	lw	v1,40(sp)
     fa4:	10400002 	beqz	v0,fb0 <func_80AD4A68+0x48>
     fa8:	2448ffff 	addiu	t0,v0,-1
     fac:	a6080196 	sh	t0,406(s0)
     fb0:	04620004 	bltzl	v1,fc4 <func_80AD4A68+0x5c>
     fb4:	00031023 	negu	v0,v1
     fb8:	10000002 	b	fc4 <func_80AD4A68+0x5c>
     fbc:	00601025 	move	v0,v1
     fc0:	00031023 	negu	v0,v1
     fc4:	28410010 	slti	at,v0,16
     fc8:	50200013 	beqzl	at,1018 <func_80AD4A68+0xb0>
     fcc:	2604021c 	addiu	a0,s0,540
     fd0:	92040194 	lbu	a0,404(s0)
     fd4:	000422c0 	sll	a0,a0,0xb
     fd8:	00042400 	sll	a0,a0,0x10
     fdc:	0c000000 	jal	0 <EnPoField_Init>
     fe0:	00042403 	sra	a0,a0,0x10
     fe4:	86090032 	lh	t1,50(s0)
     fe8:	3c014400 	lui	at,0x4400
     fec:	44814000 	mtc1	at,$f8
     ff0:	44892000 	mtc1	t1,$f4
     ff4:	46000005 	abs.s	$f0,$f0
     ff8:	46004282 	mul.s	$f10,$f8,$f0
     ffc:	468021a0 	cvt.s.w	$f6,$f4
    1000:	460a3400 	add.s	$f16,$f6,$f10
    1004:	4600848d 	trunc.w.s	$f18,$f16
    1008:	440b9000 	mfc1	t3,$f18
    100c:	00000000 	nop
    1010:	a60b0032 	sh	t3,50(s0)
    1014:	2604021c 	addiu	a0,s0,540
    1018:	3c054334 	lui	a1,0x4334
    101c:	3c063f00 	lui	a2,0x3f00
    1020:	0c000000 	jal	0 <EnPoField_Init>
    1024:	3c074120 	lui	a3,0x4120
    1028:	8fac002c 	lw	t4,44(sp)
    102c:	3c063e4c 	lui	a2,0x3e4c
    1030:	34c6cccd 	ori	a2,a2,0xcccd
    1034:	26040008 	addiu	a0,s0,8
    1038:	3c0740c0 	lui	a3,0x40c0
    103c:	0c000000 	jal	0 <EnPoField_Init>
    1040:	8d850024 	lw	a1,36(t4)
    1044:	8fad002c 	lw	t5,44(sp)
    1048:	3c063e4c 	lui	a2,0x3e4c
    104c:	34c6cccd 	ori	a2,a2,0xcccd
    1050:	26040010 	addiu	a0,s0,16
    1054:	3c0740c0 	lui	a3,0x40c0
    1058:	0c000000 	jal	0 <EnPoField_Init>
    105c:	8da5002c 	lw	a1,44(t5)
    1060:	86050032 	lh	a1,50(s0)
    1064:	240e0200 	li	t6,512
    1068:	afae0010 	sw	t6,16(sp)
    106c:	260400b6 	addiu	a0,s0,182
    1070:	24060001 	li	a2,1
    1074:	0c000000 	jal	0 <EnPoField_Init>
    1078:	24070800 	li	a3,2048
    107c:	8faf002c 	lw	t7,44(sp)
    1080:	c6040008 	lwc1	$f4,8(s0)
    1084:	3c0142c8 	lui	at,0x42c8
    1088:	c5e00024 	lwc1	$f0,36(t7)
    108c:	44816000 	mtc1	at,$f12
    1090:	3c01c2c8 	lui	at,0xc2c8
    1094:	46002081 	sub.s	$f2,$f4,$f0
    1098:	4602603c 	c.lt.s	$f12,$f2
    109c:	00000000 	nop
    10a0:	45020007 	bc1fl	10c0 <func_80AD4A68+0x158>
    10a4:	44817000 	mtc1	at,$f14
    10a8:	460c0200 	add.s	$f8,$f0,$f12
    10ac:	3c01c2c8 	lui	at,0xc2c8
    10b0:	44817000 	mtc1	at,$f14
    10b4:	10000009 	b	10dc <func_80AD4A68+0x174>
    10b8:	e6080008 	swc1	$f8,8(s0)
    10bc:	44817000 	mtc1	at,$f14
    10c0:	00000000 	nop
    10c4:	460e103c 	c.lt.s	$f2,$f14
    10c8:	00000000 	nop
    10cc:	45020004 	bc1fl	10e0 <func_80AD4A68+0x178>
    10d0:	8fb9002c 	lw	t9,44(sp)
    10d4:	460e0180 	add.s	$f6,$f0,$f14
    10d8:	e6060008 	swc1	$f6,8(s0)
    10dc:	8fb9002c 	lw	t9,44(sp)
    10e0:	c60a0010 	lwc1	$f10,16(s0)
    10e4:	c720002c 	lwc1	$f0,44(t9)
    10e8:	46005081 	sub.s	$f2,$f10,$f0
    10ec:	4602603c 	c.lt.s	$f12,$f2
    10f0:	00000000 	nop
    10f4:	45020005 	bc1fl	110c <func_80AD4A68+0x1a4>
    10f8:	460e103c 	c.lt.s	$f2,$f14
    10fc:	460c0400 	add.s	$f16,$f0,$f12
    1100:	10000007 	b	1120 <func_80AD4A68+0x1b8>
    1104:	e6100010 	swc1	$f16,16(s0)
    1108:	460e103c 	c.lt.s	$f2,$f14
    110c:	00000000 	nop
    1110:	45000003 	bc1f	1120 <func_80AD4A68+0x1b8>
    1114:	00000000 	nop
    1118:	460e0480 	add.s	$f18,$f0,$f14
    111c:	e6120010 	swc1	$f18,16(s0)
    1120:	0c000000 	jal	0 <EnPoField_Init>
    1124:	86040032 	lh	a0,50(s0)
    1128:	c608021c 	lwc1	$f8,540(s0)
    112c:	c6040008 	lwc1	$f4,8(s0)
    1130:	86040032 	lh	a0,50(s0)
    1134:	46080182 	mul.s	$f6,$f0,$f8
    1138:	46062281 	sub.s	$f10,$f4,$f6
    113c:	0c000000 	jal	0 <EnPoField_Init>
    1140:	e60a0024 	swc1	$f10,36(s0)
    1144:	c612021c 	lwc1	$f18,540(s0)
    1148:	c6100010 	lwc1	$f16,16(s0)
    114c:	86180196 	lh	t8,406(s0)
    1150:	46120202 	mul.s	$f8,$f0,$f18
    1154:	46088101 	sub.s	$f4,$f16,$f8
    1158:	17000005 	bnez	t8,1170 <func_80AD4A68+0x208>
    115c:	e604002c 	swc1	$f4,44(s0)
    1160:	0c000000 	jal	0 <EnPoField_Init>
    1164:	02002025 	move	a0,s0
    1168:	10000004 	b	117c <func_80AD4A68+0x214>
    116c:	02002025 	move	a0,s0
    1170:	0c000000 	jal	0 <EnPoField_Init>
    1174:	02002025 	move	a0,s0
    1178:	02002025 	move	a0,s0
    117c:	0c000000 	jal	0 <EnPoField_Init>
    1180:	8fa50034 	lw	a1,52(sp)
    1184:	02002025 	move	a0,s0
    1188:	0c000000 	jal	0 <EnPoField_Init>
    118c:	24053071 	li	a1,12401
    1190:	8fbf0024 	lw	ra,36(sp)
    1194:	8fb00020 	lw	s0,32(sp)
    1198:	27bd0030 	addiu	sp,sp,48
    119c:	03e00008 	jr	ra
    11a0:	00000000 	nop

000011a4 <func_80AD4CA4>:
    11a4:	27bdffd8 	addiu	sp,sp,-40
    11a8:	afb00018 	sw	s0,24(sp)
    11ac:	00808025 	move	s0,a0
    11b0:	afbf001c 	sw	ra,28(sp)
    11b4:	afa5002c 	sw	a1,44(sp)
    11b8:	0c000000 	jal	0 <EnPoField_Init>
    11bc:	2484014c 	addiu	a0,a0,332
    11c0:	86030196 	lh	v1,406(s0)
    11c4:	02002025 	move	a0,s0
    11c8:	3c050000 	lui	a1,0x0
    11cc:	10600002 	beqz	v1,11d8 <func_80AD4CA4+0x34>
    11d0:	246effff 	addiu	t6,v1,-1
    11d4:	a60e0196 	sh	t6,406(s0)
    11d8:	0c000000 	jal	0 <EnPoField_Init>
    11dc:	24a50000 	addiu	a1,a1,0
    11e0:	3c010000 	lui	at,0x0
    11e4:	c4240000 	lwc1	$f4,0(at)
    11e8:	02002025 	move	a0,s0
    11ec:	3c050000 	lui	a1,0x0
    11f0:	4600203c 	c.lt.s	$f4,$f0
    11f4:	00004025 	move	t0,zero
    11f8:	45020015 	bc1fl	1250 <func_80AD4CA4+0xac>
    11fc:	8603008a 	lh	v1,138(s0)
    1200:	0c000000 	jal	0 <EnPoField_Init>
    1204:	24a50000 	addiu	a1,a1,0
    1208:	8603008a 	lh	v1,138(s0)
    120c:	24018000 	li	at,-32768
    1210:	00627823 	subu	t7,v1,v0
    1214:	01e1c021 	addu	t8,t7,at
    1218:	0018cc00 	sll	t9,t8,0x10
    121c:	00194c03 	sra	t1,t9,0x10
    1220:	44893000 	mtc1	t1,$f6
    1224:	3c010000 	lui	at,0x0
    1228:	c42a0000 	lwc1	$f10,0(at)
    122c:	46803220 	cvt.s.w	$f8,$f6
    1230:	460a4402 	mul.s	$f16,$f8,$f10
    1234:	4600848d 	trunc.w.s	$f18,$f16
    1238:	44089000 	mfc1	t0,$f18
    123c:	00000000 	nop
    1240:	00084400 	sll	t0,t0,0x10
    1244:	10000002 	b	1250 <func_80AD4CA4+0xac>
    1248:	00084403 	sra	t0,t0,0x10
    124c:	8603008a 	lh	v1,138(s0)
    1250:	00682823 	subu	a1,v1,t0
    1254:	00052c00 	sll	a1,a1,0x10
    1258:	00052c03 	sra	a1,a1,0x10
    125c:	260400b6 	addiu	a0,s0,182
    1260:	24060006 	li	a2,6
    1264:	0c000000 	jal	0 <EnPoField_Init>
    1268:	24070400 	li	a3,1024
    126c:	02002025 	move	a0,s0
    1270:	0c000000 	jal	0 <EnPoField_Init>
    1274:	8fa5002c 	lw	a1,44(sp)
    1278:	86040196 	lh	a0,406(s0)
    127c:	860b00b6 	lh	t3,182(s0)
    1280:	34018000 	li	at,0x8000
    1284:	000422c0 	sll	a0,a0,0xb
    1288:	00042400 	sll	a0,a0,0x10
    128c:	01616021 	addu	t4,t3,at
    1290:	a60c0032 	sh	t4,50(s0)
    1294:	0c000000 	jal	0 <EnPoField_Init>
    1298:	00042403 	sra	a0,a0,0x10
    129c:	3c014040 	lui	at,0x4040
    12a0:	44812000 	mtc1	at,$f4
    12a4:	00000000 	nop
    12a8:	46040182 	mul.s	$f6,$f0,$f4
    12ac:	e7a60024 	swc1	$f6,36(sp)
    12b0:	0c000000 	jal	0 <EnPoField_Init>
    12b4:	860400b6 	lh	a0,182(s0)
    12b8:	c7aa0024 	lwc1	$f10,36(sp)
    12bc:	c6080024 	lwc1	$f8,36(s0)
    12c0:	860400b6 	lh	a0,182(s0)
    12c4:	46005402 	mul.s	$f16,$f10,$f0
    12c8:	46104481 	sub.s	$f18,$f8,$f16
    12cc:	0c000000 	jal	0 <EnPoField_Init>
    12d0:	e6120024 	swc1	$f18,36(s0)
    12d4:	c7a60024 	lwc1	$f6,36(sp)
    12d8:	c604002c 	lwc1	$f4,44(s0)
    12dc:	860d0196 	lh	t5,406(s0)
    12e0:	46003282 	mul.s	$f10,$f6,$f0
    12e4:	3c010000 	lui	at,0x0
    12e8:	460a2200 	add.s	$f8,$f4,$f10
    12ec:	11a00008 	beqz	t5,1310 <func_80AD4CA4+0x16c>
    12f0:	e608002c 	swc1	$f8,44(s0)
    12f4:	c4300000 	lwc1	$f16,0(at)
    12f8:	c6120090 	lwc1	$f18,144(s0)
    12fc:	02002025 	move	a0,s0
    1300:	4612803c 	c.lt.s	$f16,$f18
    1304:	00000000 	nop
    1308:	45000005 	bc1f	1320 <func_80AD4CA4+0x17c>
    130c:	00000000 	nop
    1310:	0c000000 	jal	0 <EnPoField_Init>
    1314:	02002025 	move	a0,s0
    1318:	10000004 	b	132c <func_80AD4CA4+0x188>
    131c:	02002025 	move	a0,s0
    1320:	0c000000 	jal	0 <EnPoField_Init>
    1324:	8fa5002c 	lw	a1,44(sp)
    1328:	02002025 	move	a0,s0
    132c:	0c000000 	jal	0 <EnPoField_Init>
    1330:	24053072 	li	a1,12402
    1334:	8fbf001c 	lw	ra,28(sp)
    1338:	8fb00018 	lw	s0,24(sp)
    133c:	27bd0028 	addiu	sp,sp,40
    1340:	03e00008 	jr	ra
    1344:	00000000 	nop

00001348 <func_80AD4E48>:
    1348:	27bdffe8 	addiu	sp,sp,-24
    134c:	afbf0014 	sw	ra,20(sp)
    1350:	afa5001c 	sw	a1,28(sp)
    1354:	00803825 	move	a3,a0
    1358:	afa70018 	sw	a3,24(sp)
    135c:	24840068 	addiu	a0,a0,104
    1360:	24050000 	li	a1,0
    1364:	0c000000 	jal	0 <EnPoField_Init>
    1368:	3c063f00 	lui	a2,0x3f00
    136c:	8fa70018 	lw	a3,24(sp)
    1370:	0c000000 	jal	0 <EnPoField_Init>
    1374:	24e4014c 	addiu	a0,a3,332
    1378:	10400013 	beqz	v0,13c8 <func_80AD4E48+0x80>
    137c:	8fa70018 	lw	a3,24(sp)
    1380:	90ee00af 	lbu	t6,175(a3)
    1384:	55c00006 	bnezl	t6,13a0 <func_80AD4E48+0x58>
    1388:	84ef001c 	lh	t7,28(a3)
    138c:	0c000000 	jal	0 <EnPoField_Init>
    1390:	00e02025 	move	a0,a3
    1394:	1000000d 	b	13cc <func_80AD4E48+0x84>
    1398:	8fbf0014 	lw	ra,20(sp)
    139c:	84ef001c 	lh	t7,28(a3)
    13a0:	24010001 	li	at,1
    13a4:	00e02025 	move	a0,a3
    13a8:	15e10005 	bne	t7,at,13c0 <func_80AD4E48+0x78>
    13ac:	00000000 	nop
    13b0:	0c000000 	jal	0 <EnPoField_Init>
    13b4:	00e02025 	move	a0,a3
    13b8:	10000004 	b	13cc <func_80AD4E48+0x84>
    13bc:	8fbf0014 	lw	ra,20(sp)
    13c0:	0c000000 	jal	0 <EnPoField_Init>
    13c4:	8fa5001c 	lw	a1,28(sp)
    13c8:	8fbf0014 	lw	ra,20(sp)
    13cc:	27bd0018 	addiu	sp,sp,24
    13d0:	03e00008 	jr	ra
    13d4:	00000000 	nop

000013d8 <func_80AD4ED8>:
    13d8:	27bdff88 	addiu	sp,sp,-120
    13dc:	afbf004c 	sw	ra,76(sp)
    13e0:	afb10048 	sw	s1,72(sp)
    13e4:	afb00044 	sw	s0,68(sp)
    13e8:	848e0196 	lh	t6,406(a0)
    13ec:	00808025 	move	s0,a0
    13f0:	00a08825 	move	s1,a1
    13f4:	25cf0001 	addiu	t7,t6,1
    13f8:	a48f0196 	sh	t7,406(a0)
    13fc:	84820196 	lh	v0,406(a0)
    1400:	2403001c 	li	v1,28
    1404:	28410008 	slti	at,v0,8
    1408:	102000d9 	beqz	at,1770 <func_80AD4ED8+0x398>
    140c:	28410005 	slti	at,v0,5
    1410:	10200037 	beqz	at,14f0 <func_80AD4ED8+0x118>
    1414:	244cfffb 	addiu	t4,v0,-5
    1418:	00022300 	sll	a0,v0,0xc
    141c:	2484c000 	addiu	a0,a0,-16384
    1420:	00042400 	sll	a0,a0,0x10
    1424:	0c000000 	jal	0 <EnPoField_Init>
    1428:	00042403 	sra	a0,a0,0x10
    142c:	3c014220 	lui	at,0x4220
    1430:	44813000 	mtc1	at,$f6
    1434:	3c0141b8 	lui	at,0x41b8
    1438:	44815000 	mtc1	at,$f10
    143c:	c6040028 	lwc1	$f4,40(s0)
    1440:	460a0402 	mul.s	$f16,$f0,$f10
    1444:	46062200 	add.s	$f8,$f4,$f6
    1448:	46088480 	add.s	$f18,$f16,$f8
    144c:	e7b20070 	swc1	$f18,112(sp)
    1450:	86040196 	lh	a0,406(s0)
    1454:	00042300 	sll	a0,a0,0xc
    1458:	2484c000 	addiu	a0,a0,-16384
    145c:	00042400 	sll	a0,a0,0x10
    1460:	0c000000 	jal	0 <EnPoField_Init>
    1464:	00042403 	sra	a0,a0,0x10
    1468:	3c0141b8 	lui	at,0x41b8
    146c:	44812000 	mtc1	at,$f4
    1470:	00000000 	nop
    1474:	46040182 	mul.s	$f6,$f0,$f4
    1478:	e7a60068 	swc1	$f6,104(sp)
    147c:	863807a0 	lh	t8,1952(s1)
    1480:	0018c880 	sll	t9,t8,0x2
    1484:	02394021 	addu	t0,s1,t9
    1488:	0c000000 	jal	0 <EnPoField_Init>
    148c:	8d040790 	lw	a0,1936(t0)
    1490:	24444800 	addiu	a0,v0,18432
    1494:	00042400 	sll	a0,a0,0x10
    1498:	0c000000 	jal	0 <EnPoField_Init>
    149c:	00042403 	sra	a0,a0,0x10
    14a0:	c7aa0068 	lwc1	$f10,104(sp)
    14a4:	c6080024 	lwc1	$f8,36(s0)
    14a8:	460a0402 	mul.s	$f16,$f0,$f10
    14ac:	46088480 	add.s	$f18,$f16,$f8
    14b0:	e7b2006c 	swc1	$f18,108(sp)
    14b4:	862907a0 	lh	t1,1952(s1)
    14b8:	00095080 	sll	t2,t1,0x2
    14bc:	022a5821 	addu	t3,s1,t2
    14c0:	0c000000 	jal	0 <EnPoField_Init>
    14c4:	8d640790 	lw	a0,1936(t3)
    14c8:	24444800 	addiu	a0,v0,18432
    14cc:	00042400 	sll	a0,a0,0x10
    14d0:	0c000000 	jal	0 <EnPoField_Init>
    14d4:	00042403 	sra	a0,a0,0x10
    14d8:	c7a40068 	lwc1	$f4,104(sp)
    14dc:	c60a002c 	lwc1	$f10,44(s0)
    14e0:	46040182 	mul.s	$f6,$f0,$f4
    14e4:	460a3400 	add.s	$f16,$f6,$f10
    14e8:	1000002a 	b	1594 <func_80AD4ED8+0x1bc>
    14ec:	e7b00074 	swc1	$f16,116(sp)
    14f0:	448c5000 	mtc1	t4,$f10
    14f4:	3c014220 	lui	at,0x4220
    14f8:	44819000 	mtc1	at,$f18
    14fc:	46805420 	cvt.s.w	$f16,$f10
    1500:	c6080028 	lwc1	$f8,40(s0)
    1504:	3c014170 	lui	at,0x4170
    1508:	44813000 	mtc1	at,$f6
    150c:	46124100 	add.s	$f4,$f8,$f18
    1510:	46103202 	mul.s	$f8,$f6,$f16
    1514:	46082480 	add.s	$f18,$f4,$f8
    1518:	e7b20070 	swc1	$f18,112(sp)
    151c:	862d07a0 	lh	t5,1952(s1)
    1520:	000d7080 	sll	t6,t5,0x2
    1524:	022e7821 	addu	t7,s1,t6
    1528:	0c000000 	jal	0 <EnPoField_Init>
    152c:	8de40790 	lw	a0,1936(t7)
    1530:	24444800 	addiu	a0,v0,18432
    1534:	00042400 	sll	a0,a0,0x10
    1538:	0c000000 	jal	0 <EnPoField_Init>
    153c:	00042403 	sra	a0,a0,0x10
    1540:	3c0141b8 	lui	at,0x41b8
    1544:	44815000 	mtc1	at,$f10
    1548:	c6100024 	lwc1	$f16,36(s0)
    154c:	460a0182 	mul.s	$f6,$f0,$f10
    1550:	46103100 	add.s	$f4,$f6,$f16
    1554:	e7a4006c 	swc1	$f4,108(sp)
    1558:	863807a0 	lh	t8,1952(s1)
    155c:	0018c880 	sll	t9,t8,0x2
    1560:	02394021 	addu	t0,s1,t9
    1564:	0c000000 	jal	0 <EnPoField_Init>
    1568:	8d040790 	lw	a0,1936(t0)
    156c:	24444800 	addiu	a0,v0,18432
    1570:	00042400 	sll	a0,a0,0x10
    1574:	0c000000 	jal	0 <EnPoField_Init>
    1578:	00042403 	sra	a0,a0,0x10
    157c:	3c0141b8 	lui	at,0x41b8
    1580:	44814000 	mtc1	at,$f8
    1584:	c60a002c 	lwc1	$f10,44(s0)
    1588:	46080482 	mul.s	$f18,$f0,$f8
    158c:	460a9180 	add.s	$f6,$f18,$f10
    1590:	e7a60074 	swc1	$f6,116(sp)
    1594:	86090196 	lh	t1,406(s0)
    1598:	3c060000 	lui	a2,0x0
    159c:	3c070000 	lui	a3,0x0
    15a0:	00095080 	sll	t2,t1,0x2
    15a4:	01495021 	addu	t2,t2,t1
    15a8:	000a5040 	sll	t2,t2,0x1
    15ac:	254b0050 	addiu	t3,t2,80
    15b0:	24090001 	li	t1,1
    15b4:	240c00ff 	li	t4,255
    15b8:	240d00ff 	li	t5,255
    15bc:	240e00ff 	li	t6,255
    15c0:	240f00ff 	li	t7,255
    15c4:	241800ff 	li	t8,255
    15c8:	24190001 	li	t9,1
    15cc:	24080009 	li	t0,9
    15d0:	afa80038 	sw	t0,56(sp)
    15d4:	afb90034 	sw	t9,52(sp)
    15d8:	afb80030 	sw	t8,48(sp)
    15dc:	afaf0024 	sw	t7,36(sp)
    15e0:	afae0020 	sw	t6,32(sp)
    15e4:	afad001c 	sw	t5,28(sp)
    15e8:	afac0018 	sw	t4,24(sp)
    15ec:	afa9003c 	sw	t1,60(sp)
    15f0:	afab0010 	sw	t3,16(sp)
    15f4:	24e70000 	addiu	a3,a3,0
    15f8:	24c60000 	addiu	a2,a2,0
    15fc:	afa0002c 	sw	zero,44(sp)
    1600:	afa00028 	sw	zero,40(sp)
    1604:	afa00014 	sw	zero,20(sp)
    1608:	02202025 	move	a0,s1
    160c:	0c000000 	jal	0 <EnPoField_Init>
    1610:	27a5006c 	addiu	a1,sp,108
    1614:	c6000024 	lwc1	$f0,36(s0)
    1618:	c7a4006c 	lwc1	$f4,108(sp)
    161c:	c7aa0074 	lwc1	$f10,116(sp)
    1620:	46000400 	add.s	$f16,$f0,$f0
    1624:	3c060000 	lui	a2,0x0
    1628:	3c070000 	lui	a3,0x0
    162c:	240d00ff 	li	t5,255
    1630:	46048201 	sub.s	$f8,$f16,$f4
    1634:	240e00ff 	li	t6,255
    1638:	240f00ff 	li	t7,255
    163c:	241800ff 	li	t8,255
    1640:	e7a8006c 	swc1	$f8,108(sp)
    1644:	c602002c 	lwc1	$f2,44(s0)
    1648:	241900ff 	li	t9,255
    164c:	24080001 	li	t0,1
    1650:	46021480 	add.s	$f18,$f2,$f2
    1654:	24090009 	li	t1,9
    1658:	24e70000 	addiu	a3,a3,0
    165c:	24c60000 	addiu	a2,a2,0
    1660:	460a9181 	sub.s	$f6,$f18,$f10
    1664:	02202025 	move	a0,s1
    1668:	27a5006c 	addiu	a1,sp,108
    166c:	e7a60074 	swc1	$f6,116(sp)
    1670:	860a0196 	lh	t2,406(s0)
    1674:	afa90038 	sw	t1,56(sp)
    1678:	afa80034 	sw	t0,52(sp)
    167c:	000a5880 	sll	t3,t2,0x2
    1680:	016a5821 	addu	t3,t3,t2
    1684:	000b5840 	sll	t3,t3,0x1
    1688:	256c0050 	addiu	t4,t3,80
    168c:	240a0001 	li	t2,1
    1690:	afaa003c 	sw	t2,60(sp)
    1694:	afac0010 	sw	t4,16(sp)
    1698:	afb90030 	sw	t9,48(sp)
    169c:	afa0002c 	sw	zero,44(sp)
    16a0:	afa00028 	sw	zero,40(sp)
    16a4:	afb80024 	sw	t8,36(sp)
    16a8:	afaf0020 	sw	t7,32(sp)
    16ac:	afae001c 	sw	t6,28(sp)
    16b0:	afad0018 	sw	t5,24(sp)
    16b4:	0c000000 	jal	0 <EnPoField_Init>
    16b8:	afa00014 	sw	zero,20(sp)
    16bc:	c6100024 	lwc1	$f16,36(s0)
    16c0:	3c060000 	lui	a2,0x0
    16c4:	3c070000 	lui	a3,0x0
    16c8:	e7b0006c 	swc1	$f16,108(sp)
    16cc:	c604002c 	lwc1	$f4,44(s0)
    16d0:	240e00ff 	li	t6,255
    16d4:	240f00ff 	li	t7,255
    16d8:	e7a40074 	swc1	$f4,116(sp)
    16dc:	860b0196 	lh	t3,406(s0)
    16e0:	241800ff 	li	t8,255
    16e4:	241900ff 	li	t9,255
    16e8:	000b6080 	sll	t4,t3,0x2
    16ec:	018b6021 	addu	t4,t4,t3
    16f0:	000c6040 	sll	t4,t4,0x1
    16f4:	258d0050 	addiu	t5,t4,80
    16f8:	240b0001 	li	t3,1
    16fc:	240800ff 	li	t0,255
    1700:	24090001 	li	t1,1
    1704:	240a0009 	li	t2,9
    1708:	afaa0038 	sw	t2,56(sp)
    170c:	afa90034 	sw	t1,52(sp)
    1710:	afa80030 	sw	t0,48(sp)
    1714:	afab003c 	sw	t3,60(sp)
    1718:	afad0010 	sw	t5,16(sp)
    171c:	afb90024 	sw	t9,36(sp)
    1720:	afb80020 	sw	t8,32(sp)
    1724:	afa0002c 	sw	zero,44(sp)
    1728:	afa00028 	sw	zero,40(sp)
    172c:	afaf001c 	sw	t7,28(sp)
    1730:	afae0018 	sw	t6,24(sp)
    1734:	afa00014 	sw	zero,20(sp)
    1738:	24e70000 	addiu	a3,a3,0
    173c:	24c60000 	addiu	a2,a2,0
    1740:	02202025 	move	a0,s1
    1744:	0c000000 	jal	0 <EnPoField_Init>
    1748:	27a5006c 	addiu	a1,sp,108
    174c:	86020196 	lh	v0,406(s0)
    1750:	24010001 	li	at,1
    1754:	02002025 	move	a0,s0
    1758:	5441001c 	bnel	v0,at,17cc <func_80AD4ED8+0x3f4>
    175c:	24010012 	li	at,18
    1760:	0c000000 	jal	0 <EnPoField_Init>
    1764:	24053878 	li	a1,14456
    1768:	10000017 	b	17c8 <func_80AD4ED8+0x3f0>
    176c:	86020196 	lh	v0,406(s0)
    1770:	14620006 	bne	v1,v0,178c <func_80AD4ED8+0x3b4>
    1774:	28410013 	slti	at,v0,19
    1778:	02002025 	move	a0,s0
    177c:	0c000000 	jal	0 <EnPoField_Init>
    1780:	02202825 	move	a1,s1
    1784:	10000010 	b	17c8 <func_80AD4ED8+0x3f0>
    1788:	86020196 	lh	v0,406(s0)
    178c:	1420000e 	bnez	at,17c8 <func_80AD4ED8+0x3f0>
    1790:	00626023 	subu	t4,v1,v0
    1794:	448c4000 	mtc1	t4,$f8
    1798:	3c010000 	lui	at,0x0
    179c:	c42a0000 	lwc1	$f10,0(at)
    17a0:	468044a0 	cvt.s.w	$f18,$f8
    17a4:	3c0140a0 	lui	at,0x40a0
    17a8:	44818000 	mtc1	at,$f16
    17ac:	c6060028 	lwc1	$f6,40(s0)
    17b0:	460a9002 	mul.s	$f0,$f18,$f10
    17b4:	46103100 	add.s	$f4,$f6,$f16
    17b8:	e6040028 	swc1	$f4,40(s0)
    17bc:	e6000058 	swc1	$f0,88(s0)
    17c0:	e6000054 	swc1	$f0,84(s0)
    17c4:	e6000050 	swc1	$f0,80(s0)
    17c8:	24010012 	li	at,18
    17cc:	14410003 	bne	v0,at,17dc <func_80AD4ED8+0x404>
    17d0:	02002025 	move	a0,s0
    17d4:	0c000000 	jal	0 <EnPoField_Init>
    17d8:	24053877 	li	a1,14455
    17dc:	8fbf004c 	lw	ra,76(sp)
    17e0:	8fb00044 	lw	s0,68(sp)
    17e4:	8fb10048 	lw	s1,72(sp)
    17e8:	03e00008 	jr	ra
    17ec:	27bd0078 	addiu	sp,sp,120

000017f0 <func_80AD52F0>:
    17f0:	27bdffe8 	addiu	sp,sp,-24
    17f4:	afbf0014 	sw	ra,20(sp)
    17f8:	00803025 	move	a2,a0
    17fc:	afa5001c 	sw	a1,28(sp)
    1800:	afa60018 	sw	a2,24(sp)
    1804:	0c000000 	jal	0 <EnPoField_Init>
    1808:	2484014c 	addiu	a0,a0,332
    180c:	8fa60018 	lw	a2,24(sp)
    1810:	84c20196 	lh	v0,406(a2)
    1814:	00c02025 	move	a0,a2
    1818:	10400003 	beqz	v0,1828 <func_80AD52F0+0x38>
    181c:	244effff 	addiu	t6,v0,-1
    1820:	a4ce0196 	sh	t6,406(a2)
    1824:	84c20196 	lh	v0,406(a2)
    1828:	44822000 	mtc1	v0,$f4
    182c:	3c01417f 	lui	at,0x417f
    1830:	44814000 	mtc1	at,$f8
    1834:	468021a0 	cvt.s.w	$f6,$f4
    1838:	24080001 	li	t0,1
    183c:	84cf00b6 	lh	t7,182(a2)
    1840:	3c014f00 	lui	at,0x4f00
    1844:	25f81000 	addiu	t8,t7,4096
    1848:	46083282 	mul.s	$f10,$f6,$f8
    184c:	a4d800b6 	sh	t8,182(a2)
    1850:	4459f800 	cfc1	t9,$31
    1854:	44c8f800 	ctc1	t0,$31
    1858:	00000000 	nop
    185c:	46005424 	cvt.w.s	$f16,$f10
    1860:	4448f800 	cfc1	t0,$31
    1864:	00000000 	nop
    1868:	31080078 	andi	t0,t0,0x78
    186c:	51000013 	beqzl	t0,18bc <func_80AD52F0+0xcc>
    1870:	44088000 	mfc1	t0,$f16
    1874:	44818000 	mtc1	at,$f16
    1878:	24080001 	li	t0,1
    187c:	46105401 	sub.s	$f16,$f10,$f16
    1880:	44c8f800 	ctc1	t0,$31
    1884:	00000000 	nop
    1888:	46008424 	cvt.w.s	$f16,$f16
    188c:	4448f800 	cfc1	t0,$31
    1890:	00000000 	nop
    1894:	31080078 	andi	t0,t0,0x78
    1898:	15000005 	bnez	t0,18b0 <func_80AD52F0+0xc0>
    189c:	00000000 	nop
    18a0:	44088000 	mfc1	t0,$f16
    18a4:	3c018000 	lui	at,0x8000
    18a8:	10000007 	b	18c8 <func_80AD52F0+0xd8>
    18ac:	01014025 	or	t0,t0,at
    18b0:	10000005 	b	18c8 <func_80AD52F0+0xd8>
    18b4:	2408ffff 	li	t0,-1
    18b8:	44088000 	mfc1	t0,$f16
    18bc:	00000000 	nop
    18c0:	0500fffb 	bltz	t0,18b0 <func_80AD52F0+0xc0>
    18c4:	00000000 	nop
    18c8:	44d9f800 	ctc1	t9,$31
    18cc:	a0c80217 	sb	t0,535(a2)
    18d0:	14400003 	bnez	v0,18e0 <func_80AD52F0+0xf0>
    18d4:	a0c800c8 	sb	t0,200(a2)
    18d8:	0c000000 	jal	0 <EnPoField_Init>
    18dc:	8fa5001c 	lw	a1,28(sp)
    18e0:	8fbf0014 	lw	ra,20(sp)
    18e4:	27bd0018 	addiu	sp,sp,24
    18e8:	03e00008 	jr	ra
    18ec:	00000000 	nop

000018f0 <func_80AD53F0>:
    18f0:	27bdffc8 	addiu	sp,sp,-56
    18f4:	afbf0034 	sw	ra,52(sp)
    18f8:	afb00030 	sw	s0,48(sp)
    18fc:	afa5003c 	sw	a1,60(sp)
    1900:	84820196 	lh	v0,406(a0)
    1904:	00808025 	move	s0,a0
    1908:	26050024 	addiu	a1,s0,36
    190c:	10400002 	beqz	v0,1918 <func_80AD53F0+0x28>
    1910:	244effff 	addiu	t6,v0,-1
    1914:	a48e0196 	sh	t6,406(a0)
    1918:	960f0088 	lhu	t7,136(s0)
    191c:	8fa4003c 	lw	a0,60(sp)
    1920:	3c0640c0 	lui	a2,0x40c0
    1924:	31f80001 	andi	t8,t7,0x1
    1928:	13000013 	beqz	t8,1978 <func_80AD53F0+0x88>
    192c:	00003825 	move	a3,zero
    1930:	3c0c0600 	lui	t4,0x600
    1934:	258c4ba0 	addiu	t4,t4,19360
    1938:	24190001 	li	t9,1
    193c:	24080001 	li	t0,1
    1940:	2409000f 	li	t1,15
    1944:	240a006d 	li	t2,109
    1948:	240b000a 	li	t3,10
    194c:	afab0020 	sw	t3,32(sp)
    1950:	afaa001c 	sw	t2,28(sp)
    1954:	afa90018 	sw	t1,24(sp)
    1958:	afa80014 	sw	t0,20(sp)
    195c:	afb90010 	sw	t9,16(sp)
    1960:	0c000000 	jal	0 <EnPoField_Init>
    1964:	afac0024 	sw	t4,36(sp)
    1968:	0c000000 	jal	0 <EnPoField_Init>
    196c:	02002025 	move	a0,s0
    1970:	10000007 	b	1990 <func_80AD53F0+0xa0>
    1974:	00000000 	nop
    1978:	860d0196 	lh	t5,406(s0)
    197c:	02002025 	move	a0,s0
    1980:	15a00003 	bnez	t5,1990 <func_80AD53F0+0xa0>
    1984:	00000000 	nop
    1988:	0c000000 	jal	0 <EnPoField_Init>
    198c:	8fa5003c 	lw	a1,60(sp)
    1990:	0c000000 	jal	0 <EnPoField_Init>
    1994:	02002025 	move	a0,s0
    1998:	3c014120 	lui	at,0x4120
    199c:	44810000 	mtc1	at,$f0
    19a0:	240e0004 	li	t6,4
    19a4:	afae0014 	sw	t6,20(sp)
    19a8:	44060000 	mfc1	a2,$f0
    19ac:	44070000 	mfc1	a3,$f0
    19b0:	8fa4003c 	lw	a0,60(sp)
    19b4:	02002825 	move	a1,s0
    19b8:	0c000000 	jal	0 <EnPoField_Init>
    19bc:	e7a00010 	swc1	$f0,16(sp)
    19c0:	8fbf0034 	lw	ra,52(sp)
    19c4:	8fb00030 	lw	s0,48(sp)
    19c8:	27bd0038 	addiu	sp,sp,56
    19cc:	03e00008 	jr	ra
    19d0:	00000000 	nop

000019d4 <func_80AD54D4>:
    19d4:	27bdffd0 	addiu	sp,sp,-48
    19d8:	afbf002c 	sw	ra,44(sp)
    19dc:	afb00028 	sw	s0,40(sp)
    19e0:	848e001c 	lh	t6,28(a0)
    19e4:	90990217 	lbu	t9,535(a0)
    19e8:	3c180000 	lui	t8,0x0
    19ec:	27180000 	addiu	t8,t8,0
    19f0:	000e7900 	sll	t7,t6,0x4
    19f4:	03251021 	addu	v0,t9,a1
    19f8:	00808025 	move	s0,a0
    19fc:	04410003 	bgez	v0,1a0c <func_80AD54D4+0x38>
    1a00:	01f81821 	addu	v1,t7,t8
    1a04:	10000007 	b	1a24 <func_80AD54D4+0x50>
    1a08:	a0800217 	sb	zero,535(a0)
    1a0c:	28410100 	slti	at,v0,256
    1a10:	14200003 	bnez	at,1a20 <func_80AD54D4+0x4c>
    1a14:	00402025 	move	a0,v0
    1a18:	10000001 	b	1a20 <func_80AD54D4+0x4c>
    1a1c:	240400ff 	li	a0,255
    1a20:	a2040217 	sb	a0,535(s0)
    1a24:	04a3001d 	bgezl	a1,1a9c <func_80AD54D4+0xc8>
    1a28:	92090217 	lbu	t1,535(s0)
    1a2c:	92080217 	lbu	t0,535(s0)
    1a30:	3c010000 	lui	at,0x0
    1a34:	c42e0000 	lwc1	$f14,0(at)
    1a38:	44882000 	mtc1	t0,$f4
    1a3c:	3c014f80 	lui	at,0x4f80
    1a40:	05010004 	bgez	t0,1a54 <func_80AD54D4+0x80>
    1a44:	46802320 	cvt.s.w	$f12,$f4
    1a48:	44813000 	mtc1	at,$f6
    1a4c:	00000000 	nop
    1a50:	46066300 	add.s	$f12,$f12,$f6
    1a54:	3c010000 	lui	at,0x0
    1a58:	c4280000 	lwc1	$f8,0(at)
    1a5c:	3c010000 	lui	at,0x0
    1a60:	c42a0000 	lwc1	$f10,0(at)
    1a64:	46086082 	mul.s	$f2,$f12,$f8
    1a68:	3c010000 	lui	at,0x0
    1a6c:	c4320000 	lwc1	$f18,0(at)
    1a70:	46025402 	mul.s	$f16,$f10,$f2
    1a74:	00000000 	nop
    1a78:	46027102 	mul.s	$f4,$f14,$f2
    1a7c:	46128000 	add.s	$f0,$f16,$f18
    1a80:	46047181 	sub.s	$f6,$f14,$f4
    1a84:	e6000058 	swc1	$f0,88(s0)
    1a88:	e6000050 	swc1	$f0,80(s0)
    1a8c:	460e3200 	add.s	$f8,$f6,$f14
    1a90:	10000017 	b	1af0 <func_80AD54D4+0x11c>
    1a94:	e6080054 	swc1	$f8,84(s0)
    1a98:	92090217 	lbu	t1,535(s0)
    1a9c:	3c013f80 	lui	at,0x3f80
    1aa0:	44811000 	mtc1	at,$f2
    1aa4:	44895000 	mtc1	t1,$f10
    1aa8:	3c014f80 	lui	at,0x4f80
    1aac:	05210004 	bgez	t1,1ac0 <func_80AD54D4+0xec>
    1ab0:	46805320 	cvt.s.w	$f12,$f10
    1ab4:	44818000 	mtc1	at,$f16
    1ab8:	00000000 	nop
    1abc:	46106300 	add.s	$f12,$f12,$f16
    1ac0:	3c010000 	lui	at,0x0
    1ac4:	c4320000 	lwc1	$f18,0(at)
    1ac8:	3c010000 	lui	at,0x0
    1acc:	c604000c 	lwc1	$f4,12(s0)
    1ad0:	46126002 	mul.s	$f0,$f12,$f18
    1ad4:	e6000058 	swc1	$f0,88(s0)
    1ad8:	e6000054 	swc1	$f0,84(s0)
    1adc:	e6000050 	swc1	$f0,80(s0)
    1ae0:	c4260000 	lwc1	$f6,0(at)
    1ae4:	460c3202 	mul.s	$f8,$f6,$f12
    1ae8:	46082280 	add.s	$f10,$f4,$f8
    1aec:	e60a0028 	swc1	$f10,40(s0)
    1af0:	906a0003 	lbu	t2,3(v1)
    1af4:	3c014f80 	lui	at,0x4f80
    1af8:	448a8000 	mtc1	t2,$f16
    1afc:	05410004 	bgez	t2,1b10 <func_80AD54D4+0x13c>
    1b00:	468084a0 	cvt.s.w	$f18,$f16
    1b04:	44813000 	mtc1	at,$f6
    1b08:	00000000 	nop
    1b0c:	46069480 	add.s	$f18,$f18,$f6
    1b10:	46029102 	mul.s	$f4,$f18,$f2
    1b14:	240c0001 	li	t4,1
    1b18:	3c014f00 	lui	at,0x4f00
    1b1c:	444bf800 	cfc1	t3,$31
    1b20:	44ccf800 	ctc1	t4,$31
    1b24:	00000000 	nop
    1b28:	46002224 	cvt.w.s	$f8,$f4
    1b2c:	444cf800 	cfc1	t4,$31
    1b30:	00000000 	nop
    1b34:	318c0078 	andi	t4,t4,0x78
    1b38:	51800013 	beqzl	t4,1b88 <func_80AD54D4+0x1b4>
    1b3c:	440c4000 	mfc1	t4,$f8
    1b40:	44814000 	mtc1	at,$f8
    1b44:	240c0001 	li	t4,1
    1b48:	46082201 	sub.s	$f8,$f4,$f8
    1b4c:	44ccf800 	ctc1	t4,$31
    1b50:	00000000 	nop
    1b54:	46004224 	cvt.w.s	$f8,$f8
    1b58:	444cf800 	cfc1	t4,$31
    1b5c:	00000000 	nop
    1b60:	318c0078 	andi	t4,t4,0x78
    1b64:	15800005 	bnez	t4,1b7c <func_80AD54D4+0x1a8>
    1b68:	00000000 	nop
    1b6c:	440c4000 	mfc1	t4,$f8
    1b70:	3c018000 	lui	at,0x8000
    1b74:	10000007 	b	1b94 <func_80AD54D4+0x1c0>
    1b78:	01816025 	or	t4,t4,at
    1b7c:	10000005 	b	1b94 <func_80AD54D4+0x1c0>
    1b80:	240cffff 	li	t4,-1
    1b84:	440c4000 	mfc1	t4,$f8
    1b88:	00000000 	nop
    1b8c:	0580fffb 	bltz	t4,1b7c <func_80AD54D4+0x1a8>
    1b90:	00000000 	nop
    1b94:	a20c0214 	sb	t4,532(s0)
    1b98:	906d0004 	lbu	t5,4(v1)
    1b9c:	44cbf800 	ctc1	t3,$31
    1ba0:	3c014f80 	lui	at,0x4f80
    1ba4:	448d5000 	mtc1	t5,$f10
    1ba8:	05a10004 	bgez	t5,1bbc <func_80AD54D4+0x1e8>
    1bac:	46805420 	cvt.s.w	$f16,$f10
    1bb0:	44813000 	mtc1	at,$f6
    1bb4:	00000000 	nop
    1bb8:	46068400 	add.s	$f16,$f16,$f6
    1bbc:	46028482 	mul.s	$f18,$f16,$f2
    1bc0:	240f0001 	li	t7,1
    1bc4:	3c014f00 	lui	at,0x4f00
    1bc8:	444ef800 	cfc1	t6,$31
    1bcc:	44cff800 	ctc1	t7,$31
    1bd0:	00000000 	nop
    1bd4:	46009124 	cvt.w.s	$f4,$f18
    1bd8:	444ff800 	cfc1	t7,$31
    1bdc:	00000000 	nop
    1be0:	31ef0078 	andi	t7,t7,0x78
    1be4:	51e00013 	beqzl	t7,1c34 <func_80AD54D4+0x260>
    1be8:	440f2000 	mfc1	t7,$f4
    1bec:	44812000 	mtc1	at,$f4
    1bf0:	240f0001 	li	t7,1
    1bf4:	46049101 	sub.s	$f4,$f18,$f4
    1bf8:	44cff800 	ctc1	t7,$31
    1bfc:	00000000 	nop
    1c00:	46002124 	cvt.w.s	$f4,$f4
    1c04:	444ff800 	cfc1	t7,$31
    1c08:	00000000 	nop
    1c0c:	31ef0078 	andi	t7,t7,0x78
    1c10:	15e00005 	bnez	t7,1c28 <func_80AD54D4+0x254>
    1c14:	00000000 	nop
    1c18:	440f2000 	mfc1	t7,$f4
    1c1c:	3c018000 	lui	at,0x8000
    1c20:	10000007 	b	1c40 <func_80AD54D4+0x26c>
    1c24:	01e17825 	or	t7,t7,at
    1c28:	10000005 	b	1c40 <func_80AD54D4+0x26c>
    1c2c:	240fffff 	li	t7,-1
    1c30:	440f2000 	mfc1	t7,$f4
    1c34:	00000000 	nop
    1c38:	05e0fffb 	bltz	t7,1c28 <func_80AD54D4+0x254>
    1c3c:	00000000 	nop
    1c40:	a20f0215 	sb	t7,533(s0)
    1c44:	90780005 	lbu	t8,5(v1)
    1c48:	44cef800 	ctc1	t6,$31
    1c4c:	3c014f80 	lui	at,0x4f80
    1c50:	44984000 	mtc1	t8,$f8
    1c54:	07010004 	bgez	t8,1c68 <func_80AD54D4+0x294>
    1c58:	468042a0 	cvt.s.w	$f10,$f8
    1c5c:	44813000 	mtc1	at,$f6
    1c60:	00000000 	nop
    1c64:	46065280 	add.s	$f10,$f10,$f6
    1c68:	46025402 	mul.s	$f16,$f10,$f2
    1c6c:	24080001 	li	t0,1
    1c70:	3c014f00 	lui	at,0x4f00
    1c74:	4459f800 	cfc1	t9,$31
    1c78:	44c8f800 	ctc1	t0,$31
    1c7c:	00000000 	nop
    1c80:	460084a4 	cvt.w.s	$f18,$f16
    1c84:	4448f800 	cfc1	t0,$31
    1c88:	00000000 	nop
    1c8c:	31080078 	andi	t0,t0,0x78
    1c90:	51000013 	beqzl	t0,1ce0 <func_80AD54D4+0x30c>
    1c94:	44089000 	mfc1	t0,$f18
    1c98:	44819000 	mtc1	at,$f18
    1c9c:	24080001 	li	t0,1
    1ca0:	46128481 	sub.s	$f18,$f16,$f18
    1ca4:	44c8f800 	ctc1	t0,$31
    1ca8:	00000000 	nop
    1cac:	460094a4 	cvt.w.s	$f18,$f18
    1cb0:	4448f800 	cfc1	t0,$31
    1cb4:	00000000 	nop
    1cb8:	31080078 	andi	t0,t0,0x78
    1cbc:	15000005 	bnez	t0,1cd4 <func_80AD54D4+0x300>
    1cc0:	00000000 	nop
    1cc4:	44089000 	mfc1	t0,$f18
    1cc8:	3c018000 	lui	at,0x8000
    1ccc:	10000007 	b	1cec <func_80AD54D4+0x318>
    1cd0:	01014025 	or	t0,t0,at
    1cd4:	10000005 	b	1cec <func_80AD54D4+0x318>
    1cd8:	2408ffff 	li	t0,-1
    1cdc:	44089000 	mfc1	t0,$f18
    1ce0:	00000000 	nop
    1ce4:	0500fffb 	bltz	t0,1cd4 <func_80AD54D4+0x300>
    1ce8:	00000000 	nop
    1cec:	44d9f800 	ctc1	t9,$31
    1cf0:	c6040024 	lwc1	$f4,36(s0)
    1cf4:	a2080216 	sb	t0,534(s0)
    1cf8:	3c010000 	lui	at,0x0
    1cfc:	4600220d 	trunc.w.s	$f8,$f4
    1d00:	c4240000 	lwc1	$f4,0(at)
    1d04:	c6060028 	lwc1	$f6,40(s0)
    1d08:	c610002c 	lwc1	$f16,44(s0)
    1d0c:	44054000 	mfc1	a1,$f8
    1d10:	46046202 	mul.s	$f8,$f12,$f4
    1d14:	906c0003 	lbu	t4,3(v1)
    1d18:	00052c00 	sll	a1,a1,0x10
    1d1c:	00052c03 	sra	a1,a1,0x10
    1d20:	afac0010 	sw	t4,16(sp)
    1d24:	906d0004 	lbu	t5,4(v1)
    1d28:	4600328d 	trunc.w.s	$f10,$f6
    1d2c:	26040234 	addiu	a0,s0,564
    1d30:	afad0014 	sw	t5,20(sp)
    1d34:	4600848d 	trunc.w.s	$f18,$f16
    1d38:	44065000 	mfc1	a2,$f10
    1d3c:	906e0005 	lbu	t6,5(v1)
    1d40:	4600418d 	trunc.w.s	$f6,$f8
    1d44:	44079000 	mfc1	a3,$f18
    1d48:	00063400 	sll	a2,a2,0x10
    1d4c:	00063403 	sra	a2,a2,0x10
    1d50:	44183000 	mfc1	t8,$f6
    1d54:	00073c00 	sll	a3,a3,0x10
    1d58:	00073c03 	sra	a3,a3,0x10
    1d5c:	afae0018 	sw	t6,24(sp)
    1d60:	0c000000 	jal	0 <EnPoField_Init>
    1d64:	afb8001c 	sw	t8,28(sp)
    1d68:	8fbf002c 	lw	ra,44(sp)
    1d6c:	8fb00028 	lw	s0,40(sp)
    1d70:	27bd0030 	addiu	sp,sp,48
    1d74:	03e00008 	jr	ra
    1d78:	00000000 	nop

00001d7c <func_80AD587C>:
    1d7c:	27bdffe8 	addiu	sp,sp,-24
    1d80:	afbf0014 	sw	ra,20(sp)
    1d84:	afa5001c 	sw	a1,28(sp)
    1d88:	3c014000 	lui	at,0x4000
    1d8c:	44813000 	mtc1	at,$f6
    1d90:	c484000c 	lwc1	$f4,12(a0)
    1d94:	24050014 	li	a1,20
    1d98:	46062200 	add.s	$f8,$f4,$f6
    1d9c:	e488000c 	swc1	$f8,12(a0)
    1da0:	0c000000 	jal	0 <EnPoField_Init>
    1da4:	afa40018 	sw	a0,24(sp)
    1da8:	8fa40018 	lw	a0,24(sp)
    1dac:	240100ff 	li	at,255
    1db0:	908e0217 	lbu	t6,535(a0)
    1db4:	55c10004 	bnel	t6,at,1dc8 <func_80AD587C+0x4c>
    1db8:	8fbf0014 	lw	ra,20(sp)
    1dbc:	0c000000 	jal	0 <EnPoField_Init>
    1dc0:	00000000 	nop
    1dc4:	8fbf0014 	lw	ra,20(sp)
    1dc8:	27bd0018 	addiu	sp,sp,24
    1dcc:	03e00008 	jr	ra
    1dd0:	00000000 	nop

00001dd4 <func_80AD58D4>:
    1dd4:	27bdffd0 	addiu	sp,sp,-48
    1dd8:	afbf002c 	sw	ra,44(sp)
    1ddc:	afb00028 	sw	s0,40(sp)
    1de0:	84820196 	lh	v0,406(a0)
    1de4:	00a03825 	move	a3,a1
    1de8:	00808025 	move	s0,a0
    1dec:	10400003 	beqz	v0,1dfc <func_80AD58D4+0x28>
    1df0:	00e02825 	move	a1,a3
    1df4:	244effff 	addiu	t6,v0,-1
    1df8:	a48e0196 	sh	t6,406(a0)
    1dfc:	02002025 	move	a0,s0
    1e00:	0c000000 	jal	0 <EnPoField_Init>
    1e04:	afa70034 	sw	a3,52(sp)
    1e08:	10400005 	beqz	v0,1e20 <func_80AD58D4+0x4c>
    1e0c:	8fa70034 	lw	a3,52(sp)
    1e10:	0c000000 	jal	0 <EnPoField_Init>
    1e14:	02002025 	move	a0,s0
    1e18:	1000006b 	b	1fc8 <func_80AD58D4+0x1f4>
    1e1c:	8fbf002c 	lw	ra,44(sp)
    1e20:	860f0196 	lh	t7,406(s0)
    1e24:	02002025 	move	a0,s0
    1e28:	55e0000d 	bnezl	t7,1e60 <func_80AD58D4+0x8c>
    1e2c:	92080256 	lbu	t0,598(s0)
    1e30:	0c000000 	jal	0 <EnPoField_Init>
    1e34:	240538ec 	li	a1,14572
    1e38:	8e180004 	lw	t8,4(s0)
    1e3c:	3c01fffe 	lui	at,0xfffe
    1e40:	3421ffff 	ori	at,at,0xffff
    1e44:	0301c824 	and	t9,t8,at
    1e48:	ae190004 	sw	t9,4(s0)
    1e4c:	0c000000 	jal	0 <EnPoField_Init>
    1e50:	02002025 	move	a0,s0
    1e54:	1000005c 	b	1fc8 <func_80AD58D4+0x1f4>
    1e58:	8fbf002c 	lw	ra,44(sp)
    1e5c:	92080256 	lbu	t0,598(s0)
    1e60:	3c01fffe 	lui	at,0xfffe
    1e64:	02002025 	move	a0,s0
    1e68:	31090002 	andi	t1,t0,0x2
    1e6c:	11200009 	beqz	t1,1e94 <func_80AD58D4+0xc0>
    1e70:	3421ffff 	ori	at,at,0xffff
    1e74:	8e0a0004 	lw	t2,4(s0)
    1e78:	3c010001 	lui	at,0x1
    1e7c:	00e02825 	move	a1,a3
    1e80:	01415825 	or	t3,t2,at
    1e84:	0c000000 	jal	0 <EnPoField_Init>
    1e88:	ae0b0004 	sw	t3,4(s0)
    1e8c:	1000000b 	b	1ebc <func_80AD58D4+0xe8>
    1e90:	92040194 	lbu	a0,404(s0)
    1e94:	8e0c0004 	lw	t4,4(s0)
    1e98:	00e02025 	move	a0,a3
    1e9c:	26060244 	addiu	a2,s0,580
    1ea0:	01816824 	and	t5,t4,at
    1ea4:	3c010001 	lui	at,0x1
    1ea8:	34211e60 	ori	at,at,0x1e60
    1eac:	ae0d0004 	sw	t5,4(s0)
    1eb0:	0c000000 	jal	0 <EnPoField_Init>
    1eb4:	00e12821 	addu	a1,a3,at
    1eb8:	92040194 	lbu	a0,404(s0)
    1ebc:	000422c0 	sll	a0,a0,0xb
    1ec0:	00042400 	sll	a0,a0,0x10
    1ec4:	0c000000 	jal	0 <EnPoField_Init>
    1ec8:	00042403 	sra	a0,a0,0x10
    1ecc:	3c0140a0 	lui	at,0x40a0
    1ed0:	44812000 	mtc1	at,$f4
    1ed4:	c608000c 	lwc1	$f8,12(s0)
    1ed8:	92020194 	lbu	v0,404(s0)
    1edc:	46040182 	mul.s	$f6,$f0,$f4
    1ee0:	3c0141a0 	lui	at,0x41a0
    1ee4:	44819000 	mtc1	at,$f18
    1ee8:	240f0020 	li	t7,32
    1eec:	244effff 	addiu	t6,v0,-1
    1ef0:	46083280 	add.s	$f10,$f6,$f8
    1ef4:	10400003 	beqz	v0,1f04 <func_80AD58D4+0x130>
    1ef8:	e60a0028 	swc1	$f10,40(s0)
    1efc:	a20e0194 	sb	t6,404(s0)
    1f00:	31c200ff 	andi	v0,t6,0xff
    1f04:	54400003 	bnezl	v0,1f14 <func_80AD58D4+0x140>
    1f08:	c6100028 	lwc1	$f16,40(s0)
    1f0c:	a20f0194 	sb	t7,404(s0)
    1f10:	c6100028 	lwc1	$f16,40(s0)
    1f14:	02002025 	move	a0,s0
    1f18:	3c05c120 	lui	a1,0xc120
    1f1c:	46128101 	sub.s	$f4,$f16,$f18
    1f20:	4600218d 	trunc.w.s	$f6,$f4
    1f24:	44193000 	mfc1	t9,$f6
    1f28:	0c000000 	jal	0 <EnPoField_Init>
    1f2c:	a619028c 	sh	t9,652(s0)
    1f30:	920b023c 	lbu	t3,572(s0)
    1f34:	c6080024 	lwc1	$f8,36(s0)
    1f38:	c6100028 	lwc1	$f16,40(s0)
    1f3c:	c604002c 	lwc1	$f4,44(s0)
    1f40:	afab0010 	sw	t3,16(sp)
    1f44:	920c023d 	lbu	t4,573(s0)
    1f48:	4600428d 	trunc.w.s	$f10,$f8
    1f4c:	26040234 	addiu	a0,s0,564
    1f50:	afac0014 	sw	t4,20(sp)
    1f54:	920d023e 	lbu	t5,574(s0)
    1f58:	4600848d 	trunc.w.s	$f18,$f16
    1f5c:	44055000 	mfc1	a1,$f10
    1f60:	afad0018 	sw	t5,24(sp)
    1f64:	4600218d 	trunc.w.s	$f6,$f4
    1f68:	920e0217 	lbu	t6,535(s0)
    1f6c:	44069000 	mfc1	a2,$f18
    1f70:	00052c00 	sll	a1,a1,0x10
    1f74:	44073000 	mfc1	a3,$f6
    1f78:	448e4000 	mtc1	t6,$f8
    1f7c:	00063400 	sll	a2,a2,0x10
    1f80:	00073c00 	sll	a3,a3,0x10
    1f84:	00073c03 	sra	a3,a3,0x10
    1f88:	00063403 	sra	a2,a2,0x10
    1f8c:	00052c03 	sra	a1,a1,0x10
    1f90:	05c10005 	bgez	t6,1fa8 <func_80AD58D4+0x1d4>
    1f94:	468042a0 	cvt.s.w	$f10,$f8
    1f98:	3c014f80 	lui	at,0x4f80
    1f9c:	44818000 	mtc1	at,$f16
    1fa0:	00000000 	nop
    1fa4:	46105280 	add.s	$f10,$f10,$f16
    1fa8:	3c010000 	lui	at,0x0
    1fac:	c4320000 	lwc1	$f18,0(at)
    1fb0:	46125102 	mul.s	$f4,$f10,$f18
    1fb4:	4600218d 	trunc.w.s	$f6,$f4
    1fb8:	44183000 	mfc1	t8,$f6
    1fbc:	0c000000 	jal	0 <EnPoField_Init>
    1fc0:	afb8001c 	sw	t8,28(sp)
    1fc4:	8fbf002c 	lw	ra,44(sp)
    1fc8:	8fb00028 	lw	s0,40(sp)
    1fcc:	27bd0030 	addiu	sp,sp,48
    1fd0:	03e00008 	jr	ra
    1fd4:	00000000 	nop

00001fd8 <func_80AD5AD8>:
    1fd8:	27bdffe8 	addiu	sp,sp,-24
    1fdc:	afbf0014 	sw	ra,20(sp)
    1fe0:	afa5001c 	sw	a1,28(sp)
    1fe4:	2405fff3 	li	a1,-13
    1fe8:	0c000000 	jal	0 <EnPoField_Init>
    1fec:	afa40018 	sw	a0,24(sp)
    1ff0:	8fa40018 	lw	a0,24(sp)
    1ff4:	908e0217 	lbu	t6,535(a0)
    1ff8:	55c00004 	bnezl	t6,200c <func_80AD5AD8+0x34>
    1ffc:	8fbf0014 	lw	ra,20(sp)
    2000:	0c000000 	jal	0 <EnPoField_Init>
    2004:	8fa5001c 	lw	a1,28(sp)
    2008:	8fbf0014 	lw	ra,20(sp)
    200c:	27bd0018 	addiu	sp,sp,24
    2010:	03e00008 	jr	ra
    2014:	00000000 	nop

00002018 <func_80AD5B18>:
    2018:	27bdffe0 	addiu	sp,sp,-32
    201c:	afbf001c 	sw	ra,28(sp)
    2020:	afb00018 	sw	s0,24(sp)
    2024:	afa50024 	sw	a1,36(sp)
    2028:	948e010e 	lhu	t6,270(a0)
    202c:	24015005 	li	at,20485
    2030:	00808025 	move	s0,a0
    2034:	11c10005 	beq	t6,at,204c <func_80AD5B18+0x34>
    2038:	240531e8 	li	a1,12776
    203c:	0c000000 	jal	0 <EnPoField_Init>
    2040:	2405fff3 	li	a1,-13
    2044:	10000004 	b	2058 <func_80AD5B18+0x40>
    2048:	8fa40024 	lw	a0,36(sp)
    204c:	0c000000 	jal	0 <EnPoField_Init>
    2050:	02002025 	move	a0,s0
    2054:	8fa40024 	lw	a0,36(sp)
    2058:	0c000000 	jal	0 <EnPoField_Init>
    205c:	248420d8 	addiu	a0,a0,8408
    2060:	24010004 	li	at,4
    2064:	14410038 	bne	v0,at,2148 <func_80AD5B18+0x130>
    2068:	02002025 	move	a0,s0
    206c:	0c000000 	jal	0 <EnPoField_Init>
    2070:	8fa40024 	lw	a0,36(sp)
    2074:	1040003a 	beqz	v0,2160 <func_80AD5B18+0x148>
    2078:	260400e4 	addiu	a0,s0,228
    207c:	0c000000 	jal	0 <EnPoField_Init>
    2080:	240531e8 	li	a1,12776
    2084:	8faf0024 	lw	t7,36(sp)
    2088:	3c180001 	lui	t8,0x1
    208c:	240c5007 	li	t4,20487
    2090:	030fc021 	addu	t8,t8,t7
    2094:	931804bd 	lbu	t8,1213(t8)
    2098:	02002025 	move	a0,s0
    209c:	240538ec 	li	a1,14572
    20a0:	17000022 	bnez	t8,212c <func_80AD5B18+0x114>
    20a4:	00000000 	nop
    20a8:	0c000000 	jal	0 <EnPoField_Init>
    20ac:	00000000 	nop
    20b0:	10400019 	beqz	v0,2118 <func_80AD5B18+0x100>
    20b4:	02002025 	move	a0,s0
    20b8:	02002025 	move	a0,s0
    20bc:	0c000000 	jal	0 <EnPoField_Init>
    20c0:	24053883 	li	a1,14467
    20c4:	8619001c 	lh	t9,28(s0)
    20c8:	8fa40024 	lw	a0,36(sp)
    20cc:	2409508f 	li	t1,20623
    20d0:	17200006 	bnez	t9,20ec <func_80AD5B18+0xd4>
    20d4:	2405001e 	li	a1,30
    20d8:	0c000000 	jal	0 <EnPoField_Init>
    20dc:	24050020 	li	a1,32
    20e0:	24085008 	li	t0,20488
    20e4:	10000013 	b	2134 <func_80AD5B18+0x11c>
    20e8:	a608010e 	sh	t0,270(s0)
    20ec:	a609010e 	sh	t1,270(s0)
    20f0:	0c000000 	jal	0 <EnPoField_Init>
    20f4:	8fa40024 	lw	a0,36(sp)
    20f8:	920a0195 	lbu	t2,405(s0)
    20fc:	3c050000 	lui	a1,0x0
    2100:	8fa40024 	lw	a0,36(sp)
    2104:	00aa2821 	addu	a1,a1,t2
    2108:	0c000000 	jal	0 <EnPoField_Init>
    210c:	90a50000 	lbu	a1,0(a1)
    2110:	10000009 	b	2138 <func_80AD5B18+0x120>
    2114:	8fa40024 	lw	a0,36(sp)
    2118:	0c000000 	jal	0 <EnPoField_Init>
    211c:	240538ec 	li	a1,14572
    2120:	240b5006 	li	t3,20486
    2124:	10000003 	b	2134 <func_80AD5B18+0x11c>
    2128:	a60b010e 	sh	t3,270(s0)
    212c:	0c000000 	jal	0 <EnPoField_Init>
    2130:	a60c010e 	sh	t4,270(s0)
    2134:	8fa40024 	lw	a0,36(sp)
    2138:	0c000000 	jal	0 <EnPoField_Init>
    213c:	9605010e 	lhu	a1,270(s0)
    2140:	10000008 	b	2164 <func_80AD5B18+0x14c>
    2144:	8fbf001c 	lw	ra,28(sp)
    2148:	0c000000 	jal	0 <EnPoField_Init>
    214c:	8fa50024 	lw	a1,36(sp)
    2150:	50400004 	beqzl	v0,2164 <func_80AD5B18+0x14c>
    2154:	8fbf001c 	lw	ra,28(sp)
    2158:	0c000000 	jal	0 <EnPoField_Init>
    215c:	02002025 	move	a0,s0
    2160:	8fbf001c 	lw	ra,28(sp)
    2164:	8fb00018 	lw	s0,24(sp)
    2168:	27bd0020 	addiu	sp,sp,32
    216c:	03e00008 	jr	ra
    2170:	00000000 	nop

00002174 <func_80AD5C74>:
    2174:	27bdffe0 	addiu	sp,sp,-32
    2178:	afbf001c 	sw	ra,28(sp)
    217c:	afb00018 	sw	s0,24(sp)
    2180:	afa50024 	sw	a1,36(sp)
    2184:	90820255 	lbu	v0,597(a0)
    2188:	00808025 	move	s0,a0
    218c:	304e0002 	andi	t6,v0,0x2
    2190:	51c0001a 	beqzl	t6,21fc <func_80AD5C74+0x88>
    2194:	8fbf001c 	lw	ra,28(sp)
    2198:	909800b1 	lbu	t8,177(a0)
    219c:	304ffffd 	andi	t7,v0,0xfffd
    21a0:	a08f0255 	sb	t7,597(a0)
    21a4:	17000004 	bnez	t8,21b8 <func_80AD5C74+0x44>
    21a8:	00000000 	nop
    21ac:	909900b0 	lbu	t9,176(a0)
    21b0:	53200012 	beqzl	t9,21fc <func_80AD5C74+0x88>
    21b4:	8fbf001c 	lw	ra,28(sp)
    21b8:	0c000000 	jal	0 <EnPoField_Init>
    21bc:	02002025 	move	a0,s0
    21c0:	14400009 	bnez	v0,21e8 <func_80AD5C74+0x74>
    21c4:	02002025 	move	a0,s0
    21c8:	8fa40024 	lw	a0,36(sp)
    21cc:	0c000000 	jal	0 <EnPoField_Init>
    21d0:	02002825 	move	a1,s0
    21d4:	02002025 	move	a0,s0
    21d8:	0c000000 	jal	0 <EnPoField_Init>
    21dc:	24053876 	li	a1,14454
    21e0:	10000003 	b	21f0 <func_80AD5C74+0x7c>
    21e4:	00000000 	nop
    21e8:	0c000000 	jal	0 <EnPoField_Init>
    21ec:	24053875 	li	a1,14453
    21f0:	0c000000 	jal	0 <EnPoField_Init>
    21f4:	02002025 	move	a0,s0
    21f8:	8fbf001c 	lw	ra,28(sp)
    21fc:	8fb00018 	lw	s0,24(sp)
    2200:	27bd0020 	addiu	sp,sp,32
    2204:	03e00008 	jr	ra
    2208:	00000000 	nop

0000220c <func_80AD5D0C>:
    220c:	848e019a 	lh	t6,410(a0)
    2210:	15c00011 	bnez	t6,2258 <func_80AD5D0C+0x4c>
    2214:	00000000 	nop
    2218:	848f0236 	lh	t7,566(a0)
    221c:	84980238 	lh	t8,568(a0)
    2220:	8499023a 	lh	t9,570(a0)
    2224:	448f2000 	mtc1	t7,$f4
    2228:	44984000 	mtc1	t8,$f8
    222c:	44998000 	mtc1	t9,$f16
    2230:	468021a0 	cvt.s.w	$f6,$f4
    2234:	848900b6 	lh	t1,182(a0)
    2238:	24080046 	li	t0,70
    223c:	a488019a 	sh	t0,410(a0)
    2240:	a4890198 	sh	t1,408(a0)
    2244:	468042a0 	cvt.s.w	$f10,$f8
    2248:	e4860224 	swc1	$f6,548(a0)
    224c:	468084a0 	cvt.s.w	$f18,$f16
    2250:	e48a0228 	swc1	$f10,552(a0)
    2254:	e492022c 	swc1	$f18,556(a0)
    2258:	03e00008 	jr	ra
    225c:	00000000 	nop

00002260 <func_80AD5D60>:
    2260:	27bdffe0 	addiu	sp,sp,-32
    2264:	afbf001c 	sw	ra,28(sp)
    2268:	afb00018 	sw	s0,24(sp)
    226c:	afa50024 	sw	a1,36(sp)
    2270:	8482019a 	lh	v0,410(a0)
    2274:	00808025 	move	s0,a0
    2278:	50400040 	beqzl	v0,237c <func_80AD5D60+0x11c>
    227c:	8fbf001c 	lw	ra,28(sp)
    2280:	10400002 	beqz	v0,228c <func_80AD5D60+0x2c>
    2284:	244effff 	addiu	t6,v0,-1
    2288:	a48e019a 	sh	t6,410(a0)
    228c:	920202a0 	lbu	v0,672(s0)
    2290:	24190013 	li	t9,19
    2294:	26040220 	addiu	a0,s0,544
    2298:	304f0002 	andi	t7,v0,0x2
    229c:	11e00003 	beqz	t7,22ac <func_80AD5D60+0x4c>
    22a0:	3058fffd 	andi	t8,v0,0xfffd
    22a4:	a21802a0 	sb	t8,672(s0)
    22a8:	a619019a 	sh	t9,410(s0)
    22ac:	8608019a 	lh	t0,410(s0)
    22b0:	3c053b44 	lui	a1,0x3b44
    22b4:	34a59ba6 	ori	a1,a1,0x9ba6
    22b8:	29010014 	slti	at,t0,20
    22bc:	10200008 	beqz	at,22e0 <func_80AD5D60+0x80>
    22c0:	3c063a1d 	lui	a2,0x3a1d
    22c4:	3c06391d 	lui	a2,0x391d
    22c8:	34c64952 	ori	a2,a2,0x4952
    22cc:	26040220 	addiu	a0,s0,544
    22d0:	0c000000 	jal	0 <EnPoField_Init>
    22d4:	24050000 	li	a1,0
    22d8:	10000028 	b	237c <func_80AD5D60+0x11c>
    22dc:	8fbf001c 	lw	ra,28(sp)
    22e0:	0c000000 	jal	0 <EnPoField_Init>
    22e4:	34c64952 	ori	a2,a2,0x4952
    22e8:	50400012 	beqzl	v0,2334 <func_80AD5D60+0xd4>
    22ec:	c6080224 	lwc1	$f8,548(s0)
    22f0:	0c000000 	jal	0 <EnPoField_Init>
    22f4:	86040198 	lh	a0,408(s0)
    22f8:	3c014020 	lui	at,0x4020
    22fc:	44813000 	mtc1	at,$f6
    2300:	c6040224 	lwc1	$f4,548(s0)
    2304:	86040198 	lh	a0,408(s0)
    2308:	46003202 	mul.s	$f8,$f6,$f0
    230c:	46082280 	add.s	$f10,$f4,$f8
    2310:	0c000000 	jal	0 <EnPoField_Init>
    2314:	e60a0224 	swc1	$f10,548(s0)
    2318:	3c014020 	lui	at,0x4020
    231c:	44819000 	mtc1	at,$f18
    2320:	c610022c 	lwc1	$f16,556(s0)
    2324:	46009182 	mul.s	$f6,$f18,$f0
    2328:	46068100 	add.s	$f4,$f16,$f6
    232c:	e604022c 	swc1	$f4,556(s0)
    2330:	c6080224 	lwc1	$f8,548(s0)
    2334:	c6120228 	lwc1	$f18,552(s0)
    2338:	c606022c 	lwc1	$f6,556(s0)
    233c:	4600428d 	trunc.w.s	$f10,$f8
    2340:	8fa40024 	lw	a0,36(sp)
    2344:	3c010001 	lui	at,0x1
    2348:	4600940d 	trunc.w.s	$f16,$f18
    234c:	440a5000 	mfc1	t2,$f10
    2350:	34211e60 	ori	at,at,0x1e60
    2354:	4600310d 	trunc.w.s	$f4,$f6
    2358:	440c8000 	mfc1	t4,$f16
    235c:	26060290 	addiu	a2,s0,656
    2360:	00812821 	addu	a1,a0,at
    2364:	440e2000 	mfc1	t6,$f4
    2368:	a60a02d6 	sh	t2,726(s0)
    236c:	a60c02d8 	sh	t4,728(s0)
    2370:	0c000000 	jal	0 <EnPoField_Init>
    2374:	a60e02da 	sh	t6,730(s0)
    2378:	8fbf001c 	lw	ra,28(sp)
    237c:	8fb00018 	lw	s0,24(sp)
    2380:	27bd0020 	addiu	sp,sp,32
    2384:	03e00008 	jr	ra
    2388:	00000000 	nop

0000238c <func_80AD5E8C>:
    238c:	27bdff78 	addiu	sp,sp,-136
    2390:	afbf0044 	sw	ra,68(sp)
    2394:	afb20040 	sw	s2,64(sp)
    2398:	afb1003c 	sw	s1,60(sp)
    239c:	afb00038 	sw	s0,56(sp)
    23a0:	848e019a 	lh	t6,410(a0)
    23a4:	00808825 	move	s1,a0
    23a8:	00a09025 	move	s2,a1
    23ac:	11c000b5 	beqz	t6,2684 <func_80AD5E8C+0x2f8>
    23b0:	27a4006c 	addiu	a0,sp,108
    23b4:	8ca50000 	lw	a1,0(a1)
    23b8:	3c060000 	lui	a2,0x0
    23bc:	24c60000 	addiu	a2,a2,0
    23c0:	24070685 	li	a3,1669
    23c4:	0c000000 	jal	0 <EnPoField_Init>
    23c8:	00a08025 	move	s0,a1
    23cc:	0c000000 	jal	0 <EnPoField_Init>
    23d0:	8e440000 	lw	a0,0(s2)
    23d4:	8e0202d0 	lw	v0,720(s0)
    23d8:	3c18db06 	lui	t8,0xdb06
    23dc:	37180020 	ori	t8,t8,0x20
    23e0:	244f0008 	addiu	t7,v0,8
    23e4:	ae0f02d0 	sw	t7,720(s0)
    23e8:	ac580000 	sw	t8,0(v0)
    23ec:	8e440000 	lw	a0,0(s2)
    23f0:	24190020 	li	t9,32
    23f4:	24080040 	li	t0,64
    23f8:	24090001 	li	t1,1
    23fc:	3c0a0001 	lui	t2,0x1
    2400:	01525021 	addu	t2,t2,s2
    2404:	afa90018 	sw	t1,24(sp)
    2408:	afa80014 	sw	t0,20(sp)
    240c:	afb90010 	sw	t9,16(sp)
    2410:	afa0001c 	sw	zero,28(sp)
    2414:	8d4a1de4 	lw	t2,7652(t2)
    2418:	240d0020 	li	t5,32
    241c:	240e0080 	li	t6,128
    2420:	000a0823 	negu	at,t2
    2424:	00015880 	sll	t3,at,0x2
    2428:	01615821 	addu	t3,t3,at
    242c:	000b5880 	sll	t3,t3,0x2
    2430:	316c01ff 	andi	t4,t3,0x1ff
    2434:	afac0020 	sw	t4,32(sp)
    2438:	afae0028 	sw	t6,40(sp)
    243c:	afad0024 	sw	t5,36(sp)
    2440:	00002825 	move	a1,zero
    2444:	00003025 	move	a2,zero
    2448:	00003825 	move	a3,zero
    244c:	0c000000 	jal	0 <EnPoField_Init>
    2450:	afa20068 	sw	v0,104(sp)
    2454:	8fa30068 	lw	v1,104(sp)
    2458:	3c010000 	lui	at,0x0
    245c:	24040001 	li	a0,1
    2460:	ac620004 	sw	v0,4(v1)
    2464:	c4260000 	lwc1	$f6,0(at)
    2468:	c6240220 	lwc1	$f4,544(s1)
    246c:	8e0302d0 	lw	v1,720(s0)
    2470:	3c18fa00 	lui	t8,0xfa00
    2474:	46062002 	mul.s	$f0,$f4,$f6
    2478:	246f0008 	addiu	t7,v1,8
    247c:	ae0f02d0 	sw	t7,720(s0)
    2480:	37188080 	ori	t8,t8,0x8080
    2484:	3c014f00 	lui	at,0x4f00
    2488:	00003825 	move	a3,zero
    248c:	ac780000 	sw	t8,0(v1)
    2490:	4459f800 	cfc1	t9,$31
    2494:	44c4f800 	ctc1	a0,$31
    2498:	00000000 	nop
    249c:	46000224 	cvt.w.s	$f8,$f0
    24a0:	4444f800 	cfc1	a0,$31
    24a4:	00000000 	nop
    24a8:	30840078 	andi	a0,a0,0x78
    24ac:	50800013 	beqzl	a0,24fc <func_80AD5E8C+0x170>
    24b0:	44044000 	mfc1	a0,$f8
    24b4:	44814000 	mtc1	at,$f8
    24b8:	24040001 	li	a0,1
    24bc:	46080201 	sub.s	$f8,$f0,$f8
    24c0:	44c4f800 	ctc1	a0,$31
    24c4:	00000000 	nop
    24c8:	46004224 	cvt.w.s	$f8,$f8
    24cc:	4444f800 	cfc1	a0,$31
    24d0:	00000000 	nop
    24d4:	30840078 	andi	a0,a0,0x78
    24d8:	14800005 	bnez	a0,24f0 <func_80AD5E8C+0x164>
    24dc:	00000000 	nop
    24e0:	44044000 	mfc1	a0,$f8
    24e4:	3c018000 	lui	at,0x8000
    24e8:	10000007 	b	2508 <func_80AD5E8C+0x17c>
    24ec:	00812025 	or	a0,a0,at
    24f0:	10000005 	b	2508 <func_80AD5E8C+0x17c>
    24f4:	2404ffff 	li	a0,-1
    24f8:	44044000 	mfc1	a0,$f8
    24fc:	00000000 	nop
    2500:	0480fffb 	bltz	a0,24f0 <func_80AD5E8C+0x164>
    2504:	00000000 	nop
    2508:	308400ff 	andi	a0,a0,0xff
    250c:	3c01ffff 	lui	at,0xffff
    2510:	00814025 	or	t0,a0,at
    2514:	ac680004 	sw	t0,4(v1)
    2518:	44d9f800 	ctc1	t9,$31
    251c:	8e26022c 	lw	a2,556(s1)
    2520:	c62e0228 	lwc1	$f14,552(s1)
    2524:	c62c0224 	lwc1	$f12,548(s1)
    2528:	0c000000 	jal	0 <EnPoField_Init>
    252c:	afa4004c 	sw	a0,76(sp)
    2530:	864907a0 	lh	t1,1952(s2)
    2534:	00095080 	sll	t2,t1,0x2
    2538:	024a5821 	addu	t3,s2,t2
    253c:	0c000000 	jal	0 <EnPoField_Init>
    2540:	8d640790 	lw	a0,1936(t3)
    2544:	34018000 	li	at,0x8000
    2548:	00416021 	addu	t4,v0,at
    254c:	000c6c00 	sll	t5,t4,0x10
    2550:	000d7403 	sra	t6,t5,0x10
    2554:	448e5000 	mtc1	t6,$f10
    2558:	3c010000 	lui	at,0x0
    255c:	c4320000 	lwc1	$f18,0(at)
    2560:	46805420 	cvt.s.w	$f16,$f10
    2564:	24050001 	li	a1,1
    2568:	46128302 	mul.s	$f12,$f16,$f18
    256c:	0c000000 	jal	0 <EnPoField_Init>
    2570:	00000000 	nop
    2574:	862f019a 	lh	t7,410(s1)
    2578:	29e10014 	slti	at,t7,20
    257c:	54200010 	bnezl	at,25c0 <func_80AD5E8C+0x234>
    2580:	8e0202d0 	lw	v0,720(s0)
    2584:	8e0202d0 	lw	v0,720(s0)
    2588:	3c19fb00 	lui	t9,0xfb00
    258c:	3c08ff00 	lui	t0,0xff00
    2590:	24580008 	addiu	t8,v0,8
    2594:	ae1802d0 	sw	t8,720(s0)
    2598:	ac480004 	sw	t0,4(v0)
    259c:	ac590000 	sw	t9,0(v0)
    25a0:	c62c0220 	lwc1	$f12,544(s1)
    25a4:	24070001 	li	a3,1
    25a8:	44066000 	mfc1	a2,$f12
    25ac:	0c000000 	jal	0 <EnPoField_Init>
    25b0:	46006386 	mov.s	$f14,$f12
    25b4:	10000018 	b	2618 <func_80AD5E8C+0x28c>
    25b8:	8e0202d0 	lw	v0,720(s0)
    25bc:	8e0202d0 	lw	v0,720(s0)
    25c0:	3c0afb00 	lui	t2,0xfb00
    25c4:	3c010000 	lui	at,0x0
    25c8:	24490008 	addiu	t1,v0,8
    25cc:	ae0902d0 	sw	t1,720(s0)
    25d0:	ac4a0000 	sw	t2,0(v0)
    25d4:	8fab004c 	lw	t3,76(sp)
    25d8:	24070001 	li	a3,1
    25dc:	000b6600 	sll	t4,t3,0x18
    25e0:	ac4c0004 	sw	t4,4(v0)
    25e4:	c4220000 	lwc1	$f2,0(at)
    25e8:	3c010000 	lui	at,0x0
    25ec:	c4240000 	lwc1	$f4,0(at)
    25f0:	c6200220 	lwc1	$f0,544(s1)
    25f4:	3c010000 	lui	at,0x0
    25f8:	c4280000 	lwc1	$f8,0(at)
    25fc:	46040182 	mul.s	$f6,$f0,$f4
    2600:	46001281 	sub.s	$f10,$f2,$f0
    2604:	44061000 	mfc1	a2,$f2
    2608:	46025380 	add.s	$f14,$f10,$f2
    260c:	0c000000 	jal	0 <EnPoField_Init>
    2610:	46083300 	add.s	$f12,$f6,$f8
    2614:	8e0202d0 	lw	v0,720(s0)
    2618:	3c0eda38 	lui	t6,0xda38
    261c:	35ce0003 	ori	t6,t6,0x3
    2620:	244d0008 	addiu	t5,v0,8
    2624:	ae0d02d0 	sw	t5,720(s0)
    2628:	ac4e0000 	sw	t6,0(v0)
    262c:	8e440000 	lw	a0,0(s2)
    2630:	3c050000 	lui	a1,0x0
    2634:	24a50000 	addiu	a1,a1,0
    2638:	240606ad 	li	a2,1709
    263c:	0c000000 	jal	0 <EnPoField_Init>
    2640:	afa20058 	sw	v0,88(sp)
    2644:	8fa30058 	lw	v1,88(sp)
    2648:	3c190405 	lui	t9,0x405
    264c:	2739d4e0 	addiu	t9,t9,-11040
    2650:	ac620004 	sw	v0,4(v1)
    2654:	8e0202d0 	lw	v0,720(s0)
    2658:	3c18de00 	lui	t8,0xde00
    265c:	3c060000 	lui	a2,0x0
    2660:	244f0008 	addiu	t7,v0,8
    2664:	ae0f02d0 	sw	t7,720(s0)
    2668:	ac590004 	sw	t9,4(v0)
    266c:	ac580000 	sw	t8,0(v0)
    2670:	8e450000 	lw	a1,0(s2)
    2674:	24c60000 	addiu	a2,a2,0
    2678:	27a4006c 	addiu	a0,sp,108
    267c:	0c000000 	jal	0 <EnPoField_Init>
    2680:	240706b0 	li	a3,1712
    2684:	8fbf0044 	lw	ra,68(sp)
    2688:	8fb00038 	lw	s0,56(sp)
    268c:	8fb1003c 	lw	s1,60(sp)
    2690:	8fb20040 	lw	s2,64(sp)
    2694:	03e00008 	jr	ra
    2698:	27bd0088 	addiu	sp,sp,136

0000269c <func_80AD619C>:
    269c:	8c820190 	lw	v0,400(a0)
    26a0:	3c0e0000 	lui	t6,0x0
    26a4:	25ce0000 	addiu	t6,t6,0
    26a8:	15c20022 	bne	t6,v0,2734 <func_80AD619C+0x98>
    26ac:	3c080000 	lui	t0,0x0
    26b0:	90820214 	lbu	v0,532(a0)
    26b4:	240f0050 	li	t7,80
    26b8:	241800ff 	li	t8,255
    26bc:	24420005 	addiu	v0,v0,5
    26c0:	00021400 	sll	v0,v0,0x10
    26c4:	00021403 	sra	v0,v0,0x10
    26c8:	28410051 	slti	at,v0,81
    26cc:	14200003 	bnez	at,26dc <func_80AD619C+0x40>
    26d0:	241900e1 	li	t9,225
    26d4:	10000002 	b	26e0 <func_80AD619C+0x44>
    26d8:	a08f0214 	sb	t7,532(a0)
    26dc:	a0820214 	sb	v0,532(a0)
    26e0:	90820215 	lbu	v0,533(a0)
    26e4:	24420005 	addiu	v0,v0,5
    26e8:	00021400 	sll	v0,v0,0x10
    26ec:	00021403 	sra	v0,v0,0x10
    26f0:	28410100 	slti	at,v0,256
    26f4:	54200004 	bnezl	at,2708 <func_80AD619C+0x6c>
    26f8:	a0820215 	sb	v0,533(a0)
    26fc:	10000002 	b	2708 <func_80AD619C+0x6c>
    2700:	a0980215 	sb	t8,533(a0)
    2704:	a0820215 	sb	v0,533(a0)
    2708:	90820216 	lbu	v0,534(a0)
    270c:	24420005 	addiu	v0,v0,5
    2710:	00021400 	sll	v0,v0,0x10
    2714:	00021403 	sra	v0,v0,0x10
    2718:	284100e2 	slti	at,v0,226
    271c:	14200003 	bnez	at,272c <func_80AD619C+0x90>
    2720:	00000000 	nop
    2724:	03e00008 	jr	ra
    2728:	a0990216 	sb	t9,534(a0)
    272c:	03e00008 	jr	ra
    2730:	a0820216 	sb	v0,534(a0)
    2734:	25080000 	addiu	t0,t0,0
    2738:	55020010 	bnel	t0,v0,277c <func_80AD619C+0xe0>
    273c:	90820214 	lbu	v0,532(a0)
    2740:	90890114 	lbu	t1,276(a0)
    2744:	240b0050 	li	t3,80
    2748:	240c00ff 	li	t4,255
    274c:	312a0002 	andi	t2,t1,0x2
    2750:	11400005 	beqz	t2,2768 <func_80AD619C+0xcc>
    2754:	240d00e1 	li	t5,225
    2758:	a0800214 	sb	zero,532(a0)
    275c:	a0800215 	sb	zero,533(a0)
    2760:	03e00008 	jr	ra
    2764:	a0800216 	sb	zero,534(a0)
    2768:	a08b0214 	sb	t3,532(a0)
    276c:	a08c0215 	sb	t4,533(a0)
    2770:	03e00008 	jr	ra
    2774:	a08d0216 	sb	t5,534(a0)
    2778:	90820214 	lbu	v0,532(a0)
    277c:	240e00ff 	li	t6,255
    2780:	240f00ff 	li	t7,255
    2784:	24420005 	addiu	v0,v0,5
    2788:	00021400 	sll	v0,v0,0x10
    278c:	00021403 	sra	v0,v0,0x10
    2790:	28410100 	slti	at,v0,256
    2794:	54200004 	bnezl	at,27a8 <func_80AD619C+0x10c>
    2798:	a0820214 	sb	v0,532(a0)
    279c:	10000002 	b	27a8 <func_80AD619C+0x10c>
    27a0:	a08e0214 	sb	t6,532(a0)
    27a4:	a0820214 	sb	v0,532(a0)
    27a8:	90820215 	lbu	v0,533(a0)
    27ac:	24420005 	addiu	v0,v0,5
    27b0:	00021400 	sll	v0,v0,0x10
    27b4:	00021403 	sra	v0,v0,0x10
    27b8:	28410100 	slti	at,v0,256
    27bc:	54200004 	bnezl	at,27d0 <func_80AD619C+0x134>
    27c0:	a0820215 	sb	v0,533(a0)
    27c4:	10000002 	b	27d0 <func_80AD619C+0x134>
    27c8:	a08f0215 	sb	t7,533(a0)
    27cc:	a0820215 	sb	v0,533(a0)
    27d0:	90830216 	lbu	v1,534(a0)
    27d4:	286100d3 	slti	at,v1,211
    27d8:	1420000b 	bnez	at,2808 <func_80AD619C+0x16c>
    27dc:	24620005 	addiu	v0,v1,5
    27e0:	2462fffb 	addiu	v0,v1,-5
    27e4:	00021400 	sll	v0,v0,0x10
    27e8:	00021403 	sra	v0,v0,0x10
    27ec:	284100d2 	slti	at,v0,210
    27f0:	10200003 	beqz	at,2800 <func_80AD619C+0x164>
    27f4:	241800d2 	li	t8,210
    27f8:	03e00008 	jr	ra
    27fc:	a0980216 	sb	t8,534(a0)
    2800:	03e00008 	jr	ra
    2804:	a0820216 	sb	v0,534(a0)
    2808:	00021400 	sll	v0,v0,0x10
    280c:	00021403 	sra	v0,v0,0x10
    2810:	284100d3 	slti	at,v0,211
    2814:	14200003 	bnez	at,2824 <func_80AD619C+0x188>
    2818:	241900d2 	li	t9,210
    281c:	03e00008 	jr	ra
    2820:	a0990216 	sb	t9,534(a0)
    2824:	a0820216 	sb	v0,534(a0)
    2828:	03e00008 	jr	ra
    282c:	00000000 	nop

00002830 <func_80AD6330>:
    2830:	27bdffe8 	addiu	sp,sp,-24
    2834:	afbf0014 	sw	ra,20(sp)
    2838:	8c8f0190 	lw	t7,400(a0)
    283c:	3c0e0000 	lui	t6,0x0
    2840:	25ce0000 	addiu	t6,t6,0
    2844:	15cf0039 	bne	t6,t7,292c <func_80AD6330+0xfc>
    2848:	3c014140 	lui	at,0x4140
    284c:	c4800164 	lwc1	$f0,356(a0)
    2850:	44812000 	mtc1	at,$f4
    2854:	3c010000 	lui	at,0x0
    2858:	4604003c 	c.lt.s	$f0,$f4
    285c:	00000000 	nop
    2860:	45000032 	bc1f	292c <func_80AD6330+0xfc>
    2864:	00000000 	nop
    2868:	c4260000 	lwc1	$f6,0(at)
    286c:	3c010000 	lui	at,0x0
    2870:	24080001 	li	t0,1
    2874:	46060202 	mul.s	$f8,$f0,$f6
    2878:	4600428d 	trunc.w.s	$f10,$f8
    287c:	44025000 	mfc1	v0,$f10
    2880:	00000000 	nop
    2884:	00021400 	sll	v0,v0,0x10
    2888:	00021403 	sra	v0,v0,0x10
    288c:	24420037 	addiu	v0,v0,55
    2890:	a082021a 	sb	v0,538(a0)
    2894:	a0820219 	sb	v0,537(a0)
    2898:	a0820218 	sb	v0,536(a0)
    289c:	c4300000 	lwc1	$f16,0(at)
    28a0:	3c014f00 	lui	at,0x4f00
    28a4:	46100482 	mul.s	$f18,$f0,$f16
    28a8:	4459f800 	cfc1	t9,$31
    28ac:	44c8f800 	ctc1	t0,$31
    28b0:	00000000 	nop
    28b4:	46009124 	cvt.w.s	$f4,$f18
    28b8:	4448f800 	cfc1	t0,$31
    28bc:	00000000 	nop
    28c0:	31080078 	andi	t0,t0,0x78
    28c4:	51000013 	beqzl	t0,2914 <func_80AD6330+0xe4>
    28c8:	44082000 	mfc1	t0,$f4
    28cc:	44812000 	mtc1	at,$f4
    28d0:	24080001 	li	t0,1
    28d4:	46049101 	sub.s	$f4,$f18,$f4
    28d8:	44c8f800 	ctc1	t0,$31
    28dc:	00000000 	nop
    28e0:	46002124 	cvt.w.s	$f4,$f4
    28e4:	4448f800 	cfc1	t0,$31
    28e8:	00000000 	nop
    28ec:	31080078 	andi	t0,t0,0x78
    28f0:	15000005 	bnez	t0,2908 <func_80AD6330+0xd8>
    28f4:	00000000 	nop
    28f8:	44082000 	mfc1	t0,$f4
    28fc:	3c018000 	lui	at,0x8000
    2900:	10000007 	b	2920 <func_80AD6330+0xf0>
    2904:	01014025 	or	t0,t0,at
    2908:	10000005 	b	2920 <func_80AD6330+0xf0>
    290c:	2408ffff 	li	t0,-1
    2910:	44082000 	mfc1	t0,$f4
    2914:	00000000 	nop
    2918:	0500fffb 	bltz	t0,2908 <func_80AD6330+0xd8>
    291c:	00000000 	nop
    2920:	44d9f800 	ctc1	t9,$31
    2924:	1000001b 	b	2994 <func_80AD6330+0x164>
    2928:	a088021b 	sb	t0,539(a0)
    292c:	0c000000 	jal	0 <EnPoField_Init>
    2930:	afa40018 	sw	a0,24(sp)
    2934:	3c0141f0 	lui	at,0x41f0
    2938:	44813000 	mtc1	at,$f6
    293c:	3c0142c8 	lui	at,0x42c8
    2940:	44818000 	mtc1	at,$f16
    2944:	46060202 	mul.s	$f8,$f0,$f6
    2948:	3c014320 	lui	at,0x4320
    294c:	44813000 	mtc1	at,$f6
    2950:	46100482 	mul.s	$f18,$f0,$f16
    2954:	8fa40018 	lw	a0,24(sp)
    2958:	240e00c8 	li	t6,200
    295c:	a08e021b 	sb	t6,539(a0)
    2960:	4600428d 	trunc.w.s	$f10,$f8
    2964:	46060202 	mul.s	$f8,$f0,$f6
    2968:	440c5000 	mfc1	t4,$f10
    296c:	4600910d 	trunc.w.s	$f4,$f18
    2970:	258d00e1 	addiu	t5,t4,225
    2974:	a08d0218 	sb	t5,536(a0)
    2978:	4600428d 	trunc.w.s	$f10,$f8
    297c:	44192000 	mfc1	t9,$f4
    2980:	440c5000 	mfc1	t4,$f10
    2984:	2728009b 	addiu	t0,t9,155
    2988:	a0880219 	sb	t0,537(a0)
    298c:	258d005f 	addiu	t5,t4,95
    2990:	a08d021a 	sb	t5,538(a0)
    2994:	8fbf0014 	lw	ra,20(sp)
    2998:	27bd0018 	addiu	sp,sp,24
    299c:	03e00008 	jr	ra
    29a0:	00000000 	nop

000029a4 <EnPoField_Update>:
    29a4:	27bdffc8 	addiu	sp,sp,-56
    29a8:	afbf0024 	sw	ra,36(sp)
    29ac:	afb10020 	sw	s1,32(sp)
    29b0:	afb0001c 	sw	s0,28(sp)
    29b4:	00808025 	move	s0,a0
    29b8:	0c000000 	jal	0 <EnPoField_Init>
    29bc:	00a08825 	move	s1,a1
    29c0:	8e190190 	lw	t9,400(s0)
    29c4:	02002025 	move	a0,s0
    29c8:	02202825 	move	a1,s1
    29cc:	0320f809 	jalr	t9
    29d0:	00000000 	nop
    29d4:	02002025 	move	a0,s0
    29d8:	0c000000 	jal	0 <EnPoField_Init>
    29dc:	02202825 	move	a1,s1
    29e0:	8e020190 	lw	v0,400(s0)
    29e4:	3c0e0000 	lui	t6,0x0
    29e8:	25ce0000 	addiu	t6,t6,0
    29ec:	11c20007 	beq	t6,v0,2a0c <EnPoField_Update+0x68>
    29f0:	3c0f0000 	lui	t7,0x0
    29f4:	25ef0000 	addiu	t7,t7,0
    29f8:	11e20004 	beq	t7,v0,2a0c <EnPoField_Update+0x68>
    29fc:	3c180000 	lui	t8,0x0
    2a00:	27180000 	addiu	t8,t8,0
    2a04:	17020004 	bne	t8,v0,2a18 <EnPoField_Update+0x74>
    2a08:	00000000 	nop
    2a0c:	0c000000 	jal	0 <EnPoField_Init>
    2a10:	02002025 	move	a0,s0
    2a14:	8e020190 	lw	v0,400(s0)
    2a18:	3c080000 	lui	t0,0x0
    2a1c:	25080000 	addiu	t0,t0,0
    2a20:	11020024 	beq	t0,v0,2ab4 <EnPoField_Update+0x110>
    2a24:	02002025 	move	a0,s0
    2a28:	0c000000 	jal	0 <EnPoField_Init>
    2a2c:	3c054228 	lui	a1,0x4228
    2a30:	3c014270 	lui	at,0x4270
    2a34:	44812000 	mtc1	at,$f4
    2a38:	24090004 	li	t1,4
    2a3c:	afa90014 	sw	t1,20(sp)
    2a40:	02202025 	move	a0,s1
    2a44:	02002825 	move	a1,s0
    2a48:	24060000 	li	a2,0
    2a4c:	3c0741d8 	lui	a3,0x41d8
    2a50:	0c000000 	jal	0 <EnPoField_Init>
    2a54:	e7a40010 	swc1	$f4,16(sp)
    2a58:	0c000000 	jal	0 <EnPoField_Init>
    2a5c:	02002025 	move	a0,s0
    2a60:	0c000000 	jal	0 <EnPoField_Init>
    2a64:	02002025 	move	a0,s0
    2a68:	26050244 	addiu	a1,s0,580
    2a6c:	afa50028 	sw	a1,40(sp)
    2a70:	0c000000 	jal	0 <EnPoField_Init>
    2a74:	02002025 	move	a0,s0
    2a78:	3c010001 	lui	at,0x1
    2a7c:	34211e60 	ori	at,at,0x1e60
    2a80:	02212821 	addu	a1,s1,at
    2a84:	afa5002c 	sw	a1,44(sp)
    2a88:	02202025 	move	a0,s1
    2a8c:	0c000000 	jal	0 <EnPoField_Init>
    2a90:	8fa60028 	lw	a2,40(sp)
    2a94:	920a0255 	lbu	t2,597(s0)
    2a98:	8fa5002c 	lw	a1,44(sp)
    2a9c:	02202025 	move	a0,s1
    2aa0:	314b0001 	andi	t3,t2,0x1
    2aa4:	51600004 	beqzl	t3,2ab8 <EnPoField_Update+0x114>
    2aa8:	8fbf0024 	lw	ra,36(sp)
    2aac:	0c000000 	jal	0 <EnPoField_Init>
    2ab0:	8fa60028 	lw	a2,40(sp)
    2ab4:	8fbf0024 	lw	ra,36(sp)
    2ab8:	8fb0001c 	lw	s0,28(sp)
    2abc:	8fb10020 	lw	s1,32(sp)
    2ac0:	03e00008 	jr	ra
    2ac4:	27bd0038 	addiu	sp,sp,56

00002ac8 <func_80AD65C8>:
    2ac8:	27bdffe8 	addiu	sp,sp,-24
    2acc:	afa40018 	sw	a0,24(sp)
    2ad0:	8fa4002c 	lw	a0,44(sp)
    2ad4:	afbf0014 	sw	ra,20(sp)
    2ad8:	afa70024 	sw	a3,36(sp)
    2adc:	908e0217 	lbu	t6,535(a0)
    2ae0:	3c0b0000 	lui	t3,0x0
    2ae4:	24010007 	li	at,7
    2ae8:	11c0000c 	beqz	t6,2b1c <func_80AD65C8+0x54>
    2aec:	256b0000 	addiu	t3,t3,0
    2af0:	50a1000b 	beql	a1,at,2b20 <func_80AD65C8+0x58>
    2af4:	acc00000 	sw	zero,0(a2)
    2af8:	8c820190 	lw	v0,400(a0)
    2afc:	3c0f0000 	lui	t7,0x0
    2b00:	25ef0000 	addiu	t7,t7,0
    2b04:	55e20009 	bnel	t7,v0,2b2c <func_80AD65C8+0x64>
    2b08:	8499001c 	lh	t9,28(a0)
    2b0c:	84980196 	lh	t8,406(a0)
    2b10:	2b010002 	slti	at,t8,2
    2b14:	54200005 	bnezl	at,2b2c <func_80AD65C8+0x64>
    2b18:	8499001c 	lh	t9,28(a0)
    2b1c:	acc00000 	sw	zero,0(a2)
    2b20:	10000018 	b	2b84 <func_80AD65C8+0xbc>
    2b24:	8c820190 	lw	v0,400(a0)
    2b28:	8499001c 	lh	t9,28(a0)
    2b2c:	24030001 	li	v1,1
    2b30:	14790014 	bne	v1,t9,2b84 <func_80AD65C8+0xbc>
    2b34:	00000000 	nop
    2b38:	14a30006 	bne	a1,v1,2b54 <func_80AD65C8+0x8c>
    2b3c:	24010008 	li	at,8
    2b40:	3c080600 	lui	t0,0x600
    2b44:	25085900 	addiu	t0,t0,22784
    2b48:	acc80000 	sw	t0,0(a2)
    2b4c:	1000000d 	b	2b84 <func_80AD65C8+0xbc>
    2b50:	8c820190 	lw	v0,400(a0)
    2b54:	14a10005 	bne	a1,at,2b6c <func_80AD65C8+0xa4>
    2b58:	3c090600 	lui	t1,0x600
    2b5c:	25295620 	addiu	t1,t1,22048
    2b60:	acc90000 	sw	t1,0(a2)
    2b64:	10000007 	b	2b84 <func_80AD65C8+0xbc>
    2b68:	8c820190 	lw	v0,400(a0)
    2b6c:	24010009 	li	at,9
    2b70:	14a10004 	bne	a1,at,2b84 <func_80AD65C8+0xbc>
    2b74:	3c0a0600 	lui	t2,0x600
    2b78:	254a59f0 	addiu	t2,t2,23024
    2b7c:	acca0000 	sw	t2,0(a2)
    2b80:	8c820190 	lw	v0,400(a0)
    2b84:	1562000d 	bne	t3,v0,2bbc <func_80AD65C8+0xf4>
    2b88:	24010007 	li	at,7
    2b8c:	54a1000c 	bnel	a1,at,2bc0 <func_80AD65C8+0xf8>
    2b90:	8fbf0014 	lw	ra,20(sp)
    2b94:	848c0196 	lh	t4,406(a0)
    2b98:	3c013d80 	lui	at,0x3d80
    2b9c:	44814000 	mtc1	at,$f8
    2ba0:	448c2000 	mtc1	t4,$f4
    2ba4:	24070001 	li	a3,1
    2ba8:	468021a0 	cvt.s.w	$f6,$f4
    2bac:	46083302 	mul.s	$f12,$f6,$f8
    2bb0:	44066000 	mfc1	a2,$f12
    2bb4:	0c000000 	jal	0 <EnPoField_Init>
    2bb8:	46006386 	mov.s	$f14,$f12
    2bbc:	8fbf0014 	lw	ra,20(sp)
    2bc0:	27bd0018 	addiu	sp,sp,24
    2bc4:	00001025 	move	v0,zero
    2bc8:	03e00008 	jr	ra
    2bcc:	00000000 	nop

00002bd0 <func_80AD66D0>:
    2bd0:	27bdffa8 	addiu	sp,sp,-88
    2bd4:	afb00028 	sw	s0,40(sp)
    2bd8:	8fb00068 	lw	s0,104(sp)
    2bdc:	3c0e0000 	lui	t6,0x0
    2be0:	25ce0000 	addiu	t6,t6,0
    2be4:	afbf002c 	sw	ra,44(sp)
    2be8:	afa40058 	sw	a0,88(sp)
    2bec:	afa5005c 	sw	a1,92(sp)
    2bf0:	afa60060 	sw	a2,96(sp)
    2bf4:	afa70064 	sw	a3,100(sp)
    2bf8:	afae0038 	sw	t6,56(sp)
    2bfc:	8e0f0190 	lw	t7,400(s0)
    2c00:	55cf0020 	bnel	t6,t7,2c84 <func_80AD66D0+0xb4>
    2c04:	8fae005c 	lw	t6,92(sp)
    2c08:	86180196 	lh	t8,406(s0)
    2c0c:	2b010002 	slti	at,t8,2
    2c10:	1420001b 	bnez	at,2c80 <func_80AD66D0+0xb0>
    2c14:	24010008 	li	at,8
    2c18:	14a10019 	bne	a1,at,2c80 <func_80AD66D0+0xb0>
    2c1c:	8fa7006c 	lw	a3,108(sp)
    2c20:	8ce20000 	lw	v0,0(a3)
    2c24:	3c09da38 	lui	t1,0xda38
    2c28:	35290003 	ori	t1,t1,0x3
    2c2c:	24480008 	addiu	t0,v0,8
    2c30:	ace80000 	sw	t0,0(a3)
    2c34:	ac490000 	sw	t1,0(v0)
    2c38:	8faa0058 	lw	t2,88(sp)
    2c3c:	3c050000 	lui	a1,0x0
    2c40:	24a50000 	addiu	a1,a1,0
    2c44:	8d440000 	lw	a0,0(t2)
    2c48:	2406077c 	li	a2,1916
    2c4c:	0c000000 	jal	0 <EnPoField_Init>
    2c50:	afa20050 	sw	v0,80(sp)
    2c54:	8fa30050 	lw	v1,80(sp)
    2c58:	8fa7006c 	lw	a3,108(sp)
    2c5c:	3c0d0600 	lui	t5,0x600
    2c60:	ac620004 	sw	v0,4(v1)
    2c64:	8ce20000 	lw	v0,0(a3)
    2c68:	25ad66d0 	addiu	t5,t5,26320
    2c6c:	3c0cde00 	lui	t4,0xde00
    2c70:	244b0008 	addiu	t3,v0,8
    2c74:	aceb0000 	sw	t3,0(a3)
    2c78:	ac4d0004 	sw	t5,4(v0)
    2c7c:	ac4c0000 	sw	t4,0(v0)
    2c80:	8fae005c 	lw	t6,92(sp)
    2c84:	24010007 	li	at,7
    2c88:	3c040000 	lui	a0,0x0
    2c8c:	15c10050 	bne	t6,at,2dd0 <func_80AD66D0+0x200>
    2c90:	24840000 	addiu	a0,a0,0
    2c94:	0c000000 	jal	0 <EnPoField_Init>
    2c98:	27a50040 	addiu	a1,sp,64
    2c9c:	8faf0038 	lw	t7,56(sp)
    2ca0:	8e180190 	lw	t8,400(s0)
    2ca4:	15f80012 	bne	t7,t8,2cf0 <func_80AD66D0+0x120>
    2ca8:	00000000 	nop
    2cac:	86190196 	lh	t9,406(s0)
    2cb0:	2b210013 	slti	at,t9,19
    2cb4:	1420000e 	bnez	at,2cf0 <func_80AD66D0+0x120>
    2cb8:	00000000 	nop
    2cbc:	c6000050 	lwc1	$f0,80(s0)
    2cc0:	44802000 	mtc1	zero,$f4
    2cc4:	3c010000 	lui	at,0x0
    2cc8:	46002032 	c.eq.s	$f4,$f0
    2ccc:	00000000 	nop
    2cd0:	45010007 	bc1t	2cf0 <func_80AD66D0+0x120>
    2cd4:	00000000 	nop
    2cd8:	c4260000 	lwc1	$f6,0(at)
    2cdc:	24070001 	li	a3,1
    2ce0:	46003303 	div.s	$f12,$f6,$f0
    2ce4:	44066000 	mfc1	a2,$f12
    2ce8:	0c000000 	jal	0 <EnPoField_Init>
    2cec:	46006386 	mov.s	$f14,$f12
    2cf0:	3c040000 	lui	a0,0x0
    2cf4:	0c000000 	jal	0 <EnPoField_Init>
    2cf8:	24840000 	addiu	a0,a0,0
    2cfc:	8fa80038 	lw	t0,56(sp)
    2d00:	8e090190 	lw	t1,400(s0)
    2d04:	3c040000 	lui	a0,0x0
    2d08:	24840000 	addiu	a0,a0,0
    2d0c:	5509000c 	bnel	t0,t1,2d40 <func_80AD66D0+0x170>
    2d10:	920e0218 	lbu	t6,536(s0)
    2d14:	860a0196 	lh	t2,406(s0)
    2d18:	2401001b 	li	at,27
    2d1c:	55410008 	bnel	t2,at,2d40 <func_80AD66D0+0x170>
    2d20:	920e0218 	lbu	t6,536(s0)
    2d24:	c4880030 	lwc1	$f8,48(a0)
    2d28:	e6080024 	swc1	$f8,36(s0)
    2d2c:	c48a0034 	lwc1	$f10,52(a0)
    2d30:	e60a0028 	swc1	$f10,40(s0)
    2d34:	c4900038 	lwc1	$f16,56(a0)
    2d38:	e610002c 	swc1	$f16,44(s0)
    2d3c:	920e0218 	lbu	t6,536(s0)
    2d40:	c7b20040 	lwc1	$f18,64(sp)
    2d44:	c7a60044 	lwc1	$f6,68(sp)
    2d48:	afae0010 	sw	t6,16(sp)
    2d4c:	920f0219 	lbu	t7,537(s0)
    2d50:	c7aa0048 	lwc1	$f10,72(sp)
    2d54:	4600910d 	trunc.w.s	$f4,$f18
    2d58:	afaf0014 	sw	t7,20(sp)
    2d5c:	9218021a 	lbu	t8,538(s0)
    2d60:	4600320d 	trunc.w.s	$f8,$f6
    2d64:	44052000 	mfc1	a1,$f4
    2d68:	afb80018 	sw	t8,24(sp)
    2d6c:	4600540d 	trunc.w.s	$f16,$f10
    2d70:	9219021b 	lbu	t9,539(s0)
    2d74:	44064000 	mfc1	a2,$f8
    2d78:	00052c00 	sll	a1,a1,0x10
    2d7c:	44078000 	mfc1	a3,$f16
    2d80:	44999000 	mtc1	t9,$f18
    2d84:	00063400 	sll	a2,a2,0x10
    2d88:	00073c00 	sll	a3,a3,0x10
    2d8c:	00073c03 	sra	a3,a3,0x10
    2d90:	00063403 	sra	a2,a2,0x10
    2d94:	00052c03 	sra	a1,a1,0x10
    2d98:	26040234 	addiu	a0,s0,564
    2d9c:	07210005 	bgez	t9,2db4 <func_80AD66D0+0x1e4>
    2da0:	46809120 	cvt.s.w	$f4,$f18
    2da4:	3c014f80 	lui	at,0x4f80
    2da8:	44813000 	mtc1	at,$f6
    2dac:	00000000 	nop
    2db0:	46062100 	add.s	$f4,$f4,$f6
    2db4:	3c010000 	lui	at,0x0
    2db8:	c4280000 	lwc1	$f8,0(at)
    2dbc:	46082282 	mul.s	$f10,$f4,$f8
    2dc0:	4600540d 	trunc.w.s	$f16,$f10
    2dc4:	44098000 	mfc1	t1,$f16
    2dc8:	0c000000 	jal	0 <EnPoField_Init>
    2dcc:	afa9001c 	sw	t1,28(sp)
    2dd0:	8fbf002c 	lw	ra,44(sp)
    2dd4:	8fb00028 	lw	s0,40(sp)
    2dd8:	27bd0058 	addiu	sp,sp,88
    2ddc:	03e00008 	jr	ra
    2de0:	00000000 	nop

00002de4 <EnPoField_Draw>:
    2de4:	27bdff80 	addiu	sp,sp,-128
    2de8:	afbf0034 	sw	ra,52(sp)
    2dec:	afb20030 	sw	s2,48(sp)
    2df0:	afb1002c 	sw	s1,44(sp)
    2df4:	afb00028 	sw	s0,40(sp)
    2df8:	848e001c 	lh	t6,28(a0)
    2dfc:	8c890190 	lw	t1,400(a0)
    2e00:	3c180000 	lui	t8,0x0
    2e04:	3c190000 	lui	t9,0x0
    2e08:	27180000 	addiu	t8,t8,0
    2e0c:	27390000 	addiu	t9,t9,0
    2e10:	000e7900 	sll	t7,t6,0x4
    2e14:	00808825 	move	s1,a0
    2e18:	00a09025 	move	s2,a1
    2e1c:	132900ac 	beq	t9,t1,30d0 <EnPoField_Draw+0x2ec>
    2e20:	01f84021 	addu	t0,t7,t8
    2e24:	8ca50000 	lw	a1,0(a1)
    2e28:	3c060000 	lui	a2,0x0
    2e2c:	24c60000 	addiu	a2,a2,0
    2e30:	afa80078 	sw	t0,120(sp)
    2e34:	27a40064 	addiu	a0,sp,100
    2e38:	240707b8 	li	a3,1976
    2e3c:	0c000000 	jal	0 <EnPoField_Init>
    2e40:	00a08025 	move	s0,a1
    2e44:	0c000000 	jal	0 <EnPoField_Init>
    2e48:	8e440000 	lw	a0,0(s2)
    2e4c:	0c000000 	jal	0 <EnPoField_Init>
    2e50:	8e440000 	lw	a0,0(s2)
    2e54:	8e0202c0 	lw	v0,704(s0)
    2e58:	8fa80078 	lw	t0,120(sp)
    2e5c:	3c0bdb06 	lui	t3,0xdb06
    2e60:	244a0008 	addiu	t2,v0,8
    2e64:	ae0a02c0 	sw	t2,704(s0)
    2e68:	356b0028 	ori	t3,t3,0x28
    2e6c:	ac4b0000 	sw	t3,0(v0)
    2e70:	8e440000 	lw	a0,0(s2)
    2e74:	240c00ff 	li	t4,255
    2e78:	91070008 	lbu	a3,8(t0)
    2e7c:	91060007 	lbu	a2,7(t0)
    2e80:	91050006 	lbu	a1,6(t0)
    2e84:	afac0010 	sw	t4,16(sp)
    2e88:	0c000000 	jal	0 <EnPoField_Init>
    2e8c:	afa20060 	sw	v0,96(sp)
    2e90:	8fa30060 	lw	v1,96(sp)
    2e94:	240100ff 	li	at,255
    2e98:	ac620004 	sw	v0,4(v1)
    2e9c:	92220217 	lbu	v0,535(s1)
    2ea0:	50410004 	beql	v0,at,2eb4 <EnPoField_Draw+0xd0>
    2ea4:	8e0202c0 	lw	v0,704(s0)
    2ea8:	54400029 	bnezl	v0,2f50 <EnPoField_Draw+0x16c>
    2eac:	8e0202d0 	lw	v0,720(s0)
    2eb0:	8e0202c0 	lw	v0,704(s0)
    2eb4:	3c0edb06 	lui	t6,0xdb06
    2eb8:	35ce0020 	ori	t6,t6,0x20
    2ebc:	244d0008 	addiu	t5,v0,8
    2ec0:	ae0d02c0 	sw	t5,704(s0)
    2ec4:	ac4e0000 	sw	t6,0(v0)
    2ec8:	922f0217 	lbu	t7,535(s1)
    2ecc:	92270216 	lbu	a3,534(s1)
    2ed0:	92260215 	lbu	a2,533(s1)
    2ed4:	92250214 	lbu	a1,532(s1)
    2ed8:	8e440000 	lw	a0,0(s2)
    2edc:	afa2005c 	sw	v0,92(sp)
    2ee0:	0c000000 	jal	0 <EnPoField_Init>
    2ee4:	afaf0010 	sw	t7,16(sp)
    2ee8:	8fa3005c 	lw	v1,92(sp)
    2eec:	3c19db06 	lui	t9,0xdb06
    2ef0:	3c090000 	lui	t1,0x0
    2ef4:	ac620004 	sw	v0,4(v1)
    2ef8:	8e0202c0 	lw	v0,704(s0)
    2efc:	25290010 	addiu	t1,t1,16
    2f00:	37390030 	ori	t9,t9,0x30
    2f04:	24580008 	addiu	t8,v0,8
    2f08:	ae1802c0 	sw	t8,704(s0)
    2f0c:	ac490004 	sw	t1,4(v0)
    2f10:	ac590000 	sw	t9,0(v0)
    2f14:	8e26016c 	lw	a2,364(s1)
    2f18:	8e250150 	lw	a1,336(s1)
    2f1c:	3c0a0000 	lui	t2,0x0
    2f20:	254a0000 	addiu	t2,t2,0
    2f24:	afaa0010 	sw	t2,16(sp)
    2f28:	afb10014 	sw	s1,20(sp)
    2f2c:	8e0b02c0 	lw	t3,704(s0)
    2f30:	3c070000 	lui	a3,0x0
    2f34:	24e70000 	addiu	a3,a3,0
    2f38:	02402025 	move	a0,s2
    2f3c:	0c000000 	jal	0 <EnPoField_Init>
    2f40:	afab0018 	sw	t3,24(sp)
    2f44:	10000027 	b	2fe4 <EnPoField_Draw+0x200>
    2f48:	ae0202c0 	sw	v0,704(s0)
    2f4c:	8e0202d0 	lw	v0,720(s0)
    2f50:	3c0ddb06 	lui	t5,0xdb06
    2f54:	35ad0020 	ori	t5,t5,0x20
    2f58:	244c0008 	addiu	t4,v0,8
    2f5c:	ae0c02d0 	sw	t4,720(s0)
    2f60:	ac4d0000 	sw	t5,0(v0)
    2f64:	922e0217 	lbu	t6,535(s1)
    2f68:	92270216 	lbu	a3,534(s1)
    2f6c:	92260215 	lbu	a2,533(s1)
    2f70:	92250214 	lbu	a1,532(s1)
    2f74:	8e440000 	lw	a0,0(s2)
    2f78:	afa20054 	sw	v0,84(sp)
    2f7c:	0c000000 	jal	0 <EnPoField_Init>
    2f80:	afae0010 	sw	t6,16(sp)
    2f84:	8fa30054 	lw	v1,84(sp)
    2f88:	3c18db06 	lui	t8,0xdb06
    2f8c:	3c190000 	lui	t9,0x0
    2f90:	ac620004 	sw	v0,4(v1)
    2f94:	8e0202d0 	lw	v0,720(s0)
    2f98:	27390000 	addiu	t9,t9,0
    2f9c:	37180030 	ori	t8,t8,0x30
    2fa0:	244f0008 	addiu	t7,v0,8
    2fa4:	ae0f02d0 	sw	t7,720(s0)
    2fa8:	ac590004 	sw	t9,4(v0)
    2fac:	ac580000 	sw	t8,0(v0)
    2fb0:	8e26016c 	lw	a2,364(s1)
    2fb4:	8e250150 	lw	a1,336(s1)
    2fb8:	3c090000 	lui	t1,0x0
    2fbc:	25290000 	addiu	t1,t1,0
    2fc0:	afa90010 	sw	t1,16(sp)
    2fc4:	afb10014 	sw	s1,20(sp)
    2fc8:	8e0a02d0 	lw	t2,720(s0)
    2fcc:	3c070000 	lui	a3,0x0
    2fd0:	24e70000 	addiu	a3,a3,0
    2fd4:	02402025 	move	a0,s2
    2fd8:	0c000000 	jal	0 <EnPoField_Init>
    2fdc:	afaa0018 	sw	t2,24(sp)
    2fe0:	ae0202d0 	sw	v0,720(s0)
    2fe4:	8e0202c0 	lw	v0,704(s0)
    2fe8:	3c0ce700 	lui	t4,0xe700
    2fec:	3c0efb00 	lui	t6,0xfb00
    2ff0:	244b0008 	addiu	t3,v0,8
    2ff4:	ae0b02c0 	sw	t3,704(s0)
    2ff8:	ac400004 	sw	zero,4(v0)
    2ffc:	ac4c0000 	sw	t4,0(v0)
    3000:	8e0202c0 	lw	v0,704(s0)
    3004:	3c040000 	lui	a0,0x0
    3008:	24840000 	addiu	a0,a0,0
    300c:	244d0008 	addiu	t5,v0,8
    3010:	ae0d02c0 	sw	t5,704(s0)
    3014:	ac4e0000 	sw	t6,0(v0)
    3018:	922a0219 	lbu	t2,537(s1)
    301c:	92380218 	lbu	t8,536(s1)
    3020:	922e021a 	lbu	t6,538(s1)
    3024:	000a5c00 	sll	t3,t2,0x10
    3028:	0018ce00 	sll	t9,t8,0x18
    302c:	032b6025 	or	t4,t9,t3
    3030:	000e7a00 	sll	t7,t6,0x8
    3034:	018fc025 	or	t8,t4,t7
    3038:	370900ff 	ori	t1,t8,0xff
    303c:	0c000000 	jal	0 <EnPoField_Init>
    3040:	ac490004 	sw	t1,4(v0)
    3044:	8e0202c0 	lw	v0,704(s0)
    3048:	3c19da38 	lui	t9,0xda38
    304c:	37390003 	ori	t9,t9,0x3
    3050:	244a0008 	addiu	t2,v0,8
    3054:	ae0a02c0 	sw	t2,704(s0)
    3058:	ac590000 	sw	t9,0(v0)
    305c:	8e440000 	lw	a0,0(s2)
    3060:	3c050000 	lui	a1,0x0
    3064:	24a50000 	addiu	a1,a1,0
    3068:	240607f1 	li	a2,2033
    306c:	0c000000 	jal	0 <EnPoField_Init>
    3070:	afa20044 	sw	v0,68(sp)
    3074:	8fa30044 	lw	v1,68(sp)
    3078:	3c0d0600 	lui	t5,0x600
    307c:	25ad4ba0 	addiu	t5,t5,19360
    3080:	ac620004 	sw	v0,4(v1)
    3084:	8e0202c0 	lw	v0,704(s0)
    3088:	3c04de00 	lui	a0,0xde00
    308c:	3c0c0600 	lui	t4,0x600
    3090:	244b0008 	addiu	t3,v0,8
    3094:	ae0b02c0 	sw	t3,704(s0)
    3098:	ac4d0004 	sw	t5,4(v0)
    309c:	ac440000 	sw	a0,0(v0)
    30a0:	8e0202c0 	lw	v0,704(s0)
    30a4:	258c4cc0 	addiu	t4,t4,19648
    30a8:	3c060000 	lui	a2,0x0
    30ac:	244e0008 	addiu	t6,v0,8
    30b0:	ae0e02c0 	sw	t6,704(s0)
    30b4:	ac4c0004 	sw	t4,4(v0)
    30b8:	ac440000 	sw	a0,0(v0)
    30bc:	8e450000 	lw	a1,0(s2)
    30c0:	27a40064 	addiu	a0,sp,100
    30c4:	24c60000 	addiu	a2,a2,0
    30c8:	0c000000 	jal	0 <EnPoField_Init>
    30cc:	240707f7 	li	a3,2039
    30d0:	02202025 	move	a0,s1
    30d4:	0c000000 	jal	0 <EnPoField_Init>
    30d8:	02402825 	move	a1,s2
    30dc:	8fbf0034 	lw	ra,52(sp)
    30e0:	8fb00028 	lw	s0,40(sp)
    30e4:	8fb1002c 	lw	s1,44(sp)
    30e8:	8fb20030 	lw	s2,48(sp)
    30ec:	03e00008 	jr	ra
    30f0:	27bd0080 	addiu	sp,sp,128

000030f4 <func_80AD6BF4>:
    30f4:	27bdffe8 	addiu	sp,sp,-24
    30f8:	afbf0014 	sw	ra,20(sp)
    30fc:	afa5001c 	sw	a1,28(sp)
    3100:	afa40018 	sw	a0,24(sp)
    3104:	8c990190 	lw	t9,400(a0)
    3108:	0320f809 	jalr	t9
    310c:	00000000 	nop
    3110:	8fa40018 	lw	a0,24(sp)
    3114:	3c0e0000 	lui	t6,0x0
    3118:	25ce0000 	addiu	t6,t6,0
    311c:	8c8f0190 	lw	t7,400(a0)
    3120:	15cf0004 	bne	t6,t7,3134 <func_80AD6BF4+0x40>
    3124:	00000000 	nop
    3128:	0c000000 	jal	0 <EnPoField_Init>
    312c:	afa40018 	sw	a0,24(sp)
    3130:	8fa40018 	lw	a0,24(sp)
    3134:	0c000000 	jal	0 <EnPoField_Init>
    3138:	8fa5001c 	lw	a1,28(sp)
    313c:	8fbf0014 	lw	ra,20(sp)
    3140:	27bd0018 	addiu	sp,sp,24
    3144:	03e00008 	jr	ra
    3148:	00000000 	nop

0000314c <func_80AD6C4C>:
    314c:	27bdff60 	addiu	sp,sp,-160
    3150:	afbf0044 	sw	ra,68(sp)
    3154:	afb20040 	sw	s2,64(sp)
    3158:	afb1003c 	sw	s1,60(sp)
    315c:	afb00038 	sw	s0,56(sp)
    3160:	848e001c 	lh	t6,28(a0)
    3164:	00a09025 	move	s2,a1
    3168:	3c180000 	lui	t8,0x0
    316c:	8ca50000 	lw	a1,0(a1)
    3170:	27180000 	addiu	t8,t8,0
    3174:	000e7900 	sll	t7,t6,0x4
    3178:	00808825 	move	s1,a0
    317c:	01f84021 	addu	t0,t7,t8
    3180:	3c060000 	lui	a2,0x0
    3184:	24c60000 	addiu	a2,a2,0
    3188:	afa80094 	sw	t0,148(sp)
    318c:	27a40080 	addiu	a0,sp,128
    3190:	2407081d 	li	a3,2077
    3194:	0c000000 	jal	0 <EnPoField_Init>
    3198:	00a08025 	move	s0,a1
    319c:	8e290190 	lw	t1,400(s1)
    31a0:	3c190000 	lui	t9,0x0
    31a4:	27390000 	addiu	t9,t9,0
    31a8:	1729005b 	bne	t9,t1,3318 <func_80AD6C4C+0x1cc>
    31ac:	8fa80094 	lw	t0,148(sp)
    31b0:	8e440000 	lw	a0,0(s2)
    31b4:	0c000000 	jal	0 <EnPoField_Init>
    31b8:	afa80094 	sw	t0,148(sp)
    31bc:	8e0202c0 	lw	v0,704(s0)
    31c0:	8fa80094 	lw	t0,148(sp)
    31c4:	3c0bdb06 	lui	t3,0xdb06
    31c8:	244a0008 	addiu	t2,v0,8
    31cc:	ae0a02c0 	sw	t2,704(s0)
    31d0:	356b0028 	ori	t3,t3,0x28
    31d4:	ac4b0000 	sw	t3,0(v0)
    31d8:	8e440000 	lw	a0,0(s2)
    31dc:	240c00ff 	li	t4,255
    31e0:	91070008 	lbu	a3,8(t0)
    31e4:	91060007 	lbu	a2,7(t0)
    31e8:	91050006 	lbu	a1,6(t0)
    31ec:	afac0010 	sw	t4,16(sp)
    31f0:	0c000000 	jal	0 <EnPoField_Init>
    31f4:	afa2007c 	sw	v0,124(sp)
    31f8:	8fa3007c 	lw	v1,124(sp)
    31fc:	240a00c8 	li	t2,200
    3200:	26240234 	addiu	a0,s1,564
    3204:	ac620004 	sw	v0,4(v1)
    3208:	c630002c 	lwc1	$f16,44(s1)
    320c:	c6280028 	lwc1	$f8,40(s1)
    3210:	c6240024 	lwc1	$f4,36(s1)
    3214:	92380218 	lbu	t8,536(s1)
    3218:	4600848d 	trunc.w.s	$f18,$f16
    321c:	afb80010 	sw	t8,16(sp)
    3220:	4600428d 	trunc.w.s	$f10,$f8
    3224:	92390219 	lbu	t9,537(s1)
    3228:	44079000 	mfc1	a3,$f18
    322c:	4600218d 	trunc.w.s	$f6,$f4
    3230:	44065000 	mfc1	a2,$f10
    3234:	afb90014 	sw	t9,20(sp)
    3238:	9229021a 	lbu	t1,538(s1)
    323c:	44053000 	mfc1	a1,$f6
    3240:	00073c00 	sll	a3,a3,0x10
    3244:	00063400 	sll	a2,a2,0x10
    3248:	00052c00 	sll	a1,a1,0x10
    324c:	00052c03 	sra	a1,a1,0x10
    3250:	00063403 	sra	a2,a2,0x10
    3254:	00073c03 	sra	a3,a3,0x10
    3258:	afaa001c 	sw	t2,28(sp)
    325c:	0c000000 	jal	0 <EnPoField_Init>
    3260:	afa90018 	sw	t1,24(sp)
    3264:	8e0202c0 	lw	v0,704(s0)
    3268:	3c0cfb00 	lui	t4,0xfb00
    326c:	3c050000 	lui	a1,0x0
    3270:	244b0008 	addiu	t3,v0,8
    3274:	ae0b02c0 	sw	t3,704(s0)
    3278:	ac4c0000 	sw	t4,0(v0)
    327c:	92390219 	lbu	t9,537(s1)
    3280:	922e0218 	lbu	t6,536(s1)
    3284:	922c021a 	lbu	t4,538(s1)
    3288:	00194c00 	sll	t1,t9,0x10
    328c:	000e7e00 	sll	t7,t6,0x18
    3290:	01e95025 	or	t2,t7,t1
    3294:	000c6a00 	sll	t5,t4,0x8
    3298:	014d7025 	or	t6,t2,t5
    329c:	35d800ff 	ori	t8,t6,0xff
    32a0:	ac580004 	sw	t8,4(v0)
    32a4:	8e0202c0 	lw	v0,704(s0)
    32a8:	3c0fda38 	lui	t7,0xda38
    32ac:	35ef0003 	ori	t7,t7,0x3
    32b0:	24590008 	addiu	t9,v0,8
    32b4:	ae1902c0 	sw	t9,704(s0)
    32b8:	ac4f0000 	sw	t7,0(v0)
    32bc:	8e440000 	lw	a0,0(s2)
    32c0:	24a50000 	addiu	a1,a1,0
    32c4:	24060838 	li	a2,2104
    32c8:	0c000000 	jal	0 <EnPoField_Init>
    32cc:	afa20074 	sw	v0,116(sp)
    32d0:	8fa30074 	lw	v1,116(sp)
    32d4:	3c0b0600 	lui	t3,0x600
    32d8:	256b4ba0 	addiu	t3,t3,19360
    32dc:	ac620004 	sw	v0,4(v1)
    32e0:	8e0202c0 	lw	v0,704(s0)
    32e4:	3c04de00 	lui	a0,0xde00
    32e8:	3c0a0600 	lui	t2,0x600
    32ec:	24490008 	addiu	t1,v0,8
    32f0:	ae0902c0 	sw	t1,704(s0)
    32f4:	ac4b0004 	sw	t3,4(v0)
    32f8:	ac440000 	sw	a0,0(v0)
    32fc:	8e0202c0 	lw	v0,704(s0)
    3300:	254a4cc0 	addiu	t2,t2,19648
    3304:	244c0008 	addiu	t4,v0,8
    3308:	ae0c02c0 	sw	t4,704(s0)
    330c:	ac4a0004 	sw	t2,4(v0)
    3310:	10000083 	b	3520 <func_80AD6C4C+0x3d4>
    3314:	ac440000 	sw	a0,0(v0)
    3318:	8e440000 	lw	a0,0(s2)
    331c:	0c000000 	jal	0 <EnPoField_Init>
    3320:	afa80094 	sw	t0,148(sp)
    3324:	8e0202d0 	lw	v0,720(s0)
    3328:	8fa80094 	lw	t0,148(sp)
    332c:	3c0edb06 	lui	t6,0xdb06
    3330:	244d0008 	addiu	t5,v0,8
    3334:	ae0d02d0 	sw	t5,720(s0)
    3338:	35ce0020 	ori	t6,t6,0x20
    333c:	ac4e0000 	sw	t6,0(v0)
    3340:	8e440000 	lw	a0,0(s2)
    3344:	24180020 	li	t8,32
    3348:	24190040 	li	t9,64
    334c:	240f0001 	li	t7,1
    3350:	afaf0018 	sw	t7,24(sp)
    3354:	afb90014 	sw	t9,20(sp)
    3358:	afb80010 	sw	t8,16(sp)
    335c:	afa0001c 	sw	zero,28(sp)
    3360:	3c090001 	lui	t1,0x1
    3364:	01324821 	addu	t1,t1,s2
    3368:	8d291de4 	lw	t1,7652(t1)
    336c:	810b0009 	lb	t3,9(t0)
    3370:	240e0080 	li	t6,128
    3374:	240d0020 	li	t5,32
    3378:	012b0019 	multu	t1,t3
    337c:	afad0024 	sw	t5,36(sp)
    3380:	afae0028 	sw	t6,40(sp)
    3384:	00002825 	move	a1,zero
    3388:	00003025 	move	a2,zero
    338c:	00003825 	move	a3,zero
    3390:	afa20068 	sw	v0,104(sp)
    3394:	afa80094 	sw	t0,148(sp)
    3398:	00006012 	mflo	t4
    339c:	318a01ff 	andi	t2,t4,0x1ff
    33a0:	0c000000 	jal	0 <EnPoField_Init>
    33a4:	afaa0020 	sw	t2,32(sp)
    33a8:	8fa30068 	lw	v1,104(sp)
    33ac:	8fa80094 	lw	t0,148(sp)
    33b0:	3c19db06 	lui	t9,0xdb06
    33b4:	ac620004 	sw	v0,4(v1)
    33b8:	8e0202d0 	lw	v0,720(s0)
    33bc:	37390024 	ori	t9,t9,0x24
    33c0:	3c0c0000 	lui	t4,0x0
    33c4:	24580008 	addiu	t8,v0,8
    33c8:	ae1802d0 	sw	t8,720(s0)
    33cc:	ac590000 	sw	t9,0(v0)
    33d0:	8d04000c 	lw	a0,12(t0)
    33d4:	3c0100ff 	lui	at,0xff
    33d8:	3421ffff 	ori	at,at,0xffff
    33dc:	00047900 	sll	t7,a0,0x4
    33e0:	000f4f02 	srl	t1,t7,0x1c
    33e4:	00095880 	sll	t3,t1,0x2
    33e8:	018b6021 	addu	t4,t4,t3
    33ec:	8d8c0000 	lw	t4,0(t4)
    33f0:	00815024 	and	t2,a0,at
    33f4:	3c018000 	lui	at,0x8000
    33f8:	018a6821 	addu	t5,t4,t2
    33fc:	01a17021 	addu	t6,t5,at
    3400:	ac4e0004 	sw	t6,4(v0)
    3404:	8e0202d0 	lw	v0,720(s0)
    3408:	3c19fa00 	lui	t9,0xfa00
    340c:	37398080 	ori	t9,t9,0x8080
    3410:	24580008 	addiu	t8,v0,8
    3414:	ae1802d0 	sw	t8,720(s0)
    3418:	ac590000 	sw	t9,0(v0)
    341c:	910a0001 	lbu	t2,1(t0)
    3420:	91090000 	lbu	t1,0(t0)
    3424:	91190002 	lbu	t9,2(t0)
    3428:	000a6c00 	sll	t5,t2,0x10
    342c:	922a0217 	lbu	t2,535(s1)
    3430:	00095e00 	sll	t3,t1,0x18
    3434:	016d7025 	or	t6,t3,t5
    3438:	00197a00 	sll	t7,t9,0x8
    343c:	01cf4825 	or	t1,t6,t7
    3440:	012a5825 	or	t3,t1,t2
    3444:	ac4b0004 	sw	t3,4(v0)
    3448:	8e0202d0 	lw	v0,720(s0)
    344c:	3c18fb00 	lui	t8,0xfb00
    3450:	244d0008 	addiu	t5,v0,8
    3454:	ae0d02d0 	sw	t5,720(s0)
    3458:	ac580000 	sw	t8,0(v0)
    345c:	92290215 	lbu	t1,533(s1)
    3460:	922e0214 	lbu	t6,532(s1)
    3464:	92380216 	lbu	t8,534(s1)
    3468:	00095400 	sll	t2,t1,0x10
    346c:	000e7e00 	sll	t7,t6,0x18
    3470:	01ea5825 	or	t3,t7,t2
    3474:	0018ca00 	sll	t9,t8,0x8
    3478:	01797025 	or	t6,t3,t9
    347c:	35cc00ff 	ori	t4,t6,0xff
    3480:	ac4c0004 	sw	t4,4(v0)
    3484:	864907a0 	lh	t1,1952(s2)
    3488:	00097880 	sll	t7,t1,0x2
    348c:	024f5021 	addu	t2,s2,t7
    3490:	0c000000 	jal	0 <EnPoField_Init>
    3494:	8d440790 	lw	a0,1936(t2)
    3498:	34018000 	li	at,0x8000
    349c:	00416821 	addu	t5,v0,at
    34a0:	000dc400 	sll	t8,t5,0x10
    34a4:	00185c03 	sra	t3,t8,0x10
    34a8:	448b2000 	mtc1	t3,$f4
    34ac:	3c010000 	lui	at,0x0
    34b0:	c4280000 	lwc1	$f8,0(at)
    34b4:	468021a0 	cvt.s.w	$f6,$f4
    34b8:	24050001 	li	a1,1
    34bc:	46083302 	mul.s	$f12,$f6,$f8
    34c0:	0c000000 	jal	0 <EnPoField_Init>
    34c4:	00000000 	nop
    34c8:	8e0202d0 	lw	v0,720(s0)
    34cc:	3c0eda38 	lui	t6,0xda38
    34d0:	35ce0003 	ori	t6,t6,0x3
    34d4:	24590008 	addiu	t9,v0,8
    34d8:	ae1902d0 	sw	t9,720(s0)
    34dc:	ac4e0000 	sw	t6,0(v0)
    34e0:	8e440000 	lw	a0,0(s2)
    34e4:	3c050000 	lui	a1,0x0
    34e8:	24a50000 	addiu	a1,a1,0
    34ec:	2406085f 	li	a2,2143
    34f0:	0c000000 	jal	0 <EnPoField_Init>
    34f4:	afa20058 	sw	v0,88(sp)
    34f8:	8fa30058 	lw	v1,88(sp)
    34fc:	3c090600 	lui	t1,0x600
    3500:	252923b0 	addiu	t1,t1,9136
    3504:	ac620004 	sw	v0,4(v1)
    3508:	8e0202d0 	lw	v0,720(s0)
    350c:	3c04de00 	lui	a0,0xde00
    3510:	244c0008 	addiu	t4,v0,8
    3514:	ae0c02d0 	sw	t4,720(s0)
    3518:	ac490004 	sw	t1,4(v0)
    351c:	ac440000 	sw	a0,0(v0)
    3520:	3c060000 	lui	a2,0x0
    3524:	24c60000 	addiu	a2,a2,0
    3528:	27a40080 	addiu	a0,sp,128
    352c:	8e450000 	lw	a1,0(s2)
    3530:	0c000000 	jal	0 <EnPoField_Init>
    3534:	24070865 	li	a3,2149
    3538:	02202025 	move	a0,s1
    353c:	0c000000 	jal	0 <EnPoField_Init>
    3540:	02402825 	move	a1,s2
    3544:	8fbf0044 	lw	ra,68(sp)
    3548:	8fb00038 	lw	s0,56(sp)
    354c:	8fb1003c 	lw	s1,60(sp)
    3550:	8fb20040 	lw	s2,64(sp)
    3554:	03e00008 	jr	ra
    3558:	27bd00a0 	addiu	sp,sp,160
    355c:	00000000 	nop
