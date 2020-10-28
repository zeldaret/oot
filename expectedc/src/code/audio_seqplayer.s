
build/src/code/audio_seqplayer.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <Audio_GetScriptControlFlowArgument>:
       0:	27bdffe8 	addiu	sp,sp,-24
       4:	afa5001c 	sw	a1,28(sp)
       8:	30a500ff 	andi	a1,a1,0xff
       c:	3c020000 	lui	v0,0x0
      10:	00451021 	addu	v0,v0,a1
      14:	90420000 	lbu	v0,0(v0)
      18:	24010001 	li	at,1
      1c:	afbf0014 	sw	ra,20(sp)
      20:	304f0003 	andi	t7,v0,0x3
      24:	15e1000b 	bne	t7,at,54 <Audio_GetScriptControlFlowArgument+0x54>
      28:	00001825 	move	v1,zero
      2c:	30580080 	andi	t8,v0,0x80
      30:	17000005 	bnez	t8,48 <Audio_GetScriptControlFlowArgument+0x48>
      34:	00000000 	nop
      38:	0c000000 	jal	0 <Audio_GetScriptControlFlowArgument>
      3c:	00000000 	nop
      40:	10000004 	b	54 <Audio_GetScriptControlFlowArgument+0x54>
      44:	3043ffff 	andi	v1,v0,0xffff
      48:	0c000000 	jal	0 <Audio_GetScriptControlFlowArgument>
      4c:	00000000 	nop
      50:	3043ffff 	andi	v1,v0,0xffff
      54:	8fbf0014 	lw	ra,20(sp)
      58:	27bd0018 	addiu	sp,sp,24
      5c:	00601025 	move	v0,v1
      60:	03e00008 	jr	ra
      64:	00000000 	nop

00000068 <Audio_HandleScriptFlowControl>:
      68:	24ceff0e 	addiu	t6,a2,-242
      6c:	27bdffe8 	addiu	sp,sp,-24
      70:	2dc1000e 	sltiu	at,t6,14
      74:	afbf0014 	sw	ra,20(sp)
      78:	1020006d 	beqz	at,230 <Audio_HandleScriptFlowControl+0x1c8>
      7c:	00c01025 	move	v0,a2
      80:	000e7080 	sll	t6,t6,0x2
      84:	3c010000 	lui	at,0x0
      88:	002e0821 	addu	at,at,t6
      8c:	8c2e0000 	lw	t6,0(at)
      90:	01c00008 	jr	t6
      94:	00000000 	nop
      98:	90a20018 	lbu	v0,24(a1)
      9c:	14400003 	bnez	v0,ac <Audio_HandleScriptFlowControl+0x44>
      a0:	2443ffff 	addiu	v1,v0,-1
      a4:	10000063 	b	234 <Audio_HandleScriptFlowControl+0x1cc>
      a8:	2402ffff 	li	v0,-1
      ac:	306300ff 	andi	v1,v1,0xff
      b0:	00037880 	sll	t7,v1,0x2
      b4:	00afc021 	addu	t8,a1,t7
      b8:	a0a30018 	sb	v1,24(a1)
      bc:	8f190004 	lw	t9,4(t8)
      c0:	1000005b 	b	230 <Audio_HandleScriptFlowControl+0x1c8>
      c4:	acb90000 	sw	t9,0(a1)
      c8:	0c000000 	jal	0 <Audio_GetScriptControlFlowArgument>
      cc:	00a02025 	move	a0,a1
      d0:	10000059 	b	238 <Audio_HandleScriptFlowControl+0x1d0>
      d4:	8fbf0014 	lw	ra,20(sp)
      d8:	10000056 	b	234 <Audio_HandleScriptFlowControl+0x1cc>
      dc:	24020001 	li	v0,1
      e0:	90a90018 	lbu	t1,24(a1)
      e4:	8ca80000 	lw	t0,0(a1)
      e8:	30efffff 	andi	t7,a3,0xffff
      ec:	00095080 	sll	t2,t1,0x2
      f0:	00aa5821 	addu	t3,a1,t2
      f4:	ad680004 	sw	t0,4(t3)
      f8:	90ac0018 	lbu	t4,24(a1)
      fc:	258d0001 	addiu	t5,t4,1
     100:	a0ad0018 	sb	t5,24(a1)
     104:	8c8e0018 	lw	t6,24(a0)
     108:	01cfc021 	addu	t8,t6,t7
     10c:	10000048 	b	230 <Audio_HandleScriptFlowControl+0x1c8>
     110:	acb80000 	sw	t8,0(a1)
     114:	90b90018 	lbu	t9,24(a1)
     118:	00b94821 	addu	t1,a1,t9
     11c:	a1270014 	sb	a3,20(t1)
     120:	90a80018 	lbu	t0,24(a1)
     124:	8caa0000 	lw	t2,0(a1)
     128:	00085880 	sll	t3,t0,0x2
     12c:	00ab6021 	addu	t4,a1,t3
     130:	ad8a0004 	sw	t2,4(t4)
     134:	90ad0018 	lbu	t5,24(a1)
     138:	25ae0001 	addiu	t6,t5,1
     13c:	1000003c 	b	230 <Audio_HandleScriptFlowControl+0x1c8>
     140:	a0ae0018 	sb	t6,24(a1)
     144:	90af0018 	lbu	t7,24(a1)
     148:	00af1821 	addu	v1,a1,t7
     14c:	90780013 	lbu	t8,19(v1)
     150:	2719ffff 	addiu	t9,t8,-1
     154:	a0790013 	sb	t9,19(v1)
     158:	90a20018 	lbu	v0,24(a1)
     15c:	00a24821 	addu	t1,a1,v0
     160:	91280013 	lbu	t0,19(t1)
     164:	00402025 	move	a0,v0
     168:	00045880 	sll	t3,a0,0x2
     16c:	11000005 	beqz	t0,184 <Audio_HandleScriptFlowControl+0x11c>
     170:	244dffff 	addiu	t5,v0,-1
     174:	00ab5021 	addu	t2,a1,t3
     178:	8d4c0000 	lw	t4,0(t2)
     17c:	1000002c 	b	230 <Audio_HandleScriptFlowControl+0x1c8>
     180:	acac0000 	sw	t4,0(a1)
     184:	1000002a 	b	230 <Audio_HandleScriptFlowControl+0x1c8>
     188:	a0ad0018 	sb	t5,24(a1)
     18c:	90ae0018 	lbu	t6,24(a1)
     190:	25cfffff 	addiu	t7,t6,-1
     194:	10000026 	b	230 <Audio_HandleScriptFlowControl+0x1c8>
     198:	a0af0018 	sb	t7,24(a1)
     19c:	240100fa 	li	at,250
     1a0:	54410004 	bnel	v0,at,1b4 <Audio_HandleScriptFlowControl+0x14c>
     1a4:	240100f9 	li	at,249
     1a8:	80b80019 	lb	t8,25(a1)
     1ac:	17000020 	bnez	t8,230 <Audio_HandleScriptFlowControl+0x1c8>
     1b0:	240100f9 	li	at,249
     1b4:	54410004 	bnel	v0,at,1c8 <Audio_HandleScriptFlowControl+0x160>
     1b8:	240100f5 	li	at,245
     1bc:	80b90019 	lb	t9,25(a1)
     1c0:	0721001b 	bgez	t9,230 <Audio_HandleScriptFlowControl+0x1c8>
     1c4:	240100f5 	li	at,245
     1c8:	54410005 	bnel	v0,at,1e0 <Audio_HandleScriptFlowControl+0x178>
     1cc:	8c880018 	lw	t0,24(a0)
     1d0:	80a90019 	lb	t1,25(a1)
     1d4:	05220017 	bltzl	t1,234 <Audio_HandleScriptFlowControl+0x1cc>
     1d8:	00001025 	move	v0,zero
     1dc:	8c880018 	lw	t0,24(a0)
     1e0:	30ebffff 	andi	t3,a3,0xffff
     1e4:	010b5021 	addu	t2,t0,t3
     1e8:	10000011 	b	230 <Audio_HandleScriptFlowControl+0x1c8>
     1ec:	acaa0000 	sw	t2,0(a1)
     1f0:	240100f3 	li	at,243
     1f4:	54410004 	bnel	v0,at,208 <Audio_HandleScriptFlowControl+0x1a0>
     1f8:	240100f2 	li	at,242
     1fc:	80ac0019 	lb	t4,25(a1)
     200:	1580000b 	bnez	t4,230 <Audio_HandleScriptFlowControl+0x1c8>
     204:	240100f2 	li	at,242
     208:	54410005 	bnel	v0,at,220 <Audio_HandleScriptFlowControl+0x1b8>
     20c:	8cae0000 	lw	t6,0(a1)
     210:	80ad0019 	lb	t5,25(a1)
     214:	05a30007 	bgezl	t5,234 <Audio_HandleScriptFlowControl+0x1cc>
     218:	00001025 	move	v0,zero
     21c:	8cae0000 	lw	t6,0(a1)
     220:	0007c600 	sll	t8,a3,0x18
     224:	0018ce03 	sra	t9,t8,0x18
     228:	01d94821 	addu	t1,t6,t9
     22c:	aca90000 	sw	t1,0(a1)
     230:	00001025 	move	v0,zero
     234:	8fbf0014 	lw	ra,20(sp)
     238:	27bd0018 	addiu	sp,sp,24
     23c:	03e00008 	jr	ra
     240:	00000000 	nop

00000244 <Audio_SequenceChannelInit>:
     244:	3c0e0000 	lui	t6,0x0
     248:	25ce0000 	addiu	t6,t6,0
     24c:	27bdffe8 	addiu	sp,sp,-24
     250:	25cf5ab0 	addiu	t7,t6,23216
     254:	afbf0014 	sw	ra,20(sp)
     258:	108f004b 	beq	a0,t7,388 <Audio_SequenceChannelInit+0x144>
     25c:	00802825 	move	a1,a0
     260:	90980000 	lbu	t8,0(a0)
     264:	3c013f80 	lui	at,0x3f80
     268:	44810000 	mtc1	at,$f0
     26c:	3308ff7f 	andi	t0,t8,0xff7f
     270:	310a00bf 	andi	t2,t0,0xbf
     274:	a0880000 	sb	t0,0(a0)
     278:	314c00df 	andi	t4,t2,0xdf
     27c:	a08a0000 	sb	t2,0(a0)
     280:	318e00ef 	andi	t6,t4,0xef
     284:	a08c0000 	sb	t4,0(a0)
     288:	31d800f7 	andi	t8,t6,0xf7
     28c:	a08e0000 	sb	t6,0(a0)
     290:	330800fb 	andi	t0,t8,0xfb
     294:	a0980000 	sb	t8,0(a0)
     298:	24020800 	li	v0,2048
     29c:	3c0f0000 	lui	t7,0x0
     2a0:	a0880000 	sb	t0,0(a0)
     2a4:	310900fd 	andi	t1,t0,0xfd
     2a8:	240a00ff 	li	t2,255
     2ac:	240b0040 	li	t3,64
     2b0:	240c0080 	li	t4,128
     2b4:	240d0003 	li	t5,3
     2b8:	240e0001 	li	t6,1
     2bc:	25ef0000 	addiu	t7,t7,0
     2c0:	241800f0 	li	t8,240
     2c4:	a4820014 	sh	v0,20(a0)
     2c8:	a4820010 	sh	v0,16(a0)
     2cc:	a4800026 	sh	zero,38(a0)
     2d0:	a0890000 	sb	t1,0(a0)
     2d4:	a0800009 	sb	zero,9(a0)
     2d8:	a08000d0 	sb	zero,208(a0)
     2dc:	a08a0001 	sb	t2,1(a0)
     2e0:	a0800078 	sb	zero,120(a0)
     2e4:	a08b000a 	sb	t3,10(a0)
     2e8:	a08c000b 	sb	t4,11(a0)
     2ec:	a080000d 	sb	zero,13(a0)
     2f0:	a080000e 	sb	zero,14(a0)
     2f4:	ac800040 	sw	zero,64(a0)
     2f8:	a0800008 	sb	zero,8(a0)
     2fc:	a0800004 	sb	zero,4(a0)
     300:	a080000c 	sb	zero,12(a0)
     304:	a08d0005 	sb	t5,5(a0)
     308:	a08e0006 	sb	t6,6(a0)
     30c:	a480001e 	sh	zero,30(a0)
     310:	ac8f0080 	sw	t7,128(a0)
     314:	a098007c 	sb	t8,124(a0)
     318:	a080007d 	sb	zero,125(a0)
     31c:	a4800016 	sh	zero,22(a0)
     320:	a4800012 	sh	zero,18(a0)
     324:	a4800018 	sh	zero,24(a0)
     328:	a480001a 	sh	zero,26(a0)
     32c:	a480001c 	sh	zero,28(a0)
     330:	ac8000cc 	sw	zero,204(a0)
     334:	a4800020 	sh	zero,32(a0)
     338:	a080000f 	sb	zero,15(a0)
     33c:	e480002c 	swc1	$f0,44(a0)
     340:	e4800028 	swc1	$f0,40(a0)
     344:	e4800038 	swc1	$f0,56(a0)
     348:	00002025 	move	a0,zero
     34c:	2402ffff 	li	v0,-1
     350:	00a01825 	move	v1,a1
     354:	24060008 	li	a2,8
     358:	24840004 	addiu	a0,a0,4
     35c:	a06200c5 	sb	v0,197(v1)
     360:	a06200c6 	sb	v0,198(v1)
     364:	a06200c7 	sb	v0,199(v1)
     368:	24630004 	addiu	v1,v1,4
     36c:	1486fffa 	bne	a0,a2,358 <Audio_SequenceChannelInit+0x114>
     370:	a06200c0 	sb	v0,192(v1)
     374:	90b90000 	lbu	t9,0(a1)
     378:	24a40084 	addiu	a0,a1,132
     37c:	3328fffe 	andi	t0,t9,0xfffe
     380:	0c000000 	jal	0 <Audio_GetScriptControlFlowArgument>
     384:	a0a80000 	sb	t0,0(a1)
     388:	8fbf0014 	lw	ra,20(sp)
     38c:	27bd0018 	addiu	sp,sp,24
     390:	03e00008 	jr	ra
     394:	00000000 	nop

00000398 <Audio_SeqChannelSetLayer>:
     398:	27bdffd8 	addiu	sp,sp,-40
     39c:	00057880 	sll	t7,a1,0x2
     3a0:	afbf0014 	sw	ra,20(sp)
     3a4:	afa40028 	sw	a0,40(sp)
     3a8:	008f3021 	addu	a2,a0,t7
     3ac:	8cc70050 	lw	a3,80(a2)
     3b0:	14e0000b 	bnez	a3,3e0 <Audio_SeqChannelSetLayer+0x48>
     3b4:	00e02025 	move	a0,a3
     3b8:	3c040000 	lui	a0,0x0
     3bc:	24845b88 	addiu	a0,a0,23432
     3c0:	0c000000 	jal	0 <Audio_GetScriptControlFlowArgument>
     3c4:	afa6001c 	sw	a2,28(sp)
     3c8:	8fa6001c 	lw	a2,28(sp)
     3cc:	14400007 	bnez	v0,3ec <Audio_SeqChannelSetLayer+0x54>
     3d0:	acc20050 	sw	v0,80(a2)
     3d4:	acc00050 	sw	zero,80(a2)
     3d8:	10000034 	b	4ac <Audio_SeqChannelSetLayer+0x114>
     3dc:	2402ffff 	li	v0,-1
     3e0:	0c000000 	jal	0 <Audio_GetScriptControlFlowArgument>
     3e4:	afa6001c 	sw	a2,28(sp)
     3e8:	8fa6001c 	lw	a2,28(sp)
     3ec:	8cc30050 	lw	v1,80(a2)
     3f0:	8fb80028 	lw	t8,40(sp)
     3f4:	3c013f80 	lui	at,0x3f80
     3f8:	906b0000 	lbu	t3,0(v1)
     3fc:	ac780050 	sw	t8,80(v1)
     400:	8fb90028 	lw	t9,40(sp)
     404:	356d0080 	ori	t5,t3,0x80
     408:	31af00bf 	andi	t7,t5,0xbf
     40c:	8f29007c 	lw	t1,124(t9)
     410:	44810000 	mtc1	at,$f0
     414:	44802000 	mtc1	zero,$f4
     418:	ac690018 	sw	t1,24(v1)
     41c:	8f280080 	lw	t0,128(t9)
     420:	31f900df 	andi	t9,t7,0xdf
     424:	a06d0000 	sb	t5,0(v1)
     428:	332900ef 	andi	t1,t9,0xef
     42c:	a06f0000 	sb	t7,0(v1)
     430:	312b00f7 	andi	t3,t1,0xf7
     434:	a0790000 	sb	t9,0(v1)
     438:	316d00fb 	andi	t5,t3,0xfb
     43c:	a0690000 	sb	t1,0(v1)
     440:	31af00fd 	andi	t7,t5,0xfd
     444:	a06b0000 	sb	t3,0(v1)
     448:	a06d0000 	sb	t5,0(v1)
     44c:	ac68001c 	sw	t0,28(v1)
     450:	31f800fe 	andi	t8,t7,0xfe
     454:	24190080 	li	t9,128
     458:	24080040 	li	t0,64
     45c:	240900ff 	li	t1,255
     460:	a06f0000 	sb	t7,0(v1)
     464:	00001025 	move	v0,zero
     468:	a0600018 	sb	zero,24(v1)
     46c:	a0780000 	sb	t8,0(v1)
     470:	a0600001 	sb	zero,1(v1)
     474:	a0600020 	sb	zero,32(v1)
     478:	a060006c 	sb	zero,108(v1)
     47c:	a0790003 	sb	t9,3(v1)
     480:	a0680006 	sb	t0,6(v1)
     484:	a4600010 	sh	zero,16(v1)
     488:	a4600008 	sh	zero,8(v1)
     48c:	a460000a 	sh	zero,10(v1)
     490:	a460000c 	sh	zero,12(v1)
     494:	ac60002c 	sw	zero,44(v1)
     498:	ac600048 	sw	zero,72(v1)
     49c:	a0690002 	sb	t1,2(v1)
     4a0:	e4600030 	swc1	$f0,48(v1)
     4a4:	e4600034 	swc1	$f0,52(v1)
     4a8:	e4640038 	swc1	$f4,56(v1)
     4ac:	8fbf0014 	lw	ra,20(sp)
     4b0:	27bd0028 	addiu	sp,sp,40
     4b4:	03e00008 	jr	ra
     4b8:	00000000 	nop

000004bc <Audio_SeqChannelLayerDisable>:
     4bc:	27bdffe8 	addiu	sp,sp,-24
     4c0:	10800019 	beqz	a0,528 <Audio_SeqChannelLayerDisable+0x6c>
     4c4:	afbf0014 	sw	ra,20(sp)
     4c8:	8c820050 	lw	v0,80(a0)
     4cc:	3c0e0000 	lui	t6,0x0
     4d0:	25ce5ab0 	addiu	t6,t6,23216
     4d4:	11c2000c 	beq	t6,v0,508 <Audio_SeqChannelLayerDisable+0x4c>
     4d8:	00000000 	nop
     4dc:	8c4f004c 	lw	t7,76(v0)
     4e0:	24010001 	li	at,1
     4e4:	8df80000 	lw	t8,0(t7)
     4e8:	0018c840 	sll	t9,t8,0x1
     4ec:	001947c2 	srl	t0,t9,0x1f
     4f0:	15010005 	bne	t0,at,508 <Audio_SeqChannelLayerDisable+0x4c>
     4f4:	00000000 	nop
     4f8:	0c000000 	jal	0 <Audio_GetScriptControlFlowArgument>
     4fc:	afa40018 	sw	a0,24(sp)
     500:	10000004 	b	514 <Audio_SeqChannelLayerDisable+0x58>
     504:	8fa40018 	lw	a0,24(sp)
     508:	0c000000 	jal	0 <Audio_GetScriptControlFlowArgument>
     50c:	afa40018 	sw	a0,24(sp)
     510:	8fa40018 	lw	a0,24(sp)
     514:	90890000 	lbu	t1,0(a0)
     518:	312cff7f 	andi	t4,t1,0xff7f
     51c:	a08c0000 	sb	t4,0(a0)
     520:	358d0040 	ori	t5,t4,0x40
     524:	a08d0000 	sb	t5,0(a0)
     528:	8fbf0014 	lw	ra,20(sp)
     52c:	27bd0018 	addiu	sp,sp,24
     530:	03e00008 	jr	ra
     534:	00000000 	nop

00000538 <Audio_SeqChannelLayerFree>:
     538:	27bdffe0 	addiu	sp,sp,-32
     53c:	00057080 	sll	t6,a1,0x2
     540:	afbf0014 	sw	ra,20(sp)
     544:	008e1021 	addu	v0,a0,t6
     548:	8c460050 	lw	a2,80(v0)
     54c:	3c040000 	lui	a0,0x0
     550:	24845b88 	addiu	a0,a0,23432
     554:	10c00008 	beqz	a2,578 <Audio_SeqChannelLayerFree+0x40>
     558:	24c50070 	addiu	a1,a2,112
     55c:	afa20018 	sw	v0,24(sp)
     560:	0c000000 	jal	0 <Audio_GetScriptControlFlowArgument>
     564:	afa6001c 	sw	a2,28(sp)
     568:	0c000000 	jal	0 <Audio_GetScriptControlFlowArgument>
     56c:	8fa4001c 	lw	a0,28(sp)
     570:	8fa20018 	lw	v0,24(sp)
     574:	ac400050 	sw	zero,80(v0)
     578:	8fbf0014 	lw	ra,20(sp)
     57c:	27bd0020 	addiu	sp,sp,32
     580:	03e00008 	jr	ra
     584:	00000000 	nop

00000588 <Audio_SequenceChannelDisable>:
     588:	27bdffd8 	addiu	sp,sp,-40
     58c:	afb20020 	sw	s2,32(sp)
     590:	afb1001c 	sw	s1,28(sp)
     594:	afb00018 	sw	s0,24(sp)
     598:	00808825 	move	s1,a0
     59c:	afbf0024 	sw	ra,36(sp)
     5a0:	00008025 	move	s0,zero
     5a4:	24120004 	li	s2,4
     5a8:	02202025 	move	a0,s1
     5ac:	0c000000 	jal	0 <Audio_GetScriptControlFlowArgument>
     5b0:	02002825 	move	a1,s0
     5b4:	26100001 	addiu	s0,s0,1
     5b8:	5612fffc 	bnel	s0,s2,5ac <Audio_SequenceChannelDisable+0x24>
     5bc:	02202025 	move	a0,s1
     5c0:	0c000000 	jal	0 <Audio_GetScriptControlFlowArgument>
     5c4:	26240084 	addiu	a0,s1,132
     5c8:	922e0000 	lbu	t6,0(s1)
     5cc:	31d9ff7f 	andi	t9,t6,0xff7f
     5d0:	a2390000 	sb	t9,0(s1)
     5d4:	37280040 	ori	t0,t9,0x40
     5d8:	a2280000 	sb	t0,0(s1)
     5dc:	8fbf0024 	lw	ra,36(sp)
     5e0:	8fb20020 	lw	s2,32(sp)
     5e4:	8fb1001c 	lw	s1,28(sp)
     5e8:	8fb00018 	lw	s0,24(sp)
     5ec:	03e00008 	jr	ra
     5f0:	27bd0028 	addiu	sp,sp,40

000005f4 <Audio_SequencePlayerInitChannels>:
     5f4:	afa50004 	sw	a1,4(sp)
     5f8:	30a5ffff 	andi	a1,a1,0xffff
     5fc:	00803025 	move	a2,a0
     600:	00001025 	move	v0,zero
     604:	24070010 	li	a3,16
     608:	30ae0001 	andi	t6,a1,0x1
     60c:	11c0000a 	beqz	t6,638 <Audio_SequencePlayerInitChannels+0x44>
     610:	00a01825 	move	v1,a1
     614:	00027880 	sll	t7,v0,0x2
     618:	00cfc021 	addu	t8,a2,t7
     61c:	8f040038 	lw	a0,56(t8)
     620:	90d90005 	lbu	t9,5(a2)
     624:	a0990007 	sb	t9,7(a0)
     628:	90c80003 	lbu	t0,3(a2)
     62c:	a0880003 	sb	t0,3(a0)
     630:	90c90002 	lbu	t1,2(a2)
     634:	a0890002 	sb	t1,2(a0)
     638:	00032843 	sra	a1,v1,0x1
     63c:	30a3ffff 	andi	v1,a1,0xffff
     640:	306a0001 	andi	t2,v1,0x1
     644:	1140000a 	beqz	t2,670 <Audio_SequencePlayerInitChannels+0x7c>
     648:	00032843 	sra	a1,v1,0x1
     64c:	00025880 	sll	t3,v0,0x2
     650:	00cb6021 	addu	t4,a2,t3
     654:	8d84003c 	lw	a0,60(t4)
     658:	90cd0005 	lbu	t5,5(a2)
     65c:	a08d0007 	sb	t5,7(a0)
     660:	90ce0003 	lbu	t6,3(a2)
     664:	a08e0003 	sb	t6,3(a0)
     668:	90cf0002 	lbu	t7,2(a2)
     66c:	a08f0002 	sb	t7,2(a0)
     670:	30a3ffff 	andi	v1,a1,0xffff
     674:	30780001 	andi	t8,v1,0x1
     678:	1300000a 	beqz	t8,6a4 <Audio_SequencePlayerInitChannels+0xb0>
     67c:	00032843 	sra	a1,v1,0x1
     680:	0002c880 	sll	t9,v0,0x2
     684:	00d94021 	addu	t0,a2,t9
     688:	8d040040 	lw	a0,64(t0)
     68c:	90c90005 	lbu	t1,5(a2)
     690:	a0890007 	sb	t1,7(a0)
     694:	90ca0003 	lbu	t2,3(a2)
     698:	a08a0003 	sb	t2,3(a0)
     69c:	90cb0002 	lbu	t3,2(a2)
     6a0:	a08b0002 	sb	t3,2(a0)
     6a4:	30a3ffff 	andi	v1,a1,0xffff
     6a8:	306c0001 	andi	t4,v1,0x1
     6ac:	1180000a 	beqz	t4,6d8 <Audio_SequencePlayerInitChannels+0xe4>
     6b0:	00032843 	sra	a1,v1,0x1
     6b4:	00026880 	sll	t5,v0,0x2
     6b8:	00cd7021 	addu	t6,a2,t5
     6bc:	8dc40044 	lw	a0,68(t6)
     6c0:	90cf0005 	lbu	t7,5(a2)
     6c4:	a08f0007 	sb	t7,7(a0)
     6c8:	90d80003 	lbu	t8,3(a2)
     6cc:	a0980003 	sb	t8,3(a0)
     6d0:	90d90002 	lbu	t9,2(a2)
     6d4:	a0990002 	sb	t9,2(a0)
     6d8:	24420004 	addiu	v0,v0,4
     6dc:	1447ffca 	bne	v0,a3,608 <Audio_SequencePlayerInitChannels+0x14>
     6e0:	30a5ffff 	andi	a1,a1,0xffff
     6e4:	03e00008 	jr	ra
     6e8:	00000000 	nop

