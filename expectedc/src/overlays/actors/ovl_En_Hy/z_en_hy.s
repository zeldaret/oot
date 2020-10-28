
build/src/overlays/actors/ovl_En_Hy/z_en_hy.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <func_80A6F5B0>:
       0:	27bdffe0 	addiu	sp,sp,-32
       4:	afbf0014 	sw	ra,20(sp)
       8:	848e001c 	lh	t6,28(a0)
       c:	3c190000 	lui	t9,0x0
      10:	27390000 	addiu	t9,t9,0
      14:	31cf007f 	andi	t7,t6,0x7f
      18:	000fc080 	sll	t8,t7,0x2
      1c:	030fc023 	subu	t8,t8,t7
      20:	0018c080 	sll	t8,t8,0x2
      24:	03191021 	addu	v0,t8,t9
      28:	90430006 	lbu	v1,6(v0)
      2c:	3c010001 	lui	at,0x1
      30:	00803025 	move	a2,a0
      34:	342117a4 	ori	at,at,0x17a4
      38:	00a12021 	addu	a0,a1,at
      3c:	90480000 	lbu	t0,0(v0)
      40:	90490001 	lbu	t1,1(v0)
      44:	3c050000 	lui	a1,0x0
      48:	000350c0 	sll	t2,v1,0x3
      4c:	00aa2821 	addu	a1,a1,t2
      50:	84a50000 	lh	a1,0(a1)
      54:	afa40018 	sw	a0,24(sp)
      58:	afa60020 	sw	a2,32(sp)
      5c:	a3a8001f 	sb	t0,31(sp)
      60:	0c000000 	jal	0 <func_80A6F5B0>
      64:	a3a9001e 	sb	t1,30(sp)
      68:	8fa60020 	lw	a2,32(sp)
      6c:	3c050000 	lui	a1,0x0
      70:	a0c20198 	sb	v0,408(a2)
      74:	80cb0198 	lb	t3,408(a2)
      78:	93ac001e 	lbu	t4,30(sp)
      7c:	8fa40018 	lw	a0,24(sp)
      80:	05610003 	bgez	t3,90 <func_80A6F5B0+0x90>
      84:	000c68c0 	sll	t5,t4,0x3
      88:	1000001d 	b	100 <func_80A6F5B0+0x100>
      8c:	00001025 	move	v0,zero
      90:	00ad2821 	addu	a1,a1,t5
      94:	84a50000 	lh	a1,0(a1)
      98:	0c000000 	jal	0 <func_80A6F5B0>
      9c:	afa60020 	sw	a2,32(sp)
      a0:	8fa60020 	lw	a2,32(sp)
      a4:	3c050000 	lui	a1,0x0
      a8:	a0c20197 	sb	v0,407(a2)
      ac:	80ce0197 	lb	t6,407(a2)
      b0:	93af001f 	lbu	t7,31(sp)
      b4:	8fa40018 	lw	a0,24(sp)
      b8:	05c10003 	bgez	t6,c8 <func_80A6F5B0+0xc8>
      bc:	000fc080 	sll	t8,t7,0x2
      c0:	1000000f 	b	100 <func_80A6F5B0+0x100>
      c4:	00001025 	move	v0,zero
      c8:	030fc023 	subu	t8,t8,t7
      cc:	0018c080 	sll	t8,t8,0x2
      d0:	00b82821 	addu	a1,a1,t8
      d4:	84a50000 	lh	a1,0(a1)
      d8:	0c000000 	jal	0 <func_80A6F5B0>
      dc:	afa60020 	sw	a2,32(sp)
      e0:	8fa60020 	lw	a2,32(sp)
      e4:	a0c20196 	sb	v0,406(a2)
      e8:	80d90196 	lb	t9,406(a2)
      ec:	24020001 	li	v0,1
      f0:	07210003 	bgez	t9,100 <func_80A6F5B0+0x100>
      f4:	00000000 	nop
      f8:	10000001 	b	100 <func_80A6F5B0+0x100>
      fc:	00001025 	move	v0,zero
     100:	8fbf0014 	lw	ra,20(sp)
     104:	27bd0020 	addiu	sp,sp,32
     108:	03e00008 	jr	ra
     10c:	00000000 	nop

00000110 <func_80A6F6C0>:
     110:	27bdffe0 	addiu	sp,sp,-32
     114:	afa40020 	sw	a0,32(sp)
     118:	8fae0020 	lw	t6,32(sp)
     11c:	3c010001 	lui	at,0x1
     120:	342117a4 	ori	at,at,0x17a4
     124:	afbf0014 	sw	ra,20(sp)
     128:	00a12021 	addu	a0,a1,at
     12c:	81c50198 	lb	a1,408(t6)
     130:	0c000000 	jal	0 <func_80A6F5B0>
     134:	afa4001c 	sw	a0,28(sp)
     138:	14400003 	bnez	v0,148 <func_80A6F6C0+0x38>
     13c:	8faf0020 	lw	t7,32(sp)
     140:	10000010 	b	184 <func_80A6F6C0+0x74>
     144:	00001025 	move	v0,zero
     148:	8fa4001c 	lw	a0,28(sp)
     14c:	0c000000 	jal	0 <func_80A6F5B0>
     150:	81e50197 	lb	a1,407(t7)
     154:	14400003 	bnez	v0,164 <func_80A6F6C0+0x54>
     158:	8fb80020 	lw	t8,32(sp)
     15c:	10000009 	b	184 <func_80A6F6C0+0x74>
     160:	00001025 	move	v0,zero
     164:	8fa4001c 	lw	a0,28(sp)
     168:	0c000000 	jal	0 <func_80A6F5B0>
     16c:	83050196 	lb	a1,406(t8)
     170:	54400004 	bnezl	v0,184 <func_80A6F6C0+0x74>
     174:	24020001 	li	v0,1
     178:	10000002 	b	184 <func_80A6F6C0+0x74>
     17c:	00001025 	move	v0,zero
     180:	24020001 	li	v0,1
     184:	8fbf0014 	lw	ra,20(sp)
     188:	27bd0020 	addiu	sp,sp,32
     18c:	03e00008 	jr	ra
     190:	00000000 	nop

00000194 <func_80A6F744>:
     194:	27bdffe8 	addiu	sp,sp,-24
     198:	3c010001 	lui	at,0x1
     19c:	afa40018 	sw	a0,24(sp)
     1a0:	342117a4 	ori	at,at,0x17a4
     1a4:	afbf0014 	sw	ra,20(sp)
     1a8:	00a12021 	addu	a0,a1,at
     1ac:	0c000000 	jal	0 <func_80A6F5B0>
     1b0:	240500c5 	li	a1,197
     1b4:	8fa30018 	lw	v1,24(sp)
     1b8:	a0620199 	sb	v0,409(v1)
     1bc:	806e0199 	lb	t6,409(v1)
     1c0:	8fbf0014 	lw	ra,20(sp)
     1c4:	24020001 	li	v0,1
     1c8:	05c10003 	bgez	t6,1d8 <func_80A6F744+0x44>
     1cc:	00000000 	nop
     1d0:	10000001 	b	1d8 <func_80A6F744+0x44>
     1d4:	00001025 	move	v0,zero
     1d8:	03e00008 	jr	ra
     1dc:	27bd0018 	addiu	sp,sp,24

000001e0 <func_80A6F790>:
     1e0:	3c010001 	lui	at,0x1
     1e4:	27bdffe8 	addiu	sp,sp,-24
     1e8:	00803825 	move	a3,a0
     1ec:	342117a4 	ori	at,at,0x17a4
     1f0:	afbf0014 	sw	ra,20(sp)
     1f4:	00a12021 	addu	a0,a1,at
     1f8:	0c000000 	jal	0 <func_80A6F5B0>
     1fc:	80e50199 	lb	a1,409(a3)
     200:	14400003 	bnez	v0,210 <func_80A6F790+0x30>
     204:	8fbf0014 	lw	ra,20(sp)
     208:	10000002 	b	214 <func_80A6F790+0x34>
     20c:	00001025 	move	v0,zero
     210:	24020001 	li	v0,1
     214:	03e00008 	jr	ra
     218:	27bd0018 	addiu	sp,sp,24

0000021c <func_80A6F7CC>:
     21c:	27bdffe0 	addiu	sp,sp,-32
     220:	afbf001c 	sw	ra,28(sp)
     224:	3c013f80 	lui	at,0x3f80
     228:	44811000 	mtc1	at,$f2
     22c:	c4840090 	lwc1	$f4,144(a0)
     230:	c4800094 	lwc1	$f0,148(a0)
     234:	ac860260 	sw	a2,608(a0)
     238:	46022180 	add.s	$f6,$f4,$f2
     23c:	46000005 	abs.s	$f0,$f0
     240:	44073000 	mfc1	a3,$f6
     244:	46020200 	add.s	$f8,$f0,$f2
     248:	0c000000 	jal	0 <func_80A6F5B0>
     24c:	e7a80010 	swc1	$f8,16(sp)
     250:	8fbf001c 	lw	ra,28(sp)
     254:	27bd0020 	addiu	sp,sp,32
     258:	03e00008 	jr	ra
     25c:	00000000 	nop

00000260 <func_80A6F810>:
     260:	27bdffe0 	addiu	sp,sp,-32
     264:	afbf0014 	sw	ra,20(sp)
     268:	00a03025 	move	a2,a1
     26c:	84a5001c 	lh	a1,28(a1)
     270:	8c831c44 	lw	v1,7236(a0)
     274:	afa60024 	sw	a2,36(sp)
     278:	30a5007f 	andi	a1,a1,0x7f
     27c:	24a50025 	addiu	a1,a1,37
     280:	afa40020 	sw	a0,32(sp)
     284:	0c000000 	jal	0 <func_80A6F5B0>
     288:	afa3001c 	sw	v1,28(sp)
     28c:	8fa3001c 	lw	v1,28(sp)
     290:	8fa40020 	lw	a0,32(sp)
     294:	8fa60024 	lw	a2,36(sp)
     298:	1040000a 	beqz	v0,2c4 <func_80A6F810+0x64>
     29c:	3045ffff 	andi	a1,v0,0xffff
     2a0:	84ce001c 	lh	t6,28(a2)
     2a4:	24010005 	li	at,5
     2a8:	24180019 	li	t8,25
     2ac:	31cf007f 	andi	t7,t6,0x7f
     2b0:	15e10002 	bne	t7,at,2bc <func_80A6F810+0x5c>
     2b4:	00000000 	nop
     2b8:	a0780693 	sb	t8,1683(v1)
     2bc:	100001f6 	b	a98 <L80A70040+0x8>
     2c0:	00a01025 	move	v0,a1
     2c4:	84d9001c 	lh	t9,28(a2)
     2c8:	00001025 	move	v0,zero
     2cc:	3328007f 	andi	t0,t9,0x7f
     2d0:	2d010015 	sltiu	at,t0,21
     2d4:	102001f0 	beqz	at,a98 <L80A70040+0x8>
     2d8:	00084080 	sll	t0,t0,0x2
     2dc:	3c010000 	lui	at,0x0
     2e0:	00280821 	addu	at,at,t0
     2e4:	8c280000 	lw	t0,0(at)
     2e8:	01000008 	jr	t0
     2ec:	00000000 	nop

000002f0 <L80A6F8A0>:
     2f0:	848200a4 	lh	v0,164(a0)
     2f4:	2401002a 	li	at,42
     2f8:	54410014 	bnel	v0,at,34c <L80A6F8A0+0x5c>
     2fc:	24010020 	li	at,32
     300:	94c90330 	lhu	t1,816(a2)
     304:	3c020000 	lui	v0,0x0
     308:	24420000 	addiu	v0,v0,0
     30c:	312a0800 	andi	t2,t1,0x800
     310:	11400003 	beqz	t2,320 <L80A6F8A0+0x30>
     314:	2403508d 	li	v1,20621
     318:	100001df 	b	a98 <L80A70040+0x8>
     31c:	3062ffff 	andi	v0,v1,0xffff
     320:	944b0f10 	lhu	t3,3856(v0)
     324:	2402508b 	li	v0,20619
     328:	316c0800 	andi	t4,t3,0x800
     32c:	11800003 	beqz	t4,33c <L80A6F8A0+0x4c>
     330:	00000000 	nop
     334:	10000001 	b	33c <L80A6F8A0+0x4c>
     338:	2402508c 	li	v0,20620
     33c:	00401825 	move	v1,v0
     340:	100001d5 	b	a98 <L80A70040+0x8>
     344:	3062ffff 	andi	v0,v1,0xffff
     348:	24010020 	li	at,32
     34c:	1441000c 	bne	v0,at,380 <L80A6F8A0+0x90>
     350:	3c020000 	lui	v0,0x0
     354:	24420000 	addiu	v0,v0,0
     358:	944d1400 	lhu	t5,5120(v0)
     35c:	2403709c 	li	v1,28828
     360:	31ae0001 	andi	t6,t5,0x1
     364:	11c00004 	beqz	t6,378 <L80A6F8A0+0x88>
     368:	00000000 	nop
     36c:	2403709b 	li	v1,28827
     370:	100001c9 	b	a98 <L80A70040+0x8>
     374:	3062ffff 	andi	v0,v1,0xffff
     378:	100001c7 	b	a98 <L80A70040+0x8>
     37c:	3062ffff 	andi	v0,v1,0xffff
     380:	3c020000 	lui	v0,0x0
     384:	24420000 	addiu	v0,v0,0
     388:	904f141c 	lbu	t7,5148(v0)
     38c:	11e00013 	beqz	t7,3dc <L80A6F8A0+0xec>
     390:	00000000 	nop
     394:	844313c4 	lh	v1,5060(v0)
     398:	24010001 	li	at,1
     39c:	30630f00 	andi	v1,v1,0xf00
     3a0:	00031a03 	sra	v1,v1,0x8
     3a4:	00031c00 	sll	v1,v1,0x10
     3a8:	00031c03 	sra	v1,v1,0x10
     3ac:	10600009 	beqz	v1,3d4 <L80A6F8A0+0xe4>
     3b0:	00000000 	nop
     3b4:	14610004 	bne	v1,at,3c8 <L80A6F8A0+0xd8>
     3b8:	a0c00215 	sb	zero,533(a2)
     3bc:	2403709f 	li	v1,28831
     3c0:	100001b5 	b	a98 <L80A70040+0x8>
     3c4:	3062ffff 	andi	v0,v1,0xffff
     3c8:	2403709e 	li	v1,28830
     3cc:	100001b2 	b	a98 <L80A70040+0x8>
     3d0:	3062ffff 	andi	v0,v1,0xffff
     3d4:	100001b0 	b	a98 <L80A70040+0x8>
     3d8:	2402709d 	li	v0,28829
     3dc:	100001ae 	b	a98 <L80A70040+0x8>
     3e0:	240270a0 	li	v0,28832

000003e4 <L80A6F994>:
     3e4:	3c020000 	lui	v0,0x0
     3e8:	24420000 	addiu	v0,v0,0
     3ec:	94580ee4 	lhu	t8,3812(v0)
     3f0:	33190001 	andi	t9,t8,0x1
     3f4:	5320000c 	beqzl	t9,428 <L80A6F994+0x44>
     3f8:	944a0f10 	lhu	t2,3856(v0)
     3fc:	94480f10 	lhu	t0,3856(v0)
     400:	24037045 	li	v1,28741
     404:	31090002 	andi	t1,t0,0x2
     408:	11200004 	beqz	t1,41c <L80A6F994+0x38>
     40c:	00000000 	nop
     410:	24037017 	li	v1,28695
     414:	100001a0 	b	a98 <L80A70040+0x8>
     418:	3062ffff 	andi	v0,v1,0xffff
     41c:	1000019e 	b	a98 <L80A70040+0x8>
     420:	3062ffff 	andi	v0,v1,0xffff
     424:	944a0f10 	lhu	t2,3856(v0)
     428:	24037016 	li	v1,28694
     42c:	314b0001 	andi	t3,t2,0x1
     430:	11600004 	beqz	t3,444 <L80A6F994+0x60>
     434:	00000000 	nop
     438:	24037017 	li	v1,28695
     43c:	10000196 	b	a98 <L80A70040+0x8>
     440:	3062ffff 	andi	v0,v1,0xffff
     444:	10000194 	b	a98 <L80A70040+0x8>
     448:	3062ffff 	andi	v0,v1,0xffff

0000044c <L80A6F9FC>:
     44c:	848200a4 	lh	v0,164(a0)
     450:	2401002a 	li	at,42
     454:	54410004 	bnel	v0,at,468 <L80A6F9FC+0x1c>
     458:	24010052 	li	at,82
     45c:	1000018e 	b	a98 <L80A70040+0x8>
     460:	24025086 	li	v0,20614
     464:	24010052 	li	at,82
     468:	14410003 	bne	v0,at,478 <L80A6F9FC+0x2c>
     46c:	00000000 	nop
     470:	10000189 	b	a98 <L80A70040+0x8>
     474:	24025085 	li	v0,20613
     478:	3c020000 	lui	v0,0x0
     47c:	24420000 	addiu	v0,v0,0
     480:	944c0ee4 	lhu	t4,3812(v0)
     484:	318d0001 	andi	t5,t4,0x1
     488:	51a0000c 	beqzl	t5,4bc <L80A6F9FC+0x70>
     48c:	94430ed6 	lhu	v1,3798(v0)
     490:	944e0f10 	lhu	t6,3856(v0)
     494:	24037047 	li	v1,28743
     498:	31cf0008 	andi	t7,t6,0x8
     49c:	11e00004 	beqz	t7,4b0 <L80A6F9FC+0x64>
     4a0:	00000000 	nop
     4a4:	2403701a 	li	v1,28698
     4a8:	1000017b 	b	a98 <L80A70040+0x8>
     4ac:	3062ffff 	andi	v0,v1,0xffff
     4b0:	10000179 	b	a98 <L80A70040+0x8>
     4b4:	3062ffff 	andi	v0,v1,0xffff
     4b8:	94430ed6 	lhu	v1,3798(v0)
     4bc:	30780010 	andi	t8,v1,0x10
     4c0:	13000003 	beqz	t8,4d0 <L80A6F9FC+0x84>
     4c4:	30790001 	andi	t9,v1,0x1
     4c8:	10000173 	b	a98 <L80A70040+0x8>
     4cc:	2402701a 	li	v0,28698
     4d0:	53200004 	beqzl	t9,4e4 <L80A6F9FC+0x98>
     4d4:	94480f10 	lhu	t0,3856(v0)
     4d8:	1000016f 	b	a98 <L80A70040+0x8>
     4dc:	2402701b 	li	v0,28699
     4e0:	94480f10 	lhu	t0,3856(v0)
     4e4:	31090004 	andi	t1,t0,0x4
     4e8:	11200003 	beqz	t1,4f8 <L80A6F9FC+0xac>
     4ec:	00000000 	nop
     4f0:	10000169 	b	a98 <L80A70040+0x8>
     4f4:	2402701c 	li	v0,28700
     4f8:	10000167 	b	a98 <L80A70040+0x8>
     4fc:	2402701a 	li	v0,28698

