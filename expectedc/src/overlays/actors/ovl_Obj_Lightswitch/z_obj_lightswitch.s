
build/src/overlays/actors/ovl_Obj_Lightswitch/z_obj_lightswitch.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <ObjLightswitch_InitCollider>:
       0:	27bdffd0 	addiu	sp,sp,-48
       4:	afb00020 	sw	s0,32(sp)
       8:	00808025 	move	s0,a0
       c:	afa50034 	sw	a1,52(sp)
      10:	00a02025 	move	a0,a1
      14:	afbf0024 	sw	ra,36(sp)
      18:	26050150 	addiu	a1,s0,336
      1c:	0c000000 	jal	0 <ObjLightswitch_InitCollider>
      20:	afa50028 	sw	a1,40(sp)
      24:	3c070000 	lui	a3,0x0
      28:	260e0170 	addiu	t6,s0,368
      2c:	afae0010 	sw	t6,16(sp)
      30:	24e70044 	addiu	a3,a3,68
      34:	8fa40034 	lw	a0,52(sp)
      38:	8fa50028 	lw	a1,40(sp)
      3c:	0c000000 	jal	0 <ObjLightswitch_InitCollider>
      40:	02003025 	move	a2,s0
      44:	c60400bc 	lwc1	$f4,188(s0)
      48:	c6060054 	lwc1	$f6,84(s0)
      4c:	c60a0028 	lwc1	$f10,40(s0)
      50:	c60c0024 	lwc1	$f12,36(s0)
      54:	46062202 	mul.s	$f8,$f4,$f6
      58:	8e06002c 	lw	a2,44(s0)
      5c:	260700b4 	addiu	a3,s0,180
      60:	0c000000 	jal	0 <ObjLightswitch_InitCollider>
      64:	46085380 	add.s	$f14,$f10,$f8
      68:	c60c0050 	lwc1	$f12,80(s0)
      6c:	c60e0054 	lwc1	$f14,84(s0)
      70:	8e060058 	lw	a2,88(s0)
      74:	0c000000 	jal	0 <ObjLightswitch_InitCollider>
      78:	24070001 	li	a3,1
      7c:	00002025 	move	a0,zero
      80:	0c000000 	jal	0 <ObjLightswitch_InitCollider>
      84:	8fa50028 	lw	a1,40(sp)
      88:	8fbf0024 	lw	ra,36(sp)
      8c:	8fb00020 	lw	s0,32(sp)
      90:	27bd0030 	addiu	sp,sp,48
      94:	03e00008 	jr	ra
      98:	00000000 	nop

0000009c <ObjLightswitch_SetSwitchFlag>:
      9c:	27bdffd8 	addiu	sp,sp,-40
      a0:	afb00018 	sw	s0,24(sp)
      a4:	00803825 	move	a3,a0
      a8:	00a08025 	move	s0,a1
      ac:	afbf001c 	sw	ra,28(sp)
      b0:	00a02025 	move	a0,a1
      b4:	84e5001c 	lh	a1,28(a3)
      b8:	afa70028 	sw	a3,40(sp)
      bc:	00052a03 	sra	a1,a1,0x8
      c0:	0c000000 	jal	0 <ObjLightswitch_InitCollider>
      c4:	30a5003f 	andi	a1,a1,0x3f
      c8:	14400020 	bnez	v0,14c <ObjLightswitch_SetSwitchFlag+0xb0>
      cc:	8fa70028 	lw	a3,40(sp)
      d0:	84e2001c 	lh	v0,28(a3)
      d4:	afa70028 	sw	a3,40(sp)
      d8:	02002025 	move	a0,s0
      dc:	00021903 	sra	v1,v0,0x4
      e0:	30630003 	andi	v1,v1,0x3
      e4:	00022a03 	sra	a1,v0,0x8
      e8:	30a5003f 	andi	a1,a1,0x3f
      ec:	0c000000 	jal	0 <ObjLightswitch_InitCollider>
      f0:	afa30020 	sw	v1,32(sp)
      f4:	8fa30020 	lw	v1,32(sp)
      f8:	24010001 	li	at,1
      fc:	8fa70028 	lw	a3,40(sp)
     100:	14610006 	bne	v1,at,11c <ObjLightswitch_SetSwitchFlag+0x80>
     104:	02002025 	move	a0,s0
     108:	00e02825 	move	a1,a3
     10c:	0c000000 	jal	0 <ObjLightswitch_InitCollider>
     110:	24064807 	li	a2,18439
     114:	1000000e 	b	150 <ObjLightswitch_SetSwitchFlag+0xb4>
     118:	8fbf001c 	lw	ra,28(sp)
     11c:	24010003 	li	at,3
     120:	14610007 	bne	v1,at,140 <ObjLightswitch_SetSwitchFlag+0xa4>
     124:	02002025 	move	a0,s0
     128:	02002025 	move	a0,s0
     12c:	00e02825 	move	a1,a3
     130:	0c000000 	jal	0 <ObjLightswitch_InitCollider>
     134:	24064806 	li	a2,18438
     138:	10000005 	b	150 <ObjLightswitch_SetSwitchFlag+0xb4>
     13c:	8fbf001c 	lw	ra,28(sp)
     140:	00e02825 	move	a1,a3
     144:	0c000000 	jal	0 <ObjLightswitch_InitCollider>
     148:	24064802 	li	a2,18434
     14c:	8fbf001c 	lw	ra,28(sp)
     150:	8fb00018 	lw	s0,24(sp)
     154:	27bd0028 	addiu	sp,sp,40
     158:	03e00008 	jr	ra
     15c:	00000000 	nop

00000160 <ObjLightswitch_ClearSwitchFlag>:
     160:	27bdffe8 	addiu	sp,sp,-24
     164:	afa40018 	sw	a0,24(sp)
     168:	8fae0018 	lw	t6,24(sp)
     16c:	afbf0014 	sw	ra,20(sp)
     170:	afa5001c 	sw	a1,28(sp)
     174:	00a02025 	move	a0,a1
     178:	85c5001c 	lh	a1,28(t6)
     17c:	00052a03 	sra	a1,a1,0x8
     180:	0c000000 	jal	0 <ObjLightswitch_InitCollider>
     184:	30a5003f 	andi	a1,a1,0x3f
     188:	10400011 	beqz	v0,1d0 <ObjLightswitch_ClearSwitchFlag+0x70>
     18c:	8faf0018 	lw	t7,24(sp)
     190:	85e5001c 	lh	a1,28(t7)
     194:	8fa4001c 	lw	a0,28(sp)
     198:	00052a03 	sra	a1,a1,0x8
     19c:	0c000000 	jal	0 <ObjLightswitch_InitCollider>
     1a0:	30a5003f 	andi	a1,a1,0x3f
     1a4:	8fb80018 	lw	t8,24(sp)
     1a8:	24010001 	li	at,1
     1ac:	8fa4001c 	lw	a0,28(sp)
     1b0:	8719001c 	lh	t9,28(t8)
     1b4:	03002825 	move	a1,t8
     1b8:	00194103 	sra	t0,t9,0x4
     1bc:	31090003 	andi	t1,t0,0x3
     1c0:	55210004 	bnel	t1,at,1d4 <ObjLightswitch_ClearSwitchFlag+0x74>
     1c4:	8fbf0014 	lw	ra,20(sp)
     1c8:	0c000000 	jal	0 <ObjLightswitch_InitCollider>
     1cc:	24064807 	li	a2,18439
     1d0:	8fbf0014 	lw	ra,20(sp)
     1d4:	27bd0018 	addiu	sp,sp,24
     1d8:	03e00008 	jr	ra
     1dc:	00000000 	nop

