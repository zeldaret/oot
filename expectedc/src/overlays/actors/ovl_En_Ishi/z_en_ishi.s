
build/src/overlays/actors/ovl_En_Ishi/z_en_ishi.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <EnIshi_InitCollider>:
       0:	27bdffe0 	addiu	sp,sp,-32
       4:	00803025 	move	a2,a0
       8:	afa50024 	sw	a1,36(sp)
       c:	00a02025 	move	a0,a1
      10:	afbf0014 	sw	ra,20(sp)
      14:	24c50150 	addiu	a1,a2,336
      18:	afa50018 	sw	a1,24(sp)
      1c:	0c000000 	jal	0 <EnIshi_InitCollider>
      20:	afa60020 	sw	a2,32(sp)
      24:	8fa60020 	lw	a2,32(sp)
      28:	3c190000 	lui	t9,0x0
      2c:	27397948 	addiu	t9,t9,31048
      30:	84ce001c 	lh	t6,28(a2)
      34:	8fa40024 	lw	a0,36(sp)
      38:	8fa50018 	lw	a1,24(sp)
      3c:	31cf0001 	andi	t7,t6,0x1
      40:	000fc080 	sll	t8,t7,0x2
      44:	030fc023 	subu	t8,t8,t7
      48:	0018c080 	sll	t8,t8,0x2
      4c:	030fc023 	subu	t8,t8,t7
      50:	0018c080 	sll	t8,t8,0x2
      54:	0c000000 	jal	0 <EnIshi_InitCollider>
      58:	03193821 	addu	a3,t8,t9
      5c:	8fa40020 	lw	a0,32(sp)
      60:	0c000000 	jal	0 <EnIshi_InitCollider>
      64:	8fa50018 	lw	a1,24(sp)
      68:	8fbf0014 	lw	ra,20(sp)
      6c:	27bd0020 	addiu	sp,sp,32
      70:	03e00008 	jr	ra
      74:	00000000 	nop

00000078 <EnIshi_SnapToFloor>:
      78:	27bdffc8 	addiu	sp,sp,-56
      7c:	afbf001c 	sw	ra,28(sp)
      80:	afa5003c 	sw	a1,60(sp)
      84:	afa60040 	sw	a2,64(sp)
      88:	c4840024 	lwc1	$f4,36(a0)
      8c:	3c0141f0 	lui	at,0x41f0
      90:	44814000 	mtc1	at,$f8
      94:	e7a40028 	swc1	$f4,40(sp)
      98:	c4860028 	lwc1	$f6,40(a0)
      9c:	00803825 	move	a3,a0
      a0:	27ae0028 	addiu	t6,sp,40
      a4:	46083280 	add.s	$f10,$f6,$f8
      a8:	27a60024 	addiu	a2,sp,36
      ac:	e7aa002c 	swc1	$f10,44(sp)
      b0:	c490002c 	lwc1	$f16,44(a0)
      b4:	24a407c0 	addiu	a0,a1,1984
      b8:	27a50034 	addiu	a1,sp,52
      bc:	afa70038 	sw	a3,56(sp)
      c0:	afae0010 	sw	t6,16(sp)
      c4:	0c000000 	jal	0 <EnIshi_InitCollider>
      c8:	e7b00030 	swc1	$f16,48(sp)
      cc:	3c01c6fa 	lui	at,0xc6fa
      d0:	44819000 	mtc1	at,$f18
      d4:	8fa70038 	lw	a3,56(sp)
      d8:	c7a40040 	lwc1	$f4,64(sp)
      dc:	4600903c 	c.lt.s	$f18,$f0
      e0:	3c040000 	lui	a0,0x0
      e4:	45000008 	bc1f	108 <EnIshi_SnapToFloor+0x90>
      e8:	00000000 	nop
      ec:	46040180 	add.s	$f6,$f0,$f4
      f0:	24e40008 	addiu	a0,a3,8
      f4:	24e50024 	addiu	a1,a3,36
      f8:	0c000000 	jal	0 <EnIshi_InitCollider>
      fc:	e4e60028 	swc1	$f6,40(a3)
     100:	1000000d 	b	138 <EnIshi_SnapToFloor+0xc0>
     104:	24020001 	li	v0,1
     108:	0c000000 	jal	0 <EnIshi_InitCollider>
     10c:	24840000 	addiu	a0,a0,0
     110:	3c040000 	lui	a0,0x0
     114:	3c050000 	lui	a1,0x0
     118:	24a50024 	addiu	a1,a1,36
     11c:	2484000c 	addiu	a0,a0,12
     120:	0c000000 	jal	0 <EnIshi_InitCollider>
     124:	24060184 	li	a2,388
     128:	3c040000 	lui	a0,0x0
     12c:	0c000000 	jal	0 <EnIshi_InitCollider>
     130:	24840034 	addiu	a0,a0,52
     134:	00001025 	move	v0,zero
     138:	8fbf001c 	lw	ra,28(sp)
     13c:	27bd0038 	addiu	sp,sp,56
     140:	03e00008 	jr	ra
     144:	00000000 	nop

00000148 <EnIshi_SpawnFragmentsSmall>:
     148:	27bdff30 	addiu	sp,sp,-208
     14c:	f7be0068 	sdc1	$f30,104(sp)
     150:	3c014130 	lui	at,0x4130
     154:	4481f000 	mtc1	at,$f30
     158:	f7bc0060 	sdc1	$f28,96(sp)
     15c:	3c0140a0 	lui	at,0x40a0
     160:	4481e000 	mtc1	at,$f28
     164:	f7ba0058 	sdc1	$f26,88(sp)
     168:	3c014100 	lui	at,0x4100
     16c:	4481d000 	mtc1	at,$f26
     170:	f7b80050 	sdc1	$f24,80(sp)
     174:	3c010000 	lui	at,0x0
     178:	c4380068 	lwc1	$f24,104(at)
     17c:	f7b60048 	sdc1	$f22,72(sp)
     180:	3c010000 	lui	at,0x0
     184:	c436006c 	lwc1	$f22,108(at)
     188:	afb50088 	sw	s5,136(sp)
     18c:	afb40084 	sw	s4,132(sp)
     190:	afb10078 	sw	s1,120(sp)
     194:	f7b40040 	sdc1	$f20,64(sp)
     198:	3c013f00 	lui	at,0x3f00
     19c:	afb70090 	sw	s7,144(sp)
     1a0:	afb6008c 	sw	s6,140(sp)
     1a4:	afb30080 	sw	s3,128(sp)
     1a8:	afb2007c 	sw	s2,124(sp)
     1ac:	afb00074 	sw	s0,116(sp)
     1b0:	3c110000 	lui	s1,0x0
     1b4:	3c140000 	lui	s4,0x0
     1b8:	3c150000 	lui	s5,0x0
     1bc:	4481a000 	mtc1	at,$f20
     1c0:	00808025 	move	s0,a0
     1c4:	00a0b825 	move	s7,a1
     1c8:	afbf0094 	sw	ra,148(sp)
     1cc:	26b579b4 	addiu	s5,s5,31156
     1d0:	26940000 	addiu	s4,s4,0
     1d4:	263179a8 	addiu	s1,s1,31144
     1d8:	27b200c0 	addiu	s2,sp,192
     1dc:	27b300b4 	addiu	s3,sp,180
     1e0:	2496005c 	addiu	s6,a0,92
     1e4:	0c000000 	jal	0 <EnIshi_InitCollider>
     1e8:	00000000 	nop
     1ec:	46140101 	sub.s	$f4,$f0,$f20
     1f0:	c6080024 	lwc1	$f8,36(s0)
     1f4:	461a2182 	mul.s	$f6,$f4,$f26
     1f8:	46083280 	add.s	$f10,$f6,$f8
     1fc:	0c000000 	jal	0 <EnIshi_InitCollider>
     200:	e7aa00b4 	swc1	$f10,180(sp)
     204:	461c0402 	mul.s	$f16,$f0,$f28
     208:	c6120028 	lwc1	$f18,40(s0)
     20c:	46128100 	add.s	$f4,$f16,$f18
     210:	461c2180 	add.s	$f6,$f4,$f28
     214:	0c000000 	jal	0 <EnIshi_InitCollider>
     218:	e7a600b8 	swc1	$f6,184(sp)
     21c:	46140201 	sub.s	$f8,$f0,$f20
     220:	c610002c 	lwc1	$f16,44(s0)
     224:	02402025 	move	a0,s2
     228:	02c02825 	move	a1,s6
     22c:	461a4282 	mul.s	$f10,$f8,$f26
     230:	46105480 	add.s	$f18,$f10,$f16
     234:	0c000000 	jal	0 <EnIshi_InitCollider>
     238:	e7b200bc 	swc1	$f18,188(sp)
     23c:	96020088 	lhu	v0,136(s0)
     240:	c7a400c0 	lwc1	$f4,192(sp)
     244:	304e0001 	andi	t6,v0,0x1
     248:	11c0000b 	beqz	t6,278 <EnIshi_SpawnFragmentsSmall+0x130>
     24c:	304f0008 	andi	t7,v0,0x8
     250:	46162182 	mul.s	$f6,$f4,$f22
     254:	c7a800c4 	lwc1	$f8,196(sp)
     258:	c7b000c8 	lwc1	$f16,200(sp)
     25c:	46184282 	mul.s	$f10,$f8,$f24
     260:	00000000 	nop
     264:	46168482 	mul.s	$f18,$f16,$f22
     268:	e7a600c0 	swc1	$f6,192(sp)
     26c:	e7aa00c4 	swc1	$f10,196(sp)
     270:	1000000c 	b	2a4 <EnIshi_SpawnFragmentsSmall+0x15c>
     274:	e7b200c8 	swc1	$f18,200(sp)
     278:	11e0000a 	beqz	t7,2a4 <EnIshi_SpawnFragmentsSmall+0x15c>
     27c:	c7a400c0 	lwc1	$f4,192(sp)
     280:	46182182 	mul.s	$f6,$f4,$f24
     284:	c7a800c4 	lwc1	$f8,196(sp)
     288:	c7b000c8 	lwc1	$f16,200(sp)
     28c:	46164282 	mul.s	$f10,$f8,$f22
     290:	00000000 	nop
     294:	46188482 	mul.s	$f18,$f16,$f24
     298:	e7a600c0 	swc1	$f6,192(sp)
     29c:	e7aa00c4 	swc1	$f10,196(sp)
     2a0:	e7b200c8 	swc1	$f18,200(sp)
     2a4:	0c000000 	jal	0 <EnIshi_InitCollider>
     2a8:	00000000 	nop
     2ac:	46140181 	sub.s	$f6,$f0,$f20
     2b0:	c7a400c0 	lwc1	$f4,192(sp)
     2b4:	461e3202 	mul.s	$f8,$f6,$f30
     2b8:	46082280 	add.s	$f10,$f4,$f8
     2bc:	0c000000 	jal	0 <EnIshi_InitCollider>
     2c0:	e7aa00c0 	swc1	$f10,192(sp)
     2c4:	3c0140c0 	lui	at,0x40c0
     2c8:	44819000 	mtc1	at,$f18
     2cc:	c7b000c4 	lwc1	$f16,196(sp)
     2d0:	46120182 	mul.s	$f6,$f0,$f18
     2d4:	46068100 	add.s	$f4,$f16,$f6
     2d8:	0c000000 	jal	0 <EnIshi_InitCollider>
     2dc:	e7a400c4 	swc1	$f4,196(sp)
     2e0:	46140281 	sub.s	$f10,$f0,$f20
     2e4:	c7a800c8 	lwc1	$f8,200(sp)
     2e8:	461e5482 	mul.s	$f18,$f10,$f30
     2ec:	46124400 	add.s	$f16,$f8,$f18
     2f0:	0c000000 	jal	0 <EnIshi_InitCollider>
     2f4:	e7b000c8 	swc1	$f16,200(sp)
     2f8:	4614003c 	c.lt.s	$f0,$f20
     2fc:	02e02025 	move	a0,s7
     300:	02602825 	move	a1,s3
     304:	02403025 	move	a2,s2
     308:	45000003 	bc1f	318 <EnIshi_SpawnFragmentsSmall+0x1d0>
     30c:	02603825 	move	a3,s3
     310:	10000002 	b	31c <EnIshi_SpawnFragmentsSmall+0x1d4>
     314:	24020041 	li	v0,65
     318:	24020021 	li	v0,33
     31c:	86290000 	lh	t1,0(s1)
     320:	2418fe5c 	li	t8,-420
     324:	2419001e 	li	t9,30
     328:	24080005 	li	t0,5
     32c:	240a0003 	li	t2,3
     330:	240b000a 	li	t3,10
     334:	240c0028 	li	t4,40
     338:	240dffff 	li	t5,-1
     33c:	240e0002 	li	t6,2
     340:	afae0038 	sw	t6,56(sp)
     344:	afad0034 	sw	t5,52(sp)
     348:	afac0030 	sw	t4,48(sp)
     34c:	afab002c 	sw	t3,44(sp)
     350:	afaa0028 	sw	t2,40(sp)
     354:	afa8001c 	sw	t0,28(sp)
     358:	afb90018 	sw	t9,24(sp)
     35c:	afb80010 	sw	t8,16(sp)
     360:	afa20014 	sw	v0,20(sp)
     364:	afa00020 	sw	zero,32(sp)
     368:	afb4003c 	sw	s4,60(sp)
     36c:	0c000000 	jal	0 <EnIshi_InitCollider>
     370:	afa90024 	sw	t1,36(sp)
     374:	26310002 	addiu	s1,s1,2
     378:	1635ff9a 	bne	s1,s5,1e4 <EnIshi_SpawnFragmentsSmall+0x9c>
     37c:	00000000 	nop
     380:	8fbf0094 	lw	ra,148(sp)
     384:	d7b40040 	ldc1	$f20,64(sp)
     388:	d7b60048 	ldc1	$f22,72(sp)
     38c:	d7b80050 	ldc1	$f24,80(sp)
     390:	d7ba0058 	ldc1	$f26,88(sp)
     394:	d7bc0060 	ldc1	$f28,96(sp)
     398:	d7be0068 	ldc1	$f30,104(sp)
     39c:	8fb00074 	lw	s0,116(sp)
     3a0:	8fb10078 	lw	s1,120(sp)
     3a4:	8fb2007c 	lw	s2,124(sp)
     3a8:	8fb30080 	lw	s3,128(sp)
     3ac:	8fb40084 	lw	s4,132(sp)
     3b0:	8fb50088 	lw	s5,136(sp)
     3b4:	8fb6008c 	lw	s6,140(sp)
     3b8:	8fb70090 	lw	s7,144(sp)
     3bc:	03e00008 	jr	ra
     3c0:	27bd00d0 	addiu	sp,sp,208

