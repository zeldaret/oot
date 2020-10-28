
build/src/overlays/actors/ovl_En_GirlA/z_en_girla.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <func_80A3A750>:
       0:	03e00008 	jr	ra
       4:	ac850190 	sw	a1,400(a0)

00000008 <func_80A3A758>:
       8:	848e001c 	lh	t6,28(a0)
       c:	25cfffef 	addiu	t7,t6,-17
      10:	2de1000c 	sltiu	at,t7,12
      14:	10200057 	beqz	at,174 <func_80A3A758+0x16c>
      18:	000f7880 	sll	t7,t7,0x2
      1c:	3c010000 	lui	at,0x0
      20:	002f0821 	addu	at,at,t7
      24:	8c2f03d8 	lw	t7,984(at)
      28:	01e00008 	jr	t7
      2c:	00000000 	nop
      30:	3c180000 	lui	t8,0x0
      34:	97180ef0 	lhu	t8,3824(t8)
      38:	24080010 	li	t0,16
      3c:	24020001 	li	v0,1
      40:	33190004 	andi	t9,t8,0x4
      44:	5320004c 	beqzl	t9,178 <func_80A3A758+0x170>
      48:	00001025 	move	v0,zero
      4c:	03e00008 	jr	ra
      50:	a488001c 	sh	t0,28(a0)
      54:	3c090000 	lui	t1,0x0
      58:	95290ef0 	lhu	t1,3824(t1)
      5c:	240b0026 	li	t3,38
      60:	24020001 	li	v0,1
      64:	312a0040 	andi	t2,t1,0x40
      68:	51400043 	beqzl	t2,178 <func_80A3A758+0x170>
      6c:	00001025 	move	v0,zero
      70:	03e00008 	jr	ra
      74:	a48b001c 	sh	t3,28(a0)
      78:	3c0c0000 	lui	t4,0x0
      7c:	958c0ef0 	lhu	t4,3824(t4)
      80:	240e0026 	li	t6,38
      84:	24020001 	li	v0,1
      88:	318d0080 	andi	t5,t4,0x80
      8c:	51a0003a 	beqzl	t5,178 <func_80A3A758+0x170>
      90:	00001025 	move	v0,zero
      94:	03e00008 	jr	ra
      98:	a48e001c 	sh	t6,28(a0)
      9c:	3c0f0000 	lui	t7,0x0
      a0:	95ef0ef0 	lhu	t7,3824(t7)
      a4:	24190026 	li	t9,38
      a8:	24020001 	li	v0,1
      ac:	31f80100 	andi	t8,t7,0x100
      b0:	53000031 	beqzl	t8,178 <func_80A3A758+0x170>
      b4:	00001025 	move	v0,zero
      b8:	03e00008 	jr	ra
      bc:	a499001c 	sh	t9,28(a0)
      c0:	3c080000 	lui	t0,0x0
      c4:	95080ef0 	lhu	t0,3824(t0)
      c8:	240a0026 	li	t2,38
      cc:	24020001 	li	v0,1
      d0:	31090200 	andi	t1,t0,0x200
      d4:	51200028 	beqzl	t1,178 <func_80A3A758+0x170>
      d8:	00001025 	move	v0,zero
      dc:	03e00008 	jr	ra
      e0:	a48a001c 	sh	t2,28(a0)
      e4:	3c0b0000 	lui	t3,0x0
      e8:	956b0ef0 	lhu	t3,3824(t3)
      ec:	240d0026 	li	t5,38
      f0:	24020001 	li	v0,1
      f4:	316c0400 	andi	t4,t3,0x400
      f8:	5180001f 	beqzl	t4,178 <func_80A3A758+0x170>
      fc:	00001025 	move	v0,zero
     100:	03e00008 	jr	ra
     104:	a48d001c 	sh	t5,28(a0)
     108:	3c0e0000 	lui	t6,0x0
     10c:	95ce0ef0 	lhu	t6,3824(t6)
     110:	24180026 	li	t8,38
     114:	24020001 	li	v0,1
     118:	31cf0008 	andi	t7,t6,0x8
     11c:	51e00016 	beqzl	t7,178 <func_80A3A758+0x170>
     120:	00001025 	move	v0,zero
     124:	03e00008 	jr	ra
     128:	a498001c 	sh	t8,28(a0)
     12c:	3c190000 	lui	t9,0x0
     130:	97390ef0 	lhu	t9,3824(t9)
     134:	24090026 	li	t1,38
     138:	24020001 	li	v0,1
     13c:	33280010 	andi	t0,t9,0x10
     140:	5100000d 	beqzl	t0,178 <func_80A3A758+0x170>
     144:	00001025 	move	v0,zero
     148:	03e00008 	jr	ra
     14c:	a489001c 	sh	t1,28(a0)
     150:	3c0a0000 	lui	t2,0x0
     154:	954a0ef0 	lhu	t2,3824(t2)
     158:	240c0026 	li	t4,38
     15c:	24020001 	li	v0,1
     160:	314b0020 	andi	t3,t2,0x20
     164:	51600004 	beqzl	t3,178 <func_80A3A758+0x170>
     168:	00001025 	move	v0,zero
     16c:	03e00008 	jr	ra
     170:	a48c001c 	sh	t4,28(a0)
     174:	00001025 	move	v0,zero
     178:	03e00008 	jr	ra
     17c:	00000000 	nop

00000180 <func_80A3A8D0>:
     180:	27bdffd8 	addiu	sp,sp,-40
     184:	afbf001c 	sw	ra,28(sp)
     188:	afb00018 	sw	s0,24(sp)
     18c:	afa5002c 	sw	a1,44(sp)
     190:	8486001c 	lh	a2,28(a0)
     194:	3c0f0000 	lui	t7,0x0
     198:	00808025 	move	s0,a0
     19c:	25ef0000 	addiu	t7,t7,0
     1a0:	00067080 	sll	t6,a2,0x2
     1a4:	01cf1021 	addu	v0,t6,t7
     1a8:	3c040000 	lui	a0,0x0
     1ac:	24840320 	addiu	a0,a0,800
     1b0:	8c450000 	lw	a1,0(v0)
     1b4:	afa20020 	sw	v0,32(sp)
     1b8:	0c000000 	jal	0 <func_80A3A750>
     1bc:	a7a60026 	sh	a2,38(sp)
     1c0:	87a60026 	lh	a2,38(sp)
     1c4:	8fa4002c 	lw	a0,44(sp)
     1c8:	3c050000 	lui	a1,0x0
     1cc:	28c10032 	slti	at,a2,50
     1d0:	14200017 	bnez	at,230 <func_80A3A8D0+0xb0>
     1d4:	0006c140 	sll	t8,a2,0x5
     1d8:	04c30016 	bgezl	a2,234 <func_80A3A8D0+0xb4>
     1dc:	3c010001 	lui	at,0x1
     1e0:	0c000000 	jal	0 <func_80A3A750>
     1e4:	02002025 	move	a0,s0
     1e8:	3c040000 	lui	a0,0x0
     1ec:	0c000000 	jal	0 <func_80A3A750>
     1f0:	24840334 	addiu	a0,a0,820
     1f4:	3c040000 	lui	a0,0x0
     1f8:	24840340 	addiu	a0,a0,832
     1fc:	0c000000 	jal	0 <func_80A3A750>
     200:	8605001c 	lh	a1,28(s0)
     204:	3c040000 	lui	a0,0x0
     208:	0c000000 	jal	0 <func_80A3A750>
     20c:	24840364 	addiu	a0,a0,868
     210:	3c040000 	lui	a0,0x0
     214:	3c050000 	lui	a1,0x0
     218:	24a5036c 	addiu	a1,a1,876
     21c:	24840368 	addiu	a0,a0,872
     220:	0c000000 	jal	0 <func_80A3A750>
     224:	2406058d 	li	a2,1421
     228:	10000027 	b	2c8 <func_80A3A8D0+0x148>
     22c:	8fbf001c 	lw	ra,28(sp)
     230:	3c010001 	lui	at,0x1
     234:	342117a4 	ori	at,at,0x17a4
     238:	00b82821 	addu	a1,a1,t8
     23c:	84a50000 	lh	a1,0(a1)
     240:	00812021 	addu	a0,a0,at
     244:	0c000000 	jal	0 <func_80A3A750>
     248:	a7a60026 	sh	a2,38(sp)
     24c:	87a60026 	lh	a2,38(sp)
     250:	a2020194 	sb	v0,404(s0)
     254:	82190194 	lb	t9,404(s0)
     258:	3c090000 	lui	t1,0x0
     25c:	25290000 	addiu	t1,t1,0
     260:	07230017 	bgezl	t9,2c0 <func_80A3A8D0+0x140>
     264:	a606001c 	sh	a2,28(s0)
     268:	0c000000 	jal	0 <func_80A3A750>
     26c:	02002025 	move	a0,s0
     270:	3c040000 	lui	a0,0x0
     274:	0c000000 	jal	0 <func_80A3A750>
     278:	2484037c 	addiu	a0,a0,892
     27c:	8fa80020 	lw	t0,32(sp)
     280:	3c040000 	lui	a0,0x0
     284:	24840388 	addiu	a0,a0,904
     288:	0c000000 	jal	0 <func_80A3A750>
     28c:	8d050000 	lw	a1,0(t0)
     290:	3c040000 	lui	a0,0x0
     294:	0c000000 	jal	0 <func_80A3A750>
     298:	248403a0 	addiu	a0,a0,928
     29c:	3c040000 	lui	a0,0x0
     2a0:	3c050000 	lui	a1,0x0
     2a4:	24a503a8 	addiu	a1,a1,936
     2a8:	248403a4 	addiu	a0,a0,932
     2ac:	0c000000 	jal	0 <func_80A3A750>
     2b0:	2406059a 	li	a2,1434
     2b4:	10000004 	b	2c8 <func_80A3A8D0+0x148>
     2b8:	8fbf001c 	lw	ra,28(sp)
     2bc:	a606001c 	sh	a2,28(s0)
     2c0:	ae090198 	sw	t1,408(s0)
     2c4:	8fbf001c 	lw	ra,28(sp)
     2c8:	8fb00018 	lw	s0,24(sp)
     2cc:	27bd0028 	addiu	sp,sp,40
     2d0:	03e00008 	jr	ra
     2d4:	00000000 	nop

000002d8 <EnGirlA_Init>:
     2d8:	27bdffe8 	addiu	sp,sp,-24
     2dc:	afbf0014 	sw	ra,20(sp)
     2e0:	afa40018 	sw	a0,24(sp)
     2e4:	0c000000 	jal	0 <func_80A3A750>
     2e8:	afa5001c 	sw	a1,28(sp)
     2ec:	8fa40018 	lw	a0,24(sp)
     2f0:	0c000000 	jal	0 <func_80A3A750>
     2f4:	8fa5001c 	lw	a1,28(sp)
     2f8:	8fae0018 	lw	t6,24(sp)
     2fc:	3c050000 	lui	a1,0x0
     300:	3c040000 	lui	a0,0x0
     304:	85c6001c 	lh	a2,28(t6)
     308:	248403b8 	addiu	a0,a0,952
     30c:	00067880 	sll	t7,a2,0x2
     310:	00af2821 	addu	a1,a1,t7
     314:	0c000000 	jal	0 <func_80A3A750>
     318:	8ca50000 	lw	a1,0(a1)
     31c:	8fbf0014 	lw	ra,20(sp)
     320:	27bd0018 	addiu	sp,sp,24
     324:	03e00008 	jr	ra
     328:	00000000 	nop

0000032c <EnGirlA_Destroy>:
     32c:	27bdffe8 	addiu	sp,sp,-24
     330:	afbf0014 	sw	ra,20(sp)
     334:	8c8e019c 	lw	t6,412(a0)
     338:	51c00004 	beqzl	t6,34c <EnGirlA_Destroy+0x20>
     33c:	8fbf0014 	lw	ra,20(sp)
     340:	0c000000 	jal	0 <func_80A3A750>
     344:	2484014c 	addiu	a0,a0,332
     348:	8fbf0014 	lw	ra,20(sp)
     34c:	27bd0018 	addiu	sp,sp,24
     350:	03e00008 	jr	ra
     354:	00000000 	nop

00000358 <func_80A3AAA8>:
     358:	27bdffe8 	addiu	sp,sp,-24
     35c:	afbf0014 	sw	ra,20(sp)
     360:	afa40018 	sw	a0,24(sp)
     364:	afa5001c 	sw	a1,28(sp)
     368:	0c000000 	jal	0 <func_80A3A750>
     36c:	24040003 	li	a0,3
     370:	240100ff 	li	at,255
     374:	14410003 	bne	v0,at,384 <func_80A3AAA8+0x2c>
     378:	8fbf0014 	lw	ra,20(sp)
     37c:	10000020 	b	400 <func_80A3AAA8+0xa8>
     380:	24020005 	li	v0,5
     384:	3c020000 	lui	v0,0x0
     388:	24420000 	addiu	v0,v0,0
     38c:	3c080000 	lui	t0,0x0
     390:	8d080000 	lw	t0,0(t0)
     394:	8c5900a0 	lw	t9,160(v0)
     398:	3c0a0000 	lui	t2,0x0
     39c:	914a0000 	lbu	t2,0(t2)
     3a0:	3c0e0000 	lui	t6,0x0
     3a4:	91ce0003 	lbu	t6,3(t6)
     3a8:	03284824 	and	t1,t9,t0
     3ac:	01495807 	srav	t3,t1,t2
     3b0:	000b6040 	sll	t4,t3,0x1
     3b4:	3c0d0000 	lui	t5,0x0
     3b8:	01ac6821 	addu	t5,t5,t4
     3bc:	004e7821 	addu	t7,v0,t6
     3c0:	81f8008c 	lb	t8,140(t7)
     3c4:	95ad0000 	lhu	t5,0(t5)
     3c8:	8faf001c 	lw	t7,28(sp)
     3cc:	030d082a 	slt	at,t8,t5
     3d0:	54200004 	bnezl	at,3e4 <func_80A3AAA8+0x8c>
     3d4:	844e0034 	lh	t6,52(v0)
     3d8:	10000009 	b	400 <func_80A3AAA8+0xa8>
     3dc:	24020002 	li	v0,2
     3e0:	844e0034 	lh	t6,52(v0)
     3e4:	85f901c8 	lh	t9,456(t7)
     3e8:	24020001 	li	v0,1
     3ec:	01d9082a 	slt	at,t6,t9
     3f0:	10200003 	beqz	at,400 <func_80A3AAA8+0xa8>
     3f4:	00000000 	nop
     3f8:	10000001 	b	400 <func_80A3AAA8+0xa8>
     3fc:	24020004 	li	v0,4
     400:	03e00008 	jr	ra
     404:	27bd0018 	addiu	sp,sp,24

