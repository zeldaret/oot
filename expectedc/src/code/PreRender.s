
build/src/code/PreRender.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <PreRender_SetValuesSave>:
       0:	ac850008 	sw	a1,8(a0)
       4:	ac86000c 	sw	a2,12(a0)
       8:	ac870014 	sw	a3,20(a0)
       c:	8fae0014 	lw	t6,20(sp)
      10:	24b8ffff 	addiu	t8,a1,-1
      14:	24d9ffff 	addiu	t9,a2,-1
      18:	ac8e0018 	sw	t6,24(a0)
      1c:	8faf0010 	lw	t7,16(sp)
      20:	ac800024 	sw	zero,36(a0)
      24:	ac800028 	sw	zero,40(a0)
      28:	ac98002c 	sw	t8,44(a0)
      2c:	ac990030 	sw	t9,48(a0)
      30:	03e00008 	jr	ra
      34:	ac8f0020 	sw	t7,32(a0)

00000038 <PreRender_Init>:
      38:	27bdffe8 	addiu	sp,sp,-24
      3c:	afbf0014 	sw	ra,20(sp)
      40:	afa40018 	sw	a0,24(sp)
      44:	0c000000 	jal	0 <PreRender_SetValuesSave>
      48:	24050050 	li	a1,80
      4c:	8fa40018 	lw	a0,24(sp)
      50:	0c000000 	jal	0 <PreRender_SetValuesSave>
      54:	24840044 	addiu	a0,a0,68
      58:	8fbf0014 	lw	ra,20(sp)
      5c:	27bd0018 	addiu	sp,sp,24
      60:	03e00008 	jr	ra
      64:	00000000 	nop

00000068 <PreRender_SetValues>:
      68:	ac850000 	sw	a1,0(a0)
      6c:	ac860004 	sw	a2,4(a0)
      70:	ac870010 	sw	a3,16(a0)
      74:	8fae0010 	lw	t6,16(sp)
      78:	24afffff 	addiu	t7,a1,-1
      7c:	24d8ffff 	addiu	t8,a2,-1
      80:	ac800034 	sw	zero,52(a0)
      84:	ac800038 	sw	zero,56(a0)
      88:	ac8f003c 	sw	t7,60(a0)
      8c:	ac980040 	sw	t8,64(a0)
      90:	03e00008 	jr	ra
      94:	ac8e001c 	sw	t6,28(a0)

00000098 <PreRender_Destroy>:
      98:	27bdffe8 	addiu	sp,sp,-24
      9c:	afbf0014 	sw	ra,20(sp)
      a0:	0c000000 	jal	0 <PreRender_SetValuesSave>
      a4:	24840044 	addiu	a0,a0,68
      a8:	8fbf0014 	lw	ra,20(sp)
      ac:	27bd0018 	addiu	sp,sp,24
      b0:	03e00008 	jr	ra
      b4:	00000000 	nop

000000b8 <func_800C0F28>:
      b8:	27bdffd8 	addiu	sp,sp,-40
      bc:	afb00018 	sw	s0,24(sp)
      c0:	00808025 	move	s0,a0
      c4:	afa60030 	sw	a2,48(sp)
      c8:	afbf001c 	sw	ra,28(sp)
      cc:	afa5002c 	sw	a1,44(sp)
      d0:	afa70034 	sw	a3,52(sp)
      d4:	3c060000 	lui	a2,0x0
      d8:	3c040000 	lui	a0,0x0
      dc:	24840000 	addiu	a0,a0,0
      e0:	24c60008 	addiu	a2,a2,8
      e4:	240700d7 	li	a3,215
      e8:	0c000000 	jal	0 <PreRender_SetValuesSave>
      ec:	02002825 	move	a1,s0
      f0:	3c040000 	lui	a0,0x0
      f4:	3c060000 	lui	a2,0x0
      f8:	24c60020 	addiu	a2,a2,32
      fc:	24840018 	addiu	a0,a0,24
     100:	8fa5002c 	lw	a1,44(sp)
     104:	0c000000 	jal	0 <PreRender_SetValuesSave>
     108:	240700d8 	li	a3,216
     10c:	8fae002c 	lw	t6,44(sp)
     110:	3c040000 	lui	a0,0x0
     114:	3c060000 	lui	a2,0x0
     118:	8dc50000 	lw	a1,0(t6)
     11c:	24c60038 	addiu	a2,a2,56
     120:	24840030 	addiu	a0,a0,48
     124:	240700da 	li	a3,218
     128:	0c000000 	jal	0 <PreRender_SetValuesSave>
     12c:	afa50024 	sw	a1,36(sp)
     130:	8fa50024 	lw	a1,36(sp)
     134:	3c0fe700 	lui	t7,0xe700
     138:	3c18ef20 	lui	t8,0xef20
     13c:	00a01025 	move	v0,a1
     140:	ac4f0000 	sw	t7,0(v0)
     144:	ac400004 	sw	zero,4(v0)
     148:	24a50008 	addiu	a1,a1,8
     14c:	00a01025 	move	v0,a1
     150:	ac580000 	sw	t8,0(v0)
     154:	ac400004 	sw	zero,4(v0)
     158:	8e190000 	lw	t9,0(s0)
     15c:	24a50008 	addiu	a1,a1,8
     160:	3c01ff10 	lui	at,0xff10
     164:	272effff 	addiu	t6,t9,-1
     168:	31cf0fff 	andi	t7,t6,0xfff
     16c:	01e1c025 	or	t8,t7,at
     170:	00a01025 	move	v0,a1
     174:	ac580000 	sw	t8,0(v0)
     178:	8fb90034 	lw	t9,52(sp)
     17c:	24a50008 	addiu	a1,a1,8
     180:	3c0eed00 	lui	t6,0xed00
     184:	ac590004 	sw	t9,4(v0)
     188:	00a01025 	move	v0,a1
     18c:	ac4e0000 	sw	t6,0(v0)
     190:	8e0f0000 	lw	t7,0(s0)
     194:	8e180004 	lw	t8,4(s0)
     198:	3c014080 	lui	at,0x4080
     19c:	448f2000 	mtc1	t7,$f4
     1a0:	44988000 	mtc1	t8,$f16
     1a4:	44810000 	mtc1	at,$f0
     1a8:	468021a0 	cvt.s.w	$f6,$f4
     1ac:	24a50008 	addiu	a1,a1,8
     1b0:	00004025 	move	t0,zero
     1b4:	3c1ffd10 	lui	ra,0xfd10
     1b8:	3c0d0700 	lui	t5,0x700
     1bc:	468084a0 	cvt.s.w	$f18,$f16
     1c0:	46003202 	mul.s	$f8,$f6,$f0
     1c4:	4600428d 	trunc.w.s	$f10,$f8
     1c8:	46009102 	mul.s	$f4,$f18,$f0
     1cc:	44195000 	mfc1	t9,$f10
     1d0:	00000000 	nop
     1d4:	332e0fff 	andi	t6,t9,0xfff
     1d8:	4600218d 	trunc.w.s	$f6,$f4
     1dc:	000e7b00 	sll	t7,t6,0xc
     1e0:	440e3000 	mfc1	t6,$f6
     1e4:	00000000 	nop
     1e8:	31d80fff 	andi	t8,t6,0xfff
     1ec:	01f8c825 	or	t9,t7,t8
     1f0:	ac590004 	sw	t9,4(v0)
     1f4:	8e0e0000 	lw	t6,0(s0)
     1f8:	24181000 	li	t8,4096
     1fc:	8e0a0004 	lw	t2,4(s0)
     200:	000e7840 	sll	t7,t6,0x1
     204:	030f001a 	div	zero,t8,t7
     208:	00006012 	mflo	t4
     20c:	15e00002 	bnez	t7,218 <func_800C0F28+0x160>
     210:	00000000 	nop
     214:	0007000d 	break	0x7
     218:	2401ffff 	li	at,-1
     21c:	15e10004 	bne	t7,at,230 <func_800C0F28+0x178>
     220:	3c018000 	lui	at,0x8000
     224:	17010002 	bne	t8,at,230 <func_800C0F28+0x178>
     228:	00000000 	nop
     22c:	0006000d 	break	0x6
     230:	59400058 	blezl	t2,394 <func_800C0F28+0x2dc>
     234:	00a01025 	move	v0,a1
     238:	8e030000 	lw	v1,0(s0)
     23c:	014c082a 	slt	at,t2,t4
     240:	00a01025 	move	v0,a1
     244:	2463ffff 	addiu	v1,v1,-1
     248:	10200002 	beqz	at,254 <func_800C0F28+0x19c>
     24c:	00604825 	move	t1,v1
     250:	01406025 	move	t4,t2
     254:	30790fff 	andi	t9,v1,0xfff
     258:	033f7025 	or	t6,t9,ra
     25c:	ac4e0000 	sw	t6,0(v0)
     260:	8fb80030 	lw	t8,48(sp)
     264:	00093840 	sll	a3,t1,0x1
     268:	24e70009 	addiu	a3,a3,9
     26c:	000738c3 	sra	a3,a3,0x3
     270:	24a50008 	addiu	a1,a1,8
     274:	ac580004 	sw	t8,4(v0)
     278:	00a01025 	move	v0,a1
     27c:	30e701ff 	andi	a3,a3,0x1ff
     280:	00073a40 	sll	a3,a3,0x9
     284:	3c01f510 	lui	at,0xf510
     288:	00e13825 	or	a3,a3,at
     28c:	ac470000 	sw	a3,0(v0)
     290:	ac4d0004 	sw	t5,4(v0)
     294:	24a50008 	addiu	a1,a1,8
     298:	00a01025 	move	v0,a1
     29c:	00091880 	sll	v1,t1,0x2
     2a0:	3c0fe600 	lui	t7,0xe600
     2a4:	010c5821 	addu	t3,t0,t4
     2a8:	2564ffff 	addiu	a0,t3,-1
     2ac:	ac4f0000 	sw	t7,0(v0)
     2b0:	30630fff 	andi	v1,v1,0xfff
     2b4:	ac400004 	sw	zero,4(v0)
     2b8:	24a50008 	addiu	a1,a1,8
     2bc:	00a01025 	move	v0,a1
     2c0:	00031b00 	sll	v1,v1,0xc
     2c4:	00042080 	sll	a0,a0,0x2
     2c8:	00083080 	sll	a2,t0,0x2
     2cc:	30c60fff 	andi	a2,a2,0xfff
     2d0:	30840fff 	andi	a0,a0,0xfff
     2d4:	006d7025 	or	t6,v1,t5
     2d8:	3c01f400 	lui	at,0xf400
     2dc:	00c1c825 	or	t9,a2,at
     2e0:	01c4c025 	or	t8,t6,a0
     2e4:	ac580004 	sw	t8,4(v0)
     2e8:	ac590000 	sw	t9,0(v0)
     2ec:	24a50008 	addiu	a1,a1,8
     2f0:	00a01025 	move	v0,a1
     2f4:	3c0fe700 	lui	t7,0xe700
     2f8:	ac4f0000 	sw	t7,0(v0)
     2fc:	ac400004 	sw	zero,4(v0)
     300:	24a50008 	addiu	a1,a1,8
     304:	00a01025 	move	v0,a1
     308:	ac470000 	sw	a3,0(v0)
     30c:	ac400004 	sw	zero,4(v0)
     310:	24a50008 	addiu	a1,a1,8
     314:	00a01025 	move	v0,a1
     318:	3c01f200 	lui	at,0xf200
     31c:	00c1c825 	or	t9,a2,at
     320:	00647025 	or	t6,v1,a0
     324:	ac4e0004 	sw	t6,4(v0)
     328:	ac590000 	sw	t9,0(v0)
     32c:	24a50008 	addiu	a1,a1,8
     330:	00a01025 	move	v0,a1
     334:	3c01e400 	lui	at,0xe400
     338:	0061c025 	or	t8,v1,at
     33c:	03047825 	or	t7,t8,a0
     340:	ac4f0000 	sw	t7,0(v0)
     344:	ac460004 	sw	a2,4(v0)
     348:	24a50008 	addiu	a1,a1,8
     34c:	00a01025 	move	v0,a1
     350:	3c19e100 	lui	t9,0xe100
     354:	00087140 	sll	t6,t0,0x5
     358:	31d8ffff 	andi	t8,t6,0xffff
     35c:	ac590000 	sw	t9,0(v0)
     360:	ac580004 	sw	t8,4(v0)
     364:	24a50008 	addiu	a1,a1,8
     368:	00a01025 	move	v0,a1
     36c:	3c191000 	lui	t9,0x1000
     370:	37390400 	ori	t9,t9,0x400
     374:	3c0ff100 	lui	t7,0xf100
     378:	014c5023 	subu	t2,t2,t4
     37c:	ac4f0000 	sw	t7,0(v0)
     380:	ac590004 	sw	t9,4(v0)
     384:	24a50008 	addiu	a1,a1,8
     388:	1d40ffab 	bgtz	t2,238 <func_800C0F28+0x180>
     38c:	01604025 	move	t0,t3
     390:	00a01025 	move	v0,a1
     394:	3c0ee700 	lui	t6,0xe700
     398:	ac4e0000 	sw	t6,0(v0)
     39c:	ac400004 	sw	zero,4(v0)
     3a0:	8e180000 	lw	t8,0(s0)
     3a4:	24a50008 	addiu	a1,a1,8
     3a8:	3c01ff10 	lui	at,0xff10
     3ac:	270fffff 	addiu	t7,t8,-1
     3b0:	31f90fff 	andi	t9,t7,0xfff
     3b4:	03217025 	or	t6,t9,at
     3b8:	00a01025 	move	v0,a1
     3bc:	ac4e0000 	sw	t6,0(v0)
     3c0:	8e180010 	lw	t8,16(s0)
     3c4:	24a50008 	addiu	a1,a1,8
     3c8:	ac580004 	sw	t8,4(v0)
     3cc:	8faf002c 	lw	t7,44(sp)
     3d0:	ade50000 	sw	a1,0(t7)
     3d4:	8fbf001c 	lw	ra,28(sp)
     3d8:	8fb00018 	lw	s0,24(sp)
     3dc:	27bd0028 	addiu	sp,sp,40
     3e0:	03e00008 	jr	ra
     3e4:	00000000 	nop

