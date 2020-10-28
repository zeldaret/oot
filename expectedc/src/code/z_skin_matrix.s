
build/src/code/z_skin_matrix.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <SkinMatrix_Vec3fMtxFMultXYZW>:
       0:	c4a40000 	lwc1	$f4,0(a1)
       4:	c4860000 	lwc1	$f6,0(a0)
       8:	c4aa0004 	lwc1	$f10,4(a1)
       c:	c4900010 	lwc1	$f16,16(a0)
      10:	46062202 	mul.s	$f8,$f4,$f6
      14:	c4a60008 	lwc1	$f6,8(a1)
      18:	46105482 	mul.s	$f18,$f10,$f16
      1c:	c48a0020 	lwc1	$f10,32(a0)
      20:	460a3402 	mul.s	$f16,$f6,$f10
      24:	46124100 	add.s	$f4,$f8,$f18
      28:	c4920030 	lwc1	$f18,48(a0)
      2c:	46102200 	add.s	$f8,$f4,$f16
      30:	46089180 	add.s	$f6,$f18,$f8
      34:	e4c60000 	swc1	$f6,0(a2)
      38:	c4aa0000 	lwc1	$f10,0(a1)
      3c:	c4840004 	lwc1	$f4,4(a0)
      40:	c4b20004 	lwc1	$f18,4(a1)
      44:	c4880014 	lwc1	$f8,20(a0)
      48:	46045402 	mul.s	$f16,$f10,$f4
      4c:	c4a40008 	lwc1	$f4,8(a1)
      50:	46089182 	mul.s	$f6,$f18,$f8
      54:	c4920024 	lwc1	$f18,36(a0)
      58:	46122202 	mul.s	$f8,$f4,$f18
      5c:	46068280 	add.s	$f10,$f16,$f6
      60:	c4860034 	lwc1	$f6,52(a0)
      64:	46085400 	add.s	$f16,$f10,$f8
      68:	46103100 	add.s	$f4,$f6,$f16
      6c:	e4c40004 	swc1	$f4,4(a2)
      70:	c4b20000 	lwc1	$f18,0(a1)
      74:	c48a0008 	lwc1	$f10,8(a0)
      78:	c4a60004 	lwc1	$f6,4(a1)
      7c:	c4900018 	lwc1	$f16,24(a0)
      80:	460a9202 	mul.s	$f8,$f18,$f10
      84:	c4aa0008 	lwc1	$f10,8(a1)
      88:	46103102 	mul.s	$f4,$f6,$f16
      8c:	c4860028 	lwc1	$f6,40(a0)
      90:	46065402 	mul.s	$f16,$f10,$f6
      94:	46044480 	add.s	$f18,$f8,$f4
      98:	c4840038 	lwc1	$f4,56(a0)
      9c:	46109200 	add.s	$f8,$f18,$f16
      a0:	46082280 	add.s	$f10,$f4,$f8
      a4:	e4ca0008 	swc1	$f10,8(a2)
      a8:	c492000c 	lwc1	$f18,12(a0)
      ac:	c4a60000 	lwc1	$f6,0(a1)
      b0:	c488001c 	lwc1	$f8,28(a0)
      b4:	c4a40004 	lwc1	$f4,4(a1)
      b8:	46123402 	mul.s	$f16,$f6,$f18
      bc:	c4b20008 	lwc1	$f18,8(a1)
      c0:	46082282 	mul.s	$f10,$f4,$f8
      c4:	c484002c 	lwc1	$f4,44(a0)
      c8:	46049202 	mul.s	$f8,$f18,$f4
      cc:	460a8180 	add.s	$f6,$f16,$f10
      d0:	c48a003c 	lwc1	$f10,60(a0)
      d4:	46083400 	add.s	$f16,$f6,$f8
      d8:	46105480 	add.s	$f18,$f10,$f16
      dc:	03e00008 	jr	ra
      e0:	e4f20000 	swc1	$f18,0(a3)

000000e4 <SkinMatrix_Vec3fMtxFMultXYZ>:
      e4:	c4800000 	lwc1	$f0,0(a0)
      e8:	c4a40000 	lwc1	$f4,0(a1)
      ec:	c4820010 	lwc1	$f2,16(a0)
      f0:	c4a80004 	lwc1	$f8,4(a1)
      f4:	46002182 	mul.s	$f6,$f4,$f0
      f8:	c48c0020 	lwc1	$f12,32(a0)
      fc:	c4b20008 	lwc1	$f18,8(a1)
     100:	46024282 	mul.s	$f10,$f8,$f2
     104:	c48e0030 	lwc1	$f14,48(a0)
     108:	460c9102 	mul.s	$f4,$f18,$f12
     10c:	460a3400 	add.s	$f16,$f6,$f10
     110:	46048200 	add.s	$f8,$f16,$f4
     114:	460e4180 	add.s	$f6,$f8,$f14
     118:	e4c60000 	swc1	$f6,0(a2)
     11c:	c4800004 	lwc1	$f0,4(a0)
     120:	c4aa0000 	lwc1	$f10,0(a1)
     124:	c4820014 	lwc1	$f2,20(a0)
     128:	c4b00004 	lwc1	$f16,4(a1)
     12c:	46005482 	mul.s	$f18,$f10,$f0
     130:	c48c0024 	lwc1	$f12,36(a0)
     134:	c4a60008 	lwc1	$f6,8(a1)
     138:	46028102 	mul.s	$f4,$f16,$f2
     13c:	c48e0034 	lwc1	$f14,52(a0)
     140:	460c3282 	mul.s	$f10,$f6,$f12
     144:	46049200 	add.s	$f8,$f18,$f4
     148:	460a4400 	add.s	$f16,$f8,$f10
     14c:	460e8480 	add.s	$f18,$f16,$f14
     150:	e4d20004 	swc1	$f18,4(a2)
     154:	c4800008 	lwc1	$f0,8(a0)
     158:	c4a40000 	lwc1	$f4,0(a1)
     15c:	c4820018 	lwc1	$f2,24(a0)
     160:	c4a80004 	lwc1	$f8,4(a1)
     164:	46002182 	mul.s	$f6,$f4,$f0
     168:	c48c0028 	lwc1	$f12,40(a0)
     16c:	c4b20008 	lwc1	$f18,8(a1)
     170:	46024282 	mul.s	$f10,$f8,$f2
     174:	c48e0038 	lwc1	$f14,56(a0)
     178:	460c9102 	mul.s	$f4,$f18,$f12
     17c:	460a3400 	add.s	$f16,$f6,$f10
     180:	46048200 	add.s	$f8,$f16,$f4
     184:	460e4180 	add.s	$f6,$f8,$f14
     188:	03e00008 	jr	ra
     18c:	e4c60008 	swc1	$f6,8(a2)

