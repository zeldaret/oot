
build/src/overlays/actors/ovl_kaleido_scope/z_kaleido_item.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <func_808198A0>:
       0:	27bdff68 	addiu	sp,sp,-152
       4:	afa600a0 	sw	a2,160(sp)
       8:	afbf0014 	sw	ra,20(sp)
       c:	afa40098 	sw	a0,152(sp)
      10:	3c060000 	lui	a2,0x0
      14:	24c60000 	addiu	a2,a2,0
      18:	27a40080 	addiu	a0,sp,128
      1c:	afa5009c 	sw	a1,156(sp)
      20:	0c000000 	jal	0 <func_808198A0>
      24:	24070045 	li	a3,69
      28:	87a900a2 	lh	t1,162(sp)
      2c:	3c0e0000 	lui	t6,0x0
      30:	8fa5009c 	lw	a1,156(sp)
      34:	25ce0000 	addiu	t6,t6,0
      38:	012e3821 	addu	a3,t1,t6
      3c:	90ef0000 	lbu	t7,0(a3)
      40:	8ca202c0 	lw	v0,704(a1)
      44:	3c040000 	lui	a0,0x0
      48:	24840000 	addiu	a0,a0,0
      4c:	008fc021 	addu	t8,a0,t7
      50:	8faa0098 	lw	t2,152(sp)
      54:	8306008c 	lb	a2,140(t8)
      58:	24590008 	addiu	t9,v0,8
      5c:	acb902c0 	sw	t9,704(a1)
      60:	3c0de700 	lui	t5,0xe700
      64:	ac4d0000 	sw	t5,0(v0)
      68:	ac400004 	sw	zero,4(v0)
      6c:	90ee0000 	lbu	t6,0(a3)
      70:	3c020000 	lui	v0,0x0
      74:	240c0009 	li	t4,9
      78:	004e1021 	addu	v0,v0,t6
      7c:	90420000 	lbu	v0,0(v0)
      80:	51820011 	beql	t4,v0,c8 <func_808198A0+0xc8>
      84:	8ca202c0 	lw	v0,704(a1)
      88:	8c8f0004 	lw	t7,4(a0)
      8c:	504f000e 	beql	v0,t7,c8 <func_808198A0+0xc8>
      90:	8ca202c0 	lw	v0,704(a1)
      94:	8ca202c0 	lw	v0,704(a1)
      98:	3c0bfa00 	lui	t3,0xfa00
      9c:	3c016464 	lui	at,0x6464
      a0:	24580008 	addiu	t8,v0,8
      a4:	acb802c0 	sw	t8,704(a1)
      a8:	ac4b0000 	sw	t3,0(v0)
      ac:	95590208 	lhu	t9,520(t2)
      b0:	34216400 	ori	at,at,0x6400
      b4:	332e00ff 	andi	t6,t9,0xff
      b8:	01c17825 	or	t7,t6,at
      bc:	1000007e 	b	2b8 <func_808198A0+0x2b8>
      c0:	ac4f0004 	sw	t7,4(v0)
      c4:	8ca202c0 	lw	v0,704(a1)
      c8:	3c0bfa00 	lui	t3,0xfa00
      cc:	2401ff00 	li	at,-256
      d0:	24580008 	addiu	t8,v0,8
      d4:	acb802c0 	sw	t8,704(a1)
      d8:	ac4b0000 	sw	t3,0(v0)
      dc:	95590208 	lhu	t9,520(t2)
      e0:	332e00ff 	andi	t6,t9,0xff
      e4:	01c17825 	or	t7,t6,at
      e8:	14c0000c 	bnez	a2,11c <func_808198A0+0x11c>
      ec:	ac4f0004 	sw	t7,4(v0)
      f0:	8ca202c0 	lw	v0,704(a1)
      f4:	3c018282 	lui	at,0x8282
      f8:	34218200 	ori	at,at,0x8200
      fc:	24580008 	addiu	t8,v0,8
     100:	acb802c0 	sw	t8,704(a1)
     104:	ac4b0000 	sw	t3,0(v0)
     108:	95590208 	lhu	t9,520(t2)
     10c:	332e00ff 	andi	t6,t9,0xff
     110:	01c17825 	or	t7,t6,at
     114:	10000068 	b	2b8 <func_808198A0+0x2b8>
     118:	ac4f0004 	sw	t7,4(v0)
     11c:	24010002 	li	at,2
     120:	15210012 	bne	t1,at,16c <func_808198A0+0x16c>
     124:	3c030000 	lui	v1,0x0
     128:	90f80000 	lbu	t8,0(a3)
     12c:	24630000 	addiu	v1,v1,0
     130:	8c8f00a0 	lw	t7,160(a0)
     134:	0098c821 	addu	t9,a0,t8
     138:	8c780004 	lw	t8,4(v1)
     13c:	832e008c 	lb	t6,140(t9)
     140:	3c080000 	lui	t0,0x0
     144:	25080000 	addiu	t0,t0,0
     148:	01f8c824 	and	t9,t7,t8
     14c:	910f0001 	lbu	t7,1(t0)
     150:	3c020000 	lui	v0,0x0
     154:	24420000 	addiu	v0,v0,0
     158:	01f9c007 	srav	t8,t9,t7
     15c:	0018c840 	sll	t9,t8,0x1
     160:	00597821 	addu	t7,v0,t9
     164:	95f80008 	lhu	t8,8(t7)
     168:	11d8004a 	beq	t6,t8,294 <func_808198A0+0x294>
     16c:	3c020000 	lui	v0,0x0
     170:	3c030000 	lui	v1,0x0
     174:	3c080000 	lui	t0,0x0
     178:	24010003 	li	at,3
     17c:	25080000 	addiu	t0,t0,0
     180:	24630000 	addiu	v1,v1,0
     184:	1521000d 	bne	t1,at,1bc <func_808198A0+0x1bc>
     188:	24420000 	addiu	v0,v0,0
     18c:	90f90000 	lbu	t9,0(a3)
     190:	8c9800a0 	lw	t8,160(a0)
     194:	00997821 	addu	t7,a0,t9
     198:	8c790000 	lw	t9,0(v1)
     19c:	81ee008c 	lb	t6,140(t7)
     1a0:	03197824 	and	t7,t8,t9
     1a4:	91180000 	lbu	t8,0(t0)
     1a8:	030fc807 	srav	t9,t7,t8
     1ac:	00197840 	sll	t7,t9,0x1
     1b0:	004fc021 	addu	t8,v0,t7
     1b4:	97190000 	lhu	t9,0(t8)
     1b8:	11d90036 	beq	t6,t9,294 <func_808198A0+0x294>
     1bc:	24010006 	li	at,6
     1c0:	1521000e 	bne	t1,at,1fc <func_808198A0+0x1fc>
     1c4:	00000000 	nop
     1c8:	90ef0000 	lbu	t7,0(a3)
     1cc:	8c9900a0 	lw	t9,160(a0)
     1d0:	008fc021 	addu	t8,a0,t7
     1d4:	8c6f0014 	lw	t7,20(v1)
     1d8:	830e008c 	lb	t6,140(t8)
     1dc:	032fc024 	and	t8,t9,t7
     1e0:	91190005 	lbu	t9,5(t0)
     1e4:	03387807 	srav	t7,t8,t9
     1e8:	000fc040 	sll	t8,t7,0x1
     1ec:	0058c821 	addu	t9,v0,t8
     1f0:	972f0028 	lhu	t7,40(t9)
     1f4:	51cf0028 	beql	t6,t7,298 <func_808198A0+0x298>
     1f8:	8ca202c0 	lw	v0,704(a1)
     1fc:	1520000e 	bnez	t1,238 <func_808198A0+0x238>
     200:	24010001 	li	at,1
     204:	90f80000 	lbu	t8,0(a3)
     208:	8c8f00a0 	lw	t7,160(a0)
     20c:	0098c821 	addu	t9,a0,t8
     210:	8c780018 	lw	t8,24(v1)
     214:	832e008c 	lb	t6,140(t9)
     218:	01f8c824 	and	t9,t7,t8
     21c:	910f0006 	lbu	t7,6(t0)
     220:	01f9c007 	srav	t8,t9,t7
     224:	0018c840 	sll	t9,t8,0x1
     228:	00597821 	addu	t7,v0,t9
     22c:	95f80030 	lhu	t8,48(t7)
     230:	51d80019 	beql	t6,t8,298 <func_808198A0+0x298>
     234:	8ca202c0 	lw	v0,704(a1)
     238:	1521000e 	bne	t1,at,274 <func_808198A0+0x274>
     23c:	00000000 	nop
     240:	90f90000 	lbu	t9,0(a3)
     244:	8c9800a0 	lw	t8,160(a0)
     248:	00997821 	addu	t7,a0,t9
     24c:	8c79001c 	lw	t9,28(v1)
     250:	81ee008c 	lb	t6,140(t7)
     254:	03197824 	and	t7,t8,t9
     258:	91180007 	lbu	t8,7(t0)
     25c:	030fc807 	srav	t9,t7,t8
     260:	00197840 	sll	t7,t9,0x1
     264:	004fc021 	addu	t8,v0,t7
     268:	97190038 	lhu	t9,56(t8)
     26c:	51d9000a 	beql	t6,t9,298 <func_808198A0+0x298>
     270:	8ca202c0 	lw	v0,704(a1)
     274:	152c0002 	bne	t1,t4,280 <func_808198A0+0x280>
     278:	24010032 	li	at,50
     27c:	10c10005 	beq	a2,at,294 <func_808198A0+0x294>
     280:	24010010 	li	at,16
     284:	1521000c 	bne	t1,at,2b8 <func_808198A0+0x2b8>
     288:	2401000f 	li	at,15
     28c:	54c1000b 	bnel	a2,at,2bc <func_808198A0+0x2bc>
     290:	28c1000a 	slti	at,a2,10
     294:	8ca202c0 	lw	v0,704(a1)
     298:	3c0178ff 	lui	at,0x78ff
     29c:	244f0008 	addiu	t7,v0,8
     2a0:	acaf02c0 	sw	t7,704(a1)
     2a4:	ac4b0000 	sw	t3,0(v0)
     2a8:	95580208 	lhu	t8,520(t2)
     2ac:	330e00ff 	andi	t6,t8,0xff
     2b0:	01c1c825 	or	t9,t6,at
     2b4:	ac590004 	sw	t9,4(v0)
     2b8:	28c1000a 	slti	at,a2,10
     2bc:	14200009 	bnez	at,2e4 <func_808198A0+0x2e4>
     2c0:	00001825 	move	v1,zero
     2c4:	24c6fff6 	addiu	a2,a2,-10
     2c8:	00063400 	sll	a2,a2,0x10
     2cc:	24630001 	addiu	v1,v1,1
     2d0:	00063403 	sra	a2,a2,0x10
     2d4:	28c1000a 	slti	at,a2,10
     2d8:	00031c00 	sll	v1,v1,0x10
     2dc:	1020fff9 	beqz	at,2c4 <func_808198A0+0x2c4>
     2e0:	00031c03 	sra	v1,v1,0x10
     2e4:	8ca202c0 	lw	v0,704(a1)
     2e8:	3c0e0100 	lui	t6,0x100
     2ec:	24070074 	li	a3,116
     2f0:	244f0008 	addiu	t7,v0,8
     2f4:	acaf02c0 	sw	t7,704(a1)
     2f8:	ac400004 	sw	zero,4(v0)
     2fc:	1060004a 	beqz	v1,428 <func_808198A0+0x428>
     300:	ac4d0000 	sw	t5,0(v0)
     304:	8ca202c0 	lw	v0,704(a1)
     308:	35ce4008 	ori	t6,t6,0x4008
     30c:	0009c840 	sll	t9,t1,0x1
     310:	24580008 	addiu	t8,v0,8
     314:	acb802c0 	sw	t8,704(a1)
     318:	3c0f0000 	lui	t7,0x0
     31c:	01f97821 	addu	t7,t7,t9
     320:	ac4e0000 	sw	t6,0(v0)
     324:	85ef0000 	lh	t7,0(t7)
     328:	8d4e0158 	lw	t6,344(t2)
     32c:	000fc180 	sll	t8,t7,0x6
     330:	030ec821 	addu	t9,t8,t6
     334:	272f06c0 	addiu	t7,t9,1728
     338:	ac4f0004 	sw	t7,4(v0)
     33c:	8ca202c0 	lw	v0,704(a1)
     340:	3c0f0200 	lui	t7,0x200
     344:	25ef35c0 	addiu	t7,t7,13760
     348:	24580008 	addiu	t8,v0,8
     34c:	acb802c0 	sw	t8,704(a1)
     350:	0003c980 	sll	t9,v1,0x6
     354:	032fc021 	addu	t8,t9,t7
     358:	3c0efd70 	lui	t6,0xfd70
     35c:	ac4e0000 	sw	t6,0(v0)
     360:	ac580004 	sw	t8,4(v0)
     364:	8ca202c0 	lw	v0,704(a1)
     368:	3c0f0700 	lui	t7,0x700
     36c:	3c19f570 	lui	t9,0xf570
     370:	244e0008 	addiu	t6,v0,8
     374:	acae02c0 	sw	t6,704(a1)
     378:	ac4f0004 	sw	t7,4(v0)
     37c:	ac590000 	sw	t9,0(v0)
     380:	8ca202c0 	lw	v0,704(a1)
     384:	3c0ee600 	lui	t6,0xe600
     388:	3c0ff300 	lui	t7,0xf300
     38c:	24580008 	addiu	t8,v0,8
     390:	acb802c0 	sw	t8,704(a1)
     394:	ac400004 	sw	zero,4(v0)
     398:	ac4e0000 	sw	t6,0(v0)
     39c:	8ca202c0 	lw	v0,704(a1)
     3a0:	3c180701 	lui	t8,0x701
     3a4:	3718f800 	ori	t8,t8,0xf800
     3a8:	24590008 	addiu	t9,v0,8
     3ac:	acb902c0 	sw	t9,704(a1)
     3b0:	ac580004 	sw	t8,4(v0)
     3b4:	ac4f0000 	sw	t7,0(v0)
     3b8:	8ca202c0 	lw	v0,704(a1)
     3bc:	3c0ff568 	lui	t7,0xf568
     3c0:	35ef0200 	ori	t7,t7,0x200
     3c4:	244e0008 	addiu	t6,v0,8
     3c8:	acae02c0 	sw	t6,704(a1)
     3cc:	ac400004 	sw	zero,4(v0)
     3d0:	ac4d0000 	sw	t5,0(v0)
     3d4:	8ca202c0 	lw	v0,704(a1)
     3d8:	3c0ef200 	lui	t6,0xf200
     3dc:	24590008 	addiu	t9,v0,8
     3e0:	acb902c0 	sw	t9,704(a1)
     3e4:	ac400004 	sw	zero,4(v0)
     3e8:	ac4f0000 	sw	t7,0(v0)
     3ec:	8ca202c0 	lw	v0,704(a1)
     3f0:	3c190001 	lui	t9,0x1
     3f4:	3739c01c 	ori	t9,t9,0xc01c
     3f8:	24580008 	addiu	t8,v0,8
     3fc:	acb802c0 	sw	t8,704(a1)
     400:	ac590004 	sw	t9,4(v0)
     404:	ac4e0000 	sw	t6,0(v0)
     408:	8ca202c0 	lw	v0,704(a1)
     40c:	3c180700 	lui	t8,0x700
     410:	37180406 	ori	t8,t8,0x406
     414:	244f0008 	addiu	t7,v0,8
     418:	acaf02c0 	sw	t7,704(a1)
     41c:	240e0602 	li	t6,1538
     420:	ac4e0004 	sw	t6,4(v0)
     424:	ac580000 	sw	t8,0(v0)
     428:	8ca202c0 	lw	v0,704(a1)
     42c:	3c0f0000 	lui	t7,0x0
     430:	3c0e0100 	lui	t6,0x100
     434:	24580008 	addiu	t8,v0,8
     438:	acb802c0 	sw	t8,704(a1)
     43c:	35ce4008 	ori	t6,t6,0x4008
     440:	25ef0000 	addiu	t7,t7,0
     444:	0009c840 	sll	t9,t1,0x1
     448:	032f2021 	addu	a0,t9,t7
     44c:	ac4e0000 	sw	t6,0(v0)
     450:	84990000 	lh	t9,0(a0)
     454:	8d580158 	lw	t8,344(t2)
     458:	27a40080 	addiu	a0,sp,128
     45c:	00197980 	sll	t7,t9,0x6
     460:	01f87021 	addu	t6,t7,t8
     464:	25d90700 	addiu	t9,t6,1792
     468:	ac590004 	sw	t9,4(v0)
     46c:	8ca202c0 	lw	v0,704(a1)
     470:	3c190200 	lui	t9,0x200
     474:	273935c0 	addiu	t9,t9,13760
     478:	244f0008 	addiu	t7,v0,8
     47c:	acaf02c0 	sw	t7,704(a1)
     480:	00067180 	sll	t6,a2,0x6
     484:	01d97821 	addu	t7,t6,t9
     488:	3c18fd70 	lui	t8,0xfd70
     48c:	ac580000 	sw	t8,0(v0)
     490:	ac4f0004 	sw	t7,4(v0)
     494:	8ca202c0 	lw	v0,704(a1)
     498:	3c190700 	lui	t9,0x700
     49c:	3c0ef570 	lui	t6,0xf570
     4a0:	24580008 	addiu	t8,v0,8
     4a4:	acb802c0 	sw	t8,704(a1)
     4a8:	ac590004 	sw	t9,4(v0)
     4ac:	ac4e0000 	sw	t6,0(v0)
     4b0:	8ca202c0 	lw	v0,704(a1)
     4b4:	3c18e600 	lui	t8,0xe600
     4b8:	3c19f300 	lui	t9,0xf300
     4bc:	244f0008 	addiu	t7,v0,8
     4c0:	acaf02c0 	sw	t7,704(a1)
     4c4:	ac400004 	sw	zero,4(v0)
     4c8:	ac580000 	sw	t8,0(v0)
     4cc:	8ca202c0 	lw	v0,704(a1)
     4d0:	3c0f0701 	lui	t7,0x701
     4d4:	35eff800 	ori	t7,t7,0xf800
     4d8:	244e0008 	addiu	t6,v0,8
     4dc:	acae02c0 	sw	t6,704(a1)
     4e0:	ac4f0004 	sw	t7,4(v0)
     4e4:	ac590000 	sw	t9,0(v0)
     4e8:	8ca202c0 	lw	v0,704(a1)
     4ec:	3c19f568 	lui	t9,0xf568
     4f0:	37390200 	ori	t9,t9,0x200
     4f4:	24580008 	addiu	t8,v0,8
     4f8:	acb802c0 	sw	t8,704(a1)
     4fc:	ac400004 	sw	zero,4(v0)
     500:	ac4d0000 	sw	t5,0(v0)
     504:	8ca202c0 	lw	v0,704(a1)
     508:	3c18f200 	lui	t8,0xf200
     50c:	3c060000 	lui	a2,0x0
     510:	244e0008 	addiu	t6,v0,8
     514:	acae02c0 	sw	t6,704(a1)
     518:	ac400004 	sw	zero,4(v0)
     51c:	ac590000 	sw	t9,0(v0)
     520:	8ca202c0 	lw	v0,704(a1)
     524:	3c0e0001 	lui	t6,0x1
     528:	35cec01c 	ori	t6,t6,0xc01c
     52c:	244f0008 	addiu	t7,v0,8
     530:	acaf02c0 	sw	t7,704(a1)
     534:	ac4e0004 	sw	t6,4(v0)
     538:	ac580000 	sw	t8,0(v0)
     53c:	8ca202c0 	lw	v0,704(a1)
     540:	3c0f0700 	lui	t7,0x700
     544:	35ef0406 	ori	t7,t7,0x406
     548:	24590008 	addiu	t9,v0,8
     54c:	acb902c0 	sw	t9,704(a1)
     550:	24180602 	li	t8,1538
     554:	24c60000 	addiu	a2,a2,0
     558:	ac580004 	sw	t8,4(v0)
     55c:	0c000000 	jal	0 <func_808198A0>
     560:	ac4f0000 	sw	t7,0(v0)
     564:	8fbf0014 	lw	ra,20(sp)
     568:	27bd0098 	addiu	sp,sp,152
     56c:	03e00008 	jr	ra
     570:	00000000 	nop

