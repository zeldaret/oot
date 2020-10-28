
build/src/overlays/actors/ovl_En_Gb/z_en_gb.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <func_80A2F180>:
       0:	3c0e0000 	lui	t6,0x0
       4:	95ce0f0e 	lhu	t6,3854(t6)
       8:	241870f5 	li	t8,28917
       c:	241970f4 	li	t9,28916
      10:	31cf0040 	andi	t7,t6,0x40
      14:	51e00004 	beqzl	t7,28 <func_80A2F180+0x28>
      18:	a499037e 	sh	t9,894(a0)
      1c:	03e00008 	jr	ra
      20:	a498037e 	sh	t8,894(a0)
      24:	a499037e 	sh	t9,894(a0)
      28:	03e00008 	jr	ra
      2c:	00000000 	nop

00000030 <EnGb_Init>:
      30:	27bdff70 	addiu	sp,sp,-144
      34:	afb30050 	sw	s3,80(sp)
      38:	00a09825 	move	s3,a1
      3c:	afbf005c 	sw	ra,92(sp)
      40:	afb2004c 	sw	s2,76(sp)
      44:	3c050000 	lui	a1,0x0
      48:	00809025 	move	s2,a0
      4c:	afb50058 	sw	s5,88(sp)
      50:	afb40054 	sw	s4,84(sp)
      54:	afb10048 	sw	s1,72(sp)
      58:	afb00044 	sw	s0,68(sp)
      5c:	f7ba0038 	sdc1	$f26,56(sp)
      60:	f7b80030 	sdc1	$f24,48(sp)
      64:	f7b60028 	sdc1	$f22,40(sp)
      68:	f7b40020 	sdc1	$f20,32(sp)
      6c:	afa00084 	sw	zero,132(sp)
      70:	0c000000 	jal	0 <func_80A2F180>
      74:	24a50000 	addiu	a1,a1,0
      78:	02402025 	move	a0,s2
      7c:	0c000000 	jal	0 <func_80A2F180>
      80:	00002825 	move	a1,zero
      84:	3c040601 	lui	a0,0x601
      88:	2484c2d0 	addiu	a0,a0,-15664
      8c:	0c000000 	jal	0 <func_80A2F180>
      90:	27a50084 	addiu	a1,sp,132
      94:	02602025 	move	a0,s3
      98:	26650810 	addiu	a1,s3,2064
      9c:	02403025 	move	a2,s2
      a0:	0c000000 	jal	0 <func_80A2F180>
      a4:	8fa70084 	lw	a3,132(sp)
      a8:	ae42014c 	sw	v0,332(s2)
      ac:	3c060601 	lui	a2,0x601
      b0:	3c070600 	lui	a3,0x600
      b4:	264e01a8 	addiu	t6,s2,424
      b8:	264f01f0 	addiu	t7,s2,496
      bc:	2418000c 	li	t8,12
      c0:	afb80018 	sw	t8,24(sp)
      c4:	afaf0014 	sw	t7,20(sp)
      c8:	afae0010 	sw	t6,16(sp)
      cc:	24e7049c 	addiu	a3,a3,1180
      d0:	24c6c220 	addiu	a2,a2,-15840
      d4:	02602025 	move	a0,s3
      d8:	0c000000 	jal	0 <func_80A2F180>
      dc:	26450164 	addiu	a1,s2,356
      e0:	2650023c 	addiu	s0,s2,572
      e4:	02002825 	move	a1,s0
      e8:	0c000000 	jal	0 <func_80A2F180>
      ec:	02602025 	move	a0,s3
      f0:	3c070000 	lui	a3,0x0
      f4:	24e70000 	addiu	a3,a3,0
      f8:	02602025 	move	a0,s3
      fc:	02002825 	move	a1,s0
     100:	0c000000 	jal	0 <func_80A2F180>
     104:	02403025 	move	a2,s2
     108:	3c100000 	lui	s0,0x0
     10c:	3c140000 	lui	s4,0x0
     110:	26940000 	addiu	s4,s4,0
     114:	26100000 	addiu	s0,s0,0
     118:	26510288 	addiu	s1,s2,648
     11c:	02602025 	move	a0,s3
     120:	0c000000 	jal	0 <func_80A2F180>
     124:	02202825 	move	a1,s1
     128:	02602025 	move	a0,s3
     12c:	02202825 	move	a1,s1
     130:	02403025 	move	a2,s2
     134:	0c000000 	jal	0 <func_80A2F180>
     138:	02003825 	move	a3,s0
     13c:	2610002c 	addiu	s0,s0,44
     140:	0214082b 	sltu	at,s0,s4
     144:	1420fff5 	bnez	at,11c <EnGb_Init+0xec>
     148:	2631004c 	addiu	s1,s1,76
     14c:	26500370 	addiu	s0,s2,880
     150:	02003025 	move	a2,s0
     154:	02602025 	move	a0,s3
     158:	0c000000 	jal	0 <func_80A2F180>
     15c:	266507a8 	addiu	a1,s3,1960
     160:	c6440008 	lwc1	$f4,8(s2)
     164:	c648000c 	lwc1	$f8,12(s2)
     168:	c6500010 	lwc1	$f16,16(s2)
     16c:	4600218d 	trunc.w.s	$f6,$f4
     170:	ae42036c 	sw	v0,876(s2)
     174:	240a00ff 	li	t2,255
     178:	4600428d 	trunc.w.s	$f10,$f8
     17c:	44053000 	mfc1	a1,$f6
     180:	240b00ff 	li	t3,255
     184:	4600848d 	trunc.w.s	$f18,$f16
     188:	44065000 	mfc1	a2,$f10
     18c:	240c00ff 	li	t4,255
     190:	240d00c8 	li	t5,200
     194:	44079000 	mfc1	a3,$f18
     198:	00052c00 	sll	a1,a1,0x10
     19c:	00063400 	sll	a2,a2,0x10
     1a0:	00073c00 	sll	a3,a3,0x10
     1a4:	00073c03 	sra	a3,a3,0x10
     1a8:	00063403 	sra	a2,a2,0x10
     1ac:	00052c03 	sra	a1,a1,0x10
     1b0:	afad001c 	sw	t5,28(sp)
     1b4:	afac0018 	sw	t4,24(sp)
     1b8:	afab0014 	sw	t3,20(sp)
     1bc:	afaa0010 	sw	t2,16(sp)
     1c0:	0c000000 	jal	0 <func_80A2F180>
     1c4:	02002025 	move	a0,s0
     1c8:	4480c000 	mtc1	zero,$f24
     1cc:	3c060000 	lui	a2,0x0
     1d0:	24c60000 	addiu	a2,a2,0
     1d4:	4405c000 	mfc1	a1,$f24
     1d8:	264400b4 	addiu	a0,s2,180
     1dc:	0c000000 	jal	0 <func_80A2F180>
     1e0:	3c07420c 	lui	a3,0x420c
     1e4:	3c053c23 	lui	a1,0x3c23
     1e8:	34a5d70a 	ori	a1,a1,0xd70a
     1ec:	0c000000 	jal	0 <func_80A2F180>
     1f0:	02402025 	move	a0,s2
     1f4:	3c01bf80 	lui	at,0xbf80
     1f8:	44812000 	mtc1	at,$f4
     1fc:	3c0142c8 	lui	at,0x42c8
     200:	240e00ff 	li	t6,255
     204:	44816000 	mtc1	at,$f12
     208:	a24e00ae 	sb	t6,174(s2)
     20c:	e6580068 	swc1	$f24,104(s2)
     210:	e6580060 	swc1	$f24,96(s2)
     214:	0c000000 	jal	0 <func_80A2F180>
     218:	e644006c 	swc1	$f4,108(s2)
     21c:	4600018d 	trunc.w.s	$f6,$f0
     220:	3c0141f0 	lui	at,0x41f0
     224:	4481d000 	mtc1	at,$f26
     228:	3c010000 	lui	at,0x0
     22c:	44083000 	mfc1	t0,$f6
     230:	3c110000 	lui	s1,0x0
     234:	3c150000 	lui	s5,0x0
     238:	25090064 	addiu	t1,t0,100
     23c:	a6490382 	sh	t1,898(s2)
     240:	c4360000 	lwc1	$f22,0(at)
     244:	3c014220 	lui	at,0x4220
     248:	4481a000 	mtc1	at,$f20
     24c:	26b50000 	addiu	s5,s5,0
     250:	26310000 	addiu	s1,s1,0
     254:	02408025 	move	s0,s2
     258:	24140001 	li	s4,1
     25c:	24130003 	li	s3,3
     260:	0c000000 	jal	0 <func_80A2F180>
     264:	4600d306 	mov.s	$f12,$f26
     268:	4600020d 	trunc.w.s	$f8,$f0
     26c:	00006825 	move	t5,zero
     270:	4600a306 	mov.s	$f12,$f20
     274:	440b4000 	mfc1	t3,$f8
     278:	00000000 	nop
     27c:	0173001a 	div	zero,t3,s3
     280:	00006010 	mfhi	t4
     284:	a20c0388 	sb	t4,904(s0)
     288:	c6500024 	lwc1	$f16,36(s2)
     28c:	c62a0000 	lwc1	$f10,0(s1)
     290:	16600002 	bnez	s3,29c <EnGb_Init+0x26c>
     294:	00000000 	nop
     298:	0007000d 	break	0x7
     29c:	2401ffff 	li	at,-1
     2a0:	16610004 	bne	s3,at,2b4 <EnGb_Init+0x284>
     2a4:	3c018000 	lui	at,0x8000
     2a8:	15610002 	bne	t3,at,2b4 <EnGb_Init+0x284>
     2ac:	00000000 	nop
     2b0:	0006000d 	break	0x6
     2b4:	46105080 	add.s	$f2,$f10,$f16
     2b8:	e6020390 	swc1	$f2,912(s0)
     2bc:	e602039c 	swc1	$f2,924(s0)
     2c0:	c6440028 	lwc1	$f4,40(s2)
     2c4:	c6320004 	lwc1	$f18,4(s1)
     2c8:	46049080 	add.s	$f2,$f18,$f4
     2cc:	e6020394 	swc1	$f2,916(s0)
     2d0:	e60203a0 	swc1	$f2,928(s0)
     2d4:	c648002c 	lwc1	$f8,44(s2)
     2d8:	c6260008 	lwc1	$f6,8(s1)
     2dc:	a2140389 	sb	s4,905(s0)
     2e0:	a20d038b 	sb	t5,907(s0)
     2e4:	46083080 	add.s	$f2,$f6,$f8
     2e8:	a200038a 	sb	zero,906(s0)
     2ec:	e61803a8 	swc1	$f24,936(s0)
     2f0:	e61803ac 	swc1	$f24,940(s0)
     2f4:	e6020398 	swc1	$f2,920(s0)
     2f8:	0c000000 	jal	0 <func_80A2F180>
     2fc:	e60203a4 	swc1	$f2,932(s0)
     300:	4600028d 	trunc.w.s	$f10,$f0
     304:	2631000c 	addiu	s1,s1,12
     308:	2610002c 	addiu	s0,s0,44
     30c:	e6160384 	swc1	$f22,900(s0)
     310:	440f5000 	mfc1	t7,$f10
     314:	00000000 	nop
     318:	a60f0362 	sh	t7,866(s0)
     31c:	86180362 	lh	t8,866(s0)
     320:	33190001 	andi	t9,t8,0x1
     324:	1635ffce 	bne	s1,s5,260 <EnGb_Init+0x230>
     328:	a2190360 	sb	t9,864(s0)
     32c:	0c000000 	jal	0 <func_80A2F180>
     330:	00000000 	nop
     334:	461a0402 	mul.s	$f16,$f0,$f26
     338:	3c0142c8 	lui	at,0x42c8
     33c:	44812000 	mtc1	at,$f4
     340:	3c014320 	lui	at,0x4320
     344:	44815000 	mtc1	at,$f10
     348:	46040182 	mul.s	$f6,$f0,$f4
     34c:	240d00c8 	li	t5,200
     350:	a24d0387 	sb	t5,903(s2)
     354:	c64c0024 	lwc1	$f12,36(s2)
     358:	c64e0028 	lwc1	$f14,40(s2)
     35c:	8e46002c 	lw	a2,44(s2)
     360:	4600848d 	trunc.w.s	$f18,$f16
     364:	460a0402 	mul.s	$f16,$f0,$f10
     368:	00003825 	move	a3,zero
     36c:	440b9000 	mfc1	t3,$f18
     370:	4600320d 	trunc.w.s	$f8,$f6
     374:	256c00e1 	addiu	t4,t3,225
     378:	a24c0384 	sb	t4,900(s2)
     37c:	4600848d 	trunc.w.s	$f18,$f16
     380:	44184000 	mfc1	t8,$f8
     384:	440b9000 	mfc1	t3,$f18
     388:	2719009b 	addiu	t9,t8,155
     38c:	a2590385 	sb	t9,901(s2)
     390:	256c005f 	addiu	t4,t3,95
     394:	0c000000 	jal	0 <func_80A2F180>
     398:	a24c0386 	sb	t4,902(s2)
     39c:	86440030 	lh	a0,48(s2)
     3a0:	86450032 	lh	a1,50(s2)
     3a4:	86460034 	lh	a2,52(s2)
     3a8:	0c000000 	jal	0 <func_80A2F180>
     3ac:	24070001 	li	a3,1
     3b0:	3c014230 	lui	at,0x4230
     3b4:	44812000 	mtc1	at,$f4
     3b8:	e7b80074 	swc1	$f24,116(sp)
     3bc:	e7b80070 	swc1	$f24,112(sp)
     3c0:	27a40070 	addiu	a0,sp,112
     3c4:	26450038 	addiu	a1,s2,56
     3c8:	0c000000 	jal	0 <func_80A2F180>
     3cc:	e7a40078 	swc1	$f4,120(sp)
     3d0:	3c01427a 	lui	at,0x427a
     3d4:	44814000 	mtc1	at,$f8
     3d8:	c646003c 	lwc1	$f6,60(s2)
     3dc:	02402025 	move	a0,s2
     3e0:	46083280 	add.s	$f10,$f6,$f8
     3e4:	0c000000 	jal	0 <func_80A2F180>
     3e8:	e64a003c 	swc1	$f10,60(s2)
     3ec:	3c0e0000 	lui	t6,0x0
     3f0:	25ce0000 	addiu	t6,t6,0
     3f4:	ae4e0238 	sw	t6,568(s2)
     3f8:	8fbf005c 	lw	ra,92(sp)
     3fc:	8fb50058 	lw	s5,88(sp)
     400:	8fb40054 	lw	s4,84(sp)
     404:	8fb30050 	lw	s3,80(sp)
     408:	8fb2004c 	lw	s2,76(sp)
     40c:	8fb10048 	lw	s1,72(sp)
     410:	8fb00044 	lw	s0,68(sp)
     414:	d7ba0038 	ldc1	$f26,56(sp)
     418:	d7b80030 	ldc1	$f24,48(sp)
     41c:	d7b60028 	ldc1	$f22,40(sp)
     420:	d7b40020 	ldc1	$f20,32(sp)
     424:	03e00008 	jr	ra
     428:	27bd0090 	addiu	sp,sp,144