000001e0 <ObjLightswitch_SpawnDisappearEffects>:
     1e0:	27bdff80 	addiu	sp,sp,-128
     1e4:	afb00048 	sw	s0,72(sp)
     1e8:	00808025 	move	s0,a0
     1ec:	afbf004c 	sw	ra,76(sp)
     1f0:	afa50084 	sw	a1,132(sp)
     1f4:	0c000000 	jal	0 <ObjLightswitch_InitCollider>
     1f8:	848400b6 	lh	a0,182(a0)
     1fc:	e7a00070 	swc1	$f0,112(sp)
     200:	0c000000 	jal	0 <ObjLightswitch_InitCollider>
     204:	860400b6 	lh	a0,182(s0)
     208:	e7a0006c 	swc1	$f0,108(sp)
     20c:	860201bc 	lh	v0,444(s0)
     210:	28411900 	slti	at,v0,6400
     214:	54200078 	bnezl	at,3f8 <ObjLightswitch_SpawnDisappearEffects+0x218>
     218:	8fbf004c 	lw	ra,76(sp)
     21c:	44822000 	mtc1	v0,$f4
     220:	3c014270 	lui	at,0x4270
     224:	44811000 	mtc1	at,$f2
     228:	468021a0 	cvt.s.w	$f6,$f4
     22c:	3c010000 	lui	at,0x0
     230:	c4280168 	lwc1	$f8,360(at)
     234:	3c013f80 	lui	at,0x3f80
     238:	44812000 	mtc1	at,$f4
     23c:	3c0143c8 	lui	at,0x43c8
     240:	46083282 	mul.s	$f10,$f6,$f8
     244:	44814000 	mtc1	at,$f8
     248:	460a2181 	sub.s	$f6,$f4,$f10
     24c:	46083002 	mul.s	$f0,$f6,$f8
     250:	4600103c 	c.lt.s	$f2,$f0
     254:	00000000 	nop
     258:	45020004 	bc1fl	26c <ObjLightswitch_SpawnDisappearEffects+0x8c>
     25c:	46000386 	mov.s	$f14,$f0
     260:	10000002 	b	26c <ObjLightswitch_SpawnDisappearEffects+0x8c>
     264:	46001386 	mov.s	$f14,$f2
     268:	46000386 	mov.s	$f14,$f0
     26c:	0c000000 	jal	0 <ObjLightswitch_InitCollider>
     270:	e7ae0058 	swc1	$f14,88(sp)
     274:	3c0141f0 	lui	at,0x41f0
     278:	44818000 	mtc1	at,$f16
     27c:	c7ae0058 	lwc1	$f14,88(sp)
     280:	46107101 	sub.s	$f4,$f14,$f16
     284:	46102280 	add.s	$f10,$f4,$f16
     288:	460a0082 	mul.s	$f2,$f0,$f10
     28c:	4602803c 	c.lt.s	$f16,$f2
     290:	46101301 	sub.s	$f12,$f2,$f16
     294:	45000003 	bc1f	2a4 <ObjLightswitch_SpawnDisappearEffects+0xc4>
     298:	e7ac0064 	swc1	$f12,100(sp)
     29c:	1000000f 	b	2dc <ObjLightswitch_SpawnDisappearEffects+0xfc>
     2a0:	46008086 	mov.s	$f2,$f16
     2a4:	460c6202 	mul.s	$f8,$f12,$f12
     2a8:	3c0142c8 	lui	at,0x42c8
     2ac:	44817000 	mtc1	at,$f14
     2b0:	3c014461 	lui	at,0x4461
     2b4:	44813000 	mtc1	at,$f6
     2b8:	00000000 	nop
     2bc:	46083081 	sub.s	$f2,$f6,$f8
     2c0:	460e103c 	c.lt.s	$f2,$f14
     2c4:	00000000 	nop
     2c8:	45020003 	bc1fl	2d8 <ObjLightswitch_SpawnDisappearEffects+0xf8>
     2cc:	46001004 	sqrt.s	$f0,$f2
     2d0:	46007086 	mov.s	$f2,$f14
     2d4:	46001004 	sqrt.s	$f0,$f2
     2d8:	46000086 	mov.s	$f2,$f0
     2dc:	0c000000 	jal	0 <ObjLightswitch_InitCollider>
     2e0:	e7a20068 	swc1	$f2,104(sp)
     2e4:	3c013f00 	lui	at,0x3f00
     2e8:	44812000 	mtc1	at,$f4
     2ec:	c7a20068 	lwc1	$f2,104(sp)
     2f0:	46040281 	sub.s	$f10,$f0,$f4
     2f4:	46025302 	mul.s	$f12,$f10,$f2
     2f8:	460c6080 	add.s	$f2,$f12,$f12
     2fc:	46001385 	abs.s	$f14,$f2
     300:	e7a20068 	swc1	$f2,104(sp)
     304:	0c000000 	jal	0 <ObjLightswitch_InitCollider>
     308:	e7ae0058 	swc1	$f14,88(sp)
     30c:	3c0141f0 	lui	at,0x41f0
     310:	44818000 	mtc1	at,$f16
     314:	c7ae0058 	lwc1	$f14,88(sp)
     318:	3c014120 	lui	at,0x4120
     31c:	44819000 	mtc1	at,$f18
     320:	460e8181 	sub.s	$f6,$f16,$f14
     324:	3c013f00 	lui	at,0x3f00
     328:	44814000 	mtc1	at,$f8
     32c:	c7a20068 	lwc1	$f2,104(sp)
     330:	3c060000 	lui	a2,0x0
     334:	46083102 	mul.s	$f4,$f6,$f8
     338:	c7a60070 	lwc1	$f6,112(sp)
     33c:	24c60074 	addiu	a2,a2,116
     340:	46120282 	mul.s	$f10,$f0,$f18
     344:	240e0064 	li	t6,100
     348:	240f00ff 	li	t7,255
     34c:	241800ff 	li	t8,255
     350:	241900a0 	li	t9,160
     354:	240800a0 	li	t0,160
     358:	240900ff 	li	t1,255
     35c:	46045300 	add.s	$f12,$f10,$f4
     360:	c7aa006c 	lwc1	$f10,108(sp)
     364:	240a0001 	li	t2,1
     368:	240b0009 	li	t3,9
     36c:	46066202 	mul.s	$f8,$f12,$f6
     370:	240c0001 	li	t4,1
     374:	00c03825 	move	a3,a2
     378:	460a1102 	mul.s	$f4,$f2,$f10
     37c:	8fa40084 	lw	a0,132(sp)
     380:	27a50074 	addiu	a1,sp,116
     384:	46044200 	add.s	$f8,$f8,$f4
     388:	c6040024 	lwc1	$f4,36(s0)
     38c:	46082100 	add.s	$f4,$f4,$f8
     390:	e7a40074 	swc1	$f4,116(sp)
     394:	c6080028 	lwc1	$f8,40(s0)
     398:	c7a40064 	lwc1	$f4,100(sp)
     39c:	46044200 	add.s	$f8,$f8,$f4
     3a0:	46124100 	add.s	$f4,$f8,$f18
     3a4:	460a6202 	mul.s	$f8,$f12,$f10
     3a8:	e7a40078 	swc1	$f4,120(sp)
     3ac:	46061102 	mul.s	$f4,$f2,$f6
     3b0:	c606002c 	lwc1	$f6,44(s0)
     3b4:	afac003c 	sw	t4,60(sp)
     3b8:	afab0038 	sw	t3,56(sp)
     3bc:	afaa0034 	sw	t2,52(sp)
     3c0:	afa00030 	sw	zero,48(sp)
     3c4:	afa0002c 	sw	zero,44(sp)
     3c8:	46044281 	sub.s	$f10,$f8,$f4
     3cc:	afa90028 	sw	t1,40(sp)
     3d0:	afa80024 	sw	t0,36(sp)
     3d4:	afb90020 	sw	t9,32(sp)
     3d8:	460a3200 	add.s	$f8,$f6,$f10
     3dc:	afb8001c 	sw	t8,28(sp)
     3e0:	afaf0018 	sw	t7,24(sp)
     3e4:	afa00014 	sw	zero,20(sp)
     3e8:	e7a8007c 	swc1	$f8,124(sp)
     3ec:	0c000000 	jal	0 <ObjLightswitch_InitCollider>
     3f0:	afae0010 	sw	t6,16(sp)
     3f4:	8fbf004c 	lw	ra,76(sp)
     3f8:	8fb00048 	lw	s0,72(sp)
     3fc:	27bd0080 	addiu	sp,sp,128
     400:	03e00008 	jr	ra
     404:	00000000 	nop