00000574 <func_80819E14>:
     574:	afa50004 	sw	a1,4(sp)
     578:	30a5ffff 	andi	a1,a1,0xffff
     57c:	00057100 	sll	t6,a1,0x4
     580:	00ce1021 	addu	v0,a2,t6
     584:	844f0000 	lh	t7,0(v0)
     588:	8c980168 	lw	t8,360(a0)
     58c:	a70f0000 	sh	t7,0(t8)
     590:	8c880168 	lw	t0,360(a0)
     594:	84590002 	lh	t9,2(v0)
     598:	03e00008 	jr	ra
     59c:	a5190002 	sh	t9,2(t0)

000005a0 <func_80819E40>:
     5a0:	27bdffe8 	addiu	sp,sp,-24
     5a4:	afbf0014 	sw	ra,20(sp)
     5a8:	94850246 	lhu	a1,582(a0)
     5ac:	8c860158 	lw	a2,344(a0)
     5b0:	00052880 	sll	a1,a1,0x2
     5b4:	0c000000 	jal	0 <func_808198A0>
     5b8:	30a5ffff 	andi	a1,a1,0xffff
     5bc:	8fbf0014 	lw	ra,20(sp)
     5c0:	27bd0018 	addiu	sp,sp,24
     5c4:	03e00008 	jr	ra
     5c8:	00000000 	nop