00000408 <func_80A3AB58>:
     408:	3c020000 	lui	v0,0x0
     40c:	24420000 	addiu	v0,v0,0
     410:	3c0e0000 	lui	t6,0x0
     414:	8dce004c 	lw	t6,76(t6)
     418:	8c4f00a4 	lw	t7,164(v0)
     41c:	afa40000 	sw	a0,0(sp)
     420:	3c190000 	lui	t9,0x0
     424:	01cfc024 	and	t8,t6,t7
     428:	17000003 	bnez	t8,438 <func_80A3AB58+0x30>
     42c:	3c0b0000 	lui	t3,0x0
     430:	03e00008 	jr	ra
     434:	24020002 	li	v0,2
     438:	8c4a00a0 	lw	t2,160(v0)
     43c:	8d6b0004 	lw	t3,4(t3)
     440:	3c0d0000 	lui	t5,0x0
     444:	91ad0001 	lbu	t5,1(t5)
     448:	93390002 	lbu	t9,2(t9)
     44c:	014b6024 	and	t4,t2,t3
     450:	01ac7007 	srav	t6,t4,t5
     454:	000e7840 	sll	t7,t6,0x1
     458:	3c180000 	lui	t8,0x0
     45c:	030fc021 	addu	t8,t8,t7
     460:	00594021 	addu	t0,v0,t9
     464:	8109008c 	lb	t1,140(t0)
     468:	97180008 	lhu	t8,8(t8)
     46c:	0138082a 	slt	at,t1,t8
     470:	54200004 	bnezl	at,484 <func_80A3AB58+0x7c>
     474:	84590034 	lh	t9,52(v0)
     478:	03e00008 	jr	ra
     47c:	24020002 	li	v0,2
     480:	84590034 	lh	t9,52(v0)
     484:	84a801c8 	lh	t0,456(a1)
     488:	24020001 	li	v0,1
     48c:	0328082a 	slt	at,t9,t0
     490:	10200003 	beqz	at,4a0 <func_80A3AB58+0x98>
     494:	00000000 	nop
     498:	03e00008 	jr	ra
     49c:	24020004 	li	v0,4
     4a0:	03e00008 	jr	ra
     4a4:	00000000 	nop

000004a8 <func_80A3ABF8>:
     4a8:	3c030000 	lui	v1,0x0
     4ac:	24630000 	addiu	v1,v1,0
     4b0:	3c0f0000 	lui	t7,0x0
     4b4:	8def001c 	lw	t7,28(t7)
     4b8:	8c6e00a0 	lw	t6,160(v1)
     4bc:	3c190000 	lui	t9,0x0
     4c0:	93390007 	lbu	t9,7(t9)
     4c4:	01cfc024 	and	t8,t6,t7
     4c8:	3c020000 	lui	v0,0x0
     4cc:	03384007 	srav	t0,t8,t9
     4d0:	00084840 	sll	t1,t0,0x1
     4d4:	00491021 	addu	v0,v0,t1
     4d8:	94420038 	lhu	v0,56(v0)
     4dc:	27bdffe8 	addiu	sp,sp,-24
     4e0:	afbf0014 	sw	ra,20(sp)
     4e4:	1040000a 	beqz	v0,510 <func_80A3ABF8+0x68>
     4e8:	afa40018 	sw	a0,24(sp)
     4ec:	3c0a0000 	lui	t2,0x0
     4f0:	914a0001 	lbu	t2,1(t2)
     4f4:	006a5821 	addu	t3,v1,t2
     4f8:	816c008c 	lb	t4,140(t3)
     4fc:	0182082a 	slt	at,t4,v0
     500:	54200004 	bnezl	at,514 <func_80A3ABF8+0x6c>
     504:	846d0034 	lh	t5,52(v1)
     508:	10000010 	b	54c <func_80A3ABF8+0xa4>
     50c:	24020002 	li	v0,2
     510:	846d0034 	lh	t5,52(v1)
     514:	84ae01c8 	lh	t6,456(a1)
     518:	01ae082a 	slt	at,t5,t6
     51c:	10200003 	beqz	at,52c <func_80A3ABF8+0x84>
     520:	00000000 	nop
     524:	10000009 	b	54c <func_80A3ABF8+0xa4>
     528:	24020004 	li	v0,4
     52c:	0c000000 	jal	0 <func_80A3A750>
     530:	24040001 	li	a0,1
     534:	240100ff 	li	at,255
     538:	54410004 	bnel	v0,at,54c <func_80A3ABF8+0xa4>
     53c:	24020001 	li	v0,1
     540:	10000002 	b	54c <func_80A3ABF8+0xa4>
     544:	00001025 	move	v0,zero
     548:	24020001 	li	v0,1
     54c:	8fbf0014 	lw	ra,20(sp)
     550:	27bd0018 	addiu	sp,sp,24
     554:	03e00008 	jr	ra
     558:	00000000 	nop

0000055c <func_80A3ACAC>:
     55c:	3c030000 	lui	v1,0x0
     560:	24630000 	addiu	v1,v1,0
     564:	3c0f0000 	lui	t7,0x0
     568:	8def0018 	lw	t7,24(t7)
     56c:	8c6e00a0 	lw	t6,160(v1)
     570:	3c190000 	lui	t9,0x0
     574:	93390006 	lbu	t9,6(t9)
     578:	01cfc024 	and	t8,t6,t7
     57c:	3c020000 	lui	v0,0x0
     580:	03384007 	srav	t0,t8,t9
     584:	00084840 	sll	t1,t0,0x1
     588:	00491021 	addu	v0,v0,t1
     58c:	94420030 	lhu	v0,48(v0)
     590:	27bdffe8 	addiu	sp,sp,-24
     594:	afbf0014 	sw	ra,20(sp)
     598:	1040000a 	beqz	v0,5c4 <func_80A3ACAC+0x68>
     59c:	afa40018 	sw	a0,24(sp)
     5a0:	3c0a0000 	lui	t2,0x0
     5a4:	914a0000 	lbu	t2,0(t2)
     5a8:	006a5821 	addu	t3,v1,t2
     5ac:	816c008c 	lb	t4,140(t3)
     5b0:	0182082a 	slt	at,t4,v0
     5b4:	54200004 	bnezl	at,5c8 <func_80A3ACAC+0x6c>
     5b8:	846d0034 	lh	t5,52(v1)
     5bc:	10000010 	b	600 <func_80A3ACAC+0xa4>
     5c0:	24020002 	li	v0,2
     5c4:	846d0034 	lh	t5,52(v1)
     5c8:	84ae01c8 	lh	t6,456(a1)
     5cc:	01ae082a 	slt	at,t5,t6
     5d0:	10200003 	beqz	at,5e0 <func_80A3ACAC+0x84>
     5d4:	00000000 	nop
     5d8:	10000009 	b	600 <func_80A3ACAC+0xa4>
     5dc:	24020004 	li	v0,4
     5e0:	0c000000 	jal	0 <func_80A3A750>
     5e4:	00002025 	move	a0,zero
     5e8:	240100ff 	li	at,255
     5ec:	54410004 	bnel	v0,at,600 <func_80A3ACAC+0xa4>
     5f0:	24020001 	li	v0,1
     5f4:	10000002 	b	600 <func_80A3ACAC+0xa4>
     5f8:	00001025 	move	v0,zero
     5fc:	24020001 	li	v0,1
     600:	8fbf0014 	lw	ra,20(sp)
     604:	27bd0018 	addiu	sp,sp,24
     608:	03e00008 	jr	ra
     60c:	00000000 	nop

00000610 <func_80A3AD60>:
     610:	27bdffe8 	addiu	sp,sp,-24
     614:	afbf0014 	sw	ra,20(sp)
     618:	afa40018 	sw	a0,24(sp)
     61c:	0c000000 	jal	0 <func_80A3A750>
     620:	afa5001c 	sw	a1,28(sp)
     624:	14400003 	bnez	v0,634 <func_80A3AD60+0x24>
     628:	8faf001c 	lw	t7,28(sp)
     62c:	10000011 	b	674 <func_80A3AD60+0x64>
     630:	24020003 	li	v0,3
     634:	3c0e0000 	lui	t6,0x0
     638:	85ce0034 	lh	t6,52(t6)
     63c:	85f801c8 	lh	t8,456(t7)
     640:	01d8082a 	slt	at,t6,t8
     644:	10200003 	beqz	at,654 <func_80A3AD60+0x44>
     648:	00000000 	nop
     64c:	10000009 	b	674 <func_80A3AD60+0x64>
     650:	24020004 	li	v0,4
     654:	0c000000 	jal	0 <func_80A3A750>
     658:	24040019 	li	a0,25
     65c:	240100ff 	li	at,255
     660:	54410004 	bnel	v0,at,674 <func_80A3AD60+0x64>
     664:	24020001 	li	v0,1
     668:	10000002 	b	674 <func_80A3AD60+0x64>
     66c:	00001025 	move	v0,zero
     670:	24020001 	li	v0,1
     674:	8fbf0014 	lw	ra,20(sp)
     678:	27bd0018 	addiu	sp,sp,24
     67c:	03e00008 	jr	ra
     680:	00000000 	nop

00000684 <func_80A3ADD4>:
     684:	27bdffe8 	addiu	sp,sp,-24
     688:	afbf0014 	sw	ra,20(sp)
     68c:	afa40018 	sw	a0,24(sp)
     690:	0c000000 	jal	0 <func_80A3A750>
     694:	afa5001c 	sw	a1,28(sp)
     698:	14400003 	bnez	v0,6a8 <func_80A3ADD4+0x24>
     69c:	8faf001c 	lw	t7,28(sp)
     6a0:	10000011 	b	6e8 <func_80A3ADD4+0x64>
     6a4:	24020003 	li	v0,3
     6a8:	3c0e0000 	lui	t6,0x0
     6ac:	85ce0034 	lh	t6,52(t6)
     6b0:	85f801c8 	lh	t8,456(t7)
     6b4:	01d8082a 	slt	at,t6,t8
     6b8:	10200003 	beqz	at,6c8 <func_80A3ADD4+0x44>
     6bc:	00000000 	nop
     6c0:	10000009 	b	6e8 <func_80A3ADD4+0x64>
     6c4:	24020004 	li	v0,4
     6c8:	0c000000 	jal	0 <func_80A3A750>
     6cc:	24040015 	li	a0,21
     6d0:	240100ff 	li	at,255
     6d4:	54410004 	bnel	v0,at,6e8 <func_80A3ADD4+0x64>
     6d8:	24020001 	li	v0,1
     6dc:	10000002 	b	6e8 <func_80A3ADD4+0x64>
     6e0:	00001025 	move	v0,zero
     6e4:	24020001 	li	v0,1
     6e8:	8fbf0014 	lw	ra,20(sp)
     6ec:	27bd0018 	addiu	sp,sp,24
     6f0:	03e00008 	jr	ra
     6f4:	00000000 	nop

000006f8 <func_80A3AE48>:
     6f8:	27bdffe8 	addiu	sp,sp,-24
     6fc:	afbf0014 	sw	ra,20(sp)
     700:	afa40018 	sw	a0,24(sp)
     704:	0c000000 	jal	0 <func_80A3A750>
     708:	afa5001c 	sw	a1,28(sp)
     70c:	14400003 	bnez	v0,71c <func_80A3AE48+0x24>
     710:	8faf001c 	lw	t7,28(sp)
     714:	10000011 	b	75c <func_80A3AE48+0x64>
     718:	24020003 	li	v0,3
     71c:	3c0e0000 	lui	t6,0x0
     720:	85ce0034 	lh	t6,52(t6)
     724:	85f801c8 	lh	t8,456(t7)
     728:	01d8082a 	slt	at,t6,t8
     72c:	10200003 	beqz	at,73c <func_80A3AE48+0x44>
     730:	00000000 	nop
     734:	10000009 	b	75c <func_80A3AE48+0x64>
     738:	24020004 	li	v0,4
     73c:	0c000000 	jal	0 <func_80A3A750>
     740:	24040016 	li	a0,22
     744:	240100ff 	li	at,255
     748:	54410004 	bnel	v0,at,75c <func_80A3AE48+0x64>
     74c:	24020001 	li	v0,1
     750:	10000002 	b	75c <func_80A3AE48+0x64>
     754:	00001025 	move	v0,zero
     758:	24020001 	li	v0,1
     75c:	8fbf0014 	lw	ra,20(sp)
     760:	27bd0018 	addiu	sp,sp,24
     764:	03e00008 	jr	ra
     768:	00000000 	nop

0000076c <func_80A3AEBC>:
     76c:	27bdffe8 	addiu	sp,sp,-24
     770:	afbf0014 	sw	ra,20(sp)
     774:	afa40018 	sw	a0,24(sp)
     778:	0c000000 	jal	0 <func_80A3A750>
     77c:	afa5001c 	sw	a1,28(sp)
     780:	14400003 	bnez	v0,790 <func_80A3AEBC+0x24>
     784:	8faf001c 	lw	t7,28(sp)
     788:	10000011 	b	7d0 <func_80A3AEBC+0x64>
     78c:	24020003 	li	v0,3
     790:	3c0e0000 	lui	t6,0x0
     794:	85ce0034 	lh	t6,52(t6)
     798:	85f801c8 	lh	t8,456(t7)
     79c:	01d8082a 	slt	at,t6,t8
     7a0:	10200003 	beqz	at,7b0 <func_80A3AEBC+0x44>
     7a4:	00000000 	nop
     7a8:	10000009 	b	7d0 <func_80A3AEBC+0x64>
     7ac:	24020004 	li	v0,4
     7b0:	0c000000 	jal	0 <func_80A3A750>
     7b4:	24040017 	li	a0,23
     7b8:	240100ff 	li	at,255
     7bc:	54410004 	bnel	v0,at,7d0 <func_80A3AEBC+0x64>
     7c0:	24020001 	li	v0,1
     7c4:	10000002 	b	7d0 <func_80A3AEBC+0x64>
     7c8:	00001025 	move	v0,zero
     7cc:	24020001 	li	v0,1
     7d0:	8fbf0014 	lw	ra,20(sp)
     7d4:	27bd0018 	addiu	sp,sp,24
     7d8:	03e00008 	jr	ra
     7dc:	00000000 	nop