000006ec <Audio_SequencePlayerDisableChannels>:
     6ec:	27bdffd0 	addiu	sp,sp,-48
     6f0:	afb20020 	sw	s2,32(sp)
     6f4:	afb40028 	sw	s4,40(sp)
     6f8:	afb30024 	sw	s3,36(sp)
     6fc:	afb1001c 	sw	s1,28(sp)
     700:	afb00018 	sw	s0,24(sp)
     704:	3c120000 	lui	s2,0x0
     708:	afbf002c 	sw	ra,44(sp)
     70c:	afa50034 	sw	a1,52(sp)
     710:	26525ab0 	addiu	s2,s2,23216
     714:	00008025 	move	s0,zero
     718:	00808825 	move	s1,a0
     71c:	24130001 	li	s3,1
     720:	24140040 	li	s4,64
     724:	8e240038 	lw	a0,56(s1)
     728:	00927026 	xor	t6,a0,s2
     72c:	000e702b 	sltu	t6,zero,t6
     730:	566e0004 	bnel	s3,t6,744 <Audio_SequencePlayerDisableChannels+0x58>
     734:	26100004 	addiu	s0,s0,4
     738:	0c000000 	jal	0 <Audio_GetScriptControlFlowArgument>
     73c:	00000000 	nop
     740:	26100004 	addiu	s0,s0,4
     744:	1614fff7 	bne	s0,s4,724 <Audio_SequencePlayerDisableChannels+0x38>
     748:	26310004 	addiu	s1,s1,4
     74c:	8fbf002c 	lw	ra,44(sp)
     750:	8fb00018 	lw	s0,24(sp)
     754:	8fb1001c 	lw	s1,28(sp)
     758:	8fb20020 	lw	s2,32(sp)
     75c:	8fb30024 	lw	s3,36(sp)
     760:	8fb40028 	lw	s4,40(sp)
     764:	03e00008 	jr	ra
     768:	27bd0030 	addiu	sp,sp,48

0000076c <Audio_SequenceChannelEnable>:
     76c:	27bdffd8 	addiu	sp,sp,-40
     770:	afa5002c 	sw	a1,44(sp)
     774:	30a500ff 	andi	a1,a1,0xff
     778:	00057080 	sll	t6,a1,0x2
     77c:	afbf0024 	sw	ra,36(sp)
     780:	afb30020 	sw	s3,32(sp)
     784:	afb2001c 	sw	s2,28(sp)
     788:	afb10018 	sw	s1,24(sp)
     78c:	afb00014 	sw	s0,20(sp)
     790:	008e7821 	addu	t7,a0,t6
     794:	8df20038 	lw	s2,56(t7)
     798:	00008025 	move	s0,zero
     79c:	24130004 	li	s3,4
     7a0:	92590000 	lbu	t9,0(s2)
     7a4:	a2400078 	sb	zero,120(s2)
     7a8:	ae460060 	sw	a2,96(s2)
     7ac:	37290080 	ori	t1,t9,0x80
     7b0:	312a00bf 	andi	t2,t1,0xbf
     7b4:	a2490000 	sb	t1,0(s2)
     7b8:	a24a0000 	sb	t2,0(s2)
     7bc:	a640001e 	sh	zero,30(s2)
     7c0:	02408825 	move	s1,s2
     7c4:	8e2b0050 	lw	t3,80(s1)
     7c8:	02402025 	move	a0,s2
     7cc:	51600004 	beqzl	t3,7e0 <Audio_SequenceChannelEnable+0x74>
     7d0:	26100001 	addiu	s0,s0,1
     7d4:	0c000000 	jal	0 <Audio_GetScriptControlFlowArgument>
     7d8:	02002825 	move	a1,s0
     7dc:	26100001 	addiu	s0,s0,1
     7e0:	1613fff8 	bne	s0,s3,7c4 <Audio_SequenceChannelEnable+0x58>
     7e4:	26310004 	addiu	s1,s1,4
     7e8:	8fbf0024 	lw	ra,36(sp)
     7ec:	8fb00014 	lw	s0,20(sp)
     7f0:	8fb10018 	lw	s1,24(sp)
     7f4:	8fb2001c 	lw	s2,28(sp)
     7f8:	8fb30020 	lw	s3,32(sp)
     7fc:	03e00008 	jr	ra
     800:	27bd0028 	addiu	sp,sp,40

00000804 <Audio_SequencePlayerDisableAsFinished>:
     804:	27bdffe8 	addiu	sp,sp,-24
     808:	afbf0014 	sw	ra,20(sp)
     80c:	908f0000 	lbu	t7,0(a0)
     810:	35f80040 	ori	t8,t7,0x40
     814:	0c000000 	jal	0 <Audio_GetScriptControlFlowArgument>
     818:	a0980000 	sb	t8,0(a0)
     81c:	8fbf0014 	lw	ra,20(sp)
     820:	27bd0018 	addiu	sp,sp,24
     824:	03e00008 	jr	ra
     828:	00000000 	nop

0000082c <Audio_SequencePlayerDisable>:
     82c:	27bdffe0 	addiu	sp,sp,-32
     830:	afbf001c 	sw	ra,28(sp)
     834:	afb00018 	sw	s0,24(sp)
     838:	00808025 	move	s0,a0
     83c:	0c000000 	jal	0 <Audio_GetScriptControlFlowArgument>
     840:	3405ffff 	li	a1,0xffff
     844:	0c000000 	jal	0 <Audio_GetScriptControlFlowArgument>
     848:	2604009c 	addiu	a0,s0,156
     84c:	8e0e0000 	lw	t6,0(s0)
     850:	000e7fc2 	srl	t7,t6,0x1f
     854:	51e00020 	beqzl	t7,8d8 <Audio_SequencePlayerDisable+0xac>
     858:	8fbf001c 	lw	ra,28(sp)
     85c:	92180000 	lbu	t8,0(s0)
     860:	92040004 	lbu	a0,4(s0)
     864:	3309ff7f 	andi	t1,t8,0xff7f
     868:	a2090000 	sb	t1,0(s0)
     86c:	352a0040 	ori	t2,t1,0x40
     870:	0c000000 	jal	0 <Audio_GetScriptControlFlowArgument>
     874:	a20a0000 	sb	t2,0(s0)
     878:	10400003 	beqz	v0,888 <Audio_SequencePlayerDisable+0x5c>
     87c:	24050003 	li	a1,3
     880:	0c000000 	jal	0 <Audio_GetScriptControlFlowArgument>
     884:	92040004 	lbu	a0,4(s0)
     888:	0c000000 	jal	0 <Audio_GetScriptControlFlowArgument>
     88c:	92040005 	lbu	a0,5(s0)
     890:	10400003 	beqz	v0,8a0 <Audio_SequencePlayerDisable+0x74>
     894:	24050004 	li	a1,4
     898:	0c000000 	jal	0 <Audio_GetScriptControlFlowArgument>
     89c:	92040005 	lbu	a0,5(s0)
     8a0:	3c030000 	lui	v1,0x0
     8a4:	24630000 	addiu	v1,v1,0
     8a8:	846b2c22 	lh	t3,11298(v1)
     8ac:	92020005 	lbu	v0,5(s0)
     8b0:	544b0004 	bnel	v0,t3,8c4 <Audio_SequencePlayerDisable+0x98>
     8b4:	846c2c2e 	lh	t4,11310(v1)
     8b8:	10000006 	b	8d4 <Audio_SequencePlayerDisable+0xa8>
     8bc:	ac602c04 	sw	zero,11268(v1)
     8c0:	846c2c2e 	lh	t4,11310(v1)
     8c4:	240d0001 	li	t5,1
     8c8:	544c0003 	bnel	v0,t4,8d8 <Audio_SequencePlayerDisable+0xac>
     8cc:	8fbf001c 	lw	ra,28(sp)
     8d0:	ac6d2c04 	sw	t5,11268(v1)
     8d4:	8fbf001c 	lw	ra,28(sp)
     8d8:	8fb00018 	lw	s0,24(sp)
     8dc:	27bd0020 	addiu	sp,sp,32
     8e0:	03e00008 	jr	ra
     8e4:	00000000 	nop

000008e8 <Audio_AudioListPushBack>:
     8e8:	8cae0000 	lw	t6,0(a1)
     8ec:	15c0000c 	bnez	t6,920 <Audio_AudioListPushBack+0x38>
     8f0:	00000000 	nop
     8f4:	8c8f0000 	lw	t7,0(a0)
     8f8:	ade50004 	sw	a1,4(t7)
     8fc:	8c980000 	lw	t8,0(a0)
     900:	aca40004 	sw	a0,4(a1)
     904:	acb80000 	sw	t8,0(a1)
     908:	8c990008 	lw	t9,8(a0)
     90c:	8c89000c 	lw	t1,12(a0)
     910:	ac850000 	sw	a1,0(a0)
     914:	27280001 	addiu	t0,t9,1
     918:	ac880008 	sw	t0,8(a0)
     91c:	aca9000c 	sw	t1,12(a1)
     920:	03e00008 	jr	ra
     924:	00000000 	nop

00000928 <Audio_AudioListPopBack>:
     928:	8c830000 	lw	v1,0(a0)
     92c:	54640004 	bnel	v1,a0,940 <Audio_AudioListPopBack+0x18>
     930:	8c6e0000 	lw	t6,0(v1)
     934:	03e00008 	jr	ra
     938:	00001025 	move	v0,zero
     93c:	8c6e0000 	lw	t6,0(v1)
     940:	adc40004 	sw	a0,4(t6)
     944:	8c6f0000 	lw	t7,0(v1)
     948:	ac8f0000 	sw	t7,0(a0)
     94c:	ac600000 	sw	zero,0(v1)
     950:	8c980008 	lw	t8,8(a0)
     954:	2719ffff 	addiu	t9,t8,-1
     958:	ac990008 	sw	t9,8(a0)
     95c:	8c620008 	lw	v0,8(v1)
     960:	03e00008 	jr	ra
     964:	00000000 	nop

00000968 <Audio_InitLayerFreelist>:
     968:	27bdffd0 	addiu	sp,sp,-48
     96c:	3c020000 	lui	v0,0x0
     970:	24420000 	addiu	v0,v0,0
     974:	afb30024 	sw	s3,36(sp)
     978:	3c130000 	lui	s3,0x0
     97c:	26735b88 	addiu	s3,s3,23432
     980:	afb40028 	sw	s4,40(sp)
     984:	afb20020 	sw	s2,32(sp)
     988:	afb1001c 	sw	s1,28(sp)
     98c:	afb00018 	sw	s0,24(sp)
     990:	3c100000 	lui	s0,0x0
     994:	3c110000 	lui	s1,0x0
     998:	3c120000 	lui	s2,0x0
     99c:	3c140000 	lui	s4,0x0
     9a0:	afbf002c 	sw	ra,44(sp)
     9a4:	ac535b88 	sw	s3,23432(v0)
     9a8:	ac535b8c 	sw	s3,23436(v0)
     9ac:	ac405b90 	sw	zero,23440(v0)
     9b0:	ac405b94 	sw	zero,23444(v0)
     9b4:	26945b20 	addiu	s4,s4,23328
     9b8:	26523ab0 	addiu	s2,s2,15024
     9bc:	26313b20 	addiu	s1,s1,15136
     9c0:	26100000 	addiu	s0,s0,0
     9c4:	ae123b28 	sw	s2,15144(s0)
     9c8:	ae003b20 	sw	zero,15136(s0)
     9cc:	02602025 	move	a0,s3
     9d0:	0c000000 	jal	0 <Audio_GetScriptControlFlowArgument>
     9d4:	02202825 	move	a1,s1
     9d8:	26310080 	addiu	s1,s1,128
     9dc:	26100080 	addiu	s0,s0,128
     9e0:	1634fff8 	bne	s1,s4,9c4 <Audio_InitLayerFreelist+0x5c>
     9e4:	26520080 	addiu	s2,s2,128
     9e8:	8fbf002c 	lw	ra,44(sp)
     9ec:	8fb00018 	lw	s0,24(sp)
     9f0:	8fb1001c 	lw	s1,28(sp)
     9f4:	8fb20020 	lw	s2,32(sp)
     9f8:	8fb30024 	lw	s3,36(sp)
     9fc:	8fb40028 	lw	s4,40(sp)
     a00:	03e00008 	jr	ra
     a04:	27bd0030 	addiu	sp,sp,48

00000a08 <Audio_M64ReadU8>:
     a08:	8c850000 	lw	a1,0(a0)
     a0c:	90a20000 	lbu	v0,0(a1)
     a10:	24ae0001 	addiu	t6,a1,1
     a14:	03e00008 	jr	ra
     a18:	ac8e0000 	sw	t6,0(a0)

00000a1c <Audio_M64ReadS16>:
     a1c:	8c850000 	lw	a1,0(a0)
     a20:	90a30000 	lbu	v1,0(a1)
     a24:	24ae0001 	addiu	t6,a1,1
     a28:	ac8e0000 	sw	t6,0(a0)
     a2c:	91cf0000 	lbu	t7,0(t6)
     a30:	00031a00 	sll	v1,v1,0x8
     a34:	00031c00 	sll	v1,v1,0x10
     a38:	00031c03 	sra	v1,v1,0x10
     a3c:	01e31825 	or	v1,t7,v1
     a40:	00031c00 	sll	v1,v1,0x10
     a44:	25d80001 	addiu	t8,t6,1
     a48:	ac980000 	sw	t8,0(a0)
     a4c:	03e00008 	jr	ra
     a50:	00031403 	sra	v0,v1,0x10

00000a54 <Audio_M64ReadCompressedU16>:
     a54:	8c820000 	lw	v0,0(a0)
     a58:	90430000 	lbu	v1,0(v0)
     a5c:	244e0001 	addiu	t6,v0,1
     a60:	ac8e0000 	sw	t6,0(a0)
     a64:	306f0080 	andi	t7,v1,0x80
     a68:	11e00008 	beqz	t7,a8c <Audio_M64ReadCompressedU16+0x38>
     a6c:	00602825 	move	a1,v1
     a70:	91d80000 	lbu	t8,0(t6)
     a74:	00051a00 	sll	v1,a1,0x8
     a78:	30637f00 	andi	v1,v1,0x7f00
     a7c:	25d90001 	addiu	t9,t6,1
     a80:	03031825 	or	v1,t8,v1
     a84:	3063ffff 	andi	v1,v1,0xffff
     a88:	ac990000 	sw	t9,0(a0)
     a8c:	03e00008 	jr	ra
     a90:	00601025 	move	v0,v1

00000a94 <Audio_SeqChannelLayerProcessScript>:
     a94:	27bdffe0 	addiu	sp,sp,-32
     a98:	afbf001c 	sw	ra,28(sp)
     a9c:	afb00018 	sw	s0,24(sp)
     aa0:	8c820000 	lw	v0,0(a0)
     aa4:	00808025 	move	s0,a0
     aa8:	000277c2 	srl	t6,v0,0x1f
     aac:	51c00036 	beqzl	t6,b88 <Audio_SeqChannelLayerProcessScript+0xf4>
     ab0:	8fbf001c 	lw	ra,28(sp)
     ab4:	84830008 	lh	v1,8(a0)
     ab8:	0002c880 	sll	t9,v0,0x2
     abc:	28610002 	slti	at,v1,2
     ac0:	1420000e 	bnez	at,afc <Audio_SeqChannelLayerProcessScript+0x68>
     ac4:	246fffff 	addiu	t7,v1,-1
     ac8:	0720002e 	bltz	t9,b84 <Audio_SeqChannelLayerProcessScript+0xf0>
     acc:	a48f0008 	sh	t7,8(a0)
     ad0:	8488000a 	lh	t0,10(a0)
     ad4:	84890008 	lh	t1,8(a0)
     ad8:	0109082a 	slt	at,t0,t1
     adc:	5420002a 	bnezl	at,b88 <Audio_SeqChannelLayerProcessScript+0xf4>
     ae0:	8fbf001c 	lw	ra,28(sp)
     ae4:	0c000000 	jal	0 <Audio_GetScriptControlFlowArgument>
     ae8:	00000000 	nop
     aec:	920b0000 	lbu	t3,0(s0)
     af0:	356c0020 	ori	t4,t3,0x20
     af4:	10000023 	b	b84 <Audio_SeqChannelLayerProcessScript+0xf0>
     af8:	a20c0000 	sb	t4,0(s0)
     afc:	0c000000 	jal	0 <Audio_GetScriptControlFlowArgument>
     b00:	02002025 	move	a0,s0
     b04:	0c000000 	jal	0 <Audio_GetScriptControlFlowArgument>
     b08:	02002025 	move	a0,s0
     b0c:	2401ffff 	li	at,-1
     b10:	1041001c 	beq	v0,at,b84 <Audio_SeqChannelLayerProcessScript+0xf0>
     b14:	00402825 	move	a1,v0
     b18:	0c000000 	jal	0 <Audio_GetScriptControlFlowArgument>
     b1c:	02002025 	move	a0,s0
     b20:	2401ffff 	li	at,-1
     b24:	10410004 	beq	v0,at,b38 <Audio_SeqChannelLayerProcessScript+0xa4>
     b28:	00402825 	move	a1,v0
     b2c:	0c000000 	jal	0 <Audio_GetScriptControlFlowArgument>
     b30:	02002025 	move	a0,s0
     b34:	00402825 	move	a1,v0
     b38:	2401ffff 	li	at,-1
     b3c:	50410004 	beql	v0,at,b50 <Audio_SeqChannelLayerProcessScript+0xbc>
     b40:	8e020000 	lw	v0,0(s0)
     b44:	0c000000 	jal	0 <Audio_GetScriptControlFlowArgument>
     b48:	02002025 	move	a0,s0
     b4c:	8e020000 	lw	v0,0(s0)
     b50:	24010001 	li	at,1
     b54:	00026880 	sll	t5,v0,0x2
     b58:	000d77c2 	srl	t6,t5,0x1f
     b5c:	55c1000a 	bnel	t6,at,b88 <Audio_SeqChannelLayerProcessScript+0xf4>
     b60:	8fbf001c 	lw	ra,28(sp)
     b64:	8e0f002c 	lw	t7,44(s0)
     b68:	0002c8c0 	sll	t9,v0,0x3
     b6c:	15e00003 	bnez	t7,b7c <Audio_SeqChannelLayerProcessScript+0xe8>
     b70:	00000000 	nop
     b74:	07230004 	bgezl	t9,b88 <Audio_SeqChannelLayerProcessScript+0xf4>
     b78:	8fbf001c 	lw	ra,28(sp)
     b7c:	0c000000 	jal	0 <Audio_GetScriptControlFlowArgument>
     b80:	02002025 	move	a0,s0
     b84:	8fbf001c 	lw	ra,28(sp)
     b88:	8fb00018 	lw	s0,24(sp)
     b8c:	27bd0020 	addiu	sp,sp,32
     b90:	03e00008 	jr	ra
     b94:	00000000 	nop

00000b98 <func_800E9ED8>:
     b98:	27bdffe8 	addiu	sp,sp,-24
     b9c:	afbf0014 	sw	ra,20(sp)
     ba0:	8c8e0000 	lw	t6,0(a0)
     ba4:	000ec0c0 	sll	t8,t6,0x3
     ba8:	07020006 	bltzl	t8,bc4 <func_800E9ED8+0x2c>
     bac:	8c82002c 	lw	v0,44(a0)
     bb0:	0c000000 	jal	0 <Audio_GetScriptControlFlowArgument>
     bb4:	afa40018 	sw	a0,24(sp)
     bb8:	1000000a 	b	be4 <func_800E9ED8+0x4c>
     bbc:	8fa40018 	lw	a0,24(sp)
     bc0:	8c82002c 	lw	v0,44(a0)
     bc4:	50400008 	beqzl	v0,be8 <func_800E9ED8+0x50>
     bc8:	90820020 	lbu	v0,32(a0)
     bcc:	8c590048 	lw	t9,72(v0)
     bd0:	54990005 	bnel	a0,t9,be8 <func_800E9ED8+0x50>
     bd4:	90820020 	lbu	v0,32(a0)
     bd8:	0c000000 	jal	0 <Audio_GetScriptControlFlowArgument>
     bdc:	afa40018 	sw	a0,24(sp)
     be0:	8fa40018 	lw	a0,24(sp)
     be4:	90820020 	lbu	v0,32(a0)
     be8:	2401ff7f 	li	at,-129
     bec:	00411024 	and	v0,v0,at
     bf0:	24010001 	li	at,1
     bf4:	10410003 	beq	v0,at,c04 <func_800E9ED8+0x6c>
     bf8:	24010002 	li	at,2
     bfc:	54410003 	bnel	v0,at,c0c <func_800E9ED8+0x74>
     c00:	90890000 	lbu	t1,0(a0)
     c04:	a0800020 	sb	zero,32(a0)
     c08:	90890000 	lbu	t1,0(a0)
     c0c:	352a0001 	ori	t2,t1,0x1
     c10:	a08a0000 	sb	t2,0(a0)
     c14:	8fbf0014 	lw	ra,20(sp)
     c18:	27bd0018 	addiu	sp,sp,24
     c1c:	03e00008 	jr	ra
     c20:	00000000 	nop

00000c24 <func_800E9F64>:
     c24:	27bdffe8 	addiu	sp,sp,-24
     c28:	afbf0014 	sw	ra,20(sp)
     c2c:	8c820000 	lw	v0,0(a0)
     c30:	00803825 	move	a3,a0
     c34:	00027880 	sll	t7,v0,0x2
     c38:	05e20013 	bltzl	t7,c88 <func_800E9F64+0x64>
     c3c:	000218c0 	sll	v1,v0,0x3
     c40:	8c83004c 	lw	v1,76(a0)
     c44:	50600010 	beqzl	v1,c88 <func_800E9F64+0x64>
     c48:	000218c0 	sll	v1,v0,0x3
     c4c:	8c780000 	lw	t8,0(v1)
     c50:	24010002 	li	at,2
     c54:	8f040000 	lw	a0,0(t8)
     c58:	0004cf02 	srl	t9,a0,0x1c
     c5c:	17210009 	bne	t9,at,c84 <func_800E9F64+0x60>
     c60:	00044100 	sll	t0,a0,0x4
     c64:	00084f82 	srl	t1,t0,0x1e
     c68:	51200007 	beqzl	t1,c88 <func_800E9F64+0x64>
     c6c:	000218c0 	sll	v1,v0,0x3
     c70:	90eb0000 	lbu	t3,0(a3)
     c74:	2402ffff 	li	v0,-1
     c78:	356c0020 	ori	t4,t3,0x20
     c7c:	1000003c 	b	d70 <func_800E9F64+0x14c>
     c80:	a0ec0000 	sb	t4,0(a3)
     c84:	000218c0 	sll	v1,v0,0x3
     c88:	24040001 	li	a0,1
     c8c:	00031fc2 	srl	v1,v1,0x1f
     c90:	14830006 	bne	a0,v1,cac <func_800E9F64+0x88>
     c94:	00026980 	sll	t5,v0,0x6
     c98:	000d77c2 	srl	t6,t5,0x1f
     c9c:	148e0003 	bne	a0,t6,cac <func_800E9F64+0x88>
     ca0:	00000000 	nop
     ca4:	10000032 	b	d70 <func_800E9F64+0x14c>
     ca8:	00001025 	move	v0,zero
     cac:	14830015 	bne	a0,v1,d04 <func_800E9F64+0xe0>
     cb0:	00000000 	nop
     cb4:	8ce6002c 	lw	a2,44(a3)
     cb8:	0002c100 	sll	t8,v0,0x4
     cbc:	10c00011 	beqz	a2,d04 <func_800E9F64+0xe0>
     cc0:	00000000 	nop
     cc4:	0701000f 	bgez	t8,d04 <func_800E9F64+0xe0>
     cc8:	00000000 	nop
     ccc:	14a4000d 	bne	a1,a0,d04 <func_800E9F64+0xe0>
     cd0:	00000000 	nop
     cd4:	8cd90044 	lw	t9,68(a2)
     cd8:	14f9000a 	bne	a3,t9,d04 <func_800E9F64+0xe0>
     cdc:	00000000 	nop
     ce0:	8ce8004c 	lw	t0,76(a3)
     ce4:	00c02025 	move	a0,a2
     ce8:	00e02825 	move	a1,a3
     cec:	55000018 	bnezl	t0,d50 <func_800E9F64+0x12c>
     cf0:	8ce6002c 	lw	a2,44(a3)
     cf4:	0c000000 	jal	0 <Audio_GetScriptControlFlowArgument>
     cf8:	afa70018 	sw	a3,24(sp)
     cfc:	10000013 	b	d4c <func_800E9F64+0x128>
     d00:	8fa70018 	lw	a3,24(sp)
     d04:	14a00004 	bnez	a1,d18 <func_800E9F64+0xf4>
     d08:	00e02025 	move	a0,a3
     d0c:	0c000000 	jal	0 <Audio_GetScriptControlFlowArgument>
     d10:	afa70018 	sw	a3,24(sp)
     d14:	8fa70018 	lw	a3,24(sp)
     d18:	00e02025 	move	a0,a3
     d1c:	0c000000 	jal	0 <Audio_GetScriptControlFlowArgument>
     d20:	afa70018 	sw	a3,24(sp)
     d24:	8fa70018 	lw	a3,24(sp)
     d28:	10400008 	beqz	v0,d4c <func_800E9F64+0x128>
     d2c:	ace2002c 	sw	v0,44(a3)
     d30:	8c490044 	lw	t1,68(v0)
     d34:	00402025 	move	a0,v0
     d38:	54e90005 	bnel	a3,t1,d50 <func_800E9F64+0x12c>
     d3c:	8ce6002c 	lw	a2,44(a3)
     d40:	0c000000 	jal	0 <Audio_GetScriptControlFlowArgument>
     d44:	afa70018 	sw	a3,24(sp)
     d48:	8fa70018 	lw	a3,24(sp)
     d4c:	8ce6002c 	lw	a2,44(a3)
     d50:	50c00007 	beqzl	a2,d70 <func_800E9F64+0x14c>
     d54:	00001025 	move	v0,zero
     d58:	8cca0044 	lw	t2,68(a2)
     d5c:	54ea0004 	bnel	a3,t2,d70 <func_800E9F64+0x14c>
     d60:	00001025 	move	v0,zero
     d64:	0c000000 	jal	0 <Audio_GetScriptControlFlowArgument>
     d68:	00c02025 	move	a0,a2
     d6c:	00001025 	move	v0,zero
     d70:	8fbf0014 	lw	ra,20(sp)
     d74:	27bd0018 	addiu	sp,sp,24
     d78:	03e00008 	jr	ra
     d7c:	00000000 	nop