0000042c <EnGb_Destroy>:
     42c:	27bdffe8 	addiu	sp,sp,-24
     430:	afa40018 	sw	a0,24(sp)
     434:	00a03825 	move	a3,a1
     438:	00a02025 	move	a0,a1
     43c:	8fa50018 	lw	a1,24(sp)
     440:	afbf0014 	sw	ra,20(sp)
     444:	afa7001c 	sw	a3,28(sp)
     448:	0c000000 	jal	0 <func_80A2F180>
     44c:	24a5023c 	addiu	a1,a1,572
     450:	8fa4001c 	lw	a0,28(sp)
     454:	8fae0018 	lw	t6,24(sp)
     458:	248507a8 	addiu	a1,a0,1960
     45c:	0c000000 	jal	0 <func_80A2F180>
     460:	8dc6036c 	lw	a2,876(t6)
     464:	8fa4001c 	lw	a0,28(sp)
     468:	8faf0018 	lw	t7,24(sp)
     46c:	24850810 	addiu	a1,a0,2064
     470:	0c000000 	jal	0 <func_80A2F180>
     474:	8de6014c 	lw	a2,332(t7)
     478:	8fbf0014 	lw	ra,20(sp)
     47c:	27bd0018 	addiu	sp,sp,24
     480:	03e00008 	jr	ra
     484:	00000000 	nop

00000488 <func_80A2F608>:
     488:	27bdffa8 	addiu	sp,sp,-88
     48c:	afbf002c 	sw	ra,44(sp)
     490:	afb1001c 	sw	s1,28(sp)
     494:	afb40028 	sw	s4,40(sp)
     498:	afb30024 	sw	s3,36(sp)
     49c:	afb20020 	sw	s2,32(sp)
     4a0:	afb00018 	sw	s0,24(sp)
     4a4:	00808825 	move	s1,a0
     4a8:	8c86002c 	lw	a2,44(a0)
     4ac:	c48e0028 	lwc1	$f14,40(a0)
     4b0:	c48c0024 	lwc1	$f12,36(a0)
     4b4:	0c000000 	jal	0 <func_80A2F180>
     4b8:	00003825 	move	a3,zero
     4bc:	86240030 	lh	a0,48(s1)
     4c0:	86250032 	lh	a1,50(s1)
     4c4:	86260034 	lh	a2,52(s1)
     4c8:	0c000000 	jal	0 <func_80A2F180>
     4cc:	24070001 	li	a3,1
     4d0:	44800000 	mtc1	zero,$f0
     4d4:	3c0141c8 	lui	at,0x41c8
     4d8:	44812000 	mtc1	at,$f4
     4dc:	27b4003c 	addiu	s4,sp,60
     4e0:	02802825 	move	a1,s4
     4e4:	27a40048 	addiu	a0,sp,72
     4e8:	e7a0004c 	swc1	$f0,76(sp)
     4ec:	e7a00048 	swc1	$f0,72(sp)
     4f0:	0c000000 	jal	0 <func_80A2F180>
     4f4:	e7a40050 	swc1	$f4,80(sp)
     4f8:	c7a6003c 	lwc1	$f6,60(sp)
     4fc:	3c120000 	lui	s2,0x0
     500:	3c130000 	lui	s3,0x0
     504:	4600320d 	trunc.w.s	$f8,$f6
     508:	26730000 	addiu	s3,s3,0
     50c:	26520000 	addiu	s2,s2,0
     510:	02208025 	move	s0,s1
     514:	440f4000 	mfc1	t7,$f8
     518:	00000000 	nop
     51c:	a62f0282 	sh	t7,642(s1)
     520:	c7aa0040 	lwc1	$f10,64(sp)
     524:	4600540d 	trunc.w.s	$f16,$f10
     528:	44198000 	mfc1	t9,$f16
     52c:	00000000 	nop
     530:	a6390284 	sh	t9,644(s1)
     534:	c7b20044 	lwc1	$f18,68(sp)
     538:	4600910d 	trunc.w.s	$f4,$f18
     53c:	44092000 	mfc1	t1,$f4
     540:	00000000 	nop
     544:	a6290286 	sh	t1,646(s1)
     548:	c62c0024 	lwc1	$f12,36(s1)
     54c:	c62e0028 	lwc1	$f14,40(s1)
     550:	8e26002c 	lw	a2,44(s1)
     554:	0c000000 	jal	0 <func_80A2F180>
     558:	00003825 	move	a3,zero
     55c:	86240030 	lh	a0,48(s1)
     560:	86250032 	lh	a1,50(s1)
     564:	86260034 	lh	a2,52(s1)
     568:	0c000000 	jal	0 <func_80A2F180>
     56c:	24070001 	li	a3,1
     570:	02402025 	move	a0,s2
     574:	0c000000 	jal	0 <func_80A2F180>
     578:	02802825 	move	a1,s4
     57c:	c7a6003c 	lwc1	$f6,60(sp)
     580:	2652000c 	addiu	s2,s2,12
     584:	2610004c 	addiu	s0,s0,76
     588:	4600320d 	trunc.w.s	$f8,$f6
     58c:	440b4000 	mfc1	t3,$f8
     590:	00000000 	nop
     594:	a60b0282 	sh	t3,642(s0)
     598:	c7aa0040 	lwc1	$f10,64(sp)
     59c:	4600540d 	trunc.w.s	$f16,$f10
     5a0:	440d8000 	mfc1	t5,$f16
     5a4:	00000000 	nop
     5a8:	a60d0284 	sh	t5,644(s0)
     5ac:	c7b20044 	lwc1	$f18,68(sp)
     5b0:	4600910d 	trunc.w.s	$f4,$f18
     5b4:	440f2000 	mfc1	t7,$f4
     5b8:	1653ffe3 	bne	s2,s3,548 <func_80A2F608+0xc0>
     5bc:	a60f0286 	sh	t7,646(s0)
     5c0:	8fbf002c 	lw	ra,44(sp)
     5c4:	8fb00018 	lw	s0,24(sp)
     5c8:	8fb1001c 	lw	s1,28(sp)
     5cc:	8fb20020 	lw	s2,32(sp)
     5d0:	8fb30024 	lw	s3,36(sp)
     5d4:	8fb40028 	lw	s4,40(sp)
     5d8:	03e00008 	jr	ra
     5dc:	27bd0058 	addiu	sp,sp,88

