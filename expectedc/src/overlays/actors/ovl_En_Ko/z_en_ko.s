
build/src/overlays/actors/ovl_En_Ko/z_en_ko.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <func_80A96DB0>:
       0:	27bdffe0 	addiu	sp,sp,-32
       4:	afbf0014 	sw	ra,20(sp)
       8:	848e001c 	lh	t6,28(a0)
       c:	3c190000 	lui	t9,0x0
      10:	27390000 	addiu	t9,t9,0
      14:	31cf00ff 	andi	t7,t6,0xff
      18:	000fc080 	sll	t8,t7,0x2
      1c:	030fc023 	subu	t8,t8,t7
      20:	0018c080 	sll	t8,t8,0x2
      24:	030fc023 	subu	t8,t8,t7
      28:	03191021 	addu	v0,t8,t9
      2c:	90430006 	lbu	v1,6(v0)
      30:	3c010001 	lui	at,0x1
      34:	00803025 	move	a2,a0
      38:	342117a4 	ori	at,at,0x17a4
      3c:	00a12021 	addu	a0,a1,at
      40:	90480000 	lbu	t0,0(v0)
      44:	90490001 	lbu	t1,1(v0)
      48:	3c050000 	lui	a1,0x0
      4c:	000350c0 	sll	t2,v1,0x3
      50:	00aa2821 	addu	a1,a1,t2
      54:	84a50000 	lh	a1,0(a1)
      58:	afa40018 	sw	a0,24(sp)
      5c:	afa60020 	sw	a2,32(sp)
      60:	a3a8001f 	sb	t0,31(sp)
      64:	0c000000 	jal	0 <func_80A96DB0>
      68:	a3a9001e 	sb	t1,30(sp)
      6c:	8fa60020 	lw	a2,32(sp)
      70:	3c050000 	lui	a1,0x0
      74:	a0c20196 	sb	v0,406(a2)
      78:	80cb0196 	lb	t3,406(a2)
      7c:	93ac001e 	lbu	t4,30(sp)
      80:	8fa40018 	lw	a0,24(sp)
      84:	05610003 	bgez	t3,94 <func_80A96DB0+0x94>
      88:	000c68c0 	sll	t5,t4,0x3
      8c:	1000001d 	b	104 <func_80A96DB0+0x104>
      90:	00001025 	move	v0,zero
      94:	00ad2821 	addu	a1,a1,t5
      98:	84a50000 	lh	a1,0(a1)
      9c:	0c000000 	jal	0 <func_80A96DB0>
      a0:	afa60020 	sw	a2,32(sp)
      a4:	8fa60020 	lw	a2,32(sp)
      a8:	3c050000 	lui	a1,0x0
      ac:	a0c20195 	sb	v0,405(a2)
      b0:	80ce0195 	lb	t6,405(a2)
      b4:	93af001f 	lbu	t7,31(sp)
      b8:	8fa40018 	lw	a0,24(sp)
      bc:	05c10003 	bgez	t6,cc <func_80A96DB0+0xcc>
      c0:	000fc080 	sll	t8,t7,0x2
      c4:	1000000f 	b	104 <func_80A96DB0+0x104>
      c8:	00001025 	move	v0,zero
      cc:	030fc023 	subu	t8,t8,t7
      d0:	0018c080 	sll	t8,t8,0x2
      d4:	00b82821 	addu	a1,a1,t8
      d8:	84a50000 	lh	a1,0(a1)
      dc:	0c000000 	jal	0 <func_80A96DB0>
      e0:	afa60020 	sw	a2,32(sp)
      e4:	8fa60020 	lw	a2,32(sp)
      e8:	a0c20194 	sb	v0,404(a2)
      ec:	80d90194 	lb	t9,404(a2)
      f0:	24020001 	li	v0,1
      f4:	07210003 	bgez	t9,104 <func_80A96DB0+0x104>
      f8:	00000000 	nop
      fc:	10000001 	b	104 <func_80A96DB0+0x104>
     100:	00001025 	move	v0,zero
     104:	8fbf0014 	lw	ra,20(sp)
     108:	27bd0020 	addiu	sp,sp,32
     10c:	03e00008 	jr	ra
     110:	00000000 	nop

00000114 <func_80A96EC4>:
     114:	27bdffe0 	addiu	sp,sp,-32
     118:	afa40020 	sw	a0,32(sp)
     11c:	8fae0020 	lw	t6,32(sp)
     120:	3c010001 	lui	at,0x1
     124:	342117a4 	ori	at,at,0x17a4
     128:	afbf0014 	sw	ra,20(sp)
     12c:	00a12021 	addu	a0,a1,at
     130:	81c50196 	lb	a1,406(t6)
     134:	0c000000 	jal	0 <func_80A96DB0>
     138:	afa4001c 	sw	a0,28(sp)
     13c:	14400003 	bnez	v0,14c <func_80A96EC4+0x38>
     140:	8faf0020 	lw	t7,32(sp)
     144:	10000010 	b	188 <func_80A96EC4+0x74>
     148:	00001025 	move	v0,zero
     14c:	8fa4001c 	lw	a0,28(sp)
     150:	0c000000 	jal	0 <func_80A96DB0>
     154:	81e50195 	lb	a1,405(t7)
     158:	14400003 	bnez	v0,168 <func_80A96EC4+0x54>
     15c:	8fb80020 	lw	t8,32(sp)
     160:	10000009 	b	188 <func_80A96EC4+0x74>
     164:	00001025 	move	v0,zero
     168:	8fa4001c 	lw	a0,28(sp)
     16c:	0c000000 	jal	0 <func_80A96DB0>
     170:	83050194 	lb	a1,404(t8)
     174:	54400004 	bnezl	v0,188 <func_80A96EC4+0x74>
     178:	24020001 	li	v0,1
     17c:	10000002 	b	188 <func_80A96EC4+0x74>
     180:	00001025 	move	v0,zero
     184:	24020001 	li	v0,1
     188:	8fbf0014 	lw	ra,20(sp)
     18c:	27bd0020 	addiu	sp,sp,32
     190:	03e00008 	jr	ra
     194:	00000000 	nop

00000198 <func_80A96F48>:
     198:	27bdffe8 	addiu	sp,sp,-24
     19c:	3c010001 	lui	at,0x1
     1a0:	afa40018 	sw	a0,24(sp)
     1a4:	342117a4 	ori	at,at,0x17a4
     1a8:	afbf0014 	sw	ra,20(sp)
     1ac:	00a12021 	addu	a0,a1,at
     1b0:	0c000000 	jal	0 <func_80A96DB0>
     1b4:	240500c5 	li	a1,197
     1b8:	8fa30018 	lw	v1,24(sp)
     1bc:	a0620197 	sb	v0,407(v1)
     1c0:	806e0197 	lb	t6,407(v1)
     1c4:	8fbf0014 	lw	ra,20(sp)
     1c8:	24020001 	li	v0,1
     1cc:	05c10003 	bgez	t6,1dc <func_80A96F48+0x44>
     1d0:	00000000 	nop
     1d4:	10000001 	b	1dc <func_80A96F48+0x44>
     1d8:	00001025 	move	v0,zero
     1dc:	03e00008 	jr	ra
     1e0:	27bd0018 	addiu	sp,sp,24

000001e4 <func_80A96F94>:
     1e4:	3c010001 	lui	at,0x1
     1e8:	27bdffe8 	addiu	sp,sp,-24
     1ec:	00803825 	move	a3,a0
     1f0:	342117a4 	ori	at,at,0x17a4
     1f4:	afbf0014 	sw	ra,20(sp)
     1f8:	00a12021 	addu	a0,a1,at
     1fc:	0c000000 	jal	0 <func_80A96DB0>
     200:	80e50197 	lb	a1,407(a3)
     204:	14400003 	bnez	v0,214 <func_80A96F94+0x30>
     208:	8fbf0014 	lw	ra,20(sp)
     20c:	10000002 	b	218 <func_80A96F94+0x34>
     210:	00001025 	move	v0,zero
     214:	24020001 	li	v0,1
     218:	03e00008 	jr	ra
     21c:	27bd0018 	addiu	sp,sp,24

00000220 <func_80A96FD0>:
     220:	afa40000 	sw	a0,0(sp)
     224:	84ae001c 	lh	t6,28(a1)
     228:	00001025 	move	v0,zero
     22c:	31cf00ff 	andi	t7,t6,0xff
     230:	2de1000d 	sltiu	at,t7,13
     234:	102000d2 	beqz	at,580 <L80A97328+0x8>
     238:	000f7880 	sll	t7,t7,0x2
     23c:	3c010000 	lui	at,0x0
     240:	002f0821 	addu	at,at,t7
     244:	8c2f0000 	lw	t7,0(at)
     248:	01e00008 	jr	t7
     24c:	00000000 	nop

00000250 <L80A97000>:
     250:	3c020000 	lui	v0,0x0
     254:	24420000 	addiu	v0,v0,0
     258:	94580edc 	lhu	t8,3804(v0)
     25c:	3c080000 	lui	t0,0x0
     260:	33190001 	andi	t9,t8,0x1
     264:	13200003 	beqz	t9,274 <L80A97000+0x24>
     268:	00000000 	nop
     26c:	03e00008 	jr	ra
     270:	240210da 	li	v0,4314
     274:	8d080048 	lw	t0,72(t0)
     278:	8c4900a4 	lw	t1,164(v0)
     27c:	01095024 	and	t2,t0,t1
     280:	51400004 	beqzl	t2,294 <L80A97000+0x44>
     284:	944b0f0e 	lhu	t3,3854(v0)
     288:	03e00008 	jr	ra
     28c:	240210d9 	li	v0,4313
     290:	944b0f0e 	lhu	t3,3854(v0)
     294:	240310d7 	li	v1,4311
     298:	316c0080 	andi	t4,t3,0x80
     29c:	11800004 	beqz	t4,2b0 <L80A97000+0x60>
     2a0:	00000000 	nop
     2a4:	240310d8 	li	v1,4312
     2a8:	03e00008 	jr	ra
     2ac:	3062ffff 	andi	v0,v1,0xffff
     2b0:	03e00008 	jr	ra
     2b4:	3062ffff 	andi	v0,v1,0xffff

000002b8 <L80A97068>:
     2b8:	3c020000 	lui	v0,0x0
     2bc:	24420000 	addiu	v0,v0,0
     2c0:	944d0edc 	lhu	t5,3804(v0)
     2c4:	3c0f0000 	lui	t7,0x0
     2c8:	31ae0001 	andi	t6,t5,0x1
     2cc:	11c00003 	beqz	t6,2dc <L80A97068+0x24>
     2d0:	00000000 	nop
     2d4:	03e00008 	jr	ra
     2d8:	24021025 	li	v0,4133
     2dc:	8def0048 	lw	t7,72(t7)
     2e0:	8c5800a4 	lw	t8,164(v0)
     2e4:	01f8c824 	and	t9,t7,t8
     2e8:	13200003 	beqz	t9,2f8 <L80A97068+0x40>
     2ec:	00000000 	nop
     2f0:	03e00008 	jr	ra
     2f4:	24021042 	li	v0,4162
     2f8:	03e00008 	jr	ra
     2fc:	24021004 	li	v0,4100

00000300 <L80A970B0>:
     300:	3c020000 	lui	v0,0x0
     304:	24420000 	addiu	v0,v0,0
     308:	94480edc 	lhu	t0,3804(v0)
     30c:	3c0a0000 	lui	t2,0x0
     310:	31090001 	andi	t1,t0,0x1
     314:	11200003 	beqz	t1,324 <L80A970B0+0x24>
     318:	00000000 	nop
     31c:	03e00008 	jr	ra
     320:	24021023 	li	v0,4131
     324:	8d4a0048 	lw	t2,72(t2)
     328:	8c4b00a4 	lw	t3,164(v0)
     32c:	014b6024 	and	t4,t2,t3
     330:	51800004 	beqzl	t4,344 <L80A970B0+0x44>
     334:	944d0efa 	lhu	t5,3834(v0)
     338:	03e00008 	jr	ra
     33c:	24021043 	li	v0,4163
     340:	944d0efa 	lhu	t5,3834(v0)
     344:	31ae4000 	andi	t6,t5,0x4000
     348:	11c00003 	beqz	t6,358 <L80A970B0+0x58>
     34c:	00000000 	nop
     350:	03e00008 	jr	ra
     354:	24021006 	li	v0,4102
     358:	03e00008 	jr	ra
     35c:	24021005 	li	v0,4101

00000360 <L80A97110>:
     360:	3c020000 	lui	v0,0x0
     364:	24420000 	addiu	v0,v0,0
     368:	944f0edc 	lhu	t7,3804(v0)
     36c:	31f80001 	andi	t8,t7,0x1
     370:	13000003 	beqz	t8,380 <L80A97110+0x20>
     374:	00000000 	nop
     378:	03e00008 	jr	ra
     37c:	24021022 	li	v0,4130
     380:	03e00008 	jr	ra
     384:	24021007 	li	v0,4103

00000388 <L80A97138>:
     388:	3c020000 	lui	v0,0x0
     38c:	24420000 	addiu	v0,v0,0
     390:	94590edc 	lhu	t9,3804(v0)
     394:	3c090000 	lui	t1,0x0
     398:	33280001 	andi	t0,t9,0x1
     39c:	11000003 	beqz	t0,3ac <L80A97138+0x24>
     3a0:	00000000 	nop
     3a4:	03e00008 	jr	ra
     3a8:	24021021 	li	v0,4129
     3ac:	8d290048 	lw	t1,72(t1)
     3b0:	8c4a00a4 	lw	t2,164(v0)
     3b4:	012a5824 	and	t3,t1,t2
     3b8:	51600004 	beqzl	t3,3cc <L80A97138+0x44>
     3bc:	944c0efc 	lhu	t4,3836(v0)
     3c0:	03e00008 	jr	ra
     3c4:	24021044 	li	v0,4164
     3c8:	944c0efc 	lhu	t4,3836(v0)
     3cc:	318d0004 	andi	t5,t4,0x4
     3d0:	11a00003 	beqz	t5,3e0 <L80A97138+0x58>
     3d4:	00000000 	nop
     3d8:	03e00008 	jr	ra
     3dc:	24021009 	li	v0,4105
     3e0:	03e00008 	jr	ra
     3e4:	24021008 	li	v0,4104

000003e8 <L80A97198>:
     3e8:	3c020000 	lui	v0,0x0
     3ec:	24420000 	addiu	v0,v0,0
     3f0:	944e0edc 	lhu	t6,3804(v0)
     3f4:	3c180000 	lui	t8,0x0
     3f8:	31cf0001 	andi	t7,t6,0x1
     3fc:	11e00003 	beqz	t7,40c <L80A97198+0x24>
     400:	00000000 	nop
     404:	03e00008 	jr	ra
     408:	24021097 	li	v0,4247
     40c:	8f180048 	lw	t8,72(t8)
     410:	8c5900a4 	lw	t9,164(v0)
     414:	03194024 	and	t0,t8,t9
     418:	51000004 	beqzl	t0,42c <L80A97198+0x44>
     41c:	94490efc 	lhu	t1,3836(v0)
     420:	03e00008 	jr	ra
     424:	24021042 	li	v0,4162
     428:	94490efc 	lhu	t1,3836(v0)
     42c:	312a0010 	andi	t2,t1,0x10
     430:	11400003 	beqz	t2,440 <L80A97198+0x58>
     434:	00000000 	nop
     438:	03e00008 	jr	ra
     43c:	2402100b 	li	v0,4107
     440:	03e00008 	jr	ra
     444:	2402100a 	li	v0,4106

00000448 <L80A971F8>:
     448:	3c020000 	lui	v0,0x0
     44c:	24420000 	addiu	v0,v0,0
     450:	944b0edc 	lhu	t3,3804(v0)
     454:	3c0d0000 	lui	t5,0x0
     458:	316c0001 	andi	t4,t3,0x1
     45c:	11800003 	beqz	t4,46c <L80A971F8+0x24>
     460:	00000000 	nop
     464:	03e00008 	jr	ra
     468:	240210b0 	li	v0,4272
     46c:	8dad0048 	lw	t5,72(t5)
     470:	8c4e00a4 	lw	t6,164(v0)
     474:	01ae7824 	and	t7,t5,t6
     478:	51e00004 	beqzl	t7,48c <L80A971F8+0x44>
     47c:	94580efc 	lhu	t8,3836(v0)
     480:	03e00008 	jr	ra
     484:	24021043 	li	v0,4163
     488:	94580efc 	lhu	t8,3836(v0)
     48c:	33190040 	andi	t9,t8,0x40
     490:	13200003 	beqz	t9,4a0 <L80A971F8+0x58>
     494:	00000000 	nop
     498:	03e00008 	jr	ra
     49c:	2402100d 	li	v0,4109
     4a0:	03e00008 	jr	ra
     4a4:	2402100c 	li	v0,4108

000004a8 <L80A97258>:
     4a8:	3c020000 	lui	v0,0x0
     4ac:	24420000 	addiu	v0,v0,0
     4b0:	94480edc 	lhu	t0,3804(v0)
     4b4:	3c0a0000 	lui	t2,0x0
     4b8:	31090001 	andi	t1,t0,0x1
     4bc:	11200003 	beqz	t1,4cc <L80A97258+0x24>
     4c0:	00000000 	nop
     4c4:	03e00008 	jr	ra
     4c8:	240210b5 	li	v0,4277
     4cc:	8d4a0048 	lw	t2,72(t2)
     4d0:	8c4b00a4 	lw	t3,164(v0)
     4d4:	014b6024 	and	t4,t2,t3
     4d8:	51800004 	beqzl	t4,4ec <L80A97258+0x44>
     4dc:	944d0efc 	lhu	t5,3836(v0)
     4e0:	03e00008 	jr	ra
     4e4:	24021043 	li	v0,4163
     4e8:	944d0efc 	lhu	t5,3836(v0)
     4ec:	31ae0100 	andi	t6,t5,0x100
     4f0:	11c00003 	beqz	t6,500 <L80A97258+0x58>
     4f4:	00000000 	nop
     4f8:	03e00008 	jr	ra
     4fc:	24021019 	li	v0,4121
     500:	03e00008 	jr	ra
     504:	2402100e 	li	v0,4110

00000508 <L80A972B8>:
     508:	03e00008 	jr	ra
     50c:	24021035 	li	v0,4149

00000510 <L80A972C0>:
     510:	03e00008 	jr	ra
     514:	24021038 	li	v0,4152

00000518 <L80A972C8>:
     518:	3c020000 	lui	v0,0x0
     51c:	24420000 	addiu	v0,v0,0
     520:	3c0f0000 	lui	t7,0x0
     524:	8def0048 	lw	t7,72(t7)
     528:	8c5800a4 	lw	t8,164(v0)
     52c:	01f8c824 	and	t9,t7,t8
     530:	13200003 	beqz	t9,540 <L80A972C8+0x28>
     534:	00000000 	nop
     538:	03e00008 	jr	ra
     53c:	2402104b 	li	v0,4171
     540:	03e00008 	jr	ra
     544:	2402103c 	li	v0,4156

00000548 <L80A972F8>:
     548:	3c020000 	lui	v0,0x0
     54c:	24420000 	addiu	v0,v0,0
     550:	3c080000 	lui	t0,0x0
     554:	8d080048 	lw	t0,72(t0)
     558:	8c4900a4 	lw	t1,164(v0)
     55c:	01095024 	and	t2,t0,t1
     560:	11400003 	beqz	t2,570 <L80A972F8+0x28>
     564:	00000000 	nop
     568:	03e00008 	jr	ra
     56c:	2402104c 	li	v0,4172
     570:	03e00008 	jr	ra
     574:	2402103d 	li	v0,4157

00000578 <L80A97328>:
     578:	03e00008 	jr	ra
     57c:	2402103e 	li	v0,4158
     580:	03e00008 	jr	ra
     584:	00000000 	nop

00000588 <func_80A97338>:
     588:	84ae001c 	lh	t6,28(a1)
     58c:	8c831c44 	lw	v1,7236(a0)
     590:	00001025 	move	v0,zero
     594:	31cf00ff 	andi	t7,t6,0xff
     598:	2de1000d 	sltiu	at,t7,13
     59c:	102000ae 	beqz	at,858 <L80A975C0+0x48>
     5a0:	000f7880 	sll	t7,t7,0x2
     5a4:	3c010000 	lui	at,0x0
     5a8:	002f0821 	addu	at,at,t7
     5ac:	8c2f0000 	lw	t7,0(at)
     5b0:	01e00008 	jr	t7
     5b4:	00000000 	nop

000005b8 <L80A97368>:
     5b8:	24180009 	li	t8,9
     5bc:	a0780693 	sb	t8,1683(v1)
     5c0:	03e00008 	jr	ra
     5c4:	240210b9 	li	v0,4281

000005c8 <L80A97378>:
     5c8:	3c020000 	lui	v0,0x0
     5cc:	24420000 	addiu	v0,v0,0
     5d0:	3c190000 	lui	t9,0x0
     5d4:	8f390000 	lw	t9,0(t9)
     5d8:	8c4800a4 	lw	t0,164(v0)
     5dc:	03284824 	and	t1,t9,t0
     5e0:	51200004 	beqzl	t1,5f4 <L80A97378+0x2c>
     5e4:	944a0f00 	lhu	t2,3840(v0)
     5e8:	03e00008 	jr	ra
     5ec:	24021072 	li	v0,4210
     5f0:	944a0f00 	lhu	t2,3840(v0)
     5f4:	314b0002 	andi	t3,t2,0x2
     5f8:	11600003 	beqz	t3,608 <L80A97378+0x40>
     5fc:	00000000 	nop
     600:	03e00008 	jr	ra
     604:	24021056 	li	v0,4182
     608:	03e00008 	jr	ra
     60c:	24021055 	li	v0,4181

00000610 <L80A973C0>:
     610:	3c020000 	lui	v0,0x0
     614:	24420000 	addiu	v0,v0,0
     618:	3c0c0000 	lui	t4,0x0
     61c:	8d8c0000 	lw	t4,0(t4)
     620:	8c4d00a4 	lw	t5,164(v0)
     624:	018d7024 	and	t6,t4,t5
     628:	11c00003 	beqz	t6,638 <L80A973C0+0x28>
     62c:	00000000 	nop
     630:	03e00008 	jr	ra
     634:	24021073 	li	v0,4211
     638:	03e00008 	jr	ra
     63c:	2402105a 	li	v0,4186

00000640 <L80A973F0>:
     640:	3c020000 	lui	v0,0x0
     644:	24420000 	addiu	v0,v0,0
     648:	3c0f0000 	lui	t7,0x0
     64c:	8def0000 	lw	t7,0(t7)
     650:	8c5800a4 	lw	t8,164(v0)
     654:	01f8c824 	and	t9,t7,t8
     658:	53200004 	beqzl	t9,66c <L80A973F0+0x2c>
     65c:	94480f00 	lhu	t0,3840(v0)
     660:	03e00008 	jr	ra
     664:	24021074 	li	v0,4212
     668:	94480f00 	lhu	t0,3840(v0)
     66c:	31090080 	andi	t1,t0,0x80
     670:	11200003 	beqz	t1,680 <L80A973F0+0x40>
     674:	00000000 	nop
     678:	03e00008 	jr	ra
     67c:	2402105e 	li	v0,4190
     680:	03e00008 	jr	ra
     684:	2402105d 	li	v0,4189

00000688 <L80A97438>:
     688:	3c020000 	lui	v0,0x0
     68c:	24420000 	addiu	v0,v0,0
     690:	3c0a0000 	lui	t2,0x0
     694:	8d4a0000 	lw	t2,0(t2)
     698:	8c4b00a4 	lw	t3,164(v0)
     69c:	014b6024 	and	t4,t2,t3
     6a0:	11800003 	beqz	t4,6b0 <L80A97438+0x28>
     6a4:	00000000 	nop
     6a8:	03e00008 	jr	ra
     6ac:	24021075 	li	v0,4213
     6b0:	03e00008 	jr	ra
     6b4:	2402105b 	li	v0,4187