000003e8 <func_800C1258>:
     3e8:	27bdffd8 	addiu	sp,sp,-40
     3ec:	afb00018 	sw	s0,24(sp)
     3f0:	00808025 	move	s0,a0
     3f4:	afbf001c 	sw	ra,28(sp)
     3f8:	afa5002c 	sw	a1,44(sp)
     3fc:	3c040000 	lui	a0,0x0
     400:	3c060000 	lui	a2,0x0
     404:	24c60050 	addiu	a2,a2,80
     408:	24840048 	addiu	a0,a0,72
     40c:	02002825 	move	a1,s0
     410:	0c000000 	jal	0 <PreRender_SetValuesSave>
     414:	24070116 	li	a3,278
     418:	3c040000 	lui	a0,0x0
     41c:	3c060000 	lui	a2,0x0
     420:	24c60068 	addiu	a2,a2,104
     424:	24840060 	addiu	a0,a0,96
     428:	8fa5002c 	lw	a1,44(sp)
     42c:	0c000000 	jal	0 <PreRender_SetValuesSave>
     430:	24070117 	li	a3,279
     434:	8fae002c 	lw	t6,44(sp)
     438:	3c040000 	lui	a0,0x0
     43c:	3c060000 	lui	a2,0x0
     440:	8dc50000 	lw	a1,0(t6)
     444:	24c60080 	addiu	a2,a2,128
     448:	24840078 	addiu	a0,a0,120
     44c:	24070119 	li	a3,281
     450:	0c000000 	jal	0 <PreRender_SetValuesSave>
     454:	afa50024 	sw	a1,36(sp)
     458:	8fa50024 	lw	a1,36(sp)
     45c:	3c0fe700 	lui	t7,0xe700
     460:	3c18ef20 	lui	t8,0xef20
     464:	00a01025 	move	v0,a1
     468:	ac4f0000 	sw	t7,0(v0)
     46c:	ac400004 	sw	zero,4(v0)
     470:	24a50008 	addiu	a1,a1,8
     474:	00a01025 	move	v0,a1
     478:	ac580000 	sw	t8,0(v0)
     47c:	ac400004 	sw	zero,4(v0)
     480:	8e190000 	lw	t9,0(s0)
     484:	24a50008 	addiu	a1,a1,8
     488:	3c01ff10 	lui	at,0xff10
     48c:	272effff 	addiu	t6,t9,-1
     490:	31cf0fff 	andi	t7,t6,0xfff
     494:	01e1c025 	or	t8,t7,at
     498:	00a01025 	move	v0,a1
     49c:	ac580000 	sw	t8,0(v0)
     4a0:	8e190010 	lw	t9,16(s0)
     4a4:	3c014080 	lui	at,0x4080
     4a8:	44810000 	mtc1	at,$f0
     4ac:	ac590004 	sw	t9,4(v0)
     4b0:	8e0e0034 	lw	t6,52(s0)
     4b4:	3c01ed00 	lui	at,0xed00
     4b8:	24a50008 	addiu	a1,a1,8
     4bc:	448e2000 	mtc1	t6,$f4
     4c0:	00a01025 	move	v0,a1
     4c4:	24a50008 	addiu	a1,a1,8
     4c8:	468021a0 	cvt.s.w	$f6,$f4
     4cc:	00004825 	move	t1,zero
     4d0:	3c1fe600 	lui	ra,0xe600
     4d4:	3c0dfd10 	lui	t5,0xfd10
     4d8:	3c0c0700 	lui	t4,0x700
     4dc:	3c0bf510 	lui	t3,0xf510
     4e0:	46003202 	mul.s	$f8,$f6,$f0
     4e4:	4600428d 	trunc.w.s	$f10,$f8
     4e8:	44185000 	mfc1	t8,$f10
     4ec:	00000000 	nop
     4f0:	33190fff 	andi	t9,t8,0xfff
     4f4:	8e180038 	lw	t8,56(s0)
     4f8:	00197300 	sll	t6,t9,0xc
     4fc:	01c17825 	or	t7,t6,at
     500:	44988000 	mtc1	t8,$f16
     504:	00000000 	nop
     508:	468084a0 	cvt.s.w	$f18,$f16
     50c:	46009102 	mul.s	$f4,$f18,$f0
     510:	4600218d 	trunc.w.s	$f6,$f4
     514:	440e3000 	mfc1	t6,$f6
     518:	00000000 	nop
     51c:	31d80fff 	andi	t8,t6,0xfff
     520:	01f8c825 	or	t9,t7,t8
     524:	ac590000 	sw	t9,0(v0)
     528:	8e0e003c 	lw	t6,60(s0)
     52c:	8e180040 	lw	t8,64(s0)
     530:	25cf0001 	addiu	t7,t6,1
     534:	448f4000 	mtc1	t7,$f8
     538:	00000000 	nop
     53c:	468042a0 	cvt.s.w	$f10,$f8
     540:	46005402 	mul.s	$f16,$f10,$f0
     544:	4600848d 	trunc.w.s	$f18,$f16
     548:	44199000 	mfc1	t9,$f18
     54c:	00000000 	nop
     550:	332e0fff 	andi	t6,t9,0xfff
     554:	27190001 	addiu	t9,t8,1
     558:	44992000 	mtc1	t9,$f4
     55c:	000e7b00 	sll	t7,t6,0xc
     560:	468021a0 	cvt.s.w	$f6,$f4
     564:	46003202 	mul.s	$f8,$f6,$f0
     568:	4600428d 	trunc.w.s	$f10,$f8
     56c:	44185000 	mfc1	t8,$f10
     570:	00000000 	nop
     574:	33190fff 	andi	t9,t8,0xfff
     578:	01f97025 	or	t6,t7,t9
     57c:	ac4e0004 	sw	t6,4(v0)
     580:	8e0f0024 	lw	t7,36(s0)
     584:	8e18002c 	lw	t8,44(s0)
     588:	030fc823 	subu	t9,t8,t7
     58c:	00197040 	sll	t6,t9,0x1
     590:	25d80002 	addiu	t8,t6,2
     594:	240f1000 	li	t7,4096
     598:	01f8001a 	div	zero,t7,t8
     59c:	8e0e0028 	lw	t6,40(s0)
     5a0:	8e190030 	lw	t9,48(s0)
     5a4:	00003012 	mflo	a2
     5a8:	032e4023 	subu	t0,t9,t6
     5ac:	17000002 	bnez	t8,5b8 <func_800C1258+0x1d0>
     5b0:	00000000 	nop
     5b4:	0007000d 	break	0x7
     5b8:	2401ffff 	li	at,-1
     5bc:	17010004 	bne	t8,at,5d0 <func_800C1258+0x1e8>
     5c0:	3c018000 	lui	at,0x8000
     5c4:	15e10002 	bne	t7,at,5d0 <func_800C1258+0x1e8>
     5c8:	00000000 	nop
     5cc:	0006000d 	break	0x6
     5d0:	25080001 	addiu	t0,t0,1
     5d4:	19000084 	blez	t0,7e8 <func_800C1258+0x400>
     5d8:	0106082a 	slt	at,t0,a2
     5dc:	10200002 	beqz	at,5e8 <func_800C1258+0x200>
     5e0:	8e020028 	lw	v0,40(s0)
     5e4:	01003025 	move	a2,t0
     5e8:	8e180008 	lw	t8,8(s0)
     5ec:	8e0f0038 	lw	t7,56(s0)
     5f0:	00493821 	addu	a3,v0,t1
     5f4:	2719ffff 	addiu	t9,t8,-1
     5f8:	332e0fff 	andi	t6,t9,0xfff
     5fc:	01e95021 	addu	t2,t7,t1
     600:	01cd7825 	or	t7,t6,t5
     604:	00a01025 	move	v0,a1
     608:	ac4f0000 	sw	t7,0(v0)
     60c:	8e180014 	lw	t8,20(s0)
     610:	24a50008 	addiu	a1,a1,8
     614:	00071880 	sll	v1,a3,0x2
     618:	ac580004 	sw	t8,4(v0)
     61c:	8e0e0024 	lw	t6,36(s0)
     620:	8e19002c 	lw	t9,44(s0)
     624:	00a01025 	move	v0,a1
     628:	ac4c0004 	sw	t4,4(v0)
     62c:	032e7823 	subu	t7,t9,t6
     630:	000fc040 	sll	t8,t7,0x1
     634:	27190009 	addiu	t9,t8,9
     638:	001970c3 	sra	t6,t9,0x3
     63c:	31cf01ff 	andi	t7,t6,0x1ff
     640:	000fc240 	sll	t8,t7,0x9
     644:	030bc825 	or	t9,t8,t3
     648:	ac590000 	sw	t9,0(v0)
     64c:	24a50008 	addiu	a1,a1,8
     650:	00a01025 	move	v0,a1
     654:	ac5f0000 	sw	ra,0(v0)
     658:	ac400004 	sw	zero,4(v0)
     65c:	8e0e0024 	lw	t6,36(s0)
     660:	3c01f400 	lui	at,0xf400
     664:	24a50008 	addiu	a1,a1,8
     668:	000e7880 	sll	t7,t6,0x2
     66c:	31f80fff 	andi	t8,t7,0xfff
     670:	0018cb00 	sll	t9,t8,0xc
     674:	03217025 	or	t6,t9,at
     678:	30630fff 	andi	v1,v1,0xfff
     67c:	01c37825 	or	t7,t6,v1
     680:	00a01025 	move	v0,a1
     684:	ac4f0000 	sw	t7,0(v0)
     688:	8e18002c 	lw	t8,44(s0)
     68c:	00e62021 	addu	a0,a3,a2
     690:	2484ffff 	addiu	a0,a0,-1
     694:	0018c880 	sll	t9,t8,0x2
     698:	332e0fff 	andi	t6,t9,0xfff
     69c:	000e7b00 	sll	t7,t6,0xc
     6a0:	00042080 	sll	a0,a0,0x2
     6a4:	30840fff 	andi	a0,a0,0xfff
     6a8:	01ecc025 	or	t8,t7,t4
     6ac:	0304c825 	or	t9,t8,a0
     6b0:	ac590004 	sw	t9,4(v0)
     6b4:	24a50008 	addiu	a1,a1,8
     6b8:	00a01025 	move	v0,a1
     6bc:	3c0ee700 	lui	t6,0xe700
     6c0:	ac4e0000 	sw	t6,0(v0)
     6c4:	ac400004 	sw	zero,4(v0)
     6c8:	8e180024 	lw	t8,36(s0)
     6cc:	8e0f002c 	lw	t7,44(s0)
     6d0:	24a50008 	addiu	a1,a1,8
     6d4:	00a01025 	move	v0,a1
     6d8:	01f8c823 	subu	t9,t7,t8
     6dc:	00197040 	sll	t6,t9,0x1
     6e0:	25cf0009 	addiu	t7,t6,9
     6e4:	000fc0c3 	sra	t8,t7,0x3
     6e8:	331901ff 	andi	t9,t8,0x1ff
     6ec:	00197240 	sll	t6,t9,0x9
     6f0:	01cb7825 	or	t7,t6,t3
     6f4:	ac4f0000 	sw	t7,0(v0)
     6f8:	ac400004 	sw	zero,4(v0)
     6fc:	8e180024 	lw	t8,36(s0)
     700:	3c01f200 	lui	at,0xf200
     704:	24a50008 	addiu	a1,a1,8
     708:	0018c880 	sll	t9,t8,0x2
     70c:	332e0fff 	andi	t6,t9,0xfff
     710:	000e7b00 	sll	t7,t6,0xc
     714:	01e1c025 	or	t8,t7,at
     718:	0303c825 	or	t9,t8,v1
     71c:	00a01025 	move	v0,a1
     720:	ac590000 	sw	t9,0(v0)
     724:	8e0e002c 	lw	t6,44(s0)
     728:	3c01e400 	lui	at,0xe400
     72c:	24a50008 	addiu	a1,a1,8
     730:	000e7880 	sll	t7,t6,0x2
     734:	31f80fff 	andi	t8,t7,0xfff
     738:	0018cb00 	sll	t9,t8,0xc
     73c:	03247025 	or	t6,t9,a0
     740:	ac4e0004 	sw	t6,4(v0)
     744:	8e0f003c 	lw	t7,60(s0)
     748:	00a01025 	move	v0,a1
     74c:	24a50008 	addiu	a1,a1,8
     750:	000fc080 	sll	t8,t7,0x2
     754:	33190fff 	andi	t9,t8,0xfff
     758:	00197300 	sll	t6,t9,0xc
     75c:	0146c021 	addu	t8,t2,a2
     760:	2719ffff 	addiu	t9,t8,-1
     764:	01c17825 	or	t7,t6,at
     768:	00197080 	sll	t6,t9,0x2
     76c:	31d80fff 	andi	t8,t6,0xfff
     770:	01f8c825 	or	t9,t7,t8
     774:	ac590000 	sw	t9,0(v0)
     778:	8e0e0034 	lw	t6,52(s0)
     77c:	01064023 	subu	t0,t0,a2
     780:	01264821 	addu	t1,t1,a2
     784:	000e7880 	sll	t7,t6,0x2
     788:	31f80fff 	andi	t8,t7,0xfff
     78c:	000a7080 	sll	t6,t2,0x2
     790:	31cf0fff 	andi	t7,t6,0xfff
     794:	0018cb00 	sll	t9,t8,0xc
     798:	032fc025 	or	t8,t9,t7
     79c:	ac580004 	sw	t8,4(v0)
     7a0:	00a01025 	move	v0,a1
     7a4:	3c0ee100 	lui	t6,0xe100
     7a8:	ac4e0000 	sw	t6,0(v0)
     7ac:	8e180024 	lw	t8,36(s0)
     7b0:	0007c940 	sll	t9,a3,0x5
     7b4:	332fffff 	andi	t7,t9,0xffff
     7b8:	00187540 	sll	t6,t8,0x15
     7bc:	01cfc025 	or	t8,t6,t7
     7c0:	ac580004 	sw	t8,4(v0)
     7c4:	24a50008 	addiu	a1,a1,8
     7c8:	00a01025 	move	v0,a1
     7cc:	3c0e1000 	lui	t6,0x1000
     7d0:	35ce0400 	ori	t6,t6,0x400
     7d4:	3c19f100 	lui	t9,0xf100
     7d8:	ac590000 	sw	t9,0(v0)
     7dc:	ac4e0004 	sw	t6,4(v0)
     7e0:	1d00ff7d 	bgtz	t0,5d8 <func_800C1258+0x1f0>
     7e4:	24a50008 	addiu	a1,a1,8
     7e8:	00a01025 	move	v0,a1
     7ec:	3c0fe700 	lui	t7,0xe700
     7f0:	ac4f0000 	sw	t7,0(v0)
     7f4:	ac400004 	sw	zero,4(v0)
     7f8:	8e180000 	lw	t8,0(s0)
     7fc:	24a50008 	addiu	a1,a1,8
     800:	3c01ff10 	lui	at,0xff10
     804:	2719ffff 	addiu	t9,t8,-1
     808:	332e0fff 	andi	t6,t9,0xfff
     80c:	01c17825 	or	t7,t6,at
     810:	00a01025 	move	v0,a1
     814:	ac4f0000 	sw	t7,0(v0)
     818:	8e180010 	lw	t8,16(s0)
     81c:	24a50008 	addiu	a1,a1,8
     820:	3c19ed00 	lui	t9,0xed00
     824:	ac580004 	sw	t8,4(v0)
     828:	00a01025 	move	v0,a1
     82c:	ac590000 	sw	t9,0(v0)
     830:	8e0e0000 	lw	t6,0(s0)
     834:	8e0f0004 	lw	t7,4(s0)
     838:	24a50008 	addiu	a1,a1,8
     83c:	448e8000 	mtc1	t6,$f16
     840:	448f4000 	mtc1	t7,$f8
     844:	468084a0 	cvt.s.w	$f18,$f16
     848:	468042a0 	cvt.s.w	$f10,$f8
     84c:	46009102 	mul.s	$f4,$f18,$f0
     850:	4600218d 	trunc.w.s	$f6,$f4
     854:	46005402 	mul.s	$f16,$f10,$f0
     858:	44183000 	mfc1	t8,$f6
     85c:	00000000 	nop
     860:	33190fff 	andi	t9,t8,0xfff
     864:	4600848d 	trunc.w.s	$f18,$f16
     868:	00197300 	sll	t6,t9,0xc
     86c:	44199000 	mfc1	t9,$f18
     870:	00000000 	nop
     874:	332f0fff 	andi	t7,t9,0xfff
     878:	01cfc025 	or	t8,t6,t7
     87c:	ac580004 	sw	t8,4(v0)
     880:	8fb9002c 	lw	t9,44(sp)
     884:	af250000 	sw	a1,0(t9)
     888:	8fbf001c 	lw	ra,28(sp)
     88c:	8fb00018 	lw	s0,24(sp)
     890:	27bd0028 	addiu	sp,sp,40
     894:	03e00008 	jr	ra
     898:	00000000 	nop

0000089c <func_800C170C>:
     89c:	27bdffd8 	addiu	sp,sp,-40
     8a0:	afb00018 	sw	s0,24(sp)
     8a4:	00808025 	move	s0,a0
     8a8:	afa60030 	sw	a2,48(sp)
     8ac:	afbf001c 	sw	ra,28(sp)
     8b0:	afa5002c 	sw	a1,44(sp)
     8b4:	afa70034 	sw	a3,52(sp)
     8b8:	3c060000 	lui	a2,0x0
     8bc:	3c040000 	lui	a0,0x0
     8c0:	24840090 	addiu	a0,a0,144
     8c4:	24c60098 	addiu	a2,a2,152
     8c8:	24070157 	li	a3,343
     8cc:	0c000000 	jal	0 <PreRender_SetValuesSave>
     8d0:	02002825 	move	a1,s0
     8d4:	3c040000 	lui	a0,0x0
     8d8:	3c060000 	lui	a2,0x0
     8dc:	24c600b0 	addiu	a2,a2,176
     8e0:	248400a8 	addiu	a0,a0,168
     8e4:	8fa5002c 	lw	a1,44(sp)
     8e8:	0c000000 	jal	0 <PreRender_SetValuesSave>
     8ec:	24070158 	li	a3,344
     8f0:	8fae002c 	lw	t6,44(sp)
     8f4:	3c040000 	lui	a0,0x0
     8f8:	3c060000 	lui	a2,0x0
     8fc:	8dc50000 	lw	a1,0(t6)
     900:	24c600c8 	addiu	a2,a2,200
     904:	248400c0 	addiu	a0,a0,192
     908:	2407015a 	li	a3,346
     90c:	0c000000 	jal	0 <PreRender_SetValuesSave>
     910:	afa50024 	sw	a1,36(sp)
     914:	8fa50024 	lw	a1,36(sp)
     918:	3c0fe700 	lui	t7,0xe700
     91c:	3c18ef00 	lui	t8,0xef00
     920:	00a01025 	move	v0,a1
     924:	ac4f0000 	sw	t7,0(v0)
     928:	ac400004 	sw	zero,4(v0)
     92c:	24a50008 	addiu	a1,a1,8
     930:	00a01025 	move	v0,a1
     934:	3c190f0a 	lui	t9,0xf0a
     938:	37394004 	ori	t9,t9,0x4004
     93c:	37180cf0 	ori	t8,t8,0xcf0
     940:	ac580000 	sw	t8,0(v0)
     944:	ac590004 	sw	t9,4(v0)
     948:	24a50008 	addiu	a1,a1,8
     94c:	00a01025 	move	v0,a1
     950:	3c0efb00 	lui	t6,0xfb00
     954:	ac4e0000 	sw	t6,0(v0)
     958:	8fae003c 	lw	t6,60(sp)
     95c:	8fb80038 	lw	t8,56(sp)
     960:	24a50008 	addiu	a1,a1,8
     964:	31cf00ff 	andi	t7,t6,0xff
     968:	0018ce00 	sll	t9,t8,0x18
     96c:	000fc400 	sll	t8,t7,0x10
     970:	8faf0040 	lw	t7,64(sp)
     974:	03387025 	or	t6,t9,t8
     978:	3c01ff10 	lui	at,0xff10
     97c:	31f900ff 	andi	t9,t7,0xff
     980:	0019c200 	sll	t8,t9,0x8
     984:	8fb90044 	lw	t9,68(sp)
     988:	01d87825 	or	t7,t6,t8
     98c:	00004025 	move	t0,zero
     990:	332e00ff 	andi	t6,t9,0xff
     994:	01eec025 	or	t8,t7,t6
     998:	ac580004 	sw	t8,4(v0)
     99c:	00a01025 	move	v0,a1
     9a0:	3c0ffffc 	lui	t7,0xfffc
     9a4:	3c19fcff 	lui	t9,0xfcff
     9a8:	3739ffff 	ori	t9,t9,0xffff
     9ac:	35effc7e 	ori	t7,t7,0xfc7e
     9b0:	ac4f0004 	sw	t7,4(v0)
     9b4:	ac590000 	sw	t9,0(v0)
     9b8:	24a50008 	addiu	a1,a1,8
     9bc:	00a01025 	move	v0,a1
     9c0:	3c0efc12 	lui	t6,0xfc12
     9c4:	35cefe25 	ori	t6,t6,0xfe25
     9c8:	2418fdfe 	li	t8,-514
     9cc:	ac580004 	sw	t8,4(v0)
     9d0:	ac4e0000 	sw	t6,0(v0)
     9d4:	8e190000 	lw	t9,0(s0)
     9d8:	24a50008 	addiu	a1,a1,8
     9dc:	00a01025 	move	v0,a1
     9e0:	272fffff 	addiu	t7,t9,-1
     9e4:	31ee0fff 	andi	t6,t7,0xfff
     9e8:	01c1c025 	or	t8,t6,at
     9ec:	ac580000 	sw	t8,0(v0)
     9f0:	8fb90034 	lw	t9,52(sp)
     9f4:	24a50008 	addiu	a1,a1,8
     9f8:	3c0fed00 	lui	t7,0xed00
     9fc:	ac590004 	sw	t9,4(v0)
     a00:	00a01025 	move	v0,a1
     a04:	ac4f0000 	sw	t7,0(v0)
     a08:	8e0e0000 	lw	t6,0(s0)
     a0c:	8e180004 	lw	t8,4(s0)
     a10:	3c014080 	lui	at,0x4080
     a14:	448e2000 	mtc1	t6,$f4
     a18:	44988000 	mtc1	t8,$f16
     a1c:	44810000 	mtc1	at,$f0
     a20:	468021a0 	cvt.s.w	$f6,$f4
     a24:	24a50008 	addiu	a1,a1,8
     a28:	3c1f0700 	lui	ra,0x700
     a2c:	468084a0 	cvt.s.w	$f18,$f16
     a30:	46003202 	mul.s	$f8,$f6,$f0
     a34:	4600428d 	trunc.w.s	$f10,$f8
     a38:	46009102 	mul.s	$f4,$f18,$f0
     a3c:	44195000 	mfc1	t9,$f10
     a40:	00000000 	nop
     a44:	332f0fff 	andi	t7,t9,0xfff
     a48:	4600218d 	trunc.w.s	$f6,$f4
     a4c:	000f7300 	sll	t6,t7,0xc
     a50:	440f3000 	mfc1	t7,$f6
     a54:	00000000 	nop
     a58:	31f80fff 	andi	t8,t7,0xfff
     a5c:	01d8c825 	or	t9,t6,t8
     a60:	ac590004 	sw	t9,4(v0)
     a64:	8e0f0000 	lw	t7,0(s0)
     a68:	24181000 	li	t8,4096
     a6c:	8e0b0004 	lw	t3,4(s0)
     a70:	000f7040 	sll	t6,t7,0x1
     a74:	030e001a 	div	zero,t8,t6
     a78:	00006812 	mflo	t5
     a7c:	15c00002 	bnez	t6,a88 <func_800C170C+0x1ec>
     a80:	00000000 	nop
     a84:	0007000d 	break	0x7
     a88:	2401ffff 	li	at,-1
     a8c:	15c10004 	bne	t6,at,aa0 <func_800C170C+0x204>
     a90:	3c018000 	lui	at,0x8000
     a94:	17010002 	bne	t8,at,aa0 <func_800C170C+0x204>
     a98:	00000000 	nop
     a9c:	0006000d 	break	0x6
     aa0:	59600060 	blezl	t3,c24 <func_800C170C+0x388>
     aa4:	00a01025 	move	v0,a1
     aa8:	8e030000 	lw	v1,0(s0)
     aac:	016d082a 	slt	at,t3,t5
     ab0:	00a01025 	move	v0,a1
     ab4:	2463ffff 	addiu	v1,v1,-1
     ab8:	10200002 	beqz	at,ac4 <func_800C170C+0x228>
     abc:	00605025 	move	t2,v1
     ac0:	01606825 	move	t5,t3
     ac4:	30790fff 	andi	t9,v1,0xfff
     ac8:	3c01fd10 	lui	at,0xfd10
     acc:	03217825 	or	t7,t9,at
     ad0:	ac4f0000 	sw	t7,0(v0)
     ad4:	8fb80030 	lw	t8,48(sp)
     ad8:	000a3840 	sll	a3,t2,0x1
     adc:	24e70009 	addiu	a3,a3,9
     ae0:	000738c3 	sra	a3,a3,0x3
     ae4:	24a50008 	addiu	a1,a1,8
     ae8:	ac580004 	sw	t8,4(v0)
     aec:	00a01025 	move	v0,a1
     af0:	30e701ff 	andi	a3,a3,0x1ff
     af4:	00073a40 	sll	a3,a3,0x9
     af8:	3c01f510 	lui	at,0xf510
     afc:	00e13825 	or	a3,a3,at
     b00:	ac470000 	sw	a3,0(v0)
     b04:	ac5f0004 	sw	ra,4(v0)
     b08:	24a50008 	addiu	a1,a1,8
     b0c:	00a01025 	move	v0,a1
     b10:	000a1880 	sll	v1,t2,0x2
     b14:	3c0ee600 	lui	t6,0xe600
     b18:	010d6021 	addu	t4,t0,t5
     b1c:	2589ffff 	addiu	t1,t4,-1
     b20:	ac4e0000 	sw	t6,0(v0)
     b24:	30630fff 	andi	v1,v1,0xfff
     b28:	ac400004 	sw	zero,4(v0)
     b2c:	24a50008 	addiu	a1,a1,8
     b30:	00a01025 	move	v0,a1
     b34:	00031b00 	sll	v1,v1,0xc
     b38:	00093080 	sll	a2,t1,0x2
     b3c:	00082080 	sll	a0,t0,0x2
     b40:	30840fff 	andi	a0,a0,0xfff
     b44:	30c60fff 	andi	a2,a2,0xfff
     b48:	007f7825 	or	t7,v1,ra
     b4c:	3c01f400 	lui	at,0xf400
     b50:	0081c825 	or	t9,a0,at
     b54:	01e6c025 	or	t8,t7,a2
     b58:	ac580004 	sw	t8,4(v0)
     b5c:	ac590000 	sw	t9,0(v0)
     b60:	24a50008 	addiu	a1,a1,8
     b64:	00a01025 	move	v0,a1
     b68:	3c0ee700 	lui	t6,0xe700
     b6c:	ac4e0000 	sw	t6,0(v0)
     b70:	ac400004 	sw	zero,4(v0)
     b74:	24a50008 	addiu	a1,a1,8
     b78:	00a01025 	move	v0,a1
     b7c:	ac470000 	sw	a3,0(v0)
     b80:	ac400004 	sw	zero,4(v0)
     b84:	24a50008 	addiu	a1,a1,8
     b88:	3c01f200 	lui	at,0xf200
     b8c:	0081c825 	or	t9,a0,at
     b90:	00a01025 	move	v0,a1
     b94:	25580001 	addiu	t8,t2,1
     b98:	ac590000 	sw	t9,0(v0)
     b9c:	00667825 	or	t7,v1,a2
     ba0:	00187080 	sll	t6,t8,0x2
     ba4:	ac4f0004 	sw	t7,4(v0)
     ba8:	31d90fff 	andi	t9,t6,0xfff
     bac:	00197b00 	sll	t7,t9,0xc
     bb0:	24a50008 	addiu	a1,a1,8
     bb4:	252e0001 	addiu	t6,t1,1
     bb8:	3c01e400 	lui	at,0xe400
     bbc:	01e1c025 	or	t8,t7,at
     bc0:	000ec880 	sll	t9,t6,0x2
     bc4:	00a01025 	move	v0,a1
     bc8:	332f0fff 	andi	t7,t9,0xfff
     bcc:	030f7025 	or	t6,t8,t7
     bd0:	ac4e0000 	sw	t6,0(v0)
     bd4:	ac440004 	sw	a0,4(v0)
     bd8:	24a50008 	addiu	a1,a1,8
     bdc:	00a01025 	move	v0,a1
     be0:	0008c140 	sll	t8,t0,0x5
     be4:	3c19e100 	lui	t9,0xe100
     be8:	ac590000 	sw	t9,0(v0)
     bec:	330fffff 	andi	t7,t8,0xffff
     bf0:	ac4f0004 	sw	t7,4(v0)
     bf4:	24a50008 	addiu	a1,a1,8
     bf8:	00a01025 	move	v0,a1
     bfc:	3c190400 	lui	t9,0x400
     c00:	37390400 	ori	t9,t9,0x400
     c04:	3c0ef100 	lui	t6,0xf100
     c08:	016d5823 	subu	t3,t3,t5
     c0c:	ac4e0000 	sw	t6,0(v0)
     c10:	ac590004 	sw	t9,4(v0)
     c14:	24a50008 	addiu	a1,a1,8
     c18:	1d60ffa3 	bgtz	t3,aa8 <func_800C170C+0x20c>
     c1c:	01804025 	move	t0,t4
     c20:	00a01025 	move	v0,a1
     c24:	3c18e700 	lui	t8,0xe700
     c28:	ac580000 	sw	t8,0(v0)
     c2c:	ac400004 	sw	zero,4(v0)
     c30:	8e0f0000 	lw	t7,0(s0)
     c34:	24a50008 	addiu	a1,a1,8
     c38:	3c01ff10 	lui	at,0xff10
     c3c:	25eeffff 	addiu	t6,t7,-1
     c40:	31d90fff 	andi	t9,t6,0xfff
     c44:	0321c025 	or	t8,t9,at
     c48:	00a01025 	move	v0,a1
     c4c:	ac580000 	sw	t8,0(v0)
     c50:	8e0f0010 	lw	t7,16(s0)
     c54:	24a50008 	addiu	a1,a1,8
     c58:	ac4f0004 	sw	t7,4(v0)
     c5c:	8fae002c 	lw	t6,44(sp)
     c60:	adc50000 	sw	a1,0(t6)
     c64:	8fbf001c 	lw	ra,28(sp)
     c68:	8fb00018 	lw	s0,24(sp)
     c6c:	27bd0028 	addiu	sp,sp,40
     c70:	03e00008 	jr	ra
     c74:	00000000 	nop