000005e0 <func_80A2F760>:
     5e0:	908e038b 	lbu	t6,907(a0)
     5e4:	00801025 	move	v0,a0
     5e8:	51c00004 	beqzl	t6,5fc <func_80A2F760+0x1c>
     5ec:	904f03b7 	lbu	t7,951(v0)
     5f0:	03e00008 	jr	ra
     5f4:	24020001 	li	v0,1
     5f8:	904f03b7 	lbu	t7,951(v0)
     5fc:	51e00004 	beqzl	t7,610 <func_80A2F760+0x30>
     600:	905803e3 	lbu	t8,995(v0)
     604:	03e00008 	jr	ra
     608:	24020001 	li	v0,1
     60c:	905803e3 	lbu	t8,995(v0)
     610:	53000004 	beqzl	t8,624 <func_80A2F760+0x44>
     614:	9059040f 	lbu	t9,1039(v0)
     618:	03e00008 	jr	ra
     61c:	24020001 	li	v0,1
     620:	9059040f 	lbu	t9,1039(v0)
     624:	00001025 	move	v0,zero
     628:	13200003 	beqz	t9,638 <func_80A2F760+0x58>
     62c:	00000000 	nop
     630:	03e00008 	jr	ra
     634:	24020001 	li	v0,1
     638:	03e00008 	jr	ra
     63c:	00000000 	nop

00000640 <func_80A2F7C0>:
     640:	27bdffd8 	addiu	sp,sp,-40
     644:	afa40028 	sw	a0,40(sp)
     648:	afbf0024 	sw	ra,36(sp)
     64c:	3c040601 	lui	a0,0x601
     650:	0c000000 	jal	0 <func_80A2F180>
     654:	2484c8ec 	addiu	a0,a0,-14100
     658:	44822000 	mtc1	v0,$f4
     65c:	44800000 	mtc1	zero,$f0
     660:	8fa40028 	lw	a0,40(sp)
     664:	468021a0 	cvt.s.w	$f6,$f4
     668:	3c050601 	lui	a1,0x601
     66c:	240e0002 	li	t6,2
     670:	44070000 	mfc1	a3,$f0
     674:	afae0014 	sw	t6,20(sp)
     678:	24a5c8ec 	addiu	a1,a1,-14100
     67c:	e7a60010 	swc1	$f6,16(sp)
     680:	3c063f80 	lui	a2,0x3f80
     684:	24840164 	addiu	a0,a0,356
     688:	0c000000 	jal	0 <func_80A2F180>
     68c:	e7a00018 	swc1	$f0,24(sp)
     690:	8fa40028 	lw	a0,40(sp)
     694:	0c000000 	jal	0 <func_80A2F180>
     698:	240528b0 	li	a1,10416
     69c:	8fb80028 	lw	t8,40(sp)
     6a0:	3c0f0000 	lui	t7,0x0
     6a4:	25ef0000 	addiu	t7,t7,0
     6a8:	af0f0238 	sw	t7,568(t8)
     6ac:	8fbf0024 	lw	ra,36(sp)
     6b0:	27bd0028 	addiu	sp,sp,40
     6b4:	03e00008 	jr	ra
     6b8:	00000000 	nop

000006bc <func_80A2F83C>:
     6bc:	27bdffd8 	addiu	sp,sp,-40
     6c0:	afbf001c 	sw	ra,28(sp)
     6c4:	afb00018 	sw	s0,24(sp)
     6c8:	afa5002c 	sw	a1,44(sp)
     6cc:	8caf1c44 	lw	t7,7236(a1)
     6d0:	00808025 	move	s0,a0
     6d4:	0c000000 	jal	0 <func_80A2F180>
     6d8:	afaf0024 	sw	t7,36(sp)
     6dc:	1440000a 	bnez	v0,708 <func_80A2F83C+0x4c>
     6e0:	02002025 	move	a0,s0
     6e4:	86020382 	lh	v0,898(s0)
     6e8:	10400003 	beqz	v0,6f8 <func_80A2F83C+0x3c>
     6ec:	2458ffff 	addiu	t8,v0,-1
     6f0:	10000005 	b	708 <func_80A2F83C+0x4c>
     6f4:	a6180382 	sh	t8,898(s0)
     6f8:	0c000000 	jal	0 <func_80A2F180>
     6fc:	02002025 	move	a0,s0
     700:	1000002e 	b	7bc <func_80A2F83C+0x100>
     704:	8fbf001c 	lw	ra,28(sp)
     708:	0c000000 	jal	0 <func_80A2F180>
     70c:	8fa5002c 	lw	a1,44(sp)
     710:	1040001e 	beqz	v0,78c <func_80A2F83C+0xd0>
     714:	3c0142c8 	lui	at,0x42c8
     718:	0c000000 	jal	0 <func_80A2F180>
     71c:	8fa4002c 	lw	a0,44(sp)
     720:	10400008 	beqz	v0,744 <func_80A2F83C+0x88>
     724:	2401001b 	li	at,27
     728:	1041000c 	beq	v0,at,75c <func_80A2F83C+0xa0>
     72c:	240870f6 	li	t0,28918
     730:	2401001c 	li	at,28
     734:	1041000f 	beq	v0,at,774 <func_80A2F83C+0xb8>
     738:	240b70f7 	li	t3,28919
     73c:	1000001f 	b	7bc <func_80A2F83C+0x100>
     740:	8fbf001c 	lw	ra,28(sp)
     744:	0c000000 	jal	0 <func_80A2F180>
     748:	02002025 	move	a0,s0
     74c:	3c190000 	lui	t9,0x0
     750:	27390000 	addiu	t9,t9,0
     754:	10000018 	b	7b8 <func_80A2F83C+0xfc>
     758:	ae190238 	sw	t9,568(s0)
     75c:	8fa90024 	lw	t1,36(sp)
     760:	3c0a0000 	lui	t2,0x0
     764:	254a0000 	addiu	t2,t2,0
     768:	a528010e 	sh	t0,270(t1)
     76c:	10000012 	b	7b8 <func_80A2F83C+0xfc>
     770:	ae0a0238 	sw	t2,568(s0)
     774:	8fac0024 	lw	t4,36(sp)
     778:	3c0d0000 	lui	t5,0x0
     77c:	25ad0000 	addiu	t5,t5,0
     780:	a58b010e 	sh	t3,270(t4)
     784:	1000000c 	b	7b8 <func_80A2F83C+0xfc>
     788:	ae0d0238 	sw	t5,568(s0)
     78c:	44810000 	mtc1	at,$f0
     790:	c6040090 	lwc1	$f4,144(s0)
     794:	02002025 	move	a0,s0
     798:	8fa5002c 	lw	a1,44(sp)
     79c:	4600203c 	c.lt.s	$f4,$f0
     7a0:	00000000 	nop
     7a4:	45020005 	bc1fl	7bc <func_80A2F83C+0x100>
     7a8:	8fbf001c 	lw	ra,28(sp)
     7ac:	44060000 	mfc1	a2,$f0
     7b0:	0c000000 	jal	0 <func_80A2F180>
     7b4:	2407001b 	li	a3,27
     7b8:	8fbf001c 	lw	ra,28(sp)
     7bc:	8fb00018 	lw	s0,24(sp)
     7c0:	27bd0028 	addiu	sp,sp,40
     7c4:	03e00008 	jr	ra
     7c8:	00000000 	nop