000006b8 <L80A97468>:
     6b8:	3c020000 	lui	v0,0x0
     6bc:	24420000 	addiu	v0,v0,0
     6c0:	3c0d0000 	lui	t5,0x0
     6c4:	8dad0000 	lw	t5,0(t5)
     6c8:	8c4e00a4 	lw	t6,164(v0)
     6cc:	01ae7824 	and	t7,t5,t6
     6d0:	11e00003 	beqz	t7,6e0 <L80A97468+0x28>
     6d4:	00000000 	nop
     6d8:	03e00008 	jr	ra
     6dc:	24021076 	li	v0,4214
     6e0:	03e00008 	jr	ra
     6e4:	2402105f 	li	v0,4191

000006e8 <L80A97498>:
     6e8:	03e00008 	jr	ra
     6ec:	24021057 	li	v0,4183

000006f0 <L80A974A0>:
     6f0:	3c020000 	lui	v0,0x0
     6f4:	24420000 	addiu	v0,v0,0
     6f8:	3c180000 	lui	t8,0x0
     6fc:	8f180000 	lw	t8,0(t8)
     700:	8c5900a4 	lw	t9,164(v0)
     704:	03194024 	and	t0,t8,t9
     708:	51000004 	beqzl	t0,71c <L80A974A0+0x2c>
     70c:	94490f02 	lhu	t1,3842(v0)
     710:	03e00008 	jr	ra
     714:	24021077 	li	v0,4215
     718:	94490f02 	lhu	t1,3842(v0)
     71c:	312a0002 	andi	t2,t1,0x2
     720:	11400003 	beqz	t2,730 <L80A974A0+0x40>
     724:	00000000 	nop
     728:	03e00008 	jr	ra
     72c:	24021059 	li	v0,4185
     730:	03e00008 	jr	ra
     734:	24021058 	li	v0,4184

00000738 <L80A974E8>:
     738:	3c020000 	lui	v0,0x0
     73c:	24420000 	addiu	v0,v0,0
     740:	3c0b0000 	lui	t3,0x0
     744:	8d6b0000 	lw	t3,0(t3)
     748:	8c4c00a4 	lw	t4,164(v0)
     74c:	016c6824 	and	t5,t3,t4
     750:	11a00003 	beqz	t5,760 <L80A974E8+0x28>
     754:	00000000 	nop
     758:	03e00008 	jr	ra
     75c:	24021079 	li	v0,4217
     760:	03e00008 	jr	ra
     764:	2402104e 	li	v0,4174

00000768 <L80A97518>:
     768:	3c020000 	lui	v0,0x0
     76c:	24420000 	addiu	v0,v0,0
     770:	3c0e0000 	lui	t6,0x0
     774:	8dce0000 	lw	t6,0(t6)
     778:	8c4f00a4 	lw	t7,164(v0)
     77c:	01cfc024 	and	t8,t6,t7
     780:	53000004 	beqzl	t8,794 <L80A97518+0x2c>
     784:	94590f02 	lhu	t9,3842(v0)
     788:	03e00008 	jr	ra
     78c:	2402107a 	li	v0,4218
     790:	94590f02 	lhu	t9,3842(v0)
     794:	33280200 	andi	t0,t9,0x200
     798:	11000003 	beqz	t0,7a8 <L80A97518+0x40>
     79c:	00000000 	nop
     7a0:	03e00008 	jr	ra
     7a4:	24021050 	li	v0,4176
     7a8:	03e00008 	jr	ra
     7ac:	2402104f 	li	v0,4175

000007b0 <L80A97560>:
     7b0:	3c020000 	lui	v0,0x0
     7b4:	24420000 	addiu	v0,v0,0
     7b8:	3c090000 	lui	t1,0x0
     7bc:	8d290000 	lw	t1,0(t1)
     7c0:	8c4a00a4 	lw	t2,164(v0)
     7c4:	012a5824 	and	t3,t1,t2
     7c8:	11600003 	beqz	t3,7d8 <L80A97560+0x28>
     7cc:	00000000 	nop
     7d0:	03e00008 	jr	ra
     7d4:	2402107b 	li	v0,4219
     7d8:	03e00008 	jr	ra
     7dc:	24021051 	li	v0,4177

000007e0 <L80A97590>:
     7e0:	3c020000 	lui	v0,0x0
     7e4:	24420000 	addiu	v0,v0,0
     7e8:	3c0c0000 	lui	t4,0x0
     7ec:	8d8c0000 	lw	t4,0(t4)
     7f0:	8c4d00a4 	lw	t5,164(v0)
     7f4:	018d7024 	and	t6,t4,t5
     7f8:	11c00003 	beqz	t6,808 <L80A97590+0x28>
     7fc:	00000000 	nop
     800:	03e00008 	jr	ra
     804:	2402107c 	li	v0,4220
     808:	03e00008 	jr	ra
     80c:	24021052 	li	v0,4178

00000810 <L80A975C0>:
     810:	3c020000 	lui	v0,0x0
     814:	24420000 	addiu	v0,v0,0
     818:	3c0f0000 	lui	t7,0x0
     81c:	8def0000 	lw	t7,0(t7)
     820:	8c5800a4 	lw	t8,164(v0)
     824:	01f8c824 	and	t9,t7,t8
     828:	53200004 	beqzl	t9,83c <L80A975C0+0x2c>
     82c:	94480f04 	lhu	t0,3844(v0)
     830:	03e00008 	jr	ra
     834:	2402107c 	li	v0,4220
     838:	94480f04 	lhu	t0,3844(v0)
     83c:	31090002 	andi	t1,t0,0x2
     840:	11200003 	beqz	t1,850 <L80A975C0+0x40>
     844:	00000000 	nop
     848:	03e00008 	jr	ra
     84c:	24021054 	li	v0,4180
     850:	03e00008 	jr	ra
     854:	24021053 	li	v0,4179
     858:	03e00008 	jr	ra
     85c:	00000000 	nop

00000860 <func_80A97610>:
     860:	27bdffe0 	addiu	sp,sp,-32
     864:	afbf0014 	sw	ra,20(sp)
     868:	afa40020 	sw	a0,32(sp)
     86c:	84a3001c 	lh	v1,28(a1)
     870:	00a03025 	move	a2,a1
     874:	24010002 	li	at,2
     878:	306300ff 	andi	v1,v1,0xff
     87c:	1060000c 	beqz	v1,8b0 <func_80A97610+0x50>
     880:	8fa40020 	lw	a0,32(sp)
     884:	1061000a 	beq	v1,at,8b0 <func_80A97610+0x50>
     888:	24010003 	li	at,3
     88c:	10610008 	beq	v1,at,8b0 <func_80A97610+0x50>
     890:	24010004 	li	at,4
     894:	10610006 	beq	v1,at,8b0 <func_80A97610+0x50>
     898:	24010007 	li	at,7
     89c:	10610004 	beq	v1,at,8b0 <func_80A97610+0x50>
     8a0:	24010008 	li	at,8
     8a4:	10610002 	beq	v1,at,8b0 <func_80A97610+0x50>
     8a8:	2401000b 	li	at,11
     8ac:	14610007 	bne	v1,at,8cc <func_80A97610+0x6c>
     8b0:	24050013 	li	a1,19
     8b4:	0c000000 	jal	0 <func_80A96DB0>
     8b8:	afa60024 	sw	a2,36(sp)
     8bc:	8fa60024 	lw	a2,36(sp)
     8c0:	84c3001c 	lh	v1,28(a2)
     8c4:	a7a2001e 	sh	v0,30(sp)
     8c8:	306300ff 	andi	v1,v1,0xff
     8cc:	24010001 	li	at,1
     8d0:	1061000a 	beq	v1,at,8fc <func_80A97610+0x9c>
     8d4:	97a4001e 	lhu	a0,30(sp)
     8d8:	24010005 	li	at,5
     8dc:	10610007 	beq	v1,at,8fc <func_80A97610+0x9c>
     8e0:	24010006 	li	at,6
     8e4:	10610005 	beq	v1,at,8fc <func_80A97610+0x9c>
     8e8:	24010009 	li	at,9
     8ec:	10610003 	beq	v1,at,8fc <func_80A97610+0x9c>
     8f0:	2401000a 	li	at,10
     8f4:	5461000a 	bnel	v1,at,920 <func_80A97610+0xc0>
     8f8:	2401000c 	li	at,12
     8fc:	8fa40020 	lw	a0,32(sp)
     900:	24050014 	li	a1,20
     904:	0c000000 	jal	0 <func_80A96DB0>
     908:	afa60024 	sw	a2,36(sp)
     90c:	8fa60024 	lw	a2,36(sp)
     910:	3044ffff 	andi	a0,v0,0xffff
     914:	84c3001c 	lh	v1,28(a2)
     918:	306300ff 	andi	v1,v1,0xff
     91c:	2401000c 	li	at,12
     920:	14610006 	bne	v1,at,93c <func_80A97610+0xdc>
     924:	24050012 	li	a1,18
     928:	8fa40020 	lw	a0,32(sp)
     92c:	0c000000 	jal	0 <func_80A96DB0>
     930:	afa60024 	sw	a2,36(sp)
     934:	8fa60024 	lw	a2,36(sp)
     938:	3044ffff 	andi	a0,v0,0xffff
     93c:	10800003 	beqz	a0,94c <func_80A97610+0xec>
     940:	3c0e0000 	lui	t6,0x0
     944:	1000000c 	b	978 <func_80A97610+0x118>
     948:	00801025 	move	v0,a0
     94c:	8dce0004 	lw	t6,4(t6)
     950:	00c02825 	move	a1,a2
     954:	8fa40020 	lw	a0,32(sp)
     958:	15c00005 	bnez	t6,970 <func_80A97610+0x110>
     95c:	00000000 	nop
     960:	0c000000 	jal	0 <func_80A96DB0>
     964:	8fa40020 	lw	a0,32(sp)
     968:	10000004 	b	97c <func_80A97610+0x11c>
     96c:	8fbf0014 	lw	ra,20(sp)
     970:	0c000000 	jal	0 <func_80A96DB0>
     974:	00c02825 	move	a1,a2
     978:	8fbf0014 	lw	ra,20(sp)
     97c:	27bd0020 	addiu	sp,sp,32
     980:	03e00008 	jr	ra
     984:	00000000 	nop

00000988 <func_80A97738>:
     988:	27bdffe0 	addiu	sp,sp,-32
     98c:	afbf001c 	sw	ra,28(sp)
     990:	00803025 	move	a2,a0
     994:	afa50024 	sw	a1,36(sp)
     998:	afa60020 	sw	a2,32(sp)
     99c:	0c000000 	jal	0 <func_80A96DB0>
     9a0:	248420d8 	addiu	a0,a0,8408
     9a4:	24010002 	li	at,2
     9a8:	8fa60020 	lw	a2,32(sp)
     9ac:	1041000b 	beq	v0,at,9dc <func_80A97738+0x54>
     9b0:	8fa80024 	lw	t0,36(sp)
     9b4:	24010003 	li	at,3
     9b8:	10410074 	beq	v0,at,b8c <L80A97900+0x3c>
     9bc:	24010004 	li	at,4
     9c0:	1041008a 	beq	v0,at,bec <L80A97900+0x9c>
     9c4:	00c02025 	move	a0,a2
     9c8:	24010006 	li	at,6
     9cc:	104100e3 	beq	v0,at,d5c <L80A97900+0x20c>
     9d0:	00000000 	nop
     9d4:	100000e8 	b	d78 <L80A97900+0x228>
     9d8:	24020001 	li	v0,1
     9dc:	9503010e 	lhu	v1,270(t0)
     9e0:	2861105e 	slti	at,v1,4190
     9e4:	14200007 	bnez	at,a04 <func_80A97738+0x7c>
     9e8:	240110ba 	li	at,4282
     9ec:	10610065 	beq	v1,at,b84 <L80A97900+0x34>
     9f0:	240110d7 	li	at,4311
     9f4:	1061005d 	beq	v1,at,b6c <L80A97900+0x1c>
     9f8:	3c020000 	lui	v0,0x0
     9fc:	100000de 	b	d78 <L80A97900+0x228>
     a00:	00001025 	move	v0,zero
     a04:	2861100f 	slti	at,v1,4111
     a08:	1420000a 	bnez	at,a34 <func_80A97738+0xac>
     a0c:	246feffb 	addiu	t7,v1,-4101
     a10:	246eefb1 	addiu	t6,v1,-4175
     a14:	2dc1000f 	sltiu	at,t6,15
     a18:	10200013 	beqz	at,a68 <L80A97818>
     a1c:	000e7080 	sll	t6,t6,0x2
     a20:	3c010000 	lui	at,0x0
     a24:	002e0821 	addu	at,at,t6
     a28:	8c2e0000 	lw	t6,0(at)
     a2c:	01c00008 	jr	t6
     a30:	00000000 	nop
     a34:	2de1000a 	sltiu	at,t7,10
     a38:	1020000b 	beqz	at,a68 <L80A97818>
     a3c:	000f7880 	sll	t7,t7,0x2
     a40:	3c010000 	lui	at,0x0
     a44:	002f0821 	addu	at,at,t7
     a48:	8c2f0000 	lw	t7,0(at)
     a4c:	01e00008 	jr	t7
     a50:	00000000 	nop

00000a54 <L80A97804>:
     a54:	3c020000 	lui	v0,0x0
     a58:	24420000 	addiu	v0,v0,0
     a5c:	94580efa 	lhu	t8,3834(v0)
     a60:	37194000 	ori	t9,t8,0x4000
     a64:	a4590efa 	sh	t9,3834(v0)

00000a68 <L80A97818>:
     a68:	100000c3 	b	d78 <L80A97900+0x228>
     a6c:	00001025 	move	v0,zero

00000a70 <L80A97820>:
     a70:	3c020000 	lui	v0,0x0
     a74:	24420000 	addiu	v0,v0,0
     a78:	94490efc 	lhu	t1,3836(v0)
     a7c:	352a0004 	ori	t2,t1,0x4
     a80:	a44a0efc 	sh	t2,3836(v0)
     a84:	100000bc 	b	d78 <L80A97900+0x228>
     a88:	00001025 	move	v0,zero

00000a8c <L80A9783C>:
     a8c:	3c020000 	lui	v0,0x0
     a90:	24420000 	addiu	v0,v0,0
     a94:	944b0efc 	lhu	t3,3836(v0)
     a98:	356c0010 	ori	t4,t3,0x10
     a9c:	a44c0efc 	sh	t4,3836(v0)
     aa0:	100000b5 	b	d78 <L80A97900+0x228>
     aa4:	00001025 	move	v0,zero

00000aa8 <L80A97858>:
     aa8:	3c020000 	lui	v0,0x0
     aac:	24420000 	addiu	v0,v0,0
     ab0:	944d0efc 	lhu	t5,3836(v0)
     ab4:	35ae0040 	ori	t6,t5,0x40
     ab8:	a44e0efc 	sh	t6,3836(v0)
     abc:	100000ae 	b	d78 <L80A97900+0x228>
     ac0:	00001025 	move	v0,zero

00000ac4 <L80A97874>:
     ac4:	3c020000 	lui	v0,0x0
     ac8:	24420000 	addiu	v0,v0,0
     acc:	944f0efc 	lhu	t7,3836(v0)
     ad0:	35f80100 	ori	t8,t7,0x100
     ad4:	a4580efc 	sh	t8,3836(v0)
     ad8:	100000a7 	b	d78 <L80A97900+0x228>
     adc:	00001025 	move	v0,zero

00000ae0 <L80A97890>:
     ae0:	3c020000 	lui	v0,0x0
     ae4:	24420000 	addiu	v0,v0,0
     ae8:	94590f02 	lhu	t9,3842(v0)
     aec:	37290200 	ori	t1,t9,0x200
     af0:	a4490f02 	sh	t1,3842(v0)
     af4:	100000a0 	b	d78 <L80A97900+0x228>
     af8:	00001025 	move	v0,zero

00000afc <L80A978AC>:
     afc:	3c020000 	lui	v0,0x0
     b00:	24420000 	addiu	v0,v0,0
     b04:	944a0f04 	lhu	t2,3844(v0)
     b08:	354b0002 	ori	t3,t2,0x2
     b0c:	a44b0f04 	sh	t3,3844(v0)
     b10:	10000099 	b	d78 <L80A97900+0x228>
     b14:	00001025 	move	v0,zero

00000b18 <L80A978C8>:
     b18:	3c020000 	lui	v0,0x0
     b1c:	24420000 	addiu	v0,v0,0
     b20:	944c0f00 	lhu	t4,3840(v0)
     b24:	358d0002 	ori	t5,t4,0x2
     b28:	a44d0f00 	sh	t5,3840(v0)
     b2c:	10000092 	b	d78 <L80A97900+0x228>
     b30:	00001025 	move	v0,zero

00000b34 <L80A978E4>:
     b34:	3c020000 	lui	v0,0x0
     b38:	24420000 	addiu	v0,v0,0
     b3c:	944e0f02 	lhu	t6,3842(v0)
     b40:	35cf0002 	ori	t7,t6,0x2
     b44:	a44f0f02 	sh	t7,3842(v0)
     b48:	1000008b 	b	d78 <L80A97900+0x228>
     b4c:	00001025 	move	v0,zero

00000b50 <L80A97900>:
     b50:	3c020000 	lui	v0,0x0
     b54:	24420000 	addiu	v0,v0,0
     b58:	94580f00 	lhu	t8,3840(v0)
     b5c:	37190080 	ori	t9,t8,0x80
     b60:	a4590f00 	sh	t9,3840(v0)
     b64:	10000084 	b	d78 <L80A97900+0x228>
     b68:	00001025 	move	v0,zero
     b6c:	24420000 	addiu	v0,v0,0
     b70:	94490f0e 	lhu	t1,3854(v0)
     b74:	352a0080 	ori	t2,t1,0x80
     b78:	a44a0f0e 	sh	t2,3854(v0)
     b7c:	1000007e 	b	d78 <L80A97900+0x228>
     b80:	00001025 	move	v0,zero
     b84:	1000007c 	b	d78 <L80A97900+0x228>
     b88:	24020001 	li	v0,1
     b8c:	9503010e 	lhu	v1,270(t0)
     b90:	240110b7 	li	at,4279
     b94:	10610003 	beq	v1,at,ba4 <L80A97900+0x54>
     b98:	240110b8 	li	at,4280
     b9c:	14610011 	bne	v1,at,be4 <L80A97900+0x94>
     ba0:	00000000 	nop
     ba4:	910b0210 	lbu	t3,528(t0)
     ba8:	3c070000 	lui	a3,0x0
     bac:	24e70000 	addiu	a3,a3,0
     bb0:	1560000c 	bnez	t3,be4 <L80A97900+0x94>
     bb4:	24044807 	li	a0,18439
     bb8:	3c0c0000 	lui	t4,0x0
     bbc:	258c0000 	addiu	t4,t4,0
     bc0:	3c050000 	lui	a1,0x0
     bc4:	24a50000 	addiu	a1,a1,0
     bc8:	afac0014 	sw	t4,20(sp)
     bcc:	24060004 	li	a2,4
     bd0:	0c000000 	jal	0 <func_80A96DB0>
     bd4:	afa70010 	sw	a3,16(sp)
     bd8:	8fa80024 	lw	t0,36(sp)
     bdc:	240d0001 	li	t5,1
     be0:	a10d0210 	sb	t5,528(t0)
     be4:	10000064 	b	d78 <L80A97900+0x228>
     be8:	24020001 	li	v0,1
     bec:	0c000000 	jal	0 <func_80A96DB0>
     bf0:	afa60020 	sw	a2,32(sp)
     bf4:	8fa60020 	lw	a2,32(sp)
     bf8:	1040005e 	beqz	v0,d74 <L80A97900+0x224>
     bfc:	8fa80024 	lw	t0,36(sp)
     c00:	9503010e 	lhu	v1,270(t0)
     c04:	24011035 	li	at,4149
     c08:	3c0e0001 	lui	t6,0x1
     c0c:	1061000f 	beq	v1,at,c4c <L80A97900+0xfc>
     c10:	01c67021 	addu	t6,t6,a2
     c14:	24011038 	li	at,4152
     c18:	10610018 	beq	v1,at,c7c <L80A97900+0x12c>
     c1c:	3c020001 	lui	v0,0x1
     c20:	2401103e 	li	at,4158
     c24:	10610026 	beq	v1,at,cc0 <L80A97900+0x170>
     c28:	3c090001 	lui	t1,0x1
     c2c:	240110b7 	li	at,4279
     c30:	10610030 	beq	v1,at,cf4 <L80A97900+0x1a4>
     c34:	3c020000 	lui	v0,0x0
     c38:	240110b8 	li	at,4280
     c3c:	50610032 	beql	v1,at,d08 <L80A97900+0x1b8>
     c40:	3c010001 	lui	at,0x1
     c44:	1000004c 	b	d78 <L80A97900+0x228>
     c48:	24020001 	li	v0,1
     c4c:	91ce04bd 	lbu	t6,1213(t6)
     c50:	24181037 	li	t8,4151
     c54:	240f1036 	li	t7,4150
     c58:	15c00003 	bnez	t6,c68 <L80A97900+0x118>
     c5c:	00c02025 	move	a0,a2
     c60:	10000002 	b	c6c <L80A97900+0x11c>
     c64:	a50f010e 	sh	t7,270(t0)
     c68:	a518010e 	sh	t8,270(t0)
     c6c:	0c000000 	jal	0 <func_80A96DB0>
     c70:	9505010e 	lhu	a1,270(t0)
     c74:	10000040 	b	d78 <L80A97900+0x228>
     c78:	24020001 	li	v0,1
     c7c:	00461021 	addu	v0,v0,a2
     c80:	904204bd 	lbu	v0,1213(v0)
     c84:	24191039 	li	t9,4153
     c88:	24010001 	li	at,1
     c8c:	10400007 	beqz	v0,cac <L80A97900+0x15c>
     c90:	00c02025 	move	a0,a2
     c94:	14410003 	bne	v0,at,ca4 <L80A97900+0x154>
     c98:	2403103b 	li	v1,4155
     c9c:	10000001 	b	ca4 <L80A97900+0x154>
     ca0:	2403103a 	li	v1,4154
     ca4:	10000002 	b	cb0 <L80A97900+0x160>
     ca8:	a503010e 	sh	v1,270(t0)
     cac:	a519010e 	sh	t9,270(t0)
     cb0:	0c000000 	jal	0 <func_80A96DB0>
     cb4:	9505010e 	lhu	a1,270(t0)
     cb8:	1000002f 	b	d78 <L80A97900+0x228>
     cbc:	24020001 	li	v0,1
     cc0:	01264821 	addu	t1,t1,a2
     cc4:	912904bd 	lbu	t1,1213(t1)
     cc8:	240b1040 	li	t3,4160
     ccc:	240a103f 	li	t2,4159
     cd0:	15200003 	bnez	t1,ce0 <L80A97900+0x190>
     cd4:	00c02025 	move	a0,a2
     cd8:	10000002 	b	ce4 <L80A97900+0x194>
     cdc:	a50a010e 	sh	t2,270(t0)
     ce0:	a50b010e 	sh	t3,270(t0)
     ce4:	0c000000 	jal	0 <func_80A96DB0>
     ce8:	9505010e 	lhu	a1,270(t0)
     cec:	10000022 	b	d78 <L80A97900+0x228>
     cf0:	24020001 	li	v0,1
     cf4:	24420000 	addiu	v0,v0,0
     cf8:	944c0f0e 	lhu	t4,3854(v0)
     cfc:	358d1000 	ori	t5,t4,0x1000
     d00:	a44d0f0e 	sh	t5,3854(v0)
     d04:	3c010001 	lui	at,0x1
     d08:	00c11021 	addu	v0,a2,at
     d0c:	904e04bd 	lbu	t6,1213(v0)
     d10:	241810b9 	li	t8,4281
     d14:	240f10ba 	li	t7,4282
     d18:	15c00003 	bnez	t6,d28 <L80A97900+0x1d8>
     d1c:	24030001 	li	v1,1
     d20:	10000002 	b	d2c <L80A97900+0x1dc>
     d24:	a50f010e 	sh	t7,270(t0)
     d28:	a518010e 	sh	t8,270(t0)
     d2c:	905904bd 	lbu	t9,1213(v0)
     d30:	00031400 	sll	v0,v1,0x10
     d34:	17200005 	bnez	t9,d4c <L80A97900+0x1fc>
     d38:	00000000 	nop
     d3c:	24030002 	li	v1,2
     d40:	00031400 	sll	v0,v1,0x10
     d44:	1000000c 	b	d78 <L80A97900+0x228>
     d48:	00021403 	sra	v0,v0,0x10
     d4c:	1000000a 	b	d78 <L80A97900+0x228>
     d50:	00021403 	sra	v0,v0,0x10
     d54:	10000008 	b	d78 <L80A97900+0x228>
     d58:	24020001 	li	v0,1
     d5c:	0c000000 	jal	0 <func_80A96DB0>
     d60:	00c02025 	move	a0,a2
     d64:	50400004 	beqzl	v0,d78 <L80A97900+0x228>
     d68:	24020001 	li	v0,1
     d6c:	10000002 	b	d78 <L80A97900+0x228>
     d70:	24020003 	li	v0,3
     d74:	24020001 	li	v0,1
     d78:	8fbf001c 	lw	ra,28(sp)
     d7c:	27bd0020 	addiu	sp,sp,32
     d80:	03e00008 	jr	ra
     d84:	00000000 	nop