00000500 <L80A6FAB0>:
     500:	3c020000 	lui	v0,0x0
     504:	24420000 	addiu	v0,v0,0
     508:	944a0ee4 	lhu	t2,3812(v0)
     50c:	24037001 	li	v1,28673
     510:	314b0001 	andi	t3,t2,0x1
     514:	1160000b 	beqz	t3,544 <L80A6FAB0+0x44>
     518:	00000000 	nop
     51c:	944c0f10 	lhu	t4,3856(v0)
     520:	240270eb 	li	v0,28907
     524:	318d0010 	andi	t5,t4,0x10
     528:	11a00004 	beqz	t5,53c <L80A6FAB0+0x3c>
     52c:	00000000 	nop
     530:	24027001 	li	v0,28673
     534:	10000158 	b	a98 <L80A70040+0x8>
     538:	3042ffff 	andi	v0,v0,0xffff
     53c:	10000156 	b	a98 <L80A70040+0x8>
     540:	3042ffff 	andi	v0,v0,0xffff
     544:	10000154 	b	a98 <L80A70040+0x8>
     548:	3062ffff 	andi	v0,v1,0xffff

0000054c <L80A6FAFC>:
     54c:	3c020000 	lui	v0,0x0
     550:	24420000 	addiu	v0,v0,0
     554:	944e0ee4 	lhu	t6,3812(v0)
     558:	2403704b 	li	v1,28747
     55c:	31cf0001 	andi	t7,t6,0x1
     560:	51e00004 	beqzl	t7,574 <L80A6FAFC+0x28>
     564:	94580f10 	lhu	t8,3856(v0)
     568:	1000014b 	b	a98 <L80A70040+0x8>
     56c:	3062ffff 	andi	v0,v1,0xffff
     570:	94580f10 	lhu	t8,3856(v0)
     574:	24027023 	li	v0,28707
     578:	33190020 	andi	t9,t8,0x20
     57c:	13200003 	beqz	t9,58c <L80A6FAFC+0x40>
     580:	00000000 	nop
     584:	10000001 	b	58c <L80A6FAFC+0x40>
     588:	24027024 	li	v0,28708
     58c:	00401825 	move	v1,v0
     590:	10000141 	b	a98 <L80A70040+0x8>
     594:	3062ffff 	andi	v0,v1,0xffff

00000598 <L80A6FB48>:
     598:	24080019 	li	t0,25
     59c:	a0680693 	sb	t0,1683(v1)
     5a0:	1000013d 	b	a98 <L80A70040+0x8>
     5a4:	2402700c 	li	v0,28684

000005a8 <L80A6FB58>:
     5a8:	3c020000 	lui	v0,0x0
     5ac:	24420000 	addiu	v0,v0,0
     5b0:	94490ee4 	lhu	t1,3812(v0)
     5b4:	2403704a 	li	v1,28746
     5b8:	312a0001 	andi	t2,t1,0x1
     5bc:	51400004 	beqzl	t2,5d0 <L80A6FB58+0x28>
     5c0:	944b0f10 	lhu	t3,3856(v0)
     5c4:	10000134 	b	a98 <L80A70040+0x8>
     5c8:	3062ffff 	andi	v0,v1,0xffff
     5cc:	944b0f10 	lhu	t3,3856(v0)
     5d0:	24027021 	li	v0,28705
     5d4:	316c0040 	andi	t4,t3,0x40
     5d8:	11800003 	beqz	t4,5e8 <L80A6FB58+0x40>
     5dc:	00000000 	nop
     5e0:	10000001 	b	5e8 <L80A6FB58+0x40>
     5e4:	24027022 	li	v0,28706
     5e8:	00401825 	move	v1,v0
     5ec:	1000012a 	b	a98 <L80A70040+0x8>
     5f0:	3062ffff 	andi	v0,v1,0xffff

000005f4 <L80A6FBA4>:
     5f4:	848200a4 	lh	v0,164(a0)
     5f8:	2401002a 	li	at,42
     5fc:	54410004 	bnel	v0,at,610 <L80A6FBA4+0x1c>
     600:	24010052 	li	at,82
     604:	10000124 	b	a98 <L80A70040+0x8>
     608:	24025088 	li	v0,20616
     60c:	24010052 	li	at,82
     610:	14410003 	bne	v0,at,620 <L80A6FBA4+0x2c>
     614:	00000000 	nop
     618:	1000011f 	b	a98 <L80A70040+0x8>
     61c:	24025087 	li	v0,20615
     620:	3c020000 	lui	v0,0x0
     624:	24420000 	addiu	v0,v0,0
     628:	944d0ee4 	lhu	t5,3812(v0)
     62c:	2403704d 	li	v1,28749
     630:	31ae0001 	andi	t6,t5,0x1
     634:	51c00004 	beqzl	t6,648 <L80A6FBA4+0x54>
     638:	944f0f10 	lhu	t7,3856(v0)
     63c:	10000116 	b	a98 <L80A70040+0x8>
     640:	3062ffff 	andi	v0,v1,0xffff
     644:	944f0f10 	lhu	t7,3856(v0)
     648:	24027027 	li	v0,28711
     64c:	31f80080 	andi	t8,t7,0x80
     650:	13000003 	beqz	t8,660 <L80A6FBA4+0x6c>
     654:	00000000 	nop
     658:	10000001 	b	660 <L80A6FBA4+0x6c>
     65c:	24027028 	li	v0,28712
     660:	00401825 	move	v1,v0
     664:	1000010c 	b	a98 <L80A70040+0x8>
     668:	3062ffff 	andi	v0,v1,0xffff

0000066c <L80A6FC1C>:
     66c:	3c020000 	lui	v0,0x0
     670:	24420000 	addiu	v0,v0,0
     674:	94590ee4 	lhu	t9,3812(v0)
     678:	33280001 	andi	t0,t9,0x1
     67c:	5100000c 	beqzl	t0,6b0 <L80A6FC1C+0x44>
     680:	944b0f10 	lhu	t3,3856(v0)
     684:	94490f10 	lhu	t1,3856(v0)
     688:	24037048 	li	v1,28744
     68c:	312a0200 	andi	t2,t1,0x200
     690:	11400004 	beqz	t2,6a4 <L80A6FC1C+0x38>
     694:	00000000 	nop
     698:	2403701e 	li	v1,28702
     69c:	100000fe 	b	a98 <L80A70040+0x8>
     6a0:	3062ffff 	andi	v0,v1,0xffff
     6a4:	100000fc 	b	a98 <L80A70040+0x8>
     6a8:	3062ffff 	andi	v0,v1,0xffff
     6ac:	944b0f10 	lhu	t3,3856(v0)
     6b0:	2403701d 	li	v1,28701
     6b4:	316c0100 	andi	t4,t3,0x100
     6b8:	11800004 	beqz	t4,6cc <L80A6FC1C+0x60>
     6bc:	00000000 	nop
     6c0:	2403701e 	li	v1,28702
     6c4:	100000f4 	b	a98 <L80A70040+0x8>
     6c8:	3062ffff 	andi	v0,v1,0xffff
     6cc:	100000f2 	b	a98 <L80A70040+0x8>
     6d0:	3062ffff 	andi	v0,v1,0xffff

000006d4 <L80A6FC84>:
     6d4:	848200a4 	lh	v0,164(a0)
     6d8:	2401002a 	li	at,42
     6dc:	5441000e 	bnel	v0,at,718 <L80A6FC84+0x44>
     6e0:	24010052 	li	at,82
     6e4:	3c020000 	lui	v0,0x0
     6e8:	24420000 	addiu	v0,v0,0
     6ec:	944d0ee8 	lhu	t5,3816(v0)
     6f0:	24035081 	li	v1,20609
     6f4:	31ae0400 	andi	t6,t5,0x400
     6f8:	11c00004 	beqz	t6,70c <L80A6FC84+0x38>
     6fc:	00000000 	nop
     700:	24035082 	li	v1,20610
     704:	100000e4 	b	a98 <L80A70040+0x8>
     708:	3062ffff 	andi	v0,v1,0xffff
     70c:	100000e2 	b	a98 <L80A70040+0x8>
     710:	3062ffff 	andi	v0,v1,0xffff
     714:	24010052 	li	at,82
     718:	1441000e 	bne	v0,at,754 <L80A6FC84+0x80>
     71c:	3c0f0000 	lui	t7,0x0
     720:	3c020000 	lui	v0,0x0
     724:	24420000 	addiu	v0,v0,0
     728:	8c5800a4 	lw	t8,164(v0)
     72c:	8def0010 	lw	t7,16(t7)
     730:	2403507f 	li	v1,20607
     734:	01f8c824 	and	t9,t7,t8
     738:	13200004 	beqz	t9,74c <L80A6FC84+0x78>
     73c:	00000000 	nop
     740:	24035080 	li	v1,20608
     744:	100000d4 	b	a98 <L80A70040+0x8>
     748:	3062ffff 	andi	v0,v1,0xffff
     74c:	100000d2 	b	a98 <L80A70040+0x8>
     750:	3062ffff 	andi	v0,v1,0xffff
     754:	3c020000 	lui	v0,0x0
     758:	24420000 	addiu	v0,v0,0
     75c:	94480ee4 	lhu	t0,3812(v0)
     760:	24037049 	li	v1,28745
     764:	31090001 	andi	t1,t0,0x1
     768:	51200004 	beqzl	t1,77c <L80A6FC84+0xa8>
     76c:	944a0f10 	lhu	t2,3856(v0)
     770:	100000c9 	b	a98 <L80A70040+0x8>
     774:	3062ffff 	andi	v0,v1,0xffff
     778:	944a0f10 	lhu	t2,3856(v0)
     77c:	2402701f 	li	v0,28703
     780:	314b0400 	andi	t3,t2,0x400
     784:	11600003 	beqz	t3,794 <L80A6FC84+0xc0>
     788:	00000000 	nop
     78c:	10000001 	b	794 <L80A6FC84+0xc0>
     790:	24027020 	li	v0,28704
     794:	00401825 	move	v1,v0
     798:	100000bf 	b	a98 <L80A70040+0x8>
     79c:	3062ffff 	andi	v0,v1,0xffff

000007a0 <L80A6FD50>:
     7a0:	848200a4 	lh	v0,164(a0)
     7a4:	24010037 	li	at,55
     7a8:	5441000e 	bnel	v0,at,7e4 <L80A6FD50+0x44>
     7ac:	24010052 	li	at,82
     7b0:	3c020000 	lui	v0,0x0
     7b4:	24420000 	addiu	v0,v0,0
     7b8:	944c0ee8 	lhu	t4,3816(v0)
     7bc:	2403507d 	li	v1,20605
     7c0:	318d0400 	andi	t5,t4,0x400
     7c4:	11a00004 	beqz	t5,7d8 <L80A6FD50+0x38>
     7c8:	00000000 	nop
     7cc:	2403507e 	li	v1,20606
     7d0:	100000b1 	b	a98 <L80A70040+0x8>
     7d4:	3062ffff 	andi	v0,v1,0xffff
     7d8:	100000af 	b	a98 <L80A70040+0x8>
     7dc:	3062ffff 	andi	v0,v1,0xffff
     7e0:	24010052 	li	at,82
     7e4:	1441000e 	bne	v0,at,820 <L80A6FD50+0x80>
     7e8:	3c0e0000 	lui	t6,0x0
     7ec:	3c020000 	lui	v0,0x0
     7f0:	24420000 	addiu	v0,v0,0
     7f4:	8c4f00a4 	lw	t7,164(v0)
     7f8:	8dce0010 	lw	t6,16(t6)
     7fc:	2403507b 	li	v1,20603
     800:	01cfc024 	and	t8,t6,t7
     804:	13000004 	beqz	t8,818 <L80A6FD50+0x78>
     808:	00000000 	nop
     80c:	2403507c 	li	v1,20604
     810:	100000a1 	b	a98 <L80A70040+0x8>
     814:	3062ffff 	andi	v0,v1,0xffff
     818:	1000009f 	b	a98 <L80A70040+0x8>
     81c:	3062ffff 	andi	v0,v1,0xffff
     820:	3c020000 	lui	v0,0x0
     824:	24420000 	addiu	v0,v0,0
     828:	94590ee4 	lhu	t9,3812(v0)
     82c:	24037046 	li	v1,28742
     830:	33280001 	andi	t0,t9,0x1
     834:	51000004 	beqzl	t0,848 <L80A6FD50+0xa8>
     838:	94490f10 	lhu	t1,3856(v0)
     83c:	10000096 	b	a98 <L80A70040+0x8>
     840:	3062ffff 	andi	v0,v1,0xffff
     844:	94490f10 	lhu	t1,3856(v0)
     848:	24027018 	li	v0,28696
     84c:	312a2000 	andi	t2,t1,0x2000
     850:	11400003 	beqz	t2,860 <L80A6FD50+0xc0>
     854:	00000000 	nop
     858:	10000001 	b	860 <L80A6FD50+0xc0>
     85c:	24027019 	li	v0,28697
     860:	00401825 	move	v1,v0
     864:	1000008c 	b	a98 <L80A70040+0x8>
     868:	3062ffff 	andi	v0,v1,0xffff

0000086c <L80A6FE1C>:
     86c:	3c020000 	lui	v0,0x0
     870:	24420000 	addiu	v0,v0,0
     874:	944b0f08 	lhu	t3,3848(v0)
     878:	24037014 	li	v1,28692
     87c:	316c0800 	andi	t4,t3,0x800
     880:	1180000b 	beqz	t4,8b0 <L80A6FE1C+0x44>
     884:	00000000 	nop
     888:	944d0f10 	lhu	t5,3856(v0)
     88c:	240270a4 	li	v0,28836
     890:	31ae1000 	andi	t6,t5,0x1000
     894:	11c00004 	beqz	t6,8a8 <L80A6FE1C+0x3c>
     898:	00000000 	nop
     89c:	24027014 	li	v0,28692
     8a0:	1000007d 	b	a98 <L80A70040+0x8>
     8a4:	3042ffff 	andi	v0,v0,0xffff
     8a8:	1000007b 	b	a98 <L80A70040+0x8>
     8ac:	3042ffff 	andi	v0,v0,0xffff
     8b0:	10000079 	b	a98 <L80A70040+0x8>
     8b4:	3062ffff 	andi	v0,v1,0xffff

000008b8 <L80A6FE68>:
     8b8:	848f00a4 	lh	t7,164(a0)
     8bc:	24010052 	li	at,82
     8c0:	3c020000 	lui	v0,0x0
     8c4:	15e1000c 	bne	t7,at,8f8 <L80A6FE68+0x40>
     8c8:	24420000 	addiu	v0,v0,0
     8cc:	3c020000 	lui	v0,0x0
     8d0:	24420000 	addiu	v0,v0,0
     8d4:	8c580010 	lw	t8,16(v0)
     8d8:	24035083 	li	v1,20611
     8dc:	13000004 	beqz	t8,8f0 <L80A6FE68+0x38>
     8e0:	00000000 	nop
     8e4:	24035084 	li	v1,20612
     8e8:	1000006b 	b	a98 <L80A70040+0x8>
     8ec:	3062ffff 	andi	v0,v1,0xffff
     8f0:	10000069 	b	a98 <L80A70040+0x8>
     8f4:	3062ffff 	andi	v0,v1,0xffff
     8f8:	94590ee4 	lhu	t9,3812(v0)
     8fc:	24037015 	li	v1,28693
     900:	33280001 	andi	t0,t9,0x1
     904:	11000004 	beqz	t0,918 <L80A6FE68+0x60>
     908:	00000000 	nop
     90c:	24037044 	li	v1,28740
     910:	10000061 	b	a98 <L80A70040+0x8>
     914:	3062ffff 	andi	v0,v1,0xffff
     918:	1000005f 	b	a98 <L80A70040+0x8>
     91c:	3062ffff 	andi	v0,v1,0xffff

00000920 <L80A6FED0>:
     920:	1000005d 	b	a98 <L80A70040+0x8>
     924:	24027055 	li	v0,28757

00000928 <L80A6FED8>:
     928:	1000005b 	b	a98 <L80A70040+0x8>
     92c:	24027089 	li	v0,28809

00000930 <L80A6FEE0>:
     930:	10000059 	b	a98 <L80A70040+0x8>
     934:	2402708a 	li	v0,28810

00000938 <L80A6FEE8>:
     938:	10000057 	b	a98 <L80A70040+0x8>
     93c:	2402700e 	li	v0,28686

00000940 <L80A6FEF0>:
     940:	3c020000 	lui	v0,0x0
     944:	24420000 	addiu	v0,v0,0
     948:	8c490004 	lw	t1,4(v0)
     94c:	51200019 	beqzl	t1,9b4 <L80A6FEF0+0x74>
     950:	8c4f0010 	lw	t7,16(v0)
     954:	8c4a0010 	lw	t2,16(v0)
     958:	5540000c 	bnezl	t2,98c <L80A6FEF0+0x4c>
     95c:	944d0f24 	lhu	t5,3876(v0)
     960:	944b0f24 	lhu	t3,3876(v0)
     964:	24035057 	li	v1,20567
     968:	316c0001 	andi	t4,t3,0x1
     96c:	11800004 	beqz	t4,980 <L80A6FEF0+0x40>
     970:	00000000 	nop
     974:	24035058 	li	v1,20568
     978:	10000047 	b	a98 <L80A70040+0x8>
     97c:	3062ffff 	andi	v0,v1,0xffff
     980:	10000045 	b	a98 <L80A70040+0x8>
     984:	3062ffff 	andi	v0,v1,0xffff
     988:	944d0f24 	lhu	t5,3876(v0)
     98c:	24035059 	li	v1,20569
     990:	31ae0002 	andi	t6,t5,0x2
     994:	11c00004 	beqz	t6,9a8 <L80A6FEF0+0x68>
     998:	00000000 	nop
     99c:	2403505a 	li	v1,20570
     9a0:	1000003d 	b	a98 <L80A70040+0x8>
     9a4:	3062ffff 	andi	v0,v1,0xffff
     9a8:	1000003b 	b	a98 <L80A70040+0x8>
     9ac:	3062ffff 	andi	v0,v1,0xffff
     9b0:	8c4f0010 	lw	t7,16(v0)
     9b4:	15e0000b 	bnez	t7,9e4 <L80A6FEF0+0xa4>
     9b8:	00000000 	nop
     9bc:	94580f24 	lhu	t8,3876(v0)
     9c0:	2403505b 	li	v1,20571
     9c4:	33190004 	andi	t9,t8,0x4
     9c8:	13200004 	beqz	t9,9dc <L80A6FEF0+0x9c>
     9cc:	00000000 	nop
     9d0:	2403505c 	li	v1,20572
     9d4:	10000030 	b	a98 <L80A70040+0x8>
     9d8:	3062ffff 	andi	v0,v1,0xffff
     9dc:	1000002e 	b	a98 <L80A70040+0x8>
     9e0:	3062ffff 	andi	v0,v1,0xffff
     9e4:	1000002c 	b	a98 <L80A70040+0x8>
     9e8:	24025058 	li	v0,20568