00000d80 <func_800EA0C0>:
     d80:	27bdffc8 	addiu	sp,sp,-56
     d84:	afbf0034 	sw	ra,52(sp)
     d88:	afb40030 	sw	s4,48(sp)
     d8c:	afb3002c 	sw	s3,44(sp)
     d90:	afb20028 	sw	s2,40(sp)
     d94:	afb10024 	sw	s1,36(sp)
     d98:	afb00020 	sw	s0,32(sp)
     d9c:	f7b40018 	sdc1	$f20,24(sp)
     da0:	8c940050 	lw	s4,80(a0)
     da4:	3c010000 	lui	at,0x0
     da8:	00808825 	move	s1,a0
     dac:	c4340038 	lwc1	$f20,56(at)
     db0:	24920054 	addiu	s2,a0,84
     db4:	8e93004c 	lw	s3,76(s4)
     db8:	0c000000 	jal	0 <Audio_GetScriptControlFlowArgument>
     dbc:	02402025 	move	a0,s2
     dc0:	284100c1 	slti	at,v0,193
     dc4:	305000ff 	andi	s0,v0,0xff
     dc8:	10200003 	beqz	at,dd8 <func_800EA0C0+0x58>
     dcc:	00402025 	move	a0,v0
     dd0:	100000c2 	b	10dc <func_800EA0C0+0x35c>
     dd4:	02001025 	move	v0,s0
     dd8:	288100f2 	slti	at,a0,242
     ddc:	1420000f 	bnez	at,e1c <func_800EA0C0+0x9c>
     de0:	248eff3f 	addiu	t6,a0,-193
     de4:	02402025 	move	a0,s2
     de8:	0c000000 	jal	0 <Audio_GetScriptControlFlowArgument>
     dec:	320500ff 	andi	a1,s0,0xff
     df0:	02602025 	move	a0,s3
     df4:	02402825 	move	a1,s2
     df8:	02003025 	move	a2,s0
     dfc:	0c000000 	jal	0 <Audio_GetScriptControlFlowArgument>
     e00:	00403825 	move	a3,v0
     e04:	1040ffec 	beqz	v0,db8 <func_800EA0C0+0x38>
     e08:	00000000 	nop
     e0c:	0c000000 	jal	0 <Audio_GetScriptControlFlowArgument>
     e10:	02202025 	move	a0,s1
     e14:	100000b1 	b	10dc <func_800EA0C0+0x35c>
     e18:	2402ffff 	li	v0,-1
     e1c:	2dc1000f 	sltiu	at,t6,15
     e20:	10200095 	beqz	at,1078 <func_800EA0C0+0x2f8>
     e24:	308300f0 	andi	v1,a0,0xf0
     e28:	000e7080 	sll	t6,t6,0x2
     e2c:	3c010000 	lui	at,0x0
     e30:	002e0821 	addu	at,at,t6
     e34:	8c2e003c 	lw	t6,60(at)
     e38:	01c00008 	jr	t6
     e3c:	00000000 	nop
     e40:	8e430000 	lw	v1,0(s2)
     e44:	240100c1 	li	at,193
     e48:	90650000 	lbu	a1,0(v1)
     e4c:	246f0001 	addiu	t7,v1,1
     e50:	14810009 	bne	a0,at,e78 <func_800EA0C0+0xf8>
     e54:	ae4f0000 	sw	t7,0(s2)
     e58:	00a50019 	multu	a1,a1
     e5c:	0000c012 	mflo	t8
     e60:	44982000 	mtc1	t8,$f4
     e64:	00000000 	nop
     e68:	468021a0 	cvt.s.w	$f6,$f4
     e6c:	46143203 	div.s	$f8,$f6,$f20
     e70:	1000ffd1 	b	db8 <func_800EA0C0+0x38>
     e74:	e628003c 	swc1	$f8,60(s1)
     e78:	1000ffcf 	b	db8 <func_800EA0C0+0x38>
     e7c:	a2250006 	sb	a1,6(s1)
     e80:	8e430000 	lw	v1,0(s2)
     e84:	240100c9 	li	at,201
     e88:	90650000 	lbu	a1,0(v1)
     e8c:	24790001 	addiu	t9,v1,1
     e90:	14810003 	bne	a0,at,ea0 <func_800EA0C0+0x120>
     e94:	ae590000 	sw	t9,0(s2)
     e98:	1000ffc7 	b	db8 <func_800EA0C0+0x38>
     e9c:	a2250003 	sb	a1,3(s1)
     ea0:	1000ffc5 	b	db8 <func_800EA0C0+0x38>
     ea4:	a6250010 	sh	a1,16(s1)
     ea8:	240100c4 	li	at,196
     eac:	54810006 	bnel	a0,at,ec8 <func_800EA0C0+0x148>
     eb0:	922b0000 	lbu	t3,0(s1)
     eb4:	92290000 	lbu	t1,0(s1)
     eb8:	352a0010 	ori	t2,t1,0x10
     ebc:	10000004 	b	ed0 <func_800EA0C0+0x150>
     ec0:	a22a0000 	sb	t2,0(s1)
     ec4:	922b0000 	lbu	t3,0(s1)
     ec8:	316cffef 	andi	t4,t3,0xffef
     ecc:	a22c0000 	sb	t4,0(s1)
     ed0:	922d0000 	lbu	t5,0(s1)
     ed4:	02202025 	move	a0,s1
     ed8:	31aefffd 	andi	t6,t5,0xfffd
     edc:	0c000000 	jal	0 <Audio_GetScriptControlFlowArgument>
     ee0:	a22e0000 	sb	t6,0(s1)
     ee4:	1000ffb4 	b	db8 <func_800EA0C0+0x38>
     ee8:	00000000 	nop
     eec:	0c000000 	jal	0 <Audio_GetScriptControlFlowArgument>
     ef0:	02402025 	move	a0,s2
     ef4:	1000ffb0 	b	db8 <func_800EA0C0+0x38>
     ef8:	a6220012 	sh	v0,18(s1)
     efc:	0c000000 	jal	0 <Audio_GetScriptControlFlowArgument>
     f00:	02402025 	move	a0,s2
     f04:	2841007e 	slti	at,v0,126
     f08:	305000ff 	andi	s0,v0,0xff
     f0c:	14200012 	bnez	at,f58 <func_800EA0C0+0x1d8>
     f10:	00402025 	move	a0,v0
     f14:	2401007e 	li	at,126
     f18:	14410003 	bne	v0,at,f28 <func_800EA0C0+0x1a8>
     f1c:	240f0001 	li	t7,1
     f20:	10000008 	b	f44 <func_800EA0C0+0x1c4>
     f24:	a22f0002 	sb	t7,2(s1)
     f28:	2401007f 	li	at,127
     f2c:	54810004 	bnel	a0,at,f40 <func_800EA0C0+0x1c0>
     f30:	a2220002 	sb	v0,2(s1)
     f34:	10000003 	b	f44 <func_800EA0C0+0x1c4>
     f38:	a2200002 	sb	zero,2(s1)
     f3c:	a2220002 	sb	v0,2(s1)
     f40:	ae200048 	sw	zero,72(s1)
     f44:	240100ff 	li	at,255
     f48:	1481ff9b 	bne	a0,at,db8 <func_800EA0C0+0x38>
     f4c:	00000000 	nop
     f50:	1000ff99 	b	db8 <func_800EA0C0+0x38>
     f54:	a2200018 	sb	zero,24(s1)
     f58:	02802025 	move	a0,s4
     f5c:	320500ff 	andi	a1,s0,0xff
     f60:	26260048 	addiu	a2,s1,72
     f64:	0c000000 	jal	0 <Audio_GetScriptControlFlowArgument>
     f68:	26270018 	addiu	a3,s1,24
     f6c:	1440ff92 	bnez	v0,db8 <func_800EA0C0+0x38>
     f70:	a2220002 	sb	v0,2(s1)
     f74:	241800ff 	li	t8,255
     f78:	1000ff8f 	b	db8 <func_800EA0C0+0x38>
     f7c:	a2380002 	sb	t8,2(s1)
     f80:	0c000000 	jal	0 <Audio_GetScriptControlFlowArgument>
     f84:	02402025 	move	a0,s2
     f88:	a2220020 	sb	v0,32(s1)
     f8c:	0c000000 	jal	0 <Audio_GetScriptControlFlowArgument>
     f90:	02402025 	move	a0,s2
     f94:	86990026 	lh	t9,38(s4)
     f98:	86280010 	lh	t0,16(s1)
     f9c:	8669000e 	lh	t1,14(s3)
     fa0:	00598021 	addu	s0,v0,t9
     fa4:	02088021 	addu	s0,s0,t0
     fa8:	02098021 	addu	s0,s0,t1
     fac:	321000ff 	andi	s0,s0,0xff
     fb0:	2a010080 	slti	at,s0,128
     fb4:	54200003 	bnezl	at,fc4 <func_800EA0C0+0x244>
     fb8:	922a0020 	lbu	t2,32(s1)
     fbc:	00008025 	move	s0,zero
     fc0:	922a0020 	lbu	t2,32(s1)
     fc4:	a2300005 	sb	s0,5(s1)
     fc8:	314b0080 	andi	t3,t2,0x80
     fcc:	11600008 	beqz	t3,ff0 <func_800EA0C0+0x270>
     fd0:	00000000 	nop
     fd4:	8e4c0000 	lw	t4,0(s2)
     fd8:	918d0000 	lbu	t5,0(t4)
     fdc:	a62d000e 	sh	t5,14(s1)
     fe0:	8e4e0000 	lw	t6,0(s2)
     fe4:	25cf0001 	addiu	t7,t6,1
     fe8:	1000ff73 	b	db8 <func_800EA0C0+0x38>
     fec:	ae4f0000 	sw	t7,0(s2)
     ff0:	0c000000 	jal	0 <Audio_GetScriptControlFlowArgument>
     ff4:	02402025 	move	a0,s2
     ff8:	1000ff6f 	b	db8 <func_800EA0C0+0x38>
     ffc:	a622000e 	sh	v0,14(s1)
    1000:	1000ff6d 	b	db8 <func_800EA0C0+0x38>
    1004:	a2200020 	sb	zero,32(s1)
    1008:	0c000000 	jal	0 <Audio_GetScriptControlFlowArgument>
    100c:	02402025 	move	a0,s2
    1010:	8e780018 	lw	t8,24(s3)
    1014:	3059ffff 	andi	t9,v0,0xffff
    1018:	03194021 	addu	t0,t8,t9
    101c:	ae28001c 	sw	t0,28(s1)
    1020:	0c000000 	jal	0 <Audio_GetScriptControlFlowArgument>
    1024:	02402025 	move	a0,s2
    1028:	1000ff63 	b	db8 <func_800EA0C0+0x38>
    102c:	a2220018 	sb	v0,24(s1)
    1030:	922a0000 	lbu	t2,0(s1)
    1034:	354b0004 	ori	t3,t2,0x4
    1038:	1000ff5f 	b	db8 <func_800EA0C0+0x38>
    103c:	a22b0000 	sb	t3,0(s1)
    1040:	0c000000 	jal	0 <Audio_GetScriptControlFlowArgument>
    1044:	02402025 	move	a0,s2
    1048:	1000ff5b 	b	db8 <func_800EA0C0+0x38>
    104c:	a2220001 	sb	v0,1(s1)
    1050:	0c000000 	jal	0 <Audio_GetScriptControlFlowArgument>
    1054:	02402025 	move	a0,s2
    1058:	244c0080 	addiu	t4,v0,128
    105c:	318d00ff 	andi	t5,t4,0xff
    1060:	000d7080 	sll	t6,t5,0x2
    1064:	3c010000 	lui	at,0x0
    1068:	002e0821 	addu	at,at,t6
    106c:	c42a0000 	lwc1	$f10,0(at)
    1070:	1000ff51 	b	db8 <func_800EA0C0+0x38>
    1074:	e62a0034 	swc1	$f10,52(s1)
    1078:	240100d0 	li	at,208
    107c:	10610005 	beq	v1,at,1094 <func_800EA0C0+0x314>
    1080:	240100e0 	li	at,224
    1084:	50610010 	beql	v1,at,10c8 <func_800EA0C0+0x348>
    1088:	8e690098 	lw	t1,152(s3)
    108c:	1000ff4a 	b	db8 <func_800EA0C0+0x38>
    1090:	00000000 	nop
    1094:	8e6f0094 	lw	t7,148(s3)
    1098:	3098000f 	andi	t8,a0,0xf
    109c:	01f8c821 	addu	t9,t7,t8
    10a0:	93250000 	lbu	a1,0(t9)
    10a4:	00a50019 	multu	a1,a1
    10a8:	00004012 	mflo	t0
    10ac:	44888000 	mtc1	t0,$f16
    10b0:	00000000 	nop
    10b4:	468084a0 	cvt.s.w	$f18,$f16
    10b8:	46149103 	div.s	$f4,$f18,$f20
    10bc:	1000ff3e 	b	db8 <func_800EA0C0+0x38>
    10c0:	e624003c 	swc1	$f4,60(s1)
    10c4:	8e690098 	lw	t1,152(s3)
    10c8:	308a000f 	andi	t2,a0,0xf
    10cc:	012a5821 	addu	t3,t1,t2
    10d0:	916c0000 	lbu	t4,0(t3)
    10d4:	1000ff38 	b	db8 <func_800EA0C0+0x38>
    10d8:	a22c0003 	sb	t4,3(s1)
    10dc:	8fbf0034 	lw	ra,52(sp)
    10e0:	d7b40018 	ldc1	$f20,24(sp)
    10e4:	8fb00020 	lw	s0,32(sp)
    10e8:	8fb10024 	lw	s1,36(sp)
    10ec:	8fb20028 	lw	s2,40(sp)
    10f0:	8fb3002c 	lw	s3,44(sp)
    10f4:	8fb40030 	lw	s4,48(sp)
    10f8:	03e00008 	jr	ra
    10fc:	27bd0038 	addiu	sp,sp,56

00001100 <func_800EA440>:
    1100:	27bdff88 	addiu	sp,sp,-120
    1104:	afbf0014 	sw	ra,20(sp)
    1108:	afa5007c 	sw	a1,124(sp)
    110c:	90820002 	lbu	v0,2(a0)
    1110:	8c830050 	lw	v1,80(a0)
    1114:	240800ff 	li	t0,255
    1118:	00803025 	move	a2,a0
    111c:	240b0001 	li	t3,1
    1120:	14480008 	bne	v0,t0,1144 <func_800EA440+0x44>
    1124:	8c6a004c 	lw	t2,76(v1)
    1128:	8c6e0000 	lw	t6,0(v1)
    112c:	000ec100 	sll	t8,t6,0x4
    1130:	07020004 	bltzl	t8,1144 <func_800EA440+0x44>
    1134:	84620024 	lh	v0,36(v1)
    1138:	10000195 	b	1790 <func_800EA440+0x690>
    113c:	2402ffff 	li	v0,-1
    1140:	84620024 	lh	v0,36(v1)
    1144:	10400006 	beqz	v0,1160 <func_800EA440+0x60>
    1148:	93b9007f 	lbu	t9,127(sp)
    114c:	24010001 	li	at,1
    1150:	10410029 	beq	v0,at,11f8 <func_800EA440+0xf8>
    1154:	93ae007f 	lbu	t6,127(sp)
    1158:	10000045 	b	1270 <func_800EA440+0x170>
    115c:	854f000e 	lh	t7,14(t2)
    1160:	846c0026 	lh	t4,38(v1)
    1164:	84ce0010 	lh	t6,16(a2)
    1168:	032c6821 	addu	t5,t9,t4
    116c:	01ae4821 	addu	t1,t5,t6
    1170:	312500ff 	andi	a1,t1,0xff
    1174:	a0c50004 	sb	a1,4(a2)
    1178:	90640007 	lbu	a0,7(v1)
    117c:	afab0074 	sw	t3,116(sp)
    1180:	afaa0040 	sw	t2,64(sp)
    1184:	0c000000 	jal	0 <Audio_GetScriptControlFlowArgument>
    1188:	afa60078 	sw	a2,120(sp)
    118c:	8fa60078 	lw	a2,120(sp)
    1190:	8faa0040 	lw	t2,64(sp)
    1194:	14400008 	bnez	v0,11b8 <func_800EA440+0xb8>
    1198:	8fab0074 	lw	t3,116(sp)
    119c:	90d80000 	lbu	t8,0(a2)
    11a0:	84cc0008 	lh	t4,8(a2)
    11a4:	2402ffff 	li	v0,-1
    11a8:	37190020 	ori	t9,t8,0x20
    11ac:	a0d90000 	sb	t9,0(a2)
    11b0:	10000177 	b	1790 <func_800EA440+0x690>
    11b4:	a4cc000c 	sh	t4,12(a2)
    11b8:	8c4d000c 	lw	t5,12(v0)
    11bc:	8ccf0000 	lw	t7,0(a2)
    11c0:	24430004 	addiu	v1,v0,4
    11c4:	accd001c 	sw	t5,28(a2)
    11c8:	904e0000 	lbu	t6,0(v0)
    11cc:	000fc940 	sll	t9,t7,0x5
    11d0:	07200003 	bltz	t9,11e0 <func_800EA440+0xe0>
    11d4:	a0ce0018 	sb	t6,24(a2)
    11d8:	904c0001 	lbu	t4,1(v0)
    11dc:	a0cc0006 	sb	t4,6(a2)
    11e0:	acc3004c 	sw	v1,76(a2)
    11e4:	c4640004 	lwc1	$f4,4(v1)
    11e8:	3c050000 	lui	a1,0x0
    11ec:	24a50000 	addiu	a1,a1,0
    11f0:	10000103 	b	1600 <func_800EA440+0x500>
    11f4:	e4c40030 	swc1	$f4,48(a2)
    11f8:	93a2007f 	lbu	v0,127(sp)
    11fc:	84cd0010 	lh	t5,16(a2)
    1200:	a0c20004 	sb	v0,4(a2)
    1204:	90640007 	lbu	a0,7(v1)
    1208:	000d7180 	sll	t6,t5,0x6
    120c:	01c23821 	addu	a3,t6,v0
    1210:	30e5ffff 	andi	a1,a3,0xffff
    1214:	afab0074 	sw	t3,116(sp)
    1218:	afaa0040 	sw	t2,64(sp)
    121c:	0c000000 	jal	0 <Audio_GetScriptControlFlowArgument>
    1220:	afa60078 	sw	a2,120(sp)
    1224:	8fa60078 	lw	a2,120(sp)
    1228:	8faa0040 	lw	t2,64(sp)
    122c:	14400009 	bnez	v0,1254 <func_800EA440+0x154>
    1230:	8fab0074 	lw	t3,116(sp)
    1234:	90d80000 	lbu	t8,0(a2)
    1238:	84cc0008 	lh	t4,8(a2)
    123c:	2402ffff 	li	v0,-1
    1240:	37190020 	ori	t9,t8,0x20
    1244:	258d0001 	addiu	t5,t4,1
    1248:	a0d90000 	sb	t9,0(a2)
    124c:	10000150 	b	1790 <func_800EA440+0x690>
    1250:	a4cd000c 	sh	t5,12(a2)
    1254:	acc2004c 	sw	v0,76(a2)
    1258:	c4460004 	lwc1	$f6,4(v0)
    125c:	3c050000 	lui	a1,0x0
    1260:	24a50000 	addiu	a1,a1,0
    1264:	100000e6 	b	1600 <func_800EA440+0x500>
    1268:	e4c60030 	swc1	$f6,48(a2)
    126c:	854f000e 	lh	t7,14(t2)
    1270:	84790026 	lh	t9,38(v1)
    1274:	84cd0010 	lh	t5,16(a2)
    1278:	01cfc021 	addu	t8,t6,t7
    127c:	03196021 	addu	t4,t8,t9
    1280:	018d4821 	addu	t1,t4,t5
    1284:	312900ff 	andi	t1,t1,0xff
    1288:	29210080 	slti	at,t1,128
    128c:	a0c90004 	sb	t1,4(a2)
    1290:	14200006 	bnez	at,12ac <func_800EA440+0x1ac>
    1294:	01203825 	move	a3,t1
    1298:	90cf0000 	lbu	t7,0(a2)
    129c:	2402ffff 	li	v0,-1
    12a0:	35f80020 	ori	t8,t7,0x20
    12a4:	1000013a 	b	1790 <func_800EA440+0x690>
    12a8:	a0d80000 	sb	t8,0(a2)
    12ac:	90d90002 	lbu	t9,2(a2)
    12b0:	55190004 	bnel	t0,t9,12c4 <func_800EA440+0x1c4>
    12b4:	8cc40048 	lw	a0,72(a2)
    12b8:	10000002 	b	12c4 <func_800EA440+0x1c4>
    12bc:	8c640048 	lw	a0,72(v1)
    12c0:	8cc40048 	lw	a0,72(a2)
    12c4:	90cc0020 	lbu	t4,32(a2)
    12c8:	1180009e 	beqz	t4,1544 <func_800EA440+0x444>
    12cc:	00000000 	nop
    12d0:	24c80020 	addiu	t0,a2,32
    12d4:	afa80060 	sw	t0,96(sp)
    12d8:	90c30005 	lbu	v1,5(a2)
    12dc:	0067082a 	slt	at,v1,a3
    12e0:	10200003 	beqz	at,12f0 <func_800EA440+0x1f0>
    12e4:	00602825 	move	a1,v1
    12e8:	10000001 	b	12f0 <func_800EA440+0x1f0>
    12ec:	00e02825 	move	a1,a3
    12f0:	10800012 	beqz	a0,133c <func_800EA440+0x23c>
    12f4:	3c013f80 	lui	at,0x3f80
    12f8:	afa60078 	sw	a2,120(sp)
    12fc:	afa70020 	sw	a3,32(sp)
    1300:	afa8001c 	sw	t0,28(sp)
    1304:	a3a9003f 	sb	t1,63(sp)
    1308:	0c000000 	jal	0 <Audio_GetScriptControlFlowArgument>
    130c:	afaa0040 	sw	t2,64(sp)
    1310:	8fa60078 	lw	a2,120(sp)
    1314:	8fa70020 	lw	a3,32(sp)
    1318:	8fa8001c 	lw	t0,28(sp)
    131c:	8ccd004c 	lw	t5,76(a2)
    1320:	93a9003f 	lbu	t1,63(sp)
    1324:	8faa0040 	lw	t2,64(sp)
    1328:	acc2004c 	sw	v0,76(a2)
    132c:	004d5826 	xor	t3,v0,t5
    1330:	2d6b0001 	sltiu	t3,t3,1
    1334:	10000013 	b	1384 <func_800EA440+0x284>
    1338:	c4400004 	lwc1	$f0,4(v0)
    133c:	44810000 	mtc1	at,$f0
    1340:	284100c0 	slti	at,v0,192
    1344:	1420000f 	bnez	at,1384 <func_800EA440+0x284>
    1348:	acc0004c 	sw	zero,76(a2)
    134c:	00027080 	sll	t6,v0,0x2
    1350:	01c27023 	subu	t6,t6,v0
    1354:	000e7080 	sll	t6,t6,0x2
    1358:	01c27023 	subu	t6,t6,v0
    135c:	000e70c0 	sll	t6,t6,0x3
    1360:	3c050000 	lui	a1,0x0
    1364:	01c27021 	addu	t6,t6,v0
    1368:	24a50000 	addiu	a1,a1,0
    136c:	000e70c0 	sll	t6,t6,0x3
    1370:	3c01fffd 	lui	at,0xfffd
    1374:	3421ec98 	ori	at,at,0xec98
    1378:	00ae7821 	addu	t7,a1,t6
    137c:	01e1c021 	addu	t8,t7,at
    1380:	acd8004c 	sw	t8,76(a2)
    1384:	3c030000 	lui	v1,0x0
    1388:	90cd0005 	lbu	t5,5(a2)
    138c:	24630000 	addiu	v1,v1,0
    1390:	0007c880 	sll	t9,a3,0x2
    1394:	00796021 	addu	t4,v1,t9
    1398:	c5880000 	lwc1	$f8,0(t4)
    139c:	91020000 	lbu	v0,0(t0)
    13a0:	000d7080 	sll	t6,t5,0x2
    13a4:	006e7821 	addu	t7,v1,t6
    13a8:	c5ea0000 	lwc1	$f10,0(t7)
    13ac:	46004082 	mul.s	$f2,$f8,$f0
    13b0:	2404ff7f 	li	a0,-129
    13b4:	0044c024 	and	t8,v0,a0
    13b8:	2719ffff 	addiu	t9,t8,-1
    13bc:	3c050000 	lui	a1,0x0
    13c0:	2f210005 	sltiu	at,t9,5
    13c4:	46005382 	mul.s	$f14,$f10,$f0
    13c8:	1020000d 	beqz	at,1400 <func_800EA440+0x300>
    13cc:	24a50000 	addiu	a1,a1,0
    13d0:	0019c880 	sll	t9,t9,0x2
    13d4:	3c010000 	lui	at,0x0
    13d8:	00390821 	addu	at,at,t9
    13dc:	8c390078 	lw	t9,120(at)
    13e0:	03200008 	jr	t9
    13e4:	00000000 	nop
    13e8:	46001006 	mov.s	$f0,$f2
    13ec:	10000006 	b	1408 <func_800EA440+0x308>
    13f0:	46007306 	mov.s	$f12,$f14
    13f4:	46001306 	mov.s	$f12,$f2
    13f8:	10000003 	b	1408 <func_800EA440+0x308>
    13fc:	46007006 	mov.s	$f0,$f14
    1400:	46001306 	mov.s	$f12,$f2
    1404:	46001006 	mov.s	$f0,$f2
    1408:	460c0403 	div.s	$f16,$f0,$f12
    140c:	3c013f80 	lui	at,0x3f80
    1410:	44819000 	mtc1	at,$f18
    1414:	304c0080 	andi	t4,v0,0x80
    1418:	46128101 	sub.s	$f4,$f16,$f18
    141c:	11800025 	beqz	t4,14b4 <func_800EA440+0x3b4>
    1420:	e5040008 	swc1	$f4,8(t0)
    1424:	954d0008 	lhu	t5,8(t2)
    1428:	84af2898 	lh	t7,10392(a1)
    142c:	84c20008 	lh	v0,8(a2)
    1430:	000d73c0 	sll	t6,t5,0xf
    1434:	01cf001a 	div	zero,t6,t7
    1438:	00001812 	mflo	v1
    143c:	15e00002 	bnez	t7,1448 <func_800EA440+0x348>
    1440:	00000000 	nop
    1444:	0007000d 	break	0x7
    1448:	2401ffff 	li	at,-1
    144c:	15e10004 	bne	t7,at,1460 <func_800EA440+0x360>
    1450:	3c018000 	lui	at,0x8000
    1454:	15c10002 	bne	t6,at,1460 <func_800EA440+0x360>
    1458:	00000000 	nop
    145c:	0006000d 	break	0x6
    1460:	50400027 	beqzl	v0,1500 <func_800EA440+0x400>
    1464:	28617fff 	slti	at,v1,32767
    1468:	94d9000e 	lhu	t9,14(a2)
    146c:	0003c200 	sll	t8,v1,0x8
    1470:	00590019 	multu	v0,t9
    1474:	00006012 	mflo	t4
	...
    1480:	030c001a 	div	zero,t8,t4
    1484:	00001812 	mflo	v1
    1488:	15800002 	bnez	t4,1494 <func_800EA440+0x394>
    148c:	00000000 	nop
    1490:	0007000d 	break	0x7
    1494:	2401ffff 	li	at,-1
    1498:	15810004 	bne	t4,at,14ac <func_800EA440+0x3ac>
    149c:	3c018000 	lui	at,0x8000
    14a0:	17010002 	bne	t8,at,14ac <func_800EA440+0x3ac>
    14a4:	00000000 	nop
    14a8:	0006000d 	break	0x6
    14ac:	10000014 	b	1500 <func_800EA440+0x400>
    14b0:	28617fff 	slti	at,v1,32767
    14b4:	94cd000e 	lhu	t5,14(a2)
    14b8:	84ae2854 	lh	t6,10324(a1)
    14bc:	3c190002 	lui	t9,0x2
    14c0:	01ae0019 	multu	t5,t6
    14c4:	00007812 	mflo	t7
	...
    14d0:	032f001a 	div	zero,t9,t7
    14d4:	00001812 	mflo	v1
    14d8:	15e00002 	bnez	t7,14e4 <func_800EA440+0x3e4>
    14dc:	00000000 	nop
    14e0:	0007000d 	break	0x7
    14e4:	2401ffff 	li	at,-1
    14e8:	15e10004 	bne	t7,at,14fc <func_800EA440+0x3fc>
    14ec:	3c018000 	lui	at,0x8000
    14f0:	17210002 	bne	t9,at,14fc <func_800EA440+0x3fc>
    14f4:	00000000 	nop
    14f8:	0006000d 	break	0x6
    14fc:	28617fff 	slti	at,v1,32767
    1500:	14200003 	bnez	at,1510 <func_800EA440+0x410>
    1504:	00000000 	nop
    1508:	10000004 	b	151c <func_800EA440+0x41c>
    150c:	24037fff 	li	v1,32767
    1510:	5c600003 	bgtzl	v1,1520 <func_800EA440+0x420>
    1514:	a5030004 	sh	v1,4(t0)
    1518:	24030001 	li	v1,1
    151c:	a5030004 	sh	v1,4(t0)
    1520:	a5000002 	sh	zero,2(t0)
    1524:	e4cc0030 	swc1	$f12,48(a2)
    1528:	91180000 	lbu	t8,0(t0)
    152c:	24010005 	li	at,5
    1530:	03046024 	and	t4,t8,a0
    1534:	55810033 	bnel	t4,at,1604 <func_800EA440+0x504>
    1538:	c4d20030 	lwc1	$f18,48(a2)
    153c:	10000030 	b	1600 <func_800EA440+0x500>
    1540:	a0c90005 	sb	t1,5(a2)
    1544:	10800015 	beqz	a0,159c <func_800EA440+0x49c>
    1548:	00e02825 	move	a1,a3
    154c:	afa60078 	sw	a2,120(sp)
    1550:	afa70020 	sw	a3,32(sp)
    1554:	0c000000 	jal	0 <Audio_GetScriptControlFlowArgument>
    1558:	afaa0040 	sw	t2,64(sp)
    155c:	8fa60078 	lw	a2,120(sp)
    1560:	8fa70020 	lw	a3,32(sp)
    1564:	3c030000 	lui	v1,0x0
    1568:	8ccd004c 	lw	t5,76(a2)
    156c:	8faa0040 	lw	t2,64(sp)
    1570:	24630000 	addiu	v1,v1,0
    1574:	acc2004c 	sw	v0,76(a2)
    1578:	00077080 	sll	t6,a3,0x2
    157c:	006ec821 	addu	t9,v1,t6
    1580:	c7260000 	lwc1	$f6,0(t9)
    1584:	c4480004 	lwc1	$f8,4(v0)
    1588:	004d5826 	xor	t3,v0,t5
    158c:	2d6b0001 	sltiu	t3,t3,1
    1590:	46083282 	mul.s	$f10,$f6,$f8
    1594:	10000018 	b	15f8 <func_800EA440+0x4f8>
    1598:	e4ca0030 	swc1	$f10,48(a2)
    159c:	3c030000 	lui	v1,0x0
    15a0:	24630000 	addiu	v1,v1,0
    15a4:	00077880 	sll	t7,a3,0x2
    15a8:	acc0004c 	sw	zero,76(a2)
    15ac:	006fc021 	addu	t8,v1,t7
    15b0:	c7100000 	lwc1	$f16,0(t8)
    15b4:	284100c0 	slti	at,v0,192
    15b8:	1420000f 	bnez	at,15f8 <func_800EA440+0x4f8>
    15bc:	e4d00030 	swc1	$f16,48(a2)
    15c0:	00026080 	sll	t4,v0,0x2
    15c4:	01826023 	subu	t4,t4,v0
    15c8:	000c6080 	sll	t4,t4,0x2
    15cc:	01826023 	subu	t4,t4,v0
    15d0:	000c60c0 	sll	t4,t4,0x3
    15d4:	3c050000 	lui	a1,0x0
    15d8:	01826021 	addu	t4,t4,v0
    15dc:	24a50000 	addiu	a1,a1,0
    15e0:	000c60c0 	sll	t4,t4,0x3
    15e4:	3c01fffd 	lui	at,0xfffd
    15e8:	3421ec98 	ori	at,at,0xec98
    15ec:	00ac6821 	addu	t5,a1,t4
    15f0:	01a17021 	addu	t6,t5,at
    15f4:	acce004c 	sw	t6,76(a2)
    15f8:	3c050000 	lui	a1,0x0
    15fc:	24a50000 	addiu	a1,a1,0
    1600:	c4d20030 	lwc1	$f18,48(a2)
    1604:	c4c40034 	lwc1	$f4,52(a2)
    1608:	84c20008 	lh	v0,8(a2)
    160c:	46049182 	mul.s	$f6,$f18,$f4
    1610:	a4c2000c 	sh	v0,12(a2)
    1614:	1440005d 	bnez	v0,178c <func_800EA440+0x68c>
    1618:	e4c60030 	swc1	$f6,48(a2)
    161c:	8cc2004c 	lw	v0,76(a2)
    1620:	5040000e 	beqzl	v0,165c <func_800EA440+0x55c>
    1624:	44800000 	mtc1	zero,$f0
    1628:	8c590000 	lw	t9,0(v0)
    162c:	3c014f80 	lui	at,0x4f80
    1630:	8f2f0008 	lw	t7,8(t9)
    1634:	8df80004 	lw	t8,4(t7)
    1638:	44984000 	mtc1	t8,$f8
    163c:	07010008 	bgez	t8,1660 <func_800EA440+0x560>
    1640:	46804020 	cvt.s.w	$f0,$f8
    1644:	44815000 	mtc1	at,$f10
    1648:	00000000 	nop
    164c:	460a0000 	add.s	$f0,$f0,$f10
    1650:	10000004 	b	1664 <func_800EA440+0x564>
    1654:	954c0008 	lhu	t4,8(t2)
    1658:	44800000 	mtc1	zero,$f0
    165c:	00000000 	nop
    1660:	954c0008 	lhu	t4,8(t2)
    1664:	3c010000 	lui	at,0x0
    1668:	c422008c 	lwc1	$f2,140(at)
    166c:	448c8000 	mtc1	t4,$f16
    1670:	05810005 	bgez	t4,1688 <func_800EA440+0x588>
    1674:	468084a0 	cvt.s.w	$f18,$f16
    1678:	3c014f80 	lui	at,0x4f80
    167c:	44812000 	mtc1	at,$f4
    1680:	00000000 	nop
    1684:	46049480 	add.s	$f18,$f18,$f4
    1688:	46120002 	mul.s	$f0,$f0,$f18
    168c:	c4a62870 	lwc1	$f6,10352(a1)
    1690:	c4c80030 	lwc1	$f8,48(a2)
    1694:	46060002 	mul.s	$f0,$f0,$f6
    1698:	46080003 	div.s	$f0,$f0,$f8
    169c:	4600103c 	c.lt.s	$f2,$f0
    16a0:	00000000 	nop
    16a4:	45020003 	bc1fl	16b4 <func_800EA440+0x5b4>
    16a8:	4600028d 	trunc.w.s	$f10,$f0
    16ac:	46001006 	mov.s	$f0,$f2
    16b0:	4600028d 	trunc.w.s	$f10,$f0
    16b4:	90d80020 	lbu	t8,32(a2)
    16b8:	a4c0000a 	sh	zero,10(a2)
    16bc:	44195000 	mfc1	t9,$f10
    16c0:	00000000 	nop
    16c4:	272f0001 	addiu	t7,t9,1
    16c8:	13000030 	beqz	t8,178c <func_800EA440+0x68c>
    16cc:	a4cf0008 	sh	t7,8(a2)
    16d0:	8fac0060 	lw	t4,96(sp)
    16d4:	918d0000 	lbu	t5,0(t4)
    16d8:	31ae0080 	andi	t6,t5,0x80
    16dc:	51c0002c 	beqzl	t6,1790 <func_800EA440+0x690>
    16e0:	01601025 	move	v0,t3
    16e4:	95590008 	lhu	t9,8(t2)
    16e8:	84b82898 	lh	t8,10392(a1)
    16ec:	84cc0008 	lh	t4,8(a2)
    16f0:	00197bc0 	sll	t7,t9,0xf
    16f4:	01f8001a 	div	zero,t7,t8
    16f8:	00001012 	mflo	v0
    16fc:	94cd000e 	lhu	t5,14(a2)
    1700:	0002ca00 	sll	t9,v0,0x8
    1704:	17000002 	bnez	t8,1710 <func_800EA440+0x610>
    1708:	00000000 	nop
    170c:	0007000d 	break	0x7
    1710:	2401ffff 	li	at,-1
    1714:	17010004 	bne	t8,at,1728 <func_800EA440+0x628>
    1718:	3c018000 	lui	at,0x8000
    171c:	15e10002 	bne	t7,at,1728 <func_800EA440+0x628>
    1720:	00000000 	nop
    1724:	0006000d 	break	0x6
    1728:	018d0019 	multu	t4,t5
    172c:	8faf0060 	lw	t7,96(sp)
    1730:	00007012 	mflo	t6
	...
    173c:	032e001a 	div	zero,t9,t6
    1740:	15c00002 	bnez	t6,174c <func_800EA440+0x64c>
    1744:	00000000 	nop
    1748:	0007000d 	break	0x7
    174c:	2401ffff 	li	at,-1
    1750:	15c10004 	bne	t6,at,1764 <func_800EA440+0x664>
    1754:	3c018000 	lui	at,0x8000
    1758:	17210002 	bne	t9,at,1764 <func_800EA440+0x664>
    175c:	00000000 	nop
    1760:	0006000d 	break	0x6
    1764:	00001012 	mflo	v0
    1768:	28417fff 	slti	at,v0,32767
    176c:	14200003 	bnez	at,177c <func_800EA440+0x67c>
    1770:	00000000 	nop
    1774:	10000004 	b	1788 <func_800EA440+0x688>
    1778:	24027fff 	li	v0,32767
    177c:	5c400003 	bgtzl	v0,178c <func_800EA440+0x68c>
    1780:	a5e20004 	sh	v0,4(t7)
    1784:	24020001 	li	v0,1
    1788:	a5e20004 	sh	v0,4(t7)
    178c:	01601025 	move	v0,t3
    1790:	8fbf0014 	lw	ra,20(sp)
    1794:	27bd0078 	addiu	sp,sp,120
    1798:	03e00008 	jr	ra
    179c:	00000000 	nop