00000d88 <func_80A97B38>:
     d88:	3c020000 	lui	v0,0x0
     d8c:	24420000 	addiu	v0,v0,0
     d90:	8c4e0004 	lw	t6,4(v0)
     d94:	afa40000 	sw	a0,0(sp)
     d98:	3c0a0000 	lui	t2,0x0
     d9c:	11c00011 	beqz	t6,de4 <func_80A97B38+0x5c>
     da0:	00000000 	nop
     da4:	944f0edc 	lhu	t7,3804(v0)
     da8:	3c190000 	lui	t9,0x0
     dac:	31f80001 	andi	t8,t7,0x1
     db0:	13000003 	beqz	t8,dc0 <func_80A97B38+0x38>
     db4:	00000000 	nop
     db8:	03e00008 	jr	ra
     dbc:	24020002 	li	v0,2
     dc0:	8f390048 	lw	t9,72(t9)
     dc4:	8c4800a4 	lw	t0,164(v0)
     dc8:	03284824 	and	t1,t9,t0
     dcc:	11200003 	beqz	t1,ddc <func_80A97B38+0x54>
     dd0:	00000000 	nop
     dd4:	03e00008 	jr	ra
     dd8:	24020001 	li	v0,1
     ddc:	03e00008 	jr	ra
     de0:	00001025 	move	v0,zero
     de4:	8d4a0000 	lw	t2,0(t2)
     de8:	8c4b00a4 	lw	t3,164(v0)
     dec:	24030003 	li	v1,3
     df0:	014b6024 	and	t4,t2,t3
     df4:	11800003 	beqz	t4,e04 <func_80A97B38+0x7c>
     df8:	00000000 	nop
     dfc:	10000001 	b	e04 <func_80A97B38+0x7c>
     e00:	24030004 	li	v1,4
     e04:	00601025 	move	v0,v1
     e08:	03e00008 	jr	ra
     e0c:	00000000 	nop

00000e10 <func_80A97BC0>:
     e10:	27bdfee0 	addiu	sp,sp,-288
     e14:	3c0f0000 	lui	t7,0x0
     e18:	25ef0000 	addiu	t7,t7,0
     e1c:	afbf0014 	sw	ra,20(sp)
     e20:	25e800fc 	addiu	t0,t7,252
     e24:	27ae001c 	addiu	t6,sp,28
     e28:	8df90000 	lw	t9,0(t7)
     e2c:	25ef000c 	addiu	t7,t7,12
     e30:	25ce000c 	addiu	t6,t6,12
     e34:	add9fff4 	sw	t9,-12(t6)
     e38:	8df8fff8 	lw	t8,-8(t7)
     e3c:	add8fff8 	sw	t8,-8(t6)
     e40:	8df9fffc 	lw	t9,-4(t7)
     e44:	15e8fff8 	bne	t7,t0,e28 <func_80A97BC0+0x18>
     e48:	add9fffc 	sw	t9,-4(t6)
     e4c:	8df90000 	lw	t9,0(t7)
     e50:	8df80004 	lw	t8,4(t7)
     e54:	3c090000 	lui	t1,0x0
     e58:	add90000 	sw	t9,0(t6)
     e5c:	add80004 	sw	t8,4(t6)
     e60:	8d290004 	lw	t1,4(t1)
     e64:	15200009 	bnez	t1,e8c <func_80A97BC0+0x7c>
     e68:	00000000 	nop
     e6c:	848a001c 	lh	t2,28(a0)
     e70:	2401000c 	li	at,12
     e74:	314b00ff 	andi	t3,t2,0xff
     e78:	15610004 	bne	t3,at,e8c <func_80A97BC0+0x7c>
     e7c:	3c01c1a0 	lui	at,0xc1a0
     e80:	44810000 	mtc1	at,$f0
     e84:	1000000e 	b	ec0 <func_80A97BC0+0xb0>
     e88:	8fbf0014 	lw	ra,20(sp)
     e8c:	0c000000 	jal	0 <func_80A96DB0>
     e90:	afa40120 	sw	a0,288(sp)
     e94:	8fa40120 	lw	a0,288(sp)
     e98:	00027880 	sll	t7,v0,0x2
     e9c:	848c001c 	lh	t4,28(a0)
     ea0:	318d00ff 	andi	t5,t4,0xff
     ea4:	000d4080 	sll	t0,t5,0x2
     ea8:	010d4021 	addu	t0,t0,t5
     eac:	00084080 	sll	t0,t0,0x2
     eb0:	010f7021 	addu	t6,t0,t7
     eb4:	03aec021 	addu	t8,sp,t6
     eb8:	c700001c 	lwc1	$f0,28(t8)
     ebc:	8fbf0014 	lw	ra,20(sp)
     ec0:	27bd0120 	addiu	sp,sp,288
     ec4:	03e00008 	jr	ra
     ec8:	00000000 	nop

00000ecc <func_80A97C7C>:
     ecc:	27bdffa0 	addiu	sp,sp,-96
     ed0:	3c0f0000 	lui	t7,0x0
     ed4:	25ef0000 	addiu	t7,t7,0
     ed8:	afbf0014 	sw	ra,20(sp)
     edc:	afa40060 	sw	a0,96(sp)
     ee0:	25e8003c 	addiu	t0,t7,60
     ee4:	27ae001c 	addiu	t6,sp,28
     ee8:	8df90000 	lw	t9,0(t7)
     eec:	25ef000c 	addiu	t7,t7,12
     ef0:	25ce000c 	addiu	t6,t6,12
     ef4:	add9fff4 	sw	t9,-12(t6)
     ef8:	8df8fff8 	lw	t8,-8(t7)
     efc:	add8fff8 	sw	t8,-8(t6)
     f00:	8df9fffc 	lw	t9,-4(t7)
     f04:	15e8fff8 	bne	t7,t0,ee8 <func_80A97C7C+0x1c>
     f08:	add9fffc 	sw	t9,-4(t6)
     f0c:	8df90000 	lw	t9,0(t7)
     f10:	add90000 	sw	t9,0(t6)
     f14:	91f90004 	lbu	t9,4(t7)
     f18:	a1d90004 	sb	t9,4(t6)
     f1c:	0c000000 	jal	0 <func_80A96DB0>
     f20:	8fa40060 	lw	a0,96(sp)
     f24:	8fa90060 	lw	t1,96(sp)
     f28:	8fbf0014 	lw	ra,20(sp)
     f2c:	852a001c 	lh	t2,28(t1)
     f30:	314b00ff 	andi	t3,t2,0xff
     f34:	000b6080 	sll	t4,t3,0x2
     f38:	018b6021 	addu	t4,t4,t3
     f3c:	01826821 	addu	t5,t4,v0
     f40:	03ad1021 	addu	v0,sp,t5
     f44:	9042001c 	lbu	v0,28(v0)
     f48:	03e00008 	jr	ra
     f4c:	27bd0060 	addiu	sp,sp,96

00000f50 <func_80A97D00>:
     f50:	848e008a 	lh	t6,138(a0)
     f54:	848f00b6 	lh	t7,182(a0)
     f58:	448e2000 	mtc1	t6,$f4
     f5c:	448f4000 	mtc1	t7,$f8
     f60:	468021a0 	cvt.s.w	$f6,$f4
     f64:	468042a0 	cvt.s.w	$f10,$f8
     f68:	460a3401 	sub.s	$f16,$f6,$f10
     f6c:	4600848d 	trunc.w.s	$f18,$f16
     f70:	44029000 	mfc1	v0,$f18
     f74:	00000000 	nop
     f78:	00021400 	sll	v0,v0,0x10
     f7c:	00021403 	sra	v0,v0,0x10
     f80:	04400004 	bltz	v0,f94 <func_80A97D00+0x44>
     f84:	00021823 	negu	v1,v0
     f88:	00021c00 	sll	v1,v0,0x10
     f8c:	10000003 	b	f9c <func_80A97D00+0x4c>
     f90:	00031c03 	sra	v1,v1,0x10
     f94:	00031c00 	sll	v1,v1,0x10
     f98:	00031c03 	sra	v1,v1,0x10
     f9c:	28613ffc 	slti	at,v1,16380
     fa0:	10200003 	beqz	at,fb0 <func_80A97D00+0x60>
     fa4:	00001825 	move	v1,zero
     fa8:	03e00008 	jr	ra
     fac:	24020001 	li	v0,1
     fb0:	03e00008 	jr	ra
     fb4:	00601025 	move	v0,v1

00000fb8 <func_80A97D68>:
     fb8:	27bdffe0 	addiu	sp,sp,-32
     fbc:	afbf001c 	sw	ra,28(sp)
     fc0:	afb00018 	sw	s0,24(sp)
     fc4:	afa50024 	sw	a1,36(sp)
     fc8:	848e01e8 	lh	t6,488(a0)
     fcc:	00808025 	move	s0,a0
     fd0:	51c0000f 	beqzl	t6,1010 <func_80A97D68+0x58>
     fd4:	8e080154 	lw	t0,340(s0)
     fd8:	8c8f0154 	lw	t7,340(a0)
     fdc:	3c180600 	lui	t8,0x600
     fe0:	27186a60 	addiu	t8,t8,27232
     fe4:	030fc826 	xor	t9,t8,t7
     fe8:	2f390001 	sltiu	t9,t9,1
     fec:	17200005 	bnez	t9,1004 <func_80A97D68+0x4c>
     ff0:	2484014c 	addiu	a0,a0,332
     ff4:	3c050000 	lui	a1,0x0
     ff8:	24a50000 	addiu	a1,a1,0
     ffc:	0c000000 	jal	0 <func_80A96DB0>
    1000:	24060020 	li	a2,32
    1004:	1000000d 	b	103c <func_80A97D68+0x84>
    1008:	24070002 	li	a3,2
    100c:	8e080154 	lw	t0,340(s0)
    1010:	3c090600 	lui	t1,0x600
    1014:	25297830 	addiu	t1,t1,30768
    1018:	01285026 	xor	t2,t1,t0
    101c:	2d4a0001 	sltiu	t2,t2,1
    1020:	15400005 	bnez	t2,1038 <func_80A97D68+0x80>
    1024:	2604014c 	addiu	a0,s0,332
    1028:	3c050000 	lui	a1,0x0
    102c:	24a50000 	addiu	a1,a1,0
    1030:	0c000000 	jal	0 <func_80A96DB0>
    1034:	24060021 	li	a2,33
    1038:	24070001 	li	a3,1
    103c:	02002025 	move	a0,s0
    1040:	260501e8 	addiu	a1,s0,488
    1044:	0c000000 	jal	0 <func_80A96DB0>
    1048:	24060002 	li	a2,2
    104c:	0c000000 	jal	0 <func_80A96DB0>
    1050:	02002025 	move	a0,s0
    1054:	8fbf001c 	lw	ra,28(sp)
    1058:	8fb00018 	lw	s0,24(sp)
    105c:	27bd0020 	addiu	sp,sp,32
    1060:	03e00008 	jr	ra
    1064:	00000000 	nop

00001068 <func_80A97E18>:
    1068:	27bdffe0 	addiu	sp,sp,-32
    106c:	afb00018 	sw	s0,24(sp)
    1070:	00808025 	move	s0,a0
    1074:	afbf001c 	sw	ra,28(sp)
    1078:	afa50024 	sw	a1,36(sp)
    107c:	00a02025 	move	a0,a1
    1080:	260502e4 	addiu	a1,s0,740
    1084:	26060304 	addiu	a2,s0,772
    1088:	0c000000 	jal	0 <func_80A96DB0>
    108c:	24070010 	li	a3,16
    1090:	0c000000 	jal	0 <func_80A96DB0>
    1094:	02002025 	move	a0,s0
    1098:	24010001 	li	at,1
    109c:	14410003 	bne	v0,at,10ac <func_80A97E18+0x44>
    10a0:	02002025 	move	a0,s0
    10a4:	10000002 	b	10b0 <func_80A97E18+0x48>
    10a8:	24070002 	li	a3,2
    10ac:	24070001 	li	a3,1
    10b0:	860e01e8 	lh	t6,488(s0)
    10b4:	260501e8 	addiu	a1,s0,488
    10b8:	51c00004 	beqzl	t6,10cc <func_80A97E18+0x64>
    10bc:	c604021c 	lwc1	$f4,540(s0)
    10c0:	10000008 	b	10e4 <func_80A97E18+0x7c>
    10c4:	24070004 	li	a3,4
    10c8:	c604021c 	lwc1	$f4,540(s0)
    10cc:	c6060090 	lwc1	$f6,144(s0)
    10d0:	4606203c 	c.lt.s	$f4,$f6
    10d4:	00000000 	nop
    10d8:	45000002 	bc1f	10e4 <func_80A97E18+0x7c>
    10dc:	00000000 	nop
    10e0:	24070001 	li	a3,1
    10e4:	0c000000 	jal	0 <func_80A96DB0>
    10e8:	24060002 	li	a2,2
    10ec:	8fbf001c 	lw	ra,28(sp)
    10f0:	8fb00018 	lw	s0,24(sp)
    10f4:	27bd0020 	addiu	sp,sp,32
    10f8:	03e00008 	jr	ra
    10fc:	24020001 	li	v0,1

00001100 <func_80A97EB0>:
    1100:	27bdffd8 	addiu	sp,sp,-40
    1104:	afb00018 	sw	s0,24(sp)
    1108:	00808025 	move	s0,a0
    110c:	afbf001c 	sw	ra,28(sp)
    1110:	afa5002c 	sw	a1,44(sp)
    1114:	00a02025 	move	a0,a1
    1118:	260502e4 	addiu	a1,s0,740
    111c:	26060304 	addiu	a2,s0,772
    1120:	0c000000 	jal	0 <func_80A96DB0>
    1124:	24070010 	li	a3,16
    1128:	0c000000 	jal	0 <func_80A96DB0>
    112c:	02002025 	move	a0,s0
    1130:	24010001 	li	at,1
    1134:	14410003 	bne	v0,at,1144 <func_80A97EB0+0x44>
    1138:	00401825 	move	v1,v0
    113c:	10000002 	b	1148 <func_80A97EB0+0x48>
    1140:	24070002 	li	a3,2
    1144:	24070001 	li	a3,1
    1148:	02002025 	move	a0,s0
    114c:	260501e8 	addiu	a1,s0,488
    1150:	24060002 	li	a2,2
    1154:	0c000000 	jal	0 <func_80A96DB0>
    1158:	afa30020 	sw	v1,32(sp)
    115c:	8fbf001c 	lw	ra,28(sp)
    1160:	8fa20020 	lw	v0,32(sp)
    1164:	8fb00018 	lw	s0,24(sp)
    1168:	03e00008 	jr	ra
    116c:	27bd0028 	addiu	sp,sp,40

00001170 <func_80A97F20>:
    1170:	27bdffe8 	addiu	sp,sp,-24
    1174:	afa40018 	sw	a0,24(sp)
    1178:	8fae0018 	lw	t6,24(sp)
    117c:	afbf0014 	sw	ra,20(sp)
    1180:	afa5001c 	sw	a1,28(sp)
    1184:	00a02025 	move	a0,a1
    1188:	24070010 	li	a3,16
    118c:	25c502e4 	addiu	a1,t6,740
    1190:	0c000000 	jal	0 <func_80A96DB0>
    1194:	25c60304 	addiu	a2,t6,772
    1198:	8fa40018 	lw	a0,24(sp)
    119c:	24060002 	li	a2,2
    11a0:	24070004 	li	a3,4
    11a4:	0c000000 	jal	0 <func_80A96DB0>
    11a8:	248501e8 	addiu	a1,a0,488
    11ac:	8fbf0014 	lw	ra,20(sp)
    11b0:	27bd0018 	addiu	sp,sp,24
    11b4:	24020001 	li	v0,1
    11b8:	03e00008 	jr	ra
    11bc:	00000000 	nop

000011c0 <func_80A97F70>:
    11c0:	27bdffe0 	addiu	sp,sp,-32
    11c4:	afbf001c 	sw	ra,28(sp)
    11c8:	afb00018 	sw	s0,24(sp)
    11cc:	afa50024 	sw	a1,36(sp)
    11d0:	848e01e8 	lh	t6,488(a0)
    11d4:	00808025 	move	s0,a0
    11d8:	51c00014 	beqzl	t6,122c <func_80A97F70+0x6c>
    11dc:	8e080154 	lw	t0,340(s0)
    11e0:	8c8f0154 	lw	t7,340(a0)
    11e4:	3c180601 	lui	t8,0x601
    11e8:	27188f6c 	addiu	t8,t8,-28820
    11ec:	030fc826 	xor	t9,t8,t7
    11f0:	2f390001 	sltiu	t9,t9,1
    11f4:	17200005 	bnez	t9,120c <func_80A97F70+0x4c>
    11f8:	2484014c 	addiu	a0,a0,332
    11fc:	3c050000 	lui	a1,0x0
    1200:	24a50000 	addiu	a1,a1,0
    1204:	0c000000 	jal	0 <func_80A96DB0>
    1208:	2406001d 	li	a2,29
    120c:	8fa40024 	lw	a0,36(sp)
    1210:	260502e4 	addiu	a1,s0,740
    1214:	26060304 	addiu	a2,s0,772
    1218:	0c000000 	jal	0 <func_80A96DB0>
    121c:	24070010 	li	a3,16
    1220:	1000000d 	b	1258 <func_80A97F70+0x98>
    1224:	24070002 	li	a3,2
    1228:	8e080154 	lw	t0,340(s0)
    122c:	3c090600 	lui	t1,0x600
    1230:	25297d94 	addiu	t1,t1,32148
    1234:	01285026 	xor	t2,t1,t0
    1238:	2d4a0001 	sltiu	t2,t2,1
    123c:	15400005 	bnez	t2,1254 <func_80A97F70+0x94>
    1240:	2604014c 	addiu	a0,s0,332
    1244:	3c050000 	lui	a1,0x0
    1248:	24a50000 	addiu	a1,a1,0
    124c:	0c000000 	jal	0 <func_80A96DB0>
    1250:	2406001e 	li	a2,30
    1254:	24070001 	li	a3,1
    1258:	02002025 	move	a0,s0
    125c:	260501e8 	addiu	a1,s0,488
    1260:	0c000000 	jal	0 <func_80A96DB0>
    1264:	24060005 	li	a2,5
    1268:	0c000000 	jal	0 <func_80A96DB0>
    126c:	02002025 	move	a0,s0
    1270:	8fbf001c 	lw	ra,28(sp)
    1274:	8fb00018 	lw	s0,24(sp)
    1278:	27bd0020 	addiu	sp,sp,32
    127c:	03e00008 	jr	ra
    1280:	00000000 	nop

00001284 <func_80A98034>:
    1284:	27bdffd8 	addiu	sp,sp,-40
    1288:	afbf001c 	sw	ra,28(sp)
    128c:	afb00018 	sw	s0,24(sp)
    1290:	afa5002c 	sw	a1,44(sp)
    1294:	848e01e8 	lh	t6,488(a0)
    1298:	00808025 	move	s0,a0
    129c:	51c0001b 	beqzl	t6,130c <func_80A98034+0x88>
    12a0:	8e080154 	lw	t0,340(s0)
    12a4:	8c8f0154 	lw	t7,340(a0)
    12a8:	3c180601 	lui	t8,0x601
    12ac:	27188f6c 	addiu	t8,t8,-28820
    12b0:	030fc826 	xor	t9,t8,t7
    12b4:	2f390001 	sltiu	t9,t9,1
    12b8:	17200005 	bnez	t9,12d0 <func_80A98034+0x4c>
    12bc:	2484014c 	addiu	a0,a0,332
    12c0:	3c050000 	lui	a1,0x0
    12c4:	24a50000 	addiu	a1,a1,0
    12c8:	0c000000 	jal	0 <func_80A96DB0>
    12cc:	2406001d 	li	a2,29
    12d0:	8fa4002c 	lw	a0,44(sp)
    12d4:	260502e4 	addiu	a1,s0,740
    12d8:	26060304 	addiu	a2,s0,772
    12dc:	0c000000 	jal	0 <func_80A96DB0>
    12e0:	24070010 	li	a3,16
    12e4:	0c000000 	jal	0 <func_80A96DB0>
    12e8:	02002025 	move	a0,s0
    12ec:	24010001 	li	at,1
    12f0:	14410003 	bne	v0,at,1300 <func_80A98034+0x7c>
    12f4:	00401825 	move	v1,v0
    12f8:	10000014 	b	134c <func_80A98034+0xc8>
    12fc:	24070002 	li	a3,2
    1300:	10000012 	b	134c <func_80A98034+0xc8>
    1304:	24070001 	li	a3,1
    1308:	8e080154 	lw	t0,340(s0)
    130c:	3c090601 	lui	t1,0x601
    1310:	2529879c 	addiu	t1,t1,-30820
    1314:	01285026 	xor	t2,t1,t0
    1318:	2d4a0001 	sltiu	t2,t2,1
    131c:	15400005 	bnez	t2,1334 <func_80A98034+0xb0>
    1320:	2604014c 	addiu	a0,s0,332
    1324:	3c050000 	lui	a1,0x0
    1328:	24a50000 	addiu	a1,a1,0
    132c:	0c000000 	jal	0 <func_80A96DB0>
    1330:	2406001f 	li	a2,31
    1334:	24070001 	li	a3,1
    1338:	a7a70026 	sh	a3,38(sp)
    133c:	0c000000 	jal	0 <func_80A96DB0>
    1340:	02002025 	move	a0,s0
    1344:	87a70026 	lh	a3,38(sp)
    1348:	00401825 	move	v1,v0
    134c:	02002025 	move	a0,s0
    1350:	260501e8 	addiu	a1,s0,488
    1354:	24060005 	li	a2,5
    1358:	0c000000 	jal	0 <func_80A96DB0>
    135c:	afa30020 	sw	v1,32(sp)
    1360:	8fbf001c 	lw	ra,28(sp)
    1364:	8fa20020 	lw	v0,32(sp)
    1368:	8fb00018 	lw	s0,24(sp)
    136c:	03e00008 	jr	ra
    1370:	27bd0028 	addiu	sp,sp,40

00001374 <func_80A98124>:
    1374:	27bdffe8 	addiu	sp,sp,-24
    1378:	afa40018 	sw	a0,24(sp)
    137c:	8fae0018 	lw	t6,24(sp)
    1380:	afbf0014 	sw	ra,20(sp)
    1384:	afa5001c 	sw	a1,28(sp)
    1388:	00a02025 	move	a0,a1
    138c:	24070010 	li	a3,16
    1390:	25c502e4 	addiu	a1,t6,740
    1394:	0c000000 	jal	0 <func_80A96DB0>
    1398:	25c60304 	addiu	a2,t6,772
    139c:	8fa40018 	lw	a0,24(sp)
    13a0:	24060002 	li	a2,2
    13a4:	24070004 	li	a3,4
    13a8:	0c000000 	jal	0 <func_80A96DB0>
    13ac:	248501e8 	addiu	a1,a0,488
    13b0:	8fbf0014 	lw	ra,20(sp)
    13b4:	27bd0018 	addiu	sp,sp,24
    13b8:	24020001 	li	v0,1
    13bc:	03e00008 	jr	ra
    13c0:	00000000 	nop