00000190 <SkinMatrix_MtxFMtxFMult>:
     190:	27bdffe8 	addiu	sp,sp,-24
     194:	f7b60010 	sdc1	$f22,16(sp)
     198:	f7b40008 	sdc1	$f20,8(sp)
     19c:	c4800000 	lwc1	$f0,0(a0)
     1a0:	c4b00000 	lwc1	$f16,0(a1)
     1a4:	c4820010 	lwc1	$f2,16(a0)
     1a8:	c4b20004 	lwc1	$f18,4(a1)
     1ac:	46100102 	mul.s	$f4,$f0,$f16
     1b0:	c48c0020 	lwc1	$f12,32(a0)
     1b4:	c4b40008 	lwc1	$f20,8(a1)
     1b8:	46121182 	mul.s	$f6,$f2,$f18
     1bc:	c48e0030 	lwc1	$f14,48(a0)
     1c0:	c4b6000c 	lwc1	$f22,12(a1)
     1c4:	46146282 	mul.s	$f10,$f12,$f20
     1c8:	46062200 	add.s	$f8,$f4,$f6
     1cc:	46167182 	mul.s	$f6,$f14,$f22
     1d0:	460a4100 	add.s	$f4,$f8,$f10
     1d4:	46062200 	add.s	$f8,$f4,$f6
     1d8:	e4c80000 	swc1	$f8,0(a2)
     1dc:	c4b00010 	lwc1	$f16,16(a1)
     1e0:	c4b20014 	lwc1	$f18,20(a1)
     1e4:	c4b40018 	lwc1	$f20,24(a1)
     1e8:	46100282 	mul.s	$f10,$f0,$f16
     1ec:	c4b6001c 	lwc1	$f22,28(a1)
     1f0:	46121102 	mul.s	$f4,$f2,$f18
     1f4:	46045180 	add.s	$f6,$f10,$f4
     1f8:	46146202 	mul.s	$f8,$f12,$f20
     1fc:	46083280 	add.s	$f10,$f6,$f8
     200:	46167102 	mul.s	$f4,$f14,$f22
     204:	46045180 	add.s	$f6,$f10,$f4
     208:	e4c60010 	swc1	$f6,16(a2)
     20c:	c4b00020 	lwc1	$f16,32(a1)
     210:	c4b20024 	lwc1	$f18,36(a1)
     214:	c4b40028 	lwc1	$f20,40(a1)
     218:	46100202 	mul.s	$f8,$f0,$f16
     21c:	c4b6002c 	lwc1	$f22,44(a1)
     220:	46121282 	mul.s	$f10,$f2,$f18
     224:	460a4100 	add.s	$f4,$f8,$f10
     228:	46146182 	mul.s	$f6,$f12,$f20
     22c:	46062200 	add.s	$f8,$f4,$f6
     230:	46167282 	mul.s	$f10,$f14,$f22
     234:	460a4100 	add.s	$f4,$f8,$f10
     238:	e4c40020 	swc1	$f4,32(a2)
     23c:	c4b00030 	lwc1	$f16,48(a1)
     240:	c4b20034 	lwc1	$f18,52(a1)
     244:	c4b40038 	lwc1	$f20,56(a1)
     248:	46100182 	mul.s	$f6,$f0,$f16
     24c:	c4b6003c 	lwc1	$f22,60(a1)
     250:	46121202 	mul.s	$f8,$f2,$f18
     254:	46083280 	add.s	$f10,$f6,$f8
     258:	46146102 	mul.s	$f4,$f12,$f20
     25c:	46045180 	add.s	$f6,$f10,$f4
     260:	46167202 	mul.s	$f8,$f14,$f22
     264:	46083280 	add.s	$f10,$f6,$f8
     268:	e4ca0030 	swc1	$f10,48(a2)
     26c:	c4800004 	lwc1	$f0,4(a0)
     270:	c4b00000 	lwc1	$f16,0(a1)
     274:	c4820014 	lwc1	$f2,20(a0)
     278:	c4b20004 	lwc1	$f18,4(a1)
     27c:	46100102 	mul.s	$f4,$f0,$f16
     280:	c48c0024 	lwc1	$f12,36(a0)
     284:	c4b40008 	lwc1	$f20,8(a1)
     288:	46121182 	mul.s	$f6,$f2,$f18
     28c:	c48e0034 	lwc1	$f14,52(a0)
     290:	c4b6000c 	lwc1	$f22,12(a1)
     294:	46146282 	mul.s	$f10,$f12,$f20
     298:	46062200 	add.s	$f8,$f4,$f6
     29c:	46167182 	mul.s	$f6,$f14,$f22
     2a0:	460a4100 	add.s	$f4,$f8,$f10
     2a4:	46062200 	add.s	$f8,$f4,$f6
     2a8:	e4c80004 	swc1	$f8,4(a2)
     2ac:	c4b00010 	lwc1	$f16,16(a1)
     2b0:	c4b20014 	lwc1	$f18,20(a1)
     2b4:	c4b40018 	lwc1	$f20,24(a1)
     2b8:	46100282 	mul.s	$f10,$f0,$f16
     2bc:	c4b6001c 	lwc1	$f22,28(a1)
     2c0:	46121102 	mul.s	$f4,$f2,$f18
     2c4:	46045180 	add.s	$f6,$f10,$f4
     2c8:	46146202 	mul.s	$f8,$f12,$f20
     2cc:	46083280 	add.s	$f10,$f6,$f8
     2d0:	46167102 	mul.s	$f4,$f14,$f22
     2d4:	46045180 	add.s	$f6,$f10,$f4
     2d8:	e4c60014 	swc1	$f6,20(a2)
     2dc:	c4b00020 	lwc1	$f16,32(a1)
     2e0:	c4b20024 	lwc1	$f18,36(a1)
     2e4:	c4b40028 	lwc1	$f20,40(a1)
     2e8:	46100202 	mul.s	$f8,$f0,$f16
     2ec:	c4b6002c 	lwc1	$f22,44(a1)
     2f0:	46121282 	mul.s	$f10,$f2,$f18
     2f4:	460a4100 	add.s	$f4,$f8,$f10
     2f8:	46146182 	mul.s	$f6,$f12,$f20
     2fc:	46062200 	add.s	$f8,$f4,$f6
     300:	46167282 	mul.s	$f10,$f14,$f22
     304:	460a4100 	add.s	$f4,$f8,$f10
     308:	e4c40024 	swc1	$f4,36(a2)
     30c:	c4b00030 	lwc1	$f16,48(a1)
     310:	c4b20034 	lwc1	$f18,52(a1)
     314:	c4b40038 	lwc1	$f20,56(a1)
     318:	46100182 	mul.s	$f6,$f0,$f16
     31c:	c4b6003c 	lwc1	$f22,60(a1)
     320:	46121202 	mul.s	$f8,$f2,$f18
     324:	46083280 	add.s	$f10,$f6,$f8
     328:	46146102 	mul.s	$f4,$f12,$f20
     32c:	46045180 	add.s	$f6,$f10,$f4
     330:	46167202 	mul.s	$f8,$f14,$f22
     334:	46083280 	add.s	$f10,$f6,$f8
     338:	e4ca0034 	swc1	$f10,52(a2)
     33c:	c4800008 	lwc1	$f0,8(a0)
     340:	c4b00000 	lwc1	$f16,0(a1)
     344:	c4820018 	lwc1	$f2,24(a0)
     348:	c4b20004 	lwc1	$f18,4(a1)
     34c:	46100102 	mul.s	$f4,$f0,$f16
     350:	c48c0028 	lwc1	$f12,40(a0)
     354:	c4b40008 	lwc1	$f20,8(a1)
     358:	46121182 	mul.s	$f6,$f2,$f18
     35c:	c48e0038 	lwc1	$f14,56(a0)
     360:	c4b6000c 	lwc1	$f22,12(a1)
     364:	46146282 	mul.s	$f10,$f12,$f20
     368:	46062200 	add.s	$f8,$f4,$f6
     36c:	46167182 	mul.s	$f6,$f14,$f22
     370:	460a4100 	add.s	$f4,$f8,$f10
     374:	46062200 	add.s	$f8,$f4,$f6
     378:	e4c80008 	swc1	$f8,8(a2)
     37c:	c4b00010 	lwc1	$f16,16(a1)
     380:	c4b20014 	lwc1	$f18,20(a1)
     384:	c4b40018 	lwc1	$f20,24(a1)
     388:	46100282 	mul.s	$f10,$f0,$f16
     38c:	c4b6001c 	lwc1	$f22,28(a1)
     390:	46121102 	mul.s	$f4,$f2,$f18
     394:	46045180 	add.s	$f6,$f10,$f4
     398:	46146202 	mul.s	$f8,$f12,$f20
     39c:	46083280 	add.s	$f10,$f6,$f8
     3a0:	46167102 	mul.s	$f4,$f14,$f22
     3a4:	46045180 	add.s	$f6,$f10,$f4
     3a8:	e4c60018 	swc1	$f6,24(a2)
     3ac:	c4b00020 	lwc1	$f16,32(a1)
     3b0:	c4b20024 	lwc1	$f18,36(a1)
     3b4:	c4b40028 	lwc1	$f20,40(a1)
     3b8:	46100202 	mul.s	$f8,$f0,$f16
     3bc:	c4b6002c 	lwc1	$f22,44(a1)
     3c0:	46121282 	mul.s	$f10,$f2,$f18
     3c4:	460a4100 	add.s	$f4,$f8,$f10
     3c8:	46146182 	mul.s	$f6,$f12,$f20
     3cc:	46062200 	add.s	$f8,$f4,$f6
     3d0:	46167282 	mul.s	$f10,$f14,$f22
     3d4:	460a4100 	add.s	$f4,$f8,$f10
     3d8:	e4c40028 	swc1	$f4,40(a2)
     3dc:	c4b00030 	lwc1	$f16,48(a1)
     3e0:	c4b20034 	lwc1	$f18,52(a1)
     3e4:	c4b40038 	lwc1	$f20,56(a1)
     3e8:	46100182 	mul.s	$f6,$f0,$f16
     3ec:	c4b6003c 	lwc1	$f22,60(a1)
     3f0:	46121202 	mul.s	$f8,$f2,$f18
     3f4:	46083280 	add.s	$f10,$f6,$f8
     3f8:	46146102 	mul.s	$f4,$f12,$f20
     3fc:	46045180 	add.s	$f6,$f10,$f4
     400:	46167202 	mul.s	$f8,$f14,$f22
     404:	46083280 	add.s	$f10,$f6,$f8
     408:	e4ca0038 	swc1	$f10,56(a2)
     40c:	c480000c 	lwc1	$f0,12(a0)
     410:	c4b00000 	lwc1	$f16,0(a1)
     414:	c482001c 	lwc1	$f2,28(a0)
     418:	c4b20004 	lwc1	$f18,4(a1)
     41c:	46100102 	mul.s	$f4,$f0,$f16
     420:	c48c002c 	lwc1	$f12,44(a0)
     424:	c4b40008 	lwc1	$f20,8(a1)
     428:	46121182 	mul.s	$f6,$f2,$f18
     42c:	c48e003c 	lwc1	$f14,60(a0)
     430:	c4b6000c 	lwc1	$f22,12(a1)
     434:	46146282 	mul.s	$f10,$f12,$f20
     438:	46062200 	add.s	$f8,$f4,$f6
     43c:	46167182 	mul.s	$f6,$f14,$f22
     440:	460a4100 	add.s	$f4,$f8,$f10
     444:	46062200 	add.s	$f8,$f4,$f6
     448:	e4c8000c 	swc1	$f8,12(a2)
     44c:	c4b00010 	lwc1	$f16,16(a1)
     450:	c4b20014 	lwc1	$f18,20(a1)
     454:	c4b40018 	lwc1	$f20,24(a1)
     458:	46100282 	mul.s	$f10,$f0,$f16
     45c:	c4b6001c 	lwc1	$f22,28(a1)
     460:	46121102 	mul.s	$f4,$f2,$f18
     464:	46045180 	add.s	$f6,$f10,$f4
     468:	46146202 	mul.s	$f8,$f12,$f20
     46c:	46083280 	add.s	$f10,$f6,$f8
     470:	46167102 	mul.s	$f4,$f14,$f22
     474:	46045180 	add.s	$f6,$f10,$f4
     478:	e4c6001c 	swc1	$f6,28(a2)
     47c:	c4b00020 	lwc1	$f16,32(a1)
     480:	c4b20024 	lwc1	$f18,36(a1)
     484:	c4b40028 	lwc1	$f20,40(a1)
     488:	46100202 	mul.s	$f8,$f0,$f16
     48c:	c4b6002c 	lwc1	$f22,44(a1)
     490:	46121282 	mul.s	$f10,$f2,$f18
     494:	460a4100 	add.s	$f4,$f8,$f10
     498:	46146182 	mul.s	$f6,$f12,$f20
     49c:	46062200 	add.s	$f8,$f4,$f6
     4a0:	46167282 	mul.s	$f10,$f14,$f22
     4a4:	460a4100 	add.s	$f4,$f8,$f10
     4a8:	e4c4002c 	swc1	$f4,44(a2)
     4ac:	c4b00030 	lwc1	$f16,48(a1)
     4b0:	c4b20034 	lwc1	$f18,52(a1)
     4b4:	c4b40038 	lwc1	$f20,56(a1)
     4b8:	46100182 	mul.s	$f6,$f0,$f16
     4bc:	c4b6003c 	lwc1	$f22,60(a1)
     4c0:	46121202 	mul.s	$f8,$f2,$f18
     4c4:	46083280 	add.s	$f10,$f6,$f8
     4c8:	46146102 	mul.s	$f4,$f12,$f20
     4cc:	46045180 	add.s	$f6,$f10,$f4
     4d0:	46167202 	mul.s	$f8,$f14,$f22
     4d4:	46083280 	add.s	$f10,$f6,$f8
     4d8:	e4ca003c 	swc1	$f10,60(a2)
     4dc:	d7b60010 	ldc1	$f22,16(sp)
     4e0:	d7b40008 	ldc1	$f20,8(sp)
     4e4:	03e00008 	jr	ra
     4e8:	27bd0018 	addiu	sp,sp,24