000017a0 <func_800EAAE0>:
    17a0:	27bdffc0 	addiu	sp,sp,-64
    17a4:	afbf0014 	sw	ra,20(sp)
    17a8:	afa50044 	sw	a1,68(sp)
    17ac:	8c880050 	lw	t0,80(a0)
    17b0:	240100c0 	li	at,192
    17b4:	00803025 	move	a2,a0
    17b8:	8d0e004c 	lw	t6,76(t0)
    17bc:	14a1000d 	bne	a1,at,17f4 <func_800EAAE0+0x54>
    17c0:	afae002c 	sw	t6,44(sp)
    17c4:	24c40054 	addiu	a0,a2,84
    17c8:	0c000000 	jal	0 <Audio_GetScriptControlFlowArgument>
    17cc:	afa60040 	sw	a2,64(sp)
    17d0:	8fa60040 	lw	a2,64(sp)
    17d4:	90d90000 	lbu	t9,0(a2)
    17d8:	a4c20008 	sh	v0,8(a2)
    17dc:	2402ffff 	li	v0,-1
    17e0:	372a0020 	ori	t2,t9,0x20
    17e4:	314b00fd 	andi	t3,t2,0xfd
    17e8:	a0ca0000 	sb	t2,0(a2)
    17ec:	100000ed 	b	1ba4 <func_800EAAE0+0x404>
    17f0:	a0cb0000 	sb	t3,0(a2)
    17f4:	90cc0000 	lbu	t4,0(a2)
    17f8:	24010001 	li	at,1
    17fc:	318dffdf 	andi	t5,t4,0xffdf
    1800:	a0cd0000 	sb	t5,0(a2)
    1804:	8d0e0000 	lw	t6,0(t0)
    1808:	8fa50044 	lw	a1,68(sp)
    180c:	000e7980 	sll	t7,t6,0x6
    1810:	000fc7c2 	srl	t8,t7,0x1f
    1814:	17010053 	bne	t8,at,1964 <func_800EAAE0+0x1c4>
    1818:	30a500c0 	andi	a1,a1,0xc0
    181c:	8fa50044 	lw	a1,68(sp)
    1820:	24010040 	li	at,64
    1824:	30a500c0 	andi	a1,a1,0xc0
    1828:	50a00008 	beqzl	a1,184c <func_800EAAE0+0xac>
    182c:	24c40054 	addiu	a0,a2,84
    1830:	10a1001c 	beq	a1,at,18a4 <func_800EAAE0+0x104>
    1834:	24010080 	li	at,128
    1838:	50a1002d 	beql	a1,at,18f0 <func_800EAAE0+0x150>
    183c:	84ce0014 	lh	t6,20(a2)
    1840:	10000037 	b	1920 <func_800EAAE0+0x180>
    1844:	8fa70034 	lw	a3,52(sp)
    1848:	24c40054 	addiu	a0,a2,84
    184c:	afa4001c 	sw	a0,28(sp)
    1850:	afa50018 	sw	a1,24(sp)
    1854:	afa60040 	sw	a2,64(sp)
    1858:	0c000000 	jal	0 <Audio_GetScriptControlFlowArgument>
    185c:	afa80030 	sw	t0,48(sp)
    1860:	8fa4001c 	lw	a0,28(sp)
    1864:	a7a2003a 	sh	v0,58(sp)
    1868:	8fa60040 	lw	a2,64(sp)
    186c:	8c830000 	lw	v1,0(a0)
    1870:	8fa50018 	lw	a1,24(sp)
    1874:	8fa80030 	lw	t0,48(sp)
    1878:	90670000 	lbu	a3,0(v1)
    187c:	24790001 	addiu	t9,v1,1
    1880:	ac990000 	sw	t9,0(a0)
    1884:	932a0000 	lbu	t2,0(t9)
    1888:	03204825 	move	t1,t9
    188c:	a0ca0003 	sb	t2,3(a2)
    1890:	8c8b0000 	lw	t3,0(a0)
    1894:	256c0001 	addiu	t4,t3,1
    1898:	ac8c0000 	sw	t4,0(a0)
    189c:	10000020 	b	1920 <func_800EAAE0+0x180>
    18a0:	a4c20014 	sh	v0,20(a2)
    18a4:	24c40054 	addiu	a0,a2,84
    18a8:	afa4001c 	sw	a0,28(sp)
    18ac:	afa50018 	sw	a1,24(sp)
    18b0:	afa60040 	sw	a2,64(sp)
    18b4:	0c000000 	jal	0 <Audio_GetScriptControlFlowArgument>
    18b8:	afa80030 	sw	t0,48(sp)
    18bc:	8fa4001c 	lw	a0,28(sp)
    18c0:	a7a2003a 	sh	v0,58(sp)
    18c4:	8fa60040 	lw	a2,64(sp)
    18c8:	8c830000 	lw	v1,0(a0)
    18cc:	8fa50018 	lw	a1,24(sp)
    18d0:	8fa80030 	lw	t0,48(sp)
    18d4:	90670000 	lbu	a3,0(v1)
    18d8:	246d0001 	addiu	t5,v1,1
    18dc:	ac8d0000 	sw	t5,0(a0)
    18e0:	a0c00003 	sb	zero,3(a2)
    18e4:	1000000e 	b	1920 <func_800EAAE0+0x180>
    18e8:	a4c20014 	sh	v0,20(a2)
    18ec:	84ce0014 	lh	t6,20(a2)
    18f0:	24c40054 	addiu	a0,a2,84
    18f4:	a7ae003a 	sh	t6,58(sp)
    18f8:	8c830000 	lw	v1,0(a0)
    18fc:	90670000 	lbu	a3,0(v1)
    1900:	246f0001 	addiu	t7,v1,1
    1904:	ac8f0000 	sw	t7,0(a0)
    1908:	91f90000 	lbu	t9,0(t7)
    190c:	01e0c025 	move	t8,t7
    1910:	a0d90003 	sb	t9,3(a2)
    1914:	8c890000 	lw	t1,0(a0)
    1918:	252a0001 	addiu	t2,t1,1
    191c:	ac8a0000 	sw	t2,0(a0)
    1920:	28e10080 	slti	at,a3,128
    1924:	50200004 	beqzl	at,1938 <func_800EAAE0+0x198>
    1928:	2407007f 	li	a3,127
    192c:	04e30003 	bgezl	a3,193c <func_800EAAE0+0x19c>
    1930:	44872000 	mtc1	a3,$f4
    1934:	2407007f 	li	a3,127
    1938:	44872000 	mtc1	a3,$f4
    193c:	3c010000 	lui	at,0x0
    1940:	c4280090 	lwc1	$f8,144(at)
    1944:	46802020 	cvt.s.w	$f0,$f4
    1948:	46000182 	mul.s	$f6,$f0,$f0
    194c:	46083283 	div.s	$f10,$f6,$f8
    1950:	e4ca003c 	swc1	$f10,60(a2)
    1954:	8fab0044 	lw	t3,68(sp)
    1958:	01656023 	subu	t4,t3,a1
    195c:	1000001d 	b	19d4 <func_800EAAE0+0x234>
    1960:	afac0044 	sw	t4,68(sp)
    1964:	10a00008 	beqz	a1,1988 <func_800EAAE0+0x1e8>
    1968:	24010040 	li	at,64
    196c:	50a10012 	beql	a1,at,19b8 <func_800EAAE0+0x218>
    1970:	84cd0012 	lh	t5,18(a2)
    1974:	24010080 	li	at,128
    1978:	50a10012 	beql	a1,at,19c4 <func_800EAAE0+0x224>
    197c:	84ce0014 	lh	t6,20(a2)
    1980:	10000012 	b	19cc <func_800EAAE0+0x22c>
    1984:	8faf0044 	lw	t7,68(sp)
    1988:	24c40054 	addiu	a0,a2,84
    198c:	afa50018 	sw	a1,24(sp)
    1990:	afa60040 	sw	a2,64(sp)
    1994:	0c000000 	jal	0 <Audio_GetScriptControlFlowArgument>
    1998:	afa80030 	sw	t0,48(sp)
    199c:	8fa60040 	lw	a2,64(sp)
    19a0:	8fa50018 	lw	a1,24(sp)
    19a4:	8fa80030 	lw	t0,48(sp)
    19a8:	a7a2003a 	sh	v0,58(sp)
    19ac:	10000006 	b	19c8 <func_800EAAE0+0x228>
    19b0:	a4c20014 	sh	v0,20(a2)
    19b4:	84cd0012 	lh	t5,18(a2)
    19b8:	10000003 	b	19c8 <func_800EAAE0+0x228>
    19bc:	a7ad003a 	sh	t5,58(sp)
    19c0:	84ce0014 	lh	t6,20(a2)
    19c4:	a7ae003a 	sh	t6,58(sp)
    19c8:	8faf0044 	lw	t7,68(sp)
    19cc:	01e5c023 	subu	t8,t7,a1
    19d0:	afb80044 	sw	t8,68(sp)
    19d4:	9103000d 	lbu	v1,13(t0)
    19d8:	3c020000 	lui	v0,0x0
    19dc:	5060002a 	beqzl	v1,1a88 <func_800EAAE0+0x2e8>
    19e0:	c4d0003c 	lwc1	$f16,60(a2)
    19e4:	8c42297c 	lw	v0,10620(v0)
    19e8:	c4cc003c 	lwc1	$f12,60(a2)
    19ec:	3c014f80 	lui	at,0x4f80
    19f0:	0043001b 	divu	zero,v0,v1
    19f4:	0000c810 	mfhi	t9
    19f8:	44998000 	mtc1	t9,$f16
    19fc:	14600002 	bnez	v1,1a08 <func_800EAAE0+0x268>
    1a00:	00000000 	nop
    1a04:	0007000d 	break	0x7
    1a08:	468084a0 	cvt.s.w	$f18,$f16
    1a0c:	07210004 	bgez	t9,1a20 <func_800EAAE0+0x280>
    1a10:	00000000 	nop
    1a14:	44812000 	mtc1	at,$f4
    1a18:	00000000 	nop
    1a1c:	46049480 	add.s	$f18,$f18,$f4
    1a20:	46126182 	mul.s	$f6,$f12,$f18
    1a24:	3c0142c8 	lui	at,0x42c8
    1a28:	44814000 	mtc1	at,$f8
    1a2c:	30498000 	andi	t1,v0,0x8000
    1a30:	11200002 	beqz	t1,1a3c <func_800EAAE0+0x29c>
    1a34:	46083083 	div.s	$f2,$f6,$f8
    1a38:	46001087 	neg.s	$f2,$f2
    1a3c:	46026000 	add.s	$f0,$f12,$f2
    1a40:	44807000 	mtc1	zero,$f14
    1a44:	00000000 	nop
    1a48:	460e003c 	c.lt.s	$f0,$f14
    1a4c:	e4c00038 	swc1	$f0,56(a2)
    1a50:	45020004 	bc1fl	1a64 <func_800EAAE0+0x2c4>
    1a54:	3c013f80 	lui	at,0x3f80
    1a58:	1000000c 	b	1a8c <func_800EAAE0+0x2ec>
    1a5c:	e4ce0038 	swc1	$f14,56(a2)
    1a60:	3c013f80 	lui	at,0x3f80
    1a64:	44810000 	mtc1	at,$f0
    1a68:	c4ca0038 	lwc1	$f10,56(a2)
    1a6c:	460a003c 	c.lt.s	$f0,$f10
    1a70:	00000000 	nop
    1a74:	45020006 	bc1fl	1a90 <func_800EAAE0+0x2f0>
    1a78:	97a2003a 	lhu	v0,58(sp)
    1a7c:	10000003 	b	1a8c <func_800EAAE0+0x2ec>
    1a80:	e4c00038 	swc1	$f0,56(a2)
    1a84:	c4d0003c 	lwc1	$f16,60(a2)
    1a88:	e4d00038 	swc1	$f16,56(a2)
    1a8c:	97a2003a 	lhu	v0,58(sp)
    1a90:	90ca0003 	lbu	t2,3(a2)
    1a94:	a4c20008 	sh	v0,8(a2)
    1a98:	01420019 	multu	t2,v0
    1a9c:	3c020000 	lui	v0,0x0
    1aa0:	00005812 	mflo	t3
    1aa4:	000b6203 	sra	t4,t3,0x8
    1aa8:	a4cc000a 	sh	t4,10(a2)
    1aac:	910d000e 	lbu	t5,14(t0)
    1ab0:	51a00021 	beqzl	t5,1b38 <func_800EAAE0+0x398>
    1ab4:	8fa9002c 	lw	t1,44(sp)
    1ab8:	8c42297c 	lw	v0,10620(v0)
    1abc:	910e000d 	lbu	t6,13(t0)
    1ac0:	84c3000a 	lh	v1,10(a2)
    1ac4:	24010064 	li	at,100
    1ac8:	004e001b 	divu	zero,v0,t6
    1acc:	00007810 	mfhi	t7
    1ad0:	30584000 	andi	t8,v0,0x4000
    1ad4:	15c00002 	bnez	t6,1ae0 <func_800EAAE0+0x340>
    1ad8:	00000000 	nop
    1adc:	0007000d 	break	0x7
    1ae0:	006f0019 	multu	v1,t7
    1ae4:	00002012 	mflo	a0
	...
    1af0:	0081001b 	divu	zero,a0,at
    1af4:	00002012 	mflo	a0
    1af8:	53000003 	beqzl	t8,1b08 <func_800EAAE0+0x368>
    1afc:	0064c821 	addu	t9,v1,a0
    1b00:	00042023 	negu	a0,a0
    1b04:	0064c821 	addu	t9,v1,a0
    1b08:	a4d9000a 	sh	t9,10(a2)
    1b0c:	84c3000a 	lh	v1,10(a2)
    1b10:	04630004 	bgezl	v1,1b24 <func_800EAAE0+0x384>
    1b14:	84c20008 	lh	v0,8(a2)
    1b18:	10000006 	b	1b34 <func_800EAAE0+0x394>
    1b1c:	a4c0000a 	sh	zero,10(a2)
    1b20:	84c20008 	lh	v0,8(a2)
    1b24:	0043082a 	slt	at,v0,v1
    1b28:	50200003 	beqzl	at,1b38 <func_800EAAE0+0x398>
    1b2c:	8fa9002c 	lw	t1,44(sp)
    1b30:	a4c2000a 	sh	v0,10(a2)
    1b34:	8fa9002c 	lw	t1,44(sp)
    1b38:	8d2a0000 	lw	t2,0(t1)
    1b3c:	000a6080 	sll	t4,t2,0x2
    1b40:	05830006 	bgezl	t4,1b5c <func_800EAAE0+0x3bc>
    1b44:	8d0f0000 	lw	t7,0(t0)
    1b48:	910d0003 	lbu	t5,3(t0)
    1b4c:	31ae0050 	andi	t6,t5,0x50
    1b50:	55c00007 	bnezl	t6,1b70 <func_800EAAE0+0x3d0>
    1b54:	90ca0000 	lbu	t2,0(a2)
    1b58:	8d0f0000 	lw	t7,0(t0)
    1b5c:	8fac002c 	lw	t4,44(sp)
    1b60:	000fc8c0 	sll	t9,t7,0x3
    1b64:	07230007 	bgezl	t9,1b84 <func_800EAAE0+0x3e4>
    1b68:	8d8d00dc 	lw	t5,220(t4)
    1b6c:	90ca0000 	lbu	t2,0(a2)
    1b70:	2402ffff 	li	v0,-1
    1b74:	354b0020 	ori	t3,t2,0x20
    1b78:	1000000a 	b	1ba4 <func_800EAAE0+0x404>
    1b7c:	a0cb0000 	sb	t3,0(a2)
    1b80:	8d8d00dc 	lw	t5,220(t4)
    1b84:	8fa20044 	lw	v0,68(sp)
    1b88:	11a00006 	beqz	t5,1ba4 <func_800EAAE0+0x404>
    1b8c:	00000000 	nop
    1b90:	90cf0000 	lbu	t7,0(a2)
    1b94:	2402ffff 	li	v0,-1
    1b98:	35f80020 	ori	t8,t7,0x20
    1b9c:	10000001 	b	1ba4 <func_800EAAE0+0x404>
    1ba0:	a0d80000 	sb	t8,0(a2)
    1ba4:	8fbf0014 	lw	ra,20(sp)
    1ba8:	27bd0040 	addiu	sp,sp,64
    1bac:	03e00008 	jr	ra
    1bb0:	00000000 	nop

