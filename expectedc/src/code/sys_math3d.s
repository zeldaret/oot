
build/src/code/sys_math3d.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <Math3D_PlaneVsLineSegClosestPoint>:
       0:	27bdffc0 	addiu	sp,sp,-64
       4:	c7a40050 	lwc1	$f4,80(sp)
       8:	c7a60054 	lwc1	$f6,84(sp)
       c:	c7a80058 	lwc1	$f8,88(sp)
      10:	c7aa005c 	lwc1	$f10,92(sp)
      14:	3c0e0000 	lui	t6,0x0
      18:	afbf002c 	sw	ra,44(sp)
      1c:	25ce0000 	addiu	t6,t6,0
      20:	afa60048 	sw	a2,72(sp)
      24:	afa7004c 	sw	a3,76(sp)
      28:	afae0020 	sw	t6,32(sp)
      2c:	e7a40010 	swc1	$f4,16(sp)
      30:	e7a60014 	swc1	$f6,20(sp)
      34:	e7a80018 	swc1	$f8,24(sp)
      38:	0c000000 	jal	0 <Math3D_PlaneVsLineSegClosestPoint>
      3c:	e7aa001c 	swc1	$f10,28(sp)
      40:	14400003 	bnez	v0,50 <Math3D_PlaneVsLineSegClosestPoint+0x50>
      44:	3c040000 	lui	a0,0x0
      48:	1000002f 	b	108 <Math3D_PlaneVsLineSegClosestPoint+0x108>
      4c:	00001025 	move	v0,zero
      50:	3c050000 	lui	a1,0x0
      54:	24a50000 	addiu	a1,a1,0
      58:	0c000000 	jal	0 <Math3D_PlaneVsLineSegClosestPoint>
      5c:	24840018 	addiu	a0,a0,24
      60:	3c0142c8 	lui	at,0x42c8
      64:	44810000 	mtc1	at,$f0
      68:	3c010000 	lui	at,0x0
      6c:	c430000c 	lwc1	$f16,12(at)
      70:	3c010000 	lui	at,0x0
      74:	c4240000 	lwc1	$f4,0(at)
      78:	46008482 	mul.s	$f18,$f16,$f0
      7c:	3c010000 	lui	at,0x0
      80:	8faf0068 	lw	t7,104(sp)
      84:	3c040000 	lui	a0,0x0
      88:	3c050000 	lui	a1,0x0
      8c:	27b80034 	addiu	t8,sp,52
      90:	afb80014 	sw	t8,20(sp)
      94:	46049180 	add.s	$f6,$f18,$f4
      98:	24a50024 	addiu	a1,a1,36
      9c:	24840018 	addiu	a0,a0,24
      a0:	8fa60060 	lw	a2,96(sp)
      a4:	e4260024 	swc1	$f6,36(at)
      a8:	3c010000 	lui	at,0x0
      ac:	c4280010 	lwc1	$f8,16(at)
      b0:	3c010000 	lui	at,0x0
      b4:	c4300004 	lwc1	$f16,4(at)
      b8:	46004282 	mul.s	$f10,$f8,$f0
      bc:	3c010000 	lui	at,0x0
      c0:	8fa70064 	lw	a3,100(sp)
      c4:	afaf0010 	sw	t7,16(sp)
      c8:	46105480 	add.s	$f18,$f10,$f16
      cc:	e4320028 	swc1	$f18,40(at)
      d0:	3c010000 	lui	at,0x0
      d4:	c4240014 	lwc1	$f4,20(at)
      d8:	3c010000 	lui	at,0x0
      dc:	c4280008 	lwc1	$f8,8(at)
      e0:	46002182 	mul.s	$f6,$f4,$f0
      e4:	3c010000 	lui	at,0x0
      e8:	46083280 	add.s	$f10,$f6,$f8
      ec:	0c000000 	jal	0 <Math3D_PlaneVsLineSegClosestPoint>
      f0:	e42a002c 	swc1	$f10,44(at)
      f4:	54400004 	bnezl	v0,108 <Math3D_PlaneVsLineSegClosestPoint+0x108>
      f8:	24020001 	li	v0,1
      fc:	10000002 	b	108 <Math3D_PlaneVsLineSegClosestPoint+0x108>
     100:	00001025 	move	v0,zero
     104:	24020001 	li	v0,1
     108:	8fbf002c 	lw	ra,44(sp)
     10c:	27bd0040 	addiu	sp,sp,64
     110:	03e00008 	jr	ra
     114:	00000000 	nop

00000118 <Math3D_LineSegMakePerpLineSeg>:
     118:	c4900000 	lwc1	$f16,0(a0)
     11c:	c4a40000 	lwc1	$f4,0(a1)
     120:	27bdff80 	addiu	sp,sp,-128
     124:	3c010000 	lui	at,0x0
     128:	46102201 	sub.s	$f8,$f4,$f16
     12c:	e7a80074 	swc1	$f8,116(sp)
     130:	c4a60004 	lwc1	$f6,4(a1)
     134:	c4920004 	lwc1	$f18,4(a0)
     138:	46123281 	sub.s	$f10,$f6,$f18
     13c:	e7aa0070 	swc1	$f10,112(sp)
     140:	c4840008 	lwc1	$f4,8(a0)
     144:	e7a4002c 	swc1	$f4,44(sp)
     148:	c7a6002c 	lwc1	$f6,44(sp)
     14c:	c4a80008 	lwc1	$f8,8(a1)
     150:	46064281 	sub.s	$f10,$f8,$f6
     154:	e7aa006c 	swc1	$f10,108(sp)
     158:	c4c40000 	lwc1	$f4,0(a2)
     15c:	e7a40028 	swc1	$f4,40(sp)
     160:	c4ca0004 	lwc1	$f10,4(a2)
     164:	c7a60028 	lwc1	$f6,40(sp)
     168:	c4e80000 	lwc1	$f8,0(a3)
     16c:	e7aa0024 	swc1	$f10,36(sp)
     170:	c4e40004 	lwc1	$f4,4(a3)
     174:	46064081 	sub.s	$f2,$f8,$f6
     178:	c7a80024 	lwc1	$f8,36(sp)
     17c:	c4c60008 	lwc1	$f6,8(a2)
     180:	46082301 	sub.s	$f12,$f4,$f8
     184:	e7a60020 	swc1	$f6,32(sp)
     188:	46021202 	mul.s	$f8,$f2,$f2
     18c:	c7a40020 	lwc1	$f4,32(sp)
     190:	c4ea0008 	lwc1	$f10,8(a3)
     194:	460c6182 	mul.s	$f6,$f12,$f12
     198:	e7b00034 	swc1	$f16,52(sp)
     19c:	46045381 	sub.s	$f14,$f10,$f4
     1a0:	e7b20030 	swc1	$f18,48(sp)
     1a4:	460e7102 	mul.s	$f4,$f14,$f14
     1a8:	46064280 	add.s	$f10,$f8,$f6
     1ac:	c4260000 	lwc1	$f6,0(at)
     1b0:	3c013f80 	lui	at,0x3f80
     1b4:	46045200 	add.s	$f8,$f10,$f4
     1b8:	46004005 	abs.s	$f0,$f8
     1bc:	e7a8001c 	swc1	$f8,28(sp)
     1c0:	4606003c 	c.lt.s	$f0,$f6
     1c4:	c7a4001c 	lwc1	$f4,28(sp)
     1c8:	45020004 	bc1fl	1dc <Math3D_LineSegMakePerpLineSeg+0xc4>
     1cc:	44815000 	mtc1	at,$f10
     1d0:	1000007a 	b	3bc <Math3D_LineSegMakePerpLineSeg+0x2a4>
     1d4:	00001025 	move	v0,zero
     1d8:	44815000 	mtc1	at,$f10
     1dc:	c7a80074 	lwc1	$f8,116(sp)
     1e0:	3c010000 	lui	at,0x0
     1e4:	46045403 	div.s	$f16,$f10,$f4
     1e8:	c7aa0070 	lwc1	$f10,112(sp)
     1ec:	e7a80000 	swc1	$f8,0(sp)
     1f0:	46024182 	mul.s	$f6,$f8,$f2
     1f4:	e7aa0004 	swc1	$f10,4(sp)
     1f8:	460c5102 	mul.s	$f4,$f10,$f12
     1fc:	c7aa0024 	lwc1	$f10,36(sp)
     200:	46043180 	add.s	$f6,$f6,$f4
     204:	c7a4006c 	lwc1	$f4,108(sp)
     208:	460e2202 	mul.s	$f8,$f4,$f14
     20c:	e7a40008 	swc1	$f4,8(sp)
     210:	c7a40020 	lwc1	$f4,32(sp)
     214:	46083180 	add.s	$f6,$f6,$f8
     218:	c7a80034 	lwc1	$f8,52(sp)
     21c:	46103002 	mul.s	$f0,$f6,$f16
     220:	c7a60028 	lwc1	$f6,40(sp)
     224:	46064201 	sub.s	$f8,$f8,$f6
     228:	c7a60030 	lwc1	$f6,48(sp)
     22c:	e7a0005c 	swc1	$f0,92(sp)
     230:	460a3181 	sub.s	$f6,$f6,$f10
     234:	c7aa002c 	lwc1	$f10,44(sp)
     238:	e7a80018 	swc1	$f8,24(sp)
     23c:	46045281 	sub.s	$f10,$f10,$f4
     240:	46024102 	mul.s	$f4,$f8,$f2
     244:	e7a60014 	swc1	$f6,20(sp)
     248:	e7aa0010 	swc1	$f10,16(sp)
     24c:	46066282 	mul.s	$f10,$f12,$f6
     250:	c7a60010 	lwc1	$f6,16(sp)
     254:	460a2200 	add.s	$f8,$f4,$f10
     258:	46067102 	mul.s	$f4,$f14,$f6
     25c:	c7a60000 	lwc1	$f6,0(sp)
     260:	46044280 	add.s	$f10,$f8,$f4
     264:	46105482 	mul.s	$f18,$f10,$f16
     268:	c7aa0004 	lwc1	$f10,4(sp)
     26c:	46001202 	mul.s	$f8,$f2,$f0
     270:	46083101 	sub.s	$f4,$f6,$f8
     274:	46006182 	mul.s	$f6,$f12,$f0
     278:	e7a4004c 	swc1	$f4,76(sp)
     27c:	c7a40008 	lwc1	$f4,8(sp)
     280:	46065201 	sub.s	$f8,$f10,$f6
     284:	c7aa005c 	lwc1	$f10,92(sp)
     288:	460a7182 	mul.s	$f6,$f14,$f10
     28c:	e7a80050 	swc1	$f8,80(sp)
     290:	c7aa004c 	lwc1	$f10,76(sp)
     294:	46062201 	sub.s	$f8,$f4,$f6
     298:	c7a4004c 	lwc1	$f4,76(sp)
     29c:	46045182 	mul.s	$f6,$f10,$f4
     2a0:	c7a40050 	lwc1	$f4,80(sp)
     2a4:	c7aa0050 	lwc1	$f10,80(sp)
     2a8:	e7a80030 	swc1	$f8,48(sp)
     2ac:	46045282 	mul.s	$f10,$f10,$f4
     2b0:	460a3100 	add.s	$f4,$f6,$f10
     2b4:	46084182 	mul.s	$f6,$f8,$f8
     2b8:	c42a0000 	lwc1	$f10,0(at)
     2bc:	46062400 	add.s	$f16,$f4,$f6
     2c0:	46008005 	abs.s	$f0,$f16
     2c4:	e7b0007c 	swc1	$f16,124(sp)
     2c8:	460a003c 	c.lt.s	$f0,$f10
     2cc:	00000000 	nop
     2d0:	45000003 	bc1f	2e0 <Math3D_LineSegMakePerpLineSeg+0x1c8>
     2d4:	00000000 	nop
     2d8:	10000038 	b	3bc <Math3D_LineSegMakePerpLineSeg+0x2a4>
     2dc:	00001025 	move	v0,zero
     2e0:	46121102 	mul.s	$f4,$f2,$f18
     2e4:	c7a80018 	lwc1	$f8,24(sp)
     2e8:	c7a60014 	lwc1	$f6,20(sp)
     2ec:	46126282 	mul.s	$f10,$f12,$f18
     2f0:	8fa20090 	lw	v0,144(sp)
     2f4:	46044401 	sub.s	$f16,$f8,$f4
     2f8:	c7a40010 	lwc1	$f4,16(sp)
     2fc:	460a3201 	sub.s	$f8,$f6,$f10
     300:	46127182 	mul.s	$f6,$f14,$f18
     304:	e7a80044 	swc1	$f8,68(sp)
     308:	46062281 	sub.s	$f10,$f4,$f6
     30c:	c7a40050 	lwc1	$f4,80(sp)
     310:	46082182 	mul.s	$f6,$f4,$f8
     314:	c7a4004c 	lwc1	$f4,76(sp)
     318:	e7aa0048 	swc1	$f10,72(sp)
     31c:	46102202 	mul.s	$f8,$f4,$f16
     320:	46064100 	add.s	$f4,$f8,$f6
     324:	c7a80030 	lwc1	$f8,48(sp)
     328:	460a4182 	mul.s	$f6,$f8,$f10
     32c:	46062200 	add.s	$f8,$f4,$f6
     330:	c7a4007c 	lwc1	$f4,124(sp)
     334:	c7a60074 	lwc1	$f6,116(sp)
     338:	46004287 	neg.s	$f10,$f8
     33c:	46045003 	div.s	$f0,$f10,$f4
     340:	c7aa0034 	lwc1	$f10,52(sp)
     344:	46003202 	mul.s	$f8,$f6,$f0
     348:	460a4100 	add.s	$f4,$f8,$f10
     34c:	e4440000 	swc1	$f4,0(v0)
     350:	c7a60070 	lwc1	$f6,112(sp)
     354:	c48a0004 	lwc1	$f10,4(a0)
     358:	8fa30094 	lw	v1,148(sp)
     35c:	46003202 	mul.s	$f8,$f6,$f0
     360:	460a4100 	add.s	$f4,$f8,$f10
     364:	e4440004 	swc1	$f4,4(v0)
     368:	c7a6006c 	lwc1	$f6,108(sp)
     36c:	c48a0008 	lwc1	$f10,8(a0)
     370:	46003202 	mul.s	$f8,$f6,$f0
     374:	460a4100 	add.s	$f4,$f8,$f10
     378:	e4440008 	swc1	$f4,8(v0)
     37c:	c7a6005c 	lwc1	$f6,92(sp)
     380:	c4c40000 	lwc1	$f4,0(a2)
     384:	24020001 	li	v0,1
     388:	46003202 	mul.s	$f8,$f6,$f0
     38c:	46124400 	add.s	$f16,$f8,$f18
     390:	46101282 	mul.s	$f10,$f2,$f16
     394:	46045180 	add.s	$f6,$f10,$f4
     398:	46106202 	mul.s	$f8,$f12,$f16
     39c:	e4660000 	swc1	$f6,0(v1)
     3a0:	c4ca0004 	lwc1	$f10,4(a2)
     3a4:	46107182 	mul.s	$f6,$f14,$f16
     3a8:	460a4100 	add.s	$f4,$f8,$f10
     3ac:	e4640004 	swc1	$f4,4(v1)
     3b0:	c4c80008 	lwc1	$f8,8(a2)
     3b4:	46083280 	add.s	$f10,$f6,$f8
     3b8:	e46a0008 	swc1	$f10,8(v1)
     3bc:	03e00008 	jr	ra
     3c0:	27bd0080 	addiu	sp,sp,128

000003c4 <Math3D_LineClosestToPoint>:
     3c4:	27bdffd8 	addiu	sp,sp,-40
     3c8:	afb00018 	sw	s0,24(sp)
     3cc:	00808025 	move	s0,a0
     3d0:	afbf001c 	sw	ra,28(sp)
     3d4:	afa5002c 	sw	a1,44(sp)
     3d8:	afa60030 	sw	a2,48(sp)
     3dc:	0c000000 	jal	0 <Math3D_PlaneVsLineSegClosestPoint>
     3e0:	2484000c 	addiu	a0,a0,12
     3e4:	3c010000 	lui	at,0x0
     3e8:	c424010c 	lwc1	$f4,268(at)
     3ec:	e7a00024 	swc1	$f0,36(sp)
     3f0:	46000005 	abs.s	$f0,$f0
     3f4:	3c040000 	lui	a0,0x0
     3f8:	4604003c 	c.lt.s	$f0,$f4
     3fc:	00000000 	nop
     400:	45020010 	bc1fl	444 <Math3D_LineClosestToPoint+0x80>
     404:	8fa3002c 	lw	v1,44(sp)
     408:	0c000000 	jal	0 <Math3D_PlaneVsLineSegClosestPoint>
     40c:	24840000 	addiu	a0,a0,0
     410:	3c040000 	lui	a0,0x0
     414:	0c000000 	jal	0 <Math3D_PlaneVsLineSegClosestPoint>
     418:	2484000c 	addiu	a0,a0,12
     41c:	3c040000 	lui	a0,0x0
     420:	0c000000 	jal	0 <Math3D_PlaneVsLineSegClosestPoint>
     424:	24840044 	addiu	a0,a0,68
     428:	3c040000 	lui	a0,0x0
     42c:	0c000000 	jal	0 <Math3D_PlaneVsLineSegClosestPoint>
     430:	24840060 	addiu	a0,a0,96
     434:	8fa40030 	lw	a0,48(sp)
     438:	0c000000 	jal	0 <Math3D_PlaneVsLineSegClosestPoint>
     43c:	8fa5002c 	lw	a1,44(sp)
     440:	8fa3002c 	lw	v1,44(sp)
     444:	c6080004 	lwc1	$f8,4(s0)
     448:	c6020000 	lwc1	$f2,0(s0)
     44c:	c4660004 	lwc1	$f6,4(v1)
     450:	c4640000 	lwc1	$f4,0(v1)
     454:	c6100010 	lwc1	$f16,16(s0)
     458:	46083281 	sub.s	$f10,$f6,$f8
     45c:	c60c000c 	lwc1	$f12,12(s0)
     460:	8fa20030 	lw	v0,48(sp)
     464:	46022181 	sub.s	$f6,$f4,$f2
     468:	46105482 	mul.s	$f18,$f10,$f16
     46c:	c6040008 	lwc1	$f4,8(s0)
     470:	c4700008 	lwc1	$f16,8(v1)
     474:	460c3202 	mul.s	$f8,$f6,$f12
     478:	46048181 	sub.s	$f6,$f16,$f4
     47c:	c7a40024 	lwc1	$f4,36(sp)
     480:	46124280 	add.s	$f10,$f8,$f18
     484:	c6080014 	lwc1	$f8,20(s0)
     488:	46083482 	mul.s	$f18,$f6,$f8
     48c:	46125400 	add.s	$f16,$f10,$f18
     490:	46048003 	div.s	$f0,$f16,$f4
     494:	46006182 	mul.s	$f6,$f12,$f0
     498:	46023200 	add.s	$f8,$f6,$f2
     49c:	e4480000 	swc1	$f8,0(v0)
     4a0:	c60a0010 	lwc1	$f10,16(s0)
     4a4:	c6100004 	lwc1	$f16,4(s0)
     4a8:	46005482 	mul.s	$f18,$f10,$f0
     4ac:	46109100 	add.s	$f4,$f18,$f16
     4b0:	e4440004 	swc1	$f4,4(v0)
     4b4:	c6060014 	lwc1	$f6,20(s0)
     4b8:	c60a0008 	lwc1	$f10,8(s0)
     4bc:	46003202 	mul.s	$f8,$f6,$f0
     4c0:	460a4480 	add.s	$f18,$f8,$f10
     4c4:	e4520008 	swc1	$f18,8(v0)
     4c8:	8fbf001c 	lw	ra,28(sp)
     4cc:	8fb00018 	lw	s0,24(sp)
     4d0:	27bd0028 	addiu	sp,sp,40
     4d4:	03e00008 	jr	ra
     4d8:	00000000 	nop

000004dc <Math3D_FindPointOnPlaneIntersect>:
     4dc:	afa7000c 	sw	a3,12(sp)
     4e0:	c7a4000c 	lwc1	$f4,12(sp)
     4e4:	c7a60014 	lwc1	$f6,20(sp)
     4e8:	c7aa0018 	lwc1	$f10,24(sp)
     4ec:	8fae001c 	lw	t6,28(sp)
     4f0:	46062202 	mul.s	$f8,$f4,$f6
     4f4:	c7a40010 	lwc1	$f4,16(sp)
     4f8:	afa60008 	sw	a2,8(sp)
     4fc:	460a7402 	mul.s	$f16,$f14,$f10
     500:	46088481 	sub.s	$f18,$f16,$f8
     504:	46049183 	div.s	$f6,$f18,$f4
     508:	e5c60000 	swc1	$f6,0(t6)
     50c:	c7b00014 	lwc1	$f16,20(sp)
     510:	c7aa0008 	lwc1	$f10,8(sp)
     514:	c7b20018 	lwc1	$f18,24(sp)
     518:	8faf0020 	lw	t7,32(sp)
     51c:	46105202 	mul.s	$f8,$f10,$f16
     520:	c7aa0010 	lwc1	$f10,16(sp)
     524:	46126102 	mul.s	$f4,$f12,$f18
     528:	46044181 	sub.s	$f6,$f8,$f4
     52c:	460a3403 	div.s	$f16,$f6,$f10
     530:	03e00008 	jr	ra
     534:	e5f00000 	swc1	$f16,0(t7)

00000538 <Math3D_PlaneVsPlaneNewLine>:
     538:	27bdff90 	addiu	sp,sp,-112
     53c:	e7ac0070 	swc1	$f12,112(sp)
     540:	e7ae0074 	swc1	$f14,116(sp)
     544:	c7a60074 	lwc1	$f6,116(sp)
     548:	c7a40070 	lwc1	$f4,112(sp)
     54c:	afb00030 	sw	s0,48(sp)
     550:	afa60078 	sw	a2,120(sp)
     554:	e7a60064 	swc1	$f6,100(sp)
     558:	e7a40060 	swc1	$f4,96(sp)
     55c:	8fb00090 	lw	s0,144(sp)
     560:	c7a80078 	lwc1	$f8,120(sp)
     564:	c7a40084 	lwc1	$f4,132(sp)
     568:	c7a60088 	lwc1	$f6,136(sp)
     56c:	c7aa0080 	lwc1	$f10,128(sp)
     570:	afbf0034 	sw	ra,52(sp)
     574:	afa7007c 	sw	a3,124(sp)
     578:	27a40060 	addiu	a0,sp,96
     57c:	27a50054 	addiu	a1,sp,84
     580:	2606000c 	addiu	a2,s0,12
     584:	e7a80068 	swc1	$f8,104(sp)
     588:	e7a40058 	swc1	$f4,88(sp)
     58c:	e7a6005c 	swc1	$f6,92(sp)
     590:	0c000000 	jal	0 <Math3D_PlaneVsLineSegClosestPoint>
     594:	e7aa0054 	swc1	$f10,84(sp)
     598:	c608000c 	lwc1	$f8,12(s0)
     59c:	3c010000 	lui	at,0x0
     5a0:	c4220110 	lwc1	$f2,272(at)
     5a4:	e7a80044 	swc1	$f8,68(sp)
     5a8:	c7ae0044 	lwc1	$f14,68(sp)
     5ac:	46007385 	abs.s	$f14,$f14
     5b0:	4602703c 	c.lt.s	$f14,$f2
     5b4:	00000000 	nop
     5b8:	45020010 	bc1fl	5fc <Math3D_PlaneVsPlaneNewLine+0xc4>
     5bc:	c6100010 	lwc1	$f16,16(s0)
     5c0:	c6000010 	lwc1	$f0,16(s0)
     5c4:	46000005 	abs.s	$f0,$f0
     5c8:	4602003c 	c.lt.s	$f0,$f2
     5cc:	00000000 	nop
     5d0:	4502000a 	bc1fl	5fc <Math3D_PlaneVsPlaneNewLine+0xc4>
     5d4:	c6100010 	lwc1	$f16,16(s0)
     5d8:	c6000014 	lwc1	$f0,20(s0)
     5dc:	46000005 	abs.s	$f0,$f0
     5e0:	4602003c 	c.lt.s	$f0,$f2
     5e4:	00000000 	nop
     5e8:	45020004 	bc1fl	5fc <Math3D_PlaneVsPlaneNewLine+0xc4>
     5ec:	c6100010 	lwc1	$f16,16(s0)
     5f0:	10000044 	b	704 <Math3D_PlaneVsPlaneNewLine+0x1cc>
     5f4:	00001025 	move	v0,zero
     5f8:	c6100010 	lwc1	$f16,16(s0)
     5fc:	c6120014 	lwc1	$f18,20(s0)
     600:	46007086 	mov.s	$f2,$f14
     604:	46008305 	abs.s	$f12,$f16
     608:	46009005 	abs.s	$f0,$f18
     60c:	460e603e 	c.le.s	$f12,$f14
     610:	00000000 	nop
     614:	45020016 	bc1fl	670 <Math3D_PlaneVsPlaneNewLine+0x138>
     618:	460c103e 	c.le.s	$f2,$f12
     61c:	460e003e 	c.le.s	$f0,$f14
     620:	c7ae0078 	lwc1	$f14,120(sp)
     624:	8fa60084 	lw	a2,132(sp)
     628:	8fa70088 	lw	a3,136(sp)
     62c:	4500000f 	bc1f	66c <Math3D_PlaneVsPlaneNewLine+0x134>
     630:	c7aa0044 	lwc1	$f10,68(sp)
     634:	c7a4007c 	lwc1	$f4,124(sp)
     638:	c7a6008c 	lwc1	$f6,140(sp)
     63c:	260e0004 	addiu	t6,s0,4
     640:	260f0008 	addiu	t7,s0,8
     644:	afaf0020 	sw	t7,32(sp)
     648:	afae001c 	sw	t6,28(sp)
     64c:	c7ac0074 	lwc1	$f12,116(sp)
     650:	e7aa0010 	swc1	$f10,16(sp)
     654:	e7a40014 	swc1	$f4,20(sp)
     658:	0c000000 	jal	0 <Math3D_PlaneVsLineSegClosestPoint>
     65c:	e7a60018 	swc1	$f6,24(sp)
     660:	44804000 	mtc1	zero,$f8
     664:	10000026 	b	700 <Math3D_PlaneVsPlaneNewLine+0x1c8>
     668:	e6080000 	swc1	$f8,0(s0)
     66c:	460c103e 	c.le.s	$f2,$f12
     670:	c7ae0074 	lwc1	$f14,116(sp)
     674:	8fa60080 	lw	a2,128(sp)
     678:	8fa70084 	lw	a3,132(sp)
     67c:	45000014 	bc1f	6d0 <Math3D_PlaneVsPlaneNewLine+0x198>
     680:	26190004 	addiu	t9,s0,4
     684:	460c003e 	c.le.s	$f0,$f12
     688:	c7ac0078 	lwc1	$f12,120(sp)
     68c:	26180008 	addiu	t8,s0,8
     690:	45020010 	bc1fl	6d4 <Math3D_PlaneVsPlaneNewLine+0x19c>
     694:	c7a8007c 	lwc1	$f8,124(sp)
     698:	c7aa007c 	lwc1	$f10,124(sp)
     69c:	c7a4008c 	lwc1	$f4,140(sp)
     6a0:	c7ae0070 	lwc1	$f14,112(sp)
     6a4:	8fa60088 	lw	a2,136(sp)
     6a8:	8fa70080 	lw	a3,128(sp)
     6ac:	e7b00010 	swc1	$f16,16(sp)
     6b0:	afb8001c 	sw	t8,28(sp)
     6b4:	afb00020 	sw	s0,32(sp)
     6b8:	e7aa0014 	swc1	$f10,20(sp)
     6bc:	0c000000 	jal	0 <Math3D_PlaneVsLineSegClosestPoint>
     6c0:	e7a40018 	swc1	$f4,24(sp)
     6c4:	44803000 	mtc1	zero,$f6
     6c8:	1000000d 	b	700 <Math3D_PlaneVsPlaneNewLine+0x1c8>
     6cc:	e6060004 	swc1	$f6,4(s0)
     6d0:	c7a8007c 	lwc1	$f8,124(sp)
     6d4:	c7aa008c 	lwc1	$f10,140(sp)
     6d8:	c7ac0070 	lwc1	$f12,112(sp)
     6dc:	e7b20010 	swc1	$f18,16(sp)
     6e0:	afb0001c 	sw	s0,28(sp)
     6e4:	afb90020 	sw	t9,32(sp)
     6e8:	e7a80014 	swc1	$f8,20(sp)
     6ec:	0c000000 	jal	0 <Math3D_PlaneVsLineSegClosestPoint>
     6f0:	e7aa0018 	swc1	$f10,24(sp)
     6f4:	44802000 	mtc1	zero,$f4
     6f8:	00000000 	nop
     6fc:	e6040008 	swc1	$f4,8(s0)
     700:	24020001 	li	v0,1
     704:	8fbf0034 	lw	ra,52(sp)
     708:	8fb00030 	lw	s0,48(sp)
     70c:	27bd0070 	addiu	sp,sp,112
     710:	03e00008 	jr	ra
     714:	00000000 	nop

00000718 <Math3D_PlaneVsPlaneVsLineClosestPoint>:
     718:	27bdffd0 	addiu	sp,sp,-48
     71c:	c7a40040 	lwc1	$f4,64(sp)
     720:	c7a60044 	lwc1	$f6,68(sp)
     724:	c7a80048 	lwc1	$f8,72(sp)
     728:	c7aa004c 	lwc1	$f10,76(sp)
     72c:	3c0e0000 	lui	t6,0x0
     730:	afbf002c 	sw	ra,44(sp)
     734:	25ce0030 	addiu	t6,t6,48
     738:	afa60038 	sw	a2,56(sp)
     73c:	afa7003c 	sw	a3,60(sp)
     740:	afae0020 	sw	t6,32(sp)
     744:	e7a40010 	swc1	$f4,16(sp)
     748:	e7a60014 	swc1	$f6,20(sp)
     74c:	e7a80018 	swc1	$f8,24(sp)
     750:	0c000000 	jal	0 <Math3D_PlaneVsLineSegClosestPoint>
     754:	e7aa001c 	swc1	$f10,28(sp)
     758:	14400003 	bnez	v0,768 <Math3D_PlaneVsPlaneVsLineClosestPoint+0x50>
     75c:	3c040000 	lui	a0,0x0
     760:	10000006 	b	77c <Math3D_PlaneVsPlaneVsLineClosestPoint+0x64>
     764:	00001025 	move	v0,zero
     768:	24840030 	addiu	a0,a0,48
     76c:	8fa50050 	lw	a1,80(sp)
     770:	0c000000 	jal	0 <Math3D_PlaneVsLineSegClosestPoint>
     774:	8fa60054 	lw	a2,84(sp)
     778:	24020001 	li	v0,1
     77c:	8fbf002c 	lw	ra,44(sp)
     780:	27bd0030 	addiu	sp,sp,48
     784:	03e00008 	jr	ra
     788:	00000000 	nop

0000078c <Math3D_PointOnInfiniteLine>:
     78c:	44866000 	mtc1	a2,$f12
     790:	c4a40000 	lwc1	$f4,0(a1)
     794:	c4880000 	lwc1	$f8,0(a0)
     798:	460c2182 	mul.s	$f6,$f4,$f12
     79c:	46083280 	add.s	$f10,$f6,$f8
     7a0:	e4ea0000 	swc1	$f10,0(a3)
     7a4:	c4b00004 	lwc1	$f16,4(a1)
     7a8:	c4840004 	lwc1	$f4,4(a0)
     7ac:	460c8482 	mul.s	$f18,$f16,$f12
     7b0:	46049180 	add.s	$f6,$f18,$f4
     7b4:	e4e60004 	swc1	$f6,4(a3)
     7b8:	c4a80008 	lwc1	$f8,8(a1)
     7bc:	c4900008 	lwc1	$f16,8(a0)
     7c0:	460c4282 	mul.s	$f10,$f8,$f12
     7c4:	46105480 	add.s	$f18,$f10,$f16
     7c8:	03e00008 	jr	ra
     7cc:	e4f20008 	swc1	$f18,8(a3)

000007d0 <Math3D_LineSplitRatio>:
     7d0:	27bdffd8 	addiu	sp,sp,-40
     7d4:	afa40028 	sw	a0,40(sp)
     7d8:	afbf0014 	sw	ra,20(sp)
     7dc:	afa5002c 	sw	a1,44(sp)
     7e0:	afa60030 	sw	a2,48(sp)
     7e4:	00a02025 	move	a0,a1
     7e8:	afa70034 	sw	a3,52(sp)
     7ec:	8fa50028 	lw	a1,40(sp)
     7f0:	0c000000 	jal	0 <Math3D_PlaneVsLineSegClosestPoint>
     7f4:	27a6001c 	addiu	a2,sp,28
     7f8:	8fa40028 	lw	a0,40(sp)
     7fc:	27a5001c 	addiu	a1,sp,28
     800:	8fa60030 	lw	a2,48(sp)
     804:	0c000000 	jal	0 <Math3D_PlaneVsLineSegClosestPoint>
     808:	8fa70034 	lw	a3,52(sp)
     80c:	8fbf0014 	lw	ra,20(sp)
     810:	27bd0028 	addiu	sp,sp,40
     814:	03e00008 	jr	ra
     818:	00000000 	nop

0000081c <Math3D_Cos>:
     81c:	27bdffe0 	addiu	sp,sp,-32
     820:	afbf0014 	sw	ra,20(sp)
     824:	0c000000 	jal	0 <Math3D_PlaneVsLineSegClosestPoint>
     828:	27a6001c 	addiu	a2,sp,28
     82c:	8fbf0014 	lw	ra,20(sp)
     830:	c7a0001c 	lwc1	$f0,28(sp)
     834:	27bd0020 	addiu	sp,sp,32
     838:	03e00008 	jr	ra
     83c:	00000000 	nop

00000840 <Math3D_CosOut>:
     840:	27bdffe0 	addiu	sp,sp,-32
     844:	afbf0014 	sw	ra,20(sp)
     848:	afa50024 	sw	a1,36(sp)
     84c:	afa60028 	sw	a2,40(sp)
     850:	0c000000 	jal	0 <Math3D_PlaneVsLineSegClosestPoint>
     854:	afa40020 	sw	a0,32(sp)
     858:	8fa40024 	lw	a0,36(sp)
     85c:	0c000000 	jal	0 <Math3D_PlaneVsLineSegClosestPoint>
     860:	e7a00018 	swc1	$f0,24(sp)
     864:	c7a40018 	lwc1	$f4,24(sp)
     868:	3c010000 	lui	at,0x0
     86c:	c4260114 	lwc1	$f6,276(at)
     870:	46040302 	mul.s	$f12,$f0,$f4
     874:	8fa40024 	lw	a0,36(sp)
     878:	8fa70020 	lw	a3,32(sp)
     87c:	8fae0028 	lw	t6,40(sp)
     880:	46006005 	abs.s	$f0,$f12
     884:	4606003c 	c.lt.s	$f0,$f6
     888:	00000000 	nop
     88c:	45020006 	bc1fl	8a8 <Math3D_CosOut+0x68>
     890:	c4ea0000 	lwc1	$f10,0(a3)
     894:	44804000 	mtc1	zero,$f8
     898:	24020001 	li	v0,1
     89c:	10000010 	b	8e0 <Math3D_CosOut+0xa0>
     8a0:	e5c80000 	swc1	$f8,0(t6)
     8a4:	c4ea0000 	lwc1	$f10,0(a3)
     8a8:	c4900000 	lwc1	$f16,0(a0)
     8ac:	c4e40004 	lwc1	$f4,4(a3)
     8b0:	c4860004 	lwc1	$f6,4(a0)
     8b4:	46105482 	mul.s	$f18,$f10,$f16
     8b8:	c4f00008 	lwc1	$f16,8(a3)
     8bc:	8faf0028 	lw	t7,40(sp)
     8c0:	46062202 	mul.s	$f8,$f4,$f6
     8c4:	c4840008 	lwc1	$f4,8(a0)
     8c8:	00001025 	move	v0,zero
     8cc:	46048182 	mul.s	$f6,$f16,$f4
     8d0:	46089280 	add.s	$f10,$f18,$f8
     8d4:	46065480 	add.s	$f18,$f10,$f6
     8d8:	460c9203 	div.s	$f8,$f18,$f12
     8dc:	e5e80000 	swc1	$f8,0(t7)
     8e0:	8fbf0014 	lw	ra,20(sp)
     8e4:	27bd0020 	addiu	sp,sp,32
     8e8:	03e00008 	jr	ra
     8ec:	00000000 	nop

000008f0 <Math3D_Vec3fReflect>:
     8f0:	27bdffc8 	addiu	sp,sp,-56
     8f4:	afbf0014 	sw	ra,20(sp)
     8f8:	3c01bf80 	lui	at,0xbf80
     8fc:	44810000 	mtc1	at,$f0
     900:	c4840000 	lwc1	$f4,0(a0)
     904:	00803825 	move	a3,a0
     908:	46002182 	mul.s	$f6,$f4,$f0
     90c:	e7a60028 	swc1	$f6,40(sp)
     910:	c4880004 	lwc1	$f8,4(a0)
     914:	46004282 	mul.s	$f10,$f8,$f0
     918:	e7aa002c 	swc1	$f10,44(sp)
     91c:	c4840008 	lwc1	$f4,8(a0)
     920:	afa70038 	sw	a3,56(sp)
     924:	afa60040 	sw	a2,64(sp)
     928:	46002182 	mul.s	$f6,$f4,$f0
     92c:	afa5003c 	sw	a1,60(sp)
     930:	27a40028 	addiu	a0,sp,40
     934:	0c000000 	jal	0 <Math3D_PlaneVsLineSegClosestPoint>
     938:	e7a60030 	swc1	$f6,48(sp)
     93c:	8fa5003c 	lw	a1,60(sp)
     940:	8fa70038 	lw	a3,56(sp)
     944:	8fa60040 	lw	a2,64(sp)
     948:	c4a80000 	lwc1	$f8,0(a1)
     94c:	c4aa0004 	lwc1	$f10,4(a1)
     950:	c4a40008 	lwc1	$f4,8(a1)
     954:	46004402 	mul.s	$f16,$f8,$f0
     958:	00000000 	nop
     95c:	46005482 	mul.s	$f18,$f10,$f0
     960:	00000000 	nop
     964:	46002182 	mul.s	$f6,$f4,$f0
     968:	c7a40028 	lwc1	$f4,40(sp)
     96c:	e7a60024 	swc1	$f6,36(sp)
     970:	c4e80000 	lwc1	$f8,0(a3)
     974:	46104080 	add.s	$f2,$f8,$f16
     978:	46021280 	add.s	$f10,$f2,$f2
     97c:	46045180 	add.s	$f6,$f10,$f4
     980:	e4c60000 	swc1	$f6,0(a2)
     984:	c4e80004 	lwc1	$f8,4(a3)
     988:	c7a4002c 	lwc1	$f4,44(sp)
     98c:	46124300 	add.s	$f12,$f8,$f18
     990:	460c6280 	add.s	$f10,$f12,$f12
     994:	46045180 	add.s	$f6,$f10,$f4
     998:	e4c60004 	swc1	$f6,4(a2)
     99c:	c7aa0024 	lwc1	$f10,36(sp)
     9a0:	c4e80008 	lwc1	$f8,8(a3)
     9a4:	c7a60030 	lwc1	$f6,48(sp)
     9a8:	460a4380 	add.s	$f14,$f8,$f10
     9ac:	460e7100 	add.s	$f4,$f14,$f14
     9b0:	46062200 	add.s	$f8,$f4,$f6
     9b4:	e4c80008 	swc1	$f8,8(a2)
     9b8:	8fbf0014 	lw	ra,20(sp)
     9bc:	27bd0038 	addiu	sp,sp,56
     9c0:	03e00008 	jr	ra
     9c4:	00000000 	nop

000009c8 <Math3D_PointInSquare2D>:
     9c8:	c7a40010 	lwc1	$f4,16(sp)
     9cc:	afa60008 	sw	a2,8(sp)
     9d0:	afa7000c 	sw	a3,12(sp)
     9d4:	4604603e 	c.le.s	$f12,$f4
     9d8:	00001025 	move	v0,zero
     9dc:	45000010 	bc1f	a20 <Math3D_PointInSquare2D+0x58>
     9e0:	00000000 	nop
     9e4:	460e203e 	c.le.s	$f4,$f14
     9e8:	c7a00014 	lwc1	$f0,20(sp)
     9ec:	c7a60008 	lwc1	$f6,8(sp)
     9f0:	4500000b 	bc1f	a20 <Math3D_PointInSquare2D+0x58>
     9f4:	00000000 	nop
     9f8:	4600303e 	c.le.s	$f6,$f0
     9fc:	c7a8000c 	lwc1	$f8,12(sp)
     a00:	45000007 	bc1f	a20 <Math3D_PointInSquare2D+0x58>
     a04:	00000000 	nop
     a08:	4608003e 	c.le.s	$f0,$f8
     a0c:	00000000 	nop
     a10:	45000003 	bc1f	a20 <Math3D_PointInSquare2D+0x58>
     a14:	00000000 	nop
     a18:	03e00008 	jr	ra
     a1c:	24020001 	li	v0,1
     a20:	03e00008 	jr	ra
     a24:	00000000 	nop

00000a28 <Math3D_CirSquareVsTriSquare>:
     a28:	afa60008 	sw	a2,8(sp)
     a2c:	c7a40008 	lwc1	$f4,8(sp)
     a30:	afa7000c 	sw	a3,12(sp)
     a34:	46006406 	mov.s	$f16,$f12
     a38:	460c203c 	c.lt.s	$f4,$f12
     a3c:	46006486 	mov.s	$f18,$f12
     a40:	46007006 	mov.s	$f0,$f14
     a44:	46007086 	mov.s	$f2,$f14
     a48:	45000003 	bc1f	a58 <Math3D_CirSquareVsTriSquare+0x30>
     a4c:	c7a8000c 	lwc1	$f8,12(sp)
     a50:	10000007 	b	a70 <Math3D_CirSquareVsTriSquare+0x48>
     a54:	46002486 	mov.s	$f18,$f4
     a58:	c7a60008 	lwc1	$f6,8(sp)
     a5c:	4606603c 	c.lt.s	$f12,$f6
     a60:	00000000 	nop
     a64:	45020003 	bc1fl	a74 <Math3D_CirSquareVsTriSquare+0x4c>
     a68:	460e403c 	c.lt.s	$f8,$f14
     a6c:	46003406 	mov.s	$f16,$f6
     a70:	460e403c 	c.lt.s	$f8,$f14
     a74:	c7aa000c 	lwc1	$f10,12(sp)
     a78:	c7ac0010 	lwc1	$f12,16(sp)
     a7c:	00001025 	move	v0,zero
     a80:	45020004 	bc1fl	a94 <Math3D_CirSquareVsTriSquare+0x6c>
     a84:	460a703c 	c.lt.s	$f14,$f10
     a88:	10000006 	b	aa4 <Math3D_CirSquareVsTriSquare+0x7c>
     a8c:	46004086 	mov.s	$f2,$f8
     a90:	460a703c 	c.lt.s	$f14,$f10
     a94:	00000000 	nop
     a98:	45020003 	bc1fl	aa8 <Math3D_CirSquareVsTriSquare+0x80>
     a9c:	4612603c 	c.lt.s	$f12,$f18
     aa0:	46005006 	mov.s	$f0,$f10
     aa4:	4612603c 	c.lt.s	$f12,$f18
     aa8:	c7ae0020 	lwc1	$f14,32(sp)
     aac:	45020004 	bc1fl	ac0 <Math3D_CirSquareVsTriSquare+0x98>
     ab0:	460c803c 	c.lt.s	$f16,$f12
     ab4:	10000006 	b	ad0 <Math3D_CirSquareVsTriSquare+0xa8>
     ab8:	46006486 	mov.s	$f18,$f12
     abc:	460c803c 	c.lt.s	$f16,$f12
     ac0:	00000000 	nop
     ac4:	45020003 	bc1fl	ad4 <Math3D_CirSquareVsTriSquare+0xac>
     ac8:	c7ac0014 	lwc1	$f12,20(sp)
     acc:	46006406 	mov.s	$f16,$f12
     ad0:	c7ac0014 	lwc1	$f12,20(sp)
     ad4:	4602603c 	c.lt.s	$f12,$f2
     ad8:	00000000 	nop
     adc:	45020004 	bc1fl	af0 <Math3D_CirSquareVsTriSquare+0xc8>
     ae0:	460c003c 	c.lt.s	$f0,$f12
     ae4:	10000006 	b	b00 <Math3D_CirSquareVsTriSquare+0xd8>
     ae8:	46006086 	mov.s	$f2,$f12
     aec:	460c003c 	c.lt.s	$f0,$f12
     af0:	00000000 	nop
     af4:	45020003 	bc1fl	b04 <Math3D_CirSquareVsTriSquare+0xdc>
     af8:	460e9101 	sub.s	$f4,$f18,$f14
     afc:	46006006 	mov.s	$f0,$f12
     b00:	460e9101 	sub.s	$f4,$f18,$f14
     b04:	c7ac0018 	lwc1	$f12,24(sp)
     b08:	460c203e 	c.le.s	$f4,$f12
     b0c:	00000000 	nop
     b10:	45000013 	bc1f	b60 <Math3D_CirSquareVsTriSquare+0x138>
     b14:	00000000 	nop
     b18:	460e8180 	add.s	$f6,$f16,$f14
     b1c:	4606603e 	c.le.s	$f12,$f6
     b20:	00000000 	nop
     b24:	4500000e 	bc1f	b60 <Math3D_CirSquareVsTriSquare+0x138>
     b28:	00000000 	nop
     b2c:	460e1201 	sub.s	$f8,$f2,$f14
     b30:	c7ac001c 	lwc1	$f12,28(sp)
     b34:	460c403e 	c.le.s	$f8,$f12
     b38:	00000000 	nop
     b3c:	45000008 	bc1f	b60 <Math3D_CirSquareVsTriSquare+0x138>
     b40:	00000000 	nop
     b44:	460e0280 	add.s	$f10,$f0,$f14
     b48:	460a603e 	c.le.s	$f12,$f10
     b4c:	00000000 	nop
     b50:	45000003 	bc1f	b60 <Math3D_CirSquareVsTriSquare+0x138>
     b54:	00000000 	nop
     b58:	03e00008 	jr	ra
     b5c:	24020001 	li	v0,1
     b60:	03e00008 	jr	ra
     b64:	00000000 	nop

00000b68 <Math3D_SphCubeVsTriCube>:
     b68:	c4a40000 	lwc1	$f4,0(a1)
     b6c:	c4800000 	lwc1	$f0,0(a0)
     b70:	c4820004 	lwc1	$f2,4(a0)
     b74:	c48c0008 	lwc1	$f12,8(a0)
     b78:	27bdffe0 	addiu	sp,sp,-32
     b7c:	e7a40004 	swc1	$f4,4(sp)
     b80:	c7a60004 	lwc1	$f6,4(sp)
     b84:	c7a80004 	lwc1	$f8,4(sp)
     b88:	46000386 	mov.s	$f14,$f0
     b8c:	4600303c 	c.lt.s	$f6,$f0
     b90:	46001406 	mov.s	$f16,$f2
     b94:	46006486 	mov.s	$f18,$f12
     b98:	45020004 	bc1fl	bac <Math3D_SphCubeVsTriCube+0x44>
     b9c:	4608003c 	c.lt.s	$f0,$f8
     ba0:	10000006 	b	bbc <Math3D_SphCubeVsTriCube+0x54>
     ba4:	46003386 	mov.s	$f14,$f6
     ba8:	4608003c 	c.lt.s	$f0,$f8
     bac:	00000000 	nop
     bb0:	45020003 	bc1fl	bc0 <Math3D_SphCubeVsTriCube+0x58>
     bb4:	c4aa0004 	lwc1	$f10,4(a1)
     bb8:	46004006 	mov.s	$f0,$f8
     bbc:	c4aa0004 	lwc1	$f10,4(a1)
     bc0:	e7aa0004 	swc1	$f10,4(sp)
     bc4:	c7a40004 	lwc1	$f4,4(sp)
     bc8:	c7a60004 	lwc1	$f6,4(sp)
     bcc:	4602203c 	c.lt.s	$f4,$f2
     bd0:	00000000 	nop
     bd4:	45020004 	bc1fl	be8 <Math3D_SphCubeVsTriCube+0x80>
     bd8:	4606103c 	c.lt.s	$f2,$f6
     bdc:	10000006 	b	bf8 <Math3D_SphCubeVsTriCube+0x90>
     be0:	46002406 	mov.s	$f16,$f4
     be4:	4606103c 	c.lt.s	$f2,$f6
     be8:	00000000 	nop
     bec:	45020003 	bc1fl	bfc <Math3D_SphCubeVsTriCube+0x94>
     bf0:	c4a80008 	lwc1	$f8,8(a1)
     bf4:	46003086 	mov.s	$f2,$f6
     bf8:	c4a80008 	lwc1	$f8,8(a1)
     bfc:	e7a80004 	swc1	$f8,4(sp)
     c00:	c7aa0004 	lwc1	$f10,4(sp)
     c04:	c7a40004 	lwc1	$f4,4(sp)
     c08:	460c503c 	c.lt.s	$f10,$f12
     c0c:	00000000 	nop
     c10:	45020004 	bc1fl	c24 <Math3D_SphCubeVsTriCube+0xbc>
     c14:	4604603c 	c.lt.s	$f12,$f4
     c18:	10000006 	b	c34 <Math3D_SphCubeVsTriCube+0xcc>
     c1c:	46005486 	mov.s	$f18,$f10
     c20:	4604603c 	c.lt.s	$f12,$f4
     c24:	00000000 	nop
     c28:	45020003 	bc1fl	c38 <Math3D_SphCubeVsTriCube+0xd0>
     c2c:	c4c60000 	lwc1	$f6,0(a2)
     c30:	46002306 	mov.s	$f12,$f4
     c34:	c4c60000 	lwc1	$f6,0(a2)
     c38:	e7a60004 	swc1	$f6,4(sp)
     c3c:	c7a80004 	lwc1	$f8,4(sp)
     c40:	c7aa0004 	lwc1	$f10,4(sp)
     c44:	460e403c 	c.lt.s	$f8,$f14
     c48:	00000000 	nop
     c4c:	45020004 	bc1fl	c60 <Math3D_SphCubeVsTriCube+0xf8>
     c50:	460a003c 	c.lt.s	$f0,$f10
     c54:	10000006 	b	c70 <Math3D_SphCubeVsTriCube+0x108>
     c58:	46004386 	mov.s	$f14,$f8
     c5c:	460a003c 	c.lt.s	$f0,$f10
     c60:	00000000 	nop
     c64:	45020003 	bc1fl	c74 <Math3D_SphCubeVsTriCube+0x10c>
     c68:	c4c40004 	lwc1	$f4,4(a2)
     c6c:	46005006 	mov.s	$f0,$f10
     c70:	c4c40004 	lwc1	$f4,4(a2)
     c74:	00001025 	move	v0,zero
     c78:	e7a40004 	swc1	$f4,4(sp)
     c7c:	c7a60004 	lwc1	$f6,4(sp)
     c80:	c7a80004 	lwc1	$f8,4(sp)
     c84:	4610303c 	c.lt.s	$f6,$f16
     c88:	00000000 	nop
     c8c:	45020004 	bc1fl	ca0 <Math3D_SphCubeVsTriCube+0x138>
     c90:	4608103c 	c.lt.s	$f2,$f8
     c94:	10000006 	b	cb0 <Math3D_SphCubeVsTriCube+0x148>
     c98:	46003406 	mov.s	$f16,$f6
     c9c:	4608103c 	c.lt.s	$f2,$f8
     ca0:	00000000 	nop
     ca4:	45020003 	bc1fl	cb4 <Math3D_SphCubeVsTriCube+0x14c>
     ca8:	c4ca0008 	lwc1	$f10,8(a2)
     cac:	46004086 	mov.s	$f2,$f8
     cb0:	c4ca0008 	lwc1	$f10,8(a2)
     cb4:	e7aa0004 	swc1	$f10,4(sp)
     cb8:	c7a40004 	lwc1	$f4,4(sp)
     cbc:	c7a60004 	lwc1	$f6,4(sp)
     cc0:	4612203c 	c.lt.s	$f4,$f18
     cc4:	00000000 	nop
     cc8:	45020004 	bc1fl	cdc <Math3D_SphCubeVsTriCube+0x174>
     ccc:	4606603c 	c.lt.s	$f12,$f6
     cd0:	10000006 	b	cec <Math3D_SphCubeVsTriCube+0x184>
     cd4:	46002486 	mov.s	$f18,$f4
     cd8:	4606603c 	c.lt.s	$f12,$f6
     cdc:	00000000 	nop
     ce0:	45020003 	bc1fl	cf0 <Math3D_SphCubeVsTriCube+0x188>
     ce4:	c4e80000 	lwc1	$f8,0(a3)
     ce8:	46003306 	mov.s	$f12,$f6
     cec:	c4e80000 	lwc1	$f8,0(a3)
     cf0:	c7a40030 	lwc1	$f4,48(sp)
     cf4:	e7a80004 	swc1	$f8,4(sp)
     cf8:	46047181 	sub.s	$f6,$f14,$f4
     cfc:	c7aa0004 	lwc1	$f10,4(sp)
     d00:	460a303e 	c.le.s	$f6,$f10
     d04:	00000000 	nop
     d08:	4500001e 	bc1f	d84 <Math3D_SphCubeVsTriCube+0x21c>
     d0c:	00000000 	nop
     d10:	46040200 	add.s	$f8,$f0,$f4
     d14:	4608503e 	c.le.s	$f10,$f8
     d18:	00000000 	nop
     d1c:	45000019 	bc1f	d84 <Math3D_SphCubeVsTriCube+0x21c>
     d20:	00000000 	nop
     d24:	46048181 	sub.s	$f6,$f16,$f4
     d28:	c4e00004 	lwc1	$f0,4(a3)
     d2c:	4600303e 	c.le.s	$f6,$f0
     d30:	00000000 	nop
     d34:	45000013 	bc1f	d84 <Math3D_SphCubeVsTriCube+0x21c>
     d38:	00000000 	nop
     d3c:	46041200 	add.s	$f8,$f2,$f4
     d40:	4608003e 	c.le.s	$f0,$f8
     d44:	00000000 	nop
     d48:	4500000e 	bc1f	d84 <Math3D_SphCubeVsTriCube+0x21c>
     d4c:	00000000 	nop
     d50:	46049281 	sub.s	$f10,$f18,$f4
     d54:	c4e00008 	lwc1	$f0,8(a3)
     d58:	4600503e 	c.le.s	$f10,$f0
     d5c:	00000000 	nop
     d60:	45000008 	bc1f	d84 <Math3D_SphCubeVsTriCube+0x21c>
     d64:	00000000 	nop
     d68:	46046180 	add.s	$f6,$f12,$f4
     d6c:	4606003e 	c.le.s	$f0,$f6
     d70:	00000000 	nop
     d74:	45000003 	bc1f	d84 <Math3D_SphCubeVsTriCube+0x21c>
     d78:	00000000 	nop
     d7c:	10000001 	b	d84 <Math3D_SphCubeVsTriCube+0x21c>
     d80:	24020001 	li	v0,1
     d84:	03e00008 	jr	ra
     d88:	27bd0020 	addiu	sp,sp,32

00000d8c <Math3D_Dist1DSq>:
     d8c:	460c6102 	mul.s	$f4,$f12,$f12
     d90:	00000000 	nop
     d94:	460e7182 	mul.s	$f6,$f14,$f14
     d98:	03e00008 	jr	ra
     d9c:	46062000 	add.s	$f0,$f4,$f6

00000da0 <Math3D_Dist1D>:
     da0:	27bdffe8 	addiu	sp,sp,-24
     da4:	afbf0014 	sw	ra,20(sp)
     da8:	0c000000 	jal	0 <Math3D_PlaneVsLineSegClosestPoint>
     dac:	00000000 	nop
     db0:	8fbf0014 	lw	ra,20(sp)
     db4:	27bd0018 	addiu	sp,sp,24
     db8:	46000004 	sqrt.s	$f0,$f0
     dbc:	03e00008 	jr	ra
     dc0:	00000000 	nop

00000dc4 <Math3D_Dist2DSq>:
     dc4:	27bdffe8 	addiu	sp,sp,-24
     dc8:	e7ac0018 	swc1	$f12,24(sp)
     dcc:	c7b20018 	lwc1	$f18,24(sp)
     dd0:	e7ae001c 	swc1	$f14,28(sp)
     dd4:	c7b0001c 	lwc1	$f16,28(sp)
     dd8:	afa60020 	sw	a2,32(sp)
     ddc:	c7aa0020 	lwc1	$f10,32(sp)
     de0:	afa70024 	sw	a3,36(sp)
     de4:	c7a80024 	lwc1	$f8,36(sp)
     de8:	460a9301 	sub.s	$f12,$f18,$f10
     dec:	afbf0014 	sw	ra,20(sp)
     df0:	0c000000 	jal	0 <Math3D_PlaneVsLineSegClosestPoint>
     df4:	46088381 	sub.s	$f14,$f16,$f8
     df8:	8fbf0014 	lw	ra,20(sp)
     dfc:	27bd0018 	addiu	sp,sp,24
     e00:	03e00008 	jr	ra
     e04:	00000000 	nop

00000e08 <Math3D_Dist2D>:
     e08:	27bdffe8 	addiu	sp,sp,-24
     e0c:	afbf0014 	sw	ra,20(sp)
     e10:	afa60020 	sw	a2,32(sp)
     e14:	0c000000 	jal	0 <Math3D_PlaneVsLineSegClosestPoint>
     e18:	afa70024 	sw	a3,36(sp)
     e1c:	8fbf0014 	lw	ra,20(sp)
     e20:	27bd0018 	addiu	sp,sp,24
     e24:	46000004 	sqrt.s	$f0,$f0
     e28:	03e00008 	jr	ra
     e2c:	00000000 	nop

00000e30 <Math3D_Vec3fMagnitudeSq>:
     e30:	c4820000 	lwc1	$f2,0(a0)
     e34:	c48c0004 	lwc1	$f12,4(a0)
     e38:	c48e0008 	lwc1	$f14,8(a0)
     e3c:	46021102 	mul.s	$f4,$f2,$f2
     e40:	00000000 	nop
     e44:	460c6182 	mul.s	$f6,$f12,$f12
     e48:	46062200 	add.s	$f8,$f4,$f6
     e4c:	460e7282 	mul.s	$f10,$f14,$f14
     e50:	03e00008 	jr	ra
     e54:	460a4000 	add.s	$f0,$f8,$f10

00000e58 <Math3D_Vec3fMagnitude>:
     e58:	27bdffe8 	addiu	sp,sp,-24
     e5c:	afbf0014 	sw	ra,20(sp)
     e60:	0c000000 	jal	0 <Math3D_PlaneVsLineSegClosestPoint>
     e64:	00000000 	nop
     e68:	46000021 	cvt.d.s	$f0,$f0
     e6c:	8fbf0014 	lw	ra,20(sp)
     e70:	46200004 	sqrt.d	$f0,$f0
     e74:	27bd0018 	addiu	sp,sp,24
     e78:	03e00008 	jr	ra
     e7c:	46200020 	cvt.s.d	$f0,$f0

00000e80 <Math3D_Vec3fDistSq>:
     e80:	27bdffd8 	addiu	sp,sp,-40
     e84:	afbf0014 	sw	ra,20(sp)
     e88:	0c000000 	jal	0 <Math3D_PlaneVsLineSegClosestPoint>
     e8c:	27a6001c 	addiu	a2,sp,28
     e90:	0c000000 	jal	0 <Math3D_PlaneVsLineSegClosestPoint>
     e94:	27a4001c 	addiu	a0,sp,28
     e98:	8fbf0014 	lw	ra,20(sp)
     e9c:	27bd0028 	addiu	sp,sp,40
     ea0:	03e00008 	jr	ra
     ea4:	00000000 	nop

00000ea8 <Math3D_Vec3f_DistXYZ>:
     ea8:	27bdffe8 	addiu	sp,sp,-24
     eac:	afbf0014 	sw	ra,20(sp)
     eb0:	0c000000 	jal	0 <Math3D_PlaneVsLineSegClosestPoint>
     eb4:	00000000 	nop
     eb8:	8fbf0014 	lw	ra,20(sp)
     ebc:	27bd0018 	addiu	sp,sp,24
     ec0:	03e00008 	jr	ra
     ec4:	00000000 	nop

00000ec8 <Math3D_DistXYZ16toF>:
     ec8:	27bdffd8 	addiu	sp,sp,-40
     ecc:	afbf0014 	sw	ra,20(sp)
     ed0:	848e0000 	lh	t6,0(a0)
     ed4:	c4a80000 	lwc1	$f8,0(a1)
     ed8:	448e2000 	mtc1	t6,$f4
     edc:	00000000 	nop
     ee0:	468021a0 	cvt.s.w	$f6,$f4
     ee4:	46083281 	sub.s	$f10,$f6,$f8
     ee8:	e7aa001c 	swc1	$f10,28(sp)
     eec:	848f0002 	lh	t7,2(a0)
     ef0:	c4a40004 	lwc1	$f4,4(a1)
     ef4:	448f8000 	mtc1	t7,$f16
     ef8:	00000000 	nop
     efc:	468084a0 	cvt.s.w	$f18,$f16
     f00:	46049181 	sub.s	$f6,$f18,$f4
     f04:	e7a60020 	swc1	$f6,32(sp)
     f08:	84980004 	lh	t8,4(a0)
     f0c:	c4b00008 	lwc1	$f16,8(a1)
     f10:	27a4001c 	addiu	a0,sp,28
     f14:	44984000 	mtc1	t8,$f8
     f18:	00000000 	nop
     f1c:	468042a0 	cvt.s.w	$f10,$f8
     f20:	46105481 	sub.s	$f18,$f10,$f16
     f24:	0c000000 	jal	0 <Math3D_PlaneVsLineSegClosestPoint>
     f28:	e7b20024 	swc1	$f18,36(sp)
     f2c:	8fbf0014 	lw	ra,20(sp)
     f30:	27bd0028 	addiu	sp,sp,40
     f34:	03e00008 	jr	ra
     f38:	00000000 	nop

00000f3c <Math3D_Vec3fDiff_CrossZ>:
     f3c:	44866000 	mtc1	a2,$f12
     f40:	44877000 	mtc1	a3,$f14
     f44:	c4840000 	lwc1	$f4,0(a0)
     f48:	c4a80004 	lwc1	$f8,4(a1)
     f4c:	c4920004 	lwc1	$f18,4(a0)
     f50:	460c2181 	sub.s	$f6,$f4,$f12
     f54:	460e4281 	sub.s	$f10,$f8,$f14
     f58:	c4a80000 	lwc1	$f8,0(a1)
     f5c:	460e9101 	sub.s	$f4,$f18,$f14
     f60:	460a3402 	mul.s	$f16,$f6,$f10
     f64:	460c4181 	sub.s	$f6,$f8,$f12
     f68:	46062282 	mul.s	$f10,$f4,$f6
     f6c:	03e00008 	jr	ra
     f70:	460a8001 	sub.s	$f0,$f16,$f10

00000f74 <Math3D_Vec3fDiff_CrossX>:
     f74:	44866000 	mtc1	a2,$f12
     f78:	44877000 	mtc1	a3,$f14
     f7c:	c4840004 	lwc1	$f4,4(a0)
     f80:	c4a80008 	lwc1	$f8,8(a1)
     f84:	c4920008 	lwc1	$f18,8(a0)
     f88:	460c2181 	sub.s	$f6,$f4,$f12
     f8c:	460e4281 	sub.s	$f10,$f8,$f14
     f90:	c4a80004 	lwc1	$f8,4(a1)
     f94:	460e9101 	sub.s	$f4,$f18,$f14
     f98:	460a3402 	mul.s	$f16,$f6,$f10
     f9c:	460c4181 	sub.s	$f6,$f8,$f12
     fa0:	46062282 	mul.s	$f10,$f4,$f6
     fa4:	03e00008 	jr	ra
     fa8:	460a8001 	sub.s	$f0,$f16,$f10

00000fac <Math3D_Vec3fDiff_CrossY>:
     fac:	44866000 	mtc1	a2,$f12
     fb0:	44877000 	mtc1	a3,$f14
     fb4:	c4840008 	lwc1	$f4,8(a0)
     fb8:	c4a80000 	lwc1	$f8,0(a1)
     fbc:	c4920000 	lwc1	$f18,0(a0)
     fc0:	460c2181 	sub.s	$f6,$f4,$f12
     fc4:	460e4281 	sub.s	$f10,$f8,$f14
     fc8:	c4a80008 	lwc1	$f8,8(a1)
     fcc:	460e9101 	sub.s	$f4,$f18,$f14
     fd0:	460a3402 	mul.s	$f16,$f6,$f10
     fd4:	460c4181 	sub.s	$f6,$f8,$f12
     fd8:	46062282 	mul.s	$f10,$f4,$f6
     fdc:	03e00008 	jr	ra
     fe0:	460a8001 	sub.s	$f0,$f16,$f10

00000fe4 <Math3D_Vec3f_Cross>:
     fe4:	c4840004 	lwc1	$f4,4(a0)
     fe8:	c4a60008 	lwc1	$f6,8(a1)
     fec:	c48a0008 	lwc1	$f10,8(a0)
     ff0:	c4b00004 	lwc1	$f16,4(a1)
     ff4:	46062202 	mul.s	$f8,$f4,$f6
     ff8:	00000000 	nop
     ffc:	46105482 	mul.s	$f18,$f10,$f16
    1000:	46124101 	sub.s	$f4,$f8,$f18
    1004:	e4c40000 	swc1	$f4,0(a2)
    1008:	c4aa0000 	lwc1	$f10,0(a1)
    100c:	c4860008 	lwc1	$f6,8(a0)
    1010:	c4880000 	lwc1	$f8,0(a0)
    1014:	c4b20008 	lwc1	$f18,8(a1)
    1018:	460a3402 	mul.s	$f16,$f6,$f10
    101c:	00000000 	nop
    1020:	46124102 	mul.s	$f4,$f8,$f18
    1024:	46048181 	sub.s	$f6,$f16,$f4
    1028:	e4c60004 	swc1	$f6,4(a2)
    102c:	c4a80004 	lwc1	$f8,4(a1)
    1030:	c48a0000 	lwc1	$f10,0(a0)
    1034:	c4a40000 	lwc1	$f4,0(a1)
    1038:	c4900004 	lwc1	$f16,4(a0)
    103c:	46085482 	mul.s	$f18,$f10,$f8
    1040:	00000000 	nop
    1044:	46048182 	mul.s	$f6,$f16,$f4
    1048:	46069281 	sub.s	$f10,$f18,$f6
    104c:	03e00008 	jr	ra
    1050:	e4ca0008 	swc1	$f10,8(a2)

00001054 <Math3D_SurfaceNorm>:
    1054:	27bdffe8 	addiu	sp,sp,-24
    1058:	afa40018 	sw	a0,24(sp)
    105c:	afa60020 	sw	a2,32(sp)
    1060:	afbf0014 	sw	ra,20(sp)
    1064:	afa5001c 	sw	a1,28(sp)
    1068:	3c060000 	lui	a2,0x0
    106c:	00a02025 	move	a0,a1
    1070:	afa70024 	sw	a3,36(sp)
    1074:	8fa50018 	lw	a1,24(sp)
    1078:	0c000000 	jal	0 <Math3D_PlaneVsLineSegClosestPoint>
    107c:	24c60048 	addiu	a2,a2,72
    1080:	3c060000 	lui	a2,0x0
    1084:	24c60058 	addiu	a2,a2,88
    1088:	8fa40020 	lw	a0,32(sp)
    108c:	0c000000 	jal	0 <Math3D_PlaneVsLineSegClosestPoint>
    1090:	8fa50018 	lw	a1,24(sp)
    1094:	3c040000 	lui	a0,0x0
    1098:	3c050000 	lui	a1,0x0
    109c:	24a50058 	addiu	a1,a1,88
    10a0:	24840048 	addiu	a0,a0,72
    10a4:	0c000000 	jal	0 <Math3D_PlaneVsLineSegClosestPoint>
    10a8:	8fa60024 	lw	a2,36(sp)
    10ac:	8fbf0014 	lw	ra,20(sp)
    10b0:	27bd0018 	addiu	sp,sp,24
    10b4:	03e00008 	jr	ra
    10b8:	00000000 	nop

000010bc <Math3D_PointRelativeToCubeFaces>:
    10bc:	c4800000 	lwc1	$f0,0(a0)
    10c0:	c4c40000 	lwc1	$f4,0(a2)
    10c4:	00001825 	move	v1,zero
    10c8:	4600203c 	c.lt.s	$f4,$f0
    10cc:	00000000 	nop
    10d0:	45020003 	bc1fl	10e0 <Math3D_PointRelativeToCubeFaces+0x24>
    10d4:	c4a60000 	lwc1	$f6,0(a1)
    10d8:	24030001 	li	v1,1
    10dc:	c4a60000 	lwc1	$f6,0(a1)
    10e0:	4606003c 	c.lt.s	$f0,$f6
    10e4:	00000000 	nop
    10e8:	45020003 	bc1fl	10f8 <Math3D_PointRelativeToCubeFaces+0x3c>
    10ec:	c4800004 	lwc1	$f0,4(a0)
    10f0:	34630002 	ori	v1,v1,0x2
    10f4:	c4800004 	lwc1	$f0,4(a0)
    10f8:	c4c80004 	lwc1	$f8,4(a2)
    10fc:	4600403c 	c.lt.s	$f8,$f0
    1100:	00000000 	nop
    1104:	45020003 	bc1fl	1114 <Math3D_PointRelativeToCubeFaces+0x58>
    1108:	c4aa0004 	lwc1	$f10,4(a1)
    110c:	34630004 	ori	v1,v1,0x4
    1110:	c4aa0004 	lwc1	$f10,4(a1)
    1114:	460a003c 	c.lt.s	$f0,$f10
    1118:	00000000 	nop
    111c:	45020003 	bc1fl	112c <Math3D_PointRelativeToCubeFaces+0x70>
    1120:	c4800008 	lwc1	$f0,8(a0)
    1124:	34630008 	ori	v1,v1,0x8
    1128:	c4800008 	lwc1	$f0,8(a0)
    112c:	c4d00008 	lwc1	$f16,8(a2)
    1130:	4600803c 	c.lt.s	$f16,$f0
    1134:	00000000 	nop
    1138:	45020003 	bc1fl	1148 <Math3D_PointRelativeToCubeFaces+0x8c>
    113c:	c4b20008 	lwc1	$f18,8(a1)
    1140:	34630010 	ori	v1,v1,0x10
    1144:	c4b20008 	lwc1	$f18,8(a1)
    1148:	4612003c 	c.lt.s	$f0,$f18
    114c:	00000000 	nop
    1150:	45000002 	bc1f	115c <Math3D_PointRelativeToCubeFaces+0xa0>
    1154:	00000000 	nop
    1158:	34630020 	ori	v1,v1,0x20
    115c:	03e00008 	jr	ra
    1160:	00601025 	move	v0,v1

00001164 <Math3D_PointRelativeToCubeEdges>:
    1164:	c4a40000 	lwc1	$f4,0(a1)
    1168:	27bdffc8 	addiu	sp,sp,-56
    116c:	00001825 	move	v1,zero
    1170:	e7a40030 	swc1	$f4,48(sp)
    1174:	c4860000 	lwc1	$f6,0(a0)
    1178:	c4c20004 	lwc1	$f2,4(a2)
    117c:	c7aa0030 	lwc1	$f10,48(sp)
    1180:	e7a60028 	swc1	$f6,40(sp)
    1184:	c7a80028 	lwc1	$f8,40(sp)
    1188:	c48c0004 	lwc1	$f12,4(a0)
    118c:	460a1101 	sub.s	$f4,$f2,$f10
    1190:	46086001 	sub.s	$f0,$f12,$f8
    1194:	4600203c 	c.lt.s	$f4,$f0
    1198:	00000000 	nop
    119c:	45020003 	bc1fl	11ac <Math3D_PointRelativeToCubeEdges+0x48>
    11a0:	c4c60000 	lwc1	$f6,0(a2)
    11a4:	24030001 	li	v1,1
    11a8:	c4c60000 	lwc1	$f6,0(a2)
    11ac:	c7a40028 	lwc1	$f4,40(sp)
    11b0:	e7a6001c 	swc1	$f6,28(sp)
    11b4:	c7a8001c 	lwc1	$f8,28(sp)
    11b8:	c4ae0004 	lwc1	$f14,4(a1)
    11bc:	c7a6001c 	lwc1	$f6,28(sp)
    11c0:	46087281 	sub.s	$f10,$f14,$f8
    11c4:	46023200 	add.s	$f8,$f6,$f2
    11c8:	460a003c 	c.lt.s	$f0,$f10
    11cc:	c7aa0030 	lwc1	$f10,48(sp)
    11d0:	460c2000 	add.s	$f0,$f4,$f12
    11d4:	45000002 	bc1f	11e0 <Math3D_PointRelativeToCubeEdges+0x7c>
    11d8:	460e5100 	add.s	$f4,$f10,$f14
    11dc:	34630002 	ori	v1,v1,0x2
    11e0:	4600403c 	c.lt.s	$f8,$f0
    11e4:	00000000 	nop
    11e8:	45020003 	bc1fl	11f8 <Math3D_PointRelativeToCubeEdges+0x94>
    11ec:	4604003c 	c.lt.s	$f0,$f4
    11f0:	34630004 	ori	v1,v1,0x4
    11f4:	4604003c 	c.lt.s	$f0,$f4
    11f8:	00000000 	nop
    11fc:	45020003 	bc1fl	120c <Math3D_PointRelativeToCubeEdges+0xa8>
    1200:	c4a60008 	lwc1	$f6,8(a1)
    1204:	34630008 	ori	v1,v1,0x8
    1208:	c4a60008 	lwc1	$f6,8(a1)
    120c:	e7a60020 	swc1	$f6,32(sp)
    1210:	c4920008 	lwc1	$f18,8(a0)
    1214:	c7b00020 	lwc1	$f16,32(sp)
    1218:	46009207 	neg.s	$f8,$f18
    121c:	46008407 	neg.s	$f16,$f16
    1220:	e7a8000c 	swc1	$f8,12(sp)
    1224:	c7aa000c 	lwc1	$f10,12(sp)
    1228:	46028100 	add.s	$f4,$f16,$f2
    122c:	460c5000 	add.s	$f0,$f10,$f12
    1230:	4600203c 	c.lt.s	$f4,$f0
    1234:	00000000 	nop
    1238:	45020003 	bc1fl	1248 <Math3D_PointRelativeToCubeEdges+0xe4>
    123c:	c4c60008 	lwc1	$f6,8(a2)
    1240:	34630010 	ori	v1,v1,0x10
    1244:	c4c60008 	lwc1	$f6,8(a2)
    1248:	e7a60004 	swc1	$f6,4(sp)
    124c:	c7a80004 	lwc1	$f8,4(sp)
    1250:	c7a60004 	lwc1	$f6,4(sp)
    1254:	46087101 	sub.s	$f4,$f14,$f8
    1258:	46004287 	neg.s	$f10,$f8
    125c:	4604003c 	c.lt.s	$f0,$f4
    1260:	e7aa0000 	swc1	$f10,0(sp)
    1264:	46023280 	add.s	$f10,$f6,$f2
    1268:	c7a20020 	lwc1	$f2,32(sp)
    126c:	c7a4000c 	lwc1	$f4,12(sp)
    1270:	460c9000 	add.s	$f0,$f18,$f12
    1274:	c7ac0028 	lwc1	$f12,40(sp)
    1278:	45000002 	bc1f	1284 <Math3D_PointRelativeToCubeEdges+0x120>
    127c:	460e1200 	add.s	$f8,$f2,$f14
    1280:	34630020 	ori	v1,v1,0x20
    1284:	4600503c 	c.lt.s	$f10,$f0
    1288:	c7ae001c 	lwc1	$f14,28(sp)
    128c:	c7aa0000 	lwc1	$f10,0(sp)
    1290:	45000002 	bc1f	129c <Math3D_PointRelativeToCubeEdges+0x138>
    1294:	460e8180 	add.s	$f6,$f16,$f14
    1298:	34630040 	ori	v1,v1,0x40
    129c:	4608003c 	c.lt.s	$f0,$f8
    12a0:	c7b00030 	lwc1	$f16,48(sp)
    12a4:	460c2000 	add.s	$f0,$f4,$f12
    12a8:	c7a40004 	lwc1	$f4,4(sp)
    12ac:	45000002 	bc1f	12b8 <Math3D_PointRelativeToCubeEdges+0x154>
    12b0:	46105200 	add.s	$f8,$f10,$f16
    12b4:	34630080 	ori	v1,v1,0x80
    12b8:	4600303c 	c.lt.s	$f6,$f0
    12bc:	460e2180 	add.s	$f6,$f4,$f14
    12c0:	45000002 	bc1f	12cc <Math3D_PointRelativeToCubeEdges+0x168>
    12c4:	46101280 	add.s	$f10,$f2,$f16
    12c8:	34630100 	ori	v1,v1,0x100
    12cc:	4608003c 	c.lt.s	$f0,$f8
    12d0:	460c9000 	add.s	$f0,$f18,$f12
    12d4:	45020003 	bc1fl	12e4 <Math3D_PointRelativeToCubeEdges+0x180>
    12d8:	4600303c 	c.lt.s	$f6,$f0
    12dc:	34630200 	ori	v1,v1,0x200
    12e0:	4600303c 	c.lt.s	$f6,$f0
    12e4:	00000000 	nop
    12e8:	45020003 	bc1fl	12f8 <Math3D_PointRelativeToCubeEdges+0x194>
    12ec:	460a003c 	c.lt.s	$f0,$f10
    12f0:	34630400 	ori	v1,v1,0x400
    12f4:	460a003c 	c.lt.s	$f0,$f10
    12f8:	00000000 	nop
    12fc:	45020003 	bc1fl	130c <Math3D_PointRelativeToCubeEdges+0x1a8>
    1300:	00601025 	move	v0,v1
    1304:	34630800 	ori	v1,v1,0x800
    1308:	00601025 	move	v0,v1
    130c:	03e00008 	jr	ra
    1310:	27bd0038 	addiu	sp,sp,56

00001314 <Math3D_PointRelativeToCubeVertices>:
    1314:	c4c40000 	lwc1	$f4,0(a2)
    1318:	27bdffd0 	addiu	sp,sp,-48
    131c:	00001825 	move	v1,zero
    1320:	e7a40028 	swc1	$f4,40(sp)
    1324:	c4c60004 	lwc1	$f6,4(a2)
    1328:	c7a80028 	lwc1	$f8,40(sp)
    132c:	e7a60024 	swc1	$f6,36(sp)
    1330:	c7aa0024 	lwc1	$f10,36(sp)
    1334:	460a4100 	add.s	$f4,$f8,$f10
    1338:	e7a40020 	swc1	$f4,32(sp)
    133c:	c4920004 	lwc1	$f18,4(a0)
    1340:	c48e0000 	lwc1	$f14,0(a0)
    1344:	c4d00008 	lwc1	$f16,8(a2)
    1348:	46127180 	add.s	$f6,$f14,$f18
    134c:	46102200 	add.s	$f8,$f4,$f16
    1350:	e7a60010 	swc1	$f6,16(sp)
    1354:	c7aa0010 	lwc1	$f10,16(sp)
    1358:	c4800008 	lwc1	$f0,8(a0)
    135c:	46005180 	add.s	$f6,$f10,$f0
    1360:	4606403c 	c.lt.s	$f8,$f6
    1364:	00000000 	nop
    1368:	45020003 	bc1fl	1378 <Math3D_PointRelativeToCubeVertices+0x64>
    136c:	c4a40000 	lwc1	$f4,0(a1)
    1370:	24030001 	li	v1,1
    1374:	c4a40000 	lwc1	$f4,0(a1)
    1378:	c7a60024 	lwc1	$f6,36(sp)
    137c:	46002287 	neg.s	$f10,$f4
    1380:	46007107 	neg.s	$f4,$f14
    1384:	e7aa0008 	swc1	$f10,8(sp)
    1388:	e7a40000 	swc1	$f4,0(sp)
    138c:	c7aa0000 	lwc1	$f10,0(sp)
    1390:	c7a80008 	lwc1	$f8,8(sp)
    1394:	46125300 	add.s	$f12,$f10,$f18
    1398:	46064080 	add.s	$f2,$f8,$f6
    139c:	46006180 	add.s	$f6,$f12,$f0
    13a0:	46101200 	add.s	$f8,$f2,$f16
    13a4:	4606403c 	c.lt.s	$f8,$f6
    13a8:	00000000 	nop
    13ac:	45020003 	bc1fl	13bc <Math3D_PointRelativeToCubeVertices+0xa8>
    13b0:	c4a40008 	lwc1	$f4,8(a1)
    13b4:	34630002 	ori	v1,v1,0x2
    13b8:	c4a40008 	lwc1	$f4,8(a1)
    13bc:	46006181 	sub.s	$f6,$f12,$f0
    13c0:	e7a40024 	swc1	$f4,36(sp)
    13c4:	c7aa0024 	lwc1	$f10,36(sp)
    13c8:	c7a40020 	lwc1	$f4,32(sp)
    13cc:	460a1201 	sub.s	$f8,$f2,$f10
    13d0:	c7aa0024 	lwc1	$f10,36(sp)
    13d4:	4606403c 	c.lt.s	$f8,$f6
    13d8:	c7a60010 	lwc1	$f6,16(sp)
    13dc:	460a2201 	sub.s	$f8,$f4,$f10
    13e0:	c7aa0028 	lwc1	$f10,40(sp)
    13e4:	45000002 	bc1f	13f0 <Math3D_PointRelativeToCubeVertices+0xdc>
    13e8:	46003101 	sub.s	$f4,$f6,$f0
    13ec:	34630004 	ori	v1,v1,0x4
    13f0:	4604403c 	c.lt.s	$f8,$f4
    13f4:	46127101 	sub.s	$f4,$f14,$f18
    13f8:	45020003 	bc1fl	1408 <Math3D_PointRelativeToCubeVertices+0xf4>
    13fc:	c4a20004 	lwc1	$f2,4(a1)
    1400:	34630008 	ori	v1,v1,0x8
    1404:	c4a20004 	lwc1	$f2,4(a1)
    1408:	46025181 	sub.s	$f6,$f10,$f2
    140c:	46002280 	add.s	$f10,$f4,$f0
    1410:	c7a40000 	lwc1	$f4,0(sp)
    1414:	46103200 	add.s	$f8,$f6,$f16
    1418:	c7a60008 	lwc1	$f6,8(sp)
    141c:	460a403c 	c.lt.s	$f8,$f10
    1420:	46122201 	sub.s	$f8,$f4,$f18
    1424:	45000002 	bc1f	1430 <Math3D_PointRelativeToCubeVertices+0x11c>
    1428:	46023301 	sub.s	$f12,$f6,$f2
    142c:	34630010 	ori	v1,v1,0x10
    1430:	46106380 	add.s	$f14,$f12,$f16
    1434:	e7a80010 	swc1	$f8,16(sp)
    1438:	c7a40024 	lwc1	$f4,36(sp)
    143c:	46004280 	add.s	$f10,$f8,$f0
    1440:	460a703c 	c.lt.s	$f14,$f10
    1444:	e7aa0004 	swc1	$f10,4(sp)
    1448:	c7a60004 	lwc1	$f6,4(sp)
    144c:	c7aa0010 	lwc1	$f10,16(sp)
    1450:	45020003 	bc1fl	1460 <Math3D_PointRelativeToCubeVertices+0x14c>
    1454:	4606703c 	c.lt.s	$f14,$f6
    1458:	34630020 	ori	v1,v1,0x20
    145c:	4606703c 	c.lt.s	$f14,$f6
    1460:	46005181 	sub.s	$f6,$f10,$f0
    1464:	45000002 	bc1f	1470 <Math3D_PointRelativeToCubeVertices+0x15c>
    1468:	46046201 	sub.s	$f8,$f12,$f4
    146c:	34630040 	ori	v1,v1,0x40
    1470:	4606403c 	c.lt.s	$f8,$f6
    1474:	00000000 	nop
    1478:	45020003 	bc1fl	1488 <Math3D_PointRelativeToCubeVertices+0x174>
    147c:	00601025 	move	v0,v1
    1480:	34630080 	ori	v1,v1,0x80
    1484:	00601025 	move	v0,v1
    1488:	03e00008 	jr	ra
    148c:	27bd0030 	addiu	sp,sp,48

00001490 <Math3D_LineVsCube>:
    1490:	27bdffa8 	addiu	sp,sp,-88
    1494:	afb0003c 	sw	s0,60(sp)
    1498:	00808025 	move	s0,a0
    149c:	afb20044 	sw	s2,68(sp)
    14a0:	afb10040 	sw	s1,64(sp)
    14a4:	00a08825 	move	s1,a1
    14a8:	00c09025 	move	s2,a2
    14ac:	afbf004c 	sw	ra,76(sp)
    14b0:	afb30048 	sw	s3,72(sp)
    14b4:	00c02025 	move	a0,a2
    14b8:	00e09825 	move	s3,a3
    14bc:	f7b40030 	sdc1	$f20,48(sp)
    14c0:	afa00050 	sw	zero,80(sp)
    14c4:	02203025 	move	a2,s1
    14c8:	02002825 	move	a1,s0
    14cc:	0c000000 	jal	0 <Math3D_PlaneVsLineSegClosestPoint>
    14d0:	afa00054 	sw	zero,84(sp)
    14d4:	14400003 	bnez	v0,14e4 <Math3D_LineVsCube+0x54>
    14d8:	afa20050 	sw	v0,80(sp)
    14dc:	10000282 	b	1ee8 <Math3D_LineVsCube+0xa58>
    14e0:	24020001 	li	v0,1
    14e4:	02602025 	move	a0,s3
    14e8:	02002825 	move	a1,s0
    14ec:	0c000000 	jal	0 <Math3D_PlaneVsLineSegClosestPoint>
    14f0:	02203025 	move	a2,s1
    14f4:	14400003 	bnez	v0,1504 <Math3D_LineVsCube+0x74>
    14f8:	afa20054 	sw	v0,84(sp)
    14fc:	1000027a 	b	1ee8 <Math3D_LineVsCube+0xa58>
    1500:	24020001 	li	v0,1
    1504:	8fa70050 	lw	a3,80(sp)
    1508:	02402025 	move	a0,s2
    150c:	02002825 	move	a1,s0
    1510:	00477024 	and	t6,v0,a3
    1514:	11c00003 	beqz	t6,1524 <Math3D_LineVsCube+0x94>
    1518:	00000000 	nop
    151c:	10000272 	b	1ee8 <Math3D_LineVsCube+0xa58>
    1520:	00001025 	move	v0,zero
    1524:	0c000000 	jal	0 <Math3D_PlaneVsLineSegClosestPoint>
    1528:	02203025 	move	a2,s1
    152c:	8fa70050 	lw	a3,80(sp)
    1530:	00027a00 	sll	t7,v0,0x8
    1534:	02602025 	move	a0,s3
    1538:	00ef3825 	or	a3,a3,t7
    153c:	afa70050 	sw	a3,80(sp)
    1540:	02002825 	move	a1,s0
    1544:	0c000000 	jal	0 <Math3D_PlaneVsLineSegClosestPoint>
    1548:	02203025 	move	a2,s1
    154c:	8fa30054 	lw	v1,84(sp)
    1550:	8fa70050 	lw	a3,80(sp)
    1554:	0002c200 	sll	t8,v0,0x8
    1558:	00781825 	or	v1,v1,t8
    155c:	0067c824 	and	t9,v1,a3
    1560:	13200003 	beqz	t9,1570 <Math3D_LineVsCube+0xe0>
    1564:	afa30054 	sw	v1,84(sp)
    1568:	1000025f 	b	1ee8 <Math3D_LineVsCube+0xa58>
    156c:	00001025 	move	v0,zero
    1570:	02402025 	move	a0,s2
    1574:	02002825 	move	a1,s0
    1578:	0c000000 	jal	0 <Math3D_PlaneVsLineSegClosestPoint>
    157c:	02203025 	move	a2,s1
    1580:	8fa70050 	lw	a3,80(sp)
    1584:	00024600 	sll	t0,v0,0x18
    1588:	02602025 	move	a0,s3
    158c:	00e83825 	or	a3,a3,t0
    1590:	afa70050 	sw	a3,80(sp)
    1594:	02002825 	move	a1,s0
    1598:	0c000000 	jal	0 <Math3D_PlaneVsLineSegClosestPoint>
    159c:	02203025 	move	a2,s1
    15a0:	8fa30054 	lw	v1,84(sp)
    15a4:	8fa70050 	lw	a3,80(sp)
    15a8:	00024e00 	sll	t1,v0,0x18
    15ac:	00691825 	or	v1,v1,t1
    15b0:	00675024 	and	t2,v1,a3
    15b4:	11400003 	beqz	t2,15c4 <Math3D_LineVsCube+0x134>
    15b8:	afa30054 	sw	v1,84(sp)
    15bc:	1000024a 	b	1ee8 <Math3D_LineVsCube+0xa58>
    15c0:	00001025 	move	v0,zero
    15c4:	c6040000 	lwc1	$f4,0(s0)
    15c8:	3c010000 	lui	at,0x0
    15cc:	4480a000 	mtc1	zero,$f20
    15d0:	e4240068 	swc1	$f4,104(at)
    15d4:	c6060004 	lwc1	$f6,4(s0)
    15d8:	3c0b0000 	lui	t3,0x0
    15dc:	256b0098 	addiu	t3,t3,152
    15e0:	e426006c 	swc1	$f6,108(at)
    15e4:	c6080008 	lwc1	$f8,8(s0)
    15e8:	3c010000 	lui	at,0x0
    15ec:	3c040000 	lui	a0,0x0
    15f0:	e4280070 	swc1	$f8,112(at)
    15f4:	c60a0000 	lwc1	$f10,0(s0)
    15f8:	3c010000 	lui	at,0x0
    15fc:	3c050000 	lui	a1,0x0
    1600:	e42a0078 	swc1	$f10,120(at)
    1604:	c6100004 	lwc1	$f16,4(s0)
    1608:	3c060000 	lui	a2,0x0
    160c:	24c60088 	addiu	a2,a2,136
    1610:	e430007c 	swc1	$f16,124(at)
    1614:	c6320008 	lwc1	$f18,8(s1)
    1618:	3c010000 	lui	at,0x0
    161c:	24a50078 	addiu	a1,a1,120
    1620:	e4320080 	swc1	$f18,128(at)
    1624:	c6040000 	lwc1	$f4,0(s0)
    1628:	3c010000 	lui	at,0x0
    162c:	24840068 	addiu	a0,a0,104
    1630:	e4240088 	swc1	$f4,136(at)
    1634:	c6260004 	lwc1	$f6,4(s1)
    1638:	3c07bf80 	lui	a3,0xbf80
    163c:	e426008c 	swc1	$f6,140(at)
    1640:	c6280008 	lwc1	$f8,8(s1)
    1644:	3c010000 	lui	at,0x0
    1648:	e7b40014 	swc1	$f20,20(sp)
    164c:	e7b40010 	swc1	$f20,16(sp)
    1650:	e4280090 	swc1	$f8,144(at)
    1654:	c60a0000 	lwc1	$f10,0(s0)
    1658:	afa00028 	sw	zero,40(sp)
    165c:	afab0024 	sw	t3,36(sp)
    1660:	afb30020 	sw	s3,32(sp)
    1664:	afb2001c 	sw	s2,28(sp)
    1668:	0c000000 	jal	0 <Math3D_PlaneVsLineSegClosestPoint>
    166c:	e7aa0018 	swc1	$f10,24(sp)
    1670:	50400004 	beqzl	v0,1684 <Math3D_LineVsCube+0x1f4>
    1674:	c6100000 	lwc1	$f16,0(s0)
    1678:	1000021b 	b	1ee8 <Math3D_LineVsCube+0xa58>
    167c:	24020001 	li	v0,1
    1680:	c6100000 	lwc1	$f16,0(s0)
    1684:	3c010000 	lui	at,0x0
    1688:	3c0c0000 	lui	t4,0x0
    168c:	e4300068 	swc1	$f16,104(at)
    1690:	c6120004 	lwc1	$f18,4(s0)
    1694:	258c0098 	addiu	t4,t4,152
    1698:	3c040000 	lui	a0,0x0
    169c:	e432006c 	swc1	$f18,108(at)
    16a0:	c6040008 	lwc1	$f4,8(s0)
    16a4:	3c010000 	lui	at,0x0
    16a8:	3c050000 	lui	a1,0x0
    16ac:	e4240070 	swc1	$f4,112(at)
    16b0:	c6060000 	lwc1	$f6,0(s0)
    16b4:	3c010000 	lui	at,0x0
    16b8:	3c060000 	lui	a2,0x0
    16bc:	e4260078 	swc1	$f6,120(at)
    16c0:	c6280004 	lwc1	$f8,4(s1)
    16c4:	24c60088 	addiu	a2,a2,136
    16c8:	24a50078 	addiu	a1,a1,120
    16cc:	e428007c 	swc1	$f8,124(at)
    16d0:	c62a0008 	lwc1	$f10,8(s1)
    16d4:	3c010000 	lui	at,0x0
    16d8:	24840068 	addiu	a0,a0,104
    16dc:	e42a0080 	swc1	$f10,128(at)
    16e0:	c6100000 	lwc1	$f16,0(s0)
    16e4:	3c010000 	lui	at,0x0
    16e8:	3c07bf80 	lui	a3,0xbf80
    16ec:	e4300088 	swc1	$f16,136(at)
    16f0:	c6320004 	lwc1	$f18,4(s1)
    16f4:	e432008c 	swc1	$f18,140(at)
    16f8:	c6040008 	lwc1	$f4,8(s0)
    16fc:	3c010000 	lui	at,0x0
    1700:	e7b40014 	swc1	$f20,20(sp)
    1704:	e7b40010 	swc1	$f20,16(sp)
    1708:	e4240090 	swc1	$f4,144(at)
    170c:	c6060000 	lwc1	$f6,0(s0)
    1710:	afa00028 	sw	zero,40(sp)
    1714:	afac0024 	sw	t4,36(sp)
    1718:	afb30020 	sw	s3,32(sp)
    171c:	afb2001c 	sw	s2,28(sp)
    1720:	0c000000 	jal	0 <Math3D_PlaneVsLineSegClosestPoint>
    1724:	e7a60018 	swc1	$f6,24(sp)
    1728:	50400004 	beqzl	v0,173c <Math3D_LineVsCube+0x2ac>
    172c:	c6080000 	lwc1	$f8,0(s0)
    1730:	100001ed 	b	1ee8 <Math3D_LineVsCube+0xa58>
    1734:	24020001 	li	v0,1
    1738:	c6080000 	lwc1	$f8,0(s0)
    173c:	3c010000 	lui	at,0x0
    1740:	3c0d0000 	lui	t5,0x0
    1744:	e4280068 	swc1	$f8,104(at)
    1748:	c62a0004 	lwc1	$f10,4(s1)
    174c:	25ad0098 	addiu	t5,t5,152
    1750:	3c040000 	lui	a0,0x0
    1754:	e42a006c 	swc1	$f10,108(at)
    1758:	c6300008 	lwc1	$f16,8(s1)
    175c:	3c010000 	lui	at,0x0
    1760:	3c050000 	lui	a1,0x0
    1764:	e4300070 	swc1	$f16,112(at)
    1768:	c6120000 	lwc1	$f18,0(s0)
    176c:	3c010000 	lui	at,0x0
    1770:	3c060000 	lui	a2,0x0
    1774:	e4320078 	swc1	$f18,120(at)
    1778:	c6040004 	lwc1	$f4,4(s0)
    177c:	4407a000 	mfc1	a3,$f20
    1780:	24c60088 	addiu	a2,a2,136
    1784:	e424007c 	swc1	$f4,124(at)
    1788:	c6260008 	lwc1	$f6,8(s1)
    178c:	3c010000 	lui	at,0x0
    1790:	24a50078 	addiu	a1,a1,120
    1794:	e4260080 	swc1	$f6,128(at)
    1798:	c6280000 	lwc1	$f8,0(s1)
    179c:	3c010000 	lui	at,0x0
    17a0:	24840068 	addiu	a0,a0,104
    17a4:	e4280088 	swc1	$f8,136(at)
    17a8:	c62a0004 	lwc1	$f10,4(s1)
    17ac:	e42a008c 	swc1	$f10,140(at)
    17b0:	c6300008 	lwc1	$f16,8(s1)
    17b4:	3c010000 	lui	at,0x0
    17b8:	e7b40010 	swc1	$f20,16(sp)
    17bc:	e4300090 	swc1	$f16,144(at)
    17c0:	3c013f80 	lui	at,0x3f80
    17c4:	44819000 	mtc1	at,$f18
    17c8:	00000000 	nop
    17cc:	e7b20014 	swc1	$f18,20(sp)
    17d0:	c6240008 	lwc1	$f4,8(s1)
    17d4:	afa00028 	sw	zero,40(sp)
    17d8:	afad0024 	sw	t5,36(sp)
    17dc:	46002187 	neg.s	$f6,$f4
    17e0:	afb30020 	sw	s3,32(sp)
    17e4:	e7a60018 	swc1	$f6,24(sp)
    17e8:	0c000000 	jal	0 <Math3D_PlaneVsLineSegClosestPoint>
    17ec:	afb2001c 	sw	s2,28(sp)
    17f0:	50400004 	beqzl	v0,1804 <Math3D_LineVsCube+0x374>
    17f4:	c6280000 	lwc1	$f8,0(s1)
    17f8:	100001bb 	b	1ee8 <Math3D_LineVsCube+0xa58>
    17fc:	24020001 	li	v0,1
    1800:	c6280000 	lwc1	$f8,0(s1)
    1804:	3c010000 	lui	at,0x0
    1808:	3c0e0000 	lui	t6,0x0
    180c:	e4280068 	swc1	$f8,104(at)
    1810:	c62a0004 	lwc1	$f10,4(s1)
    1814:	25ce0098 	addiu	t6,t6,152
    1818:	3c040000 	lui	a0,0x0
    181c:	e42a006c 	swc1	$f10,108(at)
    1820:	c6300008 	lwc1	$f16,8(s1)
    1824:	3c010000 	lui	at,0x0
    1828:	3c050000 	lui	a1,0x0
    182c:	e4300070 	swc1	$f16,112(at)
    1830:	c6120000 	lwc1	$f18,0(s0)
    1834:	3c010000 	lui	at,0x0
    1838:	3c060000 	lui	a2,0x0
    183c:	e4320078 	swc1	$f18,120(at)
    1840:	c6040004 	lwc1	$f4,4(s0)
    1844:	4407a000 	mfc1	a3,$f20
    1848:	24c60088 	addiu	a2,a2,136
    184c:	e424007c 	swc1	$f4,124(at)
    1850:	c6260008 	lwc1	$f6,8(s1)
    1854:	3c010000 	lui	at,0x0
    1858:	24a50078 	addiu	a1,a1,120
    185c:	e4260080 	swc1	$f6,128(at)
    1860:	c6280000 	lwc1	$f8,0(s1)
    1864:	3c010000 	lui	at,0x0
    1868:	24840068 	addiu	a0,a0,104
    186c:	e4280088 	swc1	$f8,136(at)
    1870:	c60a0004 	lwc1	$f10,4(s0)
    1874:	3c010000 	lui	at,0x0
    1878:	e42a007c 	swc1	$f10,124(at)
    187c:	c6300008 	lwc1	$f16,8(s1)
    1880:	3c010000 	lui	at,0x0
    1884:	e7b40010 	swc1	$f20,16(sp)
    1888:	e4300090 	swc1	$f16,144(at)
    188c:	3c013f80 	lui	at,0x3f80
    1890:	44819000 	mtc1	at,$f18
    1894:	00000000 	nop
    1898:	e7b20014 	swc1	$f18,20(sp)
    189c:	c6240008 	lwc1	$f4,8(s1)
    18a0:	afa00028 	sw	zero,40(sp)
    18a4:	afae0024 	sw	t6,36(sp)
    18a8:	46002187 	neg.s	$f6,$f4
    18ac:	afb30020 	sw	s3,32(sp)
    18b0:	e7a60018 	swc1	$f6,24(sp)
    18b4:	0c000000 	jal	0 <Math3D_PlaneVsLineSegClosestPoint>
    18b8:	afb2001c 	sw	s2,28(sp)
    18bc:	50400004 	beqzl	v0,18d0 <Math3D_LineVsCube+0x440>
    18c0:	c6280000 	lwc1	$f8,0(s1)
    18c4:	10000188 	b	1ee8 <Math3D_LineVsCube+0xa58>
    18c8:	24020001 	li	v0,1
    18cc:	c6280000 	lwc1	$f8,0(s1)
    18d0:	3c010000 	lui	at,0x0
    18d4:	3c0f0000 	lui	t7,0x0
    18d8:	e4280068 	swc1	$f8,104(at)
    18dc:	c62a0004 	lwc1	$f10,4(s1)
    18e0:	25ef0098 	addiu	t7,t7,152
    18e4:	3c040000 	lui	a0,0x0
    18e8:	e42a006c 	swc1	$f10,108(at)
    18ec:	c6300008 	lwc1	$f16,8(s1)
    18f0:	3c010000 	lui	at,0x0
    18f4:	3c050000 	lui	a1,0x0
    18f8:	e4300070 	swc1	$f16,112(at)
    18fc:	c6120000 	lwc1	$f18,0(s0)
    1900:	3c010000 	lui	at,0x0
    1904:	3c060000 	lui	a2,0x0
    1908:	e4320078 	swc1	$f18,120(at)
    190c:	c6240004 	lwc1	$f4,4(s1)
    1910:	4407a000 	mfc1	a3,$f20
    1914:	24c60088 	addiu	a2,a2,136
    1918:	e424007c 	swc1	$f4,124(at)
    191c:	c6060008 	lwc1	$f6,8(s0)
    1920:	3c010000 	lui	at,0x0
    1924:	24a50078 	addiu	a1,a1,120
    1928:	e4260080 	swc1	$f6,128(at)
    192c:	c6080000 	lwc1	$f8,0(s0)
    1930:	3c010000 	lui	at,0x0
    1934:	24840068 	addiu	a0,a0,104
    1938:	e4280088 	swc1	$f8,136(at)
    193c:	c62a0004 	lwc1	$f10,4(s1)
    1940:	e42a008c 	swc1	$f10,140(at)
    1944:	c6300008 	lwc1	$f16,8(s1)
    1948:	3c010000 	lui	at,0x0
    194c:	e7b40014 	swc1	$f20,20(sp)
    1950:	e4300090 	swc1	$f16,144(at)
    1954:	3c013f80 	lui	at,0x3f80
    1958:	44819000 	mtc1	at,$f18
    195c:	00000000 	nop
    1960:	e7b20010 	swc1	$f18,16(sp)
    1964:	c6240004 	lwc1	$f4,4(s1)
    1968:	afa00028 	sw	zero,40(sp)
    196c:	afaf0024 	sw	t7,36(sp)
    1970:	46002187 	neg.s	$f6,$f4
    1974:	afb30020 	sw	s3,32(sp)
    1978:	e7a60018 	swc1	$f6,24(sp)
    197c:	0c000000 	jal	0 <Math3D_PlaneVsLineSegClosestPoint>
    1980:	afb2001c 	sw	s2,28(sp)
    1984:	50400004 	beqzl	v0,1998 <Math3D_LineVsCube+0x508>
    1988:	c6280000 	lwc1	$f8,0(s1)
    198c:	10000156 	b	1ee8 <Math3D_LineVsCube+0xa58>
    1990:	24020001 	li	v0,1
    1994:	c6280000 	lwc1	$f8,0(s1)
    1998:	3c010000 	lui	at,0x0
    199c:	3c180000 	lui	t8,0x0
    19a0:	e4280068 	swc1	$f8,104(at)
    19a4:	c62a0004 	lwc1	$f10,4(s1)
    19a8:	27180098 	addiu	t8,t8,152
    19ac:	3c040000 	lui	a0,0x0
    19b0:	e42a006c 	swc1	$f10,108(at)
    19b4:	c6300008 	lwc1	$f16,8(s1)
    19b8:	3c010000 	lui	at,0x0
    19bc:	3c050000 	lui	a1,0x0
    19c0:	e4300070 	swc1	$f16,112(at)
    19c4:	c6320000 	lwc1	$f18,0(s1)
    19c8:	3c010000 	lui	at,0x0
    19cc:	3c060000 	lui	a2,0x0
    19d0:	e4320078 	swc1	$f18,120(at)
    19d4:	c6240004 	lwc1	$f4,4(s1)
    19d8:	4407a000 	mfc1	a3,$f20
    19dc:	24c60088 	addiu	a2,a2,136
    19e0:	e424007c 	swc1	$f4,124(at)
    19e4:	c6060008 	lwc1	$f6,8(s0)
    19e8:	3c010000 	lui	at,0x0
    19ec:	24a50078 	addiu	a1,a1,120
    19f0:	e4260080 	swc1	$f6,128(at)
    19f4:	c6080000 	lwc1	$f8,0(s0)
    19f8:	3c010000 	lui	at,0x0
    19fc:	24840068 	addiu	a0,a0,104
    1a00:	e4280088 	swc1	$f8,136(at)
    1a04:	c62a0004 	lwc1	$f10,4(s1)
    1a08:	e42a008c 	swc1	$f10,140(at)
    1a0c:	c6100008 	lwc1	$f16,8(s0)
    1a10:	3c010000 	lui	at,0x0
    1a14:	e7b40014 	swc1	$f20,20(sp)
    1a18:	e4300090 	swc1	$f16,144(at)
    1a1c:	3c013f80 	lui	at,0x3f80
    1a20:	44819000 	mtc1	at,$f18
    1a24:	00000000 	nop
    1a28:	e7b20010 	swc1	$f18,16(sp)
    1a2c:	c6240004 	lwc1	$f4,4(s1)
    1a30:	afa00028 	sw	zero,40(sp)
    1a34:	afb80024 	sw	t8,36(sp)
    1a38:	46002187 	neg.s	$f6,$f4
    1a3c:	afb30020 	sw	s3,32(sp)
    1a40:	e7a60018 	swc1	$f6,24(sp)
    1a44:	0c000000 	jal	0 <Math3D_PlaneVsLineSegClosestPoint>
    1a48:	afb2001c 	sw	s2,28(sp)
    1a4c:	50400004 	beqzl	v0,1a60 <Math3D_LineVsCube+0x5d0>
    1a50:	c6080000 	lwc1	$f8,0(s0)
    1a54:	10000124 	b	1ee8 <Math3D_LineVsCube+0xa58>
    1a58:	24020001 	li	v0,1
    1a5c:	c6080000 	lwc1	$f8,0(s0)
    1a60:	3c010000 	lui	at,0x0
    1a64:	3c190000 	lui	t9,0x0
    1a68:	e4280068 	swc1	$f8,104(at)
    1a6c:	c60a0004 	lwc1	$f10,4(s0)
    1a70:	27390098 	addiu	t9,t9,152
    1a74:	3c040000 	lui	a0,0x0
    1a78:	e42a006c 	swc1	$f10,108(at)
    1a7c:	c6100008 	lwc1	$f16,8(s0)
    1a80:	3c010000 	lui	at,0x0
    1a84:	3c050000 	lui	a1,0x0
    1a88:	e4300070 	swc1	$f16,112(at)
    1a8c:	c6120000 	lwc1	$f18,0(s0)
    1a90:	3c010000 	lui	at,0x0
    1a94:	3c060000 	lui	a2,0x0
    1a98:	e4320078 	swc1	$f18,120(at)
    1a9c:	c6240004 	lwc1	$f4,4(s1)
    1aa0:	4407a000 	mfc1	a3,$f20
    1aa4:	24c60088 	addiu	a2,a2,136
    1aa8:	e424007c 	swc1	$f4,124(at)
    1aac:	c6060008 	lwc1	$f6,8(s0)
    1ab0:	3c010000 	lui	at,0x0
    1ab4:	24a50078 	addiu	a1,a1,120
    1ab8:	e4260080 	swc1	$f6,128(at)
    1abc:	c6280000 	lwc1	$f8,0(s1)
    1ac0:	3c010000 	lui	at,0x0
    1ac4:	24840068 	addiu	a0,a0,104
    1ac8:	e4280088 	swc1	$f8,136(at)
    1acc:	c62a0004 	lwc1	$f10,4(s1)
    1ad0:	e42a008c 	swc1	$f10,140(at)
    1ad4:	c6100008 	lwc1	$f16,8(s0)
    1ad8:	3c010000 	lui	at,0x0
    1adc:	e7b40010 	swc1	$f20,16(sp)
    1ae0:	e4300090 	swc1	$f16,144(at)
    1ae4:	3c01bf80 	lui	at,0xbf80
    1ae8:	44819000 	mtc1	at,$f18
    1aec:	00000000 	nop
    1af0:	e7b20014 	swc1	$f18,20(sp)
    1af4:	c6040008 	lwc1	$f4,8(s0)
    1af8:	afa00028 	sw	zero,40(sp)
    1afc:	afb90024 	sw	t9,36(sp)
    1b00:	afb30020 	sw	s3,32(sp)
    1b04:	afb2001c 	sw	s2,28(sp)
    1b08:	0c000000 	jal	0 <Math3D_PlaneVsLineSegClosestPoint>
    1b0c:	e7a40018 	swc1	$f4,24(sp)
    1b10:	50400004 	beqzl	v0,1b24 <Math3D_LineVsCube+0x694>
    1b14:	c6060000 	lwc1	$f6,0(s0)
    1b18:	100000f3 	b	1ee8 <Math3D_LineVsCube+0xa58>
    1b1c:	24020001 	li	v0,1
    1b20:	c6060000 	lwc1	$f6,0(s0)
    1b24:	3c010000 	lui	at,0x0
    1b28:	3c080000 	lui	t0,0x0
    1b2c:	e4260068 	swc1	$f6,104(at)
    1b30:	c6080004 	lwc1	$f8,4(s0)
    1b34:	25080098 	addiu	t0,t0,152
    1b38:	3c040000 	lui	a0,0x0
    1b3c:	e428006c 	swc1	$f8,108(at)
    1b40:	c60a0008 	lwc1	$f10,8(s0)
    1b44:	3c010000 	lui	at,0x0
    1b48:	3c050000 	lui	a1,0x0
    1b4c:	e42a0070 	swc1	$f10,112(at)
    1b50:	c6300000 	lwc1	$f16,0(s1)
    1b54:	3c010000 	lui	at,0x0
    1b58:	3c060000 	lui	a2,0x0
    1b5c:	e4300078 	swc1	$f16,120(at)
    1b60:	c6320004 	lwc1	$f18,4(s1)
    1b64:	4407a000 	mfc1	a3,$f20
    1b68:	24c60088 	addiu	a2,a2,136
    1b6c:	e432007c 	swc1	$f18,124(at)
    1b70:	c6040008 	lwc1	$f4,8(s0)
    1b74:	3c010000 	lui	at,0x0
    1b78:	24a50078 	addiu	a1,a1,120
    1b7c:	e4240080 	swc1	$f4,128(at)
    1b80:	c6260000 	lwc1	$f6,0(s1)
    1b84:	3c010000 	lui	at,0x0
    1b88:	24840068 	addiu	a0,a0,104
    1b8c:	e4260088 	swc1	$f6,136(at)
    1b90:	c6080004 	lwc1	$f8,4(s0)
    1b94:	e428008c 	swc1	$f8,140(at)
    1b98:	c60a0008 	lwc1	$f10,8(s0)
    1b9c:	3c010000 	lui	at,0x0
    1ba0:	e7b40010 	swc1	$f20,16(sp)
    1ba4:	e42a0090 	swc1	$f10,144(at)
    1ba8:	3c01bf80 	lui	at,0xbf80
    1bac:	44818000 	mtc1	at,$f16
    1bb0:	00000000 	nop
    1bb4:	e7b00014 	swc1	$f16,20(sp)
    1bb8:	c6120008 	lwc1	$f18,8(s0)
    1bbc:	afa00028 	sw	zero,40(sp)
    1bc0:	afa80024 	sw	t0,36(sp)
    1bc4:	afb30020 	sw	s3,32(sp)
    1bc8:	afb2001c 	sw	s2,28(sp)
    1bcc:	0c000000 	jal	0 <Math3D_PlaneVsLineSegClosestPoint>
    1bd0:	e7b20018 	swc1	$f18,24(sp)
    1bd4:	50400004 	beqzl	v0,1be8 <Math3D_LineVsCube+0x758>
    1bd8:	c6040000 	lwc1	$f4,0(s0)
    1bdc:	100000c2 	b	1ee8 <Math3D_LineVsCube+0xa58>
    1be0:	24020001 	li	v0,1
    1be4:	c6040000 	lwc1	$f4,0(s0)
    1be8:	3c010000 	lui	at,0x0
    1bec:	3c090000 	lui	t1,0x0
    1bf0:	e4240068 	swc1	$f4,104(at)
    1bf4:	c6060004 	lwc1	$f6,4(s0)
    1bf8:	25290098 	addiu	t1,t1,152
    1bfc:	3c040000 	lui	a0,0x0
    1c00:	e426006c 	swc1	$f6,108(at)
    1c04:	c6080008 	lwc1	$f8,8(s0)
    1c08:	3c010000 	lui	at,0x0
    1c0c:	3c050000 	lui	a1,0x0
    1c10:	e4280070 	swc1	$f8,112(at)
    1c14:	c62a0000 	lwc1	$f10,0(s1)
    1c18:	3c010000 	lui	at,0x0
    1c1c:	3c060000 	lui	a2,0x0
    1c20:	e42a0078 	swc1	$f10,120(at)
    1c24:	c6100004 	lwc1	$f16,4(s0)
    1c28:	4407a000 	mfc1	a3,$f20
    1c2c:	24c60088 	addiu	a2,a2,136
    1c30:	e430007c 	swc1	$f16,124(at)
    1c34:	c6120008 	lwc1	$f18,8(s0)
    1c38:	3c010000 	lui	at,0x0
    1c3c:	24a50078 	addiu	a1,a1,120
    1c40:	e4320080 	swc1	$f18,128(at)
    1c44:	c6240000 	lwc1	$f4,0(s1)
    1c48:	3c010000 	lui	at,0x0
    1c4c:	24840068 	addiu	a0,a0,104
    1c50:	e4240088 	swc1	$f4,136(at)
    1c54:	c6060004 	lwc1	$f6,4(s0)
    1c58:	e426008c 	swc1	$f6,140(at)
    1c5c:	c6280008 	lwc1	$f8,8(s1)
    1c60:	3c010000 	lui	at,0x0
    1c64:	e7b40014 	swc1	$f20,20(sp)
    1c68:	e4280090 	swc1	$f8,144(at)
    1c6c:	3c01bf80 	lui	at,0xbf80
    1c70:	44815000 	mtc1	at,$f10
    1c74:	00000000 	nop
    1c78:	e7aa0010 	swc1	$f10,16(sp)
    1c7c:	c6100004 	lwc1	$f16,4(s0)
    1c80:	afa00028 	sw	zero,40(sp)
    1c84:	afa90024 	sw	t1,36(sp)
    1c88:	afb30020 	sw	s3,32(sp)
    1c8c:	afb2001c 	sw	s2,28(sp)
    1c90:	0c000000 	jal	0 <Math3D_PlaneVsLineSegClosestPoint>
    1c94:	e7b00018 	swc1	$f16,24(sp)
    1c98:	50400004 	beqzl	v0,1cac <Math3D_LineVsCube+0x81c>
    1c9c:	c6120000 	lwc1	$f18,0(s0)
    1ca0:	10000091 	b	1ee8 <Math3D_LineVsCube+0xa58>
    1ca4:	24020001 	li	v0,1
    1ca8:	c6120000 	lwc1	$f18,0(s0)
    1cac:	3c010000 	lui	at,0x0
    1cb0:	3c0a0000 	lui	t2,0x0
    1cb4:	e4320068 	swc1	$f18,104(at)
    1cb8:	c6040004 	lwc1	$f4,4(s0)
    1cbc:	254a0098 	addiu	t2,t2,152
    1cc0:	3c040000 	lui	a0,0x0
    1cc4:	e424006c 	swc1	$f4,108(at)
    1cc8:	c6060008 	lwc1	$f6,8(s0)
    1ccc:	3c010000 	lui	at,0x0
    1cd0:	3c050000 	lui	a1,0x0
    1cd4:	e4260070 	swc1	$f6,112(at)
    1cd8:	c6280000 	lwc1	$f8,0(s1)
    1cdc:	3c010000 	lui	at,0x0
    1ce0:	3c060000 	lui	a2,0x0
    1ce4:	e4280078 	swc1	$f8,120(at)
    1ce8:	c60a0004 	lwc1	$f10,4(s0)
    1cec:	4407a000 	mfc1	a3,$f20
    1cf0:	24c60088 	addiu	a2,a2,136
    1cf4:	e42a007c 	swc1	$f10,124(at)
    1cf8:	c6300008 	lwc1	$f16,8(s1)
    1cfc:	3c010000 	lui	at,0x0
    1d00:	24a50078 	addiu	a1,a1,120
    1d04:	e4300080 	swc1	$f16,128(at)
    1d08:	c6120000 	lwc1	$f18,0(s0)
    1d0c:	3c010000 	lui	at,0x0
    1d10:	24840068 	addiu	a0,a0,104
    1d14:	e4320088 	swc1	$f18,136(at)
    1d18:	c6040004 	lwc1	$f4,4(s0)
    1d1c:	e424008c 	swc1	$f4,140(at)
    1d20:	c6260008 	lwc1	$f6,8(s1)
    1d24:	3c010000 	lui	at,0x0
    1d28:	e7b40014 	swc1	$f20,20(sp)
    1d2c:	e4260090 	swc1	$f6,144(at)
    1d30:	3c01bf80 	lui	at,0xbf80
    1d34:	44814000 	mtc1	at,$f8
    1d38:	00000000 	nop
    1d3c:	e7a80010 	swc1	$f8,16(sp)
    1d40:	c60a0004 	lwc1	$f10,4(s0)
    1d44:	afa00028 	sw	zero,40(sp)
    1d48:	afaa0024 	sw	t2,36(sp)
    1d4c:	afb30020 	sw	s3,32(sp)
    1d50:	afb2001c 	sw	s2,28(sp)
    1d54:	0c000000 	jal	0 <Math3D_PlaneVsLineSegClosestPoint>
    1d58:	e7aa0018 	swc1	$f10,24(sp)
    1d5c:	50400004 	beqzl	v0,1d70 <Math3D_LineVsCube+0x8e0>
    1d60:	c6300000 	lwc1	$f16,0(s1)
    1d64:	10000060 	b	1ee8 <Math3D_LineVsCube+0xa58>
    1d68:	24020001 	li	v0,1
    1d6c:	c6300000 	lwc1	$f16,0(s1)
    1d70:	3c010000 	lui	at,0x0
    1d74:	3c0b0000 	lui	t3,0x0
    1d78:	e4300068 	swc1	$f16,104(at)
    1d7c:	c6320004 	lwc1	$f18,4(s1)
    1d80:	256b0098 	addiu	t3,t3,152
    1d84:	3c040000 	lui	a0,0x0
    1d88:	e432006c 	swc1	$f18,108(at)
    1d8c:	c6240008 	lwc1	$f4,8(s1)
    1d90:	3c010000 	lui	at,0x0
    1d94:	3c050000 	lui	a1,0x0
    1d98:	e4240070 	swc1	$f4,112(at)
    1d9c:	c6260000 	lwc1	$f6,0(s1)
    1da0:	3c010000 	lui	at,0x0
    1da4:	3c060000 	lui	a2,0x0
    1da8:	e4260078 	swc1	$f6,120(at)
    1dac:	c6080004 	lwc1	$f8,4(s0)
    1db0:	24c60088 	addiu	a2,a2,136
    1db4:	24a50078 	addiu	a1,a1,120
    1db8:	e428007c 	swc1	$f8,124(at)
    1dbc:	c60a0008 	lwc1	$f10,8(s0)
    1dc0:	3c010000 	lui	at,0x0
    1dc4:	24840068 	addiu	a0,a0,104
    1dc8:	e42a0080 	swc1	$f10,128(at)
    1dcc:	c6300000 	lwc1	$f16,0(s1)
    1dd0:	3c010000 	lui	at,0x0
    1dd4:	3c073f80 	lui	a3,0x3f80
    1dd8:	e4300088 	swc1	$f16,136(at)
    1ddc:	c6320004 	lwc1	$f18,4(s1)
    1de0:	e432008c 	swc1	$f18,140(at)
    1de4:	c6040008 	lwc1	$f4,8(s0)
    1de8:	3c010000 	lui	at,0x0
    1dec:	e7b40014 	swc1	$f20,20(sp)
    1df0:	e7b40010 	swc1	$f20,16(sp)
    1df4:	e4240090 	swc1	$f4,144(at)
    1df8:	c6260000 	lwc1	$f6,0(s1)
    1dfc:	afa00028 	sw	zero,40(sp)
    1e00:	afab0024 	sw	t3,36(sp)
    1e04:	46003207 	neg.s	$f8,$f6
    1e08:	afb30020 	sw	s3,32(sp)
    1e0c:	e7a80018 	swc1	$f8,24(sp)
    1e10:	0c000000 	jal	0 <Math3D_PlaneVsLineSegClosestPoint>
    1e14:	afb2001c 	sw	s2,28(sp)
    1e18:	50400004 	beqzl	v0,1e2c <Math3D_LineVsCube+0x99c>
    1e1c:	c62a0000 	lwc1	$f10,0(s1)
    1e20:	10000031 	b	1ee8 <Math3D_LineVsCube+0xa58>
    1e24:	24020001 	li	v0,1
    1e28:	c62a0000 	lwc1	$f10,0(s1)
    1e2c:	3c010000 	lui	at,0x0
    1e30:	3c0c0000 	lui	t4,0x0
    1e34:	e42a0068 	swc1	$f10,104(at)
    1e38:	c6300004 	lwc1	$f16,4(s1)
    1e3c:	258c0098 	addiu	t4,t4,152
    1e40:	3c040000 	lui	a0,0x0
    1e44:	e430006c 	swc1	$f16,108(at)
    1e48:	c6320008 	lwc1	$f18,8(s1)
    1e4c:	3c010000 	lui	at,0x0
    1e50:	3c050000 	lui	a1,0x0
    1e54:	e4320070 	swc1	$f18,112(at)
    1e58:	c6240000 	lwc1	$f4,0(s1)
    1e5c:	3c010000 	lui	at,0x0
    1e60:	3c060000 	lui	a2,0x0
    1e64:	e4240078 	swc1	$f4,120(at)
    1e68:	c6060004 	lwc1	$f6,4(s0)
    1e6c:	24c60088 	addiu	a2,a2,136
    1e70:	24a50078 	addiu	a1,a1,120
    1e74:	e426007c 	swc1	$f6,124(at)
    1e78:	c6280008 	lwc1	$f8,8(s1)
    1e7c:	3c010000 	lui	at,0x0
    1e80:	24840068 	addiu	a0,a0,104
    1e84:	e4280080 	swc1	$f8,128(at)
    1e88:	c62a0000 	lwc1	$f10,0(s1)
    1e8c:	3c010000 	lui	at,0x0
    1e90:	3c073f80 	lui	a3,0x3f80
    1e94:	e42a0088 	swc1	$f10,136(at)
    1e98:	c6100004 	lwc1	$f16,4(s0)
    1e9c:	e430008c 	swc1	$f16,140(at)
    1ea0:	c6120008 	lwc1	$f18,8(s0)
    1ea4:	3c010000 	lui	at,0x0
    1ea8:	e7b40014 	swc1	$f20,20(sp)
    1eac:	e7b40010 	swc1	$f20,16(sp)
    1eb0:	e4320090 	swc1	$f18,144(at)
    1eb4:	c6240000 	lwc1	$f4,0(s1)
    1eb8:	afa00028 	sw	zero,40(sp)
    1ebc:	afac0024 	sw	t4,36(sp)
    1ec0:	46002187 	neg.s	$f6,$f4
    1ec4:	afb30020 	sw	s3,32(sp)
    1ec8:	e7a60018 	swc1	$f6,24(sp)
    1ecc:	0c000000 	jal	0 <Math3D_PlaneVsLineSegClosestPoint>
    1ed0:	afb2001c 	sw	s2,28(sp)
    1ed4:	50400004 	beqzl	v0,1ee8 <Math3D_LineVsCube+0xa58>
    1ed8:	00001025 	move	v0,zero
    1edc:	10000002 	b	1ee8 <Math3D_LineVsCube+0xa58>
    1ee0:	24020001 	li	v0,1
    1ee4:	00001025 	move	v0,zero
    1ee8:	8fbf004c 	lw	ra,76(sp)
    1eec:	d7b40030 	ldc1	$f20,48(sp)
    1ef0:	8fb0003c 	lw	s0,60(sp)
    1ef4:	8fb10040 	lw	s1,64(sp)
    1ef8:	8fb20044 	lw	s2,68(sp)
    1efc:	8fb30048 	lw	s3,72(sp)
    1f00:	03e00008 	jr	ra
    1f04:	27bd0058 	addiu	sp,sp,88

00001f08 <Math3D_LineVsCubeShort>:
    1f08:	27bdffe8 	addiu	sp,sp,-24
    1f0c:	afbf0014 	sw	ra,20(sp)
    1f10:	afa40018 	sw	a0,24(sp)
    1f14:	afa5001c 	sw	a1,28(sp)
    1f18:	afa60020 	sw	a2,32(sp)
    1f1c:	afa70024 	sw	a3,36(sp)
    1f20:	848f0000 	lh	t7,0(a0)
    1f24:	3c010000 	lui	at,0x0
    1f28:	448f2000 	mtc1	t7,$f4
    1f2c:	00000000 	nop
    1f30:	468021a0 	cvt.s.w	$f6,$f4
    1f34:	e42600a8 	swc1	$f6,168(at)
    1f38:	84980002 	lh	t8,2(a0)
    1f3c:	44984000 	mtc1	t8,$f8
    1f40:	00000000 	nop
    1f44:	468042a0 	cvt.s.w	$f10,$f8
    1f48:	e42a00ac 	swc1	$f10,172(at)
    1f4c:	84990004 	lh	t9,4(a0)
    1f50:	3c010000 	lui	at,0x0
    1f54:	3c040000 	lui	a0,0x0
    1f58:	44998000 	mtc1	t9,$f16
    1f5c:	248400a8 	addiu	a0,a0,168
    1f60:	468084a0 	cvt.s.w	$f18,$f16
    1f64:	e43200b0 	swc1	$f18,176(at)
    1f68:	84a90000 	lh	t1,0(a1)
    1f6c:	3c010000 	lui	at,0x0
    1f70:	44892000 	mtc1	t1,$f4
    1f74:	00000000 	nop
    1f78:	468021a0 	cvt.s.w	$f6,$f4
    1f7c:	e42600b8 	swc1	$f6,184(at)
    1f80:	84aa0002 	lh	t2,2(a1)
    1f84:	448a4000 	mtc1	t2,$f8
    1f88:	00000000 	nop
    1f8c:	468042a0 	cvt.s.w	$f10,$f8
    1f90:	e42a00bc 	swc1	$f10,188(at)
    1f94:	84ab0004 	lh	t3,4(a1)
    1f98:	3c010000 	lui	at,0x0
    1f9c:	3c050000 	lui	a1,0x0
    1fa0:	448b8000 	mtc1	t3,$f16
    1fa4:	24a500b8 	addiu	a1,a1,184
    1fa8:	468084a0 	cvt.s.w	$f18,$f16
    1fac:	e43200c0 	swc1	$f18,192(at)
    1fb0:	84cd0000 	lh	t5,0(a2)
    1fb4:	3c010000 	lui	at,0x0
    1fb8:	448d2000 	mtc1	t5,$f4
    1fbc:	00000000 	nop
    1fc0:	468021a0 	cvt.s.w	$f6,$f4
    1fc4:	e42600c8 	swc1	$f6,200(at)
    1fc8:	84cf0002 	lh	t7,2(a2)
    1fcc:	448f4000 	mtc1	t7,$f8
    1fd0:	00000000 	nop
    1fd4:	468042a0 	cvt.s.w	$f10,$f8
    1fd8:	e42a00cc 	swc1	$f10,204(at)
    1fdc:	84d80004 	lh	t8,4(a2)
    1fe0:	3c010000 	lui	at,0x0
    1fe4:	3c060000 	lui	a2,0x0
    1fe8:	44988000 	mtc1	t8,$f16
    1fec:	24c600c8 	addiu	a2,a2,200
    1ff0:	468084a0 	cvt.s.w	$f18,$f16
    1ff4:	e43200d0 	swc1	$f18,208(at)
    1ff8:	84f90000 	lh	t9,0(a3)
    1ffc:	3c010000 	lui	at,0x0
    2000:	44992000 	mtc1	t9,$f4
    2004:	00000000 	nop
    2008:	468021a0 	cvt.s.w	$f6,$f4
    200c:	e42600d8 	swc1	$f6,216(at)
    2010:	84ea0002 	lh	t2,2(a3)
    2014:	448a4000 	mtc1	t2,$f8
    2018:	00000000 	nop
    201c:	468042a0 	cvt.s.w	$f10,$f8
    2020:	e42a00dc 	swc1	$f10,220(at)
    2024:	84eb0004 	lh	t3,4(a3)
    2028:	3c010000 	lui	at,0x0
    202c:	3c070000 	lui	a3,0x0
    2030:	448b8000 	mtc1	t3,$f16
    2034:	24e700d8 	addiu	a3,a3,216
    2038:	468084a0 	cvt.s.w	$f18,$f16
    203c:	0c000000 	jal	0 <Math3D_PlaneVsLineSegClosestPoint>
    2040:	e43200e0 	swc1	$f18,224(at)
    2044:	8fbf0014 	lw	ra,20(sp)
    2048:	27bd0018 	addiu	sp,sp,24
    204c:	03e00008 	jr	ra
    2050:	00000000 	nop

00002054 <Math3D_RotateXZPlane>:
    2054:	27bdffe8 	addiu	sp,sp,-24
    2058:	afbf0014 	sw	ra,20(sp)
    205c:	afa40018 	sw	a0,24(sp)
    2060:	afa5001c 	sw	a1,28(sp)
    2064:	afa60020 	sw	a2,32(sp)
    2068:	afa70024 	sw	a3,36(sp)
    206c:	0c000000 	jal	0 <Math3D_PlaneVsLineSegClosestPoint>
    2070:	87a4001e 	lh	a0,30(sp)
    2074:	3c010000 	lui	at,0x0
    2078:	c4240118 	lwc1	$f4,280(at)
    207c:	8fae0020 	lw	t6,32(sp)
    2080:	46040182 	mul.s	$f6,$f0,$f4
    2084:	e5c60000 	swc1	$f6,0(t6)
    2088:	0c000000 	jal	0 <Math3D_PlaneVsLineSegClosestPoint>
    208c:	87a4001e 	lh	a0,30(sp)
    2090:	3c010000 	lui	at,0x0
    2094:	c428011c 	lwc1	$f8,284(at)
    2098:	8faf0024 	lw	t7,36(sp)
    209c:	8fa20018 	lw	v0,24(sp)
    20a0:	46080082 	mul.s	$f2,$f0,$f8
    20a4:	e5e20000 	swc1	$f2,0(t7)
    20a8:	8fb80020 	lw	t8,32(sp)
    20ac:	c4500000 	lwc1	$f16,0(v0)
    20b0:	c4440008 	lwc1	$f4,8(v0)
    20b4:	c70a0000 	lwc1	$f10,0(t8)
    20b8:	8fb90028 	lw	t9,40(sp)
    20bc:	46105482 	mul.s	$f18,$f10,$f16
    20c0:	00000000 	nop
    20c4:	46041182 	mul.s	$f6,$f2,$f4
    20c8:	46123200 	add.s	$f8,$f6,$f18
    20cc:	46004287 	neg.s	$f10,$f8
    20d0:	e72a0000 	swc1	$f10,0(t9)
    20d4:	8fbf0014 	lw	ra,20(sp)
    20d8:	27bd0018 	addiu	sp,sp,24
    20dc:	03e00008 	jr	ra
    20e0:	00000000 	nop

000020e4 <Math3D_DefPlane>:
    20e4:	27bdffe8 	addiu	sp,sp,-24
    20e8:	afa70024 	sw	a3,36(sp)
    20ec:	afbf0014 	sw	ra,20(sp)
    20f0:	3c070000 	lui	a3,0x0
    20f4:	24e700e8 	addiu	a3,a3,232
    20f8:	0c000000 	jal	0 <Math3D_PlaneVsLineSegClosestPoint>
    20fc:	afa40018 	sw	a0,24(sp)
    2100:	3c010000 	lui	at,0x0
    2104:	c42400e8 	lwc1	$f4,232(at)
    2108:	c42c00ec 	lwc1	$f12,236(at)
    210c:	3c010000 	lui	at,0x0
    2110:	46042182 	mul.s	$f6,$f4,$f4
    2114:	c42e00f0 	lwc1	$f14,240(at)
    2118:	3c010000 	lui	at,0x0
    211c:	460c6202 	mul.s	$f8,$f12,$f12
    2120:	8fa20024 	lw	v0,36(sp)
    2124:	8fa40018 	lw	a0,24(sp)
    2128:	460e7482 	mul.s	$f18,$f14,$f14
    212c:	8fa30028 	lw	v1,40(sp)
    2130:	8faf0030 	lw	t7,48(sp)
    2134:	46083280 	add.s	$f10,$f6,$f8
    2138:	c4260120 	lwc1	$f6,288(at)
    213c:	3c013f80 	lui	at,0x3f80
    2140:	46125000 	add.s	$f0,$f10,$f18
    2144:	46000404 	sqrt.s	$f16,$f0
    2148:	46008005 	abs.s	$f0,$f16
    214c:	4606003c 	c.lt.s	$f0,$f6
    2150:	00000000 	nop
    2154:	4503001f 	bc1tl	21d4 <Math3D_DefPlane+0xf0>
    2158:	44800000 	mtc1	zero,$f0
    215c:	44814000 	mtc1	at,$f8
    2160:	8fa30028 	lw	v1,40(sp)
    2164:	8fa5002c 	lw	a1,44(sp)
    2168:	46104003 	div.s	$f0,$f8,$f16
    216c:	3c010000 	lui	at,0x0
    2170:	46002282 	mul.s	$f10,$f4,$f0
    2174:	e44a0000 	swc1	$f10,0(v0)
    2178:	c43200ec 	lwc1	$f18,236(at)
    217c:	3c010000 	lui	at,0x0
    2180:	46009182 	mul.s	$f6,$f18,$f0
    2184:	e4660000 	swc1	$f6,0(v1)
    2188:	c42800f0 	lwc1	$f8,240(at)
    218c:	46004102 	mul.s	$f4,$f8,$f0
    2190:	e4a40000 	swc1	$f4,0(a1)
    2194:	c4920000 	lwc1	$f18,0(a0)
    2198:	c44a0000 	lwc1	$f10,0(v0)
    219c:	c4840004 	lwc1	$f4,4(a0)
    21a0:	c4680000 	lwc1	$f8,0(v1)
    21a4:	46125182 	mul.s	$f6,$f10,$f18
    21a8:	8fae0030 	lw	t6,48(sp)
    21ac:	46044282 	mul.s	$f10,$f8,$f4
    21b0:	c4840008 	lwc1	$f4,8(a0)
    21b4:	c4a80000 	lwc1	$f8,0(a1)
    21b8:	460a3480 	add.s	$f18,$f6,$f10
    21bc:	46044182 	mul.s	$f6,$f8,$f4
    21c0:	46123280 	add.s	$f10,$f6,$f18
    21c4:	46005207 	neg.s	$f8,$f10
    21c8:	10000007 	b	21e8 <Math3D_DefPlane+0x104>
    21cc:	e5c80000 	swc1	$f8,0(t6)
    21d0:	44800000 	mtc1	zero,$f0
    21d4:	8fa5002c 	lw	a1,44(sp)
    21d8:	e5e00000 	swc1	$f0,0(t7)
    21dc:	e4a00000 	swc1	$f0,0(a1)
    21e0:	e4600000 	swc1	$f0,0(v1)
    21e4:	e4400000 	swc1	$f0,0(v0)
    21e8:	8fbf0014 	lw	ra,20(sp)
    21ec:	27bd0018 	addiu	sp,sp,24
    21f0:	03e00008 	jr	ra
    21f4:	00000000 	nop

000021f8 <Math3D_Planef>:
    21f8:	8fa40010 	lw	a0,16(sp)
    21fc:	afa60008 	sw	a2,8(sp)
    2200:	afa7000c 	sw	a3,12(sp)
    2204:	c4840000 	lwc1	$f4,0(a0)
    2208:	c4880004 	lwc1	$f8,4(a0)
    220c:	c7b20008 	lwc1	$f18,8(sp)
    2210:	460c2182 	mul.s	$f6,$f4,$f12
    2214:	c4840008 	lwc1	$f4,8(a0)
    2218:	46087282 	mul.s	$f10,$f14,$f8
    221c:	460a3400 	add.s	$f16,$f6,$f10
    2220:	46049202 	mul.s	$f8,$f18,$f4
    2224:	c7aa000c 	lwc1	$f10,12(sp)
    2228:	46088180 	add.s	$f6,$f16,$f8
    222c:	03e00008 	jr	ra
    2230:	460a3000 	add.s	$f0,$f6,$f10

00002234 <Math3D_Plane>:
    2234:	c4840000 	lwc1	$f4,0(a0)
    2238:	c4a60000 	lwc1	$f6,0(a1)
    223c:	c48a0004 	lwc1	$f10,4(a0)
    2240:	c4b00004 	lwc1	$f16,4(a1)
    2244:	46062202 	mul.s	$f8,$f4,$f6
    2248:	c4860008 	lwc1	$f6,8(a0)
    224c:	46105482 	mul.s	$f18,$f10,$f16
    2250:	c4aa0008 	lwc1	$f10,8(a1)
    2254:	460a3402 	mul.s	$f16,$f6,$f10
    2258:	46124100 	add.s	$f4,$f8,$f18
    225c:	c492000c 	lwc1	$f18,12(a0)
    2260:	46102200 	add.s	$f8,$f4,$f16
    2264:	03e00008 	jr	ra
    2268:	46124000 	add.s	$f0,$f8,$f18

0000226c <Math3D_UDistPlaneToPos>:
    226c:	460c6102 	mul.s	$f4,$f12,$f12
    2270:	27bdffd8 	addiu	sp,sp,-40
    2274:	afa60030 	sw	a2,48(sp)
    2278:	460e7182 	mul.s	$f6,$f14,$f14
    227c:	c7aa0030 	lwc1	$f10,48(sp)
    2280:	3c010000 	lui	at,0x0
    2284:	c4320124 	lwc1	$f18,292(at)
    2288:	460a5402 	mul.s	$f16,$f10,$f10
    228c:	3c040000 	lui	a0,0x0
    2290:	afbf0024 	sw	ra,36(sp)
    2294:	afa70034 	sw	a3,52(sp)
    2298:	24840064 	addiu	a0,a0,100
    229c:	46062200 	add.s	$f8,$f4,$f6
    22a0:	8fa60030 	lw	a2,48(sp)
    22a4:	8fae0038 	lw	t6,56(sp)
    22a8:	46104000 	add.s	$f0,$f8,$f16
    22ac:	46000004 	sqrt.s	$f0,$f0
    22b0:	46000005 	abs.s	$f0,$f0
    22b4:	4612003c 	c.lt.s	$f0,$f18
    22b8:	00000000 	nop
    22bc:	45020018 	bc1fl	2320 <Math3D_UDistPlaneToPos+0xb4>
    22c0:	8fa70034 	lw	a3,52(sp)
    22c4:	e7ac0028 	swc1	$f12,40(sp)
    22c8:	0c000000 	jal	0 <Math3D_PlaneVsLineSegClosestPoint>
    22cc:	e7ae002c 	swc1	$f14,44(sp)
    22d0:	c7ac0028 	lwc1	$f12,40(sp)
    22d4:	c7ae002c 	lwc1	$f14,44(sp)
    22d8:	c7aa0030 	lwc1	$f10,48(sp)
    22dc:	46006121 	cvt.d.s	$f4,$f12
    22e0:	460071a1 	cvt.d.s	$f6,$f14
    22e4:	46005221 	cvt.d.s	$f8,$f10
    22e8:	44072000 	mfc1	a3,$f4
    22ec:	44062800 	mfc1	a2,$f5
    22f0:	3c040000 	lui	a0,0x0
    22f4:	24840070 	addiu	a0,a0,112
    22f8:	f7a80018 	sdc1	$f8,24(sp)
    22fc:	0c000000 	jal	0 <Math3D_PlaneVsLineSegClosestPoint>
    2300:	f7a60010 	sdc1	$f6,16(sp)
    2304:	3c040000 	lui	a0,0x0
    2308:	0c000000 	jal	0 <Math3D_PlaneVsLineSegClosestPoint>
    230c:	248400ac 	addiu	a0,a0,172
    2310:	44800000 	mtc1	zero,$f0
    2314:	10000006 	b	2330 <Math3D_UDistPlaneToPos+0xc4>
    2318:	8fbf0024 	lw	ra,36(sp)
    231c:	8fa70034 	lw	a3,52(sp)
    2320:	0c000000 	jal	0 <Math3D_PlaneVsLineSegClosestPoint>
    2324:	afae0010 	sw	t6,16(sp)
    2328:	46000005 	abs.s	$f0,$f0
    232c:	8fbf0024 	lw	ra,36(sp)
    2330:	27bd0028 	addiu	sp,sp,40
    2334:	03e00008 	jr	ra
    2338:	00000000 	nop

0000233c <Math3D_DistPlaneToPos>:
    233c:	460c6102 	mul.s	$f4,$f12,$f12
    2340:	27bdffd0 	addiu	sp,sp,-48
    2344:	afa60038 	sw	a2,56(sp)
    2348:	460e7182 	mul.s	$f6,$f14,$f14
    234c:	c7aa0038 	lwc1	$f10,56(sp)
    2350:	3c010000 	lui	at,0x0
    2354:	c4320128 	lwc1	$f18,296(at)
    2358:	460a5402 	mul.s	$f16,$f10,$f10
    235c:	afa7003c 	sw	a3,60(sp)
    2360:	3c040000 	lui	a0,0x0
    2364:	afbf0024 	sw	ra,36(sp)
    2368:	248400b0 	addiu	a0,a0,176
    236c:	46062200 	add.s	$f8,$f4,$f6
    2370:	8fa7003c 	lw	a3,60(sp)
    2374:	8fa60038 	lw	a2,56(sp)
    2378:	8fae0040 	lw	t6,64(sp)
    237c:	46104000 	add.s	$f0,$f8,$f16
    2380:	46000084 	sqrt.s	$f2,$f0
    2384:	46001005 	abs.s	$f0,$f2
    2388:	4612003c 	c.lt.s	$f0,$f18
    238c:	00000000 	nop
    2390:	45020018 	bc1fl	23f4 <Math3D_DistPlaneToPos+0xb8>
    2394:	afae0010 	sw	t6,16(sp)
    2398:	e7ac0030 	swc1	$f12,48(sp)
    239c:	0c000000 	jal	0 <Math3D_PlaneVsLineSegClosestPoint>
    23a0:	e7ae0034 	swc1	$f14,52(sp)
    23a4:	c7ac0030 	lwc1	$f12,48(sp)
    23a8:	c7ae0034 	lwc1	$f14,52(sp)
    23ac:	c7aa0038 	lwc1	$f10,56(sp)
    23b0:	46006121 	cvt.d.s	$f4,$f12
    23b4:	460071a1 	cvt.d.s	$f6,$f14
    23b8:	46005221 	cvt.d.s	$f8,$f10
    23bc:	44072000 	mfc1	a3,$f4
    23c0:	44062800 	mfc1	a2,$f5
    23c4:	3c040000 	lui	a0,0x0
    23c8:	248400bc 	addiu	a0,a0,188
    23cc:	f7a80018 	sdc1	$f8,24(sp)
    23d0:	0c000000 	jal	0 <Math3D_PlaneVsLineSegClosestPoint>
    23d4:	f7a60010 	sdc1	$f6,16(sp)
    23d8:	3c040000 	lui	a0,0x0
    23dc:	0c000000 	jal	0 <Math3D_PlaneVsLineSegClosestPoint>
    23e0:	24840100 	addiu	a0,a0,256
    23e4:	44800000 	mtc1	zero,$f0
    23e8:	10000007 	b	2408 <Math3D_DistPlaneToPos+0xcc>
    23ec:	8fbf0024 	lw	ra,36(sp)
    23f0:	afae0010 	sw	t6,16(sp)
    23f4:	0c000000 	jal	0 <Math3D_PlaneVsLineSegClosestPoint>
    23f8:	e7a2002c 	swc1	$f2,44(sp)
    23fc:	c7a2002c 	lwc1	$f2,44(sp)
    2400:	46020003 	div.s	$f0,$f0,$f2
    2404:	8fbf0024 	lw	ra,36(sp)
    2408:	27bd0030 	addiu	sp,sp,48
    240c:	03e00008 	jr	ra
    2410:	00000000 	nop

00002414 <Math3D_TriChkPointParaYImpl>:
    2414:	27bdff90 	addiu	sp,sp,-112
    2418:	afa60078 	sw	a2,120(sp)
    241c:	8fae0078 	lw	t6,120(sp)
    2420:	afbf002c 	sw	ra,44(sp)
    2424:	afa7007c 	sw	a3,124(sp)
    2428:	c5c40008 	lwc1	$f4,8(t6)
    242c:	8ca70000 	lw	a3,0(a1)
    2430:	8ca60008 	lw	a2,8(a1)
    2434:	c48e0000 	lwc1	$f14,0(a0)
    2438:	c48c0008 	lwc1	$f12,8(a0)
    243c:	e7a40010 	swc1	$f4,16(sp)
    2440:	c5c60000 	lwc1	$f6,0(t6)
    2444:	c7a40088 	lwc1	$f4,136(sp)
    2448:	c7a8007c 	lwc1	$f8,124(sp)
    244c:	c7aa0080 	lwc1	$f10,128(sp)
    2450:	afa50074 	sw	a1,116(sp)
    2454:	afa40070 	sw	a0,112(sp)
    2458:	e7a60014 	swc1	$f6,20(sp)
    245c:	e7a40020 	swc1	$f4,32(sp)
    2460:	e7a80018 	swc1	$f8,24(sp)
    2464:	0c000000 	jal	0 <Math3D_PlaneVsLineSegClosestPoint>
    2468:	e7aa001c 	swc1	$f10,28(sp)
    246c:	8fa30078 	lw	v1,120(sp)
    2470:	8fa40070 	lw	a0,112(sp)
    2474:	8fa50074 	lw	a1,116(sp)
    2478:	14400003 	bnez	v0,2488 <Math3D_TriChkPointParaYImpl+0x74>
    247c:	c7ac0088 	lwc1	$f12,136(sp)
    2480:	100000a7 	b	2720 <Math3D_TriChkPointParaYImpl+0x30c>
    2484:	00001025 	move	v0,zero
    2488:	c4860008 	lwc1	$f6,8(a0)
    248c:	c7aa007c 	lwc1	$f10,124(sp)
    2490:	460c6402 	mul.s	$f16,$f12,$f12
    2494:	e7a60058 	swc1	$f6,88(sp)
    2498:	c4840000 	lwc1	$f4,0(a0)
    249c:	c7a80058 	lwc1	$f8,88(sp)
    24a0:	e7a40054 	swc1	$f4,84(sp)
    24a4:	460a4001 	sub.s	$f0,$f8,$f10
    24a8:	c7a80080 	lwc1	$f8,128(sp)
    24ac:	c7a60054 	lwc1	$f6,84(sp)
    24b0:	46000102 	mul.s	$f4,$f0,$f0
    24b4:	46083081 	sub.s	$f2,$f6,$f8
    24b8:	46021182 	mul.s	$f6,$f2,$f2
    24bc:	46062100 	add.s	$f4,$f4,$f6
    24c0:	4610203c 	c.lt.s	$f4,$f16
    24c4:	00000000 	nop
    24c8:	4501001d 	bc1t	2540 <Math3D_TriChkPointParaYImpl+0x12c>
    24cc:	00000000 	nop
    24d0:	c4a60000 	lwc1	$f6,0(a1)
    24d4:	c4b20008 	lwc1	$f18,8(a1)
    24d8:	e7b00048 	swc1	$f16,72(sp)
    24dc:	e7a6004c 	swc1	$f6,76(sp)
    24e0:	460a9301 	sub.s	$f12,$f18,$f10
    24e4:	c7a4004c 	lwc1	$f4,76(sp)
    24e8:	e7b20050 	swc1	$f18,80(sp)
    24ec:	46082381 	sub.s	$f14,$f4,$f8
    24f0:	460c6182 	mul.s	$f6,$f12,$f12
    24f4:	00000000 	nop
    24f8:	460e7102 	mul.s	$f4,$f14,$f14
    24fc:	46043180 	add.s	$f6,$f6,$f4
    2500:	4610303c 	c.lt.s	$f6,$f16
    2504:	00000000 	nop
    2508:	4501000d 	bc1t	2540 <Math3D_TriChkPointParaYImpl+0x12c>
    250c:	00000000 	nop
    2510:	c4640008 	lwc1	$f4,8(v1)
    2514:	c4660000 	lwc1	$f6,0(v1)
    2518:	460a2401 	sub.s	$f16,$f4,$f10
    251c:	46083481 	sub.s	$f18,$f6,$f8
    2520:	46108102 	mul.s	$f4,$f16,$f16
    2524:	c7a80048 	lwc1	$f8,72(sp)
    2528:	46129282 	mul.s	$f10,$f18,$f18
    252c:	460a2180 	add.s	$f6,$f4,$f10
    2530:	4608303c 	c.lt.s	$f6,$f8
    2534:	00000000 	nop
    2538:	45000003 	bc1f	2548 <Math3D_TriChkPointParaYImpl+0x134>
    253c:	00000000 	nop
    2540:	10000077 	b	2720 <Math3D_TriChkPointParaYImpl+0x30c>
    2544:	24020001 	li	v0,1
    2548:	460e0102 	mul.s	$f4,$f0,$f14
    254c:	00000000 	nop
    2550:	460c1282 	mul.s	$f10,$f2,$f12
    2554:	460a2181 	sub.s	$f6,$f4,$f10
    2558:	46126202 	mul.s	$f8,$f12,$f18
    255c:	00000000 	nop
    2560:	46107102 	mul.s	$f4,$f14,$f16
    2564:	e7a6006c 	swc1	$f6,108(sp)
    2568:	46003306 	mov.s	$f12,$f6
    256c:	46044281 	sub.s	$f10,$f8,$f4
    2570:	46028202 	mul.s	$f8,$f16,$f2
    2574:	c7a20084 	lwc1	$f2,132(sp)
    2578:	46009102 	mul.s	$f4,$f18,$f0
    257c:	e7aa0068 	swc1	$f10,104(sp)
    2580:	4602303e 	c.le.s	$f6,$f2
    2584:	46005386 	mov.s	$f14,$f10
    2588:	46044201 	sub.s	$f8,$f8,$f4
    258c:	e7a80064 	swc1	$f8,100(sp)
    2590:	45000009 	bc1f	25b8 <Math3D_TriChkPointParaYImpl+0x1a4>
    2594:	46004406 	mov.s	$f16,$f8
    2598:	4602503e 	c.le.s	$f10,$f2
    259c:	00000000 	nop
    25a0:	45020006 	bc1fl	25bc <Math3D_TriChkPointParaYImpl+0x1a8>
    25a4:	46001007 	neg.s	$f0,$f2
    25a8:	4602403e 	c.le.s	$f8,$f2
    25ac:	00000000 	nop
    25b0:	4501000e 	bc1t	25ec <Math3D_TriChkPointParaYImpl+0x1d8>
    25b4:	00000000 	nop
    25b8:	46001007 	neg.s	$f0,$f2
    25bc:	460c003e 	c.le.s	$f0,$f12
    25c0:	00000000 	nop
    25c4:	4502000c 	bc1fl	25f8 <Math3D_TriChkPointParaYImpl+0x1e4>
    25c8:	c7a0008c 	lwc1	$f0,140(sp)
    25cc:	460e003e 	c.le.s	$f0,$f14
    25d0:	00000000 	nop
    25d4:	45020008 	bc1fl	25f8 <Math3D_TriChkPointParaYImpl+0x1e4>
    25d8:	c7a0008c 	lwc1	$f0,140(sp)
    25dc:	4610003e 	c.le.s	$f0,$f16
    25e0:	00000000 	nop
    25e4:	45020004 	bc1fl	25f8 <Math3D_TriChkPointParaYImpl+0x1e4>
    25e8:	c7a0008c 	lwc1	$f0,140(sp)
    25ec:	1000004c 	b	2720 <Math3D_TriChkPointParaYImpl+0x30c>
    25f0:	24020001 	li	v0,1
    25f4:	c7a0008c 	lwc1	$f0,140(sp)
    25f8:	3c013f00 	lui	at,0x3f00
    25fc:	44812000 	mtc1	at,$f4
    2600:	46000005 	abs.s	$f0,$f0
    2604:	c7ac007c 	lwc1	$f12,124(sp)
    2608:	4600203c 	c.lt.s	$f4,$f0
    260c:	c7ae0080 	lwc1	$f14,128(sp)
    2610:	8fa60058 	lw	a2,88(sp)
    2614:	8fa70054 	lw	a3,84(sp)
    2618:	45000040 	bc1f	271c <Math3D_TriChkPointParaYImpl+0x308>
    261c:	c7a60050 	lwc1	$f6,80(sp)
    2620:	c7aa004c 	lwc1	$f10,76(sp)
    2624:	27af0060 	addiu	t7,sp,96
    2628:	afaf0018 	sw	t7,24(sp)
    262c:	e7a60010 	swc1	$f6,16(sp)
    2630:	afa40070 	sw	a0,112(sp)
    2634:	afa50074 	sw	a1,116(sp)
    2638:	0c000000 	jal	0 <Math3D_PlaneVsLineSegClosestPoint>
    263c:	e7aa0014 	swc1	$f10,20(sp)
    2640:	8fa30078 	lw	v1,120(sp)
    2644:	8fa40070 	lw	a0,112(sp)
    2648:	10400009 	beqz	v0,2670 <Math3D_TriChkPointParaYImpl+0x25c>
    264c:	8fa50074 	lw	a1,116(sp)
    2650:	c7a80060 	lwc1	$f8,96(sp)
    2654:	c7a40048 	lwc1	$f4,72(sp)
    2658:	4604403c 	c.lt.s	$f8,$f4
    265c:	00000000 	nop
    2660:	45020004 	bc1fl	2674 <Math3D_TriChkPointParaYImpl+0x260>
    2664:	c4660008 	lwc1	$f6,8(v1)
    2668:	1000002d 	b	2720 <Math3D_TriChkPointParaYImpl+0x30c>
    266c:	24020001 	li	v0,1
    2670:	c4660008 	lwc1	$f6,8(v1)
    2674:	8ca60008 	lw	a2,8(a1)
    2678:	8ca70000 	lw	a3,0(a1)
    267c:	e7a60010 	swc1	$f6,16(sp)
    2680:	c46a0000 	lwc1	$f10,0(v1)
    2684:	27b80060 	addiu	t8,sp,96
    2688:	afb80018 	sw	t8,24(sp)
    268c:	afa40070 	sw	a0,112(sp)
    2690:	c7ac007c 	lwc1	$f12,124(sp)
    2694:	c7ae0080 	lwc1	$f14,128(sp)
    2698:	0c000000 	jal	0 <Math3D_PlaneVsLineSegClosestPoint>
    269c:	e7aa0014 	swc1	$f10,20(sp)
    26a0:	8fa30078 	lw	v1,120(sp)
    26a4:	10400009 	beqz	v0,26cc <Math3D_TriChkPointParaYImpl+0x2b8>
    26a8:	8fa40070 	lw	a0,112(sp)
    26ac:	c7a80060 	lwc1	$f8,96(sp)
    26b0:	c7a40048 	lwc1	$f4,72(sp)
    26b4:	4604403c 	c.lt.s	$f8,$f4
    26b8:	00000000 	nop
    26bc:	45020004 	bc1fl	26d0 <Math3D_TriChkPointParaYImpl+0x2bc>
    26c0:	c4860008 	lwc1	$f6,8(a0)
    26c4:	10000016 	b	2720 <Math3D_TriChkPointParaYImpl+0x30c>
    26c8:	24020001 	li	v0,1
    26cc:	c4860008 	lwc1	$f6,8(a0)
    26d0:	8c660008 	lw	a2,8(v1)
    26d4:	8c670000 	lw	a3,0(v1)
    26d8:	e7a60010 	swc1	$f6,16(sp)
    26dc:	c48a0000 	lwc1	$f10,0(a0)
    26e0:	27b90060 	addiu	t9,sp,96
    26e4:	afb90018 	sw	t9,24(sp)
    26e8:	c7ac007c 	lwc1	$f12,124(sp)
    26ec:	c7ae0080 	lwc1	$f14,128(sp)
    26f0:	0c000000 	jal	0 <Math3D_PlaneVsLineSegClosestPoint>
    26f4:	e7aa0014 	swc1	$f10,20(sp)
    26f8:	10400008 	beqz	v0,271c <Math3D_TriChkPointParaYImpl+0x308>
    26fc:	c7a80060 	lwc1	$f8,96(sp)
    2700:	c7a40048 	lwc1	$f4,72(sp)
    2704:	4604403c 	c.lt.s	$f8,$f4
    2708:	00000000 	nop
    270c:	45020004 	bc1fl	2720 <Math3D_TriChkPointParaYImpl+0x30c>
    2710:	00001025 	move	v0,zero
    2714:	10000002 	b	2720 <Math3D_TriChkPointParaYImpl+0x30c>
    2718:	24020001 	li	v0,1
    271c:	00001025 	move	v0,zero
    2720:	8fbf002c 	lw	ra,44(sp)
    2724:	27bd0070 	addiu	sp,sp,112
    2728:	03e00008 	jr	ra
    272c:	00000000 	nop

00002730 <Math3D_TriChkPointParaYDeterminate>:
    2730:	27bdffd8 	addiu	sp,sp,-40
    2734:	44876000 	mtc1	a3,$f12
    2738:	3c013f80 	lui	at,0x3f80
    273c:	44814000 	mtc1	at,$f8
    2740:	c7a40038 	lwc1	$f4,56(sp)
    2744:	c7a6003c 	lwc1	$f6,60(sp)
    2748:	c7aa0040 	lwc1	$f10,64(sp)
    274c:	afbf0024 	sw	ra,36(sp)
    2750:	44076000 	mfc1	a3,$f12
    2754:	e7a40010 	swc1	$f4,16(sp)
    2758:	e7a80018 	swc1	$f8,24(sp)
    275c:	e7a60014 	swc1	$f6,20(sp)
    2760:	0c000000 	jal	0 <Math3D_PlaneVsLineSegClosestPoint>
    2764:	e7aa001c 	swc1	$f10,28(sp)
    2768:	8fbf0024 	lw	ra,36(sp)
    276c:	27bd0028 	addiu	sp,sp,40
    2770:	03e00008 	jr	ra
    2774:	00000000 	nop

00002778 <Math3D_TriChkPointParaYSlopedY>:
    2778:	3c014396 	lui	at,0x4396
    277c:	44813000 	mtc1	at,$f6
    2780:	27bdffd8 	addiu	sp,sp,-40
    2784:	3c013f80 	lui	at,0x3f80
    2788:	44876000 	mtc1	a3,$f12
    278c:	44814000 	mtc1	at,$f8
    2790:	3c010000 	lui	at,0x0
    2794:	c42a012c 	lwc1	$f10,300(at)
    2798:	c7a40038 	lwc1	$f4,56(sp)
    279c:	afbf0024 	sw	ra,36(sp)
    27a0:	44076000 	mfc1	a3,$f12
    27a4:	e7a60014 	swc1	$f6,20(sp)
    27a8:	e7a80018 	swc1	$f8,24(sp)
    27ac:	e7aa001c 	swc1	$f10,28(sp)
    27b0:	0c000000 	jal	0 <Math3D_PlaneVsLineSegClosestPoint>
    27b4:	e7a40010 	swc1	$f4,16(sp)
    27b8:	8fbf0024 	lw	ra,36(sp)
    27bc:	27bd0028 	addiu	sp,sp,40
    27c0:	03e00008 	jr	ra
    27c4:	00000000 	nop

000027c8 <Math3D_TriChkPointParaYIntersectDist>:
    27c8:	27bdffd8 	addiu	sp,sp,-40
    27cc:	c7ac0038 	lwc1	$f12,56(sp)
    27d0:	3c010000 	lui	at,0x0
    27d4:	c4240130 	lwc1	$f4,304(at)
    27d8:	46006005 	abs.s	$f0,$f12
    27dc:	afa70034 	sw	a3,52(sp)
    27e0:	4604003c 	c.lt.s	$f0,$f4
    27e4:	afbf0024 	sw	ra,36(sp)
    27e8:	8fa70044 	lw	a3,68(sp)
    27ec:	3c014396 	lui	at,0x4396
    27f0:	45000003 	bc1f	2800 <Math3D_TriChkPointParaYIntersectDist+0x38>
    27f4:	c7a60048 	lwc1	$f6,72(sp)
    27f8:	1000001a 	b	2864 <Math3D_TriChkPointParaYIntersectDist+0x9c>
    27fc:	00001025 	move	v0,zero
    2800:	44814000 	mtc1	at,$f8
    2804:	c7aa0050 	lwc1	$f10,80(sp)
    2808:	e7a60010 	swc1	$f6,16(sp)
    280c:	e7ac001c 	swc1	$f12,28(sp)
    2810:	e7aa0018 	swc1	$f10,24(sp)
    2814:	0c000000 	jal	0 <Math3D_PlaneVsLineSegClosestPoint>
    2818:	e7a80014 	swc1	$f8,20(sp)
    281c:	10400010 	beqz	v0,2860 <Math3D_TriChkPointParaYIntersectDist+0x98>
    2820:	c7b00034 	lwc1	$f16,52(sp)
    2824:	c7a40048 	lwc1	$f4,72(sp)
    2828:	46008487 	neg.s	$f18,$f16
    282c:	c7a8003c 	lwc1	$f8,60(sp)
    2830:	46049182 	mul.s	$f6,$f18,$f4
    2834:	c7aa0044 	lwc1	$f10,68(sp)
    2838:	c7a40040 	lwc1	$f4,64(sp)
    283c:	8fae004c 	lw	t6,76(sp)
    2840:	460a4402 	mul.s	$f16,$f8,$f10
    2844:	c7aa0038 	lwc1	$f10,56(sp)
    2848:	24020001 	li	v0,1
    284c:	46103481 	sub.s	$f18,$f6,$f16
    2850:	46049201 	sub.s	$f8,$f18,$f4
    2854:	460a4183 	div.s	$f6,$f8,$f10
    2858:	10000002 	b	2864 <Math3D_TriChkPointParaYIntersectDist+0x9c>
    285c:	e5c60000 	swc1	$f6,0(t6)
    2860:	00001025 	move	v0,zero
    2864:	8fbf0024 	lw	ra,36(sp)
    2868:	27bd0028 	addiu	sp,sp,40
    286c:	03e00008 	jr	ra
    2870:	00000000 	nop

00002874 <Math3D_TriChkPointParaYIntersectInsideTri>:
    2874:	27bdffd8 	addiu	sp,sp,-40
    2878:	c7ac0038 	lwc1	$f12,56(sp)
    287c:	3c010000 	lui	at,0x0
    2880:	c4240134 	lwc1	$f4,308(at)
    2884:	46006005 	abs.s	$f0,$f12
    2888:	afa70034 	sw	a3,52(sp)
    288c:	4604003c 	c.lt.s	$f0,$f4
    2890:	afbf0024 	sw	ra,36(sp)
    2894:	8fa70044 	lw	a3,68(sp)
    2898:	c7a60048 	lwc1	$f6,72(sp)
    289c:	45020004 	bc1fl	28b0 <Math3D_TriChkPointParaYIntersectInsideTri+0x3c>
    28a0:	44804000 	mtc1	zero,$f8
    28a4:	1000001a 	b	2910 <Math3D_TriChkPointParaYIntersectInsideTri+0x9c>
    28a8:	00001025 	move	v0,zero
    28ac:	44804000 	mtc1	zero,$f8
    28b0:	c7aa0050 	lwc1	$f10,80(sp)
    28b4:	e7a60010 	swc1	$f6,16(sp)
    28b8:	e7ac001c 	swc1	$f12,28(sp)
    28bc:	e7aa0018 	swc1	$f10,24(sp)
    28c0:	0c000000 	jal	0 <Math3D_PlaneVsLineSegClosestPoint>
    28c4:	e7a80014 	swc1	$f8,20(sp)
    28c8:	10400010 	beqz	v0,290c <Math3D_TriChkPointParaYIntersectInsideTri+0x98>
    28cc:	c7b00034 	lwc1	$f16,52(sp)
    28d0:	c7a40048 	lwc1	$f4,72(sp)
    28d4:	46008487 	neg.s	$f18,$f16
    28d8:	c7a8003c 	lwc1	$f8,60(sp)
    28dc:	46049182 	mul.s	$f6,$f18,$f4
    28e0:	c7aa0044 	lwc1	$f10,68(sp)
    28e4:	c7a40040 	lwc1	$f4,64(sp)
    28e8:	8fae004c 	lw	t6,76(sp)
    28ec:	460a4402 	mul.s	$f16,$f8,$f10
    28f0:	c7aa0038 	lwc1	$f10,56(sp)
    28f4:	24020001 	li	v0,1
    28f8:	46103481 	sub.s	$f18,$f6,$f16
    28fc:	46049201 	sub.s	$f8,$f18,$f4
    2900:	460a4183 	div.s	$f6,$f8,$f10
    2904:	10000002 	b	2910 <Math3D_TriChkPointParaYIntersectInsideTri+0x9c>
    2908:	e5c60000 	swc1	$f6,0(t6)
    290c:	00001025 	move	v0,zero
    2910:	8fbf0024 	lw	ra,36(sp)
    2914:	27bd0028 	addiu	sp,sp,40
    2918:	03e00008 	jr	ra
    291c:	00000000 	nop

00002920 <Math3D_TriChkPointParaY>:
    2920:	44876000 	mtc1	a3,$f12
    2924:	3c010000 	lui	at,0x0
    2928:	c4240138 	lwc1	$f4,312(at)
    292c:	46006005 	abs.s	$f0,$f12
    2930:	27bdffd8 	addiu	sp,sp,-40
    2934:	4604003c 	c.lt.s	$f0,$f4
    2938:	afbf0024 	sw	ra,36(sp)
    293c:	8fa70038 	lw	a3,56(sp)
    2940:	c7a6003c 	lwc1	$f6,60(sp)
    2944:	45000003 	bc1f	2954 <Math3D_TriChkPointParaY+0x34>
    2948:	3c014396 	lui	at,0x4396
    294c:	1000000e 	b	2988 <Math3D_TriChkPointParaY+0x68>
    2950:	00001025 	move	v0,zero
    2954:	44814000 	mtc1	at,$f8
    2958:	3c013f80 	lui	at,0x3f80
    295c:	44815000 	mtc1	at,$f10
    2960:	e7a60010 	swc1	$f6,16(sp)
    2964:	e7ac001c 	swc1	$f12,28(sp)
    2968:	e7a80014 	swc1	$f8,20(sp)
    296c:	0c000000 	jal	0 <Math3D_PlaneVsLineSegClosestPoint>
    2970:	e7aa0018 	swc1	$f10,24(sp)
    2974:	50400004 	beqzl	v0,2988 <Math3D_TriChkPointParaY+0x68>
    2978:	00001025 	move	v0,zero
    297c:	10000002 	b	2988 <Math3D_TriChkPointParaY+0x68>
    2980:	24020001 	li	v0,1
    2984:	00001025 	move	v0,zero
    2988:	8fbf0024 	lw	ra,36(sp)
    298c:	27bd0028 	addiu	sp,sp,40
    2990:	03e00008 	jr	ra
    2994:	00000000 	nop

00002998 <Math3D_TriChkLineSegParaYIntersect>:
    2998:	27bdffc0 	addiu	sp,sp,-64
    299c:	c7ae0050 	lwc1	$f14,80(sp)
    29a0:	3c010000 	lui	at,0x0
    29a4:	c424013c 	lwc1	$f4,316(at)
    29a8:	46007005 	abs.s	$f0,$f14
    29ac:	afbf0024 	sw	ra,36(sp)
    29b0:	4604003c 	c.lt.s	$f0,$f4
    29b4:	afa40040 	sw	a0,64(sp)
    29b8:	afa50044 	sw	a1,68(sp)
    29bc:	afa60048 	sw	a2,72(sp)
    29c0:	45000003 	bc1f	29d0 <Math3D_TriChkLineSegParaYIntersect+0x38>
    29c4:	afa7004c 	sw	a3,76(sp)
    29c8:	1000004b 	b	2af8 <Math3D_TriChkLineSegParaYIntersect+0x160>
    29cc:	00001025 	move	v0,zero
    29d0:	c7a60060 	lwc1	$f6,96(sp)
    29d4:	c7a80068 	lwc1	$f8,104(sp)
    29d8:	c7aa005c 	lwc1	$f10,92(sp)
    29dc:	27ae002c 	addiu	t6,sp,44
    29e0:	afae0010 	sw	t6,16(sp)
    29e4:	c7ac004c 	lwc1	$f12,76(sp)
    29e8:	8fa60054 	lw	a2,84(sp)
    29ec:	8fa70058 	lw	a3,88(sp)
    29f0:	e7a6002c 	swc1	$f6,44(sp)
    29f4:	e7a80030 	swc1	$f8,48(sp)
    29f8:	0c000000 	jal	0 <Math3D_PlaneVsLineSegClosestPoint>
    29fc:	e7aa0034 	swc1	$f10,52(sp)
    2a00:	c7b0006c 	lwc1	$f16,108(sp)
    2a04:	27af002c 	addiu	t7,sp,44
    2a08:	afaf0010 	sw	t7,16(sp)
    2a0c:	c7ac004c 	lwc1	$f12,76(sp)
    2a10:	c7ae0050 	lwc1	$f14,80(sp)
    2a14:	8fa60054 	lw	a2,84(sp)
    2a18:	8fa70058 	lw	a3,88(sp)
    2a1c:	e7a0003c 	swc1	$f0,60(sp)
    2a20:	0c000000 	jal	0 <Math3D_PlaneVsLineSegClosestPoint>
    2a24:	e7b00030 	swc1	$f16,48(sp)
    2a28:	c7a2003c 	lwc1	$f2,60(sp)
    2a2c:	44806000 	mtc1	zero,$f12
    2a30:	00000000 	nop
    2a34:	4602603c 	c.lt.s	$f12,$f2
    2a38:	00000000 	nop
    2a3c:	45020006 	bc1fl	2a58 <Math3D_TriChkLineSegParaYIntersect+0xc0>
    2a40:	460c103c 	c.lt.s	$f2,$f12
    2a44:	4600603c 	c.lt.s	$f12,$f0
    2a48:	00000000 	nop
    2a4c:	4501000b 	bc1t	2a7c <Math3D_TriChkLineSegParaYIntersect+0xe4>
    2a50:	00000000 	nop
    2a54:	460c103c 	c.lt.s	$f2,$f12
    2a58:	8fa40040 	lw	a0,64(sp)
    2a5c:	8fa50044 	lw	a1,68(sp)
    2a60:	8fa60048 	lw	a2,72(sp)
    2a64:	45000007 	bc1f	2a84 <Math3D_TriChkLineSegParaYIntersect+0xec>
    2a68:	8fa7005c 	lw	a3,92(sp)
    2a6c:	460c003c 	c.lt.s	$f0,$f12
    2a70:	00000000 	nop
    2a74:	45020004 	bc1fl	2a88 <Math3D_TriChkLineSegParaYIntersect+0xf0>
    2a78:	3c014396 	lui	at,0x4396
    2a7c:	1000001e 	b	2af8 <Math3D_TriChkLineSegParaYIntersect+0x160>
    2a80:	00001025 	move	v0,zero
    2a84:	3c014396 	lui	at,0x4396
    2a88:	44812000 	mtc1	at,$f4
    2a8c:	3c013f80 	lui	at,0x3f80
    2a90:	44813000 	mtc1	at,$f6
    2a94:	c7b20060 	lwc1	$f18,96(sp)
    2a98:	c7a80050 	lwc1	$f8,80(sp)
    2a9c:	e7a40014 	swc1	$f4,20(sp)
    2aa0:	e7b20010 	swc1	$f18,16(sp)
    2aa4:	e7a60018 	swc1	$f6,24(sp)
    2aa8:	0c000000 	jal	0 <Math3D_PlaneVsLineSegClosestPoint>
    2aac:	e7a8001c 	swc1	$f8,28(sp)
    2ab0:	10400010 	beqz	v0,2af4 <Math3D_TriChkLineSegParaYIntersect+0x15c>
    2ab4:	c7aa004c 	lwc1	$f10,76(sp)
    2ab8:	c7b20060 	lwc1	$f18,96(sp)
    2abc:	46005407 	neg.s	$f16,$f10
    2ac0:	c7a60054 	lwc1	$f6,84(sp)
    2ac4:	46128102 	mul.s	$f4,$f16,$f18
    2ac8:	c7a8005c 	lwc1	$f8,92(sp)
    2acc:	c7b20058 	lwc1	$f18,88(sp)
    2ad0:	8fb80064 	lw	t8,100(sp)
    2ad4:	46083282 	mul.s	$f10,$f6,$f8
    2ad8:	c7a80050 	lwc1	$f8,80(sp)
    2adc:	24020001 	li	v0,1
    2ae0:	460a2401 	sub.s	$f16,$f4,$f10
    2ae4:	46128181 	sub.s	$f6,$f16,$f18
    2ae8:	46083103 	div.s	$f4,$f6,$f8
    2aec:	10000002 	b	2af8 <Math3D_TriChkLineSegParaYIntersect+0x160>
    2af0:	e7040000 	swc1	$f4,0(t8)
    2af4:	00001025 	move	v0,zero
    2af8:	8fbf0024 	lw	ra,36(sp)
    2afc:	27bd0040 	addiu	sp,sp,64
    2b00:	03e00008 	jr	ra
    2b04:	00000000 	nop

00002b08 <Math3D_TriChkPointParaYDist>:
    2b08:	27bdffd8 	addiu	sp,sp,-40
    2b0c:	afbf0024 	sw	ra,36(sp)
    2b10:	c4e20004 	lwc1	$f2,4(a3)
    2b14:	3c010000 	lui	at,0x0
    2b18:	c4240140 	lwc1	$f4,320(at)
    2b1c:	46001005 	abs.s	$f0,$f2
    2b20:	8fa70038 	lw	a3,56(sp)
    2b24:	4604003c 	c.lt.s	$f0,$f4
    2b28:	c7a6003c 	lwc1	$f6,60(sp)
    2b2c:	45020004 	bc1fl	2b40 <Math3D_TriChkPointParaYDist+0x38>
    2b30:	44804000 	mtc1	zero,$f8
    2b34:	1000000d 	b	2b6c <Math3D_TriChkPointParaYDist+0x64>
    2b38:	00001025 	move	v0,zero
    2b3c:	44804000 	mtc1	zero,$f8
    2b40:	c7aa0040 	lwc1	$f10,64(sp)
    2b44:	e7a60010 	swc1	$f6,16(sp)
    2b48:	e7a2001c 	swc1	$f2,28(sp)
    2b4c:	e7aa0018 	swc1	$f10,24(sp)
    2b50:	0c000000 	jal	0 <Math3D_PlaneVsLineSegClosestPoint>
    2b54:	e7a80014 	swc1	$f8,20(sp)
    2b58:	50400004 	beqzl	v0,2b6c <Math3D_TriChkPointParaYDist+0x64>
    2b5c:	00001025 	move	v0,zero
    2b60:	10000002 	b	2b6c <Math3D_TriChkPointParaYDist+0x64>
    2b64:	24020001 	li	v0,1
    2b68:	00001025 	move	v0,zero
    2b6c:	8fbf0024 	lw	ra,36(sp)
    2b70:	27bd0028 	addiu	sp,sp,40
    2b74:	03e00008 	jr	ra
    2b78:	00000000 	nop

00002b7c <Math3D_TriChkPointParaXImpl>:
    2b7c:	27bdff90 	addiu	sp,sp,-112
    2b80:	afa60078 	sw	a2,120(sp)
    2b84:	8fae0078 	lw	t6,120(sp)
    2b88:	afbf002c 	sw	ra,44(sp)
    2b8c:	afa7007c 	sw	a3,124(sp)
    2b90:	c5c40004 	lwc1	$f4,4(t6)
    2b94:	8ca70008 	lw	a3,8(a1)
    2b98:	8ca60004 	lw	a2,4(a1)
    2b9c:	c48e0008 	lwc1	$f14,8(a0)
    2ba0:	c48c0004 	lwc1	$f12,4(a0)
    2ba4:	e7a40010 	swc1	$f4,16(sp)
    2ba8:	c5c60008 	lwc1	$f6,8(t6)
    2bac:	c7a40088 	lwc1	$f4,136(sp)
    2bb0:	c7a8007c 	lwc1	$f8,124(sp)
    2bb4:	c7aa0080 	lwc1	$f10,128(sp)
    2bb8:	afa50074 	sw	a1,116(sp)
    2bbc:	afa40070 	sw	a0,112(sp)
    2bc0:	e7a60014 	swc1	$f6,20(sp)
    2bc4:	e7a40020 	swc1	$f4,32(sp)
    2bc8:	e7a80018 	swc1	$f8,24(sp)
    2bcc:	0c000000 	jal	0 <Math3D_PlaneVsLineSegClosestPoint>
    2bd0:	e7aa001c 	swc1	$f10,28(sp)
    2bd4:	8fa30078 	lw	v1,120(sp)
    2bd8:	8fa40070 	lw	a0,112(sp)
    2bdc:	8fa50074 	lw	a1,116(sp)
    2be0:	14400003 	bnez	v0,2bf0 <Math3D_TriChkPointParaXImpl+0x74>
    2be4:	c7ac0088 	lwc1	$f12,136(sp)
    2be8:	100000a7 	b	2e88 <Math3D_TriChkPointParaXImpl+0x30c>
    2bec:	00001025 	move	v0,zero
    2bf0:	c4860004 	lwc1	$f6,4(a0)
    2bf4:	c7aa007c 	lwc1	$f10,124(sp)
    2bf8:	460c6402 	mul.s	$f16,$f12,$f12
    2bfc:	e7a60058 	swc1	$f6,88(sp)
    2c00:	c4840008 	lwc1	$f4,8(a0)
    2c04:	c7a80058 	lwc1	$f8,88(sp)
    2c08:	e7a40054 	swc1	$f4,84(sp)
    2c0c:	460a4001 	sub.s	$f0,$f8,$f10
    2c10:	c7a80080 	lwc1	$f8,128(sp)
    2c14:	c7a60054 	lwc1	$f6,84(sp)
    2c18:	46000102 	mul.s	$f4,$f0,$f0
    2c1c:	46083081 	sub.s	$f2,$f6,$f8
    2c20:	46021182 	mul.s	$f6,$f2,$f2
    2c24:	46062100 	add.s	$f4,$f4,$f6
    2c28:	4610203c 	c.lt.s	$f4,$f16
    2c2c:	00000000 	nop
    2c30:	4501001d 	bc1t	2ca8 <Math3D_TriChkPointParaXImpl+0x12c>
    2c34:	00000000 	nop
    2c38:	c4a60008 	lwc1	$f6,8(a1)
    2c3c:	c4b20004 	lwc1	$f18,4(a1)
    2c40:	e7b00048 	swc1	$f16,72(sp)
    2c44:	e7a6004c 	swc1	$f6,76(sp)
    2c48:	460a9301 	sub.s	$f12,$f18,$f10
    2c4c:	c7a4004c 	lwc1	$f4,76(sp)
    2c50:	e7b20050 	swc1	$f18,80(sp)
    2c54:	46082381 	sub.s	$f14,$f4,$f8
    2c58:	460c6182 	mul.s	$f6,$f12,$f12
    2c5c:	00000000 	nop
    2c60:	460e7102 	mul.s	$f4,$f14,$f14
    2c64:	46043180 	add.s	$f6,$f6,$f4
    2c68:	4610303c 	c.lt.s	$f6,$f16
    2c6c:	00000000 	nop
    2c70:	4501000d 	bc1t	2ca8 <Math3D_TriChkPointParaXImpl+0x12c>
    2c74:	00000000 	nop
    2c78:	c4640004 	lwc1	$f4,4(v1)
    2c7c:	c4660008 	lwc1	$f6,8(v1)
    2c80:	460a2401 	sub.s	$f16,$f4,$f10
    2c84:	46083481 	sub.s	$f18,$f6,$f8
    2c88:	46108102 	mul.s	$f4,$f16,$f16
    2c8c:	c7a80048 	lwc1	$f8,72(sp)
    2c90:	46129282 	mul.s	$f10,$f18,$f18
    2c94:	460a2180 	add.s	$f6,$f4,$f10
    2c98:	4608303c 	c.lt.s	$f6,$f8
    2c9c:	00000000 	nop
    2ca0:	45000003 	bc1f	2cb0 <Math3D_TriChkPointParaXImpl+0x134>
    2ca4:	00000000 	nop
    2ca8:	10000077 	b	2e88 <Math3D_TriChkPointParaXImpl+0x30c>
    2cac:	24020001 	li	v0,1
    2cb0:	460e0102 	mul.s	$f4,$f0,$f14
    2cb4:	00000000 	nop
    2cb8:	460c1282 	mul.s	$f10,$f2,$f12
    2cbc:	460a2181 	sub.s	$f6,$f4,$f10
    2cc0:	46126202 	mul.s	$f8,$f12,$f18
    2cc4:	00000000 	nop
    2cc8:	46107102 	mul.s	$f4,$f14,$f16
    2ccc:	e7a6006c 	swc1	$f6,108(sp)
    2cd0:	46003306 	mov.s	$f12,$f6
    2cd4:	46044281 	sub.s	$f10,$f8,$f4
    2cd8:	46028202 	mul.s	$f8,$f16,$f2
    2cdc:	c7a20084 	lwc1	$f2,132(sp)
    2ce0:	46009102 	mul.s	$f4,$f18,$f0
    2ce4:	e7aa0068 	swc1	$f10,104(sp)
    2ce8:	4602303e 	c.le.s	$f6,$f2
    2cec:	46005386 	mov.s	$f14,$f10
    2cf0:	46044201 	sub.s	$f8,$f8,$f4
    2cf4:	e7a80064 	swc1	$f8,100(sp)
    2cf8:	45000009 	bc1f	2d20 <Math3D_TriChkPointParaXImpl+0x1a4>
    2cfc:	46004406 	mov.s	$f16,$f8
    2d00:	4602503e 	c.le.s	$f10,$f2
    2d04:	00000000 	nop
    2d08:	45020006 	bc1fl	2d24 <Math3D_TriChkPointParaXImpl+0x1a8>
    2d0c:	46001007 	neg.s	$f0,$f2
    2d10:	4602403e 	c.le.s	$f8,$f2
    2d14:	00000000 	nop
    2d18:	4501000e 	bc1t	2d54 <Math3D_TriChkPointParaXImpl+0x1d8>
    2d1c:	00000000 	nop
    2d20:	46001007 	neg.s	$f0,$f2
    2d24:	460c003e 	c.le.s	$f0,$f12
    2d28:	00000000 	nop
    2d2c:	4502000c 	bc1fl	2d60 <Math3D_TriChkPointParaXImpl+0x1e4>
    2d30:	c7a0008c 	lwc1	$f0,140(sp)
    2d34:	460e003e 	c.le.s	$f0,$f14
    2d38:	00000000 	nop
    2d3c:	45020008 	bc1fl	2d60 <Math3D_TriChkPointParaXImpl+0x1e4>
    2d40:	c7a0008c 	lwc1	$f0,140(sp)
    2d44:	4610003e 	c.le.s	$f0,$f16
    2d48:	00000000 	nop
    2d4c:	45020004 	bc1fl	2d60 <Math3D_TriChkPointParaXImpl+0x1e4>
    2d50:	c7a0008c 	lwc1	$f0,140(sp)
    2d54:	1000004c 	b	2e88 <Math3D_TriChkPointParaXImpl+0x30c>
    2d58:	24020001 	li	v0,1
    2d5c:	c7a0008c 	lwc1	$f0,140(sp)
    2d60:	3c013f00 	lui	at,0x3f00
    2d64:	44812000 	mtc1	at,$f4
    2d68:	46000005 	abs.s	$f0,$f0
    2d6c:	c7ac007c 	lwc1	$f12,124(sp)
    2d70:	4600203c 	c.lt.s	$f4,$f0
    2d74:	c7ae0080 	lwc1	$f14,128(sp)
    2d78:	8fa60058 	lw	a2,88(sp)
    2d7c:	8fa70054 	lw	a3,84(sp)
    2d80:	45000040 	bc1f	2e84 <Math3D_TriChkPointParaXImpl+0x308>
    2d84:	c7a60050 	lwc1	$f6,80(sp)
    2d88:	c7aa004c 	lwc1	$f10,76(sp)
    2d8c:	27af0060 	addiu	t7,sp,96
    2d90:	afaf0018 	sw	t7,24(sp)
    2d94:	e7a60010 	swc1	$f6,16(sp)
    2d98:	afa40070 	sw	a0,112(sp)
    2d9c:	afa50074 	sw	a1,116(sp)
    2da0:	0c000000 	jal	0 <Math3D_PlaneVsLineSegClosestPoint>
    2da4:	e7aa0014 	swc1	$f10,20(sp)
    2da8:	8fa30078 	lw	v1,120(sp)
    2dac:	8fa40070 	lw	a0,112(sp)
    2db0:	10400009 	beqz	v0,2dd8 <Math3D_TriChkPointParaXImpl+0x25c>
    2db4:	8fa50074 	lw	a1,116(sp)
    2db8:	c7a80060 	lwc1	$f8,96(sp)
    2dbc:	c7a40048 	lwc1	$f4,72(sp)
    2dc0:	4604403c 	c.lt.s	$f8,$f4
    2dc4:	00000000 	nop
    2dc8:	45020004 	bc1fl	2ddc <Math3D_TriChkPointParaXImpl+0x260>
    2dcc:	c4660004 	lwc1	$f6,4(v1)
    2dd0:	1000002d 	b	2e88 <Math3D_TriChkPointParaXImpl+0x30c>
    2dd4:	24020001 	li	v0,1
    2dd8:	c4660004 	lwc1	$f6,4(v1)
    2ddc:	8ca60004 	lw	a2,4(a1)
    2de0:	8ca70008 	lw	a3,8(a1)
    2de4:	e7a60010 	swc1	$f6,16(sp)
    2de8:	c46a0008 	lwc1	$f10,8(v1)
    2dec:	27b80060 	addiu	t8,sp,96
    2df0:	afb80018 	sw	t8,24(sp)
    2df4:	afa40070 	sw	a0,112(sp)
    2df8:	c7ac007c 	lwc1	$f12,124(sp)
    2dfc:	c7ae0080 	lwc1	$f14,128(sp)
    2e00:	0c000000 	jal	0 <Math3D_PlaneVsLineSegClosestPoint>
    2e04:	e7aa0014 	swc1	$f10,20(sp)
    2e08:	8fa30078 	lw	v1,120(sp)
    2e0c:	10400009 	beqz	v0,2e34 <Math3D_TriChkPointParaXImpl+0x2b8>
    2e10:	8fa40070 	lw	a0,112(sp)
    2e14:	c7a80060 	lwc1	$f8,96(sp)
    2e18:	c7a40048 	lwc1	$f4,72(sp)
    2e1c:	4604403c 	c.lt.s	$f8,$f4
    2e20:	00000000 	nop
    2e24:	45020004 	bc1fl	2e38 <Math3D_TriChkPointParaXImpl+0x2bc>
    2e28:	c4860004 	lwc1	$f6,4(a0)
    2e2c:	10000016 	b	2e88 <Math3D_TriChkPointParaXImpl+0x30c>
    2e30:	24020001 	li	v0,1
    2e34:	c4860004 	lwc1	$f6,4(a0)
    2e38:	8c660004 	lw	a2,4(v1)
    2e3c:	8c670008 	lw	a3,8(v1)
    2e40:	e7a60010 	swc1	$f6,16(sp)
    2e44:	c48a0008 	lwc1	$f10,8(a0)
    2e48:	27b90060 	addiu	t9,sp,96
    2e4c:	afb90018 	sw	t9,24(sp)
    2e50:	c7ac007c 	lwc1	$f12,124(sp)
    2e54:	c7ae0080 	lwc1	$f14,128(sp)
    2e58:	0c000000 	jal	0 <Math3D_PlaneVsLineSegClosestPoint>
    2e5c:	e7aa0014 	swc1	$f10,20(sp)
    2e60:	10400008 	beqz	v0,2e84 <Math3D_TriChkPointParaXImpl+0x308>
    2e64:	c7a80060 	lwc1	$f8,96(sp)
    2e68:	c7a40048 	lwc1	$f4,72(sp)
    2e6c:	4604403c 	c.lt.s	$f8,$f4
    2e70:	00000000 	nop
    2e74:	45020004 	bc1fl	2e88 <Math3D_TriChkPointParaXImpl+0x30c>
    2e78:	00001025 	move	v0,zero
    2e7c:	10000002 	b	2e88 <Math3D_TriChkPointParaXImpl+0x30c>
    2e80:	24020001 	li	v0,1
    2e84:	00001025 	move	v0,zero
    2e88:	8fbf002c 	lw	ra,44(sp)
    2e8c:	27bd0070 	addiu	sp,sp,112
    2e90:	03e00008 	jr	ra
    2e94:	00000000 	nop

00002e98 <Math3D_TriChkPointParaXDeterminate>:
    2e98:	27bdffd8 	addiu	sp,sp,-40
    2e9c:	44876000 	mtc1	a3,$f12
    2ea0:	3c013f80 	lui	at,0x3f80
    2ea4:	44814000 	mtc1	at,$f8
    2ea8:	c7a40038 	lwc1	$f4,56(sp)
    2eac:	c7a6003c 	lwc1	$f6,60(sp)
    2eb0:	c7aa0040 	lwc1	$f10,64(sp)
    2eb4:	afbf0024 	sw	ra,36(sp)
    2eb8:	44076000 	mfc1	a3,$f12
    2ebc:	e7a40010 	swc1	$f4,16(sp)
    2ec0:	e7a80018 	swc1	$f8,24(sp)
    2ec4:	e7a60014 	swc1	$f6,20(sp)
    2ec8:	0c000000 	jal	0 <Math3D_PlaneVsLineSegClosestPoint>
    2ecc:	e7aa001c 	swc1	$f10,28(sp)
    2ed0:	8fbf0024 	lw	ra,36(sp)
    2ed4:	27bd0028 	addiu	sp,sp,40
    2ed8:	03e00008 	jr	ra
    2edc:	00000000 	nop

00002ee0 <Math3D_TriChkPointParaXIntersect>:
    2ee0:	44876000 	mtc1	a3,$f12
    2ee4:	3c010000 	lui	at,0x0
    2ee8:	c4240144 	lwc1	$f4,324(at)
    2eec:	46006005 	abs.s	$f0,$f12
    2ef0:	27bdffd8 	addiu	sp,sp,-40
    2ef4:	4604003c 	c.lt.s	$f0,$f4
    2ef8:	afbf0024 	sw	ra,36(sp)
    2efc:	8fa70044 	lw	a3,68(sp)
    2f00:	c7a60048 	lwc1	$f6,72(sp)
    2f04:	45000003 	bc1f	2f14 <Math3D_TriChkPointParaXIntersect+0x34>
    2f08:	3c014396 	lui	at,0x4396
    2f0c:	1000001c 	b	2f80 <Math3D_TriChkPointParaXIntersect+0xa0>
    2f10:	00001025 	move	v0,zero
    2f14:	44814000 	mtc1	at,$f8
    2f18:	3c013f80 	lui	at,0x3f80
    2f1c:	44815000 	mtc1	at,$f10
    2f20:	e7a60010 	swc1	$f6,16(sp)
    2f24:	e7ac001c 	swc1	$f12,28(sp)
    2f28:	e7ac0034 	swc1	$f12,52(sp)
    2f2c:	e7a80014 	swc1	$f8,20(sp)
    2f30:	0c000000 	jal	0 <Math3D_PlaneVsLineSegClosestPoint>
    2f34:	e7aa0018 	swc1	$f10,24(sp)
    2f38:	10400010 	beqz	v0,2f7c <Math3D_TriChkPointParaXIntersect+0x9c>
    2f3c:	c7ac0034 	lwc1	$f12,52(sp)
    2f40:	c7b00038 	lwc1	$f16,56(sp)
    2f44:	c7a40044 	lwc1	$f4,68(sp)
    2f48:	c7a8003c 	lwc1	$f8,60(sp)
    2f4c:	46008487 	neg.s	$f18,$f16
    2f50:	c7aa0048 	lwc1	$f10,72(sp)
    2f54:	46049182 	mul.s	$f6,$f18,$f4
    2f58:	c7a40040 	lwc1	$f4,64(sp)
    2f5c:	8fae004c 	lw	t6,76(sp)
    2f60:	460a4402 	mul.s	$f16,$f8,$f10
    2f64:	24020001 	li	v0,1
    2f68:	46103481 	sub.s	$f18,$f6,$f16
    2f6c:	46049201 	sub.s	$f8,$f18,$f4
    2f70:	460c4283 	div.s	$f10,$f8,$f12
    2f74:	10000002 	b	2f80 <Math3D_TriChkPointParaXIntersect+0xa0>
    2f78:	e5ca0000 	swc1	$f10,0(t6)
    2f7c:	00001025 	move	v0,zero
    2f80:	8fbf0024 	lw	ra,36(sp)
    2f84:	27bd0028 	addiu	sp,sp,40
    2f88:	03e00008 	jr	ra
    2f8c:	00000000 	nop

00002f90 <Math3D_TriChkPointParaX>:
    2f90:	44876000 	mtc1	a3,$f12
    2f94:	3c010000 	lui	at,0x0
    2f98:	c4240148 	lwc1	$f4,328(at)
    2f9c:	46006005 	abs.s	$f0,$f12
    2fa0:	27bdffd8 	addiu	sp,sp,-40
    2fa4:	4604003c 	c.lt.s	$f0,$f4
    2fa8:	afbf0024 	sw	ra,36(sp)
    2fac:	8fa70038 	lw	a3,56(sp)
    2fb0:	c7a6003c 	lwc1	$f6,60(sp)
    2fb4:	45000003 	bc1f	2fc4 <Math3D_TriChkPointParaX+0x34>
    2fb8:	3c014396 	lui	at,0x4396
    2fbc:	1000000e 	b	2ff8 <Math3D_TriChkPointParaX+0x68>
    2fc0:	00001025 	move	v0,zero
    2fc4:	44814000 	mtc1	at,$f8
    2fc8:	3c013f80 	lui	at,0x3f80
    2fcc:	44815000 	mtc1	at,$f10
    2fd0:	e7a60010 	swc1	$f6,16(sp)
    2fd4:	e7ac001c 	swc1	$f12,28(sp)
    2fd8:	e7a80014 	swc1	$f8,20(sp)
    2fdc:	0c000000 	jal	0 <Math3D_PlaneVsLineSegClosestPoint>
    2fe0:	e7aa0018 	swc1	$f10,24(sp)
    2fe4:	50400004 	beqzl	v0,2ff8 <Math3D_TriChkPointParaX+0x68>
    2fe8:	00001025 	move	v0,zero
    2fec:	10000002 	b	2ff8 <Math3D_TriChkPointParaX+0x68>
    2ff0:	24020001 	li	v0,1
    2ff4:	00001025 	move	v0,zero
    2ff8:	8fbf0024 	lw	ra,36(sp)
    2ffc:	27bd0028 	addiu	sp,sp,40
    3000:	03e00008 	jr	ra
    3004:	00000000 	nop

00003008 <Math3D_TriChkLineSegParaXIntersect>:
    3008:	27bdffc8 	addiu	sp,sp,-56
    300c:	f7b40020 	sdc1	$f20,32(sp)
    3010:	4487a000 	mtc1	a3,$f20
    3014:	3c010000 	lui	at,0x0
    3018:	c424014c 	lwc1	$f4,332(at)
    301c:	4600a005 	abs.s	$f0,$f20
    3020:	afbf002c 	sw	ra,44(sp)
    3024:	4604003c 	c.lt.s	$f0,$f4
    3028:	afa40038 	sw	a0,56(sp)
    302c:	afa5003c 	sw	a1,60(sp)
    3030:	afa60040 	sw	a2,64(sp)
    3034:	45000003 	bc1f	3044 <Math3D_TriChkLineSegParaXIntersect+0x3c>
    3038:	c7a60060 	lwc1	$f6,96(sp)
    303c:	1000004e 	b	3178 <Math3D_TriChkLineSegParaXIntersect+0x170>
    3040:	00001025 	move	v0,zero
    3044:	c7a80054 	lwc1	$f8,84(sp)
    3048:	3c010000 	lui	at,0x0
    304c:	c7aa0058 	lwc1	$f10,88(sp)
    3050:	e42600f8 	swc1	$f6,248(at)
    3054:	3c0e0000 	lui	t6,0x0
    3058:	e42800fc 	swc1	$f8,252(at)
    305c:	3c010000 	lui	at,0x0
    3060:	25ce00f8 	addiu	t6,t6,248
    3064:	afae0010 	sw	t6,16(sp)
    3068:	4600a306 	mov.s	$f12,$f20
    306c:	c7ae0048 	lwc1	$f14,72(sp)
    3070:	8fa6004c 	lw	a2,76(sp)
    3074:	8fa70050 	lw	a3,80(sp)
    3078:	0c000000 	jal	0 <Math3D_PlaneVsLineSegClosestPoint>
    307c:	e42a0100 	swc1	$f10,256(at)
    3080:	c7b00064 	lwc1	$f16,100(sp)
    3084:	3c0f0000 	lui	t7,0x0
    3088:	3c010000 	lui	at,0x0
    308c:	25ef00f8 	addiu	t7,t7,248
    3090:	afaf0010 	sw	t7,16(sp)
    3094:	4600a306 	mov.s	$f12,$f20
    3098:	c7ae0048 	lwc1	$f14,72(sp)
    309c:	8fa6004c 	lw	a2,76(sp)
    30a0:	8fa70050 	lw	a3,80(sp)
    30a4:	e7a00034 	swc1	$f0,52(sp)
    30a8:	0c000000 	jal	0 <Math3D_PlaneVsLineSegClosestPoint>
    30ac:	e43000f8 	swc1	$f16,248(at)
    30b0:	c7a20034 	lwc1	$f2,52(sp)
    30b4:	44806000 	mtc1	zero,$f12
    30b8:	00000000 	nop
    30bc:	4602603c 	c.lt.s	$f12,$f2
    30c0:	00000000 	nop
    30c4:	45020006 	bc1fl	30e0 <Math3D_TriChkLineSegParaXIntersect+0xd8>
    30c8:	460c103c 	c.lt.s	$f2,$f12
    30cc:	4600603c 	c.lt.s	$f12,$f0
    30d0:	00000000 	nop
    30d4:	4501000b 	bc1t	3104 <Math3D_TriChkLineSegParaXIntersect+0xfc>
    30d8:	00000000 	nop
    30dc:	460c103c 	c.lt.s	$f2,$f12
    30e0:	8fa40038 	lw	a0,56(sp)
    30e4:	8fa5003c 	lw	a1,60(sp)
    30e8:	8fa60040 	lw	a2,64(sp)
    30ec:	45000007 	bc1f	310c <Math3D_TriChkLineSegParaXIntersect+0x104>
    30f0:	8fa70054 	lw	a3,84(sp)
    30f4:	460c003c 	c.lt.s	$f0,$f12
    30f8:	00000000 	nop
    30fc:	45020004 	bc1fl	3110 <Math3D_TriChkLineSegParaXIntersect+0x108>
    3100:	3c014396 	lui	at,0x4396
    3104:	1000001c 	b	3178 <Math3D_TriChkLineSegParaXIntersect+0x170>
    3108:	00001025 	move	v0,zero
    310c:	3c014396 	lui	at,0x4396
    3110:	44812000 	mtc1	at,$f4
    3114:	3c013f80 	lui	at,0x3f80
    3118:	44813000 	mtc1	at,$f6
    311c:	c7b20058 	lwc1	$f18,88(sp)
    3120:	e7b4001c 	swc1	$f20,28(sp)
    3124:	e7a40014 	swc1	$f4,20(sp)
    3128:	e7b20010 	swc1	$f18,16(sp)
    312c:	0c000000 	jal	0 <Math3D_PlaneVsLineSegClosestPoint>
    3130:	e7a60018 	swc1	$f6,24(sp)
    3134:	1040000f 	beqz	v0,3174 <Math3D_TriChkLineSegParaXIntersect+0x16c>
    3138:	c7a80048 	lwc1	$f8,72(sp)
    313c:	c7b00054 	lwc1	$f16,84(sp)
    3140:	46004287 	neg.s	$f10,$f8
    3144:	c7a4004c 	lwc1	$f4,76(sp)
    3148:	46105482 	mul.s	$f18,$f10,$f16
    314c:	c7a60058 	lwc1	$f6,88(sp)
    3150:	c7b00050 	lwc1	$f16,80(sp)
    3154:	8fb8005c 	lw	t8,92(sp)
    3158:	46062202 	mul.s	$f8,$f4,$f6
    315c:	24020001 	li	v0,1
    3160:	46089281 	sub.s	$f10,$f18,$f8
    3164:	46105101 	sub.s	$f4,$f10,$f16
    3168:	46142183 	div.s	$f6,$f4,$f20
    316c:	10000002 	b	3178 <Math3D_TriChkLineSegParaXIntersect+0x170>
    3170:	e7060000 	swc1	$f6,0(t8)
    3174:	00001025 	move	v0,zero
    3178:	8fbf002c 	lw	ra,44(sp)
    317c:	d7b40020 	ldc1	$f20,32(sp)
    3180:	27bd0038 	addiu	sp,sp,56
    3184:	03e00008 	jr	ra
    3188:	00000000 	nop

0000318c <Math3D_TriChkPointParaXDist>:
    318c:	27bdffd8 	addiu	sp,sp,-40
    3190:	afbf0024 	sw	ra,36(sp)
    3194:	c4e20000 	lwc1	$f2,0(a3)
    3198:	3c010000 	lui	at,0x0
    319c:	c4240150 	lwc1	$f4,336(at)
    31a0:	46001005 	abs.s	$f0,$f2
    31a4:	8fa70038 	lw	a3,56(sp)
    31a8:	4604003c 	c.lt.s	$f0,$f4
    31ac:	c7a6003c 	lwc1	$f6,60(sp)
    31b0:	45020004 	bc1fl	31c4 <Math3D_TriChkPointParaXDist+0x38>
    31b4:	44804000 	mtc1	zero,$f8
    31b8:	1000000d 	b	31f0 <Math3D_TriChkPointParaXDist+0x64>
    31bc:	00001025 	move	v0,zero
    31c0:	44804000 	mtc1	zero,$f8
    31c4:	c7aa0040 	lwc1	$f10,64(sp)
    31c8:	e7a60010 	swc1	$f6,16(sp)
    31cc:	e7a2001c 	swc1	$f2,28(sp)
    31d0:	e7aa0018 	swc1	$f10,24(sp)
    31d4:	0c000000 	jal	0 <Math3D_PlaneVsLineSegClosestPoint>
    31d8:	e7a80014 	swc1	$f8,20(sp)
    31dc:	50400004 	beqzl	v0,31f0 <Math3D_TriChkPointParaXDist+0x64>
    31e0:	00001025 	move	v0,zero
    31e4:	10000002 	b	31f0 <Math3D_TriChkPointParaXDist+0x64>
    31e8:	24020001 	li	v0,1
    31ec:	00001025 	move	v0,zero
    31f0:	8fbf0024 	lw	ra,36(sp)
    31f4:	27bd0028 	addiu	sp,sp,40
    31f8:	03e00008 	jr	ra
    31fc:	00000000 	nop

00003200 <Math3D_TriChkPointParaZImpl>:
    3200:	27bdff78 	addiu	sp,sp,-136
    3204:	f7b40028 	sdc1	$f20,40(sp)
    3208:	afa60090 	sw	a2,144(sp)
    320c:	8fae0090 	lw	t6,144(sp)
    3210:	afbf003c 	sw	ra,60(sp)
    3214:	f7b60030 	sdc1	$f22,48(sp)
    3218:	c5c40000 	lwc1	$f4,0(t6)
    321c:	4487a000 	mtc1	a3,$f20
    3220:	8ca70004 	lw	a3,4(a1)
    3224:	8ca60000 	lw	a2,0(a1)
    3228:	c48e0004 	lwc1	$f14,4(a0)
    322c:	c48c0000 	lwc1	$f12,0(a0)
    3230:	e7a40010 	swc1	$f4,16(sp)
    3234:	c5c60004 	lwc1	$f6,4(t6)
    3238:	c7b60098 	lwc1	$f22,152(sp)
    323c:	c7a800a0 	lwc1	$f8,160(sp)
    3240:	afa5008c 	sw	a1,140(sp)
    3244:	afa40088 	sw	a0,136(sp)
    3248:	e7b40018 	swc1	$f20,24(sp)
    324c:	e7a60014 	swc1	$f6,20(sp)
    3250:	e7b6001c 	swc1	$f22,28(sp)
    3254:	0c000000 	jal	0 <Math3D_PlaneVsLineSegClosestPoint>
    3258:	e7a80020 	swc1	$f8,32(sp)
    325c:	8fa30090 	lw	v1,144(sp)
    3260:	8fa40088 	lw	a0,136(sp)
    3264:	8fa5008c 	lw	a1,140(sp)
    3268:	14400003 	bnez	v0,3278 <Math3D_TriChkPointParaZImpl+0x78>
    326c:	c7b200a0 	lwc1	$f18,160(sp)
    3270:	100000b0 	b	3534 <Math3D_TriChkPointParaZImpl+0x334>
    3274:	00001025 	move	v0,zero
    3278:	c48e0000 	lwc1	$f14,0(a0)
    327c:	c4900004 	lwc1	$f16,4(a0)
    3280:	46129302 	mul.s	$f12,$f18,$f18
    3284:	460ea001 	sub.s	$f0,$f20,$f14
    3288:	4610b081 	sub.s	$f2,$f22,$f16
    328c:	46000282 	mul.s	$f10,$f0,$f0
    3290:	00000000 	nop
    3294:	46021102 	mul.s	$f4,$f2,$f2
    3298:	46045180 	add.s	$f6,$f10,$f4
    329c:	460c303c 	c.lt.s	$f6,$f12
    32a0:	00000000 	nop
    32a4:	45010022 	bc1t	3330 <Math3D_TriChkPointParaZImpl+0x130>
    32a8:	00000000 	nop
    32ac:	c4a80004 	lwc1	$f8,4(a1)
    32b0:	c4b20000 	lwc1	$f18,0(a1)
    32b4:	e7b0006c 	swc1	$f16,108(sp)
    32b8:	e7a80064 	swc1	$f8,100(sp)
    32bc:	4612a001 	sub.s	$f0,$f20,$f18
    32c0:	c7aa0064 	lwc1	$f10,100(sp)
    32c4:	e7ae0070 	swc1	$f14,112(sp)
    32c8:	460ab081 	sub.s	$f2,$f22,$f10
    32cc:	46000102 	mul.s	$f4,$f0,$f0
    32d0:	00000000 	nop
    32d4:	46021182 	mul.s	$f6,$f2,$f2
    32d8:	46062200 	add.s	$f8,$f4,$f6
    32dc:	460c403c 	c.lt.s	$f8,$f12
    32e0:	00000000 	nop
    32e4:	45010012 	bc1t	3330 <Math3D_TriChkPointParaZImpl+0x130>
    32e8:	00000000 	nop
    32ec:	c46e0000 	lwc1	$f14,0(v1)
    32f0:	c4700004 	lwc1	$f16,4(v1)
    32f4:	e7b20068 	swc1	$f18,104(sp)
    32f8:	460ea001 	sub.s	$f0,$f20,$f14
    32fc:	e7ac0058 	swc1	$f12,88(sp)
    3300:	c7a80070 	lwc1	$f8,112(sp)
    3304:	4610b081 	sub.s	$f2,$f22,$f16
    3308:	46000282 	mul.s	$f10,$f0,$f0
    330c:	e7ae0060 	swc1	$f14,96(sp)
    3310:	e7b0005c 	swc1	$f16,92(sp)
    3314:	46021102 	mul.s	$f4,$f2,$f2
    3318:	46045180 	add.s	$f6,$f10,$f4
    331c:	c7aa0064 	lwc1	$f10,100(sp)
    3320:	460c303c 	c.lt.s	$f6,$f12
    3324:	00000000 	nop
    3328:	45020004 	bc1fl	333c <Math3D_TriChkPointParaZImpl+0x13c>
    332c:	46144001 	sub.s	$f0,$f8,$f20
    3330:	10000080 	b	3534 <Math3D_TriChkPointParaZImpl+0x334>
    3334:	24020001 	li	v0,1
    3338:	46144001 	sub.s	$f0,$f8,$f20
    333c:	c7a4006c 	lwc1	$f4,108(sp)
    3340:	c7a60068 	lwc1	$f6,104(sp)
    3344:	46165081 	sub.s	$f2,$f10,$f22
    3348:	46162301 	sub.s	$f12,$f4,$f22
    334c:	46020202 	mul.s	$f8,$f0,$f2
    3350:	46143381 	sub.s	$f14,$f6,$f20
    3354:	c7a6005c 	lwc1	$f6,92(sp)
    3358:	460e6282 	mul.s	$f10,$f12,$f14
    335c:	46163401 	sub.s	$f16,$f6,$f22
    3360:	460a4101 	sub.s	$f4,$f8,$f10
    3364:	c7a80060 	lwc1	$f8,96(sp)
    3368:	46107282 	mul.s	$f10,$f14,$f16
    336c:	46144481 	sub.s	$f18,$f8,$f20
    3370:	e7a40084 	swc1	$f4,132(sp)
    3374:	46121182 	mul.s	$f6,$f2,$f18
    3378:	c7a2009c 	lwc1	$f2,156(sp)
    337c:	4602203e 	c.le.s	$f4,$f2
    3380:	46065201 	sub.s	$f8,$f10,$f6
    3384:	460c9282 	mul.s	$f10,$f18,$f12
    3388:	46002306 	mov.s	$f12,$f4
    338c:	46008182 	mul.s	$f6,$f16,$f0
    3390:	e7a80080 	swc1	$f8,128(sp)
    3394:	46004386 	mov.s	$f14,$f8
    3398:	46065281 	sub.s	$f10,$f10,$f6
    339c:	e7aa007c 	swc1	$f10,124(sp)
    33a0:	45000009 	bc1f	33c8 <Math3D_TriChkPointParaZImpl+0x1c8>
    33a4:	46005406 	mov.s	$f16,$f10
    33a8:	4602403e 	c.le.s	$f8,$f2
    33ac:	00000000 	nop
    33b0:	45020006 	bc1fl	33cc <Math3D_TriChkPointParaZImpl+0x1cc>
    33b4:	46001007 	neg.s	$f0,$f2
    33b8:	4602503e 	c.le.s	$f10,$f2
    33bc:	00000000 	nop
    33c0:	4501000e 	bc1t	33fc <Math3D_TriChkPointParaZImpl+0x1fc>
    33c4:	00000000 	nop
    33c8:	46001007 	neg.s	$f0,$f2
    33cc:	460c003e 	c.le.s	$f0,$f12
    33d0:	00000000 	nop
    33d4:	4502000c 	bc1fl	3408 <Math3D_TriChkPointParaZImpl+0x208>
    33d8:	c7a000a4 	lwc1	$f0,164(sp)
    33dc:	460e003e 	c.le.s	$f0,$f14
    33e0:	00000000 	nop
    33e4:	45020008 	bc1fl	3408 <Math3D_TriChkPointParaZImpl+0x208>
    33e8:	c7a000a4 	lwc1	$f0,164(sp)
    33ec:	4610003e 	c.le.s	$f0,$f16
    33f0:	00000000 	nop
    33f4:	45020004 	bc1fl	3408 <Math3D_TriChkPointParaZImpl+0x208>
    33f8:	c7a000a4 	lwc1	$f0,164(sp)
    33fc:	1000004d 	b	3534 <Math3D_TriChkPointParaZImpl+0x334>
    3400:	24020001 	li	v0,1
    3404:	c7a000a4 	lwc1	$f0,164(sp)
    3408:	3c013f00 	lui	at,0x3f00
    340c:	44813000 	mtc1	at,$f6
    3410:	46000005 	abs.s	$f0,$f0
    3414:	8fa60070 	lw	a2,112(sp)
    3418:	4600303c 	c.lt.s	$f6,$f0
    341c:	8fa7006c 	lw	a3,108(sp)
    3420:	c7a40068 	lwc1	$f4,104(sp)
    3424:	27af0078 	addiu	t7,sp,120
    3428:	45020042 	bc1fl	3534 <Math3D_TriChkPointParaZImpl+0x334>
    342c:	00001025 	move	v0,zero
    3430:	c7a80064 	lwc1	$f8,100(sp)
    3434:	4600a306 	mov.s	$f12,$f20
    3438:	4600b386 	mov.s	$f14,$f22
    343c:	e7a40010 	swc1	$f4,16(sp)
    3440:	afaf0018 	sw	t7,24(sp)
    3444:	afa40088 	sw	a0,136(sp)
    3448:	afa5008c 	sw	a1,140(sp)
    344c:	0c000000 	jal	0 <Math3D_PlaneVsLineSegClosestPoint>
    3450:	e7a80014 	swc1	$f8,20(sp)
    3454:	8fa30090 	lw	v1,144(sp)
    3458:	8fa40088 	lw	a0,136(sp)
    345c:	10400009 	beqz	v0,3484 <Math3D_TriChkPointParaZImpl+0x284>
    3460:	8fa5008c 	lw	a1,140(sp)
    3464:	c7aa0078 	lwc1	$f10,120(sp)
    3468:	c7a60058 	lwc1	$f6,88(sp)
    346c:	4606503c 	c.lt.s	$f10,$f6
    3470:	00000000 	nop
    3474:	45020004 	bc1fl	3488 <Math3D_TriChkPointParaZImpl+0x288>
    3478:	c4640000 	lwc1	$f4,0(v1)
    347c:	1000002d 	b	3534 <Math3D_TriChkPointParaZImpl+0x334>
    3480:	24020001 	li	v0,1
    3484:	c4640000 	lwc1	$f4,0(v1)
    3488:	8ca60000 	lw	a2,0(a1)
    348c:	8ca70004 	lw	a3,4(a1)
    3490:	e7a40010 	swc1	$f4,16(sp)
    3494:	c4680004 	lwc1	$f8,4(v1)
    3498:	27b80078 	addiu	t8,sp,120
    349c:	afb80018 	sw	t8,24(sp)
    34a0:	afa40088 	sw	a0,136(sp)
    34a4:	4600a306 	mov.s	$f12,$f20
    34a8:	4600b386 	mov.s	$f14,$f22
    34ac:	0c000000 	jal	0 <Math3D_PlaneVsLineSegClosestPoint>
    34b0:	e7a80014 	swc1	$f8,20(sp)
    34b4:	8fa30090 	lw	v1,144(sp)
    34b8:	10400009 	beqz	v0,34e0 <Math3D_TriChkPointParaZImpl+0x2e0>
    34bc:	8fa40088 	lw	a0,136(sp)
    34c0:	c7aa0078 	lwc1	$f10,120(sp)
    34c4:	c7a60058 	lwc1	$f6,88(sp)
    34c8:	4606503c 	c.lt.s	$f10,$f6
    34cc:	00000000 	nop
    34d0:	45020004 	bc1fl	34e4 <Math3D_TriChkPointParaZImpl+0x2e4>
    34d4:	c4840000 	lwc1	$f4,0(a0)
    34d8:	10000016 	b	3534 <Math3D_TriChkPointParaZImpl+0x334>
    34dc:	24020001 	li	v0,1
    34e0:	c4840000 	lwc1	$f4,0(a0)
    34e4:	8c660000 	lw	a2,0(v1)
    34e8:	8c670004 	lw	a3,4(v1)
    34ec:	e7a40010 	swc1	$f4,16(sp)
    34f0:	c4880004 	lwc1	$f8,4(a0)
    34f4:	27b90078 	addiu	t9,sp,120
    34f8:	afb90018 	sw	t9,24(sp)
    34fc:	4600a306 	mov.s	$f12,$f20
    3500:	4600b386 	mov.s	$f14,$f22
    3504:	0c000000 	jal	0 <Math3D_PlaneVsLineSegClosestPoint>
    3508:	e7a80014 	swc1	$f8,20(sp)
    350c:	10400008 	beqz	v0,3530 <Math3D_TriChkPointParaZImpl+0x330>
    3510:	c7aa0078 	lwc1	$f10,120(sp)
    3514:	c7a60058 	lwc1	$f6,88(sp)
    3518:	4606503c 	c.lt.s	$f10,$f6
    351c:	00000000 	nop
    3520:	45020004 	bc1fl	3534 <Math3D_TriChkPointParaZImpl+0x334>
    3524:	00001025 	move	v0,zero
    3528:	10000002 	b	3534 <Math3D_TriChkPointParaZImpl+0x334>
    352c:	24020001 	li	v0,1
    3530:	00001025 	move	v0,zero
    3534:	8fbf003c 	lw	ra,60(sp)
    3538:	d7b40028 	ldc1	$f20,40(sp)
    353c:	d7b60030 	ldc1	$f22,48(sp)
    3540:	03e00008 	jr	ra
    3544:	27bd0088 	addiu	sp,sp,136

00003548 <Math3D_TriChkPointParaZDeterminate>:
    3548:	27bdffd8 	addiu	sp,sp,-40
    354c:	44876000 	mtc1	a3,$f12
    3550:	3c013f80 	lui	at,0x3f80
    3554:	44814000 	mtc1	at,$f8
    3558:	c7a40038 	lwc1	$f4,56(sp)
    355c:	c7a6003c 	lwc1	$f6,60(sp)
    3560:	c7aa0040 	lwc1	$f10,64(sp)
    3564:	afbf0024 	sw	ra,36(sp)
    3568:	44076000 	mfc1	a3,$f12
    356c:	e7a40010 	swc1	$f4,16(sp)
    3570:	e7a80018 	swc1	$f8,24(sp)
    3574:	e7a60014 	swc1	$f6,20(sp)
    3578:	0c000000 	jal	0 <Math3D_PlaneVsLineSegClosestPoint>
    357c:	e7aa001c 	swc1	$f10,28(sp)
    3580:	8fbf0024 	lw	ra,36(sp)
    3584:	27bd0028 	addiu	sp,sp,40
    3588:	03e00008 	jr	ra
    358c:	00000000 	nop

00003590 <Math3D_TriChkPointParaZIntersect>:
    3590:	27bdffd8 	addiu	sp,sp,-40
    3594:	c7ac003c 	lwc1	$f12,60(sp)
    3598:	3c010000 	lui	at,0x0
    359c:	c4240154 	lwc1	$f4,340(at)
    35a0:	46006005 	abs.s	$f0,$f12
    35a4:	afa70034 	sw	a3,52(sp)
    35a8:	4604003c 	c.lt.s	$f0,$f4
    35ac:	afbf0024 	sw	ra,36(sp)
    35b0:	8fa70044 	lw	a3,68(sp)
    35b4:	3c014396 	lui	at,0x4396
    35b8:	45000003 	bc1f	35c8 <Math3D_TriChkPointParaZIntersect+0x38>
    35bc:	c7a60048 	lwc1	$f6,72(sp)
    35c0:	1000001b 	b	3630 <Math3D_TriChkPointParaZIntersect+0xa0>
    35c4:	00001025 	move	v0,zero
    35c8:	44814000 	mtc1	at,$f8
    35cc:	3c013f80 	lui	at,0x3f80
    35d0:	44815000 	mtc1	at,$f10
    35d4:	e7a60010 	swc1	$f6,16(sp)
    35d8:	e7ac001c 	swc1	$f12,28(sp)
    35dc:	e7a80014 	swc1	$f8,20(sp)
    35e0:	0c000000 	jal	0 <Math3D_PlaneVsLineSegClosestPoint>
    35e4:	e7aa0018 	swc1	$f10,24(sp)
    35e8:	10400010 	beqz	v0,362c <Math3D_TriChkPointParaZIntersect+0x9c>
    35ec:	c7b00034 	lwc1	$f16,52(sp)
    35f0:	c7a40044 	lwc1	$f4,68(sp)
    35f4:	46008487 	neg.s	$f18,$f16
    35f8:	c7a80038 	lwc1	$f8,56(sp)
    35fc:	46049182 	mul.s	$f6,$f18,$f4
    3600:	c7aa0048 	lwc1	$f10,72(sp)
    3604:	c7a40040 	lwc1	$f4,64(sp)
    3608:	8fae004c 	lw	t6,76(sp)
    360c:	460a4402 	mul.s	$f16,$f8,$f10
    3610:	c7aa003c 	lwc1	$f10,60(sp)
    3614:	24020001 	li	v0,1
    3618:	46103481 	sub.s	$f18,$f6,$f16
    361c:	46049201 	sub.s	$f8,$f18,$f4
    3620:	460a4183 	div.s	$f6,$f8,$f10
    3624:	10000002 	b	3630 <Math3D_TriChkPointParaZIntersect+0xa0>
    3628:	e5c60000 	swc1	$f6,0(t6)
    362c:	00001025 	move	v0,zero
    3630:	8fbf0024 	lw	ra,36(sp)
    3634:	27bd0028 	addiu	sp,sp,40
    3638:	03e00008 	jr	ra
    363c:	00000000 	nop

00003640 <Math3D_TriChkPointParaZ>:
    3640:	44876000 	mtc1	a3,$f12
    3644:	3c010000 	lui	at,0x0
    3648:	c4240158 	lwc1	$f4,344(at)
    364c:	46006005 	abs.s	$f0,$f12
    3650:	27bdffd8 	addiu	sp,sp,-40
    3654:	4604003c 	c.lt.s	$f0,$f4
    3658:	afbf0024 	sw	ra,36(sp)
    365c:	8fa70038 	lw	a3,56(sp)
    3660:	c7a6003c 	lwc1	$f6,60(sp)
    3664:	45000003 	bc1f	3674 <Math3D_TriChkPointParaZ+0x34>
    3668:	3c014396 	lui	at,0x4396
    366c:	1000000e 	b	36a8 <Math3D_TriChkPointParaZ+0x68>
    3670:	00001025 	move	v0,zero
    3674:	44814000 	mtc1	at,$f8
    3678:	3c013f80 	lui	at,0x3f80
    367c:	44815000 	mtc1	at,$f10
    3680:	e7a60010 	swc1	$f6,16(sp)
    3684:	e7ac001c 	swc1	$f12,28(sp)
    3688:	e7a80014 	swc1	$f8,20(sp)
    368c:	0c000000 	jal	0 <Math3D_PlaneVsLineSegClosestPoint>
    3690:	e7aa0018 	swc1	$f10,24(sp)
    3694:	50400004 	beqzl	v0,36a8 <Math3D_TriChkPointParaZ+0x68>
    3698:	00001025 	move	v0,zero
    369c:	10000002 	b	36a8 <Math3D_TriChkPointParaZ+0x68>
    36a0:	24020001 	li	v0,1
    36a4:	00001025 	move	v0,zero
    36a8:	8fbf0024 	lw	ra,36(sp)
    36ac:	27bd0028 	addiu	sp,sp,40
    36b0:	03e00008 	jr	ra
    36b4:	00000000 	nop

000036b8 <Math3D_TriChkLineSegParaZIntersect>:
    36b8:	27bdffd0 	addiu	sp,sp,-48
    36bc:	c7a00044 	lwc1	$f0,68(sp)
    36c0:	3c010000 	lui	at,0x0
    36c4:	c424015c 	lwc1	$f4,348(at)
    36c8:	46000005 	abs.s	$f0,$f0
    36cc:	afbf0024 	sw	ra,36(sp)
    36d0:	4604003c 	c.lt.s	$f0,$f4
    36d4:	afa40030 	sw	a0,48(sp)
    36d8:	afa50034 	sw	a1,52(sp)
    36dc:	afa60038 	sw	a2,56(sp)
    36e0:	45000003 	bc1f	36f0 <Math3D_TriChkLineSegParaZIntersect+0x38>
    36e4:	afa7003c 	sw	a3,60(sp)
    36e8:	10000051 	b	3830 <Math3D_TriChkLineSegParaZIntersect+0x178>
    36ec:	00001025 	move	v0,zero
    36f0:	c7a6004c 	lwc1	$f6,76(sp)
    36f4:	c7a80050 	lwc1	$f8,80(sp)
    36f8:	3c010000 	lui	at,0x0
    36fc:	c7aa0058 	lwc1	$f10,88(sp)
    3700:	3c0e0000 	lui	t6,0x0
    3704:	e4260108 	swc1	$f6,264(at)
    3708:	e428010c 	swc1	$f8,268(at)
    370c:	3c010000 	lui	at,0x0
    3710:	25ce0108 	addiu	t6,t6,264
    3714:	afae0010 	sw	t6,16(sp)
    3718:	c7ac003c 	lwc1	$f12,60(sp)
    371c:	c7ae0040 	lwc1	$f14,64(sp)
    3720:	8fa60044 	lw	a2,68(sp)
    3724:	8fa70048 	lw	a3,72(sp)
    3728:	0c000000 	jal	0 <Math3D_PlaneVsLineSegClosestPoint>
    372c:	e42a0110 	swc1	$f10,272(at)
    3730:	c7b0005c 	lwc1	$f16,92(sp)
    3734:	3c0f0000 	lui	t7,0x0
    3738:	3c010000 	lui	at,0x0
    373c:	25ef0108 	addiu	t7,t7,264
    3740:	afaf0010 	sw	t7,16(sp)
    3744:	c7ac003c 	lwc1	$f12,60(sp)
    3748:	c7ae0040 	lwc1	$f14,64(sp)
    374c:	8fa60044 	lw	a2,68(sp)
    3750:	8fa70048 	lw	a3,72(sp)
    3754:	e7a0002c 	swc1	$f0,44(sp)
    3758:	0c000000 	jal	0 <Math3D_PlaneVsLineSegClosestPoint>
    375c:	e4300110 	swc1	$f16,272(at)
    3760:	c7a2002c 	lwc1	$f2,44(sp)
    3764:	44806000 	mtc1	zero,$f12
    3768:	00000000 	nop
    376c:	4602603c 	c.lt.s	$f12,$f2
    3770:	00000000 	nop
    3774:	45020006 	bc1fl	3790 <Math3D_TriChkLineSegParaZIntersect+0xd8>
    3778:	460c103c 	c.lt.s	$f2,$f12
    377c:	4600603c 	c.lt.s	$f12,$f0
    3780:	00000000 	nop
    3784:	4501000b 	bc1t	37b4 <Math3D_TriChkLineSegParaZIntersect+0xfc>
    3788:	00000000 	nop
    378c:	460c103c 	c.lt.s	$f2,$f12
    3790:	8fa40030 	lw	a0,48(sp)
    3794:	8fa50034 	lw	a1,52(sp)
    3798:	8fa60038 	lw	a2,56(sp)
    379c:	45000007 	bc1f	37bc <Math3D_TriChkLineSegParaZIntersect+0x104>
    37a0:	8fa7004c 	lw	a3,76(sp)
    37a4:	460c003c 	c.lt.s	$f0,$f12
    37a8:	00000000 	nop
    37ac:	45020004 	bc1fl	37c0 <Math3D_TriChkLineSegParaZIntersect+0x108>
    37b0:	3c014396 	lui	at,0x4396
    37b4:	1000001e 	b	3830 <Math3D_TriChkLineSegParaZIntersect+0x178>
    37b8:	00001025 	move	v0,zero
    37bc:	3c014396 	lui	at,0x4396
    37c0:	44812000 	mtc1	at,$f4
    37c4:	3c013f80 	lui	at,0x3f80
    37c8:	44813000 	mtc1	at,$f6
    37cc:	c7b20050 	lwc1	$f18,80(sp)
    37d0:	c7a80044 	lwc1	$f8,68(sp)
    37d4:	e7a40014 	swc1	$f4,20(sp)
    37d8:	e7b20010 	swc1	$f18,16(sp)
    37dc:	e7a60018 	swc1	$f6,24(sp)
    37e0:	0c000000 	jal	0 <Math3D_PlaneVsLineSegClosestPoint>
    37e4:	e7a8001c 	swc1	$f8,28(sp)
    37e8:	10400010 	beqz	v0,382c <Math3D_TriChkLineSegParaZIntersect+0x174>
    37ec:	c7aa003c 	lwc1	$f10,60(sp)
    37f0:	c7b2004c 	lwc1	$f18,76(sp)
    37f4:	46005407 	neg.s	$f16,$f10
    37f8:	c7a60040 	lwc1	$f6,64(sp)
    37fc:	46128102 	mul.s	$f4,$f16,$f18
    3800:	c7a80050 	lwc1	$f8,80(sp)
    3804:	c7b20048 	lwc1	$f18,72(sp)
    3808:	8fb80054 	lw	t8,84(sp)
    380c:	46083282 	mul.s	$f10,$f6,$f8
    3810:	c7a80044 	lwc1	$f8,68(sp)
    3814:	24020001 	li	v0,1
    3818:	460a2401 	sub.s	$f16,$f4,$f10
    381c:	46128181 	sub.s	$f6,$f16,$f18
    3820:	46083103 	div.s	$f4,$f6,$f8
    3824:	10000002 	b	3830 <Math3D_TriChkLineSegParaZIntersect+0x178>
    3828:	e7040000 	swc1	$f4,0(t8)
    382c:	00001025 	move	v0,zero
    3830:	8fbf0024 	lw	ra,36(sp)
    3834:	27bd0030 	addiu	sp,sp,48
    3838:	03e00008 	jr	ra
    383c:	00000000 	nop

00003840 <Math3D_TriChkLineSegParaZDist>:
    3840:	27bdffd8 	addiu	sp,sp,-40
    3844:	afbf0024 	sw	ra,36(sp)
    3848:	c4e20008 	lwc1	$f2,8(a3)
    384c:	3c010000 	lui	at,0x0
    3850:	c4240160 	lwc1	$f4,352(at)
    3854:	46001005 	abs.s	$f0,$f2
    3858:	8fa70038 	lw	a3,56(sp)
    385c:	4604003c 	c.lt.s	$f0,$f4
    3860:	c7a6003c 	lwc1	$f6,60(sp)
    3864:	45020004 	bc1fl	3878 <Math3D_TriChkLineSegParaZDist+0x38>
    3868:	44804000 	mtc1	zero,$f8
    386c:	1000000d 	b	38a4 <Math3D_TriChkLineSegParaZDist+0x64>
    3870:	00001025 	move	v0,zero
    3874:	44804000 	mtc1	zero,$f8
    3878:	c7aa0040 	lwc1	$f10,64(sp)
    387c:	e7a60010 	swc1	$f6,16(sp)
    3880:	e7a2001c 	swc1	$f2,28(sp)
    3884:	e7aa0018 	swc1	$f10,24(sp)
    3888:	0c000000 	jal	0 <Math3D_PlaneVsLineSegClosestPoint>
    388c:	e7a80014 	swc1	$f8,20(sp)
    3890:	50400004 	beqzl	v0,38a4 <Math3D_TriChkLineSegParaZDist+0x64>
    3894:	00001025 	move	v0,zero
    3898:	10000002 	b	38a4 <Math3D_TriChkLineSegParaZDist+0x64>
    389c:	24020001 	li	v0,1
    38a0:	00001025 	move	v0,zero
    38a4:	8fbf0024 	lw	ra,36(sp)
    38a8:	27bd0028 	addiu	sp,sp,40
    38ac:	03e00008 	jr	ra
    38b0:	00000000 	nop

000038b4 <Math3D_LineSegFindPlaneIntersect>:
    38b4:	460e6081 	sub.s	$f2,$f12,$f14
    38b8:	3c010000 	lui	at,0x0
    38bc:	c4240164 	lwc1	$f4,356(at)
    38c0:	27bdffe8 	addiu	sp,sp,-24
    38c4:	46001005 	abs.s	$f0,$f2
    38c8:	afbf0014 	sw	ra,20(sp)
    38cc:	4604003c 	c.lt.s	$f0,$f4
    38d0:	00c02025 	move	a0,a2
    38d4:	00e02825 	move	a1,a3
    38d8:	8fae0028 	lw	t6,40(sp)
    38dc:	4502000a 	bc1fl	3908 <Math3D_LineSegFindPlaneIntersect+0x54>
    38e0:	44800000 	mtc1	zero,$f0
    38e4:	8cf80000 	lw	t8,0(a3)
    38e8:	00001025 	move	v0,zero
    38ec:	add80000 	sw	t8,0(t6)
    38f0:	8cef0004 	lw	t7,4(a3)
    38f4:	adcf0004 	sw	t7,4(t6)
    38f8:	8cf80008 	lw	t8,8(a3)
    38fc:	1000001f 	b	397c <Math3D_LineSegFindPlaneIntersect+0xc8>
    3900:	add80008 	sw	t8,8(t6)
    3904:	44800000 	mtc1	zero,$f0
    3908:	8fb90028 	lw	t9,40(sp)
    390c:	46006032 	c.eq.s	$f12,$f0
    3910:	00000000 	nop
    3914:	45020009 	bc1fl	393c <Math3D_LineSegFindPlaneIntersect+0x88>
    3918:	46007032 	c.eq.s	$f14,$f0
    391c:	8c890000 	lw	t1,0(a0)
    3920:	af290000 	sw	t1,0(t9)
    3924:	8c880004 	lw	t0,4(a0)
    3928:	af280004 	sw	t0,4(t9)
    392c:	8c890008 	lw	t1,8(a0)
    3930:	10000011 	b	3978 <Math3D_LineSegFindPlaneIntersect+0xc4>
    3934:	af290008 	sw	t1,8(t9)
    3938:	46007032 	c.eq.s	$f14,$f0
    393c:	8faa0028 	lw	t2,40(sp)
    3940:	45020009 	bc1fl	3968 <Math3D_LineSegFindPlaneIntersect+0xb4>
    3944:	46026183 	div.s	$f6,$f12,$f2
    3948:	8cac0000 	lw	t4,0(a1)
    394c:	ad4c0000 	sw	t4,0(t2)
    3950:	8cab0004 	lw	t3,4(a1)
    3954:	ad4b0004 	sw	t3,4(t2)
    3958:	8cac0008 	lw	t4,8(a1)
    395c:	10000006 	b	3978 <Math3D_LineSegFindPlaneIntersect+0xc4>
    3960:	ad4c0008 	sw	t4,8(t2)
    3964:	46026183 	div.s	$f6,$f12,$f2
    3968:	8fa70028 	lw	a3,40(sp)
    396c:	44063000 	mfc1	a2,$f6
    3970:	0c000000 	jal	0 <Math3D_PlaneVsLineSegClosestPoint>
    3974:	00000000 	nop
    3978:	24020001 	li	v0,1
    397c:	8fbf0014 	lw	ra,20(sp)
    3980:	27bd0018 	addiu	sp,sp,24
    3984:	03e00008 	jr	ra
    3988:	00000000 	nop

0000398c <Math3D_LineSegVsPlane>:
    398c:	27bdffd8 	addiu	sp,sp,-40
    3990:	8fae0038 	lw	t6,56(sp)
    3994:	afbf001c 	sw	ra,28(sp)
    3998:	e7ac0028 	swc1	$f12,40(sp)
    399c:	e7ae002c 	swc1	$f14,44(sp)
    39a0:	afa60030 	sw	a2,48(sp)
    39a4:	afa70034 	sw	a3,52(sp)
    39a8:	c7ae002c 	lwc1	$f14,44(sp)
    39ac:	c7ac0028 	lwc1	$f12,40(sp)
    39b0:	0c000000 	jal	0 <Math3D_PlaneVsLineSegClosestPoint>
    39b4:	afae0010 	sw	t6,16(sp)
    39b8:	8fa4003c 	lw	a0,60(sp)
    39bc:	e7a00024 	swc1	$f0,36(sp)
    39c0:	c7ac0028 	lwc1	$f12,40(sp)
    39c4:	c7ae002c 	lwc1	$f14,44(sp)
    39c8:	8fa60030 	lw	a2,48(sp)
    39cc:	8fa70034 	lw	a3,52(sp)
    39d0:	0c000000 	jal	0 <Math3D_PlaneVsLineSegClosestPoint>
    39d4:	afa40010 	sw	a0,16(sp)
    39d8:	c7ac0024 	lwc1	$f12,36(sp)
    39dc:	44801000 	mtc1	zero,$f2
    39e0:	8fa4003c 	lw	a0,60(sp)
    39e4:	46006102 	mul.s	$f4,$f12,$f0
    39e8:	46000386 	mov.s	$f14,$f0
    39ec:	8faf0040 	lw	t7,64(sp)
    39f0:	8fa80044 	lw	t0,68(sp)
    39f4:	4604103c 	c.lt.s	$f2,$f4
    39f8:	00000000 	nop
    39fc:	45000009 	bc1f	3a24 <Math3D_LineSegVsPlane+0x98>
    3a00:	00000000 	nop
    3a04:	8c990000 	lw	t9,0(a0)
    3a08:	00001025 	move	v0,zero
    3a0c:	adf90000 	sw	t9,0(t7)
    3a10:	8c980004 	lw	t8,4(a0)
    3a14:	adf80004 	sw	t8,4(t7)
    3a18:	8c990008 	lw	t9,8(a0)
    3a1c:	10000017 	b	3a7c <Math3D_LineSegVsPlane+0xf0>
    3a20:	adf90008 	sw	t9,8(t7)
    3a24:	11000011 	beqz	t0,3a6c <Math3D_LineSegVsPlane+0xe0>
    3a28:	8fa60038 	lw	a2,56(sp)
    3a2c:	4602603c 	c.lt.s	$f12,$f2
    3a30:	00000000 	nop
    3a34:	4502000e 	bc1fl	3a70 <Math3D_LineSegVsPlane+0xe4>
    3a38:	8fac0040 	lw	t4,64(sp)
    3a3c:	4600103c 	c.lt.s	$f2,$f0
    3a40:	8fa90040 	lw	t1,64(sp)
    3a44:	4502000a 	bc1fl	3a70 <Math3D_LineSegVsPlane+0xe4>
    3a48:	8fac0040 	lw	t4,64(sp)
    3a4c:	8c8b0000 	lw	t3,0(a0)
    3a50:	00001025 	move	v0,zero
    3a54:	ad2b0000 	sw	t3,0(t1)
    3a58:	8c8a0004 	lw	t2,4(a0)
    3a5c:	ad2a0004 	sw	t2,4(t1)
    3a60:	8c8b0008 	lw	t3,8(a0)
    3a64:	10000005 	b	3a7c <Math3D_LineSegVsPlane+0xf0>
    3a68:	ad2b0008 	sw	t3,8(t1)
    3a6c:	8fac0040 	lw	t4,64(sp)
    3a70:	00803825 	move	a3,a0
    3a74:	0c000000 	jal	0 <Math3D_PlaneVsLineSegClosestPoint>
    3a78:	afac0010 	sw	t4,16(sp)
    3a7c:	8fbf001c 	lw	ra,28(sp)
    3a80:	27bd0028 	addiu	sp,sp,40
    3a84:	03e00008 	jr	ra
    3a88:	00000000 	nop

00003a8c <Math3D_TriLineIntersect>:
    3a8c:	27bdffd0 	addiu	sp,sp,-48
    3a90:	afb00028 	sw	s0,40(sp)
    3a94:	8fb00054 	lw	s0,84(sp)
    3a98:	44876000 	mtc1	a3,$f12
    3a9c:	8fae004c 	lw	t6,76(sp)
    3aa0:	8faf0050 	lw	t7,80(sp)
    3aa4:	8fb80058 	lw	t8,88(sp)
    3aa8:	afbf002c 	sw	ra,44(sp)
    3aac:	afa60038 	sw	a2,56(sp)
    3ab0:	afa40030 	sw	a0,48(sp)
    3ab4:	afa50034 	sw	a1,52(sp)
    3ab8:	8fa60044 	lw	a2,68(sp)
    3abc:	8fa70048 	lw	a3,72(sp)
    3ac0:	c7ae0040 	lwc1	$f14,64(sp)
    3ac4:	afb00018 	sw	s0,24(sp)
    3ac8:	afae0010 	sw	t6,16(sp)
    3acc:	e7ac003c 	swc1	$f12,60(sp)
    3ad0:	afaf0014 	sw	t7,20(sp)
    3ad4:	0c000000 	jal	0 <Math3D_PlaneVsLineSegClosestPoint>
    3ad8:	afb8001c 	sw	t8,28(sp)
    3adc:	14400003 	bnez	v0,3aec <Math3D_TriLineIntersect+0x60>
    3ae0:	c7ac003c 	lwc1	$f12,60(sp)
    3ae4:	1000003d 	b	3bdc <Math3D_TriLineIntersect+0x150>
    3ae8:	00001025 	move	v0,zero
    3aec:	44802000 	mtc1	zero,$f4
    3af0:	8fa40030 	lw	a0,48(sp)
    3af4:	46046032 	c.eq.s	$f12,$f4
    3af8:	00000000 	nop
    3afc:	4503000c 	bc1tl	3b30 <Math3D_TriLineIntersect+0xa4>
    3b00:	c7a00040 	lwc1	$f0,64(sp)
    3b04:	c6060004 	lwc1	$f6,4(s0)
    3b08:	44076000 	mfc1	a3,$f12
    3b0c:	8fa50034 	lw	a1,52(sp)
    3b10:	e7a60010 	swc1	$f6,16(sp)
    3b14:	c6080008 	lwc1	$f8,8(s0)
    3b18:	8fa60038 	lw	a2,56(sp)
    3b1c:	0c000000 	jal	0 <Math3D_PlaneVsLineSegClosestPoint>
    3b20:	e7a80014 	swc1	$f8,20(sp)
    3b24:	50400026 	beqzl	v0,3bc0 <Math3D_TriLineIntersect+0x134>
    3b28:	8fb90050 	lw	t9,80(sp)
    3b2c:	c7a00040 	lwc1	$f0,64(sp)
    3b30:	44805000 	mtc1	zero,$f10
    3b34:	8fa40030 	lw	a0,48(sp)
    3b38:	460a0032 	c.eq.s	$f0,$f10
    3b3c:	00000000 	nop
    3b40:	4503000c 	bc1tl	3b74 <Math3D_TriLineIntersect+0xe8>
    3b44:	c7a00044 	lwc1	$f0,68(sp)
    3b48:	c6100008 	lwc1	$f16,8(s0)
    3b4c:	44070000 	mfc1	a3,$f0
    3b50:	8fa50034 	lw	a1,52(sp)
    3b54:	e7b00010 	swc1	$f16,16(sp)
    3b58:	c6120000 	lwc1	$f18,0(s0)
    3b5c:	8fa60038 	lw	a2,56(sp)
    3b60:	0c000000 	jal	0 <Math3D_PlaneVsLineSegClosestPoint>
    3b64:	e7b20014 	swc1	$f18,20(sp)
    3b68:	50400015 	beqzl	v0,3bc0 <Math3D_TriLineIntersect+0x134>
    3b6c:	8fb90050 	lw	t9,80(sp)
    3b70:	c7a00044 	lwc1	$f0,68(sp)
    3b74:	44802000 	mtc1	zero,$f4
    3b78:	8fa40030 	lw	a0,48(sp)
    3b7c:	46040032 	c.eq.s	$f0,$f4
    3b80:	00000000 	nop
    3b84:	4501000b 	bc1t	3bb4 <Math3D_TriLineIntersect+0x128>
    3b88:	00000000 	nop
    3b8c:	c6060000 	lwc1	$f6,0(s0)
    3b90:	44070000 	mfc1	a3,$f0
    3b94:	8fa50034 	lw	a1,52(sp)
    3b98:	e7a60010 	swc1	$f6,16(sp)
    3b9c:	c6080004 	lwc1	$f8,4(s0)
    3ba0:	8fa60038 	lw	a2,56(sp)
    3ba4:	0c000000 	jal	0 <Math3D_PlaneVsLineSegClosestPoint>
    3ba8:	e7a80014 	swc1	$f8,20(sp)
    3bac:	50400004 	beqzl	v0,3bc0 <Math3D_TriLineIntersect+0x134>
    3bb0:	8fb90050 	lw	t9,80(sp)
    3bb4:	10000009 	b	3bdc <Math3D_TriLineIntersect+0x150>
    3bb8:	24020001 	li	v0,1
    3bbc:	8fb90050 	lw	t9,80(sp)
    3bc0:	00001025 	move	v0,zero
    3bc4:	8f290000 	lw	t1,0(t9)
    3bc8:	ae090000 	sw	t1,0(s0)
    3bcc:	8f280004 	lw	t0,4(t9)
    3bd0:	ae080004 	sw	t0,4(s0)
    3bd4:	8f290008 	lw	t1,8(t9)
    3bd8:	ae090008 	sw	t1,8(s0)
    3bdc:	8fbf002c 	lw	ra,44(sp)
    3be0:	8fb00028 	lw	s0,40(sp)
    3be4:	27bd0030 	addiu	sp,sp,48
    3be8:	03e00008 	jr	ra
    3bec:	00000000 	nop

00003bf0 <Math3D_TriNorm>:
    3bf0:	27bdffd0 	addiu	sp,sp,-48
    3bf4:	afbf002c 	sw	ra,44(sp)
    3bf8:	afb00028 	sw	s0,40(sp)
    3bfc:	afa50034 	sw	a1,52(sp)
    3c00:	afa60038 	sw	a2,56(sp)
    3c04:	afa7003c 	sw	a3,60(sp)
    3c08:	8cb80000 	lw	t8,0(a1)
    3c0c:	00808025 	move	s0,a0
    3c10:	260d0028 	addiu	t5,s0,40
    3c14:	ac980000 	sw	t8,0(a0)
    3c18:	8caf0004 	lw	t7,4(a1)
    3c1c:	260e002c 	addiu	t6,s0,44
    3c20:	26070024 	addiu	a3,s0,36
    3c24:	ac8f0004 	sw	t7,4(a0)
    3c28:	8cb80008 	lw	t8,8(a1)
    3c2c:	260f0030 	addiu	t7,s0,48
    3c30:	ac980008 	sw	t8,8(a0)
    3c34:	8fb90038 	lw	t9,56(sp)
    3c38:	8f290000 	lw	t1,0(t9)
    3c3c:	ac89000c 	sw	t1,12(a0)
    3c40:	8f280004 	lw	t0,4(t9)
    3c44:	ac880010 	sw	t0,16(a0)
    3c48:	8f290008 	lw	t1,8(t9)
    3c4c:	ac890014 	sw	t1,20(a0)
    3c50:	8faa003c 	lw	t2,60(sp)
    3c54:	8d4c0000 	lw	t4,0(t2)
    3c58:	ac8c0018 	sw	t4,24(a0)
    3c5c:	8d4b0004 	lw	t3,4(t2)
    3c60:	ac8b001c 	sw	t3,28(a0)
    3c64:	8d4c0008 	lw	t4,8(t2)
    3c68:	ac8c0020 	sw	t4,32(a0)
    3c6c:	afaf0018 	sw	t7,24(sp)
    3c70:	afae0014 	sw	t6,20(sp)
    3c74:	afad0010 	sw	t5,16(sp)
    3c78:	8fa6003c 	lw	a2,60(sp)
    3c7c:	8fa50038 	lw	a1,56(sp)
    3c80:	0c000000 	jal	0 <Math3D_PlaneVsLineSegClosestPoint>
    3c84:	8fa40034 	lw	a0,52(sp)
    3c88:	8fbf002c 	lw	ra,44(sp)
    3c8c:	8fb00028 	lw	s0,40(sp)
    3c90:	27bd0030 	addiu	sp,sp,48
    3c94:	03e00008 	jr	ra
    3c98:	00000000 	nop

00003c9c <Math3D_PointInSph>:
    3c9c:	27bdffe8 	addiu	sp,sp,-24
    3ca0:	afbf0014 	sw	ra,20(sp)
    3ca4:	0c000000 	jal	0 <Math3D_PlaneVsLineSegClosestPoint>
    3ca8:	afa40018 	sw	a0,24(sp)
    3cac:	8fae0018 	lw	t6,24(sp)
    3cb0:	8fbf0014 	lw	ra,20(sp)
    3cb4:	00001025 	move	v0,zero
    3cb8:	85cf0006 	lh	t7,6(t6)
    3cbc:	448f2000 	mtc1	t7,$f4
    3cc0:	00000000 	nop
    3cc4:	468021a0 	cvt.s.w	$f6,$f4
    3cc8:	4606003c 	c.lt.s	$f0,$f6
    3ccc:	00000000 	nop
    3cd0:	45000003 	bc1f	3ce0 <Math3D_PointInSph+0x44>
    3cd4:	00000000 	nop
    3cd8:	10000001 	b	3ce0 <Math3D_PointInSph+0x44>
    3cdc:	24020001 	li	v0,1
    3ce0:	03e00008 	jr	ra
    3ce4:	27bd0018 	addiu	sp,sp,24

00003ce8 <Math3D_PointDistToLine2D>:
    3ce8:	27bdffd8 	addiu	sp,sp,-40
    3cec:	afa70034 	sw	a3,52(sp)
    3cf0:	c7aa0034 	lwc1	$f10,52(sp)
    3cf4:	c7a8003c 	lwc1	$f8,60(sp)
    3cf8:	afa60030 	sw	a2,48(sp)
    3cfc:	c7a60030 	lwc1	$f6,48(sp)
    3d00:	c7a40038 	lwc1	$f4,56(sp)
    3d04:	460a4481 	sub.s	$f18,$f8,$f10
    3d08:	3c010000 	lui	at,0x0
    3d0c:	c42a0168 	lwc1	$f10,360(at)
    3d10:	46062081 	sub.s	$f2,$f4,$f6
    3d14:	46129182 	mul.s	$f6,$f18,$f18
    3d18:	e7ac0028 	swc1	$f12,40(sp)
    3d1c:	e7ae002c 	swc1	$f14,44(sp)
    3d20:	46021202 	mul.s	$f8,$f2,$f2
    3d24:	00001825 	move	v1,zero
    3d28:	e7a20020 	swc1	$f2,32(sp)
    3d2c:	e7b20008 	swc1	$f18,8(sp)
    3d30:	8fae0040 	lw	t6,64(sp)
    3d34:	46064400 	add.s	$f16,$f8,$f6
    3d38:	c7a60030 	lwc1	$f6,48(sp)
    3d3c:	c7a80028 	lwc1	$f8,40(sp)
    3d40:	46008005 	abs.s	$f0,$f16
    3d44:	460a003c 	c.lt.s	$f0,$f10
    3d48:	00000000 	nop
    3d4c:	45020006 	bc1fl	3d68 <Math3D_PointDistToLine2D+0x80>
    3d50:	46064281 	sub.s	$f10,$f8,$f6
    3d54:	44802000 	mtc1	zero,$f4
    3d58:	00001025 	move	v0,zero
    3d5c:	10000032 	b	3e28 <Math3D_PointDistToLine2D+0x140>
    3d60:	e5c40000 	swc1	$f4,0(t6)
    3d64:	46064281 	sub.s	$f10,$f8,$f6
    3d68:	c7a80034 	lwc1	$f8,52(sp)
    3d6c:	c7a4002c 	lwc1	$f4,44(sp)
    3d70:	3c013f80 	lui	at,0x3f80
    3d74:	e7aa0008 	swc1	$f10,8(sp)
    3d78:	46082181 	sub.s	$f6,$f4,$f8
    3d7c:	c7a80020 	lwc1	$f8,32(sp)
    3d80:	46123102 	mul.s	$f4,$f6,$f18
    3d84:	00000000 	nop
    3d88:	46085182 	mul.s	$f6,$f10,$f8
    3d8c:	44804000 	mtc1	zero,$f8
    3d90:	e7a40004 	swc1	$f4,4(sp)
    3d94:	46043280 	add.s	$f10,$f6,$f4
    3d98:	c7a40008 	lwc1	$f4,8(sp)
    3d9c:	46105003 	div.s	$f0,$f10,$f16
    3da0:	46022282 	mul.s	$f10,$f4,$f2
    3da4:	4600403e 	c.le.s	$f8,$f0
    3da8:	c7a80004 	lwc1	$f8,4(sp)
    3dac:	45000008 	bc1f	3dd0 <Math3D_PointDistToLine2D+0xe8>
    3db0:	00000000 	nop
    3db4:	44813000 	mtc1	at,$f6
    3db8:	00000000 	nop
    3dbc:	4606003e 	c.le.s	$f0,$f6
    3dc0:	00000000 	nop
    3dc4:	45020003 	bc1fl	3dd4 <Math3D_PointDistToLine2D+0xec>
    3dc8:	46085180 	add.s	$f6,$f10,$f8
    3dcc:	24030001 	li	v1,1
    3dd0:	46085180 	add.s	$f6,$f10,$f8
    3dd4:	c7aa0030 	lwc1	$f10,48(sp)
    3dd8:	3c010000 	lui	at,0x0
    3ddc:	8faf0040 	lw	t7,64(sp)
    3de0:	46103383 	div.s	$f14,$f6,$f16
    3de4:	00601025 	move	v0,v1
    3de8:	460e1102 	mul.s	$f4,$f2,$f14
    3dec:	460a2200 	add.s	$f8,$f4,$f10
    3df0:	460e9182 	mul.s	$f6,$f18,$f14
    3df4:	c7a40034 	lwc1	$f4,52(sp)
    3df8:	e4280118 	swc1	$f8,280(at)
    3dfc:	46043280 	add.s	$f10,$f6,$f4
    3e00:	c7a60028 	lwc1	$f6,40(sp)
    3e04:	c7a4002c 	lwc1	$f4,44(sp)
    3e08:	46064001 	sub.s	$f0,$f8,$f6
    3e0c:	e42a011c 	swc1	$f10,284(at)
    3e10:	46045301 	sub.s	$f12,$f10,$f4
    3e14:	46000202 	mul.s	$f8,$f0,$f0
    3e18:	00000000 	nop
    3e1c:	460c6182 	mul.s	$f6,$f12,$f12
    3e20:	46064280 	add.s	$f10,$f8,$f6
    3e24:	e5ea0000 	swc1	$f10,0(t7)
    3e28:	03e00008 	jr	ra
    3e2c:	27bd0028 	addiu	sp,sp,40

00003e30 <Math3D_LineVsSph>:
    3e30:	27bdffa8 	addiu	sp,sp,-88
    3e34:	afbf0024 	sw	ra,36(sp)
    3e38:	f7b60018 	sdc1	$f22,24(sp)
    3e3c:	f7b40010 	sdc1	$f20,16(sp)
    3e40:	afa40058 	sw	a0,88(sp)
    3e44:	0c000000 	jal	0 <Math3D_PlaneVsLineSegClosestPoint>
    3e48:	afa5005c 	sw	a1,92(sp)
    3e4c:	8fa40058 	lw	a0,88(sp)
    3e50:	14400008 	bnez	v0,3e74 <Math3D_LineVsSph+0x44>
    3e54:	8fa6005c 	lw	a2,92(sp)
    3e58:	24c5000c 	addiu	a1,a2,12
    3e5c:	afa40058 	sw	a0,88(sp)
    3e60:	0c000000 	jal	0 <Math3D_PlaneVsLineSegClosestPoint>
    3e64:	afa6005c 	sw	a2,92(sp)
    3e68:	8fa40058 	lw	a0,88(sp)
    3e6c:	10400003 	beqz	v0,3e7c <Math3D_LineVsSph+0x4c>
    3e70:	8fa6005c 	lw	a2,92(sp)
    3e74:	10000069 	b	401c <Math3D_LineVsSph+0x1ec>
    3e78:	24020001 	li	v0,1
    3e7c:	c4cc0000 	lwc1	$f12,0(a2)
    3e80:	c4c4000c 	lwc1	$f4,12(a2)
    3e84:	c4ce0004 	lwc1	$f14,4(a2)
    3e88:	c4c60010 	lwc1	$f6,16(a2)
    3e8c:	460c2481 	sub.s	$f18,$f4,$f12
    3e90:	c4d00008 	lwc1	$f16,8(a2)
    3e94:	c4c80014 	lwc1	$f8,20(a2)
    3e98:	460e3501 	sub.s	$f20,$f6,$f14
    3e9c:	46129282 	mul.s	$f10,$f18,$f18
    3ea0:	3c010000 	lui	at,0x0
    3ea4:	46104581 	sub.s	$f22,$f8,$f16
    3ea8:	4614a102 	mul.s	$f4,$f20,$f20
    3eac:	00001025 	move	v0,zero
    3eb0:	4616b202 	mul.s	$f8,$f22,$f22
    3eb4:	46045180 	add.s	$f6,$f10,$f4
    3eb8:	c42a016c 	lwc1	$f10,364(at)
    3ebc:	46083080 	add.s	$f2,$f6,$f8
    3ec0:	46001005 	abs.s	$f0,$f2
    3ec4:	460a003c 	c.lt.s	$f0,$f10
    3ec8:	00000000 	nop
    3ecc:	45020004 	bc1fl	3ee0 <Math3D_LineVsSph+0xb0>
    3ed0:	848e0000 	lh	t6,0(a0)
    3ed4:	10000052 	b	4020 <Math3D_LineVsSph+0x1f0>
    3ed8:	8fbf0024 	lw	ra,36(sp)
    3edc:	848e0000 	lh	t6,0(a0)
    3ee0:	3c013f80 	lui	at,0x3f80
    3ee4:	448e2000 	mtc1	t6,$f4
    3ee8:	00000000 	nop
    3eec:	468021a0 	cvt.s.w	$f6,$f4
    3ef0:	e7a60030 	swc1	$f6,48(sp)
    3ef4:	848f0002 	lh	t7,2(a0)
    3ef8:	448f4000 	mtc1	t7,$f8
    3efc:	00000000 	nop
    3f00:	468042a0 	cvt.s.w	$f10,$f8
    3f04:	c7a80030 	lwc1	$f8,48(sp)
    3f08:	e7aa002c 	swc1	$f10,44(sp)
    3f0c:	84980004 	lh	t8,4(a0)
    3f10:	460c4281 	sub.s	$f10,$f8,$f12
    3f14:	44982000 	mtc1	t8,$f4
    3f18:	00000000 	nop
    3f1c:	468021a0 	cvt.s.w	$f6,$f4
    3f20:	46125102 	mul.s	$f4,$f10,$f18
    3f24:	e7a60028 	swc1	$f6,40(sp)
    3f28:	c7a6002c 	lwc1	$f6,44(sp)
    3f2c:	460e3201 	sub.s	$f8,$f6,$f14
    3f30:	46144282 	mul.s	$f10,$f8,$f20
    3f34:	c7a80028 	lwc1	$f8,40(sp)
    3f38:	460a2180 	add.s	$f6,$f4,$f10
    3f3c:	46104101 	sub.s	$f4,$f8,$f16
    3f40:	46162282 	mul.s	$f10,$f4,$f22
    3f44:	44802000 	mtc1	zero,$f4
    3f48:	460a3200 	add.s	$f8,$f6,$f10
    3f4c:	46024003 	div.s	$f0,$f8,$f2
    3f50:	4604003c 	c.lt.s	$f0,$f4
    3f54:	00000000 	nop
    3f58:	45010008 	bc1t	3f7c <Math3D_LineVsSph+0x14c>
    3f5c:	00000000 	nop
    3f60:	44813000 	mtc1	at,$f6
    3f64:	e7ac0040 	swc1	$f12,64(sp)
    3f68:	e7ae003c 	swc1	$f14,60(sp)
    3f6c:	4600303c 	c.lt.s	$f6,$f0
    3f70:	e7b00038 	swc1	$f16,56(sp)
    3f74:	45000003 	bc1f	3f84 <Math3D_LineVsSph+0x154>
    3f78:	00000000 	nop
    3f7c:	10000027 	b	401c <Math3D_LineVsSph+0x1ec>
    3f80:	00001025 	move	v0,zero
    3f84:	46009282 	mul.s	$f10,$f18,$f0
    3f88:	c7a80040 	lwc1	$f8,64(sp)
    3f8c:	3c010000 	lui	at,0x0
    3f90:	4600a182 	mul.s	$f6,$f20,$f0
    3f94:	00001025 	move	v0,zero
    3f98:	46085100 	add.s	$f4,$f10,$f8
    3f9c:	c7aa003c 	lwc1	$f10,60(sp)
    3fa0:	460a3200 	add.s	$f8,$f6,$f10
    3fa4:	4600b182 	mul.s	$f6,$f22,$f0
    3fa8:	c7aa0038 	lwc1	$f10,56(sp)
    3fac:	e4240128 	swc1	$f4,296(at)
    3fb0:	e428012c 	swc1	$f8,300(at)
    3fb4:	3c010000 	lui	at,0x0
    3fb8:	460a3180 	add.s	$f6,$f6,$f10
    3fbc:	e4260130 	swc1	$f6,304(at)
    3fc0:	84990006 	lh	t9,6(a0)
    3fc4:	44995000 	mtc1	t9,$f10
    3fc8:	00000000 	nop
    3fcc:	468050a0 	cvt.s.w	$f2,$f10
    3fd0:	c7aa0030 	lwc1	$f10,48(sp)
    3fd4:	460a2301 	sub.s	$f12,$f4,$f10
    3fd8:	c7a4002c 	lwc1	$f4,44(sp)
    3fdc:	c7aa0028 	lwc1	$f10,40(sp)
    3fe0:	46044381 	sub.s	$f14,$f8,$f4
    3fe4:	46021202 	mul.s	$f8,$f2,$f2
    3fe8:	460a3401 	sub.s	$f16,$f6,$f10
    3fec:	460c6102 	mul.s	$f4,$f12,$f12
    3ff0:	00000000 	nop
    3ff4:	460e7182 	mul.s	$f6,$f14,$f14
    3ff8:	46062280 	add.s	$f10,$f4,$f6
    3ffc:	46108102 	mul.s	$f4,$f16,$f16
    4000:	46045180 	add.s	$f6,$f10,$f4
    4004:	4608303e 	c.le.s	$f6,$f8
    4008:	00000000 	nop
    400c:	45000003 	bc1f	401c <Math3D_LineVsSph+0x1ec>
    4010:	00000000 	nop
    4014:	10000001 	b	401c <Math3D_LineVsSph+0x1ec>
    4018:	24020001 	li	v0,1
    401c:	8fbf0024 	lw	ra,36(sp)
    4020:	d7b40010 	ldc1	$f20,16(sp)
    4024:	d7b60018 	ldc1	$f22,24(sp)
    4028:	03e00008 	jr	ra
    402c:	27bd0058 	addiu	sp,sp,88

00004030 <Math3D_GetSphVsTriIntersectPoint>:
    4030:	27bdffe8 	addiu	sp,sp,-24
    4034:	afbf0014 	sw	ra,20(sp)
    4038:	afa40018 	sw	a0,24(sp)
    403c:	afa60020 	sw	a2,32(sp)
    4040:	c4a60000 	lwc1	$f6,0(a1)
    4044:	c4a4000c 	lwc1	$f4,12(a1)
    4048:	3c013f00 	lui	at,0x3f00
    404c:	44810000 	mtc1	at,$f0
    4050:	46062200 	add.s	$f8,$f4,$f6
    4054:	3c010000 	lui	at,0x0
    4058:	46004282 	mul.s	$f10,$f8,$f0
    405c:	e42a0138 	swc1	$f10,312(at)
    4060:	c4b20004 	lwc1	$f18,4(a1)
    4064:	c4b00010 	lwc1	$f16,16(a1)
    4068:	46128100 	add.s	$f4,$f16,$f18
    406c:	46002182 	mul.s	$f6,$f4,$f0
    4070:	e426013c 	swc1	$f6,316(at)
    4074:	c4aa0008 	lwc1	$f10,8(a1)
    4078:	c4a80014 	lwc1	$f8,20(a1)
    407c:	3c010000 	lui	at,0x0
    4080:	3c050000 	lui	a1,0x0
    4084:	460a4400 	add.s	$f16,$f8,$f10
    4088:	24a50148 	addiu	a1,a1,328
    408c:	46008482 	mul.s	$f18,$f16,$f0
    4090:	e4320140 	swc1	$f18,320(at)
    4094:	848f0000 	lh	t7,0(a0)
    4098:	3c010000 	lui	at,0x0
    409c:	448f2000 	mtc1	t7,$f4
    40a0:	00000000 	nop
    40a4:	468021a0 	cvt.s.w	$f6,$f4
    40a8:	e4260148 	swc1	$f6,328(at)
    40ac:	84980002 	lh	t8,2(a0)
    40b0:	44984000 	mtc1	t8,$f8
    40b4:	00000000 	nop
    40b8:	468042a0 	cvt.s.w	$f10,$f8
    40bc:	e42a014c 	swc1	$f10,332(at)
    40c0:	84990004 	lh	t9,4(a0)
    40c4:	3c010000 	lui	at,0x0
    40c8:	3c040000 	lui	a0,0x0
    40cc:	44998000 	mtc1	t9,$f16
    40d0:	24840138 	addiu	a0,a0,312
    40d4:	468084a0 	cvt.s.w	$f18,$f16
    40d8:	0c000000 	jal	0 <Math3D_PlaneVsLineSegClosestPoint>
    40dc:	e4320150 	swc1	$f18,336(at)
    40e0:	3c010000 	lui	at,0x0
    40e4:	c4240170 	lwc1	$f4,368(at)
    40e8:	46000086 	mov.s	$f2,$f0
    40ec:	46000005 	abs.s	$f0,$f0
    40f0:	8fa70020 	lw	a3,32(sp)
    40f4:	4604003c 	c.lt.s	$f0,$f4
    40f8:	3c010000 	lui	at,0x0
    40fc:	8fa80018 	lw	t0,24(sp)
    4100:	4502000a 	bc1fl	412c <Math3D_GetSphVsTriIntersectPoint+0xfc>
    4104:	85090006 	lh	t1,6(t0)
    4108:	c4260148 	lwc1	$f6,328(at)
    410c:	e4e60000 	swc1	$f6,0(a3)
    4110:	c428014c 	lwc1	$f8,332(at)
    4114:	3c010000 	lui	at,0x0
    4118:	e4e80004 	swc1	$f8,4(a3)
    411c:	c42a0150 	lwc1	$f10,336(at)
    4120:	1000000c 	b	4154 <Math3D_GetSphVsTriIntersectPoint+0x124>
    4124:	e4ea0008 	swc1	$f10,8(a3)
    4128:	85090006 	lh	t1,6(t0)
    412c:	3c040000 	lui	a0,0x0
    4130:	3c050000 	lui	a1,0x0
    4134:	44898000 	mtc1	t1,$f16
    4138:	24a50138 	addiu	a1,a1,312
    413c:	24840148 	addiu	a0,a0,328
    4140:	468084a0 	cvt.s.w	$f18,$f16
    4144:	46029003 	div.s	$f0,$f18,$f2
    4148:	44060000 	mfc1	a2,$f0
    414c:	0c000000 	jal	0 <Math3D_PlaneVsLineSegClosestPoint>
    4150:	00000000 	nop
    4154:	8fbf0014 	lw	ra,20(sp)
    4158:	27bd0018 	addiu	sp,sp,24
    415c:	03e00008 	jr	ra
    4160:	00000000 	nop

00004164 <Math3D_TriVsSphIntersect>:
    4164:	27bdffb0 	addiu	sp,sp,-80
    4168:	afbf002c 	sw	ra,44(sp)
    416c:	afb10028 	sw	s1,40(sp)
    4170:	afb00024 	sw	s0,36(sp)
    4174:	afa60058 	sw	a2,88(sp)
    4178:	848e0000 	lh	t6,0(a0)
    417c:	3c010000 	lui	at,0x0
    4180:	00a08025 	move	s0,a1
    4184:	448e2000 	mtc1	t6,$f4
    4188:	00808825 	move	s1,a0
    418c:	26060018 	addiu	a2,s0,24
    4190:	468021a0 	cvt.s.w	$f6,$f4
    4194:	3c070000 	lui	a3,0x0
    4198:	24e70170 	addiu	a3,a3,368
    419c:	e4260170 	swc1	$f6,368(at)
    41a0:	848f0002 	lh	t7,2(a0)
    41a4:	448f4000 	mtc1	t7,$f8
    41a8:	00000000 	nop
    41ac:	468042a0 	cvt.s.w	$f10,$f8
    41b0:	e42a0174 	swc1	$f10,372(at)
    41b4:	84980004 	lh	t8,4(a0)
    41b8:	3c010000 	lui	at,0x0
    41bc:	44982000 	mtc1	t8,$f4
    41c0:	00000000 	nop
    41c4:	468021a0 	cvt.s.w	$f6,$f4
    41c8:	e4260178 	swc1	$f6,376(at)
    41cc:	84990006 	lh	t9,6(a0)
    41d0:	00a02025 	move	a0,a1
    41d4:	24a5000c 	addiu	a1,a1,12
    41d8:	44994000 	mtc1	t9,$f8
    41dc:	afa50038 	sw	a1,56(sp)
    41e0:	afa60034 	sw	a2,52(sp)
    41e4:	46804020 	cvt.s.w	$f0,$f8
    41e8:	e7a00010 	swc1	$f0,16(sp)
    41ec:	0c000000 	jal	0 <Math3D_PlaneVsLineSegClosestPoint>
    41f0:	e7a0004c 	swc1	$f0,76(sp)
    41f4:	14400003 	bnez	v0,4204 <Math3D_TriVsSphIntersect+0xa0>
    41f8:	3c080000 	lui	t0,0x0
    41fc:	100000db 	b	456c <Math3D_TriVsSphIntersect+0x408>
    4200:	00001025 	move	v0,zero
    4204:	c60c0024 	lwc1	$f12,36(s0)
    4208:	c60e0028 	lwc1	$f14,40(s0)
    420c:	8e06002c 	lw	a2,44(s0)
    4210:	8e070030 	lw	a3,48(s0)
    4214:	25080170 	addiu	t0,t0,368
    4218:	0c000000 	jal	0 <Math3D_PlaneVsLineSegClosestPoint>
    421c:	afa80010 	sw	t0,16(sp)
    4220:	c7aa004c 	lwc1	$f10,76(sp)
    4224:	e7a0003c 	swc1	$f0,60(sp)
    4228:	4600503c 	c.lt.s	$f10,$f0
    422c:	00000000 	nop
    4230:	45020004 	bc1fl	4244 <Math3D_TriVsSphIntersect+0xe0>
    4234:	8e0a0000 	lw	t2,0(s0)
    4238:	100000cc 	b	456c <Math3D_TriVsSphIntersect+0x408>
    423c:	00001025 	move	v0,zero
    4240:	8e0a0000 	lw	t2,0(s0)
    4244:	3c050000 	lui	a1,0x0
    4248:	24a50158 	addiu	a1,a1,344
    424c:	acaa0000 	sw	t2,0(a1)
    4250:	8e090004 	lw	t1,4(s0)
    4254:	8fac0038 	lw	t4,56(sp)
    4258:	3c0b0000 	lui	t3,0x0
    425c:	aca90004 	sw	t1,4(a1)
    4260:	8e0a0008 	lw	t2,8(s0)
    4264:	256b0164 	addiu	t3,t3,356
    4268:	02202025 	move	a0,s1
    426c:	acaa0008 	sw	t2,8(a1)
    4270:	8d8e0000 	lw	t6,0(t4)
    4274:	ad6e0000 	sw	t6,0(t3)
    4278:	8d8d0004 	lw	t5,4(t4)
    427c:	ad6d0004 	sw	t5,4(t3)
    4280:	8d8e0008 	lw	t6,8(t4)
    4284:	0c000000 	jal	0 <Math3D_PlaneVsLineSegClosestPoint>
    4288:	ad6e0008 	sw	t6,8(t3)
    428c:	3c050000 	lui	a1,0x0
    4290:	10400007 	beqz	v0,42b0 <Math3D_TriVsSphIntersect+0x14c>
    4294:	24a50158 	addiu	a1,a1,344
    4298:	02202025 	move	a0,s1
    429c:	02002825 	move	a1,s0
    42a0:	0c000000 	jal	0 <Math3D_PlaneVsLineSegClosestPoint>
    42a4:	8fa60058 	lw	a2,88(sp)
    42a8:	100000b0 	b	456c <Math3D_TriVsSphIntersect+0x408>
    42ac:	24020001 	li	v0,1
    42b0:	8faf0038 	lw	t7,56(sp)
    42b4:	8fa90034 	lw	t1,52(sp)
    42b8:	3c080000 	lui	t0,0x0
    42bc:	8df90000 	lw	t9,0(t7)
    42c0:	25080164 	addiu	t0,t0,356
    42c4:	02202025 	move	a0,s1
    42c8:	acb90000 	sw	t9,0(a1)
    42cc:	8df80004 	lw	t8,4(t7)
    42d0:	acb80004 	sw	t8,4(a1)
    42d4:	8df90008 	lw	t9,8(t7)
    42d8:	acb90008 	sw	t9,8(a1)
    42dc:	8d2b0000 	lw	t3,0(t1)
    42e0:	ad0b0000 	sw	t3,0(t0)
    42e4:	8d2a0004 	lw	t2,4(t1)
    42e8:	ad0a0004 	sw	t2,4(t0)
    42ec:	8d2b0008 	lw	t3,8(t1)
    42f0:	0c000000 	jal	0 <Math3D_PlaneVsLineSegClosestPoint>
    42f4:	ad0b0008 	sw	t3,8(t0)
    42f8:	3c050000 	lui	a1,0x0
    42fc:	10400007 	beqz	v0,431c <Math3D_TriVsSphIntersect+0x1b8>
    4300:	24a50158 	addiu	a1,a1,344
    4304:	02202025 	move	a0,s1
    4308:	02002825 	move	a1,s0
    430c:	0c000000 	jal	0 <Math3D_PlaneVsLineSegClosestPoint>
    4310:	8fa60058 	lw	a2,88(sp)
    4314:	10000095 	b	456c <Math3D_TriVsSphIntersect+0x408>
    4318:	24020001 	li	v0,1
    431c:	8fac0034 	lw	t4,52(sp)
    4320:	3c0f0000 	lui	t7,0x0
    4324:	25ef0164 	addiu	t7,t7,356
    4328:	8d8e0000 	lw	t6,0(t4)
    432c:	02202025 	move	a0,s1
    4330:	acae0000 	sw	t6,0(a1)
    4334:	8d8d0004 	lw	t5,4(t4)
    4338:	acad0004 	sw	t5,4(a1)
    433c:	8d8e0008 	lw	t6,8(t4)
    4340:	acae0008 	sw	t6,8(a1)
    4344:	8e190000 	lw	t9,0(s0)
    4348:	adf90000 	sw	t9,0(t7)
    434c:	8e180004 	lw	t8,4(s0)
    4350:	adf80004 	sw	t8,4(t7)
    4354:	8e190008 	lw	t9,8(s0)
    4358:	0c000000 	jal	0 <Math3D_PlaneVsLineSegClosestPoint>
    435c:	adf90008 	sw	t9,8(t7)
    4360:	10400007 	beqz	v0,4380 <Math3D_TriVsSphIntersect+0x21c>
    4364:	c7a4003c 	lwc1	$f4,60(sp)
    4368:	02202025 	move	a0,s1
    436c:	02002825 	move	a1,s0
    4370:	0c000000 	jal	0 <Math3D_PlaneVsLineSegClosestPoint>
    4374:	8fa60058 	lw	a2,88(sp)
    4378:	1000007c 	b	456c <Math3D_TriVsSphIntersect+0x408>
    437c:	24020001 	li	v0,1
    4380:	c60c0024 	lwc1	$f12,36(s0)
    4384:	c60e0028 	lwc1	$f14,40(s0)
    4388:	c600002c 	lwc1	$f0,44(s0)
    438c:	46046082 	mul.s	$f2,$f12,$f4
    4390:	8e070030 	lw	a3,48(s0)
    4394:	3c080000 	lui	t0,0x0
    4398:	46047402 	mul.s	$f16,$f14,$f4
    439c:	25080170 	addiu	t0,t0,368
    43a0:	44060000 	mfc1	a2,$f0
    43a4:	46040482 	mul.s	$f18,$f0,$f4
    43a8:	afa80010 	sw	t0,16(sp)
    43ac:	e7a20048 	swc1	$f2,72(sp)
    43b0:	e7b00044 	swc1	$f16,68(sp)
    43b4:	0c000000 	jal	0 <Math3D_PlaneVsLineSegClosestPoint>
    43b8:	e7b20040 	swc1	$f18,64(sp)
    43bc:	44803000 	mtc1	zero,$f6
    43c0:	c7a20048 	lwc1	$f2,72(sp)
    43c4:	c7b00044 	lwc1	$f16,68(sp)
    43c8:	4600303c 	c.lt.s	$f6,$f0
    43cc:	c7b20040 	lwc1	$f18,64(sp)
    43d0:	3c010000 	lui	at,0x0
    43d4:	02002025 	move	a0,s0
    43d8:	45000011 	bc1f	4420 <Math3D_TriVsSphIntersect+0x2bc>
    43dc:	3c070000 	lui	a3,0x0
    43e0:	3c010000 	lui	at,0x0
    43e4:	c4280170 	lwc1	$f8,368(at)
    43e8:	3c010000 	lui	at,0x0
    43ec:	46024281 	sub.s	$f10,$f8,$f2
    43f0:	e42a0180 	swc1	$f10,384(at)
    43f4:	3c010000 	lui	at,0x0
    43f8:	c4240174 	lwc1	$f4,372(at)
    43fc:	3c010000 	lui	at,0x0
    4400:	46102181 	sub.s	$f6,$f4,$f16
    4404:	e4260184 	swc1	$f6,388(at)
    4408:	3c010000 	lui	at,0x0
    440c:	c4280178 	lwc1	$f8,376(at)
    4410:	3c010000 	lui	at,0x0
    4414:	46124281 	sub.s	$f10,$f8,$f18
    4418:	1000000f 	b	4458 <Math3D_TriVsSphIntersect+0x2f4>
    441c:	e42a0188 	swc1	$f10,392(at)
    4420:	c4240170 	lwc1	$f4,368(at)
    4424:	3c010000 	lui	at,0x0
    4428:	46022180 	add.s	$f6,$f4,$f2
    442c:	e4260180 	swc1	$f6,384(at)
    4430:	3c010000 	lui	at,0x0
    4434:	c4280174 	lwc1	$f8,372(at)
    4438:	3c010000 	lui	at,0x0
    443c:	46104280 	add.s	$f10,$f8,$f16
    4440:	e42a0184 	swc1	$f10,388(at)
    4444:	3c010000 	lui	at,0x0
    4448:	c4240178 	lwc1	$f4,376(at)
    444c:	3c010000 	lui	at,0x0
    4450:	46122180 	add.s	$f6,$f4,$f18
    4454:	e4260188 	swc1	$f6,392(at)
    4458:	c60e0028 	lwc1	$f14,40(s0)
    445c:	3c013f00 	lui	at,0x3f00
    4460:	44811000 	mtc1	at,$f2
    4464:	46007005 	abs.s	$f0,$f14
    4468:	3c010000 	lui	at,0x0
    446c:	4600103c 	c.lt.s	$f2,$f0
    4470:	8fa50038 	lw	a1,56(sp)
    4474:	8fa60034 	lw	a2,52(sp)
    4478:	45020010 	bc1fl	44bc <Math3D_TriVsSphIntersect+0x358>
    447c:	c60c0024 	lwc1	$f12,36(s0)
    4480:	c4280180 	lwc1	$f8,384(at)
    4484:	44805000 	mtc1	zero,$f10
    4488:	8ce70188 	lw	a3,392(a3)
    448c:	e7ae0018 	swc1	$f14,24(sp)
    4490:	e7a80010 	swc1	$f8,16(sp)
    4494:	0c000000 	jal	0 <Math3D_PlaneVsLineSegClosestPoint>
    4498:	e7aa0014 	swc1	$f10,20(sp)
    449c:	10400032 	beqz	v0,4568 <Math3D_TriVsSphIntersect+0x404>
    44a0:	02202025 	move	a0,s1
    44a4:	02002825 	move	a1,s0
    44a8:	0c000000 	jal	0 <Math3D_PlaneVsLineSegClosestPoint>
    44ac:	8fa60058 	lw	a2,88(sp)
    44b0:	1000002e 	b	456c <Math3D_TriVsSphIntersect+0x408>
    44b4:	24020001 	li	v0,1
    44b8:	c60c0024 	lwc1	$f12,36(s0)
    44bc:	3c070000 	lui	a3,0x0
    44c0:	02002025 	move	a0,s0
    44c4:	46006005 	abs.s	$f0,$f12
    44c8:	8fa50038 	lw	a1,56(sp)
    44cc:	4600103c 	c.lt.s	$f2,$f0
    44d0:	8fa60034 	lw	a2,52(sp)
    44d4:	3c010000 	lui	at,0x0
    44d8:	45000013 	bc1f	4528 <Math3D_TriVsSphIntersect+0x3c4>
    44dc:	00000000 	nop
    44e0:	3c010000 	lui	at,0x0
    44e4:	c4240188 	lwc1	$f4,392(at)
    44e8:	44803000 	mtc1	zero,$f6
    44ec:	02002025 	move	a0,s0
    44f0:	8fa50038 	lw	a1,56(sp)
    44f4:	8fa60034 	lw	a2,52(sp)
    44f8:	8ce70184 	lw	a3,388(a3)
    44fc:	e7ac0018 	swc1	$f12,24(sp)
    4500:	e7a40010 	swc1	$f4,16(sp)
    4504:	0c000000 	jal	0 <Math3D_PlaneVsLineSegClosestPoint>
    4508:	e7a60014 	swc1	$f6,20(sp)
    450c:	10400016 	beqz	v0,4568 <Math3D_TriVsSphIntersect+0x404>
    4510:	02202025 	move	a0,s1
    4514:	02002825 	move	a1,s0
    4518:	0c000000 	jal	0 <Math3D_PlaneVsLineSegClosestPoint>
    451c:	8fa60058 	lw	a2,88(sp)
    4520:	10000012 	b	456c <Math3D_TriVsSphIntersect+0x408>
    4524:	24020001 	li	v0,1
    4528:	c4280184 	lwc1	$f8,388(at)
    452c:	44805000 	mtc1	zero,$f10
    4530:	3c070000 	lui	a3,0x0
    4534:	e7a80010 	swc1	$f8,16(sp)
    4538:	e7aa0014 	swc1	$f10,20(sp)
    453c:	c604002c 	lwc1	$f4,44(s0)
    4540:	8ce70180 	lw	a3,384(a3)
    4544:	0c000000 	jal	0 <Math3D_PlaneVsLineSegClosestPoint>
    4548:	e7a40018 	swc1	$f4,24(sp)
    454c:	10400006 	beqz	v0,4568 <Math3D_TriVsSphIntersect+0x404>
    4550:	02202025 	move	a0,s1
    4554:	02002825 	move	a1,s0
    4558:	0c000000 	jal	0 <Math3D_PlaneVsLineSegClosestPoint>
    455c:	8fa60058 	lw	a2,88(sp)
    4560:	10000002 	b	456c <Math3D_TriVsSphIntersect+0x408>
    4564:	24020001 	li	v0,1
    4568:	00001025 	move	v0,zero
    456c:	8fbf002c 	lw	ra,44(sp)
    4570:	8fb00024 	lw	s0,36(sp)
    4574:	8fb10028 	lw	s1,40(sp)
    4578:	03e00008 	jr	ra
    457c:	27bd0050 	addiu	sp,sp,80

00004580 <Math3D_PointInCyl>:
    4580:	848e0006 	lh	t6,6(a0)
    4584:	848f000a 	lh	t7,10(a0)
    4588:	c4a80000 	lwc1	$f8,0(a1)
    458c:	448e2000 	mtc1	t6,$f4
    4590:	448f5000 	mtc1	t7,$f10
    4594:	84820000 	lh	v0,0(a0)
    4598:	468021a0 	cvt.s.w	$f6,$f4
    459c:	84980008 	lh	t8,8(a0)
    45a0:	84990004 	lh	t9,4(a0)
    45a4:	00420019 	multu	v0,v0
    45a8:	44982000 	mtc1	t8,$f4
    45ac:	46805420 	cvt.s.w	$f16,$f10
    45b0:	c4b20008 	lwc1	$f18,8(a1)
    45b4:	84880002 	lh	t0,2(a0)
    45b8:	00001025 	move	v0,zero
    45bc:	46083001 	sub.s	$f0,$f6,$f8
    45c0:	44994000 	mtc1	t9,$f8
    45c4:	468021a0 	cvt.s.w	$f6,$f4
    45c8:	46000102 	mul.s	$f4,$f0,$f0
    45cc:	00004812 	mflo	t1
    45d0:	46128081 	sub.s	$f2,$f16,$f18
    45d4:	44888000 	mtc1	t0,$f16
    45d8:	468042a0 	cvt.s.w	$f10,$f8
    45dc:	46021202 	mul.s	$f8,$f2,$f2
    45e0:	460a3300 	add.s	$f12,$f6,$f10
    45e4:	44895000 	mtc1	t1,$f10
    45e8:	468084a0 	cvt.s.w	$f18,$f16
    45ec:	46805420 	cvt.s.w	$f16,$f10
    45f0:	46082180 	add.s	$f6,$f4,$f8
    45f4:	460c9380 	add.s	$f14,$f18,$f12
    45f8:	4610303c 	c.lt.s	$f6,$f16
    45fc:	00000000 	nop
    4600:	4500000c 	bc1f	4634 <Math3D_PointInCyl+0xb4>
    4604:	00000000 	nop
    4608:	c4a00004 	lwc1	$f0,4(a1)
    460c:	4600603c 	c.lt.s	$f12,$f0
    4610:	00000000 	nop
    4614:	45000007 	bc1f	4634 <Math3D_PointInCyl+0xb4>
    4618:	00000000 	nop
    461c:	460e003c 	c.lt.s	$f0,$f14
    4620:	00000000 	nop
    4624:	45000003 	bc1f	4634 <Math3D_PointInCyl+0xb4>
    4628:	00000000 	nop
    462c:	03e00008 	jr	ra
    4630:	24020001 	li	v0,1
    4634:	03e00008 	jr	ra
    4638:	00000000 	nop

0000463c <Math3D_CylVsLineSeg>:
    463c:	27bdff08 	addiu	sp,sp,-248
    4640:	afbf001c 	sw	ra,28(sp)
    4644:	afb00018 	sw	s0,24(sp)
    4648:	00808025 	move	s0,a0
    464c:	afa500fc 	sw	a1,252(sp)
    4650:	afa60100 	sw	a2,256(sp)
    4654:	afa70104 	sw	a3,260(sp)
    4658:	0c000000 	jal	0 <Math3D_PlaneVsLineSegClosestPoint>
    465c:	afa0009c 	sw	zero,156(sp)
    4660:	8fa70100 	lw	a3,256(sp)
    4664:	10400019 	beqz	v0,46cc <Math3D_CylVsLineSeg+0x90>
    4668:	8fa8009c 	lw	t0,156(sp)
    466c:	02002025 	move	a0,s0
    4670:	00e02825 	move	a1,a3
    4674:	0c000000 	jal	0 <Math3D_PlaneVsLineSegClosestPoint>
    4678:	afa8009c 	sw	t0,156(sp)
    467c:	8fa70100 	lw	a3,256(sp)
    4680:	10400012 	beqz	v0,46cc <Math3D_CylVsLineSeg+0x90>
    4684:	8fa8009c 	lw	t0,156(sp)
    4688:	8fb900fc 	lw	t9,252(sp)
    468c:	8faf0104 	lw	t7,260(sp)
    4690:	24020002 	li	v0,2
    4694:	8f290000 	lw	t1,0(t9)
    4698:	ade90000 	sw	t1,0(t7)
    469c:	8f380004 	lw	t8,4(t9)
    46a0:	adf80004 	sw	t8,4(t7)
    46a4:	8f290008 	lw	t1,8(t9)
    46a8:	ade90008 	sw	t1,8(t7)
    46ac:	8cec0000 	lw	t4,0(a3)
    46b0:	8faa0108 	lw	t2,264(sp)
    46b4:	ad4c0000 	sw	t4,0(t2)
    46b8:	8ceb0004 	lw	t3,4(a3)
    46bc:	ad4b0004 	sw	t3,4(t2)
    46c0:	8cec0008 	lw	t4,8(a3)
    46c4:	10000249 	b	4fec <Math3D_CylVsLineSeg+0x9b0>
    46c8:	ad4c0008 	sw	t4,8(t2)
    46cc:	860d0006 	lh	t5,6(s0)
    46d0:	8fa200fc 	lw	v0,252(sp)
    46d4:	27a400e0 	addiu	a0,sp,224
    46d8:	448d3000 	mtc1	t5,$f6
    46dc:	c44a0000 	lwc1	$f10,0(v0)
    46e0:	27a500ec 	addiu	a1,sp,236
    46e4:	46803220 	cvt.s.w	$f8,$f6
    46e8:	27a600d4 	addiu	a2,sp,212
    46ec:	46085101 	sub.s	$f4,$f10,$f8
    46f0:	e7a400ec 	swc1	$f4,236(sp)
    46f4:	860e0008 	lh	t6,8(s0)
    46f8:	860f0004 	lh	t7,4(s0)
    46fc:	c4460004 	lwc1	$f6,4(v0)
    4700:	448e5000 	mtc1	t6,$f10
    4704:	00000000 	nop
    4708:	46805220 	cvt.s.w	$f8,$f10
    470c:	448f5000 	mtc1	t7,$f10
    4710:	46083101 	sub.s	$f4,$f6,$f8
    4714:	468051a0 	cvt.s.w	$f6,$f10
    4718:	46062201 	sub.s	$f8,$f4,$f6
    471c:	e7a800f0 	swc1	$f8,240(sp)
    4720:	8619000a 	lh	t9,10(s0)
    4724:	c44a0008 	lwc1	$f10,8(v0)
    4728:	44992000 	mtc1	t9,$f4
    472c:	00000000 	nop
    4730:	468021a0 	cvt.s.w	$f6,$f4
    4734:	46065201 	sub.s	$f8,$f10,$f6
    4738:	e7a800f4 	swc1	$f8,244(sp)
    473c:	86180006 	lh	t8,6(s0)
    4740:	c4e40000 	lwc1	$f4,0(a3)
    4744:	44985000 	mtc1	t8,$f10
    4748:	00000000 	nop
    474c:	468051a0 	cvt.s.w	$f6,$f10
    4750:	46062201 	sub.s	$f8,$f4,$f6
    4754:	e7a800e0 	swc1	$f8,224(sp)
    4758:	86090008 	lh	t1,8(s0)
    475c:	860a0004 	lh	t2,4(s0)
    4760:	c4ea0004 	lwc1	$f10,4(a3)
    4764:	44892000 	mtc1	t1,$f4
    4768:	00000000 	nop
    476c:	468021a0 	cvt.s.w	$f6,$f4
    4770:	448a2000 	mtc1	t2,$f4
    4774:	46065201 	sub.s	$f8,$f10,$f6
    4778:	468022a0 	cvt.s.w	$f10,$f4
    477c:	460a4181 	sub.s	$f6,$f8,$f10
    4780:	e7a600e4 	swc1	$f6,228(sp)
    4784:	860b000a 	lh	t3,10(s0)
    4788:	c4e40008 	lwc1	$f4,8(a3)
    478c:	afa8009c 	sw	t0,156(sp)
    4790:	448b4000 	mtc1	t3,$f8
    4794:	00000000 	nop
    4798:	468042a0 	cvt.s.w	$f10,$f8
    479c:	460a2181 	sub.s	$f6,$f4,$f10
    47a0:	0c000000 	jal	0 <Math3D_PlaneVsLineSegClosestPoint>
    47a4:	e7a600e8 	swc1	$f6,232(sp)
    47a8:	86020000 	lh	v0,0(s0)
    47ac:	c7a400d8 	lwc1	$f4,216(sp)
    47b0:	3c010000 	lui	at,0x0
    47b4:	00420019 	multu	v0,v0
    47b8:	c42a0000 	lwc1	$f10,0(at)
    47bc:	46002005 	abs.s	$f0,$f4
    47c0:	8fa8009c 	lw	t0,156(sp)
    47c4:	460a003c 	c.lt.s	$f0,$f10
    47c8:	c7a600f0 	lwc1	$f6,240(sp)
    47cc:	00006012 	mflo	t4
    47d0:	448c4000 	mtc1	t4,$f8
    47d4:	4501006d 	bc1t	498c <Math3D_CylVsLineSeg+0x350>
    47d8:	468043a0 	cvt.s.w	$f14,$f8
    47dc:	46003207 	neg.s	$f8,$f6
    47e0:	44805000 	mtc1	zero,$f10
    47e4:	46044003 	div.s	$f0,$f8,$f4
    47e8:	3c013f80 	lui	at,0x3f80
    47ec:	4600503e 	c.le.s	$f10,$f0
    47f0:	00000000 	nop
    47f4:	4502002b 	bc1fl	48a4 <Math3D_CylVsLineSeg+0x268>
    47f8:	86180002 	lh	t8,2(s0)
    47fc:	44813000 	mtc1	at,$f6
    4800:	c7a800d4 	lwc1	$f8,212(sp)
    4804:	4606003e 	c.le.s	$f0,$f6
    4808:	c7a600dc 	lwc1	$f6,220(sp)
    480c:	45020025 	bc1fl	48a4 <Math3D_CylVsLineSeg+0x268>
    4810:	86180002 	lh	t8,2(s0)
    4814:	46004102 	mul.s	$f4,$f8,$f0
    4818:	c7aa00ec 	lwc1	$f10,236(sp)
    481c:	46003202 	mul.s	$f8,$f6,$f0
    4820:	460a2080 	add.s	$f2,$f4,$f10
    4824:	c7a400f4 	lwc1	$f4,244(sp)
    4828:	46044300 	add.s	$f12,$f8,$f4
    482c:	46021282 	mul.s	$f10,$f2,$f2
    4830:	00000000 	nop
    4834:	460c6182 	mul.s	$f6,$f12,$f12
    4838:	46065200 	add.s	$f8,$f10,$f6
    483c:	460e403c 	c.lt.s	$f8,$f14
    4840:	00000000 	nop
    4844:	45000016 	bc1f	48a0 <Math3D_CylVsLineSeg+0x264>
    4848:	00000000 	nop
    484c:	860d0006 	lh	t5,6(s0)
    4850:	24080001 	li	t0,1
    4854:	448d2000 	mtc1	t5,$f4
    4858:	00000000 	nop
    485c:	468022a0 	cvt.s.w	$f10,$f4
    4860:	46025180 	add.s	$f6,$f10,$f2
    4864:	e7a6006c 	swc1	$f6,108(sp)
    4868:	860f0004 	lh	t7,4(s0)
    486c:	860e0008 	lh	t6,8(s0)
    4870:	448f5000 	mtc1	t7,$f10
    4874:	448e4000 	mtc1	t6,$f8
    4878:	468051a0 	cvt.s.w	$f6,$f10
    487c:	46804120 	cvt.s.w	$f4,$f8
    4880:	46062200 	add.s	$f8,$f4,$f6
    4884:	e7a80070 	swc1	$f8,112(sp)
    4888:	8619000a 	lh	t9,10(s0)
    488c:	44995000 	mtc1	t9,$f10
    4890:	00000000 	nop
    4894:	46805120 	cvt.s.w	$f4,$f10
    4898:	460c2180 	add.s	$f6,$f4,$f12
    489c:	e7a60074 	swc1	$f6,116(sp)
    48a0:	86180002 	lh	t8,2(s0)
    48a4:	c7a400f0 	lwc1	$f4,240(sp)
    48a8:	3c013f80 	lui	at,0x3f80
    48ac:	44984000 	mtc1	t8,$f8
    48b0:	00000000 	nop
    48b4:	468042a0 	cvt.s.w	$f10,$f8
    48b8:	c7a800d8 	lwc1	$f8,216(sp)
    48bc:	46045181 	sub.s	$f6,$f10,$f4
    48c0:	44802000 	mtc1	zero,$f4
    48c4:	46083283 	div.s	$f10,$f6,$f8
    48c8:	460a203e 	c.le.s	$f4,$f10
    48cc:	e7aa00d0 	swc1	$f10,208(sp)
    48d0:	4502002f 	bc1fl	4990 <Math3D_CylVsLineSeg+0x354>
    48d4:	c7aa00ec 	lwc1	$f10,236(sp)
    48d8:	44813000 	mtc1	at,$f6
    48dc:	c7a800d4 	lwc1	$f8,212(sp)
    48e0:	4606503e 	c.le.s	$f10,$f6
    48e4:	00000000 	nop
    48e8:	45020029 	bc1fl	4990 <Math3D_CylVsLineSeg+0x354>
    48ec:	c7aa00ec 	lwc1	$f10,236(sp)
    48f0:	460a4102 	mul.s	$f4,$f8,$f10
    48f4:	c7a600ec 	lwc1	$f6,236(sp)
    48f8:	c7a800dc 	lwc1	$f8,220(sp)
    48fc:	46062000 	add.s	$f0,$f4,$f6
    4900:	460a4102 	mul.s	$f4,$f8,$f10
    4904:	c7a600f4 	lwc1	$f6,244(sp)
    4908:	46000202 	mul.s	$f8,$f0,$f0
    490c:	46062080 	add.s	$f2,$f4,$f6
    4910:	46021282 	mul.s	$f10,$f2,$f2
    4914:	460a4100 	add.s	$f4,$f8,$f10
    4918:	460e203c 	c.lt.s	$f4,$f14
    491c:	00000000 	nop
    4920:	4502001b 	bc1fl	4990 <Math3D_CylVsLineSeg+0x354>
    4924:	c7aa00ec 	lwc1	$f10,236(sp)
    4928:	86090006 	lh	t1,6(s0)
    492c:	35080002 	ori	t0,t0,0x2
    4930:	44893000 	mtc1	t1,$f6
    4934:	00000000 	nop
    4938:	46803220 	cvt.s.w	$f8,$f6
    493c:	46004280 	add.s	$f10,$f8,$f0
    4940:	e7aa0078 	swc1	$f10,120(sp)
    4944:	860b0004 	lh	t3,4(s0)
    4948:	860a0008 	lh	t2,8(s0)
    494c:	860c0002 	lh	t4,2(s0)
    4950:	448b4000 	mtc1	t3,$f8
    4954:	448a2000 	mtc1	t2,$f4
    4958:	468042a0 	cvt.s.w	$f10,$f8
    495c:	448c4000 	mtc1	t4,$f8
    4960:	468021a0 	cvt.s.w	$f6,$f4
    4964:	460a3100 	add.s	$f4,$f6,$f10
    4968:	468041a0 	cvt.s.w	$f6,$f8
    496c:	46062280 	add.s	$f10,$f4,$f6
    4970:	e7aa007c 	swc1	$f10,124(sp)
    4974:	860d000a 	lh	t5,10(s0)
    4978:	448d4000 	mtc1	t5,$f8
    497c:	00000000 	nop
    4980:	46804120 	cvt.s.w	$f4,$f8
    4984:	46022180 	add.s	$f6,$f4,$f2
    4988:	e7a60080 	swc1	$f6,128(sp)
    498c:	c7aa00ec 	lwc1	$f10,236(sp)
    4990:	c7a400f4 	lwc1	$f4,244(sp)
    4994:	3c010000 	lui	at,0x0
    4998:	460a5202 	mul.s	$f8,$f10,$f10
    499c:	e7aa0020 	swc1	$f10,32(sp)
    49a0:	c7aa00dc 	lwc1	$f10,220(sp)
    49a4:	46042182 	mul.s	$f6,$f4,$f4
    49a8:	e7a40024 	swc1	$f4,36(sp)
    49ac:	46064200 	add.s	$f8,$f8,$f6
    49b0:	c7a600d4 	lwc1	$f6,212(sp)
    49b4:	460e4401 	sub.s	$f16,$f8,$f14
    49b8:	46063202 	mul.s	$f8,$f6,$f6
    49bc:	00000000 	nop
    49c0:	460a5102 	mul.s	$f4,$f10,$f10
    49c4:	e7b000b8 	swc1	$f16,184(sp)
    49c8:	46044300 	add.s	$f12,$f8,$f4
    49cc:	c4280000 	lwc1	$f8,0(at)
    49d0:	c7a400d4 	lwc1	$f4,212(sp)
    49d4:	460c6480 	add.s	$f18,$f12,$f12
    49d8:	46009005 	abs.s	$f0,$f18
    49dc:	4608003c 	c.lt.s	$f0,$f8
    49e0:	00000000 	nop
    49e4:	4501002c 	bc1t	4a98 <Math3D_CylVsLineSeg+0x45c>
    49e8:	00000000 	nop
    49ec:	c7a40020 	lwc1	$f4,32(sp)
    49f0:	3c014080 	lui	at,0x4080
    49f4:	46043202 	mul.s	$f8,$f6,$f4
    49f8:	c7a60024 	lwc1	$f6,36(sp)
    49fc:	46065102 	mul.s	$f4,$f10,$f6
    4a00:	44815000 	mtc1	at,$f10
    4a04:	46044080 	add.s	$f2,$f8,$f4
    4a08:	c7a800b8 	lwc1	$f8,184(sp)
    4a0c:	46021380 	add.s	$f14,$f2,$f2
    4a10:	460e7002 	mul.s	$f0,$f14,$f14
    4a14:	00000000 	nop
    4a18:	460c5182 	mul.s	$f6,$f10,$f12
    4a1c:	00000000 	nop
    4a20:	46083402 	mul.s	$f16,$f6,$f8
    4a24:	4610003c 	c.lt.s	$f0,$f16
    4a28:	00000000 	nop
    4a2c:	45000003 	bc1f	4a3c <Math3D_CylVsLineSeg+0x400>
    4a30:	00000000 	nop
    4a34:	1000016d 	b	4fec <Math3D_CylVsLineSeg+0x9b0>
    4a38:	00001025 	move	v0,zero
    4a3c:	46100081 	sub.s	$f2,$f0,$f16
    4a40:	44802000 	mtc1	zero,$f4
    4a44:	24060001 	li	a2,1
    4a48:	00002825 	move	a1,zero
    4a4c:	4602203c 	c.lt.s	$f4,$f2
    4a50:	46001004 	sqrt.s	$f0,$f2
    4a54:	45000004 	bc1f	4a68 <Math3D_CylVsLineSeg+0x42c>
    4a58:	00000000 	nop
    4a5c:	24050001 	li	a1,1
    4a60:	10000001 	b	4a68 <Math3D_CylVsLineSeg+0x42c>
    4a64:	24060001 	li	a2,1
    4a68:	460e0281 	sub.s	$f10,$f0,$f14
    4a6c:	24070001 	li	a3,1
    4a70:	46125083 	div.s	$f2,$f10,$f18
    4a74:	e7a200d0 	swc1	$f2,208(sp)
    4a78:	14a70005 	bne	a1,a3,4a90 <Math3D_CylVsLineSeg+0x454>
    4a7c:	c7a200d0 	lwc1	$f2,208(sp)
    4a80:	46007187 	neg.s	$f6,$f14
    4a84:	46003201 	sub.s	$f8,$f6,$f0
    4a88:	46124303 	div.s	$f12,$f8,$f18
    4a8c:	e7ac00cc 	swc1	$f12,204(sp)
    4a90:	10000019 	b	4af8 <Math3D_CylVsLineSeg+0x4bc>
    4a94:	c7ac00cc 	lwc1	$f12,204(sp)
    4a98:	c7aa00ec 	lwc1	$f10,236(sp)
    4a9c:	c7a800dc 	lwc1	$f8,220(sp)
    4aa0:	3c010000 	lui	at,0x0
    4aa4:	460a2182 	mul.s	$f6,$f4,$f10
    4aa8:	c7a400f4 	lwc1	$f4,244(sp)
    4aac:	46044282 	mul.s	$f10,$f8,$f4
    4ab0:	c4280000 	lwc1	$f8,0(at)
    4ab4:	460a3080 	add.s	$f2,$f6,$f10
    4ab8:	46021380 	add.s	$f14,$f2,$f2
    4abc:	46007005 	abs.s	$f0,$f14
    4ac0:	4608003c 	c.lt.s	$f0,$f8
    4ac4:	00000000 	nop
    4ac8:	45010009 	bc1t	4af0 <Math3D_CylVsLineSeg+0x4b4>
    4acc:	00000000 	nop
    4ad0:	46008107 	neg.s	$f4,$f16
    4ad4:	24060001 	li	a2,1
    4ad8:	460e2083 	div.s	$f2,$f4,$f14
    4adc:	00002825 	move	a1,zero
    4ae0:	c7ac00cc 	lwc1	$f12,204(sp)
    4ae4:	24070001 	li	a3,1
    4ae8:	10000003 	b	4af8 <Math3D_CylVsLineSeg+0x4bc>
    4aec:	e7a200d0 	swc1	$f2,208(sp)
    4af0:	1000013e 	b	4fec <Math3D_CylVsLineSeg+0x9b0>
    4af4:	00001025 	move	v0,zero
    4af8:	54a00010 	bnezl	a1,4b3c <Math3D_CylVsLineSeg+0x500>
    4afc:	44802000 	mtc1	zero,$f4
    4b00:	44805000 	mtc1	zero,$f10
    4b04:	3c013f80 	lui	at,0x3f80
    4b08:	460a103c 	c.lt.s	$f2,$f10
    4b0c:	00000000 	nop
    4b10:	45010007 	bc1t	4b30 <Math3D_CylVsLineSeg+0x4f4>
    4b14:	00000000 	nop
    4b18:	44814000 	mtc1	at,$f8
    4b1c:	00000000 	nop
    4b20:	4602403c 	c.lt.s	$f8,$f2
    4b24:	00000000 	nop
    4b28:	45000030 	bc1f	4bec <Math3D_CylVsLineSeg+0x5b0>
    4b2c:	00000000 	nop
    4b30:	1000012e 	b	4fec <Math3D_CylVsLineSeg+0x9b0>
    4b34:	00001025 	move	v0,zero
    4b38:	44802000 	mtc1	zero,$f4
    4b3c:	44805000 	mtc1	zero,$f10
    4b40:	00001025 	move	v0,zero
    4b44:	4604103c 	c.lt.s	$f2,$f4
    4b48:	3c013f80 	lui	at,0x3f80
    4b4c:	45000002 	bc1f	4b58 <Math3D_CylVsLineSeg+0x51c>
    4b50:	00000000 	nop
    4b54:	24020001 	li	v0,1
    4b58:	14400008 	bnez	v0,4b7c <Math3D_CylVsLineSeg+0x540>
    4b5c:	00401825 	move	v1,v0
    4b60:	44813000 	mtc1	at,$f6
    4b64:	00001825 	move	v1,zero
    4b68:	4602303c 	c.lt.s	$f6,$f2
    4b6c:	00000000 	nop
    4b70:	45020003 	bc1fl	4b80 <Math3D_CylVsLineSeg+0x544>
    4b74:	460a603c 	c.lt.s	$f12,$f10
    4b78:	24030001 	li	v1,1
    4b7c:	460a603c 	c.lt.s	$f12,$f10
    4b80:	00602025 	move	a0,v1
    4b84:	00001025 	move	v0,zero
    4b88:	3c013f80 	lui	at,0x3f80
    4b8c:	45000002 	bc1f	4b98 <Math3D_CylVsLineSeg+0x55c>
    4b90:	00000000 	nop
    4b94:	24020001 	li	v0,1
    4b98:	14400008 	bnez	v0,4bbc <Math3D_CylVsLineSeg+0x580>
    4b9c:	00401825 	move	v1,v0
    4ba0:	44814000 	mtc1	at,$f8
    4ba4:	00001825 	move	v1,zero
    4ba8:	460c403c 	c.lt.s	$f8,$f12
    4bac:	00000000 	nop
    4bb0:	45000002 	bc1f	4bbc <Math3D_CylVsLineSeg+0x580>
    4bb4:	00000000 	nop
    4bb8:	24030001 	li	v1,1
    4bbc:	10800005 	beqz	a0,4bd4 <Math3D_CylVsLineSeg+0x598>
    4bc0:	00000000 	nop
    4bc4:	10600003 	beqz	v1,4bd4 <Math3D_CylVsLineSeg+0x598>
    4bc8:	00000000 	nop
    4bcc:	10000107 	b	4fec <Math3D_CylVsLineSeg+0x9b0>
    4bd0:	00001025 	move	v0,zero
    4bd4:	10800002 	beqz	a0,4be0 <Math3D_CylVsLineSeg+0x5a4>
    4bd8:	00000000 	nop
    4bdc:	00003025 	move	a2,zero
    4be0:	10600002 	beqz	v1,4bec <Math3D_CylVsLineSeg+0x5b0>
    4be4:	00000000 	nop
    4be8:	00002825 	move	a1,zero
    4bec:	14c70012 	bne	a2,a3,4c38 <Math3D_CylVsLineSeg+0x5fc>
    4bf0:	c7a400d8 	lwc1	$f4,216(sp)
    4bf4:	46041182 	mul.s	$f6,$f2,$f4
    4bf8:	c7aa00f0 	lwc1	$f10,240(sp)
    4bfc:	44804000 	mtc1	zero,$f8
    4c00:	460a3000 	add.s	$f0,$f6,$f10
    4c04:	4608003c 	c.lt.s	$f0,$f8
    4c08:	00000000 	nop
    4c0c:	4503000a 	bc1tl	4c38 <Math3D_CylVsLineSeg+0x5fc>
    4c10:	00003025 	move	a2,zero
    4c14:	860e0002 	lh	t6,2(s0)
    4c18:	448e2000 	mtc1	t6,$f4
    4c1c:	00000000 	nop
    4c20:	468021a0 	cvt.s.w	$f6,$f4
    4c24:	4600303c 	c.lt.s	$f6,$f0
    4c28:	00000000 	nop
    4c2c:	45000002 	bc1f	4c38 <Math3D_CylVsLineSeg+0x5fc>
    4c30:	00000000 	nop
    4c34:	00003025 	move	a2,zero
    4c38:	14a70012 	bne	a1,a3,4c84 <Math3D_CylVsLineSeg+0x648>
    4c3c:	c7aa00d8 	lwc1	$f10,216(sp)
    4c40:	460a6202 	mul.s	$f8,$f12,$f10
    4c44:	c7a400f0 	lwc1	$f4,240(sp)
    4c48:	44803000 	mtc1	zero,$f6
    4c4c:	46044000 	add.s	$f0,$f8,$f4
    4c50:	4606003c 	c.lt.s	$f0,$f6
    4c54:	00000000 	nop
    4c58:	4503000a 	bc1tl	4c84 <Math3D_CylVsLineSeg+0x648>
    4c5c:	00002825 	move	a1,zero
    4c60:	860f0002 	lh	t7,2(s0)
    4c64:	448f5000 	mtc1	t7,$f10
    4c68:	00000000 	nop
    4c6c:	46805220 	cvt.s.w	$f8,$f10
    4c70:	4600403c 	c.lt.s	$f8,$f0
    4c74:	00000000 	nop
    4c78:	45000002 	bc1f	4c84 <Math3D_CylVsLineSeg+0x648>
    4c7c:	00000000 	nop
    4c80:	00002825 	move	a1,zero
    4c84:	14c00005 	bnez	a2,4c9c <Math3D_CylVsLineSeg+0x660>
    4c88:	00001825 	move	v1,zero
    4c8c:	14a00003 	bnez	a1,4c9c <Math3D_CylVsLineSeg+0x660>
    4c90:	00000000 	nop
    4c94:	100000d5 	b	4fec <Math3D_CylVsLineSeg+0x9b0>
    4c98:	00001025 	move	v0,zero
    4c9c:	14c7004b 	bne	a2,a3,4dcc <Math3D_CylVsLineSeg+0x790>
    4ca0:	00001025 	move	v0,zero
    4ca4:	14a70049 	bne	a1,a3,4dcc <Math3D_CylVsLineSeg+0x790>
    4ca8:	c7a400d4 	lwc1	$f4,212(sp)
    4cac:	46041182 	mul.s	$f6,$f2,$f4
    4cb0:	c7aa00ec 	lwc1	$f10,236(sp)
    4cb4:	86190006 	lh	t9,6(s0)
    4cb8:	e7a40024 	swc1	$f4,36(sp)
    4cbc:	c7a400f0 	lwc1	$f4,240(sp)
    4cc0:	35080004 	ori	t0,t0,0x4
    4cc4:	35080008 	ori	t0,t0,0x8
    4cc8:	460a3200 	add.s	$f8,$f6,$f10
    4ccc:	44993000 	mtc1	t9,$f6
    4cd0:	00000000 	nop
    4cd4:	468031a0 	cvt.s.w	$f6,$f6
    4cd8:	46064200 	add.s	$f8,$f8,$f6
    4cdc:	c7a600d8 	lwc1	$f6,216(sp)
    4ce0:	e7a80084 	swc1	$f8,132(sp)
    4ce4:	86180008 	lh	t8,8(s0)
    4ce8:	46061202 	mul.s	$f8,$f2,$f6
    4cec:	e7aa0020 	swc1	$f10,32(sp)
    4cf0:	44985000 	mtc1	t8,$f10
    4cf4:	86090004 	lh	t1,4(s0)
    4cf8:	e7a60028 	swc1	$f6,40(sp)
    4cfc:	c7a600f4 	lwc1	$f6,244(sp)
    4d00:	468052a0 	cvt.s.w	$f10,$f10
    4d04:	46044200 	add.s	$f8,$f8,$f4
    4d08:	460a4200 	add.s	$f8,$f8,$f10
    4d0c:	44895000 	mtc1	t1,$f10
    4d10:	00000000 	nop
    4d14:	468052a0 	cvt.s.w	$f10,$f10
    4d18:	460a4200 	add.s	$f8,$f8,$f10
    4d1c:	c7aa00dc 	lwc1	$f10,220(sp)
    4d20:	e7a80088 	swc1	$f8,136(sp)
    4d24:	860a000a 	lh	t2,10(s0)
    4d28:	460a1202 	mul.s	$f8,$f2,$f10
    4d2c:	e7a4002c 	swc1	$f4,44(sp)
    4d30:	448a2000 	mtc1	t2,$f4
    4d34:	00000000 	nop
    4d38:	46802120 	cvt.s.w	$f4,$f4
    4d3c:	46064200 	add.s	$f8,$f8,$f6
    4d40:	46044200 	add.s	$f8,$f8,$f4
    4d44:	c7a40024 	lwc1	$f4,36(sp)
    4d48:	e7a8008c 	swc1	$f8,140(sp)
    4d4c:	46046202 	mul.s	$f8,$f12,$f4
    4d50:	c7a40020 	lwc1	$f4,32(sp)
    4d54:	860b0006 	lh	t3,6(s0)
    4d58:	46044200 	add.s	$f8,$f8,$f4
    4d5c:	448b2000 	mtc1	t3,$f4
    4d60:	00000000 	nop
    4d64:	46802120 	cvt.s.w	$f4,$f4
    4d68:	46044200 	add.s	$f8,$f8,$f4
    4d6c:	c7a40028 	lwc1	$f4,40(sp)
    4d70:	e7a80090 	swc1	$f8,144(sp)
    4d74:	46046202 	mul.s	$f8,$f12,$f4
    4d78:	c7a4002c 	lwc1	$f4,44(sp)
    4d7c:	860c0008 	lh	t4,8(s0)
    4d80:	860d0004 	lh	t5,4(s0)
    4d84:	46044200 	add.s	$f8,$f8,$f4
    4d88:	448c2000 	mtc1	t4,$f4
    4d8c:	00000000 	nop
    4d90:	46802120 	cvt.s.w	$f4,$f4
    4d94:	46044200 	add.s	$f8,$f8,$f4
    4d98:	448d2000 	mtc1	t5,$f4
    4d9c:	00000000 	nop
    4da0:	46802120 	cvt.s.w	$f4,$f4
    4da4:	46044200 	add.s	$f8,$f8,$f4
    4da8:	460a6102 	mul.s	$f4,$f12,$f10
    4dac:	e7a80094 	swc1	$f8,148(sp)
    4db0:	860e000a 	lh	t6,10(s0)
    4db4:	448e5000 	mtc1	t6,$f10
    4db8:	46062200 	add.s	$f8,$f4,$f6
    4dbc:	46805120 	cvt.s.w	$f4,$f10
    4dc0:	46044180 	add.s	$f6,$f8,$f4
    4dc4:	10000044 	b	4ed8 <Math3D_CylVsLineSeg+0x89c>
    4dc8:	e7a60098 	swc1	$f6,152(sp)
    4dcc:	14c70021 	bne	a2,a3,4e54 <Math3D_CylVsLineSeg+0x818>
    4dd0:	c7aa00d4 	lwc1	$f10,212(sp)
    4dd4:	460a1202 	mul.s	$f8,$f2,$f10
    4dd8:	860f0006 	lh	t7,6(s0)
    4ddc:	c7a400ec 	lwc1	$f4,236(sp)
    4de0:	35080004 	ori	t0,t0,0x4
    4de4:	448f5000 	mtc1	t7,$f10
    4de8:	46044180 	add.s	$f6,$f8,$f4
    4dec:	46805220 	cvt.s.w	$f8,$f10
    4df0:	c7aa00d8 	lwc1	$f10,216(sp)
    4df4:	46083100 	add.s	$f4,$f6,$f8
    4df8:	460a1182 	mul.s	$f6,$f2,$f10
    4dfc:	c7a800f0 	lwc1	$f8,240(sp)
    4e00:	e7a40084 	swc1	$f4,132(sp)
    4e04:	86190008 	lh	t9,8(s0)
    4e08:	86180004 	lh	t8,4(s0)
    4e0c:	44995000 	mtc1	t9,$f10
    4e10:	46083100 	add.s	$f4,$f6,$f8
    4e14:	468051a0 	cvt.s.w	$f6,$f10
    4e18:	44985000 	mtc1	t8,$f10
    4e1c:	46062200 	add.s	$f8,$f4,$f6
    4e20:	46805120 	cvt.s.w	$f4,$f10
    4e24:	c7aa00dc 	lwc1	$f10,220(sp)
    4e28:	46044180 	add.s	$f6,$f8,$f4
    4e2c:	460a1202 	mul.s	$f8,$f2,$f10
    4e30:	c7a400f4 	lwc1	$f4,244(sp)
    4e34:	e7a60088 	swc1	$f6,136(sp)
    4e38:	8609000a 	lh	t1,10(s0)
    4e3c:	44895000 	mtc1	t1,$f10
    4e40:	46044180 	add.s	$f6,$f8,$f4
    4e44:	46805220 	cvt.s.w	$f8,$f10
    4e48:	46083100 	add.s	$f4,$f6,$f8
    4e4c:	10000022 	b	4ed8 <Math3D_CylVsLineSeg+0x89c>
    4e50:	e7a4008c 	swc1	$f4,140(sp)
    4e54:	14a70020 	bne	a1,a3,4ed8 <Math3D_CylVsLineSeg+0x89c>
    4e58:	c7aa00d4 	lwc1	$f10,212(sp)
    4e5c:	460a6182 	mul.s	$f6,$f12,$f10
    4e60:	860a0006 	lh	t2,6(s0)
    4e64:	c7a800ec 	lwc1	$f8,236(sp)
    4e68:	35080004 	ori	t0,t0,0x4
    4e6c:	448a5000 	mtc1	t2,$f10
    4e70:	46083100 	add.s	$f4,$f6,$f8
    4e74:	468051a0 	cvt.s.w	$f6,$f10
    4e78:	c7aa00d8 	lwc1	$f10,216(sp)
    4e7c:	46062200 	add.s	$f8,$f4,$f6
    4e80:	460a6102 	mul.s	$f4,$f12,$f10
    4e84:	c7a600f0 	lwc1	$f6,240(sp)
    4e88:	e7a80084 	swc1	$f8,132(sp)
    4e8c:	860b0008 	lh	t3,8(s0)
    4e90:	860c0004 	lh	t4,4(s0)
    4e94:	448b5000 	mtc1	t3,$f10
    4e98:	46062200 	add.s	$f8,$f4,$f6
    4e9c:	46805120 	cvt.s.w	$f4,$f10
    4ea0:	448c5000 	mtc1	t4,$f10
    4ea4:	46044180 	add.s	$f6,$f8,$f4
    4ea8:	46805220 	cvt.s.w	$f8,$f10
    4eac:	c7aa00dc 	lwc1	$f10,220(sp)
    4eb0:	46083100 	add.s	$f4,$f6,$f8
    4eb4:	460a6182 	mul.s	$f6,$f12,$f10
    4eb8:	c7a800f4 	lwc1	$f8,244(sp)
    4ebc:	e7a40088 	swc1	$f4,136(sp)
    4ec0:	860d000a 	lh	t5,10(s0)
    4ec4:	448d5000 	mtc1	t5,$f10
    4ec8:	46083100 	add.s	$f4,$f6,$f8
    4ecc:	468051a0 	cvt.s.w	$f6,$f10
    4ed0:	46062200 	add.s	$f8,$f4,$f6
    4ed4:	e7a8008c 	swc1	$f8,140(sp)
    4ed8:	24060004 	li	a2,4
    4edc:	2405000c 	li	a1,12
    4ee0:	27a4006c 	addiu	a0,sp,108
    4ee4:	240e0001 	li	t6,1
    4ee8:	004e7804 	sllv	t7,t6,v0
    4eec:	01e8c824 	and	t9,t7,t0
    4ef0:	5320003b 	beqzl	t9,4fe0 <Math3D_CylVsLineSeg+0x9a4>
    4ef4:	24420001 	addiu	v0,v0,1
    4ef8:	1460000c 	bnez	v1,4f2c <Math3D_CylVsLineSeg+0x8f0>
    4efc:	00000000 	nop
    4f00:	00450019 	multu	v0,a1
    4f04:	8fb80104 	lw	t8,260(sp)
    4f08:	00004812 	mflo	t1
    4f0c:	00895021 	addu	t2,a0,t1
    4f10:	8d4c0000 	lw	t4,0(t2)
    4f14:	af0c0000 	sw	t4,0(t8)
    4f18:	8d4b0004 	lw	t3,4(t2)
    4f1c:	af0b0004 	sw	t3,4(t8)
    4f20:	8d4c0008 	lw	t4,8(t2)
    4f24:	1000002c 	b	4fd8 <Math3D_CylVsLineSeg+0x99c>
    4f28:	af0c0008 	sw	t4,8(t8)
    4f2c:	1467002a 	bne	v1,a3,4fd8 <Math3D_CylVsLineSeg+0x99c>
    4f30:	00026880 	sll	t5,v0,0x2
    4f34:	01a26823 	subu	t5,t5,v0
    4f38:	000d6880 	sll	t5,t5,0x2
    4f3c:	27ae006c 	addiu	t6,sp,108
    4f40:	01ae8021 	addu	s0,t5,t6
    4f44:	8fa40104 	lw	a0,260(sp)
    4f48:	8fa500fc 	lw	a1,252(sp)
    4f4c:	0c000000 	jal	0 <Math3D_PlaneVsLineSegClosestPoint>
    4f50:	afa30068 	sw	v1,104(sp)
    4f54:	e7a0004c 	swc1	$f0,76(sp)
    4f58:	8fa40104 	lw	a0,260(sp)
    4f5c:	0c000000 	jal	0 <Math3D_PlaneVsLineSegClosestPoint>
    4f60:	02002825 	move	a1,s0
    4f64:	c7aa004c 	lwc1	$f10,76(sp)
    4f68:	8fa30068 	lw	v1,104(sp)
    4f6c:	8faf0108 	lw	t7,264(sp)
    4f70:	4600503c 	c.lt.s	$f10,$f0
    4f74:	8faa0104 	lw	t2,260(sp)
    4f78:	45020009 	bc1fl	4fa0 <Math3D_CylVsLineSeg+0x964>
    4f7c:	8fb80108 	lw	t8,264(sp)
    4f80:	8e090000 	lw	t1,0(s0)
    4f84:	ade90000 	sw	t1,0(t7)
    4f88:	8e190004 	lw	t9,4(s0)
    4f8c:	adf90004 	sw	t9,4(t7)
    4f90:	8e090008 	lw	t1,8(s0)
    4f94:	10000014 	b	4fe8 <Math3D_CylVsLineSeg+0x9ac>
    4f98:	ade90008 	sw	t1,8(t7)
    4f9c:	8fb80108 	lw	t8,264(sp)
    4fa0:	8d4c0000 	lw	t4,0(t2)
    4fa4:	af0c0000 	sw	t4,0(t8)
    4fa8:	8d4b0004 	lw	t3,4(t2)
    4fac:	af0b0004 	sw	t3,4(t8)
    4fb0:	8d4c0008 	lw	t4,8(t2)
    4fb4:	af0c0008 	sw	t4,8(t8)
    4fb8:	8e0f0000 	lw	t7,0(s0)
    4fbc:	8fad0104 	lw	t5,260(sp)
    4fc0:	adaf0000 	sw	t7,0(t5)
    4fc4:	8e0e0004 	lw	t6,4(s0)
    4fc8:	adae0004 	sw	t6,4(t5)
    4fcc:	8e0f0008 	lw	t7,8(s0)
    4fd0:	10000005 	b	4fe8 <Math3D_CylVsLineSeg+0x9ac>
    4fd4:	adaf0008 	sw	t7,8(t5)
    4fd8:	24630001 	addiu	v1,v1,1
    4fdc:	24420001 	addiu	v0,v0,1
    4fe0:	5446ffc1 	bnel	v0,a2,4ee8 <Math3D_CylVsLineSeg+0x8ac>
    4fe4:	240e0001 	li	t6,1
    4fe8:	00601025 	move	v0,v1
    4fec:	8fbf001c 	lw	ra,28(sp)
    4ff0:	8fb00018 	lw	s0,24(sp)
    4ff4:	27bd00f8 	addiu	sp,sp,248
    4ff8:	03e00008 	jr	ra
    4ffc:	00000000 	nop

00005000 <Math3D_CylTriVsIntersect>:
    5000:	27bdff70 	addiu	sp,sp,-144
    5004:	afbf003c 	sw	ra,60(sp)
    5008:	afb10038 	sw	s1,56(sp)
    500c:	afb00034 	sw	s0,52(sp)
    5010:	afa60098 	sw	a2,152(sp)
    5014:	848f0004 	lh	t7,4(a0)
    5018:	848e0008 	lh	t6,8(a0)
    501c:	84980002 	lh	t8,2(a0)
    5020:	448f4000 	mtc1	t7,$f8
    5024:	448e2000 	mtc1	t6,$f4
    5028:	44988000 	mtc1	t8,$f16
    502c:	468042a0 	cvt.s.w	$f10,$f8
    5030:	c4a00004 	lwc1	$f0,4(a1)
    5034:	00a08025 	move	s0,a1
    5038:	00808825 	move	s1,a0
    503c:	468021a0 	cvt.s.w	$f6,$f4
    5040:	468084a0 	cvt.s.w	$f18,$f16
    5044:	460a3300 	add.s	$f12,$f6,$f10
    5048:	460c003c 	c.lt.s	$f0,$f12
    504c:	460c9380 	add.s	$f14,$f18,$f12
    5050:	4502000c 	bc1fl	5084 <Math3D_CylTriVsIntersect+0x84>
    5054:	4600703c 	c.lt.s	$f14,$f0
    5058:	c4a40010 	lwc1	$f4,16(a1)
    505c:	460c203c 	c.lt.s	$f4,$f12
    5060:	00000000 	nop
    5064:	45020007 	bc1fl	5084 <Math3D_CylTriVsIntersect+0x84>
    5068:	4600703c 	c.lt.s	$f14,$f0
    506c:	c4a8001c 	lwc1	$f8,28(a1)
    5070:	460c403c 	c.lt.s	$f8,$f12
    5074:	00000000 	nop
    5078:	45010011 	bc1t	50c0 <Math3D_CylTriVsIntersect+0xc0>
    507c:	00000000 	nop
    5080:	4600703c 	c.lt.s	$f14,$f0
    5084:	3c010000 	lui	at,0x0
    5088:	02202025 	move	a0,s1
    508c:	02002825 	move	a1,s0
    5090:	4500000d 	bc1f	50c8 <Math3D_CylTriVsIntersect+0xc8>
    5094:	2606000c 	addiu	a2,s0,12
    5098:	c6060010 	lwc1	$f6,16(s0)
    509c:	4606703c 	c.lt.s	$f14,$f6
    50a0:	00000000 	nop
    50a4:	45000008 	bc1f	50c8 <Math3D_CylTriVsIntersect+0xc8>
    50a8:	00000000 	nop
    50ac:	c60a001c 	lwc1	$f10,28(s0)
    50b0:	460a703c 	c.lt.s	$f14,$f10
    50b4:	00000000 	nop
    50b8:	45000003 	bc1f	50c8 <Math3D_CylTriVsIntersect+0xc8>
    50bc:	00000000 	nop
    50c0:	100000e9 	b	5468 <Math3D_CylTriVsIntersect+0x468>
    50c4:	00001025 	move	v0,zero
    50c8:	c4220180 	lwc1	$f2,384(at)
    50cc:	3c190000 	lui	t9,0x0
    50d0:	273901b0 	addiu	t9,t9,432
    50d4:	3c070000 	lui	a3,0x0
    50d8:	24e701a0 	addiu	a3,a3,416
    50dc:	afb90010 	sw	t9,16(sp)
    50e0:	afa60048 	sw	a2,72(sp)
    50e4:	e7ac0084 	swc1	$f12,132(sp)
    50e8:	e7ae0088 	swc1	$f14,136(sp)
    50ec:	0c000000 	jal	0 <Math3D_PlaneVsLineSegClosestPoint>
    50f0:	e7a20080 	swc1	$f2,128(sp)
    50f4:	1040000f 	beqz	v0,5134 <Math3D_CylTriVsIntersect+0x134>
    50f8:	c7a20080 	lwc1	$f2,128(sp)
    50fc:	3c040000 	lui	a0,0x0
    5100:	248401a0 	addiu	a0,a0,416
    5104:	0c000000 	jal	0 <Math3D_PlaneVsLineSegClosestPoint>
    5108:	02002825 	move	a1,s0
    510c:	3c090000 	lui	t1,0x0
    5110:	252901a0 	addiu	t1,t1,416
    5114:	8d2b0000 	lw	t3,0(t1)
    5118:	8fa80098 	lw	t0,152(sp)
    511c:	46000086 	mov.s	$f2,$f0
    5120:	ad0b0000 	sw	t3,0(t0)
    5124:	8d2a0004 	lw	t2,4(t1)
    5128:	ad0a0004 	sw	t2,4(t0)
    512c:	8d2b0008 	lw	t3,8(t1)
    5130:	ad0b0008 	sw	t3,8(t0)
    5134:	3c0c0000 	lui	t4,0x0
    5138:	258c01b0 	addiu	t4,t4,432
    513c:	26050018 	addiu	a1,s0,24
    5140:	3c070000 	lui	a3,0x0
    5144:	24e701a0 	addiu	a3,a3,416
    5148:	afa50044 	sw	a1,68(sp)
    514c:	afac0010 	sw	t4,16(sp)
    5150:	02202025 	move	a0,s1
    5154:	8fa60048 	lw	a2,72(sp)
    5158:	0c000000 	jal	0 <Math3D_PlaneVsLineSegClosestPoint>
    515c:	e7a20080 	swc1	$f2,128(sp)
    5160:	10400014 	beqz	v0,51b4 <Math3D_CylTriVsIntersect+0x1b4>
    5164:	c7a20080 	lwc1	$f2,128(sp)
    5168:	3c040000 	lui	a0,0x0
    516c:	248401a0 	addiu	a0,a0,416
    5170:	8fa50044 	lw	a1,68(sp)
    5174:	0c000000 	jal	0 <Math3D_PlaneVsLineSegClosestPoint>
    5178:	e7a20080 	swc1	$f2,128(sp)
    517c:	c7a20080 	lwc1	$f2,128(sp)
    5180:	3c0e0000 	lui	t6,0x0
    5184:	25ce01a0 	addiu	t6,t6,416
    5188:	4602003c 	c.lt.s	$f0,$f2
    518c:	8fad0098 	lw	t5,152(sp)
    5190:	45000008 	bc1f	51b4 <Math3D_CylTriVsIntersect+0x1b4>
    5194:	00000000 	nop
    5198:	8dd80000 	lw	t8,0(t6)
    519c:	46000086 	mov.s	$f2,$f0
    51a0:	adb80000 	sw	t8,0(t5)
    51a4:	8dcf0004 	lw	t7,4(t6)
    51a8:	adaf0004 	sw	t7,4(t5)
    51ac:	8dd80008 	lw	t8,8(t6)
    51b0:	adb80008 	sw	t8,8(t5)
    51b4:	3c190000 	lui	t9,0x0
    51b8:	273901b0 	addiu	t9,t9,432
    51bc:	3c070000 	lui	a3,0x0
    51c0:	24e701a0 	addiu	a3,a3,416
    51c4:	afb90010 	sw	t9,16(sp)
    51c8:	02202025 	move	a0,s1
    51cc:	02002825 	move	a1,s0
    51d0:	8fa60044 	lw	a2,68(sp)
    51d4:	0c000000 	jal	0 <Math3D_PlaneVsLineSegClosestPoint>
    51d8:	e7a20080 	swc1	$f2,128(sp)
    51dc:	10400014 	beqz	v0,5230 <Math3D_CylTriVsIntersect+0x230>
    51e0:	c7a20080 	lwc1	$f2,128(sp)
    51e4:	3c040000 	lui	a0,0x0
    51e8:	248401a0 	addiu	a0,a0,416
    51ec:	02002825 	move	a1,s0
    51f0:	0c000000 	jal	0 <Math3D_PlaneVsLineSegClosestPoint>
    51f4:	e7a20080 	swc1	$f2,128(sp)
    51f8:	c7a20080 	lwc1	$f2,128(sp)
    51fc:	3c090000 	lui	t1,0x0
    5200:	252901a0 	addiu	t1,t1,416
    5204:	4602003c 	c.lt.s	$f0,$f2
    5208:	8fa80098 	lw	t0,152(sp)
    520c:	45000008 	bc1f	5230 <Math3D_CylTriVsIntersect+0x230>
    5210:	00000000 	nop
    5214:	8d2b0000 	lw	t3,0(t1)
    5218:	46000086 	mov.s	$f2,$f0
    521c:	ad0b0000 	sw	t3,0(t0)
    5220:	8d2a0004 	lw	t2,4(t1)
    5224:	ad0a0004 	sw	t2,4(t0)
    5228:	8d2b0008 	lw	t3,8(t1)
    522c:	ad0b0008 	sw	t3,8(t0)
    5230:	3c010000 	lui	at,0x0
    5234:	c4300184 	lwc1	$f16,388(at)
    5238:	46101032 	c.eq.s	$f2,$f16
    523c:	00000000 	nop
    5240:	45030004 	bc1tl	5254 <Math3D_CylTriVsIntersect+0x254>
    5244:	c6120028 	lwc1	$f18,40(s0)
    5248:	10000087 	b	5468 <Math3D_CylTriVsIntersect+0x468>
    524c:	24020001 	li	v0,1
    5250:	c6120028 	lwc1	$f18,40(s0)
    5254:	8e070024 	lw	a3,36(s0)
    5258:	27ae008c 	addiu	t6,sp,140
    525c:	e7b20010 	swc1	$f18,16(sp)
    5260:	c604002c 	lwc1	$f4,44(s0)
    5264:	02002025 	move	a0,s0
    5268:	8fa50048 	lw	a1,72(sp)
    526c:	e7a40014 	swc1	$f4,20(sp)
    5270:	c6080030 	lwc1	$f8,48(s0)
    5274:	c7a40084 	lwc1	$f4,132(sp)
    5278:	8fa60044 	lw	a2,68(sp)
    527c:	e7a80018 	swc1	$f8,24(sp)
    5280:	862c000a 	lh	t4,10(s1)
    5284:	c7a80088 	lwc1	$f8,136(sp)
    5288:	448c3000 	mtc1	t4,$f6
    528c:	00000000 	nop
    5290:	468032a0 	cvt.s.w	$f10,$f6
    5294:	e7aa001c 	swc1	$f10,28(sp)
    5298:	862d0006 	lh	t5,6(s1)
    529c:	afae0024 	sw	t6,36(sp)
    52a0:	e7a40028 	swc1	$f4,40(sp)
    52a4:	448d8000 	mtc1	t5,$f16
    52a8:	e7a8002c 	swc1	$f8,44(sp)
    52ac:	468084a0 	cvt.s.w	$f18,$f16
    52b0:	0c000000 	jal	0 <Math3D_PlaneVsLineSegClosestPoint>
    52b4:	e7b20020 	swc1	$f18,32(sp)
    52b8:	1040003f 	beqz	v0,53b8 <Math3D_CylTriVsIntersect+0x3b8>
    52bc:	3c010000 	lui	at,0x0
    52c0:	862f0006 	lh	t7,6(s1)
    52c4:	c7b0008c 	lwc1	$f16,140(sp)
    52c8:	3c013f00 	lui	at,0x3f00
    52cc:	448f3000 	mtc1	t7,$f6
    52d0:	e7b00070 	swc1	$f16,112(sp)
    52d4:	44810000 	mtc1	at,$f0
    52d8:	468032a0 	cvt.s.w	$f10,$f6
    52dc:	27a40060 	addiu	a0,sp,96
    52e0:	27a5006c 	addiu	a1,sp,108
    52e4:	27a60054 	addiu	a2,sp,84
    52e8:	e7aa006c 	swc1	$f10,108(sp)
    52ec:	8638000a 	lh	t8,10(s1)
    52f0:	44989000 	mtc1	t8,$f18
    52f4:	00000000 	nop
    52f8:	46809120 	cvt.s.w	$f4,$f18
    52fc:	e7a40074 	swc1	$f4,116(sp)
    5300:	c6060000 	lwc1	$f6,0(s0)
    5304:	c608000c 	lwc1	$f8,12(s0)
    5308:	46064280 	add.s	$f10,$f8,$f6
    530c:	46005402 	mul.s	$f16,$f10,$f0
    5310:	e7b00060 	swc1	$f16,96(sp)
    5314:	c6040004 	lwc1	$f4,4(s0)
    5318:	c6120010 	lwc1	$f18,16(s0)
    531c:	46049200 	add.s	$f8,$f18,$f4
    5320:	46004182 	mul.s	$f6,$f8,$f0
    5324:	e7a60064 	swc1	$f6,100(sp)
    5328:	c6100008 	lwc1	$f16,8(s0)
    532c:	c60a0014 	lwc1	$f10,20(s0)
    5330:	46105480 	add.s	$f18,$f10,$f16
    5334:	46009102 	mul.s	$f4,$f18,$f0
    5338:	0c000000 	jal	0 <Math3D_PlaneVsLineSegClosestPoint>
    533c:	e7a40068 	swc1	$f4,104(sp)
    5340:	c7a20054 	lwc1	$f2,84(sp)
    5344:	c7ac005c 	lwc1	$f12,92(sp)
    5348:	3c010000 	lui	at,0x0
    534c:	46021202 	mul.s	$f8,$f2,$f2
    5350:	c42a0188 	lwc1	$f10,392(at)
    5354:	8fa40098 	lw	a0,152(sp)
    5358:	460c6182 	mul.s	$f6,$f12,$f12
    535c:	46064000 	add.s	$f0,$f8,$f6
    5360:	46000384 	sqrt.s	$f14,$f0
    5364:	46007005 	abs.s	$f0,$f14
    5368:	460a003c 	c.lt.s	$f0,$f10
    536c:	00000000 	nop
    5370:	45020006 	bc1fl	538c <Math3D_CylTriVsIntersect+0x38c>
    5374:	86390000 	lh	t9,0(s1)
    5378:	0c000000 	jal	0 <Math3D_PlaneVsLineSegClosestPoint>
    537c:	27a50060 	addiu	a1,sp,96
    5380:	10000039 	b	5468 <Math3D_CylTriVsIntersect+0x468>
    5384:	24020001 	li	v0,1
    5388:	86390000 	lh	t9,0(s1)
    538c:	27a4006c 	addiu	a0,sp,108
    5390:	27a50054 	addiu	a1,sp,84
    5394:	44998000 	mtc1	t9,$f16
    5398:	8fa70098 	lw	a3,152(sp)
    539c:	468084a0 	cvt.s.w	$f18,$f16
    53a0:	460e9003 	div.s	$f0,$f18,$f14
    53a4:	44060000 	mfc1	a2,$f0
    53a8:	0c000000 	jal	0 <Math3D_PlaneVsLineSegClosestPoint>
    53ac:	00000000 	nop
    53b0:	1000002d 	b	5468 <Math3D_CylTriVsIntersect+0x468>
    53b4:	24020001 	li	v0,1
    53b8:	86280006 	lh	t0,6(s1)
    53bc:	3c090000 	lui	t1,0x0
    53c0:	c7a40088 	lwc1	$f4,136(sp)
    53c4:	a4280198 	sh	t0,408(at)
    53c8:	85290198 	lh	t1,408(t1)
    53cc:	3c010000 	lui	at,0x0
    53d0:	c7a60084 	lwc1	$f6,132(sp)
    53d4:	a4290190 	sh	t1,400(at)
    53d8:	4600220d 	trunc.w.s	$f8,$f4
    53dc:	862a000a 	lh	t2,10(s1)
    53e0:	3c010000 	lui	at,0x0
    53e4:	4600328d 	trunc.w.s	$f10,$f6
    53e8:	3c0b0000 	lui	t3,0x0
    53ec:	a42a019c 	sh	t2,412(at)
    53f0:	856b019c 	lh	t3,412(t3)
    53f4:	440d4000 	mfc1	t5,$f8
    53f8:	3c010000 	lui	at,0x0
    53fc:	440f5000 	mfc1	t7,$f10
    5400:	a42b0194 	sh	t3,404(at)
    5404:	a42d0192 	sh	t5,402(at)
    5408:	3c010000 	lui	at,0x0
    540c:	a42f019a 	sh	t7,410(at)
    5410:	86380000 	lh	t8,0(s1)
    5414:	3c190000 	lui	t9,0x0
    5418:	3c040000 	lui	a0,0x0
    541c:	a438019e 	sh	t8,414(at)
    5420:	8739019e 	lh	t9,414(t9)
    5424:	3c010000 	lui	at,0x0
    5428:	24840190 	addiu	a0,a0,400
    542c:	02002825 	move	a1,s0
    5430:	8fa60098 	lw	a2,152(sp)
    5434:	0c000000 	jal	0 <Math3D_PlaneVsLineSegClosestPoint>
    5438:	a4390196 	sh	t9,406(at)
    543c:	14400007 	bnez	v0,545c <Math3D_CylTriVsIntersect+0x45c>
    5440:	3c040000 	lui	a0,0x0
    5444:	24840198 	addiu	a0,a0,408
    5448:	02002825 	move	a1,s0
    544c:	0c000000 	jal	0 <Math3D_PlaneVsLineSegClosestPoint>
    5450:	8fa60098 	lw	a2,152(sp)
    5454:	50400004 	beqzl	v0,5468 <Math3D_CylTriVsIntersect+0x468>
    5458:	00001025 	move	v0,zero
    545c:	10000002 	b	5468 <Math3D_CylTriVsIntersect+0x468>
    5460:	24020001 	li	v0,1
    5464:	00001025 	move	v0,zero
    5468:	8fbf003c 	lw	ra,60(sp)
    546c:	8fb00034 	lw	s0,52(sp)
    5470:	8fb10038 	lw	s1,56(sp)
    5474:	03e00008 	jr	ra
    5478:	27bd0090 	addiu	sp,sp,144

0000547c <Math3D_CylVsTri>:
    547c:	27bdffd8 	addiu	sp,sp,-40
    5480:	afbf0014 	sw	ra,20(sp)
    5484:	0c000000 	jal	0 <Math3D_PlaneVsLineSegClosestPoint>
    5488:	27a6001c 	addiu	a2,sp,28
    548c:	8fbf0014 	lw	ra,20(sp)
    5490:	27bd0028 	addiu	sp,sp,40
    5494:	03e00008 	jr	ra
    5498:	00000000 	nop

0000549c <Math3D_SphVsSph>:
    549c:	27bdffe0 	addiu	sp,sp,-32
    54a0:	afbf0014 	sw	ra,20(sp)
    54a4:	0c000000 	jal	0 <Math3D_PlaneVsLineSegClosestPoint>
    54a8:	27a6001c 	addiu	a2,sp,28
    54ac:	8fbf0014 	lw	ra,20(sp)
    54b0:	27bd0020 	addiu	sp,sp,32
    54b4:	03e00008 	jr	ra
    54b8:	00000000 	nop

000054bc <Math3D_SphVsSphOverlap>:
    54bc:	27bdffe0 	addiu	sp,sp,-32
    54c0:	afbf0014 	sw	ra,20(sp)
    54c4:	0c000000 	jal	0 <Math3D_PlaneVsLineSegClosestPoint>
    54c8:	27a7001c 	addiu	a3,sp,28
    54cc:	8fbf0014 	lw	ra,20(sp)
    54d0:	27bd0020 	addiu	sp,sp,32
    54d4:	03e00008 	jr	ra
    54d8:	00000000 	nop

000054dc <Math3D_SphVsSphOverlapCenter>:
    54dc:	848e0000 	lh	t6,0(a0)
    54e0:	84af0000 	lh	t7,0(a1)
    54e4:	84980002 	lh	t8,2(a0)
    54e8:	448e2000 	mtc1	t6,$f4
    54ec:	448f4000 	mtc1	t7,$f8
    54f0:	84b90002 	lh	t9,2(a1)
    54f4:	468021a0 	cvt.s.w	$f6,$f4
    54f8:	44989000 	mtc1	t8,$f18
    54fc:	84880004 	lh	t0,4(a0)
    5500:	84a90004 	lh	t1,4(a1)
    5504:	3c010000 	lui	at,0x0
    5508:	468042a0 	cvt.s.w	$f10,$f8
    550c:	44994000 	mtc1	t9,$f8
    5510:	46809120 	cvt.s.w	$f4,$f18
    5514:	460a3081 	sub.s	$f2,$f6,$f10
    5518:	44885000 	mtc1	t0,$f10
    551c:	468041a0 	cvt.s.w	$f6,$f8
    5520:	44894000 	mtc1	t1,$f8
    5524:	468054a0 	cvt.s.w	$f18,$f10
    5528:	46062301 	sub.s	$f12,$f4,$f6
    552c:	46021182 	mul.s	$f6,$f2,$f2
    5530:	00000000 	nop
    5534:	460c6282 	mul.s	$f10,$f12,$f12
    5538:	46804120 	cvt.s.w	$f4,$f8
    553c:	460a3200 	add.s	$f8,$f6,$f10
    5540:	46049381 	sub.s	$f14,$f18,$f4
    5544:	460e7482 	mul.s	$f18,$f14,$f14
    5548:	46124100 	add.s	$f4,$f8,$f18
    554c:	46002021 	cvt.d.s	$f0,$f4
    5550:	46200004 	sqrt.d	$f0,$f0
    5554:	46200420 	cvt.s.d	$f16,$f0
    5558:	e4f00000 	swc1	$f16,0(a3)
    555c:	84ab0006 	lh	t3,6(a1)
    5560:	848a0006 	lh	t2,6(a0)
    5564:	448b4000 	mtc1	t3,$f8
    5568:	448a3000 	mtc1	t2,$f6
    556c:	468044a0 	cvt.s.w	$f18,$f8
    5570:	468032a0 	cvt.s.w	$f10,$f6
    5574:	46125100 	add.s	$f4,$f10,$f18
    5578:	46102181 	sub.s	$f6,$f4,$f16
    557c:	e4c60000 	swc1	$f6,0(a2)
    5580:	c4ca0000 	lwc1	$f10,0(a2)
    5584:	c428018c 	lwc1	$f8,396(at)
    5588:	460a403c 	c.lt.s	$f8,$f10
    558c:	00000000 	nop
    5590:	45000003 	bc1f	55a0 <Math3D_SphVsSphOverlapCenter+0xc4>
    5594:	00000000 	nop
    5598:	03e00008 	jr	ra
    559c:	24020001 	li	v0,1
    55a0:	44809000 	mtc1	zero,$f18
    55a4:	00001025 	move	v0,zero
    55a8:	e4d20000 	swc1	$f18,0(a2)
    55ac:	03e00008 	jr	ra
    55b0:	00000000 	nop

000055b4 <Math3D_SphVsCylOverlapDist>:
    55b4:	27bdffe0 	addiu	sp,sp,-32
    55b8:	afbf0014 	sw	ra,20(sp)
    55bc:	0c000000 	jal	0 <Math3D_PlaneVsLineSegClosestPoint>
    55c0:	27a7001c 	addiu	a3,sp,28
    55c4:	8fbf0014 	lw	ra,20(sp)
    55c8:	27bd0020 	addiu	sp,sp,32
    55cc:	03e00008 	jr	ra
    55d0:	00000000 	nop

000055d4 <Math3D_SphVsCylOverlapCenterDist>:
    55d4:	84820006 	lh	v0,6(a0)
    55d8:	18400004 	blez	v0,55ec <Math3D_SphVsCylOverlapCenterDist+0x18>
    55dc:	00000000 	nop
    55e0:	84a30000 	lh	v1,0(a1)
    55e4:	5c600004 	bgtzl	v1,55f8 <Math3D_SphVsCylOverlapCenterDist+0x24>
    55e8:	848e0002 	lh	t6,2(a0)
    55ec:	03e00008 	jr	ra
    55f0:	00001025 	move	v0,zero
    55f4:	848e0002 	lh	t6,2(a0)
    55f8:	44824000 	mtc1	v0,$f8
    55fc:	3c010000 	lui	at,0x0
    5600:	448e2000 	mtc1	t6,$f4
    5604:	468040a0 	cvt.s.w	$f2,$f8
    5608:	468021a0 	cvt.s.w	$f6,$f4
    560c:	e42601dc 	swc1	$f6,476(at)
    5610:	3c010000 	lui	at,0x0
    5614:	e42201e4 	swc1	$f2,484(at)
    5618:	84af0008 	lh	t7,8(a1)
    561c:	3c010000 	lui	at,0x0
    5620:	448f5000 	mtc1	t7,$f10
    5624:	00000000 	nop
    5628:	468054a0 	cvt.s.w	$f18,$f10
    562c:	e43201d0 	swc1	$f18,464(at)
    5630:	84b80004 	lh	t8,4(a1)
    5634:	3c010000 	lui	at,0x0
    5638:	44982000 	mtc1	t8,$f4
    563c:	00000000 	nop
    5640:	468021a0 	cvt.s.w	$f6,$f4
    5644:	e42601c8 	swc1	$f6,456(at)
    5648:	84b90002 	lh	t9,2(a1)
    564c:	3c010000 	lui	at,0x0
    5650:	44994000 	mtc1	t9,$f8
    5654:	00000000 	nop
    5658:	468042a0 	cvt.s.w	$f10,$f8
    565c:	e42a01c4 	swc1	$f10,452(at)
    5660:	84a90006 	lh	t1,6(a1)
    5664:	84880000 	lh	t0,0(a0)
    5668:	84ab000a 	lh	t3,10(a1)
    566c:	44893000 	mtc1	t1,$f6
    5670:	44889000 	mtc1	t0,$f18
    5674:	848a0004 	lh	t2,4(a0)
    5678:	46803220 	cvt.s.w	$f8,$f6
    567c:	448b3000 	mtc1	t3,$f6
    5680:	448a5000 	mtc1	t2,$f10
    5684:	3c010000 	lui	at,0x0
    5688:	46809120 	cvt.s.w	$f4,$f18
    568c:	468054a0 	cvt.s.w	$f18,$f10
    5690:	46082301 	sub.s	$f12,$f4,$f8
    5694:	44834000 	mtc1	v1,$f8
    5698:	46803120 	cvt.s.w	$f4,$f6
    569c:	460c6182 	mul.s	$f6,$f12,$f12
    56a0:	46049381 	sub.s	$f14,$f18,$f4
    56a4:	468042a0 	cvt.s.w	$f10,$f8
    56a8:	460e7482 	mul.s	$f18,$f14,$f14
    56ac:	460a1400 	add.s	$f16,$f2,$f10
    56b0:	46123000 	add.s	$f0,$f6,$f18
    56b4:	46000004 	sqrt.s	$f0,$f0
    56b8:	4600803c 	c.lt.s	$f16,$f0
    56bc:	e4e00000 	swc1	$f0,0(a3)
    56c0:	45000003 	bc1f	56d0 <Math3D_SphVsCylOverlapCenterDist+0xfc>
    56c4:	00000000 	nop
    56c8:	03e00008 	jr	ra
    56cc:	00001025 	move	v0,zero
    56d0:	c42401d0 	lwc1	$f4,464(at)
    56d4:	3c010000 	lui	at,0x0
    56d8:	c42801c8 	lwc1	$f8,456(at)
    56dc:	3c010000 	lui	at,0x0
    56e0:	c42a01dc 	lwc1	$f10,476(at)
    56e4:	3c010000 	lui	at,0x0
    56e8:	c42601e4 	lwc1	$f6,484(at)
    56ec:	46082000 	add.s	$f0,$f4,$f8
    56f0:	3c010000 	lui	at,0x0
    56f4:	00001025 	move	v0,zero
    56f8:	46065480 	add.s	$f18,$f10,$f6
    56fc:	4612003e 	c.le.s	$f0,$f18
    5700:	00000000 	nop
    5704:	4500000d 	bc1f	573c <Math3D_SphVsCylOverlapCenterDist+0x168>
    5708:	00000000 	nop
    570c:	c42401c4 	lwc1	$f4,452(at)
    5710:	46065481 	sub.s	$f18,$f10,$f6
    5714:	46040200 	add.s	$f8,$f0,$f4
    5718:	4608903e 	c.le.s	$f18,$f8
    571c:	00000000 	nop
    5720:	45000006 	bc1f	573c <Math3D_SphVsCylOverlapCenterDist+0x168>
    5724:	00000000 	nop
    5728:	c4e40000 	lwc1	$f4,0(a3)
    572c:	24020001 	li	v0,1
    5730:	46048281 	sub.s	$f10,$f16,$f4
    5734:	03e00008 	jr	ra
    5738:	e4ca0000 	swc1	$f10,0(a2)
    573c:	03e00008 	jr	ra
    5740:	00000000 	nop

00005744 <Math3D_CylOutsideCyl>:
    5744:	27bdffe0 	addiu	sp,sp,-32
    5748:	afbf0014 	sw	ra,20(sp)
    574c:	0c000000 	jal	0 <Math3D_PlaneVsLineSegClosestPoint>
    5750:	27a7001c 	addiu	a3,sp,28
    5754:	8fbf0014 	lw	ra,20(sp)
    5758:	27bd0020 	addiu	sp,sp,32
    575c:	03e00008 	jr	ra
    5760:	00000000 	nop

00005764 <Math3D_CylOutsideCylDist>:
    5764:	27bdffe8 	addiu	sp,sp,-24
    5768:	afa40018 	sw	a0,24(sp)
    576c:	afa5001c 	sw	a1,28(sp)
    5770:	8fa50018 	lw	a1,24(sp)
    5774:	afbf0014 	sw	ra,20(sp)
    5778:	3c040000 	lui	a0,0x0
    577c:	afa60020 	sw	a2,32(sp)
    5780:	afa70024 	sw	a3,36(sp)
    5784:	248401f4 	addiu	a0,a0,500
    5788:	0c000000 	jal	0 <Math3D_PlaneVsLineSegClosestPoint>
    578c:	24a50006 	addiu	a1,a1,6
    5790:	8fa20018 	lw	v0,24(sp)
    5794:	3c010000 	lui	at,0x0
    5798:	8fa3001c 	lw	v1,28(sp)
    579c:	844e0000 	lh	t6,0(v0)
    57a0:	3c040000 	lui	a0,0x0
    57a4:	2484020c 	addiu	a0,a0,524
    57a8:	448e2000 	mtc1	t6,$f4
    57ac:	24650006 	addiu	a1,v1,6
    57b0:	468021a0 	cvt.s.w	$f6,$f4
    57b4:	e42601e8 	swc1	$f6,488(at)
    57b8:	844f0004 	lh	t7,4(v0)
    57bc:	3c010000 	lui	at,0x0
    57c0:	448f4000 	mtc1	t7,$f8
    57c4:	00000000 	nop
    57c8:	468042a0 	cvt.s.w	$f10,$f8
    57cc:	e42a01f0 	swc1	$f10,496(at)
    57d0:	84580002 	lh	t8,2(v0)
    57d4:	3c010000 	lui	at,0x0
    57d8:	44988000 	mtc1	t8,$f16
    57dc:	00000000 	nop
    57e0:	468084a0 	cvt.s.w	$f18,$f16
    57e4:	0c000000 	jal	0 <Math3D_PlaneVsLineSegClosestPoint>
    57e8:	e43201ec 	swc1	$f18,492(at)
    57ec:	8fa3001c 	lw	v1,28(sp)
    57f0:	3c010000 	lui	at,0x0
    57f4:	8fa40024 	lw	a0,36(sp)
    57f8:	84790000 	lh	t9,0(v1)
    57fc:	44992000 	mtc1	t9,$f4
    5800:	00000000 	nop
    5804:	468021a0 	cvt.s.w	$f6,$f4
    5808:	e4260200 	swc1	$f6,512(at)
    580c:	84680004 	lh	t0,4(v1)
    5810:	3c010000 	lui	at,0x0
    5814:	44884000 	mtc1	t0,$f8
    5818:	00000000 	nop
    581c:	468042a0 	cvt.s.w	$f10,$f8
    5820:	e42a0208 	swc1	$f10,520(at)
    5824:	84690002 	lh	t1,2(v1)
    5828:	3c010000 	lui	at,0x0
    582c:	44898000 	mtc1	t1,$f16
    5830:	00000000 	nop
    5834:	468084a0 	cvt.s.w	$f18,$f16
    5838:	e4320204 	swc1	$f18,516(at)
    583c:	3c010000 	lui	at,0x0
    5840:	c42401f4 	lwc1	$f4,500(at)
    5844:	3c010000 	lui	at,0x0
    5848:	c426020c 	lwc1	$f6,524(at)
    584c:	3c010000 	lui	at,0x0
    5850:	c42801fc 	lwc1	$f8,508(at)
    5854:	3c010000 	lui	at,0x0
    5858:	46062081 	sub.s	$f2,$f4,$f6
    585c:	c42a0214 	lwc1	$f10,532(at)
    5860:	3c010000 	lui	at,0x0
    5864:	460a4301 	sub.s	$f12,$f8,$f10
    5868:	46021402 	mul.s	$f16,$f2,$f2
    586c:	00000000 	nop
    5870:	460c6482 	mul.s	$f18,$f12,$f12
    5874:	46128000 	add.s	$f0,$f16,$f18
    5878:	46000004 	sqrt.s	$f0,$f0
    587c:	e4800000 	swc1	$f0,0(a0)
    5880:	c42401e8 	lwc1	$f4,488(at)
    5884:	3c010000 	lui	at,0x0
    5888:	c4260200 	lwc1	$f6,512(at)
    588c:	3c010000 	lui	at,0x0
    5890:	46062380 	add.s	$f14,$f4,$f6
    5894:	4600703c 	c.lt.s	$f14,$f0
    5898:	00000000 	nop
    589c:	45000003 	bc1f	58ac <Math3D_CylOutsideCylDist+0x148>
    58a0:	00000000 	nop
    58a4:	1000001f 	b	5924 <Math3D_CylOutsideCylDist+0x1c0>
    58a8:	00001025 	move	v0,zero
    58ac:	c42801f8 	lwc1	$f8,504(at)
    58b0:	3c010000 	lui	at,0x0
    58b4:	c42a01f0 	lwc1	$f10,496(at)
    58b8:	3c010000 	lui	at,0x0
    58bc:	c4300210 	lwc1	$f16,528(at)
    58c0:	3c010000 	lui	at,0x0
    58c4:	c4320208 	lwc1	$f18,520(at)
    58c8:	460a4000 	add.s	$f0,$f8,$f10
    58cc:	3c010000 	lui	at,0x0
    58d0:	c42401ec 	lwc1	$f4,492(at)
    58d4:	46128080 	add.s	$f2,$f16,$f18
    58d8:	3c010000 	lui	at,0x0
    58dc:	46040180 	add.s	$f6,$f0,$f4
    58e0:	4602303c 	c.lt.s	$f6,$f2
    58e4:	00000000 	nop
    58e8:	45010007 	bc1t	5908 <Math3D_CylOutsideCylDist+0x1a4>
    58ec:	00000000 	nop
    58f0:	c4280204 	lwc1	$f8,516(at)
    58f4:	46081280 	add.s	$f10,$f2,$f8
    58f8:	4600503c 	c.lt.s	$f10,$f0
    58fc:	00000000 	nop
    5900:	45020004 	bc1fl	5914 <Math3D_CylOutsideCylDist+0x1b0>
    5904:	c4900000 	lwc1	$f16,0(a0)
    5908:	10000006 	b	5924 <Math3D_CylOutsideCylDist+0x1c0>
    590c:	00001025 	move	v0,zero
    5910:	c4900000 	lwc1	$f16,0(a0)
    5914:	8faa0020 	lw	t2,32(sp)
    5918:	24020001 	li	v0,1
    591c:	46107481 	sub.s	$f18,$f14,$f16
    5920:	e5520000 	swc1	$f18,0(t2)
    5924:	8fbf0014 	lw	ra,20(sp)
    5928:	27bd0018 	addiu	sp,sp,24
    592c:	03e00008 	jr	ra
    5930:	00000000 	nop

00005934 <Math3D_TriVsTriIntersect>:
    5934:	27bdffa0 	addiu	sp,sp,-96
    5938:	afb00034 	sw	s0,52(sp)
    593c:	00808025 	move	s0,a0
    5940:	afbf003c 	sw	ra,60(sp)
    5944:	afb10038 	sw	s1,56(sp)
    5948:	24840024 	addiu	a0,a0,36
    594c:	00a08825 	move	s1,a1
    5950:	afa60068 	sw	a2,104(sp)
    5954:	0c000000 	jal	0 <Math3D_PlaneVsLineSegClosestPoint>
    5958:	afa40050 	sw	a0,80(sp)
    595c:	2625000c 	addiu	a1,s1,12
    5960:	e7a0005c 	swc1	$f0,92(sp)
    5964:	afa5004c 	sw	a1,76(sp)
    5968:	0c000000 	jal	0 <Math3D_PlaneVsLineSegClosestPoint>
    596c:	8fa40050 	lw	a0,80(sp)
    5970:	26250018 	addiu	a1,s1,24
    5974:	afa50048 	sw	a1,72(sp)
    5978:	8fa40050 	lw	a0,80(sp)
    597c:	0c000000 	jal	0 <Math3D_PlaneVsLineSegClosestPoint>
    5980:	e7a00058 	swc1	$f0,88(sp)
    5984:	44801000 	mtc1	zero,$f2
    5988:	c7ae005c 	lwc1	$f14,92(sp)
    598c:	c7ac0058 	lwc1	$f12,88(sp)
    5990:	460e103c 	c.lt.s	$f2,$f14
    5994:	00000000 	nop
    5998:	4502000a 	bc1fl	59c4 <Math3D_TriVsTriIntersect+0x90>
    599c:	4602703c 	c.lt.s	$f14,$f2
    59a0:	460c103c 	c.lt.s	$f2,$f12
    59a4:	00000000 	nop
    59a8:	45020006 	bc1fl	59c4 <Math3D_TriVsTriIntersect+0x90>
    59ac:	4602703c 	c.lt.s	$f14,$f2
    59b0:	4600103c 	c.lt.s	$f2,$f0
    59b4:	00000000 	nop
    59b8:	4501000e 	bc1t	59f4 <Math3D_TriVsTriIntersect+0xc0>
    59bc:	00000000 	nop
    59c0:	4602703c 	c.lt.s	$f14,$f2
    59c4:	26240024 	addiu	a0,s1,36
    59c8:	02002825 	move	a1,s0
    59cc:	4500000b 	bc1f	59fc <Math3D_TriVsTriIntersect+0xc8>
    59d0:	00000000 	nop
    59d4:	4602603c 	c.lt.s	$f12,$f2
    59d8:	00000000 	nop
    59dc:	45000007 	bc1f	59fc <Math3D_TriVsTriIntersect+0xc8>
    59e0:	00000000 	nop
    59e4:	4602003c 	c.lt.s	$f0,$f2
    59e8:	00000000 	nop
    59ec:	45000003 	bc1f	59fc <Math3D_TriVsTriIntersect+0xc8>
    59f0:	00000000 	nop
    59f4:	100000a9 	b	5c9c <Math3D_TriVsTriIntersect+0x368>
    59f8:	00001025 	move	v0,zero
    59fc:	0c000000 	jal	0 <Math3D_PlaneVsLineSegClosestPoint>
    5a00:	afa40050 	sw	a0,80(sp)
    5a04:	2605000c 	addiu	a1,s0,12
    5a08:	e7a0005c 	swc1	$f0,92(sp)
    5a0c:	afa50044 	sw	a1,68(sp)
    5a10:	0c000000 	jal	0 <Math3D_PlaneVsLineSegClosestPoint>
    5a14:	8fa40050 	lw	a0,80(sp)
    5a18:	26050018 	addiu	a1,s0,24
    5a1c:	afa50040 	sw	a1,64(sp)
    5a20:	8fa40050 	lw	a0,80(sp)
    5a24:	0c000000 	jal	0 <Math3D_PlaneVsLineSegClosestPoint>
    5a28:	e7a00058 	swc1	$f0,88(sp)
    5a2c:	44801000 	mtc1	zero,$f2
    5a30:	c7a4005c 	lwc1	$f4,92(sp)
    5a34:	c7ac0058 	lwc1	$f12,88(sp)
    5a38:	c7a6005c 	lwc1	$f6,92(sp)
    5a3c:	4604103c 	c.lt.s	$f2,$f4
    5a40:	00000000 	nop
    5a44:	4502000a 	bc1fl	5a70 <Math3D_TriVsTriIntersect+0x13c>
    5a48:	4602303c 	c.lt.s	$f6,$f2
    5a4c:	460c103c 	c.lt.s	$f2,$f12
    5a50:	00000000 	nop
    5a54:	45020006 	bc1fl	5a70 <Math3D_TriVsTriIntersect+0x13c>
    5a58:	4602303c 	c.lt.s	$f6,$f2
    5a5c:	4600103c 	c.lt.s	$f2,$f0
    5a60:	00000000 	nop
    5a64:	4501000e 	bc1t	5aa0 <Math3D_TriVsTriIntersect+0x16c>
    5a68:	00000000 	nop
    5a6c:	4602303c 	c.lt.s	$f6,$f2
    5a70:	02202025 	move	a0,s1
    5a74:	8fa5004c 	lw	a1,76(sp)
    5a78:	4502000c 	bc1fl	5aac <Math3D_TriVsTriIntersect+0x178>
    5a7c:	c6280028 	lwc1	$f8,40(s1)
    5a80:	4602603c 	c.lt.s	$f12,$f2
    5a84:	00000000 	nop
    5a88:	45020008 	bc1fl	5aac <Math3D_TriVsTriIntersect+0x178>
    5a8c:	c6280028 	lwc1	$f8,40(s1)
    5a90:	4602003c 	c.lt.s	$f0,$f2
    5a94:	00000000 	nop
    5a98:	45020004 	bc1fl	5aac <Math3D_TriVsTriIntersect+0x178>
    5a9c:	c6280028 	lwc1	$f8,40(s1)
    5aa0:	1000007e 	b	5c9c <Math3D_TriVsTriIntersect+0x368>
    5aa4:	00001025 	move	v0,zero
    5aa8:	c6280028 	lwc1	$f8,40(s1)
    5aac:	8e270024 	lw	a3,36(s1)
    5ab0:	8fae0044 	lw	t6,68(sp)
    5ab4:	e7a80010 	swc1	$f8,16(sp)
    5ab8:	c62a002c 	lwc1	$f10,44(s1)
    5abc:	8faf0068 	lw	t7,104(sp)
    5ac0:	8fa60048 	lw	a2,72(sp)
    5ac4:	e7aa0014 	swc1	$f10,20(sp)
    5ac8:	c6300030 	lwc1	$f16,48(s1)
    5acc:	afa00028 	sw	zero,40(sp)
    5ad0:	afb0001c 	sw	s0,28(sp)
    5ad4:	afae0020 	sw	t6,32(sp)
    5ad8:	afaf0024 	sw	t7,36(sp)
    5adc:	0c000000 	jal	0 <Math3D_PlaneVsLineSegClosestPoint>
    5ae0:	e7b00018 	swc1	$f16,24(sp)
    5ae4:	10400003 	beqz	v0,5af4 <Math3D_TriVsTriIntersect+0x1c0>
    5ae8:	02202025 	move	a0,s1
    5aec:	1000006b 	b	5c9c <Math3D_TriVsTriIntersect+0x368>
    5af0:	24020001 	li	v0,1
    5af4:	c6320028 	lwc1	$f18,40(s1)
    5af8:	8e270024 	lw	a3,36(s1)
    5afc:	8fb80044 	lw	t8,68(sp)
    5b00:	e7b20010 	swc1	$f18,16(sp)
    5b04:	c624002c 	lwc1	$f4,44(s1)
    5b08:	8fb90040 	lw	t9,64(sp)
    5b0c:	8fa80068 	lw	t0,104(sp)
    5b10:	e7a40014 	swc1	$f4,20(sp)
    5b14:	c6260030 	lwc1	$f6,48(s1)
    5b18:	afa00028 	sw	zero,40(sp)
    5b1c:	8fa5004c 	lw	a1,76(sp)
    5b20:	8fa60048 	lw	a2,72(sp)
    5b24:	afb8001c 	sw	t8,28(sp)
    5b28:	afb90020 	sw	t9,32(sp)
    5b2c:	afa80024 	sw	t0,36(sp)
    5b30:	0c000000 	jal	0 <Math3D_PlaneVsLineSegClosestPoint>
    5b34:	e7a60018 	swc1	$f6,24(sp)
    5b38:	10400003 	beqz	v0,5b48 <Math3D_TriVsTriIntersect+0x214>
    5b3c:	02202025 	move	a0,s1
    5b40:	10000056 	b	5c9c <Math3D_TriVsTriIntersect+0x368>
    5b44:	24020001 	li	v0,1
    5b48:	c6280028 	lwc1	$f8,40(s1)
    5b4c:	8e270024 	lw	a3,36(s1)
    5b50:	8fa90040 	lw	t1,64(sp)
    5b54:	e7a80010 	swc1	$f8,16(sp)
    5b58:	c62a002c 	lwc1	$f10,44(s1)
    5b5c:	8faa0068 	lw	t2,104(sp)
    5b60:	8fa5004c 	lw	a1,76(sp)
    5b64:	e7aa0014 	swc1	$f10,20(sp)
    5b68:	c6300030 	lwc1	$f16,48(s1)
    5b6c:	afa00028 	sw	zero,40(sp)
    5b70:	afb00020 	sw	s0,32(sp)
    5b74:	8fa60048 	lw	a2,72(sp)
    5b78:	afa9001c 	sw	t1,28(sp)
    5b7c:	afaa0024 	sw	t2,36(sp)
    5b80:	0c000000 	jal	0 <Math3D_PlaneVsLineSegClosestPoint>
    5b84:	e7b00018 	swc1	$f16,24(sp)
    5b88:	10400003 	beqz	v0,5b98 <Math3D_TriVsTriIntersect+0x264>
    5b8c:	02002025 	move	a0,s0
    5b90:	10000042 	b	5c9c <Math3D_TriVsTriIntersect+0x368>
    5b94:	24020001 	li	v0,1
    5b98:	c6120028 	lwc1	$f18,40(s0)
    5b9c:	8e070024 	lw	a3,36(s0)
    5ba0:	8fab004c 	lw	t3,76(sp)
    5ba4:	e7b20010 	swc1	$f18,16(sp)
    5ba8:	c604002c 	lwc1	$f4,44(s0)
    5bac:	8fac0068 	lw	t4,104(sp)
    5bb0:	8fa50044 	lw	a1,68(sp)
    5bb4:	e7a40014 	swc1	$f4,20(sp)
    5bb8:	c6060030 	lwc1	$f6,48(s0)
    5bbc:	afa00028 	sw	zero,40(sp)
    5bc0:	afb1001c 	sw	s1,28(sp)
    5bc4:	8fa60040 	lw	a2,64(sp)
    5bc8:	afab0020 	sw	t3,32(sp)
    5bcc:	afac0024 	sw	t4,36(sp)
    5bd0:	0c000000 	jal	0 <Math3D_PlaneVsLineSegClosestPoint>
    5bd4:	e7a60018 	swc1	$f6,24(sp)
    5bd8:	24010001 	li	at,1
    5bdc:	14410003 	bne	v0,at,5bec <Math3D_TriVsTriIntersect+0x2b8>
    5be0:	02002025 	move	a0,s0
    5be4:	1000002d 	b	5c9c <Math3D_TriVsTriIntersect+0x368>
    5be8:	24020001 	li	v0,1
    5bec:	c6080028 	lwc1	$f8,40(s0)
    5bf0:	8e070024 	lw	a3,36(s0)
    5bf4:	8fad004c 	lw	t5,76(sp)
    5bf8:	e7a80010 	swc1	$f8,16(sp)
    5bfc:	c60a002c 	lwc1	$f10,44(s0)
    5c00:	8fae0048 	lw	t6,72(sp)
    5c04:	8faf0068 	lw	t7,104(sp)
    5c08:	e7aa0014 	swc1	$f10,20(sp)
    5c0c:	c6100030 	lwc1	$f16,48(s0)
    5c10:	afa00028 	sw	zero,40(sp)
    5c14:	8fa50044 	lw	a1,68(sp)
    5c18:	8fa60040 	lw	a2,64(sp)
    5c1c:	afad001c 	sw	t5,28(sp)
    5c20:	afae0020 	sw	t6,32(sp)
    5c24:	afaf0024 	sw	t7,36(sp)
    5c28:	0c000000 	jal	0 <Math3D_PlaneVsLineSegClosestPoint>
    5c2c:	e7b00018 	swc1	$f16,24(sp)
    5c30:	24010001 	li	at,1
    5c34:	14410003 	bne	v0,at,5c44 <Math3D_TriVsTriIntersect+0x310>
    5c38:	02002025 	move	a0,s0
    5c3c:	10000017 	b	5c9c <Math3D_TriVsTriIntersect+0x368>
    5c40:	24020001 	li	v0,1
    5c44:	c6120028 	lwc1	$f18,40(s0)
    5c48:	8e070024 	lw	a3,36(s0)
    5c4c:	8fb80048 	lw	t8,72(sp)
    5c50:	e7b20010 	swc1	$f18,16(sp)
    5c54:	c604002c 	lwc1	$f4,44(s0)
    5c58:	8fb90068 	lw	t9,104(sp)
    5c5c:	8fa50044 	lw	a1,68(sp)
    5c60:	e7a40014 	swc1	$f4,20(sp)
    5c64:	c6060030 	lwc1	$f6,48(s0)
    5c68:	afa00028 	sw	zero,40(sp)
    5c6c:	afb10020 	sw	s1,32(sp)
    5c70:	8fa60040 	lw	a2,64(sp)
    5c74:	afb8001c 	sw	t8,28(sp)
    5c78:	afb90024 	sw	t9,36(sp)
    5c7c:	0c000000 	jal	0 <Math3D_PlaneVsLineSegClosestPoint>
    5c80:	e7a60018 	swc1	$f6,24(sp)
    5c84:	24010001 	li	at,1
    5c88:	54410004 	bnel	v0,at,5c9c <Math3D_TriVsTriIntersect+0x368>
    5c8c:	00001025 	move	v0,zero
    5c90:	10000002 	b	5c9c <Math3D_TriVsTriIntersect+0x368>
    5c94:	24020001 	li	v0,1
    5c98:	00001025 	move	v0,zero
    5c9c:	8fbf003c 	lw	ra,60(sp)
    5ca0:	8fb00034 	lw	s0,52(sp)
    5ca4:	8fb10038 	lw	s1,56(sp)
    5ca8:	03e00008 	jr	ra
    5cac:	27bd0060 	addiu	sp,sp,96

00005cb0 <Math3D_XZInSphere>:
    5cb0:	848e0000 	lh	t6,0(a0)
    5cb4:	848f0004 	lh	t7,4(a0)
    5cb8:	84820006 	lh	v0,6(a0)
    5cbc:	448e2000 	mtc1	t6,$f4
    5cc0:	448f4000 	mtc1	t7,$f8
    5cc4:	44856000 	mtc1	a1,$f12
    5cc8:	468021a0 	cvt.s.w	$f6,$f4
    5ccc:	00420019 	multu	v0,v0
    5cd0:	44867000 	mtc1	a2,$f14
    5cd4:	00001025 	move	v0,zero
    5cd8:	468042a0 	cvt.s.w	$f10,$f8
    5cdc:	460c3001 	sub.s	$f0,$f6,$f12
    5ce0:	0000c012 	mflo	t8
    5ce4:	44988000 	mtc1	t8,$f16
    5ce8:	460e5081 	sub.s	$f2,$f10,$f14
    5cec:	46000102 	mul.s	$f4,$f0,$f0
    5cf0:	00000000 	nop
    5cf4:	46021182 	mul.s	$f6,$f2,$f2
    5cf8:	468084a0 	cvt.s.w	$f18,$f16
    5cfc:	46062200 	add.s	$f8,$f4,$f6
    5d00:	4612403e 	c.le.s	$f8,$f18
    5d04:	00000000 	nop
    5d08:	45000003 	bc1f	5d18 <Math3D_XZInSphere+0x68>
    5d0c:	00000000 	nop
    5d10:	03e00008 	jr	ra
    5d14:	24020001 	li	v0,1
    5d18:	03e00008 	jr	ra
    5d1c:	00000000 	nop

00005d20 <Math3D_XYInSphere>:
    5d20:	848e0000 	lh	t6,0(a0)
    5d24:	848f0002 	lh	t7,2(a0)
    5d28:	84820006 	lh	v0,6(a0)
    5d2c:	448e2000 	mtc1	t6,$f4
    5d30:	448f4000 	mtc1	t7,$f8
    5d34:	44856000 	mtc1	a1,$f12
    5d38:	468021a0 	cvt.s.w	$f6,$f4
    5d3c:	00420019 	multu	v0,v0
    5d40:	44867000 	mtc1	a2,$f14
    5d44:	00001025 	move	v0,zero
    5d48:	468042a0 	cvt.s.w	$f10,$f8
    5d4c:	460c3001 	sub.s	$f0,$f6,$f12
    5d50:	0000c012 	mflo	t8
    5d54:	44988000 	mtc1	t8,$f16
    5d58:	460e5081 	sub.s	$f2,$f10,$f14
    5d5c:	46000102 	mul.s	$f4,$f0,$f0
    5d60:	00000000 	nop
    5d64:	46021182 	mul.s	$f6,$f2,$f2
    5d68:	468084a0 	cvt.s.w	$f18,$f16
    5d6c:	46062200 	add.s	$f8,$f4,$f6
    5d70:	4612403e 	c.le.s	$f8,$f18
    5d74:	00000000 	nop
    5d78:	45000003 	bc1f	5d88 <Math3D_XYInSphere+0x68>
    5d7c:	00000000 	nop
    5d80:	03e00008 	jr	ra
    5d84:	24020001 	li	v0,1
    5d88:	03e00008 	jr	ra
    5d8c:	00000000 	nop

00005d90 <Math3D_YZInSphere>:
    5d90:	848e0002 	lh	t6,2(a0)
    5d94:	848f0004 	lh	t7,4(a0)
    5d98:	84820006 	lh	v0,6(a0)
    5d9c:	448e2000 	mtc1	t6,$f4
    5da0:	448f4000 	mtc1	t7,$f8
    5da4:	44856000 	mtc1	a1,$f12
    5da8:	468021a0 	cvt.s.w	$f6,$f4
    5dac:	00420019 	multu	v0,v0
    5db0:	44867000 	mtc1	a2,$f14
    5db4:	00001025 	move	v0,zero
    5db8:	468042a0 	cvt.s.w	$f10,$f8
    5dbc:	460c3001 	sub.s	$f0,$f6,$f12
    5dc0:	0000c012 	mflo	t8
    5dc4:	44988000 	mtc1	t8,$f16
    5dc8:	460e5081 	sub.s	$f2,$f10,$f14
    5dcc:	46000102 	mul.s	$f4,$f0,$f0
    5dd0:	00000000 	nop
    5dd4:	46021182 	mul.s	$f6,$f2,$f2
    5dd8:	468084a0 	cvt.s.w	$f18,$f16
    5ddc:	46062200 	add.s	$f8,$f4,$f6
    5de0:	4612403e 	c.le.s	$f8,$f18
    5de4:	00000000 	nop
    5de8:	45000003 	bc1f	5df8 <Math3D_YZInSphere+0x68>
    5dec:	00000000 	nop
    5df0:	03e00008 	jr	ra
    5df4:	24020001 	li	v0,1
    5df8:	03e00008 	jr	ra
    5dfc:	00000000 	nop

00005e00 <Math3D_DrawSphere>:
    5e00:	afa40000 	sw	a0,0(sp)
    5e04:	03e00008 	jr	ra
    5e08:	afa50004 	sw	a1,4(sp)

00005e0c <Math3D_DrawCylinder>:
    5e0c:	afa40000 	sw	a0,0(sp)
    5e10:	03e00008 	jr	ra
    5e14:	afa50004 	sw	a1,4(sp)
	...
