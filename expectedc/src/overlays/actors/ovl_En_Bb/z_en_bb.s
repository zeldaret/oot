
build/src/overlays/actors/ovl_En_Bb/z_en_bb.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <func_809B82E0>:
       0:	03e00008 	jr	ra
       4:	ac850258 	sw	a1,600(a0)

00000008 <func_809B82E8>:
       8:	27bdffd8 	addiu	sp,sp,-40
       c:	afbf0024 	sw	ra,36(sp)
      10:	afb10020 	sw	s1,32(sp)
      14:	afb0001c 	sw	s0,28(sp)
      18:	f7b40010 	sdc1	$f20,16(sp)
      1c:	8c901c4c 	lw	s0,7244(a0)
      20:	4486a000 	mtc1	a2,$f20
      24:	00a08825 	move	s1,a1
      28:	52000016 	beqzl	s0,84 <func_809B82E8+0x7c>
      2c:	00001025 	move	v0,zero
      30:	860e001c 	lh	t6,28(s0)
      34:	02202025 	move	a0,s1
      38:	11c00003 	beqz	t6,48 <func_809B82E8+0x40>
      3c:	00000000 	nop
      40:	1000000d 	b	78 <func_809B82E8+0x70>
      44:	8e100124 	lw	s0,292(s0)
      48:	0c000000 	jal	0 <func_809B82E0>
      4c:	02002825 	move	a1,s0
      50:	860f001c 	lh	t7,28(s0)
      54:	55e00008 	bnezl	t7,78 <func_809B82E8+0x70>
      58:	8e100124 	lw	s0,292(s0)
      5c:	4614003e 	c.le.s	$f0,$f20
      60:	00000000 	nop
      64:	45020004 	bc1fl	78 <func_809B82E8+0x70>
      68:	8e100124 	lw	s0,292(s0)
      6c:	10000005 	b	84 <func_809B82E8+0x7c>
      70:	02001025 	move	v0,s0
      74:	8e100124 	lw	s0,292(s0)
      78:	5600ffee 	bnezl	s0,34 <func_809B82E8+0x2c>
      7c:	860e001c 	lh	t6,28(s0)
      80:	00001025 	move	v0,zero
      84:	8fbf0024 	lw	ra,36(sp)
      88:	d7b40010 	ldc1	$f20,16(sp)
      8c:	8fb0001c 	lw	s0,28(sp)
      90:	8fb10020 	lw	s1,32(sp)
      94:	03e00008 	jr	ra
      98:	27bd0028 	addiu	sp,sp,40

0000009c <func_809B837C>:
      9c:	27bdff80 	addiu	sp,sp,-128
      a0:	f7bc0050 	sdc1	$f28,80(sp)
      a4:	3c010000 	lui	at,0x0
      a8:	c43c0000 	lwc1	$f28,0(at)
      ac:	f7ba0048 	sdc1	$f26,72(sp)
      b0:	3c010000 	lui	at,0x0
      b4:	c43a0000 	lwc1	$f26,0(at)
      b8:	f7b80040 	sdc1	$f24,64(sp)
      bc:	3c010000 	lui	at,0x0
      c0:	c4380000 	lwc1	$f24,0(at)
      c4:	afb5006c 	sw	s5,108(sp)
      c8:	f7b60038 	sdc1	$f22,56(sp)
      cc:	f7b40030 	sdc1	$f20,48(sp)
      d0:	3c013f80 	lui	at,0x3f80
      d4:	0006ac00 	sll	s5,a2,0x10
      d8:	afbe0078 	sw	s8,120(sp)
      dc:	afb70074 	sw	s7,116(sp)
      e0:	afb60070 	sw	s6,112(sp)
      e4:	afb40068 	sw	s4,104(sp)
      e8:	afb30064 	sw	s3,100(sp)
      ec:	afb20060 	sw	s2,96(sp)
      f0:	afb1005c 	sw	s1,92(sp)
      f4:	afb00058 	sw	s0,88(sp)
      f8:	4481a000 	mtc1	at,$f20
      fc:	4480b000 	mtc1	zero,$f22
     100:	00a08825 	move	s1,a1
     104:	00809825 	move	s3,a0
     108:	0015ac03 	sra	s5,s5,0x10
     10c:	afbf007c 	sw	ra,124(sp)
     110:	afa60088 	sw	a2,136(sp)
     114:	00a09025 	move	s2,a1
     118:	00008025 	move	s0,zero
     11c:	24941c24 	addiu	s4,a0,7204
     120:	241600ff 	li	s6,255
     124:	24170028 	li	s7,40
     128:	241e00ff 	li	s8,255
     12c:	c6240028 	lwc1	$f4,40(s1)
     130:	8e270024 	lw	a3,36(s1)
     134:	02802025 	move	a0,s4
     138:	e7a40010 	swc1	$f4,16(sp)
     13c:	c626002c 	lwc1	$f6,44(s1)
     140:	afa00024 	sw	zero,36(sp)
     144:	afa00020 	sw	zero,32(sp)
     148:	afa0001c 	sw	zero,28(sp)
     14c:	afa00018 	sw	zero,24(sp)
     150:	02602825 	move	a1,s3
     154:	24060069 	li	a2,105
     158:	0c000000 	jal	0 <func_809B82E0>
     15c:	e7a60014 	swc1	$f6,20(sp)
     160:	10400021 	beqz	v0,1e8 <func_809B837C+0x14c>
     164:	24010005 	li	at,5
     168:	44904000 	mtc1	s0,$f8
     16c:	02170019 	multu	s0,s7
     170:	ae42011c 	sw	v0,284(s2)
     174:	46804020 	cvt.s.w	$f0,$f8
     178:	ac520118 	sw	s2,280(v0)
     17c:	26040001 	addiu	a0,s0,1
     180:	00102840 	sll	a1,s0,0x1
     184:	ac510324 	sw	s1,804(v0)
     188:	a444026c 	sh	a0,620(v0)
     18c:	461a0282 	mul.s	$f10,$f0,$f26
     190:	e4540050 	swc1	$f20,80(v0)
     194:	00007012 	mflo	t6
     198:	461c0402 	mul.s	$f16,$f0,$f28
     19c:	02ce1823 	subu	v1,s6,t6
     1a0:	306f00ff 	andi	t7,v1,0xff
     1a4:	a44f026e 	sh	t7,622(v0)
     1a8:	a043029f 	sb	v1,671(v0)
     1ac:	460ac081 	sub.s	$f2,$f24,$f10
     1b0:	24a50002 	addiu	a1,a1,2
     1b4:	00409025 	move	s2,v0
     1b8:	4610a301 	sub.s	$f12,$f20,$f16
     1bc:	e4420054 	swc1	$f2,84(v0)
     1c0:	e4420288 	swc1	$f2,648(v0)
     1c4:	e44c0058 	swc1	$f12,88(v0)
     1c8:	12a00004 	beqz	s5,1dc <func_809B837C+0x140>
     1cc:	e44c028c 	swc1	$f12,652(v0)
     1d0:	a040029f 	sb	zero,671(v0)
     1d4:	e456028c 	swc1	$f22,652(v0)
     1d8:	e4560288 	swc1	$f22,648(v0)
     1dc:	a4440270 	sh	a0,624(v0)
     1e0:	ac450260 	sw	a1,608(v0)
     1e4:	a05e02a0 	sb	s8,672(v0)
     1e8:	26100001 	addiu	s0,s0,1
     1ec:	5601ffd0 	bnel	s0,at,130 <func_809B837C+0x94>
     1f0:	c6240028 	lwc1	$f4,40(s1)
     1f4:	8fbf007c 	lw	ra,124(sp)
     1f8:	d7b40030 	ldc1	$f20,48(sp)
     1fc:	d7b60038 	ldc1	$f22,56(sp)
     200:	d7b80040 	ldc1	$f24,64(sp)
     204:	d7ba0048 	ldc1	$f26,72(sp)
     208:	d7bc0050 	ldc1	$f28,80(sp)
     20c:	8fb00058 	lw	s0,88(sp)
     210:	8fb1005c 	lw	s1,92(sp)
     214:	8fb20060 	lw	s2,96(sp)
     218:	8fb30064 	lw	s3,100(sp)
     21c:	8fb40068 	lw	s4,104(sp)
     220:	8fb5006c 	lw	s5,108(sp)
     224:	8fb60070 	lw	s6,112(sp)
     228:	8fb70074 	lw	s7,116(sp)
     22c:	8fbe0078 	lw	s8,120(sp)
     230:	03e00008 	jr	ra
     234:	27bd0080 	addiu	sp,sp,128

00000238 <func_809B8518>:
     238:	8c8e011c 	lw	t6,284(a0)
     23c:	00801025 	move	v0,a0
     240:	2406000b 	li	a2,11
     244:	11c0000c 	beqz	t6,278 <func_809B8518+0x40>
     248:	24050069 	li	a1,105
     24c:	8c43011c 	lw	v1,284(v0)
     250:	846f0000 	lh	t7,0(v1)
     254:	54af0005 	bnel	a1,t7,26c <func_809B8518+0x34>
     258:	8c78011c 	lw	t8,284(v1)
     25c:	ac600118 	sw	zero,280(v1)
     260:	ac40011c 	sw	zero,284(v0)
     264:	a466001c 	sh	a2,28(v1)
     268:	8c78011c 	lw	t8,284(v1)
     26c:	00601025 	move	v0,v1
     270:	5700fff7 	bnezl	t8,250 <func_809B8518+0x18>
     274:	8c43011c 	lw	v1,284(v0)
     278:	03e00008 	jr	ra
     27c:	ac80011c 	sw	zero,284(a0)

00000280 <EnBb_Init>:
     280:	27bdfe18 	addiu	sp,sp,-488
     284:	afa501ec 	sw	a1,492(sp)
     288:	afbf002c 	sw	ra,44(sp)
     28c:	afb00028 	sw	s0,40(sp)
     290:	3c050000 	lui	a1,0x0
     294:	00808025 	move	s0,a0
     298:	0c000000 	jal	0 <func_809B82E0>
     29c:	24a50000 	addiu	a1,a1,0
     2a0:	3c060600 	lui	a2,0x600
     2a4:	3c070600 	lui	a3,0x600
     2a8:	260e0190 	addiu	t6,s0,400
     2ac:	260f01f0 	addiu	t7,s0,496
     2b0:	24180010 	li	t8,16
     2b4:	afb80018 	sw	t8,24(sp)
     2b8:	afaf0014 	sw	t7,20(sp)
     2bc:	afae0010 	sw	t6,16(sp)
     2c0:	24e70444 	addiu	a3,a3,1092
     2c4:	24c61a30 	addiu	a2,a2,6704
     2c8:	8fa401ec 	lw	a0,492(sp)
     2cc:	0c000000 	jal	0 <func_809B82E0>
     2d0:	2605014c 	addiu	a1,s0,332
     2d4:	24190004 	li	t9,4
     2d8:	ae000254 	sw	zero,596(s0)
     2dc:	a21900af 	sb	t9,175(s0)
     2e0:	260502ac 	addiu	a1,s0,684
     2e4:	afa50030 	sw	a1,48(sp)
     2e8:	0c000000 	jal	0 <func_809B82E0>
     2ec:	8fa401ec 	lw	a0,492(sp)
     2f0:	3c070000 	lui	a3,0x0
     2f4:	260802cc 	addiu	t0,s0,716
     2f8:	8fa50030 	lw	a1,48(sp)
     2fc:	afa80010 	sw	t0,16(sp)
     300:	24e70000 	addiu	a3,a3,0
     304:	8fa401ec 	lw	a0,492(sp)
     308:	0c000000 	jal	0 <func_809B82E0>
     30c:	02003025 	move	a2,s0
     310:	8609001c 	lh	t1,28(s0)
     314:	8602001c 	lh	v0,28(s0)
     318:	260400b4 	addiu	a0,s0,180
     31c:	00095203 	sra	t2,t1,0x8
     320:	304b0080 	andi	t3,v0,0x80
     324:	11600004 	beqz	t3,338 <EnBb_Init+0xb8>
     328:	a60a0268 	sh	t2,616(s0)
     32c:	344cff00 	ori	t4,v0,0xff00
     330:	a60c001c 	sh	t4,28(s0)
     334:	8602001c 	lh	v0,28(s0)
     338:	04410006 	bgez	v0,354 <EnBb_Init+0xd4>
     33c:	3c054348 	lui	a1,0x4348
     340:	3c060000 	lui	a2,0x0
     344:	24c60000 	addiu	a2,a2,0
     348:	0c000000 	jal	0 <func_809B82E0>
     34c:	3c07420c 	lui	a3,0x420c
     350:	8602001c 	lh	v0,28(s0)
     354:	304dff00 	andi	t5,v0,0xff00
     358:	11a000a1 	beqz	t5,5e0 <L809B8858+0x68>
     35c:	3c0142a0 	lui	at,0x42a0
     360:	44812000 	mtc1	at,$f4
     364:	3c0142c8 	lui	at,0x42c8
     368:	44813000 	mtc1	at,$f6
     36c:	8e0f02c8 	lw	t7,712(s0)
     370:	ae000260 	sw	zero,608(s0)
     374:	240e0009 	li	t6,9
     378:	e6040288 	swc1	$f4,648(s0)
     37c:	e606028c 	swc1	$f6,652(s0)
     380:	a1ee0015 	sb	t6,21(t7)
     384:	8e1902c8 	lw	t9,712(s0)
     388:	3c18ffcf 	lui	t8,0xffcf
     38c:	3718ffff 	ori	t8,t8,0xffff
     390:	af380000 	sw	t8,0(t9)
     394:	8e0902c8 	lw	t1,712(s0)
     398:	24080008 	li	t0,8
     39c:	3c0141a0 	lui	at,0x41a0
     3a0:	a1280005 	sb	t0,5(t1)
     3a4:	860a0268 	lh	t2,616(s0)
     3a8:	44818000 	mtc1	at,$f16
     3ac:	240b00ff 	li	t3,255
     3b0:	448a4000 	mtc1	t2,$f8
     3b4:	3c053c23 	lui	a1,0x3c23
     3b8:	a20b029f 	sb	t3,671(s0)
     3bc:	468042a0 	cvt.s.w	$f10,$f8
     3c0:	ae00025c 	sw	zero,604(s0)
     3c4:	34a5d70a 	ori	a1,a1,0xd70a
     3c8:	02002025 	move	a0,s0
     3cc:	46105482 	mul.s	$f18,$f10,$f16
     3d0:	0c000000 	jal	0 <func_809B82E0>
     3d4:	e6120278 	swc1	$f18,632(s0)
     3d8:	860c001c 	lh	t4,28(s0)
     3dc:	240200ff 	li	v0,255
     3e0:	258d0005 	addiu	t5,t4,5
     3e4:	2da10005 	sltiu	at,t5,5
     3e8:	10200076 	beqz	at,5c4 <L809B8858+0x4c>
     3ec:	000d6880 	sll	t5,t5,0x2
     3f0:	3c010000 	lui	at,0x0
     3f4:	002d0821 	addu	at,at,t5
     3f8:	8c2d0000 	lw	t5,0(at)
     3fc:	01a00008 	jr	t5
     400:	00000000 	nop

00000404 <L809B86E4>:
     404:	3c014248 	lui	at,0x4248
     408:	44813000 	mtc1	at,$f6
     40c:	c6040028 	lwc1	$f4,40(s0)
     410:	3c0f0000 	lui	t7,0x0
     414:	240e001c 	li	t6,28
     418:	46062200 	add.s	$f8,$f4,$f6
     41c:	25ef0000 	addiu	t7,t7,0
     420:	a20e0117 	sb	t6,279(s0)
     424:	ae0f0098 	sw	t7,152(s0)
     428:	a20202a2 	sb	v0,674(s0)
     42c:	a202029e 	sb	v0,670(s0)
     430:	e6080028 	swc1	$f8,40(s0)
     434:	0c000000 	jal	0 <func_809B82E0>
     438:	02002025 	move	a0,s0
     43c:	8e190004 	lw	t9,4(s0)
     440:	37284000 	ori	t0,t9,0x4000
     444:	1000005f 	b	5c4 <L809B8858+0x4c>
     448:	ae080004 	sw	t0,4(s0)

0000044c <L809B872C>:
     44c:	8e0c02c8 	lw	t4,712(s0)
     450:	3c0a0000 	lui	t2,0x0
     454:	24090024 	li	t1,36
     458:	254a0000 	addiu	t2,t2,0
     45c:	a2090117 	sb	t1,279(s0)
     460:	ae0a0098 	sw	t2,152(s0)
     464:	a20202a0 	sb	v0,672(s0)
     468:	240b0001 	li	t3,1
     46c:	a18b0004 	sb	t3,4(t4)
     470:	8fa401ec 	lw	a0,492(sp)
     474:	0c000000 	jal	0 <func_809B82E0>
     478:	02002825 	move	a1,s0
     47c:	10000052 	b	5c8 <L809B8858+0x50>
     480:	8e0c0024 	lw	t4,36(s0)

00000484 <L809B8764>:
     484:	860f0268 	lh	t7,616(s0)
     488:	3c0e0000 	lui	t6,0x0
     48c:	240d001d 	li	t5,29
     490:	25ce0000 	addiu	t6,t6,0
     494:	a20d0117 	sb	t5,279(s0)
     498:	ae0e0098 	sw	t6,152(s0)
     49c:	a20f029c 	sb	t7,668(s0)
     4a0:	240200ff 	li	v0,255
     4a4:	241800ff 	li	t8,255
     4a8:	24190010 	li	t9,16
     4ac:	24080002 	li	t0,2
     4b0:	27a90048 	addiu	t1,sp,72
     4b4:	a3b801da 	sb	t8,474(sp)
     4b8:	a3a201d9 	sb	v0,473(sp)
     4bc:	a3a201d8 	sb	v0,472(sp)
     4c0:	a3a201d6 	sb	v0,470(sp)
     4c4:	a3a201d5 	sb	v0,469(sp)
     4c8:	a3a201d4 	sb	v0,468(sp)
     4cc:	a3a201d3 	sb	v0,467(sp)
     4d0:	a3a201d2 	sb	v0,466(sp)
     4d4:	a3a201d1 	sb	v0,465(sp)
     4d8:	a3a201d0 	sb	v0,464(sp)
     4dc:	a3a201cf 	sb	v0,463(sp)
     4e0:	a3a201ce 	sb	v0,462(sp)
     4e4:	a3a201cd 	sb	v0,461(sp)
     4e8:	a3a201cc 	sb	v0,460(sp)
     4ec:	a3a001d7 	sb	zero,471(sp)
     4f0:	a3a001db 	sb	zero,475(sp)
     4f4:	afb901dc 	sw	t9,476(sp)
     4f8:	afa001e0 	sw	zero,480(sp)
     4fc:	afa801e4 	sw	t0,484(sp)
     500:	afa90014 	sw	t1,20(sp)
     504:	afa00010 	sw	zero,16(sp)
     508:	8fa401ec 	lw	a0,492(sp)
     50c:	260502a4 	addiu	a1,s0,676
     510:	24060001 	li	a2,1
     514:	0c000000 	jal	0 <func_809B82E0>
     518:	00003825 	move	a3,zero
     51c:	8fa401ec 	lw	a0,492(sp)
     520:	0c000000 	jal	0 <func_809B82E0>
     524:	02002825 	move	a1,s0
     528:	02002025 	move	a0,s0
     52c:	0c000000 	jal	0 <func_809B82E0>
     530:	8fa501ec 	lw	a1,492(sp)
     534:	0c000000 	jal	0 <func_809B82E0>
     538:	02002025 	move	a0,s0
     53c:	8e0a0004 	lw	t2,4(s0)
     540:	354b4000 	ori	t3,t2,0x4000
     544:	1000001f 	b	5c4 <L809B8858+0x4c>
     548:	ae0b0004 	sw	t3,4(s0)

0000054c <L809B882C>:
     54c:	860c0268 	lh	t4,616(s0)
     550:	8e0f02c8 	lw	t7,712(s0)
     554:	240e0016 	li	t6,22
     558:	000c6903 	sra	t5,t4,0x4
     55c:	a20d029c 	sb	t5,668(s0)
     560:	3c053cf5 	lui	a1,0x3cf5
     564:	34a5c28f 	ori	a1,a1,0xc28f
     568:	02002025 	move	a0,s0
     56c:	0c000000 	jal	0 <func_809B82E0>
     570:	a5ee002e 	sh	t6,46(t7)
     574:	240200ff 	li	v0,255

00000578 <L809B8858>:
     578:	86190268 	lh	t9,616(s0)
     57c:	3c0141a0 	lui	at,0x41a0
     580:	44819000 	mtc1	at,$f18
     584:	3328000f 	andi	t0,t9,0xf
     588:	44885000 	mtc1	t0,$f10
     58c:	3c090000 	lui	t1,0x0
     590:	2418001e 	li	t8,30
     594:	46805420 	cvt.s.w	$f16,$f10
     598:	25290000 	addiu	t1,t1,0
     59c:	240a0001 	li	t2,1
     5a0:	a2180117 	sb	t8,279(s0)
     5a4:	ae090098 	sw	t1,152(s0)
     5a8:	a20202a1 	sb	v0,673(s0)
     5ac:	46128102 	mul.s	$f4,$f16,$f18
     5b0:	a20a00af 	sb	t2,175(s0)
     5b4:	02002025 	move	a0,s0
     5b8:	e6040278 	swc1	$f4,632(s0)
     5bc:	0c000000 	jal	0 <func_809B82E0>
     5c0:	8fa501ec 	lw	a1,492(sp)
     5c4:	8e0c0024 	lw	t4,36(s0)
     5c8:	8e0b0028 	lw	t3,40(s0)
     5cc:	ae0c0038 	sw	t4,56(s0)
     5d0:	8e0c002c 	lw	t4,44(s0)
     5d4:	ae0b003c 	sw	t3,60(s0)
     5d8:	10000003 	b	5e8 <L809B8858+0x70>
     5dc:	ae0c0040 	sw	t4,64(s0)
     5e0:	0c000000 	jal	0 <func_809B82E0>
     5e4:	02002025 	move	a0,s0
     5e8:	8e0202c8 	lw	v0,712(s0)
     5ec:	844d002e 	lh	t5,46(v0)
     5f0:	c4460038 	lwc1	$f6,56(v0)
     5f4:	448d4000 	mtc1	t5,$f8
     5f8:	00000000 	nop
     5fc:	468042a0 	cvt.s.w	$f10,$f8
     600:	460a3402 	mul.s	$f16,$f6,$f10
     604:	4600848d 	trunc.w.s	$f18,$f16
     608:	440f9000 	mfc1	t7,$f18
     60c:	00000000 	nop
     610:	a44f0036 	sh	t7,54(v0)
     614:	8fbf002c 	lw	ra,44(sp)
     618:	8fb00028 	lw	s0,40(sp)
     61c:	27bd01e8 	addiu	sp,sp,488
     620:	03e00008 	jr	ra
     624:	00000000 	nop

00000628 <EnBb_Destroy>:
     628:	27bdffe8 	addiu	sp,sp,-24
     62c:	00803025 	move	a2,a0
     630:	afbf0014 	sw	ra,20(sp)
     634:	00a02025 	move	a0,a1
     638:	0c000000 	jal	0 <func_809B82E0>
     63c:	24c502ac 	addiu	a1,a2,684
     640:	8fbf0014 	lw	ra,20(sp)
     644:	27bd0018 	addiu	sp,sp,24
     648:	03e00008 	jr	ra
     64c:	00000000 	nop

00000650 <func_809B8930>:
     650:	27bdffe8 	addiu	sp,sp,-24
     654:	afbf0014 	sw	ra,20(sp)
     658:	44800000 	mtc1	zero,$f0
     65c:	8c980004 	lw	t8,4(a0)
     660:	2401fffe 	li	at,-2
     664:	240e0002 	li	t6,2
     668:	240f0001 	li	t7,1
     66c:	3c050000 	lui	a1,0x0
     670:	0301c824 	and	t9,t8,at
     674:	ac8e0250 	sw	t6,592(a0)
     678:	ac8f025c 	sw	t7,604(a0)
     67c:	ac990004 	sw	t9,4(a0)
     680:	24a50000 	addiu	a1,a1,0
     684:	e4800060 	swc1	$f0,96(a0)
     688:	e480006c 	swc1	$f0,108(a0)
     68c:	0c000000 	jal	0 <func_809B82E0>
     690:	e4800068 	swc1	$f0,104(a0)
     694:	8fbf0014 	lw	ra,20(sp)
     698:	27bd0018 	addiu	sp,sp,24
     69c:	03e00008 	jr	ra
     6a0:	00000000 	nop