000009ec <L80A6FF9C>:
     9ec:	3c020000 	lui	v0,0x0
     9f0:	24420000 	addiu	v0,v0,0
     9f4:	8c480004 	lw	t0,4(v0)
     9f8:	51000013 	beqzl	t0,a48 <L80A6FF9C+0x5c>
     9fc:	94cd0330 	lhu	t5,816(a2)
     a00:	94490ee4 	lhu	t1,3812(v0)
     a04:	2403505f 	li	v1,20575
     a08:	312a0001 	andi	t2,t1,0x1
     a0c:	51400004 	beqzl	t2,a20 <L80A6FF9C+0x34>
     a10:	944b0f24 	lhu	t3,3876(v0)
     a14:	10000020 	b	a98 <L80A70040+0x8>
     a18:	3062ffff 	andi	v0,v1,0xffff
     a1c:	944b0f24 	lhu	t3,3876(v0)
     a20:	2402505d 	li	v0,20573
     a24:	316c0008 	andi	t4,t3,0x8
     a28:	11800003 	beqz	t4,a38 <L80A6FF9C+0x4c>
     a2c:	00000000 	nop
     a30:	10000001 	b	a38 <L80A6FF9C+0x4c>
     a34:	2402505e 	li	v0,20574
     a38:	00401825 	move	v1,v0
     a3c:	10000016 	b	a98 <L80A70040+0x8>
     a40:	3062ffff 	andi	v0,v1,0xffff
     a44:	94cd0330 	lhu	t5,816(a2)
     a48:	24035062 	li	v1,20578
     a4c:	31ae0800 	andi	t6,t5,0x800
     a50:	51c00004 	beqzl	t6,a64 <L80A6FF9C+0x78>
     a54:	944f0f24 	lhu	t7,3876(v0)
     a58:	1000000f 	b	a98 <L80A70040+0x8>
     a5c:	3062ffff 	andi	v0,v1,0xffff
     a60:	944f0f24 	lhu	t7,3876(v0)
     a64:	24025060 	li	v0,20576
     a68:	31f80010 	andi	t8,t7,0x10
     a6c:	13000003 	beqz	t8,a7c <L80A6FF9C+0x90>
     a70:	00000000 	nop
     a74:	10000001 	b	a7c <L80A6FF9C+0x90>
     a78:	24025061 	li	v0,20577
     a7c:	00401825 	move	v1,v0
     a80:	10000005 	b	a98 <L80A70040+0x8>
     a84:	3062ffff 	andi	v0,v1,0xffff

00000a88 <L80A70038>:
     a88:	10000003 	b	a98 <L80A70040+0x8>
     a8c:	24027120 	li	v0,28960

00000a90 <L80A70040>:
     a90:	10000001 	b	a98 <L80A70040+0x8>
     a94:	24027121 	li	v0,28961
     a98:	8fbf0014 	lw	ra,20(sp)
     a9c:	27bd0020 	addiu	sp,sp,32
     aa0:	03e00008 	jr	ra
     aa4:	00000000 	nop

00000aa8 <func_80A70058>:
     aa8:	27bdffb8 	addiu	sp,sp,-72
     aac:	3c0f0000 	lui	t7,0x0
     ab0:	afbf0024 	sw	ra,36(sp)
     ab4:	afb00020 	sw	s0,32(sp)
     ab8:	afa40048 	sw	a0,72(sp)
     abc:	afa5004c 	sw	a1,76(sp)
     ac0:	25ef0000 	addiu	t7,t7,0
     ac4:	8df90000 	lw	t9,0(t7)
     ac8:	8df80004 	lw	t8,4(t7)
     acc:	27ae003c 	addiu	t6,sp,60
     ad0:	3c090000 	lui	t1,0x0
     ad4:	25290000 	addiu	t1,t1,0
     ad8:	add90000 	sw	t9,0(t6)
     adc:	add80004 	sw	t8,4(t6)
     ae0:	8d2a0004 	lw	t2,4(t1)
     ae4:	8d2b0000 	lw	t3,0(t1)
     ae8:	27a80034 	addiu	t0,sp,52
     aec:	ad0a0004 	sw	t2,4(t0)
     af0:	ad0b0000 	sw	t3,0(t0)
     af4:	8fa40048 	lw	a0,72(sp)
     af8:	0c000000 	jal	0 <func_80A6F5B0>
     afc:	248420d8 	addiu	a0,a0,8408
     b00:	2c41000a 	sltiu	at,v0,10
     b04:	10200135 	beqz	at,fdc <L80A7056C+0x20>
     b08:	00026080 	sll	t4,v0,0x2
     b0c:	3c010000 	lui	at,0x0
     b10:	002c0821 	addu	at,at,t4
     b14:	8c2c0000 	lw	t4,0(at)
     b18:	01800008 	jr	t4
     b1c:	00000000 	nop

00000b20 <L80A700D0>:
     b20:	1000012f 	b	fe0 <L80A7056C+0x24>
     b24:	24020001 	li	v0,1

00000b28 <L80A700D8>:
     b28:	8fa3004c 	lw	v1,76(sp)
     b2c:	2401709e 	li	at,28830
     b30:	9462010e 	lhu	v0,270(v1)
     b34:	1041000e 	beq	v0,at,b70 <L80A700D8+0x48>
     b38:	00408025 	move	s0,v0
     b3c:	2401709f 	li	at,28831
     b40:	1201000b 	beq	s0,at,b70 <L80A700D8+0x48>
     b44:	240170f0 	li	at,28912
     b48:	12010020 	beq	s0,at,bcc <L80A700D8+0xa4>
     b4c:	240170f1 	li	at,28913
     b50:	1201001e 	beq	s0,at,bcc <L80A700D8+0xa4>
     b54:	240170f2 	li	at,28914
     b58:	1201001c 	beq	s0,at,bcc <L80A700D8+0xa4>
     b5c:	240170f3 	li	at,28915
     b60:	5201001b 	beql	s0,at,bd0 <L80A700D8+0xa8>
     b64:	8c680154 	lw	t0,340(v1)
     b68:	1000011d 	b	fe0 <L80A7056C+0x24>
     b6c:	24020001 	li	v0,1
     b70:	806d0215 	lb	t5,533(v1)
     b74:	3c070000 	lui	a3,0x0
     b78:	24e70000 	addiu	a3,a3,0
     b7c:	15a0001e 	bnez	t5,bf8 <L80A700D8+0xd0>
     b80:	2401709f 	li	at,28831
     b84:	14410003 	bne	v0,at,b94 <L80A700D8+0x6c>
     b88:	3c050000 	lui	a1,0x0
     b8c:	10000002 	b	b98 <L80A700D8+0x70>
     b90:	24104802 	li	s0,18434
     b94:	24104806 	li	s0,18438
     b98:	3c0e0000 	lui	t6,0x0
     b9c:	25ce0000 	addiu	t6,t6,0
     ba0:	afae0014 	sw	t6,20(sp)
     ba4:	3204ffff 	andi	a0,s0,0xffff
     ba8:	24a50000 	addiu	a1,a1,0
     bac:	24060004 	li	a2,4
     bb0:	0c000000 	jal	0 <func_80A6F5B0>
     bb4:	afa70010 	sw	a3,16(sp)
     bb8:	8fb8004c 	lw	t8,76(sp)
     bbc:	240f0001 	li	t7,1
     bc0:	24020001 	li	v0,1
     bc4:	10000106 	b	fe0 <L80A7056C+0x24>
     bc8:	a30f0215 	sb	t7,533(t8)
     bcc:	8c680154 	lw	t0,340(v1)
     bd0:	3c190600 	lui	t9,0x600
     bd4:	273933b4 	addiu	t9,t9,13236
     bd8:	13280007 	beq	t9,t0,bf8 <L80A700D8+0xd0>
     bdc:	2464014c 	addiu	a0,v1,332
     be0:	3c050000 	lui	a1,0x0
     be4:	24a50000 	addiu	a1,a1,0
     be8:	0c000000 	jal	0 <func_80A6F5B0>
     bec:	24060017 	li	a2,23
     bf0:	0c000000 	jal	0 <func_80A6F5B0>
     bf4:	24040922 	li	a0,2338
     bf8:	100000f9 	b	fe0 <L80A7056C+0x24>
     bfc:	24020001 	li	v0,1

00000c00 <L80A701B0>:
     c00:	8fa7004c 	lw	a3,76(sp)
     c04:	94e2010e 	lhu	v0,270(a3)
     c08:	28417048 	slti	at,v0,28744
     c0c:	1420001e 	bnez	at,c88 <L80A701B0+0x88>
     c10:	00408025 	move	s0,v0
     c14:	2a0170a0 	slti	at,s0,28832
     c18:	14200010 	bnez	at,c5c <L80A701B0+0x5c>
     c1c:	26098f15 	addiu	t1,s0,-28907
     c20:	2a0170a5 	slti	at,s0,28837
     c24:	14200008 	bnez	at,c48 <L80A701B0+0x48>
     c28:	2d210009 	sltiu	at,t1,9
     c2c:	102000e1 	beqz	at,fb4 <L80A70564>
     c30:	00094880 	sll	t1,t1,0x2
     c34:	3c010000 	lui	at,0x0
     c38:	00290821 	addu	at,at,t1
     c3c:	8c290000 	lw	t1,0(at)
     c40:	01200008 	jr	t1
     c44:	00000000 	nop
     c48:	240170a4 	li	at,28836
     c4c:	12010097 	beq	s0,at,eac <L80A70440+0x1c>
     c50:	3c020000 	lui	v0,0x0
     c54:	100000e2 	b	fe0 <L80A7056C+0x24>
     c58:	00001025 	move	v0,zero
     c5c:	24017048 	li	at,28744
     c60:	1201007e 	beq	s0,at,e5c <L80A703F0+0x1c>
     c64:	3c020000 	lui	v0,0x0
     c68:	2401709e 	li	at,28830
     c6c:	120100be 	beq	s0,at,f68 <L80A704E4+0x34>
     c70:	3c020000 	lui	v0,0x0
     c74:	2401709f 	li	at,28831
     c78:	120100bf 	beq	s0,at,f78 <L80A704E4+0x44>
     c7c:	3c020000 	lui	v0,0x0
     c80:	100000d7 	b	fe0 <L80A7056C+0x24>
     c84:	00001025 	move	v0,zero
     c88:	2a017028 	slti	at,s0,28712
     c8c:	14200009 	bnez	at,cb4 <L80A701B0+0xb4>
     c90:	260a8fea 	addiu	t2,s0,-28694
     c94:	24017045 	li	at,28741
     c98:	1201003a 	beq	s0,at,d84 <L80A70318+0x1c>
     c9c:	3c020000 	lui	v0,0x0
     ca0:	24017047 	li	at,28743
     ca4:	12010044 	beq	s0,at,db8 <L80A7034C+0x1c>
     ca8:	3c020000 	lui	v0,0x0
     cac:	100000cc 	b	fe0 <L80A7056C+0x24>
     cb0:	00001025 	move	v0,zero
     cb4:	2a01508c 	slti	at,s0,20620
     cb8:	14200009 	bnez	at,ce0 <L80A701B0+0xe0>
     cbc:	260bafa9 	addiu	t3,s0,-20567
     cc0:	2d410012 	sltiu	at,t2,18
     cc4:	102000bb 	beqz	at,fb4 <L80A70564>
     cc8:	000a5080 	sll	t2,t2,0x2
     ccc:	3c010000 	lui	at,0x0
     cd0:	002a0821 	addu	at,at,t2
     cd4:	8c2a0000 	lw	t2,0(at)
     cd8:	01400008 	jr	t2
     cdc:	00000000 	nop
     ce0:	2a015061 	slti	at,s0,20577
     ce4:	14200005 	bnez	at,cfc <L80A701B0+0xfc>
     ce8:	2401508b 	li	at,20619
     cec:	12010098 	beq	s0,at,f50 <L80A704E4+0x1c>
     cf0:	3c020000 	lui	v0,0x0
     cf4:	100000ba 	b	fe0 <L80A7056C+0x24>
     cf8:	00001025 	move	v0,zero
     cfc:	2d61000a 	sltiu	at,t3,10
     d00:	102000ac 	beqz	at,fb4 <L80A70564>
     d04:	000b5880 	sll	t3,t3,0x2
     d08:	3c010000 	lui	at,0x0
     d0c:	002b0821 	addu	at,at,t3
     d10:	8c2b0000 	lw	t3,0(at)
     d14:	01600008 	jr	t3
     d18:	00000000 	nop

00000d1c <L80A702CC>:
     d1c:	00026040 	sll	t4,v0,0x1
     d20:	03ac2021 	addu	a0,sp,t4
     d24:	3c01ffff 	lui	at,0xffff
     d28:	00240821 	addu	at,at,a0
     d2c:	0c000000 	jal	0 <func_80A6F5B0>
     d30:	84241e54 	lh	a0,7764(at)
     d34:	8fa4004c 	lw	a0,76(sp)
     d38:	3c050000 	lui	a1,0x0
     d3c:	24a50000 	addiu	a1,a1,0
     d40:	24060011 	li	a2,17
     d44:	0c000000 	jal	0 <func_80A6F5B0>
     d48:	2484014c 	addiu	a0,a0,332
     d4c:	8fa40048 	lw	a0,72(sp)
     d50:	24060014 	li	a2,20
     d54:	2407001e 	li	a3,30
     d58:	0c000000 	jal	0 <func_80A6F5B0>
     d5c:	8c851c44 	lw	a1,7236(a0)
     d60:	1000009f 	b	fe0 <L80A7056C+0x24>
     d64:	00001025 	move	v0,zero

00000d68 <L80A70318>:
     d68:	3c020000 	lui	v0,0x0
     d6c:	24420000 	addiu	v0,v0,0
     d70:	944d0f10 	lhu	t5,3856(v0)
     d74:	35ae0001 	ori	t6,t5,0x1
     d78:	a44e0f10 	sh	t6,3856(v0)
     d7c:	10000098 	b	fe0 <L80A7056C+0x24>
     d80:	00001025 	move	v0,zero
     d84:	24420000 	addiu	v0,v0,0
     d88:	944f0f10 	lhu	t7,3856(v0)
     d8c:	35f80002 	ori	t8,t7,0x2
     d90:	a4580f10 	sh	t8,3856(v0)
     d94:	10000092 	b	fe0 <L80A7056C+0x24>
     d98:	00001025 	move	v0,zero

00000d9c <L80A7034C>:
     d9c:	3c020000 	lui	v0,0x0
     da0:	24420000 	addiu	v0,v0,0
     da4:	94590f10 	lhu	t9,3856(v0)
     da8:	37280004 	ori	t0,t9,0x4
     dac:	a4480f10 	sh	t0,3856(v0)
     db0:	1000008b 	b	fe0 <L80A7056C+0x24>
     db4:	00001025 	move	v0,zero
     db8:	24420000 	addiu	v0,v0,0
     dbc:	94490f10 	lhu	t1,3856(v0)
     dc0:	352a0008 	ori	t2,t1,0x8
     dc4:	a44a0f10 	sh	t2,3856(v0)
     dc8:	10000085 	b	fe0 <L80A7056C+0x24>
     dcc:	00001025 	move	v0,zero

00000dd0 <L80A70380>:
     dd0:	3c020000 	lui	v0,0x0
     dd4:	24420000 	addiu	v0,v0,0
     dd8:	944b0f10 	lhu	t3,3856(v0)
     ddc:	356c0010 	ori	t4,t3,0x10
     de0:	a44c0f10 	sh	t4,3856(v0)
     de4:	1000007e 	b	fe0 <L80A7056C+0x24>
     de8:	00001025 	move	v0,zero

00000dec <L80A7039C>:
     dec:	3c020000 	lui	v0,0x0
     df0:	24420000 	addiu	v0,v0,0
     df4:	944d0f10 	lhu	t5,3856(v0)
     df8:	35ae0020 	ori	t6,t5,0x20
     dfc:	a44e0f10 	sh	t6,3856(v0)
     e00:	10000077 	b	fe0 <L80A7056C+0x24>
     e04:	00001025 	move	v0,zero

00000e08 <L80A703B8>:
     e08:	3c020000 	lui	v0,0x0
     e0c:	24420000 	addiu	v0,v0,0
     e10:	944f0f10 	lhu	t7,3856(v0)
     e14:	35f80040 	ori	t8,t7,0x40
     e18:	a4580f10 	sh	t8,3856(v0)
     e1c:	10000070 	b	fe0 <L80A7056C+0x24>
     e20:	00001025 	move	v0,zero

00000e24 <L80A703D4>:
     e24:	3c020000 	lui	v0,0x0
     e28:	24420000 	addiu	v0,v0,0
     e2c:	94590f10 	lhu	t9,3856(v0)
     e30:	37280080 	ori	t0,t9,0x80
     e34:	a4480f10 	sh	t0,3856(v0)
     e38:	10000069 	b	fe0 <L80A7056C+0x24>
     e3c:	00001025 	move	v0,zero

00000e40 <L80A703F0>:
     e40:	3c020000 	lui	v0,0x0
     e44:	24420000 	addiu	v0,v0,0
     e48:	94490f10 	lhu	t1,3856(v0)
     e4c:	352a0100 	ori	t2,t1,0x100
     e50:	a44a0f10 	sh	t2,3856(v0)
     e54:	10000062 	b	fe0 <L80A7056C+0x24>
     e58:	00001025 	move	v0,zero
     e5c:	24420000 	addiu	v0,v0,0
     e60:	944b0f10 	lhu	t3,3856(v0)
     e64:	356c0200 	ori	t4,t3,0x200
     e68:	a44c0f10 	sh	t4,3856(v0)
     e6c:	1000005c 	b	fe0 <L80A7056C+0x24>
     e70:	00001025 	move	v0,zero

00000e74 <L80A70424>:
     e74:	3c020000 	lui	v0,0x0
     e78:	24420000 	addiu	v0,v0,0
     e7c:	944d0f10 	lhu	t5,3856(v0)
     e80:	35ae0400 	ori	t6,t5,0x400
     e84:	a44e0f10 	sh	t6,3856(v0)
     e88:	10000055 	b	fe0 <L80A7056C+0x24>
     e8c:	00001025 	move	v0,zero

00000e90 <L80A70440>:
     e90:	3c020000 	lui	v0,0x0
     e94:	24420000 	addiu	v0,v0,0
     e98:	944f0f10 	lhu	t7,3856(v0)
     e9c:	35f82000 	ori	t8,t7,0x2000
     ea0:	a4580f10 	sh	t8,3856(v0)
     ea4:	1000004e 	b	fe0 <L80A7056C+0x24>
     ea8:	00001025 	move	v0,zero
     eac:	24420000 	addiu	v0,v0,0
     eb0:	94590f10 	lhu	t9,3856(v0)
     eb4:	37281000 	ori	t0,t9,0x1000
     eb8:	a4480f10 	sh	t0,3856(v0)
     ebc:	10000048 	b	fe0 <L80A7056C+0x24>
     ec0:	00001025 	move	v0,zero

00000ec4 <L80A70474>:
     ec4:	3c020000 	lui	v0,0x0
     ec8:	24420000 	addiu	v0,v0,0
     ecc:	94490f24 	lhu	t1,3876(v0)
     ed0:	352a0001 	ori	t2,t1,0x1
     ed4:	a44a0f24 	sh	t2,3876(v0)
     ed8:	10000041 	b	fe0 <L80A7056C+0x24>
     edc:	00001025 	move	v0,zero

00000ee0 <L80A70490>:
     ee0:	3c020000 	lui	v0,0x0
     ee4:	24420000 	addiu	v0,v0,0
     ee8:	944b0f24 	lhu	t3,3876(v0)
     eec:	356c0002 	ori	t4,t3,0x2
     ef0:	a44c0f24 	sh	t4,3876(v0)
     ef4:	1000003a 	b	fe0 <L80A7056C+0x24>
     ef8:	00001025 	move	v0,zero

00000efc <L80A704AC>:
     efc:	3c020000 	lui	v0,0x0
     f00:	24420000 	addiu	v0,v0,0
     f04:	944d0f24 	lhu	t5,3876(v0)
     f08:	35ae0004 	ori	t6,t5,0x4
     f0c:	a44e0f24 	sh	t6,3876(v0)
     f10:	10000033 	b	fe0 <L80A7056C+0x24>
     f14:	00001025 	move	v0,zero

00000f18 <L80A704C8>:
     f18:	3c020000 	lui	v0,0x0
     f1c:	24420000 	addiu	v0,v0,0
     f20:	944f0f24 	lhu	t7,3876(v0)
     f24:	35f80008 	ori	t8,t7,0x8
     f28:	a4580f24 	sh	t8,3876(v0)
     f2c:	1000002c 	b	fe0 <L80A7056C+0x24>
     f30:	00001025 	move	v0,zero

