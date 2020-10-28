
build/src/overlays/actors/ovl_Obj_Switch/z_obj_switch.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <func_80B9D210>:
       0:	27bdffe0 	addiu	sp,sp,-32
       4:	afbf0014 	sw	ra,20(sp)
       8:	afa40020 	sw	a0,32(sp)
       c:	afa60028 	sw	a2,40(sp)
      10:	87a4002a 	lh	a0,42(sp)
      14:	0c000000 	jal	0 <func_80B9D210>
      18:	afa50024 	sw	a1,36(sp)
      1c:	87a4002a 	lh	a0,42(sp)
      20:	0c000000 	jal	0 <func_80B9D210>
      24:	e7a0001c 	swc1	$f0,28(sp)
      28:	8fa50024 	lw	a1,36(sp)
      2c:	c7a2001c 	lwc1	$f2,28(sp)
      30:	8fa20020 	lw	v0,32(sp)
      34:	c4a40008 	lwc1	$f4,8(a1)
      38:	c4a80000 	lwc1	$f8,0(a1)
      3c:	46022182 	mul.s	$f6,$f4,$f2
      40:	00000000 	nop
      44:	46004282 	mul.s	$f10,$f8,$f0
      48:	460a3400 	add.s	$f16,$f6,$f10
      4c:	e4500000 	swc1	$f16,0(v0)
      50:	c4b20004 	lwc1	$f18,4(a1)
      54:	e4520004 	swc1	$f18,4(v0)
      58:	c4a40008 	lwc1	$f4,8(a1)
      5c:	c4a60000 	lwc1	$f6,0(a1)
      60:	46002202 	mul.s	$f8,$f4,$f0
      64:	00000000 	nop
      68:	46023282 	mul.s	$f10,$f6,$f2
      6c:	460a4401 	sub.s	$f16,$f8,$f10
      70:	e4500008 	swc1	$f16,8(v0)
      74:	8fbf0014 	lw	ra,20(sp)
      78:	27bd0020 	addiu	sp,sp,32
      7c:	03e00008 	jr	ra
      80:	00000000 	nop

00000084 <func_80B9D294>:
      84:	27bdffc8 	addiu	sp,sp,-56
      88:	afbf0024 	sw	ra,36(sp)
      8c:	afb00020 	sw	s0,32(sp)
      90:	afa5003c 	sw	a1,60(sp)
      94:	00808025 	move	s0,a0
      98:	afa60040 	sw	a2,64(sp)
      9c:	afa00030 	sw	zero,48(sp)
      a0:	0c000000 	jal	0 <func_80B9D210>
      a4:	00e02825 	move	a1,a3
      a8:	8fa40040 	lw	a0,64(sp)
      ac:	0c000000 	jal	0 <func_80B9D210>
      b0:	27a50030 	addiu	a1,sp,48
      b4:	8fa4003c 	lw	a0,60(sp)
      b8:	02003025 	move	a2,s0
      bc:	8fa70030 	lw	a3,48(sp)
      c0:	0c000000 	jal	0 <func_80B9D210>
      c4:	24850810 	addiu	a1,a0,2064
      c8:	24010032 	li	at,50
      cc:	1441000a 	bne	v0,at,f8 <func_80B9D294+0x74>
      d0:	ae02014c 	sw	v0,332(s0)
      d4:	860e001c 	lh	t6,28(s0)
      d8:	3c040000 	lui	a0,0x0
      dc:	3c050000 	lui	a1,0x0
      e0:	86070000 	lh	a3,0(s0)
      e4:	24a50000 	addiu	a1,a1,0
      e8:	24840000 	addiu	a0,a0,0
      ec:	24060213 	li	a2,531
      f0:	0c000000 	jal	0 <func_80B9D210>
      f4:	afae0010 	sw	t6,16(sp)
      f8:	8fbf0024 	lw	ra,36(sp)
      fc:	8fb00020 	lw	s0,32(sp)
     100:	27bd0038 	addiu	sp,sp,56
     104:	03e00008 	jr	ra
     108:	00000000 	nop

0000010c <func_80B9D31C>:
     10c:	27bdffd0 	addiu	sp,sp,-48
     110:	afb00020 	sw	s0,32(sp)
     114:	00808025 	move	s0,a0
     118:	afa50034 	sw	a1,52(sp)
     11c:	00a02025 	move	a0,a1
     120:	afbf0024 	sw	ra,36(sp)
     124:	26050180 	addiu	a1,s0,384
     128:	afa60038 	sw	a2,56(sp)
     12c:	0c000000 	jal	0 <func_80B9D210>
     130:	afa50028 	sw	a1,40(sp)
     134:	260e01a0 	addiu	t6,s0,416
     138:	afae0010 	sw	t6,16(sp)
     13c:	8fa40034 	lw	a0,52(sp)
     140:	8fa50028 	lw	a1,40(sp)
     144:	02003025 	move	a2,s0
     148:	0c000000 	jal	0 <func_80B9D210>
     14c:	8fa70038 	lw	a3,56(sp)
     150:	c60400bc 	lwc1	$f4,188(s0)
     154:	c6060054 	lwc1	$f6,84(s0)
     158:	c60a0028 	lwc1	$f10,40(s0)
     15c:	c60c0024 	lwc1	$f12,36(s0)
     160:	46062202 	mul.s	$f8,$f4,$f6
     164:	8e06002c 	lw	a2,44(s0)
     168:	260700b4 	addiu	a3,s0,180
     16c:	0c000000 	jal	0 <func_80B9D210>
     170:	46085380 	add.s	$f14,$f10,$f8
     174:	c60c0050 	lwc1	$f12,80(s0)
     178:	c60e0054 	lwc1	$f14,84(s0)
     17c:	8e060058 	lw	a2,88(s0)
     180:	0c000000 	jal	0 <func_80B9D210>
     184:	24070001 	li	a3,1
     188:	00002025 	move	a0,zero
     18c:	0c000000 	jal	0 <func_80B9D210>
     190:	8fa50028 	lw	a1,40(sp)
     194:	8fbf0024 	lw	ra,36(sp)
     198:	8fb00020 	lw	s0,32(sp)
     19c:	27bd0030 	addiu	sp,sp,48
     1a0:	03e00008 	jr	ra
     1a4:	00000000 	nop

000001a8 <func_80B9D3B8>:
     1a8:	27bdff78 	addiu	sp,sp,-136
     1ac:	afb50034 	sw	s5,52(sp)
     1b0:	0080a825 	move	s5,a0
     1b4:	afb00020 	sw	s0,32(sp)
     1b8:	00a08025 	move	s0,a1
     1bc:	00a02025 	move	a0,a1
     1c0:	afbf0044 	sw	ra,68(sp)
     1c4:	afb60038 	sw	s6,56(sp)
     1c8:	26a50180 	addiu	a1,s5,384
     1cc:	00c0b025 	move	s6,a2
     1d0:	afbe0040 	sw	s8,64(sp)
     1d4:	afb7003c 	sw	s7,60(sp)
     1d8:	afb40030 	sw	s4,48(sp)
     1dc:	afb3002c 	sw	s3,44(sp)
     1e0:	afb20028 	sw	s2,40(sp)
     1e4:	afb10024 	sw	s1,36(sp)
     1e8:	0c000000 	jal	0 <func_80B9D210>
     1ec:	afa50054 	sw	a1,84(sp)
     1f0:	26ae01a0 	addiu	t6,s5,416
     1f4:	afae0010 	sw	t6,16(sp)
     1f8:	02002025 	move	a0,s0
     1fc:	8fa50054 	lw	a1,84(sp)
     200:	02a03025 	move	a2,s5
     204:	0c000000 	jal	0 <func_80B9D210>
     208:	02c03825 	move	a3,s6
     20c:	00009025 	move	s2,zero
     210:	26b30024 	addiu	s3,s5,36
     214:	27be0064 	addiu	s8,sp,100
     218:	27b70058 	addiu	s7,sp,88
     21c:	27b4007c 	addiu	s4,sp,124
     220:	00008825 	move	s1,zero
     224:	27b00058 	addiu	s0,sp,88
     228:	8ecf000c 	lw	t7,12(s6)
     22c:	0012c100 	sll	t8,s2,0x4
     230:	0312c023 	subu	t8,t8,s2
     234:	0018c080 	sll	t8,t8,0x2
     238:	01f8c821 	addu	t9,t7,t8
     23c:	03312821 	addu	a1,t9,s1
     240:	24a50018 	addiu	a1,a1,24
     244:	02002025 	move	a0,s0
     248:	0c000000 	jal	0 <func_80B9D210>
     24c:	86a60016 	lh	a2,22(s5)
     250:	02002025 	move	a0,s0
     254:	02602825 	move	a1,s3
     258:	0c000000 	jal	0 <func_80B9D210>
     25c:	02003025 	move	a2,s0
     260:	2610000c 	addiu	s0,s0,12
     264:	1614fff0 	bne	s0,s4,228 <func_80B9D3B8+0x80>
     268:	2631000c 	addiu	s1,s1,12
     26c:	27a80070 	addiu	t0,sp,112
     270:	afa80010 	sw	t0,16(sp)
     274:	8fa40054 	lw	a0,84(sp)
     278:	02402825 	move	a1,s2
     27c:	02e03025 	move	a2,s7
     280:	0c000000 	jal	0 <func_80B9D210>
     284:	03c03825 	move	a3,s8
     288:	26520001 	addiu	s2,s2,1
     28c:	24010002 	li	at,2
     290:	5641ffe4 	bnel	s2,at,224 <func_80B9D3B8+0x7c>
     294:	00008825 	move	s1,zero
     298:	8fbf0044 	lw	ra,68(sp)
     29c:	8fb00020 	lw	s0,32(sp)
     2a0:	8fb10024 	lw	s1,36(sp)
     2a4:	8fb20028 	lw	s2,40(sp)
     2a8:	8fb3002c 	lw	s3,44(sp)
     2ac:	8fb40030 	lw	s4,48(sp)
     2b0:	8fb50034 	lw	s5,52(sp)
     2b4:	8fb60038 	lw	s6,56(sp)
     2b8:	8fb7003c 	lw	s7,60(sp)
     2bc:	8fbe0040 	lw	s8,64(sp)
     2c0:	03e00008 	jr	ra
     2c4:	27bd0088 	addiu	sp,sp,136

000002c8 <func_80B9D4D8>:
     2c8:	27bdffc8 	addiu	sp,sp,-56
     2cc:	00a03025 	move	a2,a1
     2d0:	00802825 	move	a1,a0
     2d4:	afbf0034 	sw	ra,52(sp)
     2d8:	afa40038 	sw	a0,56(sp)
     2dc:	c4a40024 	lwc1	$f4,36(a1)
     2e0:	24c41c24 	addiu	a0,a2,7204
     2e4:	2407011e 	li	a3,286
     2e8:	e7a40010 	swc1	$f4,16(sp)
     2ec:	c4a60028 	lwc1	$f6,40(a1)
     2f0:	e7a60014 	swc1	$f6,20(sp)
     2f4:	c4a8002c 	lwc1	$f8,44(a1)
     2f8:	e7a80018 	swc1	$f8,24(sp)
     2fc:	84ae0030 	lh	t6,48(a1)
     300:	afae001c 	sw	t6,28(sp)
     304:	84af0032 	lh	t7,50(a1)
     308:	afaf0020 	sw	t7,32(sp)
     30c:	84b80034 	lh	t8,52(a1)
     310:	afb80024 	sw	t8,36(sp)
     314:	84b9001c 	lh	t9,28(a1)
     318:	00194203 	sra	t0,t9,0x8
     31c:	3109003f 	andi	t1,t0,0x3f
     320:	00095200 	sll	t2,t1,0x8
     324:	0c000000 	jal	0 <func_80B9D210>
     328:	afaa0028 	sw	t2,40(sp)
     32c:	8fbf0034 	lw	ra,52(sp)
     330:	27bd0038 	addiu	sp,sp,56
     334:	03e00008 	jr	ra
     338:	00000000 	nop