00000408 <ObjLightswitch_Init>:
     408:	27bdffb0 	addiu	sp,sp,-80
     40c:	afb00038 	sw	s0,56(sp)
     410:	00808025 	move	s0,a0
     414:	afbf003c 	sw	ra,60(sp)
     418:	afa50054 	sw	a1,84(sp)
     41c:	00a02025 	move	a0,a1
     420:	8605001c 	lh	a1,28(s0)
     424:	00052a03 	sra	a1,a1,0x8
     428:	0c000000 	jal	0 <ObjLightswitch_InitCollider>
     42c:	30a5003f 	andi	a1,a1,0x3f
     430:	3c050000 	lui	a1,0x0
     434:	afa20048 	sw	v0,72(sp)
     438:	afa00044 	sw	zero,68(sp)
     43c:	24a50080 	addiu	a1,a1,128
     440:	0c000000 	jal	0 <ObjLightswitch_InitCollider>
     444:	02002025 	move	a0,s0
     448:	02002025 	move	a0,s0
     44c:	0c000000 	jal	0 <ObjLightswitch_InitCollider>
     450:	24050000 	li	a1,0
     454:	8fae0048 	lw	t6,72(sp)
     458:	11c0000e 	beqz	t6,494 <ObjLightswitch_Init+0x8c>
     45c:	00000000 	nop
     460:	8602001c 	lh	v0,28(s0)
     464:	24010003 	li	at,3
     468:	24190001 	li	t9,1
     46c:	00027903 	sra	t7,v0,0x4
     470:	31f80003 	andi	t8,t7,0x3
     474:	17010003 	bne	t8,at,484 <ObjLightswitch_Init+0x7c>
     478:	00000000 	nop
     47c:	10000008 	b	4a0 <ObjLightswitch_Init+0x98>
     480:	afb90044 	sw	t9,68(sp)
     484:	0c000000 	jal	0 <ObjLightswitch_InitCollider>
     488:	02002025 	move	a0,s0
     48c:	10000004 	b	4a0 <ObjLightswitch_Init+0x98>
     490:	8602001c 	lh	v0,28(s0)
     494:	0c000000 	jal	0 <ObjLightswitch_InitCollider>
     498:	02002025 	move	a0,s0
     49c:	8602001c 	lh	v0,28(s0)
     4a0:	30480001 	andi	t0,v0,0x1
     4a4:	24010001 	li	at,1
     4a8:	15010037 	bne	t0,at,588 <ObjLightswitch_Init+0x180>
     4ac:	8fa90048 	lw	t1,72(sp)
     4b0:	11200008 	beqz	t1,4d4 <ObjLightswitch_Init+0xcc>
     4b4:	26040024 	addiu	a0,s0,36
     4b8:	3c050000 	lui	a1,0x0
     4bc:	0c000000 	jal	0 <ObjLightswitch_InitCollider>
     4c0:	24a50068 	addiu	a1,a1,104
     4c4:	3c050000 	lui	a1,0x0
     4c8:	24a50068 	addiu	a1,a1,104
     4cc:	0c000000 	jal	0 <ObjLightswitch_InitCollider>
     4d0:	26040008 	addiu	a0,s0,8
     4d4:	8fa60054 	lw	a2,84(sp)
     4d8:	240ac000 	li	t2,-16384
     4dc:	a60a00b4 	sh	t2,180(s0)
     4e0:	860200b4 	lh	v0,180(s0)
     4e4:	a60000b8 	sh	zero,184(s0)
     4e8:	8e0b0004 	lw	t3,4(s0)
     4ec:	a6020014 	sh	v0,20(s0)
     4f0:	a6020030 	sh	v0,48(s0)
     4f4:	860200b8 	lh	v0,184(s0)
     4f8:	c6040008 	lwc1	$f4,8(s0)
     4fc:	356c0020 	ori	t4,t3,0x20
     500:	ae0c0004 	sw	t4,4(s0)
     504:	a6020018 	sh	v0,24(s0)
     508:	a6020034 	sh	v0,52(s0)
     50c:	e7a40010 	swc1	$f4,16(sp)
     510:	c606000c 	lwc1	$f6,12(s0)
     514:	240eff00 	li	t6,-256
     518:	02002825 	move	a1,s0
     51c:	e7a60014 	swc1	$f6,20(sp)
     520:	c6080010 	lwc1	$f8,16(s0)
     524:	afa0001c 	sw	zero,28(sp)
     528:	240700ff 	li	a3,255
     52c:	e7a80018 	swc1	$f8,24(sp)
     530:	860d0016 	lh	t5,22(s0)
     534:	afae0028 	sw	t6,40(sp)
     538:	afa00024 	sw	zero,36(sp)
     53c:	24c41c24 	addiu	a0,a2,7204
     540:	0c000000 	jal	0 <ObjLightswitch_InitCollider>
     544:	afad0020 	sw	t5,32(sp)
     548:	1440000f 	bnez	v0,588 <ObjLightswitch_Init+0x180>
     54c:	3c040000 	lui	a0,0x0
     550:	240f0001 	li	t7,1
     554:	afaf0044 	sw	t7,68(sp)
     558:	0c000000 	jal	0 <ObjLightswitch_InitCollider>
     55c:	24840000 	addiu	a0,a0,0
     560:	3c040000 	lui	a0,0x0
     564:	3c050000 	lui	a1,0x0
     568:	24a5003c 	addiu	a1,a1,60
     56c:	2484000c 	addiu	a0,a0,12
     570:	240601c4 	li	a2,452
     574:	0c000000 	jal	0 <ObjLightswitch_InitCollider>
     578:	8607001c 	lh	a3,28(s0)
     57c:	3c040000 	lui	a0,0x0
     580:	0c000000 	jal	0 <ObjLightswitch_InitCollider>
     584:	24840054 	addiu	a0,a0,84
     588:	02002025 	move	a0,s0
     58c:	0c000000 	jal	0 <ObjLightswitch_InitCollider>
     590:	8fa50054 	lw	a1,84(sp)
     594:	3c060000 	lui	a2,0x0
     598:	24c60054 	addiu	a2,a2,84
     59c:	26040098 	addiu	a0,s0,152
     5a0:	0c000000 	jal	0 <ObjLightswitch_InitCollider>
     5a4:	00002825 	move	a1,zero
     5a8:	8fb80044 	lw	t8,68(sp)
     5ac:	13000003 	beqz	t8,5bc <ObjLightswitch_Init+0x1b4>
     5b0:	00000000 	nop
     5b4:	0c000000 	jal	0 <ObjLightswitch_InitCollider>
     5b8:	02002025 	move	a0,s0
     5bc:	3c040000 	lui	a0,0x0
     5c0:	24840058 	addiu	a0,a0,88
     5c4:	0c000000 	jal	0 <ObjLightswitch_InitCollider>
     5c8:	8605001c 	lh	a1,28(s0)
     5cc:	8fbf003c 	lw	ra,60(sp)
     5d0:	8fb00038 	lw	s0,56(sp)
     5d4:	27bd0050 	addiu	sp,sp,80
     5d8:	03e00008 	jr	ra
     5dc:	00000000 	nop

000005e0 <ObjLightswitch_Destroy>:
     5e0:	27bdffe8 	addiu	sp,sp,-24
     5e4:	00803825 	move	a3,a0
     5e8:	afbf0014 	sw	ra,20(sp)
     5ec:	00a02025 	move	a0,a1
     5f0:	0c000000 	jal	0 <ObjLightswitch_InitCollider>
     5f4:	24e50150 	addiu	a1,a3,336
     5f8:	8fbf0014 	lw	ra,20(sp)
     5fc:	27bd0018 	addiu	sp,sp,24
     600:	03e00008 	jr	ra
     604:	00000000 	nop

00000608 <ObjLightswitch_SetupOff>:
     608:	3c0e0000 	lui	t6,0x0
     60c:	24023fc0 	li	v0,16320
     610:	25ce0000 	addiu	t6,t6,0
     614:	240f26c0 	li	t7,9920
     618:	24181f40 	li	t8,8000
     61c:	ac8e014c 	sw	t6,332(a0)
     620:	a48001b4 	sh	zero,436(a0)
     624:	a48f01b6 	sh	t7,438(a0)
     628:	a49801b8 	sh	t8,440(a0)
     62c:	a48201ba 	sh	v0,442(a0)
     630:	03e00008 	jr	ra
     634:	a48201bc 	sh	v0,444(a0)

00000638 <ObjLightswitch_Off>:
     638:	27bdffe8 	addiu	sp,sp,-24
     63c:	afbf0014 	sw	ra,20(sp)
     640:	afa5001c 	sw	a1,28(sp)
     644:	8482001c 	lh	v0,28(a0)
     648:	24010001 	li	at,1
     64c:	00021103 	sra	v0,v0,0x4
     650:	30420003 	andi	v0,v0,0x3
     654:	5040000a 	beqzl	v0,680 <ObjLightswitch_Off+0x48>
     658:	908e0161 	lbu	t6,353(a0)
     65c:	10410012 	beq	v0,at,6a8 <ObjLightswitch_Off+0x70>
     660:	24010002 	li	at,2
     664:	10410005 	beq	v0,at,67c <ObjLightswitch_Off+0x44>
     668:	24010003 	li	at,3
     66c:	5041001e 	beql	v0,at,6e8 <ObjLightswitch_Off+0xb0>
     670:	908a0161 	lbu	t2,353(a0)
     674:	10000025 	b	70c <ObjLightswitch_Off+0xd4>
     678:	8fbf0014 	lw	ra,20(sp)
     67c:	908e0161 	lbu	t6,353(a0)
     680:	31cf0002 	andi	t7,t6,0x2
     684:	51e00021 	beqzl	t7,70c <ObjLightswitch_Off+0xd4>
     688:	8fbf0014 	lw	ra,20(sp)
     68c:	0c000000 	jal	0 <ObjLightswitch_InitCollider>
     690:	afa40018 	sw	a0,24(sp)
     694:	8fa40018 	lw	a0,24(sp)
     698:	0c000000 	jal	0 <ObjLightswitch_InitCollider>
     69c:	8fa5001c 	lw	a1,28(sp)
     6a0:	1000001a 	b	70c <ObjLightswitch_Off+0xd4>
     6a4:	8fbf0014 	lw	ra,20(sp)
     6a8:	90980161 	lbu	t8,353(a0)
     6ac:	33190002 	andi	t9,t8,0x2
     6b0:	53200016 	beqzl	t9,70c <ObjLightswitch_Off+0xd4>
     6b4:	8fbf0014 	lw	ra,20(sp)
     6b8:	908801c2 	lbu	t0,450(a0)
     6bc:	31090002 	andi	t1,t0,0x2
     6c0:	55200012 	bnezl	t1,70c <ObjLightswitch_Off+0xd4>
     6c4:	8fbf0014 	lw	ra,20(sp)
     6c8:	0c000000 	jal	0 <ObjLightswitch_InitCollider>
     6cc:	afa40018 	sw	a0,24(sp)
     6d0:	8fa40018 	lw	a0,24(sp)
     6d4:	0c000000 	jal	0 <ObjLightswitch_InitCollider>
     6d8:	8fa5001c 	lw	a1,28(sp)
     6dc:	1000000b 	b	70c <ObjLightswitch_Off+0xd4>
     6e0:	8fbf0014 	lw	ra,20(sp)
     6e4:	908a0161 	lbu	t2,353(a0)
     6e8:	314b0002 	andi	t3,t2,0x2
     6ec:	51600007 	beqzl	t3,70c <ObjLightswitch_Off+0xd4>
     6f0:	8fbf0014 	lw	ra,20(sp)
     6f4:	0c000000 	jal	0 <ObjLightswitch_InitCollider>
     6f8:	afa40018 	sw	a0,24(sp)
     6fc:	8fa40018 	lw	a0,24(sp)
     700:	0c000000 	jal	0 <ObjLightswitch_InitCollider>
     704:	8fa5001c 	lw	a1,28(sp)
     708:	8fbf0014 	lw	ra,20(sp)
     70c:	27bd0018 	addiu	sp,sp,24
     710:	03e00008 	jr	ra
     714:	00000000 	nop

00000718 <ObjLightswitch_SetupTurnOn>:
     718:	3c0e0000 	lui	t6,0x0
     71c:	25ce0000 	addiu	t6,t6,0
     720:	240f0064 	li	t7,100
     724:	ac8e014c 	sw	t6,332(a0)
     728:	a48f01b2 	sh	t7,434(a0)
     72c:	a48001b0 	sh	zero,432(a0)
     730:	03e00008 	jr	ra
     734:	a48001b4 	sh	zero,436(a0)