00000f34 <L80A704E4>:
     f34:	3c020000 	lui	v0,0x0
     f38:	24420000 	addiu	v0,v0,0
     f3c:	94590f24 	lhu	t9,3876(v0)
     f40:	37280010 	ori	t0,t9,0x10
     f44:	a4480f24 	sh	t0,3876(v0)
     f48:	10000025 	b	fe0 <L80A7056C+0x24>
     f4c:	00001025 	move	v0,zero
     f50:	24420000 	addiu	v0,v0,0
     f54:	94490f10 	lhu	t1,3856(v0)
     f58:	352a0800 	ori	t2,t1,0x800
     f5c:	a44a0f10 	sh	t2,3856(v0)
     f60:	1000001f 	b	fe0 <L80A7056C+0x24>
     f64:	00001025 	move	v0,zero
     f68:	24420000 	addiu	v0,v0,0
     f6c:	a44013c4 	sh	zero,5060(v0)
     f70:	1000001b 	b	fe0 <L80A7056C+0x24>
     f74:	00001025 	move	v0,zero
     f78:	24420000 	addiu	v0,v0,0
     f7c:	944b0f2a 	lhu	t3,3882(v0)
     f80:	00e02025 	move	a0,a3
     f84:	8fa50048 	lw	a1,72(sp)
     f88:	316c0002 	andi	t4,t3,0x2
     f8c:	11800003 	beqz	t4,f9c <L80A704E4+0x68>
     f90:	2410003e 	li	s0,62
     f94:	10000001 	b	f9c <L80A704E4+0x68>
     f98:	2410004d 	li	s0,77
     f9c:	0c000000 	jal	0 <func_80A6F5B0>
     fa0:	02003025 	move	a2,s0
     fa4:	8fae004c 	lw	t6,76(sp)
     fa8:	3c0d0000 	lui	t5,0x0
     fac:	25ad0000 	addiu	t5,t5,0
     fb0:	adcd0190 	sw	t5,400(t6)

00000fb4 <L80A70564>:
     fb4:	1000000a 	b	fe0 <L80A7056C+0x24>
     fb8:	00001025 	move	v0,zero

00000fbc <L80A7056C>:
     fbc:	0c000000 	jal	0 <func_80A6F5B0>
     fc0:	8fa40048 	lw	a0,72(sp)
     fc4:	14400003 	bnez	v0,fd4 <L80A7056C+0x18>
     fc8:	00000000 	nop
     fcc:	10000004 	b	fe0 <L80A7056C+0x24>
     fd0:	24020001 	li	v0,1
     fd4:	10000002 	b	fe0 <L80A7056C+0x24>
     fd8:	24020002 	li	v0,2
     fdc:	24020001 	li	v0,1
     fe0:	8fbf0024 	lw	ra,36(sp)
     fe4:	8fb00020 	lw	s0,32(sp)
     fe8:	27bd0048 	addiu	sp,sp,72
     fec:	03e00008 	jr	ra
     ff0:	00000000 	nop

00000ff4 <func_80A705A4>:
     ff4:	27bdffe8 	addiu	sp,sp,-24
     ff8:	afbf0014 	sw	ra,20(sp)
     ffc:	8482021a 	lh	v0,538(a0)
    1000:	00803025 	move	a2,a0
    1004:	14400003 	bnez	v0,1014 <func_80A705A4+0x20>
    1008:	244effff 	addiu	t6,v0,-1
    100c:	10000003 	b	101c <func_80A705A4+0x28>
    1010:	00001825 	move	v1,zero
    1014:	a4ce021a 	sh	t6,538(a2)
    1018:	84c3021a 	lh	v1,538(a2)
    101c:	14600020 	bnez	v1,10a0 <func_80A705A4+0xac>
    1020:	3c020000 	lui	v0,0x0
    1024:	84cf001c 	lh	t7,28(a2)
    1028:	84c80218 	lh	t0,536(a2)
    102c:	3c030000 	lui	v1,0x0
    1030:	31f8007f 	andi	t8,t7,0x7f
    1034:	0018c880 	sll	t9,t8,0x2
    1038:	0338c823 	subu	t9,t9,t8
    103c:	0019c880 	sll	t9,t9,0x2
    1040:	00591021 	addu	v0,v0,t9
    1044:	90420000 	lbu	v0,0(v0)
    1048:	25090001 	addiu	t1,t0,1
    104c:	a4c90218 	sh	t1,536(a2)
    1050:	00025080 	sll	t2,v0,0x2
    1054:	01425023 	subu	t2,t2,v0
    1058:	000a5080 	sll	t2,t2,0x2
    105c:	006a1821 	addu	v1,v1,t2
    1060:	8c630000 	lw	v1,0(v1)
    1064:	5060000f 	beqzl	v1,10a4 <func_80A705A4+0xb0>
    1068:	8fbf0014 	lw	ra,20(sp)
    106c:	84cb0218 	lh	t3,536(a2)
    1070:	2404001e 	li	a0,30
    1074:	2405001e 	li	a1,30
    1078:	000b6080 	sll	t4,t3,0x2
    107c:	006c6821 	addu	t5,v1,t4
    1080:	8dae0000 	lw	t6,0(t5)
    1084:	55c00007 	bnezl	t6,10a4 <func_80A705A4+0xb0>
    1088:	8fbf0014 	lw	ra,20(sp)
    108c:	0c000000 	jal	0 <func_80A6F5B0>
    1090:	afa60018 	sw	a2,24(sp)
    1094:	8fa60018 	lw	a2,24(sp)
    1098:	a4c2021a 	sh	v0,538(a2)
    109c:	a4c00218 	sh	zero,536(a2)
    10a0:	8fbf0014 	lw	ra,20(sp)
    10a4:	27bd0018 	addiu	sp,sp,24
    10a8:	03e00008 	jr	ra
    10ac:	00000000 	nop

000010b0 <func_80A70660>:
    10b0:	8482001c 	lh	v0,28(a0)
    10b4:	3c0f0000 	lui	t7,0x0
    10b8:	25ef0000 	addiu	t7,t7,0
    10bc:	3042007f 	andi	v0,v0,0x7f
    10c0:	304200ff 	andi	v0,v0,0xff
    10c4:	00027080 	sll	t6,v0,0x2
    10c8:	01c27021 	addu	t6,t6,v0
    10cc:	000e7040 	sll	t6,t6,0x1
    10d0:	01cf1821 	addu	v1,t6,t7
    10d4:	84780006 	lh	t8,6(v1)
    10d8:	a49801dc 	sh	t8,476(a0)
    10dc:	84790008 	lh	t9,8(v1)
    10e0:	03e00008 	jr	ra
    10e4:	a49901de 	sh	t9,478(a0)

000010e8 <func_80A70698>:
    10e8:	27bdffe0 	addiu	sp,sp,-32
    10ec:	afbf0014 	sw	ra,20(sp)
    10f0:	8483001c 	lh	v1,28(a0)
    10f4:	3c0f0000 	lui	t7,0x0
    10f8:	25ef0000 	addiu	t7,t7,0
    10fc:	3063007f 	andi	v1,v1,0x7f
    1100:	306300ff 	andi	v1,v1,0xff
    1104:	000370c0 	sll	t6,v1,0x3
    1108:	01c37023 	subu	t6,t6,v1
    110c:	000e7080 	sll	t6,t6,0x2
    1110:	01cf1021 	addu	v0,t6,t7
    1114:	c4440000 	lwc1	$f4,0(v0)
    1118:	e48400c4 	swc1	$f4,196(a0)
    111c:	afa40020 	sw	a0,32(sp)
    1120:	afa20018 	sw	v0,24(sp)
    1124:	0c000000 	jal	0 <func_80A6F5B0>
    1128:	8c450010 	lw	a1,16(v0)
    112c:	8fa20018 	lw	v0,24(sp)
    1130:	8fa40020 	lw	a0,32(sp)
    1134:	80580014 	lb	t8,20(v0)
    1138:	848901dc 	lh	t1,476(a0)
    113c:	a098001f 	sb	t8,31(a0)
    1140:	8c480004 	lw	t0,4(v0)
    1144:	44895000 	mtc1	t1,$f10
    1148:	ac880264 	sw	t0,612(a0)
    114c:	8c590008 	lw	t9,8(v0)
    1150:	46805420 	cvt.s.w	$f16,$f10
    1154:	ac990268 	sw	t9,616(a0)
    1158:	8c48000c 	lw	t0,12(v0)
    115c:	ac88026c 	sw	t0,620(a0)
    1160:	c4460018 	lwc1	$f6,24(v0)
    1164:	e486025c 	swc1	$f6,604(a0)
    1168:	c488025c 	lwc1	$f8,604(a0)
    116c:	46104480 	add.s	$f18,$f8,$f16
    1170:	e492025c 	swc1	$f18,604(a0)
    1174:	8fbf0014 	lw	ra,20(sp)
    1178:	27bd0020 	addiu	sp,sp,32
    117c:	03e00008 	jr	ra
    1180:	00000000 	nop

00001184 <func_80A70734>:
    1184:	27bdffe0 	addiu	sp,sp,-32
    1188:	afbf0014 	sw	ra,20(sp)
    118c:	afa50024 	sw	a1,36(sp)
    1190:	c4840024 	lwc1	$f4,36(a0)
    1194:	2403000a 	li	v1,10
    1198:	3c020000 	lui	v0,0x0
    119c:	4600218d 	trunc.w.s	$f6,$f4
    11a0:	24420000 	addiu	v0,v0,0
    11a4:	00803825 	move	a3,a0
    11a8:	3c010001 	lui	at,0x1
    11ac:	440f3000 	mfc1	t7,$f6
    11b0:	34211e60 	ori	at,at,0x1e60
    11b4:	24e6019c 	addiu	a2,a3,412
    11b8:	a7af0018 	sh	t7,24(sp)
    11bc:	c4880028 	lwc1	$f8,40(a0)
    11c0:	87aa0018 	lh	t2,24(sp)
    11c4:	4600428d 	trunc.w.s	$f10,$f8
    11c8:	44195000 	mfc1	t9,$f10
    11cc:	00000000 	nop
    11d0:	a7b9001a 	sh	t9,26(sp)
    11d4:	c490002c 	lwc1	$f16,44(a0)
    11d8:	87b9001a 	lh	t9,26(sp)
    11dc:	4600848d 	trunc.w.s	$f18,$f16
    11e0:	44099000 	mfc1	t1,$f18
    11e4:	00000000 	nop
    11e8:	a7a9001c 	sh	t1,28(sp)
    11ec:	848b001c 	lh	t3,28(a0)
    11f0:	316c007f 	andi	t4,t3,0x7f
    11f4:	01830019 	multu	t4,v1
    11f8:	00006812 	mflo	t5
    11fc:	004d7021 	addu	t6,v0,t5
    1200:	85cf0000 	lh	t7,0(t6)
    1204:	014fc021 	addu	t8,t2,t7
    1208:	a7b80018 	sh	t8,24(sp)
    120c:	8488001c 	lh	t0,28(a0)
    1210:	87aa001c 	lh	t2,28(sp)
    1214:	3109007f 	andi	t1,t0,0x7f
    1218:	01230019 	multu	t1,v1
    121c:	00005812 	mflo	t3
    1220:	004b6021 	addu	t4,v0,t3
    1224:	858d0002 	lh	t5,2(t4)
    1228:	032d7021 	addu	t6,t9,t5
    122c:	a7ae001a 	sh	t6,26(sp)
    1230:	848f001c 	lh	t7,28(a0)
    1234:	27b90018 	addiu	t9,sp,24
    1238:	31f8007f 	andi	t8,t7,0x7f
    123c:	03030019 	multu	t8,v1
    1240:	00004012 	mflo	t0
    1244:	00484821 	addu	t1,v0,t0
    1248:	852b0004 	lh	t3,4(t1)
    124c:	014b6021 	addu	t4,t2,t3
    1250:	a7ac001c 	sh	t4,28(sp)
    1254:	8f2e0000 	lw	t6,0(t9)
    1258:	a88e01e2 	swl	t6,482(a0)
    125c:	b88e01e5 	swr	t6,485(a0)
    1260:	972e0004 	lhu	t6,4(t9)
    1264:	a48e01e6 	sh	t6,486(a0)
    1268:	8fa40024 	lw	a0,36(sp)
    126c:	0c000000 	jal	0 <func_80A6F5B0>
    1270:	00812821 	addu	a1,a0,at
    1274:	8fbf0014 	lw	ra,20(sp)
    1278:	27bd0020 	addiu	sp,sp,32
    127c:	03e00008 	jr	ra
    1280:	00000000 	nop

00001284 <func_80A70834>:
    1284:	27bdffe0 	addiu	sp,sp,-32
    1288:	afbf0014 	sw	ra,20(sp)
    128c:	afa50024 	sw	a1,36(sp)
    1290:	8caf1c44 	lw	t7,7236(a1)
    1294:	00803025 	move	a2,a0
    1298:	24010005 	li	at,5
    129c:	afaf001c 	sw	t7,28(sp)
    12a0:	8498001c 	lh	t8,28(a0)
    12a4:	2404001c 	li	a0,28
    12a8:	3319007f 	andi	t9,t8,0x7f
    12ac:	57210043 	bnel	t9,at,13bc <func_80A70834+0x138>
    12b0:	8fbf0014 	lw	ra,20(sp)
    12b4:	0c000000 	jal	0 <func_80A6F5B0>
    12b8:	afa60020 	sw	a2,32(sp)
    12bc:	14400020 	bnez	v0,1340 <func_80A70834+0xbc>
    12c0:	8fa60020 	lw	a2,32(sp)
    12c4:	2404001d 	li	a0,29
    12c8:	0c000000 	jal	0 <func_80A6F5B0>
    12cc:	afa60020 	sw	a2,32(sp)
    12d0:	1440001b 	bnez	v0,1340 <func_80A70834+0xbc>
    12d4:	8fa60020 	lw	a2,32(sp)
    12d8:	24040019 	li	a0,25
    12dc:	0c000000 	jal	0 <func_80A6F5B0>
    12e0:	afa60020 	sw	a2,32(sp)
    12e4:	14400016 	bnez	v0,1340 <func_80A70834+0xbc>
    12e8:	8fa60020 	lw	a2,32(sp)
    12ec:	8fa40024 	lw	a0,36(sp)
    12f0:	0c000000 	jal	0 <func_80A6F5B0>
    12f4:	afa60020 	sw	a2,32(sp)
    12f8:	2401001b 	li	at,27
    12fc:	10410006 	beq	v0,at,1318 <func_80A70834+0x94>
    1300:	8fa60020 	lw	a2,32(sp)
    1304:	2401001c 	li	at,28
    1308:	10410003 	beq	v0,at,1318 <func_80A70834+0x94>
    130c:	2401001d 	li	at,29
    1310:	14410004 	bne	v0,at,1324 <func_80A70834+0xa0>
    1314:	8fa40024 	lw	a0,36(sp)
    1318:	240870ef 	li	t0,28911
    131c:	10000023 	b	13ac <func_80A70834+0x128>
    1320:	a4c8010e 	sh	t0,270(a2)
    1324:	0c000000 	jal	0 <func_80A6F5B0>
    1328:	afa60020 	sw	a2,32(sp)
    132c:	1440001f 	bnez	v0,13ac <func_80A70834+0x128>
    1330:	8fa60020 	lw	a2,32(sp)
    1334:	240970ed 	li	t1,28909
    1338:	1000001c 	b	13ac <func_80A70834+0x128>
    133c:	a4c9010e 	sh	t1,270(a2)
    1340:	8fa40024 	lw	a0,36(sp)
    1344:	0c000000 	jal	0 <func_80A6F5B0>
    1348:	afa60020 	sw	a2,32(sp)
    134c:	24010018 	li	at,24
    1350:	1041000b 	beq	v0,at,1380 <func_80A70834+0xfc>
    1354:	8fa60020 	lw	a2,32(sp)
    1358:	24010019 	li	at,25
    135c:	10410006 	beq	v0,at,1378 <func_80A70834+0xf4>
    1360:	240a70f0 	li	t2,28912
    1364:	2401001a 	li	at,26
    1368:	10410008 	beq	v0,at,138c <func_80A70834+0x108>
    136c:	240c70f2 	li	t4,28914
    1370:	10000008 	b	1394 <func_80A70834+0x110>
    1374:	8fa40024 	lw	a0,36(sp)
    1378:	1000000c 	b	13ac <func_80A70834+0x128>
    137c:	a4ca010e 	sh	t2,270(a2)
    1380:	240b70f1 	li	t3,28913
    1384:	10000009 	b	13ac <func_80A70834+0x128>
    1388:	a4cb010e 	sh	t3,270(a2)
    138c:	10000007 	b	13ac <func_80A70834+0x128>
    1390:	a4cc010e 	sh	t4,270(a2)
    1394:	0c000000 	jal	0 <func_80A6F5B0>
    1398:	afa60020 	sw	a2,32(sp)
    139c:	14400003 	bnez	v0,13ac <func_80A70834+0x128>
    13a0:	8fa60020 	lw	a2,32(sp)
    13a4:	240d700c 	li	t5,28684
    13a8:	a4cd010e 	sh	t5,270(a2)
    13ac:	94ce010e 	lhu	t6,270(a2)
    13b0:	8faf001c 	lw	t7,28(sp)
    13b4:	a5ee010e 	sh	t6,270(t7)
    13b8:	8fbf0014 	lw	ra,20(sp)
    13bc:	27bd0020 	addiu	sp,sp,32
    13c0:	03e00008 	jr	ra
    13c4:	00000000 	nop

000013c8 <func_80A70978>:
    13c8:	27bdffc8 	addiu	sp,sp,-56
    13cc:	afbf0024 	sw	ra,36(sp)
    13d0:	afb00020 	sw	s0,32(sp)
    13d4:	afa5003c 	sw	a1,60(sp)
    13d8:	848f001c 	lh	t7,28(a0)
    13dc:	00808025 	move	s0,a0
    13e0:	8ca21c44 	lw	v0,7236(a1)
    13e4:	31f8007f 	andi	t8,t7,0x7f
    13e8:	2f010013 	sltiu	at,t8,19
    13ec:	10200018 	beqz	at,1450 <L80A70A00>
    13f0:	0018c080 	sll	t8,t8,0x2
    13f4:	3c010000 	lui	at,0x0
    13f8:	00380821 	addu	at,at,t8
    13fc:	8c380000 	lw	t8,0(at)
    1400:	03000008 	jr	t8
    1404:	00000000 	nop

00001408 <L80A709B8>:
    1408:	861901e8 	lh	t9,488(s0)
    140c:	17200003 	bnez	t9,141c <L80A709B8+0x14>
    1410:	00000000 	nop
    1414:	1000000f 	b	1454 <L80A70A00+0x4>
    1418:	24070001 	li	a3,1
    141c:	1000000d 	b	1454 <L80A70A00+0x4>
    1420:	24070002 	li	a3,2

00001424 <L80A709D4>:
    1424:	1000000b 	b	1454 <L80A70A00+0x4>
    1428:	24070001 	li	a3,1

0000142c <L80A709DC>:
    142c:	10000009 	b	1454 <L80A70A00+0x4>
    1430:	24070004 	li	a3,4

00001434 <L80A709E4>:
    1434:	860801e8 	lh	t0,488(s0)
    1438:	15000003 	bnez	t0,1448 <L80A709E4+0x14>
    143c:	00000000 	nop
    1440:	10000004 	b	1454 <L80A70A00+0x4>
    1444:	24070002 	li	a3,2
    1448:	10000002 	b	1454 <L80A70A00+0x4>
    144c:	24070004 	li	a3,4