000003c4 <EnIshi_SpawnFragmentsLarge>:
     3c4:	27bdff18 	addiu	sp,sp,-232
     3c8:	f7be0070 	sdc1	$f30,112(sp)
     3cc:	3c014220 	lui	at,0x4220
     3d0:	4481f000 	mtc1	at,$f30
     3d4:	f7bc0068 	sdc1	$f28,104(sp)
     3d8:	3c010000 	lui	at,0x0
     3dc:	c43c0070 	lwc1	$f28,112(at)
     3e0:	f7ba0060 	sdc1	$f26,96(sp)
     3e4:	3c010000 	lui	at,0x0
     3e8:	c43a0074 	lwc1	$f26,116(at)
     3ec:	afb60090 	sw	s6,144(sp)
     3f0:	afb30084 	sw	s3,132(sp)
     3f4:	f7b80058 	sdc1	$f24,88(sp)
     3f8:	3c014120 	lui	at,0x4120
     3fc:	afbe0098 	sw	s8,152(sp)
     400:	afb70094 	sw	s7,148(sp)
     404:	afb5008c 	sw	s5,140(sp)
     408:	afb40088 	sw	s4,136(sp)
     40c:	afb20080 	sw	s2,128(sp)
     410:	afb1007c 	sw	s1,124(sp)
     414:	afb00078 	sw	s0,120(sp)
     418:	3c130000 	lui	s3,0x0
     41c:	3c160000 	lui	s6,0x0
     420:	248e005c 	addiu	t6,a0,92
     424:	4481c000 	mtc1	at,$f24
     428:	00808025 	move	s0,a0
     42c:	afbf009c 	sw	ra,156(sp)
     430:	f7b60050 	sdc1	$f22,80(sp)
     434:	f7b40048 	sdc1	$f20,72(sp)
     438:	afa500ec 	sw	a1,236(sp)
     43c:	24111000 	li	s1,4096
     440:	afae00a4 	sw	t6,164(sp)
     444:	26d60000 	addiu	s6,s6,0
     448:	267379b4 	addiu	s3,s3,31156
     44c:	00009025 	move	s2,zero
     450:	27b400d8 	addiu	s4,sp,216
     454:	27b500cc 	addiu	s5,sp,204
     458:	24170009 	li	s7,9
     45c:	249e0024 	addiu	s8,a0,36
     460:	26314e20 	addiu	s1,s1,20000
     464:	00118c00 	sll	s1,s1,0x10
     468:	0c000000 	jal	0 <EnIshi_InitCollider>
     46c:	00118c03 	sra	s1,s1,0x10
     470:	46180502 	mul.s	$f20,$f0,$f24
     474:	00112400 	sll	a0,s1,0x10
     478:	0c000000 	jal	0 <EnIshi_InitCollider>
     47c:	00042403 	sra	a0,a0,0x10
     480:	46140102 	mul.s	$f4,$f0,$f20
     484:	c6060024 	lwc1	$f6,36(s0)
     488:	46062200 	add.s	$f8,$f4,$f6
     48c:	0c000000 	jal	0 <EnIshi_InitCollider>
     490:	e7a800cc 	swc1	$f8,204(sp)
     494:	461e0282 	mul.s	$f10,$f0,$f30
     498:	c6100028 	lwc1	$f16,40(s0)
     49c:	3c0140a0 	lui	at,0x40a0
     4a0:	44812000 	mtc1	at,$f4
     4a4:	00112400 	sll	a0,s1,0x10
     4a8:	00042403 	sra	a0,a0,0x10
     4ac:	46105480 	add.s	$f18,$f10,$f16
     4b0:	46049180 	add.s	$f6,$f18,$f4
     4b4:	0c000000 	jal	0 <EnIshi_InitCollider>
     4b8:	e7a600d0 	swc1	$f6,208(sp)
     4bc:	46140202 	mul.s	$f8,$f0,$f20
     4c0:	c60a002c 	lwc1	$f10,44(s0)
     4c4:	02802025 	move	a0,s4
     4c8:	8fa500a4 	lw	a1,164(sp)
     4cc:	460a4400 	add.s	$f16,$f8,$f10
     4d0:	0c000000 	jal	0 <EnIshi_InitCollider>
     4d4:	e7b000d4 	swc1	$f16,212(sp)
     4d8:	96020088 	lhu	v0,136(s0)
     4dc:	c7b200d8 	lwc1	$f18,216(sp)
     4e0:	3c010000 	lui	at,0x0
     4e4:	304f0001 	andi	t7,v0,0x1
     4e8:	11e0000b 	beqz	t7,518 <EnIshi_SpawnFragmentsLarge+0x154>
     4ec:	30580008 	andi	t8,v0,0x8
     4f0:	461a9102 	mul.s	$f4,$f18,$f26
     4f4:	c7a600dc 	lwc1	$f6,220(sp)
     4f8:	c4280078 	lwc1	$f8,120(at)
     4fc:	c7b000e0 	lwc1	$f16,224(sp)
     500:	46083282 	mul.s	$f10,$f6,$f8
     504:	e7a400d8 	swc1	$f4,216(sp)
     508:	461a8482 	mul.s	$f18,$f16,$f26
     50c:	e7aa00dc 	swc1	$f10,220(sp)
     510:	1000000d 	b	548 <EnIshi_SpawnFragmentsLarge+0x184>
     514:	e7b200e0 	swc1	$f18,224(sp)
     518:	1300000b 	beqz	t8,548 <EnIshi_SpawnFragmentsLarge+0x184>
     51c:	c7a400d8 	lwc1	$f4,216(sp)
     520:	3c010000 	lui	at,0x0
     524:	461c2182 	mul.s	$f6,$f4,$f28
     528:	c42a007c 	lwc1	$f10,124(at)
     52c:	c7a800dc 	lwc1	$f8,220(sp)
     530:	c7b200e0 	lwc1	$f18,224(sp)
     534:	460a4402 	mul.s	$f16,$f8,$f10
     538:	e7a600d8 	swc1	$f6,216(sp)
     53c:	461c9102 	mul.s	$f4,$f18,$f28
     540:	e7b000dc 	swc1	$f16,220(sp)
     544:	e7a400e0 	swc1	$f4,224(sp)
     548:	0c000000 	jal	0 <EnIshi_InitCollider>
     54c:	00000000 	nop
     550:	46180502 	mul.s	$f20,$f0,$f24
     554:	00112400 	sll	a0,s1,0x10
     558:	0c000000 	jal	0 <EnIshi_InitCollider>
     55c:	00042403 	sra	a0,a0,0x10
     560:	4600a202 	mul.s	$f8,$f20,$f0
     564:	c7a600d8 	lwc1	$f6,216(sp)
     568:	46083280 	add.s	$f10,$f6,$f8
     56c:	0c000000 	jal	0 <EnIshi_InitCollider>
     570:	e7aa00d8 	swc1	$f10,216(sp)
     574:	0c000000 	jal	0 <EnIshi_InitCollider>
     578:	46000586 	mov.s	$f22,$f0
     57c:	44928000 	mtc1	s2,$f16
     580:	3c010000 	lui	at,0x0
     584:	c4260080 	lwc1	$f6,128(at)
     588:	468084a0 	cvt.s.w	$f18,$f16
     58c:	3c014080 	lui	at,0x4080
     590:	44815000 	mtc1	at,$f10
     594:	00112400 	sll	a0,s1,0x10
     598:	00042403 	sra	a0,a0,0x10
     59c:	4612b102 	mul.s	$f4,$f22,$f18
     5a0:	00000000 	nop
     5a4:	46062202 	mul.s	$f8,$f4,$f6
     5a8:	c7a400dc 	lwc1	$f4,220(sp)
     5ac:	460a0402 	mul.s	$f16,$f0,$f10
     5b0:	46088480 	add.s	$f18,$f16,$f8
     5b4:	46122180 	add.s	$f6,$f4,$f18
     5b8:	0c000000 	jal	0 <EnIshi_InitCollider>
     5bc:	e7a600dc 	swc1	$f6,220(sp)
     5c0:	4600a402 	mul.s	$f16,$f20,$f0
     5c4:	c7aa00e0 	lwc1	$f10,224(sp)
     5c8:	8fa400ec 	lw	a0,236(sp)
     5cc:	02a02825 	move	a1,s5
     5d0:	02803025 	move	a2,s4
     5d4:	03c03825 	move	a3,s8
     5d8:	2419001e 	li	t9,30
     5dc:	46105200 	add.s	$f8,$f10,$f16
     5e0:	24080005 	li	t0,5
     5e4:	240a0005 	li	t2,5
     5e8:	16400004 	bnez	s2,5fc <EnIshi_SpawnFragmentsLarge+0x238>
     5ec:	e7a800e0 	swc1	$f8,224(sp)
     5f0:	24020029 	li	v0,41
     5f4:	10000008 	b	618 <EnIshi_SpawnFragmentsLarge+0x254>
     5f8:	2403fe3e 	li	v1,-450
     5fc:	2a410004 	slti	at,s2,4
     600:	10200004 	beqz	at,614 <EnIshi_SpawnFragmentsLarge+0x250>
     604:	24020045 	li	v0,69
     608:	24020025 	li	v0,37
     60c:	10000002 	b	618 <EnIshi_SpawnFragmentsLarge+0x254>
     610:	2403fe84 	li	v1,-380
     614:	2403fec0 	li	v1,-320
     618:	86690000 	lh	t1,0(s3)
     61c:	240b0002 	li	t3,2
     620:	240c0046 	li	t4,70
     624:	240d0002 	li	t5,2
     628:	afad0038 	sw	t5,56(sp)
     62c:	afac0030 	sw	t4,48(sp)
     630:	afab002c 	sw	t3,44(sp)
     634:	afa30010 	sw	v1,16(sp)
     638:	afa20014 	sw	v0,20(sp)
     63c:	afb90018 	sw	t9,24(sp)
     640:	afa8001c 	sw	t0,28(sp)
     644:	afa00020 	sw	zero,32(sp)
     648:	afaa0028 	sw	t2,40(sp)
     64c:	afa00034 	sw	zero,52(sp)
     650:	afb6003c 	sw	s6,60(sp)
     654:	0c000000 	jal	0 <EnIshi_InitCollider>
     658:	afa90024 	sw	t1,36(sp)
     65c:	26520001 	addiu	s2,s2,1
     660:	1657ff7f 	bne	s2,s7,460 <EnIshi_SpawnFragmentsLarge+0x9c>
     664:	26730002 	addiu	s3,s3,2
     668:	8fbf009c 	lw	ra,156(sp)
     66c:	d7b40048 	ldc1	$f20,72(sp)
     670:	d7b60050 	ldc1	$f22,80(sp)
     674:	d7b80058 	ldc1	$f24,88(sp)
     678:	d7ba0060 	ldc1	$f26,96(sp)
     67c:	d7bc0068 	ldc1	$f28,104(sp)
     680:	d7be0070 	ldc1	$f30,112(sp)
     684:	8fb00078 	lw	s0,120(sp)
     688:	8fb1007c 	lw	s1,124(sp)
     68c:	8fb20080 	lw	s2,128(sp)
     690:	8fb30084 	lw	s3,132(sp)
     694:	8fb40088 	lw	s4,136(sp)
     698:	8fb5008c 	lw	s5,140(sp)
     69c:	8fb60090 	lw	s6,144(sp)
     6a0:	8fb70094 	lw	s7,148(sp)
     6a4:	8fbe0098 	lw	s8,152(sp)
     6a8:	03e00008 	jr	ra
     6ac:	27bd00e8 	addiu	sp,sp,232