000007e0 <func_80A3AF30>:
     7e0:	27bdffe8 	addiu	sp,sp,-24
     7e4:	afa40018 	sw	a0,24(sp)
     7e8:	3c040000 	lui	a0,0x0
     7ec:	3c030000 	lui	v1,0x0
     7f0:	24630000 	addiu	v1,v1,0
     7f4:	24840000 	addiu	a0,a0,0
     7f8:	9482009c 	lhu	v0,156(a0)
     7fc:	8c6e0008 	lw	t6,8(v1)
     800:	afbf0014 	sw	ra,20(sp)
     804:	01c27824 	and	t7,t6,v0
     808:	51e00008 	beqzl	t7,82c <func_80A3AF30+0x4c>
     80c:	84880034 	lh	t0,52(a0)
     810:	8c78000c 	lw	t8,12(v1)
     814:	0302c824 	and	t9,t8,v0
     818:	57200004 	bnezl	t9,82c <func_80A3AF30+0x4c>
     81c:	84880034 	lh	t0,52(a0)
     820:	10000010 	b	864 <func_80A3AF30+0x84>
     824:	24020002 	li	v0,2
     828:	84880034 	lh	t0,52(a0)
     82c:	84a901c8 	lh	t1,456(a1)
     830:	0109082a 	slt	at,t0,t1
     834:	10200003 	beqz	at,844 <func_80A3AF30+0x64>
     838:	00000000 	nop
     83c:	10000009 	b	864 <func_80A3AF30+0x84>
     840:	24020004 	li	v0,4
     844:	0c000000 	jal	0 <func_80A3A750>
     848:	2404003d 	li	a0,61
     84c:	240100ff 	li	at,255
     850:	54410004 	bnel	v0,at,864 <func_80A3AF30+0x84>
     854:	24020001 	li	v0,1
     858:	10000002 	b	864 <func_80A3AF30+0x84>
     85c:	00001025 	move	v0,zero
     860:	24020001 	li	v0,1
     864:	8fbf0014 	lw	ra,20(sp)
     868:	27bd0018 	addiu	sp,sp,24
     86c:	03e00008 	jr	ra
     870:	00000000 	nop

00000874 <func_80A3AFC4>:
     874:	3c020000 	lui	v0,0x0
     878:	24420000 	addiu	v0,v0,0
     87c:	3c0e0000 	lui	t6,0x0
     880:	8dce0014 	lw	t6,20(t6)
     884:	944f009c 	lhu	t7,156(v0)
     888:	27bdffe8 	addiu	sp,sp,-24
     88c:	afbf0014 	sw	ra,20(sp)
     890:	01cfc024 	and	t8,t6,t7
     894:	13000003 	beqz	t8,8a4 <func_80A3AFC4+0x30>
     898:	afa40018 	sw	a0,24(sp)
     89c:	10000010 	b	8e0 <func_80A3AFC4+0x6c>
     8a0:	24020002 	li	v0,2
     8a4:	84590034 	lh	t9,52(v0)
     8a8:	84a801c8 	lh	t0,456(a1)
     8ac:	0328082a 	slt	at,t9,t0
     8b0:	10200003 	beqz	at,8c0 <func_80A3AFC4+0x4c>
     8b4:	00000000 	nop
     8b8:	10000009 	b	8e0 <func_80A3AFC4+0x6c>
     8bc:	24020004 	li	v0,4
     8c0:	0c000000 	jal	0 <func_80A3A750>
     8c4:	2404003f 	li	a0,63
     8c8:	240100ff 	li	at,255
     8cc:	54410004 	bnel	v0,at,8e0 <func_80A3AFC4+0x6c>
     8d0:	24020001 	li	v0,1
     8d4:	10000002 	b	8e0 <func_80A3AFC4+0x6c>
     8d8:	00001025 	move	v0,zero
     8dc:	24020001 	li	v0,1
     8e0:	8fbf0014 	lw	ra,20(sp)
     8e4:	27bd0018 	addiu	sp,sp,24
     8e8:	03e00008 	jr	ra
     8ec:	00000000 	nop

000008f0 <func_80A3B040>:
     8f0:	3c020000 	lui	v0,0x0
     8f4:	24420000 	addiu	v0,v0,0
     8f8:	3c0e0000 	lui	t6,0x0
     8fc:	8dce0010 	lw	t6,16(t6)
     900:	944f009c 	lhu	t7,156(v0)
     904:	27bdffe8 	addiu	sp,sp,-24
     908:	afbf0014 	sw	ra,20(sp)
     90c:	01cfc024 	and	t8,t6,t7
     910:	13000003 	beqz	t8,920 <func_80A3B040+0x30>
     914:	afa40018 	sw	a0,24(sp)
     918:	10000010 	b	95c <func_80A3B040+0x6c>
     91c:	24020002 	li	v0,2
     920:	84590034 	lh	t9,52(v0)
     924:	84a801c8 	lh	t0,456(a1)
     928:	0328082a 	slt	at,t9,t0
     92c:	10200003 	beqz	at,93c <func_80A3B040+0x4c>
     930:	00000000 	nop
     934:	10000009 	b	95c <func_80A3B040+0x6c>
     938:	24020004 	li	v0,4
     93c:	0c000000 	jal	0 <func_80A3A750>
     940:	2404003e 	li	a0,62
     944:	240100ff 	li	at,255
     948:	54410004 	bnel	v0,at,95c <func_80A3B040+0x6c>
     94c:	24020001 	li	v0,1
     950:	10000002 	b	95c <func_80A3B040+0x6c>
     954:	00001025 	move	v0,zero
     958:	24020001 	li	v0,1
     95c:	8fbf0014 	lw	ra,20(sp)
     960:	27bd0018 	addiu	sp,sp,24
     964:	03e00008 	jr	ra
     968:	00000000 	nop

0000096c <func_80A3B0BC>:
     96c:	3c030000 	lui	v1,0x0
     970:	24630000 	addiu	v1,v1,0
     974:	8c6e0004 	lw	t6,4(v1)
     978:	27bdffe8 	addiu	sp,sp,-24
     97c:	afbf0014 	sw	ra,20(sp)
     980:	11c00003 	beqz	t6,990 <func_80A3B0BC+0x24>
     984:	afa40018 	sw	a0,24(sp)
     988:	10000002 	b	994 <func_80A3B0BC+0x28>
     98c:	24020005 	li	v0,5
     990:	24020011 	li	v0,17
     994:	24010005 	li	at,5
     998:	14410003 	bne	v0,at,9a8 <func_80A3B0BC+0x3c>
     99c:	3c0f0000 	lui	t7,0x0
     9a0:	10000017 	b	a00 <func_80A3B0BC+0x94>
     9a4:	24020002 	li	v0,2
     9a8:	8def0024 	lw	t7,36(t7)
     9ac:	9478009c 	lhu	t8,156(v1)
     9b0:	01f8c824 	and	t9,t7,t8
     9b4:	53200004 	beqzl	t9,9c8 <func_80A3B0BC+0x5c>
     9b8:	84680034 	lh	t0,52(v1)
     9bc:	10000010 	b	a00 <func_80A3B0BC+0x94>
     9c0:	24020002 	li	v0,2
     9c4:	84680034 	lh	t0,52(v1)
     9c8:	84a901c8 	lh	t1,456(a1)
     9cc:	0109082a 	slt	at,t0,t1
     9d0:	10200003 	beqz	at,9e0 <func_80A3B0BC+0x74>
     9d4:	00000000 	nop
     9d8:	10000009 	b	a00 <func_80A3B0BC+0x94>
     9dc:	24020004 	li	v0,4
     9e0:	0c000000 	jal	0 <func_80A3A750>
     9e4:	24040042 	li	a0,66
     9e8:	240100ff 	li	at,255
     9ec:	54410004 	bnel	v0,at,a00 <func_80A3B0BC+0x94>
     9f0:	24020001 	li	v0,1
     9f4:	10000002 	b	a00 <func_80A3B0BC+0x94>
     9f8:	00001025 	move	v0,zero
     9fc:	24020001 	li	v0,1
     a00:	8fbf0014 	lw	ra,20(sp)
     a04:	27bd0018 	addiu	sp,sp,24
     a08:	03e00008 	jr	ra
     a0c:	00000000 	nop

00000a10 <func_80A3B160>:
     a10:	3c030000 	lui	v1,0x0
     a14:	24630000 	addiu	v1,v1,0
     a18:	8c6e0004 	lw	t6,4(v1)
     a1c:	27bdffe8 	addiu	sp,sp,-24
     a20:	afbf0014 	sw	ra,20(sp)
     a24:	11c00003 	beqz	t6,a34 <func_80A3B160+0x24>
     a28:	afa40018 	sw	a0,24(sp)
     a2c:	10000002 	b	a38 <func_80A3B160+0x28>
     a30:	24020005 	li	v0,5
     a34:	24020011 	li	v0,17
     a38:	24010005 	li	at,5
     a3c:	14410003 	bne	v0,at,a4c <func_80A3B160+0x3c>
     a40:	3c0f0000 	lui	t7,0x0
     a44:	10000017 	b	aa4 <func_80A3B160+0x94>
     a48:	24020002 	li	v0,2
     a4c:	8def0028 	lw	t7,40(t7)
     a50:	9478009c 	lhu	t8,156(v1)
     a54:	01f8c824 	and	t9,t7,t8
     a58:	53200004 	beqzl	t9,a6c <func_80A3B160+0x5c>
     a5c:	84680034 	lh	t0,52(v1)
     a60:	10000010 	b	aa4 <func_80A3B160+0x94>
     a64:	24020002 	li	v0,2
     a68:	84680034 	lh	t0,52(v1)
     a6c:	84a901c8 	lh	t1,456(a1)
     a70:	0109082a 	slt	at,t0,t1
     a74:	10200003 	beqz	at,a84 <func_80A3B160+0x74>
     a78:	00000000 	nop
     a7c:	10000009 	b	aa4 <func_80A3B160+0x94>
     a80:	24020004 	li	v0,4
     a84:	0c000000 	jal	0 <func_80A3A750>
     a88:	24040043 	li	a0,67
     a8c:	240100ff 	li	at,255
     a90:	54410004 	bnel	v0,at,aa4 <func_80A3B160+0x94>
     a94:	24020001 	li	v0,1
     a98:	10000002 	b	aa4 <func_80A3B160+0x94>
     a9c:	00001025 	move	v0,zero
     aa0:	24020001 	li	v0,1
     aa4:	8fbf0014 	lw	ra,20(sp)
     aa8:	27bd0018 	addiu	sp,sp,24
     aac:	03e00008 	jr	ra
     ab0:	00000000 	nop

00000ab4 <func_80A3B204>:
     ab4:	3c020000 	lui	v0,0x0
     ab8:	24420000 	addiu	v0,v0,0
     abc:	844e0030 	lh	t6,48(v0)
     ac0:	844f002e 	lh	t7,46(v0)
     ac4:	afa40000 	sw	a0,0(sp)
     ac8:	55cf0004 	bnel	t6,t7,adc <func_80A3B204+0x28>
     acc:	84580034 	lh	t8,52(v0)
     ad0:	03e00008 	jr	ra
     ad4:	24020002 	li	v0,2
     ad8:	84580034 	lh	t8,52(v0)
     adc:	84b901c8 	lh	t9,456(a1)
     ae0:	24020001 	li	v0,1
     ae4:	0319082a 	slt	at,t8,t9
     ae8:	10200003 	beqz	at,af8 <func_80A3B204+0x44>
     aec:	00000000 	nop
     af0:	03e00008 	jr	ra
     af4:	24020004 	li	v0,4
     af8:	03e00008 	jr	ra
     afc:	00000000 	nop

00000b00 <func_80A3B250>:
     b00:	27bdffe8 	addiu	sp,sp,-24
     b04:	afbf0014 	sw	ra,20(sp)
     b08:	afa40018 	sw	a0,24(sp)
     b0c:	3c0e0000 	lui	t6,0x0
     b10:	85ce0034 	lh	t6,52(t6)
     b14:	84af01c8 	lh	t7,456(a1)
     b18:	01cf082a 	slt	at,t6,t7
     b1c:	10200003 	beqz	at,b2c <func_80A3B250+0x2c>
     b20:	00000000 	nop
     b24:	10000009 	b	b4c <func_80A3B250+0x4c>
     b28:	24020004 	li	v0,4
     b2c:	0c000000 	jal	0 <func_80A3A750>
     b30:	2404001a 	li	a0,26
     b34:	240100ff 	li	at,255
     b38:	54410004 	bnel	v0,at,b4c <func_80A3B250+0x4c>
     b3c:	24020001 	li	v0,1
     b40:	10000002 	b	b4c <func_80A3B250+0x4c>
     b44:	00001025 	move	v0,zero
     b48:	24020001 	li	v0,1
     b4c:	8fbf0014 	lw	ra,20(sp)
     b50:	27bd0018 	addiu	sp,sp,24
     b54:	03e00008 	jr	ra
     b58:	00000000 	nop

00000b5c <func_80A3B2AC>:
     b5c:	27bdffe8 	addiu	sp,sp,-24
     b60:	afbf0014 	sw	ra,20(sp)
     b64:	afa40018 	sw	a0,24(sp)
     b68:	3c0e0000 	lui	t6,0x0
     b6c:	85ce0034 	lh	t6,52(t6)
     b70:	84af01c8 	lh	t7,456(a1)
     b74:	01cf082a 	slt	at,t6,t7
     b78:	10200003 	beqz	at,b88 <func_80A3B2AC+0x2c>
     b7c:	00000000 	nop
     b80:	10000009 	b	ba8 <func_80A3B2AC+0x4c>
     b84:	24020004 	li	v0,4
     b88:	0c000000 	jal	0 <func_80A3A750>
     b8c:	24040023 	li	a0,35
     b90:	240100ff 	li	at,255
     b94:	54410004 	bnel	v0,at,ba8 <func_80A3B2AC+0x4c>
     b98:	24020001 	li	v0,1
     b9c:	10000002 	b	ba8 <func_80A3B2AC+0x4c>
     ba0:	00001025 	move	v0,zero
     ba4:	24020001 	li	v0,1
     ba8:	8fbf0014 	lw	ra,20(sp)
     bac:	27bd0018 	addiu	sp,sp,24
     bb0:	03e00008 	jr	ra
     bb4:	00000000 	nop