000004ec <SkinMatrix_GetClear>:
     4ec:	3c0e0000 	lui	t6,0x0
     4f0:	25ce0000 	addiu	t6,t6,0
     4f4:	03e00008 	jr	ra
     4f8:	ac8e0000 	sw	t6,0(a0)

000004fc <SkinMatrix_Clear>:
     4fc:	44801000 	mtc1	zero,$f2
     500:	3c013f80 	lui	at,0x3f80
     504:	44810000 	mtc1	at,$f0
     508:	e4820004 	swc1	$f2,4(a0)
     50c:	e4820008 	swc1	$f2,8(a0)
     510:	e482000c 	swc1	$f2,12(a0)
     514:	e4820010 	swc1	$f2,16(a0)
     518:	e4820018 	swc1	$f2,24(a0)
     51c:	e482001c 	swc1	$f2,28(a0)
     520:	e4820020 	swc1	$f2,32(a0)
     524:	e4820024 	swc1	$f2,36(a0)
     528:	e482002c 	swc1	$f2,44(a0)
     52c:	e4820030 	swc1	$f2,48(a0)
     530:	e4820034 	swc1	$f2,52(a0)
     534:	e4820038 	swc1	$f2,56(a0)
     538:	e4800000 	swc1	$f0,0(a0)
     53c:	e4800014 	swc1	$f0,20(a0)
     540:	e4800028 	swc1	$f0,40(a0)
     544:	03e00008 	jr	ra
     548:	e480003c 	swc1	$f0,60(a0)

0000054c <SkinMatrix_MtxFCopy>:
     54c:	c4840000 	lwc1	$f4,0(a0)
     550:	e4a40000 	swc1	$f4,0(a1)
     554:	c4860004 	lwc1	$f6,4(a0)
     558:	e4a60004 	swc1	$f6,4(a1)
     55c:	c4880008 	lwc1	$f8,8(a0)
     560:	e4a80008 	swc1	$f8,8(a1)
     564:	c48a000c 	lwc1	$f10,12(a0)
     568:	e4aa000c 	swc1	$f10,12(a1)
     56c:	c4900010 	lwc1	$f16,16(a0)
     570:	e4b00010 	swc1	$f16,16(a1)
     574:	c4920014 	lwc1	$f18,20(a0)
     578:	e4b20014 	swc1	$f18,20(a1)
     57c:	c4840018 	lwc1	$f4,24(a0)
     580:	e4a40018 	swc1	$f4,24(a1)
     584:	c486001c 	lwc1	$f6,28(a0)
     588:	e4a6001c 	swc1	$f6,28(a1)
     58c:	c4880020 	lwc1	$f8,32(a0)
     590:	e4a80020 	swc1	$f8,32(a1)
     594:	c48a0024 	lwc1	$f10,36(a0)
     598:	e4aa0024 	swc1	$f10,36(a1)
     59c:	c4900028 	lwc1	$f16,40(a0)
     5a0:	e4b00028 	swc1	$f16,40(a1)
     5a4:	c492002c 	lwc1	$f18,44(a0)
     5a8:	e4b2002c 	swc1	$f18,44(a1)
     5ac:	c4840030 	lwc1	$f4,48(a0)
     5b0:	e4a40030 	swc1	$f4,48(a1)
     5b4:	c4860034 	lwc1	$f6,52(a0)
     5b8:	e4a60034 	swc1	$f6,52(a1)
     5bc:	c4880038 	lwc1	$f8,56(a0)
     5c0:	e4a80038 	swc1	$f8,56(a1)
     5c4:	c48a003c 	lwc1	$f10,60(a0)
     5c8:	03e00008 	jr	ra
     5cc:	e4aa003c 	swc1	$f10,60(a1)

000005d0 <SkinMatrix_Invert>:
     5d0:	27bdff48 	addiu	sp,sp,-184
     5d4:	afb40028 	sw	s4,40(sp)
     5d8:	afb30024 	sw	s3,36(sp)
     5dc:	00a09825 	move	s3,a1
     5e0:	27b40078 	addiu	s4,sp,120
     5e4:	afbf002c 	sw	ra,44(sp)
     5e8:	afb20020 	sw	s2,32(sp)
     5ec:	afb1001c 	sw	s1,28(sp)
     5f0:	afb00018 	sw	s0,24(sp)
     5f4:	0c000000 	jal	0 <SkinMatrix_Vec3fMtxFMultXYZW>
     5f8:	02802825 	move	a1,s4
     5fc:	0c000000 	jal	0 <SkinMatrix_Vec3fMtxFMultXYZW>
     600:	02602025 	move	a0,s3
     604:	3c010000 	lui	at,0x0
     608:	c42c0000 	lwc1	$f12,0(at)
     60c:	00008025 	move	s0,zero
     610:	240c0004 	li	t4,4
     614:	2a010004 	slti	at,s0,4
     618:	10200016 	beqz	at,674 <SkinMatrix_Invert+0xa4>
     61c:	02004825 	move	t1,s0
     620:	00107100 	sll	t6,s0,0x4
     624:	028e5821 	addu	t3,s4,t6
     628:	00107880 	sll	t7,s0,0x2
     62c:	016fc021 	addu	t8,t3,t7
     630:	c7000000 	lwc1	$f0,0(t8)
     634:	46000005 	abs.s	$f0,$f0
     638:	460c003c 	c.lt.s	$f0,$f12
     63c:	00000000 	nop
     640:	4500000c 	bc1f	674 <SkinMatrix_Invert+0xa4>
     644:	00000000 	nop
     648:	25290001 	addiu	t1,t1,1
     64c:	29210004 	slti	at,t1,4
     650:	10200008 	beqz	at,674 <SkinMatrix_Invert+0xa4>
     654:	0009c880 	sll	t9,t1,0x2
     658:	01797021 	addu	t6,t3,t9
     65c:	c5c00000 	lwc1	$f0,0(t6)
     660:	46000005 	abs.s	$f0,$f0
     664:	460c003c 	c.lt.s	$f0,$f12
     668:	00000000 	nop
     66c:	4503fff7 	bc1tl	64c <SkinMatrix_Invert+0x7c>
     670:	25290001 	addiu	t1,t1,1
     674:	152c000c 	bne	t1,t4,6a8 <SkinMatrix_Invert+0xd8>
     678:	00107900 	sll	t7,s0,0x4
     67c:	3c040000 	lui	a0,0x0
     680:	0c000000 	jal	0 <SkinMatrix_Vec3fMtxFMultXYZW>
     684:	24840000 	addiu	a0,a0,0
     688:	3c040000 	lui	a0,0x0
     68c:	0c000000 	jal	0 <SkinMatrix_Vec3fMtxFMultXYZW>
     690:	24840000 	addiu	a0,a0,0
     694:	3c040000 	lui	a0,0x0
     698:	0c000000 	jal	0 <SkinMatrix_Vec3fMtxFMultXYZW>
     69c:	24840000 	addiu	a0,a0,0
     6a0:	10000074 	b	874 <SkinMatrix_Invert+0x2a4>
     6a4:	24020002 	li	v0,2
     6a8:	00106880 	sll	t5,s0,0x2
     6ac:	028f5821 	addu	t3,s4,t7
     6b0:	016d9021 	addu	s2,t3,t5
     6b4:	028d2021 	addu	a0,s4,t5
     6b8:	026d2821 	addu	a1,s3,t5
     6bc:	1130001e 	beq	t1,s0,738 <SkinMatrix_Invert+0x168>
     6c0:	0260f825 	move	ra,s3
     6c4:	00094080 	sll	t0,t1,0x2
     6c8:	27b80078 	addiu	t8,sp,120
     6cc:	01181021 	addu	v0,t0,t8
     6d0:	01b81821 	addu	v1,t5,t8
     6d4:	02683021 	addu	a2,s3,t0
     6d8:	00005025 	move	t2,zero
     6dc:	026d3821 	addu	a3,s3,t5
     6e0:	c4640000 	lwc1	$f4,0(v1)
     6e4:	c4400000 	lwc1	$f0,0(v0)
     6e8:	254a0002 	addiu	t2,t2,2
     6ec:	e4440000 	swc1	$f4,0(v0)
     6f0:	e4600000 	swc1	$f0,0(v1)
     6f4:	c4e60000 	lwc1	$f6,0(a3)
     6f8:	c4c20000 	lwc1	$f2,0(a2)
     6fc:	24420020 	addiu	v0,v0,32
     700:	e4c60000 	swc1	$f6,0(a2)
     704:	e4e20000 	swc1	$f2,0(a3)
     708:	c4680010 	lwc1	$f8,16(v1)
     70c:	c440fff0 	lwc1	$f0,-16(v0)
     710:	24630020 	addiu	v1,v1,32
     714:	e448fff0 	swc1	$f8,-16(v0)
     718:	e460fff0 	swc1	$f0,-16(v1)
     71c:	c4ea0010 	lwc1	$f10,16(a3)
     720:	c4c20010 	lwc1	$f2,16(a2)
     724:	24c60020 	addiu	a2,a2,32
     728:	e4cafff0 	swc1	$f10,-16(a2)
     72c:	24e70020 	addiu	a3,a3,32
     730:	154cffeb 	bne	t2,t4,6e0 <SkinMatrix_Invert+0x110>
     734:	e4e2fff0 	swc1	$f2,-16(a3)
     738:	c6400000 	lwc1	$f0,0(s2)
     73c:	c4900000 	lwc1	$f16,0(a0)
     740:	00004825 	move	t1,zero
     744:	46008483 	div.s	$f18,$f16,$f0
     748:	e4920000 	swc1	$f18,0(a0)
     74c:	c4a40000 	lwc1	$f4,0(a1)
     750:	46002183 	div.s	$f6,$f4,$f0
     754:	e4a60000 	swc1	$f6,0(a1)
     758:	c4880010 	lwc1	$f8,16(a0)
     75c:	46004283 	div.s	$f10,$f8,$f0
     760:	e48a0010 	swc1	$f10,16(a0)
     764:	c4b00010 	lwc1	$f16,16(a1)
     768:	46008483 	div.s	$f18,$f16,$f0
     76c:	e4b20010 	swc1	$f18,16(a1)
     770:	c4840020 	lwc1	$f4,32(a0)
     774:	46002183 	div.s	$f6,$f4,$f0
     778:	e4860020 	swc1	$f6,32(a0)
     77c:	c4a80020 	lwc1	$f8,32(a1)
     780:	46004283 	div.s	$f10,$f8,$f0
     784:	e4aa0020 	swc1	$f10,32(a1)
     788:	c4900030 	lwc1	$f16,48(a0)
     78c:	46008483 	div.s	$f18,$f16,$f0
     790:	e4920030 	swc1	$f18,48(a0)
     794:	c4a40030 	lwc1	$f4,48(a1)
     798:	46002183 	div.s	$f6,$f4,$f0
     79c:	e4a60030 	swc1	$f6,48(a1)
     7a0:	1130002d 	beq	t1,s0,858 <SkinMatrix_Invert+0x288>
     7a4:	00094080 	sll	t0,t1,0x2
     7a8:	0168c821 	addu	t9,t3,t0
     7ac:	c7200000 	lwc1	$f0,0(t9)
     7b0:	c48a0000 	lwc1	$f10,0(a0)
     7b4:	02881021 	addu	v0,s4,t0
     7b8:	c4480000 	lwc1	$f8,0(v0)
     7bc:	46005402 	mul.s	$f16,$f10,$f0
     7c0:	03e81821 	addu	v1,ra,t0
     7c4:	46104481 	sub.s	$f18,$f8,$f16
     7c8:	e4520000 	swc1	$f18,0(v0)
     7cc:	c4a60000 	lwc1	$f6,0(a1)
     7d0:	c4640000 	lwc1	$f4,0(v1)
     7d4:	46003282 	mul.s	$f10,$f6,$f0
     7d8:	460a2201 	sub.s	$f8,$f4,$f10
     7dc:	e4680000 	swc1	$f8,0(v1)
     7e0:	c4920010 	lwc1	$f18,16(a0)
     7e4:	c4500010 	lwc1	$f16,16(v0)
     7e8:	46009182 	mul.s	$f6,$f18,$f0
     7ec:	46068101 	sub.s	$f4,$f16,$f6
     7f0:	e4440010 	swc1	$f4,16(v0)
     7f4:	c4a80010 	lwc1	$f8,16(a1)
     7f8:	c46a0010 	lwc1	$f10,16(v1)
     7fc:	46004482 	mul.s	$f18,$f8,$f0
     800:	46125401 	sub.s	$f16,$f10,$f18
     804:	e4700010 	swc1	$f16,16(v1)
     808:	c4840020 	lwc1	$f4,32(a0)
     80c:	c4460020 	lwc1	$f6,32(v0)
     810:	46002202 	mul.s	$f8,$f4,$f0
     814:	46083281 	sub.s	$f10,$f6,$f8
     818:	e44a0020 	swc1	$f10,32(v0)
     81c:	c4b00020 	lwc1	$f16,32(a1)
     820:	c4720020 	lwc1	$f18,32(v1)
     824:	46008102 	mul.s	$f4,$f16,$f0
     828:	46049181 	sub.s	$f6,$f18,$f4
     82c:	e4660020 	swc1	$f6,32(v1)
     830:	c48a0030 	lwc1	$f10,48(a0)
     834:	c4480030 	lwc1	$f8,48(v0)
     838:	46005402 	mul.s	$f16,$f10,$f0
     83c:	46104481 	sub.s	$f18,$f8,$f16
     840:	e4520030 	swc1	$f18,48(v0)
     844:	c4a60030 	lwc1	$f6,48(a1)
     848:	c4640030 	lwc1	$f4,48(v1)
     84c:	46003282 	mul.s	$f10,$f6,$f0
     850:	460a2201 	sub.s	$f8,$f4,$f10
     854:	e4680030 	swc1	$f8,48(v1)
     858:	25290001 	addiu	t1,t1,1
     85c:	152cffd0 	bne	t1,t4,7a0 <SkinMatrix_Invert+0x1d0>
     860:	00000000 	nop
     864:	26100001 	addiu	s0,s0,1
     868:	560cff6b 	bnel	s0,t4,618 <SkinMatrix_Invert+0x48>
     86c:	2a010004 	slti	at,s0,4
     870:	00001025 	move	v0,zero
     874:	8fbf002c 	lw	ra,44(sp)
     878:	8fb00018 	lw	s0,24(sp)
     87c:	8fb1001c 	lw	s1,28(sp)
     880:	8fb20020 	lw	s2,32(sp)
     884:	8fb30024 	lw	s3,36(sp)
     888:	8fb40028 	lw	s4,40(sp)
     88c:	03e00008 	jr	ra
     890:	27bd00b8 	addiu	sp,sp,184