000006b0 <EnIshi_SpawnDustSmall>:
     6b0:	27bdffc8 	addiu	sp,sp,-56
     6b4:	00803025 	move	a2,a0
     6b8:	afbf0024 	sw	ra,36(sp)
     6bc:	afa5003c 	sw	a1,60(sp)
     6c0:	24c50024 	addiu	a1,a2,36
     6c4:	afa60038 	sw	a2,56(sp)
     6c8:	0c000000 	jal	0 <EnIshi_InitCollider>
     6cc:	27a4002c 	addiu	a0,sp,44
     6d0:	8fa60038 	lw	a2,56(sp)
     6d4:	27a5002c 	addiu	a1,sp,44
     6d8:	24070003 	li	a3,3
     6dc:	94c20088 	lhu	v0,136(a2)
     6e0:	24180050 	li	t8,80
     6e4:	2419003c 	li	t9,60
     6e8:	304e0001 	andi	t6,v0,0x1
     6ec:	11c00011 	beqz	t6,734 <EnIshi_SpawnDustSmall+0x84>
     6f0:	24080001 	li	t0,1
     6f4:	c4c0005c 	lwc1	$f0,92(a2)
     6f8:	c7a4002c 	lwc1	$f4,44(sp)
     6fc:	c7aa0030 	lwc1	$f10,48(sp)
     700:	46000180 	add.s	$f6,$f0,$f0
     704:	46062200 	add.s	$f8,$f4,$f6
     708:	c7a40034 	lwc1	$f4,52(sp)
     70c:	e7a8002c 	swc1	$f8,44(sp)
     710:	c4c20060 	lwc1	$f2,96(a2)
     714:	46021400 	add.s	$f16,$f2,$f2
     718:	46105481 	sub.s	$f18,$f10,$f16
     71c:	e7b20030 	swc1	$f18,48(sp)
     720:	c4cc0064 	lwc1	$f12,100(a2)
     724:	460c6180 	add.s	$f6,$f12,$f12
     728:	46062200 	add.s	$f8,$f4,$f6
     72c:	10000013 	b	77c <EnIshi_SpawnDustSmall+0xcc>
     730:	e7a80034 	swc1	$f8,52(sp)
     734:	304f0008 	andi	t7,v0,0x8
     738:	51e00011 	beqzl	t7,780 <EnIshi_SpawnDustSmall+0xd0>
     73c:	8fa4003c 	lw	a0,60(sp)
     740:	c4c0005c 	lwc1	$f0,92(a2)
     744:	c7aa002c 	lwc1	$f10,44(sp)
     748:	c7a40030 	lwc1	$f4,48(sp)
     74c:	46000400 	add.s	$f16,$f0,$f0
     750:	46105481 	sub.s	$f18,$f10,$f16
     754:	c7aa0034 	lwc1	$f10,52(sp)
     758:	e7b2002c 	swc1	$f18,44(sp)
     75c:	c4c20060 	lwc1	$f2,96(a2)
     760:	46021180 	add.s	$f6,$f2,$f2
     764:	46062200 	add.s	$f8,$f4,$f6
     768:	e7a80030 	swc1	$f8,48(sp)
     76c:	c4cc0064 	lwc1	$f12,100(a2)
     770:	460c6400 	add.s	$f16,$f12,$f12
     774:	46105481 	sub.s	$f18,$f10,$f16
     778:	e7b20034 	swc1	$f18,52(sp)
     77c:	8fa4003c 	lw	a0,60(sp)
     780:	3c064270 	lui	a2,0x4270
     784:	afb80010 	sw	t8,16(sp)
     788:	afb90014 	sw	t9,20(sp)
     78c:	0c000000 	jal	0 <EnIshi_InitCollider>
     790:	afa80018 	sw	t0,24(sp)
     794:	8fbf0024 	lw	ra,36(sp)
     798:	27bd0038 	addiu	sp,sp,56
     79c:	03e00008 	jr	ra
     7a0:	00000000 	nop