00000c78 <func_800C1AE8>:
     c78:	27bdffd8 	addiu	sp,sp,-40
     c7c:	afbf0024 	sw	ra,36(sp)
     c80:	240e00ff 	li	t6,255
     c84:	240f00ff 	li	t7,255
     c88:	241800ff 	li	t8,255
     c8c:	241900ff 	li	t9,255
     c90:	afb9001c 	sw	t9,28(sp)
     c94:	afb80018 	sw	t8,24(sp)
     c98:	afaf0014 	sw	t7,20(sp)
     c9c:	0c000000 	jal	0 <PreRender_SetValuesSave>
     ca0:	afae0010 	sw	t6,16(sp)
     ca4:	8fbf0024 	lw	ra,36(sp)
     ca8:	27bd0028 	addiu	sp,sp,40
     cac:	03e00008 	jr	ra
     cb0:	00000000 	nop

00000cb4 <func_800C1B24>:
     cb4:	27bdffd8 	addiu	sp,sp,-40
     cb8:	afb00018 	sw	s0,24(sp)
     cbc:	00808025 	move	s0,a0
     cc0:	afa60030 	sw	a2,48(sp)
     cc4:	afbf001c 	sw	ra,28(sp)
     cc8:	afa5002c 	sw	a1,44(sp)
     ccc:	afa70034 	sw	a3,52(sp)
     cd0:	3c060000 	lui	a2,0x0
     cd4:	3c040000 	lui	a0,0x0
     cd8:	248400d8 	addiu	a0,a0,216
     cdc:	24c600e0 	addiu	a2,a2,224
     ce0:	240701a6 	li	a3,422
     ce4:	0c000000 	jal	0 <PreRender_SetValuesSave>
     ce8:	02002825 	move	a1,s0
     cec:	3c040000 	lui	a0,0x0
     cf0:	3c060000 	lui	a2,0x0
     cf4:	24c600f8 	addiu	a2,a2,248
     cf8:	248400f0 	addiu	a0,a0,240
     cfc:	8fa5002c 	lw	a1,44(sp)
     d00:	0c000000 	jal	0 <PreRender_SetValuesSave>
     d04:	240701a7 	li	a3,423
     d08:	8fae002c 	lw	t6,44(sp)
     d0c:	3c040000 	lui	a0,0x0
     d10:	3c060000 	lui	a2,0x0
     d14:	8dc50000 	lw	a1,0(t6)
     d18:	24c60110 	addiu	a2,a2,272
     d1c:	24840108 	addiu	a0,a0,264
     d20:	240701a9 	li	a3,425
     d24:	0c000000 	jal	0 <PreRender_SetValuesSave>
     d28:	afa50024 	sw	a1,36(sp)
     d2c:	8fa50024 	lw	a1,36(sp)
     d30:	3c0fe700 	lui	t7,0xe700
     d34:	3c18ef00 	lui	t8,0xef00
     d38:	00a01025 	move	v0,a1
     d3c:	ac4f0000 	sw	t7,0(v0)
     d40:	ac400004 	sw	zero,4(v0)
     d44:	24a50008 	addiu	a1,a1,8
     d48:	00a01025 	move	v0,a1
     d4c:	3c190f0a 	lui	t9,0xf0a
     d50:	37390004 	ori	t9,t9,0x4
     d54:	37180cf0 	ori	t8,t8,0xcf0
     d58:	ac580000 	sw	t8,0(v0)
     d5c:	ac590004 	sw	t9,4(v0)
     d60:	24a50008 	addiu	a1,a1,8
     d64:	00a01025 	move	v0,a1
     d68:	3c0ffffc 	lui	t7,0xfffc
     d6c:	3c0efcff 	lui	t6,0xfcff
     d70:	35ceffff 	ori	t6,t6,0xffff
     d74:	35effe7f 	ori	t7,t7,0xfe7f
     d78:	ac4f0004 	sw	t7,4(v0)
     d7c:	ac4e0000 	sw	t6,0(v0)
     d80:	8e180000 	lw	t8,0(s0)
     d84:	24a50008 	addiu	a1,a1,8
     d88:	3c01ff88 	lui	at,0xff88
     d8c:	2719ffff 	addiu	t9,t8,-1
     d90:	332e0fff 	andi	t6,t9,0xfff
     d94:	01c17825 	or	t7,t6,at
     d98:	00a01025 	move	v0,a1
     d9c:	ac4f0000 	sw	t7,0(v0)
     da0:	8fb80034 	lw	t8,52(sp)
     da4:	24a50008 	addiu	a1,a1,8
     da8:	3c19ed00 	lui	t9,0xed00
     dac:	ac580004 	sw	t8,4(v0)
     db0:	00a01025 	move	v0,a1
     db4:	ac590000 	sw	t9,0(v0)
     db8:	8e0e0000 	lw	t6,0(s0)
     dbc:	8e0f0004 	lw	t7,4(s0)
     dc0:	3c014080 	lui	at,0x4080
     dc4:	448e2000 	mtc1	t6,$f4
     dc8:	448f8000 	mtc1	t7,$f16
     dcc:	44810000 	mtc1	at,$f0
     dd0:	468021a0 	cvt.s.w	$f6,$f4
     dd4:	24a50008 	addiu	a1,a1,8
     dd8:	00004025 	move	t0,zero
     ddc:	3c1f0700 	lui	ra,0x700
     de0:	468084a0 	cvt.s.w	$f18,$f16
     de4:	46003202 	mul.s	$f8,$f6,$f0
     de8:	4600428d 	trunc.w.s	$f10,$f8
     dec:	46009102 	mul.s	$f4,$f18,$f0
     df0:	44185000 	mfc1	t8,$f10
     df4:	00000000 	nop
     df8:	33190fff 	andi	t9,t8,0xfff
     dfc:	4600218d 	trunc.w.s	$f6,$f4
     e00:	00197300 	sll	t6,t9,0xc
     e04:	44193000 	mfc1	t9,$f6
     e08:	00000000 	nop
     e0c:	332f0fff 	andi	t7,t9,0xfff
     e10:	01cfc025 	or	t8,t6,t7
     e14:	ac580004 	sw	t8,4(v0)
     e18:	8e190000 	lw	t9,0(s0)
     e1c:	240f1000 	li	t7,4096
     e20:	8e0b0004 	lw	t3,4(s0)
     e24:	00197040 	sll	t6,t9,0x1
     e28:	01ee001a 	div	zero,t7,t6
     e2c:	00006812 	mflo	t5
     e30:	15c00002 	bnez	t6,e3c <func_800C1B24+0x188>
     e34:	00000000 	nop
     e38:	0007000d 	break	0x7
     e3c:	2401ffff 	li	at,-1
     e40:	15c10004 	bne	t6,at,e54 <func_800C1B24+0x1a0>
     e44:	3c018000 	lui	at,0x8000
     e48:	15e10002 	bne	t7,at,e54 <func_800C1B24+0x1a0>
     e4c:	00000000 	nop
     e50:	0006000d 	break	0x6
     e54:	59600060 	blezl	t3,fd8 <func_800C1B24+0x324>
     e58:	00a01025 	move	v0,a1
     e5c:	8e030000 	lw	v1,0(s0)
     e60:	016d082a 	slt	at,t3,t5
     e64:	00a01025 	move	v0,a1
     e68:	2463ffff 	addiu	v1,v1,-1
     e6c:	10200002 	beqz	at,e78 <func_800C1B24+0x1c4>
     e70:	00605025 	move	t2,v1
     e74:	01606825 	move	t5,t3
     e78:	30780fff 	andi	t8,v1,0xfff
     e7c:	3c01fd70 	lui	at,0xfd70
     e80:	0301c825 	or	t9,t8,at
     e84:	ac590000 	sw	t9,0(v0)
     e88:	8faf0030 	lw	t7,48(sp)
     e8c:	000a3840 	sll	a3,t2,0x1
     e90:	24e70009 	addiu	a3,a3,9
     e94:	000738c3 	sra	a3,a3,0x3
     e98:	24a50008 	addiu	a1,a1,8
     e9c:	ac4f0004 	sw	t7,4(v0)
     ea0:	00a01025 	move	v0,a1
     ea4:	30e701ff 	andi	a3,a3,0x1ff
     ea8:	00073a40 	sll	a3,a3,0x9
     eac:	3c01f570 	lui	at,0xf570
     eb0:	00e13825 	or	a3,a3,at
     eb4:	ac470000 	sw	a3,0(v0)
     eb8:	ac5f0004 	sw	ra,4(v0)
     ebc:	24a50008 	addiu	a1,a1,8
     ec0:	00a01025 	move	v0,a1
     ec4:	000a1880 	sll	v1,t2,0x2
     ec8:	3c0ee600 	lui	t6,0xe600
     ecc:	010d6021 	addu	t4,t0,t5
     ed0:	2589ffff 	addiu	t1,t4,-1
     ed4:	ac4e0000 	sw	t6,0(v0)
     ed8:	30630fff 	andi	v1,v1,0xfff
     edc:	ac400004 	sw	zero,4(v0)
     ee0:	24a50008 	addiu	a1,a1,8
     ee4:	00a01025 	move	v0,a1
     ee8:	00031b00 	sll	v1,v1,0xc
     eec:	00093080 	sll	a2,t1,0x2
     ef0:	00082080 	sll	a0,t0,0x2
     ef4:	30840fff 	andi	a0,a0,0xfff
     ef8:	30c60fff 	andi	a2,a2,0xfff
     efc:	007fc825 	or	t9,v1,ra
     f00:	3c01f400 	lui	at,0xf400
     f04:	0081c025 	or	t8,a0,at
     f08:	03267825 	or	t7,t9,a2
     f0c:	ac4f0004 	sw	t7,4(v0)
     f10:	ac580000 	sw	t8,0(v0)
     f14:	24a50008 	addiu	a1,a1,8
     f18:	00a01025 	move	v0,a1
     f1c:	3c0ee700 	lui	t6,0xe700
     f20:	ac4e0000 	sw	t6,0(v0)
     f24:	ac400004 	sw	zero,4(v0)
     f28:	24a50008 	addiu	a1,a1,8
     f2c:	00a01025 	move	v0,a1
     f30:	ac470000 	sw	a3,0(v0)
     f34:	ac400004 	sw	zero,4(v0)
     f38:	24a50008 	addiu	a1,a1,8
     f3c:	3c01f200 	lui	at,0xf200
     f40:	0081c025 	or	t8,a0,at
     f44:	00a01025 	move	v0,a1
     f48:	254f0001 	addiu	t7,t2,1
     f4c:	ac580000 	sw	t8,0(v0)
     f50:	0066c825 	or	t9,v1,a2
     f54:	000f7080 	sll	t6,t7,0x2
     f58:	ac590004 	sw	t9,4(v0)
     f5c:	31d80fff 	andi	t8,t6,0xfff
     f60:	0018cb00 	sll	t9,t8,0xc
     f64:	24a50008 	addiu	a1,a1,8
     f68:	252e0001 	addiu	t6,t1,1
     f6c:	3c01e400 	lui	at,0xe400
     f70:	03217825 	or	t7,t9,at
     f74:	000ec080 	sll	t8,t6,0x2
     f78:	00a01025 	move	v0,a1
     f7c:	33190fff 	andi	t9,t8,0xfff
     f80:	01f97025 	or	t6,t7,t9
     f84:	ac4e0000 	sw	t6,0(v0)
     f88:	ac440004 	sw	a0,4(v0)
     f8c:	24a50008 	addiu	a1,a1,8
     f90:	00a01025 	move	v0,a1
     f94:	00087940 	sll	t7,t0,0x5
     f98:	3c18e100 	lui	t8,0xe100
     f9c:	ac580000 	sw	t8,0(v0)
     fa0:	31f9ffff 	andi	t9,t7,0xffff
     fa4:	ac590004 	sw	t9,4(v0)
     fa8:	24a50008 	addiu	a1,a1,8
     fac:	00a01025 	move	v0,a1
     fb0:	3c180400 	lui	t8,0x400
     fb4:	37180400 	ori	t8,t8,0x400
     fb8:	3c0ef100 	lui	t6,0xf100
     fbc:	016d5823 	subu	t3,t3,t5
     fc0:	ac4e0000 	sw	t6,0(v0)
     fc4:	ac580004 	sw	t8,4(v0)
     fc8:	24a50008 	addiu	a1,a1,8
     fcc:	1d60ffa3 	bgtz	t3,e5c <func_800C1B24+0x1a8>
     fd0:	01804025 	move	t0,t4
     fd4:	00a01025 	move	v0,a1
     fd8:	3c0fe700 	lui	t7,0xe700
     fdc:	ac4f0000 	sw	t7,0(v0)
     fe0:	ac400004 	sw	zero,4(v0)
     fe4:	8e190000 	lw	t9,0(s0)
     fe8:	24a50008 	addiu	a1,a1,8
     fec:	3c01ff10 	lui	at,0xff10
     ff0:	272effff 	addiu	t6,t9,-1
     ff4:	31d80fff 	andi	t8,t6,0xfff
     ff8:	03017825 	or	t7,t8,at
     ffc:	00a01025 	move	v0,a1
    1000:	ac4f0000 	sw	t7,0(v0)
    1004:	8e190010 	lw	t9,16(s0)
    1008:	24a50008 	addiu	a1,a1,8
    100c:	ac590004 	sw	t9,4(v0)
    1010:	8fae002c 	lw	t6,44(sp)
    1014:	adc50000 	sw	a1,0(t6)
    1018:	8fbf001c 	lw	ra,28(sp)
    101c:	8fb00018 	lw	s0,24(sp)
    1020:	27bd0028 	addiu	sp,sp,40
    1024:	03e00008 	jr	ra
    1028:	00000000 	nop

0000102c <func_800C1E9C>:
    102c:	27bdffe0 	addiu	sp,sp,-32
    1030:	afb00018 	sw	s0,24(sp)
    1034:	00808025 	move	s0,a0
    1038:	afbf001c 	sw	ra,28(sp)
    103c:	afa50024 	sw	a1,36(sp)
    1040:	3c040000 	lui	a0,0x0
    1044:	3c060000 	lui	a2,0x0
    1048:	24c60130 	addiu	a2,a2,304
    104c:	24840120 	addiu	a0,a0,288
    1050:	8e050020 	lw	a1,32(s0)
    1054:	0c000000 	jal	0 <PreRender_SetValuesSave>
    1058:	240701e1 	li	a3,481
    105c:	3c040000 	lui	a0,0x0
    1060:	3c060000 	lui	a2,0x0
    1064:	24c6014c 	addiu	a2,a2,332
    1068:	24840140 	addiu	a0,a0,320
    106c:	8e05001c 	lw	a1,28(s0)
    1070:	0c000000 	jal	0 <PreRender_SetValuesSave>
    1074:	240701e2 	li	a3,482
    1078:	8e070020 	lw	a3,32(s0)
    107c:	50e00008 	beqzl	a3,10a0 <func_800C1E9C+0x74>
    1080:	8fbf001c 	lw	ra,28(sp)
    1084:	8e06001c 	lw	a2,28(s0)
    1088:	02002025 	move	a0,s0
    108c:	50c00004 	beqzl	a2,10a0 <func_800C1E9C+0x74>
    1090:	8fbf001c 	lw	ra,28(sp)
    1094:	0c000000 	jal	0 <PreRender_SetValuesSave>
    1098:	8fa50024 	lw	a1,36(sp)
    109c:	8fbf001c 	lw	ra,28(sp)
    10a0:	8fb00018 	lw	s0,24(sp)
    10a4:	27bd0020 	addiu	sp,sp,32
    10a8:	03e00008 	jr	ra
    10ac:	00000000 	nop