00000738 <ObjLightswitch_TurnOn>:
     738:	27bdffe0 	addiu	sp,sp,-32
     73c:	afbf001c 	sw	ra,28(sp)
     740:	afb00018 	sw	s0,24(sp)
     744:	00808025 	move	s0,a0
     748:	0c000000 	jal	0 <ObjLightswitch_InitCollider>
     74c:	afa50024 	sw	a1,36(sp)
     750:	920e0002 	lbu	t6,2(s0)
     754:	504e0005 	beql	v0,t6,76c <ObjLightswitch_TurnOn+0x34>
     758:	860301b0 	lh	v1,432(s0)
     75c:	860f01b2 	lh	t7,434(s0)
     760:	5de0002d 	bgtzl	t7,818 <ObjLightswitch_TurnOn+0xe0>
     764:	8fbf001c 	lw	ra,28(sp)
     768:	860301b0 	lh	v1,432(s0)
     76c:	02002025 	move	a0,s0
     770:	54600005 	bnezl	v1,788 <ObjLightswitch_TurnOn+0x50>
     774:	24780001 	addiu	t8,v1,1
     778:	0c000000 	jal	0 <ObjLightswitch_InitCollider>
     77c:	2405286f 	li	a1,10351
     780:	860301b0 	lh	v1,432(s0)
     784:	24780001 	addiu	t8,v1,1
     788:	a61801b0 	sh	t8,432(s0)
     78c:	260401c0 	addiu	a0,s0,448
     790:	2405ff56 	li	a1,-170
     794:	0c000000 	jal	0 <ObjLightswitch_InitCollider>
     798:	2406000a 	li	a2,10
     79c:	860301b0 	lh	v1,432(s0)
     7a0:	861901be 	lh	t9,446(s0)
     7a4:	860801c0 	lh	t0,448(s0)
     7a8:	00036080 	sll	t4,v1,0x2
     7ac:	01836023 	subu	t4,t4,v1
     7b0:	000c6080 	sll	t4,t4,0x2
     7b4:	00035080 	sll	t2,v1,0x2
     7b8:	01435021 	addu	t2,t2,v1
     7bc:	01836021 	addu	t4,t4,v1
     7c0:	000a5180 	sll	t2,t2,0x6
     7c4:	000c6140 	sll	t4,t4,0x5
     7c8:	254b26c0 	addiu	t3,t2,9920
     7cc:	258d1f40 	addiu	t5,t4,8000
     7d0:	28610014 	slti	at,v1,20
     7d4:	03284821 	addu	t1,t9,t0
     7d8:	a60901be 	sh	t1,446(s0)
     7dc:	a60b01b6 	sh	t3,438(s0)
     7e0:	14200005 	bnez	at,7f8 <ObjLightswitch_TurnOn+0xc0>
     7e4:	a60d01b8 	sh	t5,440(s0)
     7e8:	0c000000 	jal	0 <ObjLightswitch_InitCollider>
     7ec:	02002025 	move	a0,s0
     7f0:	10000009 	b	818 <ObjLightswitch_TurnOn+0xe0>
     7f4:	8fbf001c 	lw	ra,28(sp)
     7f8:	2401000f 	li	at,15
     7fc:	14610005 	bne	v1,at,814 <ObjLightswitch_TurnOn+0xdc>
     800:	240e0001 	li	t6,1
     804:	a60e01b4 	sh	t6,436(s0)
     808:	02002025 	move	a0,s0
     80c:	0c000000 	jal	0 <ObjLightswitch_InitCollider>
     810:	24052815 	li	a1,10261
     814:	8fbf001c 	lw	ra,28(sp)
     818:	8fb00018 	lw	s0,24(sp)
     81c:	27bd0020 	addiu	sp,sp,32
     820:	03e00008 	jr	ra
     824:	00000000 	nop

00000828 <ObjLightswitch_SetupOn>:
     828:	24023fc0 	li	v0,16320
     82c:	3c0e0000 	lui	t6,0x0
     830:	25ce0000 	addiu	t6,t6,0
     834:	240f0002 	li	t7,2
     838:	2418ff56 	li	t8,-170
     83c:	ac8e014c 	sw	t6,332(a0)
     840:	a48f01b4 	sh	t7,436(a0)
     844:	a48201b6 	sh	v0,438(a0)
     848:	a48201b8 	sh	v0,440(a0)
     84c:	a48201ba 	sh	v0,442(a0)
     850:	a48201bc 	sh	v0,444(a0)
     854:	a49801c0 	sh	t8,448(a0)
     858:	03e00008 	jr	ra
     85c:	a48001b0 	sh	zero,432(a0)

00000860 <ObjLightswitch_On>:
     860:	27bdffe0 	addiu	sp,sp,-32
     864:	afbf001c 	sw	ra,28(sp)
     868:	afb00018 	sw	s0,24(sp)
     86c:	8483001c 	lh	v1,28(a0)
     870:	00808025 	move	s0,a0
     874:	00a03025 	move	a2,a1
     878:	00031103 	sra	v0,v1,0x4
     87c:	30420003 	andi	v0,v0,0x3
     880:	10400008 	beqz	v0,8a4 <ObjLightswitch_On+0x44>
     884:	00c02025 	move	a0,a2
     888:	24010001 	li	at,1
     88c:	1041000e 	beq	v0,at,8c8 <ObjLightswitch_On+0x68>
     890:	24010002 	li	at,2
     894:	5041001d 	beql	v0,at,90c <ObjLightswitch_On+0xac>
     898:	92080161 	lbu	t0,353(s0)
     89c:	1000002e 	b	958 <ObjLightswitch_On+0xf8>
     8a0:	860b01be 	lh	t3,446(s0)
     8a4:	00032a03 	sra	a1,v1,0x8
     8a8:	0c000000 	jal	0 <ObjLightswitch_InitCollider>
     8ac:	30a5003f 	andi	a1,a1,0x3f
     8b0:	54400029 	bnezl	v0,958 <ObjLightswitch_On+0xf8>
     8b4:	860b01be 	lh	t3,446(s0)
     8b8:	0c000000 	jal	0 <ObjLightswitch_InitCollider>
     8bc:	02002025 	move	a0,s0
     8c0:	10000025 	b	958 <ObjLightswitch_On+0xf8>
     8c4:	860b01be 	lh	t3,446(s0)
     8c8:	920e0161 	lbu	t6,353(s0)
     8cc:	31cf0002 	andi	t7,t6,0x2
     8d0:	51e00021 	beqzl	t7,958 <ObjLightswitch_On+0xf8>
     8d4:	860b01be 	lh	t3,446(s0)
     8d8:	921801c2 	lbu	t8,450(s0)
     8dc:	02002025 	move	a0,s0
     8e0:	33190002 	andi	t9,t8,0x2
     8e4:	5720001c 	bnezl	t9,958 <ObjLightswitch_On+0xf8>
     8e8:	860b01be 	lh	t3,446(s0)
     8ec:	0c000000 	jal	0 <ObjLightswitch_InitCollider>
     8f0:	afa60024 	sw	a2,36(sp)
     8f4:	8fa50024 	lw	a1,36(sp)
     8f8:	0c000000 	jal	0 <ObjLightswitch_InitCollider>
     8fc:	02002025 	move	a0,s0
     900:	10000015 	b	958 <ObjLightswitch_On+0xf8>
     904:	860b01be 	lh	t3,446(s0)
     908:	92080161 	lbu	t0,353(s0)
     90c:	31090002 	andi	t1,t0,0x2
     910:	55200010 	bnezl	t1,954 <ObjLightswitch_On+0xf4>
     914:	a60001b0 	sh	zero,432(s0)
     918:	860201b0 	lh	v0,432(s0)
     91c:	02002025 	move	a0,s0
     920:	28410007 	slti	at,v0,7
     924:	14200008 	bnez	at,948 <ObjLightswitch_On+0xe8>
     928:	244a0001 	addiu	t2,v0,1
     92c:	0c000000 	jal	0 <ObjLightswitch_InitCollider>
     930:	afa60024 	sw	a2,36(sp)
     934:	8fa50024 	lw	a1,36(sp)
     938:	0c000000 	jal	0 <ObjLightswitch_InitCollider>
     93c:	02002025 	move	a0,s0
     940:	10000005 	b	958 <ObjLightswitch_On+0xf8>
     944:	860b01be 	lh	t3,446(s0)
     948:	10000002 	b	954 <ObjLightswitch_On+0xf4>
     94c:	a60a01b0 	sh	t2,432(s0)
     950:	a60001b0 	sh	zero,432(s0)
     954:	860b01be 	lh	t3,446(s0)
     958:	860c01c0 	lh	t4,448(s0)
     95c:	016c6821 	addu	t5,t3,t4
     960:	a60d01be 	sh	t5,446(s0)
     964:	8fbf001c 	lw	ra,28(sp)
     968:	8fb00018 	lw	s0,24(sp)
     96c:	27bd0020 	addiu	sp,sp,32
     970:	03e00008 	jr	ra
     974:	00000000 	nop

00000978 <ObjLightswitch_SetupTurnOff>:
     978:	3c0e0000 	lui	t6,0x0
     97c:	25ce0000 	addiu	t6,t6,0
     980:	240f0064 	li	t7,100
     984:	24180014 	li	t8,20
     988:	24190001 	li	t9,1
     98c:	ac8e014c 	sw	t6,332(a0)
     990:	a48f01b2 	sh	t7,434(a0)
     994:	a49801b0 	sh	t8,432(a0)
     998:	03e00008 	jr	ra
     99c:	a49901b4 	sh	t9,436(a0)