000007a4 <EnIshi_SpawnDustLarge>:
     7a4:	27bdffc8 	addiu	sp,sp,-56
     7a8:	00803025 	move	a2,a0
     7ac:	afbf0024 	sw	ra,36(sp)
     7b0:	afa5003c 	sw	a1,60(sp)
     7b4:	24c50024 	addiu	a1,a2,36
     7b8:	afa60038 	sw	a2,56(sp)
     7bc:	0c000000 	jal	0 <EnIshi_InitCollider>
     7c0:	27a4002c 	addiu	a0,sp,44
     7c4:	8fa60038 	lw	a2,56(sp)
     7c8:	27a5002c 	addiu	a1,sp,44
     7cc:	2407000a 	li	a3,10
     7d0:	94c20088 	lhu	v0,136(a2)
     7d4:	241800b4 	li	t8,180
     7d8:	2419005a 	li	t9,90
     7dc:	304e0001 	andi	t6,v0,0x1
     7e0:	11c00011 	beqz	t6,828 <EnIshi_SpawnDustLarge+0x84>
     7e4:	24080001 	li	t0,1
     7e8:	c4c0005c 	lwc1	$f0,92(a2)
     7ec:	c7a4002c 	lwc1	$f4,44(sp)
     7f0:	c7aa0030 	lwc1	$f10,48(sp)
     7f4:	46000180 	add.s	$f6,$f0,$f0
     7f8:	46062200 	add.s	$f8,$f4,$f6
     7fc:	c7a40034 	lwc1	$f4,52(sp)
     800:	e7a8002c 	swc1	$f8,44(sp)
     804:	c4c20060 	lwc1	$f2,96(a2)
     808:	46021400 	add.s	$f16,$f2,$f2
     80c:	46105481 	sub.s	$f18,$f10,$f16
     810:	e7b20030 	swc1	$f18,48(sp)
     814:	c4cc0064 	lwc1	$f12,100(a2)
     818:	460c6180 	add.s	$f6,$f12,$f12
     81c:	46062200 	add.s	$f8,$f4,$f6
     820:	10000013 	b	870 <EnIshi_SpawnDustLarge+0xcc>
     824:	e7a80034 	swc1	$f8,52(sp)
     828:	304f0008 	andi	t7,v0,0x8
     82c:	51e00011 	beqzl	t7,874 <EnIshi_SpawnDustLarge+0xd0>
     830:	8fa4003c 	lw	a0,60(sp)
     834:	c4c0005c 	lwc1	$f0,92(a2)
     838:	c7aa002c 	lwc1	$f10,44(sp)
     83c:	c7a40030 	lwc1	$f4,48(sp)
     840:	46000400 	add.s	$f16,$f0,$f0
     844:	46105481 	sub.s	$f18,$f10,$f16
     848:	c7aa0034 	lwc1	$f10,52(sp)
     84c:	e7b2002c 	swc1	$f18,44(sp)
     850:	c4c20060 	lwc1	$f2,96(a2)
     854:	46021180 	add.s	$f6,$f2,$f2
     858:	46062200 	add.s	$f8,$f4,$f6
     85c:	e7a80030 	swc1	$f8,48(sp)
     860:	c4cc0064 	lwc1	$f12,100(a2)
     864:	460c6400 	add.s	$f16,$f12,$f12
     868:	46105481 	sub.s	$f18,$f10,$f16
     86c:	e7b20034 	swc1	$f18,52(sp)
     870:	8fa4003c 	lw	a0,60(sp)
     874:	3c06430c 	lui	a2,0x430c
     878:	afb80010 	sw	t8,16(sp)
     87c:	afb90014 	sw	t9,20(sp)
     880:	0c000000 	jal	0 <EnIshi_InitCollider>
     884:	afa80018 	sw	t0,24(sp)
     888:	8fbf0024 	lw	ra,36(sp)
     88c:	27bd0038 	addiu	sp,sp,56
     890:	03e00008 	jr	ra
     894:	00000000 	nop

00000898 <EnIshi_DropCollectible>:
     898:	27bdffe8 	addiu	sp,sp,-24
     89c:	afbf0014 	sw	ra,20(sp)
     8a0:	afa40018 	sw	a0,24(sp)
     8a4:	afa5001c 	sw	a1,28(sp)
     8a8:	8483001c 	lh	v1,28(a0)
     8ac:	8fa4001c 	lw	a0,28(sp)
     8b0:	00002825 	move	a1,zero
     8b4:	306f0001 	andi	t7,v1,0x1
     8b8:	15e0000d 	bnez	t7,8f0 <EnIshi_DropCollectible+0x58>
     8bc:	00031203 	sra	v0,v1,0x8
     8c0:	3042000f 	andi	v0,v0,0xf
     8c4:	00021400 	sll	v0,v0,0x10
     8c8:	00021403 	sra	v0,v0,0x10
     8cc:	2841000d 	slti	at,v0,13
     8d0:	14200002 	bnez	at,8dc <EnIshi_DropCollectible+0x44>
     8d4:	8fa60018 	lw	a2,24(sp)
     8d8:	00001025 	move	v0,zero
     8dc:	00403825 	move	a3,v0
     8e0:	00073d00 	sll	a3,a3,0x14
     8e4:	00073c03 	sra	a3,a3,0x10
     8e8:	0c000000 	jal	0 <EnIshi_InitCollider>
     8ec:	24c60024 	addiu	a2,a2,36
     8f0:	8fbf0014 	lw	ra,20(sp)
     8f4:	27bd0018 	addiu	sp,sp,24
     8f8:	03e00008 	jr	ra
     8fc:	00000000 	nop

00000900 <EnIshi_Fall>:
     900:	c4840060 	lwc1	$f4,96(a0)
     904:	c486006c 	lwc1	$f6,108(a0)
     908:	c4800070 	lwc1	$f0,112(a0)
     90c:	46062200 	add.s	$f8,$f4,$f6
     910:	e4880060 	swc1	$f8,96(a0)
     914:	c48a0060 	lwc1	$f10,96(a0)
     918:	4600503c 	c.lt.s	$f10,$f0
     91c:	00000000 	nop
     920:	45000002 	bc1f	92c <EnIshi_Fall+0x2c>
     924:	00000000 	nop
     928:	e4800060 	swc1	$f0,96(a0)
     92c:	03e00008 	jr	ra
     930:	00000000 	nop

00000934 <func_80A7ED94>:
     934:	44856000 	mtc1	a1,$f12
     938:	27bdffe8 	addiu	sp,sp,-24
     93c:	afbf0014 	sw	ra,20(sp)
     940:	afa40018 	sw	a0,24(sp)
     944:	0c000000 	jal	0 <EnIshi_InitCollider>
     948:	e7ac001c 	swc1	$f12,28(sp)
     94c:	3c010000 	lui	at,0x0
     950:	c4240084 	lwc1	$f4,132(at)
     954:	3c010000 	lui	at,0x0
     958:	c4280088 	lwc1	$f8,136(at)
     95c:	46040182 	mul.s	$f6,$f0,$f4
     960:	c7ac001c 	lwc1	$f12,28(sp)
     964:	8fa40018 	lw	a0,24(sp)
     968:	c4820000 	lwc1	$f2,0(a0)
     96c:	c48e0004 	lwc1	$f14,4(a0)
     970:	46083281 	sub.s	$f10,$f6,$f8
     974:	c4900008 	lwc1	$f16,8(a0)
     978:	460c5482 	mul.s	$f18,$f10,$f12
     97c:	46126300 	add.s	$f12,$f12,$f18
     980:	460c1102 	mul.s	$f4,$f2,$f12
     984:	00000000 	nop
     988:	460c7202 	mul.s	$f8,$f14,$f12
     98c:	00000000 	nop
     990:	460c8482 	mul.s	$f18,$f16,$f12
     994:	46041181 	sub.s	$f6,$f2,$f4
     998:	46087281 	sub.s	$f10,$f14,$f8
     99c:	e4860000 	swc1	$f6,0(a0)
     9a0:	46128101 	sub.s	$f4,$f16,$f18
     9a4:	e48a0004 	swc1	$f10,4(a0)
     9a8:	e4840008 	swc1	$f4,8(a0)
     9ac:	8fbf0014 	lw	ra,20(sp)
     9b0:	27bd0018 	addiu	sp,sp,24
     9b4:	03e00008 	jr	ra
     9b8:	00000000 	nop

000009bc <EnIshi_SpawnBugs>:
     9bc:	27bdffb0 	addiu	sp,sp,-80
     9c0:	afb40048 	sw	s4,72(sp)
     9c4:	afb30044 	sw	s3,68(sp)
     9c8:	afb20040 	sw	s2,64(sp)
     9cc:	afb1003c 	sw	s1,60(sp)
     9d0:	afb00038 	sw	s0,56(sp)
     9d4:	f7b40030 	sdc1	$f20,48(sp)
     9d8:	3c010000 	lui	at,0x0
     9dc:	00808825 	move	s1,a0
     9e0:	00a09025 	move	s2,a1
     9e4:	afbf004c 	sw	ra,76(sp)
     9e8:	c434008c 	lwc1	$f20,140(at)
     9ec:	00008025 	move	s0,zero
     9f0:	24b31c24 	addiu	s3,a1,7204
     9f4:	24140003 	li	s4,3
     9f8:	0c000000 	jal	0 <EnIshi_InitCollider>
     9fc:	00000000 	nop
     a00:	46140202 	mul.s	$f8,$f0,$f20
     a04:	c6240028 	lwc1	$f4,40(s1)
     a08:	8e270024 	lw	a3,36(s1)
     a0c:	24180001 	li	t8,1
     a10:	e7a40010 	swc1	$f4,16(sp)
     a14:	c626002c 	lwc1	$f6,44(s1)
     a18:	afb80024 	sw	t8,36(sp)
     a1c:	4600428d 	trunc.w.s	$f10,$f8
     a20:	afa00020 	sw	zero,32(sp)
     a24:	afa00018 	sw	zero,24(sp)
     a28:	02602025 	move	a0,s3
     a2c:	440f5000 	mfc1	t7,$f10
     a30:	02402825 	move	a1,s2
     a34:	24060020 	li	a2,32
     a38:	e7a60014 	swc1	$f6,20(sp)
     a3c:	0c000000 	jal	0 <EnIshi_InitCollider>
     a40:	afaf001c 	sw	t7,28(sp)
     a44:	10400003 	beqz	v0,a54 <EnIshi_SpawnBugs+0x98>
     a48:	26100001 	addiu	s0,s0,1
     a4c:	1614ffea 	bne	s0,s4,9f8 <EnIshi_SpawnBugs+0x3c>
     a50:	00000000 	nop
     a54:	8fbf004c 	lw	ra,76(sp)
     a58:	d7b40030 	ldc1	$f20,48(sp)
     a5c:	8fb00038 	lw	s0,56(sp)
     a60:	8fb1003c 	lw	s1,60(sp)
     a64:	8fb20040 	lw	s2,64(sp)
     a68:	8fb30044 	lw	s3,68(sp)
     a6c:	8fb40048 	lw	s4,72(sp)
     a70:	03e00008 	jr	ra
     a74:	27bd0050 	addiu	sp,sp,80