00000894 <SkinMatrix_SetScale>:
     894:	afa7000c 	sw	a3,12(sp)
     898:	44800000 	mtc1	zero,$f0
     89c:	3c013f80 	lui	at,0x3f80
     8a0:	44856000 	mtc1	a1,$f12
     8a4:	44867000 	mtc1	a2,$f14
     8a8:	44812000 	mtc1	at,$f4
     8ac:	e4800004 	swc1	$f0,4(a0)
     8b0:	e4800008 	swc1	$f0,8(a0)
     8b4:	e480000c 	swc1	$f0,12(a0)
     8b8:	e4800010 	swc1	$f0,16(a0)
     8bc:	e4800018 	swc1	$f0,24(a0)
     8c0:	e480001c 	swc1	$f0,28(a0)
     8c4:	e4800020 	swc1	$f0,32(a0)
     8c8:	e4800024 	swc1	$f0,36(a0)
     8cc:	e480002c 	swc1	$f0,44(a0)
     8d0:	e4800030 	swc1	$f0,48(a0)
     8d4:	e4800034 	swc1	$f0,52(a0)
     8d8:	e4800038 	swc1	$f0,56(a0)
     8dc:	e48c0000 	swc1	$f12,0(a0)
     8e0:	e48e0014 	swc1	$f14,20(a0)
     8e4:	e484003c 	swc1	$f4,60(a0)
     8e8:	c7a6000c 	lwc1	$f6,12(sp)
     8ec:	03e00008 	jr	ra
     8f0:	e4860028 	swc1	$f6,40(a0)