00001450 <L80A70A00>:
    1450:	24070002 	li	a3,2
    1454:	8c4a0024 	lw	t2,36(v0)
    1458:	3c0b0000 	lui	t3,0x0
    145c:	02002025 	move	a0,s0
    1460:	ae0a0200 	sw	t2,512(s0)
    1464:	8c490028 	lw	t1,40(v0)
    1468:	260501e8 	addiu	a1,s0,488
    146c:	ae090204 	sw	t1,516(s0)
    1470:	8c4a002c 	lw	t2,44(v0)
    1474:	ae0a0208 	sw	t2,520(s0)
    1478:	8d6b0004 	lw	t3,4(t3)
    147c:	5560000d 	bnezl	t3,14b4 <L80A70A00+0x64>
    1480:	8618001c 	lh	t8,28(s0)
    1484:	860c001c 	lh	t4,28(s0)
    1488:	3c0f0000 	lui	t7,0x0
    148c:	25ef0000 	addiu	t7,t7,0
    1490:	318d007f 	andi	t5,t4,0x7f
    1494:	000d7080 	sll	t6,t5,0x2
    1498:	01cd7023 	subu	t6,t6,t5
    149c:	000e7080 	sll	t6,t6,0x2
    14a0:	01cf1021 	addu	v0,t6,t7
    14a4:	c4440008 	lwc1	$f4,8(v0)
    14a8:	1000000b 	b	14d8 <L80A70A00+0x88>
    14ac:	e60401fc 	swc1	$f4,508(s0)
    14b0:	8618001c 	lh	t8,28(s0)
    14b4:	3c090000 	lui	t1,0x0
    14b8:	25290000 	addiu	t1,t1,0
    14bc:	3319007f 	andi	t9,t8,0x7f
    14c0:	00194080 	sll	t0,t9,0x2
    14c4:	01194023 	subu	t0,t0,t9
    14c8:	00084080 	sll	t0,t0,0x2
    14cc:	01091021 	addu	v0,t0,t1
    14d0:	c4460004 	lwc1	$f6,4(v0)
    14d4:	e60601fc 	swc1	$f6,508(s0)
    14d8:	90460000 	lbu	a2,0(v0)
    14dc:	0c000000 	jal	0 <func_80A6F5B0>
    14e0:	afa50028 	sw	a1,40(sp)
    14e4:	3c0a0000 	lui	t2,0x0
    14e8:	3c0b0000 	lui	t3,0x0
    14ec:	256b0000 	addiu	t3,t3,0
    14f0:	254a0000 	addiu	t2,t2,0
    14f4:	8e07025c 	lw	a3,604(s0)
    14f8:	afab0014 	sw	t3,20(sp)
    14fc:	afaa0010 	sw	t2,16(sp)
    1500:	8fa4003c 	lw	a0,60(sp)
    1504:	02002825 	move	a1,s0
    1508:	0c000000 	jal	0 <func_80A6F5B0>
    150c:	8fa60028 	lw	a2,40(sp)
    1510:	10400003 	beqz	v0,1520 <L80A70A00+0xd0>
    1514:	02002025 	move	a0,s0
    1518:	0c000000 	jal	0 <func_80A6F5B0>
    151c:	8fa5003c 	lw	a1,60(sp)
    1520:	8fbf0024 	lw	ra,36(sp)
    1524:	8fb00020 	lw	s0,32(sp)
    1528:	27bd0038 	addiu	sp,sp,56
    152c:	03e00008 	jr	ra
    1530:	00000000 	nop

00001534 <func_80A70AE4>:
    1534:	84a300a4 	lh	v1,164(a1)
    1538:	28610038 	slti	at,v1,56
    153c:	14200006 	bnez	at,1558 <func_80A70AE4+0x24>
    1540:	246effe2 	addiu	t6,v1,-30
    1544:	24010052 	li	at,82
    1548:	5061000c 	beql	v1,at,157c <func_80A70AE4+0x48>
    154c:	8482001c 	lh	v0,28(a0)
    1550:	10000090 	b	1794 <L80A70D40+0x4>
    1554:	8483001c 	lh	v1,28(a0)
    1558:	2dc1001a 	sltiu	at,t6,26
    155c:	1020008c 	beqz	at,1790 <L80A70D40>
    1560:	000e7080 	sll	t6,t6,0x2
    1564:	3c010000 	lui	at,0x0
    1568:	002e0821 	addu	at,at,t6
    156c:	8c2e0000 	lw	t6,0(at)
    1570:	01c00008 	jr	t6
    1574:	00000000 	nop
    1578:	8482001c 	lh	v0,28(a0)
    157c:	24010009 	li	at,9
    1580:	2405000a 	li	a1,10
    1584:	3042007f 	andi	v0,v0,0x7f
    1588:	1041000b 	beq	v0,at,15b8 <func_80A70AE4+0x84>
    158c:	3c030000 	lui	v1,0x0
    1590:	10a20009 	beq	a1,v0,15b8 <func_80A70AE4+0x84>
    1594:	2401000c 	li	at,12
    1598:	10410007 	beq	v0,at,15b8 <func_80A70AE4+0x84>
    159c:	24010002 	li	at,2
    15a0:	10410005 	beq	v0,at,15b8 <func_80A70AE4+0x84>
    15a4:	24010007 	li	at,7
    15a8:	10410003 	beq	v0,at,15b8 <func_80A70AE4+0x84>
    15ac:	00000000 	nop
    15b0:	03e00008 	jr	ra
    15b4:	24020001 	li	v0,1
    15b8:	24630000 	addiu	v1,v1,0
    15bc:	8c6f0004 	lw	t7,4(v1)
    15c0:	2401000c 	li	at,12
    15c4:	11e00003 	beqz	t7,15d4 <func_80A70AE4+0xa0>
    15c8:	00000000 	nop
    15cc:	03e00008 	jr	ra
    15d0:	24020001 	li	v0,1
    15d4:	10410007 	beq	v0,at,15f4 <func_80A70AE4+0xc0>
    15d8:	00000000 	nop
    15dc:	8c780010 	lw	t8,16(v1)
    15e0:	24010001 	li	at,1
    15e4:	17010003 	bne	t8,at,15f4 <func_80A70AE4+0xc0>
    15e8:	00000000 	nop
    15ec:	03e00008 	jr	ra
    15f0:	00001025 	move	v0,zero
    15f4:	03e00008 	jr	ra
    15f8:	24020001 	li	v0,1

000015fc <func_80A70BAC>:
    15fc:	8482001c 	lh	v0,28(a0)
    1600:	2405000a 	li	a1,10
    1604:	3c030000 	lui	v1,0x0
    1608:	3042007f 	andi	v0,v0,0x7f
    160c:	10a20003 	beq	a1,v0,161c <func_80A70BAC+0x20>
    1610:	24630000 	addiu	v1,v1,0
    1614:	03e00008 	jr	ra
    1618:	24020001 	li	v0,1
    161c:	8c790004 	lw	t9,4(v1)
    1620:	24010001 	li	at,1
    1624:	17210003 	bne	t9,at,1634 <func_80A70BAC+0x38>
    1628:	00000000 	nop
    162c:	03e00008 	jr	ra
    1630:	00001025 	move	v0,zero
    1634:	14a20006 	bne	a1,v0,1650 <func_80A70BAC+0x54>
    1638:	00000000 	nop
    163c:	8c680010 	lw	t0,16(v1)
    1640:	15000003 	bnez	t0,1650 <func_80A70BAC+0x54>
    1644:	00000000 	nop
    1648:	03e00008 	jr	ra
    164c:	00001025 	move	v0,zero
    1650:	03e00008 	jr	ra
    1654:	24020001 	li	v0,1

00001658 <func_80A70C08>:
    1658:	8489001c 	lh	t1,28(a0)
    165c:	3c030000 	lui	v1,0x0
    1660:	24630000 	addiu	v1,v1,0
    1664:	312a007f 	andi	t2,t1,0x7f
    1668:	51400004 	beqzl	t2,167c <func_80A70C08+0x24>
    166c:	8c6b0010 	lw	t3,16(v1)
    1670:	03e00008 	jr	ra
    1674:	24020001 	li	v0,1
    1678:	8c6b0010 	lw	t3,16(v1)
    167c:	15600003 	bnez	t3,168c <func_80A70C08+0x34>
    1680:	00000000 	nop
    1684:	03e00008 	jr	ra
    1688:	00001025 	move	v0,zero
    168c:	03e00008 	jr	ra
    1690:	24020001 	li	v0,1

00001694 <func_80A70C44>:
    1694:	8482001c 	lh	v0,28(a0)
    1698:	3c030000 	lui	v1,0x0
    169c:	24630000 	addiu	v1,v1,0
    16a0:	3042007f 	andi	v0,v0,0x7f
    16a4:	14400009 	bnez	v0,16cc <func_80A70C44+0x38>
    16a8:	24010009 	li	at,9
    16ac:	8c6c0004 	lw	t4,4(v1)
    16b0:	24030001 	li	v1,1
    16b4:	11800003 	beqz	t4,16c4 <func_80A70C44+0x30>
    16b8:	00000000 	nop
    16bc:	03e00008 	jr	ra
    16c0:	00001025 	move	v0,zero
    16c4:	03e00008 	jr	ra
    16c8:	00601025 	move	v0,v1
    16cc:	10410008 	beq	v0,at,16f0 <func_80A70C44+0x5c>
    16d0:	3c030000 	lui	v1,0x0
    16d4:	24010002 	li	at,2
    16d8:	10410005 	beq	v0,at,16f0 <func_80A70C44+0x5c>
    16dc:	24010007 	li	at,7
    16e0:	10410003 	beq	v0,at,16f0 <func_80A70C44+0x5c>
    16e4:	00000000 	nop
    16e8:	03e00008 	jr	ra
    16ec:	24020001 	li	v0,1
    16f0:	24630000 	addiu	v1,v1,0
    16f4:	8c6d0010 	lw	t5,16(v1)
    16f8:	55a00004 	bnezl	t5,170c <func_80A70C44+0x78>
    16fc:	8c6e0004 	lw	t6,4(v1)
    1700:	03e00008 	jr	ra
    1704:	00001025 	move	v0,zero
    1708:	8c6e0004 	lw	t6,4(v1)
    170c:	24010001 	li	at,1
    1710:	15c10003 	bne	t6,at,1720 <func_80A70C44+0x8c>
    1714:	00000000 	nop
    1718:	03e00008 	jr	ra
    171c:	00001025 	move	v0,zero
    1720:	03e00008 	jr	ra
    1724:	24020001 	li	v0,1

00001728 <func_80A70CD8>:
    1728:	848f001c 	lh	t7,28(a0)
    172c:	2401000e 	li	at,14
    1730:	3c030000 	lui	v1,0x0
    1734:	31f8007f 	andi	t8,t7,0x7f
    1738:	13010003 	beq	t8,at,1748 <func_80A70CD8+0x20>
    173c:	24630000 	addiu	v1,v1,0
    1740:	03e00008 	jr	ra
    1744:	24020001 	li	v0,1
    1748:	8c790010 	lw	t9,16(v1)
    174c:	24010001 	li	at,1
    1750:	57210004 	bnel	t9,at,1764 <func_80A70CD8+0x3c>
    1754:	94680ee4 	lhu	t0,3812(v1)
    1758:	03e00008 	jr	ra
    175c:	00001025 	move	v0,zero
    1760:	94680ee4 	lhu	t0,3812(v1)
    1764:	31090001 	andi	t1,t0,0x1
    1768:	11200007 	beqz	t1,1788 <func_80A70CD8+0x60>
    176c:	00000000 	nop
    1770:	946a0edc 	lhu	t2,3804(v1)
    1774:	314b0020 	andi	t3,t2,0x20
    1778:	15600003 	bnez	t3,1788 <func_80A70CD8+0x60>
    177c:	00000000 	nop
    1780:	03e00008 	jr	ra
    1784:	00001025 	move	v0,zero
    1788:	03e00008 	jr	ra
    178c:	24020001 	li	v0,1

00001790 <L80A70D40>:
    1790:	8483001c 	lh	v1,28(a0)
    1794:	24010013 	li	at,19
    1798:	3063007f 	andi	v1,v1,0x7f
    179c:	10610002 	beq	v1,at,17a8 <L80A70D40+0x18>
    17a0:	24010014 	li	at,20
    17a4:	14610007 	bne	v1,at,17c4 <L80A70D40+0x34>
    17a8:	3c030000 	lui	v1,0x0
    17ac:	24630000 	addiu	v1,v1,0
    17b0:	8c6c0004 	lw	t4,4(v1)
    17b4:	55800004 	bnezl	t4,17c8 <L80A70D40+0x38>
    17b8:	24020001 	li	v0,1
    17bc:	03e00008 	jr	ra
    17c0:	00001025 	move	v0,zero
    17c4:	24020001 	li	v0,1
    17c8:	03e00008 	jr	ra
    17cc:	00000000 	nop

000017d0 <EnHy_Init>:
    17d0:	27bdffe0 	addiu	sp,sp,-32
    17d4:	afbf001c 	sw	ra,28(sp)
    17d8:	afb00018 	sw	s0,24(sp)
    17dc:	afa50024 	sw	a1,36(sp)
    17e0:	848e001c 	lh	t6,28(a0)
    17e4:	00808025 	move	s0,a0
    17e8:	31cf007f 	andi	t7,t6,0x7f
    17ec:	29e10015 	slti	at,t7,21
    17f0:	10200009 	beqz	at,1818 <EnHy_Init+0x48>
    17f4:	00000000 	nop
    17f8:	0c000000 	jal	0 <func_80A6F5B0>
    17fc:	00000000 	nop
    1800:	10400005 	beqz	v0,1818 <EnHy_Init+0x48>
    1804:	02002025 	move	a0,s0
    1808:	0c000000 	jal	0 <func_80A6F5B0>
    180c:	8fa50024 	lw	a1,36(sp)
    1810:	54400004 	bnezl	v0,1824 <EnHy_Init+0x54>
    1814:	02002025 	move	a0,s0
    1818:	0c000000 	jal	0 <func_80A6F5B0>
    181c:	02002025 	move	a0,s0
    1820:	02002025 	move	a0,s0
    1824:	0c000000 	jal	0 <func_80A6F5B0>
    1828:	8fa50024 	lw	a1,36(sp)
    182c:	14400003 	bnez	v0,183c <EnHy_Init+0x6c>
    1830:	00000000 	nop
    1834:	0c000000 	jal	0 <func_80A6F5B0>
    1838:	02002025 	move	a0,s0
    183c:	3c180000 	lui	t8,0x0
    1840:	27180000 	addiu	t8,t8,0
    1844:	ae180190 	sw	t8,400(s0)
    1848:	8fbf001c 	lw	ra,28(sp)
    184c:	8fb00018 	lw	s0,24(sp)
    1850:	27bd0020 	addiu	sp,sp,32
    1854:	03e00008 	jr	ra
    1858:	00000000 	nop

0000185c <EnHy_Destroy>:
    185c:	27bdffe8 	addiu	sp,sp,-24
    1860:	00803025 	move	a2,a0
    1864:	afbf0014 	sw	ra,20(sp)
    1868:	00a02025 	move	a0,a1
    186c:	0c000000 	jal	0 <func_80A6F5B0>
    1870:	24c5019c 	addiu	a1,a2,412
    1874:	8fbf0014 	lw	ra,20(sp)
    1878:	27bd0018 	addiu	sp,sp,24
    187c:	03e00008 	jr	ra
    1880:	00000000 	nop