000007cc <func_80A2F94C>:
     7cc:	27bdffe8 	addiu	sp,sp,-24
     7d0:	afbf0014 	sw	ra,20(sp)
     7d4:	afa40018 	sw	a0,24(sp)
     7d8:	afa5001c 	sw	a1,28(sp)
     7dc:	0c000000 	jal	0 <func_80A2F180>
     7e0:	24a420d8 	addiu	a0,a1,8408
     7e4:	24010006 	li	at,6
     7e8:	54410012 	bnel	v0,at,834 <func_80A2F94C+0x68>
     7ec:	8fbf0014 	lw	ra,20(sp)
     7f0:	0c000000 	jal	0 <func_80A2F180>
     7f4:	8fa4001c 	lw	a0,28(sp)
     7f8:	1040000d 	beqz	v0,830 <func_80A2F94C+0x64>
     7fc:	3c030000 	lui	v1,0x0
     800:	24630000 	addiu	v1,v1,0
     804:	94620f0e 	lhu	v0,3854(v1)
     808:	304e0040 	andi	t6,v0,0x40
     80c:	15c00002 	bnez	t6,818 <func_80A2F94C+0x4c>
     810:	344f0040 	ori	t7,v0,0x40
     814:	a46f0f0e 	sh	t7,3854(v1)
     818:	0c000000 	jal	0 <func_80A2F180>
     81c:	8fa40018 	lw	a0,24(sp)
     820:	8fb90018 	lw	t9,24(sp)
     824:	3c180000 	lui	t8,0x0
     828:	27180000 	addiu	t8,t8,0
     82c:	af380238 	sw	t8,568(t9)
     830:	8fbf0014 	lw	ra,20(sp)
     834:	27bd0018 	addiu	sp,sp,24
     838:	03e00008 	jr	ra
     83c:	00000000 	nop

00000840 <func_80A2F9C0>:
     840:	27bdffe8 	addiu	sp,sp,-24
     844:	afbf0014 	sw	ra,20(sp)
     848:	afa40018 	sw	a0,24(sp)
     84c:	afa5001c 	sw	a1,28(sp)
     850:	0c000000 	jal	0 <func_80A2F180>
     854:	24a420d8 	addiu	a0,a1,8408
     858:	24010006 	li	at,6
     85c:	54410019 	bnel	v0,at,8c4 <func_80A2F9C0+0x84>
     860:	8fbf0014 	lw	ra,20(sp)
     864:	0c000000 	jal	0 <func_80A2F180>
     868:	8fa4001c 	lw	a0,28(sp)
     86c:	10400014 	beqz	v0,8c0 <func_80A2F9C0+0x80>
     870:	3c030000 	lui	v1,0x0
     874:	24630000 	addiu	v1,v1,0
     878:	94620f0e 	lhu	v0,3854(v1)
     87c:	304e0040 	andi	t6,v0,0x40
     880:	15c00002 	bnez	t6,88c <func_80A2F9C0+0x4c>
     884:	344f0040 	ori	t7,v0,0x40
     888:	a46f0f0e 	sh	t7,3854(v1)
     88c:	0c000000 	jal	0 <func_80A2F180>
     890:	8fa40018 	lw	a0,24(sp)
     894:	8fa4001c 	lw	a0,28(sp)
     898:	24060014 	li	a2,20
     89c:	2407001e 	li	a3,30
     8a0:	0c000000 	jal	0 <func_80A2F180>
     8a4:	8c851c44 	lw	a1,7236(a0)
     8a8:	0c000000 	jal	0 <func_80A2F180>
     8ac:	2404000a 	li	a0,10
     8b0:	8fa80018 	lw	t0,24(sp)
     8b4:	3c190000 	lui	t9,0x0
     8b8:	27390000 	addiu	t9,t9,0
     8bc:	ad190238 	sw	t9,568(t0)
     8c0:	8fbf0014 	lw	ra,20(sp)
     8c4:	27bd0018 	addiu	sp,sp,24
     8c8:	03e00008 	jr	ra
     8cc:	00000000 	nop

000008d0 <func_80A2FA50>:
     8d0:	27bdffe0 	addiu	sp,sp,-32
     8d4:	afb10018 	sw	s1,24(sp)
     8d8:	00808825 	move	s1,a0
     8dc:	afbf001c 	sw	ra,28(sp)
     8e0:	afb00014 	sw	s0,20(sp)
     8e4:	00a08025 	move	s0,a1
     8e8:	0c000000 	jal	0 <func_80A2F180>
     8ec:	24a420d8 	addiu	a0,a1,8408
     8f0:	24010006 	li	at,6
     8f4:	5441002e 	bnel	v0,at,9b0 <func_80A2FA50+0xe0>
     8f8:	8fbf001c 	lw	ra,28(sp)
     8fc:	0c000000 	jal	0 <func_80A2F180>
     900:	02002025 	move	a0,s0
     904:	10400029 	beqz	v0,9ac <func_80A2FA50+0xdc>
     908:	3c020000 	lui	v0,0x0
     90c:	24420000 	addiu	v0,v0,0
     910:	94430f0e 	lhu	v1,3854(v0)
     914:	306e0040 	andi	t6,v1,0x40
     918:	15c00002 	bnez	t6,924 <func_80A2FA50+0x54>
     91c:	346f0040 	ori	t7,v1,0x40
     920:	a44f0f0e 	sh	t7,3854(v0)
     924:	0c000000 	jal	0 <func_80A2F180>
     928:	02202025 	move	a0,s1
     92c:	02002025 	move	a0,s0
     930:	8e051c44 	lw	a1,7236(s0)
     934:	24060014 	li	a2,20
     938:	0c000000 	jal	0 <func_80A2F180>
     93c:	2407001e 	li	a3,30
     940:	0c000000 	jal	0 <func_80A2F180>
     944:	24040032 	li	a0,50
     948:	3c020000 	lui	v0,0x0
     94c:	24420000 	addiu	v0,v0,0
     950:	8c580ebc 	lw	t8,3772(v0)
     954:	240103e8 	li	at,1000
     958:	240a70f8 	li	t2,28920
     95c:	27190064 	addiu	t9,t8,100
     960:	13210009 	beq	t9,at,988 <func_80A2FA50+0xb8>
     964:	ac590ebc 	sw	t9,3772(v0)
     968:	2b21044d 	slti	at,t9,1101
     96c:	14200003 	bnez	at,97c <func_80A2FA50+0xac>
     970:	3c090000 	lui	t1,0x0
     974:	2408044c 	li	t0,1100
     978:	ac480ebc 	sw	t0,3772(v0)
     97c:	25290000 	addiu	t1,t1,0
     980:	1000000a 	b	9ac <func_80A2FA50+0xdc>
     984:	ae290238 	sw	t1,568(s1)
     988:	8e021c44 	lw	v0,7236(s0)
     98c:	02002025 	move	a0,s0
     990:	3145ffff 	andi	a1,t2,0xffff
     994:	a0400693 	sb	zero,1683(v0)
     998:	0c000000 	jal	0 <func_80A2F180>
     99c:	a62a037e 	sh	t2,894(s1)
     9a0:	3c0b0000 	lui	t3,0x0
     9a4:	256b0000 	addiu	t3,t3,0
     9a8:	ae2b0238 	sw	t3,568(s1)
     9ac:	8fbf001c 	lw	ra,28(sp)
     9b0:	8fb00014 	lw	s0,20(sp)
     9b4:	8fb10018 	lw	s1,24(sp)
     9b8:	03e00008 	jr	ra
     9bc:	27bd0020 	addiu	sp,sp,32

000009c0 <func_80A2FB40>:
     9c0:	27bdffe0 	addiu	sp,sp,-32
     9c4:	afbf001c 	sw	ra,28(sp)
     9c8:	afa40020 	sw	a0,32(sp)
     9cc:	afa50024 	sw	a1,36(sp)
     9d0:	0c000000 	jal	0 <func_80A2F180>
     9d4:	24a420d8 	addiu	a0,a1,8408
     9d8:	24010006 	li	at,6
     9dc:	54410011 	bnel	v0,at,a24 <func_80A2FB40+0x64>
     9e0:	8fbf001c 	lw	ra,28(sp)
     9e4:	0c000000 	jal	0 <func_80A2F180>
     9e8:	8fa40024 	lw	a0,36(sp)
     9ec:	1040000c 	beqz	v0,a20 <func_80A2FB40+0x60>
     9f0:	8fa40020 	lw	a0,32(sp)
     9f4:	3c014120 	lui	at,0x4120
     9f8:	44812000 	mtc1	at,$f4
     9fc:	8fa50024 	lw	a1,36(sp)
     a00:	2406000f 	li	a2,15
     a04:	3c0742c8 	lui	a3,0x42c8
     a08:	0c000000 	jal	0 <func_80A2F180>
     a0c:	e7a40010 	swc1	$f4,16(sp)
     a10:	8faf0020 	lw	t7,32(sp)
     a14:	3c0e0000 	lui	t6,0x0
     a18:	25ce0000 	addiu	t6,t6,0
     a1c:	adee0238 	sw	t6,568(t7)
     a20:	8fbf001c 	lw	ra,28(sp)
     a24:	27bd0020 	addiu	sp,sp,32
     a28:	03e00008 	jr	ra
     a2c:	00000000 	nop

00000a30 <func_80A2FBB0>:
     a30:	27bdffe0 	addiu	sp,sp,-32
     a34:	afbf001c 	sw	ra,28(sp)
     a38:	afa50024 	sw	a1,36(sp)
     a3c:	0c000000 	jal	0 <func_80A2F180>
     a40:	afa40020 	sw	a0,32(sp)
     a44:	10400006 	beqz	v0,a60 <func_80A2FBB0+0x30>
     a48:	8fa40020 	lw	a0,32(sp)
     a4c:	3c0e0000 	lui	t6,0x0
     a50:	25ce0000 	addiu	t6,t6,0
     a54:	ac800118 	sw	zero,280(a0)
     a58:	10000008 	b	a7c <func_80A2FBB0+0x4c>
     a5c:	ac8e0238 	sw	t6,568(a0)
     a60:	3c014120 	lui	at,0x4120
     a64:	44812000 	mtc1	at,$f4
     a68:	8fa50024 	lw	a1,36(sp)
     a6c:	2406000f 	li	a2,15
     a70:	3c0742c8 	lui	a3,0x42c8
     a74:	0c000000 	jal	0 <func_80A2F180>
     a78:	e7a40010 	swc1	$f4,16(sp)
     a7c:	8fbf001c 	lw	ra,28(sp)
     a80:	27bd0020 	addiu	sp,sp,32
     a84:	03e00008 	jr	ra
     a88:	00000000 	nop