000009a0 <ObjLightswitch_TurnOff>:
     9a0:	27bdffe8 	addiu	sp,sp,-24
     9a4:	afbf0014 	sw	ra,20(sp)
     9a8:	afa5001c 	sw	a1,28(sp)
     9ac:	848e001c 	lh	t6,28(a0)
     9b0:	24010001 	li	at,1
     9b4:	00803825 	move	a3,a0
     9b8:	000e7903 	sra	t7,t6,0x4
     9bc:	31f80003 	andi	t8,t7,0x3
     9c0:	5701000b 	bnel	t8,at,9f0 <ObjLightswitch_TurnOff+0x50>
     9c4:	84e901b0 	lh	t1,432(a3)
     9c8:	0c000000 	jal	0 <ObjLightswitch_InitCollider>
     9cc:	afa40018 	sw	a0,24(sp)
     9d0:	8fa70018 	lw	a3,24(sp)
     9d4:	90f90002 	lbu	t9,2(a3)
     9d8:	50590005 	beql	v0,t9,9f0 <ObjLightswitch_TurnOff+0x50>
     9dc:	84e901b0 	lh	t1,432(a3)
     9e0:	84e801b2 	lh	t0,434(a3)
     9e4:	5d000027 	bgtzl	t0,a84 <ObjLightswitch_TurnOff+0xe4>
     9e8:	8fbf0014 	lw	ra,20(sp)
     9ec:	84e901b0 	lh	t1,432(a3)
     9f0:	24e401c0 	addiu	a0,a3,448
     9f4:	00002825 	move	a1,zero
     9f8:	252affff 	addiu	t2,t1,-1
     9fc:	a4ea01b0 	sh	t2,432(a3)
     a00:	afa70018 	sw	a3,24(sp)
     a04:	0c000000 	jal	0 <ObjLightswitch_InitCollider>
     a08:	2406000a 	li	a2,10
     a0c:	8fa70018 	lw	a3,24(sp)
     a10:	2401000f 	li	at,15
     a14:	84e301b0 	lh	v1,432(a3)
     a18:	84eb01be 	lh	t3,446(a3)
     a1c:	84ec01c0 	lh	t4,448(a3)
     a20:	0003c080 	sll	t8,v1,0x2
     a24:	0303c023 	subu	t8,t8,v1
     a28:	0018c080 	sll	t8,t8,0x2
     a2c:	00037080 	sll	t6,v1,0x2
     a30:	01c37021 	addu	t6,t6,v1
     a34:	0303c021 	addu	t8,t8,v1
     a38:	000e7180 	sll	t6,t6,0x6
     a3c:	0018c140 	sll	t8,t8,0x5
     a40:	25cf26c0 	addiu	t7,t6,9920
     a44:	27191f40 	addiu	t9,t8,8000
     a48:	016c6821 	addu	t5,t3,t4
     a4c:	a4ed01be 	sh	t5,446(a3)
     a50:	a4ef01b6 	sh	t7,438(a3)
     a54:	1c600005 	bgtz	v1,a6c <ObjLightswitch_TurnOff+0xcc>
     a58:	a4f901b8 	sh	t9,440(a3)
     a5c:	0c000000 	jal	0 <ObjLightswitch_InitCollider>
     a60:	00e02025 	move	a0,a3
     a64:	10000007 	b	a84 <ObjLightswitch_TurnOff+0xe4>
     a68:	8fbf0014 	lw	ra,20(sp)
     a6c:	14610004 	bne	v1,at,a80 <ObjLightswitch_TurnOff+0xe0>
     a70:	00e02025 	move	a0,a3
     a74:	a4e001b4 	sh	zero,436(a3)
     a78:	0c000000 	jal	0 <ObjLightswitch_InitCollider>
     a7c:	24052815 	li	a1,10261
     a80:	8fbf0014 	lw	ra,20(sp)
     a84:	27bd0018 	addiu	sp,sp,24
     a88:	03e00008 	jr	ra
     a8c:	00000000 	nop

00000a90 <ObjLightswitch_SetupDisappearDelay>:
     a90:	3c0e0000 	lui	t6,0x0
     a94:	25ce0000 	addiu	t6,t6,0
     a98:	240f0064 	li	t7,100
     a9c:	ac8e014c 	sw	t6,332(a0)
     aa0:	03e00008 	jr	ra
     aa4:	a48f01b2 	sh	t7,434(a0)

00000aa8 <ObjLightswitch_DisappearDelay>:
     aa8:	27bdffe8 	addiu	sp,sp,-24
     aac:	afbf0014 	sw	ra,20(sp)
     ab0:	afa5001c 	sw	a1,28(sp)
     ab4:	0c000000 	jal	0 <ObjLightswitch_InitCollider>
     ab8:	afa40018 	sw	a0,24(sp)
     abc:	8fa40018 	lw	a0,24(sp)
     ac0:	908e0002 	lbu	t6,2(a0)
     ac4:	104e0004 	beq	v0,t6,ad8 <ObjLightswitch_DisappearDelay+0x30>
     ac8:	00000000 	nop
     acc:	848f01b2 	lh	t7,434(a0)
     ad0:	5de00004 	bgtzl	t7,ae4 <ObjLightswitch_DisappearDelay+0x3c>
     ad4:	8fbf0014 	lw	ra,20(sp)
     ad8:	0c000000 	jal	0 <ObjLightswitch_InitCollider>
     adc:	00000000 	nop
     ae0:	8fbf0014 	lw	ra,20(sp)
     ae4:	27bd0018 	addiu	sp,sp,24
     ae8:	03e00008 	jr	ra
     aec:	00000000 	nop

00000af0 <ObjLightswitch_SetupDisappear>:
     af0:	3c0e0000 	lui	t6,0x0
     af4:	25ce0000 	addiu	t6,t6,0
     af8:	240f3fc0 	li	t7,16320
     afc:	ac8e014c 	sw	t6,332(a0)
     b00:	03e00008 	jr	ra
     b04:	a48f01bc 	sh	t7,444(a0)

00000b08 <ObjLightswitch_Disappear>:
     b08:	27bdffe8 	addiu	sp,sp,-24
     b0c:	afbf0014 	sw	ra,20(sp)
     b10:	848e01bc 	lh	t6,444(a0)
     b14:	25cfff38 	addiu	t7,t6,-200
     b18:	a48f01bc 	sh	t7,444(a0)
     b1c:	0c000000 	jal	0 <ObjLightswitch_InitCollider>
     b20:	afa40018 	sw	a0,24(sp)
     b24:	8fa40018 	lw	a0,24(sp)
     b28:	849801bc 	lh	t8,444(a0)
     b2c:	07030004 	bgezl	t8,b40 <ObjLightswitch_Disappear+0x38>
     b30:	8fbf0014 	lw	ra,20(sp)
     b34:	0c000000 	jal	0 <ObjLightswitch_InitCollider>
     b38:	00000000 	nop
     b3c:	8fbf0014 	lw	ra,20(sp)
     b40:	27bd0018 	addiu	sp,sp,24
     b44:	03e00008 	jr	ra
     b48:	00000000 	nop

00000b4c <ObjLightswitch_Update>:
     b4c:	27bdffd0 	addiu	sp,sp,-48
     b50:	afbf001c 	sw	ra,28(sp)
     b54:	afb10018 	sw	s1,24(sp)
     b58:	afb00014 	sw	s0,20(sp)
     b5c:	848201b2 	lh	v0,434(a0)
     b60:	00808025 	move	s0,a0
     b64:	00a08825 	move	s1,a1
     b68:	18400002 	blez	v0,b74 <ObjLightswitch_Update+0x28>
     b6c:	244effff 	addiu	t6,v0,-1
     b70:	a48e01b2 	sh	t6,434(a0)
     b74:	8e19014c 	lw	t9,332(s0)
     b78:	02002025 	move	a0,s0
     b7c:	02202825 	move	a1,s1
     b80:	0320f809 	jalr	t9
     b84:	00000000 	nop
     b88:	8e0f0130 	lw	t7,304(s0)
     b8c:	51e00024 	beqzl	t7,c20 <ObjLightswitch_Update+0xd4>
     b90:	8fbf001c 	lw	ra,28(sp)
     b94:	8618001c 	lh	t8,28(s0)
     b98:	24010001 	li	at,1
     b9c:	33080001 	andi	t0,t8,0x1
     ba0:	5501000f 	bnel	t0,at,be0 <ObjLightswitch_Update+0x94>
     ba4:	92020161 	lbu	v0,353(s0)
     ba8:	8e02011c 	lw	v0,284(s0)
     bac:	3c014270 	lui	at,0x4270
     bb0:	44814000 	mtc1	at,$f8
     bb4:	c4440024 	lwc1	$f4,36(v0)
     bb8:	02002025 	move	a0,s0
     bbc:	24050000 	li	a1,0
     bc0:	e6040024 	swc1	$f4,36(s0)
     bc4:	c4460028 	lwc1	$f6,40(v0)
     bc8:	46083280 	add.s	$f10,$f6,$f8
     bcc:	e60a0028 	swc1	$f10,40(s0)
     bd0:	c450002c 	lwc1	$f16,44(v0)
     bd4:	0c000000 	jal	0 <ObjLightswitch_InitCollider>
     bd8:	e610002c 	swc1	$f16,44(s0)
     bdc:	92020161 	lbu	v0,353(s0)
     be0:	3c010001 	lui	at,0x1
     be4:	34211e60 	ori	at,at,0x1e60
     be8:	3049fffd 	andi	t1,v0,0xfffd
     bec:	a2090161 	sb	t1,353(s0)
     bf0:	02212821 	addu	a1,s1,at
     bf4:	26060150 	addiu	a2,s0,336
     bf8:	a20201c2 	sb	v0,450(s0)
     bfc:	afa60020 	sw	a2,32(sp)
     c00:	afa50024 	sw	a1,36(sp)
     c04:	0c000000 	jal	0 <ObjLightswitch_InitCollider>
     c08:	02202025 	move	a0,s1
     c0c:	8fa50024 	lw	a1,36(sp)
     c10:	8fa60020 	lw	a2,32(sp)
     c14:	0c000000 	jal	0 <ObjLightswitch_InitCollider>
     c18:	02202025 	move	a0,s1
     c1c:	8fbf001c 	lw	ra,28(sp)
     c20:	8fb00014 	lw	s0,20(sp)
     c24:	8fb10018 	lw	s1,24(sp)
     c28:	03e00008 	jr	ra
     c2c:	27bd0030 	addiu	sp,sp,48