00001884 <func_80A70E34>:
    1884:	27bdffc8 	addiu	sp,sp,-56
    1888:	afbf002c 	sw	ra,44(sp)
    188c:	afb00028 	sw	s0,40(sp)
    1890:	00808025 	move	s0,a0
    1894:	0c000000 	jal	0 <func_80A6F5B0>
    1898:	afa5003c 	sw	a1,60(sp)
    189c:	104000a5 	beqz	v0,1b34 <L80A710CC+0x18>
    18a0:	02002025 	move	a0,s0
    18a4:	0c000000 	jal	0 <func_80A6F5B0>
    18a8:	8fa5003c 	lw	a1,60(sp)
    18ac:	104000a1 	beqz	v0,1b34 <L80A710CC+0x18>
    18b0:	8fa4003c 	lw	a0,60(sp)
    18b4:	820e0198 	lb	t6,408(s0)
    18b8:	3c080001 	lui	t0,0x1
    18bc:	3c018000 	lui	at,0x8000
    18c0:	a20e001e 	sb	t6,30(s0)
    18c4:	820f001e 	lb	t7,30(s0)
    18c8:	3c0d0000 	lui	t5,0x0
    18cc:	3c060000 	lui	a2,0x0
    18d0:	000fc100 	sll	t8,t7,0x4
    18d4:	030fc021 	addu	t8,t8,t7
    18d8:	0018c080 	sll	t8,t8,0x2
    18dc:	0098c821 	addu	t9,a0,t8
    18e0:	01194021 	addu	t0,t0,t9
    18e4:	8d0817b4 	lw	t0,6068(t0)
    18e8:	24190010 	li	t9,16
    18ec:	261802d0 	addiu	t8,s0,720
    18f0:	01014821 	addu	t1,t0,at
    18f4:	3c010000 	lui	at,0x0
    18f8:	ac290018 	sw	t1,24(at)
    18fc:	860a001c 	lh	t2,28(s0)
    1900:	260f0270 	addiu	t7,s0,624
    1904:	2605014c 	addiu	a1,s0,332
    1908:	314b007f 	andi	t3,t2,0x7f
    190c:	000b6080 	sll	t4,t3,0x2
    1910:	018b6023 	subu	t4,t4,t3
    1914:	000c6080 	sll	t4,t4,0x2
    1918:	01ac6821 	addu	t5,t5,t4
    191c:	91ad0000 	lbu	t5,0(t5)
    1920:	afa50034 	sw	a1,52(sp)
    1924:	afaf0010 	sw	t7,16(sp)
    1928:	000d70c0 	sll	t6,t5,0x3
    192c:	00ce3021 	addu	a2,a2,t6
    1930:	8cc60000 	lw	a2,0(a2)
    1934:	afb90018 	sw	t9,24(sp)
    1938:	afb80014 	sw	t8,20(sp)
    193c:	0c000000 	jal	0 <func_80A6F5B0>
    1940:	00003825 	move	a3,zero
    1944:	44800000 	mtc1	zero,$f0
    1948:	3c060000 	lui	a2,0x0
    194c:	24c60000 	addiu	a2,a2,0
    1950:	44050000 	mfc1	a1,$f0
    1954:	44070000 	mfc1	a3,$f0
    1958:	0c000000 	jal	0 <func_80A6F5B0>
    195c:	260400b4 	addiu	a0,s0,180
    1960:	82080199 	lb	t0,409(s0)
    1964:	8fa4003c 	lw	a0,60(sp)
    1968:	3c0b0001 	lui	t3,0x1
    196c:	00084900 	sll	t1,t0,0x4
    1970:	01284821 	addu	t1,t1,t0
    1974:	00094880 	sll	t1,t1,0x2
    1978:	00895021 	addu	t2,a0,t1
    197c:	016a5821 	addu	t3,t3,t2
    1980:	8d6b17b4 	lw	t3,6068(t3)
    1984:	3c018000 	lui	at,0x8000
    1988:	2605019c 	addiu	a1,s0,412
    198c:	01616021 	addu	t4,t3,at
    1990:	3c010000 	lui	at,0x0
    1994:	ac2c0018 	sw	t4,24(at)
    1998:	0c000000 	jal	0 <func_80A6F5B0>
    199c:	afa50030 	sw	a1,48(sp)
    19a0:	3c070000 	lui	a3,0x0
    19a4:	8fa50030 	lw	a1,48(sp)
    19a8:	24e70000 	addiu	a3,a3,0
    19ac:	8fa4003c 	lw	a0,60(sp)
    19b0:	0c000000 	jal	0 <func_80A6F5B0>
    19b4:	02003025 	move	a2,s0
    19b8:	0c000000 	jal	0 <func_80A6F5B0>
    19bc:	02002025 	move	a0,s0
    19c0:	3c060000 	lui	a2,0x0
    19c4:	24c60000 	addiu	a2,a2,0
    19c8:	26040098 	addiu	a0,s0,152
    19cc:	0c000000 	jal	0 <func_80A6F5B0>
    19d0:	00002825 	move	a1,zero
    19d4:	860d001c 	lh	t5,28(s0)
    19d8:	3c060000 	lui	a2,0x0
    19dc:	3c050000 	lui	a1,0x0
    19e0:	31ae007f 	andi	t6,t5,0x7f
    19e4:	000e7880 	sll	t7,t6,0x2
    19e8:	01ee7823 	subu	t7,t7,t6
    19ec:	000f7880 	sll	t7,t7,0x2
    19f0:	00cf3021 	addu	a2,a2,t7
    19f4:	90c60000 	lbu	a2,0(a2)
    19f8:	24a50000 	addiu	a1,a1,0
    19fc:	0c000000 	jal	0 <func_80A6F5B0>
    1a00:	8fa40034 	lw	a0,52(sp)
    1a04:	8fb8003c 	lw	t8,60(sp)
    1a08:	2401001e 	li	at,30
    1a0c:	3c0a0000 	lui	t2,0x0
    1a10:	870200a4 	lh	v0,164(t8)
    1a14:	10410003 	beq	v0,at,1a24 <func_80A70E34+0x1a0>
    1a18:	24010020 	li	at,32
    1a1c:	5441000a 	bnel	v0,at,1a48 <func_80A70E34+0x1c4>
    1a20:	2401002a 	li	at,42
    1a24:	8e190004 	lw	t9,4(s0)
    1a28:	44802000 	mtc1	zero,$f4
    1a2c:	2401ffef 	li	at,-17
    1a30:	03214024 	and	t0,t9,at
    1a34:	ae080004 	sw	t0,4(s0)
    1a38:	e60400f8 	swc1	$f4,248(s0)
    1a3c:	8fa9003c 	lw	t1,60(sp)
    1a40:	852200a4 	lh	v0,164(t1)
    1a44:	2401002a 	li	at,42
    1a48:	14410003 	bne	v0,at,1a58 <func_80A70E34+0x1d4>
    1a4c:	00000000 	nop
    1a50:	954a0ee0 	lhu	t2,3808(t2)
    1a54:	a60a0330 	sh	t2,816(s0)
    1a58:	0c000000 	jal	0 <func_80A6F5B0>
    1a5c:	02002025 	move	a0,s0
    1a60:	8605001c 	lh	a1,28(s0)
    1a64:	8fa4003c 	lw	a0,60(sp)
    1a68:	2406000f 	li	a2,15
    1a6c:	30a50780 	andi	a1,a1,0x780
    1a70:	000529c3 	sra	a1,a1,0x7
    1a74:	00052c00 	sll	a1,a1,0x10
    1a78:	0c000000 	jal	0 <func_80A6F5B0>
    1a7c:	00052c03 	sra	a1,a1,0x10
    1a80:	860b001c 	lh	t3,28(s0)
    1a84:	ae020210 	sw	v0,528(s0)
    1a88:	316c007f 	andi	t4,t3,0x7f
    1a8c:	2d810015 	sltiu	at,t4,21
    1a90:	10200026 	beqz	at,1b2c <L80A710CC+0x10>
    1a94:	000c6080 	sll	t4,t4,0x2
    1a98:	3c010000 	lui	at,0x0
    1a9c:	002c0821 	addu	at,at,t4
    1aa0:	8c2c0000 	lw	t4,0(at)
    1aa4:	01800008 	jr	t4
    1aa8:	00000000 	nop

00001aac <L80A7105C>:
    1aac:	8e0d0210 	lw	t5,528(s0)
    1ab0:	3c0e0000 	lui	t6,0x0
    1ab4:	3c014040 	lui	at,0x4040
    1ab8:	11a00004 	beqz	t5,1acc <L80A7105C+0x20>
    1abc:	25ce0000 	addiu	t6,t6,0
    1ac0:	44813000 	mtc1	at,$f6
    1ac4:	00000000 	nop
    1ac8:	e6060068 	swc1	$f6,104(s0)
    1acc:	10000019 	b	1b34 <L80A710CC+0x18>
    1ad0:	ae0e0190 	sw	t6,400(s0)

00001ad4 <L80A71084>:
    1ad4:	3c0f0000 	lui	t7,0x0
    1ad8:	25ef0000 	addiu	t7,t7,0
    1adc:	a2000195 	sb	zero,405(s0)
    1ae0:	10000014 	b	1b34 <L80A710CC+0x18>
    1ae4:	ae0f0190 	sw	t7,400(s0)

00001ae8 <L80A71098>:
    1ae8:	8fb8003c 	lw	t8,60(sp)
    1aec:	24010020 	li	at,32
    1af0:	3c080000 	lui	t0,0x0
    1af4:	871900a4 	lh	t9,164(t8)
    1af8:	25080000 	addiu	t0,t0,0
    1afc:	17210003 	bne	t9,at,1b0c <L80A710BC>
    1b00:	00000000 	nop
    1b04:	1000000b 	b	1b34 <L80A710CC+0x18>
    1b08:	ae080190 	sw	t0,400(s0)

00001b0c <L80A710BC>:
    1b0c:	3c090000 	lui	t1,0x0
    1b10:	25290000 	addiu	t1,t1,0
    1b14:	10000007 	b	1b34 <L80A710CC+0x18>
    1b18:	ae090190 	sw	t1,400(s0)

00001b1c <L80A710CC>:
    1b1c:	3c0a0000 	lui	t2,0x0
    1b20:	254a0000 	addiu	t2,t2,0
    1b24:	10000003 	b	1b34 <L80A710CC+0x18>
    1b28:	ae0a0190 	sw	t2,400(s0)
    1b2c:	0c000000 	jal	0 <func_80A6F5B0>
    1b30:	02002025 	move	a0,s0
    1b34:	8fbf002c 	lw	ra,44(sp)
    1b38:	8fb00028 	lw	s0,40(sp)
    1b3c:	27bd0038 	addiu	sp,sp,56
    1b40:	03e00008 	jr	ra
    1b44:	00000000 	nop

00001b48 <func_80A710F8>:
    1b48:	27bdffe8 	addiu	sp,sp,-24
    1b4c:	afbf0014 	sw	ra,20(sp)
    1b50:	afa5001c 	sw	a1,28(sp)
    1b54:	848e01e8 	lh	t6,488(a0)
    1b58:	00803825 	move	a3,a0
    1b5c:	3c190000 	lui	t9,0x0
    1b60:	11c0000c 	beqz	t6,1b94 <func_80A710F8+0x4c>
    1b64:	00000000 	nop
    1b68:	8c980154 	lw	t8,340(a0)
    1b6c:	3c0f0600 	lui	t7,0x600
    1b70:	25ef0bfc 	addiu	t7,t7,3068
    1b74:	11f8001f 	beq	t7,t8,1bf4 <func_80A710F8+0xac>
    1b78:	2484014c 	addiu	a0,a0,332
    1b7c:	3c050000 	lui	a1,0x0
    1b80:	24a50000 	addiu	a1,a1,0
    1b84:	0c000000 	jal	0 <func_80A6F5B0>
    1b88:	2406001a 	li	a2,26
    1b8c:	1000001a 	b	1bf8 <func_80A710F8+0xb0>
    1b90:	8fbf0014 	lw	ra,20(sp)
    1b94:	97391400 	lhu	t9,5120(t9)
    1b98:	33280001 	andi	t0,t9,0x1
    1b9c:	5100000d 	beqzl	t0,1bd4 <func_80A710F8+0x8c>
    1ba0:	8cec0154 	lw	t4,340(a3)
    1ba4:	8cea0154 	lw	t2,340(a3)
    1ba8:	3c090600 	lui	t1,0x600
    1bac:	25290fe4 	addiu	t1,t1,4068
    1bb0:	112a0010 	beq	t1,t2,1bf4 <func_80A710F8+0xac>
    1bb4:	24e4014c 	addiu	a0,a3,332
    1bb8:	3c050000 	lui	a1,0x0
    1bbc:	24a50000 	addiu	a1,a1,0
    1bc0:	0c000000 	jal	0 <func_80A6F5B0>
    1bc4:	24060019 	li	a2,25
    1bc8:	1000000b 	b	1bf8 <func_80A710F8+0xb0>
    1bcc:	8fbf0014 	lw	ra,20(sp)
    1bd0:	8cec0154 	lw	t4,340(a3)
    1bd4:	3c0b0600 	lui	t3,0x600
    1bd8:	256b12e8 	addiu	t3,t3,4840
    1bdc:	116c0005 	beq	t3,t4,1bf4 <func_80A710F8+0xac>
    1be0:	24e4014c 	addiu	a0,a3,332
    1be4:	3c050000 	lui	a1,0x0
    1be8:	24a50000 	addiu	a1,a1,0
    1bec:	0c000000 	jal	0 <func_80A6F5B0>
    1bf0:	24060018 	li	a2,24
    1bf4:	8fbf0014 	lw	ra,20(sp)
    1bf8:	27bd0018 	addiu	sp,sp,24
    1bfc:	03e00008 	jr	ra
    1c00:	00000000 	nop

00001c04 <func_80A711B4>:
    1c04:	27bdffd0 	addiu	sp,sp,-48
    1c08:	afbf0024 	sw	ra,36(sp)
    1c0c:	afb00020 	sw	s0,32(sp)
    1c10:	00808025 	move	s0,a0
    1c14:	afa50034 	sw	a1,52(sp)
    1c18:	82060214 	lb	a2,532(s0)
    1c1c:	8e050210 	lw	a1,528(s0)
    1c20:	0c000000 	jal	0 <func_80A6F5B0>
    1c24:	27a7002e 	addiu	a3,sp,46
    1c28:	240e0001 	li	t6,1
    1c2c:	afae0010 	sw	t6,16(sp)
    1c30:	26040032 	addiu	a0,s0,50
    1c34:	87a5002e 	lh	a1,46(sp)
    1c38:	2406000a 	li	a2,10
    1c3c:	240703e8 	li	a3,1000
    1c40:	0c000000 	jal	0 <func_80A6F5B0>
    1c44:	e7a00028 	swc1	$f0,40(sp)
    1c48:	8a180030 	lwl	t8,48(s0)
    1c4c:	c7a20028 	lwc1	$f2,40(sp)
    1c50:	44802000 	mtc1	zero,$f4
    1c54:	9a180033 	lwr	t8,51(s0)
    1c58:	3c01447a 	lui	at,0x447a
    1c5c:	4602203c 	c.lt.s	$f4,$f2
    1c60:	aa1800b4 	swl	t8,180(s0)
    1c64:	ba1800b7 	swr	t8,183(s0)
    1c68:	96180034 	lhu	t8,52(s0)
    1c6c:	45000012 	bc1f	1cb8 <func_80A711B4+0xb4>
    1c70:	a61800b8 	sh	t8,184(s0)
    1c74:	44813000 	mtc1	at,$f6
    1c78:	00000000 	nop
    1c7c:	4606103c 	c.lt.s	$f2,$f6
    1c80:	00000000 	nop
    1c84:	4502000d 	bc1fl	1cbc <func_80A711B4+0xb8>
    1c88:	8fbf0024 	lw	ra,36(sp)
    1c8c:	82190214 	lb	t9,532(s0)
    1c90:	8e0a0210 	lw	t2,528(s0)
    1c94:	27280001 	addiu	t0,t9,1
    1c98:	a2080214 	sb	t0,532(s0)
    1c9c:	914b0000 	lbu	t3,0(t2)
    1ca0:	82090214 	lb	t1,532(s0)
    1ca4:	256cffff 	addiu	t4,t3,-1
    1ca8:	0189082a 	slt	at,t4,t1
    1cac:	50200003 	beqzl	at,1cbc <func_80A711B4+0xb8>
    1cb0:	8fbf0024 	lw	ra,36(sp)
    1cb4:	a2000214 	sb	zero,532(s0)
    1cb8:	8fbf0024 	lw	ra,36(sp)
    1cbc:	8fb00020 	lw	s0,32(sp)
    1cc0:	27bd0030 	addiu	sp,sp,48
    1cc4:	03e00008 	jr	ra
    1cc8:	00000000 	nop

00001ccc <func_80A7127C>:
    1ccc:	27bdffe8 	addiu	sp,sp,-24
    1cd0:	afa40018 	sw	a0,24(sp)
    1cd4:	8fae0018 	lw	t6,24(sp)
    1cd8:	afbf0014 	sw	ra,20(sp)
    1cdc:	afa5001c 	sw	a1,28(sp)
    1ce0:	00a02025 	move	a0,a1
    1ce4:	24070010 	li	a3,16
    1ce8:	25c5021c 	addiu	a1,t6,540
    1cec:	0c000000 	jal	0 <func_80A6F5B0>
    1cf0:	25c6023c 	addiu	a2,t6,572
    1cf4:	8fbf0014 	lw	ra,20(sp)
    1cf8:	27bd0018 	addiu	sp,sp,24
    1cfc:	03e00008 	jr	ra
    1d00:	00000000 	nop

00001d04 <func_80A712B4>:
    1d04:	afa40000 	sw	a0,0(sp)
    1d08:	03e00008 	jr	ra
    1d0c:	afa50004 	sw	a1,4(sp)

00001d10 <func_80A712C0>:
    1d10:	27bdffe0 	addiu	sp,sp,-32
    1d14:	afbf001c 	sw	ra,28(sp)
    1d18:	afb00018 	sw	s0,24(sp)
    1d1c:	afa50024 	sw	a1,36(sp)
    1d20:	3c0142c8 	lui	at,0x42c8
    1d24:	44812000 	mtc1	at,$f4
    1d28:	c4860090 	lwc1	$f6,144(a0)
    1d2c:	00808025 	move	s0,a0
    1d30:	4604303e 	c.le.s	$f6,$f4
    1d34:	00000000 	nop
    1d38:	4502000f 	bc1fl	1d78 <func_80A712C0+0x68>
    1d3c:	8fa40024 	lw	a0,36(sp)
    1d40:	8c8e0210 	lw	t6,528(a0)
    1d44:	3c050000 	lui	a1,0x0
    1d48:	24a50000 	addiu	a1,a1,0
    1d4c:	11c00009 	beqz	t6,1d74 <func_80A712C0+0x64>
    1d50:	2484014c 	addiu	a0,a0,332
    1d54:	0c000000 	jal	0 <func_80A6F5B0>
    1d58:	24060007 	li	a2,7
    1d5c:	3c010000 	lui	at,0x0
    1d60:	c4280000 	lwc1	$f8,0(at)
    1d64:	3c0f0000 	lui	t7,0x0
    1d68:	25ef0000 	addiu	t7,t7,0
    1d6c:	ae0f0190 	sw	t7,400(s0)
    1d70:	e6080068 	swc1	$f8,104(s0)
    1d74:	8fa40024 	lw	a0,36(sp)
    1d78:	2605021c 	addiu	a1,s0,540
    1d7c:	2606023c 	addiu	a2,s0,572
    1d80:	0c000000 	jal	0 <func_80A6F5B0>
    1d84:	24070010 	li	a3,16
    1d88:	8fbf001c 	lw	ra,28(sp)
    1d8c:	8fb00018 	lw	s0,24(sp)
    1d90:	27bd0020 	addiu	sp,sp,32
    1d94:	03e00008 	jr	ra
    1d98:	00000000 	nop

00001d9c <func_80A7134C>:
    1d9c:	27bdffc8 	addiu	sp,sp,-56
    1da0:	afbf0024 	sw	ra,36(sp)
    1da4:	afb00020 	sw	s0,32(sp)
    1da8:	afa5003c 	sw	a1,60(sp)
    1dac:	8c820154 	lw	v0,340(a0)
    1db0:	3c0e0600 	lui	t6,0x600
    1db4:	25ce2160 	addiu	t6,t6,8544
    1db8:	15c20009 	bne	t6,v0,1de0 <func_80A7134C+0x44>
    1dbc:	00808025 	move	s0,a0
    1dc0:	848f01e8 	lh	t7,488(a0)
    1dc4:	3c050000 	lui	a1,0x0
    1dc8:	24a50000 	addiu	a1,a1,0
    1dcc:	11e00004 	beqz	t7,1de0 <func_80A7134C+0x44>
    1dd0:	2484014c 	addiu	a0,a0,332
    1dd4:	0c000000 	jal	0 <func_80A6F5B0>
    1dd8:	24060008 	li	a2,8
    1ddc:	8e020154 	lw	v0,340(s0)
    1de0:	3c180600 	lui	t8,0x600
    1de4:	2718265c 	addiu	t8,t8,9820
    1de8:	17020008 	bne	t8,v0,1e0c <func_80A7134C+0x70>
    1dec:	00000000 	nop
    1df0:	861901e8 	lh	t9,488(s0)
    1df4:	3c050000 	lui	a1,0x0
    1df8:	24a50000 	addiu	a1,a1,0
    1dfc:	17200003 	bnez	t9,1e0c <func_80A7134C+0x70>
    1e00:	2604014c 	addiu	a0,s0,332
    1e04:	0c000000 	jal	0 <func_80A6F5B0>
    1e08:	24060007 	li	a2,7
    1e0c:	3c010000 	lui	at,0x0
    1e10:	c4240000 	lwc1	$f4,0(at)
    1e14:	02002025 	move	a0,s0
    1e18:	8e050210 	lw	a1,528(s0)
    1e1c:	82060214 	lb	a2,532(s0)
    1e20:	27a70036 	addiu	a3,sp,54
    1e24:	0c000000 	jal	0 <func_80A6F5B0>
    1e28:	e6040068 	swc1	$f4,104(s0)
    1e2c:	24080001 	li	t0,1
    1e30:	afa80010 	sw	t0,16(sp)
    1e34:	26040032 	addiu	a0,s0,50
    1e38:	87a50036 	lh	a1,54(sp)
    1e3c:	2406000a 	li	a2,10
    1e40:	240703e8 	li	a3,1000
    1e44:	0c000000 	jal	0 <func_80A6F5B0>
    1e48:	e7a00030 	swc1	$f0,48(sp)
    1e4c:	8a0a0030 	lwl	t2,48(s0)
    1e50:	c7a20030 	lwc1	$f2,48(sp)
    1e54:	44803000 	mtc1	zero,$f6
    1e58:	9a0a0033 	lwr	t2,51(s0)
    1e5c:	3c01447a 	lui	at,0x447a
    1e60:	4606103e 	c.le.s	$f2,$f6
    1e64:	aa0a00b4 	swl	t2,180(s0)
    1e68:	ba0a00b7 	swr	t2,183(s0)
    1e6c:	960a0034 	lhu	t2,52(s0)
    1e70:	45010023 	bc1t	1f00 <func_80A7134C+0x164>
    1e74:	a60a00b8 	sh	t2,184(s0)
    1e78:	44814000 	mtc1	at,$f8
    1e7c:	00000000 	nop
    1e80:	4602403e 	c.le.s	$f8,$f2
    1e84:	00000000 	nop
    1e88:	4503001e 	bc1tl	1f04 <func_80A7134C+0x168>
    1e8c:	8fbf0024 	lw	ra,36(sp)
    1e90:	920b0195 	lbu	t3,405(s0)
    1e94:	55600012 	bnezl	t3,1ee0 <func_80A7134C+0x144>
    1e98:	820a0214 	lb	t2,532(s0)
    1e9c:	820c0214 	lb	t4,532(s0)
    1ea0:	8e020210 	lw	v0,528(s0)
    1ea4:	24190001 	li	t9,1
    1ea8:	258d0001 	addiu	t5,t4,1
    1eac:	a20d0214 	sb	t5,532(s0)
    1eb0:	904f0000 	lbu	t7,0(v0)
    1eb4:	820e0214 	lb	t6,532(s0)
    1eb8:	25f8ffff 	addiu	t8,t7,-1
    1ebc:	030e082a 	slt	at,t8,t6
    1ec0:	50200010 	beqzl	at,1f04 <func_80A7134C+0x168>
    1ec4:	8fbf0024 	lw	ra,36(sp)
    1ec8:	a2190195 	sb	t9,405(s0)
    1ecc:	90480000 	lbu	t0,0(v0)
    1ed0:	2509fffe 	addiu	t1,t0,-2
    1ed4:	1000000a 	b	1f00 <func_80A7134C+0x164>
    1ed8:	a2090214 	sb	t1,532(s0)
    1edc:	820a0214 	lb	t2,532(s0)
    1ee0:	240d0001 	li	t5,1
    1ee4:	254bffff 	addiu	t3,t2,-1
    1ee8:	a20b0214 	sb	t3,532(s0)
    1eec:	820c0214 	lb	t4,532(s0)
    1ef0:	05830004 	bgezl	t4,1f04 <func_80A7134C+0x168>
    1ef4:	8fbf0024 	lw	ra,36(sp)
    1ef8:	a2000195 	sb	zero,405(s0)
    1efc:	a20d0214 	sb	t5,532(s0)
    1f00:	8fbf0024 	lw	ra,36(sp)
    1f04:	8fb00020 	lw	s0,32(sp)
    1f08:	27bd0038 	addiu	sp,sp,56
    1f0c:	03e00008 	jr	ra
    1f10:	00000000 	nop