00000a78 <EnIshi_Init>:
     a78:	27bdffd0 	addiu	sp,sp,-48
     a7c:	afbf001c 	sw	ra,28(sp)
     a80:	afb00018 	sw	s0,24(sp)
     a84:	afa50034 	sw	a1,52(sp)
     a88:	8482001c 	lh	v0,28(a0)
     a8c:	3c0f0000 	lui	t7,0x0
     a90:	25ef79c8 	addiu	t7,t7,31176
     a94:	30420001 	andi	v0,v0,0x1
     a98:	00021400 	sll	v0,v0,0x10
     a9c:	00021403 	sra	v0,v0,0x10
     aa0:	00027080 	sll	t6,v0,0x2
     aa4:	01c27021 	addu	t6,t6,v0
     aa8:	000e7080 	sll	t6,t6,0x2
     aac:	00808025 	move	s0,a0
     ab0:	01cf2821 	addu	a1,t6,t7
     ab4:	0c000000 	jal	0 <EnIshi_InitCollider>
     ab8:	a7a2002a 	sh	v0,42(sp)
     abc:	8fb80034 	lw	t8,52(sp)
     ac0:	3c01447a 	lui	at,0x447a
     ac4:	93191d6c 	lbu	t9,7532(t8)
     ac8:	53200007 	beqzl	t9,ae8 <EnIshi_Init+0x70>
     acc:	860800b6 	lh	t0,182(s0)
     ad0:	c60400f4 	lwc1	$f4,244(s0)
     ad4:	44813000 	mtc1	at,$f6
     ad8:	00000000 	nop
     adc:	46062200 	add.s	$f8,$f4,$f6
     ae0:	e60800f4 	swc1	$f8,244(s0)
     ae4:	860800b6 	lh	t0,182(s0)
     ae8:	3c014780 	lui	at,0x4780
     aec:	5500000a 	bnezl	t0,b18 <EnIshi_Init+0xa0>
     af0:	87a2002a 	lh	v0,42(sp)
     af4:	44816000 	mtc1	at,$f12
     af8:	0c000000 	jal	0 <EnIshi_InitCollider>
     afc:	00000000 	nop
     b00:	4600028d 	trunc.w.s	$f10,$f0
     b04:	44025000 	mfc1	v0,$f10
     b08:	00000000 	nop
     b0c:	a6020032 	sh	v0,50(s0)
     b10:	a60200b6 	sh	v0,182(s0)
     b14:	87a2002a 	lh	v0,42(sp)
     b18:	3c0a0000 	lui	t2,0x0
     b1c:	254a0028 	addiu	t2,t2,40
     b20:	00021080 	sll	v0,v0,0x2
     b24:	004a1821 	addu	v1,v0,t2
     b28:	8c650000 	lw	a1,0(v1)
     b2c:	afa30020 	sw	v1,32(sp)
     b30:	afa20024 	sw	v0,36(sp)
     b34:	0c000000 	jal	0 <EnIshi_InitCollider>
     b38:	02002025 	move	a0,s0
     b3c:	02002025 	move	a0,s0
     b40:	0c000000 	jal	0 <EnIshi_InitCollider>
     b44:	8fa50034 	lw	a1,52(sp)
     b48:	8fab0020 	lw	t3,32(sp)
     b4c:	3c0c0000 	lui	t4,0x0
     b50:	258c002c 	addiu	t4,t4,44
     b54:	156c000f 	bne	t3,t4,b94 <EnIshi_Init+0x11c>
     b58:	00000000 	nop
     b5c:	8602001c 	lh	v0,28(s0)
     b60:	8fa40034 	lw	a0,52(sp)
     b64:	00026a83 	sra	t5,v0,0xa
     b68:	00027983 	sra	t7,v0,0x6
     b6c:	31f80003 	andi	t8,t7,0x3
     b70:	31ae003c 	andi	t6,t5,0x3c
     b74:	0c000000 	jal	0 <EnIshi_InitCollider>
     b78:	01d82825 	or	a1,t6,t8
     b7c:	10400005 	beqz	v0,b94 <EnIshi_Init+0x11c>
     b80:	00000000 	nop
     b84:	0c000000 	jal	0 <EnIshi_InitCollider>
     b88:	02002025 	move	a0,s0
     b8c:	1000001c 	b	c00 <EnIshi_Init+0x188>
     b90:	8fbf001c 	lw	ra,28(sp)
     b94:	3c060000 	lui	a2,0x0
     b98:	24c679a0 	addiu	a2,a2,31136
     b9c:	26040098 	addiu	a0,s0,152
     ba0:	0c000000 	jal	0 <EnIshi_InitCollider>
     ba4:	00002825 	move	a1,zero
     ba8:	8fb90024 	lw	t9,36(sp)
     bac:	8608001c 	lh	t0,28(s0)
     bb0:	3c010000 	lui	at,0x0
     bb4:	00390821 	addu	at,at,t9
     bb8:	c4300030 	lwc1	$f16,48(at)
     bbc:	00084943 	sra	t1,t0,0x5
     bc0:	312a0001 	andi	t2,t1,0x1
     bc4:	1540000b 	bnez	t2,bf4 <EnIshi_Init+0x17c>
     bc8:	e61000bc 	swc1	$f16,188(s0)
     bcc:	02002025 	move	a0,s0
     bd0:	8fa50034 	lw	a1,52(sp)
     bd4:	0c000000 	jal	0 <EnIshi_InitCollider>
     bd8:	24060000 	li	a2,0
     bdc:	14400005 	bnez	v0,bf4 <EnIshi_Init+0x17c>
     be0:	00000000 	nop
     be4:	0c000000 	jal	0 <EnIshi_InitCollider>
     be8:	02002025 	move	a0,s0
     bec:	10000004 	b	c00 <EnIshi_Init+0x188>
     bf0:	8fbf001c 	lw	ra,28(sp)
     bf4:	0c000000 	jal	0 <EnIshi_InitCollider>
     bf8:	02002025 	move	a0,s0
     bfc:	8fbf001c 	lw	ra,28(sp)
     c00:	8fb00018 	lw	s0,24(sp)
     c04:	27bd0030 	addiu	sp,sp,48
     c08:	03e00008 	jr	ra
     c0c:	00000000 	nop

00000c10 <EnIshi_Destroy>:
     c10:	27bdffe8 	addiu	sp,sp,-24
     c14:	00803825 	move	a3,a0
     c18:	afbf0014 	sw	ra,20(sp)
     c1c:	00a02025 	move	a0,a1
     c20:	0c000000 	jal	0 <EnIshi_InitCollider>
     c24:	24e50150 	addiu	a1,a3,336
     c28:	8fbf0014 	lw	ra,20(sp)
     c2c:	27bd0018 	addiu	sp,sp,24
     c30:	03e00008 	jr	ra
     c34:	00000000 	nop

00000c38 <EnIshi_SetupWait>:
     c38:	3c0e0000 	lui	t6,0x0
     c3c:	25ce0000 	addiu	t6,t6,0
     c40:	03e00008 	jr	ra
     c44:	ac8e014c 	sw	t6,332(a0)