000006a4 <func_809B8984>:
     6a4:	27bdffd8 	addiu	sp,sp,-40
     6a8:	afbf0024 	sw	ra,36(sp)
     6ac:	afb00020 	sw	s0,32(sp)
     6b0:	848e001c 	lh	t6,28(a0)
     6b4:	2401000b 	li	at,11
     6b8:	00808025 	move	s0,a0
     6bc:	55c10009 	bnel	t6,at,6e4 <func_809B8984+0x40>
     6c0:	8e040260 	lw	a0,608(s0)
     6c4:	8c830118 	lw	v1,280(a0)
     6c8:	1460004c 	bnez	v1,7fc <func_809B8984+0x158>
     6cc:	00000000 	nop
     6d0:	0c000000 	jal	0 <func_809B82E0>
     6d4:	00000000 	nop
     6d8:	10000048 	b	7fc <func_809B8984+0x158>
     6dc:	8e030118 	lw	v1,280(s0)
     6e0:	8e040260 	lw	a0,608(s0)
     6e4:	54800040 	bnezl	a0,7e8 <func_809B8984+0x144>
     6e8:	8e030118 	lw	v1,280(s0)
     6ec:	8e0f0324 	lw	t7,804(s0)
     6f0:	44801000 	mtc1	zero,$f2
     6f4:	3c010000 	lui	at,0x0
     6f8:	c5e40288 	lwc1	$f4,648(t7)
     6fc:	46041032 	c.eq.s	$f2,$f4
     700:	00000000 	nop
     704:	45030022 	bc1tl	790 <func_809B8984+0xec>
     708:	9203029f 	lbu	v1,671(s0)
     70c:	c6000054 	lwc1	$f0,84(s0)
     710:	c4260000 	lwc1	$f6,0(at)
     714:	e7a20010 	swc1	$f2,16(sp)
     718:	44050000 	mfc1	a1,$f0
     71c:	46060202 	mul.s	$f8,$f0,$f6
     720:	26040288 	addiu	a0,s0,648
     724:	3c063f80 	lui	a2,0x3f80
     728:	44074000 	mfc1	a3,$f8
     72c:	0c000000 	jal	0 <func_809B82E0>
     730:	00000000 	nop
     734:	3c010000 	lui	at,0x0
     738:	c42a0000 	lwc1	$f10,0(at)
     73c:	c6000058 	lwc1	$f0,88(s0)
     740:	44809000 	mtc1	zero,$f18
     744:	2604028c 	addiu	a0,s0,652
     748:	460a0402 	mul.s	$f16,$f0,$f10
     74c:	44050000 	mfc1	a1,$f0
     750:	3c063f80 	lui	a2,0x3f80
     754:	e7b20010 	swc1	$f18,16(sp)
     758:	44078000 	mfc1	a3,$f16
     75c:	0c000000 	jal	0 <func_809B82E0>
     760:	00000000 	nop
     764:	9202029f 	lbu	v0,671(s0)
     768:	8603026e 	lh	v1,622(s0)
     76c:	2458000a 	addiu	t8,v0,10
     770:	10620013 	beq	v1,v0,7c0 <func_809B8984+0x11c>
     774:	331900ff 	andi	t9,t8,0xff
     778:	0079082a 	slt	at,v1,t9
     77c:	10200010 	beqz	at,7c0 <func_809B8984+0x11c>
     780:	a218029f 	sb	t8,671(s0)
     784:	1000000e 	b	7c0 <func_809B8984+0x11c>
     788:	a203029f 	sb	v1,671(s0)
     78c:	9203029f 	lbu	v1,671(s0)
     790:	14600005 	bnez	v1,7a8 <func_809B8984+0x104>
     794:	28610015 	slti	at,v1,21
     798:	0c000000 	jal	0 <func_809B82E0>
     79c:	02002025 	move	a0,s0
     7a0:	1000001b 	b	810 <func_809B8984+0x16c>
     7a4:	8fbf0024 	lw	ra,36(sp)
     7a8:	10200003 	beqz	at,7b8 <func_809B8984+0x114>
     7ac:	00601025 	move	v0,v1
     7b0:	10000003 	b	7c0 <func_809B8984+0x11c>
     7b4:	a200029f 	sb	zero,671(s0)
     7b8:	2448ffec 	addiu	t0,v0,-20
     7bc:	a208029f 	sb	t0,671(s0)
     7c0:	8e090118 	lw	t1,280(s0)
     7c4:	8e030118 	lw	v1,280(s0)
     7c8:	8d2b0100 	lw	t3,256(t1)
     7cc:	ae0b0024 	sw	t3,36(s0)
     7d0:	8d2a0104 	lw	t2,260(t1)
     7d4:	ae0a0028 	sw	t2,40(s0)
     7d8:	8d2b0108 	lw	t3,264(t1)
     7dc:	10000007 	b	7fc <func_809B8984+0x158>
     7e0:	ae0b002c 	sw	t3,44(s0)
     7e4:	8e030118 	lw	v1,280(s0)
     7e8:	248cffff 	addiu	t4,a0,-1
     7ec:	ae0c0260 	sw	t4,608(s0)
     7f0:	84620032 	lh	v0,50(v1)
     7f4:	a6020032 	sh	v0,50(s0)
     7f8:	a60200b6 	sh	v0,182(s0)
     7fc:	50600004 	beqzl	v1,810 <func_809B8984+0x16c>
     800:	8fbf0024 	lw	ra,36(sp)
     804:	c4640060 	lwc1	$f4,96(v1)
     808:	e6040060 	swc1	$f4,96(s0)
     80c:	8fbf0024 	lw	ra,36(sp)
     810:	8fb00020 	lw	s0,32(sp)
     814:	27bd0028 	addiu	sp,sp,40
     818:	03e00008 	jr	ra
     81c:	00000000 	nop

00000820 <func_809B8B00>:
     820:	27bdffd8 	addiu	sp,sp,-40
     824:	afbf0024 	sw	ra,36(sp)
     828:	afb00020 	sw	s0,32(sp)
     82c:	afa5002c 	sw	a1,44(sp)
     830:	848e001c 	lh	t6,28(a0)
     834:	00808025 	move	s0,a0
     838:	3c01c0e0 	lui	at,0xc0e0
     83c:	05c10012 	bgez	t6,888 <func_809B8B00+0x68>
     840:	24180005 	li	t8,5
     844:	849900b4 	lh	t9,180(a0)
     848:	848f008a 	lh	t7,138(a0)
     84c:	44812000 	mtc1	at,$f4
     850:	27284e20 	addiu	t0,t9,20000
     854:	ac980260 	sw	t8,608(a0)
     858:	a48800b4 	sh	t0,180(a0)
     85c:	a48f0032 	sh	t7,50(a0)
     860:	e4840068 	swc1	$f4,104(a0)
     864:	24090001 	li	t1,1
     868:	240a0028 	li	t2,40
     86c:	afaa0014 	sw	t2,20(sp)
     870:	afa90010 	sw	t1,16(sp)
     874:	8fa4002c 	lw	a0,44(sp)
     878:	260500e4 	addiu	a1,s0,228
     87c:	240638ce 	li	a2,14542
     880:	0c000000 	jal	0 <func_809B82E0>
     884:	24070001 	li	a3,1
     888:	240b0001 	li	t3,1
     88c:	3c050000 	lui	a1,0x0
     890:	ae0b0250 	sw	t3,592(s0)
     894:	24a50000 	addiu	a1,a1,0
     898:	0c000000 	jal	0 <func_809B82E0>
     89c:	02002025 	move	a0,s0
     8a0:	8fbf0024 	lw	ra,36(sp)
     8a4:	8fb00020 	lw	s0,32(sp)
     8a8:	27bd0028 	addiu	sp,sp,40
     8ac:	03e00008 	jr	ra
     8b0:	00000000 	nop

000008b4 <func_809B8B94>:
     8b4:	27bdffb0 	addiu	sp,sp,-80
     8b8:	240e0003 	li	t6,3
     8bc:	3c180000 	lui	t8,0x0
     8c0:	afbf0024 	sw	ra,36(sp)
     8c4:	afb00020 	sw	s0,32(sp)
     8c8:	afa50054 	sw	a1,84(sp)
     8cc:	a7ae004e 	sh	t6,78(sp)
     8d0:	27180000 	addiu	t8,t8,0
     8d4:	8f080000 	lw	t0,0(t8)
     8d8:	27af0040 	addiu	t7,sp,64
     8dc:	8f190004 	lw	t9,4(t8)
     8e0:	ade80000 	sw	t0,0(t7)
     8e4:	8f080008 	lw	t0,8(t8)
     8e8:	3c0a0000 	lui	t2,0x0
     8ec:	254a0000 	addiu	t2,t2,0
     8f0:	adf90004 	sw	t9,4(t7)
     8f4:	ade80008 	sw	t0,8(t7)
     8f8:	8d4c0000 	lw	t4,0(t2)
     8fc:	27a90034 	addiu	t1,sp,52
     900:	8d4b0004 	lw	t3,4(t2)
     904:	ad2c0000 	sw	t4,0(t1)
     908:	8d4c0008 	lw	t4,8(t2)
     90c:	ad2b0004 	sw	t3,4(t1)
     910:	00808025 	move	s0,a0
     914:	ad2c0008 	sw	t4,8(t1)
     918:	848d001c 	lh	t5,28(a0)
     91c:	24840288 	addiu	a0,a0,648
     920:	05a30033 	bgezl	t5,9f0 <func_809B8B94+0x13c>
     924:	9202029f 	lbu	v0,671(s0)
     928:	44800000 	mtc1	zero,$f0
     92c:	3c063f80 	lui	a2,0x3f80
     930:	3c0741f0 	lui	a3,0x41f0
     934:	44050000 	mfc1	a1,$f0
     938:	0c000000 	jal	0 <func_809B82E0>
     93c:	e7a00010 	swc1	$f0,16(sp)
     940:	44800000 	mtc1	zero,$f0
     944:	2604028c 	addiu	a0,s0,652
     948:	3c063f80 	lui	a2,0x3f80
     94c:	44050000 	mfc1	a1,$f0
     950:	3c0741f0 	lui	a3,0x41f0
     954:	0c000000 	jal	0 <func_809B82E0>
     958:	e7a00010 	swc1	$f0,16(sp)
     95c:	8e020260 	lw	v0,608(s0)
     960:	50400008 	beqzl	v0,984 <func_809B8B94+0xd0>
     964:	8e19031c 	lw	t9,796(s0)
     968:	860f00b4 	lh	t7,180(s0)
     96c:	244effff 	addiu	t6,v0,-1
     970:	ae0e0260 	sw	t6,608(s0)
     974:	25f8b1e0 	addiu	t8,t7,-20000
     978:	10000028 	b	a1c <func_809B8B94+0x168>
     97c:	a61800b4 	sh	t8,180(s0)
     980:	8e19031c 	lw	t9,796(s0)
     984:	2604030c 	addiu	a0,s0,780
     988:	2405000c 	li	a1,12
     98c:	57200004 	bnezl	t9,9a0 <func_809B8B94+0xec>
     990:	920202aa 	lbu	v0,682(s0)
     994:	0c000000 	jal	0 <func_809B82E0>
     998:	8fa60054 	lw	a2,84(sp)
     99c:	920202aa 	lbu	v0,682(s0)
     9a0:	24010007 	li	at,7
     9a4:	2605030c 	addiu	a1,s0,780
     9a8:	10410003 	beq	v0,at,9b8 <func_809B8B94+0x104>
     9ac:	02002025 	move	a0,s0
     9b0:	24010005 	li	at,5
     9b4:	14410002 	bne	v0,at,9c0 <func_809B8B94+0x10c>
     9b8:	2408000b 	li	t0,11
     9bc:	a7a8004e 	sh	t0,78(sp)
     9c0:	8fa60054 	lw	a2,84(sp)
     9c4:	0c000000 	jal	0 <func_809B82E0>
     9c8:	87a7004e 	lh	a3,78(sp)
     9cc:	10400013 	beqz	v0,a1c <func_809B8B94+0x168>
     9d0:	8fa40054 	lw	a0,84(sp)
     9d4:	02002825 	move	a1,s0
     9d8:	26060024 	addiu	a2,s0,36
     9dc:	0c000000 	jal	0 <func_809B82E0>
     9e0:	240700d0 	li	a3,208
     9e4:	1000000b 	b	a14 <func_809B8B94+0x160>
     9e8:	00000000 	nop
     9ec:	9202029f 	lbu	v0,671(s0)
     9f0:	10400008 	beqz	v0,a14 <func_809B8B94+0x160>
     9f4:	28410015 	slti	at,v0,21
     9f8:	10200003 	beqz	at,a08 <func_809B8B94+0x154>
     9fc:	00401825 	move	v1,v0
     a00:	10000006 	b	a1c <func_809B8B94+0x168>
     a04:	a200029f 	sb	zero,671(s0)
     a08:	2469ffec 	addiu	t1,v1,-20
     a0c:	10000003 	b	a1c <func_809B8B94+0x168>
     a10:	a209029f 	sb	t1,671(s0)
     a14:	0c000000 	jal	0 <func_809B82E0>
     a18:	02002025 	move	a0,s0
     a1c:	8fbf0024 	lw	ra,36(sp)
     a20:	8fb00020 	lw	s0,32(sp)
     a24:	27bd0050 	addiu	sp,sp,80
     a28:	03e00008 	jr	ra
     a2c:	00000000 	nop

00000a30 <func_809B8D10>:
     a30:	27bdffd8 	addiu	sp,sp,-40
     a34:	afbf0024 	sw	ra,36(sp)
     a38:	afb00020 	sw	s0,32(sp)
     a3c:	00808025 	move	s0,a0
     a40:	ac800250 	sw	zero,592(a0)
     a44:	0c000000 	jal	0 <func_809B82E0>
     a48:	240538e3 	li	a1,14563
     a4c:	8602001c 	lh	v0,28(s0)
     a50:	2841fffd 	slti	at,v0,-3
     a54:	5420000f 	bnezl	at,a94 <func_809B8D10+0x64>
     a58:	2401fffe 	li	at,-2
     a5c:	960f0088 	lhu	t7,136(s0)
     a60:	860e008a 	lh	t6,138(s0)
     a64:	3c01c0e0 	lui	at,0xc0e0
     a68:	31f80008 	andi	t8,t7,0x8
     a6c:	17000004 	bnez	t8,a80 <func_809B8D10+0x50>
     a70:	a60e0032 	sh	t6,50(s0)
     a74:	44812000 	mtc1	at,$f4
     a78:	00000000 	nop
     a7c:	e6040068 	swc1	$f4,104(s0)
     a80:	3c010000 	lui	at,0x0
     a84:	c4260000 	lwc1	$f6,0(at)
     a88:	8602001c 	lh	v0,28(s0)
     a8c:	e60600bc 	swc1	$f6,188(s0)
     a90:	2401fffe 	li	at,-2
     a94:	54410004 	bnel	v0,at,aa8 <func_809B8D10+0x78>
     a98:	2419000c 	li	t9,12
     a9c:	0c000000 	jal	0 <func_809B82E0>
     aa0:	02002025 	move	a0,s0
     aa4:	2419000c 	li	t9,12
     aa8:	afb90010 	sw	t9,16(sp)
     aac:	02002025 	move	a0,s0
     ab0:	24054000 	li	a1,16384
     ab4:	240600ff 	li	a2,255
     ab8:	0c000000 	jal	0 <func_809B82E0>
     abc:	00003825 	move	a3,zero
     ac0:	24080005 	li	t0,5
     ac4:	3c050000 	lui	a1,0x0
     ac8:	ae080260 	sw	t0,608(s0)
     acc:	24a50000 	addiu	a1,a1,0
     ad0:	0c000000 	jal	0 <func_809B82E0>
     ad4:	02002025 	move	a0,s0
     ad8:	8fbf0024 	lw	ra,36(sp)
     adc:	8fb00020 	lw	s0,32(sp)
     ae0:	27bd0028 	addiu	sp,sp,40
     ae4:	03e00008 	jr	ra
     ae8:	00000000 	nop

00000aec <func_809B8DCC>:
     aec:	44800000 	mtc1	zero,$f0
     af0:	27bdffe0 	addiu	sp,sp,-32
     af4:	afa50024 	sw	a1,36(sp)
     af8:	afbf001c 	sw	ra,28(sp)
     afc:	afa40020 	sw	a0,32(sp)
     b00:	44050000 	mfc1	a1,$f0
     b04:	24840068 	addiu	a0,a0,104
     b08:	3c063f80 	lui	a2,0x3f80
     b0c:	3c073f00 	lui	a3,0x3f00
     b10:	0c000000 	jal	0 <func_809B82E0>
     b14:	e7a00010 	swc1	$f0,16(sp)
     b18:	8fa40020 	lw	a0,32(sp)
     b1c:	44802000 	mtc1	zero,$f4
     b20:	3c014348 	lui	at,0x4348
     b24:	c4860068 	lwc1	$f6,104(a0)
     b28:	46062032 	c.eq.s	$f4,$f6
     b2c:	00000000 	nop
     b30:	45020005 	bc1fl	b48 <func_809B8DCC+0x5c>
     b34:	8fbf001c 	lw	ra,28(sp)
     b38:	44814000 	mtc1	at,$f8
     b3c:	0c000000 	jal	0 <func_809B82E0>
     b40:	e48800bc 	swc1	$f8,188(a0)
     b44:	8fbf001c 	lw	ra,28(sp)
     b48:	27bd0020 	addiu	sp,sp,32
     b4c:	03e00008 	jr	ra
     b50:	00000000 	nop

00000b54 <func_809B8E34>:
     b54:	27bdffe0 	addiu	sp,sp,-32
     b58:	afb00018 	sw	s0,24(sp)
     b5c:	00808025 	move	s0,a0
     b60:	afbf001c 	sw	ra,28(sp)
     b64:	3c050600 	lui	a1,0x600
     b68:	24a50444 	addiu	a1,a1,1092
     b6c:	0c000000 	jal	0 <func_809B82E0>
     b70:	2484014c 	addiu	a0,a0,332
     b74:	0c000000 	jal	0 <func_809B82E0>
     b78:	00000000 	nop
     b7c:	3c013f00 	lui	at,0x3f00
     b80:	44811000 	mtc1	at,$f2
     b84:	00000000 	nop
     b88:	46020102 	mul.s	$f4,$f0,$f2
     b8c:	46022180 	add.s	$f6,$f4,$f2
     b90:	0c000000 	jal	0 <func_809B82E0>
     b94:	e6060068 	swc1	$f6,104(s0)
     b98:	3c0141a0 	lui	at,0x41a0
     b9c:	44814000 	mtc1	at,$f8
     ba0:	3c014220 	lui	at,0x4220
     ba4:	44818000 	mtc1	at,$f16
     ba8:	46080282 	mul.s	$f10,$f0,$f8
     bac:	46105480 	add.s	$f18,$f10,$f16
     bb0:	4600910d 	trunc.w.s	$f4,$f18
     bb4:	440f2000 	mfc1	t7,$f4
     bb8:	0c000000 	jal	0 <func_809B82E0>
     bbc:	ae0f0260 	sw	t7,608(s0)
     bc0:	3c0141f0 	lui	at,0x41f0
     bc4:	44813000 	mtc1	at,$f6
     bc8:	3c014334 	lui	at,0x4334
     bcc:	44815000 	mtc1	at,$f10
     bd0:	46060202 	mul.s	$f8,$f0,$f6
     bd4:	24080006 	li	t0,6
     bd8:	3c050000 	lui	a1,0x0
     bdc:	ae000324 	sw	zero,804(s0)
     be0:	ae080250 	sw	t0,592(s0)
     be4:	24a50000 	addiu	a1,a1,0
     be8:	02002025 	move	a0,s0
     bec:	460a4400 	add.s	$f16,$f8,$f10
     bf0:	4600848d 	trunc.w.s	$f18,$f16
     bf4:	44199000 	mfc1	t9,$f18
     bf8:	0c000000 	jal	0 <func_809B82E0>
     bfc:	ae190264 	sw	t9,612(s0)
     c00:	8fbf001c 	lw	ra,28(sp)
     c04:	8fb00018 	lw	s0,24(sp)
     c08:	27bd0020 	addiu	sp,sp,32
     c0c:	03e00008 	jr	ra
     c10:	00000000 	nop