000010b0 <func_800C1F20>:
    10b0:	27bdffe0 	addiu	sp,sp,-32
    10b4:	afb00018 	sw	s0,24(sp)
    10b8:	00808025 	move	s0,a0
    10bc:	afbf001c 	sw	ra,28(sp)
    10c0:	afa50024 	sw	a1,36(sp)
    10c4:	3c040000 	lui	a0,0x0
    10c8:	3c060000 	lui	a2,0x0
    10cc:	24c6016c 	addiu	a2,a2,364
    10d0:	2484015c 	addiu	a0,a0,348
    10d4:	8e050014 	lw	a1,20(s0)
    10d8:	0c000000 	jal	0 <PreRender_SetValuesSave>
    10dc:	240701ef 	li	a3,495
    10e0:	3c040000 	lui	a0,0x0
    10e4:	3c060000 	lui	a2,0x0
    10e8:	24c60188 	addiu	a2,a2,392
    10ec:	2484017c 	addiu	a0,a0,380
    10f0:	8e050010 	lw	a1,16(s0)
    10f4:	0c000000 	jal	0 <PreRender_SetValuesSave>
    10f8:	240701f0 	li	a3,496
    10fc:	8e070014 	lw	a3,20(s0)
    1100:	50e00008 	beqzl	a3,1124 <func_800C1F20+0x74>
    1104:	8fbf001c 	lw	ra,28(sp)
    1108:	8e060010 	lw	a2,16(s0)
    110c:	02002025 	move	a0,s0
    1110:	50c00004 	beqzl	a2,1124 <func_800C1F20+0x74>
    1114:	8fbf001c 	lw	ra,28(sp)
    1118:	0c000000 	jal	0 <PreRender_SetValuesSave>
    111c:	8fa50024 	lw	a1,36(sp)
    1120:	8fbf001c 	lw	ra,28(sp)
    1124:	8fb00018 	lw	s0,24(sp)
    1128:	27bd0020 	addiu	sp,sp,32
    112c:	03e00008 	jr	ra
    1130:	00000000 	nop

00001134 <func_800C1FA4>:
    1134:	8ca30000 	lw	v1,0(a1)
    1138:	3c06e700 	lui	a2,0xe700
    113c:	3c0ef900 	lui	t6,0xf900
    1140:	ac660000 	sw	a2,0(v1)
    1144:	24620008 	addiu	v0,v1,8
    1148:	ac600004 	sw	zero,4(v1)
    114c:	00401825 	move	v1,v0
    1150:	240fff08 	li	t7,-248
    1154:	ac6f0004 	sw	t7,4(v1)
    1158:	ac6e0000 	sw	t6,0(v1)
    115c:	24420008 	addiu	v0,v0,8
    1160:	00401825 	move	v1,v0
    1164:	3c18ee00 	lui	t8,0xee00
    1168:	2419ffff 	li	t9,-1
    116c:	ac790004 	sw	t9,4(v1)
    1170:	ac780000 	sw	t8,0(v1)
    1174:	24420008 	addiu	v0,v0,8
    1178:	00401825 	move	v1,v0
    117c:	3c08ef00 	lui	t0,0xef00
    1180:	3c090fa5 	lui	t1,0xfa5
    1184:	35294044 	ori	t1,t1,0x4044
    1188:	35080cf0 	ori	t0,t0,0xcf0
    118c:	ac680000 	sw	t0,0(v1)
    1190:	ac690004 	sw	t1,4(v1)
    1194:	24420008 	addiu	v0,v0,8
    1198:	00401825 	move	v1,v0
    119c:	3c0aed00 	lui	t2,0xed00
    11a0:	ac6a0000 	sw	t2,0(v1)
    11a4:	8c8b0000 	lw	t3,0(a0)
    11a8:	8c980004 	lw	t8,4(a0)
    11ac:	3c014080 	lui	at,0x4080
    11b0:	448b2000 	mtc1	t3,$f4
    11b4:	44988000 	mtc1	t8,$f16
    11b8:	44810000 	mtc1	at,$f0
    11bc:	468021a0 	cvt.s.w	$f6,$f4
    11c0:	24420008 	addiu	v0,v0,8
    11c4:	3c01f600 	lui	at,0xf600
    11c8:	468084a0 	cvt.s.w	$f18,$f16
    11cc:	46003202 	mul.s	$f8,$f6,$f0
    11d0:	00000000 	nop
    11d4:	46009102 	mul.s	$f4,$f18,$f0
    11d8:	4600428d 	trunc.w.s	$f10,$f8
    11dc:	4600218d 	trunc.w.s	$f6,$f4
    11e0:	440d5000 	mfc1	t5,$f10
    11e4:	44083000 	mfc1	t0,$f6
    11e8:	31ae0fff 	andi	t6,t5,0xfff
    11ec:	000e7b00 	sll	t7,t6,0xc
    11f0:	31090fff 	andi	t1,t0,0xfff
    11f4:	01e95025 	or	t2,t7,t1
    11f8:	ac6a0004 	sw	t2,4(v1)
    11fc:	8c8b0000 	lw	t3,0(a0)
    1200:	8c980004 	lw	t8,4(a0)
    1204:	00401825 	move	v1,v0
    1208:	316c03ff 	andi	t4,t3,0x3ff
    120c:	000c6b80 	sll	t5,t4,0xe
    1210:	331903ff 	andi	t9,t8,0x3ff
    1214:	00194080 	sll	t0,t9,0x2
    1218:	01a17025 	or	t6,t5,at
    121c:	01c87825 	or	t7,t6,t0
    1220:	ac6f0000 	sw	t7,0(v1)
    1224:	ac600004 	sw	zero,4(v1)
    1228:	24420008 	addiu	v0,v0,8
    122c:	00401825 	move	v1,v0
    1230:	ac660000 	sw	a2,0(v1)
    1234:	ac600004 	sw	zero,4(v1)
    1238:	24420008 	addiu	v0,v0,8
    123c:	03e00008 	jr	ra
    1240:	aca20000 	sw	v0,0(a1)

00001244 <func_800C20B4>:
    1244:	27bdffe0 	addiu	sp,sp,-32
    1248:	afbf001c 	sw	ra,28(sp)
    124c:	afb00018 	sw	s0,24(sp)
    1250:	00808025 	move	s0,a0
    1254:	0c000000 	jal	0 <PreRender_SetValuesSave>
    1258:	afa50024 	sw	a1,36(sp)
    125c:	3c040000 	lui	a0,0x0
    1260:	3c060000 	lui	a2,0x0
    1264:	24c601a8 	addiu	a2,a2,424
    1268:	24840198 	addiu	a0,a0,408
    126c:	8e050018 	lw	a1,24(s0)
    1270:	0c000000 	jal	0 <PreRender_SetValuesSave>
    1274:	24070214 	li	a3,532
    1278:	8e070018 	lw	a3,24(s0)
    127c:	02002025 	move	a0,s0
    1280:	8fa50024 	lw	a1,36(sp)
    1284:	50e00004 	beqzl	a3,1298 <func_800C20B4+0x54>
    1288:	8fbf001c 	lw	ra,28(sp)
    128c:	0c000000 	jal	0 <PreRender_SetValuesSave>
    1290:	8e060010 	lw	a2,16(s0)
    1294:	8fbf001c 	lw	ra,28(sp)
    1298:	8fb00018 	lw	s0,24(sp)
    129c:	27bd0020 	addiu	sp,sp,32
    12a0:	03e00008 	jr	ra
    12a4:	00000000 	nop

000012a8 <func_800C2118>:
    12a8:	27bdffe8 	addiu	sp,sp,-24
    12ac:	afbf0014 	sw	ra,20(sp)
    12b0:	8c87001c 	lw	a3,28(a0)
    12b4:	0c000000 	jal	0 <PreRender_SetValuesSave>
    12b8:	8c860020 	lw	a2,32(a0)
    12bc:	8fbf0014 	lw	ra,20(sp)
    12c0:	27bd0018 	addiu	sp,sp,24
    12c4:	03e00008 	jr	ra
    12c8:	00000000 	nop

000012cc <func_800C213C>:
    12cc:	27bdffc0 	addiu	sp,sp,-64
    12d0:	afbf0034 	sw	ra,52(sp)
    12d4:	afb70030 	sw	s7,48(sp)
    12d8:	afb6002c 	sw	s6,44(sp)
    12dc:	afb50028 	sw	s5,40(sp)
    12e0:	afb40024 	sw	s4,36(sp)
    12e4:	afb30020 	sw	s3,32(sp)
    12e8:	afb2001c 	sw	s2,28(sp)
    12ec:	afb10018 	sw	s1,24(sp)
    12f0:	afb00014 	sw	s0,20(sp)
    12f4:	afa50044 	sw	a1,68(sp)
    12f8:	8c8e0018 	lw	t6,24(a0)
    12fc:	00809825 	move	s3,a0
    1300:	3c040000 	lui	a0,0x0
    1304:	11c000c6 	beqz	t6,1620 <func_800C213C+0x354>
    1308:	24840000 	addiu	a0,a0,0
    130c:	3c060000 	lui	a2,0x0
    1310:	24c60000 	addiu	a2,a2,0
    1314:	02602825 	move	a1,s3
    1318:	0c000000 	jal	0 <PreRender_SetValuesSave>
    131c:	24070233 	li	a3,563
    1320:	3c040000 	lui	a0,0x0
    1324:	3c060000 	lui	a2,0x0
    1328:	24c60000 	addiu	a2,a2,0
    132c:	24840000 	addiu	a0,a0,0
    1330:	8fa50044 	lw	a1,68(sp)
    1334:	0c000000 	jal	0 <PreRender_SetValuesSave>
    1338:	24070234 	li	a3,564
    133c:	8faf0044 	lw	t7,68(sp)
    1340:	3c040000 	lui	a0,0x0
    1344:	3c060000 	lui	a2,0x0
    1348:	8de50000 	lw	a1,0(t7)
    134c:	24c60000 	addiu	a2,a2,0
    1350:	24840000 	addiu	a0,a0,0
    1354:	24070236 	li	a3,566
    1358:	0c000000 	jal	0 <PreRender_SetValuesSave>
    135c:	afa5003c 	sw	a1,60(sp)
    1360:	8fa5003c 	lw	a1,60(sp)
    1364:	3c17e700 	lui	s7,0xe700
    1368:	3c18fb00 	lui	t8,0xfb00
    136c:	00a01025 	move	v0,a1
    1370:	ac570000 	sw	s7,0(v0)
    1374:	ac400004 	sw	zero,4(v0)
    1378:	24a50008 	addiu	a1,a1,8
    137c:	00a01025 	move	v0,a1
    1380:	2419ff20 	li	t9,-224
    1384:	ac590004 	sw	t9,4(v0)
    1388:	ac580000 	sw	t8,0(v0)
    138c:	24a50008 	addiu	a1,a1,8
    1390:	00a01025 	move	v0,a1
    1394:	3c0eef10 	lui	t6,0xef10
    1398:	3c0f0f0a 	lui	t7,0xf0a
    139c:	35ef100c 	ori	t7,t7,0x100c
    13a0:	35ce0cf0 	ori	t6,t6,0xcf0
    13a4:	ac4e0000 	sw	t6,0(v0)
    13a8:	ac4f0004 	sw	t7,4(v0)
    13ac:	24a50008 	addiu	a1,a1,8
    13b0:	00a01025 	move	v0,a1
    13b4:	3c18fcff 	lui	t8,0xfcff
    13b8:	3c19fffc 	lui	t9,0xfffc
    13bc:	3739fa38 	ori	t9,t9,0xfa38
    13c0:	3718e5ff 	ori	t8,t8,0xe5ff
    13c4:	ac580000 	sw	t8,0(v0)
    13c8:	ac590004 	sw	t9,4(v0)
    13cc:	8e6d0004 	lw	t5,4(s3)
    13d0:	24a50008 	addiu	a1,a1,8
    13d4:	24110004 	li	s1,4
    13d8:	19a0008b 	blez	t5,1608 <func_800C213C+0x33c>
    13dc:	00002025 	move	a0,zero
    13e0:	3c160100 	lui	s6,0x100
    13e4:	3c15e600 	lui	s5,0xe600
    13e8:	3c140700 	lui	s4,0x700
    13ec:	8e630000 	lw	v1,0(s3)
    13f0:	01b1082a 	slt	at,t5,s1
    13f4:	00a01025 	move	v0,a1
    13f8:	2463ffff 	addiu	v1,v1,-1
    13fc:	10200002 	beqz	at,1408 <func_800C213C+0x13c>
    1400:	0060f825 	move	ra,v1
    1404:	01a08825 	move	s1,t5
    1408:	306e0fff 	andi	t6,v1,0xfff
    140c:	3c01fd10 	lui	at,0xfd10
    1410:	01c17825 	or	t7,t6,at
    1414:	ac4f0000 	sw	t7,0(v0)
    1418:	8e780014 	lw	t8,20(s3)
    141c:	001f1840 	sll	v1,ra,0x1
    1420:	24630009 	addiu	v1,v1,9
    1424:	000318c3 	sra	v1,v1,0x3
    1428:	24a50008 	addiu	a1,a1,8
    142c:	ac580004 	sw	t8,4(v0)
    1430:	00a01025 	move	v0,a1
    1434:	306301ff 	andi	v1,v1,0x1ff
    1438:	00031a40 	sll	v1,v1,0x9
    143c:	3c01f510 	lui	at,0xf510
    1440:	00611825 	or	v1,v1,at
    1444:	ac430000 	sw	v1,0(v0)
    1448:	ac540004 	sw	s4,4(v0)
    144c:	24a50008 	addiu	a1,a1,8
    1450:	00a01025 	move	v0,a1
    1454:	001f5080 	sll	t2,ra,0x2
    1458:	00919021 	addu	s2,a0,s1
    145c:	2650ffff 	addiu	s0,s2,-1
    1460:	314a0fff 	andi	t2,t2,0xfff
    1464:	ac550000 	sw	s5,0(v0)
    1468:	ac400004 	sw	zero,4(v0)
    146c:	24a50008 	addiu	a1,a1,8
    1470:	00a01025 	move	v0,a1
    1474:	000a5300 	sll	t2,t2,0xc
    1478:	00105880 	sll	t3,s0,0x2
    147c:	00046080 	sll	t4,a0,0x2
    1480:	318c0fff 	andi	t4,t4,0xfff
    1484:	316b0fff 	andi	t3,t3,0xfff
    1488:	0154c825 	or	t9,t2,s4
    148c:	3c01f400 	lui	at,0xf400
    1490:	01814025 	or	t0,t4,at
    1494:	032b4825 	or	t1,t9,t3
    1498:	ac490004 	sw	t1,4(v0)
    149c:	ac480000 	sw	t0,0(v0)
    14a0:	24a50008 	addiu	a1,a1,8
    14a4:	00a01025 	move	v0,a1
    14a8:	ac570000 	sw	s7,0(v0)
    14ac:	ac400004 	sw	zero,4(v0)
    14b0:	24a50008 	addiu	a1,a1,8
    14b4:	00a01025 	move	v0,a1
    14b8:	ac430000 	sw	v1,0(v0)
    14bc:	ac400004 	sw	zero,4(v0)
    14c0:	24a50008 	addiu	a1,a1,8
    14c4:	00a01025 	move	v0,a1
    14c8:	3c01f200 	lui	at,0xf200
    14cc:	01813025 	or	a2,t4,at
    14d0:	014b7025 	or	t6,t2,t3
    14d4:	ac4e0004 	sw	t6,4(v0)
    14d8:	ac460000 	sw	a2,0(v0)
    14dc:	8e6f0000 	lw	t7,0(s3)
    14e0:	24a50008 	addiu	a1,a1,8
    14e4:	3c01fd88 	lui	at,0xfd88
    14e8:	25f8ffff 	addiu	t8,t7,-1
    14ec:	33190fff 	andi	t9,t8,0xfff
    14f0:	03217025 	or	t6,t9,at
    14f4:	00a01025 	move	v0,a1
    14f8:	ac4e0000 	sw	t6,0(v0)
    14fc:	8e6f0018 	lw	t7,24(s3)
    1500:	27e30008 	addiu	v1,ra,8
    1504:	000318c3 	sra	v1,v1,0x3
    1508:	306301ff 	andi	v1,v1,0x1ff
    150c:	24a50008 	addiu	a1,a1,8
    1510:	ac4f0004 	sw	t7,4(v0)
    1514:	00a01025 	move	v0,a1
    1518:	00031a40 	sll	v1,v1,0x9
    151c:	3c01f588 	lui	at,0xf588
    1520:	00611825 	or	v1,v1,at
    1524:	34630160 	ori	v1,v1,0x160
    1528:	ac430000 	sw	v1,0(v0)
    152c:	ac540004 	sw	s4,4(v0)
    1530:	24a50008 	addiu	a1,a1,8
    1534:	00a01025 	move	v0,a1
    1538:	ac550000 	sw	s5,0(v0)
    153c:	ac400004 	sw	zero,4(v0)
    1540:	24a50008 	addiu	a1,a1,8
    1544:	00a01025 	move	v0,a1
    1548:	ac480000 	sw	t0,0(v0)
    154c:	ac490004 	sw	t1,4(v0)
    1550:	24a50008 	addiu	a1,a1,8
    1554:	00a01025 	move	v0,a1
    1558:	ac570000 	sw	s7,0(v0)
    155c:	ac400004 	sw	zero,4(v0)
    1560:	24a50008 	addiu	a1,a1,8
    1564:	00a01025 	move	v0,a1
    1568:	02cac025 	or	t8,s6,t2
    156c:	030bc825 	or	t9,t8,t3
    1570:	ac430000 	sw	v1,0(v0)
    1574:	ac560004 	sw	s6,4(v0)
    1578:	24a50008 	addiu	a1,a1,8
    157c:	27ee0001 	addiu	t6,ra,1
    1580:	00a01025 	move	v0,a1
    1584:	000e7880 	sll	t7,t6,0x2
    1588:	ac590004 	sw	t9,4(v0)
    158c:	31f80fff 	andi	t8,t7,0xfff
    1590:	0018cb00 	sll	t9,t8,0xc
    1594:	ac460000 	sw	a2,0(v0)
    1598:	24a50008 	addiu	a1,a1,8
    159c:	260f0001 	addiu	t7,s0,1
    15a0:	3c01e400 	lui	at,0xe400
    15a4:	03217025 	or	t6,t9,at
    15a8:	000fc080 	sll	t8,t7,0x2
    15ac:	00a01025 	move	v0,a1
    15b0:	33190fff 	andi	t9,t8,0xfff
    15b4:	01d97825 	or	t7,t6,t9
    15b8:	ac4f0000 	sw	t7,0(v0)
    15bc:	ac4c0004 	sw	t4,4(v0)
    15c0:	24a50008 	addiu	a1,a1,8
    15c4:	00a01025 	move	v0,a1
    15c8:	00047140 	sll	t6,a0,0x5
    15cc:	3c18e100 	lui	t8,0xe100
    15d0:	ac580000 	sw	t8,0(v0)
    15d4:	31d9ffff 	andi	t9,t6,0xffff
    15d8:	ac590004 	sw	t9,4(v0)
    15dc:	24a50008 	addiu	a1,a1,8
    15e0:	00a01025 	move	v0,a1
    15e4:	3c180400 	lui	t8,0x400
    15e8:	37180400 	ori	t8,t8,0x400
    15ec:	3c0ff100 	lui	t7,0xf100
    15f0:	01b16823 	subu	t5,t5,s1
    15f4:	ac4f0000 	sw	t7,0(v0)
    15f8:	ac580004 	sw	t8,4(v0)
    15fc:	24a50008 	addiu	a1,a1,8
    1600:	1da0ff7a 	bgtz	t5,13ec <func_800C213C+0x120>
    1604:	02402025 	move	a0,s2
    1608:	00a01025 	move	v0,a1
    160c:	ac570000 	sw	s7,0(v0)
    1610:	ac400004 	sw	zero,4(v0)
    1614:	8fae0044 	lw	t6,68(sp)
    1618:	24a50008 	addiu	a1,a1,8
    161c:	adc50000 	sw	a1,0(t6)
    1620:	8fbf0034 	lw	ra,52(sp)
    1624:	8fb00014 	lw	s0,20(sp)
    1628:	8fb10018 	lw	s1,24(sp)
    162c:	8fb2001c 	lw	s2,28(sp)
    1630:	8fb30020 	lw	s3,32(sp)
    1634:	8fb40024 	lw	s4,36(sp)
    1638:	8fb50028 	lw	s5,40(sp)
    163c:	8fb6002c 	lw	s6,44(sp)
    1640:	8fb70030 	lw	s7,48(sp)
    1644:	03e00008 	jr	ra
    1648:	27bd0040 	addiu	sp,sp,64