00000bb8 <func_80A3B308>:
     bb8:	afa40000 	sw	a0,0(sp)
     bbc:	afa50004 	sw	a1,4(sp)
     bc0:	03e00008 	jr	ra
     bc4:	24020004 	li	v0,4

00000bc8 <func_80A3B318>:
     bc8:	afa40000 	sw	a0,0(sp)
     bcc:	afa50004 	sw	a1,4(sp)
     bd0:	03e00008 	jr	ra
     bd4:	24020004 	li	v0,4

00000bd8 <func_80A3B328>:
     bd8:	3c0e0000 	lui	t6,0x0
     bdc:	91ce0009 	lbu	t6,9(t6)
     be0:	3c020000 	lui	v0,0x0
     be4:	24420000 	addiu	v0,v0,0
     be8:	004e7821 	addu	t7,v0,t6
     bec:	81f8008c 	lb	t8,140(t7)
     bf0:	27bdffe8 	addiu	sp,sp,-24
     bf4:	afbf0014 	sw	ra,20(sp)
     bf8:	2b010032 	slti	at,t8,50
     bfc:	14200003 	bnez	at,c0c <func_80A3B328+0x34>
     c00:	afa40018 	sw	a0,24(sp)
     c04:	10000010 	b	c48 <func_80A3B328+0x70>
     c08:	24020002 	li	v0,2
     c0c:	84590034 	lh	t9,52(v0)
     c10:	84a801c8 	lh	t0,456(a1)
     c14:	0328082a 	slt	at,t9,t0
     c18:	10200003 	beqz	at,c28 <func_80A3B328+0x50>
     c1c:	00000000 	nop
     c20:	10000009 	b	c48 <func_80A3B328+0x70>
     c24:	24020004 	li	v0,4
     c28:	0c000000 	jal	0 <func_80A3A750>
     c2c:	24040009 	li	a0,9
     c30:	240100ff 	li	at,255
     c34:	54410004 	bnel	v0,at,c48 <func_80A3B328+0x70>
     c38:	24020001 	li	v0,1
     c3c:	10000002 	b	c48 <func_80A3B328+0x70>
     c40:	00001025 	move	v0,zero
     c44:	24020001 	li	v0,1
     c48:	8fbf0014 	lw	ra,20(sp)
     c4c:	27bd0018 	addiu	sp,sp,24
     c50:	03e00008 	jr	ra
     c54:	00000000 	nop

00000c58 <func_80A3B3A8>:
     c58:	3c020000 	lui	v0,0x0
     c5c:	24420000 	addiu	v0,v0,0
     c60:	3c080000 	lui	t0,0x0
     c64:	8d080014 	lw	t0,20(t0)
     c68:	8c5900a0 	lw	t9,160(v0)
     c6c:	3c0a0000 	lui	t2,0x0
     c70:	914a0005 	lbu	t2,5(t2)
     c74:	3c0e0000 	lui	t6,0x0
     c78:	91ce0006 	lbu	t6,6(t6)
     c7c:	03284824 	and	t1,t9,t0
     c80:	01495807 	srav	t3,t1,t2
     c84:	000b6040 	sll	t4,t3,0x1
     c88:	3c0d0000 	lui	t5,0x0
     c8c:	01ac6821 	addu	t5,t5,t4
     c90:	004e7821 	addu	t7,v0,t6
     c94:	81f8008c 	lb	t8,140(t7)
     c98:	95ad0028 	lhu	t5,40(t5)
     c9c:	27bdffe8 	addiu	sp,sp,-24
     ca0:	afbf0014 	sw	ra,20(sp)
     ca4:	030d082a 	slt	at,t8,t5
     ca8:	14200003 	bnez	at,cb8 <func_80A3B3A8+0x60>
     cac:	afa40018 	sw	a0,24(sp)
     cb0:	10000010 	b	cf4 <func_80A3B3A8+0x9c>
     cb4:	24020002 	li	v0,2
     cb8:	844e0034 	lh	t6,52(v0)
     cbc:	84af01c8 	lh	t7,456(a1)
     cc0:	01cf082a 	slt	at,t6,t7
     cc4:	10200003 	beqz	at,cd4 <func_80A3B3A8+0x7c>
     cc8:	00000000 	nop
     ccc:	10000009 	b	cf4 <func_80A3B3A8+0x9c>
     cd0:	24020004 	li	v0,4
     cd4:	0c000000 	jal	0 <func_80A3A750>
     cd8:	24040058 	li	a0,88
     cdc:	240100ff 	li	at,255
     ce0:	54410004 	bnel	v0,at,cf4 <func_80A3B3A8+0x9c>
     ce4:	24020001 	li	v0,1
     ce8:	10000002 	b	cf4 <func_80A3B3A8+0x9c>
     cec:	00001025 	move	v0,zero
     cf0:	24020001 	li	v0,1
     cf4:	8fbf0014 	lw	ra,20(sp)
     cf8:	27bd0018 	addiu	sp,sp,24
     cfc:	03e00008 	jr	ra
     d00:	00000000 	nop

00000d04 <func_80A3B454>:
     d04:	afa40000 	sw	a0,0(sp)
     d08:	afa50004 	sw	a1,4(sp)
     d0c:	03e00008 	jr	ra
     d10:	24020005 	li	v0,5

00000d14 <func_80A3B464>:
     d14:	27bdffe8 	addiu	sp,sp,-24
     d18:	afbf0014 	sw	ra,20(sp)
     d1c:	afa40018 	sw	a0,24(sp)
     d20:	0c000000 	jal	0 <func_80A3A750>
     d24:	afa5001c 	sw	a1,28(sp)
     d28:	14400003 	bnez	v0,d38 <func_80A3B464+0x24>
     d2c:	8faf001c 	lw	t7,28(sp)
     d30:	10000011 	b	d78 <func_80A3B464+0x64>
     d34:	24020003 	li	v0,3
     d38:	3c0e0000 	lui	t6,0x0
     d3c:	85ce0034 	lh	t6,52(t6)
     d40:	85f801c8 	lh	t8,456(t7)
     d44:	01d8082a 	slt	at,t6,t8
     d48:	10200003 	beqz	at,d58 <func_80A3B464+0x44>
     d4c:	00000000 	nop
     d50:	10000009 	b	d78 <func_80A3B464+0x64>
     d54:	24020004 	li	v0,4
     d58:	0c000000 	jal	0 <func_80A3A750>
     d5c:	2404001c 	li	a0,28
     d60:	240100ff 	li	at,255
     d64:	54410004 	bnel	v0,at,d78 <func_80A3B464+0x64>
     d68:	24020001 	li	v0,1
     d6c:	10000002 	b	d78 <func_80A3B464+0x64>
     d70:	00001025 	move	v0,zero
     d74:	24020001 	li	v0,1
     d78:	8fbf0014 	lw	ra,20(sp)
     d7c:	27bd0018 	addiu	sp,sp,24
     d80:	03e00008 	jr	ra
     d84:	00000000 	nop

00000d88 <func_80A3B4D8>:
     d88:	27bdffe8 	addiu	sp,sp,-24
     d8c:	afbf0014 	sw	ra,20(sp)
     d90:	afa40018 	sw	a0,24(sp)
     d94:	0c000000 	jal	0 <func_80A3A750>
     d98:	afa5001c 	sw	a1,28(sp)
     d9c:	14400003 	bnez	v0,dac <func_80A3B4D8+0x24>
     da0:	8faf001c 	lw	t7,28(sp)
     da4:	10000011 	b	dec <func_80A3B4D8+0x64>
     da8:	24020003 	li	v0,3
     dac:	3c0e0000 	lui	t6,0x0
     db0:	85ce0034 	lh	t6,52(t6)
     db4:	85f801c8 	lh	t8,456(t7)
     db8:	01d8082a 	slt	at,t6,t8
     dbc:	10200003 	beqz	at,dcc <func_80A3B4D8+0x44>
     dc0:	00000000 	nop
     dc4:	10000009 	b	dec <func_80A3B4D8+0x64>
     dc8:	24020004 	li	v0,4
     dcc:	0c000000 	jal	0 <func_80A3A750>
     dd0:	2404001d 	li	a0,29
     dd4:	240100ff 	li	at,255
     dd8:	54410004 	bnel	v0,at,dec <func_80A3B4D8+0x64>
     ddc:	24020001 	li	v0,1
     de0:	10000002 	b	dec <func_80A3B4D8+0x64>
     de4:	00001025 	move	v0,zero
     de8:	24020001 	li	v0,1
     dec:	8fbf0014 	lw	ra,20(sp)
     df0:	27bd0018 	addiu	sp,sp,24
     df4:	03e00008 	jr	ra
     df8:	00000000 	nop

00000dfc <func_80A3B54C>:
     dfc:	27bdffe8 	addiu	sp,sp,-24
     e00:	afbf0014 	sw	ra,20(sp)
     e04:	afa40018 	sw	a0,24(sp)
     e08:	0c000000 	jal	0 <func_80A3A750>
     e0c:	afa5001c 	sw	a1,28(sp)
     e10:	14400003 	bnez	v0,e20 <func_80A3B54C+0x24>
     e14:	8faf001c 	lw	t7,28(sp)
     e18:	10000011 	b	e60 <func_80A3B54C+0x64>
     e1c:	24020003 	li	v0,3
     e20:	3c0e0000 	lui	t6,0x0
     e24:	85ce0034 	lh	t6,52(t6)
     e28:	85f801c8 	lh	t8,456(t7)
     e2c:	01d8082a 	slt	at,t6,t8
     e30:	10200003 	beqz	at,e40 <func_80A3B54C+0x44>
     e34:	00000000 	nop
     e38:	10000009 	b	e60 <func_80A3B54C+0x64>
     e3c:	24020004 	li	v0,4
     e40:	0c000000 	jal	0 <func_80A3A750>
     e44:	24040020 	li	a0,32
     e48:	240100ff 	li	at,255
     e4c:	54410004 	bnel	v0,at,e60 <func_80A3B54C+0x64>
     e50:	24020001 	li	v0,1
     e54:	10000002 	b	e60 <func_80A3B54C+0x64>
     e58:	00001025 	move	v0,zero
     e5c:	24020001 	li	v0,1
     e60:	8fbf0014 	lw	ra,20(sp)
     e64:	27bd0018 	addiu	sp,sp,24
     e68:	03e00008 	jr	ra
     e6c:	00000000 	nop

00000e70 <func_80A3B5C0>:
     e70:	27bdffe8 	addiu	sp,sp,-24
     e74:	afbf0014 	sw	ra,20(sp)
     e78:	afa40018 	sw	a0,24(sp)
     e7c:	0c000000 	jal	0 <func_80A3A750>
     e80:	afa5001c 	sw	a1,28(sp)
     e84:	14400003 	bnez	v0,e94 <func_80A3B5C0+0x24>
     e88:	8faf001c 	lw	t7,28(sp)
     e8c:	10000011 	b	ed4 <func_80A3B5C0+0x64>
     e90:	24020003 	li	v0,3
     e94:	3c0e0000 	lui	t6,0x0
     e98:	85ce0034 	lh	t6,52(t6)
     e9c:	85f801c8 	lh	t8,456(t7)
     ea0:	01d8082a 	slt	at,t6,t8
     ea4:	10200003 	beqz	at,eb4 <func_80A3B5C0+0x44>
     ea8:	00000000 	nop
     eac:	10000009 	b	ed4 <func_80A3B5C0+0x64>
     eb0:	24020004 	li	v0,4
     eb4:	0c000000 	jal	0 <func_80A3A750>
     eb8:	24040018 	li	a0,24
     ebc:	240100ff 	li	at,255
     ec0:	54410004 	bnel	v0,at,ed4 <func_80A3B5C0+0x64>
     ec4:	24020001 	li	v0,1
     ec8:	10000002 	b	ed4 <func_80A3B5C0+0x64>
     ecc:	00001025 	move	v0,zero
     ed0:	24020001 	li	v0,1
     ed4:	8fbf0014 	lw	ra,20(sp)
     ed8:	27bd0018 	addiu	sp,sp,24
     edc:	03e00008 	jr	ra
     ee0:	00000000 	nop

00000ee4 <func_80A3B634>:
     ee4:	27bdffe8 	addiu	sp,sp,-24
     ee8:	afbf0014 	sw	ra,20(sp)
     eec:	afa40018 	sw	a0,24(sp)
     ef0:	afa5001c 	sw	a1,28(sp)
     ef4:	84a501ca 	lh	a1,458(a1)
     ef8:	0c000000 	jal	0 <func_80A3A750>
     efc:	24040003 	li	a0,3
     f00:	8faf001c 	lw	t7,28(sp)
     f04:	85e401c8 	lh	a0,456(t7)
     f08:	00042023 	negu	a0,a0
     f0c:	00042400 	sll	a0,a0,0x10
     f10:	0c000000 	jal	0 <func_80A3A750>
     f14:	00042403 	sra	a0,a0,0x10
     f18:	8fbf0014 	lw	ra,20(sp)
     f1c:	27bd0018 	addiu	sp,sp,24
     f20:	03e00008 	jr	ra
     f24:	00000000 	nop