00000c14 <func_809B8EF4>:
     c14:	27bdffb0 	addiu	sp,sp,-80
     c18:	44802000 	mtc1	zero,$f4
     c1c:	afb00020 	sw	s0,32(sp)
     c20:	00808025 	move	s0,a0
     c24:	afbf0024 	sw	ra,36(sp)
     c28:	afa50054 	sw	a1,84(sp)
     c2c:	3c0542a0 	lui	a1,0x42a0
     c30:	24840288 	addiu	a0,a0,648
     c34:	3c063f80 	lui	a2,0x3f80
     c38:	3c074120 	lui	a3,0x4120
     c3c:	0c000000 	jal	0 <func_809B82E0>
     c40:	e7a40010 	swc1	$f4,16(sp)
     c44:	44803000 	mtc1	zero,$f6
     c48:	2604028c 	addiu	a0,s0,652
     c4c:	3c0542c8 	lui	a1,0x42c8
     c50:	3c063f80 	lui	a2,0x3f80
     c54:	3c074120 	lui	a3,0x4120
     c58:	0c000000 	jal	0 <func_809B82E0>
     c5c:	e7a60010 	swc1	$f6,16(sp)
     c60:	3c01c6fa 	lui	at,0xc6fa
     c64:	44814000 	mtc1	at,$f8
     c68:	c6020080 	lwc1	$f2,128(s0)
     c6c:	4602403c 	c.lt.s	$f8,$f2
     c70:	00000000 	nop
     c74:	4500000d 	bc1f	cac <func_809B8EF4+0x98>
     c78:	3c014248 	lui	at,0x4248
     c7c:	44815000 	mtc1	at,$f10
     c80:	c6120280 	lwc1	$f18,640(s0)
     c84:	44803000 	mtc1	zero,$f6
     c88:	460a1400 	add.s	$f16,$f2,$f10
     c8c:	26040028 	addiu	a0,s0,40
     c90:	3c063f80 	lui	a2,0x3f80
     c94:	3c073f00 	lui	a3,0x3f00
     c98:	46128100 	add.s	$f4,$f16,$f18
     c9c:	e7a60010 	swc1	$f6,16(sp)
     ca0:	44052000 	mfc1	a1,$f4
     ca4:	0c000000 	jal	0 <func_809B82E0>
     ca8:	00000000 	nop
     cac:	2604014c 	addiu	a0,s0,332
     cb0:	0c000000 	jal	0 <func_809B82E0>
     cb4:	afa40034 	sw	a0,52(sp)
     cb8:	0c000000 	jal	0 <func_809B82E0>
     cbc:	c60c0274 	lwc1	$f12,628(s0)
     cc0:	44804000 	mtc1	zero,$f8
     cc4:	00000000 	nop
     cc8:	46080032 	c.eq.s	$f0,$f8
     ccc:	00000000 	nop
     cd0:	45000010 	bc1f	d14 <func_809B8EF4+0x100>
     cd4:	00000000 	nop
     cd8:	860e026a 	lh	t6,618(s0)
     cdc:	11c00006 	beqz	t6,cf8 <func_809B8EF4+0xe4>
     ce0:	00000000 	nop
     ce4:	0c000000 	jal	0 <func_809B82E0>
     ce8:	00000000 	nop
     cec:	46000280 	add.s	$f10,$f0,$f0
     cf0:	10000008 	b	d14 <func_809B8EF4+0x100>
     cf4:	e60a0284 	swc1	$f10,644(s0)
     cf8:	0c000000 	jal	0 <func_809B82E0>
     cfc:	00000000 	nop
     d00:	3c014080 	lui	at,0x4080
     d04:	44818000 	mtc1	at,$f16
     d08:	00000000 	nop
     d0c:	46100482 	mul.s	$f18,$f0,$f16
     d10:	e6120284 	swc1	$f18,644(s0)
     d14:	0c000000 	jal	0 <func_809B82E0>
     d18:	c60c0274 	lwc1	$f12,628(s0)
     d1c:	3c013f80 	lui	at,0x3f80
     d20:	44811000 	mtc1	at,$f2
     d24:	c6060284 	lwc1	$f6,644(s0)
     d28:	c6040028 	lwc1	$f4,40(s0)
     d2c:	3c010000 	lui	at,0x0
     d30:	46061200 	add.s	$f8,$f2,$f6
     d34:	c6120274 	lwc1	$f18,628(s0)
     d38:	8e05027c 	lw	a1,636(s0)
     d3c:	44061000 	mfc1	a2,$f2
     d40:	46080282 	mul.s	$f10,$f0,$f8
     d44:	26040068 	addiu	a0,s0,104
     d48:	3c073f00 	lui	a3,0x3f00
     d4c:	460a2400 	add.s	$f16,$f4,$f10
     d50:	44802000 	mtc1	zero,$f4
     d54:	e6100028 	swc1	$f16,40(s0)
     d58:	c4260000 	lwc1	$f6,0(at)
     d5c:	46069200 	add.s	$f8,$f18,$f6
     d60:	e6080274 	swc1	$f8,628(s0)
     d64:	0c000000 	jal	0 <func_809B82E0>
     d68:	e7a40010 	swc1	$f4,16(sp)
     d6c:	26040024 	addiu	a0,s0,36
     d70:	26050008 	addiu	a1,s0,8
     d74:	afa5002c 	sw	a1,44(sp)
     d78:	0c000000 	jal	0 <func_809B82E0>
     d7c:	afa40030 	sw	a0,48(sp)
     d80:	3c014396 	lui	at,0x4396
     d84:	44815000 	mtc1	at,$f10
     d88:	8fa5002c 	lw	a1,44(sp)
     d8c:	4600503c 	c.lt.s	$f10,$f0
     d90:	00000000 	nop
     d94:	4502000e 	bc1fl	dd0 <func_809B8EF4+0x1bc>
     d98:	8e0f0260 	lw	t7,608(s0)
     d9c:	0c000000 	jal	0 <func_809B82E0>
     da0:	8fa40030 	lw	a0,48(sp)
     da4:	a602026e 	sh	v0,622(s0)
     da8:	8605026e 	lh	a1,622(s0)
     dac:	26040032 	addiu	a0,s0,50
     db0:	afa4002c 	sw	a0,44(sp)
     db4:	afa00010 	sw	zero,16(sp)
     db8:	24060001 	li	a2,1
     dbc:	0c000000 	jal	0 <func_809B82E0>
     dc0:	240707d0 	li	a3,2000
     dc4:	1000011f 	b	1244 <func_809B8EF4+0x630>
     dc8:	8605026e 	lh	a1,622(s0)
     dcc:	8e0f0260 	lw	t7,608(s0)
     dd0:	25f8ffff 	addiu	t8,t7,-1
     dd4:	1f00005c 	bgtz	t8,f48 <func_809B8EF4+0x334>
     dd8:	ae180260 	sw	t8,608(s0)
     ddc:	860a026a 	lh	t2,618(s0)
     de0:	c60c0274 	lwc1	$f12,628(s0)
     de4:	394b0001 	xori	t3,t2,0x1
     de8:	0c000000 	jal	0 <func_809B82E0>
     dec:	a60b026a 	sh	t3,618(s0)
     df0:	3c014120 	lui	at,0x4120
     df4:	44818000 	mtc1	at,$f16
     df8:	8618026a 	lh	t8,618(s0)
     dfc:	44805000 	mtc1	zero,$f10
     e00:	46100482 	mul.s	$f18,$f0,$f16
     e04:	3c050600 	lui	a1,0x600
     e08:	24a50444 	addiu	a1,a1,1092
     e0c:	e60a0068 	swc1	$f10,104(s0)
     e10:	4600918d 	trunc.w.s	$f6,$f18
     e14:	440d3000 	mfc1	t5,$f6
     e18:	00000000 	nop
     e1c:	000d7400 	sll	t6,t5,0x10
     e20:	000e7c03 	sra	t7,t6,0x10
     e24:	448f4000 	mtc1	t7,$f8
     e28:	00000000 	nop
     e2c:	46804120 	cvt.s.w	$f4,$f8
     e30:	13000027 	beqz	t8,ed0 <func_809B8EF4+0x2bc>
     e34:	e6040280 	swc1	$f4,640(s0)
     e38:	8e190324 	lw	t9,804(s0)
     e3c:	3c014348 	lui	at,0x4348
     e40:	17200023 	bnez	t9,ed0 <func_809B8EF4+0x2bc>
     e44:	00000000 	nop
     e48:	c6100090 	lwc1	$f16,144(s0)
     e4c:	44819000 	mtc1	at,$f18
     e50:	860a0032 	lh	t2,50(s0)
     e54:	3c050600 	lui	a1,0x600
     e58:	4612803c 	c.lt.s	$f16,$f18
     e5c:	a60a026e 	sh	t2,622(s0)
     e60:	8fa40034 	lw	a0,52(sp)
     e64:	45000005 	bc1f	e7c <func_809B8EF4+0x268>
     e68:	00000000 	nop
     e6c:	0c000000 	jal	0 <func_809B82E0>
     e70:	24a50184 	addiu	a1,a1,388
     e74:	860b008a 	lh	t3,138(s0)
     e78:	a60b026e 	sh	t3,622(s0)
     e7c:	0c000000 	jal	0 <func_809B82E0>
     e80:	00000000 	nop
     e84:	3c013fc0 	lui	at,0x3fc0
     e88:	44813000 	mtc1	at,$f6
     e8c:	3c0140c0 	lui	at,0x40c0
     e90:	44812000 	mtc1	at,$f4
     e94:	46060202 	mul.s	$f8,$f0,$f6
     e98:	46044280 	add.s	$f10,$f8,$f4
     e9c:	0c000000 	jal	0 <func_809B82E0>
     ea0:	e60a027c 	swc1	$f10,636(s0)
     ea4:	3c0140a0 	lui	at,0x40a0
     ea8:	44818000 	mtc1	at,$f16
     eac:	3c0141a0 	lui	at,0x41a0
     eb0:	44813000 	mtc1	at,$f6
     eb4:	46100482 	mul.s	$f18,$f0,$f16
     eb8:	a6000268 	sh	zero,616(s0)
     ebc:	46069200 	add.s	$f8,$f18,$f6
     ec0:	4600410d 	trunc.w.s	$f4,$f8
     ec4:	440d2000 	mfc1	t5,$f4
     ec8:	1000001f 	b	f48 <func_809B8EF4+0x334>
     ecc:	ae0d0260 	sw	t5,608(s0)
     ed0:	0c000000 	jal	0 <func_809B82E0>
     ed4:	8fa40034 	lw	a0,52(sp)
     ed8:	0c000000 	jal	0 <func_809B82E0>
     edc:	00000000 	nop
     ee0:	3c013fc0 	lui	at,0x3fc0
     ee4:	44815000 	mtc1	at,$f10
     ee8:	3c013f80 	lui	at,0x3f80
     eec:	44819000 	mtc1	at,$f18
     ef0:	460a0402 	mul.s	$f16,$f0,$f10
     ef4:	46128180 	add.s	$f6,$f16,$f18
     ef8:	0c000000 	jal	0 <func_809B82E0>
     efc:	e606027c 	swc1	$f6,636(s0)
     f00:	3c0141a0 	lui	at,0x41a0
     f04:	44814000 	mtc1	at,$f8
     f08:	3c014220 	lui	at,0x4220
     f0c:	44815000 	mtc1	at,$f10
     f10:	46080102 	mul.s	$f4,$f0,$f8
     f14:	c60c0274 	lwc1	$f12,628(s0)
     f18:	460a2400 	add.s	$f16,$f4,$f10
     f1c:	4600848d 	trunc.w.s	$f18,$f16
     f20:	440f9000 	mfc1	t7,$f18
     f24:	0c000000 	jal	0 <func_809B82E0>
     f28:	ae0f0260 	sw	t7,608(s0)
     f2c:	3c010000 	lui	at,0x0
     f30:	c4260000 	lwc1	$f6,0(at)
     f34:	46060202 	mul.s	$f8,$f0,$f6
     f38:	4600410d 	trunc.w.s	$f4,$f8
     f3c:	44192000 	mfc1	t9,$f4
     f40:	00000000 	nop
     f44:	a619026e 	sh	t9,622(s0)
     f48:	3c014316 	lui	at,0x4316
     f4c:	44815000 	mtc1	at,$f10
     f50:	c6000090 	lwc1	$f0,144(s0)
     f54:	3c014348 	lui	at,0x4348
     f58:	460a003c 	c.lt.s	$f0,$f10
     f5c:	00000000 	nop
     f60:	45020026 	bc1fl	ffc <func_809B8EF4+0x3e8>
     f64:	44814000 	mtc1	at,$f8
     f68:	860a0268 	lh	t2,616(s0)
     f6c:	51400023 	beqzl	t2,ffc <func_809B8EF4+0x3e8>
     f70:	44814000 	mtc1	at,$f8
     f74:	860b026a 	lh	t3,618(s0)
     f78:	8fa40034 	lw	a0,52(sp)
     f7c:	3c050600 	lui	a1,0x600
     f80:	55600026 	bnezl	t3,101c <func_809B8EF4+0x408>
     f84:	8e020324 	lw	v0,804(s0)
     f88:	0c000000 	jal	0 <func_809B82E0>
     f8c:	24a50184 	addiu	a1,a1,388
     f90:	0c000000 	jal	0 <func_809B82E0>
     f94:	00000000 	nop
     f98:	3c013fc0 	lui	at,0x3fc0
     f9c:	44818000 	mtc1	at,$f16
     fa0:	3c0140c0 	lui	at,0x40c0
     fa4:	44813000 	mtc1	at,$f6
     fa8:	46100482 	mul.s	$f18,$f0,$f16
     fac:	46069200 	add.s	$f8,$f18,$f6
     fb0:	0c000000 	jal	0 <func_809B82E0>
     fb4:	e608027c 	swc1	$f8,636(s0)
     fb8:	3c0140a0 	lui	at,0x40a0
     fbc:	44812000 	mtc1	at,$f4
     fc0:	3c0141a0 	lui	at,0x41a0
     fc4:	44818000 	mtc1	at,$f16
     fc8:	46040282 	mul.s	$f10,$f0,$f4
     fcc:	240f0001 	li	t7,1
     fd0:	a60f026a 	sh	t7,618(s0)
     fd4:	860e008a 	lh	t6,138(s0)
     fd8:	8618026a 	lh	t8,618(s0)
     fdc:	a60e026e 	sh	t6,622(s0)
     fe0:	46105480 	add.s	$f18,$f10,$f16
     fe4:	a6180268 	sh	t8,616(s0)
     fe8:	4600918d 	trunc.w.s	$f6,$f18
     fec:	440d3000 	mfc1	t5,$f6
     ff0:	10000009 	b	1018 <func_809B8EF4+0x404>
     ff4:	ae0d0260 	sw	t5,608(s0)
     ff8:	44814000 	mtc1	at,$f8
     ffc:	00000000 	nop
    1000:	4608003c 	c.lt.s	$f0,$f8
    1004:	00000000 	nop
    1008:	45020004 	bc1fl	101c <func_809B8EF4+0x408>
    100c:	8e020324 	lw	v0,804(s0)
    1010:	8619008a 	lh	t9,138(s0)
    1014:	a619026e 	sh	t9,622(s0)
    1018:	8e020324 	lw	v0,804(s0)
    101c:	8fa40054 	lw	a0,84(sp)
    1020:	02002825 	move	a1,s0
    1024:	54400006 	bnezl	v0,1040 <func_809B8EF4+0x42c>
    1028:	844a001c 	lh	t2,28(v0)
    102c:	0c000000 	jal	0 <func_809B82E0>
    1030:	3c064396 	lui	a2,0x4396
    1034:	10000007 	b	1054 <func_809B8EF4+0x440>
    1038:	afa2004c 	sw	v0,76(sp)
    103c:	844a001c 	lh	t2,28(v0)
    1040:	55400004 	bnezl	t2,1054 <func_809B8EF4+0x440>
    1044:	afa0004c 	sw	zero,76(sp)
    1048:	10000002 	b	1054 <func_809B8EF4+0x440>
    104c:	afa2004c 	sw	v0,76(sp)
    1050:	afa0004c 	sw	zero,76(sp)
    1054:	8fab004c 	lw	t3,76(sp)
    1058:	02002025 	move	a0,s0
    105c:	260d0032 	addiu	t5,s0,50
    1060:	1160003a 	beqz	t3,114c <func_809B8EF4+0x538>
    1064:	01602825 	move	a1,t3
    1068:	260c0028 	addiu	t4,s0,40
    106c:	0c000000 	jal	0 <func_809B82E0>
    1070:	afac0034 	sw	t4,52(sp)
    1074:	860d026c 	lh	t5,620(s0)
    1078:	a602026e 	sh	v0,622(s0)
    107c:	26040032 	addiu	a0,s0,50
    1080:	15a0000e 	bnez	t5,10bc <func_809B8EF4+0x4a8>
    1084:	24060001 	li	a2,1
    1088:	8fae004c 	lw	t6,76(sp)
    108c:	8e0f0324 	lw	t7,804(s0)
    1090:	3c013f00 	lui	at,0x3f00
    1094:	51cf000a 	beql	t6,t7,10c0 <func_809B8EF4+0x4ac>
    1098:	8605026e 	lh	a1,622(s0)
    109c:	c6040068 	lwc1	$f4,104(s0)
    10a0:	44815000 	mtc1	at,$f10
    10a4:	24188000 	li	t8,-32768
    10a8:	a618026c 	sh	t8,620(s0)
    10ac:	460a2402 	mul.s	$f16,$f4,$f10
    10b0:	8fb9004c 	lw	t9,76(sp)
    10b4:	ae190324 	sw	t9,804(s0)
    10b8:	e6100068 	swc1	$f16,104(s0)
    10bc:	8605026e 	lh	a1,622(s0)
    10c0:	afa4002c 	sw	a0,44(sp)
    10c4:	afa00010 	sw	zero,16(sp)
    10c8:	0c000000 	jal	0 <func_809B82E0>
    10cc:	24071388 	li	a3,5000
    10d0:	8faa004c 	lw	t2,76(sp)
    10d4:	44809000 	mtc1	zero,$f18
    10d8:	8fa40030 	lw	a0,48(sp)
    10dc:	8d450024 	lw	a1,36(t2)
    10e0:	3c063f80 	lui	a2,0x3f80
    10e4:	3c073fc0 	lui	a3,0x3fc0
    10e8:	0c000000 	jal	0 <func_809B82E0>
    10ec:	e7b20010 	swc1	$f18,16(sp)
    10f0:	8fab004c 	lw	t3,76(sp)
    10f4:	3c014220 	lui	at,0x4220
    10f8:	44814000 	mtc1	at,$f8
    10fc:	c5660028 	lwc1	$f6,40(t3)
    1100:	44805000 	mtc1	zero,$f10
    1104:	8fa40034 	lw	a0,52(sp)
    1108:	46083100 	add.s	$f4,$f6,$f8
    110c:	3c063f80 	lui	a2,0x3f80
    1110:	3c073fc0 	lui	a3,0x3fc0
    1114:	e7aa0010 	swc1	$f10,16(sp)
    1118:	44052000 	mfc1	a1,$f4
    111c:	0c000000 	jal	0 <func_809B82E0>
    1120:	00000000 	nop
    1124:	8fac004c 	lw	t4,76(sp)
    1128:	44808000 	mtc1	zero,$f16
    112c:	2604002c 	addiu	a0,s0,44
    1130:	8d85002c 	lw	a1,44(t4)
    1134:	3c063f80 	lui	a2,0x3f80
    1138:	3c073fc0 	lui	a3,0x3fc0
    113c:	0c000000 	jal	0 <func_809B82E0>
    1140:	e7b00010 	swc1	$f16,16(sp)
    1144:	10000004 	b	1158 <func_809B8EF4+0x544>
    1148:	8604026c 	lh	a0,620(s0)
    114c:	ae000324 	sw	zero,804(s0)
    1150:	afad002c 	sw	t5,44(sp)
    1154:	8604026c 	lh	a0,620(s0)
    1158:	50800014 	beqzl	a0,11ac <func_809B8EF4+0x598>
    115c:	8608007e 	lh	t0,126(s0)
    1160:	0c000000 	jal	0 <func_809B82E0>
    1164:	00000000 	nop
    1168:	3c014120 	lui	at,0x4120
    116c:	44813000 	mtc1	at,$f6
    1170:	46000487 	neg.s	$f18,$f0
    1174:	c6040028 	lwc1	$f4,40(s0)
    1178:	46069202 	mul.s	$f8,$f18,$f6
    117c:	860e026c 	lh	t6,620(s0)
    1180:	8605026e 	lh	a1,622(s0)
    1184:	24060001 	li	a2,1
    1188:	25cf1000 	addiu	t7,t6,4096
    118c:	a60f026c 	sh	t7,620(s0)
    1190:	240707d0 	li	a3,2000
    1194:	46082280 	add.s	$f10,$f4,$f8
    1198:	e60a0028 	swc1	$f10,40(s0)
    119c:	afa00010 	sw	zero,16(sp)
    11a0:	0c000000 	jal	0 <func_809B82E0>
    11a4:	8fa4002c 	lw	a0,44(sp)
    11a8:	8608007e 	lh	t0,126(s0)
    11ac:	86090032 	lh	t1,50(s0)
    11b0:	8605026e 	lh	a1,622(s0)
    11b4:	8e180324 	lw	t8,804(s0)
    11b8:	01091023 	subu	v0,t0,t1
    11bc:	01052023 	subu	a0,t0,a1
    11c0:	00021400 	sll	v0,v0,0x10
    11c4:	00042400 	sll	a0,a0,0x10
    11c8:	00021403 	sra	v0,v0,0x10
    11cc:	1700001d 	bnez	t8,1244 <func_809B8EF4+0x630>
    11d0:	00042403 	sra	a0,a0,0x10
    11d4:	96190088 	lhu	t9,136(s0)
    11d8:	332a0008 	andi	t2,t9,0x8
    11dc:	5140001a 	beqzl	t2,1248 <func_809B8EF4+0x634>
    11e0:	8fa4002c 	lw	a0,44(sp)
    11e4:	04400003 	bltz	v0,11f4 <func_809B8EF4+0x5e0>
    11e8:	00021823 	negu	v1,v0
    11ec:	10000001 	b	11f4 <func_809B8EF4+0x5e0>
    11f0:	00401825 	move	v1,v0
    11f4:	28614001 	slti	at,v1,16385
    11f8:	10200007 	beqz	at,1218 <func_809B8EF4+0x604>
    11fc:	01085821 	addu	t3,t0,t0
    1200:	04800003 	bltz	a0,1210 <func_809B8EF4+0x5fc>
    1204:	00041023 	negu	v0,a0
    1208:	10000001 	b	1210 <func_809B8EF4+0x5fc>
    120c:	00801025 	move	v0,a0
    1210:	28414001 	slti	at,v0,16385
    1214:	1420000b 	bnez	at,1244 <func_809B8EF4+0x630>
    1218:	01696023 	subu	t4,t3,t1
    121c:	24018000 	li	at,-32768
    1220:	01816821 	addu	t5,t4,at
    1224:	a60d026e 	sh	t5,622(s0)
    1228:	8605026e 	lh	a1,622(s0)
    122c:	afa00010 	sw	zero,16(sp)
    1230:	8fa4002c 	lw	a0,44(sp)
    1234:	24060001 	li	a2,1
    1238:	0c000000 	jal	0 <func_809B82E0>
    123c:	24070bb8 	li	a3,3000
    1240:	8605026e 	lh	a1,622(s0)
    1244:	8fa4002c 	lw	a0,44(sp)
    1248:	24060001 	li	a2,1
    124c:	240703e8 	li	a3,1000
    1250:	0c000000 	jal	0 <func_809B82E0>
    1254:	afa00010 	sw	zero,16(sp)
    1258:	920302bd 	lbu	v1,701(s0)
    125c:	30630002 	andi	v1,v1,0x2
    1260:	54600006 	bnezl	v1,127c <func_809B8EF4+0x668>
    1264:	8618008a 	lh	t8,138(s0)
    1268:	920e02bc 	lbu	t6,700(s0)
    126c:	31cf0002 	andi	t7,t6,0x2
    1270:	51e00020 	beqzl	t7,12f4 <func_809B8EF4+0x6e0>
    1274:	3c0140c0 	lui	at,0x40c0
    1278:	8618008a 	lh	t8,138(s0)
    127c:	34018000 	li	at,0x8000
    1280:	24024000 	li	v0,16384
    1284:	0301c821 	addu	t9,t8,at
    1288:	10600003 	beqz	v1,1298 <func_809B8EF4+0x684>
    128c:	a619026e 	sh	t9,622(s0)
    1290:	1000000e 	b	12cc <func_809B8EF4+0x6b8>
    1294:	24028000 	li	v0,-32768
    1298:	02002025 	move	a0,s0
    129c:	240538cb 	li	a1,14539
    12a0:	0c000000 	jal	0 <func_809B82E0>
    12a4:	a7a20046 	sh	v0,70(sp)
    12a8:	8faa0054 	lw	t2,84(sp)
    12ac:	3c0b0001 	lui	t3,0x1
    12b0:	87a20046 	lh	v0,70(sp)
    12b4:	016a5821 	addu	t3,t3,t2
    12b8:	8d6b1de4 	lw	t3,7652(t3)
    12bc:	316c0001 	andi	t4,t3,0x1
    12c0:	51800003 	beqzl	t4,12d0 <func_809B8EF4+0x6bc>
    12c4:	860d008a 	lh	t5,138(s0)
    12c8:	2402c000 	li	v0,-16384
    12cc:	860d008a 	lh	t5,138(s0)
    12d0:	920f02bd 	lbu	t7,701(s0)
    12d4:	921902bc 	lbu	t9,700(s0)
    12d8:	01a27021 	addu	t6,t5,v0
    12dc:	31f8fffd 	andi	t8,t7,0xfffd
    12e0:	332afffd 	andi	t2,t9,0xfffd
    12e4:	a60e0032 	sh	t6,50(s0)
    12e8:	a21802bd 	sb	t8,701(s0)
    12ec:	a20a02bc 	sb	t2,700(s0)
    12f0:	3c0140c0 	lui	at,0x40c0
    12f4:	44819000 	mtc1	at,$f18
    12f8:	c610027c 	lwc1	$f16,636(s0)
    12fc:	4610903e 	c.le.s	$f18,$f16
    1300:	00000000 	nop
    1304:	45020020 	bc1fl	1388 <func_809B8EF4+0x774>
    1308:	c6060164 	lwc1	$f6,356(s0)
    130c:	c6060164 	lwc1	$f6,356(s0)
    1310:	24010005 	li	at,5
    1314:	02002025 	move	a0,s0
    1318:	4600310d 	trunc.w.s	$f4,$f6
    131c:	44022000 	mfc1	v0,$f4
    1320:	00000000 	nop
    1324:	10400003 	beqz	v0,1334 <func_809B8EF4+0x720>
    1328:	00000000 	nop
    132c:	54410009 	bnel	v0,at,1354 <func_809B8EF4+0x740>
    1330:	24010002 	li	at,2
    1334:	0c000000 	jal	0 <func_809B82E0>
    1338:	240538c9 	li	a1,14537
    133c:	c6080164 	lwc1	$f8,356(s0)
    1340:	4600428d 	trunc.w.s	$f10,$f8
    1344:	44025000 	mfc1	v0,$f10
    1348:	1000001c 	b	13bc <func_809B8EF4+0x7a8>
    134c:	00000000 	nop
    1350:	24010002 	li	at,2
    1354:	10410004 	beq	v0,at,1368 <func_809B8EF4+0x754>
    1358:	02002025 	move	a0,s0
    135c:	24010007 	li	at,7
    1360:	14410016 	bne	v0,at,13bc <func_809B8EF4+0x7a8>
    1364:	00000000 	nop
    1368:	0c000000 	jal	0 <func_809B82E0>
    136c:	240538c8 	li	a1,14536
    1370:	c6100164 	lwc1	$f16,356(s0)
    1374:	4600848d 	trunc.w.s	$f18,$f16
    1378:	44029000 	mfc1	v0,$f18
    137c:	1000000f 	b	13bc <func_809B8EF4+0x7a8>
    1380:	00000000 	nop
    1384:	c6060164 	lwc1	$f6,356(s0)
    1388:	24010005 	li	at,5
    138c:	02002025 	move	a0,s0
    1390:	4600310d 	trunc.w.s	$f4,$f6
    1394:	44022000 	mfc1	v0,$f4
    1398:	00000000 	nop
    139c:	14410007 	bne	v0,at,13bc <func_809B8EF4+0x7a8>
    13a0:	00000000 	nop
    13a4:	0c000000 	jal	0 <func_809B82E0>
    13a8:	240538c8 	li	a1,14536
    13ac:	c6080164 	lwc1	$f8,356(s0)
    13b0:	4600428d 	trunc.w.s	$f10,$f8
    13b4:	44025000 	mfc1	v0,$f10
    13b8:	00000000 	nop
    13bc:	5440000d 	bnezl	v0,13f4 <func_809B8EF4+0x7e0>
    13c0:	86180032 	lh	t8,50(s0)
    13c4:	0c000000 	jal	0 <func_809B82E0>
    13c8:	00000000 	nop
    13cc:	3c010000 	lui	at,0x0
    13d0:	c4300000 	lwc1	$f16,0(at)
    13d4:	02002025 	move	a0,s0
    13d8:	4610003c 	c.lt.s	$f0,$f16
    13dc:	00000000 	nop
    13e0:	45020004 	bc1fl	13f4 <func_809B8EF4+0x7e0>
    13e4:	86180032 	lh	t8,50(s0)
    13e8:	0c000000 	jal	0 <func_809B82E0>
    13ec:	240538ca 	li	a1,14538
    13f0:	86180032 	lh	t8,50(s0)
    13f4:	a61800b6 	sh	t8,182(s0)
    13f8:	8fbf0024 	lw	ra,36(sp)
    13fc:	8fb00020 	lw	s0,32(sp)
    1400:	27bd0050 	addiu	sp,sp,80
    1404:	03e00008 	jr	ra
    1408:	00000000 	nop

0000140c <func_809B96EC>:
    140c:	27bdffe8 	addiu	sp,sp,-24
    1410:	afbf0014 	sw	ra,20(sp)
    1414:	00803025 	move	a2,a0
    1418:	3c050600 	lui	a1,0x600
    141c:	24a50444 	addiu	a1,a1,1092
    1420:	afa60018 	sw	a2,24(sp)
    1424:	0c000000 	jal	0 <func_809B82E0>
    1428:	2484014c 	addiu	a0,a0,332
    142c:	8fa40018 	lw	a0,24(sp)
    1430:	3c014040 	lui	at,0x4040
    1434:	44812000 	mtc1	at,$f4
    1438:	94980088 	lhu	t8,136(a0)
    143c:	44800000 	mtc1	zero,$f0
    1440:	3c01c000 	lui	at,0xc000
    1444:	44813000 	mtc1	at,$f6
    1448:	240e0003 	li	t6,3
    144c:	240f00c8 	li	t7,200
    1450:	3319fffe 	andi	t9,t8,0xfffe
    1454:	240538cd 	li	a1,14541
    1458:	ac8e0250 	sw	t6,592(a0)
    145c:	ac8f0260 	sw	t7,608(a0)
    1460:	a0800114 	sb	zero,276(a0)
    1464:	a4990088 	sh	t9,136(a0)
    1468:	e4840068 	swc1	$f4,104(a0)
    146c:	e480028c 	swc1	$f0,652(a0)
    1470:	e4800288 	swc1	$f0,648(a0)
    1474:	0c000000 	jal	0 <func_809B82E0>
    1478:	e486006c 	swc1	$f6,108(a0)
    147c:	3c050000 	lui	a1,0x0
    1480:	8fa40018 	lw	a0,24(sp)
    1484:	0c000000 	jal	0 <func_809B82E0>
    1488:	24a50000 	addiu	a1,a1,0
    148c:	8fbf0014 	lw	ra,20(sp)
    1490:	27bd0018 	addiu	sp,sp,24
    1494:	03e00008 	jr	ra
    1498:	00000000 	nop