0000164c <func_800C24BC>:
    164c:	27bdffe8 	addiu	sp,sp,-24
    1650:	afbf0014 	sw	ra,20(sp)
    1654:	8c870010 	lw	a3,16(a0)
    1658:	0c000000 	jal	0 <PreRender_SetValuesSave>
    165c:	8c860014 	lw	a2,20(a0)
    1660:	8fbf0014 	lw	ra,20(sp)
    1664:	27bd0018 	addiu	sp,sp,24
    1668:	03e00008 	jr	ra
    166c:	00000000 	nop

00001670 <func_800C24E0>:
    1670:	27bdffe8 	addiu	sp,sp,-24
    1674:	afbf0014 	sw	ra,20(sp)
    1678:	0c000000 	jal	0 <PreRender_SetValuesSave>
    167c:	00000000 	nop
    1680:	8fbf0014 	lw	ra,20(sp)
    1684:	27bd0018 	addiu	sp,sp,24
    1688:	03e00008 	jr	ra
    168c:	00000000 	nop

00001690 <func_800C2500>:
    1690:	27bdfe78 	addiu	sp,sp,-392
    1694:	afb60030 	sw	s6,48(sp)
    1698:	afb5002c 	sw	s5,44(sp)
    169c:	afb40028 	sw	s4,40(sp)
    16a0:	afb1001c 	sw	s1,28(sp)
    16a4:	afb00018 	sw	s0,24(sp)
    16a8:	00a08025 	move	s0,a1
    16ac:	00c08825 	move	s1,a2
    16b0:	0080b025 	move	s6,a0
    16b4:	afbf0034 	sw	ra,52(sp)
    16b8:	afb30024 	sw	s3,36(sp)
    16bc:	afb20020 	sw	s2,32(sp)
    16c0:	24140005 	li	s4,5
    16c4:	27b50144 	addiu	s5,sp,324
    16c8:	27a90108 	addiu	t1,sp,264
    16cc:	27aa00cc 	addiu	t2,sp,204
    16d0:	27ab0090 	addiu	t3,sp,144
    16d4:	00003825 	move	a3,zero
    16d8:	00f4001a 	div	zero,a3,s4
    16dc:	00007010 	mfhi	t6
    16e0:	00007812 	mflo	t7
    16e4:	01d01021 	addu	v0,t6,s0
    16e8:	01f13021 	addu	a2,t7,s1
    16ec:	2442fffe 	addiu	v0,v0,-2
    16f0:	16800002 	bnez	s4,16fc <func_800C2500+0x6c>
    16f4:	00000000 	nop
    16f8:	0007000d 	break	0x7
    16fc:	2401ffff 	li	at,-1
    1700:	16810004 	bne	s4,at,1714 <func_800C2500+0x84>
    1704:	3c018000 	lui	at,0x8000
    1708:	14e10002 	bne	a3,at,1714 <func_800C2500+0x84>
    170c:	00000000 	nop
    1710:	0006000d 	break	0x6
    1714:	24c6ffff 	addiu	a2,a2,-1
    1718:	00401825 	move	v1,v0
    171c:	04410004 	bgez	v0,1730 <func_800C2500+0xa0>
    1720:	00c02025 	move	a0,a2
    1724:	00001825 	move	v1,zero
    1728:	10000007 	b	1748 <func_800C2500+0xb8>
    172c:	8ec80000 	lw	t0,0(s6)
    1730:	8ec80000 	lw	t0,0(s6)
    1734:	2505ffff 	addiu	a1,t0,-1
    1738:	00a2082a 	slt	at,a1,v0
    173c:	10200002 	beqz	at,1748 <func_800C2500+0xb8>
    1740:	00000000 	nop
    1744:	00a01825 	move	v1,a1
    1748:	04c30004 	bgezl	a2,175c <func_800C2500+0xcc>
    174c:	8ec20004 	lw	v0,4(s6)
    1750:	10000007 	b	1770 <func_800C2500+0xe0>
    1754:	00002025 	move	a0,zero
    1758:	8ec20004 	lw	v0,4(s6)
    175c:	2442ffff 	addiu	v0,v0,-1
    1760:	0046082a 	slt	at,v0,a2
    1764:	10200002 	beqz	at,1770 <func_800C2500+0xe0>
    1768:	00000000 	nop
    176c:	00402025 	move	a0,v0
    1770:	00880019 	multu	a0,t0
    1774:	8ed80014 	lw	t8,20(s6)
    1778:	0003c840 	sll	t9,v1,0x1
    177c:	24e70001 	addiu	a3,a3,1
    1780:	03197021 	addu	t6,t8,t9
    1784:	28e1000f 	slti	at,a3,15
    1788:	25290004 	addiu	t1,t1,4
    178c:	254a0004 	addiu	t2,t2,4
    1790:	256b0004 	addiu	t3,t3,4
    1794:	26b50004 	addiu	s5,s5,4
    1798:	00007812 	mflo	t7
    179c:	000fc040 	sll	t8,t7,0x1
    17a0:	01d8c821 	addu	t9,t6,t8
    17a4:	972f0000 	lhu	t7,0(t9)
    17a8:	a7af0068 	sh	t7,104(sp)
    17ac:	8fae0068 	lw	t6,104(sp)
    17b0:	000ec6c2 	srl	t8,t6,0x1b
    17b4:	0018c8c0 	sll	t9,t8,0x3
    17b8:	00187883 	sra	t7,t8,0x2
    17bc:	032f7025 	or	t6,t9,t7
    17c0:	ad2efffc 	sw	t6,-4(t1)
    17c4:	8fb80068 	lw	t8,104(sp)
    17c8:	0018c940 	sll	t9,t8,0x5
    17cc:	00197ec2 	srl	t7,t9,0x1b
    17d0:	000f70c0 	sll	t6,t7,0x3
    17d4:	000fc083 	sra	t8,t7,0x2
    17d8:	01d8c825 	or	t9,t6,t8
    17dc:	ad59fffc 	sw	t9,-4(t2)
    17e0:	8faf0068 	lw	t7,104(sp)
    17e4:	000f7280 	sll	t6,t7,0xa
    17e8:	000ec6c2 	srl	t8,t6,0x1b
    17ec:	0018c8c0 	sll	t9,t8,0x3
    17f0:	00187883 	sra	t7,t8,0x2
    17f4:	032f7025 	or	t6,t9,t7
    17f8:	ad6efffc 	sw	t6,-4(t3)
    17fc:	8ecf0000 	lw	t7,0(s6)
    1800:	8ed80018 	lw	t8,24(s6)
    1804:	008f0019 	multu	a0,t7
    1808:	0303c821 	addu	t9,t8,v1
    180c:	00007012 	mflo	t6
    1810:	032ec021 	addu	t8,t9,t6
    1814:	930f0000 	lbu	t7,0(t8)
    1818:	000fc943 	sra	t9,t7,0x5
    181c:	1420ffae 	bnez	at,16d8 <func_800C2500+0x48>
    1820:	aeb9fffc 	sw	t9,-4(s5)
    1824:	8fae0160 	lw	t6,352(sp)
    1828:	24080007 	li	t0,7
    182c:	afb0018c 	sw	s0,396(sp)
    1830:	150e0006 	bne	t0,t6,184c <func_800C2500+0x1bc>
    1834:	afb10190 	sw	s1,400(sp)
    1838:	3c040000 	lui	a0,0x0
    183c:	0c000000 	jal	0 <PreRender_SetValuesSave>
    1840:	24840000 	addiu	a0,a0,0
    1844:	10000242 	b	2150 <func_800C2500+0xac0>
    1848:	8fbf0034 	lw	ra,52(sp)
    184c:	8fad0124 	lw	t5,292(sp)
    1850:	8fbf00e8 	lw	ra,232(sp)
    1854:	8fb000ac 	lw	s0,172(sp)
    1858:	24180004 	li	t8,4
    185c:	afb80054 	sw	t8,84(sp)
    1860:	24070001 	li	a3,1
    1864:	27b50148 	addiu	s5,sp,328
    1868:	27ac0090 	addiu	t4,sp,144
    186c:	27ab00cc 	addiu	t3,sp,204
    1870:	27aa0108 	addiu	t2,sp,264
    1874:	27a90144 	addiu	t1,sp,324
    1878:	01a08825 	move	s1,t5
    187c:	03e09025 	move	s2,ra
    1880:	02009825 	move	s3,s0
    1884:	8eaf0000 	lw	t7,0(s5)
    1888:	8fa20054 	lw	v0,84(sp)
    188c:	26b50008 	addiu	s5,s5,8
    1890:	150f01e8 	bne	t0,t7,2034 <func_800C2500+0x9a4>
    1894:	0142c821 	addu	t9,t2,v0
    1898:	8f240000 	lw	a0,0(t9)
    189c:	01827021 	addu	t6,t4,v0
    18a0:	afae003c 	sw	t6,60(sp)
    18a4:	0224082a 	slt	at,s1,a0
    18a8:	1020004f 	beqz	at,19e8 <func_800C2500+0x358>
    18ac:	01623021 	addu	a2,t3,v0
    18b0:	24010001 	li	at,1
    18b4:	10e10007 	beq	a3,at,18d4 <func_800C2500+0x244>
    18b8:	8fb8010c 	lw	t8,268(sp)
    18bc:	0304082a 	slt	at,t8,a0
    18c0:	14200004 	bnez	at,18d4 <func_800C2500+0x244>
    18c4:	8faf0148 	lw	t7,328(sp)
    18c8:	550f0003 	bnel	t0,t7,18d8 <func_800C2500+0x248>
    18cc:	24010003 	li	at,3
    18d0:	00808825 	move	s1,a0
    18d4:	24010003 	li	at,3
    18d8:	10e10007 	beq	a3,at,18f8 <func_800C2500+0x268>
    18dc:	8fb90114 	lw	t9,276(sp)
    18e0:	0324082a 	slt	at,t9,a0
    18e4:	14200004 	bnez	at,18f8 <func_800C2500+0x268>
    18e8:	8fae0150 	lw	t6,336(sp)
    18ec:	150e0002 	bne	t0,t6,18f8 <func_800C2500+0x268>
    18f0:	00000000 	nop
    18f4:	00808825 	move	s1,a0
    18f8:	10f40007 	beq	a3,s4,1918 <func_800C2500+0x288>
    18fc:	8fb8011c 	lw	t8,284(sp)
    1900:	0304082a 	slt	at,t8,a0
    1904:	14200004 	bnez	at,1918 <func_800C2500+0x288>
    1908:	8faf0158 	lw	t7,344(sp)
    190c:	150f0002 	bne	t0,t7,1918 <func_800C2500+0x288>
    1910:	00000000 	nop
    1914:	00808825 	move	s1,a0
    1918:	10e8000c 	beq	a3,t0,194c <func_800C2500+0x2bc>
    191c:	01001825 	move	v1,t0
    1920:	00031080 	sll	v0,v1,0x2
    1924:	0142c821 	addu	t9,t2,v0
    1928:	8f2e0000 	lw	t6,0(t9)
    192c:	0122c021 	addu	t8,t1,v0
    1930:	01c4082a 	slt	at,t6,a0
    1934:	54200006 	bnezl	at,1950 <func_800C2500+0x2c0>
    1938:	24790002 	addiu	t9,v1,2
    193c:	8f0f0000 	lw	t7,0(t8)
    1940:	550f0003 	bnel	t0,t7,1950 <func_800C2500+0x2c0>
    1944:	24790002 	addiu	t9,v1,2
    1948:	00808825 	move	s1,a0
    194c:	24790002 	addiu	t9,v1,2
    1950:	10f9000b 	beq	a3,t9,1980 <func_800C2500+0x2f0>
    1954:	00031080 	sll	v0,v1,0x2
    1958:	01427021 	addu	t6,t2,v0
    195c:	8dd80008 	lw	t8,8(t6)
    1960:	01227821 	addu	t7,t1,v0
    1964:	0304082a 	slt	at,t8,a0
    1968:	54200006 	bnezl	at,1984 <func_800C2500+0x2f4>
    196c:	246e0004 	addiu	t6,v1,4
    1970:	8df90008 	lw	t9,8(t7)
    1974:	55190003 	bnel	t0,t9,1984 <func_800C2500+0x2f4>
    1978:	246e0004 	addiu	t6,v1,4
    197c:	00808825 	move	s1,a0
    1980:	246e0004 	addiu	t6,v1,4
    1984:	10ee000b 	beq	a3,t6,19b4 <func_800C2500+0x324>
    1988:	00031080 	sll	v0,v1,0x2
    198c:	0142c021 	addu	t8,t2,v0
    1990:	8f0f0010 	lw	t7,16(t8)
    1994:	0122c821 	addu	t9,t1,v0
    1998:	01e4082a 	slt	at,t7,a0
    199c:	54200006 	bnezl	at,19b8 <func_800C2500+0x328>
    19a0:	24780006 	addiu	t8,v1,6
    19a4:	8f2e0010 	lw	t6,16(t9)
    19a8:	550e0003 	bnel	t0,t6,19b8 <func_800C2500+0x328>
    19ac:	24780006 	addiu	t8,v1,6
    19b0:	00808825 	move	s1,a0
    19b4:	24780006 	addiu	t8,v1,6
    19b8:	10f8000b 	beq	a3,t8,19e8 <func_800C2500+0x358>
    19bc:	00031080 	sll	v0,v1,0x2
    19c0:	01427821 	addu	t7,t2,v0
    19c4:	8df90018 	lw	t9,24(t7)
    19c8:	01227021 	addu	t6,t1,v0
    19cc:	0324082a 	slt	at,t9,a0
    19d0:	54200006 	bnezl	at,19ec <func_800C2500+0x35c>
    19d4:	8cc50000 	lw	a1,0(a2)
    19d8:	8dd80018 	lw	t8,24(t6)
    19dc:	55180003 	bnel	t0,t8,19ec <func_800C2500+0x35c>
    19e0:	8cc50000 	lw	a1,0(a2)
    19e4:	00808825 	move	s1,a0
    19e8:	8cc50000 	lw	a1,0(a2)
    19ec:	0245082a 	slt	at,s2,a1
    19f0:	1020004e 	beqz	at,1b2c <func_800C2500+0x49c>
    19f4:	24010001 	li	at,1
    19f8:	10e10007 	beq	a3,at,1a18 <func_800C2500+0x388>
    19fc:	8faf00d0 	lw	t7,208(sp)
    1a00:	01e5082a 	slt	at,t7,a1
    1a04:	14200004 	bnez	at,1a18 <func_800C2500+0x388>
    1a08:	8fb90148 	lw	t9,328(sp)
    1a0c:	55190003 	bnel	t0,t9,1a1c <func_800C2500+0x38c>
    1a10:	24010003 	li	at,3
    1a14:	00a09025 	move	s2,a1
    1a18:	24010003 	li	at,3
    1a1c:	10e10007 	beq	a3,at,1a3c <func_800C2500+0x3ac>
    1a20:	8fae00d8 	lw	t6,216(sp)
    1a24:	01c5082a 	slt	at,t6,a1
    1a28:	14200004 	bnez	at,1a3c <func_800C2500+0x3ac>
    1a2c:	8fb80150 	lw	t8,336(sp)
    1a30:	15180002 	bne	t0,t8,1a3c <func_800C2500+0x3ac>
    1a34:	00000000 	nop
    1a38:	00a09025 	move	s2,a1
    1a3c:	10f40007 	beq	a3,s4,1a5c <func_800C2500+0x3cc>
    1a40:	8faf00e0 	lw	t7,224(sp)
    1a44:	01e5082a 	slt	at,t7,a1
    1a48:	14200004 	bnez	at,1a5c <func_800C2500+0x3cc>
    1a4c:	8fb90158 	lw	t9,344(sp)
    1a50:	15190002 	bne	t0,t9,1a5c <func_800C2500+0x3cc>
    1a54:	00000000 	nop
    1a58:	00a09025 	move	s2,a1
    1a5c:	10e8000c 	beq	a3,t0,1a90 <func_800C2500+0x400>
    1a60:	01001825 	move	v1,t0
    1a64:	00031080 	sll	v0,v1,0x2
    1a68:	01627021 	addu	t6,t3,v0
    1a6c:	8dd80000 	lw	t8,0(t6)
    1a70:	01227821 	addu	t7,t1,v0
    1a74:	0305082a 	slt	at,t8,a1
    1a78:	54200006 	bnezl	at,1a94 <func_800C2500+0x404>
    1a7c:	246e0002 	addiu	t6,v1,2
    1a80:	8df90000 	lw	t9,0(t7)
    1a84:	55190003 	bnel	t0,t9,1a94 <func_800C2500+0x404>
    1a88:	246e0002 	addiu	t6,v1,2
    1a8c:	00a09025 	move	s2,a1
    1a90:	246e0002 	addiu	t6,v1,2
    1a94:	10ee000b 	beq	a3,t6,1ac4 <func_800C2500+0x434>
    1a98:	00031080 	sll	v0,v1,0x2
    1a9c:	0162c021 	addu	t8,t3,v0
    1aa0:	8f0f0008 	lw	t7,8(t8)
    1aa4:	0122c821 	addu	t9,t1,v0
    1aa8:	01e5082a 	slt	at,t7,a1
    1aac:	54200006 	bnezl	at,1ac8 <func_800C2500+0x438>
    1ab0:	24780004 	addiu	t8,v1,4
    1ab4:	8f2e0008 	lw	t6,8(t9)
    1ab8:	550e0003 	bnel	t0,t6,1ac8 <func_800C2500+0x438>
    1abc:	24780004 	addiu	t8,v1,4
    1ac0:	00a09025 	move	s2,a1
    1ac4:	24780004 	addiu	t8,v1,4
    1ac8:	10f8000b 	beq	a3,t8,1af8 <func_800C2500+0x468>
    1acc:	00031080 	sll	v0,v1,0x2
    1ad0:	01627821 	addu	t7,t3,v0
    1ad4:	8df90010 	lw	t9,16(t7)
    1ad8:	01227021 	addu	t6,t1,v0
    1adc:	0325082a 	slt	at,t9,a1
    1ae0:	54200006 	bnezl	at,1afc <func_800C2500+0x46c>
    1ae4:	246f0006 	addiu	t7,v1,6
    1ae8:	8dd80010 	lw	t8,16(t6)
    1aec:	55180003 	bnel	t0,t8,1afc <func_800C2500+0x46c>
    1af0:	246f0006 	addiu	t7,v1,6
    1af4:	00a09025 	move	s2,a1
    1af8:	246f0006 	addiu	t7,v1,6
    1afc:	10ef000b 	beq	a3,t7,1b2c <func_800C2500+0x49c>
    1b00:	00031080 	sll	v0,v1,0x2
    1b04:	0162c821 	addu	t9,t3,v0
    1b08:	8f2e0018 	lw	t6,24(t9)
    1b0c:	0122c021 	addu	t8,t1,v0
    1b10:	01c5082a 	slt	at,t6,a1
    1b14:	54200006 	bnezl	at,1b30 <func_800C2500+0x4a0>
    1b18:	8fb9003c 	lw	t9,60(sp)
    1b1c:	8f0f0018 	lw	t7,24(t8)
    1b20:	550f0003 	bnel	t0,t7,1b30 <func_800C2500+0x4a0>
    1b24:	8fb9003c 	lw	t9,60(sp)
    1b28:	00a09025 	move	s2,a1
    1b2c:	8fb9003c 	lw	t9,60(sp)
    1b30:	8f260000 	lw	a2,0(t9)
    1b34:	0266082a 	slt	at,s3,a2
    1b38:	1020004e 	beqz	at,1c74 <func_800C2500+0x5e4>
    1b3c:	24010001 	li	at,1
    1b40:	10e10007 	beq	a3,at,1b60 <func_800C2500+0x4d0>
    1b44:	8fae0094 	lw	t6,148(sp)
    1b48:	01c6082a 	slt	at,t6,a2
    1b4c:	14200004 	bnez	at,1b60 <func_800C2500+0x4d0>
    1b50:	8fb80148 	lw	t8,328(sp)
    1b54:	55180003 	bnel	t0,t8,1b64 <func_800C2500+0x4d4>
    1b58:	24010003 	li	at,3
    1b5c:	00c09825 	move	s3,a2
    1b60:	24010003 	li	at,3
    1b64:	10e10007 	beq	a3,at,1b84 <func_800C2500+0x4f4>
    1b68:	8faf009c 	lw	t7,156(sp)
    1b6c:	01e6082a 	slt	at,t7,a2
    1b70:	14200004 	bnez	at,1b84 <func_800C2500+0x4f4>
    1b74:	8fb90150 	lw	t9,336(sp)
    1b78:	15190002 	bne	t0,t9,1b84 <func_800C2500+0x4f4>
    1b7c:	00000000 	nop
    1b80:	00c09825 	move	s3,a2
    1b84:	10f40007 	beq	a3,s4,1ba4 <func_800C2500+0x514>
    1b88:	8fae00a4 	lw	t6,164(sp)
    1b8c:	01c6082a 	slt	at,t6,a2
    1b90:	14200004 	bnez	at,1ba4 <func_800C2500+0x514>
    1b94:	8fb80158 	lw	t8,344(sp)
    1b98:	15180002 	bne	t0,t8,1ba4 <func_800C2500+0x514>
    1b9c:	00000000 	nop
    1ba0:	00c09825 	move	s3,a2
    1ba4:	10e8000c 	beq	a3,t0,1bd8 <func_800C2500+0x548>
    1ba8:	01001825 	move	v1,t0
    1bac:	00031080 	sll	v0,v1,0x2
    1bb0:	01827821 	addu	t7,t4,v0
    1bb4:	8df90000 	lw	t9,0(t7)
    1bb8:	01227021 	addu	t6,t1,v0
    1bbc:	0326082a 	slt	at,t9,a2
    1bc0:	54200006 	bnezl	at,1bdc <func_800C2500+0x54c>
    1bc4:	246f0002 	addiu	t7,v1,2
    1bc8:	8dd80000 	lw	t8,0(t6)
    1bcc:	55180003 	bnel	t0,t8,1bdc <func_800C2500+0x54c>
    1bd0:	246f0002 	addiu	t7,v1,2
    1bd4:	00c09825 	move	s3,a2
    1bd8:	246f0002 	addiu	t7,v1,2
    1bdc:	10ef000b 	beq	a3,t7,1c0c <func_800C2500+0x57c>
    1be0:	00031080 	sll	v0,v1,0x2
    1be4:	0182c821 	addu	t9,t4,v0
    1be8:	8f2e0008 	lw	t6,8(t9)
    1bec:	0122c021 	addu	t8,t1,v0
    1bf0:	01c6082a 	slt	at,t6,a2
    1bf4:	54200006 	bnezl	at,1c10 <func_800C2500+0x580>
    1bf8:	24790004 	addiu	t9,v1,4
    1bfc:	8f0f0008 	lw	t7,8(t8)
    1c00:	550f0003 	bnel	t0,t7,1c10 <func_800C2500+0x580>
    1c04:	24790004 	addiu	t9,v1,4
    1c08:	00c09825 	move	s3,a2
    1c0c:	24790004 	addiu	t9,v1,4
    1c10:	10f9000b 	beq	a3,t9,1c40 <func_800C2500+0x5b0>
    1c14:	00031080 	sll	v0,v1,0x2
    1c18:	01827021 	addu	t6,t4,v0
    1c1c:	8dd80010 	lw	t8,16(t6)
    1c20:	01227821 	addu	t7,t1,v0
    1c24:	0306082a 	slt	at,t8,a2
    1c28:	54200006 	bnezl	at,1c44 <func_800C2500+0x5b4>
    1c2c:	246e0006 	addiu	t6,v1,6
    1c30:	8df90010 	lw	t9,16(t7)
    1c34:	55190003 	bnel	t0,t9,1c44 <func_800C2500+0x5b4>
    1c38:	246e0006 	addiu	t6,v1,6
    1c3c:	00c09825 	move	s3,a2
    1c40:	246e0006 	addiu	t6,v1,6
    1c44:	10ee000b 	beq	a3,t6,1c74 <func_800C2500+0x5e4>
    1c48:	00031080 	sll	v0,v1,0x2
    1c4c:	0182c021 	addu	t8,t4,v0
    1c50:	8f0f0018 	lw	t7,24(t8)
    1c54:	0122c821 	addu	t9,t1,v0
    1c58:	01e6082a 	slt	at,t7,a2
    1c5c:	54200006 	bnezl	at,1c78 <func_800C2500+0x5e8>
    1c60:	008d082a 	slt	at,a0,t5
    1c64:	8f2e0018 	lw	t6,24(t9)
    1c68:	550e0003 	bnel	t0,t6,1c78 <func_800C2500+0x5e8>
    1c6c:	008d082a 	slt	at,a0,t5
    1c70:	00c09825 	move	s3,a2
    1c74:	008d082a 	slt	at,a0,t5
    1c78:	1020004e 	beqz	at,1db4 <func_800C2500+0x724>
    1c7c:	24010001 	li	at,1
    1c80:	10e10007 	beq	a3,at,1ca0 <func_800C2500+0x610>
    1c84:	8fb8010c 	lw	t8,268(sp)
    1c88:	0098082a 	slt	at,a0,t8
    1c8c:	14200004 	bnez	at,1ca0 <func_800C2500+0x610>
    1c90:	8faf0148 	lw	t7,328(sp)
    1c94:	550f0003 	bnel	t0,t7,1ca4 <func_800C2500+0x614>
    1c98:	24010003 	li	at,3
    1c9c:	00806825 	move	t5,a0
    1ca0:	24010003 	li	at,3
    1ca4:	10e10007 	beq	a3,at,1cc4 <func_800C2500+0x634>
    1ca8:	8fb90114 	lw	t9,276(sp)
    1cac:	0099082a 	slt	at,a0,t9
    1cb0:	14200004 	bnez	at,1cc4 <func_800C2500+0x634>
    1cb4:	8fae0150 	lw	t6,336(sp)
    1cb8:	150e0002 	bne	t0,t6,1cc4 <func_800C2500+0x634>
    1cbc:	00000000 	nop
    1cc0:	00806825 	move	t5,a0
    1cc4:	10f40007 	beq	a3,s4,1ce4 <func_800C2500+0x654>
    1cc8:	8fb8011c 	lw	t8,284(sp)
    1ccc:	0098082a 	slt	at,a0,t8
    1cd0:	14200004 	bnez	at,1ce4 <func_800C2500+0x654>
    1cd4:	8faf0158 	lw	t7,344(sp)
    1cd8:	150f0002 	bne	t0,t7,1ce4 <func_800C2500+0x654>
    1cdc:	00000000 	nop
    1ce0:	00806825 	move	t5,a0
    1ce4:	10e8000c 	beq	a3,t0,1d18 <func_800C2500+0x688>
    1ce8:	01001825 	move	v1,t0
    1cec:	00031080 	sll	v0,v1,0x2
    1cf0:	0142c821 	addu	t9,t2,v0
    1cf4:	8f2e0000 	lw	t6,0(t9)
    1cf8:	0122c021 	addu	t8,t1,v0
    1cfc:	008e082a 	slt	at,a0,t6
    1d00:	54200006 	bnezl	at,1d1c <func_800C2500+0x68c>
    1d04:	24790002 	addiu	t9,v1,2
    1d08:	8f0f0000 	lw	t7,0(t8)
    1d0c:	550f0003 	bnel	t0,t7,1d1c <func_800C2500+0x68c>
    1d10:	24790002 	addiu	t9,v1,2
    1d14:	00806825 	move	t5,a0
    1d18:	24790002 	addiu	t9,v1,2
    1d1c:	10f9000b 	beq	a3,t9,1d4c <func_800C2500+0x6bc>
    1d20:	00031080 	sll	v0,v1,0x2
    1d24:	01427021 	addu	t6,t2,v0
    1d28:	8dd80008 	lw	t8,8(t6)
    1d2c:	01227821 	addu	t7,t1,v0
    1d30:	0098082a 	slt	at,a0,t8
    1d34:	54200006 	bnezl	at,1d50 <func_800C2500+0x6c0>
    1d38:	246e0004 	addiu	t6,v1,4
    1d3c:	8df90008 	lw	t9,8(t7)
    1d40:	55190003 	bnel	t0,t9,1d50 <func_800C2500+0x6c0>
    1d44:	246e0004 	addiu	t6,v1,4
    1d48:	00806825 	move	t5,a0
    1d4c:	246e0004 	addiu	t6,v1,4
    1d50:	10ee000b 	beq	a3,t6,1d80 <func_800C2500+0x6f0>
    1d54:	00031080 	sll	v0,v1,0x2
    1d58:	0142c021 	addu	t8,t2,v0
    1d5c:	8f0f0010 	lw	t7,16(t8)
    1d60:	0122c821 	addu	t9,t1,v0
    1d64:	008f082a 	slt	at,a0,t7
    1d68:	54200006 	bnezl	at,1d84 <func_800C2500+0x6f4>
    1d6c:	24780006 	addiu	t8,v1,6
    1d70:	8f2e0010 	lw	t6,16(t9)
    1d74:	550e0003 	bnel	t0,t6,1d84 <func_800C2500+0x6f4>
    1d78:	24780006 	addiu	t8,v1,6
    1d7c:	00806825 	move	t5,a0
    1d80:	24780006 	addiu	t8,v1,6
    1d84:	10f8000b 	beq	a3,t8,1db4 <func_800C2500+0x724>
    1d88:	00031080 	sll	v0,v1,0x2
    1d8c:	01427821 	addu	t7,t2,v0
    1d90:	8df90018 	lw	t9,24(t7)
    1d94:	01227021 	addu	t6,t1,v0
    1d98:	0099082a 	slt	at,a0,t9
    1d9c:	54200006 	bnezl	at,1db8 <func_800C2500+0x728>
    1da0:	00bf082a 	slt	at,a1,ra
    1da4:	8dd80018 	lw	t8,24(t6)
    1da8:	55180003 	bnel	t0,t8,1db8 <func_800C2500+0x728>
    1dac:	00bf082a 	slt	at,a1,ra
    1db0:	00806825 	move	t5,a0
    1db4:	00bf082a 	slt	at,a1,ra
    1db8:	1020004e 	beqz	at,1ef4 <func_800C2500+0x864>
    1dbc:	24010001 	li	at,1
    1dc0:	10e10007 	beq	a3,at,1de0 <func_800C2500+0x750>
    1dc4:	8faf00d0 	lw	t7,208(sp)
    1dc8:	00af082a 	slt	at,a1,t7
    1dcc:	14200004 	bnez	at,1de0 <func_800C2500+0x750>
    1dd0:	8fb90148 	lw	t9,328(sp)
    1dd4:	55190003 	bnel	t0,t9,1de4 <func_800C2500+0x754>
    1dd8:	24010003 	li	at,3
    1ddc:	00a0f825 	move	ra,a1
    1de0:	24010003 	li	at,3
    1de4:	10e10007 	beq	a3,at,1e04 <func_800C2500+0x774>
    1de8:	8fae00d8 	lw	t6,216(sp)
    1dec:	00ae082a 	slt	at,a1,t6
    1df0:	14200004 	bnez	at,1e04 <func_800C2500+0x774>
    1df4:	8fb80150 	lw	t8,336(sp)
    1df8:	15180002 	bne	t0,t8,1e04 <func_800C2500+0x774>
    1dfc:	00000000 	nop
    1e00:	00a0f825 	move	ra,a1
    1e04:	10f40007 	beq	a3,s4,1e24 <func_800C2500+0x794>
    1e08:	8faf00e0 	lw	t7,224(sp)
    1e0c:	00af082a 	slt	at,a1,t7
    1e10:	14200004 	bnez	at,1e24 <func_800C2500+0x794>
    1e14:	8fb90158 	lw	t9,344(sp)
    1e18:	15190002 	bne	t0,t9,1e24 <func_800C2500+0x794>
    1e1c:	00000000 	nop
    1e20:	00a0f825 	move	ra,a1
    1e24:	10e8000c 	beq	a3,t0,1e58 <func_800C2500+0x7c8>
    1e28:	01001825 	move	v1,t0
    1e2c:	00031080 	sll	v0,v1,0x2
    1e30:	01627021 	addu	t6,t3,v0
    1e34:	8dd80000 	lw	t8,0(t6)
    1e38:	01227821 	addu	t7,t1,v0
    1e3c:	00b8082a 	slt	at,a1,t8
    1e40:	54200006 	bnezl	at,1e5c <func_800C2500+0x7cc>
    1e44:	246e0002 	addiu	t6,v1,2
    1e48:	8df90000 	lw	t9,0(t7)
    1e4c:	55190003 	bnel	t0,t9,1e5c <func_800C2500+0x7cc>
    1e50:	246e0002 	addiu	t6,v1,2
    1e54:	00a0f825 	move	ra,a1
    1e58:	246e0002 	addiu	t6,v1,2
    1e5c:	10ee000b 	beq	a3,t6,1e8c <func_800C2500+0x7fc>
    1e60:	00031080 	sll	v0,v1,0x2
    1e64:	0162c021 	addu	t8,t3,v0
    1e68:	8f0f0008 	lw	t7,8(t8)
    1e6c:	0122c821 	addu	t9,t1,v0
    1e70:	00af082a 	slt	at,a1,t7
    1e74:	54200006 	bnezl	at,1e90 <func_800C2500+0x800>
    1e78:	24780004 	addiu	t8,v1,4
    1e7c:	8f2e0008 	lw	t6,8(t9)
    1e80:	550e0003 	bnel	t0,t6,1e90 <func_800C2500+0x800>
    1e84:	24780004 	addiu	t8,v1,4
    1e88:	00a0f825 	move	ra,a1
    1e8c:	24780004 	addiu	t8,v1,4
    1e90:	10f8000b 	beq	a3,t8,1ec0 <func_800C2500+0x830>
    1e94:	00031080 	sll	v0,v1,0x2
    1e98:	01627821 	addu	t7,t3,v0
    1e9c:	8df90010 	lw	t9,16(t7)
    1ea0:	01227021 	addu	t6,t1,v0
    1ea4:	00b9082a 	slt	at,a1,t9
    1ea8:	54200006 	bnezl	at,1ec4 <func_800C2500+0x834>
    1eac:	246f0006 	addiu	t7,v1,6
    1eb0:	8dd80010 	lw	t8,16(t6)
    1eb4:	55180003 	bnel	t0,t8,1ec4 <func_800C2500+0x834>
    1eb8:	246f0006 	addiu	t7,v1,6
    1ebc:	00a0f825 	move	ra,a1
    1ec0:	246f0006 	addiu	t7,v1,6
    1ec4:	10ef000b 	beq	a3,t7,1ef4 <func_800C2500+0x864>
    1ec8:	00031080 	sll	v0,v1,0x2
    1ecc:	0162c821 	addu	t9,t3,v0
    1ed0:	8f2e0018 	lw	t6,24(t9)
    1ed4:	0122c021 	addu	t8,t1,v0
    1ed8:	00ae082a 	slt	at,a1,t6
    1edc:	54200006 	bnezl	at,1ef8 <func_800C2500+0x868>
    1ee0:	00d0082a 	slt	at,a2,s0
    1ee4:	8f0f0018 	lw	t7,24(t8)
    1ee8:	550f0003 	bnel	t0,t7,1ef8 <func_800C2500+0x868>
    1eec:	00d0082a 	slt	at,a2,s0
    1ef0:	00a0f825 	move	ra,a1
    1ef4:	00d0082a 	slt	at,a2,s0
    1ef8:	1020004e 	beqz	at,2034 <func_800C2500+0x9a4>
    1efc:	24010001 	li	at,1
    1f00:	10e10007 	beq	a3,at,1f20 <func_800C2500+0x890>
    1f04:	8fb90094 	lw	t9,148(sp)
    1f08:	00d9082a 	slt	at,a2,t9
    1f0c:	14200004 	bnez	at,1f20 <func_800C2500+0x890>
    1f10:	8fae0148 	lw	t6,328(sp)
    1f14:	550e0003 	bnel	t0,t6,1f24 <func_800C2500+0x894>
    1f18:	24010003 	li	at,3
    1f1c:	00c08025 	move	s0,a2
    1f20:	24010003 	li	at,3
    1f24:	10e10007 	beq	a3,at,1f44 <func_800C2500+0x8b4>
    1f28:	8fb8009c 	lw	t8,156(sp)
    1f2c:	00d8082a 	slt	at,a2,t8
    1f30:	14200004 	bnez	at,1f44 <func_800C2500+0x8b4>
    1f34:	8faf0150 	lw	t7,336(sp)
    1f38:	150f0002 	bne	t0,t7,1f44 <func_800C2500+0x8b4>
    1f3c:	00000000 	nop
    1f40:	00c08025 	move	s0,a2
    1f44:	10f40007 	beq	a3,s4,1f64 <func_800C2500+0x8d4>
    1f48:	8fb900a4 	lw	t9,164(sp)
    1f4c:	00d9082a 	slt	at,a2,t9
    1f50:	14200004 	bnez	at,1f64 <func_800C2500+0x8d4>
    1f54:	8fae0158 	lw	t6,344(sp)
    1f58:	150e0002 	bne	t0,t6,1f64 <func_800C2500+0x8d4>
    1f5c:	00000000 	nop
    1f60:	00c08025 	move	s0,a2
    1f64:	10e8000c 	beq	a3,t0,1f98 <func_800C2500+0x908>
    1f68:	01001825 	move	v1,t0
    1f6c:	00031080 	sll	v0,v1,0x2
    1f70:	0182c021 	addu	t8,t4,v0
    1f74:	8f0f0000 	lw	t7,0(t8)
    1f78:	0122c821 	addu	t9,t1,v0
    1f7c:	00cf082a 	slt	at,a2,t7
    1f80:	54200006 	bnezl	at,1f9c <func_800C2500+0x90c>
    1f84:	24780002 	addiu	t8,v1,2
    1f88:	8f2e0000 	lw	t6,0(t9)
    1f8c:	550e0003 	bnel	t0,t6,1f9c <func_800C2500+0x90c>
    1f90:	24780002 	addiu	t8,v1,2
    1f94:	00c08025 	move	s0,a2
    1f98:	24780002 	addiu	t8,v1,2
    1f9c:	10f8000b 	beq	a3,t8,1fcc <func_800C2500+0x93c>
    1fa0:	00031080 	sll	v0,v1,0x2
    1fa4:	01827821 	addu	t7,t4,v0
    1fa8:	8df90008 	lw	t9,8(t7)
    1fac:	01227021 	addu	t6,t1,v0
    1fb0:	00d9082a 	slt	at,a2,t9
    1fb4:	54200006 	bnezl	at,1fd0 <func_800C2500+0x940>
    1fb8:	246f0004 	addiu	t7,v1,4
    1fbc:	8dd80008 	lw	t8,8(t6)
    1fc0:	55180003 	bnel	t0,t8,1fd0 <func_800C2500+0x940>
    1fc4:	246f0004 	addiu	t7,v1,4
    1fc8:	00c08025 	move	s0,a2
    1fcc:	246f0004 	addiu	t7,v1,4
    1fd0:	10ef000b 	beq	a3,t7,2000 <func_800C2500+0x970>
    1fd4:	00031080 	sll	v0,v1,0x2
    1fd8:	0182c821 	addu	t9,t4,v0
    1fdc:	8f2e0010 	lw	t6,16(t9)
    1fe0:	0122c021 	addu	t8,t1,v0
    1fe4:	00ce082a 	slt	at,a2,t6
    1fe8:	54200006 	bnezl	at,2004 <func_800C2500+0x974>
    1fec:	24790006 	addiu	t9,v1,6
    1ff0:	8f0f0010 	lw	t7,16(t8)
    1ff4:	550f0003 	bnel	t0,t7,2004 <func_800C2500+0x974>
    1ff8:	24790006 	addiu	t9,v1,6
    1ffc:	00c08025 	move	s0,a2
    2000:	24790006 	addiu	t9,v1,6
    2004:	10f9000b 	beq	a3,t9,2034 <func_800C2500+0x9a4>
    2008:	00031080 	sll	v0,v1,0x2
    200c:	01827021 	addu	t6,t4,v0
    2010:	8dd80018 	lw	t8,24(t6)
    2014:	01227821 	addu	t7,t1,v0
    2018:	00d8082a 	slt	at,a2,t8
    201c:	54200006 	bnezl	at,2038 <func_800C2500+0x9a8>
    2020:	8fae0054 	lw	t6,84(sp)
    2024:	8df90018 	lw	t9,24(t7)
    2028:	55190003 	bnel	t0,t9,2038 <func_800C2500+0x9a8>
    202c:	8fae0054 	lw	t6,84(sp)
    2030:	00c08025 	move	s0,a2
    2034:	8fae0054 	lw	t6,84(sp)
    2038:	24e70002 	addiu	a3,a3,2
    203c:	2401000f 	li	at,15
    2040:	25d80008 	addiu	t8,t6,8
    2044:	14e1fe0f 	bne	a3,at,1884 <func_800C2500+0x1f4>
    2048:	afb80054 	sw	t8,84(sp)
    204c:	8faf0160 	lw	t7,352(sp)
    2050:	8fae0124 	lw	t6,292(sp)
    2054:	022dc821 	addu	t9,s1,t5
    2058:	010f1023 	subu	v0,t0,t7
    205c:	000ec040 	sll	t8,t6,0x1
    2060:	03387823 	subu	t7,t9,t8
    2064:	01e20019 	multu	t7,v0
    2068:	0000c812 	mflo	t9
    206c:	27380004 	addiu	t8,t9,4
    2070:	001878c3 	sra	t7,t8,0x3
    2074:	8fb800e8 	lw	t8,232(sp)
    2078:	01ee1821 	addu	v1,t7,t6
    207c:	025fc821 	addu	t9,s2,ra
    2080:	00187840 	sll	t7,t8,0x1
    2084:	032f7023 	subu	t6,t9,t7
    2088:	01c20019 	multu	t6,v0
    208c:	0000c812 	mflo	t9
    2090:	272f0004 	addiu	t7,t9,4
    2094:	000f70c3 	sra	t6,t7,0x3
    2098:	8faf00ac 	lw	t7,172(sp)
    209c:	01d82021 	addu	a0,t6,t8
    20a0:	0270c821 	addu	t9,s3,s0
    20a4:	000f7040 	sll	t6,t7,0x1
    20a8:	032ec023 	subu	t8,t9,t6
    20ac:	03020019 	multu	t8,v0
    20b0:	0000c812 	mflo	t9
    20b4:	272e0004 	addiu	t6,t9,4
    20b8:	000ec0c3 	sra	t8,t6,0x3
    20bc:	93b90064 	lbu	t9,100(sp)
    20c0:	000370c2 	srl	t6,v1,0x3
    20c4:	030f2821 	addu	a1,t8,t7
    20c8:	000e78c0 	sll	t7,t6,0x3
    20cc:	332eff07 	andi	t6,t9,0xff07
    20d0:	01eec025 	or	t8,t7,t6
    20d4:	a3b80064 	sb	t8,100(sp)
    20d8:	97b90064 	lhu	t9,100(sp)
    20dc:	000478c2 	srl	t7,a0,0x3
    20e0:	000f7180 	sll	t6,t7,0x6
    20e4:	31d807c0 	andi	t8,t6,0x7c0
    20e8:	332ff83f 	andi	t7,t9,0xf83f
    20ec:	030f7025 	or	t6,t8,t7
    20f0:	a7ae0064 	sh	t6,100(sp)
    20f4:	93b90065 	lbu	t9,101(sp)
    20f8:	0005c0c2 	srl	t8,a1,0x3
    20fc:	00187840 	sll	t7,t8,0x1
    2100:	31ee003e 	andi	t6,t7,0x3e
    2104:	3338ffc1 	andi	t8,t9,0xffc1
    2108:	01d87825 	or	t7,t6,t8
    210c:	01e07025 	move	t6,t7
    2110:	35d80001 	ori	t8,t6,0x1
    2114:	a3af0065 	sb	t7,101(sp)
    2118:	8fae018c 	lw	t6,396(sp)
    211c:	a3b80065 	sb	t8,101(sp)
    2120:	8ed90014 	lw	t9,20(s6)
    2124:	000ec040 	sll	t8,t6,0x1
    2128:	97af0064 	lhu	t7,100(sp)
    212c:	03387021 	addu	t6,t9,t8
    2130:	8ed80000 	lw	t8,0(s6)
    2134:	8fb90190 	lw	t9,400(sp)
    2138:	03380019 	multu	t9,t8
    213c:	0000c812 	mflo	t9
    2140:	0019c040 	sll	t8,t9,0x1
    2144:	01d8c821 	addu	t9,t6,t8
    2148:	a72f0000 	sh	t7,0(t9)
    214c:	8fbf0034 	lw	ra,52(sp)
    2150:	8fb00018 	lw	s0,24(sp)
    2154:	8fb1001c 	lw	s1,28(sp)
    2158:	8fb20020 	lw	s2,32(sp)
    215c:	8fb30024 	lw	s3,36(sp)
    2160:	8fb40028 	lw	s4,40(sp)
    2164:	8fb5002c 	lw	s5,44(sp)
    2168:	8fb60030 	lw	s6,48(sp)
    216c:	03e00008 	jr	ra
    2170:	27bd0188 	addiu	sp,sp,392