00001f14 <func_80A714C4>:
    1f14:	27bdffe0 	addiu	sp,sp,-32
    1f18:	afbf001c 	sw	ra,28(sp)
    1f1c:	afa50024 	sw	a1,36(sp)
    1f20:	0c000000 	jal	0 <func_80A6F5B0>
    1f24:	afa40020 	sw	a0,32(sp)
    1f28:	10400005 	beqz	v0,1f40 <func_80A714C4+0x2c>
    1f2c:	8fa40020 	lw	a0,32(sp)
    1f30:	3c0e0000 	lui	t6,0x0
    1f34:	25ce0000 	addiu	t6,t6,0
    1f38:	1000000d 	b	1f70 <func_80A714C4+0x5c>
    1f3c:	ac8e0190 	sw	t6,400(a0)
    1f40:	3c013f80 	lui	at,0x3f80
    1f44:	44811000 	mtc1	at,$f2
    1f48:	c4800094 	lwc1	$f0,148(a0)
    1f4c:	c4840090 	lwc1	$f4,144(a0)
    1f50:	8c860260 	lw	a2,608(a0)
    1f54:	46000005 	abs.s	$f0,$f0
    1f58:	46022180 	add.s	$f6,$f4,$f2
    1f5c:	8fa50024 	lw	a1,36(sp)
    1f60:	46020200 	add.s	$f8,$f0,$f2
    1f64:	44073000 	mfc1	a3,$f6
    1f68:	0c000000 	jal	0 <func_80A6F5B0>
    1f6c:	e7a80010 	swc1	$f8,16(sp)
    1f70:	8fbf001c 	lw	ra,28(sp)
    1f74:	27bd0020 	addiu	sp,sp,32
    1f78:	03e00008 	jr	ra
    1f7c:	00000000 	nop

00001f80 <func_80A71530>:
    1f80:	27bdffe8 	addiu	sp,sp,-24
    1f84:	afbf0014 	sw	ra,20(sp)
    1f88:	afa40018 	sw	a0,24(sp)
    1f8c:	afa5001c 	sw	a1,28(sp)
    1f90:	0c000000 	jal	0 <func_80A6F5B0>
    1f94:	24a420d8 	addiu	a0,a1,8408
    1f98:	24010006 	li	at,6
    1f9c:	54410020 	bnel	v0,at,2020 <func_80A71530+0xa0>
    1fa0:	8fbf0014 	lw	ra,20(sp)
    1fa4:	0c000000 	jal	0 <func_80A6F5B0>
    1fa8:	8fa4001c 	lw	a0,28(sp)
    1fac:	1040001b 	beqz	v0,201c <func_80A71530+0x9c>
    1fb0:	8fae0018 	lw	t6,24(sp)
    1fb4:	8dc20260 	lw	v0,608(t6)
    1fb8:	2401003e 	li	at,62
    1fbc:	10410005 	beq	v0,at,1fd4 <func_80A71530+0x54>
    1fc0:	2401004d 	li	at,77
    1fc4:	1041000b 	beq	v0,at,1ff4 <func_80A71530+0x74>
    1fc8:	00000000 	nop
    1fcc:	10000010 	b	2010 <func_80A71530+0x90>
    1fd0:	8fa80018 	lw	t0,24(sp)
    1fd4:	3c020000 	lui	v0,0x0
    1fd8:	24420000 	addiu	v0,v0,0
    1fdc:	944f0f2a 	lhu	t7,3882(v0)
    1fe0:	a44013c4 	sh	zero,5060(v0)
    1fe4:	a040141c 	sb	zero,5148(v0)
    1fe8:	35f80002 	ori	t8,t7,0x2
    1fec:	10000007 	b	200c <func_80A71530+0x8c>
    1ff0:	a4580f2a 	sh	t8,3882(v0)
    1ff4:	0c000000 	jal	0 <func_80A6F5B0>
    1ff8:	24040005 	li	a0,5
    1ffc:	3c020000 	lui	v0,0x0
    2000:	24420000 	addiu	v0,v0,0
    2004:	a44013c4 	sh	zero,5060(v0)
    2008:	a040141c 	sb	zero,5148(v0)
    200c:	8fa80018 	lw	t0,24(sp)
    2010:	3c190000 	lui	t9,0x0
    2014:	27390000 	addiu	t9,t9,0
    2018:	ad190190 	sw	t9,400(t0)
    201c:	8fbf0014 	lw	ra,20(sp)
    2020:	27bd0018 	addiu	sp,sp,24
    2024:	03e00008 	jr	ra
    2028:	00000000 	nop

0000202c <EnHy_Update>:
    202c:	27bdffd8 	addiu	sp,sp,-40
    2030:	afbf0024 	sw	ra,36(sp)
    2034:	afb10020 	sw	s1,32(sp)
    2038:	afb0001c 	sw	s0,28(sp)
    203c:	8c820190 	lw	v0,400(a0)
    2040:	3c0e0000 	lui	t6,0x0
    2044:	25ce0000 	addiu	t6,t6,0
    2048:	00808025 	move	s0,a0
    204c:	11c20020 	beq	t6,v0,20d0 <EnHy_Update+0xa4>
    2050:	00a08825 	move	s1,a1
    2054:	808f0199 	lb	t7,409(a0)
    2058:	3c080001 	lui	t0,0x1
    205c:	3c018000 	lui	at,0x8000
    2060:	000fc100 	sll	t8,t7,0x4
    2064:	030fc021 	addu	t8,t8,t7
    2068:	0018c080 	sll	t8,t8,0x2
    206c:	00b8c821 	addu	t9,a1,t8
    2070:	01194021 	addu	t0,t0,t9
    2074:	8d0817b4 	lw	t0,6068(t0)
    2078:	2484014c 	addiu	a0,a0,332
    207c:	01014821 	addu	t1,t0,at
    2080:	3c010000 	lui	at,0x0
    2084:	0c000000 	jal	0 <func_80A6F5B0>
    2088:	ac290018 	sw	t1,24(at)
    208c:	0c000000 	jal	0 <func_80A6F5B0>
    2090:	02002025 	move	a0,s0
    2094:	860a01e8 	lh	t2,488(s0)
    2098:	55400004 	bnezl	t2,20ac <EnHy_Update+0x80>
    209c:	44800000 	mtc1	zero,$f0
    20a0:	0c000000 	jal	0 <func_80A6F5B0>
    20a4:	02002025 	move	a0,s0
    20a8:	44800000 	mtc1	zero,$f0
    20ac:	240b0004 	li	t3,4
    20b0:	afab0014 	sw	t3,20(sp)
    20b4:	44060000 	mfc1	a2,$f0
    20b8:	44070000 	mfc1	a3,$f0
    20bc:	02202025 	move	a0,s1
    20c0:	02002825 	move	a1,s0
    20c4:	0c000000 	jal	0 <func_80A6F5B0>
    20c8:	e7a00010 	swc1	$f0,16(sp)
    20cc:	8e020190 	lw	v0,400(s0)
    20d0:	02002025 	move	a0,s0
    20d4:	0040f809 	jalr	v0
    20d8:	02202825 	move	a1,s1
    20dc:	02002025 	move	a0,s0
    20e0:	0c000000 	jal	0 <func_80A6F5B0>
    20e4:	02202825 	move	a1,s1
    20e8:	02002025 	move	a0,s0
    20ec:	0c000000 	jal	0 <func_80A6F5B0>
    20f0:	02202825 	move	a1,s1
    20f4:	8fbf0024 	lw	ra,36(sp)
    20f8:	8fb0001c 	lw	s0,28(sp)
    20fc:	8fb10020 	lw	s1,32(sp)
    2100:	03e00008 	jr	ra
    2104:	27bd0028 	addiu	sp,sp,40

00002108 <func_80A716B8>:
    2108:	27bdffa8 	addiu	sp,sp,-88
    210c:	afbf0014 	sw	ra,20(sp)
    2110:	afa40058 	sw	a0,88(sp)
    2114:	afa5005c 	sw	a1,92(sp)
    2118:	afa60060 	sw	a2,96(sp)
    211c:	afa70064 	sw	a3,100(sp)
    2120:	8c850000 	lw	a1,0(a0)
    2124:	3c060000 	lui	a2,0x0
    2128:	24c60000 	addiu	a2,a2,0
    212c:	27a4002c 	addiu	a0,sp,44
    2130:	2407087a 	li	a3,2170
    2134:	0c000000 	jal	0 <func_80A6F5B0>
    2138:	afa5003c 	sw	a1,60(sp)
    213c:	8fa9005c 	lw	t1,92(sp)
    2140:	240c000f 	li	t4,15
    2144:	8fa8003c 	lw	t0,60(sp)
    2148:	152c0051 	bne	t1,t4,2290 <func_80A716B8+0x188>
    214c:	8faa006c 	lw	t2,108(sp)
    2150:	8d0302c0 	lw	v1,704(t0)
    2154:	3c18db06 	lui	t8,0xdb06
    2158:	37180018 	ori	t8,t8,0x18
    215c:	246f0008 	addiu	t7,v1,8
    2160:	ad0f02c0 	sw	t7,704(t0)
    2164:	ac780000 	sw	t8,0(v1)
    2168:	814d0196 	lb	t5,406(t2)
    216c:	24060044 	li	a2,68
    2170:	8fb90058 	lw	t9,88(sp)
    2174:	01a60019 	multu	t5,a2
    2178:	3c070001 	lui	a3,0x1
    217c:	3c0b8000 	lui	t3,0x8000
    2180:	3c010000 	lui	at,0x0
    2184:	00007012 	mflo	t6
    2188:	032e7821 	addu	t7,t9,t6
    218c:	01e7c021 	addu	t8,t7,a3
    2190:	8f0d17b4 	lw	t5,6068(t8)
    2194:	ac6d0004 	sw	t5,4(v1)
    2198:	814e0196 	lb	t6,406(t2)
    219c:	8fb90058 	lw	t9,88(sp)
    21a0:	3c030000 	lui	v1,0x0
    21a4:	01c60019 	multu	t6,a2
    21a8:	00007812 	mflo	t7
    21ac:	032fc021 	addu	t8,t9,t7
    21b0:	03076821 	addu	t5,t8,a3
    21b4:	8dae17b4 	lw	t6,6068(t5)
    21b8:	01cbc821 	addu	t9,t6,t3
    21bc:	ac390018 	sw	t9,24(at)
    21c0:	854f001c 	lh	t7,28(t2)
    21c4:	3c190000 	lui	t9,0x0
    21c8:	27390000 	addiu	t9,t9,0
    21cc:	31f8007f 	andi	t8,t7,0x7f
    21d0:	00186880 	sll	t5,t8,0x2
    21d4:	01b86823 	subu	t5,t5,t8
    21d8:	000d6880 	sll	t5,t5,0x2
    21dc:	006d1821 	addu	v1,v1,t5
    21e0:	90630000 	lbu	v1,0(v1)
    21e4:	8fb80060 	lw	t8,96(sp)
    21e8:	3c0100ff 	lui	at,0xff
    21ec:	00037080 	sll	t6,v1,0x2
    21f0:	01c37023 	subu	t6,t6,v1
    21f4:	000e7080 	sll	t6,t6,0x2
    21f8:	01d91021 	addu	v0,t6,t9
    21fc:	8c4f0004 	lw	t7,4(v0)
    2200:	af0f0000 	sw	t7,0(t8)
    2204:	8c440008 	lw	a0,8(v0)
    2208:	3c18db06 	lui	t8,0xdb06
    220c:	37180028 	ori	t8,t8,0x28
    2210:	50800016 	beqzl	a0,226c <func_80A716B8+0x164>
    2214:	814f0198 	lb	t7,408(t2)
    2218:	854d0218 	lh	t5,536(t2)
    221c:	8d0302c0 	lw	v1,704(t0)
    2220:	3421ffff 	ori	at,at,0xffff
    2224:	000d7080 	sll	t6,t5,0x2
    2228:	008ec821 	addu	t9,a0,t6
    222c:	8f250000 	lw	a1,0(t9)
    2230:	246f0008 	addiu	t7,v1,8
    2234:	ad0f02c0 	sw	t7,704(t0)
    2238:	00056900 	sll	t5,a1,0x4
    223c:	000d7702 	srl	t6,t5,0x1c
    2240:	000ec880 	sll	t9,t6,0x2
    2244:	3c0f0000 	lui	t7,0x0
    2248:	01f97821 	addu	t7,t7,t9
    224c:	ac780000 	sw	t8,0(v1)
    2250:	8def0000 	lw	t7,0(t7)
    2254:	00a1c024 	and	t8,a1,at
    2258:	3c018000 	lui	at,0x8000
    225c:	01f86821 	addu	t5,t7,t8
    2260:	01a17021 	addu	t6,t5,at
    2264:	ac6e0004 	sw	t6,4(v1)
    2268:	814f0198 	lb	t7,408(t2)
    226c:	8fb90058 	lw	t9,88(sp)
    2270:	3c010000 	lui	at,0x0
    2274:	01e60019 	multu	t7,a2
    2278:	0000c012 	mflo	t8
    227c:	03386821 	addu	t5,t9,t8
    2280:	01a77021 	addu	t6,t5,a3
    2284:	8dcf17b4 	lw	t7,6068(t6)
    2288:	01ebc821 	addu	t9,t7,t3
    228c:	ac390018 	sw	t9,24(at)
    2290:	152c002f 	bne	t1,t4,2350 <func_80A716B8+0x248>
    2294:	8faa006c 	lw	t2,108(sp)
    2298:	44807000 	mtc1	zero,$f14
    229c:	3c0144af 	lui	at,0x44af
    22a0:	44816000 	mtc1	at,$f12
    22a4:	44067000 	mfc1	a2,$f14
    22a8:	0c000000 	jal	0 <func_80A6F5B0>
    22ac:	24070001 	li	a3,1
    22b0:	8fad006c 	lw	t5,108(sp)
    22b4:	27b80048 	addiu	t8,sp,72
    22b8:	3c014700 	lui	at,0x4700
    22bc:	89af01f0 	lwl	t7,496(t5)
    22c0:	99af01f3 	lwr	t7,499(t5)
    22c4:	44814000 	mtc1	at,$f8
    22c8:	3c010000 	lui	at,0x0
    22cc:	af0f0000 	sw	t7,0(t8)
    22d0:	95af01f4 	lhu	t7,500(t5)
    22d4:	24050001 	li	a1,1
    22d8:	a70f0004 	sh	t7,4(t8)
    22dc:	87b9004a 	lh	t9,74(sp)
    22e0:	c4300000 	lwc1	$f16,0(at)
    22e4:	44992000 	mtc1	t9,$f4
    22e8:	00000000 	nop
    22ec:	468021a0 	cvt.s.w	$f6,$f4
    22f0:	46083283 	div.s	$f10,$f6,$f8
    22f4:	46105302 	mul.s	$f12,$f10,$f16
    22f8:	0c000000 	jal	0 <func_80A6F5B0>
    22fc:	00000000 	nop
    2300:	87b80048 	lh	t8,72(sp)
    2304:	3c014700 	lui	at,0x4700
    2308:	44813000 	mtc1	at,$f6
    230c:	44989000 	mtc1	t8,$f18
    2310:	3c010000 	lui	at,0x0
    2314:	c42a0000 	lwc1	$f10,0(at)
    2318:	46809120 	cvt.s.w	$f4,$f18
    231c:	24050001 	li	a1,1
    2320:	46062203 	div.s	$f8,$f4,$f6
    2324:	460a4302 	mul.s	$f12,$f8,$f10
    2328:	0c000000 	jal	0 <func_80A6F5B0>
    232c:	00000000 	nop
    2330:	44807000 	mtc1	zero,$f14
    2334:	3c01c4af 	lui	at,0xc4af
    2338:	44816000 	mtc1	at,$f12
    233c:	44067000 	mfc1	a2,$f14
    2340:	0c000000 	jal	0 <func_80A6F5B0>
    2344:	24070001 	li	a3,1
    2348:	8faa006c 	lw	t2,108(sp)
    234c:	8fa9005c 	lw	t1,92(sp)
    2350:	24010008 	li	at,8
    2354:	55210024 	bnel	t1,at,23e8 <func_80A716B8+0x2e0>
    2358:	24010008 	li	at,8
    235c:	894f01f6 	lwl	t7,502(t2)
    2360:	994f01f9 	lwr	t7,505(t2)
    2364:	27ad0048 	addiu	t5,sp,72
    2368:	3c014700 	lui	at,0x4700
    236c:	adaf0000 	sw	t7,0(t5)
    2370:	954f01fa 	lhu	t7,506(t2)
    2374:	44812000 	mtc1	at,$f4
    2378:	3c010000 	lui	at,0x0
    237c:	a5af0004 	sh	t7,4(t5)
    2380:	87b9004a 	lh	t9,74(sp)
    2384:	c4280000 	lwc1	$f8,0(at)
    2388:	24050001 	li	a1,1
    238c:	0019c023 	negu	t8,t9
    2390:	44988000 	mtc1	t8,$f16
    2394:	00000000 	nop
    2398:	468084a0 	cvt.s.w	$f18,$f16
    239c:	46049183 	div.s	$f6,$f18,$f4
    23a0:	46083302 	mul.s	$f12,$f6,$f8
    23a4:	0c000000 	jal	0 <func_80A6F5B0>
    23a8:	00000000 	nop
    23ac:	87ad0048 	lh	t5,72(sp)
    23b0:	3c014700 	lui	at,0x4700
    23b4:	44819000 	mtc1	at,$f18
    23b8:	448d5000 	mtc1	t5,$f10
    23bc:	3c010000 	lui	at,0x0
    23c0:	c4260000 	lwc1	$f6,0(at)
    23c4:	46805420 	cvt.s.w	$f16,$f10
    23c8:	24050001 	li	a1,1
    23cc:	46128103 	div.s	$f4,$f16,$f18
    23d0:	46062302 	mul.s	$f12,$f4,$f6
    23d4:	0c000000 	jal	0 <func_80A6F5B0>
    23d8:	00000000 	nop
    23dc:	8faa006c 	lw	t2,108(sp)
    23e0:	8fa9005c 	lw	t1,92(sp)
    23e4:	24010008 	li	at,8
    23e8:	11210005 	beq	t1,at,2400 <func_80A716B8+0x2f8>
    23ec:	00097040 	sll	t6,t1,0x1
    23f0:	24010009 	li	at,9
    23f4:	11210002 	beq	t1,at,2400 <func_80A716B8+0x2f8>
    23f8:	2401000c 	li	at,12
    23fc:	15210021 	bne	t1,at,2484 <func_80A716B8+0x37c>
    2400:	014e1821 	addu	v1,t2,t6
    2404:	8464021c 	lh	a0,540(v1)
    2408:	0c000000 	jal	0 <func_80A6F5B0>
    240c:	afa3001c 	sw	v1,28(sp)
    2410:	8fa20068 	lw	v0,104(sp)
    2414:	3c014348 	lui	at,0x4348
    2418:	44818000 	mtc1	at,$f16
    241c:	844f0002 	lh	t7,2(v0)
    2420:	8fa3001c 	lw	v1,28(sp)
    2424:	46100482 	mul.s	$f18,$f0,$f16
    2428:	448f4000 	mtc1	t7,$f8
    242c:	00000000 	nop
    2430:	468042a0 	cvt.s.w	$f10,$f8
    2434:	46125100 	add.s	$f4,$f10,$f18
    2438:	4600218d 	trunc.w.s	$f6,$f4
    243c:	44183000 	mfc1	t8,$f6
    2440:	00000000 	nop
    2444:	a4580002 	sh	t8,2(v0)
    2448:	0c000000 	jal	0 <func_80A6F5B0>
    244c:	8464023c 	lh	a0,572(v1)
    2450:	8fa20068 	lw	v0,104(sp)
    2454:	3c014348 	lui	at,0x4348
    2458:	44815000 	mtc1	at,$f10
    245c:	844d0004 	lh	t5,4(v0)
    2460:	460a0482 	mul.s	$f18,$f0,$f10
    2464:	448d4000 	mtc1	t5,$f8
    2468:	00000000 	nop
    246c:	46804420 	cvt.s.w	$f16,$f8
    2470:	46128100 	add.s	$f4,$f16,$f18
    2474:	4600218d 	trunc.w.s	$f6,$f4
    2478:	440f3000 	mfc1	t7,$f6
    247c:	00000000 	nop
    2480:	a44f0004 	sh	t7,4(v0)
    2484:	8fb90058 	lw	t9,88(sp)
    2488:	3c060000 	lui	a2,0x0
    248c:	24c60000 	addiu	a2,a2,0
    2490:	27a4002c 	addiu	a0,sp,44
    2494:	240708b4 	li	a3,2228
    2498:	0c000000 	jal	0 <func_80A6F5B0>
    249c:	8f250000 	lw	a1,0(t9)
    24a0:	8fbf0014 	lw	ra,20(sp)
    24a4:	27bd0058 	addiu	sp,sp,88
    24a8:	00001025 	move	v0,zero
    24ac:	03e00008 	jr	ra
    24b0:	00000000 	nop