000005cc <func_80819E6C>:
     5cc:	27bdff48 	addiu	sp,sp,-184
     5d0:	afbf0034 	sw	ra,52(sp)
     5d4:	afb50030 	sw	s5,48(sp)
     5d8:	afb4002c 	sw	s4,44(sp)
     5dc:	afb30028 	sw	s3,40(sp)
     5e0:	afb20024 	sw	s2,36(sp)
     5e4:	afb10020 	sw	s1,32(sp)
     5e8:	afb0001c 	sw	s0,28(sp)
     5ec:	afa400b8 	sw	a0,184(sp)
     5f0:	8c850000 	lw	a1,0(a0)
     5f4:	3c060000 	lui	a2,0x0
     5f8:	24c60000 	addiu	a2,a2,0
     5fc:	27a40088 	addiu	a0,sp,136
     600:	240700ea 	li	a3,234
     604:	0c000000 	jal	0 <func_808198A0>
     608:	00a09825 	move	s3,a1
     60c:	8faf00b8 	lw	t7,184(sp)
     610:	0c000000 	jal	0 <func_808198A0>
     614:	8de40000 	lw	a0,0(t7)
     618:	8e6302c0 	lw	v1,704(s3)
     61c:	3c19fc11 	lui	t9,0xfc11
     620:	3c0aff2f 	lui	t2,0xff2f
     624:	24780008 	addiu	t8,v1,8
     628:	ae7802c0 	sw	t8,704(s3)
     62c:	354affff 	ori	t2,t2,0xffff
     630:	37399623 	ori	t9,t9,0x9623
     634:	ac790000 	sw	t9,0(v1)
     638:	ac6a0004 	sw	t2,4(v1)
     63c:	8fb100b8 	lw	s1,184(sp)
     640:	3c010001 	lui	at,0x1
     644:	34210760 	ori	at,at,0x760
     648:	02218821 	addu	s1,s1,at
     64c:	962b01d4 	lhu	t3,468(s1)
     650:	24010006 	li	at,6
     654:	a6200260 	sh	zero,608(s1)
     658:	15610244 	bne	t3,at,f6c <func_80819E6C+0x9a0>
     65c:	a620025e 	sh	zero,606(s1)
     660:	962c01e4 	lhu	t4,484(s1)
     664:	55800242 	bnezl	t4,f70 <func_80819E6C+0x9a4>
     668:	962f01e4 	lhu	t7,484(s1)
     66c:	962d01e8 	lhu	t5,488(s1)
     670:	55a0023f 	bnezl	t5,f70 <func_80819E6C+0x9a4>
     674:	962f01e4 	lhu	t7,484(s1)
     678:	862e0218 	lh	t6,536(s1)
     67c:	00009025 	move	s2,zero
     680:	24190004 	li	t9,4
     684:	a7ae009e 	sh	t6,158(sp)
     688:	962f023e 	lhu	t7,574(s1)
     68c:	a7af00aa 	sh	t7,170(sp)
     690:	96380246 	lhu	t8,582(s1)
     694:	a7b800a8 	sh	t8,168(sp)
     698:	86220238 	lh	v0,568(s1)
     69c:	544000a6 	bnezl	v0,938 <func_80819E6C+0x36c>
     6a0:	2401000a 	li	at,10
     6a4:	a6390260 	sh	t9,608(s1)
     6a8:	97a600aa 	lhu	a2,170(sp)
     6ac:	240103e7 	li	at,999
     6b0:	240a0028 	li	t2,40
     6b4:	14c10002 	bne	a2,at,6c0 <func_80819E6C+0xf4>
     6b8:	3c040000 	lui	a0,0x0
     6bc:	a62a0214 	sh	t2,532(s1)
     6c0:	86220214 	lh	v0,532(s1)
     6c4:	24840000 	addiu	a0,a0,0
     6c8:	04400003 	bltz	v0,6d8 <func_80819E6C+0x10c>
     6cc:	00021823 	negu	v1,v0
     6d0:	10000001 	b	6d8 <func_80819E6C+0x10c>
     6d4:	00401825 	move	v1,v0
     6d8:	2861001f 	slti	at,v1,31
     6dc:	14200093 	bnez	at,92c <func_80819E6C+0x360>
     6e0:	00000000 	nop
     6e4:	86250218 	lh	a1,536(s1)
     6e8:	86230222 	lh	v1,546(s1)
     6ec:	8628022c 	lh	t0,556(s1)
     6f0:	afa60048 	sw	a2,72(sp)
     6f4:	a7a500a4 	sh	a1,164(sp)
     6f8:	a7a300a2 	sh	v1,162(sp)
     6fc:	0c000000 	jal	0 <func_808198A0>
     700:	a7a800a0 	sh	t0,160(sp)
     704:	3c140000 	lui	s4,0x0
     708:	87a300a2 	lh	v1,162(sp)
     70c:	87a700a4 	lh	a3,164(sp)
     710:	87a800a0 	lh	t0,160(sp)
     714:	26940000 	addiu	s4,s4,0
     718:	86300222 	lh	s0,546(s1)
     71c:	241500ff 	li	s5,255
     720:	86220214 	lh	v0,532(s1)
     724:	2841ffe2 	slti	at,v0,-30
     728:	50200037 	beqzl	at,808 <func_80819E6C+0x23c>
     72c:	2841001f 	slti	at,v0,31
     730:	5200000f 	beqzl	s0,770 <func_80819E6C+0x1a4>
     734:	8639022c 	lh	t9,556(s1)
     738:	862c0218 	lh	t4,536(s1)
     73c:	260bffff 	addiu	t3,s0,-1
     740:	a62b0222 	sh	t3,546(s1)
     744:	258dffff 	addiu	t5,t4,-1
     748:	a62d0218 	sh	t5,536(s1)
     74c:	862e0218 	lh	t6,536(s1)
     750:	028e7821 	addu	t7,s4,t6
     754:	91f80074 	lbu	t8,116(t7)
     758:	12b80002 	beq	s5,t8,764 <func_80819E6C+0x198>
     75c:	00000000 	nop
     760:	24120001 	li	s2,1
     764:	1000005e 	b	8e0 <func_80819E6C+0x314>
     768:	86300222 	lh	s0,546(s1)
     76c:	8639022c 	lh	t9,556(s1)
     770:	a6230222 	sh	v1,546(s1)
     774:	2405000a 	li	a1,10
     778:	272a0001 	addiu	t2,t9,1
     77c:	a62a022c 	sh	t2,556(s1)
     780:	8626022c 	lh	a2,556(s1)
     784:	28c10004 	slti	at,a2,4
     788:	54200004 	bnezl	at,79c <func_80819E6C+0x1d0>
     78c:	86300222 	lh	s0,546(s1)
     790:	a620022c 	sh	zero,556(s1)
     794:	8626022c 	lh	a2,556(s1)
     798:	86300222 	lh	s0,546(s1)
     79c:	00065880 	sll	t3,a2,0x2
     7a0:	01665823 	subu	t3,t3,a2
     7a4:	000b5840 	sll	t3,t3,0x1
     7a8:	01706021 	addu	t4,t3,s0
     7ac:	a62c0218 	sh	t4,536(s1)
     7b0:	862d0218 	lh	t5,536(s1)
     7b4:	29a10018 	slti	at,t5,24
     7b8:	14200003 	bnez	at,7c8 <func_80819E6C+0x1fc>
     7bc:	00000000 	nop
     7c0:	a6300218 	sh	s0,536(s1)
     7c4:	8626022c 	lh	a2,556(s1)
     7c8:	15060045 	bne	t0,a2,8e0 <func_80819E6C+0x314>
     7cc:	00000000 	nop
     7d0:	a6230222 	sh	v1,546(s1)
     7d4:	a6270218 	sh	a3,536(s1)
     7d8:	a7a800a0 	sh	t0,160(sp)
     7dc:	a7a700a4 	sh	a3,164(sp)
     7e0:	a7a300a2 	sh	v1,162(sp)
     7e4:	8fa400b8 	lw	a0,184(sp)
     7e8:	0c000000 	jal	0 <func_808198A0>
     7ec:	24120002 	li	s2,2
     7f0:	87a300a2 	lh	v1,162(sp)
     7f4:	87a700a4 	lh	a3,164(sp)
     7f8:	87a800a0 	lh	t0,160(sp)
     7fc:	10000038 	b	8e0 <func_80819E6C+0x314>
     800:	86300222 	lh	s0,546(s1)
     804:	2841001f 	slti	at,v0,31
     808:	14200035 	bnez	at,8e0 <func_80819E6C+0x314>
     80c:	2a010005 	slti	at,s0,5
     810:	5020000f 	beqzl	at,850 <func_80819E6C+0x284>
     814:	862c022c 	lh	t4,556(s1)
     818:	862f0218 	lh	t7,536(s1)
     81c:	260e0001 	addiu	t6,s0,1
     820:	a62e0222 	sh	t6,546(s1)
     824:	25f80001 	addiu	t8,t7,1
     828:	a6380218 	sh	t8,536(s1)
     82c:	86390218 	lh	t9,536(s1)
     830:	02995021 	addu	t2,s4,t9
     834:	914b0074 	lbu	t3,116(t2)
     838:	12ab0002 	beq	s5,t3,844 <func_80819E6C+0x278>
     83c:	00000000 	nop
     840:	24120001 	li	s2,1
     844:	10000026 	b	8e0 <func_80819E6C+0x314>
     848:	86300222 	lh	s0,546(s1)
     84c:	862c022c 	lh	t4,556(s1)
     850:	a6230222 	sh	v1,546(s1)
     854:	2405000b 	li	a1,11
     858:	258d0001 	addiu	t5,t4,1
     85c:	a62d022c 	sh	t5,556(s1)
     860:	8626022c 	lh	a2,556(s1)
     864:	28c10004 	slti	at,a2,4
     868:	54200004 	bnezl	at,87c <func_80819E6C+0x2b0>
     86c:	86300222 	lh	s0,546(s1)
     870:	a620022c 	sh	zero,556(s1)
     874:	8626022c 	lh	a2,556(s1)
     878:	86300222 	lh	s0,546(s1)
     87c:	00067080 	sll	t6,a2,0x2
     880:	01c67023 	subu	t6,t6,a2
     884:	000e7040 	sll	t6,t6,0x1
     888:	01d07821 	addu	t7,t6,s0
     88c:	a62f0218 	sh	t7,536(s1)
     890:	86380218 	lh	t8,536(s1)
     894:	2b010018 	slti	at,t8,24
     898:	14200003 	bnez	at,8a8 <func_80819E6C+0x2dc>
     89c:	00000000 	nop
     8a0:	a6300218 	sh	s0,536(s1)
     8a4:	8626022c 	lh	a2,556(s1)
     8a8:	1506000d 	bne	t0,a2,8e0 <func_80819E6C+0x314>
     8ac:	00000000 	nop
     8b0:	a6230222 	sh	v1,546(s1)
     8b4:	a6270218 	sh	a3,536(s1)
     8b8:	a7a800a0 	sh	t0,160(sp)
     8bc:	a7a700a4 	sh	a3,164(sp)
     8c0:	a7a300a2 	sh	v1,162(sp)
     8c4:	8fa400b8 	lw	a0,184(sp)
     8c8:	0c000000 	jal	0 <func_808198A0>
     8cc:	24120002 	li	s2,2
     8d0:	87a300a2 	lh	v1,162(sp)
     8d4:	87a700a4 	lh	a3,164(sp)
     8d8:	87a800a0 	lh	t0,160(sp)
     8dc:	86300222 	lh	s0,546(s1)
     8e0:	5240ff90 	beqzl	s2,724 <func_80819E6C+0x158>
     8e4:	86220214 	lh	v0,532(s1)
     8e8:	24010001 	li	at,1
     8ec:	16410006 	bne	s2,at,908 <func_80819E6C+0x33c>
     8f0:	86250218 	lh	a1,536(s1)
     8f4:	0285c821 	addu	t9,s4,a1
     8f8:	932a0074 	lbu	t2,116(t9)
     8fc:	314bffff 	andi	t3,t2,0xffff
     900:	afab0048 	sw	t3,72(sp)
     904:	a7aa00aa 	sh	t2,170(sp)
     908:	8fac0048 	lw	t4,72(sp)
     90c:	3c040000 	lui	a0,0x0
     910:	24840000 	addiu	a0,a0,0
     914:	afac0010 	sw	t4,16(sp)
     918:	862d0238 	lh	t5,568(s1)
     91c:	02003025 	move	a2,s0
     920:	02403825 	move	a3,s2
     924:	0c000000 	jal	0 <func_808198A0>
     928:	afad0014 	sw	t5,20(sp)
     92c:	1000006d 	b	ae4 <func_80819E6C+0x518>
     930:	86220238 	lh	v0,568(s1)
     934:	2401000a 	li	at,10
     938:	54410038 	bnel	v0,at,a1c <func_80819E6C+0x450>
     93c:	862b0214 	lh	t3,532(s1)
     940:	862e0214 	lh	t6,532(s1)
     944:	3c050000 	lui	a1,0x0
     948:	24a50000 	addiu	a1,a1,0
     94c:	29c1001f 	slti	at,t6,31
     950:	1420002f 	bnez	at,a10 <func_80819E6C+0x444>
     954:	24044809 	li	a0,18441
     958:	3c0f0000 	lui	t7,0x0
     95c:	3c180000 	lui	t8,0x0
     960:	a620025c 	sh	zero,604(s1)
     964:	a6200238 	sh	zero,568(s1)
     968:	27180000 	addiu	t8,t8,0
     96c:	25e70000 	addiu	a3,t7,0
     970:	afa70010 	sw	a3,16(sp)
     974:	afb80014 	sw	t8,20(sp)
     978:	0c000000 	jal	0 <func_808198A0>
     97c:	24060004 	li	a2,4
     980:	3c140000 	lui	s4,0x0
     984:	00004025 	move	t0,zero
     988:	00001825 	move	v1,zero
     98c:	00003825 	move	a3,zero
     990:	26940000 	addiu	s4,s4,0
     994:	241500ff 	li	s5,255
     998:	0287c821 	addu	t9,s4,a3
     99c:	932a0074 	lbu	t2,116(t9)
     9a0:	52aa0008 	beql	s5,t2,9c4 <func_80819E6C+0x3f8>
     9a4:	25080001 	addiu	t0,t0,1
     9a8:	a6270218 	sh	a3,536(s1)
     9ac:	a6230222 	sh	v1,546(s1)
     9b0:	a628022c 	sh	t0,556(s1)
     9b4:	24120001 	li	s2,1
     9b8:	1000004a 	b	ae4 <func_80819E6C+0x518>
     9bc:	86220238 	lh	v0,568(s1)
     9c0:	25080001 	addiu	t0,t0,1
     9c4:	00084400 	sll	t0,t0,0x10
     9c8:	00084403 	sra	t0,t0,0x10
     9cc:	24e70006 	addiu	a3,a3,6
     9d0:	00073c00 	sll	a3,a3,0x10
     9d4:	29010004 	slti	at,t0,4
     9d8:	1420ffef 	bnez	at,998 <func_80819E6C+0x3cc>
     9dc:	00073c03 	sra	a3,a3,0x10
     9e0:	24620001 	addiu	v0,v1,1
     9e4:	00021c00 	sll	v1,v0,0x10
     9e8:	00031c03 	sra	v1,v1,0x10
     9ec:	00023c00 	sll	a3,v0,0x10
     9f0:	28610006 	slti	at,v1,6
     9f4:	00004025 	move	t0,zero
     9f8:	1420ffe7 	bnez	at,998 <func_80819E6C+0x3cc>
     9fc:	00073c03 	sra	a3,a3,0x10
     a00:	8fa400b8 	lw	a0,184(sp)
     a04:	0c000000 	jal	0 <func_808198A0>
     a08:	2405000b 	li	a1,11
     a0c:	86220238 	lh	v0,568(s1)
     a10:	10000034 	b	ae4 <func_80819E6C+0x518>
     a14:	00000000 	nop
     a18:	862b0214 	lh	t3,532(s1)
     a1c:	2961ffe2 	slti	at,t3,-30
     a20:	10200030 	beqz	at,ae4 <func_80819E6C+0x518>
     a24:	3c0c0000 	lui	t4,0x0
     a28:	3c0d0000 	lui	t5,0x0
     a2c:	a620025c 	sh	zero,604(s1)
     a30:	a6200238 	sh	zero,568(s1)
     a34:	25ad0000 	addiu	t5,t5,0
     a38:	25870000 	addiu	a3,t4,0
     a3c:	3c050000 	lui	a1,0x0
     a40:	24a50000 	addiu	a1,a1,0
     a44:	afa70010 	sw	a3,16(sp)
     a48:	afad0014 	sw	t5,20(sp)
     a4c:	24044809 	li	a0,18441
     a50:	0c000000 	jal	0 <func_808198A0>
     a54:	24060004 	li	a2,4
     a58:	3c140000 	lui	s4,0x0
     a5c:	24030005 	li	v1,5
     a60:	24070005 	li	a3,5
     a64:	00004025 	move	t0,zero
     a68:	26940000 	addiu	s4,s4,0
     a6c:	241500ff 	li	s5,255
     a70:	02877021 	addu	t6,s4,a3
     a74:	91cf0074 	lbu	t7,116(t6)
     a78:	52af0008 	beql	s5,t7,a9c <func_80819E6C+0x4d0>
     a7c:	25080001 	addiu	t0,t0,1
     a80:	a6270218 	sh	a3,536(s1)
     a84:	a6230222 	sh	v1,546(s1)
     a88:	a628022c 	sh	t0,556(s1)
     a8c:	24120001 	li	s2,1
     a90:	10000014 	b	ae4 <func_80819E6C+0x518>
     a94:	86220238 	lh	v0,568(s1)
     a98:	25080001 	addiu	t0,t0,1
     a9c:	00084400 	sll	t0,t0,0x10
     aa0:	00084403 	sra	t0,t0,0x10
     aa4:	24e70006 	addiu	a3,a3,6
     aa8:	00073c00 	sll	a3,a3,0x10
     aac:	29010004 	slti	at,t0,4
     ab0:	1420ffef 	bnez	at,a70 <func_80819E6C+0x4a4>
     ab4:	00073c03 	sra	a3,a3,0x10
     ab8:	2462ffff 	addiu	v0,v1,-1
     abc:	00021c00 	sll	v1,v0,0x10
     ac0:	00023c00 	sll	a3,v0,0x10
     ac4:	00031c03 	sra	v1,v1,0x10
     ac8:	00004025 	move	t0,zero
     acc:	0461ffe8 	bgez	v1,a70 <func_80819E6C+0x4a4>
     ad0:	00073c03 	sra	a3,a3,0x10
     ad4:	8fa400b8 	lw	a0,184(sp)
     ad8:	0c000000 	jal	0 <func_808198A0>
     adc:	2405000a 	li	a1,10
     ae0:	86220238 	lh	v0,568(s1)
     ae4:	3c140000 	lui	s4,0x0
     ae8:	26940000 	addiu	s4,s4,0
     aec:	1440010d 	bnez	v0,f24 <func_80819E6C+0x958>
     af0:	241500ff 	li	s5,255
     af4:	97a400aa 	lhu	a0,170(sp)
     af8:	240103e7 	li	at,999
     afc:	86250218 	lh	a1,536(s1)
     b00:	50810049 	beql	a0,at,c28 <func_80819E6C+0x65c>
     b04:	a7a500a8 	sh	a1,168(sp)
     b08:	86220216 	lh	v0,534(s1)
     b0c:	00053c00 	sll	a3,a1,0x10
     b10:	04400003 	bltz	v0,b20 <func_80819E6C+0x554>
     b14:	00021823 	negu	v1,v0
     b18:	10000001 	b	b20 <func_80819E6C+0x554>
     b1c:	00401825 	move	v1,v0
     b20:	2861001f 	slti	at,v1,31
     b24:	54200040 	bnezl	at,c28 <func_80819E6C+0x65c>
     b28:	a7a500a8 	sh	a1,168(sp)
     b2c:	afa40048 	sw	a0,72(sp)
     b30:	8626022c 	lh	a2,556(s1)
     b34:	00009025 	move	s2,zero
     b38:	00073c03 	sra	a3,a3,0x10
     b3c:	00064400 	sll	t0,a2,0x10
     b40:	00084403 	sra	t0,t0,0x10
     b44:	86220216 	lh	v0,534(s1)
     b48:	2841001f 	slti	at,v0,31
     b4c:	54200015 	bnezl	at,ba4 <func_80819E6C+0x5d8>
     b50:	2841ffe2 	slti	at,v0,-30
     b54:	50c0000e 	beqzl	a2,b90 <func_80819E6C+0x5c4>
     b58:	a628022c 	sh	t0,556(s1)
     b5c:	86390218 	lh	t9,536(s1)
     b60:	24d8ffff 	addiu	t8,a2,-1
     b64:	a638022c 	sh	t8,556(s1)
     b68:	272afffa 	addiu	t2,t9,-6
     b6c:	a62a0218 	sh	t2,536(s1)
     b70:	862b0218 	lh	t3,536(s1)
     b74:	028b6021 	addu	t4,s4,t3
     b78:	918d0074 	lbu	t5,116(t4)
     b7c:	12ad0006 	beq	s5,t5,b98 <func_80819E6C+0x5cc>
     b80:	00000000 	nop
     b84:	10000004 	b	b98 <func_80819E6C+0x5cc>
     b88:	24120001 	li	s2,1
     b8c:	a628022c 	sh	t0,556(s1)
     b90:	a6270218 	sh	a3,536(s1)
     b94:	24120002 	li	s2,2
     b98:	10000017 	b	bf8 <func_80819E6C+0x62c>
     b9c:	8626022c 	lh	a2,556(s1)
     ba0:	2841ffe2 	slti	at,v0,-30
     ba4:	10200014 	beqz	at,bf8 <func_80819E6C+0x62c>
     ba8:	28c10003 	slti	at,a2,3
     bac:	5020000f 	beqzl	at,bec <func_80819E6C+0x620>
     bb0:	a628022c 	sh	t0,556(s1)
     bb4:	862f0218 	lh	t7,536(s1)
     bb8:	24ce0001 	addiu	t6,a2,1
     bbc:	a62e022c 	sh	t6,556(s1)
     bc0:	25f80006 	addiu	t8,t7,6
     bc4:	a6380218 	sh	t8,536(s1)
     bc8:	86390218 	lh	t9,536(s1)
     bcc:	02995021 	addu	t2,s4,t9
     bd0:	914b0074 	lbu	t3,116(t2)
     bd4:	12ab0002 	beq	s5,t3,be0 <func_80819E6C+0x614>
     bd8:	00000000 	nop
     bdc:	24120001 	li	s2,1
     be0:	10000005 	b	bf8 <func_80819E6C+0x62c>
     be4:	8626022c 	lh	a2,556(s1)
     be8:	a628022c 	sh	t0,556(s1)
     bec:	a6270218 	sh	a3,536(s1)
     bf0:	8626022c 	lh	a2,556(s1)
     bf4:	24120002 	li	s2,2
     bf8:	5240ffd3 	beqzl	s2,b48 <func_80819E6C+0x57c>
     bfc:	86220216 	lh	v0,534(s1)
     c00:	8fac0048 	lw	t4,72(sp)
     c04:	3c040000 	lui	a0,0x0
     c08:	86250218 	lh	a1,536(s1)
     c0c:	24840000 	addiu	a0,a0,0
     c10:	02403825 	move	a3,s2
     c14:	0c000000 	jal	0 <func_808198A0>
     c18:	afac0010 	sw	t4,16(sp)
     c1c:	86250218 	lh	a1,536(s1)
     c20:	8fa40048 	lw	a0,72(sp)
     c24:	a7a500a8 	sh	a1,168(sp)
     c28:	240d0004 	li	t5,4
     c2c:	24010001 	li	at,1
     c30:	16410006 	bne	s2,at,c4c <func_80819E6C+0x680>
     c34:	a62d0260 	sh	t5,608(s1)
     c38:	02857021 	addu	t6,s4,a1
     c3c:	91cf0074 	lbu	t7,116(t6)
     c40:	a7af00aa 	sh	t7,170(sp)
     c44:	10000007 	b	c64 <func_80819E6C+0x698>
     c48:	31e4ffff 	andi	a0,t7,0xffff
     c4c:	24010002 	li	at,2
     c50:	12410004 	beq	s2,at,c64 <func_80819E6C+0x698>
     c54:	0285c021 	addu	t8,s4,a1
     c58:	93190074 	lbu	t9,116(t8)
     c5c:	a7b900aa 	sh	t9,170(sp)
     c60:	3324ffff 	andi	a0,t9,0xffff
     c64:	97aa00aa 	lhu	t2,170(sp)
     c68:	3c0d0000 	lui	t5,0x0
     c6c:	25ad0000 	addiu	t5,t5,0
     c70:	a62a023e 	sh	t2,574(s1)
     c74:	97ab00a8 	lhu	t3,168(sp)
     c78:	24010009 	li	at,9
     c7c:	a62b0246 	sh	t3,582(s1)
     c80:	97ac00a8 	lhu	t4,168(sp)
     c84:	018d8021 	addu	s0,t4,t5
     c88:	92020000 	lbu	v0,0(s0)
     c8c:	50410007 	beql	v0,at,cac <func_80819E6C+0x6e0>
     c90:	240103e7 	li	at,999
     c94:	8e8e0004 	lw	t6,4(s4)
     c98:	240f0001 	li	t7,1
     c9c:	504e0003 	beql	v0,t6,cac <func_80819E6C+0x6e0>
     ca0:	240103e7 	li	at,999
     ca4:	a62f025e 	sh	t7,606(s1)
     ca8:	240103e7 	li	at,999
     cac:	10810089 	beq	a0,at,ed4 <func_80819E6C+0x908>
     cb0:	afa40048 	sw	a0,72(sp)
     cb4:	97b200a8 	lhu	s2,168(sp)
     cb8:	02202025 	move	a0,s1
     cbc:	8e260158 	lw	a2,344(s1)
     cc0:	00129080 	sll	s2,s2,0x2
     cc4:	3252ffff 	andi	s2,s2,0xffff
     cc8:	0c000000 	jal	0 <func_808198A0>
     ccc:	3245ffff 	andi	a1,s2,0xffff
     cd0:	963801d6 	lhu	t8,470(s1)
     cd4:	57000096 	bnezl	t8,f30 <func_80819E6C+0x964>
     cd8:	87ac009e 	lh	t4,158(sp)
     cdc:	963901d4 	lhu	t9,468(s1)
     ce0:	24010006 	li	at,6
     ce4:	57210092 	bnel	t9,at,f30 <func_80819E6C+0x964>
     ce8:	87ac009e 	lh	t4,158(sp)
     cec:	962a01e4 	lhu	t2,484(s1)
     cf0:	8fab00b8 	lw	t3,184(sp)
     cf4:	5540008e 	bnezl	t2,f30 <func_80819E6C+0x964>
     cf8:	87ac009e 	lh	t4,158(sp)
     cfc:	95630020 	lhu	v1,32(t3)
     d00:	306c0007 	andi	t4,v1,0x7
     d04:	5180008a 	beqzl	t4,f30 <func_80819E6C+0x964>
     d08:	87ac009e 	lh	t4,158(sp)
     d0c:	92020000 	lbu	v0,0(s0)
     d10:	24010009 	li	at,9
     d14:	8fae0048 	lw	t6,72(sp)
     d18:	50410004 	beql	v0,at,d2c <func_80819E6C+0x760>
     d1c:	2401002c 	li	at,44
     d20:	8e8d0004 	lw	t5,4(s4)
     d24:	144d005e 	bne	v0,t5,ea0 <func_80819E6C+0x8d4>
     d28:	2401002c 	li	at,44
     d2c:	11c1005c 	beq	t6,at,ea0 <func_80819E6C+0x8d4>
     d30:	2401fffd 	li	at,-3
     d34:	00617827 	nor	t7,v1,at
     d38:	15e00003 	bnez	t7,d48 <func_80819E6C+0x77c>
     d3c:	240e0003 	li	t6,3
     d40:	1000000c 	b	d74 <func_80819E6C+0x7a8>
     d44:	a6200252 	sh	zero,594(s1)
     d48:	2401fffb 	li	at,-5
     d4c:	0061c027 	nor	t8,v1,at
     d50:	17000004 	bnez	t8,d64 <func_80819E6C+0x798>
     d54:	2401fffe 	li	at,-2
     d58:	24190001 	li	t9,1
     d5c:	10000005 	b	d74 <func_80819E6C+0x7a8>
     d60:	a6390252 	sh	t9,594(s1)
     d64:	00615027 	nor	t2,v1,at
     d68:	15400002 	bnez	t2,d74 <func_80819E6C+0x7a8>
     d6c:	240b0002 	li	t3,2
     d70:	a62b0252 	sh	t3,594(s1)
     d74:	97ac00aa 	lhu	t4,170(sp)
     d78:	8e2f0158 	lw	t7,344(s1)
     d7c:	0012c100 	sll	t8,s2,0x4
     d80:	a62c024e 	sh	t4,590(s1)
     d84:	97ad00a8 	lhu	t5,168(sp)
     d88:	a62e01e4 	sh	t6,484(s1)
     d8c:	01f81021 	addu	v0,t7,t8
     d90:	a62d0250 	sh	t5,592(s1)
     d94:	84590000 	lh	t9,0(v0)
     d98:	2404000a 	li	a0,10
     d9c:	3c010000 	lui	at,0x0
     da0:	03240019 	multu	t9,a0
     da4:	240d0003 	li	t5,3
     da8:	3c070000 	lui	a3,0x0
     dac:	3c0e0000 	lui	t6,0x0
     db0:	3c050000 	lui	a1,0x0
     db4:	24e70000 	addiu	a3,a3,0
     db8:	24a50000 	addiu	a1,a1,0
     dbc:	25ce0000 	addiu	t6,t6,0
     dc0:	24060004 	li	a2,4
     dc4:	00005012 	mflo	t2
     dc8:	a62a0254 	sh	t2,596(s1)
     dcc:	844b0002 	lh	t3,2(v0)
     dd0:	a6350258 	sh	s5,600(s1)
     dd4:	01640019 	multu	t3,a0
     dd8:	00006012 	mflo	t4
     ddc:	a62c0256 	sh	t4,598(s1)
     de0:	a4200000 	sh	zero,0(at)
     de4:	3c010000 	lui	at,0x0
     de8:	a42d0000 	sh	t5,0(at)
     dec:	3c010000 	lui	at,0x0
     df0:	a4240000 	sh	a0,0(at)
     df4:	9623024e 	lhu	v1,590(s1)
     df8:	24010004 	li	at,4
     dfc:	10610005 	beq	v1,at,e14 <func_80819E6C+0x848>
     e00:	2401000c 	li	at,12
     e04:	10610003 	beq	v1,at,e14 <func_80819E6C+0x848>
     e08:	24010012 	li	at,18
     e0c:	14610018 	bne	v1,at,e70 <func_80819E6C+0x8a4>
     e10:	24044808 	li	a0,18440
     e14:	2401000c 	li	at,12
     e18:	14610002 	bne	v1,at,e24 <func_80819E6C+0x858>
     e1c:	00001025 	move	v0,zero
     e20:	24020001 	li	v0,1
     e24:	24010012 	li	at,18
     e28:	54610003 	bnel	v1,at,e38 <func_80819E6C+0x86c>
     e2c:	2444483e 	addiu	a0,v0,18494
     e30:	24020002 	li	v0,2
     e34:	2444483e 	addiu	a0,v0,18494
     e38:	3084ffff 	andi	a0,a0,0xffff
     e3c:	00408025 	move	s0,v0
     e40:	afa70010 	sw	a3,16(sp)
     e44:	0c000000 	jal	0 <func_808198A0>
     e48:	afae0014 	sw	t6,20(sp)
     e4c:	260f00bf 	addiu	t7,s0,191
     e50:	a62f024e 	sh	t7,590(s1)
     e54:	3c010000 	lui	at,0x0
     e58:	a4200000 	sh	zero,0(at)
     e5c:	a6200258 	sh	zero,600(s1)
     e60:	3c010000 	lui	at,0x0
     e64:	24180006 	li	t8,6
     e68:	10000030 	b	f2c <func_80819E6C+0x960>
     e6c:	a4380000 	sh	t8,0(at)
     e70:	3c070000 	lui	a3,0x0
     e74:	3c190000 	lui	t9,0x0
     e78:	24e70000 	addiu	a3,a3,0
     e7c:	27390000 	addiu	t9,t9,0
     e80:	3c050000 	lui	a1,0x0
     e84:	24a50000 	addiu	a1,a1,0
     e88:	afb90014 	sw	t9,20(sp)
     e8c:	afa70010 	sw	a3,16(sp)
     e90:	0c000000 	jal	0 <func_808198A0>
     e94:	24060004 	li	a2,4
     e98:	10000025 	b	f30 <func_80819E6C+0x964>
     e9c:	87ac009e 	lh	t4,158(sp)
     ea0:	3c0a0000 	lui	t2,0x0
     ea4:	3c0b0000 	lui	t3,0x0
     ea8:	256b0000 	addiu	t3,t3,0
     eac:	25470000 	addiu	a3,t2,0
     eb0:	3c050000 	lui	a1,0x0
     eb4:	24a50000 	addiu	a1,a1,0
     eb8:	afa70010 	sw	a3,16(sp)
     ebc:	afab0014 	sw	t3,20(sp)
     ec0:	24044806 	li	a0,18438
     ec4:	0c000000 	jal	0 <func_808198A0>
     ec8:	24060004 	li	a2,4
     ecc:	10000018 	b	f30 <func_80819E6C+0x964>
     ed0:	87ac009e 	lh	t4,158(sp)
     ed4:	8e2c0168 	lw	t4,360(s1)
     ed8:	240fff38 	li	t7,-200
     edc:	a5800030 	sh	zero,48(t4)
     ee0:	8e230168 	lw	v1,360(s1)
     ee4:	84620030 	lh	v0,48(v1)
     ee8:	a4620010 	sh	v0,16(v1)
     eec:	8e2d0168 	lw	t5,360(s1)
     ef0:	a5a20020 	sh	v0,32(t5)
     ef4:	8e2e0168 	lw	t6,360(s1)
     ef8:	a5c20000 	sh	v0,0(t6)
     efc:	8e380168 	lw	t8,360(s1)
     f00:	a70f0032 	sh	t7,50(t8)
     f04:	8e230168 	lw	v1,360(s1)
     f08:	84620032 	lh	v0,50(v1)
     f0c:	a4620022 	sh	v0,34(v1)
     f10:	8e390168 	lw	t9,360(s1)
     f14:	a7220012 	sh	v0,18(t9)
     f18:	8e2a0168 	lw	t2,360(s1)
     f1c:	10000003 	b	f2c <func_80819E6C+0x960>
     f20:	a5420002 	sh	v0,2(t2)
     f24:	240b03e7 	li	t3,999
     f28:	a62b023e 	sh	t3,574(s1)
     f2c:	87ac009e 	lh	t4,158(sp)
     f30:	862d0218 	lh	t5,536(s1)
     f34:	118d001b 	beq	t4,t5,fa4 <func_80819E6C+0x9d8>
     f38:	3c070000 	lui	a3,0x0
     f3c:	3c0e0000 	lui	t6,0x0
     f40:	24e70000 	addiu	a3,a3,0
     f44:	25ce0000 	addiu	t6,t6,0
     f48:	3c050000 	lui	a1,0x0
     f4c:	24a50000 	addiu	a1,a1,0
     f50:	afae0014 	sw	t6,20(sp)
     f54:	afa70010 	sw	a3,16(sp)
     f58:	24044809 	li	a0,18441
     f5c:	0c000000 	jal	0 <func_808198A0>
     f60:	24060004 	li	a2,4
     f64:	10000010 	b	fa8 <func_80819E6C+0x9dc>
     f68:	8e6302b0 	lw	v1,688(s3)
     f6c:	962f01e4 	lhu	t7,484(s1)
     f70:	24010003 	li	at,3
     f74:	55e1000c 	bnel	t7,at,fa8 <func_80819E6C+0x9dc>
     f78:	8e6302b0 	lw	v1,688(s3)
     f7c:	963801e8 	lhu	t8,488(s1)
     f80:	97a500a8 	lhu	a1,168(sp)
     f84:	17000007 	bnez	t8,fa4 <func_80819E6C+0x9d8>
     f88:	00052880 	sll	a1,a1,0x2
     f8c:	02202025 	move	a0,s1
     f90:	30a5ffff 	andi	a1,a1,0xffff
     f94:	0c000000 	jal	0 <func_808198A0>
     f98:	8e260158 	lw	a2,344(s1)
     f9c:	24190004 	li	t9,4
     fa0:	a6390260 	sh	t9,608(s1)
     fa4:	8e6302b0 	lw	v1,688(s3)
     fa8:	3c0bfc30 	lui	t3,0xfc30
     fac:	3c0c552e 	lui	t4,0x552e
     fb0:	246a0008 	addiu	t2,v1,8
     fb4:	ae6a02b0 	sw	t2,688(s3)
     fb8:	358cff7f 	ori	t4,t4,0xff7f
     fbc:	356b9661 	ori	t3,t3,0x9661
     fc0:	ac6b0000 	sw	t3,0(v1)
     fc4:	ac6c0004 	sw	t4,4(v1)
     fc8:	8e6302c0 	lw	v1,704(s3)
     fcc:	3c0efa00 	lui	t6,0xfa00
     fd0:	2401ff00 	li	at,-256
     fd4:	246d0008 	addiu	t5,v1,8
     fd8:	ae6d02c0 	sw	t5,704(s3)
     fdc:	ac6e0000 	sw	t6,0(v1)
     fe0:	962f0208 	lhu	t7,520(s1)
     fe4:	3c140000 	lui	s4,0x0
     fe8:	3c0bfb00 	lui	t3,0xfb00
     fec:	31f800ff 	andi	t8,t7,0xff
     ff0:	0301c825 	or	t9,t8,at
     ff4:	ac790004 	sw	t9,4(v1)
     ff8:	8e6302c0 	lw	v1,704(s3)
     ffc:	3c120200 	lui	s2,0x200
    1000:	26940000 	addiu	s4,s4,0
    1004:	246a0008 	addiu	t2,v1,8
    1008:	ae6a02c0 	sw	t2,704(s3)
    100c:	241500ff 	li	s5,255
    1010:	26520e00 	addiu	s2,s2,3584
    1014:	00008025 	move	s0,zero
    1018:	24080060 	li	t0,96
    101c:	00001025 	move	v0,zero
    1020:	ac600004 	sw	zero,4(v1)
    1024:	ac6b0000 	sw	t3,0(v1)
    1028:	02826021 	addu	t4,s4,v0
    102c:	918d0069 	lbu	t5,105(t4)
    1030:	3c0f0100 	lui	t7,0x100
    1034:	35ef4008 	ori	t7,t7,0x4008
    1038:	52ad0013 	beql	s5,t5,1088 <func_80819E6C+0xabc>
    103c:	26100001 	addiu	s0,s0,1
    1040:	8e6302c0 	lw	v1,704(s3)
    1044:	0008c900 	sll	t9,t0,0x4
    1048:	02402825 	move	a1,s2
    104c:	246e0008 	addiu	t6,v1,8
    1050:	ae6e02c0 	sw	t6,704(s3)
    1054:	ac6f0000 	sw	t7,0(v1)
    1058:	8e380158 	lw	t8,344(s1)
    105c:	24060020 	li	a2,32
    1060:	24070020 	li	a3,32
    1064:	03195021 	addu	t2,t8,t9
    1068:	ac6a0004 	sw	t2,4(v1)
    106c:	8e6402c0 	lw	a0,704(s3)
    1070:	a7a800ac 	sh	t0,172(sp)
    1074:	0c000000 	jal	0 <func_808198A0>
    1078:	afa00010 	sw	zero,16(sp)
    107c:	97a800ac 	lhu	t0,172(sp)
    1080:	ae6202c0 	sw	v0,704(s3)
    1084:	26100001 	addiu	s0,s0,1
    1088:	3210ffff 	andi	s0,s0,0xffff
    108c:	2a010003 	slti	at,s0,3
    1090:	25080004 	addiu	t0,t0,4
    1094:	3108ffff 	andi	t0,t0,0xffff
    1098:	1420ffe3 	bnez	at,1028 <func_80819E6C+0xa5c>
    109c:	02001025 	move	v0,s0
    10a0:	8e6302c0 	lw	v1,704(s3)
    10a4:	3c0ce700 	lui	t4,0xe700
    10a8:	3c0efc11 	lui	t6,0xfc11
    10ac:	246b0008 	addiu	t3,v1,8
    10b0:	ae6b02c0 	sw	t3,704(s3)
    10b4:	ac600004 	sw	zero,4(v1)
    10b8:	ac6c0000 	sw	t4,0(v1)
    10bc:	8e6302c0 	lw	v1,704(s3)
    10c0:	3c0fff2f 	lui	t7,0xff2f
    10c4:	35efffff 	ori	t7,t7,0xffff
    10c8:	246d0008 	addiu	t5,v1,8
    10cc:	ae6d02c0 	sw	t5,704(s3)
    10d0:	35ce9623 	ori	t6,t6,0x9623
    10d4:	3c120000 	lui	s2,0x0
    10d8:	26520000 	addiu	s2,s2,0
    10dc:	00004025 	move	t0,zero
    10e0:	00008025 	move	s0,zero
    10e4:	ac6e0000 	sw	t6,0(v1)
    10e8:	ac6f0004 	sw	t7,4(v1)
    10ec:	8e6302c0 	lw	v1,704(s3)
    10f0:	3c19fa00 	lui	t9,0xfa00
    10f4:	2401ff00 	li	at,-256
    10f8:	24780008 	addiu	t8,v1,8
    10fc:	ae7802c0 	sw	t8,704(s3)
    1100:	ac790000 	sw	t9,0(v1)
    1104:	962a0208 	lhu	t2,520(s1)
    1108:	02904821 	addu	t1,s4,s0
    110c:	3c050000 	lui	a1,0x0
    1110:	314b00ff 	andi	t3,t2,0xff
    1114:	01616025 	or	t4,t3,at
    1118:	ac6c0004 	sw	t4,4(v1)
    111c:	912d0074 	lbu	t5,116(t1)
    1120:	52ad00a2 	beql	s5,t5,13ac <func_80819E6C+0xde0>
    1124:	26100001 	addiu	s0,s0,1
    1128:	962e01e4 	lhu	t6,484(s1)
    112c:	55c00089 	bnezl	t6,1354 <func_80819E6C+0xd88>
    1130:	8e6302c0 	lw	v1,704(s3)
    1134:	962f01e8 	lhu	t7,488(s1)
    1138:	55e00086 	bnezl	t7,1354 <func_80819E6C+0xd88>
    113c:	8e6302c0 	lw	v1,704(s3)
    1140:	86380238 	lh	t8,568(s1)
    1144:	3c020000 	lui	v0,0x0
    1148:	00501021 	addu	v0,v0,s0
    114c:	57000081 	bnezl	t8,1354 <func_80819E6C+0xd88>
    1150:	8e6302c0 	lw	v1,704(s3)
    1154:	90420000 	lbu	v0,0(v0)
    1158:	24010009 	li	at,9
    115c:	3c0a0000 	lui	t2,0x0
    1160:	10410004 	beq	v0,at,1174 <func_80819E6C+0xba8>
    1164:	00000000 	nop
    1168:	8e990004 	lw	t9,4(s4)
    116c:	54590079 	bnel	v0,t9,1354 <func_80819E6C+0xd88>
    1170:	8e6302c0 	lw	v1,704(s3)
    1174:	854a0000 	lh	t2,0(t2)
    1178:	24010002 	li	at,2
    117c:	02001025 	move	v0,s0
    1180:	15410047 	bne	t2,at,12a0 <func_80819E6C+0xcd4>
    1184:	24010003 	li	at,3
    1188:	54410046 	bnel	v0,at,12a4 <func_80819E6C+0xcd8>
    118c:	97aa00a8 	lhu	t2,168(sp)
    1190:	8e6302c0 	lw	v1,704(s3)
    1194:	3c0cfa00 	lui	t4,0xfa00
    1198:	3c190000 	lui	t9,0x0
    119c:	246b0008 	addiu	t3,v1,8
    11a0:	ae6b02c0 	sw	t3,704(s3)
    11a4:	ac6c0000 	sw	t4,0(v1)
    11a8:	9622024e 	lhu	v0,590(s1)
    11ac:	00082100 	sll	a0,t0,0x4
    11b0:	00021040 	sll	v0,v0,0x1
    11b4:	02426821 	addu	t5,s2,v0
    11b8:	85aefe82 	lh	t6,-382(t5)
    11bc:	0322c821 	addu	t9,t9,v0
    11c0:	872a0000 	lh	t2,0(t9)
    11c4:	3c0d0000 	lui	t5,0x0
    11c8:	01a26821 	addu	t5,t5,v0
    11cc:	85ad0000 	lh	t5,0(t5)
    11d0:	31cf00ff 	andi	t7,t6,0xff
    11d4:	000a5e00 	sll	t3,t2,0x18
    11d8:	962a0208 	lhu	t2,520(s1)
    11dc:	000fc200 	sll	t8,t7,0x8
    11e0:	030b6025 	or	t4,t8,t3
    11e4:	31ae00ff 	andi	t6,t5,0xff
    11e8:	000e7c00 	sll	t7,t6,0x10
    11ec:	018fc825 	or	t9,t4,t7
    11f0:	315800ff 	andi	t8,t2,0xff
    11f4:	03385825 	or	t3,t9,t8
    11f8:	ac6b0004 	sw	t3,4(v1)
    11fc:	8e2d0158 	lw	t5,344(s1)
    1200:	01a41821 	addu	v1,t5,a0
    1204:	84620000 	lh	v0,0(v1)
    1208:	2442fffe 	addiu	v0,v0,-2
    120c:	00021400 	sll	v0,v0,0x10
    1210:	00021403 	sra	v0,v0,0x10
    1214:	a4620020 	sh	v0,32(v1)
    1218:	8e2e0158 	lw	t6,344(s1)
    121c:	01c46021 	addu	t4,t6,a0
    1220:	a5820000 	sh	v0,0(t4)
    1224:	8e2f0158 	lw	t7,344(s1)
    1228:	01e41821 	addu	v1,t7,a0
    122c:	84620000 	lh	v0,0(v1)
    1230:	24420020 	addiu	v0,v0,32
    1234:	00021400 	sll	v0,v0,0x10
    1238:	00021403 	sra	v0,v0,0x10
    123c:	a4620030 	sh	v0,48(v1)
    1240:	8e2a0158 	lw	t2,344(s1)
    1244:	0144c821 	addu	t9,t2,a0
    1248:	a7220010 	sh	v0,16(t9)
    124c:	8e380158 	lw	t8,344(s1)
    1250:	03041821 	addu	v1,t8,a0
    1254:	84620002 	lh	v0,2(v1)
    1258:	24420002 	addiu	v0,v0,2
    125c:	00021400 	sll	v0,v0,0x10
    1260:	00021403 	sra	v0,v0,0x10
    1264:	a4620012 	sh	v0,18(v1)
    1268:	8e2b0158 	lw	t3,344(s1)
    126c:	01646821 	addu	t5,t3,a0
    1270:	a5a20002 	sh	v0,2(t5)
    1274:	8e2e0158 	lw	t6,344(s1)
    1278:	01c41821 	addu	v1,t6,a0
    127c:	84620002 	lh	v0,2(v1)
    1280:	2442ffe0 	addiu	v0,v0,-32
    1284:	00021400 	sll	v0,v0,0x10
    1288:	00021403 	sra	v0,v0,0x10
    128c:	a4620032 	sh	v0,50(v1)
    1290:	8e2c0158 	lw	t4,344(s1)
    1294:	01847821 	addu	t7,t4,a0
    1298:	1000002d 	b	1350 <func_80819E6C+0xd84>
    129c:	a5e20022 	sh	v0,34(t7)
    12a0:	97aa00a8 	lhu	t2,168(sp)
    12a4:	5542002b 	bnel	t2,v0,1354 <func_80819E6C+0xd88>
    12a8:	8e6302c0 	lw	v1,704(s3)
    12ac:	8e390158 	lw	t9,344(s1)
    12b0:	00082100 	sll	a0,t0,0x4
    12b4:	03241821 	addu	v1,t9,a0
    12b8:	84620000 	lh	v0,0(v1)
    12bc:	2442fffe 	addiu	v0,v0,-2
    12c0:	00021400 	sll	v0,v0,0x10
    12c4:	00021403 	sra	v0,v0,0x10
    12c8:	a4620020 	sh	v0,32(v1)
    12cc:	8e380158 	lw	t8,344(s1)
    12d0:	03045821 	addu	t3,t8,a0
    12d4:	a5620000 	sh	v0,0(t3)
    12d8:	8e2d0158 	lw	t5,344(s1)
    12dc:	01a41821 	addu	v1,t5,a0
    12e0:	84620000 	lh	v0,0(v1)
    12e4:	24420020 	addiu	v0,v0,32
    12e8:	00021400 	sll	v0,v0,0x10
    12ec:	00021403 	sra	v0,v0,0x10
    12f0:	a4620030 	sh	v0,48(v1)
    12f4:	8e2e0158 	lw	t6,344(s1)
    12f8:	01c46021 	addu	t4,t6,a0
    12fc:	a5820010 	sh	v0,16(t4)
    1300:	8e2f0158 	lw	t7,344(s1)
    1304:	01e41821 	addu	v1,t7,a0
    1308:	84620002 	lh	v0,2(v1)
    130c:	24420002 	addiu	v0,v0,2
    1310:	00021400 	sll	v0,v0,0x10
    1314:	00021403 	sra	v0,v0,0x10
    1318:	a4620012 	sh	v0,18(v1)
    131c:	8e2a0158 	lw	t2,344(s1)
    1320:	0144c821 	addu	t9,t2,a0
    1324:	a7220002 	sh	v0,2(t9)
    1328:	8e380158 	lw	t8,344(s1)
    132c:	03041821 	addu	v1,t8,a0
    1330:	84620002 	lh	v0,2(v1)
    1334:	2442ffe0 	addiu	v0,v0,-32
    1338:	00021400 	sll	v0,v0,0x10
    133c:	00021403 	sra	v0,v0,0x10
    1340:	a4620032 	sh	v0,50(v1)
    1344:	8e2b0158 	lw	t3,344(s1)
    1348:	01646821 	addu	t5,t3,a0
    134c:	a5a20022 	sh	v0,34(t5)
    1350:	8e6302c0 	lw	v1,704(s3)
    1354:	3c0c0100 	lui	t4,0x100
    1358:	358c4008 	ori	t4,t4,0x4008
    135c:	246e0008 	addiu	t6,v1,8
    1360:	ae6e02c0 	sw	t6,704(s3)
    1364:	ac6c0000 	sw	t4,0(v1)
    1368:	8e2f0158 	lw	t7,344(s1)
    136c:	00082100 	sll	a0,t0,0x4
    1370:	24060020 	li	a2,32
    1374:	01e45021 	addu	t2,t7,a0
    1378:	ac6a0004 	sw	t2,4(v1)
    137c:	91380074 	lbu	t8,116(t1)
    1380:	8fb900b8 	lw	t9,184(sp)
    1384:	24070020 	li	a3,32
    1388:	00185880 	sll	t3,t8,0x2
    138c:	00ab2821 	addu	a1,a1,t3
    1390:	8f240000 	lw	a0,0(t9)
    1394:	a7a800ac 	sh	t0,172(sp)
    1398:	afa00010 	sw	zero,16(sp)
    139c:	0c000000 	jal	0 <func_808198A0>
    13a0:	8ca50000 	lw	a1,0(a1)
    13a4:	97a800ac 	lhu	t0,172(sp)
    13a8:	26100001 	addiu	s0,s0,1
    13ac:	3210ffff 	andi	s0,s0,0xffff
    13b0:	2a010018 	slti	at,s0,24
    13b4:	25080004 	addiu	t0,t0,4
    13b8:	1420ff4c 	bnez	at,10ec <func_80819E6C+0xb20>
    13bc:	3108ffff 	andi	t0,t0,0xffff
    13c0:	862d0238 	lh	t5,568(s1)
    13c4:	55a00005 	bnezl	t5,13dc <func_80819E6C+0xe10>
    13c8:	8e6302c0 	lw	v1,704(s3)
    13cc:	8fa400b8 	lw	a0,184(sp)
    13d0:	0c000000 	jal	0 <func_808198A0>
    13d4:	00002825 	move	a1,zero
    13d8:	8e6302c0 	lw	v1,704(s3)
    13dc:	3c0ce700 	lui	t4,0xe700
    13e0:	3c0afc30 	lui	t2,0xfc30
    13e4:	246e0008 	addiu	t6,v1,8
    13e8:	ae6e02c0 	sw	t6,704(s3)
    13ec:	ac600004 	sw	zero,4(v1)
    13f0:	ac6c0000 	sw	t4,0(v1)
    13f4:	8e6302c0 	lw	v1,704(s3)
    13f8:	3c19552e 	lui	t9,0x552e
    13fc:	3739ff7f 	ori	t9,t9,0xff7f
    1400:	246f0008 	addiu	t7,v1,8
    1404:	ae6f02c0 	sw	t7,704(s3)
    1408:	354a9661 	ori	t2,t2,0x9661
    140c:	00008025 	move	s0,zero
    1410:	ac6a0000 	sw	t2,0(v1)
    1414:	ac790004 	sw	t9,4(v1)
    1418:	3c180000 	lui	t8,0x0
    141c:	0310c021 	addu	t8,t8,s0
    1420:	93180000 	lbu	t8,0(t8)
    1424:	02905821 	addu	t3,s4,s0
    1428:	52b8000a 	beql	s5,t8,1454 <func_80819E6C+0xe88>
    142c:	26100001 	addiu	s0,s0,1
    1430:	91620074 	lbu	v0,116(t3)
    1434:	02202025 	move	a0,s1
    1438:	8fad00b8 	lw	t5,184(sp)
    143c:	12a20004 	beq	s5,v0,1450 <func_80819E6C+0xe84>
    1440:	00023400 	sll	a2,v0,0x10
    1444:	8da50000 	lw	a1,0(t5)
    1448:	0c000000 	jal	0 <func_808198A0>
    144c:	00063403 	sra	a2,a2,0x10
    1450:	26100001 	addiu	s0,s0,1
    1454:	3210ffff 	andi	s0,s0,0xffff
    1458:	2a01000f 	slti	at,s0,15
    145c:	1420ffee 	bnez	at,1418 <func_80819E6C+0xe4c>
    1460:	00000000 	nop
    1464:	8fae00b8 	lw	t6,184(sp)
    1468:	3c060000 	lui	a2,0x0
    146c:	24c60000 	addiu	a2,a2,0
    1470:	27a40088 	addiu	a0,sp,136
    1474:	24070204 	li	a3,516
    1478:	0c000000 	jal	0 <func_808198A0>
    147c:	8dc50000 	lw	a1,0(t6)
    1480:	8fbf0034 	lw	ra,52(sp)
    1484:	8fb0001c 	lw	s0,28(sp)
    1488:	8fb10020 	lw	s1,32(sp)
    148c:	8fb20024 	lw	s2,36(sp)
    1490:	8fb30028 	lw	s3,40(sp)
    1494:	8fb4002c 	lw	s4,44(sp)
    1498:	8fb50030 	lw	s5,48(sp)
    149c:	03e00008 	jr	ra
    14a0:	27bd00b8 	addiu	sp,sp,184