00000f28 <func_80A3B678>:
     f28:	27bdffe8 	addiu	sp,sp,-24
     f2c:	afbf0014 	sw	ra,20(sp)
     f30:	afa5001c 	sw	a1,28(sp)
     f34:	84a201ca 	lh	v0,458(a1)
     f38:	24010005 	li	at,5
     f3c:	10410009 	beq	v0,at,f64 <func_80A3B678+0x3c>
     f40:	2401000a 	li	at,10
     f44:	1041000b 	beq	v0,at,f74 <func_80A3B678+0x4c>
     f48:	24010014 	li	at,20
     f4c:	1041000d 	beq	v0,at,f84 <func_80A3B678+0x5c>
     f50:	2401001e 	li	at,30
     f54:	1041000f 	beq	v0,at,f94 <func_80A3B678+0x6c>
     f58:	00000000 	nop
     f5c:	10000010 	b	fa0 <func_80A3B678+0x78>
     f60:	8faf001c 	lw	t7,28(sp)
     f64:	0c000000 	jal	0 <func_80A3A750>
     f68:	2405008e 	li	a1,142
     f6c:	1000000c 	b	fa0 <func_80A3B678+0x78>
     f70:	8faf001c 	lw	t7,28(sp)
     f74:	0c000000 	jal	0 <func_80A3A750>
     f78:	2405008f 	li	a1,143
     f7c:	10000008 	b	fa0 <func_80A3B678+0x78>
     f80:	8faf001c 	lw	t7,28(sp)
     f84:	0c000000 	jal	0 <func_80A3A750>
     f88:	24050090 	li	a1,144
     f8c:	10000004 	b	fa0 <func_80A3B678+0x78>
     f90:	8faf001c 	lw	t7,28(sp)
     f94:	0c000000 	jal	0 <func_80A3A750>
     f98:	24050091 	li	a1,145
     f9c:	8faf001c 	lw	t7,28(sp)
     fa0:	85e401c8 	lh	a0,456(t7)
     fa4:	00042023 	negu	a0,a0
     fa8:	00042400 	sll	a0,a0,0x10
     fac:	0c000000 	jal	0 <func_80A3A750>
     fb0:	00042403 	sra	a0,a0,0x10
     fb4:	8fbf0014 	lw	ra,20(sp)
     fb8:	27bd0018 	addiu	sp,sp,24
     fbc:	03e00008 	jr	ra
     fc0:	00000000 	nop

00000fc4 <func_80A3B714>:
     fc4:	27bdffe8 	addiu	sp,sp,-24
     fc8:	afbf0014 	sw	ra,20(sp)
     fcc:	afa5001c 	sw	a1,28(sp)
     fd0:	84a201ca 	lh	v0,458(a1)
     fd4:	24010005 	li	at,5
     fd8:	10410005 	beq	v0,at,ff0 <func_80A3B714+0x2c>
     fdc:	2401000a 	li	at,10
     fe0:	10410007 	beq	v0,at,1000 <func_80A3B714+0x3c>
     fe4:	00000000 	nop
     fe8:	10000008 	b	100c <func_80A3B714+0x48>
     fec:	8faf001c 	lw	t7,28(sp)
     ff0:	0c000000 	jal	0 <func_80A3A750>
     ff4:	2405008c 	li	a1,140
     ff8:	10000004 	b	100c <func_80A3B714+0x48>
     ffc:	8faf001c 	lw	t7,28(sp)
    1000:	0c000000 	jal	0 <func_80A3A750>
    1004:	2405008d 	li	a1,141
    1008:	8faf001c 	lw	t7,28(sp)
    100c:	85e401c8 	lh	a0,456(t7)
    1010:	00042023 	negu	a0,a0
    1014:	00042400 	sll	a0,a0,0x10
    1018:	0c000000 	jal	0 <func_80A3A750>
    101c:	00042403 	sra	a0,a0,0x10
    1020:	8fbf0014 	lw	ra,20(sp)
    1024:	27bd0018 	addiu	sp,sp,24
    1028:	03e00008 	jr	ra
    102c:	00000000 	nop

00001030 <func_80A3B780>:
    1030:	27bdffe8 	addiu	sp,sp,-24
    1034:	afbf0014 	sw	ra,20(sp)
    1038:	afa5001c 	sw	a1,28(sp)
    103c:	0c000000 	jal	0 <func_80A3A750>
    1040:	00002825 	move	a1,zero
    1044:	8fae001c 	lw	t6,28(sp)
    1048:	85c401c8 	lh	a0,456(t6)
    104c:	00042023 	negu	a0,a0
    1050:	00042400 	sll	a0,a0,0x10
    1054:	0c000000 	jal	0 <func_80A3A750>
    1058:	00042403 	sra	a0,a0,0x10
    105c:	8fbf0014 	lw	ra,20(sp)
    1060:	27bd0018 	addiu	sp,sp,24
    1064:	03e00008 	jr	ra
    1068:	00000000 	nop

0000106c <func_80A3B7BC>:
    106c:	27bdffe8 	addiu	sp,sp,-24
    1070:	afbf0014 	sw	ra,20(sp)
    1074:	0c000000 	jal	0 <func_80A3A750>
    1078:	afa5001c 	sw	a1,28(sp)
    107c:	8faf001c 	lw	t7,28(sp)
    1080:	240e0008 	li	t6,8
    1084:	3c010000 	lui	at,0x0
    1088:	a42e0036 	sh	t6,54(at)
    108c:	85e401c8 	lh	a0,456(t7)
    1090:	00042023 	negu	a0,a0
    1094:	00042400 	sll	a0,a0,0x10
    1098:	0c000000 	jal	0 <func_80A3A750>
    109c:	00042403 	sra	a0,a0,0x10
    10a0:	8fbf0014 	lw	ra,20(sp)
    10a4:	27bd0018 	addiu	sp,sp,24
    10a8:	03e00008 	jr	ra
    10ac:	00000000 	nop

000010b0 <func_80A3B800>:
    10b0:	27bdffe8 	addiu	sp,sp,-24
    10b4:	afbf0014 	sw	ra,20(sp)
    10b8:	afa5001c 	sw	a1,28(sp)
    10bc:	0c000000 	jal	0 <func_80A3A750>
    10c0:	2405003f 	li	a1,63
    10c4:	8fae001c 	lw	t6,28(sp)
    10c8:	85c401c8 	lh	a0,456(t6)
    10cc:	00042023 	negu	a0,a0
    10d0:	00042400 	sll	a0,a0,0x10
    10d4:	0c000000 	jal	0 <func_80A3A750>
    10d8:	00042403 	sra	a0,a0,0x10
    10dc:	8fbf0014 	lw	ra,20(sp)
    10e0:	27bd0018 	addiu	sp,sp,24
    10e4:	03e00008 	jr	ra
    10e8:	00000000 	nop

000010ec <func_80A3B83C>:
    10ec:	27bdffe8 	addiu	sp,sp,-24
    10f0:	afbf0014 	sw	ra,20(sp)
    10f4:	afa5001c 	sw	a1,28(sp)
    10f8:	0c000000 	jal	0 <func_80A3A750>
    10fc:	2405003e 	li	a1,62
    1100:	8fae001c 	lw	t6,28(sp)
    1104:	85c401c8 	lh	a0,456(t6)
    1108:	00042023 	negu	a0,a0
    110c:	00042400 	sll	a0,a0,0x10
    1110:	0c000000 	jal	0 <func_80A3A750>
    1114:	00042403 	sra	a0,a0,0x10
    1118:	8fbf0014 	lw	ra,20(sp)
    111c:	27bd0018 	addiu	sp,sp,24
    1120:	03e00008 	jr	ra
    1124:	00000000 	nop

00001128 <func_80A3B878>:
    1128:	27bdffe8 	addiu	sp,sp,-24
    112c:	afbf0014 	sw	ra,20(sp)
    1130:	afa5001c 	sw	a1,28(sp)
    1134:	0c000000 	jal	0 <func_80A3A750>
    1138:	24050042 	li	a1,66
    113c:	8fae001c 	lw	t6,28(sp)
    1140:	85c401c8 	lh	a0,456(t6)
    1144:	00042023 	negu	a0,a0
    1148:	00042400 	sll	a0,a0,0x10
    114c:	0c000000 	jal	0 <func_80A3A750>
    1150:	00042403 	sra	a0,a0,0x10
    1154:	8fbf0014 	lw	ra,20(sp)
    1158:	27bd0018 	addiu	sp,sp,24
    115c:	03e00008 	jr	ra
    1160:	00000000 	nop

00001164 <func_80A3B8B4>:
    1164:	27bdffe8 	addiu	sp,sp,-24
    1168:	afbf0014 	sw	ra,20(sp)
    116c:	afa5001c 	sw	a1,28(sp)
    1170:	0c000000 	jal	0 <func_80A3A750>
    1174:	24050043 	li	a1,67
    1178:	8fae001c 	lw	t6,28(sp)
    117c:	85c401c8 	lh	a0,456(t6)
    1180:	00042023 	negu	a0,a0
    1184:	00042400 	sll	a0,a0,0x10
    1188:	0c000000 	jal	0 <func_80A3A750>
    118c:	00042403 	sra	a0,a0,0x10
    1190:	8fbf0014 	lw	ra,20(sp)
    1194:	27bd0018 	addiu	sp,sp,24
    1198:	03e00008 	jr	ra
    119c:	00000000 	nop

000011a0 <func_80A3B8F0>:
    11a0:	27bdffe8 	addiu	sp,sp,-24
    11a4:	afbf0014 	sw	ra,20(sp)
    11a8:	afa5001c 	sw	a1,28(sp)
    11ac:	0c000000 	jal	0 <func_80A3A750>
    11b0:	84a501ca 	lh	a1,458(a1)
    11b4:	8faf001c 	lw	t7,28(sp)
    11b8:	85e401c8 	lh	a0,456(t7)
    11bc:	00042023 	negu	a0,a0
    11c0:	00042400 	sll	a0,a0,0x10
    11c4:	0c000000 	jal	0 <func_80A3A750>
    11c8:	00042403 	sra	a0,a0,0x10
    11cc:	8fbf0014 	lw	ra,20(sp)
    11d0:	27bd0018 	addiu	sp,sp,24
    11d4:	03e00008 	jr	ra
    11d8:	00000000 	nop

000011dc <func_80A3B92C>:
    11dc:	27bdffe8 	addiu	sp,sp,-24
    11e0:	afbf0014 	sw	ra,20(sp)
    11e4:	afa5001c 	sw	a1,28(sp)
    11e8:	0c000000 	jal	0 <func_80A3A750>
    11ec:	2405001a 	li	a1,26
    11f0:	8fae001c 	lw	t6,28(sp)
    11f4:	85c401c8 	lh	a0,456(t6)
    11f8:	00042023 	negu	a0,a0
    11fc:	00042400 	sll	a0,a0,0x10
    1200:	0c000000 	jal	0 <func_80A3A750>
    1204:	00042403 	sra	a0,a0,0x10
    1208:	8fbf0014 	lw	ra,20(sp)
    120c:	27bd0018 	addiu	sp,sp,24
    1210:	03e00008 	jr	ra
    1214:	00000000 	nop

00001218 <func_80A3B968>:
    1218:	27bdffe8 	addiu	sp,sp,-24
    121c:	afbf0014 	sw	ra,20(sp)
    1220:	afa5001c 	sw	a1,28(sp)
    1224:	0c000000 	jal	0 <func_80A3A750>
    1228:	24050021 	li	a1,33
    122c:	8fae001c 	lw	t6,28(sp)
    1230:	85c401c8 	lh	a0,456(t6)
    1234:	00042023 	negu	a0,a0
    1238:	00042400 	sll	a0,a0,0x10
    123c:	0c000000 	jal	0 <func_80A3A750>
    1240:	00042403 	sra	a0,a0,0x10
    1244:	8fbf0014 	lw	ra,20(sp)
    1248:	27bd0018 	addiu	sp,sp,24
    124c:	03e00008 	jr	ra
    1250:	00000000 	nop

00001254 <func_80A3B9A4>:
    1254:	27bdffe8 	addiu	sp,sp,-24
    1258:	afbf0014 	sw	ra,20(sp)
    125c:	afa40018 	sw	a0,24(sp)
    1260:	84a401c8 	lh	a0,456(a1)
    1264:	00042023 	negu	a0,a0
    1268:	00042400 	sll	a0,a0,0x10
    126c:	0c000000 	jal	0 <func_80A3A750>
    1270:	00042403 	sra	a0,a0,0x10
    1274:	8fbf0014 	lw	ra,20(sp)
    1278:	27bd0018 	addiu	sp,sp,24
    127c:	03e00008 	jr	ra
    1280:	00000000 	nop

00001284 <func_80A3B9D4>:
    1284:	27bdffe8 	addiu	sp,sp,-24
    1288:	afbf0014 	sw	ra,20(sp)
    128c:	afa40018 	sw	a0,24(sp)
    1290:	84a401c8 	lh	a0,456(a1)
    1294:	00042023 	negu	a0,a0
    1298:	00042400 	sll	a0,a0,0x10
    129c:	0c000000 	jal	0 <func_80A3A750>
    12a0:	00042403 	sra	a0,a0,0x10
    12a4:	8fbf0014 	lw	ra,20(sp)
    12a8:	27bd0018 	addiu	sp,sp,24
    12ac:	03e00008 	jr	ra
    12b0:	00000000 	nop

000012b4 <func_80A3BA04>:
    12b4:	27bdffe8 	addiu	sp,sp,-24
    12b8:	afbf0014 	sw	ra,20(sp)
    12bc:	afa5001c 	sw	a1,28(sp)
    12c0:	0c000000 	jal	0 <func_80A3A750>
    12c4:	24050095 	li	a1,149
    12c8:	8fae001c 	lw	t6,28(sp)
    12cc:	85c401c8 	lh	a0,456(t6)
    12d0:	00042023 	negu	a0,a0
    12d4:	00042400 	sll	a0,a0,0x10
    12d8:	0c000000 	jal	0 <func_80A3A750>
    12dc:	00042403 	sra	a0,a0,0x10
    12e0:	8fbf0014 	lw	ra,20(sp)
    12e4:	27bd0018 	addiu	sp,sp,24
    12e8:	03e00008 	jr	ra
    12ec:	00000000 	nop