0000149c <func_809B977C>:
    149c:	27bdffc0 	addiu	sp,sp,-64
    14a0:	afbf0034 	sw	ra,52(sp)
    14a4:	afb00030 	sw	s0,48(sp)
    14a8:	afa50044 	sw	a1,68(sp)
    14ac:	848f007e 	lh	t7,126(a0)
    14b0:	848e0032 	lh	t6,50(a0)
    14b4:	00808025 	move	s0,a0
    14b8:	2484014c 	addiu	a0,a0,332
    14bc:	01cf1823 	subu	v1,t6,t7
    14c0:	00031c00 	sll	v1,v1,0x10
    14c4:	00031c03 	sra	v1,v1,0x10
    14c8:	0c000000 	jal	0 <func_809B82E0>
    14cc:	a7a3003e 	sh	v1,62(sp)
    14d0:	96040088 	lhu	a0,136(s0)
    14d4:	87a3003e 	lh	v1,62(sp)
    14d8:	30980008 	andi	t8,a0,0x8
    14dc:	53000014 	beqzl	t8,1530 <func_809B977C+0x94>
    14e0:	308c0003 	andi	t4,a0,0x3
    14e4:	04600003 	bltz	v1,14f4 <func_809B977C+0x58>
    14e8:	00031023 	negu	v0,v1
    14ec:	10000001 	b	14f4 <func_809B977C+0x58>
    14f0:	00601025 	move	v0,v1
    14f4:	28414001 	slti	at,v0,16385
    14f8:	5420000a 	bnezl	at,1524 <func_809B977C+0x88>
    14fc:	308bfff7 	andi	t3,a0,0xfff7
    1500:	8602007e 	lh	v0,126(s0)
    1504:	86080032 	lh	t0,50(s0)
    1508:	24018000 	li	at,-32768
    150c:	0042c821 	addu	t9,v0,v0
    1510:	03284823 	subu	t1,t9,t0
    1514:	01215021 	addu	t2,t1,at
    1518:	a60a0032 	sh	t2,50(s0)
    151c:	96040088 	lhu	a0,136(s0)
    1520:	308bfff7 	andi	t3,a0,0xfff7
    1524:	a60b0088 	sh	t3,136(s0)
    1528:	3164ffff 	andi	a0,t3,0xffff
    152c:	308c0003 	andi	t4,a0,0x3
    1530:	5180004e 	beqzl	t4,166c <func_809B977C+0x1d0>
    1534:	c6120164 	lwc1	$f18,356(s0)
    1538:	860d001c 	lh	t5,28(s0)
    153c:	8fa40044 	lw	a0,68(sp)
    1540:	2401fffe 	li	at,-2
    1544:	15a1001d 	bne	t5,at,15bc <func_809B977C+0x120>
    1548:	248407c0 	addiu	a0,a0,1984
    154c:	8e050078 	lw	a1,120(s0)
    1550:	0c000000 	jal	0 <func_809B82E0>
    1554:	9206007d 	lbu	a2,125(s0)
    1558:	24030002 	li	v1,2
    155c:	10430005 	beq	v0,v1,1574 <func_809B977C+0xd8>
    1560:	24010003 	li	at,3
    1564:	10410003 	beq	v0,at,1574 <func_809B977C+0xd8>
    1568:	24010009 	li	at,9
    156c:	54410014 	bnel	v0,at,15c0 <func_809B977C+0x124>
    1570:	02002025 	move	a0,s0
    1574:	860f0268 	lh	t7,616(s0)
    1578:	8e190004 	lw	t9,4(s0)
    157c:	2401fffe 	li	at,-2
    1580:	240e000a 	li	t6,10
    1584:	24090007 	li	t1,7
    1588:	3c050000 	lui	a1,0x0
    158c:	25f80001 	addiu	t8,t7,1
    1590:	03214024 	and	t0,t9,at
    1594:	ae03025c 	sw	v1,604(s0)
    1598:	ae0e0260 	sw	t6,608(s0)
    159c:	a6180268 	sh	t8,616(s0)
    15a0:	ae080004 	sw	t0,4(s0)
    15a4:	ae090250 	sw	t1,592(s0)
    15a8:	24a50000 	addiu	a1,a1,0
    15ac:	0c000000 	jal	0 <func_809B82E0>
    15b0:	02002025 	move	a0,s0
    15b4:	1000006b 	b	1764 <func_809B977C+0x2c8>
    15b8:	8fbf0034 	lw	ra,52(sp)
    15bc:	02002025 	move	a0,s0
    15c0:	0c000000 	jal	0 <func_809B82E0>
    15c4:	2405387b 	li	a1,14459
    15c8:	3c01c160 	lui	at,0xc160
    15cc:	44812000 	mtc1	at,$f4
    15d0:	c6000060 	lwc1	$f0,96(s0)
    15d4:	3c014120 	lui	at,0x4120
    15d8:	02002825 	move	a1,s0
    15dc:	4604003c 	c.lt.s	$f0,$f4
    15e0:	26060024 	addiu	a2,s0,36
    15e4:	3c0740e0 	lui	a3,0x40e0
    15e8:	240c0002 	li	t4,2
    15ec:	45020007 	bc1fl	160c <func_809B977C+0x170>
    15f0:	44815000 	mtc1	at,$f10
    15f4:	3c010000 	lui	at,0x0
    15f8:	c4260000 	lwc1	$f6,0(at)
    15fc:	46060202 	mul.s	$f8,$f0,$f6
    1600:	10000004 	b	1614 <func_809B977C+0x178>
    1604:	e6080060 	swc1	$f8,96(s0)
    1608:	44815000 	mtc1	at,$f10
    160c:	00000000 	nop
    1610:	e60a0060 	swc1	$f10,96(s0)
    1614:	960a0088 	lhu	t2,136(s0)
    1618:	3c014000 	lui	at,0x4000
    161c:	44818000 	mtc1	at,$f16
    1620:	314bfffe 	andi	t3,t2,0xfffe
    1624:	a60b0088 	sh	t3,136(s0)
    1628:	afa00020 	sw	zero,32(sp)
    162c:	afa0001c 	sw	zero,28(sp)
    1630:	afa00018 	sw	zero,24(sp)
    1634:	afac0010 	sw	t4,16(sp)
    1638:	8fa40044 	lw	a0,68(sp)
    163c:	0c000000 	jal	0 <func_809B82E0>
    1640:	e7b00014 	swc1	$f16,20(sp)
    1644:	8605008a 	lh	a1,138(s0)
    1648:	afa00010 	sw	zero,16(sp)
    164c:	26040032 	addiu	a0,s0,50
    1650:	00052823 	negu	a1,a1
    1654:	00052c00 	sll	a1,a1,0x10
    1658:	00052c03 	sra	a1,a1,0x10
    165c:	24060001 	li	a2,1
    1660:	0c000000 	jal	0 <func_809B82E0>
    1664:	24070bb8 	li	a3,3000
    1668:	c6120164 	lwc1	$f18,356(s0)
    166c:	860d0032 	lh	t5,50(s0)
    1670:	24010005 	li	at,5
    1674:	4600910d 	trunc.w.s	$f4,$f18
    1678:	02002025 	move	a0,s0
    167c:	a60d00b6 	sh	t5,182(s0)
    1680:	440f2000 	mfc1	t7,$f4
    1684:	00000000 	nop
    1688:	55e10004 	bnel	t7,at,169c <func_809B977C+0x200>
    168c:	8e020260 	lw	v0,608(s0)
    1690:	0c000000 	jal	0 <func_809B82E0>
    1694:	240538c8 	li	a1,14536
    1698:	8e020260 	lw	v0,608(s0)
    169c:	02002025 	move	a0,s0
    16a0:	1440002e 	bnez	v0,175c <func_809B977C+0x2c0>
    16a4:	2458ffff 	addiu	t8,v0,-1
    16a8:	0c000000 	jal	0 <func_809B82E0>
    16ac:	240538cc 	li	a1,14540
    16b0:	8602001c 	lh	v0,28(s0)
    16b4:	2401fffd 	li	at,-3
    16b8:	1041001c 	beq	v0,at,172c <func_809B977C+0x290>
    16bc:	2401fffe 	li	at,-2
    16c0:	1041000a 	beq	v0,at,16ec <func_809B977C+0x250>
    16c4:	2401ffff 	li	at,-1
    16c8:	54410026 	bnel	v0,at,1764 <func_809B977C+0x2c8>
    16cc:	8fbf0034 	lw	ra,52(sp)
    16d0:	44800000 	mtc1	zero,$f0
    16d4:	02002025 	move	a0,s0
    16d8:	e6000060 	swc1	$f0,96(s0)
    16dc:	0c000000 	jal	0 <func_809B82E0>
    16e0:	e600006c 	swc1	$f0,108(s0)
    16e4:	1000001f 	b	1764 <func_809B977C+0x2c8>
    16e8:	8fbf0034 	lw	ra,52(sp)
    16ec:	3c014120 	lui	at,0x4120
    16f0:	44813000 	mtc1	at,$f6
    16f4:	c6080060 	lwc1	$f8,96(s0)
    16f8:	8fa40044 	lw	a0,68(sp)
    16fc:	46083032 	c.eq.s	$f6,$f8
    1700:	00000000 	nop
    1704:	45020017 	bc1fl	1764 <func_809B977C+0x2c8>
    1708:	8fbf0034 	lw	ra,52(sp)
    170c:	0c000000 	jal	0 <func_809B82E0>
    1710:	02002825 	move	a1,s0
    1714:	8fa40044 	lw	a0,68(sp)
    1718:	02002825 	move	a1,s0
    171c:	0c000000 	jal	0 <func_809B82E0>
    1720:	24060001 	li	a2,1
    1724:	1000000f 	b	1764 <func_809B977C+0x2c8>
    1728:	8fbf0034 	lw	ra,52(sp)
    172c:	44800000 	mtc1	zero,$f0
    1730:	02002825 	move	a1,s0
    1734:	e6000060 	swc1	$f0,96(s0)
    1738:	e600006c 	swc1	$f0,108(s0)
    173c:	0c000000 	jal	0 <func_809B82E0>
    1740:	8fa40044 	lw	a0,68(sp)
    1744:	3c014270 	lui	at,0x4270
    1748:	44818000 	mtc1	at,$f16
    174c:	c60a0028 	lwc1	$f10,40(s0)
    1750:	46105481 	sub.s	$f18,$f10,$f16
    1754:	10000002 	b	1760 <func_809B977C+0x2c4>
    1758:	e6120028 	swc1	$f18,40(s0)
    175c:	ae180260 	sw	t8,608(s0)
    1760:	8fbf0034 	lw	ra,52(sp)
    1764:	8fb00030 	lw	s0,48(sp)
    1768:	27bd0040 	addiu	sp,sp,64
    176c:	03e00008 	jr	ra
    1770:	00000000 	nop

00001774 <func_809B9A54>:
    1774:	27bdffe8 	addiu	sp,sp,-24
    1778:	afa40018 	sw	a0,24(sp)
    177c:	00a03025 	move	a2,a1
    1780:	24a4014c 	addiu	a0,a1,332
    1784:	afbf0014 	sw	ra,20(sp)
    1788:	3c050600 	lui	a1,0x600
    178c:	24a50184 	addiu	a1,a1,388
    1790:	0c000000 	jal	0 <func_809B82E0>
    1794:	afa6001c 	sw	a2,28(sp)
    1798:	8fa6001c 	lw	a2,28(sp)
    179c:	24010003 	li	at,3
    17a0:	3c050000 	lui	a1,0x0
    17a4:	8cce0250 	lw	t6,592(a2)
    17a8:	24080004 	li	t0,4
    17ac:	24a50000 	addiu	a1,a1,0
    17b0:	15c10012 	bne	t6,at,17fc <func_809B9A54+0x88>
    17b4:	00c02025 	move	a0,a2
    17b8:	3c0140a0 	lui	at,0x40a0
    17bc:	44812000 	mtc1	at,$f4
    17c0:	3c01bf80 	lui	at,0xbf80
    17c4:	44813000 	mtc1	at,$f6
    17c8:	94d80088 	lhu	t8,136(a2)
    17cc:	3c014180 	lui	at,0x4180
    17d0:	44814000 	mtc1	at,$f8
    17d4:	240f0001 	li	t7,1
    17d8:	3319fffe 	andi	t9,t8,0xfffe
    17dc:	a4cf0268 	sh	t7,616(a2)
    17e0:	acc00260 	sw	zero,608(a2)
    17e4:	acc0025c 	sw	zero,604(a2)
    17e8:	a4d90088 	sh	t9,136(a2)
    17ec:	e4c40068 	swc1	$f4,104(a2)
    17f0:	e4c6006c 	swc1	$f6,108(a2)
    17f4:	1000001c 	b	1868 <func_809B9A54+0xf4>
    17f8:	e4c80060 	swc1	$f8,96(a2)
    17fc:	3c0142a0 	lui	at,0x42a0
    1800:	44818000 	mtc1	at,$f16
    1804:	c4ca0028 	lwc1	$f10,40(a2)
    1808:	8ccb0024 	lw	t3,36(a2)
    180c:	44800000 	mtc1	zero,$f0
    1810:	46105481 	sub.s	$f18,$f10,$f16
    1814:	94cc0088 	lhu	t4,136(a2)
    1818:	8cce0004 	lw	t6,4(a2)
    181c:	accb0008 	sw	t3,8(a2)
    1820:	e4d20028 	swc1	$f18,40(a2)
    1824:	8cca0028 	lw	t2,40(a2)
    1828:	8ccb002c 	lw	t3,44(a2)
    182c:	2401fffe 	li	at,-2
    1830:	24090002 	li	t1,2
    1834:	318dfffe 	andi	t5,t4,0xfffe
    1838:	01c17824 	and	t7,t6,at
    183c:	a0c800af 	sb	t0,175(a2)
    1840:	acc00260 	sw	zero,608(a2)
    1844:	a4c00268 	sh	zero,616(a2)
    1848:	acc9025c 	sw	t1,604(a2)
    184c:	a4cd0088 	sh	t5,136(a2)
    1850:	accf0004 	sw	t7,4(a2)
    1854:	e4c00068 	swc1	$f0,104(a2)
    1858:	e4c0006c 	swc1	$f0,108(a2)
    185c:	e4c00060 	swc1	$f0,96(a2)
    1860:	acca000c 	sw	t2,12(a2)
    1864:	accb0010 	sw	t3,16(a2)
    1868:	24180007 	li	t8,7
    186c:	0c000000 	jal	0 <func_809B82E0>
    1870:	acd80250 	sw	t8,592(a2)
    1874:	8fbf0014 	lw	ra,20(sp)
    1878:	27bd0018 	addiu	sp,sp,24
    187c:	03e00008 	jr	ra
    1880:	00000000 	nop

00001884 <func_809B9B64>:
    1884:	27bdffa8 	addiu	sp,sp,-88
    1888:	afbf0024 	sw	ra,36(sp)
    188c:	afb00020 	sw	s0,32(sp)
    1890:	afa5005c 	sw	a1,92(sp)
    1894:	8caf1c44 	lw	t7,7236(a1)
    1898:	00808025 	move	s0,a0
    189c:	2484014c 	addiu	a0,a0,332
    18a0:	0c000000 	jal	0 <func_809B82E0>
    18a4:	afaf0054 	sw	t7,84(sp)
    18a8:	8e030260 	lw	v1,608(s0)
    18ac:	24010001 	li	at,1
    18b0:	10600002 	beqz	v1,18bc <func_809B9B64+0x38>
    18b4:	2478ffff 	addiu	t8,v1,-1
    18b8:	ae180260 	sw	t8,608(s0)
    18bc:	8619008a 	lh	t9,138(s0)
    18c0:	860800b6 	lh	t0,182(s0)
    18c4:	86040268 	lh	a0,616(s0)
    18c8:	8fa50054 	lw	a1,84(sp)
    18cc:	03281023 	subu	v0,t9,t0
    18d0:	00021400 	sll	v0,v0,0x10
    18d4:	10800007 	beqz	a0,18f4 <func_809B9B64+0x70>
    18d8:	00021403 	sra	v0,v0,0x10
    18dc:	10810031 	beq	a0,at,19a4 <func_809B9B64+0x120>
    18e0:	24050002 	li	a1,2
    18e4:	5085009f 	beql	a0,a1,1b64 <func_809B9B64+0x2e0>
    18e8:	8e0f0260 	lw	t7,608(s0)
    18ec:	100000c0 	b	1bf0 <func_809B9B64+0x36c>
    18f0:	00000000 	nop
    18f4:	02002025 	move	a0,s0
    18f8:	0c000000 	jal	0 <func_809B82E0>
    18fc:	a7a2004e 	sh	v0,78(sp)
    1900:	3c01437a 	lui	at,0x437a
    1904:	44812000 	mtc1	at,$f4
    1908:	87a2004e 	lh	v0,78(sp)
    190c:	4604003e 	c.le.s	$f0,$f4
    1910:	00000000 	nop
    1914:	45000021 	bc1f	199c <func_809B9B64+0x118>
    1918:	00000000 	nop
    191c:	04400003 	bltz	v0,192c <func_809B9B64+0xa8>
    1920:	00021823 	negu	v1,v0
    1924:	10000001 	b	192c <func_809B9B64+0xa8>
    1928:	00401825 	move	v1,v0
    192c:	28614001 	slti	at,v1,16385
    1930:	1020001a 	beqz	at,199c <func_809B9B64+0x118>
    1934:	00000000 	nop
    1938:	8e090260 	lw	t1,608(s0)
    193c:	3c0140a0 	lui	at,0x40a0
    1940:	240a0001 	li	t2,1
    1944:	15200015 	bnez	t1,199c <func_809B9B64+0x118>
    1948:	240b0007 	li	t3,7
    194c:	44813000 	mtc1	at,$f6
    1950:	3c01bf80 	lui	at,0xbf80
    1954:	44814000 	mtc1	at,$f8
    1958:	960c0088 	lhu	t4,136(s0)
    195c:	860e0268 	lh	t6,616(s0)
    1960:	3c014190 	lui	at,0x4190
    1964:	44815000 	mtc1	at,$f10
    1968:	318dfffe 	andi	t5,t4,0xfffe
    196c:	25cf0001 	addiu	t7,t6,1
    1970:	ae0a025c 	sw	t2,604(s0)
    1974:	ae0b0260 	sw	t3,608(s0)
    1978:	a60d0088 	sh	t5,136(s0)
    197c:	a60f0268 	sh	t7,616(s0)
    1980:	e6060068 	swc1	$f6,104(s0)
    1984:	e608006c 	swc1	$f8,108(s0)
    1988:	e60a0060 	swc1	$f10,96(s0)
    198c:	8fa4005c 	lw	a0,92(sp)
    1990:	02002825 	move	a1,s0
    1994:	0c000000 	jal	0 <func_809B82E0>
    1998:	00003025 	move	a2,zero
    199c:	10000094 	b	1bf0 <func_809B9B64+0x36c>
    19a0:	86040268 	lh	a0,616(s0)
    19a4:	8e180260 	lw	t8,608(s0)
    19a8:	17000005 	bnez	t8,19c0 <func_809B9B64+0x13c>
    19ac:	00000000 	nop
    19b0:	8e190004 	lw	t9,4(s0)
    19b4:	ae00025c 	sw	zero,604(s0)
    19b8:	37280001 	ori	t0,t9,0x1
    19bc:	ae080004 	sw	t0,4(s0)
    19c0:	0c000000 	jal	0 <func_809B82E0>
    19c4:	00000000 	nop
    19c8:	c6100274 	lwc1	$f16,628(s0)
    19cc:	44801000 	mtc1	zero,$f2
    19d0:	26040288 	addiu	a0,s0,648
    19d4:	46008480 	add.s	$f18,$f16,$f0
    19d8:	3c0542a0 	lui	a1,0x42a0
    19dc:	3c063f80 	lui	a2,0x3f80
    19e0:	3c074120 	lui	a3,0x4120
    19e4:	e6120274 	swc1	$f18,628(s0)
    19e8:	0c000000 	jal	0 <func_809B82E0>
    19ec:	e7a20010 	swc1	$f2,16(sp)
    19f0:	44801000 	mtc1	zero,$f2
    19f4:	2604028c 	addiu	a0,s0,652
    19f8:	3c0542c8 	lui	a1,0x42c8
    19fc:	3c063f80 	lui	a2,0x3f80
    1a00:	3c074120 	lui	a3,0x4120
    1a04:	0c000000 	jal	0 <func_809B82E0>
    1a08:	e7a20010 	swc1	$f2,16(sp)
    1a0c:	96040088 	lhu	a0,136(s0)
    1a10:	30890008 	andi	t1,a0,0x8
    1a14:	51200016 	beqzl	t1,1a70 <func_809B9B64+0x1ec>
    1a18:	308e0001 	andi	t6,a0,0x1
    1a1c:	86060032 	lh	a2,50(s0)
    1a20:	8605007e 	lh	a1,126(s0)
    1a24:	00c51023 	subu	v0,a2,a1
    1a28:	00021400 	sll	v0,v0,0x10
    1a2c:	00021403 	sra	v0,v0,0x10
    1a30:	04400003 	bltz	v0,1a40 <func_809B9B64+0x1bc>
    1a34:	00021823 	negu	v1,v0
    1a38:	10000001 	b	1a40 <func_809B9B64+0x1bc>
    1a3c:	00401825 	move	v1,v0
    1a40:	28614001 	slti	at,v1,16385
    1a44:	14200006 	bnez	at,1a60 <func_809B9B64+0x1dc>
    1a48:	00a55021 	addu	t2,a1,a1
    1a4c:	01465823 	subu	t3,t2,a2
    1a50:	24018000 	li	at,-32768
    1a54:	01616021 	addu	t4,t3,at
    1a58:	a60c0032 	sh	t4,50(s0)
    1a5c:	96040088 	lhu	a0,136(s0)
    1a60:	308dfff7 	andi	t5,a0,0xfff7
    1a64:	a60d0088 	sh	t5,136(s0)
    1a68:	31a4ffff 	andi	a0,t5,0xffff
    1a6c:	308e0001 	andi	t6,a0,0x1
    1a70:	11c00030 	beqz	t6,1b34 <func_809B9B64+0x2b0>
    1a74:	8fa4005c 	lw	a0,92(sp)
    1a78:	248407c0 	addiu	a0,a0,1984
    1a7c:	8e050078 	lw	a1,120(s0)
    1a80:	0c000000 	jal	0 <func_809B82E0>
    1a84:	9206007d 	lbu	a2,125(s0)
    1a88:	24050002 	li	a1,2
    1a8c:	10450005 	beq	v0,a1,1aa4 <func_809B9B64+0x220>
    1a90:	24010003 	li	at,3
    1a94:	10410003 	beq	v0,at,1aa4 <func_809B9B64+0x220>
    1a98:	24010009 	li	at,9
    1a9c:	5441000d 	bnel	v0,at,1ad4 <func_809B9B64+0x250>
    1aa0:	3c014150 	lui	at,0x4150
    1aa4:	86180268 	lh	t8,616(s0)
    1aa8:	8e080004 	lw	t0,4(s0)
    1aac:	2401fffe 	li	at,-2
    1ab0:	240f000a 	li	t7,10
    1ab4:	27190001 	addiu	t9,t8,1
    1ab8:	01014824 	and	t1,t0,at
    1abc:	ae05025c 	sw	a1,604(s0)
    1ac0:	ae0f0260 	sw	t7,608(s0)
    1ac4:	a6190268 	sh	t9,616(s0)
    1ac8:	10000017 	b	1b28 <func_809B9B64+0x2a4>
    1acc:	ae090004 	sw	t1,4(s0)
    1ad0:	3c014150 	lui	at,0x4150
    1ad4:	44810000 	mtc1	at,$f0
    1ad8:	3c010000 	lui	at,0x0
    1adc:	c4260000 	lwc1	$f6,0(at)
    1ae0:	c6040060 	lwc1	$f4,96(s0)
    1ae4:	46062202 	mul.s	$f8,$f4,$f6
    1ae8:	e6080060 	swc1	$f8,96(s0)
    1aec:	c60a0060 	lwc1	$f10,96(s0)
    1af0:	460a003c 	c.lt.s	$f0,$f10
    1af4:	00000000 	nop
    1af8:	45000002 	bc1f	1b04 <func_809B9B64+0x280>
    1afc:	00000000 	nop
    1b00:	e6000060 	swc1	$f0,96(s0)
    1b04:	0c000000 	jal	0 <func_809B82E0>
    1b08:	c60c0274 	lwc1	$f12,628(s0)
    1b0c:	3c010000 	lui	at,0x0
    1b10:	c4300000 	lwc1	$f16,0(at)
    1b14:	46100482 	mul.s	$f18,$f0,$f16
    1b18:	4600910d 	trunc.w.s	$f4,$f18
    1b1c:	440b2000 	mfc1	t3,$f4
    1b20:	00000000 	nop
    1b24:	a60b0032 	sh	t3,50(s0)
    1b28:	960c0088 	lhu	t4,136(s0)
    1b2c:	318dfffe 	andi	t5,t4,0xfffe
    1b30:	a60d0088 	sh	t5,136(s0)
    1b34:	860e0032 	lh	t6,50(s0)
    1b38:	260502ac 	addiu	a1,s0,684
    1b3c:	a60e00b6 	sh	t6,182(s0)
    1b40:	0c000000 	jal	0 <func_809B82E0>
    1b44:	8fa4005c 	lw	a0,92(sp)
    1b48:	10400003 	beqz	v0,1b58 <func_809B9B64+0x2d4>
    1b4c:	00000000 	nop
    1b50:	0c000000 	jal	0 <func_809B82E0>
    1b54:	02002025 	move	a0,s0
    1b58:	10000025 	b	1bf0 <func_809B9B64+0x36c>
    1b5c:	86040268 	lh	a0,616(s0)
    1b60:	8e0f0260 	lw	t7,608(s0)
    1b64:	27a20038 	addiu	v0,sp,56
    1b68:	24180078 	li	t8,120
    1b6c:	15e00020 	bnez	t7,1bf0 <func_809B9B64+0x36c>
    1b70:	00000000 	nop
    1b74:	8e080008 	lw	t0,8(s0)
    1b78:	44801000 	mtc1	zero,$f2
    1b7c:	8e19000c 	lw	t9,12(s0)
    1b80:	ae080024 	sw	t0,36(s0)
    1b84:	8e080010 	lw	t0,16(s0)
    1b88:	8a0a0014 	lwl	t2,20(s0)
    1b8c:	9a0a0017 	lwr	t2,23(s0)
    1b90:	a6000268 	sh	zero,616(s0)
    1b94:	ae180260 	sw	t8,608(s0)
    1b98:	e6020068 	swc1	$f2,104(s0)
    1b9c:	e602006c 	swc1	$f2,108(s0)
    1ba0:	e6020060 	swc1	$f2,96(s0)
    1ba4:	ae190028 	sw	t9,40(s0)
    1ba8:	ae08002c 	sw	t0,44(s0)
    1bac:	ac4a0000 	sw	t2,0(v0)
    1bb0:	960a0018 	lhu	t2,24(s0)
    1bb4:	8c4c0000 	lw	t4,0(v0)
    1bb8:	02002025 	move	a0,s0
    1bbc:	a44a0004 	sh	t2,4(v0)
    1bc0:	aa0c0030 	swl	t4,48(s0)
    1bc4:	ba0c0033 	swr	t4,51(s0)
    1bc8:	944c0004 	lhu	t4,4(v0)
    1bcc:	a60c0034 	sh	t4,52(s0)
    1bd0:	884e0000 	lwl	t6,0(v0)
    1bd4:	984e0003 	lwr	t6,3(v0)
    1bd8:	aa0e00b4 	swl	t6,180(s0)
    1bdc:	ba0e00b7 	swr	t6,183(s0)
    1be0:	944e0004 	lhu	t6,4(v0)
    1be4:	0c000000 	jal	0 <func_809B82E0>
    1be8:	a60e00b8 	sh	t6,184(s0)
    1bec:	86040268 	lh	a0,616(s0)
    1bf0:	50800011 	beqzl	a0,1c38 <func_809B9B64+0x3b4>
    1bf4:	8fbf0024 	lw	ra,36(sp)
    1bf8:	c6060164 	lwc1	$f6,356(s0)
    1bfc:	24010005 	li	at,5
    1c00:	02002025 	move	a0,s0
    1c04:	4600320d 	trunc.w.s	$f8,$f6
    1c08:	44024000 	mfc1	v0,$f8
    1c0c:	00000000 	nop
    1c10:	10400003 	beqz	v0,1c20 <func_809B9B64+0x39c>
    1c14:	00000000 	nop
    1c18:	54410004 	bnel	v0,at,1c2c <func_809B9B64+0x3a8>
    1c1c:	02002025 	move	a0,s0
    1c20:	0c000000 	jal	0 <func_809B82E0>
    1c24:	240538c9 	li	a1,14537
    1c28:	02002025 	move	a0,s0
    1c2c:	0c000000 	jal	0 <func_809B82E0>
    1c30:	240530cf 	li	a1,12495
    1c34:	8fbf0024 	lw	ra,36(sp)
    1c38:	8fb00020 	lw	s0,32(sp)
    1c3c:	27bd0058 	addiu	sp,sp,88
    1c40:	03e00008 	jr	ra
    1c44:	00000000 	nop