00000c30 <ObjLightswitch_DrawOpa>:
     c30:	27bdff88 	addiu	sp,sp,-120
     c34:	afbf001c 	sw	ra,28(sp)
     c38:	afb10018 	sw	s1,24(sp)
     c3c:	afb00014 	sw	s0,20(sp)
     c40:	afa5007c 	sw	a1,124(sp)
     c44:	8ca50000 	lw	a1,0(a1)
     c48:	00808025 	move	s0,a0
     c4c:	3c060000 	lui	a2,0x0
     c50:	24c60078 	addiu	a2,a2,120
     c54:	27a4004c 	addiu	a0,sp,76
     c58:	24070329 	li	a3,809
     c5c:	0c000000 	jal	0 <ObjLightswitch_InitCollider>
     c60:	00a08825 	move	s1,a1
     c64:	8faf007c 	lw	t7,124(sp)
     c68:	0c000000 	jal	0 <ObjLightswitch_InitCollider>
     c6c:	8de40000 	lw	a0,0(t7)
     c70:	8e2202c0 	lw	v0,704(s1)
     c74:	3c19fb00 	lui	t9,0xfb00
     c78:	24010001 	li	at,1
     c7c:	24580008 	addiu	t8,v0,8
     c80:	ae3802c0 	sw	t8,704(s1)
     c84:	ac590000 	sw	t9,0(v0)
     c88:	860d01b6 	lh	t5,438(s0)
     c8c:	860801ba 	lh	t0,442(s0)
     c90:	860901b8 	lh	t1,440(s0)
     c94:	000dc183 	sra	t8,t5,0x6
     c98:	00085183 	sra	t2,t0,0x6
     c9c:	314b00ff 	andi	t3,t2,0xff
     ca0:	0018ce00 	sll	t9,t8,0x18
     ca4:	861801bc 	lh	t8,444(s0)
     ca8:	000b6200 	sll	t4,t3,0x8
     cac:	00095983 	sra	t3,t1,0x6
     cb0:	316d00ff 	andi	t5,t3,0xff
     cb4:	01994025 	or	t0,t4,t9
     cb8:	000d7400 	sll	t6,t5,0x10
     cbc:	0018c983 	sra	t9,t8,0x6
     cc0:	332900ff 	andi	t1,t9,0xff
     cc4:	010e7825 	or	t7,t0,t6
     cc8:	01e95025 	or	t2,t7,t1
     ccc:	ac4a0004 	sw	t2,4(v0)
     cd0:	8e2202c0 	lw	v0,704(s1)
     cd4:	3c080000 	lui	t0,0x0
     cd8:	3c0ddb06 	lui	t5,0xdb06
     cdc:	244b0008 	addiu	t3,v0,8
     ce0:	ae2b02c0 	sw	t3,704(s1)
     ce4:	35ad0024 	ori	t5,t5,0x24
     ce8:	25080010 	addiu	t0,t0,16
     cec:	ac480004 	sw	t0,4(v0)
     cf0:	ac4d0000 	sw	t5,0(v0)
     cf4:	860e001c 	lh	t6,28(s0)
     cf8:	31d80001 	andi	t8,t6,0x1
     cfc:	5701001b 	bnel	t8,at,d6c <ObjLightswitch_DrawOpa+0x13c>
     d00:	c6120024 	lwc1	$f18,36(s0)
     d04:	8e02011c 	lw	v0,284(s0)
     d08:	3c014270 	lui	at,0x4270
     d0c:	44814000 	mtc1	at,$f8
     d10:	c4440024 	lwc1	$f4,36(v0)
     d14:	27a40068 	addiu	a0,sp,104
     d18:	26050024 	addiu	a1,s0,36
     d1c:	e6040024 	swc1	$f4,36(s0)
     d20:	c4460028 	lwc1	$f6,40(v0)
     d24:	46083280 	add.s	$f10,$f6,$f8
     d28:	e60a0028 	swc1	$f10,40(s0)
     d2c:	c450002c 	lwc1	$f16,44(v0)
     d30:	0c000000 	jal	0 <ObjLightswitch_InitCollider>
     d34:	e610002c 	swc1	$f16,44(s0)
     d38:	c7ac0068 	lwc1	$f12,104(sp)
     d3c:	c7ae006c 	lwc1	$f14,108(sp)
     d40:	8fa60070 	lw	a2,112(sp)
     d44:	0c000000 	jal	0 <ObjLightswitch_InitCollider>
     d48:	260700b4 	addiu	a3,s0,180
     d4c:	c60c0050 	lwc1	$f12,80(s0)
     d50:	c60e0054 	lwc1	$f14,84(s0)
     d54:	8e060058 	lw	a2,88(s0)
     d58:	0c000000 	jal	0 <ObjLightswitch_InitCollider>
     d5c:	24070001 	li	a3,1
     d60:	1000000c 	b	d94 <ObjLightswitch_DrawOpa+0x164>
     d64:	8e2202c0 	lw	v0,704(s1)
     d68:	c6120024 	lwc1	$f18,36(s0)
     d6c:	e7b20068 	swc1	$f18,104(sp)
     d70:	c6060054 	lwc1	$f6,84(s0)
     d74:	c60400bc 	lwc1	$f4,188(s0)
     d78:	c60a0028 	lwc1	$f10,40(s0)
     d7c:	46062202 	mul.s	$f8,$f4,$f6
     d80:	46085400 	add.s	$f16,$f10,$f8
     d84:	e7b0006c 	swc1	$f16,108(sp)
     d88:	c612002c 	lwc1	$f18,44(s0)
     d8c:	e7b20070 	swc1	$f18,112(sp)
     d90:	8e2202c0 	lw	v0,704(s1)
     d94:	3c19da38 	lui	t9,0xda38
     d98:	37390003 	ori	t9,t9,0x3
     d9c:	244c0008 	addiu	t4,v0,8
     da0:	ae2c02c0 	sw	t4,704(s1)
     da4:	ac590000 	sw	t9,0(v0)
     da8:	8faf007c 	lw	t7,124(sp)
     dac:	3c050000 	lui	a1,0x0
     db0:	24a50090 	addiu	a1,a1,144
     db4:	8de40000 	lw	a0,0(t7)
     db8:	24060349 	li	a2,841
     dbc:	0c000000 	jal	0 <ObjLightswitch_InitCollider>
     dc0:	afa20040 	sw	v0,64(sp)
     dc4:	8fa30040 	lw	v1,64(sp)
     dc8:	3c0adb06 	lui	t2,0xdb06
     dcc:	354a0020 	ori	t2,t2,0x20
     dd0:	ac620004 	sw	v0,4(v1)
     dd4:	8e2202c0 	lw	v0,704(s1)
     dd8:	3c040000 	lui	a0,0x0
     ddc:	3c190000 	lui	t9,0x0
     de0:	24490008 	addiu	t1,v0,8
     de4:	ae2902c0 	sw	t1,704(s1)
     de8:	ac4a0000 	sw	t2,0(v0)
     dec:	860b01b4 	lh	t3,436(s0)
     df0:	3c0100ff 	lui	at,0xff
     df4:	3421ffff 	ori	at,at,0xffff
     df8:	000b6880 	sll	t5,t3,0x2
     dfc:	008d2021 	addu	a0,a0,t5
     e00:	8c84005c 	lw	a0,92(a0)
     e04:	3c0d0000 	lui	t5,0x0
     e08:	25ad0000 	addiu	t5,t5,0
     e0c:	00047100 	sll	t6,a0,0x4
     e10:	000ec702 	srl	t8,t6,0x1c
     e14:	00186080 	sll	t4,t8,0x2
     e18:	032cc821 	addu	t9,t9,t4
     e1c:	8f390000 	lw	t9,0(t9)
     e20:	00814024 	and	t0,a0,at
     e24:	3c018000 	lui	at,0x8000
     e28:	01197821 	addu	t7,t0,t9
     e2c:	01e14821 	addu	t1,t7,at
     e30:	ac490004 	sw	t1,4(v0)
     e34:	8e2202c0 	lw	v0,704(s1)
     e38:	3c0bde00 	lui	t3,0xde00
     e3c:	27a70060 	addiu	a3,sp,96
     e40:	244a0008 	addiu	t2,v0,8
     e44:	ae2a02c0 	sw	t2,704(s1)
     e48:	ac4d0004 	sw	t5,4(v0)
     e4c:	ac4b0000 	sw	t3,0(v0)
     e50:	860e00b4 	lh	t6,180(s0)
     e54:	8fa60070 	lw	a2,112(sp)
     e58:	c7ae006c 	lwc1	$f14,108(sp)
     e5c:	a7ae0060 	sh	t6,96(sp)
     e60:	861800b6 	lh	t8,182(s0)
     e64:	c7ac0068 	lwc1	$f12,104(sp)
     e68:	a7b80062 	sh	t8,98(sp)
     e6c:	860801be 	lh	t0,446(s0)
     e70:	860c00b8 	lh	t4,184(s0)
     e74:	0188c821 	addu	t9,t4,t0
     e78:	0c000000 	jal	0 <ObjLightswitch_InitCollider>
     e7c:	a7b90064 	sh	t9,100(sp)
     e80:	c60c0050 	lwc1	$f12,80(s0)
     e84:	c60e0054 	lwc1	$f14,84(s0)
     e88:	8e060058 	lw	a2,88(s0)
     e8c:	0c000000 	jal	0 <ObjLightswitch_InitCollider>
     e90:	24070001 	li	a3,1
     e94:	8e2202c0 	lw	v0,704(s1)
     e98:	3c09da38 	lui	t1,0xda38
     e9c:	35290003 	ori	t1,t1,0x3
     ea0:	244f0008 	addiu	t7,v0,8
     ea4:	ae2f02c0 	sw	t7,704(s1)
     ea8:	ac490000 	sw	t1,0(v0)
     eac:	8faa007c 	lw	t2,124(sp)
     eb0:	3c050000 	lui	a1,0x0
     eb4:	24a500a8 	addiu	a1,a1,168
     eb8:	8d440000 	lw	a0,0(t2)
     ebc:	2406035b 	li	a2,859
     ec0:	0c000000 	jal	0 <ObjLightswitch_InitCollider>
     ec4:	afa20034 	sw	v0,52(sp)
     ec8:	8fa30034 	lw	v1,52(sp)
     ecc:	3c0e0000 	lui	t6,0x0
     ed0:	25ce0000 	addiu	t6,t6,0
     ed4:	ac620004 	sw	v0,4(v1)
     ed8:	8e2202c0 	lw	v0,704(s1)
     edc:	3c0dde00 	lui	t5,0xde00
     ee0:	27a70060 	addiu	a3,sp,96
     ee4:	244b0008 	addiu	t3,v0,8
     ee8:	ae2b02c0 	sw	t3,704(s1)
     eec:	ac4e0004 	sw	t6,4(v0)
     ef0:	ac4d0000 	sw	t5,0(v0)
     ef4:	860c01be 	lh	t4,446(s0)
     ef8:	861800b8 	lh	t8,184(s0)
     efc:	8fa60070 	lw	a2,112(sp)
     f00:	c7ae006c 	lwc1	$f14,108(sp)
     f04:	030c4023 	subu	t0,t8,t4
     f08:	a7a80064 	sh	t0,100(sp)
     f0c:	0c000000 	jal	0 <ObjLightswitch_InitCollider>
     f10:	c7ac0068 	lwc1	$f12,104(sp)
     f14:	c60c0050 	lwc1	$f12,80(s0)
     f18:	c60e0054 	lwc1	$f14,84(s0)
     f1c:	8e060058 	lw	a2,88(s0)
     f20:	0c000000 	jal	0 <ObjLightswitch_InitCollider>
     f24:	24070001 	li	a3,1
     f28:	8e2202c0 	lw	v0,704(s1)
     f2c:	3c0fda38 	lui	t7,0xda38
     f30:	35ef0003 	ori	t7,t7,0x3
     f34:	24590008 	addiu	t9,v0,8
     f38:	ae3902c0 	sw	t9,704(s1)
     f3c:	ac4f0000 	sw	t7,0(v0)
     f40:	8fa9007c 	lw	t1,124(sp)
     f44:	3c050000 	lui	a1,0x0
     f48:	24a500c0 	addiu	a1,a1,192
     f4c:	24060369 	li	a2,873
     f50:	00408025 	move	s0,v0
     f54:	0c000000 	jal	0 <ObjLightswitch_InitCollider>
     f58:	8d240000 	lw	a0,0(t1)
     f5c:	ae020004 	sw	v0,4(s0)
     f60:	8e2202c0 	lw	v0,704(s1)
     f64:	3c0d0000 	lui	t5,0x0
     f68:	25ad0000 	addiu	t5,t5,0
     f6c:	244a0008 	addiu	t2,v0,8
     f70:	ae2a02c0 	sw	t2,704(s1)
     f74:	3c0bde00 	lui	t3,0xde00
     f78:	ac4b0000 	sw	t3,0(v0)
     f7c:	ac4d0004 	sw	t5,4(v0)
     f80:	8fae007c 	lw	t6,124(sp)
     f84:	3c060000 	lui	a2,0x0
     f88:	24c600d8 	addiu	a2,a2,216
     f8c:	27a4004c 	addiu	a0,sp,76
     f90:	2407036e 	li	a3,878
     f94:	0c000000 	jal	0 <ObjLightswitch_InitCollider>
     f98:	8dc50000 	lw	a1,0(t6)
     f9c:	8fbf001c 	lw	ra,28(sp)
     fa0:	8fb00014 	lw	s0,20(sp)
     fa4:	8fb10018 	lw	s1,24(sp)
     fa8:	03e00008 	jr	ra
     fac:	27bd0078 	addiu	sp,sp,120