00000a8c <func_80A2FC0C>:
     a8c:	27bdffe8 	addiu	sp,sp,-24
     a90:	afbf0014 	sw	ra,20(sp)
     a94:	afa40018 	sw	a0,24(sp)
     a98:	afa5001c 	sw	a1,28(sp)
     a9c:	0c000000 	jal	0 <func_80A2F180>
     aa0:	24a420d8 	addiu	a0,a1,8408
     aa4:	24010006 	li	at,6
     aa8:	5441000e 	bnel	v0,at,ae4 <func_80A2FC0C+0x58>
     aac:	8fbf0014 	lw	ra,20(sp)
     ab0:	0c000000 	jal	0 <func_80A2F180>
     ab4:	8fa4001c 	lw	a0,28(sp)
     ab8:	10400009 	beqz	v0,ae0 <func_80A2FC0C+0x54>
     abc:	8fa40018 	lw	a0,24(sp)
     ac0:	0c000000 	jal	0 <func_80A2F180>
     ac4:	8fa5001c 	lw	a1,28(sp)
     ac8:	0c000000 	jal	0 <func_80A2F180>
     acc:	8fa40018 	lw	a0,24(sp)
     ad0:	8faf0018 	lw	t7,24(sp)
     ad4:	3c0e0000 	lui	t6,0x0
     ad8:	25ce0000 	addiu	t6,t6,0
     adc:	adee0238 	sw	t6,568(t7)
     ae0:	8fbf0014 	lw	ra,20(sp)
     ae4:	27bd0018 	addiu	sp,sp,24
     ae8:	03e00008 	jr	ra
     aec:	00000000 	nop

00000af0 <func_80A2FC70>:
     af0:	27bdffd0 	addiu	sp,sp,-48
     af4:	afb00028 	sw	s0,40(sp)
     af8:	00808025 	move	s0,a0
     afc:	afbf002c 	sw	ra,44(sp)
     b00:	3c040601 	lui	a0,0x601
     b04:	afa50034 	sw	a1,52(sp)
     b08:	0c000000 	jal	0 <func_80A2F180>
     b0c:	2484c8ec 	addiu	a0,a0,-14100
     b10:	44822000 	mtc1	v0,$f4
     b14:	c600017c 	lwc1	$f0,380(s0)
     b18:	3c040600 	lui	a0,0x600
     b1c:	468021a0 	cvt.s.w	$f6,$f4
     b20:	3c014190 	lui	at,0x4190
     b24:	46060032 	c.eq.s	$f0,$f6
     b28:	00000000 	nop
     b2c:	45020014 	bc1fl	b80 <func_80A2FC70+0x90>
     b30:	44818000 	mtc1	at,$f16
     b34:	0c000000 	jal	0 <func_80A2F180>
     b38:	2484049c 	addiu	a0,a0,1180
     b3c:	44824000 	mtc1	v0,$f8
     b40:	44800000 	mtc1	zero,$f0
     b44:	3c050600 	lui	a1,0x600
     b48:	468042a0 	cvt.s.w	$f10,$f8
     b4c:	44070000 	mfc1	a3,$f0
     b50:	24a5049c 	addiu	a1,a1,1180
     b54:	26040164 	addiu	a0,s0,356
     b58:	3c063f80 	lui	a2,0x3f80
     b5c:	afa00014 	sw	zero,20(sp)
     b60:	e7aa0010 	swc1	$f10,16(sp)
     b64:	0c000000 	jal	0 <func_80A2F180>
     b68:	e7a00018 	swc1	$f0,24(sp)
     b6c:	3c0e0000 	lui	t6,0x0
     b70:	25ce0000 	addiu	t6,t6,0
     b74:	1000001a 	b	be0 <func_80A2FC70+0xf0>
     b78:	ae0e0238 	sw	t6,568(s0)
     b7c:	44818000 	mtc1	at,$f16
     b80:	24030003 	li	v1,3
     b84:	24040001 	li	a0,1
     b88:	46008032 	c.eq.s	$f16,$f0
     b8c:	3c014416 	lui	at,0x4416
     b90:	45020014 	bc1fl	be4 <func_80A2FC70+0xf4>
     b94:	8fbf002c 	lw	ra,44(sp)
     b98:	44816000 	mtc1	at,$f12
     b9c:	a20303b5 	sb	v1,949(s0)
     ba0:	a20403b7 	sb	a0,951(s0)
     ba4:	a20303e1 	sb	v1,993(s0)
     ba8:	a20403e3 	sb	a0,995(s0)
     bac:	a203040d 	sb	v1,1037(s0)
     bb0:	a204040f 	sb	a0,1039(s0)
     bb4:	a2030389 	sb	v1,905(s0)
     bb8:	0c000000 	jal	0 <func_80A2F180>
     bbc:	a204038b 	sb	a0,907(s0)
     bc0:	4600048d 	trunc.w.s	$f18,$f0
     bc4:	02002025 	move	a0,s0
     bc8:	24052873 	li	a1,10355
     bcc:	44089000 	mfc1	t0,$f18
     bd0:	00000000 	nop
     bd4:	25090258 	addiu	t1,t0,600
     bd8:	0c000000 	jal	0 <func_80A2F180>
     bdc:	a6090382 	sh	t1,898(s0)
     be0:	8fbf002c 	lw	ra,44(sp)
     be4:	8fb00028 	lw	s0,40(sp)
     be8:	27bd0030 	addiu	sp,sp,48
     bec:	03e00008 	jr	ra
     bf0:	00000000 	nop

00000bf4 <EnGb_Update>:
     bf4:	27bdffd0 	addiu	sp,sp,-48
     bf8:	afbf002c 	sw	ra,44(sp)
     bfc:	afb50028 	sw	s5,40(sp)
     c00:	afb40024 	sw	s4,36(sp)
     c04:	afb30020 	sw	s3,32(sp)
     c08:	afb2001c 	sw	s2,28(sp)
     c0c:	afb10018 	sw	s1,24(sp)
     c10:	afb00014 	sw	s0,20(sp)
     c14:	848e0380 	lh	t6,896(a0)
     c18:	00809025 	move	s2,a0
     c1c:	00a09825 	move	s3,a1
     c20:	25cf0001 	addiu	t7,t6,1
     c24:	a48f0380 	sh	t7,896(a0)
     c28:	0c000000 	jal	0 <func_80A2F180>
     c2c:	24840164 	addiu	a0,a0,356
     c30:	8e590238 	lw	t9,568(s2)
     c34:	02402025 	move	a0,s2
     c38:	02602825 	move	a1,s3
     c3c:	0320f809 	jalr	t9
     c40:	00000000 	nop
     c44:	9658037e 	lhu	t8,894(s2)
     c48:	02402025 	move	a0,s2
     c4c:	0c000000 	jal	0 <func_80A2F180>
     c50:	a658010e 	sh	t8,270(s2)
     c54:	3c010001 	lui	at,0x1
     c58:	34211e60 	ori	at,at,0x1e60
     c5c:	0261a021 	addu	s4,s3,at
     c60:	02802825 	move	a1,s4
     c64:	02602025 	move	a0,s3
     c68:	0c000000 	jal	0 <func_80A2F180>
     c6c:	2646023c 	addiu	a2,s2,572
     c70:	00008025 	move	s0,zero
     c74:	26510288 	addiu	s1,s2,648
     c78:	241500e4 	li	s5,228
     c7c:	02602025 	move	a0,s3
     c80:	02802825 	move	a1,s4
     c84:	0c000000 	jal	0 <func_80A2F180>
     c88:	02203025 	move	a2,s1
     c8c:	2610004c 	addiu	s0,s0,76
     c90:	1615fffa 	bne	s0,s5,c7c <EnGb_Update+0x88>
     c94:	2631004c 	addiu	s1,s1,76
     c98:	0c000000 	jal	0 <func_80A2F180>
     c9c:	00000000 	nop
     ca0:	3c0141f0 	lui	at,0x41f0
     ca4:	44812000 	mtc1	at,$f4
     ca8:	3c0142c8 	lui	at,0x42c8
     cac:	44815000 	mtc1	at,$f10
     cb0:	46040182 	mul.s	$f6,$f0,$f4
     cb4:	3c014320 	lui	at,0x4320
     cb8:	44812000 	mtc1	at,$f4
     cbc:	460a0402 	mul.s	$f16,$f0,$f10
     cc0:	240d00c8 	li	t5,200
     cc4:	a24d0387 	sb	t5,903(s2)
     cc8:	02402025 	move	a0,s2
     ccc:	02602825 	move	a1,s3
     cd0:	4600320d 	trunc.w.s	$f8,$f6
     cd4:	46040182 	mul.s	$f6,$f0,$f4
     cd8:	440b4000 	mfc1	t3,$f8
     cdc:	4600848d 	trunc.w.s	$f18,$f16
     ce0:	256c00e1 	addiu	t4,t3,225
     ce4:	a24c0384 	sb	t4,900(s2)
     ce8:	4600320d 	trunc.w.s	$f8,$f6
     cec:	44199000 	mfc1	t9,$f18
     cf0:	440b4000 	mfc1	t3,$f8
     cf4:	2738009b 	addiu	t8,t9,155
     cf8:	a2580385 	sb	t8,901(s2)
     cfc:	256c005f 	addiu	t4,t3,95
     d00:	0c000000 	jal	0 <func_80A2F180>
     d04:	a24c0386 	sb	t4,902(s2)
     d08:	8fbf002c 	lw	ra,44(sp)
     d0c:	8fb00014 	lw	s0,20(sp)
     d10:	8fb10018 	lw	s1,24(sp)
     d14:	8fb2001c 	lw	s2,28(sp)
     d18:	8fb30020 	lw	s3,32(sp)
     d1c:	8fb40024 	lw	s4,36(sp)
     d20:	8fb50028 	lw	s5,40(sp)
     d24:	03e00008 	jr	ra
     d28:	27bd0030 	addiu	sp,sp,48