000013c4 <func_80A98174>:
    13c4:	27bdffe0 	addiu	sp,sp,-32
    13c8:	afbf001c 	sw	ra,28(sp)
    13cc:	afb00018 	sw	s0,24(sp)
    13d0:	afa50024 	sw	a1,36(sp)
    13d4:	848e01e8 	lh	t6,488(a0)
    13d8:	00808025 	move	s0,a0
    13dc:	2484014c 	addiu	a0,a0,332
    13e0:	11c0000a 	beqz	t6,140c <func_80A98174+0x48>
    13e4:	3c013f80 	lui	at,0x3f80
    13e8:	0c000000 	jal	0 <func_80A96DB0>
    13ec:	3c054190 	lui	a1,0x4190
    13f0:	10400004 	beqz	v0,1404 <func_80A98174+0x40>
    13f4:	00000000 	nop
    13f8:	44802000 	mtc1	zero,$f4
    13fc:	00000000 	nop
    1400:	e6040168 	swc1	$f4,360(s0)
    1404:	10000009 	b	142c <func_80A98174+0x68>
    1408:	c6000168 	lwc1	$f0,360(s0)
    140c:	44811000 	mtc1	at,$f2
    1410:	c6000168 	lwc1	$f0,360(s0)
    1414:	46001032 	c.eq.s	$f2,$f0
    1418:	00000000 	nop
    141c:	45030004 	bc1tl	1430 <func_80A98174+0x6c>
    1420:	44803000 	mtc1	zero,$f6
    1424:	e6020168 	swc1	$f2,360(s0)
    1428:	c6000168 	lwc1	$f0,360(s0)
    142c:	44803000 	mtc1	zero,$f6
    1430:	8fa40024 	lw	a0,36(sp)
    1434:	260502e4 	addiu	a1,s0,740
    1438:	46003032 	c.eq.s	$f6,$f0
    143c:	26060304 	addiu	a2,s0,772
    1440:	45020005 	bc1fl	1458 <func_80A98174+0x94>
    1444:	44804000 	mtc1	zero,$f8
    1448:	0c000000 	jal	0 <func_80A96DB0>
    144c:	24070010 	li	a3,16
    1450:	c6000168 	lwc1	$f0,360(s0)
    1454:	44804000 	mtc1	zero,$f8
    1458:	02002025 	move	a0,s0
    145c:	260501e8 	addiu	a1,s0,488
    1460:	46004032 	c.eq.s	$f8,$f0
    1464:	24060002 	li	a2,2
    1468:	24020001 	li	v0,1
    146c:	45000003 	bc1f	147c <func_80A98174+0xb8>
    1470:	00000000 	nop
    1474:	10000001 	b	147c <func_80A98174+0xb8>
    1478:	24020002 	li	v0,2
    147c:	00023c00 	sll	a3,v0,0x10
    1480:	0c000000 	jal	0 <func_80A96DB0>
    1484:	00073c03 	sra	a3,a3,0x10
    1488:	0c000000 	jal	0 <func_80A96DB0>
    148c:	02002025 	move	a0,s0
    1490:	8fbf001c 	lw	ra,28(sp)
    1494:	8fb00018 	lw	s0,24(sp)
    1498:	27bd0020 	addiu	sp,sp,32
    149c:	03e00008 	jr	ra
    14a0:	00000000 	nop

000014a4 <func_80A98254>:
    14a4:	27bdffe8 	addiu	sp,sp,-24
    14a8:	afbf0014 	sw	ra,20(sp)
    14ac:	848e001c 	lh	t6,28(a0)
    14b0:	31cf00ff 	andi	t7,t6,0xff
    14b4:	2de1000d 	sltiu	at,t7,13
    14b8:	10200038 	beqz	at,159c <L80A98344+0x8>
    14bc:	000f7880 	sll	t7,t7,0x2
    14c0:	3c010000 	lui	at,0x0
    14c4:	002f0821 	addu	at,at,t7
    14c8:	8c2f0000 	lw	t7,0(at)
    14cc:	01e00008 	jr	t7
    14d0:	00000000 	nop

000014d4 <L80A98284>:
    14d4:	0c000000 	jal	0 <func_80A96DB0>
    14d8:	00000000 	nop
    14dc:	10000030 	b	15a0 <L80A98344+0xc>
    14e0:	8fbf0014 	lw	ra,20(sp)

000014e4 <L80A98294>:
    14e4:	0c000000 	jal	0 <func_80A96DB0>
    14e8:	00000000 	nop
    14ec:	1000002c 	b	15a0 <L80A98344+0xc>
    14f0:	8fbf0014 	lw	ra,20(sp)

000014f4 <L80A982A4>:
    14f4:	0c000000 	jal	0 <func_80A96DB0>
    14f8:	00000000 	nop
    14fc:	10000028 	b	15a0 <L80A98344+0xc>
    1500:	8fbf0014 	lw	ra,20(sp)

00001504 <L80A982B4>:
    1504:	0c000000 	jal	0 <func_80A96DB0>
    1508:	00000000 	nop
    150c:	10000024 	b	15a0 <L80A98344+0xc>
    1510:	8fbf0014 	lw	ra,20(sp)

00001514 <L80A982C4>:
    1514:	0c000000 	jal	0 <func_80A96DB0>
    1518:	00000000 	nop
    151c:	10000020 	b	15a0 <L80A98344+0xc>
    1520:	8fbf0014 	lw	ra,20(sp)

00001524 <L80A982D4>:
    1524:	0c000000 	jal	0 <func_80A96DB0>
    1528:	00000000 	nop
    152c:	1000001c 	b	15a0 <L80A98344+0xc>
    1530:	8fbf0014 	lw	ra,20(sp)

00001534 <L80A982E4>:
    1534:	0c000000 	jal	0 <func_80A96DB0>
    1538:	00000000 	nop
    153c:	10000018 	b	15a0 <L80A98344+0xc>
    1540:	8fbf0014 	lw	ra,20(sp)

00001544 <L80A982F4>:
    1544:	0c000000 	jal	0 <func_80A96DB0>
    1548:	00000000 	nop
    154c:	10000014 	b	15a0 <L80A98344+0xc>
    1550:	8fbf0014 	lw	ra,20(sp)

00001554 <L80A98304>:
    1554:	0c000000 	jal	0 <func_80A96DB0>
    1558:	00000000 	nop
    155c:	10000010 	b	15a0 <L80A98344+0xc>
    1560:	8fbf0014 	lw	ra,20(sp)

00001564 <L80A98314>:
    1564:	0c000000 	jal	0 <func_80A96DB0>
    1568:	00000000 	nop
    156c:	1000000c 	b	15a0 <L80A98344+0xc>
    1570:	8fbf0014 	lw	ra,20(sp)

00001574 <L80A98324>:
    1574:	0c000000 	jal	0 <func_80A96DB0>
    1578:	00000000 	nop
    157c:	10000008 	b	15a0 <L80A98344+0xc>
    1580:	8fbf0014 	lw	ra,20(sp)

00001584 <L80A98334>:
    1584:	0c000000 	jal	0 <func_80A96DB0>
    1588:	00000000 	nop
    158c:	10000004 	b	15a0 <L80A98344+0xc>
    1590:	8fbf0014 	lw	ra,20(sp)

00001594 <L80A98344>:
    1594:	0c000000 	jal	0 <func_80A96DB0>
    1598:	00000000 	nop
    159c:	8fbf0014 	lw	ra,20(sp)
    15a0:	27bd0018 	addiu	sp,sp,24
    15a4:	03e00008 	jr	ra
    15a8:	00000000 	nop

000015ac <func_80A9835C>:
    15ac:	27bdffe8 	addiu	sp,sp,-24
    15b0:	afbf0014 	sw	ra,20(sp)
    15b4:	848e001c 	lh	t6,28(a0)
    15b8:	31cf00ff 	andi	t7,t6,0xff
    15bc:	2de1000d 	sltiu	at,t7,13
    15c0:	10200038 	beqz	at,16a4 <L80A9844C+0x8>
    15c4:	000f7880 	sll	t7,t7,0x2
    15c8:	3c010000 	lui	at,0x0
    15cc:	002f0821 	addu	at,at,t7
    15d0:	8c2f0000 	lw	t7,0(at)
    15d4:	01e00008 	jr	t7
    15d8:	00000000 	nop

000015dc <L80A9838C>:
    15dc:	0c000000 	jal	0 <func_80A96DB0>
    15e0:	00000000 	nop
    15e4:	10000030 	b	16a8 <L80A9844C+0xc>
    15e8:	8fbf0014 	lw	ra,20(sp)

000015ec <L80A9839C>:
    15ec:	0c000000 	jal	0 <func_80A96DB0>
    15f0:	00000000 	nop
    15f4:	1000002c 	b	16a8 <L80A9844C+0xc>
    15f8:	8fbf0014 	lw	ra,20(sp)

000015fc <L80A983AC>:
    15fc:	0c000000 	jal	0 <func_80A96DB0>
    1600:	00000000 	nop
    1604:	10000028 	b	16a8 <L80A9844C+0xc>
    1608:	8fbf0014 	lw	ra,20(sp)

0000160c <L80A983BC>:
    160c:	0c000000 	jal	0 <func_80A96DB0>
    1610:	00000000 	nop
    1614:	10000024 	b	16a8 <L80A9844C+0xc>
    1618:	8fbf0014 	lw	ra,20(sp)

0000161c <L80A983CC>:
    161c:	0c000000 	jal	0 <func_80A96DB0>
    1620:	00000000 	nop
    1624:	10000020 	b	16a8 <L80A9844C+0xc>
    1628:	8fbf0014 	lw	ra,20(sp)

0000162c <L80A983DC>:
    162c:	0c000000 	jal	0 <func_80A96DB0>
    1630:	00000000 	nop
    1634:	1000001c 	b	16a8 <L80A9844C+0xc>
    1638:	8fbf0014 	lw	ra,20(sp)

0000163c <L80A983EC>:
    163c:	0c000000 	jal	0 <func_80A96DB0>
    1640:	00000000 	nop
    1644:	10000018 	b	16a8 <L80A9844C+0xc>
    1648:	8fbf0014 	lw	ra,20(sp)

0000164c <L80A983FC>:
    164c:	0c000000 	jal	0 <func_80A96DB0>
    1650:	00000000 	nop
    1654:	10000014 	b	16a8 <L80A9844C+0xc>
    1658:	8fbf0014 	lw	ra,20(sp)

0000165c <L80A9840C>:
    165c:	0c000000 	jal	0 <func_80A96DB0>
    1660:	00000000 	nop
    1664:	10000010 	b	16a8 <L80A9844C+0xc>
    1668:	8fbf0014 	lw	ra,20(sp)

0000166c <L80A9841C>:
    166c:	0c000000 	jal	0 <func_80A96DB0>
    1670:	00000000 	nop
    1674:	1000000c 	b	16a8 <L80A9844C+0xc>
    1678:	8fbf0014 	lw	ra,20(sp)

0000167c <L80A9842C>:
    167c:	0c000000 	jal	0 <func_80A96DB0>
    1680:	00000000 	nop
    1684:	10000008 	b	16a8 <L80A9844C+0xc>
    1688:	8fbf0014 	lw	ra,20(sp)

0000168c <L80A9843C>:
    168c:	0c000000 	jal	0 <func_80A96DB0>
    1690:	00000000 	nop
    1694:	10000004 	b	16a8 <L80A9844C+0xc>
    1698:	8fbf0014 	lw	ra,20(sp)

0000169c <L80A9844C>:
    169c:	0c000000 	jal	0 <func_80A96DB0>
    16a0:	00000000 	nop
    16a4:	8fbf0014 	lw	ra,20(sp)
    16a8:	27bd0018 	addiu	sp,sp,24
    16ac:	03e00008 	jr	ra
    16b0:	00000000 	nop

000016b4 <func_80A98464>:
    16b4:	27bdffe8 	addiu	sp,sp,-24
    16b8:	afbf0014 	sw	ra,20(sp)
    16bc:	848e001c 	lh	t6,28(a0)
    16c0:	31cf00ff 	andi	t7,t6,0xff
    16c4:	2de1000d 	sltiu	at,t7,13
    16c8:	10200038 	beqz	at,17ac <L80A98554+0x8>
    16cc:	000f7880 	sll	t7,t7,0x2
    16d0:	3c010000 	lui	at,0x0
    16d4:	002f0821 	addu	at,at,t7
    16d8:	8c2f0000 	lw	t7,0(at)
    16dc:	01e00008 	jr	t7
    16e0:	00000000 	nop

000016e4 <L80A98494>:
    16e4:	0c000000 	jal	0 <func_80A96DB0>
    16e8:	00000000 	nop
    16ec:	10000030 	b	17b0 <L80A98554+0xc>
    16f0:	8fbf0014 	lw	ra,20(sp)

000016f4 <L80A984A4>:
    16f4:	0c000000 	jal	0 <func_80A96DB0>
    16f8:	00000000 	nop
    16fc:	1000002c 	b	17b0 <L80A98554+0xc>
    1700:	8fbf0014 	lw	ra,20(sp)

00001704 <L80A984B4>:
    1704:	0c000000 	jal	0 <func_80A96DB0>
    1708:	00000000 	nop
    170c:	10000028 	b	17b0 <L80A98554+0xc>
    1710:	8fbf0014 	lw	ra,20(sp)

00001714 <L80A984C4>:
    1714:	0c000000 	jal	0 <func_80A96DB0>
    1718:	00000000 	nop
    171c:	10000024 	b	17b0 <L80A98554+0xc>
    1720:	8fbf0014 	lw	ra,20(sp)

00001724 <L80A984D4>:
    1724:	0c000000 	jal	0 <func_80A96DB0>
    1728:	00000000 	nop
    172c:	10000020 	b	17b0 <L80A98554+0xc>
    1730:	8fbf0014 	lw	ra,20(sp)

00001734 <L80A984E4>:
    1734:	0c000000 	jal	0 <func_80A96DB0>
    1738:	00000000 	nop
    173c:	1000001c 	b	17b0 <L80A98554+0xc>
    1740:	8fbf0014 	lw	ra,20(sp)

00001744 <L80A984F4>:
    1744:	0c000000 	jal	0 <func_80A96DB0>
    1748:	00000000 	nop
    174c:	10000018 	b	17b0 <L80A98554+0xc>
    1750:	8fbf0014 	lw	ra,20(sp)

00001754 <L80A98504>:
    1754:	0c000000 	jal	0 <func_80A96DB0>
    1758:	00000000 	nop
    175c:	10000014 	b	17b0 <L80A98554+0xc>
    1760:	8fbf0014 	lw	ra,20(sp)

00001764 <L80A98514>:
    1764:	0c000000 	jal	0 <func_80A96DB0>
    1768:	00000000 	nop
    176c:	10000010 	b	17b0 <L80A98554+0xc>
    1770:	8fbf0014 	lw	ra,20(sp)

00001774 <L80A98524>:
    1774:	0c000000 	jal	0 <func_80A96DB0>
    1778:	00000000 	nop
    177c:	1000000c 	b	17b0 <L80A98554+0xc>
    1780:	8fbf0014 	lw	ra,20(sp)

00001784 <L80A98534>:
    1784:	0c000000 	jal	0 <func_80A96DB0>
    1788:	00000000 	nop
    178c:	10000008 	b	17b0 <L80A98554+0xc>
    1790:	8fbf0014 	lw	ra,20(sp)

00001794 <L80A98544>:
    1794:	0c000000 	jal	0 <func_80A96DB0>
    1798:	00000000 	nop
    179c:	10000004 	b	17b0 <L80A98554+0xc>
    17a0:	8fbf0014 	lw	ra,20(sp)

000017a4 <L80A98554>:
    17a4:	0c000000 	jal	0 <func_80A96DB0>
    17a8:	00000000 	nop
    17ac:	8fbf0014 	lw	ra,20(sp)
    17b0:	27bd0018 	addiu	sp,sp,24
    17b4:	03e00008 	jr	ra
    17b8:	00000000 	nop

000017bc <func_80A9856C>:
    17bc:	27bdffe8 	addiu	sp,sp,-24
    17c0:	afbf0014 	sw	ra,20(sp)
    17c4:	848e001c 	lh	t6,28(a0)
    17c8:	31cf00ff 	andi	t7,t6,0xff
    17cc:	2de1000d 	sltiu	at,t7,13
    17d0:	10200038 	beqz	at,18b4 <L80A9865C+0x8>
    17d4:	000f7880 	sll	t7,t7,0x2
    17d8:	3c010000 	lui	at,0x0
    17dc:	002f0821 	addu	at,at,t7
    17e0:	8c2f0000 	lw	t7,0(at)
    17e4:	01e00008 	jr	t7
    17e8:	00000000 	nop

000017ec <L80A9859C>:
    17ec:	0c000000 	jal	0 <func_80A96DB0>
    17f0:	00000000 	nop
    17f4:	10000030 	b	18b8 <L80A9865C+0xc>
    17f8:	8fbf0014 	lw	ra,20(sp)

000017fc <L80A985AC>:
    17fc:	0c000000 	jal	0 <func_80A96DB0>
    1800:	00000000 	nop
    1804:	1000002c 	b	18b8 <L80A9865C+0xc>
    1808:	8fbf0014 	lw	ra,20(sp)

0000180c <L80A985BC>:
    180c:	0c000000 	jal	0 <func_80A96DB0>
    1810:	00000000 	nop
    1814:	10000028 	b	18b8 <L80A9865C+0xc>
    1818:	8fbf0014 	lw	ra,20(sp)

0000181c <L80A985CC>:
    181c:	0c000000 	jal	0 <func_80A96DB0>
    1820:	00000000 	nop
    1824:	10000024 	b	18b8 <L80A9865C+0xc>
    1828:	8fbf0014 	lw	ra,20(sp)

0000182c <L80A985DC>:
    182c:	0c000000 	jal	0 <func_80A96DB0>
    1830:	00000000 	nop
    1834:	10000020 	b	18b8 <L80A9865C+0xc>
    1838:	8fbf0014 	lw	ra,20(sp)

0000183c <L80A985EC>:
    183c:	0c000000 	jal	0 <func_80A96DB0>
    1840:	00000000 	nop
    1844:	1000001c 	b	18b8 <L80A9865C+0xc>
    1848:	8fbf0014 	lw	ra,20(sp)

0000184c <L80A985FC>:
    184c:	0c000000 	jal	0 <func_80A96DB0>
    1850:	00000000 	nop
    1854:	10000018 	b	18b8 <L80A9865C+0xc>
    1858:	8fbf0014 	lw	ra,20(sp)

0000185c <L80A9860C>:
    185c:	0c000000 	jal	0 <func_80A96DB0>
    1860:	00000000 	nop
    1864:	10000014 	b	18b8 <L80A9865C+0xc>
    1868:	8fbf0014 	lw	ra,20(sp)

0000186c <L80A9861C>:
    186c:	0c000000 	jal	0 <func_80A96DB0>
    1870:	00000000 	nop
    1874:	10000010 	b	18b8 <L80A9865C+0xc>
    1878:	8fbf0014 	lw	ra,20(sp)

0000187c <L80A9862C>:
    187c:	0c000000 	jal	0 <func_80A96DB0>
    1880:	00000000 	nop
    1884:	1000000c 	b	18b8 <L80A9865C+0xc>
    1888:	8fbf0014 	lw	ra,20(sp)

0000188c <L80A9863C>:
    188c:	0c000000 	jal	0 <func_80A96DB0>
    1890:	00000000 	nop
    1894:	10000008 	b	18b8 <L80A9865C+0xc>
    1898:	8fbf0014 	lw	ra,20(sp)

0000189c <L80A9864C>:
    189c:	0c000000 	jal	0 <func_80A96DB0>
    18a0:	00000000 	nop
    18a4:	10000004 	b	18b8 <L80A9865C+0xc>
    18a8:	8fbf0014 	lw	ra,20(sp)

000018ac <L80A9865C>:
    18ac:	0c000000 	jal	0 <func_80A96DB0>
    18b0:	00000000 	nop
    18b4:	8fbf0014 	lw	ra,20(sp)
    18b8:	27bd0018 	addiu	sp,sp,24
    18bc:	03e00008 	jr	ra
    18c0:	00000000 	nop

000018c4 <func_80A98674>:
    18c4:	27bdffe8 	addiu	sp,sp,-24
    18c8:	afbf0014 	sw	ra,20(sp)
    18cc:	848e001c 	lh	t6,28(a0)
    18d0:	31cf00ff 	andi	t7,t6,0xff
    18d4:	2de1000d 	sltiu	at,t7,13
    18d8:	10200038 	beqz	at,19bc <L80A98764+0x8>
    18dc:	000f7880 	sll	t7,t7,0x2
    18e0:	3c010000 	lui	at,0x0
    18e4:	002f0821 	addu	at,at,t7
    18e8:	8c2f0000 	lw	t7,0(at)
    18ec:	01e00008 	jr	t7
    18f0:	00000000 	nop

000018f4 <L80A986A4>:
    18f4:	0c000000 	jal	0 <func_80A96DB0>
    18f8:	00000000 	nop
    18fc:	10000030 	b	19c0 <L80A98764+0xc>
    1900:	8fbf0014 	lw	ra,20(sp)

00001904 <L80A986B4>:
    1904:	0c000000 	jal	0 <func_80A96DB0>
    1908:	00000000 	nop
    190c:	1000002c 	b	19c0 <L80A98764+0xc>
    1910:	8fbf0014 	lw	ra,20(sp)

00001914 <L80A986C4>:
    1914:	0c000000 	jal	0 <func_80A96DB0>
    1918:	00000000 	nop
    191c:	10000028 	b	19c0 <L80A98764+0xc>
    1920:	8fbf0014 	lw	ra,20(sp)

00001924 <L80A986D4>:
    1924:	0c000000 	jal	0 <func_80A96DB0>
    1928:	00000000 	nop
    192c:	10000024 	b	19c0 <L80A98764+0xc>
    1930:	8fbf0014 	lw	ra,20(sp)

00001934 <L80A986E4>:
    1934:	0c000000 	jal	0 <func_80A96DB0>
    1938:	00000000 	nop
    193c:	10000020 	b	19c0 <L80A98764+0xc>
    1940:	8fbf0014 	lw	ra,20(sp)

00001944 <L80A986F4>:
    1944:	0c000000 	jal	0 <func_80A96DB0>
    1948:	00000000 	nop
    194c:	1000001c 	b	19c0 <L80A98764+0xc>
    1950:	8fbf0014 	lw	ra,20(sp)

00001954 <L80A98704>:
    1954:	0c000000 	jal	0 <func_80A96DB0>
    1958:	00000000 	nop
    195c:	10000018 	b	19c0 <L80A98764+0xc>
    1960:	8fbf0014 	lw	ra,20(sp)

00001964 <L80A98714>:
    1964:	0c000000 	jal	0 <func_80A96DB0>
    1968:	00000000 	nop
    196c:	10000014 	b	19c0 <L80A98764+0xc>
    1970:	8fbf0014 	lw	ra,20(sp)

00001974 <L80A98724>:
    1974:	0c000000 	jal	0 <func_80A96DB0>
    1978:	00000000 	nop
    197c:	10000010 	b	19c0 <L80A98764+0xc>
    1980:	8fbf0014 	lw	ra,20(sp)

00001984 <L80A98734>:
    1984:	0c000000 	jal	0 <func_80A96DB0>
    1988:	00000000 	nop
    198c:	1000000c 	b	19c0 <L80A98764+0xc>
    1990:	8fbf0014 	lw	ra,20(sp)

00001994 <L80A98744>:
    1994:	0c000000 	jal	0 <func_80A96DB0>
    1998:	00000000 	nop
    199c:	10000008 	b	19c0 <L80A98764+0xc>
    19a0:	8fbf0014 	lw	ra,20(sp)

000019a4 <L80A98754>:
    19a4:	0c000000 	jal	0 <func_80A96DB0>
    19a8:	00000000 	nop
    19ac:	10000004 	b	19c0 <L80A98764+0xc>
    19b0:	8fbf0014 	lw	ra,20(sp)