00000fb0 <ObjLightswitch_DrawXlu>:
     fb0:	27bdff88 	addiu	sp,sp,-120
     fb4:	afbf001c 	sw	ra,28(sp)
     fb8:	afb10018 	sw	s1,24(sp)
     fbc:	afb00014 	sw	s0,20(sp)
     fc0:	afa5007c 	sw	a1,124(sp)
     fc4:	8ca50000 	lw	a1,0(a1)
     fc8:	00808025 	move	s0,a0
     fcc:	3c060000 	lui	a2,0x0
     fd0:	24c600f0 	addiu	a2,a2,240
     fd4:	27a4004c 	addiu	a0,sp,76
     fd8:	2407037a 	li	a3,890
     fdc:	0c000000 	jal	0 <ObjLightswitch_InitCollider>
     fe0:	00a08825 	move	s1,a1
     fe4:	8faf007c 	lw	t7,124(sp)
     fe8:	0c000000 	jal	0 <ObjLightswitch_InitCollider>
     fec:	8de40000 	lw	a0,0(t7)
     ff0:	8e2202d0 	lw	v0,720(s1)
     ff4:	3c19fb00 	lui	t9,0xfb00
     ff8:	3c050000 	lui	a1,0x0
     ffc:	24580008 	addiu	t8,v0,8
    1000:	ae3802d0 	sw	t8,720(s1)
    1004:	ac590000 	sw	t9,0(v0)
    1008:	860d01b6 	lh	t5,438(s0)
    100c:	860801ba 	lh	t0,442(s0)
    1010:	860901b8 	lh	t1,440(s0)
    1014:	000dc183 	sra	t8,t5,0x6
    1018:	00085183 	sra	t2,t0,0x6
    101c:	314b00ff 	andi	t3,t2,0xff
    1020:	0018ce00 	sll	t9,t8,0x18
    1024:	861801bc 	lh	t8,444(s0)
    1028:	000b6200 	sll	t4,t3,0x8
    102c:	00095983 	sra	t3,t1,0x6
    1030:	316d00ff 	andi	t5,t3,0xff
    1034:	01994025 	or	t0,t4,t9
    1038:	000d7400 	sll	t6,t5,0x10
    103c:	0018c983 	sra	t9,t8,0x6
    1040:	332900ff 	andi	t1,t9,0xff
    1044:	010e7825 	or	t7,t0,t6
    1048:	01e95025 	or	t2,t7,t1
    104c:	ac4a0004 	sw	t2,4(v0)
    1050:	8e2202d0 	lw	v0,720(s1)
    1054:	3c080000 	lui	t0,0x0
    1058:	3c0ddb06 	lui	t5,0xdb06
    105c:	244b0008 	addiu	t3,v0,8
    1060:	ae2b02d0 	sw	t3,720(s1)
    1064:	35ad0024 	ori	t5,t5,0x24
    1068:	25080000 	addiu	t0,t0,0
    106c:	ac480004 	sw	t0,4(v0)
    1070:	ac4d0000 	sw	t5,0(v0)
    1074:	c6040024 	lwc1	$f4,36(s0)
    1078:	3c18da38 	lui	t8,0xda38
    107c:	37180003 	ori	t8,t8,0x3
    1080:	e7a40068 	swc1	$f4,104(sp)
    1084:	c6080054 	lwc1	$f8,84(s0)
    1088:	c60600bc 	lwc1	$f6,188(s0)
    108c:	c6100028 	lwc1	$f16,40(s0)
    1090:	24a50108 	addiu	a1,a1,264
    1094:	46083282 	mul.s	$f10,$f6,$f8
    1098:	24060390 	li	a2,912
    109c:	460a8480 	add.s	$f18,$f16,$f10
    10a0:	e7b2006c 	swc1	$f18,108(sp)
    10a4:	c604002c 	lwc1	$f4,44(s0)
    10a8:	e7a40070 	swc1	$f4,112(sp)
    10ac:	8e2202d0 	lw	v0,720(s1)
    10b0:	244e0008 	addiu	t6,v0,8
    10b4:	ae2e02d0 	sw	t6,720(s1)
    10b8:	ac580000 	sw	t8,0(v0)
    10bc:	8fac007c 	lw	t4,124(sp)
    10c0:	8d840000 	lw	a0,0(t4)
    10c4:	0c000000 	jal	0 <ObjLightswitch_InitCollider>
    10c8:	afa20040 	sw	v0,64(sp)
    10cc:	8fa30040 	lw	v1,64(sp)
    10d0:	3c0fdb06 	lui	t7,0xdb06
    10d4:	35ef0020 	ori	t7,t7,0x20
    10d8:	ac620004 	sw	v0,4(v1)
    10dc:	8e2202d0 	lw	v0,720(s1)
    10e0:	3c040000 	lui	a0,0x0
    10e4:	3c180000 	lui	t8,0x0
    10e8:	24590008 	addiu	t9,v0,8
    10ec:	ae3902d0 	sw	t9,720(s1)
    10f0:	ac4f0000 	sw	t7,0(v0)
    10f4:	860901b4 	lh	t1,436(s0)
    10f8:	3c0100ff 	lui	at,0xff
    10fc:	3421ffff 	ori	at,at,0xffff
    1100:	00095080 	sll	t2,t1,0x2
    1104:	008a2021 	addu	a0,a0,t2
    1108:	8c84005c 	lw	a0,92(a0)
    110c:	3c0a0000 	lui	t2,0x0
    1110:	254a0000 	addiu	t2,t2,0
    1114:	00046900 	sll	t5,a0,0x4
    1118:	000d4702 	srl	t0,t5,0x1c
    111c:	00087080 	sll	t6,t0,0x2
    1120:	030ec021 	addu	t8,t8,t6
    1124:	8f180000 	lw	t8,0(t8)
    1128:	00815824 	and	t3,a0,at
    112c:	3c018000 	lui	at,0x8000
    1130:	01786021 	addu	t4,t3,t8
    1134:	0181c821 	addu	t9,t4,at
    1138:	ac590004 	sw	t9,4(v0)
    113c:	8e2202d0 	lw	v0,720(s1)
    1140:	3c09de00 	lui	t1,0xde00
    1144:	27a70060 	addiu	a3,sp,96
    1148:	244f0008 	addiu	t7,v0,8
    114c:	ae2f02d0 	sw	t7,720(s1)
    1150:	ac4a0004 	sw	t2,4(v0)
    1154:	ac490000 	sw	t1,0(v0)
    1158:	860d00b4 	lh	t5,180(s0)
    115c:	8fa60070 	lw	a2,112(sp)
    1160:	c7ae006c 	lwc1	$f14,108(sp)
    1164:	a7ad0060 	sh	t5,96(sp)
    1168:	860800b6 	lh	t0,182(s0)
    116c:	c7ac0068 	lwc1	$f12,104(sp)
    1170:	a7a80062 	sh	t0,98(sp)
    1174:	860b01be 	lh	t3,446(s0)
    1178:	860e00b8 	lh	t6,184(s0)
    117c:	01cbc021 	addu	t8,t6,t3
    1180:	0c000000 	jal	0 <ObjLightswitch_InitCollider>
    1184:	a7b80064 	sh	t8,100(sp)
    1188:	c60c0050 	lwc1	$f12,80(s0)
    118c:	c60e0054 	lwc1	$f14,84(s0)
    1190:	8e060058 	lw	a2,88(s0)
    1194:	0c000000 	jal	0 <ObjLightswitch_InitCollider>
    1198:	24070001 	li	a3,1
    119c:	8e2202d0 	lw	v0,720(s1)
    11a0:	3c19da38 	lui	t9,0xda38
    11a4:	37390003 	ori	t9,t9,0x3
    11a8:	244c0008 	addiu	t4,v0,8
    11ac:	ae2c02d0 	sw	t4,720(s1)
    11b0:	ac590000 	sw	t9,0(v0)
    11b4:	8faf007c 	lw	t7,124(sp)
    11b8:	3c050000 	lui	a1,0x0
    11bc:	24a50120 	addiu	a1,a1,288
    11c0:	8de40000 	lw	a0,0(t7)
    11c4:	240603a2 	li	a2,930
    11c8:	0c000000 	jal	0 <ObjLightswitch_InitCollider>
    11cc:	afa20034 	sw	v0,52(sp)
    11d0:	8fa30034 	lw	v1,52(sp)
    11d4:	3c0d0000 	lui	t5,0x0
    11d8:	25ad0000 	addiu	t5,t5,0
    11dc:	ac620004 	sw	v0,4(v1)
    11e0:	8e2202d0 	lw	v0,720(s1)
    11e4:	3c0ade00 	lui	t2,0xde00
    11e8:	27a70060 	addiu	a3,sp,96
    11ec:	24490008 	addiu	t1,v0,8
    11f0:	ae2902d0 	sw	t1,720(s1)
    11f4:	ac4d0004 	sw	t5,4(v0)
    11f8:	ac4a0000 	sw	t2,0(v0)
    11fc:	860e01be 	lh	t6,446(s0)
    1200:	860800b8 	lh	t0,184(s0)
    1204:	8fa60070 	lw	a2,112(sp)
    1208:	c7ae006c 	lwc1	$f14,108(sp)
    120c:	010e5823 	subu	t3,t0,t6
    1210:	a7ab0064 	sh	t3,100(sp)
    1214:	0c000000 	jal	0 <ObjLightswitch_InitCollider>
    1218:	c7ac0068 	lwc1	$f12,104(sp)
    121c:	c60c0050 	lwc1	$f12,80(s0)
    1220:	c60e0054 	lwc1	$f14,84(s0)
    1224:	8e060058 	lw	a2,88(s0)
    1228:	0c000000 	jal	0 <ObjLightswitch_InitCollider>
    122c:	24070001 	li	a3,1
    1230:	8e2202d0 	lw	v0,720(s1)
    1234:	3c0cda38 	lui	t4,0xda38
    1238:	358c0003 	ori	t4,t4,0x3
    123c:	24580008 	addiu	t8,v0,8
    1240:	ae3802d0 	sw	t8,720(s1)
    1244:	ac4c0000 	sw	t4,0(v0)
    1248:	8fb9007c 	lw	t9,124(sp)
    124c:	3c050000 	lui	a1,0x0
    1250:	24a50138 	addiu	a1,a1,312
    1254:	240603b0 	li	a2,944
    1258:	00408025 	move	s0,v0
    125c:	0c000000 	jal	0 <ObjLightswitch_InitCollider>
    1260:	8f240000 	lw	a0,0(t9)
    1264:	ae020004 	sw	v0,4(s0)
    1268:	8e2202d0 	lw	v0,720(s1)
    126c:	3c0a0000 	lui	t2,0x0
    1270:	254a0000 	addiu	t2,t2,0
    1274:	244f0008 	addiu	t7,v0,8
    1278:	ae2f02d0 	sw	t7,720(s1)
    127c:	3c09de00 	lui	t1,0xde00
    1280:	ac490000 	sw	t1,0(v0)
    1284:	ac4a0004 	sw	t2,4(v0)
    1288:	8fad007c 	lw	t5,124(sp)
    128c:	3c060000 	lui	a2,0x0
    1290:	24c60150 	addiu	a2,a2,336
    1294:	27a4004c 	addiu	a0,sp,76
    1298:	240703b5 	li	a3,949
    129c:	0c000000 	jal	0 <ObjLightswitch_InitCollider>
    12a0:	8da50000 	lw	a1,0(t5)
    12a4:	8fbf001c 	lw	ra,28(sp)
    12a8:	8fb00014 	lw	s0,20(sp)
    12ac:	8fb10018 	lw	s1,24(sp)
    12b0:	03e00008 	jr	ra
    12b4:	27bd0078 	addiu	sp,sp,120