0000033c <func_80B9D54C>:
     33c:	27bdffd8 	addiu	sp,sp,-40
     340:	afb00018 	sw	s0,24(sp)
     344:	00808025 	move	s0,a0
     348:	afbf001c 	sw	ra,28(sp)
     34c:	afa5002c 	sw	a1,44(sp)
     350:	00a02025 	move	a0,a1
     354:	8605001c 	lh	a1,28(s0)
     358:	00052a03 	sra	a1,a1,0x8
     35c:	0c000000 	jal	0 <func_80B9D210>
     360:	30a5003f 	andi	a1,a1,0x3f
     364:	50400004 	beqzl	v0,378 <func_80B9D54C+0x3c>
     368:	8602001c 	lh	v0,28(s0)
     36c:	10000019 	b	3d4 <func_80B9D54C+0x98>
     370:	a200016e 	sb	zero,366(s0)
     374:	8602001c 	lh	v0,28(s0)
     378:	8fa4002c 	lw	a0,44(sp)
     37c:	00021903 	sra	v1,v0,0x4
     380:	30630007 	andi	v1,v1,0x7
     384:	00022a03 	sra	a1,v0,0x8
     388:	30a5003f 	andi	a1,a1,0x3f
     38c:	0c000000 	jal	0 <func_80B9D210>
     390:	afa30020 	sw	v1,32(sp)
     394:	8fa30020 	lw	v1,32(sp)
     398:	24010004 	li	at,4
     39c:	8fa4002c 	lw	a0,44(sp)
     3a0:	10600003 	beqz	v1,3b0 <func_80B9D54C+0x74>
     3a4:	02002825 	move	a1,s0
     3a8:	14610005 	bne	v1,at,3c0 <func_80B9D54C+0x84>
     3ac:	24064807 	li	a2,18439
     3b0:	0c000000 	jal	0 <func_80B9D210>
     3b4:	24064802 	li	a2,18434
     3b8:	10000005 	b	3d0 <func_80B9D54C+0x94>
     3bc:	240e0001 	li	t6,1
     3c0:	8fa4002c 	lw	a0,44(sp)
     3c4:	0c000000 	jal	0 <func_80B9D210>
     3c8:	02002825 	move	a1,s0
     3cc:	240e0001 	li	t6,1
     3d0:	a20e016e 	sb	t6,366(s0)
     3d4:	8fbf001c 	lw	ra,28(sp)
     3d8:	8fb00018 	lw	s0,24(sp)
     3dc:	27bd0028 	addiu	sp,sp,40
     3e0:	03e00008 	jr	ra
     3e4:	00000000 	nop

000003e8 <func_80B9D5F8>:
     3e8:	27bdffe0 	addiu	sp,sp,-32
     3ec:	afb00018 	sw	s0,24(sp)
     3f0:	afbf001c 	sw	ra,28(sp)
     3f4:	afa50024 	sw	a1,36(sp)
     3f8:	00808025 	move	s0,a0
     3fc:	a080016e 	sb	zero,366(a0)
     400:	8605001c 	lh	a1,28(s0)
     404:	8fa40024 	lw	a0,36(sp)
     408:	00052a03 	sra	a1,a1,0x8
     40c:	0c000000 	jal	0 <func_80B9D210>
     410:	30a5003f 	andi	a1,a1,0x3f
     414:	50400012 	beqzl	v0,460 <func_80B9D5F8+0x78>
     418:	8fbf001c 	lw	ra,28(sp)
     41c:	8605001c 	lh	a1,28(s0)
     420:	8fa40024 	lw	a0,36(sp)
     424:	00052a03 	sra	a1,a1,0x8
     428:	0c000000 	jal	0 <func_80B9D210>
     42c:	30a5003f 	andi	a1,a1,0x3f
     430:	860e001c 	lh	t6,28(s0)
     434:	24010001 	li	at,1
     438:	8fa40024 	lw	a0,36(sp)
     43c:	000e7903 	sra	t7,t6,0x4
     440:	31f80007 	andi	t8,t7,0x7
     444:	17010005 	bne	t8,at,45c <func_80B9D5F8+0x74>
     448:	02002825 	move	a1,s0
     44c:	0c000000 	jal	0 <func_80B9D210>
     450:	24064807 	li	a2,18439
     454:	24190001 	li	t9,1
     458:	a219016e 	sb	t9,366(s0)
     45c:	8fbf001c 	lw	ra,28(sp)
     460:	8fb00018 	lw	s0,24(sp)
     464:	27bd0020 	addiu	sp,sp,32
     468:	03e00008 	jr	ra
     46c:	00000000 	nop

00000470 <func_80B9D680>:
     470:	908e0178 	lbu	t6,376(a0)
     474:	90990179 	lbu	t9,377(a0)
     478:	908a017a 	lbu	t2,378(a0)
     47c:	908d017b 	lbu	t5,379(a0)
     480:	25cfffff 	addiu	t7,t6,-1
     484:	31f8007f 	andi	t8,t7,0x7f
     488:	27280001 	addiu	t0,t9,1
     48c:	254b0001 	addiu	t3,t2,1
     490:	25aeffff 	addiu	t6,t5,-1
     494:	3109007f 	andi	t1,t0,0x7f
     498:	316c007f 	andi	t4,t3,0x7f
     49c:	31cf007f 	andi	t7,t6,0x7f
     4a0:	a0980178 	sb	t8,376(a0)
     4a4:	a0890179 	sb	t1,377(a0)
     4a8:	a08c017a 	sb	t4,378(a0)
     4ac:	03e00008 	jr	ra
     4b0:	a08f017b 	sb	t7,379(a0)

000004b4 <ObjSwitch_Init>:
     4b4:	27bdffc8 	addiu	sp,sp,-56
     4b8:	afb00018 	sw	s0,24(sp)
     4bc:	00808025 	move	s0,a0
     4c0:	afbf001c 	sw	ra,28(sp)
     4c4:	afa5003c 	sw	a1,60(sp)
     4c8:	00a02025 	move	a0,a1
     4cc:	8605001c 	lh	a1,28(s0)
     4d0:	00052a03 	sra	a1,a1,0x8
     4d4:	0c000000 	jal	0 <func_80B9D210>
     4d8:	30a5003f 	andi	a1,a1,0x3f
     4dc:	afa20030 	sw	v0,48(sp)
     4e0:	8603001c 	lh	v1,28(s0)
     4e4:	24010001 	li	at,1
     4e8:	02002025 	move	a0,s0
     4ec:	30630007 	andi	v1,v1,0x7
     4f0:	10600002 	beqz	v1,4fc <ObjSwitch_Init+0x48>
     4f4:	8fa5003c 	lw	a1,60(sp)
     4f8:	14610006 	bne	v1,at,514 <ObjSwitch_Init+0x60>
     4fc:	3c060500 	lui	a2,0x500
     500:	24c65fb8 	addiu	a2,a2,24504
     504:	24070001 	li	a3,1
     508:	0c000000 	jal	0 <func_80B9D210>
     50c:	afa3002c 	sw	v1,44(sp)
     510:	8fa3002c 	lw	v1,44(sp)
     514:	3c050000 	lui	a1,0x0
     518:	24a50000 	addiu	a1,a1,0
     51c:	02002025 	move	a0,s0
     520:	0c000000 	jal	0 <func_80B9D210>
     524:	afa3002c 	sw	v1,44(sp)
     528:	8fa3002c 	lw	v1,44(sp)
     52c:	02002025 	move	a0,s0
     530:	3c0f0000 	lui	t7,0x0
     534:	10600003 	beqz	v1,544 <ObjSwitch_Init+0x90>
     538:	00037080 	sll	t6,v1,0x2
     53c:	24010001 	li	at,1
     540:	14610005 	bne	v1,at,558 <ObjSwitch_Init+0xa4>
     544:	3c013f80 	lui	at,0x3f80
     548:	44813000 	mtc1	at,$f6
     54c:	c604000c 	lwc1	$f4,12(s0)
     550:	46062200 	add.s	$f8,$f4,$f6
     554:	e6080028 	swc1	$f8,40(s0)
     558:	25ef0000 	addiu	t7,t7,0
     55c:	01cf3821 	addu	a3,t6,t7
     560:	8ce50000 	lw	a1,0(a3)
     564:	0c000000 	jal	0 <func_80B9D210>
     568:	afa70024 	sw	a3,36(sp)
     56c:	8fa70024 	lw	a3,36(sp)
     570:	3c180000 	lui	t8,0x0
     574:	27180000 	addiu	t8,t8,0
     578:	14f80009 	bne	a3,t8,5a0 <ObjSwitch_Init+0xec>
     57c:	3c190000 	lui	t9,0x0
     580:	3c060000 	lui	a2,0x0
     584:	24c60000 	addiu	a2,a2,0
     588:	02002025 	move	a0,s0
     58c:	8fa5003c 	lw	a1,60(sp)
     590:	0c000000 	jal	0 <func_80B9D210>
     594:	afa70024 	sw	a3,36(sp)
     598:	10000018 	b	5fc <ObjSwitch_Init+0x148>
     59c:	8fa70024 	lw	a3,36(sp)
     5a0:	27390000 	addiu	t9,t9,0
     5a4:	14f90009 	bne	a3,t9,5cc <ObjSwitch_Init+0x118>
     5a8:	3c080000 	lui	t0,0x0
     5ac:	3c060000 	lui	a2,0x0
     5b0:	24c60000 	addiu	a2,a2,0
     5b4:	02002025 	move	a0,s0
     5b8:	8fa5003c 	lw	a1,60(sp)
     5bc:	0c000000 	jal	0 <func_80B9D210>
     5c0:	afa70024 	sw	a3,36(sp)
     5c4:	1000000d 	b	5fc <ObjSwitch_Init+0x148>
     5c8:	8fa70024 	lw	a3,36(sp)
     5cc:	25080000 	addiu	t0,t0,0
     5d0:	10e80003 	beq	a3,t0,5e0 <ObjSwitch_Init+0x12c>
     5d4:	3c090000 	lui	t1,0x0
     5d8:	25290000 	addiu	t1,t1,0
     5dc:	14e90007 	bne	a3,t1,5fc <ObjSwitch_Init+0x148>
     5e0:	3c060000 	lui	a2,0x0
     5e4:	24c60000 	addiu	a2,a2,0
     5e8:	02002025 	move	a0,s0
     5ec:	8fa5003c 	lw	a1,60(sp)
     5f0:	0c000000 	jal	0 <func_80B9D210>
     5f4:	afa70024 	sw	a3,36(sp)
     5f8:	8fa70024 	lw	a3,36(sp)
     5fc:	3c0a0000 	lui	t2,0x0
     600:	254a0000 	addiu	t2,t2,0
     604:	14ea0006 	bne	a3,t2,620 <ObjSwitch_Init+0x16c>
     608:	02002025 	move	a0,s0
     60c:	8e0b0004 	lw	t3,4(s0)
     610:	240d0004 	li	t5,4
     614:	a20d001f 	sb	t5,31(s0)
     618:	356c0001 	ori	t4,t3,0x1
     61c:	ae0c0004 	sw	t4,4(s0)
     620:	860f001c 	lh	t7,28(s0)
     624:	240e00ff 	li	t6,255
     628:	a20e00ae 	sb	t6,174(s0)
     62c:	000fc1c3 	sra	t8,t7,0x7
     630:	33190001 	andi	t9,t8,0x1
     634:	13200016 	beqz	t9,690 <ObjSwitch_Init+0x1dc>
     638:	8fa5003c 	lw	a1,60(sp)
     63c:	0c000000 	jal	0 <func_80B9D210>
     640:	afa70024 	sw	a3,36(sp)
     644:	14400012 	bnez	v0,690 <ObjSwitch_Init+0x1dc>
     648:	8fa70024 	lw	a3,36(sp)
     64c:	3c040000 	lui	a0,0x0
     650:	24840000 	addiu	a0,a0,0
     654:	0c000000 	jal	0 <func_80B9D210>
     658:	afa70024 	sw	a3,36(sp)
     65c:	3c040000 	lui	a0,0x0
     660:	3c050000 	lui	a1,0x0
     664:	24a50000 	addiu	a1,a1,0
     668:	24840000 	addiu	a0,a0,0
     66c:	0c000000 	jal	0 <func_80B9D210>
     670:	240602dc 	li	a2,732
     674:	3c040000 	lui	a0,0x0
     678:	0c000000 	jal	0 <func_80B9D210>
     67c:	24840000 	addiu	a0,a0,0
     680:	8608001c 	lh	t0,28(s0)
     684:	8fa70024 	lw	a3,36(sp)
     688:	3109ff7f 	andi	t1,t0,0xff7f
     68c:	a609001c 	sh	t1,28(s0)
     690:	8605001c 	lh	a1,28(s0)
     694:	3c0c0000 	lui	t4,0x0
     698:	258c0000 	addiu	t4,t4,0
     69c:	000551c3 	sra	t2,a1,0x7
     6a0:	314b0001 	andi	t3,t2,0x1
     6a4:	11600005 	beqz	t3,6bc <ObjSwitch_Init+0x208>
     6a8:	00000000 	nop
     6ac:	0c000000 	jal	0 <func_80B9D210>
     6b0:	02002025 	move	a0,s0
     6b4:	1000002f 	b	774 <ObjSwitch_Init+0x2c0>
     6b8:	8605001c 	lh	a1,28(s0)
     6bc:	10ec0004 	beq	a3,t4,6d0 <ObjSwitch_Init+0x21c>
     6c0:	3c0d0000 	lui	t5,0x0
     6c4:	25ad0000 	addiu	t5,t5,0
     6c8:	14ed000c 	bne	a3,t5,6fc <ObjSwitch_Init+0x248>
     6cc:	3c0f0000 	lui	t7,0x0
     6d0:	8fae0030 	lw	t6,48(sp)
     6d4:	11c00005 	beqz	t6,6ec <ObjSwitch_Init+0x238>
     6d8:	00000000 	nop
     6dc:	0c000000 	jal	0 <func_80B9D210>
     6e0:	02002025 	move	a0,s0
     6e4:	10000003 	b	6f4 <ObjSwitch_Init+0x240>
     6e8:	00000000 	nop
     6ec:	0c000000 	jal	0 <func_80B9D210>
     6f0:	02002025 	move	a0,s0
     6f4:	1000001f 	b	774 <ObjSwitch_Init+0x2c0>
     6f8:	8605001c 	lh	a1,28(s0)
     6fc:	25ef0000 	addiu	t7,t7,0
     700:	14ef000c 	bne	a3,t7,734 <ObjSwitch_Init+0x280>
     704:	3c190000 	lui	t9,0x0
     708:	8fb80030 	lw	t8,48(sp)
     70c:	13000005 	beqz	t8,724 <ObjSwitch_Init+0x270>
     710:	00000000 	nop
     714:	0c000000 	jal	0 <func_80B9D210>
     718:	02002025 	move	a0,s0
     71c:	10000003 	b	72c <ObjSwitch_Init+0x278>
     720:	00000000 	nop
     724:	0c000000 	jal	0 <func_80B9D210>
     728:	02002025 	move	a0,s0
     72c:	10000011 	b	774 <ObjSwitch_Init+0x2c0>
     730:	8605001c 	lh	a1,28(s0)
     734:	27390000 	addiu	t9,t9,0
     738:	10f90004 	beq	a3,t9,74c <ObjSwitch_Init+0x298>
     73c:	3c080000 	lui	t0,0x0
     740:	25080000 	addiu	t0,t0,0
     744:	14e8000b 	bne	a3,t0,774 <ObjSwitch_Init+0x2c0>
     748:	00000000 	nop
     74c:	8fa90030 	lw	t1,48(sp)
     750:	11200005 	beqz	t1,768 <ObjSwitch_Init+0x2b4>
     754:	00000000 	nop
     758:	0c000000 	jal	0 <func_80B9D210>
     75c:	02002025 	move	a0,s0
     760:	10000004 	b	774 <ObjSwitch_Init+0x2c0>
     764:	8605001c 	lh	a1,28(s0)
     768:	0c000000 	jal	0 <func_80B9D210>
     76c:	02002025 	move	a0,s0
     770:	8605001c 	lh	a1,28(s0)
     774:	3c040000 	lui	a0,0x0
     778:	0c000000 	jal	0 <func_80B9D210>
     77c:	24840000 	addiu	a0,a0,0
     780:	8fbf001c 	lw	ra,28(sp)
     784:	8fb00018 	lw	s0,24(sp)
     788:	27bd0038 	addiu	sp,sp,56
     78c:	03e00008 	jr	ra
     790:	00000000 	nop