000019b4 <L80A98764>:
    19b4:	0c000000 	jal	0 <func_80A96DB0>
    19b8:	00000000 	nop
    19bc:	8fbf0014 	lw	ra,20(sp)
    19c0:	27bd0018 	addiu	sp,sp,24
    19c4:	03e00008 	jr	ra
    19c8:	00000000 	nop

000019cc <func_80A9877C>:
    19cc:	27bdffd0 	addiu	sp,sp,-48
    19d0:	afbf0024 	sw	ra,36(sp)
    19d4:	afb00020 	sw	s0,32(sp)
    19d8:	afa50034 	sw	a1,52(sp)
    19dc:	8caf1c44 	lw	t7,7236(a1)
    19e0:	00808025 	move	s0,a0
    19e4:	3c190000 	lui	t9,0x0
    19e8:	afaf002c 	sw	t7,44(sp)
    19ec:	90b81d6c 	lbu	t8,7532(a1)
    19f0:	8fa80034 	lw	t0,52(sp)
    19f4:	57000006 	bnezl	t8,1a10 <func_80A9877C+0x44>
    19f8:	8d0a00e0 	lw	t2,224(t0)
    19fc:	8f390000 	lw	t9,0(t9)
    1a00:	8fad002c 	lw	t5,44(sp)
    1a04:	53200015 	beqzl	t9,1a5c <func_80A9877C+0x90>
    1a08:	8dae0024 	lw	t6,36(t5)
    1a0c:	8d0a00e0 	lw	t2,224(t0)
    1a10:	860b001c 	lh	t3,28(s0)
    1a14:	3c014220 	lui	at,0x4220
    1a18:	ae0a0200 	sw	t2,512(s0)
    1a1c:	8d0900e4 	lw	t1,228(t0)
    1a20:	44812000 	mtc1	at,$f4
    1a24:	316c00ff 	andi	t4,t3,0xff
    1a28:	ae090204 	sw	t1,516(s0)
    1a2c:	8d0a00e8 	lw	t2,232(t0)
    1a30:	e60401fc 	swc1	$f4,508(s0)
    1a34:	11800018 	beqz	t4,1a98 <func_80A9877C+0xcc>
    1a38:	ae0a0208 	sw	t2,520(s0)
    1a3c:	02002025 	move	a0,s0
    1a40:	260501e8 	addiu	a1,s0,488
    1a44:	24060002 	li	a2,2
    1a48:	0c000000 	jal	0 <func_80A96DB0>
    1a4c:	24070002 	li	a3,2
    1a50:	10000011 	b	1a98 <func_80A9877C+0xcc>
    1a54:	00000000 	nop
    1a58:	8dae0024 	lw	t6,36(t5)
    1a5c:	02002025 	move	a0,s0
    1a60:	ae0e0200 	sw	t6,512(s0)
    1a64:	8daf0028 	lw	t7,40(t5)
    1a68:	ae0f0204 	sw	t7,516(s0)
    1a6c:	8dae002c 	lw	t6,44(t5)
    1a70:	0c000000 	jal	0 <func_80A96DB0>
    1a74:	ae0e0208 	sw	t6,520(s0)
    1a78:	e60001fc 	swc1	$f0,508(s0)
    1a7c:	8fa50034 	lw	a1,52(sp)
    1a80:	0c000000 	jal	0 <func_80A96DB0>
    1a84:	02002025 	move	a0,s0
    1a88:	14400003 	bnez	v0,1a98 <func_80A9877C+0xcc>
    1a8c:	00000000 	nop
    1a90:	861801e8 	lh	t8,488(s0)
    1a94:	13000036 	beqz	t8,1b70 <func_80A9877C+0x1a4>
    1a98:	3c190000 	lui	t9,0x0
    1a9c:	3c080000 	lui	t0,0x0
    1aa0:	25080000 	addiu	t0,t0,0
    1aa4:	27390000 	addiu	t9,t9,0
    1aa8:	8e07021c 	lw	a3,540(s0)
    1aac:	afa80014 	sw	t0,20(sp)
    1ab0:	afb90010 	sw	t9,16(sp)
    1ab4:	8fa40034 	lw	a0,52(sp)
    1ab8:	02002825 	move	a1,s0
    1abc:	0c000000 	jal	0 <func_80A96DB0>
    1ac0:	260601e8 	addiu	a2,s0,488
    1ac4:	5040002b 	beqzl	v0,1b74 <func_80A9877C+0x1a8>
    1ac8:	8fbf0024 	lw	ra,36(sp)
    1acc:	8609001c 	lh	t1,28(s0)
    1ad0:	2401000c 	li	at,12
    1ad4:	8fab0034 	lw	t3,52(sp)
    1ad8:	312a00ff 	andi	t2,t1,0xff
    1adc:	55410025 	bnel	t2,at,1b74 <func_80A9877C+0x1a8>
    1ae0:	8fbf0024 	lw	ra,36(sp)
    1ae4:	856c00a4 	lh	t4,164(t3)
    1ae8:	2401005b 	li	at,91
    1aec:	3c0d0000 	lui	t5,0x0
    1af0:	55810020 	bnel	t4,at,1b74 <func_80A9877C+0x1a8>
    1af4:	8fbf0024 	lw	ra,36(sp)
    1af8:	91ad002d 	lbu	t5,45(t5)
    1afc:	3c0f0000 	lui	t7,0x0
    1b00:	241810df 	li	t8,4319
    1b04:	01ed7821 	addu	t7,t7,t5
    1b08:	91ef0074 	lbu	t7,116(t7)
    1b0c:	240e10b9 	li	t6,4281
    1b10:	29e10032 	slti	at,t7,50
    1b14:	54200004 	bnezl	at,1b28 <func_80A9877C+0x15c>
    1b18:	a618010e 	sh	t8,270(s0)
    1b1c:	10000002 	b	1b28 <func_80A9877C+0x15c>
    1b20:	a60e010e 	sh	t6,270(s0)
    1b24:	a618010e 	sh	t8,270(s0)
    1b28:	0c000000 	jal	0 <func_80A96DB0>
    1b2c:	8fa40034 	lw	a0,52(sp)
    1b30:	24010009 	li	at,9
    1b34:	1441000b 	bne	v0,at,1b64 <func_80A9877C+0x198>
    1b38:	3c190000 	lui	t9,0x0
    1b3c:	97390f0e 	lhu	t9,3854(t9)
    1b40:	240a10b7 	li	t2,4279
    1b44:	240910b8 	li	t1,4280
    1b48:	33281000 	andi	t0,t9,0x1000
    1b4c:	51000004 	beqzl	t0,1b60 <func_80A9877C+0x194>
    1b50:	a60a010e 	sh	t2,270(s0)
    1b54:	10000002 	b	1b60 <func_80A9877C+0x194>
    1b58:	a609010e 	sh	t1,270(s0)
    1b5c:	a60a010e 	sh	t2,270(s0)
    1b60:	a2000210 	sb	zero,528(s0)
    1b64:	960b010e 	lhu	t3,270(s0)
    1b68:	8fac002c 	lw	t4,44(sp)
    1b6c:	a58b010e 	sh	t3,270(t4)
    1b70:	8fbf0024 	lw	ra,36(sp)
    1b74:	8fb00020 	lw	s0,32(sp)
    1b78:	27bd0030 	addiu	sp,sp,48
    1b7c:	03e00008 	jr	ra
    1b80:	00000000 	nop

00001b84 <func_80A98934>:
    1b84:	84a300a4 	lh	v1,164(a1)
    1b88:	28610056 	slti	at,v1,86
    1b8c:	14200005 	bnez	at,1ba4 <func_80A98934+0x20>
    1b90:	2401005b 	li	at,91
    1b94:	106100a4 	beq	v1,at,1e28 <L80A98B5C+0x7c>
    1b98:	3c0b0000 	lui	t3,0x0
    1b9c:	100000b0 	b	1e60 <L80A98C0C+0x4>
    1ba0:	00001025 	move	v0,zero
    1ba4:	2861002e 	slti	at,v1,46
    1ba8:	14200006 	bnez	at,1bc4 <func_80A98934+0x40>
    1bac:	246effda 	addiu	t6,v1,-38
    1bb0:	24010055 	li	at,85
    1bb4:	5061000c 	beql	v1,at,1be8 <func_80A98934+0x64>
    1bb8:	8482001c 	lh	v0,28(a0)
    1bbc:	100000a8 	b	1e60 <L80A98C0C+0x4>
    1bc0:	00001025 	move	v0,zero
    1bc4:	2dc10008 	sltiu	at,t6,8
    1bc8:	102000a4 	beqz	at,1e5c <L80A98C0C>
    1bcc:	000e7080 	sll	t6,t6,0x2
    1bd0:	3c010000 	lui	at,0x0
    1bd4:	002e0821 	addu	at,at,t6
    1bd8:	8c2e0000 	lw	t6,0(at)
    1bdc:	01c00008 	jr	t6
    1be0:	00000000 	nop
    1be4:	8482001c 	lh	v0,28(a0)
    1be8:	3c0f0000 	lui	t7,0x0
    1bec:	304200ff 	andi	v0,v0,0xff
    1bf0:	28410007 	slti	at,v0,7
    1bf4:	14200005 	bnez	at,1c0c <func_80A98934+0x88>
    1bf8:	2401000c 	li	at,12
    1bfc:	10410003 	beq	v0,at,1c0c <func_80A98934+0x88>
    1c00:	00000000 	nop
    1c04:	03e00008 	jr	ra
    1c08:	00001025 	move	v0,zero
    1c0c:	3c020000 	lui	v0,0x0
    1c10:	24420000 	addiu	v0,v0,0
    1c14:	8c5800a4 	lw	t8,164(v0)
    1c18:	8def0000 	lw	t7,0(t7)
    1c1c:	01f8c824 	and	t9,t7,t8
    1c20:	17200006 	bnez	t9,1c3c <func_80A98934+0xb8>
    1c24:	00000000 	nop
    1c28:	8c480004 	lw	t0,4(v0)
    1c2c:	15000003 	bnez	t0,1c3c <func_80A98934+0xb8>
    1c30:	00000000 	nop
    1c34:	03e00008 	jr	ra
    1c38:	00001025 	move	v0,zero
    1c3c:	03e00008 	jr	ra
    1c40:	24020001 	li	v0,1

00001c44 <L80A989F4>:
    1c44:	8482001c 	lh	v0,28(a0)
    1c48:	24010007 	li	at,7
    1c4c:	304200ff 	andi	v0,v0,0xff
    1c50:	10410007 	beq	v0,at,1c70 <L80A989F4+0x2c>
    1c54:	24010008 	li	at,8
    1c58:	10410005 	beq	v0,at,1c70 <L80A989F4+0x2c>
    1c5c:	2401000b 	li	at,11
    1c60:	10410003 	beq	v0,at,1c70 <L80A989F4+0x2c>
    1c64:	00000000 	nop
    1c68:	03e00008 	jr	ra
    1c6c:	00001025 	move	v0,zero
    1c70:	03e00008 	jr	ra
    1c74:	24020001 	li	v0,1

00001c78 <L80A98A28>:
    1c78:	3c020000 	lui	v0,0x0
    1c7c:	24420000 	addiu	v0,v0,0
    1c80:	8c490004 	lw	t1,4(v0)
    1c84:	3c0a0000 	lui	t2,0x0
    1c88:	55200012 	bnezl	t1,1cd4 <L80A98A28+0x5c>
    1c8c:	848d001c 	lh	t5,28(a0)
    1c90:	8d4a0000 	lw	t2,0(t2)
    1c94:	8c4b00a4 	lw	t3,164(v0)
    1c98:	014b6024 	and	t4,t2,t3
    1c9c:	5580000d 	bnezl	t4,1cd4 <L80A98A28+0x5c>
    1ca0:	848d001c 	lh	t5,28(a0)
    1ca4:	8482001c 	lh	v0,28(a0)
    1ca8:	24010001 	li	at,1
    1cac:	304200ff 	andi	v0,v0,0xff
    1cb0:	10410005 	beq	v0,at,1cc8 <L80A98A28+0x50>
    1cb4:	24010009 	li	at,9
    1cb8:	10410003 	beq	v0,at,1cc8 <L80A98A28+0x50>
    1cbc:	00000000 	nop
    1cc0:	03e00008 	jr	ra
    1cc4:	00001025 	move	v0,zero
    1cc8:	03e00008 	jr	ra
    1ccc:	24020001 	li	v0,1
    1cd0:	848d001c 	lh	t5,28(a0)
    1cd4:	24010009 	li	at,9
    1cd8:	31ae00ff 	andi	t6,t5,0xff
    1cdc:	11c10003 	beq	t6,at,1cec <L80A98A28+0x74>
    1ce0:	00000000 	nop
    1ce4:	03e00008 	jr	ra
    1ce8:	00001025 	move	v0,zero
    1cec:	03e00008 	jr	ra
    1cf0:	24020001 	li	v0,1

00001cf4 <L80A98AA4>:
    1cf4:	3c020000 	lui	v0,0x0
    1cf8:	24420000 	addiu	v0,v0,0
    1cfc:	8c4f0004 	lw	t7,4(v0)
    1d00:	3c180000 	lui	t8,0x0
    1d04:	15e00011 	bnez	t7,1d4c <L80A98AA4+0x58>
    1d08:	00000000 	nop
    1d0c:	8f180000 	lw	t8,0(t8)
    1d10:	8c5900a4 	lw	t9,164(v0)
    1d14:	03194024 	and	t0,t8,t9
    1d18:	1500000c 	bnez	t0,1d4c <L80A98AA4+0x58>
    1d1c:	00000000 	nop
    1d20:	8482001c 	lh	v0,28(a0)
    1d24:	24010004 	li	at,4
    1d28:	304200ff 	andi	v0,v0,0xff
    1d2c:	10400005 	beqz	v0,1d44 <L80A98AA4+0x50>
    1d30:	00000000 	nop
    1d34:	10410003 	beq	v0,at,1d44 <L80A98AA4+0x50>
    1d38:	00000000 	nop
    1d3c:	03e00008 	jr	ra
    1d40:	00001025 	move	v0,zero
    1d44:	03e00008 	jr	ra
    1d48:	24020001 	li	v0,1
    1d4c:	03e00008 	jr	ra
    1d50:	00001025 	move	v0,zero

00001d54 <L80A98B04>:
    1d54:	3c020000 	lui	v0,0x0
    1d58:	24420000 	addiu	v0,v0,0
    1d5c:	8c490004 	lw	t1,4(v0)
    1d60:	3c0a0000 	lui	t2,0x0
    1d64:	1520000f 	bnez	t1,1da4 <L80A98B04+0x50>
    1d68:	00000000 	nop
    1d6c:	8d4a0000 	lw	t2,0(t2)
    1d70:	8c4b00a4 	lw	t3,164(v0)
    1d74:	014b6024 	and	t4,t2,t3
    1d78:	1580000a 	bnez	t4,1da4 <L80A98B04+0x50>
    1d7c:	00000000 	nop
    1d80:	848d001c 	lh	t5,28(a0)
    1d84:	24010006 	li	at,6
    1d88:	31ae00ff 	andi	t6,t5,0xff
    1d8c:	11c10003 	beq	t6,at,1d9c <L80A98B04+0x48>
    1d90:	00000000 	nop
    1d94:	03e00008 	jr	ra
    1d98:	00001025 	move	v0,zero
    1d9c:	03e00008 	jr	ra
    1da0:	24020001 	li	v0,1
    1da4:	03e00008 	jr	ra
    1da8:	00001025 	move	v0,zero

00001dac <L80A98B5C>:
    1dac:	3c020000 	lui	v0,0x0
    1db0:	24420000 	addiu	v0,v0,0
    1db4:	8c4f0004 	lw	t7,4(v0)
    1db8:	3c180000 	lui	t8,0x0
    1dbc:	55e00012 	bnezl	t7,1e08 <L80A98B5C+0x5c>
    1dc0:	8489001c 	lh	t1,28(a0)
    1dc4:	8f180000 	lw	t8,0(t8)
    1dc8:	8c5900a4 	lw	t9,164(v0)
    1dcc:	03194024 	and	t0,t8,t9
    1dd0:	5500000d 	bnezl	t0,1e08 <L80A98B5C+0x5c>
    1dd4:	8489001c 	lh	t1,28(a0)
    1dd8:	8482001c 	lh	v0,28(a0)
    1ddc:	24010005 	li	at,5
    1de0:	304200ff 	andi	v0,v0,0xff
    1de4:	10410005 	beq	v0,at,1dfc <L80A98B5C+0x50>
    1de8:	2401000a 	li	at,10
    1dec:	10410003 	beq	v0,at,1dfc <L80A98B5C+0x50>
    1df0:	00000000 	nop
    1df4:	03e00008 	jr	ra
    1df8:	00001025 	move	v0,zero
    1dfc:	03e00008 	jr	ra
    1e00:	24020001 	li	v0,1
    1e04:	8489001c 	lh	t1,28(a0)
    1e08:	2401000a 	li	at,10
    1e0c:	312a00ff 	andi	t2,t1,0xff
    1e10:	11410003 	beq	t2,at,1e20 <L80A98B5C+0x74>
    1e14:	00000000 	nop
    1e18:	03e00008 	jr	ra
    1e1c:	00001025 	move	v0,zero
    1e20:	03e00008 	jr	ra
    1e24:	24020001 	li	v0,1
    1e28:	916b002d 	lbu	t3,45(t3)
    1e2c:	3c020000 	lui	v0,0x0
    1e30:	24420000 	addiu	v0,v0,0
    1e34:	004b6021 	addu	t4,v0,t3
    1e38:	918d0074 	lbu	t5,116(t4)
    1e3c:	24010031 	li	at,49
    1e40:	00001825 	move	v1,zero
    1e44:	15a10003 	bne	t5,at,1e54 <L80A98B5C+0xa8>
    1e48:	00000000 	nop
    1e4c:	03e00008 	jr	ra
    1e50:	24020001 	li	v0,1
    1e54:	03e00008 	jr	ra
    1e58:	00601025 	move	v0,v1

00001e5c <L80A98C0C>:
    1e5c:	00001025 	move	v0,zero
    1e60:	03e00008 	jr	ra
    1e64:	00000000 	nop

00001e68 <func_80A98C18>:
    1e68:	27bdffe8 	addiu	sp,sp,-24
    1e6c:	afbf0014 	sw	ra,20(sp)
    1e70:	84820214 	lh	v0,532(a0)
    1e74:	00803025 	move	a2,a0
    1e78:	14400003 	bnez	v0,1e88 <func_80A98C18+0x20>
    1e7c:	244effff 	addiu	t6,v0,-1
    1e80:	10000003 	b	1e90 <func_80A98C18+0x28>
    1e84:	00001825 	move	v1,zero
    1e88:	a4ce0214 	sh	t6,532(a2)
    1e8c:	84c30214 	lh	v1,532(a2)
    1e90:	14600021 	bnez	v1,1f18 <func_80A98C18+0xb0>
    1e94:	3c020000 	lui	v0,0x0
    1e98:	84cf001c 	lh	t7,28(a2)
    1e9c:	84c80216 	lh	t0,534(a2)
    1ea0:	3c030000 	lui	v1,0x0
    1ea4:	31f800ff 	andi	t8,t7,0xff
    1ea8:	0018c880 	sll	t9,t8,0x2
    1eac:	0338c823 	subu	t9,t9,t8
    1eb0:	0019c880 	sll	t9,t9,0x2
    1eb4:	0338c823 	subu	t9,t9,t8
    1eb8:	00591021 	addu	v0,v0,t9
    1ebc:	90420000 	lbu	v0,0(v0)
    1ec0:	25090001 	addiu	t1,t0,1
    1ec4:	a4c90216 	sh	t1,534(a2)
    1ec8:	00025080 	sll	t2,v0,0x2
    1ecc:	01425023 	subu	t2,t2,v0
    1ed0:	000a5080 	sll	t2,t2,0x2
    1ed4:	006a1821 	addu	v1,v1,t2
    1ed8:	8c630000 	lw	v1,0(v1)
    1edc:	5060000f 	beqzl	v1,1f1c <func_80A98C18+0xb4>
    1ee0:	8fbf0014 	lw	ra,20(sp)
    1ee4:	84cb0216 	lh	t3,534(a2)
    1ee8:	2404001e 	li	a0,30
    1eec:	2405001e 	li	a1,30
    1ef0:	000b6080 	sll	t4,t3,0x2
    1ef4:	006c6821 	addu	t5,v1,t4
    1ef8:	8dae0000 	lw	t6,0(t5)
    1efc:	55c00007 	bnezl	t6,1f1c <func_80A98C18+0xb4>
    1f00:	8fbf0014 	lw	ra,20(sp)
    1f04:	0c000000 	jal	0 <func_80A96DB0>
    1f08:	afa60018 	sw	a2,24(sp)
    1f0c:	8fa60018 	lw	a2,24(sp)
    1f10:	a4c20214 	sh	v0,532(a2)
    1f14:	a4c00216 	sh	zero,534(a2)
    1f18:	8fbf0014 	lw	ra,20(sp)
    1f1c:	27bd0018 	addiu	sp,sp,24
    1f20:	03e00008 	jr	ra
    1f24:	00000000 	nop

00001f28 <func_80A98CD8>:
    1f28:	8482001c 	lh	v0,28(a0)
    1f2c:	3c0f0000 	lui	t7,0x0
    1f30:	25ef0000 	addiu	t7,t7,0
    1f34:	304200ff 	andi	v0,v0,0xff
    1f38:	00027080 	sll	t6,v0,0x2
    1f3c:	01c27023 	subu	t6,t6,v0
    1f40:	000e7080 	sll	t6,t6,0x2
    1f44:	849901d8 	lh	t9,472(a0)
    1f48:	01cf1821 	addu	v1,t6,t7
    1f4c:	80780000 	lb	t8,0(v1)
    1f50:	44994000 	mtc1	t9,$f8
    1f54:	a098001f 	sb	t8,31(a0)
    1f58:	c4640004 	lwc1	$f4,4(v1)
    1f5c:	468042a0 	cvt.s.w	$f10,$f8
    1f60:	e484021c 	swc1	$f4,540(a0)
    1f64:	c486021c 	lwc1	$f6,540(a0)
    1f68:	460a3400 	add.s	$f16,$f6,$f10
    1f6c:	e490021c 	swc1	$f16,540(a0)
    1f70:	c4720008 	lwc1	$f18,8(v1)
    1f74:	03e00008 	jr	ra
    1f78:	e4920218 	swc1	$f18,536(a0)

00001f7c <func_80A98D2C>:
    1f7c:	3c020000 	lui	v0,0x0
    1f80:	24420000 	addiu	v0,v0,0
    1f84:	8c4e0004 	lw	t6,4(v0)
    1f88:	afa40000 	sw	a0,0(sp)
    1f8c:	3c0f0000 	lui	t7,0x0
    1f90:	15c0000b 	bnez	t6,1fc0 <func_80A98D2C+0x44>
    1f94:	3c080000 	lui	t0,0x0
    1f98:	8def0000 	lw	t7,0(t7)
    1f9c:	8c5800a4 	lw	t8,164(v0)
    1fa0:	24030003 	li	v1,3
    1fa4:	01f8c824 	and	t9,t7,t8
    1fa8:	13200003 	beqz	t9,1fb8 <func_80A98D2C+0x3c>
    1fac:	00000000 	nop
    1fb0:	03e00008 	jr	ra
    1fb4:	24020004 	li	v0,4
    1fb8:	03e00008 	jr	ra
    1fbc:	00601025 	move	v0,v1
    1fc0:	8d080048 	lw	t0,72(t0)
    1fc4:	8c4900a4 	lw	t1,164(v0)
    1fc8:	01095024 	and	t2,t0,t1
    1fcc:	5140000b 	beqzl	t2,1ffc <func_80A98D2C+0x80>
    1fd0:	00001025 	move	v0,zero
    1fd4:	944b0edc 	lhu	t3,3804(v0)
    1fd8:	24030001 	li	v1,1
    1fdc:	316c0001 	andi	t4,t3,0x1
    1fe0:	11800003 	beqz	t4,1ff0 <func_80A98D2C+0x74>
    1fe4:	00000000 	nop
    1fe8:	03e00008 	jr	ra
    1fec:	24020002 	li	v0,2
    1ff0:	03e00008 	jr	ra
    1ff4:	00601025 	move	v0,v1
    1ff8:	00001025 	move	v0,zero
    1ffc:	03e00008 	jr	ra
    2000:	00000000 	nop