00001bb4 <func_800EAEF4>:
    1bb4:	30a200ff 	andi	v0,a1,0xff
    1bb8:	3043000f 	andi	v1,v0,0xf
    1bbc:	10600002 	beqz	v1,1bc8 <func_800EAEF4+0x14>
    1bc0:	afa50004 	sw	a1,4(sp)
    1bc4:	a0830005 	sb	v1,5(a0)
    1bc8:	00022903 	sra	a1,v0,0x4
    1bcc:	30a500ff 	andi	a1,a1,0xff
    1bd0:	10a00002 	beqz	a1,1bdc <func_800EAEF4+0x28>
    1bd4:	00000000 	nop
    1bd8:	a0850006 	sb	a1,6(a0)
    1bdc:	03e00008 	jr	ra
    1be0:	00000000 	nop

00001be4 <Audio_GetInstrument>:
    1be4:	27bdffe0 	addiu	sp,sp,-32
    1be8:	afa50024 	sw	a1,36(sp)
    1bec:	93a50027 	lbu	a1,39(sp)
    1bf0:	afbf0014 	sw	ra,20(sp)
    1bf4:	afa40020 	sw	a0,32(sp)
    1bf8:	afa60028 	sw	a2,40(sp)
    1bfc:	afa7002c 	sw	a3,44(sp)
    1c00:	90840007 	lbu	a0,7(a0)
    1c04:	0c000000 	jal	0 <Audio_GetScriptControlFlowArgument>
    1c08:	afa50018 	sw	a1,24(sp)
    1c0c:	8fa50018 	lw	a1,24(sp)
    1c10:	8fa60028 	lw	a2,40(sp)
    1c14:	8fa7002c 	lw	a3,44(sp)
    1c18:	14400004 	bnez	v0,1c2c <Audio_GetInstrument+0x48>
    1c1c:	00401825 	move	v1,v0
    1c20:	acc00000 	sw	zero,0(a2)
    1c24:	10000008 	b	1c48 <Audio_GetInstrument+0x64>
    1c28:	00001025 	move	v0,zero
    1c2c:	8c6f0004 	lw	t7,4(v1)
    1c30:	24a40002 	addiu	a0,a1,2
    1c34:	308200ff 	andi	v0,a0,0xff
    1c38:	acef0004 	sw	t7,4(a3)
    1c3c:	90780003 	lbu	t8,3(v1)
    1c40:	a0f80000 	sb	t8,0(a3)
    1c44:	acc30000 	sw	v1,0(a2)
    1c48:	8fbf0014 	lw	ra,20(sp)
    1c4c:	27bd0020 	addiu	sp,sp,32
    1c50:	03e00008 	jr	ra
    1c54:	00000000 	nop

00001c58 <Audio_SetInstrument>:
    1c58:	27bdffe8 	addiu	sp,sp,-24
    1c5c:	afa5001c 	sw	a1,28(sp)
    1c60:	30a500ff 	andi	a1,a1,0xff
    1c64:	28a10080 	slti	at,a1,128
    1c68:	afbf0014 	sw	ra,20(sp)
    1c6c:	14200004 	bnez	at,1c80 <Audio_SetInstrument+0x28>
    1c70:	00a01025 	move	v0,a1
    1c74:	a4820024 	sh	v0,36(a0)
    1c78:	1000001b 	b	1ce8 <Audio_SetInstrument+0x90>
    1c7c:	ac800048 	sw	zero,72(a0)
    1c80:	2401007f 	li	at,127
    1c84:	14410004 	bne	v0,at,1c98 <Audio_SetInstrument+0x40>
    1c88:	240e0001 	li	t6,1
    1c8c:	a4800024 	sh	zero,36(a0)
    1c90:	10000015 	b	1ce8 <Audio_SetInstrument+0x90>
    1c94:	ac8e0048 	sw	t6,72(a0)
    1c98:	2401007e 	li	at,126
    1c9c:	14410006 	bne	v0,at,1cb8 <Audio_SetInstrument+0x60>
    1ca0:	24860048 	addiu	a2,a0,72
    1ca4:	240f0001 	li	t7,1
    1ca8:	24180002 	li	t8,2
    1cac:	a48f0024 	sh	t7,36(a0)
    1cb0:	1000000d 	b	1ce8 <Audio_SetInstrument+0x90>
    1cb4:	ac980048 	sw	t8,72(a0)
    1cb8:	2487007c 	addiu	a3,a0,124
    1cbc:	0c000000 	jal	0 <Audio_GetScriptControlFlowArgument>
    1cc0:	afa40018 	sw	a0,24(sp)
    1cc4:	8fa40018 	lw	a0,24(sp)
    1cc8:	0002cc00 	sll	t9,v0,0x10
    1ccc:	00194403 	sra	t0,t9,0x10
    1cd0:	15000005 	bnez	t0,1ce8 <Audio_SetInstrument+0x90>
    1cd4:	a4820024 	sh	v0,36(a0)
    1cd8:	90890000 	lbu	t1,0(a0)
    1cdc:	312afff7 	andi	t2,t1,0xfff7
    1ce0:	10000004 	b	1cf4 <Audio_SetInstrument+0x9c>
    1ce4:	a08a0000 	sb	t2,0(a0)
    1ce8:	908c0000 	lbu	t4,0(a0)
    1cec:	358d0008 	ori	t5,t4,0x8
    1cf0:	a08d0000 	sb	t5,0(a0)
    1cf4:	8fbf0014 	lw	ra,20(sp)
    1cf8:	27bd0018 	addiu	sp,sp,24
    1cfc:	03e00008 	jr	ra
    1d00:	00000000 	nop

00001d04 <Audio_SequenceChannelSetVolume>:
    1d04:	afa50004 	sw	a1,4(sp)
    1d08:	30a500ff 	andi	a1,a1,0xff
    1d0c:	44852000 	mtc1	a1,$f4
    1d10:	3c0142fe 	lui	at,0x42fe
    1d14:	44814000 	mtc1	at,$f8
    1d18:	468021a0 	cvt.s.w	$f6,$f4
    1d1c:	46083283 	div.s	$f10,$f6,$f8
    1d20:	03e00008 	jr	ra
    1d24:	e48a002c 	swc1	$f10,44(a0)

00001d28 <Audio_SequenceChannelProcessScript>:
    1d28:	27bdff78 	addiu	sp,sp,-136
    1d2c:	afbf003c 	sw	ra,60(sp)
    1d30:	afbe0038 	sw	s8,56(sp)
    1d34:	afb70034 	sw	s7,52(sp)
    1d38:	afb60030 	sw	s6,48(sp)
    1d3c:	afb5002c 	sw	s5,44(sp)
    1d40:	afb40028 	sw	s4,40(sp)
    1d44:	afb30024 	sw	s3,36(sp)
    1d48:	afb20020 	sw	s2,32(sp)
    1d4c:	afb1001c 	sw	s1,28(sp)
    1d50:	afb00018 	sw	s0,24(sp)
    1d54:	8c8e0000 	lw	t6,0(a0)
    1d58:	0080a025 	move	s4,a0
    1d5c:	000ec080 	sll	t8,t6,0x2
    1d60:	07030004 	bgezl	t8,1d74 <Audio_SequenceChannelProcessScript+0x4c>
    1d64:	8e97004c 	lw	s7,76(s4)
    1d68:	10000315 	b	29c0 <L800EBCD8+0x28>
    1d6c:	00008025 	move	s0,zero
    1d70:	8e97004c 	lw	s7,76(s4)
    1d74:	8ef90000 	lw	t9,0(s7)
    1d78:	00194880 	sll	t1,t9,0x2
    1d7c:	05230006 	bgezl	t1,1d98 <Audio_SequenceChannelProcessScript+0x70>
    1d80:	9683001e 	lhu	v1,30(s4)
    1d84:	928a0003 	lbu	t2,3(s4)
    1d88:	314b0080 	andi	t3,t2,0x80
    1d8c:	55600317 	bnezl	t3,29ec <L800EBCD8+0x54>
    1d90:	8fbf003c 	lw	ra,60(sp)
    1d94:	9683001e 	lhu	v1,30(s4)
    1d98:	26960060 	addiu	s6,s4,96
    1d9c:	28610002 	slti	at,v1,2
    1da0:	14200003 	bnez	at,1db0 <Audio_SequenceChannelProcessScript+0x88>
    1da4:	246cffff 	addiu	t4,v1,-1
    1da8:	10000304 	b	29bc <L800EBCD8+0x24>
    1dac:	a68c001e 	sh	t4,30(s4)
    1db0:	241effff 	li	s8,-1

00001db4 <L800EB0F4>:
    1db4:	0c000000 	jal	0 <Audio_GetScriptControlFlowArgument>
    1db8:	02c02025 	move	a0,s6
    1dbc:	284100b0 	slti	at,v0,176
    1dc0:	305200ff 	andi	s2,v0,0xff
    1dc4:	14200249 	bnez	at,26ec <L800EBA18+0x14>
    1dc8:	00402025 	move	a0,v0
    1dcc:	3c030000 	lui	v1,0x0
    1dd0:	00641821 	addu	v1,v1,a0
    1dd4:	90630000 	lbu	v1,0(v1)
    1dd8:	27b00060 	addiu	s0,sp,96
    1ddc:	30650003 	andi	a1,v1,0x3
    1de0:	30ad00ff 	andi	t5,a1,0xff
    1de4:	19a00013 	blez	t5,1e34 <L800EB0F4+0x80>
    1de8:	30b500ff 	andi	s5,a1,0xff
    1dec:	00157880 	sll	t7,s5,0x2
    1df0:	01f09821 	addu	s3,t7,s0
    1df4:	30780080 	andi	t8,v1,0x80
    1df8:	17000005 	bnez	t8,1e10 <L800EB0F4+0x5c>
    1dfc:	00608825 	move	s1,v1
    1e00:	0c000000 	jal	0 <Audio_GetScriptControlFlowArgument>
    1e04:	02c02025 	move	a0,s6
    1e08:	10000004 	b	1e1c <L800EB0F4+0x68>
    1e0c:	ae020000 	sw	v0,0(s0)
    1e10:	0c000000 	jal	0 <Audio_GetScriptControlFlowArgument>
    1e14:	02c02025 	move	a0,s6
    1e18:	ae020000 	sw	v0,0(s0)
    1e1c:	26100004 	addiu	s0,s0,4
    1e20:	0213082b 	sltu	at,s0,s3
    1e24:	00111840 	sll	v1,s1,0x1
    1e28:	1420fff2 	bnez	at,1df4 <L800EB0F4+0x40>
    1e2c:	306300ff 	andi	v1,v1,0xff
    1e30:	00001025 	move	v0,zero
    1e34:	2a4100f2 	slti	at,s2,242
    1e38:	14200010 	bnez	at,1e7c <L800EB0F4+0xc8>
    1e3c:	02408025 	move	s0,s2
    1e40:	02e02025 	move	a0,s7
    1e44:	02c02825 	move	a1,s6
    1e48:	02003025 	move	a2,s0
    1e4c:	0c000000 	jal	0 <Audio_GetScriptControlFlowArgument>
    1e50:	8fa70060 	lw	a3,96(sp)
    1e54:	1040ffd7 	beqz	v0,1db4 <L800EB0F4>
    1e58:	00000000 	nop
    1e5c:	145e0005 	bne	v0,s8,1e74 <L800EB0F4+0xc0>
    1e60:	00000000 	nop
    1e64:	0c000000 	jal	0 <Audio_GetScriptControlFlowArgument>
    1e68:	02802025 	move	a0,s4
    1e6c:	100002d4 	b	29c0 <L800EBCD8+0x28>
    1e70:	00008025 	move	s0,zero
    1e74:	100002d1 	b	29bc <L800EBCD8+0x24>
    1e78:	a682001e 	sh	v0,30(s4)
    1e7c:	2619ff50 	addiu	t9,s0,-176
    1e80:	2f210042 	sltiu	at,t9,66
    1e84:	1020ffcb 	beqz	at,1db4 <L800EB0F4>
    1e88:	0019c880 	sll	t9,t9,0x2
    1e8c:	3c010000 	lui	at,0x0
    1e90:	00390821 	addu	at,at,t9
    1e94:	8c390000 	lw	t9,0(at)
    1e98:	03200008 	jr	t9
    1e9c:	00000000 	nop

00001ea0 <L800EB1E0>:
    1ea0:	92890000 	lbu	t1,0(s4)
    1ea4:	352a0020 	ori	t2,t1,0x20
    1ea8:	100002c4 	b	29bc <L800EBCD8+0x24>
    1eac:	a28a0000 	sb	t2,0(s4)

00001eb0 <L800EB1F0>:
    1eb0:	26900084 	addiu	s0,s4,132
    1eb4:	0c000000 	jal	0 <Audio_GetScriptControlFlowArgument>
    1eb8:	02002025 	move	a0,s0
    1ebc:	93a50063 	lbu	a1,99(sp)
    1ec0:	0c000000 	jal	0 <Audio_GetScriptControlFlowArgument>
    1ec4:	02002025 	move	a0,s0
    1ec8:	1000ffba 	b	1db4 <L800EB0F4>
    1ecc:	00000000 	nop

00001ed0 <L800EB210>:
    1ed0:	0c000000 	jal	0 <Audio_GetScriptControlFlowArgument>
    1ed4:	26840084 	addiu	a0,s4,132
    1ed8:	1000ffb6 	b	1db4 <L800EB0F4>
    1edc:	00000000 	nop

00001ee0 <L800EB220>:
    1ee0:	97b10062 	lhu	s1,98(sp)
    1ee4:	8eeb0018 	lw	t3,24(s7)
    1ee8:	01716021 	addu	t4,t3,s1
    1eec:	1000ffb1 	b	1db4 <L800EB0F4>
    1ef0:	ae8c003c 	sw	t4,60(s4)

00001ef4 <L800EB234>:
    1ef4:	82c20019 	lb	v0,25(s6)
    1ef8:	13c2ffae 	beq	s8,v0,1db4 <L800EB0F4>
    1efc:	00000000 	nop
    1f00:	8e8d003c 	lw	t5,60(s4)
    1f04:	00027840 	sll	t7,v0,0x1
    1f08:	8ee80018 	lw	t0,24(s7)
    1f0c:	01af8021 	addu	s0,t5,t7
    1f10:	92180000 	lbu	t8,0(s0)
    1f14:	920e0001 	lbu	t6,1(s0)
    1f18:	0018ca00 	sll	t9,t8,0x8
    1f1c:	01d98821 	addu	s1,t6,t9
    1f20:	3231ffff 	andi	s1,s1,0xffff
    1f24:	01114821 	addu	t1,t0,s1
    1f28:	1000ffa2 	b	1db4 <L800EB0F4>
    1f2c:	ae89003c 	sw	t1,60(s4)

00001f30 <L800EB270>:
    1f30:	92eb0005 	lbu	t3,5(s7)
    1f34:	93aa0063 	lbu	t2,99(sp)
    1f38:	240100ff 	li	at,255
    1f3c:	1161000d 	beq	t3,at,1f74 <L800EB270+0x44>
    1f40:	01409025 	move	s2,t2
    1f44:	92ec0004 	lbu	t4,4(s7)
    1f48:	3c020000 	lui	v0,0x0
    1f4c:	8c42283c 	lw	v0,10300(v0)
    1f50:	000c6840 	sll	t5,t4,0x1
    1f54:	004d7821 	addu	t7,v0,t5
    1f58:	95f10000 	lhu	s1,0(t7)
    1f5c:	0222c021 	addu	t8,s1,v0
    1f60:	93150000 	lbu	s5,0(t8)
    1f64:	02357021 	addu	t6,s1,s5
    1f68:	01cac823 	subu	t9,t6,t2
    1f6c:	03224021 	addu	t0,t9,v0
    1f70:	91120000 	lbu	s2,0(t0)
    1f74:	24040001 	li	a0,1
    1f78:	24050002 	li	a1,2
    1f7c:	0c000000 	jal	0 <Audio_GetScriptControlFlowArgument>
    1f80:	02403025 	move	a2,s2
    1f84:	50400003 	beqzl	v0,1f94 <L800EB270+0x64>
    1f88:	8fa90064 	lw	t1,100(sp)
    1f8c:	a2920007 	sb	s2,7(s4)
    1f90:	8fa90064 	lw	t1,100(sp)
    1f94:	afa90060 	sw	t1,96(sp)

00001f98 <L800EB2D8>:
    1f98:	93a50063 	lbu	a1,99(sp)
    1f9c:	0c000000 	jal	0 <Audio_GetScriptControlFlowArgument>
    1fa0:	02802025 	move	a0,s4
    1fa4:	1000ff83 	b	1db4 <L800EB0F4>
    1fa8:	00000000 	nop

00001fac <L800EB2EC>:
    1fac:	928b0000 	lbu	t3,0(s4)
    1fb0:	316cfffd 	andi	t4,t3,0xfffd
    1fb4:	1000ff7f 	b	1db4 <L800EB0F4>
    1fb8:	a28c0000 	sb	t4,0(s4)

00001fbc <L800EB2FC>:
    1fbc:	928f0000 	lbu	t7,0(s4)
    1fc0:	35f80002 	ori	t8,t7,0x2
    1fc4:	1000ff7b 	b	1db4 <L800EB0F4>
    1fc8:	a2980000 	sb	t8,0(s4)

00001fcc <L800EB30C>:
    1fcc:	93a50063 	lbu	a1,99(sp)
    1fd0:	0c000000 	jal	0 <Audio_GetScriptControlFlowArgument>
    1fd4:	02802025 	move	a0,s4
    1fd8:	928a0001 	lbu	t2,1(s4)
    1fdc:	35590040 	ori	t9,t2,0x40
    1fe0:	1000ff74 	b	1db4 <L800EB0F4>
    1fe4:	a2990001 	sb	t9,1(s4)

00001fe8 <L800EB328>:
    1fe8:	93b20063 	lbu	s2,99(sp)
    1fec:	3c013c00 	lui	at,0x3c00
    1ff0:	44814000 	mtc1	at,$f8
    1ff4:	44922000 	mtc1	s2,$f4
    1ff8:	92890001 	lbu	t1,1(s4)
    1ffc:	468021a0 	cvt.s.w	$f6,$f4
    2000:	352b0040 	ori	t3,t1,0x40
    2004:	a28b0001 	sb	t3,1(s4)
    2008:	46083282 	mul.s	$f10,$f6,$f8
    200c:	1000ff69 	b	1db4 <L800EB0F4>
    2010:	e68a0028 	swc1	$f10,40(s4)

00002014 <L800EB354>:
    2014:	97b10062 	lhu	s1,98(sp)
    2018:	3c014700 	lui	at,0x4700
    201c:	44812000 	mtc1	at,$f4
    2020:	44918000 	mtc1	s1,$f16
    2024:	928d0001 	lbu	t5,1(s4)
    2028:	468084a0 	cvt.s.w	$f18,$f16
    202c:	35af0080 	ori	t7,t5,0x80
    2030:	a28f0001 	sb	t7,1(s4)
    2034:	46049183 	div.s	$f6,$f18,$f4
    2038:	1000ff5e 	b	1db4 <L800EB0F4>
    203c:	e6860038 	swc1	$f6,56(s4)

00002040 <L800EB380>:
    2040:	93b20063 	lbu	s2,99(sp)
    2044:	928a0001 	lbu	t2,1(s4)
    2048:	3c010000 	lui	at,0x0
    204c:	26520080 	addiu	s2,s2,128
    2050:	325200ff 	andi	s2,s2,0xff
    2054:	0012c080 	sll	t8,s2,0x2
    2058:	00380821 	addu	at,at,t8
    205c:	c4280000 	lwc1	$f8,0(at)
    2060:	35590080 	ori	t9,t2,0x80
    2064:	a2990001 	sb	t9,1(s4)
    2068:	1000ff52 	b	1db4 <L800EB0F4>
    206c:	e6880038 	swc1	$f8,56(s4)

00002070 <L800EB3B0>:
    2070:	93b20063 	lbu	s2,99(sp)
    2074:	928b0001 	lbu	t3,1(s4)
    2078:	3c010000 	lui	at,0x0
    207c:	26520080 	addiu	s2,s2,128
    2080:	325200ff 	andi	s2,s2,0xff
    2084:	00124080 	sll	t0,s2,0x2
    2088:	00280821 	addu	at,at,t0
    208c:	c42a0000 	lwc1	$f10,0(at)
    2090:	356c0080 	ori	t4,t3,0x80
    2094:	a28c0001 	sb	t4,1(s4)
    2098:	1000ff46 	b	1db4 <L800EB0F4>
    209c:	e68a0038 	swc1	$f10,56(s4)

000020a0 <L800EB3E0>:
    20a0:	928f0001 	lbu	t7,1(s4)
    20a4:	93b20063 	lbu	s2,99(sp)
    20a8:	35f80020 	ori	t8,t7,0x20
    20ac:	a2980001 	sb	t8,1(s4)
    20b0:	1000ff40 	b	1db4 <L800EB0F4>
    20b4:	a292000a 	sb	s2,10(s4)

000020b8 <L800EB3F8>:
    20b8:	928a0001 	lbu	t2,1(s4)
    20bc:	93b20063 	lbu	s2,99(sp)
    20c0:	35590020 	ori	t9,t2,0x20
    20c4:	a2990001 	sb	t9,1(s4)
    20c8:	1000ff3a 	b	1db4 <L800EB0F4>
    20cc:	a292000b 	sb	s2,11(s4)

000020d0 <L800EB410>:
    20d0:	83a20063 	lb	v0,99(sp)
    20d4:	1000ff37 	b	1db4 <L800EB0F4>
    20d8:	a6820026 	sh	v0,38(s4)

000020dc <L800EB41C>:
    20dc:	97b10062 	lhu	s1,98(sp)
    20e0:	8ee80018 	lw	t0,24(s7)
    20e4:	01114821 	addu	t1,t0,s1
    20e8:	1000ff32 	b	1db4 <L800EB0F4>
    20ec:	ae890080 	sw	t1,128(s4)

000020f0 <L800EB430>:
    20f0:	93b20063 	lbu	s2,99(sp)
    20f4:	1000ff2f 	b	1db4 <L800EB0F4>
    20f8:	a292007c 	sb	s2,124(s4)

000020fc <L800EB43C>:
    20fc:	93b20063 	lbu	s2,99(sp)
    2100:	a6800012 	sh	zero,18(s4)
    2104:	a680001a 	sh	zero,26(s4)
    2108:	001258c0 	sll	t3,s2,0x3
    210c:	1000ff29 	b	1db4 <L800EB0F4>
    2110:	a68b0016 	sh	t3,22(s4)

00002114 <L800EB454>:
    2114:	93b20063 	lbu	s2,99(sp)
    2118:	a6800018 	sh	zero,24(s4)
    211c:	00121140 	sll	v0,s2,0x5
    2120:	a6820014 	sh	v0,20(s4)
    2124:	1000ff23 	b	1db4 <L800EB0F4>
    2128:	a6820010 	sh	v0,16(s4)

0000212c <L800EB46C>:
    212c:	93b20063 	lbu	s2,99(sp)
    2130:	001260c0 	sll	t4,s2,0x3
    2134:	a68c0012 	sh	t4,18(s4)
    2138:	93b20067 	lbu	s2,103(sp)
    213c:	001268c0 	sll	t5,s2,0x3
    2140:	a68d0016 	sh	t5,22(s4)
    2144:	93b2006b 	lbu	s2,107(sp)
    2148:	00127900 	sll	t7,s2,0x4
    214c:	1000ff19 	b	1db4 <L800EB0F4>
    2150:	a68f001a 	sh	t7,26(s4)

00002154 <L800EB494>:
    2154:	93b20063 	lbu	s2,99(sp)
    2158:	0012c140 	sll	t8,s2,0x5
    215c:	a6980010 	sh	t8,16(s4)
    2160:	93b20067 	lbu	s2,103(sp)
    2164:	00127140 	sll	t6,s2,0x5
    2168:	a68e0014 	sh	t6,20(s4)
    216c:	93b2006b 	lbu	s2,107(sp)
    2170:	00125100 	sll	t2,s2,0x4
    2174:	1000ff0f 	b	1db4 <L800EB0F4>
    2178:	a68a0018 	sh	t2,24(s4)

0000217c <L800EB4BC>:
    217c:	93b20063 	lbu	s2,99(sp)
    2180:	0012c900 	sll	t9,s2,0x4
    2184:	1000ff0b 	b	1db4 <L800EB0F4>
    2188:	a699001c 	sh	t9,28(s4)

0000218c <L800EB4CC>:
    218c:	93b20063 	lbu	s2,99(sp)
    2190:	1000ff08 	b	1db4 <L800EB0F4>
    2194:	a2920004 	sb	s2,4(s4)

00002198 <L800EB4D8>:
    2198:	92e90005 	lbu	t1,5(s7)
    219c:	93a80063 	lbu	t0,99(sp)
    21a0:	240100ff 	li	at,255
    21a4:	1121000d 	beq	t1,at,21dc <L800EB4D8+0x44>
    21a8:	01009025 	move	s2,t0
    21ac:	92eb0004 	lbu	t3,4(s7)
    21b0:	3c020000 	lui	v0,0x0
    21b4:	8c42283c 	lw	v0,10300(v0)
    21b8:	000b6040 	sll	t4,t3,0x1
    21bc:	004c6821 	addu	t5,v0,t4
    21c0:	95b10000 	lhu	s1,0(t5)
    21c4:	02227821 	addu	t7,s1,v0
    21c8:	91f50000 	lbu	s5,0(t7)
    21cc:	0235c021 	addu	t8,s1,s5
    21d0:	03087023 	subu	t6,t8,t0
    21d4:	01c25021 	addu	t2,t6,v0
    21d8:	91520000 	lbu	s2,0(t2)
    21dc:	24040001 	li	a0,1
    21e0:	24050002 	li	a1,2
    21e4:	0c000000 	jal	0 <Audio_GetScriptControlFlowArgument>
    21e8:	02403025 	move	a2,s2
    21ec:	1040fef1 	beqz	v0,1db4 <L800EB0F4>
    21f0:	00000000 	nop
    21f4:	1000feef 	b	1db4 <L800EB0F4>
    21f8:	a2920007 	sb	s2,7(s4)

000021fc <L800EB53C>:
    21fc:	93b20063 	lbu	s2,99(sp)
    2200:	97b10066 	lhu	s1,102(sp)
    2204:	8ef90018 	lw	t9,24(s7)
    2208:	92c90019 	lbu	t1,25(s6)
    220c:	03311021 	addu	v0,t9,s1
    2210:	01325821 	addu	t3,t1,s2
    2214:	1000fee7 	b	1db4 <L800EB0F4>
    2218:	a04b0000 	sb	t3,0(v0)