000008f4 <SkinMatrix_SetRotateRPY>:
     8f4:	27bdffc8 	addiu	sp,sp,-56
     8f8:	afb00018 	sw	s0,24(sp)
     8fc:	00808025 	move	s0,a0
     900:	afbf001c 	sw	ra,28(sp)
     904:	afa70044 	sw	a3,68(sp)
     908:	afa5003c 	sw	a1,60(sp)
     90c:	afa60040 	sw	a2,64(sp)
     910:	0c000000 	jal	0 <SkinMatrix_Vec3fMtxFMultXYZW>
     914:	87a40046 	lh	a0,70(sp)
     918:	87a40046 	lh	a0,70(sp)
     91c:	0c000000 	jal	0 <SkinMatrix_Vec3fMtxFMultXYZW>
     920:	e7a00030 	swc1	$f0,48(sp)
     924:	87a40042 	lh	a0,66(sp)
     928:	c7ae0030 	lwc1	$f14,48(sp)
     92c:	44808000 	mtc1	zero,$f16
     930:	3c013f80 	lui	at,0x3f80
     934:	44811000 	mtc1	at,$f2
     938:	46007107 	neg.s	$f4,$f14
     93c:	46000306 	mov.s	$f12,$f0
     940:	e6000014 	swc1	$f0,20(s0)
     944:	e6040010 	swc1	$f4,16(s0)
     948:	e610002c 	swc1	$f16,44(s0)
     94c:	e610001c 	swc1	$f16,28(s0)
     950:	e610000c 	swc1	$f16,12(s0)
     954:	e6100038 	swc1	$f16,56(s0)
     958:	e6100034 	swc1	$f16,52(s0)
     95c:	e6100030 	swc1	$f16,48(s0)
     960:	10800017 	beqz	a0,9c0 <SkinMatrix_SetRotateRPY+0xcc>
     964:	e602003c 	swc1	$f2,60(s0)
     968:	e7ac002c 	swc1	$f12,44(sp)
     96c:	0c000000 	jal	0 <SkinMatrix_Vec3fMtxFMultXYZW>
     970:	e7ae0030 	swc1	$f14,48(sp)
     974:	87a40042 	lh	a0,66(sp)
     978:	0c000000 	jal	0 <SkinMatrix_Vec3fMtxFMultXYZW>
     97c:	e7a00024 	swc1	$f0,36(sp)
     980:	c7ac002c 	lwc1	$f12,44(sp)
     984:	c7a20024 	lwc1	$f2,36(sp)
     988:	c7ae0030 	lwc1	$f14,48(sp)
     98c:	46006182 	mul.s	$f6,$f12,$f0
     990:	46001107 	neg.s	$f4,$f2
     994:	44808000 	mtc1	zero,$f16
     998:	46026202 	mul.s	$f8,$f12,$f2
     99c:	e6040008 	swc1	$f4,8(s0)
     9a0:	e6000028 	swc1	$f0,40(s0)
     9a4:	46007282 	mul.s	$f10,$f14,$f0
     9a8:	e6060000 	swc1	$f6,0(s0)
     9ac:	46027482 	mul.s	$f18,$f14,$f2
     9b0:	e6080020 	swc1	$f8,32(s0)
     9b4:	e60a0004 	swc1	$f10,4(s0)
     9b8:	10000007 	b	9d8 <SkinMatrix_SetRotateRPY+0xe4>
     9bc:	e6120024 	swc1	$f18,36(s0)
     9c0:	e6000000 	swc1	$f0,0(s0)
     9c4:	e60e0004 	swc1	$f14,4(s0)
     9c8:	e6100024 	swc1	$f16,36(s0)
     9cc:	e6100020 	swc1	$f16,32(s0)
     9d0:	e6100008 	swc1	$f16,8(s0)
     9d4:	e6020028 	swc1	$f2,40(s0)
     9d8:	87a4003e 	lh	a0,62(sp)
     9dc:	50800024 	beqzl	a0,a70 <SkinMatrix_SetRotateRPY+0x17c>
     9e0:	e6100018 	swc1	$f16,24(s0)
     9e4:	0c000000 	jal	0 <SkinMatrix_Vec3fMtxFMultXYZW>
     9e8:	00000000 	nop
     9ec:	87a4003e 	lh	a0,62(sp)
     9f0:	0c000000 	jal	0 <SkinMatrix_Vec3fMtxFMultXYZW>
     9f4:	e7a00024 	swc1	$f0,36(sp)
     9f8:	c60e0010 	lwc1	$f14,16(s0)
     9fc:	c7a20024 	lwc1	$f2,36(sp)
     a00:	c60c0020 	lwc1	$f12,32(s0)
     a04:	46007182 	mul.s	$f6,$f14,$f0
     a08:	00000000 	nop
     a0c:	46026202 	mul.s	$f8,$f12,$f2
     a10:	00000000 	nop
     a14:	46006482 	mul.s	$f18,$f12,$f0
     a18:	c60c0024 	lwc1	$f12,36(s0)
     a1c:	46027102 	mul.s	$f4,$f14,$f2
     a20:	c60e0014 	lwc1	$f14,20(s0)
     a24:	46083280 	add.s	$f10,$f6,$f8
     a28:	46007202 	mul.s	$f8,$f14,$f0
     a2c:	e60a0010 	swc1	$f10,16(s0)
     a30:	46026282 	mul.s	$f10,$f12,$f2
     a34:	46049181 	sub.s	$f6,$f18,$f4
     a38:	46006102 	mul.s	$f4,$f12,$f0
     a3c:	c60c0028 	lwc1	$f12,40(s0)
     a40:	e6060020 	swc1	$f6,32(s0)
     a44:	46027182 	mul.s	$f6,$f14,$f2
     a48:	460a4480 	add.s	$f18,$f8,$f10
     a4c:	46026282 	mul.s	$f10,$f12,$f2
     a50:	e6120014 	swc1	$f18,20(s0)
     a54:	46006482 	mul.s	$f18,$f12,$f0
     a58:	46062201 	sub.s	$f8,$f4,$f6
     a5c:	e60a0018 	swc1	$f10,24(s0)
     a60:	e6080024 	swc1	$f8,36(s0)
     a64:	10000002 	b	a70 <SkinMatrix_SetRotateRPY+0x17c>
     a68:	e6120028 	swc1	$f18,40(s0)
     a6c:	e6100018 	swc1	$f16,24(s0)
     a70:	8fbf001c 	lw	ra,28(sp)
     a74:	8fb00018 	lw	s0,24(sp)
     a78:	27bd0038 	addiu	sp,sp,56
     a7c:	03e00008 	jr	ra
     a80:	00000000 	nop

00000a84 <SkinMatrix_SetRotateYRP>:
     a84:	27bdffc8 	addiu	sp,sp,-56
     a88:	afb00018 	sw	s0,24(sp)
     a8c:	00808025 	move	s0,a0
     a90:	afbf001c 	sw	ra,28(sp)
     a94:	afa60040 	sw	a2,64(sp)
     a98:	afa5003c 	sw	a1,60(sp)
     a9c:	afa70044 	sw	a3,68(sp)
     aa0:	0c000000 	jal	0 <SkinMatrix_Vec3fMtxFMultXYZW>
     aa4:	87a40042 	lh	a0,66(sp)
     aa8:	87a40042 	lh	a0,66(sp)
     aac:	0c000000 	jal	0 <SkinMatrix_Vec3fMtxFMultXYZW>
     ab0:	e7a00030 	swc1	$f0,48(sp)
     ab4:	87a4003e 	lh	a0,62(sp)
     ab8:	c7ae0030 	lwc1	$f14,48(sp)
     abc:	44808000 	mtc1	zero,$f16
     ac0:	3c013f80 	lui	at,0x3f80
     ac4:	44811000 	mtc1	at,$f2
     ac8:	46007107 	neg.s	$f4,$f14
     acc:	46000306 	mov.s	$f12,$f0
     ad0:	e6000000 	swc1	$f0,0(s0)
     ad4:	e6040008 	swc1	$f4,8(s0)
     ad8:	e610002c 	swc1	$f16,44(s0)
     adc:	e610001c 	swc1	$f16,28(s0)
     ae0:	e610000c 	swc1	$f16,12(s0)
     ae4:	e6100038 	swc1	$f16,56(s0)
     ae8:	e6100034 	swc1	$f16,52(s0)
     aec:	e6100030 	swc1	$f16,48(s0)
     af0:	10800017 	beqz	a0,b50 <SkinMatrix_SetRotateYRP+0xcc>
     af4:	e602003c 	swc1	$f2,60(s0)
     af8:	e7ac002c 	swc1	$f12,44(sp)
     afc:	0c000000 	jal	0 <SkinMatrix_Vec3fMtxFMultXYZW>
     b00:	e7ae0030 	swc1	$f14,48(sp)
     b04:	87a4003e 	lh	a0,62(sp)
     b08:	0c000000 	jal	0 <SkinMatrix_Vec3fMtxFMultXYZW>
     b0c:	e7a00024 	swc1	$f0,36(sp)
     b10:	c7ac002c 	lwc1	$f12,44(sp)
     b14:	c7a20024 	lwc1	$f2,36(sp)
     b18:	c7ae0030 	lwc1	$f14,48(sp)
     b1c:	46006182 	mul.s	$f6,$f12,$f0
     b20:	46001107 	neg.s	$f4,$f2
     b24:	44808000 	mtc1	zero,$f16
     b28:	46026202 	mul.s	$f8,$f12,$f2
     b2c:	e6040024 	swc1	$f4,36(s0)
     b30:	e6000014 	swc1	$f0,20(s0)
     b34:	46007282 	mul.s	$f10,$f14,$f0
     b38:	e6060028 	swc1	$f6,40(s0)
     b3c:	46027482 	mul.s	$f18,$f14,$f2
     b40:	e6080018 	swc1	$f8,24(s0)
     b44:	e60a0020 	swc1	$f10,32(s0)
     b48:	10000007 	b	b68 <SkinMatrix_SetRotateYRP+0xe4>
     b4c:	e6120010 	swc1	$f18,16(s0)
     b50:	e6000028 	swc1	$f0,40(s0)
     b54:	e60e0020 	swc1	$f14,32(s0)
     b58:	e6100024 	swc1	$f16,36(s0)
     b5c:	e6100018 	swc1	$f16,24(s0)
     b60:	e6100010 	swc1	$f16,16(s0)
     b64:	e6020014 	swc1	$f2,20(s0)
     b68:	87a40046 	lh	a0,70(sp)
     b6c:	50800024 	beqzl	a0,c00 <SkinMatrix_SetRotateYRP+0x17c>
     b70:	e6100004 	swc1	$f16,4(s0)
     b74:	0c000000 	jal	0 <SkinMatrix_Vec3fMtxFMultXYZW>
     b78:	00000000 	nop
     b7c:	87a40046 	lh	a0,70(sp)
     b80:	0c000000 	jal	0 <SkinMatrix_Vec3fMtxFMultXYZW>
     b84:	e7a00024 	swc1	$f0,36(sp)
     b88:	c60e0000 	lwc1	$f14,0(s0)
     b8c:	c7a20024 	lwc1	$f2,36(sp)
     b90:	c60c0010 	lwc1	$f12,16(s0)
     b94:	46007182 	mul.s	$f6,$f14,$f0
     b98:	00000000 	nop
     b9c:	46026202 	mul.s	$f8,$f12,$f2
     ba0:	00000000 	nop
     ba4:	46006482 	mul.s	$f18,$f12,$f0
     ba8:	c60c0018 	lwc1	$f12,24(s0)
     bac:	46027102 	mul.s	$f4,$f14,$f2
     bb0:	c60e0008 	lwc1	$f14,8(s0)
     bb4:	46083280 	add.s	$f10,$f6,$f8
     bb8:	46007202 	mul.s	$f8,$f14,$f0
     bbc:	e60a0000 	swc1	$f10,0(s0)
     bc0:	46026282 	mul.s	$f10,$f12,$f2
     bc4:	46049181 	sub.s	$f6,$f18,$f4
     bc8:	46006102 	mul.s	$f4,$f12,$f0
     bcc:	c60c0014 	lwc1	$f12,20(s0)
     bd0:	e6060010 	swc1	$f6,16(s0)
     bd4:	46027182 	mul.s	$f6,$f14,$f2
     bd8:	460a4480 	add.s	$f18,$f8,$f10
     bdc:	46026282 	mul.s	$f10,$f12,$f2
     be0:	e6120008 	swc1	$f18,8(s0)
     be4:	46006482 	mul.s	$f18,$f12,$f0
     be8:	46062201 	sub.s	$f8,$f4,$f6
     bec:	e60a0004 	swc1	$f10,4(s0)
     bf0:	e6080018 	swc1	$f8,24(s0)
     bf4:	10000002 	b	c00 <SkinMatrix_SetRotateYRP+0x17c>
     bf8:	e6120014 	swc1	$f18,20(s0)
     bfc:	e6100004 	swc1	$f16,4(s0)
     c00:	8fbf001c 	lw	ra,28(sp)
     c04:	8fb00018 	lw	s0,24(sp)
     c08:	27bd0038 	addiu	sp,sp,56
     c0c:	03e00008 	jr	ra
     c10:	00000000 	nop