00000794 <ObjSwitch_Destroy>:
     794:	27bdffe8 	addiu	sp,sp,-24
     798:	afbf0014 	sw	ra,20(sp)
     79c:	afa5001c 	sw	a1,28(sp)
     7a0:	8482001c 	lh	v0,28(a0)
     7a4:	00803825 	move	a3,a0
     7a8:	24010001 	li	at,1
     7ac:	30420007 	andi	v0,v0,0x7
     7b0:	10400003 	beqz	v0,7c0 <ObjSwitch_Destroy+0x2c>
     7b4:	8fa4001c 	lw	a0,28(sp)
     7b8:	54410009 	bnel	v0,at,7e0 <ObjSwitch_Destroy+0x4c>
     7bc:	24010001 	li	at,1
     7c0:	8ce6014c 	lw	a2,332(a3)
     7c4:	afa70018 	sw	a3,24(sp)
     7c8:	0c000000 	jal	0 <func_80B9D210>
     7cc:	24850810 	addiu	a1,a0,2064
     7d0:	8fa70018 	lw	a3,24(sp)
     7d4:	84e2001c 	lh	v0,28(a3)
     7d8:	30420007 	andi	v0,v0,0x7
     7dc:	24010001 	li	at,1
     7e0:	1041000b 	beq	v0,at,810 <ObjSwitch_Destroy+0x7c>
     7e4:	8fa4001c 	lw	a0,28(sp)
     7e8:	24010002 	li	at,2
     7ec:	10410008 	beq	v0,at,810 <ObjSwitch_Destroy+0x7c>
     7f0:	24010003 	li	at,3
     7f4:	1041000a 	beq	v0,at,820 <ObjSwitch_Destroy+0x8c>
     7f8:	8fa4001c 	lw	a0,28(sp)
     7fc:	24010004 	li	at,4
     800:	10410007 	beq	v0,at,820 <ObjSwitch_Destroy+0x8c>
     804:	00000000 	nop
     808:	10000008 	b	82c <ObjSwitch_Destroy+0x98>
     80c:	8fbf0014 	lw	ra,20(sp)
     810:	0c000000 	jal	0 <func_80B9D210>
     814:	24e50180 	addiu	a1,a3,384
     818:	10000004 	b	82c <ObjSwitch_Destroy+0x98>
     81c:	8fbf0014 	lw	ra,20(sp)
     820:	0c000000 	jal	0 <func_80B9D210>
     824:	24e50180 	addiu	a1,a3,384
     828:	8fbf0014 	lw	ra,20(sp)
     82c:	27bd0018 	addiu	sp,sp,24
     830:	03e00008 	jr	ra
     834:	00000000 	nop

00000838 <func_80B9DA48>:
     838:	3c010000 	lui	at,0x0
     83c:	c4240000 	lwc1	$f4,0(at)
     840:	3c0e0000 	lui	t6,0x0
     844:	25ce0000 	addiu	t6,t6,0
     848:	ac8e0164 	sw	t6,356(a0)
     84c:	03e00008 	jr	ra
     850:	e4840054 	swc1	$f4,84(a0)

00000854 <func_80B9DA64>:
     854:	27bdffe0 	addiu	sp,sp,-32
     858:	afbf001c 	sw	ra,28(sp)
     85c:	afb00018 	sw	s0,24(sp)
     860:	afa50024 	sw	a1,36(sp)
     864:	8483001c 	lh	v1,28(a0)
     868:	24060001 	li	a2,1
     86c:	00808025 	move	s0,a0
     870:	306e0007 	andi	t6,v1,0x7
     874:	14ce0016 	bne	a2,t6,8d0 <func_80B9DA64+0x7c>
     878:	00031103 	sra	v0,v1,0x4
     87c:	908f0191 	lbu	t7,401(a0)
     880:	3c010001 	lui	at,0x1
     884:	34211e60 	ori	at,at,0x1e60
     888:	31f80002 	andi	t8,t7,0x2
     88c:	5300000b 	beqzl	t8,8bc <func_80B9DA64+0x68>
     890:	8fa40024 	lw	a0,36(sp)
     894:	0c000000 	jal	0 <func_80B9D210>
     898:	00000000 	nop
     89c:	02002025 	move	a0,s0
     8a0:	0c000000 	jal	0 <func_80B9D210>
     8a4:	8fa50024 	lw	a1,36(sp)
     8a8:	92190191 	lbu	t9,401(s0)
     8ac:	3328fffd 	andi	t0,t9,0xfffd
     8b0:	10000040 	b	9b4 <func_80B9DA64+0x160>
     8b4:	a2080191 	sb	t0,401(s0)
     8b8:	8fa40024 	lw	a0,36(sp)
     8bc:	26060180 	addiu	a2,s0,384
     8c0:	0c000000 	jal	0 <func_80B9D210>
     8c4:	00812821 	addu	a1,a0,at
     8c8:	1000003b 	b	9b8 <func_80B9DA64+0x164>
     8cc:	8fbf001c 	lw	ra,28(sp)
     8d0:	30420007 	andi	v0,v0,0x7
     8d4:	10400009 	beqz	v0,8fc <func_80B9DA64+0xa8>
     8d8:	00000000 	nop
     8dc:	10460012 	beq	v0,a2,928 <func_80B9DA64+0xd4>
     8e0:	24010002 	li	at,2
     8e4:	1041001f 	beq	v0,at,964 <func_80B9DA64+0x110>
     8e8:	24010003 	li	at,3
     8ec:	10410028 	beq	v0,at,990 <func_80B9DA64+0x13c>
     8f0:	00000000 	nop
     8f4:	10000030 	b	9b8 <func_80B9DA64+0x164>
     8f8:	8fbf001c 	lw	ra,28(sp)
     8fc:	0c000000 	jal	0 <func_80B9D210>
     900:	02002025 	move	a0,s0
     904:	5040002c 	beqzl	v0,9b8 <func_80B9DA64+0x164>
     908:	8fbf001c 	lw	ra,28(sp)
     90c:	0c000000 	jal	0 <func_80B9D210>
     910:	02002025 	move	a0,s0
     914:	02002025 	move	a0,s0
     918:	0c000000 	jal	0 <func_80B9D210>
     91c:	8fa50024 	lw	a1,36(sp)
     920:	10000025 	b	9b8 <func_80B9DA64+0x164>
     924:	8fbf001c 	lw	ra,28(sp)
     928:	920a0160 	lbu	t2,352(s0)
     92c:	314b0002 	andi	t3,t2,0x2
     930:	51600021 	beqzl	t3,9b8 <func_80B9DA64+0x164>
     934:	8fbf001c 	lw	ra,28(sp)
     938:	920c017f 	lbu	t4,383(s0)
     93c:	318d0002 	andi	t5,t4,0x2
     940:	55a0001d 	bnezl	t5,9b8 <func_80B9DA64+0x164>
     944:	8fbf001c 	lw	ra,28(sp)
     948:	0c000000 	jal	0 <func_80B9D210>
     94c:	02002025 	move	a0,s0
     950:	02002025 	move	a0,s0
     954:	0c000000 	jal	0 <func_80B9D210>
     958:	8fa50024 	lw	a1,36(sp)
     95c:	10000016 	b	9b8 <func_80B9DA64+0x164>
     960:	8fbf001c 	lw	ra,28(sp)
     964:	0c000000 	jal	0 <func_80B9D210>
     968:	02002025 	move	a0,s0
     96c:	50400012 	beqzl	v0,9b8 <func_80B9DA64+0x164>
     970:	8fbf001c 	lw	ra,28(sp)
     974:	0c000000 	jal	0 <func_80B9D210>
     978:	02002025 	move	a0,s0
     97c:	02002025 	move	a0,s0
     980:	0c000000 	jal	0 <func_80B9D210>
     984:	8fa50024 	lw	a1,36(sp)
     988:	1000000b 	b	9b8 <func_80B9DA64+0x164>
     98c:	8fbf001c 	lw	ra,28(sp)
     990:	0c000000 	jal	0 <func_80B9D210>
     994:	02002025 	move	a0,s0
     998:	50400007 	beqzl	v0,9b8 <func_80B9DA64+0x164>
     99c:	8fbf001c 	lw	ra,28(sp)
     9a0:	0c000000 	jal	0 <func_80B9D210>
     9a4:	02002025 	move	a0,s0
     9a8:	02002025 	move	a0,s0
     9ac:	0c000000 	jal	0 <func_80B9D210>
     9b0:	8fa50024 	lw	a1,36(sp)
     9b4:	8fbf001c 	lw	ra,28(sp)
     9b8:	8fb00018 	lw	s0,24(sp)
     9bc:	27bd0020 	addiu	sp,sp,32
     9c0:	03e00008 	jr	ra
     9c4:	00000000 	nop