00000c48 <EnIshi_Wait>:
     c48:	27bdffc8 	addiu	sp,sp,-56
     c4c:	afbf0024 	sw	ra,36(sp)
     c50:	afb10020 	sw	s1,32(sp)
     c54:	afb0001c 	sw	s0,28(sp)
     c58:	848e001c 	lh	t6,28(a0)
     c5c:	00808025 	move	s0,a0
     c60:	00a08825 	move	s1,a1
     c64:	31cf0001 	andi	t7,t6,0x1
     c68:	0c000000 	jal	0 <EnIshi_InitCollider>
     c6c:	a7af0032 	sh	t7,50(sp)
     c70:	50400017 	beqzl	v0,cd0 <EnIshi_Wait+0x88>
     c74:	920b0161 	lbu	t3,353(s0)
     c78:	0c000000 	jal	0 <EnIshi_InitCollider>
     c7c:	02002025 	move	a0,s0
     c80:	87b80032 	lh	t8,50(sp)
     c84:	3c070000 	lui	a3,0x0
     c88:	02202025 	move	a0,s1
     c8c:	0018c840 	sll	t9,t8,0x1
     c90:	00f93821 	addu	a3,a3,t9
     c94:	94e779f0 	lhu	a3,31216(a3)
     c98:	26050024 	addiu	a1,s0,36
     c9c:	0c000000 	jal	0 <EnIshi_InitCollider>
     ca0:	24060014 	li	a2,20
     ca4:	8608001c 	lh	t0,28(s0)
     ca8:	02002025 	move	a0,s0
     cac:	00084903 	sra	t1,t0,0x4
     cb0:	312a0001 	andi	t2,t1,0x1
     cb4:	51400074 	beqzl	t2,e88 <EnIshi_Wait+0x240>
     cb8:	8fbf0024 	lw	ra,36(sp)
     cbc:	0c000000 	jal	0 <EnIshi_InitCollider>
     cc0:	02202825 	move	a1,s1
     cc4:	10000070 	b	e88 <EnIshi_Wait+0x240>
     cc8:	8fbf0024 	lw	ra,36(sp)
     ccc:	920b0161 	lbu	t3,353(s0)
     cd0:	87ad0032 	lh	t5,50(sp)
     cd4:	316c0002 	andi	t4,t3,0x2
     cd8:	5180002f 	beqzl	t4,d98 <EnIshi_Wait+0x150>
     cdc:	3c014416 	lui	at,0x4416
     ce0:	55a0002d 	bnezl	t5,d98 <EnIshi_Wait+0x150>
     ce4:	3c014416 	lui	at,0x4416
     ce8:	8e0e018c 	lw	t6,396(s0)
     cec:	3c014000 	lui	at,0x4000
     cf0:	34210048 	ori	at,at,0x48
     cf4:	8dcf0000 	lw	t7,0(t6)
     cf8:	02002025 	move	a0,s0
     cfc:	01e1c024 	and	t8,t7,at
     d00:	53000025 	beqzl	t8,d98 <EnIshi_Wait+0x150>
     d04:	3c014416 	lui	at,0x4416
     d08:	0c000000 	jal	0 <EnIshi_InitCollider>
     d0c:	02202825 	move	a1,s1
     d10:	87a20032 	lh	v0,50(sp)
     d14:	3c060000 	lui	a2,0x0
     d18:	3c070000 	lui	a3,0x0
     d1c:	0002c840 	sll	t9,v0,0x1
     d20:	00f93821 	addu	a3,a3,t9
     d24:	00c23021 	addu	a2,a2,v0
     d28:	90c650e4 	lbu	a2,20708(a2)
     d2c:	94e70040 	lhu	a3,64(a3)
     d30:	02202025 	move	a0,s1
     d34:	0c000000 	jal	0 <EnIshi_InitCollider>
     d38:	26050024 	addiu	a1,s0,36
     d3c:	87a20032 	lh	v0,50(sp)
     d40:	3c190000 	lui	t9,0x0
     d44:	02002025 	move	a0,s0
     d48:	00021080 	sll	v0,v0,0x2
     d4c:	0322c821 	addu	t9,t9,v0
     d50:	8f397938 	lw	t9,31032(t9)
     d54:	afa2002c 	sw	v0,44(sp)
     d58:	02202825 	move	a1,s1
     d5c:	0320f809 	jalr	t9
     d60:	00000000 	nop
     d64:	8fa2002c 	lw	v0,44(sp)
     d68:	3c190000 	lui	t9,0x0
     d6c:	02002025 	move	a0,s0
     d70:	0322c821 	addu	t9,t9,v0
     d74:	8f397940 	lw	t9,31040(t9)
     d78:	02202825 	move	a1,s1
     d7c:	0320f809 	jalr	t9
     d80:	00000000 	nop
     d84:	0c000000 	jal	0 <EnIshi_InitCollider>
     d88:	02002025 	move	a0,s0
     d8c:	1000003e 	b	e88 <EnIshi_Wait+0x240>
     d90:	8fbf0024 	lw	ra,36(sp)
     d94:	3c014416 	lui	at,0x4416
     d98:	44813000 	mtc1	at,$f6
     d9c:	c6040090 	lwc1	$f4,144(s0)
     da0:	02002025 	move	a0,s0
     da4:	26050150 	addiu	a1,s0,336
     da8:	4606203c 	c.lt.s	$f4,$f6
     dac:	00000000 	nop
     db0:	45020035 	bc1fl	e88 <EnIshi_Wait+0x240>
     db4:	8fbf0024 	lw	ra,36(sp)
     db8:	0c000000 	jal	0 <EnIshi_InitCollider>
     dbc:	afa5002c 	sw	a1,44(sp)
     dc0:	92080161 	lbu	t0,353(s0)
     dc4:	3c010001 	lui	at,0x1
     dc8:	34211e60 	ori	at,at,0x1e60
     dcc:	3109fffd 	andi	t1,t0,0xfffd
     dd0:	a2090161 	sb	t1,353(s0)
     dd4:	02212821 	addu	a1,s1,at
     dd8:	afa50028 	sw	a1,40(sp)
     ddc:	8fa6002c 	lw	a2,44(sp)
     de0:	0c000000 	jal	0 <EnIshi_InitCollider>
     de4:	02202025 	move	a0,s1
     de8:	3c0143c8 	lui	at,0x43c8
     dec:	44815000 	mtc1	at,$f10
     df0:	c6080090 	lwc1	$f8,144(s0)
     df4:	8fa50028 	lw	a1,40(sp)
     df8:	02202025 	move	a0,s1
     dfc:	460a403c 	c.lt.s	$f8,$f10
     e00:	00000000 	nop
     e04:	45020020 	bc1fl	e88 <EnIshi_Wait+0x240>
     e08:	8fbf0024 	lw	ra,36(sp)
     e0c:	0c000000 	jal	0 <EnIshi_InitCollider>
     e10:	8fa6002c 	lw	a2,44(sp)
     e14:	3c0142b4 	lui	at,0x42b4
     e18:	44819000 	mtc1	at,$f18
     e1c:	c6100090 	lwc1	$f16,144(s0)
     e20:	24010001 	li	at,1
     e24:	87aa0032 	lh	t2,50(sp)
     e28:	4612803c 	c.lt.s	$f16,$f18
     e2c:	00000000 	nop
     e30:	45020015 	bc1fl	e88 <EnIshi_Wait+0x240>
     e34:	8fbf0024 	lw	ra,36(sp)
     e38:	1541000b 	bne	t2,at,e68 <EnIshi_Wait+0x220>
     e3c:	02002025 	move	a0,s0
     e40:	3c0141a0 	lui	at,0x41a0
     e44:	44812000 	mtc1	at,$f4
     e48:	02002025 	move	a0,s0
     e4c:	02202825 	move	a1,s1
     e50:	00003025 	move	a2,zero
     e54:	3c0742a0 	lui	a3,0x42a0
     e58:	0c000000 	jal	0 <EnIshi_InitCollider>
     e5c:	e7a40010 	swc1	$f4,16(sp)
     e60:	10000009 	b	e88 <EnIshi_Wait+0x240>
     e64:	8fbf0024 	lw	ra,36(sp)
     e68:	3c014120 	lui	at,0x4120
     e6c:	44813000 	mtc1	at,$f6
     e70:	02202825 	move	a1,s1
     e74:	00003025 	move	a2,zero
     e78:	3c074248 	lui	a3,0x4248
     e7c:	0c000000 	jal	0 <EnIshi_InitCollider>
     e80:	e7a60010 	swc1	$f6,16(sp)
     e84:	8fbf0024 	lw	ra,36(sp)
     e88:	8fb0001c 	lw	s0,28(sp)
     e8c:	8fb10020 	lw	s1,32(sp)
     e90:	03e00008 	jr	ra
     e94:	27bd0038 	addiu	sp,sp,56

00000e98 <EnIshi_SetupLiftedUp>:
     e98:	8c980004 	lw	t8,4(a0)
     e9c:	3c0e0000 	lui	t6,0x0
     ea0:	25ce0000 	addiu	t6,t6,0
     ea4:	240fffff 	li	t7,-1
     ea8:	37190010 	ori	t9,t8,0x10
     eac:	ac8e014c 	sw	t6,332(a0)
     eb0:	a08f0003 	sb	t7,3(a0)
     eb4:	03e00008 	jr	ra
     eb8:	ac990004 	sw	t9,4(a0)

00000ebc <EnIshi_LiftedUp>:
     ebc:	27bdffd8 	addiu	sp,sp,-40
     ec0:	afbf0024 	sw	ra,36(sp)
     ec4:	afb00020 	sw	s0,32(sp)
     ec8:	00808025 	move	s0,a0
     ecc:	0c000000 	jal	0 <EnIshi_InitCollider>
     ed0:	afa5002c 	sw	a1,44(sp)
     ed4:	10400027 	beqz	v0,f74 <EnIshi_LiftedUp+0xb8>
     ed8:	8fae002c 	lw	t6,44(sp)
     edc:	8602001c 	lh	v0,28(s0)
     ee0:	3c0f0001 	lui	t7,0x1
     ee4:	01ee7821 	addu	t7,t7,t6
     ee8:	81ef1cbc 	lb	t7,7356(t7)
     eec:	24010001 	li	at,1
     ef0:	30580001 	andi	t8,v0,0x1
     ef4:	17010008 	bne	t8,at,f18 <EnIshi_LiftedUp+0x5c>
     ef8:	a20f0003 	sb	t7,3(s0)
     efc:	0002ca83 	sra	t9,v0,0xa
     f00:	00024983 	sra	t1,v0,0x6
     f04:	312a0003 	andi	t2,t1,0x3
     f08:	3328003c 	andi	t0,t9,0x3c
     f0c:	010a2825 	or	a1,t0,t2
     f10:	0c000000 	jal	0 <EnIshi_InitCollider>
     f14:	8fa4002c 	lw	a0,44(sp)
     f18:	0c000000 	jal	0 <EnIshi_InitCollider>
     f1c:	02002025 	move	a0,s0
     f20:	0c000000 	jal	0 <EnIshi_InitCollider>
     f24:	02002025 	move	a0,s0
     f28:	860b001c 	lh	t3,28(s0)
     f2c:	3c050000 	lui	a1,0x0
     f30:	2604005c 	addiu	a0,s0,92
     f34:	316c0001 	andi	t4,t3,0x1
     f38:	000c6880 	sll	t5,t4,0x2
     f3c:	00ad2821 	addu	a1,a1,t5
     f40:	0c000000 	jal	0 <EnIshi_InitCollider>
     f44:	8ca50038 	lw	a1,56(a1)
     f48:	0c000000 	jal	0 <EnIshi_InitCollider>
     f4c:	02002025 	move	a0,s0
     f50:	44802000 	mtc1	zero,$f4
     f54:	240e00c5 	li	t6,197
     f58:	afae0014 	sw	t6,20(sp)
     f5c:	8fa4002c 	lw	a0,44(sp)
     f60:	02002825 	move	a1,s0
     f64:	3c0640f0 	lui	a2,0x40f0
     f68:	3c07420c 	lui	a3,0x420c
     f6c:	0c000000 	jal	0 <EnIshi_InitCollider>
     f70:	e7a40010 	swc1	$f4,16(sp)
     f74:	8fbf0024 	lw	ra,36(sp)
     f78:	8fb00020 	lw	s0,32(sp)
     f7c:	27bd0028 	addiu	sp,sp,40
     f80:	03e00008 	jr	ra
     f84:	00000000 	nop