00000c14 <SkinMatrix_SetTranslate>:
     c14:	afa7000c 	sw	a3,12(sp)
     c18:	44800000 	mtc1	zero,$f0
     c1c:	3c013f80 	lui	at,0x3f80
     c20:	44811000 	mtc1	at,$f2
     c24:	44856000 	mtc1	a1,$f12
     c28:	44867000 	mtc1	a2,$f14
     c2c:	e4800004 	swc1	$f0,4(a0)
     c30:	e4800008 	swc1	$f0,8(a0)
     c34:	e480000c 	swc1	$f0,12(a0)
     c38:	e4800010 	swc1	$f0,16(a0)
     c3c:	e4800018 	swc1	$f0,24(a0)
     c40:	e480001c 	swc1	$f0,28(a0)
     c44:	e4800020 	swc1	$f0,32(a0)
     c48:	e4800024 	swc1	$f0,36(a0)
     c4c:	e480002c 	swc1	$f0,44(a0)
     c50:	e4820000 	swc1	$f2,0(a0)
     c54:	e4820014 	swc1	$f2,20(a0)
     c58:	e4820028 	swc1	$f2,40(a0)
     c5c:	e482003c 	swc1	$f2,60(a0)
     c60:	e48c0030 	swc1	$f12,48(a0)
     c64:	e48e0034 	swc1	$f14,52(a0)
     c68:	c7a4000c 	lwc1	$f4,12(sp)
     c6c:	03e00008 	jr	ra
     c70:	e4840038 	swc1	$f4,56(a0)

00000c74 <SkinMatrix_SetScaleRotateRPYTranslate>:
     c74:	27bdff68 	addiu	sp,sp,-152
     c78:	afbf0014 	sw	ra,20(sp)
     c7c:	afa5009c 	sw	a1,156(sp)
     c80:	afa600a0 	sw	a2,160(sp)
     c84:	afa700a4 	sw	a3,164(sp)
     c88:	afa40098 	sw	a0,152(sp)
     c8c:	8fa700bc 	lw	a3,188(sp)
     c90:	8fa600b8 	lw	a2,184(sp)
     c94:	0c000000 	jal	0 <SkinMatrix_Vec3fMtxFMultXYZW>
     c98:	8fa500b4 	lw	a1,180(sp)
     c9c:	27a40058 	addiu	a0,sp,88
     ca0:	87a500aa 	lh	a1,170(sp)
     ca4:	87a600ae 	lh	a2,174(sp)
     ca8:	0c000000 	jal	0 <SkinMatrix_Vec3fMtxFMultXYZW>
     cac:	87a700b2 	lh	a3,178(sp)
     cb0:	8fa40098 	lw	a0,152(sp)
     cb4:	27a50058 	addiu	a1,sp,88
     cb8:	0c000000 	jal	0 <SkinMatrix_Vec3fMtxFMultXYZW>
     cbc:	27a60018 	addiu	a2,sp,24
     cc0:	27a40058 	addiu	a0,sp,88
     cc4:	8fa5009c 	lw	a1,156(sp)
     cc8:	8fa600a0 	lw	a2,160(sp)
     ccc:	0c000000 	jal	0 <SkinMatrix_Vec3fMtxFMultXYZW>
     cd0:	8fa700a4 	lw	a3,164(sp)
     cd4:	27a40018 	addiu	a0,sp,24
     cd8:	27a50058 	addiu	a1,sp,88
     cdc:	0c000000 	jal	0 <SkinMatrix_Vec3fMtxFMultXYZW>
     ce0:	8fa60098 	lw	a2,152(sp)
     ce4:	8fbf0014 	lw	ra,20(sp)
     ce8:	27bd0098 	addiu	sp,sp,152
     cec:	03e00008 	jr	ra
     cf0:	00000000 	nop

00000cf4 <SkinMatrix_SetScaleRotateYRPTranslate>:
     cf4:	27bdff68 	addiu	sp,sp,-152
     cf8:	afbf0014 	sw	ra,20(sp)
     cfc:	afa5009c 	sw	a1,156(sp)
     d00:	afa600a0 	sw	a2,160(sp)
     d04:	afa700a4 	sw	a3,164(sp)
     d08:	afa40098 	sw	a0,152(sp)
     d0c:	8fa700bc 	lw	a3,188(sp)
     d10:	8fa600b8 	lw	a2,184(sp)
     d14:	0c000000 	jal	0 <SkinMatrix_Vec3fMtxFMultXYZW>
     d18:	8fa500b4 	lw	a1,180(sp)
     d1c:	27a40058 	addiu	a0,sp,88
     d20:	87a500aa 	lh	a1,170(sp)
     d24:	87a600ae 	lh	a2,174(sp)
     d28:	0c000000 	jal	0 <SkinMatrix_Vec3fMtxFMultXYZW>
     d2c:	87a700b2 	lh	a3,178(sp)
     d30:	8fa40098 	lw	a0,152(sp)
     d34:	27a50058 	addiu	a1,sp,88
     d38:	0c000000 	jal	0 <SkinMatrix_Vec3fMtxFMultXYZW>
     d3c:	27a60018 	addiu	a2,sp,24
     d40:	27a40058 	addiu	a0,sp,88
     d44:	8fa5009c 	lw	a1,156(sp)
     d48:	8fa600a0 	lw	a2,160(sp)
     d4c:	0c000000 	jal	0 <SkinMatrix_Vec3fMtxFMultXYZW>
     d50:	8fa700a4 	lw	a3,164(sp)
     d54:	27a40018 	addiu	a0,sp,24
     d58:	27a50058 	addiu	a1,sp,88
     d5c:	0c000000 	jal	0 <SkinMatrix_Vec3fMtxFMultXYZW>
     d60:	8fa60098 	lw	a2,152(sp)
     d64:	8fbf0014 	lw	ra,20(sp)
     d68:	27bd0098 	addiu	sp,sp,152
     d6c:	03e00008 	jr	ra
     d70:	00000000 	nop

00000d74 <SkinMatrix_SetRotateRPYTranslate>:
     d74:	27bdff68 	addiu	sp,sp,-152
     d78:	afbf0014 	sw	ra,20(sp)
     d7c:	afa40098 	sw	a0,152(sp)
     d80:	afa5009c 	sw	a1,156(sp)
     d84:	afa600a0 	sw	a2,160(sp)
     d88:	afa700a4 	sw	a3,164(sp)
     d8c:	8fa700b0 	lw	a3,176(sp)
     d90:	8fa600ac 	lw	a2,172(sp)
     d94:	8fa500a8 	lw	a1,168(sp)
     d98:	0c000000 	jal	0 <SkinMatrix_Vec3fMtxFMultXYZW>
     d9c:	27a40018 	addiu	a0,sp,24
     da0:	27a40058 	addiu	a0,sp,88
     da4:	87a5009e 	lh	a1,158(sp)
     da8:	87a600a2 	lh	a2,162(sp)
     dac:	0c000000 	jal	0 <SkinMatrix_Vec3fMtxFMultXYZW>
     db0:	87a700a6 	lh	a3,166(sp)
     db4:	27a40018 	addiu	a0,sp,24
     db8:	27a50058 	addiu	a1,sp,88
     dbc:	0c000000 	jal	0 <SkinMatrix_Vec3fMtxFMultXYZW>
     dc0:	8fa60098 	lw	a2,152(sp)
     dc4:	8fbf0014 	lw	ra,20(sp)
     dc8:	27bd0098 	addiu	sp,sp,152
     dcc:	03e00008 	jr	ra
     dd0:	00000000 	nop

00000dd4 <SkinMatrix_Vec3fToVec3s>:
     dd4:	c4840000 	lwc1	$f4,0(a0)
     dd8:	4600218d 	trunc.w.s	$f6,$f4
     ddc:	440f3000 	mfc1	t7,$f6
     de0:	00000000 	nop
     de4:	a4af0000 	sh	t7,0(a1)
     de8:	c4880004 	lwc1	$f8,4(a0)
     dec:	4600428d 	trunc.w.s	$f10,$f8
     df0:	44195000 	mfc1	t9,$f10
     df4:	00000000 	nop
     df8:	a4b90002 	sh	t9,2(a1)
     dfc:	c4900008 	lwc1	$f16,8(a0)
     e00:	4600848d 	trunc.w.s	$f18,$f16
     e04:	44099000 	mfc1	t1,$f18
     e08:	03e00008 	jr	ra
     e0c:	a4a90004 	sh	t1,4(a1)

00000e10 <SkinMatrix_Vec3sToVec3f>:
     e10:	848e0000 	lh	t6,0(a0)
     e14:	448e2000 	mtc1	t6,$f4
     e18:	00000000 	nop
     e1c:	468021a0 	cvt.s.w	$f6,$f4
     e20:	e4a60000 	swc1	$f6,0(a1)
     e24:	848f0002 	lh	t7,2(a0)
     e28:	448f4000 	mtc1	t7,$f8
     e2c:	00000000 	nop
     e30:	468042a0 	cvt.s.w	$f10,$f8
     e34:	e4aa0004 	swc1	$f10,4(a1)
     e38:	84980004 	lh	t8,4(a0)
     e3c:	44988000 	mtc1	t8,$f16
     e40:	00000000 	nop
     e44:	468084a0 	cvt.s.w	$f18,$f16
     e48:	03e00008 	jr	ra
     e4c:	e4b20008 	swc1	$f18,8(a1)