000012f0 <func_80A3BA40>:
    12f0:	27bdffe8 	addiu	sp,sp,-24
    12f4:	afbf0014 	sw	ra,20(sp)
    12f8:	afa5001c 	sw	a1,28(sp)
    12fc:	84a2001c 	lh	v0,28(a1)
    1300:	2841000a 	slti	at,v0,10
    1304:	14200010 	bnez	at,1348 <func_80A3BA40+0x58>
    1308:	244fffd9 	addiu	t7,v0,-39
    130c:	2841000b 	slti	at,v0,11
    1310:	14200008 	bnez	at,1334 <func_80A3BA40+0x44>
    1314:	2de10005 	sltiu	at,t7,5
    1318:	10200036 	beqz	at,13f4 <func_80A3BA40+0x104>
    131c:	000f7880 	sll	t7,t7,0x2
    1320:	3c010000 	lui	at,0x0
    1324:	002f0821 	addu	at,at,t7
    1328:	8c2f0408 	lw	t7,1032(at)
    132c:	01e00008 	jr	t7
    1330:	00000000 	nop
    1334:	2401000a 	li	at,10
    1338:	10410018 	beq	v0,at,139c <func_80A3BA40+0xac>
    133c:	00000000 	nop
    1340:	1000002d 	b	13f8 <func_80A3BA40+0x108>
    1344:	8fb8001c 	lw	t8,28(sp)
    1348:	24010007 	li	at,7
    134c:	10410007 	beq	v0,at,136c <func_80A3BA40+0x7c>
    1350:	24010008 	li	at,8
    1354:	10410009 	beq	v0,at,137c <func_80A3BA40+0x8c>
    1358:	24010009 	li	at,9
    135c:	1041000b 	beq	v0,at,138c <func_80A3BA40+0x9c>
    1360:	00000000 	nop
    1364:	10000024 	b	13f8 <func_80A3BA40+0x108>
    1368:	8fb8001c 	lw	t8,28(sp)
    136c:	0c000000 	jal	0 <func_80A3A750>
    1370:	24050019 	li	a1,25
    1374:	10000020 	b	13f8 <func_80A3BA40+0x108>
    1378:	8fb8001c 	lw	t8,28(sp)
    137c:	0c000000 	jal	0 <func_80A3A750>
    1380:	24050015 	li	a1,21
    1384:	1000001c 	b	13f8 <func_80A3BA40+0x108>
    1388:	8fb8001c 	lw	t8,28(sp)
    138c:	0c000000 	jal	0 <func_80A3A750>
    1390:	24050016 	li	a1,22
    1394:	10000018 	b	13f8 <func_80A3BA40+0x108>
    1398:	8fb8001c 	lw	t8,28(sp)
    139c:	0c000000 	jal	0 <func_80A3A750>
    13a0:	24050017 	li	a1,23
    13a4:	10000014 	b	13f8 <func_80A3BA40+0x108>
    13a8:	8fb8001c 	lw	t8,28(sp)
    13ac:	0c000000 	jal	0 <func_80A3A750>
    13b0:	2405001c 	li	a1,28
    13b4:	10000010 	b	13f8 <func_80A3BA40+0x108>
    13b8:	8fb8001c 	lw	t8,28(sp)
    13bc:	0c000000 	jal	0 <func_80A3A750>
    13c0:	2405001d 	li	a1,29
    13c4:	1000000c 	b	13f8 <func_80A3BA40+0x108>
    13c8:	8fb8001c 	lw	t8,28(sp)
    13cc:	0c000000 	jal	0 <func_80A3A750>
    13d0:	2405001e 	li	a1,30
    13d4:	10000008 	b	13f8 <func_80A3BA40+0x108>
    13d8:	8fb8001c 	lw	t8,28(sp)
    13dc:	0c000000 	jal	0 <func_80A3A750>
    13e0:	24050020 	li	a1,32
    13e4:	10000004 	b	13f8 <func_80A3BA40+0x108>
    13e8:	8fb8001c 	lw	t8,28(sp)
    13ec:	0c000000 	jal	0 <func_80A3A750>
    13f0:	24050018 	li	a1,24
    13f4:	8fb8001c 	lw	t8,28(sp)
    13f8:	870401c8 	lh	a0,456(t8)
    13fc:	00042023 	negu	a0,a0
    1400:	00042400 	sll	a0,a0,0x10
    1404:	0c000000 	jal	0 <func_80A3A750>
    1408:	00042403 	sra	a0,a0,0x10
    140c:	8fbf0014 	lw	ra,20(sp)
    1410:	27bd0018 	addiu	sp,sp,24
    1414:	03e00008 	jr	ra
    1418:	00000000 	nop

0000141c <func_80A3BB6C>:
    141c:	27bdffe8 	addiu	sp,sp,-24
    1420:	afbf0014 	sw	ra,20(sp)
    1424:	afa40018 	sw	a0,24(sp)
    1428:	84ae001c 	lh	t6,28(a1)
    142c:	2401000c 	li	at,12
    1430:	3c0f0000 	lui	t7,0x0
    1434:	55c10019 	bnel	t6,at,149c <func_80A3BB6C+0x80>
    1438:	84a401c8 	lh	a0,456(a1)
    143c:	95ef0f06 	lhu	t7,3846(t7)
    1440:	3c010000 	lui	at,0x0
    1444:	31f80040 	andi	t8,t7,0x40
    1448:	53000014 	beqzl	t8,149c <func_80A3BB6C+0x80>
    144c:	84a401c8 	lh	a0,456(a1)
    1450:	c42c041c 	lwc1	$f12,1052(at)
    1454:	0c000000 	jal	0 <func_80A3A750>
    1458:	afa5001c 	sw	a1,28(sp)
    145c:	4600010d 	trunc.w.s	$f4,$f0
    1460:	8fa5001c 	lw	a1,28(sp)
    1464:	3c0b0000 	lui	t3,0x0
    1468:	44092000 	mfc1	t1,$f4
    146c:	84b901c8 	lh	t9,456(a1)
    1470:	00095040 	sll	t2,t1,0x1
    1474:	016a5821 	addu	t3,t3,t2
    1478:	856b0000 	lh	t3,0(t3)
    147c:	032b2023 	subu	a0,t9,t3
    1480:	00042023 	negu	a0,a0
    1484:	00042400 	sll	a0,a0,0x10
    1488:	0c000000 	jal	0 <func_80A3A750>
    148c:	00042403 	sra	a0,a0,0x10
    1490:	10000007 	b	14b0 <func_80A3BB6C+0x94>
    1494:	8fbf0014 	lw	ra,20(sp)
    1498:	84a401c8 	lh	a0,456(a1)
    149c:	00042023 	negu	a0,a0
    14a0:	00042400 	sll	a0,a0,0x10
    14a4:	0c000000 	jal	0 <func_80A3A750>
    14a8:	00042403 	sra	a0,a0,0x10
    14ac:	8fbf0014 	lw	ra,20(sp)
    14b0:	27bd0018 	addiu	sp,sp,24
    14b4:	03e00008 	jr	ra
    14b8:	00000000 	nop

000014bc <func_80A3BC0C>:
    14bc:	27bdffe8 	addiu	sp,sp,-24
    14c0:	afbf0014 	sw	ra,20(sp)
    14c4:	afa40018 	sw	a0,24(sp)
    14c8:	84a401c8 	lh	a0,456(a1)
    14cc:	00042023 	negu	a0,a0
    14d0:	00042400 	sll	a0,a0,0x10
    14d4:	0c000000 	jal	0 <func_80A3A750>
    14d8:	00042403 	sra	a0,a0,0x10
    14dc:	8fbf0014 	lw	ra,20(sp)
    14e0:	27bd0018 	addiu	sp,sp,24
    14e4:	03e00008 	jr	ra
    14e8:	00000000 	nop

000014ec <func_80A3BC3C>:
    14ec:	27bdffe8 	addiu	sp,sp,-24
    14f0:	afbf0014 	sw	ra,20(sp)
    14f4:	afa40018 	sw	a0,24(sp)
    14f8:	84a401c8 	lh	a0,456(a1)
    14fc:	00042023 	negu	a0,a0
    1500:	00042400 	sll	a0,a0,0x10
    1504:	0c000000 	jal	0 <func_80A3A750>
    1508:	00042403 	sra	a0,a0,0x10
    150c:	8fbf0014 	lw	ra,20(sp)
    1510:	27bd0018 	addiu	sp,sp,24
    1514:	03e00008 	jr	ra
    1518:	00000000 	nop

0000151c <func_80A3BC6C>:
    151c:	27bdffe8 	addiu	sp,sp,-24
    1520:	afbf0014 	sw	ra,20(sp)
    1524:	afa40018 	sw	a0,24(sp)
    1528:	84ae001c 	lh	t6,28(a1)
    152c:	25cfffeb 	addiu	t7,t6,-21
    1530:	2de10008 	sltiu	at,t7,8
    1534:	10200035 	beqz	at,160c <func_80A3BC6C+0xf0>
    1538:	000f7880 	sll	t7,t7,0x2
    153c:	3c010000 	lui	at,0x0
    1540:	002f0821 	addu	at,at,t7
    1544:	8c2f0420 	lw	t7,1056(at)
    1548:	01e00008 	jr	t7
    154c:	00000000 	nop
    1550:	3c020000 	lui	v0,0x0
    1554:	24420000 	addiu	v0,v0,0
    1558:	94580ef0 	lhu	t8,3824(v0)
    155c:	37190040 	ori	t9,t8,0x40
    1560:	1000002a 	b	160c <func_80A3BC6C+0xf0>
    1564:	a4590ef0 	sh	t9,3824(v0)
    1568:	3c020000 	lui	v0,0x0
    156c:	24420000 	addiu	v0,v0,0
    1570:	94480ef0 	lhu	t0,3824(v0)
    1574:	35090080 	ori	t1,t0,0x80
    1578:	10000024 	b	160c <func_80A3BC6C+0xf0>
    157c:	a4490ef0 	sh	t1,3824(v0)
    1580:	3c020000 	lui	v0,0x0
    1584:	24420000 	addiu	v0,v0,0
    1588:	944a0ef0 	lhu	t2,3824(v0)
    158c:	354b0100 	ori	t3,t2,0x100
    1590:	1000001e 	b	160c <func_80A3BC6C+0xf0>
    1594:	a44b0ef0 	sh	t3,3824(v0)
    1598:	3c020000 	lui	v0,0x0
    159c:	24420000 	addiu	v0,v0,0
    15a0:	944c0ef0 	lhu	t4,3824(v0)
    15a4:	358d0200 	ori	t5,t4,0x200
    15a8:	10000018 	b	160c <func_80A3BC6C+0xf0>
    15ac:	a44d0ef0 	sh	t5,3824(v0)
    15b0:	3c020000 	lui	v0,0x0
    15b4:	24420000 	addiu	v0,v0,0
    15b8:	944e0ef0 	lhu	t6,3824(v0)
    15bc:	35cf0400 	ori	t7,t6,0x400
    15c0:	10000012 	b	160c <func_80A3BC6C+0xf0>
    15c4:	a44f0ef0 	sh	t7,3824(v0)
    15c8:	3c020000 	lui	v0,0x0
    15cc:	24420000 	addiu	v0,v0,0
    15d0:	94580ef0 	lhu	t8,3824(v0)
    15d4:	37190008 	ori	t9,t8,0x8
    15d8:	1000000c 	b	160c <func_80A3BC6C+0xf0>
    15dc:	a4590ef0 	sh	t9,3824(v0)
    15e0:	3c020000 	lui	v0,0x0
    15e4:	24420000 	addiu	v0,v0,0
    15e8:	94480ef0 	lhu	t0,3824(v0)
    15ec:	35090010 	ori	t1,t0,0x10
    15f0:	10000006 	b	160c <func_80A3BC6C+0xf0>
    15f4:	a4490ef0 	sh	t1,3824(v0)
    15f8:	3c020000 	lui	v0,0x0
    15fc:	24420000 	addiu	v0,v0,0
    1600:	944a0ef0 	lhu	t2,3824(v0)
    1604:	354b0020 	ori	t3,t2,0x20
    1608:	a44b0ef0 	sh	t3,3824(v0)
    160c:	84a401c8 	lh	a0,456(a1)
    1610:	00042023 	negu	a0,a0
    1614:	00042400 	sll	a0,a0,0x10
    1618:	0c000000 	jal	0 <func_80A3A750>
    161c:	00042403 	sra	a0,a0,0x10
    1620:	8fbf0014 	lw	ra,20(sp)
    1624:	27bd0018 	addiu	sp,sp,24
    1628:	03e00008 	jr	ra
    162c:	00000000 	nop

00001630 <func_80A3BD80>:
    1630:	afa40000 	sw	a0,0(sp)
    1634:	03e00008 	jr	ra
    1638:	afa50004 	sw	a1,4(sp)

0000163c <func_80A3BD8C>:
    163c:	afa40000 	sw	a0,0(sp)
    1640:	84a3001c 	lh	v1,28(a1)
    1644:	3c0f0000 	lui	t7,0x0
    1648:	25ef0000 	addiu	t7,t7,0
    164c:	00037140 	sll	t6,v1,0x5
    1650:	2861001e 	slti	at,v1,30
    1654:	1420003a 	bnez	at,1740 <func_80A3BD8C+0x104>
    1658:	01cf1021 	addu	v0,t6,t7
    165c:	28610023 	slti	at,v1,35
    1660:	10200037 	beqz	at,1740 <func_80A3BD8C+0x104>
    1664:	2464ffe2 	addiu	a0,v1,-30
    1668:	2478ffe2 	addiu	t8,v1,-30
    166c:	2f010005 	sltiu	at,t8,5
    1670:	10200029 	beqz	at,1718 <func_80A3BD8C+0xdc>
    1674:	00003025 	move	a2,zero
    1678:	0018c080 	sll	t8,t8,0x2
    167c:	3c010000 	lui	at,0x0
    1680:	00380821 	addu	at,at,t8
    1684:	8c380440 	lw	t8,1088(at)
    1688:	03000008 	jr	t8
    168c:	00000000 	nop
    1690:	3c190000 	lui	t9,0x0
    1694:	97390ef6 	lhu	t9,3830(t9)
    1698:	33280100 	andi	t0,t9,0x100
    169c:	1100001e 	beqz	t0,1718 <func_80A3BD8C+0xdc>
    16a0:	00000000 	nop
    16a4:	1000001c 	b	1718 <func_80A3BD8C+0xdc>
    16a8:	24060001 	li	a2,1
    16ac:	3c090000 	lui	t1,0x0
    16b0:	95290ef6 	lhu	t1,3830(t1)
    16b4:	312a0400 	andi	t2,t1,0x400
    16b8:	11400017 	beqz	t2,1718 <func_80A3BD8C+0xdc>
    16bc:	00000000 	nop
    16c0:	10000015 	b	1718 <func_80A3BD8C+0xdc>
    16c4:	24060001 	li	a2,1
    16c8:	3c0b0000 	lui	t3,0x0
    16cc:	956b0ef6 	lhu	t3,3830(t3)
    16d0:	316c0200 	andi	t4,t3,0x200
    16d4:	11800010 	beqz	t4,1718 <func_80A3BD8C+0xdc>
    16d8:	00000000 	nop
    16dc:	1000000e 	b	1718 <func_80A3BD8C+0xdc>
    16e0:	24060001 	li	a2,1
    16e4:	3c0d0000 	lui	t5,0x0
    16e8:	95ad0ef6 	lhu	t5,3830(t5)
    16ec:	31ae0800 	andi	t6,t5,0x800
    16f0:	11c00009 	beqz	t6,1718 <func_80A3BD8C+0xdc>
    16f4:	00000000 	nop
    16f8:	10000007 	b	1718 <func_80A3BD8C+0xdc>
    16fc:	24060001 	li	a2,1
    1700:	3c0f0000 	lui	t7,0x0
    1704:	95ef0ef6 	lhu	t7,3830(t7)
    1708:	31f80800 	andi	t8,t7,0x800
    170c:	13000002 	beqz	t8,1718 <func_80A3BD8C+0xdc>
    1710:	00000000 	nop
    1714:	24060001 	li	a2,1
    1718:	10c00006 	beqz	a2,1734 <func_80A3BD8C+0xf8>
    171c:	0004c840 	sll	t9,a0,0x1
    1720:	3c080000 	lui	t0,0x0
    1724:	01194021 	addu	t0,t0,t9
    1728:	95080000 	lhu	t0,0(t0)
    172c:	10000006 	b	1748 <func_80A3BD8C+0x10c>
    1730:	a4a8010e 	sh	t0,270(a1)
    1734:	9449000c 	lhu	t1,12(v0)
    1738:	10000003 	b	1748 <func_80A3BD8C+0x10c>
    173c:	a4a9010e 	sh	t1,270(a1)
    1740:	944a000c 	lhu	t2,12(v0)
    1744:	a4aa010e 	sh	t2,270(a1)
    1748:	3c0b0000 	lui	t3,0x0
    174c:	256b0000 	addiu	t3,t3,0
    1750:	a4a001a8 	sh	zero,424(a1)
    1754:	03e00008 	jr	ra
    1758:	acab0134 	sw	t3,308(a1)