00000d2c <EnGb_Draw>:
     d2c:	27bdffa8 	addiu	sp,sp,-88
     d30:	afb10028 	sw	s1,40(sp)
     d34:	00a08825 	move	s1,a1
     d38:	afbf002c 	sw	ra,44(sp)
     d3c:	afb00024 	sw	s0,36(sp)
     d40:	8ca50000 	lw	a1,0(a1)
     d44:	00808025 	move	s0,a0
     d48:	3c060000 	lui	a2,0x0
     d4c:	24c60000 	addiu	a2,a2,0
     d50:	27a4003c 	addiu	a0,sp,60
     d54:	240702fb 	li	a3,763
     d58:	0c000000 	jal	0 <func_80A2F180>
     d5c:	afa5004c 	sw	a1,76(sp)
     d60:	0c000000 	jal	0 <func_80A2F180>
     d64:	8e240000 	lw	a0,0(s1)
     d68:	8fa8004c 	lw	t0,76(sp)
     d6c:	3c0fe700 	lui	t7,0xe700
     d70:	3c19fb00 	lui	t9,0xfb00
     d74:	8d0302c0 	lw	v1,704(t0)
     d78:	26040370 	addiu	a0,s0,880
     d7c:	246e0008 	addiu	t6,v1,8
     d80:	ad0e02c0 	sw	t6,704(t0)
     d84:	ac600004 	sw	zero,4(v1)
     d88:	ac6f0000 	sw	t7,0(v1)
     d8c:	8d0302c0 	lw	v1,704(t0)
     d90:	24780008 	addiu	t8,v1,8
     d94:	ad1802c0 	sw	t8,704(t0)
     d98:	ac790000 	sw	t9,0(v1)
     d9c:	920d0385 	lbu	t5,901(s0)
     da0:	920a0384 	lbu	t2,900(s0)
     da4:	92190386 	lbu	t9,902(s0)
     da8:	000d7400 	sll	t6,t5,0x10
     dac:	000a5e00 	sll	t3,t2,0x18
     db0:	016e7825 	or	t7,t3,t6
     db4:	00194a00 	sll	t1,t9,0x8
     db8:	01e95025 	or	t2,t7,t1
     dbc:	354c00ff 	ori	t4,t2,0xff
     dc0:	ac6c0004 	sw	t4,4(v1)
     dc4:	92180384 	lbu	t8,900(s0)
     dc8:	c610002c 	lwc1	$f16,44(s0)
     dcc:	c6080028 	lwc1	$f8,40(s0)
     dd0:	c6040024 	lwc1	$f4,36(s0)
     dd4:	afb80010 	sw	t8,16(sp)
     dd8:	92190385 	lbu	t9,901(s0)
     ddc:	4600848d 	trunc.w.s	$f18,$f16
     de0:	afb90014 	sw	t9,20(sp)
     de4:	4600428d 	trunc.w.s	$f10,$f8
     de8:	920f0386 	lbu	t7,902(s0)
     dec:	44079000 	mfc1	a3,$f18
     df0:	4600218d 	trunc.w.s	$f6,$f4
     df4:	44065000 	mfc1	a2,$f10
     df8:	afaf0018 	sw	t7,24(sp)
     dfc:	92090387 	lbu	t1,903(s0)
     e00:	44053000 	mfc1	a1,$f6
     e04:	00073c00 	sll	a3,a3,0x10
     e08:	00063400 	sll	a2,a2,0x10
     e0c:	00052c00 	sll	a1,a1,0x10
     e10:	00052c03 	sra	a1,a1,0x10
     e14:	00063403 	sra	a2,a2,0x10
     e18:	00073c03 	sra	a3,a3,0x10
     e1c:	0c000000 	jal	0 <func_80A2F180>
     e20:	afa9001c 	sw	t1,28(sp)
     e24:	8e050168 	lw	a1,360(s0)
     e28:	8e060184 	lw	a2,388(s0)
     e2c:	92070166 	lbu	a3,358(s0)
     e30:	afb00018 	sw	s0,24(sp)
     e34:	afa00014 	sw	zero,20(sp)
     e38:	afa00010 	sw	zero,16(sp)
     e3c:	0c000000 	jal	0 <func_80A2F180>
     e40:	02202025 	move	a0,s1
     e44:	02002025 	move	a0,s0
     e48:	0c000000 	jal	0 <func_80A2F180>
     e4c:	02202825 	move	a1,s1
     e50:	3c060000 	lui	a2,0x0
     e54:	24c60000 	addiu	a2,a2,0
     e58:	27a4003c 	addiu	a0,sp,60
     e5c:	8e250000 	lw	a1,0(s1)
     e60:	0c000000 	jal	0 <func_80A2F180>
     e64:	2407031c 	li	a3,796
     e68:	8fbf002c 	lw	ra,44(sp)
     e6c:	8fb00024 	lw	s0,36(sp)
     e70:	8fb10028 	lw	s1,40(sp)
     e74:	03e00008 	jr	ra
     e78:	27bd0058 	addiu	sp,sp,88