00002004 <func_80A98DB4>:
    2004:	27bdffd8 	addiu	sp,sp,-40
    2008:	afbf0024 	sw	ra,36(sp)
    200c:	afb00020 	sw	s0,32(sp)
    2010:	84a200a4 	lh	v0,164(a1)
    2014:	2401005b 	li	at,91
    2018:	00808025 	move	s0,a0
    201c:	10410007 	beq	v0,at,203c <func_80A98DB4+0x38>
    2020:	00a03025 	move	a2,a1
    2024:	24010055 	li	at,85
    2028:	10410004 	beq	v0,at,203c <func_80A98DB4+0x38>
    202c:	3c01437f 	lui	at,0x437f
    2030:	44812000 	mtc1	at,$f4
    2034:	10000034 	b	2108 <func_80A98DB4+0x104>
    2038:	e4840220 	swc1	$f4,544(a0)
    203c:	90ce1d6c 	lbu	t6,7532(a2)
    2040:	3c0f0000 	lui	t7,0x0
    2044:	26040024 	addiu	a0,s0,36
    2048:	15c00004 	bnez	t6,205c <func_80A98DB4+0x58>
    204c:	00000000 	nop
    2050:	8def0000 	lw	t7,0(t7)
    2054:	51e0000a 	beqzl	t7,2080 <func_80A98DB4+0x7c>
    2058:	c6020090 	lwc1	$f2,144(s0)
    205c:	0c000000 	jal	0 <func_80A96DB0>
    2060:	24c500e0 	addiu	a1,a2,224
    2064:	3c013e80 	lui	at,0x3e80
    2068:	44813000 	mtc1	at,$f6
    206c:	00000000 	nop
    2070:	46060082 	mul.s	$f2,$f0,$f6
    2074:	10000003 	b	2084 <func_80A98DB4+0x80>
    2078:	c6080218 	lwc1	$f8,536(s0)
    207c:	c6020090 	lwc1	$f2,144(s0)
    2080:	c6080218 	lwc1	$f8,536(s0)
    2084:	3c063e99 	lui	a2,0x3e99
    2088:	34c6999a 	ori	a2,a2,0x999a
    208c:	4602403c 	c.lt.s	$f8,$f2
    2090:	26040220 	addiu	a0,s0,544
    2094:	3c074220 	lui	a3,0x4220
    2098:	3c01437f 	lui	at,0x437f
    209c:	45020005 	bc1fl	20b4 <func_80A98DB4+0xb0>
    20a0:	44810000 	mtc1	at,$f0
    20a4:	44800000 	mtc1	zero,$f0
    20a8:	10000004 	b	20bc <func_80A98DB4+0xb8>
    20ac:	3c013f80 	lui	at,0x3f80
    20b0:	44810000 	mtc1	at,$f0
    20b4:	00000000 	nop
    20b8:	3c013f80 	lui	at,0x3f80
    20bc:	44815000 	mtc1	at,$f10
    20c0:	44050000 	mfc1	a1,$f0
    20c4:	0c000000 	jal	0 <func_80A96DB0>
    20c8:	e7aa0010 	swc1	$f10,16(sp)
    20cc:	3c014120 	lui	at,0x4120
    20d0:	44819000 	mtc1	at,$f18
    20d4:	c6100220 	lwc1	$f16,544(s0)
    20d8:	4612803c 	c.lt.s	$f16,$f18
    20dc:	00000000 	nop
    20e0:	45020007 	bc1fl	2100 <func_80A98DB4+0xfc>
    20e4:	8e080004 	lw	t0,4(s0)
    20e8:	8e180004 	lw	t8,4(s0)
    20ec:	2401fffe 	li	at,-2
    20f0:	0301c824 	and	t9,t8,at
    20f4:	10000004 	b	2108 <func_80A98DB4+0x104>
    20f8:	ae190004 	sw	t9,4(s0)
    20fc:	8e080004 	lw	t0,4(s0)
    2100:	35090001 	ori	t1,t0,0x1
    2104:	ae090004 	sw	t1,4(s0)
    2108:	8fbf0024 	lw	ra,36(sp)
    210c:	8fb00020 	lw	s0,32(sp)
    2110:	27bd0028 	addiu	sp,sp,40
    2114:	03e00008 	jr	ra
    2118:	00000000 	nop

0000211c <func_80A98ECC>:
    211c:	27bdffe8 	addiu	sp,sp,-24
    2120:	afbf0014 	sw	ra,20(sp)
    2124:	84ae00a4 	lh	t6,164(a1)
    2128:	2401005b 	li	at,91
    212c:	55c1000b 	bnel	t6,at,215c <func_80A98ECC+0x40>
    2130:	afa40018 	sw	a0,24(sp)
    2134:	848f001c 	lh	t7,28(a0)
    2138:	2401000c 	li	at,12
    213c:	31f800ff 	andi	t8,t7,0xff
    2140:	57010006 	bnel	t8,at,215c <func_80A98ECC+0x40>
    2144:	afa40018 	sw	a0,24(sp)
    2148:	0c000000 	jal	0 <func_80A96DB0>
    214c:	00000000 	nop
    2150:	10000021 	b	21d8 <L80A98F7C+0xc>
    2154:	8fbf0014 	lw	ra,20(sp)
    2158:	afa40018 	sw	a0,24(sp)
    215c:	0c000000 	jal	0 <func_80A96DB0>
    2160:	afa5001c 	sw	a1,28(sp)
    2164:	2c410005 	sltiu	at,v0,5
    2168:	8fa40018 	lw	a0,24(sp)
    216c:	10200019 	beqz	at,21d4 <L80A98F7C+0x8>
    2170:	8fa5001c 	lw	a1,28(sp)
    2174:	0002c880 	sll	t9,v0,0x2
    2178:	3c010000 	lui	at,0x0
    217c:	00390821 	addu	at,at,t9
    2180:	8c390000 	lw	t9,0(at)
    2184:	03200008 	jr	t9
    2188:	00000000 	nop

0000218c <L80A98F3C>:
    218c:	0c000000 	jal	0 <func_80A96DB0>
    2190:	00000000 	nop
    2194:	10000010 	b	21d8 <L80A98F7C+0xc>
    2198:	8fbf0014 	lw	ra,20(sp)

0000219c <L80A98F4C>:
    219c:	0c000000 	jal	0 <func_80A96DB0>
    21a0:	00000000 	nop
    21a4:	1000000c 	b	21d8 <L80A98F7C+0xc>
    21a8:	8fbf0014 	lw	ra,20(sp)

000021ac <L80A98F5C>:
    21ac:	0c000000 	jal	0 <func_80A96DB0>
    21b0:	00000000 	nop
    21b4:	10000008 	b	21d8 <L80A98F7C+0xc>
    21b8:	8fbf0014 	lw	ra,20(sp)

000021bc <L80A98F6C>:
    21bc:	0c000000 	jal	0 <func_80A96DB0>
    21c0:	00000000 	nop
    21c4:	10000004 	b	21d8 <L80A98F7C+0xc>
    21c8:	8fbf0014 	lw	ra,20(sp)

000021cc <L80A98F7C>:
    21cc:	0c000000 	jal	0 <func_80A96DB0>
    21d0:	00000000 	nop
    21d4:	8fbf0014 	lw	ra,20(sp)
    21d8:	27bd0018 	addiu	sp,sp,24
    21dc:	03e00008 	jr	ra
    21e0:	00000000 	nop

000021e4 <EnKo_Init>:
    21e4:	27bdffe0 	addiu	sp,sp,-32
    21e8:	afbf001c 	sw	ra,28(sp)
    21ec:	afb00018 	sw	s0,24(sp)
    21f0:	afa50024 	sw	a1,36(sp)
    21f4:	848e001c 	lh	t6,28(a0)
    21f8:	00808025 	move	s0,a0
    21fc:	31cf00ff 	andi	t7,t6,0xff
    2200:	29e1000d 	slti	at,t7,13
    2204:	10200009 	beqz	at,222c <EnKo_Init+0x48>
    2208:	00000000 	nop
    220c:	0c000000 	jal	0 <func_80A96DB0>
    2210:	00000000 	nop
    2214:	10400005 	beqz	v0,222c <EnKo_Init+0x48>
    2218:	02002025 	move	a0,s0
    221c:	0c000000 	jal	0 <func_80A96DB0>
    2220:	8fa50024 	lw	a1,36(sp)
    2224:	54400004 	bnezl	v0,2238 <EnKo_Init+0x54>
    2228:	02002025 	move	a0,s0
    222c:	0c000000 	jal	0 <func_80A96DB0>
    2230:	02002025 	move	a0,s0
    2234:	02002025 	move	a0,s0
    2238:	0c000000 	jal	0 <func_80A96DB0>
    223c:	8fa50024 	lw	a1,36(sp)
    2240:	14400003 	bnez	v0,2250 <EnKo_Init+0x6c>
    2244:	00000000 	nop
    2248:	0c000000 	jal	0 <func_80A96DB0>
    224c:	02002025 	move	a0,s0
    2250:	3c180000 	lui	t8,0x0
    2254:	27180000 	addiu	t8,t8,0
    2258:	ae180190 	sw	t8,400(s0)
    225c:	8fbf001c 	lw	ra,28(sp)
    2260:	8fb00018 	lw	s0,24(sp)
    2264:	27bd0020 	addiu	sp,sp,32
    2268:	03e00008 	jr	ra
    226c:	00000000 	nop

00002270 <EnKo_Destroy>:
    2270:	27bdffe8 	addiu	sp,sp,-24
    2274:	00803025 	move	a2,a0
    2278:	afbf0014 	sw	ra,20(sp)
    227c:	00a02025 	move	a0,a1
    2280:	0c000000 	jal	0 <func_80A96DB0>
    2284:	24c50198 	addiu	a1,a2,408
    2288:	8fbf0014 	lw	ra,20(sp)
    228c:	27bd0018 	addiu	sp,sp,24
    2290:	03e00008 	jr	ra
    2294:	00000000 	nop

00002298 <func_80A99048>:
    2298:	27bdffb8 	addiu	sp,sp,-72
    229c:	afbf003c 	sw	ra,60(sp)
    22a0:	afb10038 	sw	s1,56(sp)
    22a4:	afb00034 	sw	s0,52(sp)
    22a8:	00808025 	move	s0,a0
    22ac:	0c000000 	jal	0 <func_80A96DB0>
    22b0:	00a08825 	move	s1,a1
    22b4:	104000c2 	beqz	v0,25c0 <func_80A99048+0x328>
    22b8:	02002025 	move	a0,s0
    22bc:	0c000000 	jal	0 <func_80A96DB0>
    22c0:	02202825 	move	a1,s1
    22c4:	104000be 	beqz	v0,25c0 <func_80A99048+0x328>
    22c8:	2401ffef 	li	at,-17
    22cc:	82180196 	lb	t8,406(s0)
    22d0:	8e0e0004 	lw	t6,4(s0)
    22d4:	3c0a0001 	lui	t2,0x1
    22d8:	a218001e 	sb	t8,30(s0)
    22dc:	8219001e 	lb	t9,30(s0)
    22e0:	01c17824 	and	t7,t6,at
    22e4:	ae0f0004 	sw	t7,4(s0)
    22e8:	00194100 	sll	t0,t9,0x4
    22ec:	01194021 	addu	t0,t0,t9
    22f0:	00084080 	sll	t0,t0,0x2
    22f4:	02284821 	addu	t1,s1,t0
    22f8:	01495021 	addu	t2,t2,t1
    22fc:	8d4a17b4 	lw	t2,6068(t2)
    2300:	3c018000 	lui	at,0x8000
    2304:	3c0f0000 	lui	t7,0x0
    2308:	01415821 	addu	t3,t2,at
    230c:	3c010000 	lui	at,0x0
    2310:	ac2b0018 	sw	t3,24(at)
    2314:	860c001c 	lh	t4,28(s0)
    2318:	3c060000 	lui	a2,0x0
    231c:	24090010 	li	t1,16
    2320:	318d00ff 	andi	t5,t4,0xff
    2324:	000d7080 	sll	t6,t5,0x2
    2328:	01cd7023 	subu	t6,t6,t5
    232c:	000e7080 	sll	t6,t6,0x2
    2330:	01cd7023 	subu	t6,t6,t5
    2334:	01ee7821 	addu	t7,t7,t6
    2338:	91ef0000 	lbu	t7,0(t7)
    233c:	26080284 	addiu	t0,s0,644
    2340:	26190224 	addiu	t9,s0,548
    2344:	000fc0c0 	sll	t8,t7,0x3
    2348:	00d83021 	addu	a2,a2,t8
    234c:	2605014c 	addiu	a1,s0,332
    2350:	afa50044 	sw	a1,68(sp)
    2354:	8cc60000 	lw	a2,0(a2)
    2358:	afb90010 	sw	t9,16(sp)
    235c:	afa80014 	sw	t0,20(sp)
    2360:	afa90018 	sw	t1,24(sp)
    2364:	02202025 	move	a0,s1
    2368:	0c000000 	jal	0 <func_80A96DB0>
    236c:	00003825 	move	a3,zero
    2370:	3c060000 	lui	a2,0x0
    2374:	24c60000 	addiu	a2,a2,0
    2378:	260400b4 	addiu	a0,s0,180
    237c:	24050000 	li	a1,0
    2380:	0c000000 	jal	0 <func_80A96DB0>
    2384:	3c074190 	lui	a3,0x4190
    2388:	820a0197 	lb	t2,407(s0)
    238c:	3c0d0001 	lui	t5,0x1
    2390:	3c018000 	lui	at,0x8000
    2394:	000a5900 	sll	t3,t2,0x4
    2398:	016a5821 	addu	t3,t3,t2
    239c:	000b5880 	sll	t3,t3,0x2
    23a0:	022b6021 	addu	t4,s1,t3
    23a4:	01ac6821 	addu	t5,t5,t4
    23a8:	8dad17b4 	lw	t5,6068(t5)
    23ac:	26050198 	addiu	a1,s0,408
    23b0:	afa50040 	sw	a1,64(sp)
    23b4:	01a17021 	addu	t6,t5,at
    23b8:	3c010000 	lui	at,0x0
    23bc:	ac2e0018 	sw	t6,24(at)
    23c0:	0c000000 	jal	0 <func_80A96DB0>
    23c4:	02202025 	move	a0,s1
    23c8:	3c070000 	lui	a3,0x0
    23cc:	8fa50040 	lw	a1,64(sp)
    23d0:	24e70000 	addiu	a3,a3,0
    23d4:	02202025 	move	a0,s1
    23d8:	0c000000 	jal	0 <func_80A96DB0>
    23dc:	02003025 	move	a2,s0
    23e0:	3c060000 	lui	a2,0x0
    23e4:	24c60000 	addiu	a2,a2,0
    23e8:	26040098 	addiu	a0,s0,152
    23ec:	0c000000 	jal	0 <func_80A96DB0>
    23f0:	00002825 	move	a1,zero
    23f4:	860f001c 	lh	t7,28(s0)
    23f8:	24010007 	li	at,7
    23fc:	3c040000 	lui	a0,0x0
    2400:	31f800ff 	andi	t8,t7,0xff
    2404:	1701001d 	bne	t8,at,247c <func_80A99048+0x1e4>
    2408:	24840000 	addiu	a0,a0,0
    240c:	0c000000 	jal	0 <func_80A96DB0>
    2410:	860500b8 	lh	a1,184(s0)
    2414:	3c190000 	lui	t9,0x0
    2418:	8f390004 	lw	t9,4(t9)
    241c:	3c080000 	lui	t0,0x0
    2420:	3c090000 	lui	t1,0x0
    2424:	5720000f 	bnezl	t9,2464 <func_80A99048+0x1cc>
    2428:	860c00b8 	lh	t4,184(s0)
    242c:	8d080000 	lw	t0,0(t0)
    2430:	8d2900a4 	lw	t1,164(t1)
    2434:	01095024 	and	t2,t0,t1
    2438:	5540000a 	bnezl	t2,2464 <func_80A99048+0x1cc>
    243c:	860c00b8 	lh	t4,184(s0)
    2440:	860b00b8 	lh	t3,184(s0)
    2444:	24010001 	li	at,1
    2448:	5161000d 	beql	t3,at,2480 <func_80A99048+0x1e8>
    244c:	860d001c 	lh	t5,28(s0)
    2450:	0c000000 	jal	0 <func_80A96DB0>
    2454:	02002025 	move	a0,s0
    2458:	1000005a 	b	25c4 <func_80A99048+0x32c>
    245c:	8fbf003c 	lw	ra,60(sp)
    2460:	860c00b8 	lh	t4,184(s0)
    2464:	51800006 	beqzl	t4,2480 <func_80A99048+0x1e8>
    2468:	860d001c 	lh	t5,28(s0)
    246c:	0c000000 	jal	0 <func_80A96DB0>
    2470:	02002025 	move	a0,s0
    2474:	10000053 	b	25c4 <func_80A99048+0x32c>
    2478:	8fbf003c 	lw	ra,60(sp)
    247c:	860d001c 	lh	t5,28(s0)
    2480:	24010005 	li	at,5
    2484:	31ae00ff 	andi	t6,t5,0xff
    2488:	15c10004 	bne	t6,at,249c <func_80A99048+0x204>
    248c:	00000000 	nop
    2490:	920f01aa 	lbu	t7,426(s0)
    2494:	35f80040 	ori	t8,t7,0x40
    2498:	a21801aa 	sb	t8,426(s0)
    249c:	0c000000 	jal	0 <func_80A96DB0>
    24a0:	02002025 	move	a0,s0
    24a4:	8619001c 	lh	t9,28(s0)
    24a8:	a6020212 	sh	v0,530(s0)
    24ac:	860a0212 	lh	t2,530(s0)
    24b0:	332800ff 	andi	t0,t9,0xff
    24b4:	00084880 	sll	t1,t0,0x2
    24b8:	01284821 	addu	t1,t1,t0
    24bc:	3c060000 	lui	a2,0x0
    24c0:	012a5821 	addu	t3,t1,t2
    24c4:	00cb3021 	addu	a2,a2,t3
    24c8:	3c050000 	lui	a1,0x0
    24cc:	24a50000 	addiu	a1,a1,0
    24d0:	90c60000 	lbu	a2,0(a2)
    24d4:	0c000000 	jal	0 <func_80A96DB0>
    24d8:	8fa40044 	lw	a0,68(sp)
    24dc:	3c053c23 	lui	a1,0x3c23
    24e0:	34a5d70a 	ori	a1,a1,0xd70a
    24e4:	0c000000 	jal	0 <func_80A96DB0>
    24e8:	02002025 	move	a0,s0
    24ec:	0c000000 	jal	0 <func_80A96DB0>
    24f0:	02002025 	move	a0,s0
    24f4:	8605001c 	lh	a1,28(s0)
    24f8:	44802000 	mtc1	zero,$f4
    24fc:	02202025 	move	a0,s1
    2500:	30a5ff00 	andi	a1,a1,0xff00
    2504:	00052a03 	sra	a1,a1,0x8
    2508:	00052c00 	sll	a1,a1,0x10
    250c:	00052c03 	sra	a1,a1,0x10
    2510:	240600ff 	li	a2,255
    2514:	0c000000 	jal	0 <func_80A96DB0>
    2518:	e6040220 	swc1	$f4,544(s0)
    251c:	c6060024 	lwc1	$f6,36(s0)
    2520:	ae0201e4 	sw	v0,484(s0)
    2524:	240c0003 	li	t4,3
    2528:	e7a60010 	swc1	$f6,16(sp)
    252c:	c6080028 	lwc1	$f8,40(s0)
    2530:	26241c24 	addiu	a0,s1,7204
    2534:	02002825 	move	a1,s0
    2538:	e7a80014 	swc1	$f8,20(sp)
    253c:	c60a002c 	lwc1	$f10,44(s0)
    2540:	afac0028 	sw	t4,40(sp)
    2544:	afa00024 	sw	zero,36(sp)
    2548:	afa00020 	sw	zero,32(sp)
    254c:	afa0001c 	sw	zero,28(sp)
    2550:	02203025 	move	a2,s1
    2554:	24070018 	li	a3,24
    2558:	0c000000 	jal	0 <func_80A96DB0>
    255c:	e7aa0018 	swc1	$f10,24(sp)
    2560:	860d001c 	lh	t5,28(s0)
    2564:	24010003 	li	at,3
    2568:	3c0f0000 	lui	t7,0x0
    256c:	31ae00ff 	andi	t6,t5,0xff
    2570:	15c10010 	bne	t6,at,25b4 <func_80A99048+0x31c>
    2574:	3c180000 	lui	t8,0x0
    2578:	8def0048 	lw	t7,72(t7)
    257c:	8f1800a4 	lw	t8,164(t8)
    2580:	3c0a0000 	lui	t2,0x0
    2584:	26050024 	addiu	a1,s0,36
    2588:	01f8c824 	and	t9,t7,t8
    258c:	17200007 	bnez	t9,25ac <func_80A99048+0x314>
    2590:	00000000 	nop
    2594:	860801da 	lh	t0,474(s0)
    2598:	254a0000 	addiu	t2,t2,0
    259c:	ae0a0190 	sw	t2,400(s0)
    25a0:	250900c8 	addiu	t1,t0,200
    25a4:	10000006 	b	25c0 <func_80A99048+0x328>
    25a8:	a60901da 	sh	t1,474(s0)
    25ac:	0c000000 	jal	0 <func_80A96DB0>
    25b0:	8e0401e4 	lw	a0,484(s0)
    25b4:	3c0b0000 	lui	t3,0x0
    25b8:	256b0000 	addiu	t3,t3,0
    25bc:	ae0b0190 	sw	t3,400(s0)
    25c0:	8fbf003c 	lw	ra,60(sp)
    25c4:	8fb00034 	lw	s0,52(sp)
    25c8:	8fb10038 	lw	s1,56(sp)
    25cc:	03e00008 	jr	ra
    25d0:	27bd0048 	addiu	sp,sp,72

000025d4 <func_80A99384>:
    25d4:	27bdffe8 	addiu	sp,sp,-24
    25d8:	afbf0014 	sw	ra,20(sp)
    25dc:	8482001c 	lh	v0,28(a0)
    25e0:	2403000c 	li	v1,12
    25e4:	00803825 	move	a3,a0
    25e8:	304200ff 	andi	v0,v0,0xff
    25ec:	14620012 	bne	v1,v0,2638 <func_80A99384+0x64>
    25f0:	00000000 	nop
    25f4:	848e01e8 	lh	t6,488(a0)
    25f8:	11c0000f 	beqz	t6,2638 <func_80A99384+0x64>
    25fc:	00000000 	nop
    2600:	948f010e 	lhu	t7,270(a0)
    2604:	240110b9 	li	at,4281
    2608:	2484014c 	addiu	a0,a0,332
    260c:	15e1000a 	bne	t7,at,2638 <func_80A99384+0x64>
    2610:	24060007 	li	a2,7
    2614:	3c050000 	lui	a1,0x0
    2618:	24a50000 	addiu	a1,a1,0
    261c:	0c000000 	jal	0 <func_80A96DB0>
    2620:	afa70018 	sw	a3,24(sp)
    2624:	8fa70018 	lw	a3,24(sp)
    2628:	3c180000 	lui	t8,0x0
    262c:	27180000 	addiu	t8,t8,0
    2630:	10000011 	b	2678 <func_80A99384+0xa4>
    2634:	acf80190 	sw	t8,400(a3)
    2638:	54620010 	bnel	v1,v0,267c <func_80A99384+0xa8>
    263c:	8fbf0014 	lw	ra,20(sp)
    2640:	84f901e8 	lh	t9,488(a3)
    2644:	24010002 	li	at,2
    2648:	3c080000 	lui	t0,0x0
    264c:	1721000a 	bne	t9,at,2678 <func_80A99384+0xa4>
    2650:	25080000 	addiu	t0,t0,0
    2654:	3c010001 	lui	at,0x1
    2658:	ace80190 	sw	t0,400(a3)
    265c:	00250821 	addu	at,at,a1
    2660:	24090004 	li	t1,4
    2664:	a02904bf 	sb	t1,1215(at)
    2668:	3c010001 	lui	at,0x1
    266c:	00250821 	addu	at,at,a1
    2670:	240a0036 	li	t2,54
    2674:	a02a03dc 	sb	t2,988(at)
    2678:	8fbf0014 	lw	ra,20(sp)
    267c:	27bd0018 	addiu	sp,sp,24
    2680:	03e00008 	jr	ra
    2684:	00000000 	nop