0000175c <func_80A3BEAC>:
    175c:	afa40000 	sw	a0,0(sp)
    1760:	84a2001c 	lh	v0,28(a1)
    1764:	240e0001 	li	t6,1
    1768:	a4ae01a8 	sh	t6,424(a1)
    176c:	2841001e 	slti	at,v0,30
    1770:	14200005 	bnez	at,1788 <func_80A3BEAC+0x2c>
    1774:	aca00134 	sw	zero,308(a1)
    1778:	28410026 	slti	at,v0,38
    177c:	10200002 	beqz	at,1788 <func_80A3BEAC+0x2c>
    1780:	240f00bd 	li	t7,189
    1784:	a4af010e 	sh	t7,270(a1)
    1788:	03e00008 	jr	ra
    178c:	00000000 	nop

00001790 <func_80A3BEE0>:
    1790:	27bdffe8 	addiu	sp,sp,-24
    1794:	afbf0014 	sw	ra,20(sp)
    1798:	afa40018 	sw	a0,24(sp)
    179c:	00a02025 	move	a0,a1
    17a0:	0c000000 	jal	0 <func_80A3A750>
    17a4:	afa5001c 	sw	a1,28(sp)
    17a8:	1040000e 	beqz	v0,17e4 <func_80A3BEE0+0x54>
    17ac:	8fa6001c 	lw	a2,28(sp)
    17b0:	00c02025 	move	a0,a2
    17b4:	8fa50018 	lw	a1,24(sp)
    17b8:	0c000000 	jal	0 <func_80A3A750>
    17bc:	afa6001c 	sw	a2,28(sp)
    17c0:	8fa6001c 	lw	a2,28(sp)
    17c4:	3c180000 	lui	t8,0x0
    17c8:	27180000 	addiu	t8,t8,0
    17cc:	84ce001c 	lh	t6,28(a2)
    17d0:	000e7940 	sll	t7,t6,0x5
    17d4:	01f81021 	addu	v0,t7,t8
    17d8:	9459000c 	lhu	t9,12(v0)
    17dc:	10000005 	b	17f4 <func_80A3BEE0+0x64>
    17e0:	a4d9010e 	sh	t9,270(a2)
    17e4:	3c080000 	lui	t0,0x0
    17e8:	25080000 	addiu	t0,t0,0
    17ec:	a4c001a8 	sh	zero,424(a2)
    17f0:	acc80134 	sw	t0,308(a2)
    17f4:	8fbf0014 	lw	ra,20(sp)
    17f8:	27bd0018 	addiu	sp,sp,24
    17fc:	03e00008 	jr	ra
    1800:	00000000 	nop

00001804 <func_80A3BF54>:
    1804:	27bdffe8 	addiu	sp,sp,-24
    1808:	afbf0014 	sw	ra,20(sp)
    180c:	8482001c 	lh	v0,28(a0)
    1810:	00803025 	move	a2,a0
    1814:	00a03825 	move	a3,a1
    1818:	2841001e 	slti	at,v0,30
    181c:	14200018 	bnez	at,1880 <func_80A3BF54+0x7c>
    1820:	28410026 	slti	at,v0,38
    1824:	10200016 	beqz	at,1880 <func_80A3BF54+0x7c>
    1828:	2443ffe2 	addiu	v1,v0,-30
    182c:	3c0e0000 	lui	t6,0x0
    1830:	91ce0021 	lbu	t6,33(t6)
    1834:	3c0f0000 	lui	t7,0x0
    1838:	0003c040 	sll	t8,v1,0x1
    183c:	3c190000 	lui	t9,0x0
    1840:	0338c821 	addu	t9,t9,t8
    1844:	01ee7821 	addu	t7,t7,t6
    1848:	91ef0074 	lbu	t7,116(t7)
    184c:	87390000 	lh	t9,0(t9)
    1850:	00e02025 	move	a0,a3
    1854:	15f90006 	bne	t7,t9,1870 <func_80A3BF54+0x6c>
    1858:	00000000 	nop
    185c:	00a02025 	move	a0,a1
    1860:	0c000000 	jal	0 <func_80A3A750>
    1864:	00c02825 	move	a1,a2
    1868:	10000006 	b	1884 <func_80A3BF54+0x80>
    186c:	24020001 	li	v0,1
    1870:	0c000000 	jal	0 <func_80A3A750>
    1874:	00c02825 	move	a1,a2
    1878:	10000002 	b	1884 <func_80A3BF54+0x80>
    187c:	24020001 	li	v0,1
    1880:	00001025 	move	v0,zero
    1884:	8fbf0014 	lw	ra,20(sp)
    1888:	27bd0018 	addiu	sp,sp,24
    188c:	03e00008 	jr	ra
    1890:	00000000 	nop