000009c8 <func_80B9DBD8>:
     9c8:	3c0e0000 	lui	t6,0x0
     9cc:	25ce0000 	addiu	t6,t6,0
     9d0:	240f0064 	li	t7,100
     9d4:	ac8e0164 	sw	t6,356(a0)
     9d8:	03e00008 	jr	ra
     9dc:	a48f016c 	sh	t7,364(a0)

000009e0 <func_80B9DBF0>:
     9e0:	27bdffe0 	addiu	sp,sp,-32
     9e4:	afbf001c 	sw	ra,28(sp)
     9e8:	afb00018 	sw	s0,24(sp)
     9ec:	afa50024 	sw	a1,36(sp)
     9f0:	848e001c 	lh	t6,28(a0)
     9f4:	24010003 	li	at,3
     9f8:	00808025 	move	s0,a0
     9fc:	000e7903 	sra	t7,t6,0x4
     a00:	31f80007 	andi	t8,t7,0x7
     a04:	1301000b 	beq	t8,at,a34 <func_80B9DBF0+0x54>
     a08:	00000000 	nop
     a0c:	9099016e 	lbu	t9,366(a0)
     a10:	13200008 	beqz	t9,a34 <func_80B9DBF0+0x54>
     a14:	00000000 	nop
     a18:	0c000000 	jal	0 <func_80B9D210>
     a1c:	00000000 	nop
     a20:	92080002 	lbu	t0,2(s0)
     a24:	10480003 	beq	v0,t0,a34 <func_80B9DBF0+0x54>
     a28:	00000000 	nop
     a2c:	8609016c 	lh	t1,364(s0)
     a30:	1d200016 	bgtz	t1,a8c <func_80B9DBF0+0xac>
     a34:	3c010000 	lui	at,0x0
     a38:	c4260000 	lwc1	$f6,0(at)
     a3c:	c6040054 	lwc1	$f4,84(s0)
     a40:	3c010000 	lui	at,0x0
     a44:	46062201 	sub.s	$f8,$f4,$f6
     a48:	e6080054 	swc1	$f8,84(s0)
     a4c:	c6100054 	lwc1	$f16,84(s0)
     a50:	c42a0000 	lwc1	$f10,0(at)
     a54:	460a803e 	c.le.s	$f16,$f10
     a58:	00000000 	nop
     a5c:	4502000c 	bc1fl	a90 <func_80B9DBF0+0xb0>
     a60:	8fbf001c 	lw	ra,28(sp)
     a64:	0c000000 	jal	0 <func_80B9D210>
     a68:	02002025 	move	a0,s0
     a6c:	02002025 	move	a0,s0
     a70:	0c000000 	jal	0 <func_80B9D210>
     a74:	24052815 	li	a1,10261
     a78:	c60c008c 	lwc1	$f12,140(s0)
     a7c:	24050078 	li	a1,120
     a80:	24060014 	li	a2,20
     a84:	0c000000 	jal	0 <func_80B9D210>
     a88:	2407000a 	li	a3,10
     a8c:	8fbf001c 	lw	ra,28(sp)
     a90:	8fb00018 	lw	s0,24(sp)
     a94:	27bd0020 	addiu	sp,sp,32
     a98:	03e00008 	jr	ra
     a9c:	00000000 	nop

00000aa0 <func_80B9DCB0>:
     aa0:	3c010000 	lui	at,0x0
     aa4:	c4240000 	lwc1	$f4,0(at)
     aa8:	3c0f0000 	lui	t7,0x0
     aac:	240e0006 	li	t6,6
     ab0:	25ef0000 	addiu	t7,t7,0
     ab4:	a48e0168 	sh	t6,360(a0)
     ab8:	ac8f0164 	sw	t7,356(a0)
     abc:	03e00008 	jr	ra
     ac0:	e4840054 	swc1	$f4,84(a0)

00000ac4 <func_80B9DCD4>:
     ac4:	27bdffe8 	addiu	sp,sp,-24
     ac8:	afbf0014 	sw	ra,20(sp)
     acc:	afa5001c 	sw	a1,28(sp)
     ad0:	8483001c 	lh	v1,28(a0)
     ad4:	00803025 	move	a2,a0
     ad8:	8fa4001c 	lw	a0,28(sp)
     adc:	00031103 	sra	v0,v1,0x4
     ae0:	30420007 	andi	v0,v0,0x7
     ae4:	1040000b 	beqz	v0,b14 <func_80B9DCD4+0x50>
     ae8:	00032a03 	sra	a1,v1,0x8
     aec:	24010001 	li	at,1
     af0:	10410011 	beq	v0,at,b38 <func_80B9DCD4+0x74>
     af4:	24010002 	li	at,2
     af8:	1041001f 	beq	v0,at,b78 <func_80B9DCD4+0xb4>
     afc:	00c02025 	move	a0,a2
     b00:	24010003 	li	at,3
     b04:	1041001c 	beq	v0,at,b78 <func_80B9DCD4+0xb4>
     b08:	00000000 	nop
     b0c:	1000003d 	b	c04 <func_80B9DCD4+0x140>
     b10:	8fbf0014 	lw	ra,20(sp)
     b14:	30a5003f 	andi	a1,a1,0x3f
     b18:	0c000000 	jal	0 <func_80B9D210>
     b1c:	afa60018 	sw	a2,24(sp)
     b20:	14400037 	bnez	v0,c00 <func_80B9DCD4+0x13c>
     b24:	8fa60018 	lw	a2,24(sp)
     b28:	0c000000 	jal	0 <func_80B9D210>
     b2c:	00c02025 	move	a0,a2
     b30:	10000034 	b	c04 <func_80B9DCD4+0x140>
     b34:	8fbf0014 	lw	ra,20(sp)
     b38:	90ce0160 	lbu	t6,352(a2)
     b3c:	31cf0002 	andi	t7,t6,0x2
     b40:	51e00030 	beqzl	t7,c04 <func_80B9DCD4+0x140>
     b44:	8fbf0014 	lw	ra,20(sp)
     b48:	90d8017f 	lbu	t8,383(a2)
     b4c:	00c02025 	move	a0,a2
     b50:	33190002 	andi	t9,t8,0x2
     b54:	5720002b 	bnezl	t9,c04 <func_80B9DCD4+0x140>
     b58:	8fbf0014 	lw	ra,20(sp)
     b5c:	0c000000 	jal	0 <func_80B9D210>
     b60:	afa60018 	sw	a2,24(sp)
     b64:	8fa40018 	lw	a0,24(sp)
     b68:	0c000000 	jal	0 <func_80B9D210>
     b6c:	8fa5001c 	lw	a1,28(sp)
     b70:	10000024 	b	c04 <func_80B9DCD4+0x140>
     b74:	8fbf0014 	lw	ra,20(sp)
     b78:	0c000000 	jal	0 <func_80B9D210>
     b7c:	afa60018 	sw	a2,24(sp)
     b80:	1440001d 	bnez	v0,bf8 <func_80B9DCD4+0x134>
     b84:	8fa60018 	lw	a2,24(sp)
     b88:	8fa4001c 	lw	a0,28(sp)
     b8c:	0c000000 	jal	0 <func_80B9D210>
     b90:	afa60018 	sw	a2,24(sp)
     b94:	14400018 	bnez	v0,bf8 <func_80B9DCD4+0x134>
     b98:	8fa60018 	lw	a2,24(sp)
     b9c:	84c80168 	lh	t0,360(a2)
     ba0:	00c02025 	move	a0,a2
     ba4:	5d000017 	bgtzl	t0,c04 <func_80B9DCD4+0x140>
     ba8:	8fbf0014 	lw	ra,20(sp)
     bac:	0c000000 	jal	0 <func_80B9D210>
     bb0:	afa60018 	sw	a2,24(sp)
     bb4:	8fa60018 	lw	a2,24(sp)
     bb8:	24010002 	li	at,2
     bbc:	8fa5001c 	lw	a1,28(sp)
     bc0:	84c9001c 	lh	t1,28(a2)
     bc4:	00c02025 	move	a0,a2
     bc8:	00095103 	sra	t2,t1,0x4
     bcc:	314b0007 	andi	t3,t2,0x7
     bd0:	15610005 	bne	t3,at,be8 <func_80B9DCD4+0x124>
     bd4:	00000000 	nop
     bd8:	0c000000 	jal	0 <func_80B9D210>
     bdc:	00c02025 	move	a0,a2
     be0:	10000008 	b	c04 <func_80B9DCD4+0x140>
     be4:	8fbf0014 	lw	ra,20(sp)
     be8:	0c000000 	jal	0 <func_80B9D210>
     bec:	8fa5001c 	lw	a1,28(sp)
     bf0:	10000004 	b	c04 <func_80B9DCD4+0x140>
     bf4:	8fbf0014 	lw	ra,20(sp)
     bf8:	240c0006 	li	t4,6
     bfc:	a4cc0168 	sh	t4,360(a2)
     c00:	8fbf0014 	lw	ra,20(sp)
     c04:	27bd0018 	addiu	sp,sp,24
     c08:	03e00008 	jr	ra
     c0c:	00000000 	nop

00000c10 <func_80B9DE20>:
     c10:	3c0e0000 	lui	t6,0x0
     c14:	25ce0000 	addiu	t6,t6,0
     c18:	240f0064 	li	t7,100
     c1c:	ac8e0164 	sw	t6,356(a0)
     c20:	03e00008 	jr	ra
     c24:	a48f016c 	sh	t7,364(a0)

00000c28 <func_80B9DE38>:
     c28:	27bdffd8 	addiu	sp,sp,-40
     c2c:	afbf001c 	sw	ra,28(sp)
     c30:	afb00018 	sw	s0,24(sp)
     c34:	afa5002c 	sw	a1,44(sp)
     c38:	8483001c 	lh	v1,28(a0)
     c3c:	24010001 	li	at,1
     c40:	00808025 	move	s0,a0
     c44:	00031903 	sra	v1,v1,0x4
     c48:	30630007 	andi	v1,v1,0x7
     c4c:	00031c00 	sll	v1,v1,0x10
     c50:	00031c03 	sra	v1,v1,0x10
     c54:	10610003 	beq	v1,at,c64 <func_80B9DE38+0x3c>
     c58:	24010003 	li	at,3
     c5c:	1461000c 	bne	v1,at,c90 <func_80B9DE38+0x68>
     c60:	00000000 	nop
     c64:	920e016e 	lbu	t6,366(s0)
     c68:	11c00009 	beqz	t6,c90 <func_80B9DE38+0x68>
     c6c:	00000000 	nop
     c70:	0c000000 	jal	0 <func_80B9D210>
     c74:	a7a30026 	sh	v1,38(sp)
     c78:	920f0002 	lbu	t7,2(s0)
     c7c:	87a30026 	lh	v1,38(sp)
     c80:	104f0003 	beq	v0,t7,c90 <func_80B9DE38+0x68>
     c84:	00000000 	nop
     c88:	8618016c 	lh	t8,364(s0)
     c8c:	1f00001a 	bgtz	t8,cf8 <func_80B9DE38+0xd0>
     c90:	3c010000 	lui	at,0x0
     c94:	c4260000 	lwc1	$f6,0(at)
     c98:	c6040054 	lwc1	$f4,84(s0)
     c9c:	3c010000 	lui	at,0x0
     ca0:	02002025 	move	a0,s0
     ca4:	46062200 	add.s	$f8,$f4,$f6
     ca8:	e6080054 	swc1	$f8,84(s0)
     cac:	c4300000 	lwc1	$f16,0(at)
     cb0:	c60a0054 	lwc1	$f10,84(s0)
     cb4:	460a803e 	c.le.s	$f16,$f10
     cb8:	00000000 	nop
     cbc:	4502000f 	bc1fl	cfc <func_80B9DE38+0xd4>
     cc0:	8fbf001c 	lw	ra,28(sp)
     cc4:	0c000000 	jal	0 <func_80B9D210>
     cc8:	a7a30026 	sh	v1,38(sp)
     ccc:	02002025 	move	a0,s0
     cd0:	0c000000 	jal	0 <func_80B9D210>
     cd4:	24052815 	li	a1,10261
     cd8:	87a30026 	lh	v1,38(sp)
     cdc:	24010001 	li	at,1
     ce0:	24050078 	li	a1,120
     ce4:	14610004 	bne	v1,at,cf8 <func_80B9DE38+0xd0>
     ce8:	24060014 	li	a2,20
     cec:	c60c008c 	lwc1	$f12,140(s0)
     cf0:	0c000000 	jal	0 <func_80B9D210>
     cf4:	2407000a 	li	a3,10
     cf8:	8fbf001c 	lw	ra,28(sp)
     cfc:	8fb00018 	lw	s0,24(sp)
     d00:	27bd0028 	addiu	sp,sp,40
     d04:	03e00008 	jr	ra
     d08:	00000000 	nop