000024b4 <func_80A71A64>:
    24b4:	27bdffb0 	addiu	sp,sp,-80
    24b8:	3c0f0000 	lui	t7,0x0
    24bc:	afbf0014 	sw	ra,20(sp)
    24c0:	afa40050 	sw	a0,80(sp)
    24c4:	afa50054 	sw	a1,84(sp)
    24c8:	afa60058 	sw	a2,88(sp)
    24cc:	afa7005c 	sw	a3,92(sp)
    24d0:	25ef0000 	addiu	t7,t7,0
    24d4:	8df90000 	lw	t9,0(t7)
    24d8:	27ae003c 	addiu	t6,sp,60
    24dc:	8df80004 	lw	t8,4(t7)
    24e0:	add90000 	sw	t9,0(t6)
    24e4:	8df90008 	lw	t9,8(t7)
    24e8:	add80004 	sw	t8,4(t6)
    24ec:	3c060000 	lui	a2,0x0
    24f0:	add90008 	sw	t9,8(t6)
    24f4:	8faa0050 	lw	t2,80(sp)
    24f8:	24c60000 	addiu	a2,a2,0
    24fc:	240708cf 	li	a3,2255
    2500:	8d450000 	lw	a1,0(t2)
    2504:	27a40028 	addiu	a0,sp,40
    2508:	0c000000 	jal	0 <func_80A6F5B0>
    250c:	afa50038 	sw	a1,56(sp)
    2510:	8fa40054 	lw	a0,84(sp)
    2514:	24010007 	li	at,7
    2518:	8fa80038 	lw	t0,56(sp)
    251c:	1481001b 	bne	a0,at,258c <func_80A71A64+0xd8>
    2520:	8fa90050 	lw	t1,80(sp)
    2524:	8d0302c0 	lw	v1,704(t0)
    2528:	8fa60060 	lw	a2,96(sp)
    252c:	3c0cdb06 	lui	t4,0xdb06
    2530:	246b0008 	addiu	t3,v1,8
    2534:	ad0b02c0 	sw	t3,704(t0)
    2538:	358c0018 	ori	t4,t4,0x18
    253c:	ac6c0000 	sw	t4,0(v1)
    2540:	80cd0197 	lb	t5,407(a2)
    2544:	24050044 	li	a1,68
    2548:	3c070001 	lui	a3,0x1
    254c:	01a50019 	multu	t5,a1
    2550:	3c018000 	lui	at,0x8000
    2554:	00007012 	mflo	t6
    2558:	012e7821 	addu	t7,t1,t6
    255c:	01e7c021 	addu	t8,t7,a3
    2560:	8f1917b4 	lw	t9,6068(t8)
    2564:	ac790004 	sw	t9,4(v1)
    2568:	80ca0197 	lb	t2,407(a2)
    256c:	01450019 	multu	t2,a1
    2570:	00005812 	mflo	t3
    2574:	012b6021 	addu	t4,t1,t3
    2578:	01876821 	addu	t5,t4,a3
    257c:	8dae17b4 	lw	t6,6068(t5)
    2580:	01c17821 	addu	t7,t6,at
    2584:	3c010000 	lui	at,0x0
    2588:	ac2f0018 	sw	t7,24(at)
    258c:	8fa60060 	lw	a2,96(sp)
    2590:	24010003 	li	at,3
    2594:	84d8001c 	lh	t8,28(a2)
    2598:	24c50038 	addiu	a1,a2,56
    259c:	3319007f 	andi	t9,t8,0x7f
    25a0:	1721000a 	bne	t9,at,25cc <func_80A71A64+0x118>
    25a4:	24010008 	li	at,8
    25a8:	14810008 	bne	a0,at,25cc <func_80A71A64+0x118>
    25ac:	3c0bde00 	lui	t3,0xde00
    25b0:	8d0302c0 	lw	v1,704(t0)
    25b4:	3c0c0600 	lui	t4,0x600
    25b8:	258c5bc8 	addiu	t4,t4,23496
    25bc:	246a0008 	addiu	t2,v1,8
    25c0:	ad0a02c0 	sw	t2,704(t0)
    25c4:	ac6c0004 	sw	t4,4(v1)
    25c8:	ac6b0000 	sw	t3,0(v1)
    25cc:	2401000f 	li	at,15
    25d0:	14810004 	bne	a0,at,25e4 <func_80A71A64+0x130>
    25d4:	00000000 	nop
    25d8:	0c000000 	jal	0 <func_80A6F5B0>
    25dc:	27a4003c 	addiu	a0,sp,60
    25e0:	8fa90050 	lw	t1,80(sp)
    25e4:	3c060000 	lui	a2,0x0
    25e8:	24c60000 	addiu	a2,a2,0
    25ec:	27a40028 	addiu	a0,sp,40
    25f0:	8d250000 	lw	a1,0(t1)
    25f4:	0c000000 	jal	0 <func_80A6F5B0>
    25f8:	240708e9 	li	a3,2281
    25fc:	8fbf0014 	lw	ra,20(sp)
    2600:	27bd0050 	addiu	sp,sp,80
    2604:	03e00008 	jr	ra
    2608:	00000000 	nop

0000260c <func_80A71BBC>:
    260c:	27bdffe8 	addiu	sp,sp,-24
    2610:	afbf0014 	sw	ra,20(sp)
    2614:	afa5001c 	sw	a1,28(sp)
    2618:	afa60020 	sw	a2,32(sp)
    261c:	afa70024 	sw	a3,36(sp)
    2620:	0c000000 	jal	0 <func_80A6F5B0>
    2624:	24050010 	li	a1,16
    2628:	3c0efb00 	lui	t6,0xfb00
    262c:	ac4e0000 	sw	t6,0(v0)
    2630:	93a90023 	lbu	t1,35(sp)
    2634:	93b8001f 	lbu	t8,31(sp)
    2638:	93ad0027 	lbu	t5,39(sp)
    263c:	93a8002b 	lbu	t0,43(sp)
    2640:	00095400 	sll	t2,t1,0x10
    2644:	0018ce00 	sll	t9,t8,0x18
    2648:	032a5825 	or	t3,t9,t2
    264c:	000d7200 	sll	t6,t5,0x8
    2650:	016e7825 	or	t7,t3,t6
    2654:	3c19df00 	lui	t9,0xdf00
    2658:	01e84825 	or	t1,t7,t0
    265c:	ac490004 	sw	t1,4(v0)
    2660:	ac590008 	sw	t9,8(v0)
    2664:	ac40000c 	sw	zero,12(v0)
    2668:	8fbf0014 	lw	ra,20(sp)
    266c:	27bd0018 	addiu	sp,sp,24
    2670:	03e00008 	jr	ra
    2674:	00000000 	nop

00002678 <EnHy_Draw>:
    2678:	27bdff98 	addiu	sp,sp,-104
    267c:	afbf002c 	sw	ra,44(sp)
    2680:	afb00028 	sw	s0,40(sp)
    2684:	afa5006c 	sw	a1,108(sp)
    2688:	8ca50000 	lw	a1,0(a1)
    268c:	00808025 	move	s0,a0
    2690:	3c060000 	lui	a2,0x0
    2694:	24c60000 	addiu	a2,a2,0
    2698:	27a40044 	addiu	a0,sp,68
    269c:	2407090e 	li	a3,2318
    26a0:	0c000000 	jal	0 <func_80A6F5B0>
    26a4:	afa50054 	sw	a1,84(sp)
    26a8:	8e180190 	lw	t8,400(s0)
    26ac:	3c0f0000 	lui	t7,0x0
    26b0:	25ef0000 	addiu	t7,t7,0
    26b4:	11f80080 	beq	t7,t8,28b8 <L80A71E38+0x30>
    26b8:	8fb9006c 	lw	t9,108(sp)
    26bc:	0c000000 	jal	0 <func_80A6F5B0>
    26c0:	8f240000 	lw	a0,0(t9)
    26c4:	c60c0264 	lwc1	$f12,612(s0)
    26c8:	c60e0268 	lwc1	$f14,616(s0)
    26cc:	8e06026c 	lw	a2,620(s0)
    26d0:	0c000000 	jal	0 <func_80A6F5B0>
    26d4:	24070001 	li	a3,1
    26d8:	860a001c 	lh	t2,28(s0)
    26dc:	2403000c 	li	v1,12
    26e0:	3c020000 	lui	v0,0x0
    26e4:	314b007f 	andi	t3,t2,0x7f
    26e8:	01630019 	multu	t3,v1
    26ec:	24420000 	addiu	v0,v0,0
    26f0:	27a90060 	addiu	t1,sp,96
    26f4:	27b8005c 	addiu	t8,sp,92
    26f8:	00006012 	mflo	t4
    26fc:	004c6821 	addu	t5,v0,t4
    2700:	89af0002 	lwl	t7,2(t5)
    2704:	99af0005 	lwr	t7,5(t5)
    2708:	ad2f0000 	sw	t7,0(t1)
    270c:	8619001c 	lh	t9,28(s0)
    2710:	332a007f 	andi	t2,t9,0x7f
    2714:	01430019 	multu	t2,v1
    2718:	00005812 	mflo	t3
    271c:	004b6021 	addu	t4,v0,t3
    2720:	898d0007 	lwl	t5,7(t4)
    2724:	998d000a 	lwr	t5,10(t4)
    2728:	af0d0000 	sw	t5,0(t8)
    272c:	860e001c 	lh	t6,28(s0)
    2730:	31cf007f 	andi	t7,t6,0x7f
    2734:	25f9fffe 	addiu	t9,t7,-2
    2738:	2f210013 	sltiu	at,t9,19
    273c:	10200052 	beqz	at,2888 <L80A71E38>
    2740:	0019c880 	sll	t9,t9,0x2
    2744:	3c010000 	lui	at,0x0
    2748:	00390821 	addu	at,at,t9
    274c:	8c390000 	lw	t9,0(at)
    2750:	03200008 	jr	t9
    2754:	00000000 	nop

00002758 <L80A71D08>:
    2758:	8fa80054 	lw	t0,84(sp)
    275c:	3c0bdb06 	lui	t3,0xdb06
    2760:	356b0020 	ori	t3,t3,0x20
    2764:	8d0202c0 	lw	v0,704(t0)
    2768:	244a0008 	addiu	t2,v0,8
    276c:	ad0a02c0 	sw	t2,704(t0)
    2770:	ac4b0000 	sw	t3,0(v0)
    2774:	8fb8006c 	lw	t8,108(sp)
    2778:	93ac0063 	lbu	t4,99(sp)
    277c:	93a70062 	lbu	a3,98(sp)
    2780:	8f040000 	lw	a0,0(t8)
    2784:	93a60061 	lbu	a2,97(sp)
    2788:	93a50060 	lbu	a1,96(sp)
    278c:	afa20040 	sw	v0,64(sp)
    2790:	0c000000 	jal	0 <func_80A6F5B0>
    2794:	afac0010 	sw	t4,16(sp)
    2798:	8fa30040 	lw	v1,64(sp)
    279c:	3c0ddb06 	lui	t5,0xdb06
    27a0:	35ad0024 	ori	t5,t5,0x24
    27a4:	ac620004 	sw	v0,4(v1)
    27a8:	8fa80054 	lw	t0,84(sp)
    27ac:	8d0202c0 	lw	v0,704(t0)
    27b0:	24490008 	addiu	t1,v0,8
    27b4:	ad0902c0 	sw	t1,704(t0)
    27b8:	ac4d0000 	sw	t5,0(v0)
    27bc:	8fae006c 	lw	t6,108(sp)
    27c0:	93af005f 	lbu	t7,95(sp)
    27c4:	93a7005e 	lbu	a3,94(sp)
    27c8:	8dc40000 	lw	a0,0(t6)
    27cc:	93a6005d 	lbu	a2,93(sp)
    27d0:	93a5005c 	lbu	a1,92(sp)
    27d4:	afa2003c 	sw	v0,60(sp)
    27d8:	0c000000 	jal	0 <func_80A6F5B0>
    27dc:	afaf0010 	sw	t7,16(sp)
    27e0:	8fa3003c 	lw	v1,60(sp)
    27e4:	2401000b 	li	at,11
    27e8:	ac620004 	sw	v0,4(v1)
    27ec:	8602001c 	lh	v0,28(s0)
    27f0:	24030008 	li	v1,8
    27f4:	3042007f 	andi	v0,v0,0x7f
    27f8:	10620003 	beq	v1,v0,2808 <L80A71D08+0xb0>
    27fc:	00000000 	nop
    2800:	54410022 	bnel	v0,at,288c <L80A71E38+0x4>
    2804:	8e050150 	lw	a1,336(s0)
    2808:	14620005 	bne	v1,v0,2820 <L80A71D08+0xc8>
    280c:	2401000b 	li	at,11
    2810:	8fb90060 	lw	t9,96(sp)
    2814:	afb90058 	sw	t9,88(sp)
    2818:	8602001c 	lh	v0,28(s0)
    281c:	3042007f 	andi	v0,v0,0x7f
    2820:	14410007 	bne	v0,at,2840 <L80A71D08+0xe8>
    2824:	240a00ff 	li	t2,255
    2828:	240b00ff 	li	t3,255
    282c:	241800ff 	li	t8,255
    2830:	a3b80058 	sb	t8,88(sp)
    2834:	a3ab0059 	sb	t3,89(sp)
    2838:	a3aa005a 	sb	t2,90(sp)
    283c:	a3a0005b 	sb	zero,91(sp)
    2840:	8fac0054 	lw	t4,84(sp)
    2844:	3c0ddb06 	lui	t5,0xdb06
    2848:	35ad0028 	ori	t5,t5,0x28
    284c:	8d8202c0 	lw	v0,704(t4)
    2850:	24490008 	addiu	t1,v0,8
    2854:	ad8902c0 	sw	t1,704(t4)
    2858:	ac4d0000 	sw	t5,0(v0)
    285c:	8fae006c 	lw	t6,108(sp)
    2860:	93af005b 	lbu	t7,91(sp)
    2864:	93a7005a 	lbu	a3,90(sp)
    2868:	8dc40000 	lw	a0,0(t6)
    286c:	93a60059 	lbu	a2,89(sp)
    2870:	93a50058 	lbu	a1,88(sp)
    2874:	afa20038 	sw	v0,56(sp)
    2878:	0c000000 	jal	0 <func_80A6F5B0>
    287c:	afaf0010 	sw	t7,16(sp)
    2880:	8fa30038 	lw	v1,56(sp)
    2884:	ac620004 	sw	v0,4(v1)

00002888 <L80A71E38>:
    2888:	8e050150 	lw	a1,336(s0)
    288c:	8e06016c 	lw	a2,364(s0)
    2890:	9207014e 	lbu	a3,334(s0)
    2894:	3c190000 	lui	t9,0x0
    2898:	3c0a0000 	lui	t2,0x0
    289c:	254a0000 	addiu	t2,t2,0
    28a0:	27390000 	addiu	t9,t9,0
    28a4:	afb90010 	sw	t9,16(sp)
    28a8:	afaa0014 	sw	t2,20(sp)
    28ac:	afb00018 	sw	s0,24(sp)
    28b0:	0c000000 	jal	0 <func_80A6F5B0>
    28b4:	8fa4006c 	lw	a0,108(sp)
    28b8:	8fab006c 	lw	t3,108(sp)
    28bc:	3c060000 	lui	a2,0x0
    28c0:	24c60000 	addiu	a2,a2,0
    28c4:	27a40044 	addiu	a0,sp,68
    28c8:	24070954 	li	a3,2388
    28cc:	0c000000 	jal	0 <func_80A6F5B0>
    28d0:	8d650000 	lw	a1,0(t3)
    28d4:	8fbf002c 	lw	ra,44(sp)
    28d8:	8fb00028 	lw	s0,40(sp)
    28dc:	27bd0068 	addiu	sp,sp,104
    28e0:	03e00008 	jr	ra
    28e4:	00000000 	nop
	...