00000f88 <EnIshi_SetupFly>:
     f88:	27bdffe0 	addiu	sp,sp,-32
     f8c:	afb00018 	sw	s0,24(sp)
     f90:	00808025 	move	s0,a0
     f94:	afbf001c 	sw	ra,28(sp)
     f98:	0c000000 	jal	0 <EnIshi_InitCollider>
     f9c:	84840032 	lh	a0,50(a0)
     fa0:	c6040068 	lwc1	$f4,104(s0)
     fa4:	86040032 	lh	a0,50(s0)
     fa8:	46040182 	mul.s	$f6,$f0,$f4
     fac:	0c000000 	jal	0 <EnIshi_InitCollider>
     fb0:	e606005c 	swc1	$f6,92(s0)
     fb4:	c6080068 	lwc1	$f8,104(s0)
     fb8:	860e001c 	lh	t6,28(s0)
     fbc:	46080282 	mul.s	$f10,$f0,$f8
     fc0:	31cf0001 	andi	t7,t6,0x1
     fc4:	15e00019 	bnez	t7,102c <EnIshi_SetupFly+0xa4>
     fc8:	e60a0064 	swc1	$f10,100(s0)
     fcc:	0c000000 	jal	0 <EnIshi_InitCollider>
     fd0:	00000000 	nop
     fd4:	3c013f00 	lui	at,0x3f00
     fd8:	44818000 	mtc1	at,$f16
     fdc:	3c01467a 	lui	at,0x467a
     fe0:	44812000 	mtc1	at,$f4
     fe4:	46100481 	sub.s	$f18,$f0,$f16
     fe8:	3c010000 	lui	at,0x0
     fec:	46049182 	mul.s	$f6,$f18,$f4
     ff0:	4600320d 	trunc.w.s	$f8,$f6
     ff4:	44194000 	mfc1	t9,$f8
     ff8:	0c000000 	jal	0 <EnIshi_InitCollider>
     ffc:	a4390000 	sh	t9,0(at)
    1000:	3c013f00 	lui	at,0x3f00
    1004:	44815000 	mtc1	at,$f10
    1008:	3c014516 	lui	at,0x4516
    100c:	44819000 	mtc1	at,$f18
    1010:	460a0401 	sub.s	$f16,$f0,$f10
    1014:	3c010000 	lui	at,0x0
    1018:	46128102 	mul.s	$f4,$f16,$f18
    101c:	4600218d 	trunc.w.s	$f6,$f4
    1020:	44093000 	mfc1	t1,$f6
    1024:	10000019 	b	108c <EnIshi_SetupFly+0x104>
    1028:	a4290004 	sh	t1,4(at)
    102c:	0c000000 	jal	0 <EnIshi_InitCollider>
    1030:	00000000 	nop
    1034:	3c013f00 	lui	at,0x3f00
    1038:	44814000 	mtc1	at,$f8
    103c:	3c0145fa 	lui	at,0x45fa
    1040:	44818000 	mtc1	at,$f16
    1044:	46080281 	sub.s	$f10,$f0,$f8
    1048:	3c010000 	lui	at,0x0
    104c:	46105482 	mul.s	$f18,$f10,$f16
    1050:	4600910d 	trunc.w.s	$f4,$f18
    1054:	440b2000 	mfc1	t3,$f4
    1058:	0c000000 	jal	0 <EnIshi_InitCollider>
    105c:	a42b0000 	sh	t3,0(at)
    1060:	3c013f00 	lui	at,0x3f00
    1064:	44813000 	mtc1	at,$f6
    1068:	3c0144c8 	lui	at,0x44c8
    106c:	44815000 	mtc1	at,$f10
    1070:	46060201 	sub.s	$f8,$f0,$f6
    1074:	3c010000 	lui	at,0x0
    1078:	460a4402 	mul.s	$f16,$f8,$f10
    107c:	4600848d 	trunc.w.s	$f18,$f16
    1080:	440d9000 	mfc1	t5,$f18
    1084:	00000000 	nop
    1088:	a42d0004 	sh	t5,4(at)
    108c:	3c0f0000 	lui	t7,0x0
    1090:	240e00f0 	li	t6,240
    1094:	25ef0000 	addiu	t7,t7,0
    1098:	a20e00ae 	sb	t6,174(s0)
    109c:	ae0f014c 	sw	t7,332(s0)
    10a0:	8fbf001c 	lw	ra,28(sp)
    10a4:	8fb00018 	lw	s0,24(sp)
    10a8:	27bd0020 	addiu	sp,sp,32
    10ac:	03e00008 	jr	ra
    10b0:	00000000 	nop

000010b4 <EnIshi_Fly>:
    10b4:	27bdffb0 	addiu	sp,sp,-80
    10b8:	afbf0024 	sw	ra,36(sp)
    10bc:	afb10020 	sw	s1,32(sp)
    10c0:	afb0001c 	sw	s0,28(sp)
    10c4:	848e001c 	lh	t6,28(a0)
    10c8:	00808025 	move	s0,a0
    10cc:	00a08825 	move	s1,a1
    10d0:	31cf0001 	andi	t7,t6,0x1
    10d4:	a7af004a 	sh	t7,74(sp)
    10d8:	94820088 	lhu	v0,136(a0)
    10dc:	30580009 	andi	t8,v0,0x9
    10e0:	13000049 	beqz	t8,1208 <EnIshi_Fly+0x154>
    10e4:	30480040 	andi	t0,v0,0x40
    10e8:	0c000000 	jal	0 <EnIshi_InitCollider>
    10ec:	00000000 	nop
    10f0:	87a2004a 	lh	v0,74(sp)
    10f4:	3c190000 	lui	t9,0x0
    10f8:	27397938 	addiu	t9,t9,31032
    10fc:	00021080 	sll	v0,v0,0x2
    1100:	00591821 	addu	v1,v0,t9
    1104:	8c790000 	lw	t9,0(v1)
    1108:	afa3002c 	sw	v1,44(sp)
    110c:	afa20030 	sw	v0,48(sp)
    1110:	02002025 	move	a0,s0
    1114:	0320f809 	jalr	t9
    1118:	02202825 	move	a1,s1
    111c:	96080088 	lhu	t0,136(s0)
    1120:	87a2004a 	lh	v0,74(sp)
    1124:	02202025 	move	a0,s1
    1128:	31090020 	andi	t1,t0,0x20
    112c:	15200011 	bnez	t1,1174 <EnIshi_Fly+0xc0>
    1130:	26050024 	addiu	a1,s0,36
    1134:	3c060000 	lui	a2,0x0
    1138:	00025040 	sll	t2,v0,0x1
    113c:	3c070000 	lui	a3,0x0
    1140:	00ea3821 	addu	a3,a3,t2
    1144:	00c23021 	addu	a2,a2,v0
    1148:	90c650e4 	lbu	a2,20708(a2)
    114c:	0c000000 	jal	0 <EnIshi_InitCollider>
    1150:	94e70040 	lhu	a3,64(a3)
    1154:	8fab0030 	lw	t3,48(sp)
    1158:	3c190000 	lui	t9,0x0
    115c:	02002025 	move	a0,s0
    1160:	032bc821 	addu	t9,t9,t3
    1164:	8f397940 	lw	t9,31040(t9)
    1168:	02202825 	move	a1,s1
    116c:	0320f809 	jalr	t9
    1170:	00000000 	nop
    1174:	8fac002c 	lw	t4,44(sp)
    1178:	3c0d0000 	lui	t5,0x0
    117c:	25ad793c 	addiu	t5,t5,31036
    1180:	158d001d 	bne	t4,t5,11f8 <EnIshi_Fly+0x144>
    1184:	00000000 	nop
    1188:	862e07a0 	lh	t6,1952(s1)
    118c:	24050003 	li	a1,3
    1190:	000e7880 	sll	t7,t6,0x2
    1194:	022fc021 	addu	t8,s1,t7
    1198:	0c000000 	jal	0 <EnIshi_InitCollider>
    119c:	8f040790 	lw	a0,1936(t8)
    11a0:	00022400 	sll	a0,v0,0x10
    11a4:	afa20040 	sw	v0,64(sp)
    11a8:	00042403 	sra	a0,a0,0x10
    11ac:	0c000000 	jal	0 <EnIshi_InitCollider>
    11b0:	2405c350 	li	a1,-15536
    11b4:	87b10042 	lh	s1,66(sp)
    11b8:	24050003 	li	a1,3
    11bc:	00003025 	move	a2,zero
    11c0:	00112400 	sll	a0,s1,0x10
    11c4:	00042403 	sra	a0,a0,0x10
    11c8:	00003825 	move	a3,zero
    11cc:	0c000000 	jal	0 <EnIshi_InitCollider>
    11d0:	afa00010 	sw	zero,16(sp)
    11d4:	00112400 	sll	a0,s1,0x10
    11d8:	00042403 	sra	a0,a0,0x10
    11dc:	0c000000 	jal	0 <EnIshi_InitCollider>
    11e0:	24050007 	li	a1,7
    11e4:	c60c008c 	lwc1	$f12,140(s0)
    11e8:	240500ff 	li	a1,255
    11ec:	24060014 	li	a2,20
    11f0:	0c000000 	jal	0 <EnIshi_InitCollider>
    11f4:	24070096 	li	a3,150
    11f8:	0c000000 	jal	0 <EnIshi_InitCollider>
    11fc:	02002025 	move	a0,s0
    1200:	10000082 	b	140c <EnIshi_Fly+0x358>
    1204:	8fbf0024 	lw	ra,36(sp)
    1208:	51000053 	beqzl	t0,1358 <EnIshi_Fly+0x2a4>
    120c:	260400bc 	addiu	a0,s0,188
    1210:	c6040024 	lwc1	$f4,36(s0)
    1214:	2409015e 	li	t1,350
    1218:	02202025 	move	a0,s1
    121c:	e7a40034 	swc1	$f4,52(sp)
    1220:	c6080084 	lwc1	$f8,132(s0)
    1224:	c6060028 	lwc1	$f6,40(s0)
    1228:	27a50034 	addiu	a1,sp,52
    122c:	00003025 	move	a2,zero
    1230:	46083280 	add.s	$f10,$f6,$f8
    1234:	00003825 	move	a3,zero
    1238:	e7aa0038 	swc1	$f10,56(sp)
    123c:	c610002c 	lwc1	$f16,44(s0)
    1240:	afa90014 	sw	t1,20(sp)
    1244:	afa00010 	sw	zero,16(sp)
    1248:	0c000000 	jal	0 <EnIshi_InitCollider>
    124c:	e7b0003c 	swc1	$f16,60(sp)
    1250:	87aa004a 	lh	t2,74(sp)
    1254:	02202025 	move	a0,s1
    1258:	27a50034 	addiu	a1,sp,52
    125c:	15400017 	bnez	t2,12bc <EnIshi_Fly+0x208>
    1260:	2406012c 	li	a2,300
    1264:	02202025 	move	a0,s1
    1268:	27a50034 	addiu	a1,sp,52
    126c:	24060096 	li	a2,150
    1270:	2407028a 	li	a3,650
    1274:	0c000000 	jal	0 <EnIshi_InitCollider>
    1278:	afa00010 	sw	zero,16(sp)
    127c:	240b0004 	li	t3,4
    1280:	afab0010 	sw	t3,16(sp)
    1284:	02202025 	move	a0,s1
    1288:	27a50034 	addiu	a1,sp,52
    128c:	24060190 	li	a2,400
    1290:	0c000000 	jal	0 <EnIshi_InitCollider>
    1294:	24070320 	li	a3,800
    1298:	24190008 	li	t9,8
    129c:	afb90010 	sw	t9,16(sp)
    12a0:	02202025 	move	a0,s1
    12a4:	27a50034 	addiu	a1,sp,52
    12a8:	240601f4 	li	a2,500
    12ac:	0c000000 	jal	0 <EnIshi_InitCollider>
    12b0:	2407044c 	li	a3,1100
    12b4:	10000013 	b	1304 <EnIshi_Fly+0x250>
    12b8:	3c01c0c0 	lui	at,0xc0c0
    12bc:	240702bc 	li	a3,700
    12c0:	0c000000 	jal	0 <EnIshi_InitCollider>
    12c4:	afa00010 	sw	zero,16(sp)
    12c8:	240c0004 	li	t4,4
    12cc:	afac0010 	sw	t4,16(sp)
    12d0:	02202025 	move	a0,s1
    12d4:	27a50034 	addiu	a1,sp,52
    12d8:	240601f4 	li	a2,500
    12dc:	0c000000 	jal	0 <EnIshi_InitCollider>
    12e0:	24070384 	li	a3,900
    12e4:	240d0008 	li	t5,8
    12e8:	afad0010 	sw	t5,16(sp)
    12ec:	02202025 	move	a0,s1
    12f0:	27a50034 	addiu	a1,sp,52
    12f4:	240601f4 	li	a2,500
    12f8:	0c000000 	jal	0 <EnIshi_InitCollider>
    12fc:	24070514 	li	a3,1300
    1300:	3c01c0c0 	lui	at,0xc0c0
    1304:	44819000 	mtc1	at,$f18
    1308:	3c020000 	lui	v0,0x0
    130c:	3c030000 	lui	v1,0x0
    1310:	e6120070 	swc1	$f18,112(s0)
    1314:	24630004 	addiu	v1,v1,4
    1318:	24420000 	addiu	v0,v0,0
    131c:	844e0000 	lh	t6,0(v0)
    1320:	84780000 	lh	t8,0(v1)
    1324:	02202025 	move	a0,s1
    1328:	000e7883 	sra	t7,t6,0x2
    132c:	00184083 	sra	t0,t8,0x2
    1330:	a44f0000 	sh	t7,0(v0)
    1334:	a4680000 	sh	t0,0(v1)
    1338:	26050024 	addiu	a1,s0,36
    133c:	24060028 	li	a2,40
    1340:	0c000000 	jal	0 <EnIshi_InitCollider>
    1344:	240728c5 	li	a3,10437
    1348:	96090088 	lhu	t1,136(s0)
    134c:	312affbf 	andi	t2,t1,0xffbf
    1350:	a60a0088 	sh	t2,136(s0)
    1354:	260400bc 	addiu	a0,s0,188
    1358:	24050000 	li	a1,0
    135c:	0c000000 	jal	0 <EnIshi_InitCollider>
    1360:	3c064000 	lui	a2,0x4000
    1364:	0c000000 	jal	0 <EnIshi_InitCollider>
    1368:	02002025 	move	a0,s0
    136c:	87ab004a 	lh	t3,74(sp)
    1370:	3c050000 	lui	a1,0x0
    1374:	2604005c 	addiu	a0,s0,92
    1378:	000bc880 	sll	t9,t3,0x2
    137c:	00b92821 	addu	a1,a1,t9
    1380:	0c000000 	jal	0 <EnIshi_InitCollider>
    1384:	8ca50038 	lw	a1,56(a1)
    1388:	0c000000 	jal	0 <EnIshi_InitCollider>
    138c:	02002025 	move	a0,s0
    1390:	3c0d0000 	lui	t5,0x0
    1394:	85ad0000 	lh	t5,0(t5)
    1398:	860c00b4 	lh	t4,180(s0)
    139c:	3c180000 	lui	t8,0x0
    13a0:	860f00b6 	lh	t7,182(s0)
    13a4:	018d7021 	addu	t6,t4,t5
    13a8:	a60e00b4 	sh	t6,180(s0)
    13ac:	87180004 	lh	t8,4(t8)
    13b0:	44802000 	mtc1	zero,$f4
    13b4:	240900c5 	li	t1,197
    13b8:	01f84021 	addu	t0,t7,t8
    13bc:	a60800b6 	sh	t0,182(s0)
    13c0:	afa90014 	sw	t1,20(sp)
    13c4:	02202025 	move	a0,s1
    13c8:	02002825 	move	a1,s0
    13cc:	3c0640f0 	lui	a2,0x40f0
    13d0:	3c07420c 	lui	a3,0x420c
    13d4:	0c000000 	jal	0 <EnIshi_InitCollider>
    13d8:	e7a40010 	swc1	$f4,16(sp)
    13dc:	26060150 	addiu	a2,s0,336
    13e0:	00c02825 	move	a1,a2
    13e4:	afa60030 	sw	a2,48(sp)
    13e8:	0c000000 	jal	0 <EnIshi_InitCollider>
    13ec:	02002025 	move	a0,s0
    13f0:	3c010001 	lui	at,0x1
    13f4:	34211e60 	ori	at,at,0x1e60
    13f8:	8fa60030 	lw	a2,48(sp)
    13fc:	02212821 	addu	a1,s1,at
    1400:	0c000000 	jal	0 <EnIshi_InitCollider>
    1404:	02202025 	move	a0,s1
    1408:	8fbf0024 	lw	ra,36(sp)
    140c:	8fb0001c 	lw	s0,28(sp)
    1410:	8fb10020 	lw	s1,32(sp)
    1414:	03e00008 	jr	ra
    1418:	27bd0050 	addiu	sp,sp,80