00001c48 <func_809B9F28>:
    1c48:	27bdffe8 	addiu	sp,sp,-24
    1c4c:	00803025 	move	a2,a0
    1c50:	afbf0014 	sw	ra,20(sp)
    1c54:	24c50290 	addiu	a1,a2,656
    1c58:	afa60018 	sw	a2,24(sp)
    1c5c:	0c000000 	jal	0 <func_809B82E0>
    1c60:	24840024 	addiu	a0,a0,36
    1c64:	8fa60018 	lw	a2,24(sp)
    1c68:	a4c200b6 	sh	v0,182(a2)
    1c6c:	a4c20032 	sh	v0,50(a2)
    1c70:	8fbf0014 	lw	ra,20(sp)
    1c74:	27bd0018 	addiu	sp,sp,24
    1c78:	03e00008 	jr	ra
    1c7c:	00000000 	nop

00001c80 <func_809B9F60>:
    1c80:	3c0e0001 	lui	t6,0x1
    1c84:	908f029c 	lbu	t7,668(a0)
    1c88:	01c57021 	addu	t6,t6,a1
    1c8c:	8dce1e08 	lw	t6,7688(t6)
    1c90:	000fc0c0 	sll	t8,t7,0x3
    1c94:	9083029d 	lbu	v1,669(a0)
    1c98:	01d81021 	addu	v0,t6,t8
    1c9c:	90590000 	lbu	t9,0(v0)
    1ca0:	3c0e0000 	lui	t6,0x0
    1ca4:	3c0100ff 	lui	at,0xff
    1ca8:	2728ffff 	addiu	t0,t9,-1
    1cac:	00084c00 	sll	t1,t0,0x10
    1cb0:	00095403 	sra	t2,t1,0x10
    1cb4:	15430003 	bne	t2,v1,1cc4 <func_809B9F60+0x44>
    1cb8:	246b0001 	addiu	t3,v1,1
    1cbc:	10000002 	b	1cc8 <func_809B9F60+0x48>
    1cc0:	a080029d 	sb	zero,669(a0)
    1cc4:	a08b029d 	sb	t3,669(a0)
    1cc8:	8c450004 	lw	a1,4(v0)
    1ccc:	9088029d 	lbu	t0,669(a0)
    1cd0:	3421ffff 	ori	at,at,0xffff
    1cd4:	00056100 	sll	t4,a1,0x4
    1cd8:	000c6f02 	srl	t5,t4,0x1c
    1cdc:	000d7880 	sll	t7,t5,0x2
    1ce0:	01cf7021 	addu	t6,t6,t7
    1ce4:	8dce0000 	lw	t6,0(t6)
    1ce8:	00084880 	sll	t1,t0,0x2
    1cec:	00a1c024 	and	t8,a1,at
    1cf0:	01284823 	subu	t1,t1,t0
    1cf4:	00094840 	sll	t1,t1,0x1
    1cf8:	01d8c821 	addu	t9,t6,t8
    1cfc:	03291821 	addu	v1,t9,t1
    1d00:	3c018000 	lui	at,0x8000
    1d04:	00611821 	addu	v1,v1,at
    1d08:	846a0000 	lh	t2,0(v1)
    1d0c:	448a2000 	mtc1	t2,$f4
    1d10:	00000000 	nop
    1d14:	468021a0 	cvt.s.w	$f6,$f4
    1d18:	e4860290 	swc1	$f6,656(a0)
    1d1c:	846b0002 	lh	t3,2(v1)
    1d20:	448b4000 	mtc1	t3,$f8
    1d24:	00000000 	nop
    1d28:	468042a0 	cvt.s.w	$f10,$f8
    1d2c:	e48a0294 	swc1	$f10,660(a0)
    1d30:	846c0004 	lh	t4,4(v1)
    1d34:	448c8000 	mtc1	t4,$f16
    1d38:	00000000 	nop
    1d3c:	468084a0 	cvt.s.w	$f18,$f16
    1d40:	03e00008 	jr	ra
    1d44:	e4920298 	swc1	$f18,664(a0)

00001d48 <func_809BA028>:
    1d48:	27bdffe8 	addiu	sp,sp,-24
    1d4c:	afa40018 	sw	a0,24(sp)
    1d50:	00a03025 	move	a2,a1
    1d54:	24a4014c 	addiu	a0,a1,332
    1d58:	afbf0014 	sw	ra,20(sp)
    1d5c:	3c050600 	lui	a1,0x600
    1d60:	24a50444 	addiu	a1,a1,1092
    1d64:	0c000000 	jal	0 <func_809B82E0>
    1d68:	afa6001c 	sw	a2,28(sp)
    1d6c:	8fa6001c 	lw	a2,28(sp)
    1d70:	3c014270 	lui	at,0x4270
    1d74:	44814000 	mtc1	at,$f8
    1d78:	c4c60028 	lwc1	$f6,40(a2)
    1d7c:	3c0142c8 	lui	at,0x42c8
    1d80:	44802000 	mtc1	zero,$f4
    1d84:	46083280 	add.s	$f10,$f6,$f8
    1d88:	44818000 	mtc1	at,$f16
    1d8c:	240e0008 	li	t6,8
    1d90:	acce0250 	sw	t6,592(a2)
    1d94:	e4ca0028 	swc1	$f10,40(a2)
    1d98:	a0c0029d 	sb	zero,669(a2)
    1d9c:	e4c40068 	swc1	$f4,104(a2)
    1da0:	0c000000 	jal	0 <func_809B82E0>
    1da4:	e4d0028c 	swc1	$f16,652(a2)
    1da8:	3c0141f0 	lui	at,0x41f0
    1dac:	44819000 	mtc1	at,$f18
    1db0:	3c014220 	lui	at,0x4220
    1db4:	44813000 	mtc1	at,$f6
    1db8:	46120102 	mul.s	$f4,$f0,$f18
    1dbc:	8fa4001c 	lw	a0,28(sp)
    1dc0:	3c0140e0 	lui	at,0x40e0
    1dc4:	44818000 	mtc1	at,$f16
    1dc8:	3c050000 	lui	a1,0x0
    1dcc:	24a50000 	addiu	a1,a1,0
    1dd0:	e490027c 	swc1	$f16,636(a0)
    1dd4:	46062200 	add.s	$f8,$f4,$f6
    1dd8:	4600428d 	trunc.w.s	$f10,$f8
    1ddc:	44185000 	mfc1	t8,$f10
    1de0:	0c000000 	jal	0 <func_809B82E0>
    1de4:	ac980260 	sw	t8,608(a0)
    1de8:	8fbf0014 	lw	ra,20(sp)
    1dec:	27bd0018 	addiu	sp,sp,24
    1df0:	03e00008 	jr	ra
    1df4:	00000000 	nop

00001df8 <func_809BA0D8>:
    1df8:	27bdffb0 	addiu	sp,sp,-80
    1dfc:	afbf0024 	sw	ra,36(sp)
    1e00:	afb00020 	sw	s0,32(sp)
    1e04:	afa50054 	sw	a1,84(sp)
    1e08:	44800000 	mtc1	zero,$f0
    1e0c:	c4840068 	lwc1	$f4,104(a0)
    1e10:	00808025 	move	s0,a0
    1e14:	26050290 	addiu	a1,s0,656
    1e18:	46040032 	c.eq.s	$f0,$f4
    1e1c:	24840024 	addiu	a0,a0,36
    1e20:	3c063f80 	lui	a2,0x3f80
    1e24:	3c073f00 	lui	a3,0x3f00
    1e28:	45020098 	bc1fl	208c <func_809BA0D8+0x294>
    1e2c:	44050000 	mfc1	a1,$f0
    1e30:	0c000000 	jal	0 <func_809B82E0>
    1e34:	afa4002c 	sw	a0,44(sp)
    1e38:	00022400 	sll	a0,v0,0x10
    1e3c:	a7a20042 	sh	v0,66(sp)
    1e40:	0c000000 	jal	0 <func_809B82E0>
    1e44:	00042403 	sra	a0,a0,0x10
    1e48:	c606027c 	lwc1	$f6,636(s0)
    1e4c:	87a40042 	lh	a0,66(sp)
    1e50:	46060202 	mul.s	$f8,$f0,$f6
    1e54:	0c000000 	jal	0 <func_809B82E0>
    1e58:	e7a8003c 	swc1	$f8,60(sp)
    1e5c:	c60a027c 	lwc1	$f10,636(s0)
    1e60:	460a0402 	mul.s	$f16,$f0,$f10
    1e64:	e7b00038 	swc1	$f16,56(sp)
    1e68:	0c000000 	jal	0 <func_809B82E0>
    1e6c:	860400b6 	lh	a0,182(s0)
    1e70:	c7b20038 	lwc1	$f18,56(sp)
    1e74:	860400b6 	lh	a0,182(s0)
    1e78:	46120082 	mul.s	$f2,$f0,$f18
    1e7c:	0c000000 	jal	0 <func_809B82E0>
    1e80:	e7a20048 	swc1	$f2,72(sp)
    1e84:	c7a20048 	lwc1	$f2,72(sp)
    1e88:	44803000 	mtc1	zero,$f6
    1e8c:	c7a40038 	lwc1	$f4,56(sp)
    1e90:	44804000 	mtc1	zero,$f8
    1e94:	4602303e 	c.le.s	$f6,$f2
    1e98:	46040302 	mul.s	$f12,$f0,$f4
    1e9c:	8fa4002c 	lw	a0,44(sp)
    1ea0:	3c063f80 	lui	a2,0x3f80
    1ea4:	45020004 	bc1fl	1eb8 <func_809BA0D8+0xc0>
    1ea8:	46001007 	neg.s	$f0,$f2
    1eac:	10000002 	b	1eb8 <func_809BA0D8+0xc0>
    1eb0:	46001006 	mov.s	$f0,$f2
    1eb4:	46001007 	neg.s	$f0,$f2
    1eb8:	8e050290 	lw	a1,656(s0)
    1ebc:	44070000 	mfc1	a3,$f0
    1ec0:	e7ac0044 	swc1	$f12,68(sp)
    1ec4:	0c000000 	jal	0 <func_809B82E0>
    1ec8:	e7a80010 	swc1	$f8,16(sp)
    1ecc:	c7ae003c 	lwc1	$f14,60(sp)
    1ed0:	44805000 	mtc1	zero,$f10
    1ed4:	44808000 	mtc1	zero,$f16
    1ed8:	c7ac0044 	lwc1	$f12,68(sp)
    1edc:	460e503e 	c.le.s	$f10,$f14
    1ee0:	46000086 	mov.s	$f2,$f0
    1ee4:	26040028 	addiu	a0,s0,40
    1ee8:	3c063f80 	lui	a2,0x3f80
    1eec:	45020004 	bc1fl	1f00 <func_809BA0D8+0x108>
    1ef0:	46007007 	neg.s	$f0,$f14
    1ef4:	10000002 	b	1f00 <func_809BA0D8+0x108>
    1ef8:	46007006 	mov.s	$f0,$f14
    1efc:	46007007 	neg.s	$f0,$f14
    1f00:	8e050294 	lw	a1,660(s0)
    1f04:	44070000 	mfc1	a3,$f0
    1f08:	e7ac0044 	swc1	$f12,68(sp)
    1f0c:	e7a2004c 	swc1	$f2,76(sp)
    1f10:	0c000000 	jal	0 <func_809B82E0>
    1f14:	e7b00010 	swc1	$f16,16(sp)
    1f18:	c7ac0044 	lwc1	$f12,68(sp)
    1f1c:	44809000 	mtc1	zero,$f18
    1f20:	c7a2004c 	lwc1	$f2,76(sp)
    1f24:	44802000 	mtc1	zero,$f4
    1f28:	460c903e 	c.le.s	$f18,$f12
    1f2c:	2604002c 	addiu	a0,s0,44
    1f30:	3c063f80 	lui	a2,0x3f80
    1f34:	46001080 	add.s	$f2,$f2,$f0
    1f38:	45020004 	bc1fl	1f4c <func_809BA0D8+0x154>
    1f3c:	46006007 	neg.s	$f0,$f12
    1f40:	10000002 	b	1f4c <func_809BA0D8+0x154>
    1f44:	46006006 	mov.s	$f0,$f12
    1f48:	46006007 	neg.s	$f0,$f12
    1f4c:	8e050298 	lw	a1,664(s0)
    1f50:	44070000 	mfc1	a3,$f0
    1f54:	e7a2004c 	swc1	$f2,76(sp)
    1f58:	0c000000 	jal	0 <func_809B82E0>
    1f5c:	e7a40010 	swc1	$f4,16(sp)
    1f60:	c7a2004c 	lwc1	$f2,76(sp)
    1f64:	46001080 	add.s	$f2,$f2,$f0
    1f68:	0c000000 	jal	0 <func_809B82E0>
    1f6c:	e7a2004c 	swc1	$f2,76(sp)
    1f70:	3c010000 	lui	at,0x0
    1f74:	c4260000 	lwc1	$f6,0(at)
    1f78:	3c010000 	lui	at,0x0
    1f7c:	c4280000 	lwc1	$f8,0(at)
    1f80:	c7a2004c 	lwc1	$f2,76(sp)
    1f84:	c6120274 	lwc1	$f18,628(s0)
    1f88:	46080282 	mul.s	$f10,$f0,$f8
    1f8c:	44804000 	mtc1	zero,$f8
    1f90:	3c014120 	lui	at,0x4120
    1f94:	46081032 	c.eq.s	$f2,$f8
    1f98:	460a3400 	add.s	$f16,$f6,$f10
    1f9c:	46109100 	add.s	$f4,$f18,$f16
    1fa0:	45000028 	bc1f	2044 <func_809BA0D8+0x24c>
    1fa4:	e6040274 	swc1	$f4,628(s0)
    1fa8:	8e0e0260 	lw	t6,608(s0)
    1fac:	02002025 	move	a0,s0
    1fb0:	25cfffff 	addiu	t7,t6,-1
    1fb4:	15e00015 	bnez	t7,200c <func_809BA0D8+0x214>
    1fb8:	ae0f0260 	sw	t7,608(s0)
    1fbc:	0c000000 	jal	0 <func_809B82E0>
    1fc0:	8fa50054 	lw	a1,84(sp)
    1fc4:	0c000000 	jal	0 <func_809B82E0>
    1fc8:	02002025 	move	a0,s0
    1fcc:	3c050600 	lui	a1,0x600
    1fd0:	24a50184 	addiu	a1,a1,388
    1fd4:	0c000000 	jal	0 <func_809B82E0>
    1fd8:	2604014c 	addiu	a0,s0,332
    1fdc:	0c000000 	jal	0 <func_809B82E0>
    1fe0:	00000000 	nop
    1fe4:	3c0141f0 	lui	at,0x41f0
    1fe8:	44813000 	mtc1	at,$f6
    1fec:	3c014220 	lui	at,0x4220
    1ff0:	44819000 	mtc1	at,$f18
    1ff4:	46060282 	mul.s	$f10,$f0,$f6
    1ff8:	46125400 	add.s	$f16,$f10,$f18
    1ffc:	4600810d 	trunc.w.s	$f4,$f16
    2000:	44082000 	mfc1	t0,$f4
    2004:	1000000b 	b	2034 <func_809BA0D8+0x23c>
    2008:	ae080260 	sw	t0,608(s0)
    200c:	8e09025c 	lw	t1,604(s0)
    2010:	2604014c 	addiu	a0,s0,332
    2014:	3c050600 	lui	a1,0x600
    2018:	51200004 	beqzl	t1,202c <func_809BA0D8+0x234>
    201c:	860a0032 	lh	t2,50(s0)
    2020:	0c000000 	jal	0 <func_809B82E0>
    2024:	24a50444 	addiu	a1,a1,1092
    2028:	860a0032 	lh	t2,50(s0)
    202c:	254b1f40 	addiu	t3,t2,8000
    2030:	a60b0032 	sh	t3,50(s0)
    2034:	44804000 	mtc1	zero,$f8
    2038:	ae00025c 	sw	zero,604(s0)
    203c:	10000005 	b	2054 <func_809BA0D8+0x25c>
    2040:	e608027c 	swc1	$f8,636(s0)
    2044:	44813000 	mtc1	at,$f6
    2048:	240c0001 	li	t4,1
    204c:	ae0c025c 	sw	t4,604(s0)
    2050:	e606027c 	swc1	$f6,636(s0)
    2054:	920d02bc 	lbu	t5,700(s0)
    2058:	02002025 	move	a0,s0
    205c:	31ae0002 	andi	t6,t5,0x2
    2060:	51c00007 	beqzl	t6,2080 <func_809BA0D8+0x288>
    2064:	86190032 	lh	t9,50(s0)
    2068:	0c000000 	jal	0 <func_809B82E0>
    206c:	240538cb 	li	a1,14539
    2070:	920f02bc 	lbu	t7,700(s0)
    2074:	31f8fffd 	andi	t8,t7,0xfffd
    2078:	a21802bc 	sb	t8,700(s0)
    207c:	86190032 	lh	t9,50(s0)
    2080:	1000000d 	b	20b8 <func_809BA0D8+0x2c0>
    2084:	a61900b6 	sh	t9,182(s0)
    2088:	44050000 	mfc1	a1,$f0
    208c:	26040068 	addiu	a0,s0,104
    2090:	0c000000 	jal	0 <func_809B82E0>
    2094:	e7a00010 	swc1	$f0,16(sp)
    2098:	44805000 	mtc1	zero,$f10
    209c:	00000000 	nop
    20a0:	460a0032 	c.eq.s	$f0,$f10
    20a4:	00000000 	nop
    20a8:	45000003 	bc1f	20b8 <func_809BA0D8+0x2c0>
    20ac:	00000000 	nop
    20b0:	0c000000 	jal	0 <func_809B82E0>
    20b4:	02002025 	move	a0,s0
    20b8:	0c000000 	jal	0 <func_809B82E0>
    20bc:	2604014c 	addiu	a0,s0,332
    20c0:	c6120164 	lwc1	$f18,356(s0)
    20c4:	4600940d 	trunc.w.s	$f16,$f18
    20c8:	44098000 	mfc1	t1,$f16
    20cc:	00000000 	nop
    20d0:	5520000d 	bnezl	t1,2108 <func_809BA0D8+0x310>
    20d4:	c6080164 	lwc1	$f8,356(s0)
    20d8:	0c000000 	jal	0 <func_809B82E0>
    20dc:	00000000 	nop
    20e0:	3c010000 	lui	at,0x0
    20e4:	c4240000 	lwc1	$f4,0(at)
    20e8:	02002025 	move	a0,s0
    20ec:	4604003e 	c.le.s	$f0,$f4
    20f0:	00000000 	nop
    20f4:	45020004 	bc1fl	2108 <func_809BA0D8+0x310>
    20f8:	c6080164 	lwc1	$f8,356(s0)
    20fc:	0c000000 	jal	0 <func_809B82E0>
    2100:	240538ca 	li	a1,14538
    2104:	c6080164 	lwc1	$f8,356(s0)
    2108:	44805000 	mtc1	zero,$f10
    210c:	c612027c 	lwc1	$f18,636(s0)
    2110:	4600418d 	trunc.w.s	$f6,$f8
    2114:	46125032 	c.eq.s	$f10,$f18
    2118:	44023000 	mfc1	v0,$f6
    211c:	4503000a 	bc1tl	2148 <func_809BA0D8+0x350>
    2120:	24010002 	li	at,2
    2124:	10400002 	beqz	v0,2130 <func_809BA0D8+0x338>
    2128:	24010005 	li	at,5
    212c:	14410005 	bne	v0,at,2144 <func_809BA0D8+0x34c>
    2130:	02002025 	move	a0,s0
    2134:	0c000000 	jal	0 <func_809B82E0>
    2138:	240538c9 	li	a1,14537
    213c:	1000000a 	b	2168 <func_809BA0D8+0x370>
    2140:	8fbf0024 	lw	ra,36(sp)
    2144:	24010002 	li	at,2
    2148:	10410004 	beq	v0,at,215c <func_809BA0D8+0x364>
    214c:	02002025 	move	a0,s0
    2150:	24010007 	li	at,7
    2154:	54410004 	bnel	v0,at,2168 <func_809BA0D8+0x370>
    2158:	8fbf0024 	lw	ra,36(sp)
    215c:	0c000000 	jal	0 <func_809B82E0>
    2160:	240538c8 	li	a1,14536
    2164:	8fbf0024 	lw	ra,36(sp)
    2168:	8fb00020 	lw	s0,32(sp)
    216c:	27bd0050 	addiu	sp,sp,80
    2170:	03e00008 	jr	ra
    2174:	00000000 	nop

00002178 <func_809BA458>:
    2178:	27bdffd0 	addiu	sp,sp,-48
    217c:	3c0f0000 	lui	t7,0x0
    2180:	afbf001c 	sw	ra,28(sp)
    2184:	afb00018 	sw	s0,24(sp)
    2188:	afa50034 	sw	a1,52(sp)
    218c:	25ef0000 	addiu	t7,t7,0
    2190:	8df90000 	lw	t9,0(t7)
    2194:	27ae0024 	addiu	t6,sp,36
    2198:	8df80004 	lw	t8,4(t7)
    219c:	add90000 	sw	t9,0(t6)
    21a0:	8df90008 	lw	t9,8(t7)
    21a4:	00808025 	move	s0,a0
    21a8:	3c050600 	lui	a1,0x600
    21ac:	24a50444 	addiu	a1,a1,1092
    21b0:	2484014c 	addiu	a0,a0,332
    21b4:	add80004 	sw	t8,4(t6)
    21b8:	0c000000 	jal	0 <func_809B82E0>
    21bc:	add90008 	sw	t9,8(t6)
    21c0:	24080001 	li	t0,1
    21c4:	ae08025c 	sw	t0,604(s0)
    21c8:	0c000000 	jal	0 <func_809B82E0>
    21cc:	a6000268 	sh	zero,616(s0)
    21d0:	860b001c 	lh	t3,28(s0)
    21d4:	a60000b8 	sh	zero,184(s0)
    21d8:	860900b8 	lh	t1,184(s0)
    21dc:	860a008a 	lh	t2,138(s0)
    21e0:	2401fffb 	li	at,-5
    21e4:	e6000274 	swc1	$f0,628(s0)
    21e8:	a60900b4 	sh	t1,180(s0)
    21ec:	15610006 	bne	t3,at,2208 <func_809BA458+0x90>
    21f0:	a60a00b6 	sh	t2,182(s0)
    21f4:	02002025 	move	a0,s0
    21f8:	0c000000 	jal	0 <func_809B82E0>
    21fc:	8fa50034 	lw	a1,52(sp)
    2200:	0c000000 	jal	0 <func_809B82E0>
    2204:	02002025 	move	a0,s0
    2208:	c60c0008 	lwc1	$f12,8(s0)
    220c:	c60e000c 	lwc1	$f14,12(s0)
    2210:	8e060010 	lw	a2,16(s0)
    2214:	0c000000 	jal	0 <func_809B82E0>
    2218:	00003825 	move	a3,zero
    221c:	86040030 	lh	a0,48(s0)
    2220:	86050032 	lh	a1,50(s0)
    2224:	00003025 	move	a2,zero
    2228:	0c000000 	jal	0 <func_809B82E0>
    222c:	24070001 	li	a3,1
    2230:	c60c0274 	lwc1	$f12,628(s0)
    2234:	0c000000 	jal	0 <func_809B82E0>
    2238:	24050001 	li	a1,1
    223c:	c6040278 	lwc1	$f4,632(s0)
    2240:	27a40024 	addiu	a0,sp,36
    2244:	26050024 	addiu	a1,s0,36
    2248:	0c000000 	jal	0 <func_809B82E0>
    224c:	e7a40028 	swc1	$f4,40(sp)
    2250:	44803000 	mtc1	zero,$f6
    2254:	240c0009 	li	t4,9
    2258:	ae000324 	sw	zero,804(s0)
    225c:	ae0c0250 	sw	t4,592(s0)
    2260:	0c000000 	jal	0 <func_809B82E0>
    2264:	e6060068 	swc1	$f6,104(s0)
    2268:	3c0141f0 	lui	at,0x41f0
    226c:	44814000 	mtc1	at,$f8
    2270:	3c014334 	lui	at,0x4334
    2274:	44818000 	mtc1	at,$f16
    2278:	46080282 	mul.s	$f10,$f0,$f8
    227c:	3c050000 	lui	a1,0x0
    2280:	24a50000 	addiu	a1,a1,0
    2284:	02002025 	move	a0,s0
    2288:	46105480 	add.s	$f18,$f10,$f16
    228c:	4600910d 	trunc.w.s	$f4,$f18
    2290:	440e2000 	mfc1	t6,$f4
    2294:	0c000000 	jal	0 <func_809B82E0>
    2298:	a60e026e 	sh	t6,622(s0)
    229c:	8fbf001c 	lw	ra,28(sp)
    22a0:	8fb00018 	lw	s0,24(sp)
    22a4:	27bd0030 	addiu	sp,sp,48
    22a8:	03e00008 	jr	ra
    22ac:	00000000 	nop