00000e50 <SkinMatrix_MtxFToMtx>:
     e50:	3c014780 	lui	at,0x4780
     e54:	44810000 	mtc1	at,$f0
     e58:	c4840000 	lwc1	$f4,0(a0)
     e5c:	24a20020 	addiu	v0,a1,32
     e60:	46002182 	mul.s	$f6,$f4,$f0
     e64:	4600320d 	trunc.w.s	$f8,$f6
     e68:	44184000 	mfc1	t8,$f8
     e6c:	00000000 	nop
     e70:	00187c03 	sra	t7,t8,0x10
     e74:	a4af0000 	sh	t7,0(a1)
     e78:	a4b80020 	sh	t8,32(a1)
     e7c:	c48a0004 	lwc1	$f10,4(a0)
     e80:	46005402 	mul.s	$f16,$f10,$f0
     e84:	4600848d 	trunc.w.s	$f18,$f16
     e88:	44099000 	mfc1	t1,$f18
     e8c:	00000000 	nop
     e90:	00094403 	sra	t0,t1,0x10
     e94:	a4a80002 	sh	t0,2(a1)
     e98:	a4a90022 	sh	t1,34(a1)
     e9c:	c4840008 	lwc1	$f4,8(a0)
     ea0:	46002182 	mul.s	$f6,$f4,$f0
     ea4:	4600320d 	trunc.w.s	$f8,$f6
     ea8:	440c4000 	mfc1	t4,$f8
     eac:	00000000 	nop
     eb0:	000c5c03 	sra	t3,t4,0x10
     eb4:	a4ab0004 	sh	t3,4(a1)
     eb8:	a4ac0024 	sh	t4,36(a1)
     ebc:	c48a000c 	lwc1	$f10,12(a0)
     ec0:	46005402 	mul.s	$f16,$f10,$f0
     ec4:	4600848d 	trunc.w.s	$f18,$f16
     ec8:	440f9000 	mfc1	t7,$f18
     ecc:	00000000 	nop
     ed0:	000f7403 	sra	t6,t7,0x10
     ed4:	a4ae0006 	sh	t6,6(a1)
     ed8:	a4af0026 	sh	t7,38(a1)
     edc:	c4840010 	lwc1	$f4,16(a0)
     ee0:	46002182 	mul.s	$f6,$f4,$f0
     ee4:	4600320d 	trunc.w.s	$f8,$f6
     ee8:	44084000 	mfc1	t0,$f8
     eec:	00000000 	nop
     ef0:	0008cc03 	sra	t9,t0,0x10
     ef4:	a4b90008 	sh	t9,8(a1)
     ef8:	a4a80028 	sh	t0,40(a1)
     efc:	c48a0014 	lwc1	$f10,20(a0)
     f00:	46005402 	mul.s	$f16,$f10,$f0
     f04:	4600848d 	trunc.w.s	$f18,$f16
     f08:	440b9000 	mfc1	t3,$f18
     f0c:	00000000 	nop
     f10:	000b5403 	sra	t2,t3,0x10
     f14:	a4aa000a 	sh	t2,10(a1)
     f18:	a4ab002a 	sh	t3,42(a1)
     f1c:	c4840018 	lwc1	$f4,24(a0)
     f20:	46002182 	mul.s	$f6,$f4,$f0
     f24:	4600320d 	trunc.w.s	$f8,$f6
     f28:	440e4000 	mfc1	t6,$f8
     f2c:	00000000 	nop
     f30:	000e6c03 	sra	t5,t6,0x10
     f34:	a4ad000c 	sh	t5,12(a1)
     f38:	a4ae002c 	sh	t6,44(a1)
     f3c:	c48a001c 	lwc1	$f10,28(a0)
     f40:	46005402 	mul.s	$f16,$f10,$f0
     f44:	4600848d 	trunc.w.s	$f18,$f16
     f48:	44199000 	mfc1	t9,$f18
     f4c:	00000000 	nop
     f50:	0019c403 	sra	t8,t9,0x10
     f54:	a4b8000e 	sh	t8,14(a1)
     f58:	a4b9002e 	sh	t9,46(a1)
     f5c:	c4840020 	lwc1	$f4,32(a0)
     f60:	46002182 	mul.s	$f6,$f4,$f0
     f64:	4600320d 	trunc.w.s	$f8,$f6
     f68:	440a4000 	mfc1	t2,$f8
     f6c:	00000000 	nop
     f70:	000a4c03 	sra	t1,t2,0x10
     f74:	a4a90010 	sh	t1,16(a1)
     f78:	a4aa0030 	sh	t2,48(a1)
     f7c:	c48a0024 	lwc1	$f10,36(a0)
     f80:	46005402 	mul.s	$f16,$f10,$f0
     f84:	4600848d 	trunc.w.s	$f18,$f16
     f88:	440d9000 	mfc1	t5,$f18
     f8c:	00000000 	nop
     f90:	000d6403 	sra	t4,t5,0x10
     f94:	a4ac0012 	sh	t4,18(a1)
     f98:	a44d0012 	sh	t5,18(v0)
     f9c:	c4840028 	lwc1	$f4,40(a0)
     fa0:	46002182 	mul.s	$f6,$f4,$f0
     fa4:	4600320d 	trunc.w.s	$f8,$f6
     fa8:	44184000 	mfc1	t8,$f8
     fac:	00000000 	nop
     fb0:	00187c03 	sra	t7,t8,0x10
     fb4:	a4af0014 	sh	t7,20(a1)
     fb8:	a4580014 	sh	t8,20(v0)
     fbc:	c48a002c 	lwc1	$f10,44(a0)
     fc0:	46005402 	mul.s	$f16,$f10,$f0
     fc4:	4600848d 	trunc.w.s	$f18,$f16
     fc8:	44099000 	mfc1	t1,$f18
     fcc:	00000000 	nop
     fd0:	00094403 	sra	t0,t1,0x10
     fd4:	a4a80016 	sh	t0,22(a1)
     fd8:	a4490016 	sh	t1,22(v0)
     fdc:	c4840030 	lwc1	$f4,48(a0)
     fe0:	46002182 	mul.s	$f6,$f4,$f0
     fe4:	4600320d 	trunc.w.s	$f8,$f6
     fe8:	440c4000 	mfc1	t4,$f8
     fec:	00000000 	nop
     ff0:	000c5c03 	sra	t3,t4,0x10
     ff4:	a4ab0018 	sh	t3,24(a1)
     ff8:	a44c0018 	sh	t4,24(v0)
     ffc:	c48a0034 	lwc1	$f10,52(a0)
    1000:	46005402 	mul.s	$f16,$f10,$f0
    1004:	4600848d 	trunc.w.s	$f18,$f16
    1008:	440f9000 	mfc1	t7,$f18
    100c:	00000000 	nop
    1010:	000f7403 	sra	t6,t7,0x10
    1014:	a4ae001a 	sh	t6,26(a1)
    1018:	a44f001a 	sh	t7,26(v0)
    101c:	c4840038 	lwc1	$f4,56(a0)
    1020:	46002182 	mul.s	$f6,$f4,$f0
    1024:	4600320d 	trunc.w.s	$f8,$f6
    1028:	44084000 	mfc1	t0,$f8
    102c:	00000000 	nop
    1030:	0008cc03 	sra	t9,t0,0x10
    1034:	a4b9001c 	sh	t9,28(a1)
    1038:	a448001c 	sh	t0,28(v0)
    103c:	c48a003c 	lwc1	$f10,60(a0)
    1040:	46005402 	mul.s	$f16,$f10,$f0
    1044:	4600848d 	trunc.w.s	$f18,$f16
    1048:	440b9000 	mfc1	t3,$f18
    104c:	00000000 	nop
    1050:	000b5403 	sra	t2,t3,0x10
    1054:	a4aa001e 	sh	t2,30(a1)
    1058:	03e00008 	jr	ra
    105c:	a44b001e 	sh	t3,30(v0)

00001060 <SkinMatrix_MtxFToNewMtx>:
    1060:	27bdffe0 	addiu	sp,sp,-32
    1064:	afbf0014 	sw	ra,20(sp)
    1068:	afa50024 	sw	a1,36(sp)
    106c:	0c000000 	jal	0 <SkinMatrix_Vec3fMtxFMultXYZW>
    1070:	24050040 	li	a1,64
    1074:	14400006 	bnez	v0,1090 <SkinMatrix_MtxFToNewMtx+0x30>
    1078:	00402825 	move	a1,v0
    107c:	3c040000 	lui	a0,0x0
    1080:	0c000000 	jal	0 <SkinMatrix_Vec3fMtxFMultXYZW>
    1084:	24840040 	addiu	a0,a0,64
    1088:	10000005 	b	10a0 <SkinMatrix_MtxFToNewMtx+0x40>
    108c:	00001025 	move	v0,zero
    1090:	8fa40024 	lw	a0,36(sp)
    1094:	0c000000 	jal	0 <SkinMatrix_Vec3fMtxFMultXYZW>
    1098:	afa5001c 	sw	a1,28(sp)
    109c:	8fa2001c 	lw	v0,28(sp)
    10a0:	8fbf0014 	lw	ra,20(sp)
    10a4:	27bd0020 	addiu	sp,sp,32
    10a8:	03e00008 	jr	ra
    10ac:	00000000 	nop