0000221c <L800EB55C>:
    221c:	240100c8 	li	at,200
    2220:	16010005 	bne	s0,at,2238 <L800EB55C+0x1c>
    2224:	83a20063 	lb	v0,99(sp)
    2228:	82cc0019 	lb	t4,25(s6)
    222c:	01826823 	subu	t5,t4,v0
    2230:	1000fee0 	b	1db4 <L800EB0F4>
    2234:	a2cd0019 	sb	t5,25(s6)
    2238:	240100cc 	li	at,204
    223c:	56010004 	bnel	s0,at,2250 <L800EB55C+0x34>
    2240:	82cf0019 	lb	t7,25(s6)
    2244:	1000fedb 	b	1db4 <L800EB0F4>
    2248:	a2c20019 	sb	v0,25(s6)
    224c:	82cf0019 	lb	t7,25(s6)
    2250:	01e2c024 	and	t8,t7,v0
    2254:	1000fed7 	b	1db4 <L800EB0F4>
    2258:	a2d80019 	sb	t8,25(s6)

0000225c <L800EB59C>:
    225c:	93b20063 	lbu	s2,99(sp)
    2260:	00124080 	sll	t0,s2,0x2
    2264:	02e87021 	addu	t6,s7,t0
    2268:	0c000000 	jal	0 <Audio_GetScriptControlFlowArgument>
    226c:	8dc40038 	lw	a0,56(t6)
    2270:	1000fed0 	b	1db4 <L800EB0F4>
    2274:	00000000 	nop

00002278 <L800EB5B8>:
    2278:	92990001 	lbu	t9,1(s4)
    227c:	93b20063 	lbu	s2,99(sp)
    2280:	37290040 	ori	t1,t9,0x40
    2284:	a2890001 	sb	t1,1(s4)
    2288:	1000feca 	b	1db4 <L800EB0F4>
    228c:	a2920003 	sb	s2,3(s4)

00002290 <L800EB5D0>:
    2290:	97b10062 	lhu	s1,98(sp)
    2294:	82cc0019 	lb	t4,25(s6)
    2298:	8eeb0018 	lw	t3,24(s7)
    229c:	022c6821 	addu	t5,s1,t4
    22a0:	016d7821 	addu	t7,t3,t5
    22a4:	91f80000 	lbu	t8,0(t7)
    22a8:	1000fec2 	b	1db4 <L800EB0F4>
    22ac:	a2d80019 	sb	t8,25(s6)

000022b0 <L800EB5F0>:
    22b0:	97b10062 	lhu	s1,98(sp)
    22b4:	1000febf 	b	1db4 <L800EB0F4>
    22b8:	a6910022 	sh	s1,34(s4)

000022bc <L800EB5FC>:
    22bc:	97b10062 	lhu	s1,98(sp)
    22c0:	8ee80018 	lw	t0,24(s7)
    22c4:	968e0022 	lhu	t6,34(s4)
    22c8:	01111021 	addu	v0,t0,s1
    22cc:	000eca03 	sra	t9,t6,0x8
    22d0:	a0590000 	sb	t9,0(v0)
    22d4:	968c0022 	lhu	t4,34(s4)
    22d8:	1000feb6 	b	1db4 <L800EB0F4>
    22dc:	a04c0001 	sb	t4,1(v0)

000022e0 <L800EB620>:
    22e0:	93b00063 	lbu	s0,99(sp)
    22e4:	320b0080 	andi	t3,s0,0x80
    22e8:	11600005 	beqz	t3,2300 <L800EB620+0x20>
    22ec:	320a007f 	andi	t2,s0,0x7f
    22f0:	928f0000 	lbu	t7,0(s4)
    22f4:	35f80004 	ori	t8,t7,0x4
    22f8:	10000004 	b	230c <L800EB620+0x2c>
    22fc:	a2980000 	sb	t8,0(s4)
    2300:	92880000 	lbu	t0,0(s4)
    2304:	310efffb 	andi	t6,t0,0xfffb
    2308:	a28e0000 	sb	t6,0(s4)
    230c:	1000fea9 	b	1db4 <L800EB0F4>
    2310:	a28a00d0 	sb	t2,208(s4)

00002314 <L800EB654>:
    2314:	93b20063 	lbu	s2,99(sp)
    2318:	1000fea6 	b	1db4 <L800EB0F4>
    231c:	a2920002 	sb	s2,2(s4)

00002320 <L800EB660>:
    2320:	93b20063 	lbu	s2,99(sp)
    2324:	1000fea3 	b	1db4 <L800EB0F4>
    2328:	a292007d 	sb	s2,125(s4)

0000232c <L800EB66C>:
    232c:	93b20063 	lbu	s2,99(sp)
    2330:	1000fea0 	b	1db4 <L800EB0F4>
    2334:	a2920008 	sb	s2,8(s4)

00002338 <L800EB678>:
    2338:	82c20019 	lb	v0,25(s6)
    233c:	13c2fe9d 	beq	s8,v0,1db4 <L800EB0F4>
    2340:	00000000 	nop
    2344:	92cb0018 	lbu	t3,24(s6)
    2348:	8ecc0000 	lw	t4,0(s6)
    234c:	8e99003c 	lw	t9,60(s4)
    2350:	000b6880 	sll	t5,t3,0x2
    2354:	02cd7821 	addu	t7,s6,t5
    2358:	adec0004 	sw	t4,4(t7)
    235c:	92d80018 	lbu	t8,24(s6)
    2360:	00024840 	sll	t1,v0,0x1
    2364:	03298021 	addu	s0,t9,t1
    2368:	27080001 	addiu	t0,t8,1
    236c:	a2c80018 	sb	t0,24(s6)
    2370:	920a0000 	lbu	t2,0(s0)
    2374:	920e0001 	lbu	t6,1(s0)
    2378:	8ee90018 	lw	t1,24(s7)
    237c:	000aca00 	sll	t9,t2,0x8
    2380:	01d98821 	addu	s1,t6,t9
    2384:	3231ffff 	andi	s1,s1,0xffff
    2388:	01315821 	addu	t3,t1,s1
    238c:	1000fe89 	b	1db4 <L800EB0F4>
    2390:	aecb0000 	sw	t3,0(s6)

00002394 <L800EB6D4>:
    2394:	93b20063 	lbu	s2,99(sp)
    2398:	1000fe86 	b	1db4 <L800EB0F4>
    239c:	a2920009 	sb	s2,9(s4)

000023a0 <L800EB6E0>:
    23a0:	97b10062 	lhu	s1,98(sp)
    23a4:	8eed0018 	lw	t5,24(s7)
    23a8:	02802025 	move	a0,s4
    23ac:	01b18021 	addu	s0,t5,s1
    23b0:	920c0000 	lbu	t4,0(s0)
    23b4:	26100003 	addiu	s0,s0,3
    23b8:	a28c0003 	sb	t4,3(s4)
    23bc:	920ffffe 	lbu	t7,-2(s0)
    23c0:	a28f0002 	sb	t7,2(s4)
    23c4:	0c000000 	jal	0 <Audio_GetScriptControlFlowArgument>
    23c8:	9205ffff 	lbu	a1,-1(s0)
    23cc:	82180000 	lb	t8,0(s0)
    23d0:	928b0001 	lbu	t3,1(s4)
    23d4:	26100004 	addiu	s0,s0,4
    23d8:	a6980026 	sh	t8,38(s4)
    23dc:	9208fffd 	lbu	t0,-3(s0)
    23e0:	356d0020 	ori	t5,t3,0x20
    23e4:	a288000a 	sb	t0,10(s4)
    23e8:	920afffe 	lbu	t2,-2(s0)
    23ec:	a28a000b 	sb	t2,11(s4)
    23f0:	920effff 	lbu	t6,-1(s0)
    23f4:	a28e0004 	sb	t6,4(s4)
    23f8:	92190000 	lbu	t9,0(s0)
    23fc:	a28d0001 	sb	t5,1(s4)
    2400:	1000fe6c 	b	1db4 <L800EB0F4>
    2404:	a2990008 	sb	t9,8(s4)

00002408 <L800EB748>:
    2408:	8fac0060 	lw	t4,96(sp)
    240c:	02802025 	move	a0,s4
    2410:	a28c0003 	sb	t4,3(s4)
    2414:	8faf0064 	lw	t7,100(sp)
    2418:	a28f0002 	sb	t7,2(s4)
    241c:	0c000000 	jal	0 <Audio_GetScriptControlFlowArgument>
    2420:	93a5006b 	lbu	a1,107(sp)
    2424:	0c000000 	jal	0 <Audio_GetScriptControlFlowArgument>
    2428:	02c02025 	move	a0,s6
    242c:	0002c600 	sll	t8,v0,0x18
    2430:	00184603 	sra	t0,t8,0x18
    2434:	a6880026 	sh	t0,38(s4)
    2438:	0c000000 	jal	0 <Audio_GetScriptControlFlowArgument>
    243c:	02c02025 	move	a0,s6
    2440:	a282000a 	sb	v0,10(s4)
    2444:	0c000000 	jal	0 <Audio_GetScriptControlFlowArgument>
    2448:	02c02025 	move	a0,s6
    244c:	a282000b 	sb	v0,11(s4)
    2450:	0c000000 	jal	0 <Audio_GetScriptControlFlowArgument>
    2454:	02c02025 	move	a0,s6
    2458:	a2820004 	sb	v0,4(s4)
    245c:	0c000000 	jal	0 <Audio_GetScriptControlFlowArgument>
    2460:	02c02025 	move	a0,s6
    2464:	928e0001 	lbu	t6,1(s4)
    2468:	a2820008 	sb	v0,8(s4)
    246c:	35d90020 	ori	t9,t6,0x20
    2470:	1000fe50 	b	1db4 <L800EB0F4>
    2474:	a2990001 	sb	t9,1(s4)

00002478 <L800EB7B8>:
    2478:	3c013f80 	lui	at,0x3f80
    247c:	44818000 	mtc1	at,$f16
    2480:	a6800016 	sh	zero,22(s4)
    2484:	a6800012 	sh	zero,18(s4)
    2488:	a680001a 	sh	zero,26(s4)
    248c:	a6800014 	sh	zero,20(s4)
    2490:	a6800010 	sh	zero,16(s4)
    2494:	a6800018 	sh	zero,24(s4)
    2498:	ae8000cc 	sw	zero,204(s4)
    249c:	a280000c 	sb	zero,12(s4)
    24a0:	a280007d 	sb	zero,125(s4)
    24a4:	a280000d 	sb	zero,13(s4)
    24a8:	a280000e 	sb	zero,14(s4)
    24ac:	a280000f 	sb	zero,15(s4)
    24b0:	a6800020 	sh	zero,32(s4)
    24b4:	a2800009 	sb	zero,9(s4)
    24b8:	1000fe3e 	b	1db4 <L800EB0F4>
    24bc:	e6900038 	swc1	$f16,56(s4)

000024c0 <L800EB800>:
    24c0:	02802025 	move	a0,s4
    24c4:	0c000000 	jal	0 <Audio_GetScriptControlFlowArgument>
    24c8:	93a50063 	lbu	a1,99(sp)
    24cc:	1000fe39 	b	1db4 <L800EB0F4>
    24d0:	00000000 	nop

000024d4 <L800EB814>:
    24d4:	93b20063 	lbu	s2,99(sp)
    24d8:	1000fe36 	b	1db4 <L800EB0F4>
    24dc:	a292000c 	sb	s2,12(s4)

000024e0 <L800EB820>:
    24e0:	97b10062 	lhu	s1,98(sp)
    24e4:	8ee90018 	lw	t1,24(s7)
    24e8:	01318021 	addu	s0,t1,s1
    24ec:	1000fe31 	b	1db4 <L800EB0F4>
    24f0:	ae9000cc 	sw	s0,204(s4)

000024f4 <L800EB834>:
    24f4:	1000fe2f 	b	1db4 <L800EB0F4>
    24f8:	ae8000cc 	sw	zero,204(s4)

000024fc <L800EB83C>:
    24fc:	8e8400cc 	lw	a0,204(s4)
    2500:	93b20063 	lbu	s2,99(sp)
    2504:	1080fe2b 	beqz	a0,1db4 <L800EB0F4>
    2508:	0012a903 	sra	s5,s2,0x4
    250c:	02408025 	move	s0,s2
    2510:	32b5000f 	andi	s5,s5,0xf
    2514:	3252000f 	andi	s2,s2,0xf
    2518:	32a500ff 	andi	a1,s5,0xff
    251c:	0c000000 	jal	0 <Audio_GetScriptControlFlowArgument>
    2520:	324600ff 	andi	a2,s2,0xff
    2524:	1000fe23 	b	1db4 <L800EB0F4>
    2528:	00000000 	nop

0000252c <L800EB86C>:
    252c:	82cd0019 	lb	t5,25(s6)
    2530:	97b10062 	lhu	s1,98(sp)
    2534:	8eeb0018 	lw	t3,24(s7)
    2538:	000d6040 	sll	t4,t5,0x1
    253c:	022c7821 	addu	t7,s1,t4
    2540:	016fc021 	addu	t8,t3,t7
    2544:	97080000 	lhu	t0,0(t8)
    2548:	1000fe1a 	b	1db4 <L800EB0F4>
    254c:	a6880022 	sh	t0,34(s4)

00002550 <L800EB890>:
    2550:	8eea0018 	lw	t2,24(s7)
    2554:	968e0022 	lhu	t6,34(s4)
    2558:	014ec821 	addu	t9,t2,t6
    255c:	1000fe15 	b	1db4 <L800EB0F4>
    2560:	ae99003c 	sw	t9,60(s4)

00002564 <L800EB8A4>:
    2564:	82cd0019 	lb	t5,25(s6)
    2568:	8e89003c 	lw	t1,60(s4)
    256c:	000d6040 	sll	t4,t5,0x1
    2570:	012c5821 	addu	t3,t1,t4
    2574:	956f0000 	lhu	t7,0(t3)
    2578:	1000fe0e 	b	1db4 <L800EB0F4>
    257c:	a68f0022 	sh	t7,34(s4)

00002580 <L800EB8C0>:
    2580:	8e98003c 	lw	t8,60(s4)
    2584:	82c80019 	lb	t0,25(s6)
    2588:	03085021 	addu	t2,t8,t0
    258c:	914e0000 	lbu	t6,0(t2)
    2590:	1000fe08 	b	1db4 <L800EB0F4>
    2594:	a2ce0019 	sb	t6,25(s6)

00002598 <L800EB8D8>:
    2598:	8fb90060 	lw	t9,96(sp)
    259c:	3c0c0000 	lui	t4,0x0
    25a0:	8fab0060 	lw	t3,96(sp)
    25a4:	17200005 	bnez	t9,25bc <L800EB8D8+0x24>
    25a8:	00000000 	nop
    25ac:	3c0d0000 	lui	t5,0x0
    25b0:	8da9297c 	lw	t1,10620(t5)
    25b4:	1000fdff 	b	1db4 <L800EB0F4>
    25b8:	a6890022 	sh	t1,34(s4)
    25bc:	8d8c297c 	lw	t4,10620(t4)
    25c0:	018b001b 	divu	zero,t4,t3
    25c4:	00007810 	mfhi	t7
    25c8:	a68f0022 	sh	t7,34(s4)
    25cc:	15600002 	bnez	t3,25d8 <L800EB8D8+0x40>
    25d0:	00000000 	nop
    25d4:	0007000d 	break	0x7
    25d8:	1000fdf6 	b	1db4 <L800EB0F4>
    25dc:	00000000 	nop

000025e0 <L800EB920>:
    25e0:	8fb80060 	lw	t8,96(sp)
    25e4:	3c0e0000 	lui	t6,0x0
    25e8:	8fb90060 	lw	t9,96(sp)
    25ec:	17000005 	bnez	t8,2604 <L800EB920+0x24>
    25f0:	00000000 	nop
    25f4:	3c080000 	lui	t0,0x0
    25f8:	8d0a297c 	lw	t2,10620(t0)
    25fc:	1000fded 	b	1db4 <L800EB0F4>
    2600:	a2ca0019 	sb	t2,25(s6)
    2604:	8dce297c 	lw	t6,10620(t6)
    2608:	01d9001b 	divu	zero,t6,t9
    260c:	00006810 	mfhi	t5
    2610:	a2cd0019 	sb	t5,25(s6)
    2614:	17200002 	bnez	t9,2620 <L800EB920+0x40>
    2618:	00000000 	nop
    261c:	0007000d 	break	0x7
    2620:	1000fde4 	b	1db4 <L800EB0F4>
    2624:	00000000 	nop

00002628 <L800EB968>:
    2628:	0c000000 	jal	0 <Audio_GetScriptControlFlowArgument>
    262c:	00000000 	nop
    2630:	8fa90060 	lw	t1,96(sp)
    2634:	8fab0060 	lw	t3,96(sp)
    2638:	15200003 	bnez	t1,2648 <L800EB968+0x20>
    263c:	00000000 	nop
    2640:	10000007 	b	2660 <L800EB968+0x38>
    2644:	a6820022 	sh	v0,34(s4)
    2648:	004b001b 	divu	zero,v0,t3
    264c:	00007810 	mfhi	t7
    2650:	a68f0022 	sh	t7,34(s4)
    2654:	15600002 	bnez	t3,2660 <L800EB968+0x38>
    2658:	00000000 	nop
    265c:	0007000d 	break	0x7
    2660:	96980022 	lhu	t8,34(s4)
    2664:	8fa80064 	lw	t0,100(sp)
    2668:	03085021 	addu	t2,t8,t0
    266c:	3142ffff 	andi	v0,t2,0xffff
    2670:	a68a0022 	sh	t2,34(s4)
    2674:	04410003 	bgez	v0,2684 <L800EB968+0x5c>
    2678:	00021a03 	sra	v1,v0,0x8
    267c:	244100ff 	addiu	at,v0,255
    2680:	00011a03 	sra	v1,at,0x8
    2684:	24630080 	addiu	v1,v1,128
    2688:	04410004 	bgez	v0,269c <L800EB968+0x74>
    268c:	304400ff 	andi	a0,v0,0xff
    2690:	10800002 	beqz	a0,269c <L800EB968+0x74>
    2694:	00000000 	nop
    2698:	2484ff00 	addiu	a0,a0,-256
    269c:	00037200 	sll	t6,v1,0x8
    26a0:	01c4c825 	or	t9,t6,a0
    26a4:	1000fdc3 	b	1db4 <L800EB0F4>
    26a8:	a6990022 	sh	t9,34(s4)

000026ac <L800EB9EC>:
    26ac:	8fad0060 	lw	t5,96(sp)
    26b0:	1000fdc0 	b	1db4 <L800EB0F4>
    26b4:	a28d000d 	sb	t5,13(s4)

000026b8 <L800EB9F8>:
    26b8:	8fa90060 	lw	t1,96(sp)
    26bc:	1000fdbd 	b	1db4 <L800EB0F4>
    26c0:	a289000e 	sb	t1,14(s4)

000026c4 <L800EBA04>:
    26c4:	8fac0060 	lw	t4,96(sp)
    26c8:	a28c000f 	sb	t4,15(s4)
    26cc:	8fab0064 	lw	t3,100(sp)
    26d0:	1000fdb8 	b	1db4 <L800EB0F4>
    26d4:	a68b0020 	sh	t3,32(s4)

000026d8 <L800EBA18>:
    26d8:	968f0022 	lhu	t7,34(s4)
    26dc:	8fb80060 	lw	t8,96(sp)
    26e0:	01f84021 	addu	t0,t7,t8
    26e4:	1000fdb3 	b	1db4 <L800EB0F4>
    26e8:	a6880022 	sh	t0,34(s4)
    26ec:	28810070 	slti	at,a0,112
    26f0:	1420005d 	bnez	at,2868 <L800EBB6C+0x3c>
    26f4:	3085000f 	andi	a1,a0,0xf
    26f8:	30850007 	andi	a1,a0,0x7
    26fc:	308300f8 	andi	v1,a0,0xf8
    2700:	24010070 	li	at,112
    2704:	10610006 	beq	v1,at,2720 <L800EBA18+0x48>
    2708:	30b500ff 	andi	s5,a1,0xff
    270c:	30aa00ff 	andi	t2,a1,0xff
    2710:	29410004 	slti	at,t2,4
    2714:	54200003 	bnezl	at,2724 <L800EBA18+0x4c>
    2718:	246eff90 	addiu	t6,v1,-112
    271c:	0000a825 	move	s5,zero
    2720:	246eff90 	addiu	t6,v1,-112
    2724:	2dc10029 	sltiu	at,t6,41
    2728:	1020fda2 	beqz	at,1db4 <L800EB0F4>
    272c:	000e7080 	sll	t6,t6,0x2
    2730:	3c010000 	lui	at,0x0
    2734:	002e0821 	addu	at,at,t6
    2738:	8c2e0000 	lw	t6,0(at)
    273c:	01c00008 	jr	t6
    2740:	00000000 	nop

00002744 <L800EBA84>:
    2744:	0015c880 	sll	t9,s5,0x2
    2748:	02996821 	addu	t5,s4,t9
    274c:	8da20050 	lw	v0,80(t5)
    2750:	10400006 	beqz	v0,276c <L800EBA84+0x28>
    2754:	00000000 	nop
    2758:	8c490000 	lw	t1,0(v0)
    275c:	00096040 	sll	t4,t1,0x1
    2760:	000c5fc2 	srl	t3,t4,0x1f
    2764:	1000fd93 	b	1db4 <L800EB0F4>
    2768:	a2cb0019 	sb	t3,25(s6)
    276c:	1000fd91 	b	1db4 <L800EB0F4>
    2770:	a2de0019 	sb	s8,25(s6)

00002774 <L800EBAB4>:
    2774:	0c000000 	jal	0 <Audio_GetScriptControlFlowArgument>
    2778:	02c02025 	move	a0,s6
    277c:	3051ffff 	andi	s1,v0,0xffff
    2780:	02802025 	move	a0,s4
    2784:	0c000000 	jal	0 <Audio_GetScriptControlFlowArgument>
    2788:	02a02825 	move	a1,s5
    278c:	1440fd89 	bnez	v0,1db4 <L800EB0F4>
    2790:	00154080 	sll	t0,s5,0x2
    2794:	8eef0018 	lw	t7,24(s7)
    2798:	02885021 	addu	t2,s4,t0
    279c:	8d4e0050 	lw	t6,80(t2)
    27a0:	01f1c021 	addu	t8,t7,s1
    27a4:	1000fd83 	b	1db4 <L800EB0F4>
    27a8:	add80054 	sw	t8,84(t6)

000027ac <L800EBAEC>:
    27ac:	02802025 	move	a0,s4
    27b0:	0c000000 	jal	0 <Audio_GetScriptControlFlowArgument>
    27b4:	02a02825 	move	a1,s5
    27b8:	1000fd7e 	b	1db4 <L800EB0F4>
    27bc:	00000000 	nop

000027c0 <L800EBB00>:
    27c0:	82d90019 	lb	t9,25(s6)
    27c4:	02802025 	move	a0,s4
    27c8:	13d9fd7a 	beq	s8,t9,1db4 <L800EB0F4>
    27cc:	00000000 	nop
    27d0:	0c000000 	jal	0 <Audio_GetScriptControlFlowArgument>
    27d4:	02a02825 	move	a1,s5
    27d8:	105efd76 	beq	v0,s8,1db4 <L800EB0F4>
    27dc:	00157080 	sll	t6,s5,0x2
    27e0:	82c90019 	lb	t1,25(s6)
    27e4:	8e8d003c 	lw	t5,60(s4)
    27e8:	8eea0018 	lw	t2,24(s7)
    27ec:	00096040 	sll	t4,t1,0x1
    27f0:	01ac8021 	addu	s0,t5,t4
    27f4:	920f0000 	lbu	t7,0(s0)
    27f8:	920b0001 	lbu	t3,1(s0)
    27fc:	028ec821 	addu	t9,s4,t6
    2800:	000f4200 	sll	t0,t7,0x8
    2804:	01688821 	addu	s1,t3,t0
    2808:	8f290050 	lw	t1,80(t9)
    280c:	3231ffff 	andi	s1,s1,0xffff
    2810:	0151c021 	addu	t8,t2,s1
    2814:	1000fd67 	b	1db4 <L800EB0F4>
    2818:	ad380054 	sw	t8,84(t1)

0000281c <L800EBB5C>:
    281c:	82cd0019 	lb	t5,25(s6)
    2820:	02956021 	addu	t4,s4,s5
    2824:	1000fd63 	b	1db4 <L800EB0F4>
    2828:	a18d00c4 	sb	t5,196(t4)

0000282c <L800EBB6C>:
    282c:	0c000000 	jal	0 <Audio_GetScriptControlFlowArgument>
    2830:	02c02025 	move	a0,s6
    2834:	00028400 	sll	s0,v0,0x10
    2838:	00108403 	sra	s0,s0,0x10
    283c:	02802025 	move	a0,s4
    2840:	0c000000 	jal	0 <Audio_GetScriptControlFlowArgument>
    2844:	02a02825 	move	a1,s5
    2848:	1440fd5a 	bnez	v0,1db4 <L800EB0F4>
    284c:	00154080 	sll	t0,s5,0x2
    2850:	8ecf0000 	lw	t7,0(s6)
    2854:	02885021 	addu	t2,s4,t0
    2858:	8d4e0050 	lw	t6,80(t2)
    285c:	01f05821 	addu	t3,t7,s0
    2860:	1000fd54 	b	1db4 <L800EB0F4>
    2864:	adcb0054 	sw	t3,84(t6)
    2868:	309900f0 	andi	t9,a0,0xf0
    286c:	2f210061 	sltiu	at,t9,97
    2870:	1020fd50 	beqz	at,1db4 <L800EB0F4>
    2874:	30b500ff 	andi	s5,a1,0xff
    2878:	0019c880 	sll	t9,t9,0x2
    287c:	3c010000 	lui	at,0x0
    2880:	00390821 	addu	at,at,t9
    2884:	8c390000 	lw	t9,0(at)
    2888:	03200008 	jr	t9
    288c:	00000000 	nop

00002890 <L800EBBD0>:
    2890:	30b800ff 	andi	t8,a1,0xff
    2894:	10000049 	b	29bc <L800EBCD8+0x24>
    2898:	a698001e 	sh	t8,30(s4)