00002174 <func_800C2FE4>:
    2174:	27bdff50 	addiu	sp,sp,-176
    2178:	afbf0074 	sw	ra,116(sp)
    217c:	afbe0070 	sw	s8,112(sp)
    2180:	afb7006c 	sw	s7,108(sp)
    2184:	afb60068 	sw	s6,104(sp)
    2188:	afb50064 	sw	s5,100(sp)
    218c:	afb40060 	sw	s4,96(sp)
    2190:	afb3005c 	sw	s3,92(sp)
    2194:	afb20058 	sw	s2,88(sp)
    2198:	afb10054 	sw	s1,84(sp)
    219c:	afb00050 	sw	s0,80(sp)
    21a0:	8c850000 	lw	a1,0(a0)
    21a4:	2401fff8 	li	at,-8
    21a8:	03a0f025 	move	s8,sp
    21ac:	24a20007 	addiu	v0,a1,7
    21b0:	00411024 	and	v0,v0,at
    21b4:	03a2e823 	subu	sp,sp,v0
    21b8:	27ae0038 	addiu	t6,sp,56
    21bc:	03a2e823 	subu	sp,sp,v0
    21c0:	27af0038 	addiu	t7,sp,56
    21c4:	03a2e823 	subu	sp,sp,v0
    21c8:	27b80038 	addiu	t8,sp,56
    21cc:	afce00a0 	sw	t6,160(s8)
    21d0:	afcf009c 	sw	t7,156(s8)
    21d4:	afd80098 	sw	t8,152(s8)
    21d8:	8c990004 	lw	t9,4(a0)
    21dc:	0080a825 	move	s5,a0
    21e0:	2416000f 	li	s6,15
    21e4:	1b2001b9 	blez	t9,28cc <func_800C2FE4+0x758>
    21e8:	0000b825 	move	s7,zero
    21ec:	18a00020 	blez	a1,2270 <func_800C2FE4+0xfc>
    21f0:	0000a025 	move	s4,zero
    21f4:	8fc200a0 	lw	v0,160(s8)
    21f8:	8fc3009c 	lw	v1,156(s8)
    21fc:	8fc40098 	lw	a0,152(s8)
    2200:	02e50019 	multu	s7,a1
    2204:	8eae0014 	lw	t6,20(s5)
    2208:	00147840 	sll	t7,s4,0x1
    220c:	26940001 	addiu	s4,s4,1
    2210:	01cfc021 	addu	t8,t6,t7
    2214:	24420001 	addiu	v0,v0,1
    2218:	24630001 	addiu	v1,v1,1
    221c:	24840001 	addiu	a0,a0,1
    2220:	0000c812 	mflo	t9
    2224:	00197040 	sll	t6,t9,0x1
    2228:	030e7821 	addu	t7,t8,t6
    222c:	95f90000 	lhu	t9,0(t7)
    2230:	a7d9007c 	sh	t9,124(s8)
    2234:	8fd8007c 	lw	t8,124(s8)
    2238:	001876c2 	srl	t6,t8,0x1b
    223c:	a04effff 	sb	t6,-1(v0)
    2240:	8fcf007c 	lw	t7,124(s8)
    2244:	000fc940 	sll	t9,t7,0x5
    2248:	0019c6c2 	srl	t8,t9,0x1b
    224c:	a078ffff 	sb	t8,-1(v1)
    2250:	8fce007c 	lw	t6,124(s8)
    2254:	000e7a80 	sll	t7,t6,0xa
    2258:	000fcec2 	srl	t9,t7,0x1b
    225c:	a099ffff 	sb	t9,-1(a0)
    2260:	8ea50000 	lw	a1,0(s5)
    2264:	0285082a 	slt	at,s4,a1
    2268:	1420ffe5 	bnez	at,2200 <func_800C2FE4+0x8c>
    226c:	00000000 	nop
    2270:	24a3ffff 	addiu	v1,a1,-1
    2274:	28610002 	slti	at,v1,2
    2278:	1420018f 	bnez	at,28b8 <func_800C2FE4+0x744>
    227c:	24140001 	li	s4,1
    2280:	02e50019 	multu	s7,a1
    2284:	8eb80018 	lw	t8,24(s5)
    2288:	24010007 	li	at,7
    228c:	03147021 	addu	t6,t8,s4
    2290:	00002012 	mflo	a0
    2294:	01c47821 	addu	t7,t6,a0
    2298:	91e20000 	lbu	v0,0(t7)
    229c:	00021143 	sra	v0,v0,0x5
    22a0:	50410182 	beql	v0,at,28ac <func_800C2FE4+0x738>
    22a4:	26940001 	addiu	s4,s4,1
    22a8:	3c030000 	lui	v1,0x0
    22ac:	8c630000 	lw	v1,0(v1)
    22b0:	00001025 	move	v0,zero
    22b4:	24010005 	li	at,5
    22b8:	84651074 	lh	a1,4212(v1)
    22bc:	16c50003 	bne	s6,a1,22cc <func_800C2FE4+0x158>
    22c0:	00000000 	nop
    22c4:	10000001 	b	22cc <func_800C2FE4+0x158>
    22c8:	84621076 	lh	v0,4214(v1)
    22cc:	5040016e 	beqzl	v0,2888 <func_800C2FE4+0x714>
    22d0:	8eae0014 	lw	t6,20(s5)
    22d4:	16c50003 	bne	s6,a1,22e4 <func_800C2FE4+0x170>
    22d8:	00001025 	move	v0,zero
    22dc:	10000001 	b	22e4 <func_800C2FE4+0x170>
    22e0:	00000000 	nop
    22e4:	16c50003 	bne	s6,a1,22f4 <func_800C2FE4+0x180>
    22e8:	2406001f 	li	a2,31
    22ec:	10000001 	b	22f4 <func_800C2FE4+0x180>
    22f0:	84621076 	lh	v0,4214(v1)
    22f4:	54410005 	bnel	v0,at,230c <func_800C2FE4+0x198>
    22f8:	8fd900a0 	lw	t9,160(s8)
    22fc:	00002825 	move	a1,zero
    2300:	10000147 	b	2820 <func_800C2FE4+0x6ac>
    2304:	00001825 	move	v1,zero
    2308:	8fd900a0 	lw	t9,160(s8)
    230c:	8fd8009c 	lw	t8,156(s8)
    2310:	8fce0098 	lw	t6,152(s8)
    2314:	03348021 	addu	s0,t9,s4
    2318:	03148821 	addu	s1,t8,s4
    231c:	01d49021 	addu	s2,t6,s4
    2320:	2652ffff 	addiu	s2,s2,-1
    2324:	2631ffff 	addiu	s1,s1,-1
    2328:	16c50003 	bne	s6,a1,2338 <func_800C2FE4+0x1c4>
    232c:	2610ffff 	addiu	s0,s0,-1
    2330:	10000002 	b	233c <func_800C2FE4+0x1c8>
    2334:	84621076 	lh	v0,4214(v1)
    2338:	00001025 	move	v0,zero
    233c:	24010003 	li	at,3
    2340:	1441006f 	bne	v0,at,2500 <func_800C2FE4+0x38c>
    2344:	3c040000 	lui	a0,0x0
    2348:	92060001 	lbu	a2,1(s0)
    234c:	92050000 	lbu	a1,0(s0)
    2350:	24840000 	addiu	a0,a0,0
    2354:	00c5082a 	slt	at,a2,a1
    2358:	54200010 	bnezl	at,239c <func_800C2FE4+0x228>
    235c:	92070002 	lbu	a3,2(s0)
    2360:	92070002 	lbu	a3,2(s0)
    2364:	00e6082a 	slt	at,a3,a2
    2368:	54200004 	bnezl	at,237c <func_800C2FE4+0x208>
    236c:	00a7082a 	slt	at,a1,a3
    2370:	10000016 	b	23cc <func_800C2FE4+0x258>
    2374:	00c09825 	move	s3,a2
    2378:	00a7082a 	slt	at,a1,a3
    237c:	14200003 	bnez	at,238c <func_800C2FE4+0x218>
    2380:	00e01825 	move	v1,a3
    2384:	10000001 	b	238c <func_800C2FE4+0x218>
    2388:	00a01825 	move	v1,a1
    238c:	00601025 	move	v0,v1
    2390:	1000000e 	b	23cc <func_800C2FE4+0x258>
    2394:	00409825 	move	s3,v0
    2398:	92070002 	lbu	a3,2(s0)
    239c:	00c7082a 	slt	at,a2,a3
    23a0:	54200004 	bnezl	at,23b4 <func_800C2FE4+0x240>
    23a4:	00e5082a 	slt	at,a3,a1
    23a8:	10000007 	b	23c8 <func_800C2FE4+0x254>
    23ac:	00c01025 	move	v0,a2
    23b0:	00e5082a 	slt	at,a3,a1
    23b4:	14200003 	bnez	at,23c4 <func_800C2FE4+0x250>
    23b8:	00e01825 	move	v1,a3
    23bc:	10000001 	b	23c4 <func_800C2FE4+0x250>
    23c0:	00a01825 	move	v1,a1
    23c4:	00601025 	move	v0,v1
    23c8:	00409825 	move	s3,v0
    23cc:	922c0001 	lbu	t4,1(s1)
    23d0:	922d0000 	lbu	t5,0(s1)
    23d4:	018d082a 	slt	at,t4,t5
    23d8:	54200010 	bnezl	at,241c <func_800C2FE4+0x2a8>
    23dc:	922b0002 	lbu	t3,2(s1)
    23e0:	922b0002 	lbu	t3,2(s1)
    23e4:	016c082a 	slt	at,t3,t4
    23e8:	54200004 	bnezl	at,23fc <func_800C2FE4+0x288>
    23ec:	01ab082a 	slt	at,t5,t3
    23f0:	10000016 	b	244c <func_800C2FE4+0x2d8>
    23f4:	0180f825 	move	ra,t4
    23f8:	01ab082a 	slt	at,t5,t3
    23fc:	14200003 	bnez	at,240c <func_800C2FE4+0x298>
    2400:	01601825 	move	v1,t3
    2404:	10000001 	b	240c <func_800C2FE4+0x298>
    2408:	01a01825 	move	v1,t5
    240c:	00601025 	move	v0,v1
    2410:	1000000e 	b	244c <func_800C2FE4+0x2d8>
    2414:	0040f825 	move	ra,v0
    2418:	922b0002 	lbu	t3,2(s1)
    241c:	018b082a 	slt	at,t4,t3
    2420:	54200004 	bnezl	at,2434 <func_800C2FE4+0x2c0>
    2424:	016d082a 	slt	at,t3,t5
    2428:	10000007 	b	2448 <func_800C2FE4+0x2d4>
    242c:	01801025 	move	v0,t4
    2430:	016d082a 	slt	at,t3,t5
    2434:	14200003 	bnez	at,2444 <func_800C2FE4+0x2d0>
    2438:	01601825 	move	v1,t3
    243c:	10000001 	b	2444 <func_800C2FE4+0x2d0>
    2440:	01a01825 	move	v1,t5
    2444:	00601025 	move	v0,v1
    2448:	0040f825 	move	ra,v0
    244c:	92490001 	lbu	t1,1(s2)
    2450:	924a0000 	lbu	t2,0(s2)
    2454:	012a082a 	slt	at,t1,t2
    2458:	54200010 	bnezl	at,249c <func_800C2FE4+0x328>
    245c:	92480002 	lbu	t0,2(s2)
    2460:	92480002 	lbu	t0,2(s2)
    2464:	0109082a 	slt	at,t0,t1
    2468:	54200004 	bnezl	at,247c <func_800C2FE4+0x308>
    246c:	0148082a 	slt	at,t2,t0
    2470:	10000016 	b	24cc <func_800C2FE4+0x358>
    2474:	01201025 	move	v0,t1
    2478:	0148082a 	slt	at,t2,t0
    247c:	14200003 	bnez	at,248c <func_800C2FE4+0x318>
    2480:	01001025 	move	v0,t0
    2484:	10000001 	b	248c <func_800C2FE4+0x318>
    2488:	01401025 	move	v0,t2
    248c:	00401825 	move	v1,v0
    2490:	1000000e 	b	24cc <func_800C2FE4+0x358>
    2494:	00601025 	move	v0,v1
    2498:	92480002 	lbu	t0,2(s2)
    249c:	0128082a 	slt	at,t1,t0
    24a0:	54200004 	bnezl	at,24b4 <func_800C2FE4+0x340>
    24a4:	010a082a 	slt	at,t0,t2
    24a8:	10000007 	b	24c8 <func_800C2FE4+0x354>
    24ac:	01201825 	move	v1,t1
    24b0:	010a082a 	slt	at,t0,t2
    24b4:	14200003 	bnez	at,24c4 <func_800C2FE4+0x350>
    24b8:	01001025 	move	v0,t0
    24bc:	10000001 	b	24c4 <func_800C2FE4+0x350>
    24c0:	01401025 	move	v0,t2
    24c4:	00401825 	move	v1,v0
    24c8:	00601025 	move	v0,v1
    24cc:	afbf0020 	sw	ra,32(sp)
    24d0:	afb30010 	sw	s3,16(sp)
    24d4:	afad0014 	sw	t5,20(sp)
    24d8:	afac0018 	sw	t4,24(sp)
    24dc:	afab001c 	sw	t3,28(sp)
    24e0:	afaa0024 	sw	t2,36(sp)
    24e4:	afa90028 	sw	t1,40(sp)
    24e8:	afa8002c 	sw	t0,44(sp)
    24ec:	0c000000 	jal	0 <PreRender_SetValuesSave>
    24f0:	afa20030 	sw	v0,48(sp)
    24f4:	3c030000 	lui	v1,0x0
    24f8:	8c630000 	lw	v1,0(v1)
    24fc:	84651074 	lh	a1,4212(v1)
    2500:	16c50003 	bne	s6,a1,2510 <func_800C2FE4+0x39c>
    2504:	24010001 	li	at,1
    2508:	10000002 	b	2514 <func_800C2FE4+0x3a0>
    250c:	84621076 	lh	v0,4214(v1)
    2510:	00001025 	move	v0,zero
    2514:	54410063 	bnel	v0,at,26a4 <func_800C2FE4+0x530>
    2518:	92060001 	lbu	a2,1(s0)
    251c:	92060001 	lbu	a2,1(s0)
    2520:	92050000 	lbu	a1,0(s0)
    2524:	00c5082a 	slt	at,a2,a1
    2528:	54200010 	bnezl	at,256c <func_800C2FE4+0x3f8>
    252c:	92070002 	lbu	a3,2(s0)
    2530:	92070002 	lbu	a3,2(s0)
    2534:	00e6082a 	slt	at,a3,a2
    2538:	54200004 	bnezl	at,254c <func_800C2FE4+0x3d8>
    253c:	00a7082a 	slt	at,a1,a3
    2540:	10000017 	b	25a0 <func_800C2FE4+0x42c>
    2544:	922c0001 	lbu	t4,1(s1)
    2548:	00a7082a 	slt	at,a1,a3
    254c:	14200003 	bnez	at,255c <func_800C2FE4+0x3e8>
    2550:	00e01825 	move	v1,a3
    2554:	10000001 	b	255c <func_800C2FE4+0x3e8>
    2558:	00a01825 	move	v1,a1
    255c:	00601025 	move	v0,v1
    2560:	1000000e 	b	259c <func_800C2FE4+0x428>
    2564:	00403025 	move	a2,v0
    2568:	92070002 	lbu	a3,2(s0)
    256c:	00c7082a 	slt	at,a2,a3
    2570:	54200004 	bnezl	at,2584 <func_800C2FE4+0x410>
    2574:	00e5082a 	slt	at,a3,a1
    2578:	10000007 	b	2598 <func_800C2FE4+0x424>
    257c:	00c01025 	move	v0,a2
    2580:	00e5082a 	slt	at,a3,a1
    2584:	14200003 	bnez	at,2594 <func_800C2FE4+0x420>
    2588:	00e01825 	move	v1,a3
    258c:	10000001 	b	2594 <func_800C2FE4+0x420>
    2590:	00a01825 	move	v1,a1
    2594:	00601025 	move	v0,v1
    2598:	00403025 	move	a2,v0
    259c:	922c0001 	lbu	t4,1(s1)
    25a0:	922d0000 	lbu	t5,0(s1)
    25a4:	018d082a 	slt	at,t4,t5
    25a8:	54200010 	bnezl	at,25ec <func_800C2FE4+0x478>
    25ac:	922b0002 	lbu	t3,2(s1)
    25b0:	922b0002 	lbu	t3,2(s1)
    25b4:	016c082a 	slt	at,t3,t4
    25b8:	54200004 	bnezl	at,25cc <func_800C2FE4+0x458>
    25bc:	01ab082a 	slt	at,t5,t3
    25c0:	10000016 	b	261c <func_800C2FE4+0x4a8>
    25c4:	01802825 	move	a1,t4
    25c8:	01ab082a 	slt	at,t5,t3
    25cc:	14200003 	bnez	at,25dc <func_800C2FE4+0x468>
    25d0:	01601825 	move	v1,t3
    25d4:	10000001 	b	25dc <func_800C2FE4+0x468>
    25d8:	01a01825 	move	v1,t5
    25dc:	00601025 	move	v0,v1
    25e0:	1000000e 	b	261c <func_800C2FE4+0x4a8>
    25e4:	00402825 	move	a1,v0
    25e8:	922b0002 	lbu	t3,2(s1)
    25ec:	018b082a 	slt	at,t4,t3
    25f0:	54200004 	bnezl	at,2604 <func_800C2FE4+0x490>
    25f4:	016d082a 	slt	at,t3,t5
    25f8:	10000007 	b	2618 <func_800C2FE4+0x4a4>
    25fc:	01801025 	move	v0,t4
    2600:	016d082a 	slt	at,t3,t5
    2604:	14200003 	bnez	at,2614 <func_800C2FE4+0x4a0>
    2608:	01601825 	move	v1,t3
    260c:	10000001 	b	2614 <func_800C2FE4+0x4a0>
    2610:	01a01825 	move	v1,t5
    2614:	00601025 	move	v0,v1
    2618:	00402825 	move	a1,v0
    261c:	92490001 	lbu	t1,1(s2)
    2620:	924a0000 	lbu	t2,0(s2)
    2624:	012a082a 	slt	at,t1,t2
    2628:	54200010 	bnezl	at,266c <func_800C2FE4+0x4f8>
    262c:	92480002 	lbu	t0,2(s2)
    2630:	92480002 	lbu	t0,2(s2)
    2634:	0109082a 	slt	at,t0,t1
    2638:	54200004 	bnezl	at,264c <func_800C2FE4+0x4d8>
    263c:	0148082a 	slt	at,t2,t0
    2640:	10000077 	b	2820 <func_800C2FE4+0x6ac>
    2644:	01201825 	move	v1,t1
    2648:	0148082a 	slt	at,t2,t0
    264c:	14200003 	bnez	at,265c <func_800C2FE4+0x4e8>
    2650:	01001825 	move	v1,t0
    2654:	10000001 	b	265c <func_800C2FE4+0x4e8>
    2658:	01401825 	move	v1,t2
    265c:	00601025 	move	v0,v1
    2660:	1000006f 	b	2820 <func_800C2FE4+0x6ac>
    2664:	00401825 	move	v1,v0
    2668:	92480002 	lbu	t0,2(s2)
    266c:	0128082a 	slt	at,t1,t0
    2670:	54200004 	bnezl	at,2684 <func_800C2FE4+0x510>
    2674:	010a082a 	slt	at,t0,t2
    2678:	10000069 	b	2820 <func_800C2FE4+0x6ac>
    267c:	01201825 	move	v1,t1
    2680:	010a082a 	slt	at,t0,t2
    2684:	14200003 	bnez	at,2694 <func_800C2FE4+0x520>
    2688:	01001825 	move	v1,t0
    268c:	10000001 	b	2694 <func_800C2FE4+0x520>
    2690:	01401825 	move	v1,t2
    2694:	00601025 	move	v0,v1
    2698:	10000061 	b	2820 <func_800C2FE4+0x6ac>
    269c:	00401825 	move	v1,v0
    26a0:	92060001 	lbu	a2,1(s0)
    26a4:	92050000 	lbu	a1,0(s0)
    26a8:	00c5082a 	slt	at,a2,a1
    26ac:	54200010 	bnezl	at,26f0 <func_800C2FE4+0x57c>
    26b0:	92070002 	lbu	a3,2(s0)
    26b4:	92070002 	lbu	a3,2(s0)
    26b8:	00e6082a 	slt	at,a3,a2
    26bc:	54200004 	bnezl	at,26d0 <func_800C2FE4+0x55c>
    26c0:	00a7082a 	slt	at,a1,a3
    26c4:	10000017 	b	2724 <func_800C2FE4+0x5b0>
    26c8:	922c0001 	lbu	t4,1(s1)
    26cc:	00a7082a 	slt	at,a1,a3
    26d0:	14200003 	bnez	at,26e0 <func_800C2FE4+0x56c>
    26d4:	00e01825 	move	v1,a3
    26d8:	10000001 	b	26e0 <func_800C2FE4+0x56c>
    26dc:	00a01825 	move	v1,a1
    26e0:	00601025 	move	v0,v1
    26e4:	1000000e 	b	2720 <func_800C2FE4+0x5ac>
    26e8:	00403025 	move	a2,v0
    26ec:	92070002 	lbu	a3,2(s0)
    26f0:	00c7082a 	slt	at,a2,a3
    26f4:	54200004 	bnezl	at,2708 <func_800C2FE4+0x594>
    26f8:	00e5082a 	slt	at,a3,a1
    26fc:	10000007 	b	271c <func_800C2FE4+0x5a8>
    2700:	00c01025 	move	v0,a2
    2704:	00e5082a 	slt	at,a3,a1
    2708:	14200003 	bnez	at,2718 <func_800C2FE4+0x5a4>
    270c:	00e01825 	move	v1,a3
    2710:	10000001 	b	2718 <func_800C2FE4+0x5a4>
    2714:	00a01825 	move	v1,a1
    2718:	00601025 	move	v0,v1
    271c:	00403025 	move	a2,v0
    2720:	922c0001 	lbu	t4,1(s1)
    2724:	922d0000 	lbu	t5,0(s1)
    2728:	018d082a 	slt	at,t4,t5
    272c:	54200010 	bnezl	at,2770 <func_800C2FE4+0x5fc>
    2730:	922b0002 	lbu	t3,2(s1)
    2734:	922b0002 	lbu	t3,2(s1)
    2738:	016c082a 	slt	at,t3,t4
    273c:	54200004 	bnezl	at,2750 <func_800C2FE4+0x5dc>
    2740:	01ab082a 	slt	at,t5,t3
    2744:	10000016 	b	27a0 <func_800C2FE4+0x62c>
    2748:	01802825 	move	a1,t4
    274c:	01ab082a 	slt	at,t5,t3
    2750:	14200003 	bnez	at,2760 <func_800C2FE4+0x5ec>
    2754:	01601825 	move	v1,t3
    2758:	10000001 	b	2760 <func_800C2FE4+0x5ec>
    275c:	01a01825 	move	v1,t5
    2760:	00601025 	move	v0,v1
    2764:	1000000e 	b	27a0 <func_800C2FE4+0x62c>
    2768:	00402825 	move	a1,v0
    276c:	922b0002 	lbu	t3,2(s1)
    2770:	018b082a 	slt	at,t4,t3
    2774:	54200004 	bnezl	at,2788 <func_800C2FE4+0x614>
    2778:	016d082a 	slt	at,t3,t5
    277c:	10000007 	b	279c <func_800C2FE4+0x628>
    2780:	01801025 	move	v0,t4
    2784:	016d082a 	slt	at,t3,t5
    2788:	14200003 	bnez	at,2798 <func_800C2FE4+0x624>
    278c:	01601825 	move	v1,t3
    2790:	10000001 	b	2798 <func_800C2FE4+0x624>
    2794:	01a01825 	move	v1,t5
    2798:	00601025 	move	v0,v1
    279c:	00402825 	move	a1,v0
    27a0:	92490001 	lbu	t1,1(s2)
    27a4:	924a0000 	lbu	t2,0(s2)
    27a8:	012a082a 	slt	at,t1,t2
    27ac:	54200010 	bnezl	at,27f0 <func_800C2FE4+0x67c>
    27b0:	92480002 	lbu	t0,2(s2)
    27b4:	92480002 	lbu	t0,2(s2)
    27b8:	0109082a 	slt	at,t0,t1
    27bc:	54200004 	bnezl	at,27d0 <func_800C2FE4+0x65c>
    27c0:	0148082a 	slt	at,t2,t0
    27c4:	10000016 	b	2820 <func_800C2FE4+0x6ac>
    27c8:	01201825 	move	v1,t1
    27cc:	0148082a 	slt	at,t2,t0
    27d0:	14200003 	bnez	at,27e0 <func_800C2FE4+0x66c>
    27d4:	01001825 	move	v1,t0
    27d8:	10000001 	b	27e0 <func_800C2FE4+0x66c>
    27dc:	01401825 	move	v1,t2
    27e0:	00601025 	move	v0,v1
    27e4:	1000000e 	b	2820 <func_800C2FE4+0x6ac>
    27e8:	00401825 	move	v1,v0
    27ec:	92480002 	lbu	t0,2(s2)
    27f0:	0128082a 	slt	at,t1,t0
    27f4:	54200004 	bnezl	at,2808 <func_800C2FE4+0x694>
    27f8:	010a082a 	slt	at,t0,t2
    27fc:	10000007 	b	281c <func_800C2FE4+0x6a8>
    2800:	01201025 	move	v0,t1
    2804:	010a082a 	slt	at,t0,t2
    2808:	14200003 	bnez	at,2818 <func_800C2FE4+0x6a4>
    280c:	01001825 	move	v1,t0
    2810:	10000001 	b	2818 <func_800C2FE4+0x6a4>
    2814:	01401825 	move	v1,t2
    2818:	00601025 	move	v0,v1
    281c:	00401825 	move	v1,v0
    2820:	93ce0078 	lbu	t6,120(s8)
    2824:	0006c0c0 	sll	t8,a2,0x3
    2828:	31cfff07 	andi	t7,t6,0xff07
    282c:	030fc825 	or	t9,t8,t7
    2830:	a3d90078 	sb	t9,120(s8)
    2834:	97d90078 	lhu	t9,120(s8)
    2838:	0005c180 	sll	t8,a1,0x6
    283c:	330f07c0 	andi	t7,t8,0x7c0
    2840:	332ef83f 	andi	t6,t9,0xf83f
    2844:	01eec025 	or	t8,t7,t6
    2848:	a7d80078 	sh	t8,120(s8)
    284c:	93d80079 	lbu	t8,121(s8)
    2850:	00037840 	sll	t7,v1,0x1
    2854:	31ee003e 	andi	t6,t7,0x3e
    2858:	3319ffc1 	andi	t9,t8,0xffc1
    285c:	01d97825 	or	t7,t6,t9
    2860:	01e07025 	move	t6,t7
    2864:	a3cf0079 	sb	t7,121(s8)
    2868:	35d90001 	ori	t9,t6,0x1
    286c:	a3d90079 	sb	t9,121(s8)
    2870:	8eaf0000 	lw	t7,0(s5)
    2874:	02ef0019 	multu	s7,t7
    2878:	00002012 	mflo	a0
	...
    2884:	8eae0014 	lw	t6,20(s5)
    2888:	0014c840 	sll	t9,s4,0x1
    288c:	97d80078 	lhu	t8,120(s8)
    2890:	01d97821 	addu	t7,t6,t9
    2894:	00047040 	sll	t6,a0,0x1
    2898:	01eec821 	addu	t9,t7,t6
    289c:	a7380000 	sh	t8,0(t9)
    28a0:	8ea50000 	lw	a1,0(s5)
    28a4:	24a3ffff 	addiu	v1,a1,-1
    28a8:	26940001 	addiu	s4,s4,1
    28ac:	0283082a 	slt	at,s4,v1
    28b0:	1420fe73 	bnez	at,2280 <func_800C2FE4+0x10c>
    28b4:	00000000 	nop
    28b8:	8eaf0004 	lw	t7,4(s5)
    28bc:	26f70001 	addiu	s7,s7,1
    28c0:	02ef082a 	slt	at,s7,t7
    28c4:	1420fe49 	bnez	at,21ec <func_800C2FE4+0x78>
    28c8:	00000000 	nop
    28cc:	8fdf0074 	lw	ra,116(s8)
    28d0:	03c0e825 	move	sp,s8
    28d4:	8fd00050 	lw	s0,80(s8)
    28d8:	8fd10054 	lw	s1,84(s8)
    28dc:	8fd20058 	lw	s2,88(s8)
    28e0:	8fd3005c 	lw	s3,92(s8)
    28e4:	8fd40060 	lw	s4,96(s8)
    28e8:	8fd50064 	lw	s5,100(s8)
    28ec:	8fd60068 	lw	s6,104(s8)
    28f0:	8fd7006c 	lw	s7,108(s8)
    28f4:	8fde0070 	lw	s8,112(s8)
    28f8:	03e00008 	jr	ra
    28fc:	27bd00b0 	addiu	sp,sp,176