00000d0c <func_80B9DF1C>:
     d0c:	908e0191 	lbu	t6,401(a0)
     d10:	31cf0002 	andi	t7,t6,0x2
     d14:	51e00017 	beqzl	t7,d74 <func_80B9DF1C+0x68>
     d18:	00001025 	move	v0,zero
     d1c:	9098017f 	lbu	t8,383(a0)
     d20:	33190002 	andi	t9,t8,0x2
     d24:	57200013 	bnezl	t9,d74 <func_80B9DF1C+0x68>
     d28:	00001025 	move	v0,zero
     d2c:	8c820188 	lw	v0,392(a0)
     d30:	50400010 	beqzl	v0,d74 <func_80B9DF1C+0x68>
     d34:	00001025 	move	v0,zero
     d38:	84480032 	lh	t0,50(v0)
     d3c:	848900b6 	lh	t1,182(a0)
     d40:	01091823 	subu	v1,t0,t1
     d44:	00031c00 	sll	v1,v1,0x10
     d48:	00031c03 	sra	v1,v1,0x10
     d4c:	04600003 	bltz	v1,d5c <func_80B9DF1C+0x50>
     d50:	00031023 	negu	v0,v1
     d54:	10000001 	b	d5c <func_80B9DF1C+0x50>
     d58:	00601025 	move	v0,v1
     d5c:	28415001 	slti	at,v0,20481
     d60:	54200004 	bnezl	at,d74 <func_80B9DF1C+0x68>
     d64:	00001025 	move	v0,zero
     d68:	03e00008 	jr	ra
     d6c:	24020001 	li	v0,1
     d70:	00001025 	move	v0,zero
     d74:	03e00008 	jr	ra
     d78:	00000000 	nop

00000d7c <func_80B9DF8C>:
     d7c:	3c0e0000 	lui	t6,0x0
     d80:	25ce0000 	addiu	t6,t6,0
     d84:	03e00008 	jr	ra
     d88:	ac8e0164 	sw	t6,356(a0)

00000d8c <func_80B9DF9C>:
     d8c:	27bdffe8 	addiu	sp,sp,-24
     d90:	00803025 	move	a2,a0
     d94:	afbf0014 	sw	ra,20(sp)
     d98:	00a02025 	move	a0,a1
     d9c:	84c5001c 	lh	a1,28(a2)
     da0:	afa60018 	sw	a2,24(sp)
     da4:	00052a03 	sra	a1,a1,0x8
     da8:	0c000000 	jal	0 <func_80B9D210>
     dac:	30a5003f 	andi	a1,a1,0x3f
     db0:	10400005 	beqz	v0,dc8 <func_80B9DF9C+0x3c>
     db4:	8fa60018 	lw	a2,24(sp)
     db8:	0c000000 	jal	0 <func_80B9D210>
     dbc:	00c02025 	move	a0,a2
     dc0:	10000004 	b	dd4 <func_80B9DF9C+0x48>
     dc4:	8fbf0014 	lw	ra,20(sp)
     dc8:	0c000000 	jal	0 <func_80B9D210>
     dcc:	00c02025 	move	a0,a2
     dd0:	8fbf0014 	lw	ra,20(sp)
     dd4:	27bd0018 	addiu	sp,sp,24
     dd8:	03e00008 	jr	ra
     ddc:	00000000 	nop

00000de0 <func_80B9DFF0>:
     de0:	3c0e0000 	lui	t6,0x0
     de4:	25ce0000 	addiu	t6,t6,0
     de8:	ac8e0164 	sw	t6,356(a0)
     dec:	03e00008 	jr	ra
     df0:	a4800170 	sh	zero,368(a0)

00000df4 <func_80B9E004>:
     df4:	27bdffe0 	addiu	sp,sp,-32
     df8:	afbf001c 	sw	ra,28(sp)
     dfc:	afb00018 	sw	s0,24(sp)
     e00:	00808025 	move	s0,a0
     e04:	0c000000 	jal	0 <func_80B9D210>
     e08:	afa50024 	sw	a1,36(sp)
     e0c:	14400006 	bnez	v0,e28 <func_80B9E004+0x34>
     e10:	00000000 	nop
     e14:	860e001c 	lh	t6,28(s0)
     e18:	000e79c3 	sra	t7,t6,0x7
     e1c:	31f80001 	andi	t8,t7,0x1
     e20:	5300000a 	beqzl	t8,e4c <func_80B9E004+0x58>
     e24:	8fbf001c 	lw	ra,28(sp)
     e28:	0c000000 	jal	0 <func_80B9D210>
     e2c:	02002025 	move	a0,s0
     e30:	02002025 	move	a0,s0
     e34:	0c000000 	jal	0 <func_80B9D210>
     e38:	8fa50024 	lw	a1,36(sp)
     e3c:	8619001c 	lh	t9,28(s0)
     e40:	3328ff7f 	andi	t0,t9,0xff7f
     e44:	a608001c 	sh	t0,28(s0)
     e48:	8fbf001c 	lw	ra,28(sp)
     e4c:	8fb00018 	lw	s0,24(sp)
     e50:	27bd0020 	addiu	sp,sp,32
     e54:	03e00008 	jr	ra
     e58:	00000000 	nop

00000e5c <func_80B9E06C>:
     e5c:	3c0e0000 	lui	t6,0x0
     e60:	25ce0000 	addiu	t6,t6,0
     e64:	240f0064 	li	t7,100
     e68:	ac8e0164 	sw	t6,356(a0)
     e6c:	03e00008 	jr	ra
     e70:	a48f016c 	sh	t7,364(a0)

00000e74 <func_80B9E084>:
     e74:	27bdffe8 	addiu	sp,sp,-24
     e78:	afbf0014 	sw	ra,20(sp)
     e7c:	afa5001c 	sw	a1,28(sp)
     e80:	908e016e 	lbu	t6,366(a0)
     e84:	51c0000b 	beqzl	t6,eb4 <func_80B9E084+0x40>
     e88:	84990170 	lh	t9,368(a0)
     e8c:	0c000000 	jal	0 <func_80B9D210>
     e90:	afa40018 	sw	a0,24(sp)
     e94:	8fa40018 	lw	a0,24(sp)
     e98:	908f0002 	lbu	t7,2(a0)
     e9c:	504f0005 	beql	v0,t7,eb4 <func_80B9E084+0x40>
     ea0:	84990170 	lh	t9,368(a0)
     ea4:	8498016c 	lh	t8,364(a0)
     ea8:	5f00000e 	bgtzl	t8,ee4 <func_80B9E084+0x70>
     eac:	8fbf0014 	lw	ra,20(sp)
     eb0:	84990170 	lh	t9,368(a0)
     eb4:	27280001 	addiu	t0,t9,1
     eb8:	a4880170 	sh	t0,368(a0)
     ebc:	84890170 	lh	t1,368(a0)
     ec0:	29210003 	slti	at,t1,3
     ec4:	54200007 	bnezl	at,ee4 <func_80B9E084+0x70>
     ec8:	8fbf0014 	lw	ra,20(sp)
     ecc:	0c000000 	jal	0 <func_80B9D210>
     ed0:	afa40018 	sw	a0,24(sp)
     ed4:	8fa40018 	lw	a0,24(sp)
     ed8:	0c000000 	jal	0 <func_80B9D210>
     edc:	24052815 	li	a1,10261
     ee0:	8fbf0014 	lw	ra,20(sp)
     ee4:	27bd0018 	addiu	sp,sp,24
     ee8:	03e00008 	jr	ra
     eec:	00000000 	nop

00000ef0 <func_80B9E100>:
     ef0:	3c0e0000 	lui	t6,0x0
     ef4:	25ce0000 	addiu	t6,t6,0
     ef8:	240f0003 	li	t7,3
     efc:	ac8e0164 	sw	t6,356(a0)
     f00:	03e00008 	jr	ra
     f04:	a48f0170 	sh	t7,368(a0)

00000f08 <func_80B9E118>:
     f08:	27bdffe0 	addiu	sp,sp,-32
     f0c:	afbf001c 	sw	ra,28(sp)
     f10:	afb00018 	sw	s0,24(sp)
     f14:	afa50024 	sw	a1,36(sp)
     f18:	8483001c 	lh	v1,28(a0)
     f1c:	00808025 	move	s0,a0
     f20:	8fa40024 	lw	a0,36(sp)
     f24:	00031103 	sra	v0,v1,0x4
     f28:	30420007 	andi	v0,v0,0x7
     f2c:	10400006 	beqz	v0,f48 <func_80B9E118+0x40>
     f30:	00032a03 	sra	a1,v1,0x8
     f34:	24010001 	li	at,1
     f38:	1041000d 	beq	v0,at,f70 <func_80B9E118+0x68>
     f3c:	00000000 	nop
     f40:	1000001d 	b	fb8 <func_80B9E118+0xb0>
     f44:	8fbf001c 	lw	ra,28(sp)
     f48:	0c000000 	jal	0 <func_80B9D210>
     f4c:	30a5003f 	andi	a1,a1,0x3f
     f50:	54400019 	bnezl	v0,fb8 <func_80B9E118+0xb0>
     f54:	8fbf001c 	lw	ra,28(sp)
     f58:	0c000000 	jal	0 <func_80B9D210>
     f5c:	02002025 	move	a0,s0
     f60:	860e001c 	lh	t6,28(s0)
     f64:	31cfff7f 	andi	t7,t6,0xff7f
     f68:	10000012 	b	fb4 <func_80B9E118+0xac>
     f6c:	a60f001c 	sh	t7,28(s0)
     f70:	0c000000 	jal	0 <func_80B9D210>
     f74:	02002025 	move	a0,s0
     f78:	14400006 	bnez	v0,f94 <func_80B9E118+0x8c>
     f7c:	00000000 	nop
     f80:	8618001c 	lh	t8,28(s0)
     f84:	0018c9c3 	sra	t9,t8,0x7
     f88:	33280001 	andi	t0,t9,0x1
     f8c:	5100000a 	beqzl	t0,fb8 <func_80B9E118+0xb0>
     f90:	8fbf001c 	lw	ra,28(sp)
     f94:	0c000000 	jal	0 <func_80B9D210>
     f98:	02002025 	move	a0,s0
     f9c:	02002025 	move	a0,s0
     fa0:	0c000000 	jal	0 <func_80B9D210>
     fa4:	8fa50024 	lw	a1,36(sp)
     fa8:	8609001c 	lh	t1,28(s0)
     fac:	312aff7f 	andi	t2,t1,0xff7f
     fb0:	a60a001c 	sh	t2,28(s0)
     fb4:	8fbf001c 	lw	ra,28(sp)
     fb8:	8fb00018 	lw	s0,24(sp)
     fbc:	27bd0020 	addiu	sp,sp,32
     fc0:	03e00008 	jr	ra
     fc4:	00000000 	nop

00000fc8 <func_80B9E1D8>:
     fc8:	3c0e0000 	lui	t6,0x0
     fcc:	25ce0000 	addiu	t6,t6,0
     fd0:	240f0064 	li	t7,100
     fd4:	ac8e0164 	sw	t6,356(a0)
     fd8:	03e00008 	jr	ra
     fdc:	a48f016c 	sh	t7,364(a0)