00002688 <func_80A99438>:
    2688:	27bdffe8 	addiu	sp,sp,-24
    268c:	afbf0014 	sw	ra,20(sp)
    2690:	afa5001c 	sw	a1,28(sp)
    2694:	848e001c 	lh	t6,28(a0)
    2698:	2401000c 	li	at,12
    269c:	00803825 	move	a3,a0
    26a0:	31cf00ff 	andi	t7,t6,0xff
    26a4:	55e10019 	bnel	t7,at,270c <func_80A99438+0x84>
    26a8:	84ea01e8 	lh	t2,488(a3)
    26ac:	849801e8 	lh	t8,488(a0)
    26b0:	24010002 	li	at,2
    26b4:	2484014c 	addiu	a0,a0,332
    26b8:	17010013 	bne	t8,at,2708 <func_80A99438+0x80>
    26bc:	3c050000 	lui	a1,0x0
    26c0:	24a50000 	addiu	a1,a1,0
    26c4:	24060006 	li	a2,6
    26c8:	0c000000 	jal	0 <func_80A96DB0>
    26cc:	afa70018 	sw	a3,24(sp)
    26d0:	8fa2001c 	lw	v0,28(sp)
    26d4:	8fa70018 	lw	a3,24(sp)
    26d8:	3c190000 	lui	t9,0x0
    26dc:	27390000 	addiu	t9,t9,0
    26e0:	3c010001 	lui	at,0x1
    26e4:	24080004 	li	t0,4
    26e8:	00220821 	addu	at,at,v0
    26ec:	acf90190 	sw	t9,400(a3)
    26f0:	a02804bf 	sb	t0,1215(at)
    26f4:	3c010001 	lui	at,0x1
    26f8:	24090036 	li	t1,54
    26fc:	00220821 	addu	at,at,v0
    2700:	10000010 	b	2744 <func_80A99438+0xbc>
    2704:	a02903dc 	sb	t1,988(at)
    2708:	84ea01e8 	lh	t2,488(a3)
    270c:	3c050000 	lui	a1,0x0
    2710:	24a50000 	addiu	a1,a1,0
    2714:	11400004 	beqz	t2,2728 <func_80A99438+0xa0>
    2718:	24e4014c 	addiu	a0,a3,332
    271c:	94eb010e 	lhu	t3,270(a3)
    2720:	240110b9 	li	at,4281
    2724:	11610007 	beq	t3,at,2744 <func_80A99438+0xbc>
    2728:	24060006 	li	a2,6
    272c:	0c000000 	jal	0 <func_80A96DB0>
    2730:	afa70018 	sw	a3,24(sp)
    2734:	8fa70018 	lw	a3,24(sp)
    2738:	3c0c0000 	lui	t4,0x0
    273c:	258c0000 	addiu	t4,t4,0
    2740:	acec0190 	sw	t4,400(a3)
    2744:	8fbf0014 	lw	ra,20(sp)
    2748:	27bd0018 	addiu	sp,sp,24
    274c:	03e00008 	jr	ra
    2750:	00000000 	nop

00002754 <func_80A99504>:
    2754:	27bdffe0 	addiu	sp,sp,-32
    2758:	afbf001c 	sw	ra,28(sp)
    275c:	afa50024 	sw	a1,36(sp)
    2760:	0c000000 	jal	0 <func_80A96DB0>
    2764:	afa40020 	sw	a0,32(sp)
    2768:	10400006 	beqz	v0,2784 <func_80A99504+0x30>
    276c:	8fa40020 	lw	a0,32(sp)
    2770:	3c0e0000 	lui	t6,0x0
    2774:	25ce0000 	addiu	t6,t6,0
    2778:	ac800118 	sw	zero,280(a0)
    277c:	10000008 	b	27a0 <func_80A99504+0x4c>
    2780:	ac8e0190 	sw	t6,400(a0)
    2784:	3c014120 	lui	at,0x4120
    2788:	44812000 	mtc1	at,$f4
    278c:	8fa50024 	lw	a1,36(sp)
    2790:	24060021 	li	a2,33
    2794:	3c0742f0 	lui	a3,0x42f0
    2798:	0c000000 	jal	0 <func_80A96DB0>
    279c:	e7a40010 	swc1	$f4,16(sp)
    27a0:	8fbf001c 	lw	ra,28(sp)
    27a4:	27bd0020 	addiu	sp,sp,32
    27a8:	03e00008 	jr	ra
    27ac:	00000000 	nop

000027b0 <func_80A99560>:
    27b0:	27bdffe8 	addiu	sp,sp,-24
    27b4:	afbf0014 	sw	ra,20(sp)
    27b8:	848e01e8 	lh	t6,488(a0)
    27bc:	24010003 	li	at,3
    27c0:	00803025 	move	a2,a0
    27c4:	15c10011 	bne	t6,at,280c <func_80A99560+0x5c>
    27c8:	240f10b9 	li	t7,4281
    27cc:	a48f010e 	sh	t7,270(a0)
    27d0:	00a02025 	move	a0,a1
    27d4:	94c5010e 	lhu	a1,270(a2)
    27d8:	0c000000 	jal	0 <func_80A96DB0>
    27dc:	afa60018 	sw	a2,24(sp)
    27e0:	8fa60018 	lw	a2,24(sp)
    27e4:	3c020000 	lui	v0,0x0
    27e8:	24180001 	li	t8,1
    27ec:	24420000 	addiu	v0,v0,0
    27f0:	a4d801e8 	sh	t8,488(a2)
    27f4:	94590ef6 	lhu	t9,3830(v0)
    27f8:	3c090000 	lui	t1,0x0
    27fc:	25290000 	addiu	t1,t1,0
    2800:	37280002 	ori	t0,t9,0x2
    2804:	a4480ef6 	sh	t0,3830(v0)
    2808:	acc90190 	sw	t1,400(a2)
    280c:	8fbf0014 	lw	ra,20(sp)
    2810:	27bd0018 	addiu	sp,sp,24
    2814:	03e00008 	jr	ra
    2818:	00000000 	nop

0000281c <func_80A995CC>:
    281c:	27bdffd0 	addiu	sp,sp,-48
    2820:	afbf001c 	sw	ra,28(sp)
    2824:	afb00018 	sw	s0,24(sp)
    2828:	8ca21c44 	lw	v0,7236(a1)
    282c:	00808025 	move	s0,a0
    2830:	24840008 	addiu	a0,a0,8
    2834:	0c000000 	jal	0 <func_80A96DB0>
    2838:	24450024 	addiu	a1,v0,36
    283c:	a7a20022 	sh	v0,34(sp)
    2840:	c6040008 	lwc1	$f4,8(s0)
    2844:	00022400 	sll	a0,v0,0x10
    2848:	00042403 	sra	a0,a0,0x10
    284c:	0c000000 	jal	0 <func_80A96DB0>
    2850:	e6040024 	swc1	$f4,36(s0)
    2854:	3c0142a0 	lui	at,0x42a0
    2858:	44814000 	mtc1	at,$f8
    285c:	c6060024 	lwc1	$f6,36(s0)
    2860:	c6120010 	lwc1	$f18,16(s0)
    2864:	46004282 	mul.s	$f10,$f8,$f0
    2868:	e612002c 	swc1	$f18,44(s0)
    286c:	460a3400 	add.s	$f16,$f6,$f10
    2870:	e6100024 	swc1	$f16,36(s0)
    2874:	0c000000 	jal	0 <func_80A96DB0>
    2878:	87a40022 	lh	a0,34(sp)
    287c:	3c0142a0 	lui	at,0x42a0
    2880:	44814000 	mtc1	at,$f8
    2884:	c604002c 	lwc1	$f4,44(s0)
    2888:	8603008a 	lh	v1,138(s0)
    288c:	46004182 	mul.s	$f6,$f8,$f0
    2890:	860e01e8 	lh	t6,488(s0)
    2894:	a6030032 	sh	v1,50(s0)
    2898:	a60300b6 	sh	v1,182(s0)
    289c:	46062280 	add.s	$f10,$f4,$f6
    28a0:	11c00005 	beqz	t6,28b8 <func_80A995CC+0x9c>
    28a4:	e60a002c 	swc1	$f10,44(s0)
    28a8:	920f010c 	lbu	t7,268(s0)
    28ac:	3c013f80 	lui	at,0x3f80
    28b0:	55e00021 	bnezl	t7,2938 <func_80A995CC+0x11c>
    28b4:	44817000 	mtc1	at,$f14
    28b8:	87b80022 	lh	t8,34(sp)
    28bc:	44838000 	mtc1	v1,$f16
    28c0:	3c014040 	lui	at,0x4040
    28c4:	44984000 	mtc1	t8,$f8
    28c8:	468084a0 	cvt.s.w	$f18,$f16
    28cc:	44816000 	mtc1	at,$f12
    28d0:	3c013f80 	lui	at,0x3f80
    28d4:	44817000 	mtc1	at,$f14
    28d8:	3c010000 	lui	at,0x0
    28dc:	46804120 	cvt.s.w	$f4,$f8
    28e0:	c4260000 	lwc1	$f6,0(at)
    28e4:	46049001 	sub.s	$f0,$f18,$f4
    28e8:	46000005 	abs.s	$f0,$f0
    28ec:	46060282 	mul.s	$f10,$f0,$f6
    28f0:	00000000 	nop
    28f4:	460c5082 	mul.s	$f2,$f10,$f12
    28f8:	460e103c 	c.lt.s	$f2,$f14
    28fc:	00000000 	nop
    2900:	45000003 	bc1f	2910 <func_80A995CC+0xf4>
    2904:	00000000 	nop
    2908:	1000000d 	b	2940 <func_80A995CC+0x124>
    290c:	e60e0168 	swc1	$f14,360(s0)
    2910:	4602603c 	c.lt.s	$f12,$f2
    2914:	00000000 	nop
    2918:	45020004 	bc1fl	292c <func_80A995CC+0x110>
    291c:	46001006 	mov.s	$f0,$f2
    2920:	10000002 	b	292c <func_80A995CC+0x110>
    2924:	46006006 	mov.s	$f0,$f12
    2928:	46001006 	mov.s	$f0,$f2
    292c:	10000004 	b	2940 <func_80A995CC+0x124>
    2930:	e6000168 	swc1	$f0,360(s0)
    2934:	44817000 	mtc1	at,$f14
    2938:	00000000 	nop
    293c:	e60e0168 	swc1	$f14,360(s0)
    2940:	8fbf001c 	lw	ra,28(sp)
    2944:	8fb00018 	lw	s0,24(sp)
    2948:	27bd0030 	addiu	sp,sp,48
    294c:	03e00008 	jr	ra
    2950:	00000000 	nop

00002954 <EnKo_Update>:
    2954:	27bdffc8 	addiu	sp,sp,-56
    2958:	afbf0024 	sw	ra,36(sp)
    295c:	afb10020 	sw	s1,32(sp)
    2960:	afb0001c 	sw	s0,28(sp)
    2964:	8c8f0190 	lw	t7,400(a0)
    2968:	3c0e0000 	lui	t6,0x0
    296c:	25ce0000 	addiu	t6,t6,0
    2970:	00808025 	move	s0,a0
    2974:	11cf001f 	beq	t6,t7,29f4 <EnKo_Update+0xa0>
    2978:	00a08825 	move	s1,a1
    297c:	c4840220 	lwc1	$f4,544(a0)
    2980:	4600218d 	trunc.w.s	$f6,$f4
    2984:	44193000 	mfc1	t9,$f6
    2988:	00000000 	nop
    298c:	53200017 	beqzl	t9,29ec <EnKo_Update+0x98>
    2990:	02002025 	move	a0,s0
    2994:	80880197 	lb	t0,407(a0)
    2998:	3c0b0001 	lui	t3,0x1
    299c:	3c018000 	lui	at,0x8000
    29a0:	00084900 	sll	t1,t0,0x4
    29a4:	01284821 	addu	t1,t1,t0
    29a8:	00094880 	sll	t1,t1,0x2
    29ac:	00a95021 	addu	t2,a1,t1
    29b0:	016a5821 	addu	t3,t3,t2
    29b4:	8d6b17b4 	lw	t3,6068(t3)
    29b8:	2484014c 	addiu	a0,a0,332
    29bc:	01616021 	addu	t4,t3,at
    29c0:	3c010000 	lui	at,0x0
    29c4:	0c000000 	jal	0 <func_80A96DB0>
    29c8:	ac2c0018 	sw	t4,24(at)
    29cc:	02002025 	move	a0,s0
    29d0:	0c000000 	jal	0 <func_80A96DB0>
    29d4:	02202825 	move	a1,s1
    29d8:	0c000000 	jal	0 <func_80A96DB0>
    29dc:	02002025 	move	a0,s0
    29e0:	10000005 	b	29f8 <EnKo_Update+0xa4>
    29e4:	860d01e8 	lh	t5,488(s0)
    29e8:	02002025 	move	a0,s0
    29ec:	0c000000 	jal	0 <func_80A96DB0>
    29f0:	02202825 	move	a1,s1
    29f4:	860d01e8 	lh	t5,488(s0)
    29f8:	15a00003 	bnez	t5,2a08 <EnKo_Update+0xb4>
    29fc:	00000000 	nop
    2a00:	0c000000 	jal	0 <func_80A96DB0>
    2a04:	02002025 	move	a0,s0
    2a08:	0c000000 	jal	0 <func_80A96DB0>
    2a0c:	02002025 	move	a0,s0
    2a10:	1040000d 	beqz	v0,2a48 <EnKo_Update+0xf4>
    2a14:	02202025 	move	a0,s1
    2a18:	44800000 	mtc1	zero,$f0
    2a1c:	240e0004 	li	t6,4
    2a20:	afae0014 	sw	t6,20(sp)
    2a24:	44060000 	mfc1	a2,$f0
    2a28:	44070000 	mfc1	a3,$f0
    2a2c:	02002825 	move	a1,s0
    2a30:	0c000000 	jal	0 <func_80A96DB0>
    2a34:	e7a00010 	swc1	$f0,16(sp)
    2a38:	3c01bf80 	lui	at,0xbf80
    2a3c:	44814000 	mtc1	at,$f8
    2a40:	10000004 	b	2a54 <EnKo_Update+0x100>
    2a44:	e608006c 	swc1	$f8,108(s0)
    2a48:	44800000 	mtc1	zero,$f0
    2a4c:	00000000 	nop
    2a50:	e600006c 	swc1	$f0,108(s0)
    2a54:	8e190190 	lw	t9,400(s0)
    2a58:	02002025 	move	a0,s0
    2a5c:	02202825 	move	a1,s1
    2a60:	0320f809 	jalr	t9
    2a64:	00000000 	nop
    2a68:	02002025 	move	a0,s0
    2a6c:	0c000000 	jal	0 <func_80A96DB0>
    2a70:	02202825 	move	a1,s1
    2a74:	26060198 	addiu	a2,s0,408
    2a78:	00c02825 	move	a1,a2
    2a7c:	afa60028 	sw	a2,40(sp)
    2a80:	0c000000 	jal	0 <func_80A96DB0>
    2a84:	02002025 	move	a0,s0
    2a88:	3c010001 	lui	at,0x1
    2a8c:	34211e60 	ori	at,at,0x1e60
    2a90:	8fa60028 	lw	a2,40(sp)
    2a94:	02212821 	addu	a1,s1,at
    2a98:	0c000000 	jal	0 <func_80A96DB0>
    2a9c:	02202025 	move	a0,s1
    2aa0:	8fbf0024 	lw	ra,36(sp)
    2aa4:	8fb0001c 	lw	s0,28(sp)
    2aa8:	8fb10020 	lw	s1,32(sp)
    2aac:	03e00008 	jr	ra
    2ab0:	27bd0038 	addiu	sp,sp,56

00002ab4 <func_80A99864>:
    2ab4:	27bdffb0 	addiu	sp,sp,-80
    2ab8:	afb10018 	sw	s1,24(sp)
    2abc:	afa7005c 	sw	a3,92(sp)
    2ac0:	2401000f 	li	at,15
    2ac4:	00803825 	move	a3,a0
    2ac8:	00a08825 	move	s1,a1
    2acc:	afbf001c 	sw	ra,28(sp)
    2ad0:	afb00014 	sw	s0,20(sp)
    2ad4:	14a10050 	bne	a1,at,2c18 <func_80A99864+0x164>
    2ad8:	afa40050 	sw	a0,80(sp)
    2adc:	8fa40068 	lw	a0,104(sp)
    2ae0:	8fb00064 	lw	s0,100(sp)
    2ae4:	3c0fdb06 	lui	t7,0xdb06
    2ae8:	8c830000 	lw	v1,0(a0)
    2aec:	35ef0018 	ori	t7,t7,0x18
    2af0:	24080044 	li	t0,68
    2af4:	246e0008 	addiu	t6,v1,8
    2af8:	ac8e0000 	sw	t6,0(a0)
    2afc:	ac6f0000 	sw	t7,0(v1)
    2b00:	82180194 	lb	t8,404(s0)
    2b04:	3c090001 	lui	t1,0x1
    2b08:	3c0a8000 	lui	t2,0x8000
    2b0c:	03080019 	multu	t8,t0
    2b10:	3c010000 	lui	at,0x0
    2b14:	0000c812 	mflo	t9
    2b18:	00f95821 	addu	t3,a3,t9
    2b1c:	01696021 	addu	t4,t3,t1
    2b20:	8d8d17b4 	lw	t5,6068(t4)
    2b24:	ac6d0004 	sw	t5,4(v1)
    2b28:	820e0194 	lb	t6,404(s0)
    2b2c:	3c030000 	lui	v1,0x0
    2b30:	01c80019 	multu	t6,t0
    2b34:	00007812 	mflo	t7
    2b38:	00efc021 	addu	t8,a3,t7
    2b3c:	0309c821 	addu	t9,t8,t1
    2b40:	8f2b17b4 	lw	t3,6068(t9)
    2b44:	3c190000 	lui	t9,0x0
    2b48:	27390000 	addiu	t9,t9,0
    2b4c:	016a6021 	addu	t4,t3,t2
    2b50:	ac2c0018 	sw	t4,24(at)
    2b54:	860d001c 	lh	t5,28(s0)
    2b58:	3c0100ff 	lui	at,0xff
    2b5c:	31ae00ff 	andi	t6,t5,0xff
    2b60:	000e7880 	sll	t7,t6,0x2
    2b64:	01ee7823 	subu	t7,t7,t6
    2b68:	000f7880 	sll	t7,t7,0x2
    2b6c:	01ee7823 	subu	t7,t7,t6
    2b70:	006f1821 	addu	v1,v1,t7
    2b74:	90630000 	lbu	v1,0(v1)
    2b78:	0003c080 	sll	t8,v1,0x2
    2b7c:	0303c023 	subu	t8,t8,v1
    2b80:	0018c080 	sll	t8,t8,0x2
    2b84:	03191021 	addu	v0,t8,t9
    2b88:	8c4b0004 	lw	t3,4(v0)
    2b8c:	3c18db06 	lui	t8,0xdb06
    2b90:	37180028 	ori	t8,t8,0x28
    2b94:	accb0000 	sw	t3,0(a2)
    2b98:	8c450008 	lw	a1,8(v0)
    2b9c:	50a00016 	beqzl	a1,2bf8 <func_80A99864+0x144>
    2ba0:	82190196 	lb	t9,406(s0)
    2ba4:	860c0216 	lh	t4,534(s0)
    2ba8:	8c830000 	lw	v1,0(a0)
    2bac:	3421ffff 	ori	at,at,0xffff
    2bb0:	000c6880 	sll	t5,t4,0x2
    2bb4:	00ad7021 	addu	t6,a1,t5
    2bb8:	8dc60000 	lw	a2,0(t6)
    2bbc:	246f0008 	addiu	t7,v1,8
    2bc0:	ac8f0000 	sw	t7,0(a0)
    2bc4:	0006c900 	sll	t9,a2,0x4
    2bc8:	00195f02 	srl	t3,t9,0x1c
    2bcc:	000b6080 	sll	t4,t3,0x2
    2bd0:	3c0d0000 	lui	t5,0x0
    2bd4:	01ac6821 	addu	t5,t5,t4
    2bd8:	ac780000 	sw	t8,0(v1)
    2bdc:	8dad0000 	lw	t5,0(t5)
    2be0:	00c17024 	and	t6,a2,at
    2be4:	3c018000 	lui	at,0x8000
    2be8:	01ae7821 	addu	t7,t5,t6
    2bec:	01e1c021 	addu	t8,t7,at
    2bf0:	ac780004 	sw	t8,4(v1)
    2bf4:	82190196 	lb	t9,406(s0)
    2bf8:	3c010000 	lui	at,0x0
    2bfc:	03280019 	multu	t9,t0
    2c00:	00005812 	mflo	t3
    2c04:	00eb6021 	addu	t4,a3,t3
    2c08:	01896821 	addu	t5,t4,t1
    2c0c:	8dae17b4 	lw	t6,6068(t5)
    2c10:	01ca7821 	addu	t7,t6,t2
    2c14:	ac2f0018 	sw	t7,24(at)
    2c18:	24010008 	li	at,8
    2c1c:	16210021 	bne	s1,at,2ca4 <func_80A99864+0x1f0>
    2c20:	8fb00064 	lw	s0,100(sp)
    2c24:	8a0b01f6 	lwl	t3,502(s0)
    2c28:	9a0b01f9 	lwr	t3,505(s0)
    2c2c:	27b80040 	addiu	t8,sp,64
    2c30:	3c014700 	lui	at,0x4700
    2c34:	af0b0000 	sw	t3,0(t8)
    2c38:	960b01fa 	lhu	t3,506(s0)
    2c3c:	44814000 	mtc1	at,$f8
    2c40:	3c010000 	lui	at,0x0
    2c44:	a70b0004 	sh	t3,4(t8)
    2c48:	87ac0042 	lh	t4,66(sp)
    2c4c:	c4300000 	lwc1	$f16,0(at)
    2c50:	24050001 	li	a1,1
    2c54:	000c6823 	negu	t5,t4
    2c58:	448d2000 	mtc1	t5,$f4
    2c5c:	00000000 	nop
    2c60:	468021a0 	cvt.s.w	$f6,$f4
    2c64:	46083283 	div.s	$f10,$f6,$f8
    2c68:	46105302 	mul.s	$f12,$f10,$f16
    2c6c:	0c000000 	jal	0 <func_80A96DB0>
    2c70:	00000000 	nop
    2c74:	87ae0040 	lh	t6,64(sp)
    2c78:	3c014700 	lui	at,0x4700
    2c7c:	44813000 	mtc1	at,$f6
    2c80:	448e9000 	mtc1	t6,$f18
    2c84:	3c010000 	lui	at,0x0
    2c88:	c42a0000 	lwc1	$f10,0(at)
    2c8c:	46809120 	cvt.s.w	$f4,$f18
    2c90:	24050001 	li	a1,1
    2c94:	46062203 	div.s	$f8,$f4,$f6
    2c98:	460a4302 	mul.s	$f12,$f8,$f10
    2c9c:	0c000000 	jal	0 <func_80A96DB0>
    2ca0:	00000000 	nop
    2ca4:	2401000f 	li	at,15
    2ca8:	5621002d 	bnel	s1,at,2d60 <func_80A99864+0x2ac>
    2cac:	24010008 	li	at,8
    2cb0:	44807000 	mtc1	zero,$f14
    2cb4:	3c014496 	lui	at,0x4496
    2cb8:	44816000 	mtc1	at,$f12
    2cbc:	44067000 	mfc1	a2,$f14
    2cc0:	0c000000 	jal	0 <func_80A96DB0>
    2cc4:	24070001 	li	a3,1
    2cc8:	8a1901f0 	lwl	t9,496(s0)
    2ccc:	9a1901f3 	lwr	t9,499(s0)
    2cd0:	27af0040 	addiu	t7,sp,64
    2cd4:	3c014700 	lui	at,0x4700
    2cd8:	adf90000 	sw	t9,0(t7)
    2cdc:	961901f4 	lhu	t9,500(s0)
    2ce0:	44812000 	mtc1	at,$f4
    2ce4:	3c010000 	lui	at,0x0
    2ce8:	a5f90004 	sh	t9,4(t7)
    2cec:	87ab0042 	lh	t3,66(sp)
    2cf0:	c4280000 	lwc1	$f8,0(at)
    2cf4:	24050001 	li	a1,1
    2cf8:	448b8000 	mtc1	t3,$f16
    2cfc:	00000000 	nop
    2d00:	468084a0 	cvt.s.w	$f18,$f16
    2d04:	46049183 	div.s	$f6,$f18,$f4
    2d08:	46083302 	mul.s	$f12,$f6,$f8
    2d0c:	0c000000 	jal	0 <func_80A96DB0>
    2d10:	00000000 	nop
    2d14:	87ac0040 	lh	t4,64(sp)
    2d18:	3c014700 	lui	at,0x4700
    2d1c:	44819000 	mtc1	at,$f18
    2d20:	448c5000 	mtc1	t4,$f10
    2d24:	3c010000 	lui	at,0x0
    2d28:	c4260000 	lwc1	$f6,0(at)
    2d2c:	46805420 	cvt.s.w	$f16,$f10
    2d30:	24050001 	li	a1,1
    2d34:	46128103 	div.s	$f4,$f16,$f18
    2d38:	46062302 	mul.s	$f12,$f4,$f6
    2d3c:	0c000000 	jal	0 <func_80A96DB0>
    2d40:	00000000 	nop
    2d44:	44807000 	mtc1	zero,$f14
    2d48:	3c01c496 	lui	at,0xc496
    2d4c:	44816000 	mtc1	at,$f12
    2d50:	44067000 	mfc1	a2,$f14
    2d54:	0c000000 	jal	0 <func_80A96DB0>
    2d58:	24070001 	li	a3,1
    2d5c:	24010008 	li	at,8
    2d60:	12210005 	beq	s1,at,2d78 <func_80A99864+0x2c4>
    2d64:	00116840 	sll	t5,s1,0x1
    2d68:	24010009 	li	at,9
    2d6c:	12210002 	beq	s1,at,2d78 <func_80A99864+0x2c4>
    2d70:	2401000c 	li	at,12
    2d74:	16210021 	bne	s1,at,2dfc <func_80A99864+0x348>
    2d78:	020d1821 	addu	v1,s0,t5
    2d7c:	846402e4 	lh	a0,740(v1)
    2d80:	0c000000 	jal	0 <func_80A96DB0>
    2d84:	afa30028 	sw	v1,40(sp)
    2d88:	8fa20060 	lw	v0,96(sp)
    2d8c:	3c014348 	lui	at,0x4348
    2d90:	44818000 	mtc1	at,$f16
    2d94:	844e0002 	lh	t6,2(v0)
    2d98:	8fa30028 	lw	v1,40(sp)
    2d9c:	46100482 	mul.s	$f18,$f0,$f16
    2da0:	448e4000 	mtc1	t6,$f8
    2da4:	00000000 	nop
    2da8:	468042a0 	cvt.s.w	$f10,$f8
    2dac:	46125100 	add.s	$f4,$f10,$f18
    2db0:	4600218d 	trunc.w.s	$f6,$f4
    2db4:	44183000 	mfc1	t8,$f6
    2db8:	00000000 	nop
    2dbc:	a4580002 	sh	t8,2(v0)
    2dc0:	0c000000 	jal	0 <func_80A96DB0>
    2dc4:	84640304 	lh	a0,772(v1)
    2dc8:	8fa20060 	lw	v0,96(sp)
    2dcc:	3c014348 	lui	at,0x4348
    2dd0:	44815000 	mtc1	at,$f10
    2dd4:	84590004 	lh	t9,4(v0)
    2dd8:	460a0482 	mul.s	$f18,$f0,$f10
    2ddc:	44994000 	mtc1	t9,$f8
    2de0:	00000000 	nop
    2de4:	46804420 	cvt.s.w	$f16,$f8
    2de8:	46128100 	add.s	$f4,$f16,$f18
    2dec:	4600218d 	trunc.w.s	$f6,$f4
    2df0:	440c3000 	mfc1	t4,$f6
    2df4:	00000000 	nop
    2df8:	a44c0004 	sh	t4,4(v0)
    2dfc:	8fbf001c 	lw	ra,28(sp)
    2e00:	8fb00014 	lw	s0,20(sp)
    2e04:	8fb10018 	lw	s1,24(sp)
    2e08:	27bd0050 	addiu	sp,sp,80
    2e0c:	03e00008 	jr	ra
    2e10:	00001025 	move	v0,zero