000022b0 <func_809BA590>:
    22b0:	27bdffe8 	addiu	sp,sp,-24
    22b4:	afbf0014 	sw	ra,20(sp)
    22b8:	00803025 	move	a2,a0
    22bc:	3c050600 	lui	a1,0x600
    22c0:	24a50444 	addiu	a1,a1,1092
    22c4:	afa60018 	sw	a2,24(sp)
    22c8:	0c000000 	jal	0 <func_809B82E0>
    22cc:	2484014c 	addiu	a0,a0,332
    22d0:	8fa60018 	lw	a2,24(sp)
    22d4:	44802000 	mtc1	zero,$f4
    22d8:	240e0001 	li	t6,1
    22dc:	240f0009 	li	t7,9
    22e0:	acce025c 	sw	t6,604(a2)
    22e4:	a4c00268 	sh	zero,616(a2)
    22e8:	acc00324 	sw	zero,804(a2)
    22ec:	accf0250 	sw	t7,592(a2)
    22f0:	0c000000 	jal	0 <func_809B82E0>
    22f4:	e4c40068 	swc1	$f4,104(a2)
    22f8:	3c0141f0 	lui	at,0x41f0
    22fc:	44813000 	mtc1	at,$f6
    2300:	3c014334 	lui	at,0x4334
    2304:	44815000 	mtc1	at,$f10
    2308:	46060202 	mul.s	$f8,$f0,$f6
    230c:	8fa40018 	lw	a0,24(sp)
    2310:	3c050000 	lui	a1,0x0
    2314:	24a50000 	addiu	a1,a1,0
    2318:	8488008a 	lh	t0,138(a0)
    231c:	a48000b8 	sh	zero,184(a0)
    2320:	460a4400 	add.s	$f16,$f8,$f10
    2324:	a48800b6 	sh	t0,182(a0)
    2328:	4600848d 	trunc.w.s	$f18,$f16
    232c:	44199000 	mfc1	t9,$f18
    2330:	0c000000 	jal	0 <func_809B82E0>
    2334:	a499026e 	sh	t9,622(a0)
    2338:	8fbf0014 	lw	ra,20(sp)
    233c:	27bd0018 	addiu	sp,sp,24
    2340:	03e00008 	jr	ra
    2344:	00000000 	nop

00002348 <func_809BA628>:
    2348:	27bdff90 	addiu	sp,sp,-112
    234c:	3c180000 	lui	t8,0x0
    2350:	afbf0024 	sw	ra,36(sp)
    2354:	afb00020 	sw	s0,32(sp)
    2358:	afa50074 	sw	a1,116(sp)
    235c:	27180000 	addiu	t8,t8,0
    2360:	8f080000 	lw	t0,0(t8)
    2364:	8ca21c44 	lw	v0,7236(a1)
    2368:	27af0060 	addiu	t7,sp,96
    236c:	ade80000 	sw	t0,0(t7)
    2370:	8f080008 	lw	t0,8(t8)
    2374:	8f190004 	lw	t9,4(t8)
    2378:	27a90054 	addiu	t1,sp,84
    237c:	ade80008 	sw	t0,8(t7)
    2380:	adf90004 	sw	t9,4(t7)
    2384:	8c4b0024 	lw	t3,36(v0)
    2388:	3c0141f0 	lui	at,0x41f0
    238c:	44813000 	mtc1	at,$f6
    2390:	ad2b0000 	sw	t3,0(t1)
    2394:	8c4a0028 	lw	t2,40(v0)
    2398:	2401fffb 	li	at,-5
    239c:	00808025 	move	s0,a0
    23a0:	ad2a0004 	sw	t2,4(t1)
    23a4:	8c4b002c 	lw	t3,44(v0)
    23a8:	ad2b0008 	sw	t3,8(t1)
    23ac:	c7a40058 	lwc1	$f4,88(sp)
    23b0:	46062200 	add.s	$f8,$f4,$f6
    23b4:	e7a80058 	swc1	$f8,88(sp)
    23b8:	848c001c 	lh	t4,28(a0)
    23bc:	558100ad 	bnel	t4,at,2674 <func_809BA628+0x32c>
    23c0:	8605008a 	lh	a1,138(s0)
    23c4:	44800000 	mtc1	zero,$f0
    23c8:	c48a0068 	lwc1	$f10,104(a0)
    23cc:	24840008 	addiu	a0,a0,8
    23d0:	26050290 	addiu	a1,s0,656
    23d4:	460a0032 	c.eq.s	$f0,$f10
    23d8:	3c063f80 	lui	a2,0x3f80
    23dc:	3c073f00 	lui	a3,0x3f00
    23e0:	45020095 	bc1fl	2638 <func_809BA628+0x2f0>
    23e4:	44050000 	mfc1	a1,$f0
    23e8:	afa4002c 	sw	a0,44(sp)
    23ec:	0c000000 	jal	0 <func_809B82E0>
    23f0:	afa50028 	sw	a1,40(sp)
    23f4:	8fa50028 	lw	a1,40(sp)
    23f8:	a7a20052 	sh	v0,82(sp)
    23fc:	0c000000 	jal	0 <func_809B82E0>
    2400:	8fa4002c 	lw	a0,44(sp)
    2404:	a7a20050 	sh	v0,80(sp)
    2408:	0c000000 	jal	0 <func_809B82E0>
    240c:	87a40052 	lh	a0,82(sp)
    2410:	c610027c 	lwc1	$f16,636(s0)
    2414:	87a40052 	lh	a0,82(sp)
    2418:	46100482 	mul.s	$f18,$f0,$f16
    241c:	0c000000 	jal	0 <func_809B82E0>
    2420:	e7b2004c 	swc1	$f18,76(sp)
    2424:	c604027c 	lwc1	$f4,636(s0)
    2428:	afa00010 	sw	zero,16(sp)
    242c:	26040032 	addiu	a0,s0,50
    2430:	46040182 	mul.s	$f6,$f0,$f4
    2434:	87a50050 	lh	a1,80(sp)
    2438:	24060001 	li	a2,1
    243c:	240703e8 	li	a3,1000
    2440:	0c000000 	jal	0 <func_809B82E0>
    2444:	e7a60048 	swc1	$f6,72(sp)
    2448:	0c000000 	jal	0 <func_809B82E0>
    244c:	86040032 	lh	a0,50(s0)
    2450:	c7a80048 	lwc1	$f8,72(sp)
    2454:	86040032 	lh	a0,50(s0)
    2458:	46080082 	mul.s	$f2,$f0,$f8
    245c:	0c000000 	jal	0 <func_809B82E0>
    2460:	e7a20040 	swc1	$f2,64(sp)
    2464:	c7a20040 	lwc1	$f2,64(sp)
    2468:	44808000 	mtc1	zero,$f16
    246c:	c7aa0048 	lwc1	$f10,72(sp)
    2470:	44809000 	mtc1	zero,$f18
    2474:	4602803e 	c.le.s	$f16,$f2
    2478:	460a0302 	mul.s	$f12,$f0,$f10
    247c:	8fa4002c 	lw	a0,44(sp)
    2480:	3c063f80 	lui	a2,0x3f80
    2484:	45020004 	bc1fl	2498 <func_809BA628+0x150>
    2488:	46001007 	neg.s	$f0,$f2
    248c:	10000002 	b	2498 <func_809BA628+0x150>
    2490:	46001006 	mov.s	$f0,$f2
    2494:	46001007 	neg.s	$f0,$f2
    2498:	8e050290 	lw	a1,656(s0)
    249c:	44070000 	mfc1	a3,$f0
    24a0:	e7ac003c 	swc1	$f12,60(sp)
    24a4:	0c000000 	jal	0 <func_809B82E0>
    24a8:	e7b20010 	swc1	$f18,16(sp)
    24ac:	c7ae004c 	lwc1	$f14,76(sp)
    24b0:	44802000 	mtc1	zero,$f4
    24b4:	44803000 	mtc1	zero,$f6
    24b8:	c7ac003c 	lwc1	$f12,60(sp)
    24bc:	460e203e 	c.le.s	$f4,$f14
    24c0:	46000086 	mov.s	$f2,$f0
    24c4:	2604000c 	addiu	a0,s0,12
    24c8:	3c063f80 	lui	a2,0x3f80
    24cc:	45020004 	bc1fl	24e0 <func_809BA628+0x198>
    24d0:	46007007 	neg.s	$f0,$f14
    24d4:	10000002 	b	24e0 <func_809BA628+0x198>
    24d8:	46007006 	mov.s	$f0,$f14
    24dc:	46007007 	neg.s	$f0,$f14
    24e0:	8e050294 	lw	a1,660(s0)
    24e4:	44070000 	mfc1	a3,$f0
    24e8:	e7ac003c 	swc1	$f12,60(sp)
    24ec:	e7a20044 	swc1	$f2,68(sp)
    24f0:	0c000000 	jal	0 <func_809B82E0>
    24f4:	e7a60010 	swc1	$f6,16(sp)
    24f8:	c7ac003c 	lwc1	$f12,60(sp)
    24fc:	44804000 	mtc1	zero,$f8
    2500:	c7a20044 	lwc1	$f2,68(sp)
    2504:	44805000 	mtc1	zero,$f10
    2508:	460c403e 	c.le.s	$f8,$f12
    250c:	26040010 	addiu	a0,s0,16
    2510:	3c063f80 	lui	a2,0x3f80
    2514:	46001080 	add.s	$f2,$f2,$f0
    2518:	45020004 	bc1fl	252c <func_809BA628+0x1e4>
    251c:	46006007 	neg.s	$f0,$f12
    2520:	10000002 	b	252c <func_809BA628+0x1e4>
    2524:	46006006 	mov.s	$f0,$f12
    2528:	46006007 	neg.s	$f0,$f12
    252c:	8e050298 	lw	a1,664(s0)
    2530:	44070000 	mfc1	a3,$f0
    2534:	e7a20044 	swc1	$f2,68(sp)
    2538:	0c000000 	jal	0 <func_809B82E0>
    253c:	e7aa0010 	swc1	$f10,16(sp)
    2540:	c7a20044 	lwc1	$f2,68(sp)
    2544:	46001080 	add.s	$f2,$f2,$f0
    2548:	0c000000 	jal	0 <func_809B82E0>
    254c:	e7a20044 	swc1	$f2,68(sp)
    2550:	3c010000 	lui	at,0x0
    2554:	c4300000 	lwc1	$f16,0(at)
    2558:	3c010000 	lui	at,0x0
    255c:	c4320000 	lwc1	$f18,0(at)
    2560:	c7a20044 	lwc1	$f2,68(sp)
    2564:	c6080274 	lwc1	$f8,628(s0)
    2568:	46120102 	mul.s	$f4,$f0,$f18
    256c:	44809000 	mtc1	zero,$f18
    2570:	02002025 	move	a0,s0
    2574:	46121032 	c.eq.s	$f2,$f18
    2578:	46048180 	add.s	$f6,$f16,$f4
    257c:	46064280 	add.s	$f10,$f8,$f6
    2580:	45000003 	bc1f	2590 <func_809BA628+0x248>
    2584:	e60a0274 	swc1	$f10,628(s0)
    2588:	0c000000 	jal	0 <func_809B82E0>
    258c:	8fa50074 	lw	a1,116(sp)
    2590:	920e02bc 	lbu	t6,700(s0)
    2594:	3c014120 	lui	at,0x4120
    2598:	44818000 	mtc1	at,$f16
    259c:	240d0001 	li	t5,1
    25a0:	31cf0002 	andi	t7,t6,0x2
    25a4:	ae0d025c 	sw	t5,604(s0)
    25a8:	11e00007 	beqz	t7,25c8 <func_809BA628+0x280>
    25ac:	e610027c 	swc1	$f16,636(s0)
    25b0:	02002025 	move	a0,s0
    25b4:	0c000000 	jal	0 <func_809B82E0>
    25b8:	240538cb 	li	a1,14539
    25bc:	921802bc 	lbu	t8,700(s0)
    25c0:	3319fffd 	andi	t9,t8,0xfffd
    25c4:	a21902bc 	sb	t9,700(s0)
    25c8:	0c000000 	jal	0 <func_809B82E0>
    25cc:	c60c0274 	lwc1	$f12,628(s0)
    25d0:	44802000 	mtc1	zero,$f4
    25d4:	00000000 	nop
    25d8:	46040032 	c.eq.s	$f0,$f4
    25dc:	00000000 	nop
    25e0:	45020012 	bc1fl	262c <func_809BA628+0x2e4>
    25e4:	86090032 	lh	t1,50(s0)
    25e8:	8608026a 	lh	t0,618(s0)
    25ec:	11000005 	beqz	t0,2604 <func_809BA628+0x2bc>
    25f0:	00000000 	nop
    25f4:	0c000000 	jal	0 <func_809B82E0>
    25f8:	00000000 	nop
    25fc:	1000000a 	b	2628 <func_809BA628+0x2e0>
    2600:	e6000284 	swc1	$f0,644(s0)
    2604:	0c000000 	jal	0 <func_809B82E0>
    2608:	00000000 	nop
    260c:	3c014040 	lui	at,0x4040
    2610:	44814000 	mtc1	at,$f8
    2614:	02002025 	move	a0,s0
    2618:	240538ca 	li	a1,14538
    261c:	46080182 	mul.s	$f6,$f0,$f8
    2620:	0c000000 	jal	0 <func_809B82E0>
    2624:	e6060284 	swc1	$f6,644(s0)
    2628:	86090032 	lh	t1,50(s0)
    262c:	1000000d 	b	2664 <func_809BA628+0x31c>
    2630:	a60900b6 	sh	t1,182(s0)
    2634:	44050000 	mfc1	a1,$f0
    2638:	26040068 	addiu	a0,s0,104
    263c:	0c000000 	jal	0 <func_809B82E0>
    2640:	e7a00010 	swc1	$f0,16(sp)
    2644:	44805000 	mtc1	zero,$f10
    2648:	00000000 	nop
    264c:	460a0032 	c.eq.s	$f0,$f10
    2650:	00000000 	nop
    2654:	45020004 	bc1fl	2668 <func_809BA628+0x320>
    2658:	260a0024 	addiu	t2,s0,36
    265c:	0c000000 	jal	0 <func_809B82E0>
    2660:	02002025 	move	a0,s0
    2664:	260a0024 	addiu	t2,s0,36
    2668:	10000012 	b	26b4 <func_809BA628+0x36c>
    266c:	afaa002c 	sw	t2,44(sp)
    2670:	8605008a 	lh	a1,138(s0)
    2674:	afa00010 	sw	zero,16(sp)
    2678:	260400b6 	addiu	a0,s0,182
    267c:	24060001 	li	a2,1
    2680:	0c000000 	jal	0 <func_809B82E0>
    2684:	24070fa0 	li	a3,4000
    2688:	26040024 	addiu	a0,s0,36
    268c:	afa4002c 	sw	a0,44(sp)
    2690:	0c000000 	jal	0 <func_809B82E0>
    2694:	27a50054 	addiu	a1,sp,84
    2698:	00022c00 	sll	a1,v0,0x10
    269c:	00052c03 	sra	a1,a1,0x10
    26a0:	260400b4 	addiu	a0,s0,180
    26a4:	24060001 	li	a2,1
    26a8:	24070fa0 	li	a3,4000
    26ac:	0c000000 	jal	0 <func_809B82E0>
    26b0:	afa00010 	sw	zero,16(sp)
    26b4:	0c000000 	jal	0 <func_809B82E0>
    26b8:	2604014c 	addiu	a0,s0,332
    26bc:	0c000000 	jal	0 <func_809B82E0>
    26c0:	c60c0274 	lwc1	$f12,628(s0)
    26c4:	3c010000 	lui	at,0x0
    26c8:	c4320000 	lwc1	$f18,0(at)
    26cc:	4612003e 	c.le.s	$f0,$f18
    26d0:	00000000 	nop
    26d4:	45020008 	bc1fl	26f8 <func_809BA628+0x3b0>
    26d8:	c60c0008 	lwc1	$f12,8(s0)
    26dc:	0c000000 	jal	0 <func_809B82E0>
    26e0:	00000000 	nop
    26e4:	3c010000 	lui	at,0x0
    26e8:	c4300000 	lwc1	$f16,0(at)
    26ec:	46100102 	mul.s	$f4,$f0,$f16
    26f0:	e6040284 	swc1	$f4,644(s0)
    26f4:	c60c0008 	lwc1	$f12,8(s0)
    26f8:	c60e000c 	lwc1	$f14,12(s0)
    26fc:	8e060010 	lw	a2,16(s0)
    2700:	0c000000 	jal	0 <func_809B82E0>
    2704:	00003825 	move	a3,zero
    2708:	86040030 	lh	a0,48(s0)
    270c:	86050032 	lh	a1,50(s0)
    2710:	00003025 	move	a2,zero
    2714:	0c000000 	jal	0 <func_809B82E0>
    2718:	24070001 	li	a3,1
    271c:	c60c0274 	lwc1	$f12,628(s0)
    2720:	0c000000 	jal	0 <func_809B82E0>
    2724:	24050001 	li	a1,1
    2728:	c6080278 	lwc1	$f8,632(s0)
    272c:	27a40060 	addiu	a0,sp,96
    2730:	27a50054 	addiu	a1,sp,84
    2734:	0c000000 	jal	0 <func_809B82E0>
    2738:	e7a80064 	swc1	$f8,100(sp)
    273c:	3c013f40 	lui	at,0x3f40
    2740:	44815000 	mtc1	at,$f10
    2744:	c6060274 	lwc1	$f6,628(s0)
    2748:	44808000 	mtc1	zero,$f16
    274c:	8fa4002c 	lw	a0,44(sp)
    2750:	460a3482 	mul.s	$f18,$f6,$f10
    2754:	8fa50054 	lw	a1,84(sp)
    2758:	3c063f80 	lui	a2,0x3f80
    275c:	e7b00010 	swc1	$f16,16(sp)
    2760:	44079000 	mfc1	a3,$f18
    2764:	0c000000 	jal	0 <func_809B82E0>
    2768:	00000000 	nop
    276c:	3c013f40 	lui	at,0x3f40
    2770:	44814000 	mtc1	at,$f8
    2774:	c6040274 	lwc1	$f4,628(s0)
    2778:	44805000 	mtc1	zero,$f10
    277c:	26040028 	addiu	a0,s0,40
    2780:	46082182 	mul.s	$f6,$f4,$f8
    2784:	8fa50058 	lw	a1,88(sp)
    2788:	3c063f80 	lui	a2,0x3f80
    278c:	e7aa0010 	swc1	$f10,16(sp)
    2790:	44073000 	mfc1	a3,$f6
    2794:	0c000000 	jal	0 <func_809B82E0>
    2798:	00000000 	nop
    279c:	3c013f40 	lui	at,0x3f40
    27a0:	44818000 	mtc1	at,$f16
    27a4:	c6120274 	lwc1	$f18,628(s0)
    27a8:	44804000 	mtc1	zero,$f8
    27ac:	2604002c 	addiu	a0,s0,44
    27b0:	46109102 	mul.s	$f4,$f18,$f16
    27b4:	8fa5005c 	lw	a1,92(sp)
    27b8:	3c063f80 	lui	a2,0x3f80
    27bc:	e7a80010 	swc1	$f8,16(sp)
    27c0:	44072000 	mfc1	a3,$f4
    27c4:	0c000000 	jal	0 <func_809B82E0>
    27c8:	00000000 	nop
    27cc:	3c010000 	lui	at,0x0
    27d0:	c4260000 	lwc1	$f6,0(at)
    27d4:	c60a0284 	lwc1	$f10,644(s0)
    27d8:	c6100274 	lwc1	$f16,628(s0)
    27dc:	260502ac 	addiu	a1,s0,684
    27e0:	460a3480 	add.s	$f18,$f6,$f10
    27e4:	46128100 	add.s	$f4,$f16,$f18
    27e8:	e6040274 	swc1	$f4,628(s0)
    27ec:	0c000000 	jal	0 <func_809B82E0>
    27f0:	8fa40074 	lw	a0,116(sp)
    27f4:	54400008 	bnezl	v0,2818 <func_809BA628+0x4d0>
    27f8:	860e0268 	lh	t6,616(s0)
    27fc:	860b026e 	lh	t3,622(s0)
    2800:	256cffff 	addiu	t4,t3,-1
    2804:	a60c026e 	sh	t4,622(s0)
    2808:	860d026e 	lh	t5,622(s0)
    280c:	55a00017 	bnezl	t5,286c <func_809BA628+0x524>
    2810:	860b0268 	lh	t3,616(s0)
    2814:	860e0268 	lh	t6,616(s0)
    2818:	25cf0001 	addiu	t7,t6,1
    281c:	0c000000 	jal	0 <func_809B82E0>
    2820:	a60f0268 	sh	t7,616(s0)
    2824:	3c0141f0 	lui	at,0x41f0
    2828:	44814000 	mtc1	at,$f8
    282c:	3c014270 	lui	at,0x4270
    2830:	44815000 	mtc1	at,$f10
    2834:	46080182 	mul.s	$f6,$f0,$f8
    2838:	8608026e 	lh	t0,622(s0)
    283c:	02002025 	move	a0,s0
    2840:	460a3400 	add.s	$f16,$f6,$f10
    2844:	4600848d 	trunc.w.s	$f18,$f16
    2848:	44199000 	mfc1	t9,$f18
    284c:	11000004 	beqz	t0,2860 <func_809BA628+0x518>
    2850:	ae190260 	sw	t9,608(s0)
    2854:	920902bd 	lbu	t1,701(s0)
    2858:	312afffd 	andi	t2,t1,0xfffd
    285c:	a20a02bd 	sb	t2,701(s0)
    2860:	0c000000 	jal	0 <func_809B82E0>
    2864:	240538cd 	li	a1,14541
    2868:	860b0268 	lh	t3,616(s0)
    286c:	26040288 	addiu	a0,s0,648
    2870:	3c0542a0 	lui	a1,0x42a0
    2874:	11600023 	beqz	t3,2904 <func_809BA628+0x5bc>
    2878:	3c063f80 	lui	a2,0x3f80
    287c:	8e0c0260 	lw	t4,608(s0)
    2880:	258dffff 	addiu	t5,t4,-1
    2884:	15a0000f 	bnez	t5,28c4 <func_809BA628+0x57c>
    2888:	ae0d0260 	sw	t5,608(s0)
    288c:	0c000000 	jal	0 <func_809B82E0>
    2890:	a6000268 	sh	zero,616(s0)
    2894:	3c0141f0 	lui	at,0x41f0
    2898:	44812000 	mtc1	at,$f4
    289c:	3c014334 	lui	at,0x4334
    28a0:	44813000 	mtc1	at,$f6
    28a4:	46040202 	mul.s	$f8,$f0,$f4
    28a8:	02002025 	move	a0,s0
    28ac:	240538cc 	li	a1,14540
    28b0:	46064280 	add.s	$f10,$f8,$f6
    28b4:	4600540d 	trunc.w.s	$f16,$f10
    28b8:	44188000 	mfc1	t8,$f16
    28bc:	0c000000 	jal	0 <func_809B82E0>
    28c0:	a618026e 	sh	t8,622(s0)
    28c4:	44809000 	mtc1	zero,$f18
    28c8:	26040288 	addiu	a0,s0,648
    28cc:	24050000 	li	a1,0
    28d0:	3c063f80 	lui	a2,0x3f80
    28d4:	3c074120 	lui	a3,0x4120
    28d8:	0c000000 	jal	0 <func_809B82E0>
    28dc:	e7b20010 	swc1	$f18,16(sp)
    28e0:	44802000 	mtc1	zero,$f4
    28e4:	2604028c 	addiu	a0,s0,652
    28e8:	24050000 	li	a1,0
    28ec:	3c063f80 	lui	a2,0x3f80
    28f0:	3c074120 	lui	a3,0x4120
    28f4:	0c000000 	jal	0 <func_809B82E0>
    28f8:	e7a40010 	swc1	$f4,16(sp)
    28fc:	1000000d 	b	2934 <func_809BA628+0x5ec>
    2900:	c60a0164 	lwc1	$f10,356(s0)
    2904:	44804000 	mtc1	zero,$f8
    2908:	3c074120 	lui	a3,0x4120
    290c:	0c000000 	jal	0 <func_809B82E0>
    2910:	e7a80010 	swc1	$f8,16(sp)
    2914:	44803000 	mtc1	zero,$f6
    2918:	2604028c 	addiu	a0,s0,652
    291c:	3c0542c8 	lui	a1,0x42c8
    2920:	3c063f80 	lui	a2,0x3f80
    2924:	3c074120 	lui	a3,0x4120
    2928:	0c000000 	jal	0 <func_809B82E0>
    292c:	e7a60010 	swc1	$f6,16(sp)
    2930:	c60a0164 	lwc1	$f10,356(s0)
    2934:	24010005 	li	at,5
    2938:	02002025 	move	a0,s0
    293c:	4600540d 	trunc.w.s	$f16,$f10
    2940:	44028000 	mfc1	v0,$f16
    2944:	00000000 	nop
    2948:	14410007 	bne	v0,at,2968 <func_809BA628+0x620>
    294c:	00000000 	nop
    2950:	0c000000 	jal	0 <func_809B82E0>
    2954:	240538c8 	li	a1,14536
    2958:	c6120164 	lwc1	$f18,356(s0)
    295c:	4600910d 	trunc.w.s	$f4,$f18
    2960:	44022000 	mfc1	v0,$f4
    2964:	00000000 	nop
    2968:	5440000d 	bnezl	v0,29a0 <func_809BA628+0x658>
    296c:	8fbf0024 	lw	ra,36(sp)
    2970:	0c000000 	jal	0 <func_809B82E0>
    2974:	00000000 	nop
    2978:	3c010000 	lui	at,0x0
    297c:	c4280000 	lwc1	$f8,0(at)
    2980:	02002025 	move	a0,s0
    2984:	4608003c 	c.lt.s	$f0,$f8
    2988:	00000000 	nop
    298c:	45020004 	bc1fl	29a0 <func_809BA628+0x658>
    2990:	8fbf0024 	lw	ra,36(sp)
    2994:	0c000000 	jal	0 <func_809B82E0>
    2998:	240538ca 	li	a1,14538
    299c:	8fbf0024 	lw	ra,36(sp)
    29a0:	8fb00020 	lw	s0,32(sp)
    29a4:	27bd0070 	addiu	sp,sp,112
    29a8:	03e00008 	jr	ra
    29ac:	00000000 	nop