000014a4 <func_8081AD44>:
    14a4:	3c090000 	lui	t1,0x0
    14a8:	25290000 	addiu	t1,t1,0
    14ac:	85220000 	lh	v0,0(t1)
    14b0:	27bdffc8 	addiu	sp,sp,-56
    14b4:	afbf001c 	sw	ra,28(sp)
    14b8:	14400015 	bnez	v0,1510 <func_8081AD44+0x6c>
    14bc:	afa40038 	sw	a0,56(sp)
    14c0:	3c010001 	lui	at,0x1
    14c4:	34210760 	ori	at,at,0x760
    14c8:	00814021 	addu	t0,a0,at
    14cc:	850e0258 	lh	t6,600(t0)
    14d0:	3c030000 	lui	v1,0x0
    14d4:	241900fe 	li	t9,254
    14d8:	25cf000e 	addiu	t7,t6,14
    14dc:	a50f0258 	sh	t7,600(t0)
    14e0:	85180258 	lh	t8,600(t0)
    14e4:	24630000 	addiu	v1,v1,0
    14e8:	240f0005 	li	t7,5
    14ec:	2b010100 	slti	at,t8,256
    14f0:	14200005 	bnez	at,1508 <func_8081AD44+0x64>
    14f4:	00000000 	nop
    14f8:	a5190258 	sh	t9,600(t0)
    14fc:	852d0000 	lh	t5,0(t1)
    1500:	25ae0001 	addiu	t6,t5,1
    1504:	a52e0000 	sh	t6,0(t1)
    1508:	10000352 	b	2254 <func_8081AD44+0xdb0>
    150c:	a46f0000 	sh	t7,0(v1)
    1510:	24010002 	li	at,2
    1514:	1441002c 	bne	v0,at,15c8 <func_8081AD44+0x124>
    1518:	3c030000 	lui	v1,0x0
    151c:	84630000 	lh	v1,0(v1)
    1520:	3c010000 	lui	at,0x0
    1524:	3c070000 	lui	a3,0x0
    1528:	2463ffff 	addiu	v1,v1,-1
    152c:	00031c00 	sll	v1,v1,0x10
    1530:	00031c03 	sra	v1,v1,0x10
    1534:	14600347 	bnez	v1,2254 <func_8081AD44+0xdb0>
    1538:	a4230000 	sh	v1,0(at)
    153c:	8fa80038 	lw	t0,56(sp)
    1540:	3c010001 	lui	at,0x1
    1544:	34210760 	ori	at,at,0x760
    1548:	01014021 	addu	t0,t0,at
    154c:	9518024e 	lhu	t8,590(t0)
    1550:	240d0003 	li	t5,3
    1554:	3c030000 	lui	v1,0x0
    1558:	2719ff79 	addiu	t9,t8,-135
    155c:	a519024e 	sh	t9,590(t0)
    1560:	a50d0250 	sh	t5,592(t0)
    1564:	3c010000 	lui	at,0x0
    1568:	240e0006 	li	t6,6
    156c:	24630000 	addiu	v1,v1,0
    1570:	a42e0000 	sh	t6,0(at)
    1574:	8c780000 	lw	t8,0(v1)
    1578:	240f0140 	li	t7,320
    157c:	24e70000 	addiu	a3,a3,0
    1580:	a70f0e48 	sh	t7,3656(t8)
    1584:	8c620000 	lw	v0,0(v1)
    1588:	3c0f0000 	lui	t7,0x0
    158c:	25ef0000 	addiu	t7,t7,0
    1590:	84590e4a 	lh	t9,3658(v0)
    1594:	3c050000 	lui	a1,0x0
    1598:	24a50000 	addiu	a1,a1,0
    159c:	a4590e42 	sh	t9,3650(v0)
    15a0:	852d0000 	lh	t5,0(t1)
    15a4:	afaf0014 	sw	t7,20(sp)
    15a8:	afa70010 	sw	a3,16(sp)
    15ac:	25ae0001 	addiu	t6,t5,1
    15b0:	a52e0000 	sh	t6,0(t1)
    15b4:	24044841 	li	a0,18497
    15b8:	0c000000 	jal	0 <func_808198A0>
    15bc:	24060004 	li	a2,4
    15c0:	10000325 	b	2258 <func_8081AD44+0xdb4>
    15c4:	8fbf001c 	lw	ra,28(sp)
    15c8:	24070001 	li	a3,1
    15cc:	14e20036 	bne	a3,v0,16a8 <func_8081AD44+0x204>
    15d0:	8fa80038 	lw	t0,56(sp)
    15d4:	3c010001 	lui	at,0x1
    15d8:	34210760 	ori	at,at,0x760
    15dc:	01014021 	addu	t0,t0,at
    15e0:	8d050158 	lw	a1,344(t0)
    15e4:	240c000a 	li	t4,10
    15e8:	85180254 	lh	t8,596(t0)
    15ec:	84b900c0 	lh	t9,192(a1)
    15f0:	3c0a0000 	lui	t2,0x0
    15f4:	254a0000 	addiu	t2,t2,0
    15f8:	032c0019 	multu	t9,t4
    15fc:	24a500c0 	addiu	a1,a1,192
    1600:	00006812 	mflo	t5
    1604:	030d1823 	subu	v1,t8,t5
    1608:	04600003 	bltz	v1,1618 <func_8081AD44+0x174>
    160c:	00031023 	negu	v0,v1
    1610:	10000001 	b	1618 <func_8081AD44+0x174>
    1614:	00601025 	move	v0,v1
    1618:	85440000 	lh	a0,0(t2)
    161c:	84af0002 	lh	t7,2(a1)
    1620:	850e0256 	lh	t6,598(t0)
    1624:	0044001a 	div	zero,v0,a0
    1628:	00003012 	mflo	a2
    162c:	30c6ffff 	andi	a2,a2,0xffff
    1630:	14800002 	bnez	a0,163c <func_8081AD44+0x198>
    1634:	00000000 	nop
    1638:	0007000d 	break	0x7
    163c:	2401ffff 	li	at,-1
    1640:	14810004 	bne	a0,at,1654 <func_8081AD44+0x1b0>
    1644:	3c018000 	lui	at,0x8000
    1648:	14410002 	bne	v0,at,1654 <func_8081AD44+0x1b0>
    164c:	00000000 	nop
    1650:	0006000d 	break	0x6
    1654:	01ec0019 	multu	t7,t4
    1658:	0000c812 	mflo	t9
    165c:	01d91823 	subu	v1,t6,t9
    1660:	04600003 	bltz	v1,1670 <func_8081AD44+0x1cc>
    1664:	00031023 	negu	v0,v1
    1668:	10000001 	b	1670 <func_8081AD44+0x1cc>
    166c:	00601025 	move	v0,v1
    1670:	0044001a 	div	zero,v0,a0
    1674:	00002812 	mflo	a1
    1678:	30a5ffff 	andi	a1,a1,0xffff
    167c:	14800002 	bnez	a0,1688 <func_8081AD44+0x1e4>
    1680:	00000000 	nop
    1684:	0007000d 	break	0x7
    1688:	2401ffff 	li	at,-1
    168c:	14810004 	bne	a0,at,16a0 <func_8081AD44+0x1fc>
    1690:	3c018000 	lui	at,0x8000
    1694:	14410002 	bne	v0,at,16a0 <func_8081AD44+0x1fc>
    1698:	00000000 	nop
    169c:	0006000d 	break	0x6
    16a0:	10000037 	b	1780 <func_8081AD44+0x2dc>
    16a4:	9519024e 	lhu	t9,590(t0)
    16a8:	8fa80038 	lw	t0,56(sp)
    16ac:	3c010001 	lui	at,0x1
    16b0:	34210760 	ori	at,at,0x760
    16b4:	01014021 	addu	t0,t0,at
    16b8:	95050252 	lhu	a1,594(t0)
    16bc:	3c0d0000 	lui	t5,0x0
    16c0:	85180254 	lh	t8,596(t0)
    16c4:	00052840 	sll	a1,a1,0x1
    16c8:	01a56821 	addu	t5,t5,a1
    16cc:	85ad0000 	lh	t5,0(t5)
    16d0:	3c0e0000 	lui	t6,0x0
    16d4:	3c040000 	lui	a0,0x0
    16d8:	030d1823 	subu	v1,t8,t5
    16dc:	04600003 	bltz	v1,16ec <func_8081AD44+0x248>
    16e0:	01c57021 	addu	t6,t6,a1
    16e4:	10000002 	b	16f0 <func_8081AD44+0x24c>
    16e8:	00601025 	move	v0,v1
    16ec:	00031023 	negu	v0,v1
    16f0:	84840000 	lh	a0,0(a0)
    16f4:	850f0256 	lh	t7,598(t0)
    16f8:	85ce0000 	lh	t6,0(t6)
    16fc:	0044001a 	div	zero,v0,a0
    1700:	00003012 	mflo	a2
    1704:	01ee1823 	subu	v1,t7,t6
    1708:	14800002 	bnez	a0,1714 <func_8081AD44+0x270>
    170c:	00000000 	nop
    1710:	0007000d 	break	0x7
    1714:	2401ffff 	li	at,-1
    1718:	14810004 	bne	a0,at,172c <func_8081AD44+0x288>
    171c:	3c018000 	lui	at,0x8000
    1720:	14410002 	bne	v0,at,172c <func_8081AD44+0x288>
    1724:	00000000 	nop
    1728:	0006000d 	break	0x6
    172c:	30c6ffff 	andi	a2,a2,0xffff
    1730:	04600003 	bltz	v1,1740 <func_8081AD44+0x29c>
    1734:	240c000a 	li	t4,10
    1738:	10000002 	b	1744 <func_8081AD44+0x2a0>
    173c:	00601025 	move	v0,v1
    1740:	00031023 	negu	v0,v1
    1744:	0044001a 	div	zero,v0,a0
    1748:	00002812 	mflo	a1
    174c:	3c0a0000 	lui	t2,0x0
    1750:	254a0000 	addiu	t2,t2,0
    1754:	30a5ffff 	andi	a1,a1,0xffff
    1758:	14800002 	bnez	a0,1764 <func_8081AD44+0x2c0>
    175c:	00000000 	nop
    1760:	0007000d 	break	0x7
    1764:	2401ffff 	li	at,-1
    1768:	14810004 	bne	a0,at,177c <func_8081AD44+0x2d8>
    176c:	3c018000 	lui	at,0x8000
    1770:	14410002 	bne	v0,at,177c <func_8081AD44+0x2d8>
    1774:	00000000 	nop
    1778:	0006000d 	break	0x6
    177c:	9519024e 	lhu	t9,590(t0)
    1780:	3c030000 	lui	v1,0x0
    1784:	24630000 	addiu	v1,v1,0
    1788:	2b2100bf 	slti	at,t9,191
    178c:	54200011 	bnezl	at,17d4 <func_8081AD44+0x330>
    1790:	84620000 	lh	v0,0(v1)
    1794:	85020258 	lh	v0,600(t0)
    1798:	284100fe 	slti	at,v0,254
    179c:	1020000c 	beqz	at,17d0 <func_8081AD44+0x32c>
    17a0:	2458000e 	addiu	t8,v0,14
    17a4:	a5180258 	sh	t8,600(t0)
    17a8:	850d0258 	lh	t5,600(t0)
    17ac:	3c030000 	lui	v1,0x0
    17b0:	24630000 	addiu	v1,v1,0
    17b4:	29a10100 	slti	at,t5,256
    17b8:	14200003 	bnez	at,17c8 <func_8081AD44+0x324>
    17bc:	240e0005 	li	t6,5
    17c0:	240f00fe 	li	t7,254
    17c4:	a50f0258 	sh	t7,600(t0)
    17c8:	100002a2 	b	2254 <func_8081AD44+0xdb0>
    17cc:	a46e0000 	sh	t6,0(v1)
    17d0:	84620000 	lh	v0,0(v1)
    17d4:	3c0b0000 	lui	t3,0x0
    17d8:	256b0000 	addiu	t3,t3,0
    17dc:	54400297 	bnezl	v0,223c <func_8081AD44+0xd98>
    17e0:	244dffff 	addiu	t5,v0,-1
    17e4:	8d620000 	lw	v0,0(t3)
    17e8:	84580e42 	lh	t8,3650(v0)
    17ec:	84590e48 	lh	t9,3656(v0)
    17f0:	0304001a 	div	zero,t8,a0
    17f4:	00006812 	mflo	t5
    17f8:	032d7823 	subu	t7,t9,t5
    17fc:	a44f0e48 	sh	t7,3656(v0)
    1800:	8d620000 	lw	v0,0(t3)
    1804:	854e0000 	lh	t6,0(t2)
    1808:	14800002 	bnez	a0,1814 <func_8081AD44+0x370>
    180c:	00000000 	nop
    1810:	0007000d 	break	0x7
    1814:	2401ffff 	li	at,-1
    1818:	14810004 	bne	a0,at,182c <func_8081AD44+0x388>
    181c:	3c018000 	lui	at,0x8000
    1820:	17010002 	bne	t8,at,182c <func_8081AD44+0x388>
    1824:	00000000 	nop
    1828:	0006000d 	break	0x6
    182c:	84430e42 	lh	v1,3650(v0)
    1830:	006e001a 	div	zero,v1,t6
    1834:	0000c012 	mflo	t8
    1838:	0078c823 	subu	t9,v1,t8
    183c:	a4590e42 	sh	t9,3650(v0)
    1840:	852d0000 	lh	t5,0(t1)
    1844:	15c00002 	bnez	t6,1850 <func_8081AD44+0x3ac>
    1848:	00000000 	nop
    184c:	0007000d 	break	0x7
    1850:	2401ffff 	li	at,-1
    1854:	15c10004 	bne	t6,at,1868 <func_8081AD44+0x3c4>
    1858:	3c018000 	lui	at,0x8000
    185c:	14610002 	bne	v1,at,1868 <func_8081AD44+0x3c4>
    1860:	00000000 	nop
    1864:	0006000d 	break	0x6
    1868:	54ed001d 	bnel	a3,t5,18e0 <func_8081AD44+0x43c>
    186c:	950f0252 	lhu	t7,594(t0)
    1870:	8d0f0158 	lw	t7,344(t0)
    1874:	85020254 	lh	v0,596(t0)
    1878:	85ee00c0 	lh	t6,192(t7)
    187c:	0046c823 	subu	t9,v0,a2
    1880:	00466821 	addu	t5,v0,a2
    1884:	01cc0019 	multu	t6,t4
    1888:	0000c012 	mflo	t8
    188c:	0058082a 	slt	at,v0,t8
    1890:	54200004 	bnezl	at,18a4 <func_8081AD44+0x400>
    1894:	a50d0254 	sh	t5,596(t0)
    1898:	10000002 	b	18a4 <func_8081AD44+0x400>
    189c:	a5190254 	sh	t9,596(t0)
    18a0:	a50d0254 	sh	t5,596(t0)
    18a4:	8d0f0158 	lw	t7,344(t0)
    18a8:	85020256 	lh	v0,598(t0)
    18ac:	85ee00c2 	lh	t6,194(t7)
    18b0:	0045c823 	subu	t9,v0,a1
    18b4:	00456821 	addu	t5,v0,a1
    18b8:	01cc0019 	multu	t6,t4
    18bc:	0000c012 	mflo	t8
    18c0:	0058082a 	slt	at,v0,t8
    18c4:	14200003 	bnez	at,18d4 <func_8081AD44+0x430>
    18c8:	00000000 	nop
    18cc:	1000001f 	b	194c <func_8081AD44+0x4a8>
    18d0:	a5190256 	sh	t9,598(t0)
    18d4:	1000001d 	b	194c <func_8081AD44+0x4a8>
    18d8:	a50d0256 	sh	t5,598(t0)
    18dc:	950f0252 	lhu	t7,594(t0)
    18e0:	3c180000 	lui	t8,0x0
    18e4:	85020254 	lh	v0,596(t0)
    18e8:	000f7040 	sll	t6,t7,0x1
    18ec:	030ec021 	addu	t8,t8,t6
    18f0:	87180000 	lh	t8,0(t8)
    18f4:	0046c823 	subu	t9,v0,a2
    18f8:	00466821 	addu	t5,v0,a2
    18fc:	0058082a 	slt	at,v0,t8
    1900:	54200004 	bnezl	at,1914 <func_8081AD44+0x470>
    1904:	a50d0254 	sh	t5,596(t0)
    1908:	10000002 	b	1914 <func_8081AD44+0x470>
    190c:	a5190254 	sh	t9,596(t0)
    1910:	a50d0254 	sh	t5,596(t0)
    1914:	950f0252 	lhu	t7,594(t0)
    1918:	3c180000 	lui	t8,0x0
    191c:	85020256 	lh	v0,598(t0)
    1920:	000f7040 	sll	t6,t7,0x1
    1924:	030ec021 	addu	t8,t8,t6
    1928:	87180000 	lh	t8,0(t8)
    192c:	0045c823 	subu	t9,v0,a1
    1930:	00456821 	addu	t5,v0,a1
    1934:	0058082a 	slt	at,v0,t8
    1938:	54200004 	bnezl	at,194c <func_8081AD44+0x4a8>
    193c:	a50d0256 	sh	t5,598(t0)
    1940:	10000002 	b	194c <func_8081AD44+0x4a8>
    1944:	a5190256 	sh	t9,598(t0)
    1948:	a50d0256 	sh	t5,598(t0)
    194c:	854f0000 	lh	t7,0(t2)
    1950:	25eeffff 	addiu	t6,t7,-1
    1954:	a54e0000 	sh	t6,0(t2)
    1958:	85580000 	lh	t8,0(t2)
    195c:	5700023e 	bnezl	t8,2258 <func_8081AD44+0xdb4>
    1960:	8fbf001c 	lw	ra,28(sp)
    1964:	85220000 	lh	v0,0(t1)
    1968:	24030004 	li	v1,4
    196c:	3c010000 	lui	at,0x0
    1970:	14e20004 	bne	a3,v0,1984 <func_8081AD44+0x4e0>
    1974:	24590001 	addiu	t9,v0,1
    1978:	a5390000 	sh	t9,0(t1)
    197c:	10000235 	b	2254 <func_8081AD44+0xdb0>
    1980:	a4230000 	sh	v1,0(at)
    1984:	3c040000 	lui	a0,0x0
    1988:	24840000 	addiu	a0,a0,0
    198c:	0c000000 	jal	0 <func_808198A0>
    1990:	afa80024 	sw	t0,36(sp)
    1994:	8fa80024 	lw	t0,36(sp)
    1998:	24070001 	li	a3,1
    199c:	95020252 	lhu	v0,594(t0)
    19a0:	144000a6 	bnez	v0,1c3c <func_8081AD44+0x798>
    19a4:	3c030000 	lui	v1,0x0
    19a8:	24630000 	addiu	v1,v1,0
    19ac:	906d006d 	lbu	t5,109(v1)
    19b0:	95020250 	lhu	v0,592(t0)
    19b4:	544d0025 	bnel	v0,t5,1a4c <func_8081AD44+0x5a8>
    19b8:	9079006e 	lbu	t9,110(v1)
    19bc:	90660069 	lbu	a2,105(v1)
    19c0:	240100ff 	li	at,255
    19c4:	10c1001c 	beq	a2,at,1a38 <func_8081AD44+0x594>
    19c8:	00c01025 	move	v0,a2
    19cc:	9504024e 	lhu	a0,590(t0)
    19d0:	24050002 	li	a1,2
    19d4:	288100bf 	slti	at,a0,191
    19d8:	1420000d 	bnez	at,1a10 <func_8081AD44+0x56c>
    19dc:	288100c2 	slti	at,a0,194
    19e0:	1020000b 	beqz	at,1a10 <func_8081AD44+0x56c>
    19e4:	24010003 	li	at,3
    19e8:	10410005 	beq	v0,at,1a00 <func_8081AD44+0x55c>
    19ec:	248fff79 	addiu	t7,a0,-135
    19f0:	28410038 	slti	at,v0,56
    19f4:	14200006 	bnez	at,1a10 <func_8081AD44+0x56c>
    19f8:	2841003b 	slti	at,v0,59
    19fc:	10200004 	beqz	at,1a10 <func_8081AD44+0x56c>
    1a00:	240e0003 	li	t6,3
    1a04:	a50f024e 	sh	t7,590(t0)
    1a08:	10000034 	b	1adc <func_8081AD44+0x638>
    1a0c:	a50e0250 	sh	t6,592(t0)
    1a10:	9078006c 	lbu	t8,108(v1)
    1a14:	a066006a 	sb	a2,106(v1)
    1a18:	8fa40038 	lw	a0,56(sp)
    1a1c:	afa80024 	sw	t0,36(sp)
    1a20:	0c000000 	jal	0 <func_808198A0>
    1a24:	a078006d 	sb	t8,109(v1)
    1a28:	3c030000 	lui	v1,0x0
    1a2c:	24630000 	addiu	v1,v1,0
    1a30:	1000002a 	b	1adc <func_8081AD44+0x638>
    1a34:	8fa80024 	lw	t0,36(sp)
    1a38:	240200ff 	li	v0,255
    1a3c:	a062006a 	sb	v0,106(v1)
    1a40:	10000026 	b	1adc <func_8081AD44+0x638>
    1a44:	a062006d 	sb	v0,109(v1)
    1a48:	9079006e 	lbu	t9,110(v1)
    1a4c:	54590024 	bnel	v0,t9,1ae0 <func_8081AD44+0x63c>
    1a50:	9506024e 	lhu	a2,590(t0)
    1a54:	90660069 	lbu	a2,105(v1)
    1a58:	240100ff 	li	at,255
    1a5c:	10c1001c 	beq	a2,at,1ad0 <func_8081AD44+0x62c>
    1a60:	00c01025 	move	v0,a2
    1a64:	9504024e 	lhu	a0,590(t0)
    1a68:	24050003 	li	a1,3
    1a6c:	288100bf 	slti	at,a0,191
    1a70:	1420000d 	bnez	at,1aa8 <func_8081AD44+0x604>
    1a74:	288100c2 	slti	at,a0,194
    1a78:	1020000b 	beqz	at,1aa8 <func_8081AD44+0x604>
    1a7c:	24010003 	li	at,3
    1a80:	10410005 	beq	v0,at,1a98 <func_8081AD44+0x5f4>
    1a84:	248dff79 	addiu	t5,a0,-135
    1a88:	28410038 	slti	at,v0,56
    1a8c:	14200006 	bnez	at,1aa8 <func_8081AD44+0x604>
    1a90:	2841003b 	slti	at,v0,59
    1a94:	10200004 	beqz	at,1aa8 <func_8081AD44+0x604>
    1a98:	240f0003 	li	t7,3
    1a9c:	a50d024e 	sh	t5,590(t0)
    1aa0:	1000000e 	b	1adc <func_8081AD44+0x638>
    1aa4:	a50f0250 	sh	t7,592(t0)
    1aa8:	906e006c 	lbu	t6,108(v1)
    1aac:	a066006b 	sb	a2,107(v1)
    1ab0:	8fa40038 	lw	a0,56(sp)
    1ab4:	afa80024 	sw	t0,36(sp)
    1ab8:	0c000000 	jal	0 <func_808198A0>
    1abc:	a06e006e 	sb	t6,110(v1)
    1ac0:	3c030000 	lui	v1,0x0
    1ac4:	24630000 	addiu	v1,v1,0
    1ac8:	10000004 	b	1adc <func_8081AD44+0x638>
    1acc:	8fa80024 	lw	t0,36(sp)
    1ad0:	240200ff 	li	v0,255
    1ad4:	a062006b 	sb	v0,107(v1)
    1ad8:	a062006e 	sb	v0,110(v1)
    1adc:	9506024e 	lhu	a2,590(t0)
    1ae0:	28c100bf 	slti	at,a2,191
    1ae4:	14200012 	bnez	at,1b30 <func_8081AD44+0x68c>
    1ae8:	00c02025 	move	a0,a2
    1aec:	288100c2 	slti	at,a0,194
    1af0:	50200010 	beqzl	at,1b34 <func_8081AD44+0x690>
    1af4:	24010003 	li	at,3
    1af8:	90620069 	lbu	v0,105(v1)
    1afc:	24010003 	li	at,3
    1b00:	2498ff79 	addiu	t8,a0,-135
    1b04:	10410006 	beq	v0,at,1b20 <func_8081AD44+0x67c>
    1b08:	24190003 	li	t9,3
    1b0c:	28410038 	slti	at,v0,56
    1b10:	14200029 	bnez	at,1bb8 <func_8081AD44+0x714>
    1b14:	2841003b 	slti	at,v0,59
    1b18:	10200027 	beqz	at,1bb8 <func_8081AD44+0x714>
    1b1c:	00000000 	nop
    1b20:	a518024e 	sh	t8,590(t0)
    1b24:	a5190250 	sh	t9,592(t0)
    1b28:	10000023 	b	1bb8 <func_8081AD44+0x714>
    1b2c:	3306ffff 	andi	a2,t8,0xffff
    1b30:	24010003 	li	at,3
    1b34:	14810020 	bne	a0,at,1bb8 <func_8081AD44+0x714>
    1b38:	00000000 	nop
    1b3c:	9062006a 	lbu	v0,106(v1)
    1b40:	28410038 	slti	at,v0,56
    1b44:	1420000d 	bnez	at,1b7c <func_8081AD44+0x6d8>
    1b48:	2841003b 	slti	at,v0,59
    1b4c:	1020000b 	beqz	at,1b7c <func_8081AD44+0x6d8>
    1b50:	24050002 	li	a1,2
    1b54:	906d0069 	lbu	t5,105(v1)
    1b58:	906f006c 	lbu	t7,108(v1)
    1b5c:	8fa40038 	lw	a0,56(sp)
    1b60:	afa80024 	sw	t0,36(sp)
    1b64:	a06d006a 	sb	t5,106(v1)
    1b68:	0c000000 	jal	0 <func_808198A0>
    1b6c:	a06f006d 	sb	t7,109(v1)
    1b70:	8fa80024 	lw	t0,36(sp)
    1b74:	10000010 	b	1bb8 <func_8081AD44+0x714>
    1b78:	9506024e 	lhu	a2,590(t0)
    1b7c:	9062006b 	lbu	v0,107(v1)
    1b80:	28410038 	slti	at,v0,56
    1b84:	1420000c 	bnez	at,1bb8 <func_8081AD44+0x714>
    1b88:	2841003b 	slti	at,v0,59
    1b8c:	1020000a 	beqz	at,1bb8 <func_8081AD44+0x714>
    1b90:	24050003 	li	a1,3
    1b94:	906e0069 	lbu	t6,105(v1)
    1b98:	9078006c 	lbu	t8,108(v1)
    1b9c:	8fa40038 	lw	a0,56(sp)
    1ba0:	afa80024 	sw	t0,36(sp)
    1ba4:	a06e006b 	sb	t6,107(v1)
    1ba8:	0c000000 	jal	0 <func_808198A0>
    1bac:	a078006e 	sb	t8,110(v1)
    1bb0:	8fa80024 	lw	t0,36(sp)
    1bb4:	9506024e 	lhu	a2,590(t0)
    1bb8:	3c010000 	lui	at,0x0
    1bbc:	a0260069 	sb	a2,105(at)
    1bc0:	95190250 	lhu	t9,592(t0)
    1bc4:	3c010000 	lui	at,0x0
    1bc8:	afa80024 	sw	t0,36(sp)
    1bcc:	8fa40038 	lw	a0,56(sp)
    1bd0:	24050001 	li	a1,1
    1bd4:	0c000000 	jal	0 <func_808198A0>
    1bd8:	a039006c 	sb	t9,108(at)
    1bdc:	8fa80024 	lw	t0,36(sp)
    1be0:	3c030000 	lui	v1,0x0
    1be4:	24630000 	addiu	v1,v1,0
    1be8:	906d006b 	lbu	t5,107(v1)
    1bec:	3c040000 	lui	a0,0x0
    1bf0:	9505024e 	lhu	a1,590(t0)
    1bf4:	24840000 	addiu	a0,a0,0
    1bf8:	90660069 	lbu	a2,105(v1)
    1bfc:	9067006a 	lbu	a3,106(v1)
    1c00:	0c000000 	jal	0 <func_808198A0>
    1c04:	afad0010 	sw	t5,16(sp)
    1c08:	8fa80024 	lw	t0,36(sp)
    1c0c:	3c030000 	lui	v1,0x0
    1c10:	24630000 	addiu	v1,v1,0
    1c14:	906f006e 	lbu	t7,110(v1)
    1c18:	3c040000 	lui	a0,0x0
    1c1c:	95050250 	lhu	a1,592(t0)
    1c20:	24840000 	addiu	a0,a0,0
    1c24:	9066006c 	lbu	a2,108(v1)
    1c28:	9067006d 	lbu	a3,109(v1)
    1c2c:	0c000000 	jal	0 <func_808198A0>
    1c30:	afaf0010 	sw	t7,16(sp)
    1c34:	10000173 	b	2204 <func_8081AD44+0xd60>
    1c38:	8fa80024 	lw	t0,36(sp)
    1c3c:	14e200ba 	bne	a3,v0,1f28 <func_8081AD44+0xa84>
    1c40:	3c030000 	lui	v1,0x0
    1c44:	3c030000 	lui	v1,0x0
    1c48:	24630000 	addiu	v1,v1,0
    1c4c:	906e006b 	lbu	t6,107(v1)
    1c50:	3c040000 	lui	a0,0x0
    1c54:	9505024e 	lhu	a1,590(t0)
    1c58:	afa80024 	sw	t0,36(sp)
    1c5c:	24840000 	addiu	a0,a0,0
    1c60:	90660069 	lbu	a2,105(v1)
    1c64:	9067006a 	lbu	a3,106(v1)
    1c68:	0c000000 	jal	0 <func_808198A0>
    1c6c:	afae0010 	sw	t6,16(sp)
    1c70:	8fa80024 	lw	t0,36(sp)
    1c74:	3c030000 	lui	v1,0x0
    1c78:	24630000 	addiu	v1,v1,0
    1c7c:	9078006e 	lbu	t8,110(v1)
    1c80:	3c040000 	lui	a0,0x0
    1c84:	95050250 	lhu	a1,592(t0)
    1c88:	24840000 	addiu	a0,a0,0
    1c8c:	9066006c 	lbu	a2,108(v1)
    1c90:	9067006d 	lbu	a3,109(v1)
    1c94:	0c000000 	jal	0 <func_808198A0>
    1c98:	afb80010 	sw	t8,16(sp)
    1c9c:	8fa80024 	lw	t0,36(sp)
    1ca0:	3c030000 	lui	v1,0x0
    1ca4:	24630000 	addiu	v1,v1,0
    1ca8:	9079006c 	lbu	t9,108(v1)
    1cac:	95020250 	lhu	v0,592(t0)
    1cb0:	54590025 	bnel	v0,t9,1d48 <func_8081AD44+0x8a4>
    1cb4:	9078006e 	lbu	t8,110(v1)
    1cb8:	9066006a 	lbu	a2,106(v1)
    1cbc:	240100ff 	li	at,255
    1cc0:	10c1001c 	beq	a2,at,1d34 <func_8081AD44+0x890>
    1cc4:	00c01025 	move	v0,a2
    1cc8:	9504024e 	lhu	a0,590(t0)
    1ccc:	24050001 	li	a1,1
    1cd0:	288100bf 	slti	at,a0,191
    1cd4:	1420000d 	bnez	at,1d0c <func_8081AD44+0x868>
    1cd8:	288100c2 	slti	at,a0,194
    1cdc:	1020000b 	beqz	at,1d0c <func_8081AD44+0x868>
    1ce0:	24010003 	li	at,3
    1ce4:	10410005 	beq	v0,at,1cfc <func_8081AD44+0x858>
    1ce8:	248dff79 	addiu	t5,a0,-135
    1cec:	28410038 	slti	at,v0,56
    1cf0:	14200006 	bnez	at,1d0c <func_8081AD44+0x868>
    1cf4:	2841003b 	slti	at,v0,59
    1cf8:	10200004 	beqz	at,1d0c <func_8081AD44+0x868>
    1cfc:	240f0003 	li	t7,3
    1d00:	a50d024e 	sh	t5,590(t0)
    1d04:	10000034 	b	1dd8 <func_8081AD44+0x934>
    1d08:	a50f0250 	sh	t7,592(t0)
    1d0c:	906e006d 	lbu	t6,109(v1)
    1d10:	a0660069 	sb	a2,105(v1)
    1d14:	8fa40038 	lw	a0,56(sp)
    1d18:	afa80024 	sw	t0,36(sp)
    1d1c:	0c000000 	jal	0 <func_808198A0>
    1d20:	a06e006c 	sb	t6,108(v1)
    1d24:	3c030000 	lui	v1,0x0
    1d28:	24630000 	addiu	v1,v1,0
    1d2c:	1000002a 	b	1dd8 <func_8081AD44+0x934>
    1d30:	8fa80024 	lw	t0,36(sp)
    1d34:	240200ff 	li	v0,255
    1d38:	a0620069 	sb	v0,105(v1)
    1d3c:	10000026 	b	1dd8 <func_8081AD44+0x934>
    1d40:	a062006c 	sb	v0,108(v1)
    1d44:	9078006e 	lbu	t8,110(v1)
    1d48:	54580024 	bnel	v0,t8,1ddc <func_8081AD44+0x938>
    1d4c:	9506024e 	lhu	a2,590(t0)
    1d50:	9066006a 	lbu	a2,106(v1)
    1d54:	240100ff 	li	at,255
    1d58:	10c1001c 	beq	a2,at,1dcc <func_8081AD44+0x928>
    1d5c:	00c01025 	move	v0,a2
    1d60:	9504024e 	lhu	a0,590(t0)
    1d64:	24050003 	li	a1,3
    1d68:	288100bf 	slti	at,a0,191
    1d6c:	1420000d 	bnez	at,1da4 <func_8081AD44+0x900>
    1d70:	288100c2 	slti	at,a0,194
    1d74:	1020000b 	beqz	at,1da4 <func_8081AD44+0x900>
    1d78:	24010003 	li	at,3
    1d7c:	10410005 	beq	v0,at,1d94 <func_8081AD44+0x8f0>
    1d80:	2499ff79 	addiu	t9,a0,-135
    1d84:	28410038 	slti	at,v0,56
    1d88:	14200006 	bnez	at,1da4 <func_8081AD44+0x900>
    1d8c:	2841003b 	slti	at,v0,59
    1d90:	10200004 	beqz	at,1da4 <func_8081AD44+0x900>
    1d94:	240d0003 	li	t5,3
    1d98:	a519024e 	sh	t9,590(t0)
    1d9c:	1000000e 	b	1dd8 <func_8081AD44+0x934>
    1da0:	a50d0250 	sh	t5,592(t0)
    1da4:	906f006d 	lbu	t7,109(v1)
    1da8:	a066006b 	sb	a2,107(v1)
    1dac:	8fa40038 	lw	a0,56(sp)
    1db0:	afa80024 	sw	t0,36(sp)
    1db4:	0c000000 	jal	0 <func_808198A0>
    1db8:	a06f006e 	sb	t7,110(v1)
    1dbc:	3c030000 	lui	v1,0x0
    1dc0:	24630000 	addiu	v1,v1,0
    1dc4:	10000004 	b	1dd8 <func_8081AD44+0x934>
    1dc8:	8fa80024 	lw	t0,36(sp)
    1dcc:	240200ff 	li	v0,255
    1dd0:	a062006b 	sb	v0,107(v1)
    1dd4:	a062006e 	sb	v0,110(v1)
    1dd8:	9506024e 	lhu	a2,590(t0)
    1ddc:	28c100bf 	slti	at,a2,191
    1de0:	14200012 	bnez	at,1e2c <func_8081AD44+0x988>
    1de4:	00c02025 	move	a0,a2
    1de8:	288100c2 	slti	at,a0,194
    1dec:	50200010 	beqzl	at,1e30 <func_8081AD44+0x98c>
    1df0:	24010003 	li	at,3
    1df4:	9062006a 	lbu	v0,106(v1)
    1df8:	24010003 	li	at,3
    1dfc:	248eff79 	addiu	t6,a0,-135
    1e00:	10410006 	beq	v0,at,1e1c <func_8081AD44+0x978>
    1e04:	24180003 	li	t8,3
    1e08:	28410038 	slti	at,v0,56
    1e0c:	14200025 	bnez	at,1ea4 <func_8081AD44+0xa00>
    1e10:	2841003b 	slti	at,v0,59
    1e14:	10200023 	beqz	at,1ea4 <func_8081AD44+0xa00>
    1e18:	00000000 	nop
    1e1c:	a50e024e 	sh	t6,590(t0)
    1e20:	a5180250 	sh	t8,592(t0)
    1e24:	1000001f 	b	1ea4 <func_8081AD44+0xa00>
    1e28:	31c6ffff 	andi	a2,t6,0xffff
    1e2c:	24010003 	li	at,3
    1e30:	1481001c 	bne	a0,at,1ea4 <func_8081AD44+0xa00>
    1e34:	00000000 	nop
    1e38:	90620069 	lbu	v0,105(v1)
    1e3c:	28410038 	slti	at,v0,56
    1e40:	1420000b 	bnez	at,1e70 <func_8081AD44+0x9cc>
    1e44:	2841003b 	slti	at,v0,59
    1e48:	10200009 	beqz	at,1e70 <func_8081AD44+0x9cc>
    1e4c:	24050001 	li	a1,1
    1e50:	9079006a 	lbu	t9,106(v1)
    1e54:	8fa40038 	lw	a0,56(sp)
    1e58:	afa80024 	sw	t0,36(sp)
    1e5c:	0c000000 	jal	0 <func_808198A0>
    1e60:	a0790069 	sb	t9,105(v1)
    1e64:	8fa80024 	lw	t0,36(sp)
    1e68:	1000000e 	b	1ea4 <func_8081AD44+0xa00>
    1e6c:	9506024e 	lhu	a2,590(t0)
    1e70:	9062006b 	lbu	v0,107(v1)
    1e74:	28410038 	slti	at,v0,56
    1e78:	1420000a 	bnez	at,1ea4 <func_8081AD44+0xa00>
    1e7c:	2841003b 	slti	at,v0,59
    1e80:	10200008 	beqz	at,1ea4 <func_8081AD44+0xa00>
    1e84:	24050003 	li	a1,3
    1e88:	906d006a 	lbu	t5,106(v1)
    1e8c:	8fa40038 	lw	a0,56(sp)
    1e90:	afa80024 	sw	t0,36(sp)
    1e94:	0c000000 	jal	0 <func_808198A0>
    1e98:	a06d006b 	sb	t5,107(v1)
    1e9c:	8fa80024 	lw	t0,36(sp)
    1ea0:	9506024e 	lhu	a2,590(t0)
    1ea4:	3c010000 	lui	at,0x0
    1ea8:	a026006a 	sb	a2,106(at)
    1eac:	950f0250 	lhu	t7,592(t0)
    1eb0:	3c010000 	lui	at,0x0
    1eb4:	afa80024 	sw	t0,36(sp)
    1eb8:	8fa40038 	lw	a0,56(sp)
    1ebc:	24050002 	li	a1,2
    1ec0:	0c000000 	jal	0 <func_808198A0>
    1ec4:	a02f006d 	sb	t7,109(at)
    1ec8:	8fa80024 	lw	t0,36(sp)
    1ecc:	3c030000 	lui	v1,0x0
    1ed0:	24630000 	addiu	v1,v1,0
    1ed4:	906e006b 	lbu	t6,107(v1)
    1ed8:	3c040000 	lui	a0,0x0
    1edc:	9505024e 	lhu	a1,590(t0)
    1ee0:	24840000 	addiu	a0,a0,0
    1ee4:	90660069 	lbu	a2,105(v1)
    1ee8:	9067006a 	lbu	a3,106(v1)
    1eec:	0c000000 	jal	0 <func_808198A0>
    1ef0:	afae0010 	sw	t6,16(sp)
    1ef4:	8fa80024 	lw	t0,36(sp)
    1ef8:	3c030000 	lui	v1,0x0
    1efc:	24630000 	addiu	v1,v1,0
    1f00:	9078006e 	lbu	t8,110(v1)
    1f04:	3c040000 	lui	a0,0x0
    1f08:	95050250 	lhu	a1,592(t0)
    1f0c:	24840000 	addiu	a0,a0,0
    1f10:	9066006c 	lbu	a2,108(v1)
    1f14:	9067006d 	lbu	a3,109(v1)
    1f18:	0c000000 	jal	0 <func_808198A0>
    1f1c:	afb80010 	sw	t8,16(sp)
    1f20:	100000b8 	b	2204 <func_8081AD44+0xd60>
    1f24:	8fa80024 	lw	t0,36(sp)
    1f28:	24630000 	addiu	v1,v1,0
    1f2c:	9079006b 	lbu	t9,107(v1)
    1f30:	3c040000 	lui	a0,0x0
    1f34:	9505024e 	lhu	a1,590(t0)
    1f38:	afa80024 	sw	t0,36(sp)
    1f3c:	24840000 	addiu	a0,a0,0
    1f40:	90660069 	lbu	a2,105(v1)
    1f44:	9067006a 	lbu	a3,106(v1)
    1f48:	0c000000 	jal	0 <func_808198A0>
    1f4c:	afb90010 	sw	t9,16(sp)
    1f50:	8fa80024 	lw	t0,36(sp)
    1f54:	3c030000 	lui	v1,0x0
    1f58:	24630000 	addiu	v1,v1,0
    1f5c:	906d006e 	lbu	t5,110(v1)
    1f60:	3c040000 	lui	a0,0x0
    1f64:	95050250 	lhu	a1,592(t0)
    1f68:	24840000 	addiu	a0,a0,0
    1f6c:	9066006c 	lbu	a2,108(v1)
    1f70:	9067006d 	lbu	a3,109(v1)
    1f74:	0c000000 	jal	0 <func_808198A0>
    1f78:	afad0010 	sw	t5,16(sp)
    1f7c:	8fa80024 	lw	t0,36(sp)
    1f80:	3c030000 	lui	v1,0x0
    1f84:	24630000 	addiu	v1,v1,0
    1f88:	906f006c 	lbu	t7,108(v1)
    1f8c:	95020250 	lhu	v0,592(t0)
    1f90:	544f0025 	bnel	v0,t7,2028 <func_8081AD44+0xb84>
    1f94:	906d006d 	lbu	t5,109(v1)
    1f98:	9066006b 	lbu	a2,107(v1)
    1f9c:	240100ff 	li	at,255
    1fa0:	10c1001c 	beq	a2,at,2014 <func_8081AD44+0xb70>
    1fa4:	00c01025 	move	v0,a2
    1fa8:	9504024e 	lhu	a0,590(t0)
    1fac:	24050001 	li	a1,1
    1fb0:	288100bf 	slti	at,a0,191
    1fb4:	1420000d 	bnez	at,1fec <func_8081AD44+0xb48>
    1fb8:	288100c2 	slti	at,a0,194
    1fbc:	1020000b 	beqz	at,1fec <func_8081AD44+0xb48>
    1fc0:	24010003 	li	at,3
    1fc4:	10410005 	beq	v0,at,1fdc <func_8081AD44+0xb38>
    1fc8:	248eff79 	addiu	t6,a0,-135
    1fcc:	28410038 	slti	at,v0,56
    1fd0:	14200006 	bnez	at,1fec <func_8081AD44+0xb48>
    1fd4:	2841003b 	slti	at,v0,59
    1fd8:	10200004 	beqz	at,1fec <func_8081AD44+0xb48>
    1fdc:	24180003 	li	t8,3
    1fe0:	a50e024e 	sh	t6,590(t0)
    1fe4:	10000034 	b	20b8 <func_8081AD44+0xc14>
    1fe8:	a5180250 	sh	t8,592(t0)
    1fec:	9079006e 	lbu	t9,110(v1)
    1ff0:	a0660069 	sb	a2,105(v1)
    1ff4:	8fa40038 	lw	a0,56(sp)
    1ff8:	afa80024 	sw	t0,36(sp)
    1ffc:	0c000000 	jal	0 <func_808198A0>
    2000:	a079006c 	sb	t9,108(v1)
    2004:	3c030000 	lui	v1,0x0
    2008:	24630000 	addiu	v1,v1,0
    200c:	1000002a 	b	20b8 <func_8081AD44+0xc14>
    2010:	8fa80024 	lw	t0,36(sp)
    2014:	240200ff 	li	v0,255
    2018:	a0620069 	sb	v0,105(v1)
    201c:	10000026 	b	20b8 <func_8081AD44+0xc14>
    2020:	a062006c 	sb	v0,108(v1)
    2024:	906d006d 	lbu	t5,109(v1)
    2028:	544d0024 	bnel	v0,t5,20bc <func_8081AD44+0xc18>
    202c:	9506024e 	lhu	a2,590(t0)
    2030:	9066006b 	lbu	a2,107(v1)
    2034:	240100ff 	li	at,255
    2038:	10c1001c 	beq	a2,at,20ac <func_8081AD44+0xc08>
    203c:	00c01025 	move	v0,a2
    2040:	9504024e 	lhu	a0,590(t0)
    2044:	24050002 	li	a1,2
    2048:	288100bf 	slti	at,a0,191
    204c:	1420000d 	bnez	at,2084 <func_8081AD44+0xbe0>
    2050:	288100c2 	slti	at,a0,194
    2054:	1020000b 	beqz	at,2084 <func_8081AD44+0xbe0>
    2058:	24010003 	li	at,3
    205c:	10410005 	beq	v0,at,2074 <func_8081AD44+0xbd0>
    2060:	248fff79 	addiu	t7,a0,-135
    2064:	28410038 	slti	at,v0,56
    2068:	14200006 	bnez	at,2084 <func_8081AD44+0xbe0>
    206c:	2841003b 	slti	at,v0,59
    2070:	10200004 	beqz	at,2084 <func_8081AD44+0xbe0>
    2074:	240e0003 	li	t6,3
    2078:	a50f024e 	sh	t7,590(t0)
    207c:	1000000e 	b	20b8 <func_8081AD44+0xc14>
    2080:	a50e0250 	sh	t6,592(t0)
    2084:	9078006e 	lbu	t8,110(v1)
    2088:	a066006a 	sb	a2,106(v1)
    208c:	8fa40038 	lw	a0,56(sp)
    2090:	afa80024 	sw	t0,36(sp)
    2094:	0c000000 	jal	0 <func_808198A0>
    2098:	a078006d 	sb	t8,109(v1)
    209c:	3c030000 	lui	v1,0x0
    20a0:	24630000 	addiu	v1,v1,0
    20a4:	10000004 	b	20b8 <func_8081AD44+0xc14>
    20a8:	8fa80024 	lw	t0,36(sp)
    20ac:	240200ff 	li	v0,255
    20b0:	a062006a 	sb	v0,106(v1)
    20b4:	a062006d 	sb	v0,109(v1)
    20b8:	9506024e 	lhu	a2,590(t0)
    20bc:	28c100bf 	slti	at,a2,191
    20c0:	14200012 	bnez	at,210c <func_8081AD44+0xc68>
    20c4:	00c02025 	move	a0,a2
    20c8:	288100c2 	slti	at,a0,194
    20cc:	50200010 	beqzl	at,2110 <func_8081AD44+0xc6c>
    20d0:	24010003 	li	at,3
    20d4:	9062006b 	lbu	v0,107(v1)
    20d8:	24010003 	li	at,3
    20dc:	2499ff79 	addiu	t9,a0,-135
    20e0:	10410006 	beq	v0,at,20fc <func_8081AD44+0xc58>
    20e4:	240d0003 	li	t5,3
    20e8:	28410038 	slti	at,v0,56
    20ec:	14200025 	bnez	at,2184 <func_8081AD44+0xce0>
    20f0:	2841003b 	slti	at,v0,59
    20f4:	10200023 	beqz	at,2184 <func_8081AD44+0xce0>
    20f8:	00000000 	nop
    20fc:	a519024e 	sh	t9,590(t0)
    2100:	a50d0250 	sh	t5,592(t0)
    2104:	1000001f 	b	2184 <func_8081AD44+0xce0>
    2108:	3326ffff 	andi	a2,t9,0xffff
    210c:	24010003 	li	at,3
    2110:	1481001c 	bne	a0,at,2184 <func_8081AD44+0xce0>
    2114:	00000000 	nop
    2118:	90620069 	lbu	v0,105(v1)
    211c:	28410038 	slti	at,v0,56
    2120:	1420000b 	bnez	at,2150 <func_8081AD44+0xcac>
    2124:	2841003b 	slti	at,v0,59
    2128:	10200009 	beqz	at,2150 <func_8081AD44+0xcac>
    212c:	24050001 	li	a1,1
    2130:	906f006b 	lbu	t7,107(v1)
    2134:	8fa40038 	lw	a0,56(sp)
    2138:	afa80024 	sw	t0,36(sp)
    213c:	0c000000 	jal	0 <func_808198A0>
    2140:	a06f0069 	sb	t7,105(v1)
    2144:	8fa80024 	lw	t0,36(sp)
    2148:	1000000e 	b	2184 <func_8081AD44+0xce0>
    214c:	9506024e 	lhu	a2,590(t0)
    2150:	9062006a 	lbu	v0,106(v1)
    2154:	28410038 	slti	at,v0,56
    2158:	1420000a 	bnez	at,2184 <func_8081AD44+0xce0>
    215c:	2841003b 	slti	at,v0,59
    2160:	10200008 	beqz	at,2184 <func_8081AD44+0xce0>
    2164:	24050002 	li	a1,2
    2168:	906e006b 	lbu	t6,107(v1)
    216c:	8fa40038 	lw	a0,56(sp)
    2170:	afa80024 	sw	t0,36(sp)
    2174:	0c000000 	jal	0 <func_808198A0>
    2178:	a06e006a 	sb	t6,106(v1)
    217c:	8fa80024 	lw	t0,36(sp)
    2180:	9506024e 	lhu	a2,590(t0)
    2184:	3c010000 	lui	at,0x0
    2188:	a026006b 	sb	a2,107(at)
    218c:	95180250 	lhu	t8,592(t0)
    2190:	3c010000 	lui	at,0x0
    2194:	afa80024 	sw	t0,36(sp)
    2198:	8fa40038 	lw	a0,56(sp)
    219c:	24050003 	li	a1,3
    21a0:	0c000000 	jal	0 <func_808198A0>
    21a4:	a038006e 	sb	t8,110(at)
    21a8:	8fa80024 	lw	t0,36(sp)
    21ac:	3c030000 	lui	v1,0x0
    21b0:	24630000 	addiu	v1,v1,0
    21b4:	9079006b 	lbu	t9,107(v1)
    21b8:	3c040000 	lui	a0,0x0
    21bc:	9505024e 	lhu	a1,590(t0)
    21c0:	24840000 	addiu	a0,a0,0
    21c4:	90660069 	lbu	a2,105(v1)
    21c8:	9067006a 	lbu	a3,106(v1)
    21cc:	0c000000 	jal	0 <func_808198A0>
    21d0:	afb90010 	sw	t9,16(sp)
    21d4:	8fa80024 	lw	t0,36(sp)
    21d8:	3c030000 	lui	v1,0x0
    21dc:	24630000 	addiu	v1,v1,0
    21e0:	906d006e 	lbu	t5,110(v1)
    21e4:	3c040000 	lui	a0,0x0
    21e8:	95050250 	lhu	a1,592(t0)
    21ec:	24840000 	addiu	a0,a0,0
    21f0:	9066006c 	lbu	a2,108(v1)
    21f4:	9067006d 	lbu	a3,109(v1)
    21f8:	0c000000 	jal	0 <func_808198A0>
    21fc:	afad0010 	sw	t5,16(sp)
    2200:	8fa80024 	lw	t0,36(sp)
    2204:	3c030000 	lui	v1,0x0
    2208:	a50001e4 	sh	zero,484(t0)
    220c:	240f000a 	li	t7,10
    2210:	3c010000 	lui	at,0x0
    2214:	24630000 	addiu	v1,v1,0
    2218:	a42f0000 	sh	t7,0(at)
    221c:	8c780000 	lw	t8,0(v1)
    2220:	240e0140 	li	t6,320
    2224:	a70e0e48 	sh	t6,3656(t8)
    2228:	8c620000 	lw	v0,0(v1)
    222c:	84590e4a 	lh	t9,3658(v0)
    2230:	10000008 	b	2254 <func_8081AD44+0xdb0>
    2234:	a4590e42 	sh	t9,3650(v0)
    2238:	244dffff 	addiu	t5,v0,-1
    223c:	a46d0000 	sh	t5,0(v1)
    2240:	846f0000 	lh	t7,0(v1)
    2244:	240e00ff 	li	t6,255
    2248:	55e00003 	bnezl	t7,2258 <func_8081AD44+0xdb4>
    224c:	8fbf001c 	lw	ra,28(sp)
    2250:	a50e0258 	sh	t6,600(t0)
    2254:	8fbf001c 	lw	ra,28(sp)
    2258:	27bd0038 	addiu	sp,sp,56
    225c:	03e00008 	jr	ra
    2260:	00000000 	nop
	...