0000289c <L800EBBDC>:
    289c:	30a900ff 	andi	t1,a1,0xff
    28a0:	29210008 	slti	at,t1,8
    28a4:	1020000c 	beqz	at,28d8 <L800EBBDC+0x3c>
    28a8:	3255000f 	andi	s5,s2,0xf
    28ac:	324c000f 	andi	t4,s2,0xf
    28b0:	028c1021 	addu	v0,s4,t4
    28b4:	a05e00c4 	sb	s8,196(v0)
    28b8:	82c50019 	lb	a1,25(s6)
    28bc:	92840007 	lbu	a0,7(s4)
    28c0:	0c000000 	jal	0 <Audio_GetScriptControlFlowArgument>
    28c4:	244600c4 	addiu	a2,v0,196
    28c8:	145efd3a 	bne	v0,s8,1db4 <L800EB0F4>
    28cc:	00000000 	nop
    28d0:	1000fd38 	b	1db4 <L800EB0F4>
    28d4:	00000000 	nop
    28d8:	26b5fff8 	addiu	s5,s5,-8
    28dc:	32b500ff 	andi	s5,s5,0xff
    28e0:	02951021 	addu	v0,s4,s5
    28e4:	a05e00c4 	sb	s8,196(v0)
    28e8:	96850022 	lhu	a1,34(s4)
    28ec:	92840007 	lbu	a0,7(s4)
    28f0:	244600c4 	addiu	a2,v0,196
    28f4:	0c000000 	jal	0 <Audio_GetScriptControlFlowArgument>
    28f8:	24a50100 	addiu	a1,a1,256
    28fc:	145efd2d 	bne	v0,s8,1db4 <L800EB0F4>
    2900:	00000000 	nop
    2904:	1000fd2b 	b	1db4 <L800EB0F4>
    2908:	00000000 	nop

0000290c <L800EBC4C>:
    290c:	30a300ff 	andi	v1,a1,0xff
    2910:	02832021 	addu	a0,s4,v1
    2914:	808f00c4 	lb	t7,196(a0)
    2918:	28610002 	slti	at,v1,2
    291c:	1020fd25 	beqz	at,1db4 <L800EB0F4>
    2920:	a2cf0019 	sb	t7,25(s6)
    2924:	1000fd23 	b	1db4 <L800EB0F4>
    2928:	a09e00c4 	sb	s8,196(a0)

0000292c <L800EBC6C>:
    292c:	30aa00ff 	andi	t2,a1,0xff
    2930:	028a5821 	addu	t3,s4,t2
    2934:	816e00c4 	lb	t6,196(t3)
    2938:	82c80019 	lb	t0,25(s6)
    293c:	010ec823 	subu	t9,t0,t6
    2940:	1000fd1c 	b	1db4 <L800EB0F4>
    2944:	a2d90019 	sb	t9,25(s6)

00002948 <L800EBC88>:
    2948:	0c000000 	jal	0 <Audio_GetScriptControlFlowArgument>
    294c:	02c02025 	move	a0,s6
    2950:	8ef80018 	lw	t8,24(s7)
    2954:	02402825 	move	a1,s2
    2958:	3049ffff 	andi	t1,v0,0xffff
    295c:	30a5000f 	andi	a1,a1,0xf
    2960:	02e02025 	move	a0,s7
    2964:	0c000000 	jal	0 <Audio_GetScriptControlFlowArgument>
    2968:	03093021 	addu	a2,t8,t1
    296c:	1000fd11 	b	1db4 <L800EB0F4>
    2970:	00000000 	nop

00002974 <L800EBCB4>:
    2974:	0c000000 	jal	0 <Audio_GetScriptControlFlowArgument>
    2978:	02c02025 	move	a0,s6
    297c:	00156080 	sll	t4,s5,0x2
    2980:	02ec7821 	addu	t7,s7,t4
    2984:	8dea0038 	lw	t2,56(t7)
    2988:	82cd0019 	lb	t5,25(s6)
    298c:	01425821 	addu	t3,t2,v0
    2990:	1000fd08 	b	1db4 <L800EB0F4>
    2994:	a16d00c4 	sb	t5,196(t3)

00002998 <L800EBCD8>:
    2998:	0c000000 	jal	0 <Audio_GetScriptControlFlowArgument>
    299c:	02c02025 	move	a0,s6
    29a0:	00154080 	sll	t0,s5,0x2
    29a4:	02e87021 	addu	t6,s7,t0
    29a8:	8dd90038 	lw	t9,56(t6)
    29ac:	0322c021 	addu	t8,t9,v0
    29b0:	830900c4 	lb	t1,196(t8)
    29b4:	1000fcff 	b	1db4 <L800EB0F4>
    29b8:	a2c90019 	sb	t1,25(s6)
    29bc:	00008025 	move	s0,zero
    29c0:	02808825 	move	s1,s4
    29c4:	24120010 	li	s2,16
    29c8:	8e240050 	lw	a0,80(s1)
    29cc:	50800004 	beqzl	a0,29e0 <L800EBCD8+0x48>
    29d0:	26100004 	addiu	s0,s0,4
    29d4:	0c000000 	jal	0 <Audio_GetScriptControlFlowArgument>
    29d8:	00000000 	nop
    29dc:	26100004 	addiu	s0,s0,4
    29e0:	1612fff9 	bne	s0,s2,29c8 <L800EBCD8+0x30>
    29e4:	26310004 	addiu	s1,s1,4
    29e8:	8fbf003c 	lw	ra,60(sp)
    29ec:	8fb00018 	lw	s0,24(sp)
    29f0:	8fb1001c 	lw	s1,28(sp)
    29f4:	8fb20020 	lw	s2,32(sp)
    29f8:	8fb30024 	lw	s3,36(sp)
    29fc:	8fb40028 	lw	s4,40(sp)
    2a00:	8fb5002c 	lw	s5,44(sp)
    2a04:	8fb60030 	lw	s6,48(sp)
    2a08:	8fb70034 	lw	s7,52(sp)
    2a0c:	8fbe0038 	lw	s8,56(sp)
    2a10:	03e00008 	jr	ra
    2a14:	27bd0088 	addiu	sp,sp,136

00002a18 <Audio_SequencePlayerProcessSequence>:
    2a18:	27bdff98 	addiu	sp,sp,-104
    2a1c:	afbf0024 	sw	ra,36(sp)
    2a20:	afb20020 	sw	s2,32(sp)
    2a24:	afb1001c 	sw	s1,28(sp)
    2a28:	afb00018 	sw	s0,24(sp)
    2a2c:	8c8e0000 	lw	t6,0(a0)
    2a30:	00809025 	move	s2,a0
    2a34:	000e7fc2 	srl	t7,t6,0x1f
    2a38:	51e001f5 	beqzl	t7,3210 <L800EC4E4+0x6c>
    2a3c:	8fbf0024 	lw	ra,36(sp)
    2a40:	0c000000 	jal	0 <Audio_GetScriptControlFlowArgument>
    2a44:	90840004 	lbu	a0,4(a0)
    2a48:	10400005 	beqz	v0,2a60 <Audio_SequencePlayerProcessSequence+0x48>
    2a4c:	00000000 	nop
    2a50:	0c000000 	jal	0 <Audio_GetScriptControlFlowArgument>
    2a54:	92440005 	lbu	a0,5(s2)
    2a58:	14400005 	bnez	v0,2a70 <Audio_SequencePlayerProcessSequence+0x58>
    2a5c:	24050002 	li	a1,2
    2a60:	0c000000 	jal	0 <Audio_GetScriptControlFlowArgument>
    2a64:	02402025 	move	a0,s2
    2a68:	100001e9 	b	3210 <L800EC4E4+0x6c>
    2a6c:	8fbf0024 	lw	ra,36(sp)
    2a70:	0c000000 	jal	0 <Audio_GetScriptControlFlowArgument>
    2a74:	92440004 	lbu	a0,4(s2)
    2a78:	92440005 	lbu	a0,5(s2)
    2a7c:	0c000000 	jal	0 <Audio_GetScriptControlFlowArgument>
    2a80:	24050002 	li	a1,2
    2a84:	8e580000 	lw	t8,0(s2)
    2a88:	3c040000 	lui	a0,0x0
    2a8c:	00184080 	sll	t0,t8,0x2
    2a90:	05030006 	bgezl	t0,2aac <Audio_SequencePlayerProcessSequence+0x94>
    2a94:	964d000a 	lhu	t5,10(s2)
    2a98:	92490003 	lbu	t1,3(s2)
    2a9c:	312a0080 	andi	t2,t1,0x80
    2aa0:	554001db 	bnezl	t2,3210 <L800EC4E4+0x6c>
    2aa4:	8fbf0024 	lw	ra,36(sp)
    2aa8:	964d000a 	lhu	t5,10(s2)
    2aac:	964e0008 	lhu	t6,8(s2)
    2ab0:	8e4b00e0 	lw	t3,224(s2)
    2ab4:	8659000c 	lh	t9,12(s2)
    2ab8:	01aec021 	addu	t8,t5,t6
    2abc:	a658000a 	sh	t8,10(s2)
    2ac0:	256c0001 	addiu	t4,t3,1
    2ac4:	03194021 	addu	t0,t8,t9
    2ac8:	ae4c00e0 	sw	t4,224(s2)
    2acc:	a648000a 	sh	t0,10(s2)
    2ad0:	84842898 	lh	a0,10392(a0)
    2ad4:	3102ffff 	andi	v0,t0,0xffff
    2ad8:	0044082a 	slt	at,v0,a0
    2adc:	542001cc 	bnezl	at,3210 <L800EC4E4+0x6c>
    2ae0:	8fbf0024 	lw	ra,36(sp)
    2ae4:	8e4b0000 	lw	t3,0(s2)
    2ae8:	00445023 	subu	t2,v0,a0
    2aec:	24010001 	li	at,1
    2af0:	000b6180 	sll	t4,t3,0x6
    2af4:	000c6fc2 	srl	t5,t4,0x1f
    2af8:	11a101c4 	beq	t5,at,320c <L800EC4E4+0x68>
    2afc:	a64a000a 	sh	t2,10(s2)
    2b00:	96420010 	lhu	v0,16(s2)
    2b04:	28410002 	slti	at,v0,2
    2b08:	14200003 	bnez	at,2b18 <Audio_SequencePlayerProcessSequence+0x100>
    2b0c:	244effff 	addiu	t6,v0,-1
    2b10:	100001b1 	b	31d8 <L800EC4E4+0x34>
    2b14:	a64e0010 	sh	t6,16(s2)
    2b18:	92580000 	lbu	t8,0(s2)
    2b1c:	26510078 	addiu	s1,s2,120
    2b20:	37190004 	ori	t9,t8,0x4
    2b24:	a2590000 	sb	t9,0(s2)

00002b28 <L800EBE68>:
    2b28:	0c000000 	jal	0 <Audio_GetScriptControlFlowArgument>
    2b2c:	02202025 	move	a0,s1
    2b30:	284100f2 	slti	at,v0,242
    2b34:	14200014 	bnez	at,2b88 <L800EBE68+0x60>
    2b38:	305000ff 	andi	s0,v0,0xff
    2b3c:	02202025 	move	a0,s1
    2b40:	0c000000 	jal	0 <Audio_GetScriptControlFlowArgument>
    2b44:	320500ff 	andi	a1,s0,0xff
    2b48:	02402025 	move	a0,s2
    2b4c:	02202825 	move	a1,s1
    2b50:	02003025 	move	a2,s0
    2b54:	0c000000 	jal	0 <Audio_GetScriptControlFlowArgument>
    2b58:	00403825 	move	a3,v0
    2b5c:	1040fff2 	beqz	v0,2b28 <L800EBE68>
    2b60:	00000000 	nop
    2b64:	2401ffff 	li	at,-1
    2b68:	14410005 	bne	v0,at,2b80 <L800EBE68+0x58>
    2b6c:	00000000 	nop
    2b70:	0c000000 	jal	0 <Audio_GetScriptControlFlowArgument>
    2b74:	02402025 	move	a0,s2
    2b78:	10000198 	b	31dc <L800EC4E4+0x38>
    2b7c:	02408825 	move	s1,s2
    2b80:	10000195 	b	31d8 <L800EC4E4+0x34>
    2b84:	a6420010 	sh	v0,16(s2)
    2b88:	304300ff 	andi	v1,v0,0xff
    2b8c:	286100c0 	slti	at,v1,192
    2b90:	1420012e 	bnez	at,304c <L800EC340+0x4c>
    2b94:	306200f0 	andi	v0,v1,0xf0
    2b98:	2468ff3c 	addiu	t0,v1,-196
    2b9c:	2d01002e 	sltiu	at,t0,46
    2ba0:	1020ffe1 	beqz	at,2b28 <L800EBE68>
    2ba4:	00084080 	sll	t0,t0,0x2
    2ba8:	3c010000 	lui	at,0x0
    2bac:	00280821 	addu	at,at,t0
    2bb0:	8c280000 	lw	t0,0(at)
    2bb4:	01000008 	jr	t0
    2bb8:	00000000 	nop

00002bbc <L800EBEFC>:
    2bbc:	2650009c 	addiu	s0,s2,156
    2bc0:	0c000000 	jal	0 <Audio_GetScriptControlFlowArgument>
    2bc4:	02002025 	move	a0,s0
    2bc8:	0c000000 	jal	0 <Audio_GetScriptControlFlowArgument>
    2bcc:	02202025 	move	a0,s1
    2bd0:	02002025 	move	a0,s0
    2bd4:	0c000000 	jal	0 <Audio_GetScriptControlFlowArgument>
    2bd8:	00402825 	move	a1,v0
    2bdc:	1000ffd2 	b	2b28 <L800EBE68>
    2be0:	00000000 	nop
    2be4:	1000ffd0 	b	2b28 <L800EBE68>
    2be8:	00000000 	nop

00002bec <L800EBF2C>:
    2bec:	0c000000 	jal	0 <Audio_GetScriptControlFlowArgument>
    2bf0:	2644009c 	addiu	a0,s2,156
    2bf4:	1000ffcc 	b	2b28 <L800EBE68>
    2bf8:	00000000 	nop

00002bfc <L800EBF3C>:
    2bfc:	a640000e 	sh	zero,14(s2)

00002c00 <L800EBF40>:
    2c00:	0c000000 	jal	0 <Audio_GetScriptControlFlowArgument>
    2c04:	02202025 	move	a0,s1
    2c08:	8649000e 	lh	t1,14(s2)
    2c0c:	00025600 	sll	t2,v0,0x18
    2c10:	000a5e03 	sra	t3,t2,0x18
    2c14:	012b6021 	addu	t4,t1,t3
    2c18:	1000ffc3 	b	2b28 <L800EBE68>
    2c1c:	a64c000e 	sh	t4,14(s2)

00002c20 <L800EBF60>:
    2c20:	0c000000 	jal	0 <Audio_GetScriptControlFlowArgument>
    2c24:	02202025 	move	a0,s1
    2c28:	00026880 	sll	t5,v0,0x2
    2c2c:	01a26823 	subu	t5,t5,v0
    2c30:	000d6900 	sll	t5,t5,0x4
    2c34:	a64d0008 	sh	t5,8(s2)
    2c38:	3c040000 	lui	a0,0x0
    2c3c:	84842898 	lh	a0,10392(a0)
    2c40:	31a3ffff 	andi	v1,t5,0xffff
    2c44:	24180001 	li	t8,1
    2c48:	0083082a 	slt	at,a0,v1
    2c4c:	50200004 	beqzl	at,2c60 <L800EBF60+0x40>
    2c50:	00037400 	sll	t6,v1,0x10
    2c54:	a6440008 	sh	a0,8(s2)
    2c58:	3083ffff 	andi	v1,a0,0xffff
    2c5c:	00037400 	sll	t6,v1,0x10
    2c60:	000e7c03 	sra	t7,t6,0x10
    2c64:	1de0ffb0 	bgtz	t7,2b28 <L800EBE68>
    2c68:	00000000 	nop
    2c6c:	1000ffae 	b	2b28 <L800EBE68>
    2c70:	a6580008 	sh	t8,8(s2)

00002c74 <L800EBFB4>:
    2c74:	0c000000 	jal	0 <Audio_GetScriptControlFlowArgument>
    2c78:	02202025 	move	a0,s1
    2c7c:	0002ce00 	sll	t9,v0,0x18
    2c80:	00194603 	sra	t0,t9,0x18
    2c84:	00085080 	sll	t2,t0,0x2
    2c88:	01485023 	subu	t2,t2,t0
    2c8c:	000a5100 	sll	t2,t2,0x4
    2c90:	1000ffa5 	b	2b28 <L800EBE68>
    2c94:	a64a000c 	sh	t2,12(s2)

00002c98 <L800EBFD8>:
    2c98:	0c000000 	jal	0 <Audio_GetScriptControlFlowArgument>
    2c9c:	02202025 	move	a0,s1
    2ca0:	305000ff 	andi	s0,v0,0xff
    2ca4:	0c000000 	jal	0 <Audio_GetScriptControlFlowArgument>
    2ca8:	02202025 	move	a0,s1
    2cac:	12000008 	beqz	s0,2cd0 <L800EBFD8+0x38>
    2cb0:	02002025 	move	a0,s0
    2cb4:	24010001 	li	at,1
    2cb8:	10810005 	beq	a0,at,2cd0 <L800EBFD8+0x38>
    2cbc:	24010002 	li	at,2
    2cc0:	1081000a 	beq	a0,at,2cec <L800EBFD8+0x54>
    2cc4:	304bffff 	andi	t3,v0,0xffff
    2cc8:	1000ff97 	b	2b28 <L800EBE68>
    2ccc:	00000000 	nop
    2cd0:	92490001 	lbu	t1,1(s2)
    2cd4:	24010002 	li	at,2
    2cd8:	1121ff93 	beq	t1,at,2b28 <L800EBE68>
    2cdc:	00000000 	nop
    2ce0:	a6420014 	sh	v0,20(s2)
    2ce4:	1000ff90 	b	2b28 <L800EBE68>
    2ce8:	a2500001 	sb	s0,1(s2)
    2cec:	448b5000 	mtc1	t3,$f10
    2cf0:	44802000 	mtc1	zero,$f4
    2cf4:	c646001c 	lwc1	$f6,28(s2)
    2cf8:	46805420 	cvt.s.w	$f16,$f10
    2cfc:	a6420012 	sh	v0,18(s2)
    2d00:	a2500001 	sb	s0,1(s2)
    2d04:	46062201 	sub.s	$f8,$f4,$f6
    2d08:	46104483 	div.s	$f18,$f8,$f16
    2d0c:	1000ff86 	b	2b28 <L800EBE68>
    2d10:	e6520020 	swc1	$f18,32(s2)

00002d14 <L800EC054>:
    2d14:	0c000000 	jal	0 <Audio_GetScriptControlFlowArgument>
    2d18:	02202025 	move	a0,s1
    2d1c:	92430001 	lbu	v1,1(s2)
    2d20:	24010001 	li	at,1
    2d24:	5060000b 	beqzl	v1,2d54 <L800EC054+0x40>
    2d28:	96430014 	lhu	v1,20(s2)
    2d2c:	10610005 	beq	v1,at,2d44 <L800EC054+0x30>
    2d30:	24010002 	li	at,2
    2d34:	1061ff7c 	beq	v1,at,2b28 <L800EBE68>
    2d38:	00000000 	nop
    2d3c:	1000ff7a 	b	2b28 <L800EBE68>
    2d40:	00000000 	nop
    2d44:	44802000 	mtc1	zero,$f4
    2d48:	a2400001 	sb	zero,1(s2)
    2d4c:	e644001c 	swc1	$f4,28(s2)
    2d50:	96430014 	lhu	v1,20(s2)
    2d54:	1060000e 	beqz	v1,2d90 <L800EC054+0x7c>
    2d58:	a6430012 	sh	v1,18(s2)
    2d5c:	44823000 	mtc1	v0,$f6
    2d60:	3c0142fe 	lui	at,0x42fe
    2d64:	44814000 	mtc1	at,$f8
    2d68:	468032a0 	cvt.s.w	$f10,$f6
    2d6c:	306cffff 	andi	t4,v1,0xffff
    2d70:	448c3000 	mtc1	t4,$f6
    2d74:	c652001c 	lwc1	$f18,28(s2)
    2d78:	46085403 	div.s	$f16,$f10,$f8
    2d7c:	468032a0 	cvt.s.w	$f10,$f6
    2d80:	46128101 	sub.s	$f4,$f16,$f18
    2d84:	460a2203 	div.s	$f8,$f4,$f10
    2d88:	1000ff67 	b	2b28 <L800EBE68>
    2d8c:	e6480020 	swc1	$f8,32(s2)
    2d90:	44828000 	mtc1	v0,$f16
    2d94:	3c0142fe 	lui	at,0x42fe
    2d98:	44813000 	mtc1	at,$f6
    2d9c:	468084a0 	cvt.s.w	$f18,$f16
    2da0:	46069103 	div.s	$f4,$f18,$f6
    2da4:	1000ff60 	b	2b28 <L800EBE68>
    2da8:	e644001c 	swc1	$f4,28(s2)

00002dac <L800EC0EC>:
    2dac:	0c000000 	jal	0 <Audio_GetScriptControlFlowArgument>
    2db0:	02202025 	move	a0,s1
    2db4:	00026e00 	sll	t5,v0,0x18
    2db8:	000d7603 	sra	t6,t5,0x18
    2dbc:	448e5000 	mtc1	t6,$f10
    2dc0:	3c0142fe 	lui	at,0x42fe
    2dc4:	44818000 	mtc1	at,$f16
    2dc8:	46805220 	cvt.s.w	$f8,$f10
    2dcc:	46104483 	div.s	$f18,$f8,$f16
    2dd0:	1000ff55 	b	2b28 <L800EBE68>
    2dd4:	e652002c 	swc1	$f18,44(s2)

00002dd8 <L800EC118>:
    2dd8:	0c000000 	jal	0 <Audio_GetScriptControlFlowArgument>
    2ddc:	02202025 	move	a0,s1
    2de0:	02402025 	move	a0,s2
    2de4:	0c000000 	jal	0 <Audio_GetScriptControlFlowArgument>
    2de8:	3045ffff 	andi	a1,v0,0xffff
    2dec:	1000ff4e 	b	2b28 <L800EBE68>
    2df0:	00000000 	nop

00002df4 <L800EC134>:
    2df4:	0c000000 	jal	0 <Audio_GetScriptControlFlowArgument>
    2df8:	02202025 	move	a0,s1
    2dfc:	1000ff4a 	b	2b28 <L800EBE68>
    2e00:	00000000 	nop

00002e04 <L800EC144>:
    2e04:	0c000000 	jal	0 <Audio_GetScriptControlFlowArgument>
    2e08:	02202025 	move	a0,s1
    2e0c:	00027e00 	sll	t7,v0,0x18
    2e10:	000fc603 	sra	t8,t7,0x18
    2e14:	44983000 	mtc1	t8,$f6
    2e18:	3c0142fe 	lui	at,0x42fe
    2e1c:	44815000 	mtc1	at,$f10
    2e20:	46803120 	cvt.s.w	$f4,$f6
    2e24:	460a2203 	div.s	$f8,$f4,$f10
    2e28:	1000ff3f 	b	2b28 <L800EBE68>
    2e2c:	e6480028 	swc1	$f8,40(s2)

00002e30 <L800EC170>:
    2e30:	92480000 	lbu	t0,0(s2)
    2e34:	350a0020 	ori	t2,t0,0x20
    2e38:	1000ff3b 	b	2b28 <L800EBE68>
    2e3c:	a24a0000 	sb	t2,0(s2)

00002e40 <L800EC180>:
    2e40:	0c000000 	jal	0 <Audio_GetScriptControlFlowArgument>
    2e44:	02202025 	move	a0,s1
    2e48:	1000ff37 	b	2b28 <L800EBE68>
    2e4c:	a2420003 	sb	v0,3(s2)

00002e50 <L800EC190>:
    2e50:	0c000000 	jal	0 <Audio_GetScriptControlFlowArgument>
    2e54:	02202025 	move	a0,s1
    2e58:	8e490018 	lw	t1,24(s2)
    2e5c:	304bffff 	andi	t3,v0,0xffff
    2e60:	240100d2 	li	at,210
    2e64:	16010003 	bne	s0,at,2e74 <L800EC190+0x24>
    2e68:	012b1821 	addu	v1,t1,t3
    2e6c:	1000ff2e 	b	2b28 <L800EBE68>
    2e70:	ae430094 	sw	v1,148(s2)
    2e74:	1000ff2c 	b	2b28 <L800EBE68>
    2e78:	ae430098 	sw	v1,152(s2)

00002e7c <L800EC1BC>:
    2e7c:	0c000000 	jal	0 <Audio_GetScriptControlFlowArgument>
    2e80:	02202025 	move	a0,s1
    2e84:	1000ff28 	b	2b28 <L800EBE68>
    2e88:	a2420002 	sb	v0,2(s2)

00002e8c <L800EC1CC>:
    2e8c:	0c000000 	jal	0 <Audio_GetScriptControlFlowArgument>
    2e90:	02202025 	move	a0,s1
    2e94:	14400006 	bnez	v0,2eb0 <L800EC1CC+0x24>
    2e98:	3c0f0000 	lui	t7,0x0
    2e9c:	3c0c0000 	lui	t4,0x0
    2ea0:	8d8c297c 	lw	t4,10620(t4)
    2ea4:	000c7082 	srl	t6,t4,0x2
    2ea8:	1000ff1f 	b	2b28 <L800EBE68>
    2eac:	a22e0019 	sb	t6,25(s1)
    2eb0:	8def297c 	lw	t7,10620(t7)
    2eb4:	305900ff 	andi	t9,v0,0xff
    2eb8:	000fc082 	srl	t8,t7,0x2
    2ebc:	0319001b 	divu	zero,t8,t9
    2ec0:	00004010 	mfhi	t0
    2ec4:	a2280019 	sb	t0,25(s1)
    2ec8:	17200002 	bnez	t9,2ed4 <L800EC1CC+0x48>
    2ecc:	00000000 	nop
    2ed0:	0007000d 	break	0x7
    2ed4:	1000ff14 	b	2b28 <L800EBE68>
    2ed8:	00000000 	nop

00002edc <L800EC21C>:
    2edc:	0c000000 	jal	0 <Audio_GetScriptControlFlowArgument>
    2ee0:	02202025 	move	a0,s1
    2ee4:	82250019 	lb	a1,25(s1)
    2ee8:	2401ffff 	li	at,-1
    2eec:	10a1ff0e 	beq	a1,at,2b28 <L800EBE68>
    2ef0:	00000000 	nop
    2ef4:	92260018 	lbu	a2,24(s1)
    2ef8:	24010003 	li	at,3
    2efc:	304affff 	andi	t2,v0,0xffff
    2f00:	10c1ff09 	beq	a2,at,2b28 <L800EBE68>
    2f04:	00054840 	sll	t1,a1,0x1
    2f08:	8e2d0000 	lw	t5,0(s1)
    2f0c:	00067080 	sll	t6,a2,0x2
    2f10:	8e4c0018 	lw	t4,24(s2)
    2f14:	022e7821 	addu	t7,s1,t6
    2f18:	aded0004 	sw	t5,4(t7)
    2f1c:	92380018 	lbu	t8,24(s1)
    2f20:	01495821 	addu	t3,t2,t1
    2f24:	018b1021 	addu	v0,t4,t3
    2f28:	27190001 	addiu	t9,t8,1
    2f2c:	a2390018 	sb	t9,24(s1)
    2f30:	904a0000 	lbu	t2,0(v0)
    2f34:	90480001 	lbu	t0,1(v0)
    2f38:	8e4c0018 	lw	t4,24(s2)
    2f3c:	000a4a00 	sll	t1,t2,0x8
    2f40:	01091821 	addu	v1,t0,t1
    2f44:	3063ffff 	andi	v1,v1,0xffff
    2f48:	01835821 	addu	t3,t4,v1
    2f4c:	1000fef6 	b	2b28 <L800EBE68>
    2f50:	ae2b0000 	sw	t3,0(s1)