000029b0 <func_809BAC90>:
    29b0:	27bdffd8 	addiu	sp,sp,-40
    29b4:	afbf0024 	sw	ra,36(sp)
    29b8:	afb00020 	sw	s0,32(sp)
    29bc:	8482001c 	lh	v0,28(a0)
    29c0:	240e0004 	li	t6,4
    29c4:	2401fffd 	li	at,-3
    29c8:	00808025 	move	s0,a0
    29cc:	10410012 	beq	v0,at,2a18 <func_809BAC90+0x68>
    29d0:	ac8e0250 	sw	t6,592(a0)
    29d4:	2401fffe 	li	at,-2
    29d8:	1041000d 	beq	v0,at,2a10 <func_809BAC90+0x60>
    29dc:	2841fffd 	slti	at,v0,-3
    29e0:	44800000 	mtc1	zero,$f0
    29e4:	14200006 	bnez	at,2a00 <func_809BAC90+0x50>
    29e8:	3c01c000 	lui	at,0xc000
    29ec:	44812000 	mtc1	at,$f4
    29f0:	3c010000 	lui	at,0x0
    29f4:	e484006c 	swc1	$f4,108(a0)
    29f8:	c4260000 	lwc1	$f6,0(at)
    29fc:	e48600bc 	swc1	$f6,188(a0)
    2a00:	e6000068 	swc1	$f0,104(s0)
    2a04:	e600028c 	swc1	$f0,652(s0)
    2a08:	10000003 	b	2a18 <func_809BAC90+0x68>
    2a0c:	e6000288 	swc1	$f0,648(s0)
    2a10:	0c000000 	jal	0 <func_809B82E0>
    2a14:	02002025 	move	a0,s0
    2a18:	920202aa 	lbu	v0,682(s0)
    2a1c:	24010008 	li	at,8
    2a20:	02002025 	move	a0,s0
    2a24:	10410009 	beq	v0,at,2a4c <func_809BAC90+0x9c>
    2a28:	24058000 	li	a1,-32768
    2a2c:	24010009 	li	at,9
    2a30:	1041000d 	beq	v0,at,2a68 <func_809BAC90+0xb8>
    2a34:	02002025 	move	a0,s0
    2a38:	2401000f 	li	at,15
    2a3c:	1041000c 	beq	v0,at,2a70 <func_809BAC90+0xc0>
    2a40:	00000000 	nop
    2a44:	10000014 	b	2a98 <func_809BAC90+0xe8>
    2a48:	96080088 	lhu	t0,136(s0)
    2a4c:	240f0050 	li	t7,80
    2a50:	afaf0010 	sw	t7,16(sp)
    2a54:	240600c8 	li	a2,200
    2a58:	0c000000 	jal	0 <func_809B82E0>
    2a5c:	00003825 	move	a3,zero
    2a60:	1000000d 	b	2a98 <func_809BAC90+0xe8>
    2a64:	96080088 	lhu	t0,136(s0)
    2a68:	24180030 	li	t8,48
    2a6c:	a61802a8 	sh	t8,680(s0)
    2a70:	0c000000 	jal	0 <func_809B82E0>
    2a74:	2405389e 	li	a1,14494
    2a78:	24190050 	li	t9,80
    2a7c:	afb90010 	sw	t9,16(sp)
    2a80:	02002025 	move	a0,s0
    2a84:	00002825 	move	a1,zero
    2a88:	240600b4 	li	a2,180
    2a8c:	0c000000 	jal	0 <func_809B82E0>
    2a90:	00003825 	move	a3,zero
    2a94:	96080088 	lhu	t0,136(s0)
    2a98:	3c050000 	lui	a1,0x0
    2a9c:	24a50000 	addiu	a1,a1,0
    2aa0:	3109fffe 	andi	t1,t0,0xfffe
    2aa4:	a6090088 	sh	t1,136(s0)
    2aa8:	0c000000 	jal	0 <func_809B82E0>
    2aac:	02002025 	move	a0,s0
    2ab0:	8fbf0024 	lw	ra,36(sp)
    2ab4:	8fb00020 	lw	s0,32(sp)
    2ab8:	27bd0028 	addiu	sp,sp,40
    2abc:	03e00008 	jr	ra
    2ac0:	00000000 	nop

00002ac4 <func_809BADA4>:
    2ac4:	27bdffc8 	addiu	sp,sp,-56
    2ac8:	afbf0034 	sw	ra,52(sp)
    2acc:	afb00030 	sw	s0,48(sp)
    2ad0:	afa5003c 	sw	a1,60(sp)
    2ad4:	8486007e 	lh	a2,126(a0)
    2ad8:	84870032 	lh	a3,50(a0)
    2adc:	94830088 	lhu	v1,136(a0)
    2ae0:	00808025 	move	s0,a0
    2ae4:	00e61023 	subu	v0,a3,a2
    2ae8:	00021400 	sll	v0,v0,0x10
    2aec:	306e0008 	andi	t6,v1,0x8
    2af0:	11c00010 	beqz	t6,2b34 <func_809BADA4+0x70>
    2af4:	00021403 	sra	v0,v0,0x10
    2af8:	04400003 	bltz	v0,2b08 <func_809BADA4+0x44>
    2afc:	00022023 	negu	a0,v0
    2b00:	10000001 	b	2b08 <func_809BADA4+0x44>
    2b04:	00402025 	move	a0,v0
    2b08:	28814001 	slti	at,a0,16385
    2b0c:	14200006 	bnez	at,2b28 <func_809BADA4+0x64>
    2b10:	00c67821 	addu	t7,a2,a2
    2b14:	01e7c023 	subu	t8,t7,a3
    2b18:	24018000 	li	at,-32768
    2b1c:	0301c821 	addu	t9,t8,at
    2b20:	a6190032 	sh	t9,50(s0)
    2b24:	96030088 	lhu	v1,136(s0)
    2b28:	3068fff7 	andi	t0,v1,0xfff7
    2b2c:	a6080088 	sh	t0,136(s0)
    2b30:	3103ffff 	andi	v1,t0,0xffff
    2b34:	30690002 	andi	t1,v1,0x2
    2b38:	1120001e 	beqz	t1,2bb4 <func_809BADA4+0xf0>
    2b3c:	02002025 	move	a0,s0
    2b40:	0c000000 	jal	0 <func_809B82E0>
    2b44:	2405387b 	li	a1,14459
    2b48:	3c01c160 	lui	at,0xc160
    2b4c:	44812000 	mtc1	at,$f4
    2b50:	c6000060 	lwc1	$f0,96(s0)
    2b54:	3c010000 	lui	at,0x0
    2b58:	02002825 	move	a1,s0
    2b5c:	4604003c 	c.lt.s	$f0,$f4
    2b60:	26060024 	addiu	a2,s0,36
    2b64:	3c0740e0 	lui	a3,0x40e0
    2b68:	240a0002 	li	t2,2
    2b6c:	45020006 	bc1fl	2b88 <func_809BADA4+0xc4>
    2b70:	44805000 	mtc1	zero,$f10
    2b74:	c4260000 	lwc1	$f6,0(at)
    2b78:	46060202 	mul.s	$f8,$f0,$f6
    2b7c:	10000004 	b	2b90 <func_809BADA4+0xcc>
    2b80:	e6080060 	swc1	$f8,96(s0)
    2b84:	44805000 	mtc1	zero,$f10
    2b88:	00000000 	nop
    2b8c:	e60a0060 	swc1	$f10,96(s0)
    2b90:	3c014000 	lui	at,0x4000
    2b94:	44818000 	mtc1	at,$f16
    2b98:	8fa4003c 	lw	a0,60(sp)
    2b9c:	afaa0010 	sw	t2,16(sp)
    2ba0:	afa00018 	sw	zero,24(sp)
    2ba4:	afa0001c 	sw	zero,28(sp)
    2ba8:	afa00020 	sw	zero,32(sp)
    2bac:	0c000000 	jal	0 <func_809B82E0>
    2bb0:	e7b00014 	swc1	$f16,20(sp)
    2bb4:	920b0114 	lbu	t3,276(s0)
    2bb8:	3c014348 	lui	at,0x4348
    2bbc:	55600025 	bnezl	t3,2c54 <func_809BADA4+0x190>
    2bc0:	8fbf0034 	lw	ra,52(sp)
    2bc4:	920c00af 	lbu	t4,175(s0)
    2bc8:	44819000 	mtc1	at,$f18
    2bcc:	11800019 	beqz	t4,2c34 <func_809BADA4+0x170>
    2bd0:	e61200bc 	swc1	$f18,188(s0)
    2bd4:	8602001c 	lh	v0,28(s0)
    2bd8:	2401fffc 	li	at,-4
    2bdc:	10410003 	beq	v0,at,2bec <func_809BADA4+0x128>
    2be0:	2401fffb 	li	at,-5
    2be4:	54410006 	bnel	v0,at,2c00 <func_809BADA4+0x13c>
    2be8:	2401fffd 	li	at,-3
    2bec:	0c000000 	jal	0 <func_809B82E0>
    2bf0:	02002025 	move	a0,s0
    2bf4:	10000017 	b	2c54 <func_809BADA4+0x190>
    2bf8:	8fbf0034 	lw	ra,52(sp)
    2bfc:	2401fffd 	li	at,-3
    2c00:	14410008 	bne	v0,at,2c24 <func_809BADA4+0x160>
    2c04:	240d0008 	li	t5,8
    2c08:	3c050000 	lui	a1,0x0
    2c0c:	ae0d0250 	sw	t5,592(s0)
    2c10:	24a50000 	addiu	a1,a1,0
    2c14:	0c000000 	jal	0 <func_809B82E0>
    2c18:	02002025 	move	a0,s0
    2c1c:	1000000d 	b	2c54 <func_809BADA4+0x190>
    2c20:	8fbf0034 	lw	ra,52(sp)
    2c24:	0c000000 	jal	0 <func_809B82E0>
    2c28:	02002025 	move	a0,s0
    2c2c:	10000009 	b	2c54 <func_809BADA4+0x190>
    2c30:	8fbf0034 	lw	ra,52(sp)
    2c34:	8e0e0004 	lw	t6,4(s0)
    2c38:	2401fffe 	li	at,-2
    2c3c:	02002025 	move	a0,s0
    2c40:	01c17824 	and	t7,t6,at
    2c44:	ae0f0004 	sw	t7,4(s0)
    2c48:	0c000000 	jal	0 <func_809B82E0>
    2c4c:	8fa5003c 	lw	a1,60(sp)
    2c50:	8fbf0034 	lw	ra,52(sp)
    2c54:	8fb00030 	lw	s0,48(sp)
    2c58:	27bd0038 	addiu	sp,sp,56
    2c5c:	03e00008 	jr	ra
    2c60:	00000000 	nop

00002c64 <func_809BAF44>:
    2c64:	27bdffe0 	addiu	sp,sp,-32
    2c68:	afbf001c 	sw	ra,28(sp)
    2c6c:	afa50024 	sw	a1,36(sp)
    2c70:	908202bc 	lbu	v0,700(a0)
    2c74:	304e0004 	andi	t6,v0,0x4
    2c78:	51c0001d 	beqzl	t6,2cf0 <func_809BAF44+0x8c>
    2c7c:	908202bd 	lbu	v0,701(a0)
    2c80:	8c980250 	lw	t8,592(a0)
    2c84:	304ffffb 	andi	t7,v0,0xfffb
    2c88:	24010003 	li	at,3
    2c8c:	13010017 	beq	t8,at,2cec <func_809BAF44+0x88>
    2c90:	a08f02bc 	sb	t7,700(a0)
    2c94:	8483001c 	lh	v1,28(a0)
    2c98:	24190001 	li	t9,1
    2c9c:	2861fffe 	slti	at,v1,-2
    2ca0:	54200012 	bnezl	at,2cec <func_809BAF44+0x88>
    2ca4:	a499026e 	sh	t9,622(a0)
    2ca8:	8482008a 	lh	v0,138(a0)
    2cac:	34018000 	li	at,0x8000
    2cb0:	00411021 	addu	v0,v0,at
    2cb4:	00021400 	sll	v0,v0,0x10
    2cb8:	00021403 	sra	v0,v0,0x10
    2cbc:	2401fffe 	li	at,-2
    2cc0:	a48200b6 	sh	v0,182(a0)
    2cc4:	14610004 	bne	v1,at,2cd8 <func_809BAF44+0x74>
    2cc8:	a4820032 	sh	v0,50(a0)
    2ccc:	0c000000 	jal	0 <func_809B82E0>
    2cd0:	afa40020 	sw	a0,32(sp)
    2cd4:	8fa40020 	lw	a0,32(sp)
    2cd8:	0c000000 	jal	0 <func_809B82E0>
    2cdc:	00000000 	nop
    2ce0:	100000aa 	b	2f8c <L809BB268+0x4>
    2ce4:	8fbf001c 	lw	ra,28(sp)
    2ce8:	a499026e 	sh	t9,622(a0)
    2cec:	908202bd 	lbu	v0,701(a0)
    2cf0:	00003025 	move	a2,zero
    2cf4:	30480002 	andi	t0,v0,0x2
    2cf8:	110000a3 	beqz	t0,2f88 <L809BB268>
    2cfc:	3049fffd 	andi	t1,v0,0xfffd
    2d00:	908a00b1 	lbu	t2,177(a0)
    2d04:	a08902bd 	sb	t1,701(a0)
    2d08:	8c8502c8 	lw	a1,712(a0)
    2d0c:	a08a02aa 	sb	t2,682(a0)
    2d10:	0c000000 	jal	0 <func_809B82E0>
    2d14:	afa40020 	sw	a0,32(sp)
    2d18:	8fa40020 	lw	a0,32(sp)
    2d1c:	908202aa 	lbu	v0,682(a0)
    2d20:	244bfffb 	addiu	t3,v0,-5
    2d24:	2d61000b 	sltiu	at,t3,11
    2d28:	1020001d 	beqz	at,2da0 <L809BB080>
    2d2c:	000b5880 	sll	t3,t3,0x2
    2d30:	3c010000 	lui	at,0x0
    2d34:	002b0821 	addu	at,at,t3
    2d38:	8c2b0000 	lw	t3,0(at)
    2d3c:	01600008 	jr	t3
    2d40:	00000000 	nop

00002d44 <L809BB024>:
    2d44:	8c8c02c8 	lw	t4,712(a0)
    2d48:	8d8d0024 	lw	t5,36(t4)
    2d4c:	91ae0005 	lbu	t6,5(t5)
    2d50:	a48e0110 	sh	t6,272(a0)

00002d54 <L809BB034>:
    2d54:	240f0030 	li	t7,48
    2d58:	a48f02a8 	sh	t7,680(a0)
    2d5c:	10000010 	b	2da0 <L809BB080>
    2d60:	908202aa 	lbu	v0,682(a0)

00002d64 <L809BB044>:
    2d64:	8c9802c8 	lw	t8,712(a0)
    2d68:	8f190024 	lw	t9,36(t8)
    2d6c:	93280005 	lbu	t0,5(t9)
    2d70:	10000085 	b	2f88 <L809BB268>
    2d74:	a4880110 	sh	t0,272(a0)

00002d78 <L809BB058>:
    2d78:	8c890250 	lw	t1,592(a0)
    2d7c:	24010004 	li	at,4
    2d80:	51210082 	beql	t1,at,2f8c <L809BB268+0x4>
    2d84:	8fbf001c 	lw	ra,28(sp)
    2d88:	0c000000 	jal	0 <func_809B82E0>
    2d8c:	afa40020 	sw	a0,32(sp)
    2d90:	0c000000 	jal	0 <func_809B82E0>
    2d94:	8fa40020 	lw	a0,32(sp)
    2d98:	1000007c 	b	2f8c <L809BB268+0x4>
    2d9c:	8fbf001c 	lw	ra,28(sp)

00002da0 <L809BB080>:
    2da0:	2401000e 	li	at,14
    2da4:	1041000b 	beq	v0,at,2dd4 <L809BB080+0x34>
    2da8:	2401000c 	li	at,12
    2dac:	10410009 	beq	v0,at,2dd4 <L809BB080+0x34>
    2db0:	2401000b 	li	at,11
    2db4:	10410007 	beq	v0,at,2dd4 <L809BB080+0x34>
    2db8:	2401000a 	li	at,10
    2dbc:	10410005 	beq	v0,at,2dd4 <L809BB080+0x34>
    2dc0:	24010007 	li	at,7
    2dc4:	10410003 	beq	v0,at,2dd4 <L809BB080+0x34>
    2dc8:	24010005 	li	at,5
    2dcc:	5441001a 	bnel	v0,at,2e38 <L809BB080+0x98>
    2dd0:	8c8c0250 	lw	t4,592(a0)
    2dd4:	8c820250 	lw	v0,592(a0)
    2dd8:	24010003 	li	at,3
    2ddc:	14410005 	bne	v0,at,2df4 <L809BB080+0x54>
    2de0:	00000000 	nop
    2de4:	8c8a0260 	lw	t2,608(a0)
    2de8:	294100be 	slti	at,t2,190
    2dec:	50200006 	beqzl	at,2e08 <L809BB080+0x68>
    2df0:	24010003 	li	at,3
    2df4:	0c000000 	jal	0 <func_809B82E0>
    2df8:	afa40020 	sw	a0,32(sp)
    2dfc:	8fa40020 	lw	a0,32(sp)
    2e00:	8c820250 	lw	v0,592(a0)
    2e04:	24010003 	li	at,3
    2e08:	10410008 	beq	v0,at,2e2c <L809BB080+0x8c>
    2e0c:	00000000 	nop
    2e10:	848b001c 	lh	t3,28(a0)
    2e14:	2401fffd 	li	at,-3
    2e18:	11610004 	beq	t3,at,2e2c <L809BB080+0x8c>
    2e1c:	00000000 	nop
    2e20:	0c000000 	jal	0 <func_809B82E0>
    2e24:	afa40020 	sw	a0,32(sp)
    2e28:	8fa40020 	lw	a0,32(sp)
    2e2c:	1000001c 	b	2ea0 <L809BB080+0x100>
    2e30:	8483001c 	lh	v1,28(a0)
    2e34:	8c8c0250 	lw	t4,592(a0)
    2e38:	24010003 	li	at,3
    2e3c:	55810006 	bnel	t4,at,2e58 <L809BB080+0xb8>
    2e40:	848e001c 	lh	t6,28(a0)
    2e44:	8c8d0260 	lw	t5,608(a0)
    2e48:	29a100be 	slti	at,t5,190
    2e4c:	1420000b 	bnez	at,2e7c <L809BB080+0xdc>
    2e50:	00000000 	nop
    2e54:	848e001c 	lh	t6,28(a0)
    2e58:	2401fffd 	li	at,-3
    2e5c:	11c1000c 	beq	t6,at,2e90 <L809BB080+0xf0>
    2e60:	3c0141a0 	lui	at,0x41a0
    2e64:	44813000 	mtc1	at,$f6
    2e68:	c484028c 	lwc1	$f4,652(a0)
    2e6c:	4606203c 	c.lt.s	$f4,$f6
    2e70:	00000000 	nop
    2e74:	45020007 	bc1fl	2e94 <L809BB080+0xf4>
    2e78:	908f02bd 	lbu	t7,701(a0)
    2e7c:	0c000000 	jal	0 <func_809B82E0>
    2e80:	afa40020 	sw	a0,32(sp)
    2e84:	8fa40020 	lw	a0,32(sp)
    2e88:	10000005 	b	2ea0 <L809BB080+0x100>
    2e8c:	8483001c 	lh	v1,28(a0)
    2e90:	908f02bd 	lbu	t7,701(a0)
    2e94:	8483001c 	lh	v1,28(a0)
    2e98:	35f80002 	ori	t8,t7,0x2
    2e9c:	a09802bd 	sb	t8,701(a0)
    2ea0:	909900af 	lbu	t9,175(a0)
    2ea4:	2401fffd 	li	at,-3
    2ea8:	1720000d 	bnez	t9,2ee0 <L809BB080+0x140>
    2eac:	00000000 	nop
    2eb0:	8c880004 	lw	t0,4(a0)
    2eb4:	2401fffe 	li	at,-2
    2eb8:	01014824 	and	t1,t0,at
    2ebc:	14610004 	bne	v1,at,2ed0 <L809BB080+0x130>
    2ec0:	ac890004 	sw	t1,4(a0)
    2ec4:	0c000000 	jal	0 <func_809B82E0>
    2ec8:	afa40020 	sw	a0,32(sp)
    2ecc:	8fa40020 	lw	a0,32(sp)
    2ed0:	0c000000 	jal	0 <func_809B82E0>
    2ed4:	8fa50024 	lw	a1,36(sp)
    2ed8:	1000002c 	b	2f8c <L809BB268+0x4>
    2edc:	8fbf001c 	lw	ra,28(sp)
    2ee0:	14610018 	bne	v1,at,2f44 <L809BB080+0x1a4>
    2ee4:	8c820250 	lw	v0,592(a0)
    2ee8:	24010008 	li	at,8
    2eec:	10410003 	beq	v0,at,2efc <L809BB080+0x15c>
    2ef0:	24054000 	li	a1,16384
    2ef4:	24010004 	li	at,4
    2ef8:	14410012 	bne	v0,at,2f44 <L809BB080+0x1a4>
    2efc:	240a000c 	li	t2,12
    2f00:	afaa0010 	sw	t2,16(sp)
    2f04:	240600ff 	li	a2,255
    2f08:	00003825 	move	a3,zero
    2f0c:	0c000000 	jal	0 <func_809B82E0>
    2f10:	afa40020 	sw	a0,32(sp)
    2f14:	8fa40020 	lw	a0,32(sp)
    2f18:	3c01c100 	lui	at,0xc100
    2f1c:	44814000 	mtc1	at,$f8
    2f20:	44805000 	mtc1	zero,$f10
    2f24:	848b008a 	lh	t3,138(a0)
    2f28:	240538e3 	li	a1,14563
    2f2c:	e4880068 	swc1	$f8,104(a0)
    2f30:	e48a027c 	swc1	$f10,636(a0)
    2f34:	0c000000 	jal	0 <func_809B82E0>
    2f38:	a48b0032 	sh	t3,50(a0)
    2f3c:	10000013 	b	2f8c <L809BB268+0x4>
    2f40:	8fbf001c 	lw	ra,28(sp)
    2f44:	24010003 	li	at,3
    2f48:	54410005 	bnel	v0,at,2f60 <L809BB080+0x1c0>
    2f4c:	2401fffd 	li	at,-3
    2f50:	8c8c0260 	lw	t4,608(a0)
    2f54:	298100be 	slti	at,t4,190
    2f58:	14200009 	bnez	at,2f80 <L809BB080+0x1e0>
    2f5c:	2401fffd 	li	at,-3
    2f60:	10610009 	beq	v1,at,2f88 <L809BB268>
    2f64:	3c0141a0 	lui	at,0x41a0
    2f68:	44819000 	mtc1	at,$f18
    2f6c:	c490028c 	lwc1	$f16,652(a0)
    2f70:	4612803c 	c.lt.s	$f16,$f18
    2f74:	00000000 	nop
    2f78:	45020004 	bc1fl	2f8c <L809BB268+0x4>
    2f7c:	8fbf001c 	lw	ra,28(sp)
    2f80:	0c000000 	jal	0 <func_809B82E0>
    2f84:	00000000 	nop

00002f88 <L809BB268>:
    2f88:	8fbf001c 	lw	ra,28(sp)
    2f8c:	27bd0020 	addiu	sp,sp,32
    2f90:	03e00008 	jr	ra
    2f94:	00000000 	nop