000012b8 <ObjLightswitch_Draw>:
    12b8:	27bdffe0 	addiu	sp,sp,-32
    12bc:	afbf0014 	sw	ra,20(sp)
    12c0:	848301bc 	lh	v1,444(a0)
    12c4:	8482001c 	lh	v0,28(a0)
    12c8:	24010001 	li	at,1
    12cc:	00031983 	sra	v1,v1,0x6
    12d0:	304e0001 	andi	t6,v0,0x1
    12d4:	00803025 	move	a2,a0
    12d8:	00a03825 	move	a3,a1
    12dc:	15c1000b 	bne	t6,at,130c <ObjLightswitch_Draw+0x54>
    12e0:	306300ff 	andi	v1,v1,0xff
    12e4:	00002025 	move	a0,zero
    12e8:	24c50150 	addiu	a1,a2,336
    12ec:	afa30018 	sw	v1,24(sp)
    12f0:	afa60020 	sw	a2,32(sp)
    12f4:	0c000000 	jal	0 <ObjLightswitch_InitCollider>
    12f8:	afa70024 	sw	a3,36(sp)
    12fc:	8fa60020 	lw	a2,32(sp)
    1300:	8fa30018 	lw	v1,24(sp)
    1304:	8fa70024 	lw	a3,36(sp)
    1308:	84c2001c 	lh	v0,28(a2)
    130c:	00027903 	sra	t7,v0,0x4
    1310:	31f80003 	andi	t8,t7,0x3
    1314:	24010003 	li	at,3
    1318:	1701000a 	bne	t8,at,1344 <ObjLightswitch_Draw+0x8c>
    131c:	00c02025 	move	a0,a2
    1320:	1c600003 	bgtz	v1,1330 <ObjLightswitch_Draw+0x78>
    1324:	286100ff 	slti	at,v1,255
    1328:	10200006 	beqz	at,1344 <ObjLightswitch_Draw+0x8c>
    132c:	00000000 	nop
    1330:	00c02025 	move	a0,a2
    1334:	0c000000 	jal	0 <ObjLightswitch_InitCollider>
    1338:	00e02825 	move	a1,a3
    133c:	10000004 	b	1350 <ObjLightswitch_Draw+0x98>
    1340:	8fbf0014 	lw	ra,20(sp)
    1344:	0c000000 	jal	0 <ObjLightswitch_InitCollider>
    1348:	00e02825 	move	a1,a3
    134c:	8fbf0014 	lw	ra,20(sp)
    1350:	27bd0020 	addiu	sp,sp,32
    1354:	03e00008 	jr	ra
    1358:	00000000 	nop
    135c:	00000000 	nop