0000141c <EnIshi_Update>:
    141c:	27bdffe8 	addiu	sp,sp,-24
    1420:	afbf0014 	sw	ra,20(sp)
    1424:	8c99014c 	lw	t9,332(a0)
    1428:	0320f809 	jalr	t9
    142c:	00000000 	nop
    1430:	8fbf0014 	lw	ra,20(sp)
    1434:	27bd0018 	addiu	sp,sp,24
    1438:	03e00008 	jr	ra
    143c:	00000000 	nop

00001440 <EnIshi_DrawSmall>:
    1440:	27bdffe8 	addiu	sp,sp,-24
    1444:	afa40018 	sw	a0,24(sp)
    1448:	00a02025 	move	a0,a1
    144c:	afbf0014 	sw	ra,20(sp)
    1450:	3c050000 	lui	a1,0x0
    1454:	0c000000 	jal	0 <EnIshi_InitCollider>
    1458:	24a50000 	addiu	a1,a1,0
    145c:	8fbf0014 	lw	ra,20(sp)
    1460:	27bd0018 	addiu	sp,sp,24
    1464:	03e00008 	jr	ra
    1468:	00000000 	nop

0000146c <EnIshi_DrawLarge>:
    146c:	27bdffb8 	addiu	sp,sp,-72
    1470:	afbf001c 	sw	ra,28(sp)
    1474:	afb00018 	sw	s0,24(sp)
    1478:	afa40048 	sw	a0,72(sp)
    147c:	afa5004c 	sw	a1,76(sp)
    1480:	8ca50000 	lw	a1,0(a1)
    1484:	3c060000 	lui	a2,0x0
    1488:	24c60038 	addiu	a2,a2,56
    148c:	27a40034 	addiu	a0,sp,52
    1490:	2407041a 	li	a3,1050
    1494:	0c000000 	jal	0 <EnIshi_InitCollider>
    1498:	00a08025 	move	s0,a1
    149c:	8faf004c 	lw	t7,76(sp)
    14a0:	0c000000 	jal	0 <EnIshi_InitCollider>
    14a4:	8de40000 	lw	a0,0(t7)
    14a8:	8e0202c0 	lw	v0,704(s0)
    14ac:	3c19da38 	lui	t9,0xda38
    14b0:	37390003 	ori	t9,t9,0x3
    14b4:	24580008 	addiu	t8,v0,8
    14b8:	ae1802c0 	sw	t8,704(s0)
    14bc:	ac590000 	sw	t9,0(v0)
    14c0:	8fa8004c 	lw	t0,76(sp)
    14c4:	3c050000 	lui	a1,0x0
    14c8:	24a50048 	addiu	a1,a1,72
    14cc:	8d040000 	lw	a0,0(t0)
    14d0:	2406041f 	li	a2,1055
    14d4:	0c000000 	jal	0 <EnIshi_InitCollider>
    14d8:	afa20030 	sw	v0,48(sp)
    14dc:	8fa30030 	lw	v1,48(sp)
    14e0:	3c0afa00 	lui	t2,0xfa00
    14e4:	240bffff 	li	t3,-1
    14e8:	ac620004 	sw	v0,4(v1)
    14ec:	8e0202c0 	lw	v0,704(s0)
    14f0:	3c0e0000 	lui	t6,0x0
    14f4:	25ce0000 	addiu	t6,t6,0
    14f8:	24490008 	addiu	t1,v0,8
    14fc:	ae0902c0 	sw	t1,704(s0)
    1500:	ac4b0004 	sw	t3,4(v0)
    1504:	ac4a0000 	sw	t2,0(v0)
    1508:	8e0202c0 	lw	v0,704(s0)
    150c:	3c0dde00 	lui	t5,0xde00
    1510:	3c060000 	lui	a2,0x0
    1514:	244c0008 	addiu	t4,v0,8
    1518:	ae0c02c0 	sw	t4,704(s0)
    151c:	ac4e0004 	sw	t6,4(v0)
    1520:	ac4d0000 	sw	t5,0(v0)
    1524:	8faf004c 	lw	t7,76(sp)
    1528:	24c60058 	addiu	a2,a2,88
    152c:	27a40034 	addiu	a0,sp,52
    1530:	24070426 	li	a3,1062
    1534:	0c000000 	jal	0 <EnIshi_InitCollider>
    1538:	8de50000 	lw	a1,0(t7)
    153c:	8fbf001c 	lw	ra,28(sp)
    1540:	8fb00018 	lw	s0,24(sp)
    1544:	27bd0048 	addiu	sp,sp,72
    1548:	03e00008 	jr	ra
    154c:	00000000 	nop

00001550 <EnIshi_Draw>:
    1550:	27bdffe8 	addiu	sp,sp,-24
    1554:	afbf0014 	sw	ra,20(sp)
    1558:	848e001c 	lh	t6,28(a0)
    155c:	3c190000 	lui	t9,0x0
    1560:	31cf0001 	andi	t7,t6,0x1
    1564:	000fc080 	sll	t8,t7,0x2
    1568:	0338c821 	addu	t9,t9,t8
    156c:	8f3979f4 	lw	t9,31220(t9)
    1570:	0320f809 	jalr	t9
    1574:	00000000 	nop
    1578:	8fbf0014 	lw	ra,20(sp)
    157c:	27bd0018 	addiu	sp,sp,24
    1580:	03e00008 	jr	ra
    1584:	00000000 	nop
	...