00000fe0 <func_80B9E1F0>:
     fe0:	27bdffe8 	addiu	sp,sp,-24
     fe4:	afbf0014 	sw	ra,20(sp)
     fe8:	afa5001c 	sw	a1,28(sp)
     fec:	848e001c 	lh	t6,28(a0)
     ff0:	24010001 	li	at,1
     ff4:	000e7903 	sra	t7,t6,0x4
     ff8:	31f80007 	andi	t8,t7,0x7
     ffc:	5701000e 	bnel	t8,at,1038 <func_80B9E1F0+0x58>
    1000:	848a0170 	lh	t2,368(a0)
    1004:	9099016e 	lbu	t9,366(a0)
    1008:	5320000b 	beqzl	t9,1038 <func_80B9E1F0+0x58>
    100c:	848a0170 	lh	t2,368(a0)
    1010:	0c000000 	jal	0 <func_80B9D210>
    1014:	afa40018 	sw	a0,24(sp)
    1018:	8fa40018 	lw	a0,24(sp)
    101c:	90880002 	lbu	t0,2(a0)
    1020:	50480005 	beql	v0,t0,1038 <func_80B9E1F0+0x58>
    1024:	848a0170 	lh	t2,368(a0)
    1028:	8489016c 	lh	t1,364(a0)
    102c:	5d20000d 	bgtzl	t1,1064 <func_80B9E1F0+0x84>
    1030:	8fbf0014 	lw	ra,20(sp)
    1034:	848a0170 	lh	t2,368(a0)
    1038:	254bffff 	addiu	t3,t2,-1
    103c:	a48b0170 	sh	t3,368(a0)
    1040:	848c0170 	lh	t4,368(a0)
    1044:	5d800007 	bgtzl	t4,1064 <func_80B9E1F0+0x84>
    1048:	8fbf0014 	lw	ra,20(sp)
    104c:	0c000000 	jal	0 <func_80B9D210>
    1050:	afa40018 	sw	a0,24(sp)
    1054:	8fa40018 	lw	a0,24(sp)
    1058:	0c000000 	jal	0 <func_80B9D210>
    105c:	24052815 	li	a1,10261
    1060:	8fbf0014 	lw	ra,20(sp)
    1064:	27bd0018 	addiu	sp,sp,24
    1068:	03e00008 	jr	ra
    106c:	00000000 	nop

00001070 <func_80B9E280>:
    1070:	3c0e0501 	lui	t6,0x501
    1074:	3c0f0000 	lui	t7,0x0
    1078:	25ce44b0 	addiu	t6,t6,17584
    107c:	25ef0000 	addiu	t7,t7,0
    1080:	a080017c 	sb	zero,380(a0)
    1084:	a080017d 	sb	zero,381(a0)
    1088:	a080017e 	sb	zero,382(a0)
    108c:	ac8e0174 	sw	t6,372(a0)
    1090:	03e00008 	jr	ra
    1094:	ac8f0164 	sw	t7,356(a0)

00001098 <func_80B9E2A8>:
    1098:	27bdffe0 	addiu	sp,sp,-32
    109c:	afbf001c 	sw	ra,28(sp)
    10a0:	afb00018 	sw	s0,24(sp)
    10a4:	8483001c 	lh	v1,28(a0)
    10a8:	00808025 	move	s0,a0
    10ac:	00a03025 	move	a2,a1
    10b0:	00031103 	sra	v0,v1,0x4
    10b4:	30420007 	andi	v0,v0,0x7
    10b8:	10400007 	beqz	v0,10d8 <func_80B9E2A8+0x40>
    10bc:	24010001 	li	at,1
    10c0:	1041002a 	beq	v0,at,116c <func_80B9E2A8+0xd4>
    10c4:	24010004 	li	at,4
    10c8:	50410013 	beql	v0,at,1118 <func_80B9E2A8+0x80>
    10cc:	92080191 	lbu	t0,401(s0)
    10d0:	1000003a 	b	11bc <func_80B9E2A8+0x124>
    10d4:	8fbf001c 	lw	ra,28(sp)
    10d8:	920e0191 	lbu	t6,401(s0)
    10dc:	31cf0002 	andi	t7,t6,0x2
    10e0:	51e00036 	beqzl	t7,11bc <func_80B9E2A8+0x124>
    10e4:	8fbf001c 	lw	ra,28(sp)
    10e8:	8618016a 	lh	t8,362(s0)
    10ec:	2419000a 	li	t9,10
    10f0:	02002025 	move	a0,s0
    10f4:	1f000030 	bgtz	t8,11b8 <func_80B9E2A8+0x120>
    10f8:	00c02825 	move	a1,a2
    10fc:	0c000000 	jal	0 <func_80B9D210>
    1100:	a619016a 	sh	t9,362(s0)
    1104:	0c000000 	jal	0 <func_80B9D210>
    1108:	02002025 	move	a0,s0
    110c:	1000002b 	b	11bc <func_80B9E2A8+0x124>
    1110:	8fbf001c 	lw	ra,28(sp)
    1114:	92080191 	lbu	t0,401(s0)
    1118:	00032a03 	sra	a1,v1,0x8
    111c:	30a5003f 	andi	a1,a1,0x3f
    1120:	31090002 	andi	t1,t0,0x2
    1124:	11200004 	beqz	t1,1138 <func_80B9E2A8+0xa0>
    1128:	00c02025 	move	a0,a2
    112c:	860a016a 	lh	t2,362(s0)
    1130:	59400006 	blezl	t2,114c <func_80B9E2A8+0xb4>
    1134:	240b000a 	li	t3,10
    1138:	0c000000 	jal	0 <func_80B9D210>
    113c:	afa60024 	sw	a2,36(sp)
    1140:	1040001d 	beqz	v0,11b8 <func_80B9E2A8+0x120>
    1144:	8fa60024 	lw	a2,36(sp)
    1148:	240b000a 	li	t3,10
    114c:	a60b016a 	sh	t3,362(s0)
    1150:	02002025 	move	a0,s0
    1154:	0c000000 	jal	0 <func_80B9D210>
    1158:	00c02825 	move	a1,a2
    115c:	0c000000 	jal	0 <func_80B9D210>
    1160:	02002025 	move	a0,s0
    1164:	10000015 	b	11bc <func_80B9E2A8+0x124>
    1168:	8fbf001c 	lw	ra,28(sp)
    116c:	920c0191 	lbu	t4,401(s0)
    1170:	318d0002 	andi	t5,t4,0x2
    1174:	11a0000e 	beqz	t5,11b0 <func_80B9E2A8+0x118>
    1178:	00000000 	nop
    117c:	920e017f 	lbu	t6,383(s0)
    1180:	31cf0002 	andi	t7,t6,0x2
    1184:	15e0000a 	bnez	t7,11b0 <func_80B9E2A8+0x118>
    1188:	00000000 	nop
    118c:	8618016a 	lh	t8,362(s0)
    1190:	2419000a 	li	t9,10
    1194:	02002025 	move	a0,s0
    1198:	1f000005 	bgtz	t8,11b0 <func_80B9E2A8+0x118>
    119c:	00c02825 	move	a1,a2
    11a0:	0c000000 	jal	0 <func_80B9D210>
    11a4:	a619016a 	sh	t9,362(s0)
    11a8:	0c000000 	jal	0 <func_80B9D210>
    11ac:	02002025 	move	a0,s0
    11b0:	0c000000 	jal	0 <func_80B9D210>
    11b4:	02002025 	move	a0,s0
    11b8:	8fbf001c 	lw	ra,28(sp)
    11bc:	8fb00018 	lw	s0,24(sp)
    11c0:	27bd0020 	addiu	sp,sp,32
    11c4:	03e00008 	jr	ra
    11c8:	00000000 	nop

000011cc <func_80B9E3DC>:
    11cc:	3c0e0000 	lui	t6,0x0
    11d0:	25ce0000 	addiu	t6,t6,0
    11d4:	240f0064 	li	t7,100
    11d8:	ac8e0164 	sw	t6,356(a0)
    11dc:	03e00008 	jr	ra
    11e0:	a48f016c 	sh	t7,364(a0)

000011e4 <func_80B9E3F4>:
    11e4:	27bdffe0 	addiu	sp,sp,-32
    11e8:	afbf001c 	sw	ra,28(sp)
    11ec:	afb00018 	sw	s0,24(sp)
    11f0:	afa50024 	sw	a1,36(sp)
    11f4:	908e016e 	lbu	t6,366(a0)
    11f8:	00808025 	move	s0,a0
    11fc:	11c00009 	beqz	t6,1224 <func_80B9E3F4+0x40>
    1200:	00000000 	nop
    1204:	0c000000 	jal	0 <func_80B9D210>
    1208:	00000000 	nop
    120c:	920f0002 	lbu	t7,2(s0)
    1210:	104f0004 	beq	v0,t7,1224 <func_80B9E3F4+0x40>
    1214:	00000000 	nop
    1218:	8618016c 	lh	t8,364(s0)
    121c:	5f00000f 	bgtzl	t8,125c <func_80B9E3F4+0x78>
    1220:	8fbf001c 	lw	ra,28(sp)
    1224:	0c000000 	jal	0 <func_80B9D210>
    1228:	02002025 	move	a0,s0
    122c:	8619001c 	lh	t9,28(s0)
    1230:	24010001 	li	at,1
    1234:	00194103 	sra	t0,t9,0x4
    1238:	31090007 	andi	t1,t0,0x7
    123c:	55210004 	bnel	t1,at,1250 <func_80B9E3F4+0x6c>
    1240:	02002025 	move	a0,s0
    1244:	0c000000 	jal	0 <func_80B9D210>
    1248:	02002025 	move	a0,s0
    124c:	02002025 	move	a0,s0
    1250:	0c000000 	jal	0 <func_80B9D210>
    1254:	240528ba 	li	a1,10426
    1258:	8fbf001c 	lw	ra,28(sp)
    125c:	8fb00018 	lw	s0,24(sp)
    1260:	27bd0020 	addiu	sp,sp,32
    1264:	03e00008 	jr	ra
    1268:	00000000 	nop

0000126c <func_80B9E47C>:
    126c:	240200ff 	li	v0,255
    1270:	3c0e0501 	lui	t6,0x501
    1274:	3c0f0000 	lui	t7,0x0
    1278:	25ce4cb0 	addiu	t6,t6,19632
    127c:	25ef0000 	addiu	t7,t7,0
    1280:	a082017c 	sb	v0,380(a0)
    1284:	a082017d 	sb	v0,381(a0)
    1288:	a082017e 	sb	v0,382(a0)
    128c:	ac8e0174 	sw	t6,372(a0)
    1290:	03e00008 	jr	ra
    1294:	ac8f0164 	sw	t7,356(a0)

00001298 <func_80B9E4A8>:
    1298:	27bdffe0 	addiu	sp,sp,-32
    129c:	afbf001c 	sw	ra,28(sp)
    12a0:	afb00018 	sw	s0,24(sp)
    12a4:	8483001c 	lh	v1,28(a0)
    12a8:	00808025 	move	s0,a0
    12ac:	00a03025 	move	a2,a1
    12b0:	00031103 	sra	v0,v1,0x4
    12b4:	30420007 	andi	v0,v0,0x7
    12b8:	10400004 	beqz	v0,12cc <func_80B9E4A8+0x34>
    12bc:	24010001 	li	at,1
    12c0:	1041000c 	beq	v0,at,12f4 <func_80B9E4A8+0x5c>
    12c4:	24010004 	li	at,4
    12c8:	1441001d 	bne	v0,at,1340 <func_80B9E4A8+0xa8>
    12cc:	00032a03 	sra	a1,v1,0x8
    12d0:	30a5003f 	andi	a1,a1,0x3f
    12d4:	0c000000 	jal	0 <func_80B9D210>
    12d8:	00c02025 	move	a0,a2
    12dc:	14400018 	bnez	v0,1340 <func_80B9E4A8+0xa8>
    12e0:	00000000 	nop
    12e4:	0c000000 	jal	0 <func_80B9D210>
    12e8:	02002025 	move	a0,s0
    12ec:	10000014 	b	1340 <func_80B9E4A8+0xa8>
    12f0:	00000000 	nop
    12f4:	920e0191 	lbu	t6,401(s0)
    12f8:	31cf0002 	andi	t7,t6,0x2
    12fc:	11e00010 	beqz	t7,1340 <func_80B9E4A8+0xa8>
    1300:	00000000 	nop
    1304:	9218017f 	lbu	t8,383(s0)
    1308:	33190002 	andi	t9,t8,0x2
    130c:	1720000c 	bnez	t9,1340 <func_80B9E4A8+0xa8>
    1310:	00000000 	nop
    1314:	8608016a 	lh	t0,362(s0)
    1318:	2409000a 	li	t1,10
    131c:	02002025 	move	a0,s0
    1320:	1d000007 	bgtz	t0,1340 <func_80B9E4A8+0xa8>
    1324:	00000000 	nop
    1328:	a609016a 	sh	t1,362(s0)
    132c:	0c000000 	jal	0 <func_80B9D210>
    1330:	afa60024 	sw	a2,36(sp)
    1334:	8fa50024 	lw	a1,36(sp)
    1338:	0c000000 	jal	0 <func_80B9D210>
    133c:	02002025 	move	a0,s0
    1340:	0c000000 	jal	0 <func_80B9D210>
    1344:	02002025 	move	a0,s0
    1348:	8fbf001c 	lw	ra,28(sp)
    134c:	8fb00018 	lw	s0,24(sp)
    1350:	27bd0020 	addiu	sp,sp,32
    1354:	03e00008 	jr	ra
    1358:	00000000 	nop