00002f54 <L800EC294>:
    2f54:	0c000000 	jal	0 <Audio_GetScriptControlFlowArgument>
    2f58:	02202025 	move	a0,s1
    2f5c:	1000fef2 	b	2b28 <L800EBE68>
    2f60:	a2220019 	sb	v0,25(s1)

00002f64 <L800EC2A4>:
    2f64:	0c000000 	jal	0 <Audio_GetScriptControlFlowArgument>
    2f68:	02202025 	move	a0,s1
    2f6c:	822e0019 	lb	t6,25(s1)
    2f70:	01c26824 	and	t5,t6,v0
    2f74:	1000feec 	b	2b28 <L800EBE68>
    2f78:	a22d0019 	sb	t5,25(s1)

00002f7c <L800EC2BC>:
    2f7c:	0c000000 	jal	0 <Audio_GetScriptControlFlowArgument>
    2f80:	02202025 	move	a0,s1
    2f84:	822f0019 	lb	t7,25(s1)
    2f88:	01e2c023 	subu	t8,t7,v0
    2f8c:	1000fee6 	b	2b28 <L800EBE68>
    2f90:	a2380019 	sb	t8,25(s1)

00002f94 <L800EC2D4>:
    2f94:	0c000000 	jal	0 <Audio_GetScriptControlFlowArgument>
    2f98:	02202025 	move	a0,s1
    2f9c:	305000ff 	andi	s0,v0,0xff
    2fa0:	0c000000 	jal	0 <Audio_GetScriptControlFlowArgument>
    2fa4:	02202025 	move	a0,s1
    2fa8:	8e590018 	lw	t9,24(s2)
    2fac:	92280019 	lbu	t0,25(s1)
    2fb0:	304affff 	andi	t2,v0,0xffff
    2fb4:	032a2821 	addu	a1,t9,t2
    2fb8:	01104821 	addu	t1,t0,s0
    2fbc:	1000feda 	b	2b28 <L800EBE68>
    2fc0:	a0a90000 	sb	t1,0(a1)

00002fc4 <L800EC304>:
    2fc4:	924b0000 	lbu	t3,0(s2)
    2fc8:	356e0002 	ori	t6,t3,0x2
    2fcc:	1000008f 	b	320c <L800EC4E4+0x68>
    2fd0:	a24e0000 	sb	t6,0(s2)

00002fd4 <L800EC314>:
    2fd4:	0c000000 	jal	0 <Audio_GetScriptControlFlowArgument>
    2fd8:	02202025 	move	a0,s1
    2fdc:	304dffff 	andi	t5,v0,0xffff
    2fe0:	1000fed1 	b	2b28 <L800EBE68>
    2fe4:	ae4d00e0 	sw	t5,224(s2)

00002fe8 <L800EC328>:
    2fe8:	0c000000 	jal	0 <Audio_GetScriptControlFlowArgument>
    2fec:	02202025 	move	a0,s1
    2ff0:	0c000000 	jal	0 <Audio_GetScriptControlFlowArgument>
    2ff4:	02202025 	move	a0,s1
    2ff8:	1000fecb 	b	2b28 <L800EBE68>
    2ffc:	00000000 	nop

00003000 <L800EC340>:
    3000:	0c000000 	jal	0 <Audio_GetScriptControlFlowArgument>
    3004:	02202025 	move	a0,s1
    3008:	240100ff 	li	at,255
    300c:	14410002 	bne	v0,at,3018 <L800EC340+0x18>
    3010:	305000ff 	andi	s0,v0,0xff
    3014:	92500007 	lbu	s0,7(s2)
    3018:	0c000000 	jal	0 <Audio_GetScriptControlFlowArgument>
    301c:	02202025 	move	a0,s1
    3020:	02002025 	move	a0,s0
    3024:	00402825 	move	a1,v0
    3028:	00003025 	move	a2,zero
    302c:	0c000000 	jal	0 <Audio_GetScriptControlFlowArgument>
    3030:	afb0002c 	sw	s0,44(sp)
    3034:	8fa4002c 	lw	a0,44(sp)
    3038:	924f0007 	lbu	t7,7(s2)
    303c:	15e4feba 	bne	t7,a0,2b28 <L800EBE68>
    3040:	00000000 	nop
    3044:	10000072 	b	3210 <L800EC4E4+0x6c>
    3048:	8fbf0024 	lw	ra,36(sp)
    304c:	3064000f 	andi	a0,v1,0xf
    3050:	1840000a 	blez	v0,307c <L800EC340+0x7c>
    3054:	a3a40066 	sb	a0,102(sp)
    3058:	2458ffc0 	addiu	t8,v0,-64
    305c:	2f010071 	sltiu	at,t8,113
    3060:	1020feb1 	beqz	at,2b28 <L800EBE68>
    3064:	0018c080 	sll	t8,t8,0x2
    3068:	3c010000 	lui	at,0x0
    306c:	00380821 	addu	at,at,t8
    3070:	8c380000 	lw	t8,0(at)
    3074:	03000008 	jr	t8
    3078:	00000000 	nop
    307c:	1440feaa 	bnez	v0,2b28 <L800EBE68>
    3080:	309900ff 	andi	t9,a0,0xff
    3084:	00195080 	sll	t2,t9,0x2
    3088:	024a4021 	addu	t0,s2,t2
    308c:	8d090038 	lw	t1,56(t0)
    3090:	8d2c0000 	lw	t4,0(t1)
    3094:	000c5fc2 	srl	t3,t4,0x1f
    3098:	396e0001 	xori	t6,t3,0x1
    309c:	1000fea2 	b	2b28 <L800EBE68>
    30a0:	a22e0019 	sb	t6,25(s1)

000030a4 <L800EC3E4>:
    30a4:	308f00ff 	andi	t7,a0,0xff
    30a8:	024fc021 	addu	t8,s2,t7
    30ac:	83190158 	lb	t9,344(t8)
    30b0:	822d0019 	lb	t5,25(s1)
    30b4:	01b95023 	subu	t2,t5,t9
    30b8:	1000fe9b 	b	2b28 <L800EBE68>
    30bc:	a22a0019 	sb	t2,25(s1)

000030c0 <L800EC400>:
    30c0:	82280019 	lb	t0,25(s1)
    30c4:	308900ff 	andi	t1,a0,0xff
    30c8:	02496021 	addu	t4,s2,t1
    30cc:	1000fe96 	b	2b28 <L800EBE68>

000030d0 <L800EC410>:
    30d0:	a1880158 	sb	t0,344(t4)

000030d4 <L800EC414>:
    30d4:	308200ff 	andi	v0,a0,0xff
    30d8:	02421821 	addu	v1,s2,v0
    30dc:	806b0158 	lb	t3,344(v1)
    30e0:	28410002 	slti	at,v0,2
    30e4:	1020fe90 	beqz	at,2b28 <L800EBE68>
    30e8:	a22b0019 	sb	t3,25(s1)
    30ec:	240effff 	li	t6,-1
    30f0:	1000fe8d 	b	2b28 <L800EBE68>
    30f4:	a06e0158 	sb	t6,344(v1)

000030f8 <L800EC438>:
    30f8:	3218000f 	andi	t8,s0,0xf
    30fc:	00186880 	sll	t5,t8,0x2
    3100:	024dc821 	addu	t9,s2,t5
    3104:	0c000000 	jal	0 <Audio_GetScriptControlFlowArgument>
    3108:	8f240038 	lw	a0,56(t9)
    310c:	1000fe86 	b	2b28 <L800EBE68>
    3110:	00000000 	nop

00003114 <L800EC454>:
    3114:	0c000000 	jal	0 <Audio_GetScriptControlFlowArgument>
    3118:	02202025 	move	a0,s1
    311c:	8e4a0018 	lw	t2,24(s2)
    3120:	02002825 	move	a1,s0
    3124:	3049ffff 	andi	t1,v0,0xffff
    3128:	30a5000f 	andi	a1,a1,0xf
    312c:	02402025 	move	a0,s2
    3130:	0c000000 	jal	0 <Audio_GetScriptControlFlowArgument>
    3134:	01493021 	addu	a2,t2,t1
    3138:	1000fe7b 	b	2b28 <L800EBE68>
    313c:	00000000 	nop

00003140 <L800EC480>:
    3140:	0c000000 	jal	0 <Audio_GetScriptControlFlowArgument>
    3144:	02202025 	move	a0,s1
    3148:	8e280000 	lw	t0,0(s1)
    314c:	02002825 	move	a1,s0
    3150:	30a5000f 	andi	a1,a1,0xf
    3154:	02402025 	move	a0,s2
    3158:	0c000000 	jal	0 <Audio_GetScriptControlFlowArgument>
    315c:	01023021 	addu	a2,t0,v0
    3160:	1000fe71 	b	2b28 <L800EBE68>
    3164:	00000000 	nop

00003168 <L800EC4A8>:
    3168:	0c000000 	jal	0 <Audio_GetScriptControlFlowArgument>
    316c:	02202025 	move	a0,s1
    3170:	305000ff 	andi	s0,v0,0xff
    3174:	0c000000 	jal	0 <Audio_GetScriptControlFlowArgument>
    3178:	02202025 	move	a0,s1
    317c:	93ae0066 	lbu	t6,102(sp)
    3180:	8e4c0018 	lw	t4,24(s2)
    3184:	304bffff 	andi	t3,v0,0xffff
    3188:	024e3021 	addu	a2,s2,t6
    318c:	24c60158 	addiu	a2,a2,344
    3190:	02002025 	move	a0,s0
    3194:	0c000000 	jal	0 <Audio_GetScriptControlFlowArgument>
    3198:	018b2821 	addu	a1,t4,t3
    319c:	1000fe62 	b	2b28 <L800EBE68>
    31a0:	00000000 	nop

000031a4 <L800EC4E4>:
    31a4:	0c000000 	jal	0 <Audio_GetScriptControlFlowArgument>
    31a8:	02202025 	move	a0,s1
    31ac:	00408025 	move	s0,v0
    31b0:	0c000000 	jal	0 <Audio_GetScriptControlFlowArgument>
    31b4:	02202025 	move	a0,s1
    31b8:	93af0066 	lbu	t7,102(sp)
    31bc:	02002025 	move	a0,s0
    31c0:	00402825 	move	a1,v0
    31c4:	024f3021 	addu	a2,s2,t7
    31c8:	0c000000 	jal	0 <Audio_GetScriptControlFlowArgument>
    31cc:	24c60158 	addiu	a2,a2,344
    31d0:	1000fe55 	b	2b28 <L800EBE68>
    31d4:	00000000 	nop
    31d8:	02408825 	move	s1,s2
    31dc:	24120040 	li	s2,64
    31e0:	00008025 	move	s0,zero
    31e4:	8e240038 	lw	a0,56(s1)
    31e8:	8c980000 	lw	t8,0(a0)
    31ec:	00186fc2 	srl	t5,t8,0x1f
    31f0:	51a00004 	beqzl	t5,3204 <L800EC4E4+0x60>
    31f4:	26100004 	addiu	s0,s0,4
    31f8:	0c000000 	jal	0 <Audio_GetScriptControlFlowArgument>
    31fc:	00000000 	nop
    3200:	26100004 	addiu	s0,s0,4
    3204:	1612fff7 	bne	s0,s2,31e4 <L800EC4E4+0x40>
    3208:	26310004 	addiu	s1,s1,4
    320c:	8fbf0024 	lw	ra,36(sp)
    3210:	8fb00018 	lw	s0,24(sp)
    3214:	8fb1001c 	lw	s1,28(sp)
    3218:	8fb20020 	lw	s2,32(sp)
    321c:	03e00008 	jr	ra
    3220:	27bd0068 	addiu	sp,sp,104

00003224 <Audio_ProcessSequences>:
    3224:	3c030000 	lui	v1,0x0
    3228:	24630000 	addiu	v1,v1,0
    322c:	846e2854 	lh	t6,10324(v1)
    3230:	8c792894 	lw	t9,10388(v1)
    3234:	27bdffd8 	addiu	sp,sp,-40
    3238:	01c47823 	subu	t7,t6,a0
    323c:	25f8ffff 	addiu	t8,t7,-1
    3240:	03190019 	multu	t8,t9
    3244:	8462285c 	lh	v0,10332(v1)
    3248:	afb10018 	sw	s1,24(sp)
    324c:	afb30020 	sw	s3,32(sp)
    3250:	afb2001c 	sw	s2,28(sp)
    3254:	3c110000 	lui	s1,0x0
    3258:	afbf0024 	sw	ra,36(sp)
    325c:	afb00014 	sw	s0,20(sp)
    3260:	26310000 	addiu	s1,s1,0
    3264:	00009025 	move	s2,zero
    3268:	00004012 	mflo	t0
    326c:	ac685b84 	sw	t0,23428(v1)
    3270:	10400010 	beqz	v0,32b4 <Audio_ProcessSequences+0x90>
    3274:	24130001 	li	s3,1
    3278:	8e293530 	lw	t1,13616(s1)
    327c:	26303530 	addiu	s0,s1,13616
    3280:	000957c2 	srl	t2,t1,0x1f
    3284:	566a0008 	bnel	s3,t2,32a8 <Audio_ProcessSequences+0x84>
    3288:	26520001 	addiu	s2,s2,1
    328c:	0c000000 	jal	0 <Audio_GetScriptControlFlowArgument>
    3290:	02002025 	move	a0,s0
    3294:	0c000000 	jal	0 <Audio_GetScriptControlFlowArgument>
    3298:	02002025 	move	a0,s0
    329c:	3c020000 	lui	v0,0x0
    32a0:	8442285c 	lh	v0,10332(v0)
    32a4:	26520001 	addiu	s2,s2,1
    32a8:	0242082b 	sltu	at,s2,v0
    32ac:	1420fff2 	bnez	at,3278 <Audio_ProcessSequences+0x54>
    32b0:	26310160 	addiu	s1,s1,352
    32b4:	0c000000 	jal	0 <Audio_GetScriptControlFlowArgument>
    32b8:	00000000 	nop
    32bc:	8fbf0024 	lw	ra,36(sp)
    32c0:	8fb00014 	lw	s0,20(sp)
    32c4:	8fb10018 	lw	s1,24(sp)
    32c8:	8fb2001c 	lw	s2,28(sp)
    32cc:	8fb30020 	lw	s3,32(sp)
    32d0:	03e00008 	jr	ra
    32d4:	27bd0028 	addiu	sp,sp,40

000032d8 <Audio_ProcessSequence>:
    32d8:	27bdffe0 	addiu	sp,sp,-32
    32dc:	afbf001c 	sw	ra,28(sp)
    32e0:	afb00018 	sw	s0,24(sp)
    32e4:	8c8e00dc 	lw	t6,220(a0)
    32e8:	00808025 	move	s0,a0
    32ec:	59c0000a 	blezl	t6,3318 <Audio_ProcessSequence+0x40>
    32f0:	8fbf001c 	lw	ra,28(sp)
    32f4:	0c000000 	jal	0 <Audio_GetScriptControlFlowArgument>
    32f8:	02002025 	move	a0,s0
    32fc:	0c000000 	jal	0 <Audio_GetScriptControlFlowArgument>
    3300:	02002025 	move	a0,s0
    3304:	8e0f00dc 	lw	t7,220(s0)
    3308:	25f8ffff 	addiu	t8,t7,-1
    330c:	1f00fff9 	bgtz	t8,32f4 <Audio_ProcessSequence+0x1c>
    3310:	ae1800dc 	sw	t8,220(s0)
    3314:	8fbf001c 	lw	ra,28(sp)
    3318:	8fb00018 	lw	s0,24(sp)
    331c:	27bd0020 	addiu	sp,sp,32
    3320:	03e00008 	jr	ra
    3324:	00000000 	nop

00003328 <Audio_ResetSequencePlayer>:
    3328:	27bdffd8 	addiu	sp,sp,-40
    332c:	afbf0024 	sw	ra,36(sp)
    3330:	afb20020 	sw	s2,32(sp)
    3334:	afb1001c 	sw	s1,28(sp)
    3338:	afb00018 	sw	s0,24(sp)
    333c:	0c000000 	jal	0 <Audio_GetScriptControlFlowArgument>
    3340:	afa40028 	sw	a0,40(sp)
    3344:	8fb10028 	lw	s1,40(sp)
    3348:	3c013f80 	lui	at,0x3f80
    334c:	44812000 	mtc1	at,$f4
    3350:	44800000 	mtc1	zero,$f0
    3354:	922e0000 	lbu	t6,0(s1)
    3358:	3c013f00 	lui	at,0x3f00
    335c:	44813000 	mtc1	at,$f6
    3360:	3c080000 	lui	t0,0x0
    3364:	3c090000 	lui	t1,0x0
    3368:	24180001 	li	t8,1
    336c:	24191680 	li	t9,5760
    3370:	25080000 	addiu	t0,t0,0
    3374:	25290000 	addiu	t1,t1,0
    3378:	31cffffd 	andi	t7,t6,0xfffd
    337c:	00008025 	move	s0,zero
    3380:	24120040 	li	s2,64
    3384:	a22f0000 	sb	t7,0(s1)
    3388:	a6200010 	sh	zero,16(s1)
    338c:	a2380001 	sb	t8,1(s1)
    3390:	a6200012 	sh	zero,18(s1)
    3394:	a6200014 	sh	zero,20(s1)
    3398:	a620000a 	sh	zero,10(s1)
    339c:	a6390008 	sh	t9,8(s1)
    33a0:	a620000c 	sh	zero,12(s1)
    33a4:	a620000e 	sh	zero,14(s1)
    33a8:	a2200002 	sb	zero,2(s1)
    33ac:	ae280094 	sw	t0,148(s1)
    33b0:	ae290098 	sw	t1,152(s1)
    33b4:	ae2000e0 	sw	zero,224(s1)
    33b8:	e624001c 	swc1	$f4,28(s1)
    33bc:	e6200020 	swc1	$f0,32(s1)
    33c0:	e6200024 	swc1	$f0,36(s1)
    33c4:	e6260028 	swc1	$f6,40(s1)
    33c8:	0c000000 	jal	0 <Audio_GetScriptControlFlowArgument>
    33cc:	8e240038 	lw	a0,56(s1)
    33d0:	26100004 	addiu	s0,s0,4
    33d4:	1612fffc 	bne	s0,s2,33c8 <Audio_ResetSequencePlayer+0xa0>
    33d8:	26310004 	addiu	s1,s1,4
    33dc:	8fbf0024 	lw	ra,36(sp)
    33e0:	8fb00018 	lw	s0,24(sp)
    33e4:	8fb1001c 	lw	s1,28(sp)
    33e8:	8fb20020 	lw	s2,32(sp)
    33ec:	03e00008 	jr	ra
    33f0:	27bd0028 	addiu	sp,sp,40

000033f4 <func_800EC734>:
    33f4:	27bdffd0 	addiu	sp,sp,-48
    33f8:	00047080 	sll	t6,a0,0x2
    33fc:	01c47023 	subu	t6,t6,a0
    3400:	000e7080 	sll	t6,t6,0x2
    3404:	01c47023 	subu	t6,t6,a0
    3408:	000e7140 	sll	t6,t6,0x5
    340c:	3c180000 	lui	t8,0x0
    3410:	afb40024 	sw	s4,36(sp)
    3414:	afb30020 	sw	s3,32(sp)
    3418:	afb2001c 	sw	s2,28(sp)
    341c:	27180000 	addiu	t8,t8,0
    3420:	25cf3530 	addiu	t7,t6,13616
    3424:	afb50028 	sw	s5,40(sp)
    3428:	afb10018 	sw	s1,24(sp)
    342c:	afb00014 	sw	s0,20(sp)
    3430:	01f89021 	addu	s2,t7,t8
    3434:	3c130000 	lui	s3,0x0
    3438:	3c140000 	lui	s4,0x0
    343c:	afbf002c 	sw	ra,44(sp)
    3440:	26945ab0 	addiu	s4,s4,23216
    3444:	267329c0 	addiu	s3,s3,10688
    3448:	02408025 	move	s0,s2
    344c:	00008825 	move	s1,zero
    3450:	24150040 	li	s5,64
    3454:	02602025 	move	a0,s3
    3458:	0c000000 	jal	0 <Audio_GetScriptControlFlowArgument>
    345c:	240500d4 	li	a1,212
    3460:	14400003 	bnez	v0,3470 <func_800EC734+0x7c>
    3464:	ae020038 	sw	v0,56(s0)
    3468:	1000000a 	b	3494 <func_800EC734+0xa0>
    346c:	ae140038 	sw	s4,56(s0)
    3470:	8e030038 	lw	v1,56(s0)
    3474:	90790000 	lbu	t9,0(v1)
    3478:	ac72004c 	sw	s2,76(v1)
    347c:	ac600054 	sw	zero,84(v1)
    3480:	3328ff7f 	andi	t0,t9,0xff7f
    3484:	a0680000 	sb	t0,0(v1)
    3488:	ac600058 	sw	zero,88(v1)
    348c:	ac60005c 	sw	zero,92(v1)
    3490:	ac600050 	sw	zero,80(v1)
    3494:	0c000000 	jal	0 <Audio_GetScriptControlFlowArgument>
    3498:	8e040038 	lw	a0,56(s0)
    349c:	26310004 	addiu	s1,s1,4
    34a0:	1635ffec 	bne	s1,s5,3454 <func_800EC734+0x60>
    34a4:	26100004 	addiu	s0,s0,4
    34a8:	8fbf002c 	lw	ra,44(sp)
    34ac:	8fb00014 	lw	s0,20(sp)
    34b0:	8fb10018 	lw	s1,24(sp)
    34b4:	8fb2001c 	lw	s2,28(sp)
    34b8:	8fb30020 	lw	s3,32(sp)
    34bc:	8fb40024 	lw	s4,36(sp)
    34c0:	8fb50028 	lw	s5,40(sp)
    34c4:	03e00008 	jr	ra
    34c8:	27bd0030 	addiu	sp,sp,48

000034cc <Audio_InitSequencePlayer>:
    34cc:	27bdffe8 	addiu	sp,sp,-24
    34d0:	00803025 	move	a2,a0
    34d4:	00801825 	move	v1,a0
    34d8:	3c020000 	lui	v0,0x0
    34dc:	afbf0014 	sw	ra,20(sp)
    34e0:	24425ab0 	addiu	v0,v0,23216
    34e4:	24040010 	li	a0,16
    34e8:	00002825 	move	a1,zero
    34ec:	24a50004 	addiu	a1,a1,4
    34f0:	ac62003c 	sw	v0,60(v1)
    34f4:	ac620040 	sw	v0,64(v1)
    34f8:	ac620044 	sw	v0,68(v1)
    34fc:	24630010 	addiu	v1,v1,16
    3500:	14a4fffa 	bne	a1,a0,34ec <Audio_InitSequencePlayer+0x20>
    3504:	ac620028 	sw	v0,40(v1)
    3508:	90ce0000 	lbu	t6,0(a2)
    350c:	00002025 	move	a0,zero
    3510:	00c01825 	move	v1,a2
    3514:	31d8ff7f 	andi	t8,t6,0xff7f
    3518:	330800df 	andi	t0,t8,0xdf
    351c:	a0d80000 	sb	t8,0(a2)
    3520:	310a00f7 	andi	t2,t0,0xf7
    3524:	a0c80000 	sb	t0,0(a2)
    3528:	314c00ef 	andi	t4,t2,0xef
    352c:	a0ca0000 	sb	t2,0(a2)
    3530:	a0cc0000 	sb	t4,0(a2)
    3534:	318d00fe 	andi	t5,t4,0xfe
    3538:	a0cd0000 	sb	t5,0(a2)
    353c:	24050008 	li	a1,8
    3540:	2402ffff 	li	v0,-1
    3544:	24840004 	addiu	a0,a0,4
    3548:	a0620159 	sb	v0,345(v1)
    354c:	a062015a 	sb	v0,346(v1)
    3550:	a062015b 	sb	v0,347(v1)
    3554:	24630004 	addiu	v1,v1,4
    3558:	1485fffa 	bne	a0,a1,3544 <Audio_InitSequencePlayer+0x78>
    355c:	a0620154 	sb	v0,340(v1)
    3560:	3c013f80 	lui	at,0x3f80
    3564:	44810000 	mtc1	at,$f0
    3568:	240e0060 	li	t6,96
    356c:	a0ce0003 	sb	t6,3(a2)
    3570:	e4c0002c 	swc1	$f0,44(a2)
    3574:	e4c00034 	swc1	$f0,52(a2)
    3578:	afa60018 	sw	a2,24(sp)
    357c:	0c000000 	jal	0 <Audio_GetScriptControlFlowArgument>
    3580:	24c4009c 	addiu	a0,a2,156
    3584:	0c000000 	jal	0 <Audio_GetScriptControlFlowArgument>
    3588:	8fa40018 	lw	a0,24(sp)
    358c:	8fbf0014 	lw	ra,20(sp)
    3590:	27bd0018 	addiu	sp,sp,24
    3594:	03e00008 	jr	ra
    3598:	00000000 	nop

0000359c <Audio_InitSequencePlayers>:
    359c:	27bdffe0 	addiu	sp,sp,-32
    35a0:	afbf001c 	sw	ra,28(sp)
    35a4:	afb10018 	sw	s1,24(sp)
    35a8:	0c000000 	jal	0 <Audio_GetScriptControlFlowArgument>
    35ac:	afb00014 	sw	s0,20(sp)
    35b0:	3c020000 	lui	v0,0x0
    35b4:	3c030000 	lui	v1,0x0
    35b8:	24632000 	addiu	v1,v1,8192
    35bc:	24420000 	addiu	v0,v0,0
    35c0:	904e3ab0 	lbu	t6,15024(v0)
    35c4:	24420080 	addiu	v0,v0,128
    35c8:	0043082b 	sltu	at,v0,v1
    35cc:	31cfff7f 	andi	t7,t6,0xff7f
    35d0:	ac403a80 	sw	zero,14976(v0)
    35d4:	1420fffa 	bnez	at,35c0 <Audio_InitSequencePlayers+0x24>
    35d8:	a04f3a30 	sb	t7,14896(v0)
    35dc:	3c100000 	lui	s0,0x0
    35e0:	3c110000 	lui	s1,0x0
    35e4:	26313ab0 	addiu	s1,s1,15024
    35e8:	26103530 	addiu	s0,s0,13616
    35ec:	0c000000 	jal	0 <Audio_GetScriptControlFlowArgument>
    35f0:	02002025 	move	a0,s0
    35f4:	26100160 	addiu	s0,s0,352
    35f8:	1611fffc 	bne	s0,s1,35ec <Audio_InitSequencePlayers+0x50>
    35fc:	00000000 	nop
    3600:	8fbf001c 	lw	ra,28(sp)
    3604:	8fb00014 	lw	s0,20(sp)
    3608:	8fb10018 	lw	s1,24(sp)
    360c:	03e00008 	jr	ra
    3610:	27bd0020 	addiu	sp,sp,32
	...