00002e14 <func_80A99BC4>:
    2e14:	27bdffc8 	addiu	sp,sp,-56
    2e18:	3c0f0000 	lui	t7,0x0
    2e1c:	afbf0014 	sw	ra,20(sp)
    2e20:	afa60040 	sw	a2,64(sp)
    2e24:	afa70044 	sw	a3,68(sp)
    2e28:	25ef0000 	addiu	t7,t7,0
    2e2c:	8df90000 	lw	t9,0(t7)
    2e30:	27ae0024 	addiu	t6,sp,36
    2e34:	8df80004 	lw	t8,4(t7)
    2e38:	add90000 	sw	t9,0(t6)
    2e3c:	8df90008 	lw	t9,8(t7)
    2e40:	24010007 	li	at,7
    2e44:	add80004 	sw	t8,4(t6)
    2e48:	14a1001c 	bne	a1,at,2ebc <func_80A99BC4+0xa8>
    2e4c:	add90008 	sw	t9,8(t6)
    2e50:	8fa6004c 	lw	a2,76(sp)
    2e54:	8fa70048 	lw	a3,72(sp)
    2e58:	3c0bdb06 	lui	t3,0xdb06
    2e5c:	8cc30000 	lw	v1,0(a2)
    2e60:	356b0018 	ori	t3,t3,0x18
    2e64:	24080044 	li	t0,68
    2e68:	246a0008 	addiu	t2,v1,8
    2e6c:	acca0000 	sw	t2,0(a2)
    2e70:	ac6b0000 	sw	t3,0(v1)
    2e74:	80ec0195 	lb	t4,405(a3)
    2e78:	3c090001 	lui	t1,0x1
    2e7c:	3c018000 	lui	at,0x8000
    2e80:	01880019 	multu	t4,t0
    2e84:	00006812 	mflo	t5
    2e88:	008d7021 	addu	t6,a0,t5
    2e8c:	01c97821 	addu	t7,t6,t1
    2e90:	8df817b4 	lw	t8,6068(t7)
    2e94:	ac780004 	sw	t8,4(v1)
    2e98:	80f90195 	lb	t9,405(a3)
    2e9c:	03280019 	multu	t9,t0
    2ea0:	00005012 	mflo	t2
    2ea4:	008a5821 	addu	t3,a0,t2
    2ea8:	01696021 	addu	t4,t3,t1
    2eac:	8d8d17b4 	lw	t5,6068(t4)
    2eb0:	01a17021 	addu	t6,t5,at
    2eb4:	3c010000 	lui	at,0x0
    2eb8:	ac2e0018 	sw	t6,24(at)
    2ebc:	2401000f 	li	at,15
    2ec0:	14a10004 	bne	a1,at,2ed4 <func_80A99BC4+0xc0>
    2ec4:	8fa70048 	lw	a3,72(sp)
    2ec8:	27a40024 	addiu	a0,sp,36
    2ecc:	0c000000 	jal	0 <func_80A96DB0>
    2ed0:	24e50038 	addiu	a1,a3,56
    2ed4:	8fbf0014 	lw	ra,20(sp)
    2ed8:	27bd0038 	addiu	sp,sp,56
    2edc:	03e00008 	jr	ra
    2ee0:	00000000 	nop

00002ee4 <func_80A99C94>:
    2ee4:	27bdffe8 	addiu	sp,sp,-24
    2ee8:	afbf0014 	sw	ra,20(sp)
    2eec:	afa5001c 	sw	a1,28(sp)
    2ef0:	afa60020 	sw	a2,32(sp)
    2ef4:	afa70024 	sw	a3,36(sp)
    2ef8:	0c000000 	jal	0 <func_80A96DB0>
    2efc:	24050010 	li	a1,16
    2f00:	3c0efb00 	lui	t6,0xfb00
    2f04:	ac4e0000 	sw	t6,0(v0)
    2f08:	93a90023 	lbu	t1,35(sp)
    2f0c:	93b8001f 	lbu	t8,31(sp)
    2f10:	93ad0027 	lbu	t5,39(sp)
    2f14:	93a8002b 	lbu	t0,43(sp)
    2f18:	00095400 	sll	t2,t1,0x10
    2f1c:	0018ce00 	sll	t9,t8,0x18
    2f20:	032a5825 	or	t3,t9,t2
    2f24:	000d7200 	sll	t6,t5,0x8
    2f28:	016e7825 	or	t7,t3,t6
    2f2c:	3c19df00 	lui	t9,0xdf00
    2f30:	01e84825 	or	t1,t7,t0
    2f34:	ac490004 	sw	t1,4(v0)
    2f38:	ac590008 	sw	t9,8(v0)
    2f3c:	ac40000c 	sw	zero,12(v0)
    2f40:	8fbf0014 	lw	ra,20(sp)
    2f44:	27bd0018 	addiu	sp,sp,24
    2f48:	03e00008 	jr	ra
    2f4c:	00000000 	nop

00002f50 <EnKo_Draw>:
    2f50:	27bdff98 	addiu	sp,sp,-104
    2f54:	afbf002c 	sw	ra,44(sp)
    2f58:	afb20028 	sw	s2,40(sp)
    2f5c:	afb10024 	sw	s1,36(sp)
    2f60:	afb00020 	sw	s0,32(sp)
    2f64:	848f001c 	lh	t7,28(a0)
    2f68:	2403000b 	li	v1,11
    2f6c:	3c020000 	lui	v0,0x0
    2f70:	31f800ff 	andi	t8,t7,0xff
    2f74:	03030019 	multu	t8,v1
    2f78:	24420000 	addiu	v0,v0,0
    2f7c:	27ae0060 	addiu	t6,sp,96
    2f80:	27ab005c 	addiu	t3,sp,92
    2f84:	24090001 	li	t1,1
    2f88:	00808025 	move	s0,a0
    2f8c:	3c060000 	lui	a2,0x0
    2f90:	00a09025 	move	s2,a1
    2f94:	3c014f00 	lui	at,0x4f00
    2f98:	24c60000 	addiu	a2,a2,0
    2f9c:	0000c812 	mflo	t9
    2fa0:	00594021 	addu	t0,v0,t9
    2fa4:	890a0002 	lwl	t2,2(t0)
    2fa8:	990a0005 	lwr	t2,5(t0)
    2fac:	4448f800 	cfc1	t0,$31
    2fb0:	44c9f800 	ctc1	t1,$31
    2fb4:	adca0000 	sw	t2,0(t6)
    2fb8:	848c001c 	lh	t4,28(a0)
    2fbc:	2407082f 	li	a3,2095
    2fc0:	318d00ff 	andi	t5,t4,0xff
    2fc4:	01a30019 	multu	t5,v1
    2fc8:	00007812 	mflo	t7
    2fcc:	004fc021 	addu	t8,v0,t7
    2fd0:	8b0e0007 	lwl	t6,7(t8)
    2fd4:	9b0e000a 	lwr	t6,10(t8)
    2fd8:	ad6e0000 	sw	t6,0(t3)
    2fdc:	c4840220 	lwc1	$f4,544(a0)
    2fe0:	27a40048 	addiu	a0,sp,72
    2fe4:	460021a4 	cvt.w.s	$f6,$f4
    2fe8:	4449f800 	cfc1	t1,$31
    2fec:	00000000 	nop
    2ff0:	31290078 	andi	t1,t1,0x78
    2ff4:	51200013 	beqzl	t1,3044 <EnKo_Draw+0xf4>
    2ff8:	44093000 	mfc1	t1,$f6
    2ffc:	44813000 	mtc1	at,$f6
    3000:	24090001 	li	t1,1
    3004:	46062181 	sub.s	$f6,$f4,$f6
    3008:	44c9f800 	ctc1	t1,$31
    300c:	00000000 	nop
    3010:	460031a4 	cvt.w.s	$f6,$f6
    3014:	4449f800 	cfc1	t1,$31
    3018:	00000000 	nop
    301c:	31290078 	andi	t1,t1,0x78
    3020:	15200005 	bnez	t1,3038 <EnKo_Draw+0xe8>
    3024:	00000000 	nop
    3028:	44093000 	mfc1	t1,$f6
    302c:	3c018000 	lui	at,0x8000
    3030:	10000007 	b	3050 <EnKo_Draw+0x100>
    3034:	01214825 	or	t1,t1,at
    3038:	10000005 	b	3050 <EnKo_Draw+0x100>
    303c:	2409ffff 	li	t1,-1
    3040:	44093000 	mfc1	t1,$f6
    3044:	00000000 	nop
    3048:	0520fffb 	bltz	t1,3038 <EnKo_Draw+0xe8>
    304c:	00000000 	nop
    3050:	a20900c8 	sb	t1,200(s0)
    3054:	8e450000 	lw	a1,0(s2)
    3058:	44c8f800 	ctc1	t0,$31
    305c:	0c000000 	jal	0 <func_80A96DB0>
    3060:	00a08825 	move	s1,a1
    3064:	c6000220 	lwc1	$f0,544(s0)
    3068:	240100ff 	li	at,255
    306c:	3c0ddb06 	lui	t5,0xdb06
    3070:	4600020d 	trunc.w.s	$f8,$f0
    3074:	44024000 	mfc1	v0,$f8
    3078:	00000000 	nop
    307c:	00021400 	sll	v0,v0,0x10
    3080:	00021403 	sra	v0,v0,0x10
    3084:	1441002e 	bne	v0,at,3140 <EnKo_Draw+0x1f0>
    3088:	00000000 	nop
    308c:	8e2202c0 	lw	v0,704(s1)
    3090:	35ad0020 	ori	t5,t5,0x20
    3094:	240f00ff 	li	t7,255
    3098:	244c0008 	addiu	t4,v0,8
    309c:	ae2c02c0 	sw	t4,704(s1)
    30a0:	ac4d0000 	sw	t5,0(v0)
    30a4:	8e440000 	lw	a0,0(s2)
    30a8:	afaf0010 	sw	t7,16(sp)
    30ac:	93a70062 	lbu	a3,98(sp)
    30b0:	93a60061 	lbu	a2,97(sp)
    30b4:	93a50060 	lbu	a1,96(sp)
    30b8:	0c000000 	jal	0 <func_80A96DB0>
    30bc:	afa20044 	sw	v0,68(sp)
    30c0:	8fa30044 	lw	v1,68(sp)
    30c4:	3c18db06 	lui	t8,0xdb06
    30c8:	37180024 	ori	t8,t8,0x24
    30cc:	ac620004 	sw	v0,4(v1)
    30d0:	8e2202c0 	lw	v0,704(s1)
    30d4:	241900ff 	li	t9,255
    30d8:	244b0008 	addiu	t3,v0,8
    30dc:	ae2b02c0 	sw	t3,704(s1)
    30e0:	ac580000 	sw	t8,0(v0)
    30e4:	8e440000 	lw	a0,0(s2)
    30e8:	afb90010 	sw	t9,16(sp)
    30ec:	93a7005e 	lbu	a3,94(sp)
    30f0:	93a6005d 	lbu	a2,93(sp)
    30f4:	93a5005c 	lbu	a1,92(sp)
    30f8:	0c000000 	jal	0 <func_80A96DB0>
    30fc:	afa20040 	sw	v0,64(sp)
    3100:	8fa30040 	lw	v1,64(sp)
    3104:	3c060000 	lui	a2,0x0
    3108:	3c070000 	lui	a3,0x0
    310c:	ac620004 	sw	v0,4(v1)
    3110:	afb00010 	sw	s0,16(sp)
    3114:	c60a0220 	lwc1	$f10,544(s0)
    3118:	24e70000 	addiu	a3,a3,0
    311c:	24c60000 	addiu	a2,a2,0
    3120:	4600540d 	trunc.w.s	$f16,$f10
    3124:	02402025 	move	a0,s2
    3128:	2605014c 	addiu	a1,s0,332
    312c:	44088000 	mfc1	t0,$f16
    3130:	0c000000 	jal	0 <func_80A96DB0>
    3134:	afa80014 	sw	t0,20(sp)
    3138:	10000071 	b	3300 <EnKo_Draw+0x3b0>
    313c:	00000000 	nop
    3140:	1040006f 	beqz	v0,3300 <EnKo_Draw+0x3b0>
    3144:	240a0001 	li	t2,1
    3148:	4449f800 	cfc1	t1,$31
    314c:	44caf800 	ctc1	t2,$31
    3150:	3c014f00 	lui	at,0x4f00
    3154:	3c0bdb06 	lui	t3,0xdb06
    3158:	460004a4 	cvt.w.s	$f18,$f0
    315c:	444af800 	cfc1	t2,$31
    3160:	00000000 	nop
    3164:	314a0078 	andi	t2,t2,0x78
    3168:	51400013 	beqzl	t2,31b8 <EnKo_Draw+0x268>
    316c:	440a9000 	mfc1	t2,$f18
    3170:	44819000 	mtc1	at,$f18
    3174:	240a0001 	li	t2,1
    3178:	46120481 	sub.s	$f18,$f0,$f18
    317c:	44caf800 	ctc1	t2,$31
    3180:	00000000 	nop
    3184:	460094a4 	cvt.w.s	$f18,$f18
    3188:	444af800 	cfc1	t2,$31
    318c:	00000000 	nop
    3190:	314a0078 	andi	t2,t2,0x78
    3194:	15400005 	bnez	t2,31ac <EnKo_Draw+0x25c>
    3198:	00000000 	nop
    319c:	440a9000 	mfc1	t2,$f18
    31a0:	3c018000 	lui	at,0x8000
    31a4:	10000007 	b	31c4 <EnKo_Draw+0x274>
    31a8:	01415025 	or	t2,t2,at
    31ac:	10000005 	b	31c4 <EnKo_Draw+0x274>
    31b0:	240affff 	li	t2,-1
    31b4:	440a9000 	mfc1	t2,$f18
    31b8:	00000000 	nop
    31bc:	0540fffb 	bltz	t2,31ac <EnKo_Draw+0x25c>
    31c0:	00000000 	nop
    31c4:	44c9f800 	ctc1	t1,$31
    31c8:	a3aa0063 	sb	t2,99(sp)
    31cc:	240d0001 	li	t5,1
    31d0:	c6040220 	lwc1	$f4,544(s0)
    31d4:	444cf800 	cfc1	t4,$31
    31d8:	44cdf800 	ctc1	t5,$31
    31dc:	3c014f00 	lui	at,0x4f00
    31e0:	460021a4 	cvt.w.s	$f6,$f4
    31e4:	444df800 	cfc1	t5,$31
    31e8:	00000000 	nop
    31ec:	31ad0078 	andi	t5,t5,0x78
    31f0:	51a00013 	beqzl	t5,3240 <EnKo_Draw+0x2f0>
    31f4:	440d3000 	mfc1	t5,$f6
    31f8:	44813000 	mtc1	at,$f6
    31fc:	240d0001 	li	t5,1
    3200:	46062181 	sub.s	$f6,$f4,$f6
    3204:	44cdf800 	ctc1	t5,$31
    3208:	00000000 	nop
    320c:	460031a4 	cvt.w.s	$f6,$f6
    3210:	444df800 	cfc1	t5,$31
    3214:	00000000 	nop
    3218:	31ad0078 	andi	t5,t5,0x78
    321c:	15a00005 	bnez	t5,3234 <EnKo_Draw+0x2e4>
    3220:	00000000 	nop
    3224:	440d3000 	mfc1	t5,$f6
    3228:	3c018000 	lui	at,0x8000
    322c:	10000007 	b	324c <EnKo_Draw+0x2fc>
    3230:	01a16825 	or	t5,t5,at
    3234:	10000005 	b	324c <EnKo_Draw+0x2fc>
    3238:	240dffff 	li	t5,-1
    323c:	440d3000 	mfc1	t5,$f6
    3240:	00000000 	nop
    3244:	05a0fffb 	bltz	t5,3234 <EnKo_Draw+0x2e4>
    3248:	00000000 	nop
    324c:	a3ad005f 	sb	t5,95(sp)
    3250:	8e2202d0 	lw	v0,720(s1)
    3254:	356b0020 	ori	t3,t3,0x20
    3258:	44ccf800 	ctc1	t4,$31
    325c:	244f0008 	addiu	t7,v0,8
    3260:	ae2f02d0 	sw	t7,720(s1)
    3264:	ac4b0000 	sw	t3,0(v0)
    3268:	93b80063 	lbu	t8,99(sp)
    326c:	8e440000 	lw	a0,0(s2)
    3270:	93a70062 	lbu	a3,98(sp)
    3274:	93a60061 	lbu	a2,97(sp)
    3278:	93a50060 	lbu	a1,96(sp)
    327c:	afa2003c 	sw	v0,60(sp)
    3280:	0c000000 	jal	0 <func_80A96DB0>
    3284:	afb80010 	sw	t8,16(sp)
    3288:	8fa3003c 	lw	v1,60(sp)
    328c:	3c0edb06 	lui	t6,0xdb06
    3290:	35ce0024 	ori	t6,t6,0x24
    3294:	ac620004 	sw	v0,4(v1)
    3298:	8e2202d0 	lw	v0,720(s1)
    329c:	24590008 	addiu	t9,v0,8
    32a0:	ae3902d0 	sw	t9,720(s1)
    32a4:	ac4e0000 	sw	t6,0(v0)
    32a8:	93a8005f 	lbu	t0,95(sp)
    32ac:	8e440000 	lw	a0,0(s2)
    32b0:	93a7005e 	lbu	a3,94(sp)
    32b4:	93a6005d 	lbu	a2,93(sp)
    32b8:	93a5005c 	lbu	a1,92(sp)
    32bc:	afa20038 	sw	v0,56(sp)
    32c0:	0c000000 	jal	0 <func_80A96DB0>
    32c4:	afa80010 	sw	t0,16(sp)
    32c8:	8fa30038 	lw	v1,56(sp)
    32cc:	3c060000 	lui	a2,0x0
    32d0:	3c070000 	lui	a3,0x0
    32d4:	ac620004 	sw	v0,4(v1)
    32d8:	afb00010 	sw	s0,16(sp)
    32dc:	c6080220 	lwc1	$f8,544(s0)
    32e0:	24e70000 	addiu	a3,a3,0
    32e4:	24c60000 	addiu	a2,a2,0
    32e8:	4600428d 	trunc.w.s	$f10,$f8
    32ec:	02402025 	move	a0,s2
    32f0:	2605014c 	addiu	a1,s0,332
    32f4:	440a5000 	mfc1	t2,$f10
    32f8:	0c000000 	jal	0 <func_80A96DB0>
    32fc:	afaa0014 	sw	t2,20(sp)
    3300:	3c060000 	lui	a2,0x0
    3304:	24c60000 	addiu	a2,a2,0
    3308:	27a40048 	addiu	a0,sp,72
    330c:	8e450000 	lw	a1,0(s2)
    3310:	0c000000 	jal	0 <func_80A96DB0>
    3314:	24070858 	li	a3,2136
    3318:	8fbf002c 	lw	ra,44(sp)
    331c:	8fb00020 	lw	s0,32(sp)
    3320:	8fb10024 	lw	s1,36(sp)
    3324:	8fb20028 	lw	s2,40(sp)
    3328:	03e00008 	jr	ra
    332c:	27bd0068 	addiu	sp,sp,104