0000135c <func_80B9E56C>:
    135c:	3c0e0000 	lui	t6,0x0
    1360:	25ce0000 	addiu	t6,t6,0
    1364:	240f0064 	li	t7,100
    1368:	ac8e0164 	sw	t6,356(a0)
    136c:	03e00008 	jr	ra
    1370:	a48f016c 	sh	t7,364(a0)

00001374 <func_80B9E584>:
    1374:	27bdffe0 	addiu	sp,sp,-32
    1378:	afbf001c 	sw	ra,28(sp)
    137c:	afb00018 	sw	s0,24(sp)
    1380:	afa50024 	sw	a1,36(sp)
    1384:	848e001c 	lh	t6,28(a0)
    1388:	24010001 	li	at,1
    138c:	00808025 	move	s0,a0
    1390:	000e7903 	sra	t7,t6,0x4
    1394:	31f80007 	andi	t8,t7,0x7
    1398:	1701000c 	bne	t8,at,13cc <func_80B9E584+0x58>
    139c:	00000000 	nop
    13a0:	9099016e 	lbu	t9,366(a0)
    13a4:	13200009 	beqz	t9,13cc <func_80B9E584+0x58>
    13a8:	00000000 	nop
    13ac:	0c000000 	jal	0 <func_80B9D210>
    13b0:	00000000 	nop
    13b4:	92080002 	lbu	t0,2(s0)
    13b8:	10480004 	beq	v0,t0,13cc <func_80B9E584+0x58>
    13bc:	00000000 	nop
    13c0:	8609016c 	lh	t1,364(s0)
    13c4:	5d200009 	bgtzl	t1,13ec <func_80B9E584+0x78>
    13c8:	8fbf001c 	lw	ra,28(sp)
    13cc:	0c000000 	jal	0 <func_80B9D210>
    13d0:	02002025 	move	a0,s0
    13d4:	0c000000 	jal	0 <func_80B9D210>
    13d8:	02002025 	move	a0,s0
    13dc:	02002025 	move	a0,s0
    13e0:	0c000000 	jal	0 <func_80B9D210>
    13e4:	240528ba 	li	a1,10426
    13e8:	8fbf001c 	lw	ra,28(sp)
    13ec:	8fb00018 	lw	s0,24(sp)
    13f0:	27bd0020 	addiu	sp,sp,32
    13f4:	03e00008 	jr	ra
    13f8:	00000000 	nop

000013fc <ObjSwitch_Update>:
    13fc:	27bdffe0 	addiu	sp,sp,-32
    1400:	afbf001c 	sw	ra,28(sp)
    1404:	afb00018 	sw	s0,24(sp)
    1408:	84820168 	lh	v0,360(a0)
    140c:	00a08025 	move	s0,a1
    1410:	00803825 	move	a3,a0
    1414:	18400002 	blez	v0,1420 <ObjSwitch_Update+0x24>
    1418:	244effff 	addiu	t6,v0,-1
    141c:	a48e0168 	sh	t6,360(a0)
    1420:	84e2016c 	lh	v0,364(a3)
    1424:	18400002 	blez	v0,1430 <ObjSwitch_Update+0x34>
    1428:	244fffff 	addiu	t7,v0,-1
    142c:	a4ef016c 	sh	t7,364(a3)
    1430:	afa70020 	sw	a3,32(sp)
    1434:	8cf90164 	lw	t9,356(a3)
    1438:	00e02025 	move	a0,a3
    143c:	02002825 	move	a1,s0
    1440:	0320f809 	jalr	t9
    1444:	00000000 	nop
    1448:	8fa70020 	lw	a3,32(sp)
    144c:	84f8001c 	lh	t8,28(a3)
    1450:	33080007 	andi	t0,t8,0x7
    1454:	2d010005 	sltiu	at,t0,5
    1458:	10200032 	beqz	at,1524 <L80B9E6C0+0x74>
    145c:	00084080 	sll	t0,t0,0x2
    1460:	3c010000 	lui	at,0x0
    1464:	00280821 	addu	at,at,t0
    1468:	8c280000 	lw	t0,0(at)
    146c:	01000008 	jr	t0
    1470:	00000000 	nop

00001474 <L80B9E684>:
    1474:	90e90160 	lbu	t1,352(a3)
    1478:	1000002a 	b	1524 <L80B9E6C0+0x74>
    147c:	a0e9017f 	sb	t1,383(a3)

00001480 <L80B9E690>:
    1480:	90e20191 	lbu	v0,401(a3)
    1484:	3c010001 	lui	at,0x1
    1488:	34211e60 	ori	at,at,0x1e60
    148c:	304afffd 	andi	t2,v0,0xfffd
    1490:	a0ea0191 	sb	t2,401(a3)
    1494:	02012821 	addu	a1,s0,at
    1498:	02002025 	move	a0,s0
    149c:	24e60180 	addiu	a2,a3,384
    14a0:	0c000000 	jal	0 <func_80B9D210>
    14a4:	a0e2017f 	sb	v0,383(a3)
    14a8:	1000001f 	b	1528 <L80B9E6C0+0x78>
    14ac:	8fbf001c 	lw	ra,28(sp)

000014b0 <L80B9E6C0>:
    14b0:	02002025 	move	a0,s0
    14b4:	0c000000 	jal	0 <func_80B9D210>
    14b8:	afa70020 	sw	a3,32(sp)
    14bc:	14400005 	bnez	v0,14d4 <L80B9E6C0+0x24>
    14c0:	8fa70020 	lw	a3,32(sp)
    14c4:	84e2016a 	lh	v0,362(a3)
    14c8:	18400002 	blez	v0,14d4 <L80B9E6C0+0x24>
    14cc:	244bffff 	addiu	t3,v0,-1
    14d0:	a4eb016a 	sh	t3,362(a3)
    14d4:	90e20191 	lbu	v0,401(a3)
    14d8:	84ed016a 	lh	t5,362(a3)
    14dc:	02002025 	move	a0,s0
    14e0:	304cfffd 	andi	t4,v0,0xfffd
    14e4:	a0ec0191 	sb	t4,401(a3)
    14e8:	1da00008 	bgtz	t5,150c <L80B9E6C0+0x5c>
    14ec:	a0e2017f 	sb	v0,383(a3)
    14f0:	3c010001 	lui	at,0x1
    14f4:	34211e60 	ori	at,at,0x1e60
    14f8:	02012821 	addu	a1,s0,at
    14fc:	24e60180 	addiu	a2,a3,384
    1500:	0c000000 	jal	0 <func_80B9D210>
    1504:	afa70020 	sw	a3,32(sp)
    1508:	8fa70020 	lw	a3,32(sp)
    150c:	3c010001 	lui	at,0x1
    1510:	34211e60 	ori	at,at,0x1e60
    1514:	02012821 	addu	a1,s0,at
    1518:	02002025 	move	a0,s0
    151c:	0c000000 	jal	0 <func_80B9D210>
    1520:	24e60180 	addiu	a2,a3,384
    1524:	8fbf001c 	lw	ra,28(sp)
    1528:	8fb00018 	lw	s0,24(sp)
    152c:	27bd0020 	addiu	sp,sp,32
    1530:	03e00008 	jr	ra
    1534:	00000000 	nop

00001538 <func_80B9E748>:
    1538:	27bdffe8 	addiu	sp,sp,-24
    153c:	afbf0014 	sw	ra,20(sp)
    1540:	00803825 	move	a3,a0
    1544:	84ee001c 	lh	t6,28(a3)
    1548:	00a02025 	move	a0,a1
    154c:	3c050000 	lui	a1,0x0
    1550:	000e7903 	sra	t7,t6,0x4
    1554:	31f80007 	andi	t8,t7,0x7
    1558:	0018c880 	sll	t9,t8,0x2
    155c:	00b92821 	addu	a1,a1,t9
    1560:	0c000000 	jal	0 <func_80B9D210>
    1564:	8ca50000 	lw	a1,0(a1)
    1568:	8fbf0014 	lw	ra,20(sp)
    156c:	27bd0018 	addiu	sp,sp,24
    1570:	03e00008 	jr	ra
    1574:	00000000 	nop

00001578 <func_80B9E788>:
    1578:	27bdffe8 	addiu	sp,sp,-24
    157c:	afa40018 	sw	a0,24(sp)
    1580:	00a02025 	move	a0,a1
    1584:	afbf0014 	sw	ra,20(sp)
    1588:	3c050500 	lui	a1,0x500
    158c:	0c000000 	jal	0 <func_80B9D210>
    1590:	24a55ad0 	addiu	a1,a1,23248
    1594:	8fbf0014 	lw	ra,20(sp)
    1598:	27bd0018 	addiu	sp,sp,24
    159c:	03e00008 	jr	ra
    15a0:	00000000 	nop

000015a4 <func_80B9E7B4>:
    15a4:	27bdffb0 	addiu	sp,sp,-80
    15a8:	afbf001c 	sw	ra,28(sp)
    15ac:	afb00018 	sw	s0,24(sp)
    15b0:	afa40050 	sw	a0,80(sp)
    15b4:	afa50054 	sw	a1,84(sp)
    15b8:	848f001c 	lh	t7,28(a0)
    15bc:	3c060000 	lui	a2,0x0
    15c0:	24c60000 	addiu	a2,a2,0
    15c4:	000fc103 	sra	t8,t7,0x4
    15c8:	33190007 	andi	t9,t8,0x7
    15cc:	afb90048 	sw	t9,72(sp)
    15d0:	8ca50000 	lw	a1,0(a1)
    15d4:	27a40034 	addiu	a0,sp,52
    15d8:	240705b3 	li	a3,1459
    15dc:	0c000000 	jal	0 <func_80B9D210>
    15e0:	00a08025 	move	s0,a1
    15e4:	8fa90054 	lw	t1,84(sp)
    15e8:	0c000000 	jal	0 <func_80B9D210>
    15ec:	8d240000 	lw	a0,0(t1)
    15f0:	8e0202c0 	lw	v0,704(s0)
    15f4:	3c0bda38 	lui	t3,0xda38
    15f8:	356b0003 	ori	t3,t3,0x3
    15fc:	244a0008 	addiu	t2,v0,8
    1600:	ae0a02c0 	sw	t2,704(s0)
    1604:	ac4b0000 	sw	t3,0(v0)
    1608:	8fac0054 	lw	t4,84(sp)
    160c:	3c050000 	lui	a1,0x0
    1610:	24a50000 	addiu	a1,a1,0
    1614:	8d840000 	lw	a0,0(t4)
    1618:	240605b6 	li	a2,1462
    161c:	0c000000 	jal	0 <func_80B9D210>
    1620:	afa20030 	sw	v0,48(sp)
    1624:	8fa30030 	lw	v1,48(sp)
    1628:	3c0edb06 	lui	t6,0xdb06
    162c:	35ce0020 	ori	t6,t6,0x20
    1630:	ac620004 	sw	v0,4(v1)
    1634:	8e0202c0 	lw	v0,704(s0)
    1638:	8fa50048 	lw	a1,72(sp)
    163c:	3c040000 	lui	a0,0x0
    1640:	244d0008 	addiu	t5,v0,8
    1644:	ae0d02c0 	sw	t5,704(s0)
    1648:	ac4e0000 	sw	t6,0(v0)
    164c:	8fb80050 	lw	t8,80(sp)
    1650:	00057900 	sll	t7,a1,0x4
    1654:	3c0e0000 	lui	t6,0x0
    1658:	87190170 	lh	t9,368(t8)
    165c:	3c0100ff 	lui	at,0xff
    1660:	3421ffff 	ori	at,at,0xffff
    1664:	00194080 	sll	t0,t9,0x2
    1668:	01e84821 	addu	t1,t7,t0
    166c:	00892021 	addu	a0,a0,t1
    1670:	8c840000 	lw	a0,0(a0)
    1674:	3c08de00 	lui	t0,0xde00
    1678:	00054880 	sll	t1,a1,0x2
    167c:	00045900 	sll	t3,a0,0x4
    1680:	000b6702 	srl	t4,t3,0x1c
    1684:	000c6880 	sll	t5,t4,0x2
    1688:	01cd7021 	addu	t6,t6,t5
    168c:	8dce0000 	lw	t6,0(t6)
    1690:	00815024 	and	t2,a0,at
    1694:	3c018000 	lui	at,0x8000
    1698:	014ec021 	addu	t8,t2,t6
    169c:	0301c821 	addu	t9,t8,at
    16a0:	ac590004 	sw	t9,4(v0)
    16a4:	8e0202c0 	lw	v0,704(s0)
    16a8:	3c0b0000 	lui	t3,0x0
    16ac:	01695821 	addu	t3,t3,t1
    16b0:	244f0008 	addiu	t7,v0,8
    16b4:	ae0f02c0 	sw	t7,704(s0)
    16b8:	ac480000 	sw	t0,0(v0)
    16bc:	8d6b0000 	lw	t3,0(t3)
    16c0:	3c060000 	lui	a2,0x0
    16c4:	24c60000 	addiu	a2,a2,0
    16c8:	ac4b0004 	sw	t3,4(v0)
    16cc:	8fac0054 	lw	t4,84(sp)
    16d0:	27a40034 	addiu	a0,sp,52
    16d4:	240705bf 	li	a3,1471
    16d8:	0c000000 	jal	0 <func_80B9D210>
    16dc:	8d850000 	lw	a1,0(t4)
    16e0:	8fbf001c 	lw	ra,28(sp)
    16e4:	8fb00018 	lw	s0,24(sp)
    16e8:	27bd0050 	addiu	sp,sp,80
    16ec:	03e00008 	jr	ra
    16f0:	00000000 	nop