00002f98 <EnBb_Update>:
    2f98:	27bdffa0 	addiu	sp,sp,-96
    2f9c:	3c0f0000 	lui	t7,0x0
    2fa0:	afbf0024 	sw	ra,36(sp)
    2fa4:	afb10020 	sw	s1,32(sp)
    2fa8:	afb0001c 	sw	s0,28(sp)
    2fac:	25ef0000 	addiu	t7,t7,0
    2fb0:	8df90000 	lw	t9,0(t7)
    2fb4:	27ae004c 	addiu	t6,sp,76
    2fb8:	8df80004 	lw	t8,4(t7)
    2fbc:	add90000 	sw	t9,0(t6)
    2fc0:	8df90008 	lw	t9,8(t7)
    2fc4:	3c090000 	lui	t1,0x0
    2fc8:	25290000 	addiu	t1,t1,0
    2fcc:	add80004 	sw	t8,4(t6)
    2fd0:	add90008 	sw	t9,8(t6)
    2fd4:	8d2b0000 	lw	t3,0(t1)
    2fd8:	27a80040 	addiu	t0,sp,64
    2fdc:	8d2a0004 	lw	t2,4(t1)
    2fe0:	ad0b0000 	sw	t3,0(t0)
    2fe4:	8d2b0008 	lw	t3,8(t1)
    2fe8:	ad0a0004 	sw	t2,4(t0)
    2fec:	3c0c0000 	lui	t4,0x0
    2ff0:	ad0b0008 	sw	t3,8(t0)
    2ff4:	3c0d0000 	lui	t5,0x0
    2ff8:	3c01c170 	lui	at,0xc170
    2ffc:	8d8c0000 	lw	t4,0(t4)
    3000:	8dad0000 	lw	t5,0(t5)
    3004:	44812000 	mtc1	at,$f4
    3008:	afac003c 	sw	t4,60(sp)
    300c:	afad0038 	sw	t5,56(sp)
    3010:	e7a40034 	swc1	$f4,52(sp)
    3014:	848e001c 	lh	t6,28(a0)
    3018:	00808025 	move	s0,a0
    301c:	00a08825 	move	s1,a1
    3020:	05c30004 	bgezl	t6,3034 <EnBb_Update+0x9c>
    3024:	920f00b1 	lbu	t7,177(s0)
    3028:	0c000000 	jal	0 <func_809B82E0>
    302c:	00000000 	nop
    3030:	920f00b1 	lbu	t7,177(s0)
    3034:	2401000d 	li	at,13
    3038:	51e10072 	beql	t7,at,3204 <EnBb_Update+0x26c>
    303c:	8fbf0024 	lw	ra,36(sp)
    3040:	8e190258 	lw	t9,600(s0)
    3044:	02002025 	move	a0,s0
    3048:	02202825 	move	a1,s1
    304c:	0320f809 	jalr	t9
    3050:	00000000 	nop
    3054:	8618001c 	lh	t8,28(s0)
    3058:	3c01c0c0 	lui	at,0xc0c0
    305c:	0703000f 	bgezl	t8,309c <EnBb_Update+0x104>
    3060:	8e0a025c 	lw	t2,604(s0)
    3064:	c6060068 	lwc1	$f6,104(s0)
    3068:	44814000 	mtc1	at,$f8
    306c:	00000000 	nop
    3070:	4606403e 	c.le.s	$f8,$f6
    3074:	00000000 	nop
    3078:	45020008 	bc1fl	309c <EnBb_Update+0x104>
    307c:	8e0a025c 	lw	t2,604(s0)
    3080:	8e080004 	lw	t0,4(s0)
    3084:	31098000 	andi	t1,t0,0x8000
    3088:	55200004 	bnezl	t1,309c <EnBb_Update+0x104>
    308c:	8e0a025c 	lw	t2,604(s0)
    3090:	0c000000 	jal	0 <func_809B82E0>
    3094:	02002025 	move	a0,s0
    3098:	8e0a025c 	lw	t2,604(s0)
    309c:	3c0141a0 	lui	at,0x41a0
    30a0:	02202025 	move	a0,s1
    30a4:	15400010 	bnez	t2,30e8 <EnBb_Update+0x150>
    30a8:	02002825 	move	a1,s0
    30ac:	44810000 	mtc1	at,$f0
    30b0:	c6100028 	lwc1	$f16,40(s0)
    30b4:	c60a0080 	lwc1	$f10,128(s0)
    30b8:	3c0741c8 	lui	a3,0x41c8
    30bc:	46008481 	sub.s	$f18,$f16,$f0
    30c0:	240b0005 	li	t3,5
    30c4:	460a903e 	c.le.s	$f18,$f10
    30c8:	00000000 	nop
    30cc:	45020003 	bc1fl	30dc <EnBb_Update+0x144>
    30d0:	8fa60034 	lw	a2,52(sp)
    30d4:	e7a00034 	swc1	$f0,52(sp)
    30d8:	8fa60034 	lw	a2,52(sp)
    30dc:	e7a00010 	swc1	$f0,16(sp)
    30e0:	0c000000 	jal	0 <func_809B82E0>
    30e4:	afab0014 	sw	t3,20(sp)
    30e8:	c6040024 	lwc1	$f4,36(s0)
    30ec:	8e0d0024 	lw	t5,36(s0)
    30f0:	8e0c0028 	lw	t4,40(s0)
    30f4:	4600218d 	trunc.w.s	$f6,$f4
    30f8:	ae0d0038 	sw	t5,56(s0)
    30fc:	8e0d002c 	lw	t5,44(s0)
    3100:	8e1902c8 	lw	t9,712(s0)
    3104:	440f3000 	mfc1	t7,$f6
    3108:	ae0c003c 	sw	t4,60(s0)
    310c:	ae0d0040 	sw	t5,64(s0)
    3110:	a72f0030 	sh	t7,48(t9)
    3114:	c6100054 	lwc1	$f16,84(s0)
    3118:	c60800bc 	lwc1	$f8,188(s0)
    311c:	c6120028 	lwc1	$f18,40(s0)
    3120:	8e0902c8 	lw	t1,712(s0)
    3124:	46104282 	mul.s	$f10,$f8,$f16
    3128:	460a9100 	add.s	$f4,$f18,$f10
    312c:	4600218d 	trunc.w.s	$f6,$f4
    3130:	44083000 	mfc1	t0,$f6
    3134:	00000000 	nop
    3138:	a5280032 	sh	t0,50(t1)
    313c:	c608002c 	lwc1	$f8,44(s0)
    3140:	8e0c02c8 	lw	t4,712(s0)
    3144:	4600440d 	trunc.w.s	$f16,$f8
    3148:	440b8000 	mfc1	t3,$f16
    314c:	00000000 	nop
    3150:	a58b0034 	sh	t3,52(t4)
    3154:	8e020250 	lw	v0,592(s0)
    3158:	28410002 	slti	at,v0,2
    315c:	54200010 	bnezl	at,31a0 <EnBb_Update+0x208>
    3160:	28410003 	slti	at,v0,3
    3164:	44809000 	mtc1	zero,$f18
    3168:	c60a0068 	lwc1	$f10,104(s0)
    316c:	24010009 	li	at,9
    3170:	02202025 	move	a0,s1
    3174:	460a9032 	c.eq.s	$f18,$f10
    3178:	260602ac 	addiu	a2,s0,684
    317c:	45020003 	bc1fl	318c <EnBb_Update+0x1f4>
    3180:	3c010001 	lui	at,0x1
    3184:	14410005 	bne	v0,at,319c <EnBb_Update+0x204>
    3188:	3c010001 	lui	at,0x1
    318c:	34211e60 	ori	at,at,0x1e60
    3190:	0c000000 	jal	0 <func_809B82E0>
    3194:	02212821 	addu	a1,s1,at
    3198:	8e020250 	lw	v0,592(s0)
    319c:	28410003 	slti	at,v0,3
    31a0:	54200018 	bnezl	at,3204 <EnBb_Update+0x26c>
    31a4:	8fbf0024 	lw	ra,36(sp)
    31a8:	920d0114 	lbu	t5,276(s0)
    31ac:	51a00006 	beqzl	t5,31c8 <EnBb_Update+0x230>
    31b0:	8e19025c 	lw	t9,604(s0)
    31b4:	960e0112 	lhu	t6,274(s0)
    31b8:	31cf4000 	andi	t7,t6,0x4000
    31bc:	55e00011 	bnezl	t7,3204 <EnBb_Update+0x26c>
    31c0:	8fbf0024 	lw	ra,36(sp)
    31c4:	8e19025c 	lw	t9,604(s0)
    31c8:	24010002 	li	at,2
    31cc:	02202025 	move	a0,s1
    31d0:	1321000b 	beq	t9,at,3200 <EnBb_Update+0x268>
    31d4:	260602ac 	addiu	a2,s0,684
    31d8:	3c010001 	lui	at,0x1
    31dc:	34211e60 	ori	at,at,0x1e60
    31e0:	02212821 	addu	a1,s1,at
    31e4:	afa50030 	sw	a1,48(sp)
    31e8:	0c000000 	jal	0 <func_809B82E0>
    31ec:	afa6002c 	sw	a2,44(sp)
    31f0:	8fa50030 	lw	a1,48(sp)
    31f4:	8fa6002c 	lw	a2,44(sp)
    31f8:	0c000000 	jal	0 <func_809B82E0>
    31fc:	02202025 	move	a0,s1
    3200:	8fbf0024 	lw	ra,36(sp)
    3204:	8fb0001c 	lw	s0,28(sp)
    3208:	8fb10020 	lw	s1,32(sp)
    320c:	03e00008 	jr	ra
    3210:	27bd0060 	addiu	sp,sp,96

00003214 <func_809BB4F4>:
    3214:	27bdffd8 	addiu	sp,sp,-40
    3218:	afa40028 	sw	a0,40(sp)
    321c:	afa60030 	sw	a2,48(sp)
    3220:	8faf0030 	lw	t7,48(sp)
    3224:	8fa40038 	lw	a0,56(sp)
    3228:	afbf0024 	sw	ra,36(sp)
    322c:	afa70034 	sw	a3,52(sp)
    3230:	240e000f 	li	t6,15
    3234:	2418ffff 	li	t8,-1
    3238:	afb80018 	sw	t8,24(sp)
    323c:	afae0010 	sw	t6,16(sp)
    3240:	2407000f 	li	a3,15
    3244:	24060004 	li	a2,4
    3248:	afaf0014 	sw	t7,20(sp)
    324c:	0c000000 	jal	0 <func_809B82E0>
    3250:	2484030c 	addiu	a0,a0,780
    3254:	8fbf0024 	lw	ra,36(sp)
    3258:	27bd0028 	addiu	sp,sp,40
    325c:	03e00008 	jr	ra
    3260:	00000000 	nop

00003264 <EnBb_Draw>:
    3264:	27bdff38 	addiu	sp,sp,-200
    3268:	3c0f0000 	lui	t7,0x0
    326c:	afbf003c 	sw	ra,60(sp)
    3270:	afb00038 	sw	s0,56(sp)
    3274:	afa500cc 	sw	a1,204(sp)
    3278:	25ef0000 	addiu	t7,t7,0
    327c:	8df90000 	lw	t9,0(t7)
    3280:	27ae00b4 	addiu	t6,sp,180
    3284:	8df80004 	lw	t8,4(t7)
    3288:	add90000 	sw	t9,0(t6)
    328c:	8df90008 	lw	t9,8(t7)
    3290:	3c0c0000 	lui	t4,0x0
    3294:	258c0000 	addiu	t4,t4,0
    3298:	add80004 	sw	t8,4(t6)
    329c:	add90008 	sw	t9,8(t6)
    32a0:	8d8e0000 	lw	t6,0(t4)
    32a4:	27ab00a8 	addiu	t3,sp,168
    32a8:	8d8d0004 	lw	t5,4(t4)
    32ac:	ad6e0000 	sw	t6,0(t3)
    32b0:	8d8e0008 	lw	t6,8(t4)
    32b4:	ad6d0004 	sw	t5,4(t3)
    32b8:	00808025 	move	s0,a0
    32bc:	ad6e0008 	sw	t6,8(t3)
    32c0:	8faf00cc 	lw	t7,204(sp)
    32c4:	3c060000 	lui	a2,0x0
    32c8:	24c60000 	addiu	a2,a2,0
    32cc:	8de50000 	lw	a1,0(t7)
    32d0:	27a4007c 	addiu	a0,sp,124
    32d4:	240707fc 	li	a3,2044
    32d8:	0c000000 	jal	0 <func_809B82E0>
    32dc:	afa5008c 	sw	a1,140(sp)
    32e0:	3c0142a0 	lui	at,0x42a0
    32e4:	44810000 	mtc1	at,$f0
    32e8:	c604027c 	lwc1	$f4,636(s0)
    32ec:	24010002 	li	at,2
    32f0:	46002182 	mul.s	$f6,$f4,$f0
    32f4:	e7a600bc 	swc1	$f6,188(sp)
    32f8:	c608027c 	lwc1	$f8,636(s0)
    32fc:	46004282 	mul.s	$f10,$f8,$f0
    3300:	e7aa00b0 	swc1	$f10,176(sp)
    3304:	8e18025c 	lw	t8,604(s0)
    3308:	53010117 	beql	t8,at,3768 <EnBb_Draw+0x504>
    330c:	8fb800cc 	lw	t8,204(sp)
    3310:	8619001c 	lh	t9,28(s0)
    3314:	8fab00cc 	lw	t3,204(sp)
    3318:	3c01c220 	lui	at,0xc220
    331c:	07210060 	bgez	t9,34a0 <EnBb_Draw+0x23c>
    3320:	24060000 	li	a2,0
    3324:	0c000000 	jal	0 <func_809B82E0>
    3328:	8d640000 	lw	a0,0(t3)
    332c:	3c0c0000 	lui	t4,0x0
    3330:	258c0000 	addiu	t4,t4,0
    3334:	8e050150 	lw	a1,336(s0)
    3338:	8e06016c 	lw	a2,364(s0)
    333c:	afb00014 	sw	s0,20(sp)
    3340:	afac0010 	sw	t4,16(sp)
    3344:	8fa400cc 	lw	a0,204(sp)
    3348:	0c000000 	jal	0 <func_809B82E0>
    334c:	00003825 	move	a3,zero
    3350:	860d02a8 	lh	t5,680(s0)
    3354:	51a00048 	beqzl	t5,3478 <EnBb_Draw+0x214>
    3358:	3c01c220 	lui	at,0xc220
    335c:	861802a8 	lh	t8,680(s0)
    3360:	920e0114 	lbu	t6,276(s0)
    3364:	3c0d0000 	lui	t5,0x0
    3368:	2719ffff 	addiu	t9,t8,-1
    336c:	a61902a8 	sh	t9,680(s0)
    3370:	860502a8 	lh	a1,680(s0)
    3374:	25cf0001 	addiu	t7,t6,1
    3378:	a20f0114 	sb	t7,276(s0)
    337c:	30ab0003 	andi	t3,a1,0x3
    3380:	1560003c 	bnez	t3,3474 <EnBb_Draw+0x210>
    3384:	00051883 	sra	v1,a1,0x2
    3388:	00036080 	sll	t4,v1,0x2
    338c:	01836023 	subu	t4,t4,v1
    3390:	000c6080 	sll	t4,t4,0x2
    3394:	25ad0000 	addiu	t5,t5,0
    3398:	018d1021 	addu	v0,t4,t5
    339c:	c4500000 	lwc1	$f16,0(v0)
    33a0:	c6120024 	lwc1	$f18,36(s0)
    33a4:	c4460004 	lwc1	$f6,4(v0)
    33a8:	24010007 	li	at,7
    33ac:	46128100 	add.s	$f4,$f16,$f18
    33b0:	c4500008 	lwc1	$f16,8(v0)
    33b4:	240d0001 	li	t5,1
    33b8:	02002825 	move	a1,s0
    33bc:	e7a40070 	swc1	$f4,112(sp)
    33c0:	c6080028 	lwc1	$f8,40(s0)
    33c4:	27a60070 	addiu	a2,sp,112
    33c8:	24070028 	li	a3,40
    33cc:	46083280 	add.s	$f10,$f6,$f8
    33d0:	240effff 	li	t6,-1
    33d4:	e7aa0074 	swc1	$f10,116(sp)
    33d8:	c612002c 	lwc1	$f18,44(s0)
    33dc:	c7a80074 	lwc1	$f8,116(sp)
    33e0:	46128100 	add.s	$f4,$f16,$f18
    33e4:	e7a40078 	swc1	$f4,120(sp)
    33e8:	920402aa 	lbu	a0,682(s0)
    33ec:	10810018 	beq	a0,at,3450 <EnBb_Draw+0x1ec>
    33f0:	24010005 	li	at,5
    33f4:	10810016 	beq	a0,at,3450 <EnBb_Draw+0x1ec>
    33f8:	240f0096 	li	t7,150
    33fc:	3c010000 	lui	at,0x0
    3400:	c4260000 	lwc1	$f6,0(at)
    3404:	240e0096 	li	t6,150
    3408:	241800fa 	li	t8,250
    340c:	241900eb 	li	t9,235
    3410:	240b00f5 	li	t3,245
    3414:	240c00ff 	li	t4,255
    3418:	afac0024 	sw	t4,36(sp)
    341c:	afab0020 	sw	t3,32(sp)
    3420:	afb9001c 	sw	t9,28(sp)
    3424:	afb80018 	sw	t8,24(sp)
    3428:	afae0010 	sw	t6,16(sp)
    342c:	8fa400cc 	lw	a0,204(sp)
    3430:	02002825 	move	a1,s0
    3434:	27a60070 	addiu	a2,sp,112
    3438:	24070096 	li	a3,150
    343c:	afaf0014 	sw	t7,20(sp)
    3440:	0c000000 	jal	0 <func_809B82E0>
    3444:	e7a60028 	swc1	$f6,40(sp)
    3448:	1000000b 	b	3478 <EnBb_Draw+0x214>
    344c:	3c01c220 	lui	at,0xc220
    3450:	3c014188 	lui	at,0x4188
    3454:	44815000 	mtc1	at,$f10
    3458:	8fa400cc 	lw	a0,204(sp)
    345c:	afad0010 	sw	t5,16(sp)
    3460:	460a4401 	sub.s	$f16,$f8,$f10
    3464:	afa00014 	sw	zero,20(sp)
    3468:	afae0018 	sw	t6,24(sp)
    346c:	0c000000 	jal	0 <func_809B82E0>
    3470:	e7b00074 	swc1	$f16,116(sp)
    3474:	3c01c220 	lui	at,0xc220
    3478:	44806000 	mtc1	zero,$f12
    347c:	44812000 	mtc1	at,$f4
    3480:	c612028c 	lwc1	$f18,652(s0)
    3484:	44066000 	mfc1	a2,$f12
    3488:	24070001 	li	a3,1
    348c:	46049382 	mul.s	$f14,$f18,$f4
    3490:	0c000000 	jal	0 <func_809B82E0>
    3494:	00000000 	nop
    3498:	10000006 	b	34b4 <EnBb_Draw+0x250>
    349c:	860f001c 	lh	t7,28(s0)
    34a0:	44806000 	mtc1	zero,$f12
    34a4:	44817000 	mtc1	at,$f14
    34a8:	0c000000 	jal	0 <func_809B82E0>
    34ac:	24070001 	li	a3,1
    34b0:	860f001c 	lh	t7,28(s0)
    34b4:	2401fffd 	li	at,-3
    34b8:	8fb800cc 	lw	t8,204(sp)
    34bc:	11e10081 	beq	t7,at,36c4 <EnBb_Draw+0x460>
    34c0:	27a400b4 	addiu	a0,sp,180
    34c4:	0c000000 	jal	0 <func_809B82E0>
    34c8:	8f040000 	lw	a0,0(t8)
    34cc:	8fa9008c 	lw	t1,140(sp)
    34d0:	8faa00cc 	lw	t2,204(sp)
    34d4:	3c0bdb06 	lui	t3,0xdb06
    34d8:	8d2202d0 	lw	v0,720(t1)
    34dc:	356b0020 	ori	t3,t3,0x20
    34e0:	240c0020 	li	t4,32
    34e4:	24590008 	addiu	t9,v0,8
    34e8:	ad3902d0 	sw	t9,720(t1)
    34ec:	ac4b0000 	sw	t3,0(v0)
    34f0:	8d440000 	lw	a0,0(t2)
    34f4:	240d0040 	li	t5,64
    34f8:	240e0001 	li	t6,1
    34fc:	afae0018 	sw	t6,24(sp)
    3500:	afad0014 	sw	t5,20(sp)
    3504:	afa0001c 	sw	zero,28(sp)
    3508:	afac0010 	sw	t4,16(sp)
    350c:	86030270 	lh	v1,624(s0)
    3510:	3c0f0001 	lui	t7,0x1
    3514:	01ea7821 	addu	t7,t7,t2
    3518:	8def1de4 	lw	t7,7652(t7)
    351c:	0003c080 	sll	t8,v1,0x2
    3520:	0303c021 	addu	t8,t8,v1
    3524:	00030823 	negu	at,v1
    3528:	00015840 	sll	t3,at,0x1
    352c:	0018c040 	sll	t8,t8,0x1
    3530:	240cffec 	li	t4,-20
    3534:	018b6823 	subu	t5,t4,t3
    3538:	01f8c821 	addu	t9,t7,t8
    353c:	032d0019 	multu	t9,t5
    3540:	24180020 	li	t8,32
    3544:	240c0080 	li	t4,128
    3548:	afac0028 	sw	t4,40(sp)
    354c:	afb80024 	sw	t8,36(sp)
    3550:	00002825 	move	a1,zero
    3554:	00003025 	move	a2,zero
    3558:	00003825 	move	a3,zero
    355c:	afa20068 	sw	v0,104(sp)
    3560:	00007012 	mflo	t6
    3564:	31cf01ff 	andi	t7,t6,0x1ff
    3568:	0c000000 	jal	0 <func_809B82E0>
    356c:	afaf0020 	sw	t7,32(sp)
    3570:	8fa80068 	lw	t0,104(sp)
    3574:	3c19fa00 	lui	t9,0xfa00
    3578:	37398080 	ori	t9,t9,0x8080
    357c:	ad020004 	sw	v0,4(t0)
    3580:	8fa5008c 	lw	a1,140(sp)
    3584:	3c01ffff 	lui	at,0xffff
    3588:	8ca202d0 	lw	v0,720(a1)
    358c:	244b0008 	addiu	t3,v0,8
    3590:	acab02d0 	sw	t3,720(a1)
    3594:	ac590000 	sw	t9,0(v0)
    3598:	920e029e 	lbu	t6,670(s0)
    359c:	920b029f 	lbu	t3,671(s0)
    35a0:	000e7a00 	sll	t7,t6,0x8
    35a4:	01e1c025 	or	t8,t7,at
    35a8:	030bc825 	or	t9,t8,t3
    35ac:	ac590004 	sw	t9,4(v0)
    35b0:	8ca202d0 	lw	v0,720(a1)
    35b4:	3c0efb00 	lui	t6,0xfb00
    35b8:	244d0008 	addiu	t5,v0,8
    35bc:	acad02d0 	sw	t5,720(a1)
    35c0:	ac4e0000 	sw	t6,0(v0)
    35c4:	920c02a0 	lbu	t4,672(s0)
    35c8:	921902a1 	lbu	t9,673(s0)
    35cc:	000cc600 	sll	t8,t4,0x18
    35d0:	920c02a2 	lbu	t4,674(s0)
    35d4:	00196c00 	sll	t5,t9,0x10
    35d8:	030d7025 	or	t6,t8,t5
    35dc:	000c5a00 	sll	t3,t4,0x8
    35e0:	01cbc825 	or	t9,t6,t3
    35e4:	ac590004 	sw	t9,4(v0)
    35e8:	8fa200cc 	lw	v0,204(sp)
    35ec:	845807a0 	lh	t8,1952(v0)
    35f0:	00186880 	sll	t5,t8,0x2
    35f4:	004d7821 	addu	t7,v0,t5
    35f8:	0c000000 	jal	0 <func_809B82E0>
    35fc:	8de40790 	lw	a0,1936(t7)
    3600:	860c00b6 	lh	t4,182(s0)
    3604:	34018000 	li	at,0x8000
    3608:	24050001 	li	a1,1
    360c:	004c7023 	subu	t6,v0,t4
    3610:	01c15821 	addu	t3,t6,at
    3614:	000bcc00 	sll	t9,t3,0x10
    3618:	0019c403 	sra	t8,t9,0x10
    361c:	44983000 	mtc1	t8,$f6
    3620:	3c010000 	lui	at,0x0
    3624:	c42a0000 	lwc1	$f10,0(at)
    3628:	46803220 	cvt.s.w	$f8,$f6
    362c:	460a4302 	mul.s	$f12,$f8,$f10
    3630:	0c000000 	jal	0 <func_809B82E0>
    3634:	00000000 	nop
    3638:	3c010000 	lui	at,0x0
    363c:	c4200000 	lwc1	$f0,0(at)
    3640:	c610028c 	lwc1	$f16,652(s0)
    3644:	c6120288 	lwc1	$f18,648(s0)
    3648:	3c063f80 	lui	a2,0x3f80
    364c:	46008302 	mul.s	$f12,$f16,$f0
    3650:	24070001 	li	a3,1
    3654:	46009382 	mul.s	$f14,$f18,$f0
    3658:	0c000000 	jal	0 <func_809B82E0>
    365c:	00000000 	nop
    3660:	8fa3008c 	lw	v1,140(sp)
    3664:	3c0fda38 	lui	t7,0xda38
    3668:	35ef0003 	ori	t7,t7,0x3
    366c:	8c6202d0 	lw	v0,720(v1)
    3670:	3c050000 	lui	a1,0x0
    3674:	24a50000 	addiu	a1,a1,0
    3678:	244d0008 	addiu	t5,v0,8
    367c:	ac6d02d0 	sw	t5,720(v1)
    3680:	ac4f0000 	sw	t7,0(v0)
    3684:	8fac00cc 	lw	t4,204(sp)
    3688:	2406083a 	li	a2,2106
    368c:	00408025 	move	s0,v0
    3690:	0c000000 	jal	0 <func_809B82E0>
    3694:	8d840000 	lw	a0,0(t4)
    3698:	ae020004 	sw	v0,4(s0)
    369c:	8fae008c 	lw	t6,140(sp)
    36a0:	3c180405 	lui	t8,0x405
    36a4:	2718d4e0 	addiu	t8,t8,-11040
    36a8:	8dc202d0 	lw	v0,720(t6)
    36ac:	3c19de00 	lui	t9,0xde00
    36b0:	244b0008 	addiu	t3,v0,8
    36b4:	adcb02d0 	sw	t3,720(t6)
    36b8:	ac580004 	sw	t8,4(v0)
    36bc:	10000029 	b	3764 <EnBb_Draw+0x500>
    36c0:	ac590000 	sw	t9,0(v0)
    36c4:	0c000000 	jal	0 <func_809B82E0>
    36c8:	27a5009c 	addiu	a1,sp,156
    36cc:	27a400a8 	addiu	a0,sp,168
    36d0:	0c000000 	jal	0 <func_809B82E0>
    36d4:	27a50090 	addiu	a1,sp,144
    36d8:	44802000 	mtc1	zero,$f4
    36dc:	c606027c 	lwc1	$f6,636(s0)
    36e0:	46062032 	c.eq.s	$f4,$f6
    36e4:	00000000 	nop
    36e8:	45030017 	bc1tl	3748 <EnBb_Draw+0x4e4>
    36ec:	8e190250 	lw	t9,592(s0)
    36f0:	8e0d0250 	lw	t5,592(s0)
    36f4:	24010008 	li	at,8
    36f8:	8faf00cc 	lw	t7,204(sp)
    36fc:	15a10011 	bne	t5,at,3744 <EnBb_Draw+0x4e0>
    3700:	3c0c0001 	lui	t4,0x1
    3704:	018f6021 	addu	t4,t4,t7
    3708:	8d8c1de4 	lw	t4,7652(t4)
    370c:	318b0001 	andi	t3,t4,0x1
    3710:	5560000d 	bnezl	t3,3748 <EnBb_Draw+0x4e4>
    3714:	8e190250 	lw	t9,592(s0)
    3718:	920e00af 	lbu	t6,175(s0)
    371c:	51c0000a 	beqzl	t6,3748 <EnBb_Draw+0x4e4>
    3720:	8e190250 	lw	t9,592(s0)
    3724:	0c000000 	jal	0 <func_809B82E0>
    3728:	8e0402a4 	lw	a0,676(s0)
    372c:	00402025 	move	a0,v0
    3730:	27a5009c 	addiu	a1,sp,156
    3734:	0c000000 	jal	0 <func_809B82E0>
    3738:	27a60090 	addiu	a2,sp,144
    373c:	1000000a 	b	3768 <EnBb_Draw+0x504>
    3740:	8fb800cc 	lw	t8,204(sp)
    3744:	8e190250 	lw	t9,592(s0)
    3748:	24010008 	li	at,8
    374c:	53210006 	beql	t9,at,3768 <EnBb_Draw+0x504>
    3750:	8fb800cc 	lw	t8,204(sp)
    3754:	0c000000 	jal	0 <func_809B82E0>
    3758:	8e0402a4 	lw	a0,676(s0)
    375c:	0c000000 	jal	0 <func_809B82E0>
    3760:	00402025 	move	a0,v0
    3764:	8fb800cc 	lw	t8,204(sp)
    3768:	3c060000 	lui	a2,0x0
    376c:	24c60000 	addiu	a2,a2,0
    3770:	27a4007c 	addiu	a0,sp,124
    3774:	2407084f 	li	a3,2127
    3778:	0c000000 	jal	0 <func_809B82E0>
    377c:	8f050000 	lw	a1,0(t8)
    3780:	8fbf003c 	lw	ra,60(sp)
    3784:	8fb00038 	lw	s0,56(sp)
    3788:	27bd00c8 	addiu	sp,sp,200
    378c:	03e00008 	jr	ra
    3790:	00000000 	nop
	...