00002900 <PreRender_Calc>:
    2900:	27bdffd8 	addiu	sp,sp,-40
    2904:	afbf0024 	sw	ra,36(sp)
    2908:	afb30020 	sw	s3,32(sp)
    290c:	afb2001c 	sw	s2,28(sp)
    2910:	afb10018 	sw	s1,24(sp)
    2914:	afb00014 	sw	s0,20(sp)
    2918:	8c8e0018 	lw	t6,24(a0)
    291c:	00809025 	move	s2,a0
    2920:	51c00032 	beqzl	t6,29ec <PreRender_Calc+0xec>
    2924:	8fbf0024 	lw	ra,36(sp)
    2928:	8c8f0014 	lw	t7,20(a0)
    292c:	51e0002f 	beqzl	t7,29ec <PreRender_Calc+0xec>
    2930:	8fbf0024 	lw	ra,36(sp)
    2934:	8c820004 	lw	v0,4(a0)
    2938:	00008825 	move	s1,zero
    293c:	24130008 	li	s3,8
    2940:	1840001c 	blez	v0,29b4 <PreRender_Calc+0xb4>
    2944:	00000000 	nop
    2948:	8c830000 	lw	v1,0(a0)
    294c:	18600015 	blez	v1,29a4 <PreRender_Calc+0xa4>
    2950:	00008025 	move	s0,zero
    2954:	02230019 	multu	s1,v1
    2958:	8e580018 	lw	t8,24(s2)
    295c:	02402025 	move	a0,s2
    2960:	02002825 	move	a1,s0
    2964:	0310c821 	addu	t9,t8,s0
    2968:	00004012 	mflo	t0
    296c:	03284821 	addu	t1,t9,t0
    2970:	91220000 	lbu	v0,0(t1)
    2974:	00021143 	sra	v0,v0,0x5
    2978:	24420001 	addiu	v0,v0,1
    297c:	50530005 	beql	v0,s3,2994 <PreRender_Calc+0x94>
    2980:	26100001 	addiu	s0,s0,1
    2984:	0c000000 	jal	0 <PreRender_SetValuesSave>
    2988:	02203025 	move	a2,s1
    298c:	8e430000 	lw	v1,0(s2)
    2990:	26100001 	addiu	s0,s0,1
    2994:	0203082a 	slt	at,s0,v1
    2998:	1420ffee 	bnez	at,2954 <PreRender_Calc+0x54>
    299c:	00000000 	nop
    29a0:	8e420004 	lw	v0,4(s2)
    29a4:	26310001 	addiu	s1,s1,1
    29a8:	0222082a 	slt	at,s1,v0
    29ac:	1420ffe7 	bnez	at,294c <PreRender_Calc+0x4c>
    29b0:	00000000 	nop
    29b4:	3c020000 	lui	v0,0x0
    29b8:	8c420000 	lw	v0,0(v0)
    29bc:	2401000f 	li	at,15
    29c0:	00001825 	move	v1,zero
    29c4:	844a1074 	lh	t2,4212(v0)
    29c8:	15410003 	bne	t2,at,29d8 <PreRender_Calc+0xd8>
    29cc:	00000000 	nop
    29d0:	10000001 	b	29d8 <PreRender_Calc+0xd8>
    29d4:	84431076 	lh	v1,4214(v0)
    29d8:	50600004 	beqzl	v1,29ec <PreRender_Calc+0xec>
    29dc:	8fbf0024 	lw	ra,36(sp)
    29e0:	0c000000 	jal	0 <PreRender_SetValuesSave>
    29e4:	02402025 	move	a0,s2
    29e8:	8fbf0024 	lw	ra,36(sp)
    29ec:	8fb00014 	lw	s0,20(sp)
    29f0:	8fb10018 	lw	s1,24(sp)
    29f4:	8fb2001c 	lw	s2,28(sp)
    29f8:	8fb30020 	lw	s3,32(sp)
    29fc:	03e00008 	jr	ra
    2a00:	27bd0028 	addiu	sp,sp,40
	...