000016f4 <func_80B9E904>:
    16f4:	27bdff60 	addiu	sp,sp,-160
    16f8:	afbf003c 	sw	ra,60(sp)
    16fc:	afb10038 	sw	s1,56(sp)
    1700:	afb00034 	sw	s0,52(sp)
    1704:	848e001c 	lh	t6,28(a0)
    1708:	00808025 	move	s0,a0
    170c:	00a08825 	move	s1,a1
    1710:	000e7903 	sra	t7,t6,0x4
    1714:	31f80007 	andi	t8,t7,0x7
    1718:	afb80094 	sw	t8,148(sp)
    171c:	0c000000 	jal	0 <func_80B9D210>
    1720:	00003025 	move	a2,zero
    1724:	8e250000 	lw	a1,0(s1)
    1728:	3c060000 	lui	a2,0x0
    172c:	24c60000 	addiu	a2,a2,0
    1730:	27a40080 	addiu	a0,sp,128
    1734:	240705d6 	li	a3,1494
    1738:	0c000000 	jal	0 <func_80B9D210>
    173c:	afa50090 	sw	a1,144(sp)
    1740:	0c000000 	jal	0 <func_80B9D210>
    1744:	8e240000 	lw	a0,0(s1)
    1748:	8fa70090 	lw	a3,144(sp)
    174c:	3c0ada38 	lui	t2,0xda38
    1750:	354a0003 	ori	t2,t2,0x3
    1754:	8ce202d0 	lw	v0,720(a3)
    1758:	3c050000 	lui	a1,0x0
    175c:	24a50000 	addiu	a1,a1,0
    1760:	24590008 	addiu	t9,v0,8
    1764:	acf902d0 	sw	t9,720(a3)
    1768:	ac4a0000 	sw	t2,0(v0)
    176c:	8e240000 	lw	a0,0(s1)
    1770:	240605d9 	li	a2,1497
    1774:	0c000000 	jal	0 <func_80B9D210>
    1778:	afa2007c 	sw	v0,124(sp)
    177c:	8fa3007c 	lw	v1,124(sp)
    1780:	3c0dde00 	lui	t5,0xde00
    1784:	3c0e0000 	lui	t6,0x0
    1788:	ac620004 	sw	v0,4(v1)
    178c:	8fab0090 	lw	t3,144(sp)
    1790:	25ce0000 	addiu	t6,t6,0
    1794:	3c060000 	lui	a2,0x0
    1798:	8d6202d0 	lw	v0,720(t3)
    179c:	24c60000 	addiu	a2,a2,0
    17a0:	27a40080 	addiu	a0,sp,128
    17a4:	244c0008 	addiu	t4,v0,8
    17a8:	ad6c02d0 	sw	t4,720(t3)
    17ac:	ac4d0000 	sw	t5,0(v0)
    17b0:	8fa80094 	lw	t0,148(sp)
    17b4:	240705de 	li	a3,1502
    17b8:	00084080 	sll	t0,t0,0x2
    17bc:	010e4821 	addu	t1,t0,t6
    17c0:	8d2f0000 	lw	t7,0(t1)
    17c4:	ac4f0004 	sw	t7,4(v0)
    17c8:	8e250000 	lw	a1,0(s1)
    17cc:	afa90048 	sw	t1,72(sp)
    17d0:	0c000000 	jal	0 <func_80B9D210>
    17d4:	afa8004c 	sw	t0,76(sp)
    17d8:	8e250000 	lw	a1,0(s1)
    17dc:	3c060000 	lui	a2,0x0
    17e0:	24c60000 	addiu	a2,a2,0
    17e4:	27a40064 	addiu	a0,sp,100
    17e8:	240705e3 	li	a3,1507
    17ec:	0c000000 	jal	0 <func_80B9D210>
    17f0:	afa50074 	sw	a1,116(sp)
    17f4:	0c000000 	jal	0 <func_80B9D210>
    17f8:	8e240000 	lw	a0,0(s1)
    17fc:	8fa80074 	lw	t0,116(sp)
    1800:	3c19da38 	lui	t9,0xda38
    1804:	37390003 	ori	t9,t9,0x3
    1808:	8d0202c0 	lw	v0,704(t0)
    180c:	3c050000 	lui	a1,0x0
    1810:	24a50000 	addiu	a1,a1,0
    1814:	24580008 	addiu	t8,v0,8
    1818:	ad1802c0 	sw	t8,704(t0)
    181c:	ac590000 	sw	t9,0(v0)
    1820:	8e240000 	lw	a0,0(s1)
    1824:	240605e7 	li	a2,1511
    1828:	afa80074 	sw	t0,116(sp)
    182c:	0c000000 	jal	0 <func_80B9D210>
    1830:	afa20060 	sw	v0,96(sp)
    1834:	8fa30060 	lw	v1,96(sp)
    1838:	8fa80074 	lw	t0,116(sp)
    183c:	3c0c0000 	lui	t4,0x0
    1840:	ac620004 	sw	v0,4(v1)
    1844:	8faa0048 	lw	t2,72(sp)
    1848:	258c0000 	addiu	t4,t4,0
    184c:	3c0ddb06 	lui	t5,0xdb06
    1850:	554c0015 	bnel	t2,t4,18a8 <func_80B9E904+0x1b4>
    1854:	8d0202c0 	lw	v0,704(t0)
    1858:	8d0202c0 	lw	v0,704(t0)
    185c:	35ad0024 	ori	t5,t5,0x24
    1860:	3c190000 	lui	t9,0x0
    1864:	244b0008 	addiu	t3,v0,8
    1868:	ad0b02c0 	sw	t3,704(t0)
    186c:	ac4d0000 	sw	t5,0(v0)
    1870:	8e040174 	lw	a0,372(s0)
    1874:	3c0100ff 	lui	at,0xff
    1878:	3421ffff 	ori	at,at,0xffff
    187c:	00047100 	sll	t6,a0,0x4
    1880:	000e7f02 	srl	t7,t6,0x1c
    1884:	000fc080 	sll	t8,t7,0x2
    1888:	0338c821 	addu	t9,t9,t8
    188c:	8f390000 	lw	t9,0(t9)
    1890:	00815024 	and	t2,a0,at
    1894:	3c018000 	lui	at,0x8000
    1898:	032a6021 	addu	t4,t9,t2
    189c:	01815821 	addu	t3,t4,at
    18a0:	ac4b0004 	sw	t3,4(v0)
    18a4:	8d0202c0 	lw	v0,704(t0)
    18a8:	3c0efb00 	lui	t6,0xfb00
    18ac:	00002825 	move	a1,zero
    18b0:	244d0008 	addiu	t5,v0,8
    18b4:	ad0d02c0 	sw	t5,704(t0)
    18b8:	ac4e0000 	sw	t6,0(v0)
    18bc:	9218017c 	lbu	t8,380(s0)
    18c0:	920c017d 	lbu	t4,381(s0)
    18c4:	920f017e 	lbu	t7,382(s0)
    18c8:	0018ce00 	sll	t9,t8,0x18
    18cc:	000c5c00 	sll	t3,t4,0x10
    18d0:	032b6825 	or	t5,t9,t3
    18d4:	000fc200 	sll	t8,t7,0x8
    18d8:	01b85025 	or	t2,t5,t8
    18dc:	354c0080 	ori	t4,t2,0x80
    18e0:	ac4c0004 	sw	t4,4(v0)
    18e4:	8d0202c0 	lw	v0,704(t0)
    18e8:	3c0bdb06 	lui	t3,0xdb06
    18ec:	356b0020 	ori	t3,t3,0x20
    18f0:	24590008 	addiu	t9,v0,8
    18f4:	ad1902c0 	sw	t9,704(t0)
    18f8:	ac4b0000 	sw	t3,0(v0)
    18fc:	92070179 	lbu	a3,377(s0)
    1900:	92060178 	lbu	a2,376(s0)
    1904:	8e240000 	lw	a0,0(s1)
    1908:	240d0001 	li	t5,1
    190c:	240f0020 	li	t7,32
    1910:	240e0020 	li	t6,32
    1914:	afae0010 	sw	t6,16(sp)
    1918:	afaf0014 	sw	t7,20(sp)
    191c:	afad0018 	sw	t5,24(sp)
    1920:	9218017a 	lbu	t8,378(s0)
    1924:	24190020 	li	t9,32
    1928:	240c0020 	li	t4,32
    192c:	afb8001c 	sw	t8,28(sp)
    1930:	920a017b 	lbu	t2,379(s0)
    1934:	afa80074 	sw	t0,116(sp)
    1938:	afb90028 	sw	t9,40(sp)
    193c:	afac0024 	sw	t4,36(sp)
    1940:	afa20054 	sw	v0,84(sp)
    1944:	0c000000 	jal	0 <func_80B9D210>
    1948:	afaa0020 	sw	t2,32(sp)
    194c:	8fa30054 	lw	v1,84(sp)
    1950:	8fa80074 	lw	t0,116(sp)
    1954:	3c0ede00 	lui	t6,0xde00
    1958:	ac620004 	sw	v0,4(v1)
    195c:	8d0202c0 	lw	v0,704(t0)
    1960:	3c0d0000 	lui	t5,0x0
    1964:	3c060000 	lui	a2,0x0
    1968:	244b0008 	addiu	t3,v0,8
    196c:	ad0b02c0 	sw	t3,704(t0)
    1970:	ac4e0000 	sw	t6,0(v0)
    1974:	8faf004c 	lw	t7,76(sp)
    1978:	24c60000 	addiu	a2,a2,0
    197c:	27a40064 	addiu	a0,sp,100
    1980:	01af6821 	addu	t5,t5,t7
    1984:	8dad0000 	lw	t5,0(t5)
    1988:	240705fd 	li	a3,1533
    198c:	ac4d0004 	sw	t5,4(v0)
    1990:	0c000000 	jal	0 <func_80B9D210>
    1994:	8e250000 	lw	a1,0(s1)
    1998:	8fbf003c 	lw	ra,60(sp)
    199c:	8fb00034 	lw	s0,52(sp)
    19a0:	8fb10038 	lw	s1,56(sp)
    19a4:	03e00008 	jr	ra
    19a8:	27bd00a0 	addiu	sp,sp,160

000019ac <ObjSwitch_Draw>:
    19ac:	27bdffe8 	addiu	sp,sp,-24
    19b0:	afbf0014 	sw	ra,20(sp)
    19b4:	848e001c 	lh	t6,28(a0)
    19b8:	3c190000 	lui	t9,0x0
    19bc:	31cf0007 	andi	t7,t6,0x7
    19c0:	000fc080 	sll	t8,t7,0x2
    19c4:	0338c821 	addu	t9,t9,t8
    19c8:	8f390000 	lw	t9,0(t9)
    19cc:	0320f809 	jalr	t9
    19d0:	00000000 	nop
    19d4:	8fbf0014 	lw	ra,20(sp)
    19d8:	27bd0018 	addiu	sp,sp,24
    19dc:	03e00008 	jr	ra
    19e0:	00000000 	nop
	...