00001894 <func_80A3BFE4>:
    1894:	27bdffd0 	addiu	sp,sp,-48
    1898:	afb00018 	sw	s0,24(sp)
    189c:	afbf001c 	sw	ra,28(sp)
    18a0:	afa50034 	sw	a1,52(sp)
    18a4:	3c010001 	lui	at,0x1
    18a8:	8486001c 	lh	a2,28(a0)
    18ac:	00808025 	move	s0,a0
    18b0:	342117a4 	ori	at,at,0x17a4
    18b4:	00a12021 	addu	a0,a1,at
    18b8:	82050194 	lb	a1,404(s0)
    18bc:	0c000000 	jal	0 <func_80A3A750>
    18c0:	a7a6002e 	sh	a2,46(sp)
    18c4:	104000e4 	beqz	v0,1c58 <func_80A3BFE4+0x3c4>
    18c8:	87a6002e 	lh	a2,46(sp)
    18cc:	8e0e0004 	lw	t6,4(s0)
    18d0:	8619001c 	lh	t9,28(s0)
    18d4:	2401ffef 	li	at,-17
    18d8:	82180194 	lb	t8,404(s0)
    18dc:	01c17824 	and	t7,t6,at
    18e0:	2728ffe2 	addiu	t0,t9,-30
    18e4:	2d010008 	sltiu	at,t0,8
    18e8:	ae0f0004 	sw	t7,4(s0)
    18ec:	10200088 	beqz	at,1b10 <func_80A3BFE4+0x27c>
    18f0:	a218001e 	sb	t8,30(s0)
    18f4:	00084080 	sll	t0,t0,0x2
    18f8:	3c010000 	lui	at,0x0
    18fc:	00280821 	addu	at,at,t0
    1900:	8c280454 	lw	t0,1108(at)
    1904:	01000008 	jr	t0
    1908:	00000000 	nop
    190c:	3c090000 	lui	t1,0x0
    1910:	95290ef6 	lhu	t1,3830(t1)
    1914:	3c0f0000 	lui	t7,0x0
    1918:	25ef0000 	addiu	t7,t7,0
    191c:	312a0100 	andi	t2,t1,0x100
    1920:	11400008 	beqz	t2,1944 <func_80A3BFE4+0xb0>
    1924:	00067140 	sll	t6,a2,0x5
    1928:	3c0d0000 	lui	t5,0x0
    192c:	25ad0000 	addiu	t5,t5,0
    1930:	240b70b6 	li	t3,28854
    1934:	00066140 	sll	t4,a2,0x5
    1938:	018d1821 	addu	v1,t4,t5
    193c:	10000004 	b	1950 <func_80A3BFE4+0xbc>
    1940:	a60b010e 	sh	t3,270(s0)
    1944:	01cf1821 	addu	v1,t6,t7
    1948:	9478000c 	lhu	t8,12(v1)
    194c:	a618010e 	sh	t8,270(s0)
    1950:	9479000e 	lhu	t9,14(v1)
    1954:	10000076 	b	1b30 <func_80A3BFE4+0x29c>
    1958:	a61901a0 	sh	t9,416(s0)
    195c:	3c080000 	lui	t0,0x0
    1960:	95080ef6 	lhu	t0,3830(t0)
    1964:	3c0e0000 	lui	t6,0x0
    1968:	25ce0000 	addiu	t6,t6,0
    196c:	31090400 	andi	t1,t0,0x400
    1970:	11200008 	beqz	t1,1994 <func_80A3BFE4+0x100>
    1974:	00066940 	sll	t5,a2,0x5
    1978:	3c0c0000 	lui	t4,0x0
    197c:	258c0000 	addiu	t4,t4,0
    1980:	240a70b5 	li	t2,28853
    1984:	00065940 	sll	t3,a2,0x5
    1988:	016c1821 	addu	v1,t3,t4
    198c:	10000004 	b	19a0 <func_80A3BFE4+0x10c>
    1990:	a60a010e 	sh	t2,270(s0)
    1994:	01ae1821 	addu	v1,t5,t6
    1998:	946f000c 	lhu	t7,12(v1)
    199c:	a60f010e 	sh	t7,270(s0)
    19a0:	9478000e 	lhu	t8,14(v1)
    19a4:	10000062 	b	1b30 <func_80A3BFE4+0x29c>
    19a8:	a61801a0 	sh	t8,416(s0)
    19ac:	3c190000 	lui	t9,0x0
    19b0:	97390ef6 	lhu	t9,3830(t9)
    19b4:	3c0d0000 	lui	t5,0x0
    19b8:	25ad0000 	addiu	t5,t5,0
    19bc:	33280200 	andi	t0,t9,0x200
    19c0:	11000008 	beqz	t0,19e4 <func_80A3BFE4+0x150>
    19c4:	00066140 	sll	t4,a2,0x5
    19c8:	3c0b0000 	lui	t3,0x0
    19cc:	256b0000 	addiu	t3,t3,0
    19d0:	240970b4 	li	t1,28852
    19d4:	00065140 	sll	t2,a2,0x5
    19d8:	014b1821 	addu	v1,t2,t3
    19dc:	10000004 	b	19f0 <func_80A3BFE4+0x15c>
    19e0:	a609010e 	sh	t1,270(s0)
    19e4:	018d1821 	addu	v1,t4,t5
    19e8:	946e000c 	lhu	t6,12(v1)
    19ec:	a60e010e 	sh	t6,270(s0)
    19f0:	946f000e 	lhu	t7,14(v1)
    19f4:	1000004e 	b	1b30 <func_80A3BFE4+0x29c>
    19f8:	a60f01a0 	sh	t7,416(s0)
    19fc:	3c180000 	lui	t8,0x0
    1a00:	97180ef6 	lhu	t8,3830(t8)
    1a04:	3c0c0000 	lui	t4,0x0
    1a08:	258c0000 	addiu	t4,t4,0
    1a0c:	33190800 	andi	t9,t8,0x800
    1a10:	13200008 	beqz	t9,1a34 <func_80A3BFE4+0x1a0>
    1a14:	00065940 	sll	t3,a2,0x5
    1a18:	3c0a0000 	lui	t2,0x0
    1a1c:	254a0000 	addiu	t2,t2,0
    1a20:	240870b7 	li	t0,28855
    1a24:	00064940 	sll	t1,a2,0x5
    1a28:	012a1821 	addu	v1,t1,t2
    1a2c:	10000004 	b	1a40 <func_80A3BFE4+0x1ac>
    1a30:	a608010e 	sh	t0,270(s0)
    1a34:	016c1821 	addu	v1,t3,t4
    1a38:	946d000c 	lhu	t5,12(v1)
    1a3c:	a60d010e 	sh	t5,270(s0)
    1a40:	946e000e 	lhu	t6,14(v1)
    1a44:	1000003a 	b	1b30 <func_80A3BFE4+0x29c>
    1a48:	a60e01a0 	sh	t6,416(s0)
    1a4c:	3c0f0000 	lui	t7,0x0
    1a50:	95ef0ef6 	lhu	t7,3830(t7)
    1a54:	3c0c0000 	lui	t4,0x0
    1a58:	258c0000 	addiu	t4,t4,0
    1a5c:	31f80800 	andi	t8,t7,0x800
    1a60:	1300000a 	beqz	t8,1a8c <func_80A3BFE4+0x1f8>
    1a64:	00065940 	sll	t3,a2,0x5
    1a68:	3c090000 	lui	t1,0x0
    1a6c:	241970bb 	li	t9,28859
    1a70:	25290000 	addiu	t1,t1,0
    1a74:	00064140 	sll	t0,a2,0x5
    1a78:	a619010e 	sh	t9,270(s0)
    1a7c:	01091821 	addu	v1,t0,t1
    1a80:	946a000e 	lhu	t2,14(v1)
    1a84:	1000002a 	b	1b30 <func_80A3BFE4+0x29c>
    1a88:	a60a01a0 	sh	t2,416(s0)
    1a8c:	016c1821 	addu	v1,t3,t4
    1a90:	946d000c 	lhu	t5,12(v1)
    1a94:	240e00eb 	li	t6,235
    1a98:	a60e01a0 	sh	t6,416(s0)
    1a9c:	10000024 	b	1b30 <func_80A3BFE4+0x29c>
    1aa0:	a60d010e 	sh	t5,270(s0)
    1aa4:	3c180000 	lui	t8,0x0
    1aa8:	27180000 	addiu	t8,t8,0
    1aac:	00067940 	sll	t7,a2,0x5
    1ab0:	01f81821 	addu	v1,t7,t8
    1ab4:	9479000c 	lhu	t9,12(v1)
    1ab8:	a619010e 	sh	t9,270(s0)
    1abc:	9468000e 	lhu	t0,14(v1)
    1ac0:	1000001b 	b	1b30 <func_80A3BFE4+0x29c>
    1ac4:	a60801a0 	sh	t0,416(s0)
    1ac8:	3c0a0000 	lui	t2,0x0
    1acc:	254a0000 	addiu	t2,t2,0
    1ad0:	00064940 	sll	t1,a2,0x5
    1ad4:	012a1821 	addu	v1,t1,t2
    1ad8:	946b000c 	lhu	t3,12(v1)
    1adc:	a60b010e 	sh	t3,270(s0)
    1ae0:	946c000e 	lhu	t4,14(v1)
    1ae4:	10000012 	b	1b30 <func_80A3BFE4+0x29c>
    1ae8:	a60c01a0 	sh	t4,416(s0)
    1aec:	3c0e0000 	lui	t6,0x0
    1af0:	25ce0000 	addiu	t6,t6,0
    1af4:	00066940 	sll	t5,a2,0x5
    1af8:	01ae1821 	addu	v1,t5,t6
    1afc:	946f000c 	lhu	t7,12(v1)
    1b00:	a60f010e 	sh	t7,270(s0)
    1b04:	9478000e 	lhu	t8,14(v1)
    1b08:	10000009 	b	1b30 <func_80A3BFE4+0x29c>
    1b0c:	a61801a0 	sh	t8,416(s0)
    1b10:	3c080000 	lui	t0,0x0
    1b14:	25080000 	addiu	t0,t0,0
    1b18:	0006c940 	sll	t9,a2,0x5
    1b1c:	03281821 	addu	v1,t9,t0
    1b20:	9469000c 	lhu	t1,12(v1)
    1b24:	a609010e 	sh	t1,270(s0)
    1b28:	946a000e 	lhu	t2,14(v1)
    1b2c:	a60a01a0 	sh	t2,416(s0)
    1b30:	02002025 	move	a0,s0
    1b34:	8fa50034 	lw	a1,52(sp)
    1b38:	afa30024 	sw	v1,36(sp)
    1b3c:	0c000000 	jal	0 <func_80A3A750>
    1b40:	a7a6002e 	sh	a2,46(sp)
    1b44:	8fa30024 	lw	v1,36(sp)
    1b48:	14400008 	bnez	v0,1b6c <func_80A3BFE4+0x2d8>
    1b4c:	87a6002e 	lh	a2,46(sp)
    1b50:	8fa40034 	lw	a0,52(sp)
    1b54:	02002825 	move	a1,s0
    1b58:	afa30024 	sw	v1,36(sp)
    1b5c:	0c000000 	jal	0 <func_80A3A750>
    1b60:	a7a6002e 	sh	a2,46(sp)
    1b64:	8fa30024 	lw	v1,36(sp)
    1b68:	87a6002e 	lh	a2,46(sp)
    1b6c:	3c0b0000 	lui	t3,0x0
    1b70:	3c0c0000 	lui	t4,0x0
    1b74:	256b0000 	addiu	t3,t3,0
    1b78:	258c0000 	addiu	t4,t4,0
    1b7c:	ae0b01ac 	sw	t3,428(s0)
    1b80:	ae0c01b0 	sw	t4,432(s0)
    1b84:	8c6d0010 	lw	t5,16(v1)
    1b88:	00065880 	sll	t3,a2,0x2
    1b8c:	3c050000 	lui	a1,0x0
    1b90:	ae0d01a4 	sw	t5,420(s0)
    1b94:	8c6e0014 	lw	t6,20(v1)
    1b98:	00ab2821 	addu	a1,a1,t3
    1b9c:	3c040000 	lui	a0,0x0
    1ba0:	ae0e01bc 	sw	t6,444(s0)
    1ba4:	8c6f0018 	lw	t7,24(v1)
    1ba8:	248403cc 	addiu	a0,a0,972
    1bac:	ae0f01c0 	sw	t7,448(s0)
    1bb0:	8c78001c 	lw	t8,28(v1)
    1bb4:	ae1801c4 	sw	t8,452(s0)
    1bb8:	84790008 	lh	t9,8(v1)
    1bbc:	a61901c8 	sh	t9,456(s0)
    1bc0:	8468000a 	lh	t0,10(v1)
    1bc4:	a60801ca 	sh	t0,458(s0)
    1bc8:	8c690004 	lw	t1,4(v1)
    1bcc:	ae0901d0 	sw	t1,464(s0)
    1bd0:	846a0002 	lh	t2,2(v1)
    1bd4:	a60a01cc 	sh	t2,460(s0)
    1bd8:	0c000000 	jal	0 <func_80A3A750>
    1bdc:	8ca50000 	lw	a1,0(a1)
    1be0:	8e0c0004 	lw	t4,4(s0)
    1be4:	2401fffe 	li	at,-2
    1be8:	02002025 	move	a0,s0
    1bec:	01816824 	and	t5,t4,at
    1bf0:	ae0d0004 	sw	t5,4(s0)
    1bf4:	0c000000 	jal	0 <func_80A3A750>
    1bf8:	3c053e80 	lui	a1,0x3e80
    1bfc:	3c0141c0 	lui	at,0x41c0
    1c00:	44812000 	mtc1	at,$f4
    1c04:	3c014080 	lui	at,0x4080
    1c08:	44813000 	mtc1	at,$f6
    1c0c:	c608000c 	lwc1	$f8,12(s0)
    1c10:	44805000 	mtc1	zero,$f10
    1c14:	3c050000 	lui	a1,0x0
    1c18:	24a50000 	addiu	a1,a1,0
    1c1c:	02002025 	move	a0,s0
    1c20:	e60400bc 	swc1	$f4,188(s0)
    1c24:	e60600c4 	swc1	$f6,196(s0)
    1c28:	e6080080 	swc1	$f8,128(s0)
    1c2c:	0c000000 	jal	0 <func_80A3A750>
    1c30:	e60a006c 	swc1	$f10,108(s0)
    1c34:	861800b6 	lh	t8,182(s0)
    1c38:	3c0f0000 	lui	t7,0x0
    1c3c:	240e0001 	li	t6,1
    1c40:	25ef0000 	addiu	t7,t7,0
    1c44:	ae0e019c 	sw	t6,412(s0)
    1c48:	ae0f0198 	sw	t7,408(s0)
    1c4c:	a60001b4 	sh	zero,436(s0)
    1c50:	a60001b8 	sh	zero,440(s0)
    1c54:	a61801b6 	sh	t8,438(s0)
    1c58:	8fbf001c 	lw	ra,28(sp)
    1c5c:	8fb00018 	lw	s0,24(sp)
    1c60:	27bd0030 	addiu	sp,sp,48
    1c64:	03e00008 	jr	ra
    1c68:	00000000 	nop

00001c6c <func_80A3C3BC>:
    1c6c:	27bdffd8 	addiu	sp,sp,-40
    1c70:	afbf0024 	sw	ra,36(sp)
    1c74:	afb00020 	sw	s0,32(sp)
    1c78:	afa5002c 	sw	a1,44(sp)
    1c7c:	00808025 	move	s0,a0
    1c80:	0c000000 	jal	0 <func_80A3A750>
    1c84:	3c053e80 	lui	a1,0x3e80
    1c88:	3c0141c0 	lui	at,0x41c0
    1c8c:	44812000 	mtc1	at,$f4
    1c90:	3c014080 	lui	at,0x4080
    1c94:	44813000 	mtc1	at,$f6
    1c98:	e60400bc 	swc1	$f4,188(s0)
    1c9c:	02002025 	move	a0,s0
    1ca0:	e60600c4 	swc1	$f6,196(s0)
    1ca4:	0c000000 	jal	0 <func_80A3A750>
    1ca8:	8fa5002c 	lw	a1,44(sp)
    1cac:	8e190190 	lw	t9,400(s0)
    1cb0:	02002025 	move	a0,s0
    1cb4:	8fa5002c 	lw	a1,44(sp)
    1cb8:	0320f809 	jalr	t9
    1cbc:	00000000 	nop
    1cc0:	02002025 	move	a0,s0
    1cc4:	0c000000 	jal	0 <func_80A3A750>
    1cc8:	3c0540a0 	lui	a1,0x40a0
    1ccc:	860e001c 	lh	t6,28(s0)
    1cd0:	24010026 	li	at,38
    1cd4:	a60000b4 	sh	zero,180(s0)
    1cd8:	51c1000e 	beql	t6,at,1d14 <func_80A3C3BC+0xa8>
    1cdc:	8fbf0024 	lw	ra,36(sp)
    1ce0:	860f01b4 	lh	t7,436(s0)
    1ce4:	260401b8 	addiu	a0,s0,440
    1ce8:	00002825 	move	a1,zero
    1cec:	11e00005 	beqz	t7,1d04 <func_80A3C3BC+0x98>
    1cf0:	2406000a 	li	a2,10
    1cf4:	861801b8 	lh	t8,440(s0)
    1cf8:	270801f4 	addiu	t0,t8,500
    1cfc:	10000004 	b	1d10 <func_80A3C3BC+0xa4>
    1d00:	a60801b8 	sh	t0,440(s0)
    1d04:	240707d0 	li	a3,2000
    1d08:	0c000000 	jal	0 <func_80A3A750>
    1d0c:	afa00010 	sw	zero,16(sp)
    1d10:	8fbf0024 	lw	ra,36(sp)
    1d14:	8fb00020 	lw	s0,32(sp)
    1d18:	27bd0028 	addiu	sp,sp,40
    1d1c:	03e00008 	jr	ra
    1d20:	00000000 	nop

00001d24 <EnGirlA_Update>:
    1d24:	27bdffe8 	addiu	sp,sp,-24
    1d28:	afbf0014 	sw	ra,20(sp)
    1d2c:	8c990198 	lw	t9,408(a0)
    1d30:	0320f809 	jalr	t9
    1d34:	00000000 	nop
    1d38:	8fbf0014 	lw	ra,20(sp)
    1d3c:	27bd0018 	addiu	sp,sp,24
    1d40:	03e00008 	jr	ra
    1d44:	00000000 	nop

00001d48 <func_80A3C498>:
    1d48:	27bdffe8 	addiu	sp,sp,-24
    1d4c:	afbf0014 	sw	ra,20(sp)
    1d50:	afa60020 	sw	a2,32(sp)
    1d54:	afa40018 	sw	a0,24(sp)
    1d58:	afa5001c 	sw	a1,28(sp)
    1d5c:	0c000000 	jal	0 <func_80A3A750>
    1d60:	00003025 	move	a2,zero
    1d64:	8fa40018 	lw	a0,24(sp)
    1d68:	8fa5001c 	lw	a1,28(sp)
    1d6c:	0c000000 	jal	0 <func_80A3A750>
    1d70:	00003025 	move	a2,zero
    1d74:	8fbf0014 	lw	ra,20(sp)
    1d78:	27bd0018 	addiu	sp,sp,24
    1d7c:	03e00008 	jr	ra
    1d80:	00000000 	nop

00001d84 <func_80A3C4D4>:
    1d84:	27bdffe8 	addiu	sp,sp,-24
    1d88:	afbf0014 	sw	ra,20(sp)
    1d8c:	afa5001c 	sw	a1,28(sp)
    1d90:	848e01b8 	lh	t6,440(a0)
    1d94:	3c0143b4 	lui	at,0x43b4
    1d98:	44814000 	mtc1	at,$f8
    1d9c:	448e2000 	mtc1	t6,$f4
    1da0:	3c014780 	lui	at,0x4780
    1da4:	44818000 	mtc1	at,$f16
    1da8:	468021a0 	cvt.s.w	$f6,$f4
    1dac:	3c010000 	lui	at,0x0
    1db0:	c4240474 	lwc1	$f4,1140(at)
    1db4:	afa40018 	sw	a0,24(sp)
    1db8:	24050001 	li	a1,1
    1dbc:	46083282 	mul.s	$f10,$f6,$f8
    1dc0:	46105483 	div.s	$f18,$f10,$f16
    1dc4:	46049302 	mul.s	$f12,$f18,$f4
    1dc8:	0c000000 	jal	0 <func_80A3A750>
    1dcc:	00000000 	nop
    1dd0:	8fa70018 	lw	a3,24(sp)
    1dd4:	8fa5001c 	lw	a1,28(sp)
    1dd8:	00003025 	move	a2,zero
    1ddc:	8ce201d0 	lw	v0,464(a3)
    1de0:	00e02025 	move	a0,a3
    1de4:	50400005 	beqzl	v0,1dfc <func_80A3C4D4+0x78>
    1de8:	8fa4001c 	lw	a0,28(sp)
    1dec:	0040f809 	jalr	v0
    1df0:	afa70018 	sw	a3,24(sp)
    1df4:	8fa70018 	lw	a3,24(sp)
    1df8:	8fa4001c 	lw	a0,28(sp)
    1dfc:	0c000000 	jal	0 <func_80A3A750>
    1e00:	84e501cc 	lh	a1,460(a3)
    1e04:	8fbf0014 	lw	ra,20(sp)
    1e08:	27bd0018 	addiu	sp,sp,24
    1e0c:	03e00008 	jr	ra
    1e10:	00000000 	nop
	...