00000e7c <func_80A2FFFC>:
     e7c:	27bdff98 	addiu	sp,sp,-104
     e80:	f7be0040 	sdc1	$f30,64(sp)
     e84:	3c010000 	lui	at,0x0
     e88:	c43e0000 	lwc1	$f30,0(at)
     e8c:	f7bc0038 	sdc1	$f28,56(sp)
     e90:	3c010000 	lui	at,0x0
     e94:	c43c0000 	lwc1	$f28,0(at)
     e98:	f7ba0030 	sdc1	$f26,48(sp)
     e9c:	3c014270 	lui	at,0x4270
     ea0:	4481d000 	mtc1	at,$f26
     ea4:	f7b80028 	sdc1	$f24,40(sp)
     ea8:	f7b60020 	sdc1	$f22,32(sp)
     eac:	3c013f80 	lui	at,0x3f80
     eb0:	afb60060 	sw	s6,96(sp)
     eb4:	afb5005c 	sw	s5,92(sp)
     eb8:	afb40058 	sw	s4,88(sp)
     ebc:	afb30054 	sw	s3,84(sp)
     ec0:	afb20050 	sw	s2,80(sp)
     ec4:	afb00048 	sw	s0,72(sp)
     ec8:	4481c000 	mtc1	at,$f24
     ecc:	4480b000 	mtc1	zero,$f22
     ed0:	0080a025 	move	s4,a0
     ed4:	afbf0064 	sw	ra,100(sp)
     ed8:	afb1004c 	sw	s1,76(sp)
     edc:	f7b40018 	sdc1	$f20,24(sp)
     ee0:	afa5006c 	sw	a1,108(sp)
     ee4:	00808025 	move	s0,a0
     ee8:	00009025 	move	s2,zero
     eec:	24130001 	li	s3,1
     ef0:	24150001 	li	s5,1
     ef4:	24160003 	li	s6,3
     ef8:	92020389 	lbu	v0,905(s0)
     efc:	3c063ca3 	lui	a2,0x3ca3
     f00:	34c6d70a 	ori	a2,a2,0xd70a
     f04:	10400009 	beqz	v0,f2c <func_80A2FFFC+0xb0>
     f08:	260403a8 	addiu	a0,s0,936
     f0c:	10550022 	beq	v0,s5,f98 <func_80A2FFFC+0x11c>
     f10:	24010002 	li	at,2
     f14:	1041002b 	beq	v0,at,fc4 <func_80A2FFFC+0x148>
     f18:	260403a8 	addiu	a0,s0,936
     f1c:	1056004a 	beq	v0,s6,1048 <func_80A2FFFC+0x1cc>
     f20:	260403a8 	addiu	a0,s0,936
     f24:	1000005e 	b	10a0 <func_80A2FFFC+0x224>
     f28:	c60203a8 	lwc1	$f2,936(s0)
     f2c:	4405c000 	mfc1	a1,$f24
     f30:	8e0703ac 	lw	a3,940(s0)
     f34:	0c000000 	jal	0 <func_80A2F180>
     f38:	261103ac 	addiu	s1,s0,940
     f3c:	4405c000 	mfc1	a1,$f24
     f40:	3c063a83 	lui	a2,0x3a83
     f44:	4407c000 	mfc1	a3,$f24
     f48:	34c6126f 	ori	a2,a2,0x126f
     f4c:	0c000000 	jal	0 <func_80A2F180>
     f50:	02202025 	move	a0,s1
     f54:	3c010000 	lui	at,0x0
     f58:	c4240000 	lwc1	$f4,0(at)
     f5c:	c60003b0 	lwc1	$f0,944(s0)
     f60:	c60203a8 	lwc1	$f2,936(s0)
     f64:	240e0002 	li	t6,2
     f68:	46040181 	sub.s	$f6,$f0,$f4
     f6c:	4602303e 	c.le.s	$f6,$f2
     f70:	00000000 	nop
     f74:	4500004a 	bc1f	10a0 <func_80A2FFFC+0x224>
     f78:	00000000 	nop
     f7c:	e60003a8 	swc1	$f0,936(s0)
     f80:	e61603ac 	swc1	$f22,940(s0)
     f84:	a2130389 	sb	s3,905(s0)
     f88:	a20e038a 	sb	t6,906(s0)
     f8c:	c60203a8 	lwc1	$f2,936(s0)
     f90:	10000043 	b	10a0 <func_80A2FFFC+0x224>
     f94:	a600038e 	sh	zero,910(s0)
     f98:	8602038e 	lh	v0,910(s0)
     f9c:	10400003 	beqz	v0,fac <func_80A2FFFC+0x130>
     fa0:	244fffff 	addiu	t7,v0,-1
     fa4:	10000005 	b	fbc <func_80A2FFFC+0x140>
     fa8:	a60f038e 	sh	t7,910(s0)
     fac:	9218038a 	lbu	t8,906(s0)
     fb0:	a200038b 	sb	zero,907(s0)
     fb4:	e61603ac 	swc1	$f22,940(s0)
     fb8:	a2180389 	sb	t8,905(s0)
     fbc:	10000038 	b	10a0 <func_80A2FFFC+0x224>
     fc0:	c60203a8 	lwc1	$f2,936(s0)
     fc4:	4405b000 	mfc1	a1,$f22
     fc8:	3c063ca3 	lui	a2,0x3ca3
     fcc:	34c6d70a 	ori	a2,a2,0xd70a
     fd0:	8e0703ac 	lw	a3,940(s0)
     fd4:	0c000000 	jal	0 <func_80A2F180>
     fd8:	261103ac 	addiu	s1,s0,940
     fdc:	4405c000 	mfc1	a1,$f24
     fe0:	3c063a83 	lui	a2,0x3a83
     fe4:	4407c000 	mfc1	a3,$f24
     fe8:	34c6126f 	ori	a2,a2,0x126f
     fec:	0c000000 	jal	0 <func_80A2F180>
     ff0:	02202025 	move	a0,s1
     ff4:	c60203a8 	lwc1	$f2,936(s0)
     ff8:	461c103e 	c.le.s	$f2,$f28
     ffc:	00000000 	nop
    1000:	45000027 	bc1f	10a0 <func_80A2FFFC+0x224>
    1004:	00000000 	nop
    1008:	c60803b0 	lwc1	$f8,944(s0)
    100c:	461e4280 	add.s	$f10,$f8,$f30
    1010:	e60a03b0 	swc1	$f10,944(s0)
    1014:	c61003b0 	lwc1	$f16,944(s0)
    1018:	4610c03c 	c.lt.s	$f24,$f16
    101c:	00000000 	nop
    1020:	45020003 	bc1fl	1030 <func_80A2FFFC+0x1b4>
    1024:	e61603a8 	swc1	$f22,936(s0)
    1028:	e61803b0 	swc1	$f24,944(s0)
    102c:	e61603a8 	swc1	$f22,936(s0)
    1030:	e61603ac 	swc1	$f22,940(s0)
    1034:	a2130389 	sb	s3,905(s0)
    1038:	a200038a 	sb	zero,906(s0)
    103c:	c60203a8 	lwc1	$f2,936(s0)
    1040:	10000017 	b	10a0 <func_80A2FFFC+0x224>
    1044:	a600038e 	sh	zero,910(s0)
    1048:	4405b000 	mfc1	a1,$f22
    104c:	4407c000 	mfc1	a3,$f24
    1050:	0c000000 	jal	0 <func_80A2F180>
    1054:	3c063f00 	lui	a2,0x3f00
    1058:	c60203a8 	lwc1	$f2,936(s0)
    105c:	461c103e 	c.le.s	$f2,$f28
    1060:	00000000 	nop
    1064:	4500000e 	bc1f	10a0 <func_80A2FFFC+0x224>
    1068:	00000000 	nop
    106c:	e61e03b0 	swc1	$f30,944(s0)
    1070:	e61603a8 	swc1	$f22,936(s0)
    1074:	e61603ac 	swc1	$f22,940(s0)
    1078:	a2130389 	sb	s3,905(s0)
    107c:	a200038a 	sb	zero,906(s0)
    1080:	0c000000 	jal	0 <func_80A2F180>
    1084:	4600d306 	mov.s	$f12,$f26
    1088:	4600048d 	trunc.w.s	$f18,$f0
    108c:	c60203a8 	lwc1	$f2,936(s0)
    1090:	440a9000 	mfc1	t2,$f18
    1094:	00000000 	nop
    1098:	254b003c 	addiu	t3,t2,60
    109c:	a60b038e 	sh	t3,910(s0)
    10a0:	461a1502 	mul.s	$f20,$f2,$f26
    10a4:	52400004 	beqzl	s2,10b8 <func_80A2FFFC+0x23c>
    10a8:	c60603a0 	lwc1	$f6,928(s0)
    10ac:	16560009 	bne	s2,s6,10d4 <func_80A2FFFC+0x258>
    10b0:	00000000 	nop
    10b4:	c60603a0 	lwc1	$f6,928(s0)
    10b8:	c604039c 	lwc1	$f4,924(s0)
    10bc:	c60a03a4 	lwc1	$f10,932(s0)
    10c0:	46143200 	add.s	$f8,$f6,$f20
    10c4:	e6040390 	swc1	$f4,912(s0)
    10c8:	e60a0398 	swc1	$f10,920(s0)
    10cc:	1000002c 	b	1180 <func_80A2FFFC+0x304>
    10d0:	e6080394 	swc1	$f8,916(s0)
    10d4:	56550017 	bnel	s2,s5,1134 <func_80A2FFFC+0x2b8>
    10d8:	86910032 	lh	s1,50(s4)
    10dc:	86910032 	lh	s1,50(s4)
    10e0:	2631c000 	addiu	s1,s1,-16384
    10e4:	00118c00 	sll	s1,s1,0x10
    10e8:	00118c03 	sra	s1,s1,0x10
    10ec:	00112400 	sll	a0,s1,0x10
    10f0:	0c000000 	jal	0 <func_80A2F180>
    10f4:	00042403 	sra	a0,a0,0x10
    10f8:	46140402 	mul.s	$f16,$f0,$f20
    10fc:	c612039c 	lwc1	$f18,924(s0)
    1100:	00112400 	sll	a0,s1,0x10
    1104:	00042403 	sra	a0,a0,0x10
    1108:	46128100 	add.s	$f4,$f16,$f18
    110c:	0c000000 	jal	0 <func_80A2F180>
    1110:	e6040390 	swc1	$f4,912(s0)
    1114:	46140182 	mul.s	$f6,$f0,$f20
    1118:	c60803a4 	lwc1	$f8,932(s0)
    111c:	c61003a0 	lwc1	$f16,928(s0)
    1120:	e6100394 	swc1	$f16,916(s0)
    1124:	46083280 	add.s	$f10,$f6,$f8
    1128:	10000015 	b	1180 <func_80A2FFFC+0x304>
    112c:	e60a0398 	swc1	$f10,920(s0)
    1130:	86910032 	lh	s1,50(s4)
    1134:	26314000 	addiu	s1,s1,16384
    1138:	00118c00 	sll	s1,s1,0x10
    113c:	00118c03 	sra	s1,s1,0x10
    1140:	00112400 	sll	a0,s1,0x10
    1144:	0c000000 	jal	0 <func_80A2F180>
    1148:	00042403 	sra	a0,a0,0x10
    114c:	46140482 	mul.s	$f18,$f0,$f20
    1150:	c604039c 	lwc1	$f4,924(s0)
    1154:	00112400 	sll	a0,s1,0x10
    1158:	00042403 	sra	a0,a0,0x10
    115c:	46049180 	add.s	$f6,$f18,$f4
    1160:	0c000000 	jal	0 <func_80A2F180>
    1164:	e6060390 	swc1	$f6,912(s0)
    1168:	46140202 	mul.s	$f8,$f0,$f20
    116c:	c60a03a4 	lwc1	$f10,932(s0)
    1170:	c61203a0 	lwc1	$f18,928(s0)
    1174:	e6120394 	swc1	$f18,916(s0)
    1178:	460a4400 	add.s	$f16,$f8,$f10
    117c:	e6100398 	swc1	$f16,920(s0)
    1180:	26520001 	addiu	s2,s2,1
    1184:	24010004 	li	at,4
    1188:	1641ff5b 	bne	s2,at,ef8 <func_80A2FFFC+0x7c>
    118c:	2610002c 	addiu	s0,s0,44
    1190:	8fbf0064 	lw	ra,100(sp)
    1194:	d7b40018 	ldc1	$f20,24(sp)
    1198:	d7b60020 	ldc1	$f22,32(sp)
    119c:	d7b80028 	ldc1	$f24,40(sp)
    11a0:	d7ba0030 	ldc1	$f26,48(sp)
    11a4:	d7bc0038 	ldc1	$f28,56(sp)
    11a8:	d7be0040 	ldc1	$f30,64(sp)
    11ac:	8fb00048 	lw	s0,72(sp)
    11b0:	8fb1004c 	lw	s1,76(sp)
    11b4:	8fb20050 	lw	s2,80(sp)
    11b8:	8fb30054 	lw	s3,84(sp)
    11bc:	8fb40058 	lw	s4,88(sp)
    11c0:	8fb5005c 	lw	s5,92(sp)
    11c4:	8fb60060 	lw	s6,96(sp)
    11c8:	03e00008 	jr	ra
    11cc:	27bd0068 	addiu	sp,sp,104