000010b0 <func_800A7EC0>:
    10b0:	27bdff98 	addiu	sp,sp,-104
    10b4:	f7b40010 	sdc1	$f20,16(sp)
    10b8:	4486a000 	mtc1	a2,$f20
    10bc:	f7b60018 	sdc1	$f22,24(sp)
    10c0:	4487b000 	mtc1	a3,$f22
    10c4:	00803025 	move	a2,a0
    10c8:	afbf0024 	sw	ra,36(sp)
    10cc:	afa40068 	sw	a0,104(sp)
    10d0:	afa5006c 	sw	a1,108(sp)
    10d4:	87a4006e 	lh	a0,110(sp)
    10d8:	0c000000 	jal	0 <SkinMatrix_Vec3fMtxFMultXYZW>
    10dc:	afa60068 	sw	a2,104(sp)
    10e0:	87a4006e 	lh	a0,110(sp)
    10e4:	0c000000 	jal	0 <SkinMatrix_Vec3fMtxFMultXYZW>
    10e8:	e7a00064 	swc1	$f0,100(sp)
    10ec:	4616a302 	mul.s	$f12,$f20,$f22
    10f0:	c7a40078 	lwc1	$f4,120(sp)
    10f4:	3c013f80 	lui	at,0x3f80
    10f8:	44814000 	mtc1	at,$f8
    10fc:	4604b182 	mul.s	$f6,$f22,$f4
    1100:	8fa60068 	lw	a2,104(sp)
    1104:	c7b20064 	lwc1	$f18,100(sp)
    1108:	4604a382 	mul.s	$f14,$f20,$f4
    110c:	e7ac0050 	swc1	$f12,80(sp)
    1110:	4614a082 	mul.s	$f2,$f20,$f20
    1114:	e7a6004c 	swc1	$f6,76(sp)
    1118:	e7ae0048 	swc1	$f14,72(sp)
    111c:	46024281 	sub.s	$f10,$f8,$f2
    1120:	44814000 	mtc1	at,$f8
    1124:	46005182 	mul.s	$f6,$f10,$f0
    1128:	46004401 	sub.s	$f16,$f8,$f0
    112c:	46023100 	add.s	$f4,$f6,$f2
    1130:	e4c40000 	swc1	$f4,0(a2)
    1134:	c7aa0078 	lwc1	$f10,120(sp)
    1138:	46125182 	mul.s	$f6,$f10,$f18
    113c:	00000000 	nop
    1140:	460c8102 	mul.s	$f4,$f16,$f12
    1144:	44806000 	mtc1	zero,$f12
    1148:	4612b282 	mul.s	$f10,$f22,$f18
    114c:	e7a60038 	swc1	$f6,56(sp)
    1150:	46062200 	add.s	$f8,$f4,$f6
    1154:	460e8102 	mul.s	$f4,$f16,$f14
    1158:	e4c80004 	swc1	$f8,4(a2)
    115c:	e7aa0034 	swc1	$f10,52(sp)
    1160:	c7a60034 	lwc1	$f6,52(sp)
    1164:	e4cc000c 	swc1	$f12,12(a2)
    1168:	46062201 	sub.s	$f8,$f4,$f6
    116c:	e4c80008 	swc1	$f8,8(a2)
    1170:	c7aa0050 	lwc1	$f10,80(sp)
    1174:	c7a60038 	lwc1	$f6,56(sp)
    1178:	460a8102 	mul.s	$f4,$f16,$f10
    117c:	44815000 	mtc1	at,$f10
    1180:	4616b082 	mul.s	$f2,$f22,$f22
    1184:	46062201 	sub.s	$f8,$f4,$f6
    1188:	46025101 	sub.s	$f4,$f10,$f2
    118c:	e4c80010 	swc1	$f8,16(a2)
    1190:	46002182 	mul.s	$f6,$f4,$f0
    1194:	46023200 	add.s	$f8,$f6,$f2
    1198:	e4c80014 	swc1	$f8,20(a2)
    119c:	c7aa004c 	lwc1	$f10,76(sp)
    11a0:	460a8102 	mul.s	$f4,$f16,$f10
    11a4:	e7a4002c 	swc1	$f4,44(sp)
    11a8:	4612a382 	mul.s	$f14,$f20,$f18
    11ac:	c7a6002c 	lwc1	$f6,44(sp)
    11b0:	e4cc001c 	swc1	$f12,28(a2)
    11b4:	460e3200 	add.s	$f8,$f6,$f14
    11b8:	e4c80018 	swc1	$f8,24(a2)
    11bc:	c7aa0048 	lwc1	$f10,72(sp)
    11c0:	c7a60034 	lwc1	$f6,52(sp)
    11c4:	460a8102 	mul.s	$f4,$f16,$f10
    11c8:	44818000 	mtc1	at,$f16
    11cc:	46062200 	add.s	$f8,$f4,$f6
    11d0:	e4c80020 	swc1	$f8,32(a2)
    11d4:	c7b20078 	lwc1	$f18,120(sp)
    11d8:	c7aa002c 	lwc1	$f10,44(sp)
    11dc:	e4cc002c 	swc1	$f12,44(a2)
    11e0:	46129082 	mul.s	$f2,$f18,$f18
    11e4:	460e5101 	sub.s	$f4,$f10,$f14
    11e8:	e4cc0030 	swc1	$f12,48(a2)
    11ec:	e4cc0034 	swc1	$f12,52(a2)
    11f0:	e4cc0038 	swc1	$f12,56(a2)
    11f4:	e4c40024 	swc1	$f4,36(a2)
    11f8:	e4d0003c 	swc1	$f16,60(a2)
    11fc:	46028181 	sub.s	$f6,$f16,$f2
    1200:	46003202 	mul.s	$f8,$f6,$f0
    1204:	46024280 	add.s	$f10,$f8,$f2
    1208:	e4ca0028 	swc1	$f10,40(a2)
    120c:	8fbf0024 	lw	ra,36(sp)
    1210:	d7b60018 	ldc1	$f22,24(sp)
    1214:	d7b40010 	ldc1	$f20,16(sp)
    1218:	03e00008 	jr	ra
    121c:	27bd0068 	addiu	sp,sp,104

00001220 <func_800A8030>:
    1220:	27bdffb8 	addiu	sp,sp,-72
    1224:	f7b40008 	sdc1	$f20,8(sp)
    1228:	c4a00000 	lwc1	$f0,0(a1)
    122c:	c4a20004 	lwc1	$f2,4(a1)
    1230:	c4ac0008 	lwc1	$f12,8(a1)
    1234:	46000102 	mul.s	$f4,$f0,$f0
    1238:	c4b4000c 	lwc1	$f20,12(a1)
    123c:	3c014000 	lui	at,0x4000
    1240:	46021182 	mul.s	$f6,$f2,$f2
    1244:	46062200 	add.s	$f8,$f4,$f6
    1248:	460c6282 	mul.s	$f10,$f12,$f12
    124c:	460a4100 	add.s	$f4,$f8,$f10
    1250:	4614a182 	mul.s	$f6,$f20,$f20
    1254:	44815000 	mtc1	at,$f10
    1258:	3c013f80 	lui	at,0x3f80
    125c:	46062200 	add.s	$f8,$f4,$f6
    1260:	46085483 	div.s	$f18,$f10,$f8
    1264:	46120102 	mul.s	$f4,$f0,$f18
    1268:	e7a40040 	swc1	$f4,64(sp)
    126c:	46121402 	mul.s	$f16,$f2,$f18
    1270:	c7a60040 	lwc1	$f6,64(sp)
    1274:	46126382 	mul.s	$f14,$f12,$f18
    1278:	00000000 	nop
    127c:	4606a282 	mul.s	$f10,$f20,$f6
    1280:	00000000 	nop
    1284:	4610a202 	mul.s	$f8,$f20,$f16
    1288:	00000000 	nop
    128c:	460ea102 	mul.s	$f4,$f20,$f14
    1290:	e7aa0034 	swc1	$f10,52(sp)
    1294:	46060282 	mul.s	$f10,$f0,$f6
    1298:	e7a80030 	swc1	$f8,48(sp)
    129c:	46100202 	mul.s	$f8,$f0,$f16
    12a0:	e7a4002c 	swc1	$f4,44(sp)
    12a4:	460e0482 	mul.s	$f18,$f0,$f14
    12a8:	e7aa0028 	swc1	$f10,40(sp)
    12ac:	44800000 	mtc1	zero,$f0
    12b0:	46101102 	mul.s	$f4,$f2,$f16
    12b4:	e7a80024 	swc1	$f8,36(sp)
    12b8:	44818000 	mtc1	at,$f16
    12bc:	460e1182 	mul.s	$f6,$f2,$f14
    12c0:	00000000 	nop
    12c4:	460e6282 	mul.s	$f10,$f12,$f14
    12c8:	e7a4001c 	swc1	$f4,28(sp)
    12cc:	c7a8001c 	lwc1	$f8,28(sp)
    12d0:	e7a60018 	swc1	$f6,24(sp)
    12d4:	e7aa0014 	swc1	$f10,20(sp)
    12d8:	c7a40014 	lwc1	$f4,20(sp)
    12dc:	44815000 	mtc1	at,$f10
    12e0:	46044180 	add.s	$f6,$f8,$f4
    12e4:	46065201 	sub.s	$f8,$f10,$f6
    12e8:	e4880000 	swc1	$f8,0(a0)
    12ec:	c7aa002c 	lwc1	$f10,44(sp)
    12f0:	c7a40024 	lwc1	$f4,36(sp)
    12f4:	460a2180 	add.s	$f6,$f4,$f10
    12f8:	e4860004 	swc1	$f6,4(a0)
    12fc:	c7a80030 	lwc1	$f8,48(sp)
    1300:	46089101 	sub.s	$f4,$f18,$f8
    1304:	e4840008 	swc1	$f4,8(a0)
    1308:	c7ae0028 	lwc1	$f14,40(sp)
    130c:	c7ac0034 	lwc1	$f12,52(sp)
    1310:	c7a20018 	lwc1	$f2,24(sp)
    1314:	e480000c 	swc1	$f0,12(a0)
    1318:	c7a6002c 	lwc1	$f6,44(sp)
    131c:	c7aa0024 	lwc1	$f10,36(sp)
    1320:	46065201 	sub.s	$f8,$f10,$f6
    1324:	e4880010 	swc1	$f8,16(a0)
    1328:	c7a40014 	lwc1	$f4,20(sp)
    132c:	460c1200 	add.s	$f8,$f2,$f12
    1330:	e480001c 	swc1	$f0,28(a0)
    1334:	46047280 	add.s	$f10,$f14,$f4
    1338:	e4880018 	swc1	$f8,24(a0)
    133c:	460a8181 	sub.s	$f6,$f16,$f10
    1340:	e4860014 	swc1	$f6,20(a0)
    1344:	c7a40030 	lwc1	$f4,48(sp)
    1348:	460c1181 	sub.s	$f6,$f2,$f12
    134c:	46041280 	add.s	$f10,$f2,$f4
    1350:	e4860024 	swc1	$f6,36(a0)
    1354:	e48a0020 	swc1	$f10,32(a0)
    1358:	c7a8001c 	lwc1	$f8,28(sp)
    135c:	e480002c 	swc1	$f0,44(a0)
    1360:	e4800030 	swc1	$f0,48(a0)
    1364:	46087100 	add.s	$f4,$f14,$f8
    1368:	e4800034 	swc1	$f0,52(a0)
    136c:	e4800038 	swc1	$f0,56(a0)
    1370:	e490003c 	swc1	$f16,60(a0)
    1374:	46048281 	sub.s	$f10,$f16,$f4
    1378:	e48a0028 	swc1	$f10,40(a0)
    137c:	d7b40008 	ldc1	$f20,8(sp)
    1380:	03e00008 	jr	ra
    1384:	27bd0048 	addiu	sp,sp,72
	...