000011d0 <func_80A30350>:
    11d0:	27bdff40 	addiu	sp,sp,-192
    11d4:	afb5005c 	sw	s5,92(sp)
    11d8:	00a0a825 	move	s5,a1
    11dc:	afbf006c 	sw	ra,108(sp)
    11e0:	afbe0068 	sw	s8,104(sp)
    11e4:	afb70064 	sw	s7,100(sp)
    11e8:	afb60060 	sw	s6,96(sp)
    11ec:	afb40058 	sw	s4,88(sp)
    11f0:	afb30054 	sw	s3,84(sp)
    11f4:	afb20050 	sw	s2,80(sp)
    11f8:	afb1004c 	sw	s1,76(sp)
    11fc:	afb00048 	sw	s0,72(sp)
    1200:	f7b60040 	sdc1	$f22,64(sp)
    1204:	f7b40038 	sdc1	$f20,56(sp)
    1208:	afa400c0 	sw	a0,192(sp)
    120c:	8ca50000 	lw	a1,0(a1)
    1210:	3c060000 	lui	a2,0x0
    1214:	24c60000 	addiu	a2,a2,0
    1218:	27a400a4 	addiu	a0,sp,164
    121c:	24070392 	li	a3,914
    1220:	0c000000 	jal	0 <func_80A2F180>
    1224:	00a08825 	move	s1,a1
    1228:	0c000000 	jal	0 <func_80A2F180>
    122c:	8ea40000 	lw	a0,0(s5)
    1230:	3c010001 	lui	at,0x1
    1234:	34211da0 	ori	at,at,0x1da0
    1238:	02a1b021 	addu	s6,s5,at
    123c:	3c013f80 	lui	at,0x3f80
    1240:	4481b000 	mtc1	at,$f22
    1244:	3c010000 	lui	at,0x0
    1248:	3c170601 	lui	s7,0x601
    124c:	3c1edb06 	lui	s8,0xdb06
    1250:	8fb300c0 	lw	s3,192(sp)
    1254:	37de0020 	ori	s8,s8,0x20
    1258:	26f7c0b0 	addiu	s7,s7,-16208
    125c:	c4340000 	lwc1	$f20,0(at)
    1260:	0000a025 	move	s4,zero
    1264:	8e2202d0 	lw	v0,720(s1)
    1268:	8fa800c0 	lw	t0,192(sp)
    126c:	92630388 	lbu	v1,904(s3)
    1270:	244e0008 	addiu	t6,v0,8
    1274:	ae2e02d0 	sw	t6,720(s1)
    1278:	ac5e0000 	sw	s8,0(v0)
    127c:	8ea40000 	lw	a0,0(s5)
    1280:	3c0a0000 	lui	t2,0x0
    1284:	254a0000 	addiu	t2,t2,0
    1288:	240f0020 	li	t7,32
    128c:	24180040 	li	t8,64
    1290:	24190001 	li	t9,1
    1294:	00034900 	sll	t1,v1,0x4
    1298:	012a8021 	addu	s0,t1,t2
    129c:	afb90018 	sw	t9,24(sp)
    12a0:	afb80014 	sw	t8,20(sp)
    12a4:	afaf0010 	sw	t7,16(sp)
    12a8:	afa0001c 	sw	zero,28(sp)
    12ac:	860b000c 	lh	t3,12(s0)
    12b0:	850c0380 	lh	t4,896(t0)
    12b4:	24180080 	li	t8,128
    12b8:	afb80028 	sw	t8,40(sp)
    12bc:	016c0019 	multu	t3,t4
    12c0:	afaf0024 	sw	t7,36(sp)
    12c4:	00002825 	move	a1,zero
    12c8:	00003025 	move	a2,zero
    12cc:	00003825 	move	a3,zero
    12d0:	00409025 	move	s2,v0
    12d4:	00006812 	mflo	t5
    12d8:	31ae01ff 	andi	t6,t5,0x1ff
    12dc:	0c000000 	jal	0 <func_80A2F180>
    12e0:	afae0020 	sw	t6,32(sp)
    12e4:	ae420004 	sw	v0,4(s2)
    12e8:	8e2202d0 	lw	v0,720(s1)
    12ec:	3c09db06 	lui	t1,0xdb06
    12f0:	35290024 	ori	t1,t1,0x24
    12f4:	24590008 	addiu	t9,v0,8
    12f8:	ae3902d0 	sw	t9,720(s1)
    12fc:	ac490000 	sw	t1,0(v0)
    1300:	8e040008 	lw	a0,8(s0)
    1304:	3c0e0000 	lui	t6,0x0
    1308:	3c0100ff 	lui	at,0xff
    130c:	00045900 	sll	t3,a0,0x4
    1310:	000b6702 	srl	t4,t3,0x1c
    1314:	000c6880 	sll	t5,t4,0x2
    1318:	01cd7021 	addu	t6,t6,t5
    131c:	8dce0000 	lw	t6,0(t6)
    1320:	3421ffff 	ori	at,at,0xffff
    1324:	00815024 	and	t2,a0,at
    1328:	3c018000 	lui	at,0x8000
    132c:	014e7821 	addu	t7,t2,t6
    1330:	01e1c021 	addu	t8,t7,at
    1334:	ac580004 	sw	t8,4(v0)
    1338:	8e2202d0 	lw	v0,720(s1)
    133c:	3c09fa00 	lui	t1,0xfa00
    1340:	35298080 	ori	t1,t1,0x8080
    1344:	24590008 	addiu	t9,v0,8
    1348:	ae3902d0 	sw	t9,720(s1)
    134c:	ac490000 	sw	t1,0(v0)
    1350:	920a0000 	lbu	t2,0(s0)
    1354:	920c0003 	lbu	t4,3(s0)
    1358:	92190001 	lbu	t9,1(s0)
    135c:	000a7600 	sll	t6,t2,0x18
    1360:	920a0002 	lbu	t2,2(s0)
    1364:	018e7825 	or	t7,t4,t6
    1368:	00194c00 	sll	t1,t9,0x10
    136c:	01e95825 	or	t3,t7,t1
    1370:	000a6200 	sll	t4,t2,0x8
    1374:	016c7025 	or	t6,t3,t4
    1378:	ac4e0004 	sw	t6,4(v0)
    137c:	8e2202d0 	lw	v0,720(s1)
    1380:	3c19fb00 	lui	t9,0xfb00
    1384:	24580008 	addiu	t8,v0,8
    1388:	ae3802d0 	sw	t8,720(s1)
    138c:	ac590000 	sw	t9,0(v0)
    1390:	920a0004 	lbu	t2,4(s0)
    1394:	92090007 	lbu	t1,7(s0)
    1398:	92180005 	lbu	t8,5(s0)
    139c:	000a5e00 	sll	t3,t2,0x18
    13a0:	920a0006 	lbu	t2,6(s0)
    13a4:	012b6025 	or	t4,t1,t3
    13a8:	0018cc00 	sll	t9,t8,0x10
    13ac:	01997825 	or	t7,t4,t9
    13b0:	000a4a00 	sll	t1,t2,0x8
    13b4:	01e95825 	or	t3,t7,t1
    13b8:	0c000000 	jal	0 <func_80A2F180>
    13bc:	ac4b0004 	sw	t3,4(v0)
    13c0:	c66c0390 	lwc1	$f12,912(s3)
    13c4:	c66e0394 	lwc1	$f14,916(s3)
    13c8:	8e660398 	lw	a2,920(s3)
    13cc:	0c000000 	jal	0 <func_80A2F180>
    13d0:	00003825 	move	a3,zero
    13d4:	0c000000 	jal	0 <func_80A2F180>
    13d8:	02c02025 	move	a0,s6
    13dc:	926e038c 	lbu	t6,908(s3)
    13e0:	00002025 	move	a0,zero
    13e4:	24058000 	li	a1,-32768
    13e8:	11c00003 	beqz	t6,13f8 <func_80A30350+0x228>
    13ec:	00003025 	move	a2,zero
    13f0:	0c000000 	jal	0 <func_80A2F180>
    13f4:	24070001 	li	a3,1
    13f8:	4406b000 	mfc1	a2,$f22
    13fc:	4600a306 	mov.s	$f12,$f20
    1400:	4600a386 	mov.s	$f14,$f20
    1404:	0c000000 	jal	0 <func_80A2F180>
    1408:	24070001 	li	a3,1
    140c:	8e2202d0 	lw	v0,720(s1)
    1410:	3c0cda38 	lui	t4,0xda38
    1414:	358c0003 	ori	t4,t4,0x3
    1418:	24580008 	addiu	t8,v0,8
    141c:	ae3802d0 	sw	t8,720(s1)
    1420:	3c050000 	lui	a1,0x0
    1424:	ac4c0000 	sw	t4,0(v0)
    1428:	8ea40000 	lw	a0,0(s5)
    142c:	24a50000 	addiu	a1,a1,0
    1430:	240603bb 	li	a2,955
    1434:	0c000000 	jal	0 <func_80A2F180>
    1438:	00408025 	move	s0,v0
    143c:	ae020004 	sw	v0,4(s0)
    1440:	8e2202d0 	lw	v0,720(s1)
    1444:	3c0dde00 	lui	t5,0xde00
    1448:	24590008 	addiu	t9,v0,8
    144c:	ae3902d0 	sw	t9,720(s1)
    1450:	ac570004 	sw	s7,4(v0)
    1454:	0c000000 	jal	0 <func_80A2F180>
    1458:	ac4d0000 	sw	t5,0(v0)
    145c:	2694002c 	addiu	s4,s4,44
    1460:	240100b0 	li	at,176
    1464:	1681ff7f 	bne	s4,at,1264 <func_80A30350+0x94>
    1468:	2673002c 	addiu	s3,s3,44
    146c:	3c060000 	lui	a2,0x0
    1470:	24c60000 	addiu	a2,a2,0
    1474:	27a400a4 	addiu	a0,sp,164
    1478:	8ea50000 	lw	a1,0(s5)
    147c:	0c000000 	jal	0 <func_80A2F180>
    1480:	240703c2 	li	a3,962
    1484:	8fbf006c 	lw	ra,108(sp)
    1488:	d7b40038 	ldc1	$f20,56(sp)
    148c:	d7b60040 	ldc1	$f22,64(sp)
    1490:	8fb00048 	lw	s0,72(sp)
    1494:	8fb1004c 	lw	s1,76(sp)
    1498:	8fb20050 	lw	s2,80(sp)
    149c:	8fb30054 	lw	s3,84(sp)
    14a0:	8fb40058 	lw	s4,88(sp)
    14a4:	8fb5005c 	lw	s5,92(sp)
    14a8:	8fb60060 	lw	s6,96(sp)
    14ac:	8fb70064 	lw	s7,100(sp)
    14b0:	8fbe0068 	lw	s8,104(sp)
    14b4:	03e00008 	jr	ra
    14b8:	27bd00c0 	addiu	sp,sp,192
    14bc:	00000000 	nop
