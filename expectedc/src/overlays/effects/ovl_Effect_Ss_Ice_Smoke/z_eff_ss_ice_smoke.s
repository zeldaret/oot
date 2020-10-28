
build/src/overlays/effects/ovl_Effect_Ss_Ice_Smoke/z_eff_ss_ice_smoke.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <EffectSsIceSmoke_Init>:
   0:	27bdffc8 	addiu	sp,sp,-56
   4:	3c010001 	lui	at,0x1
   8:	afa40038 	sw	a0,56(sp)
   c:	342117a4 	ori	at,at,0x17a4
  10:	afbf001c 	sw	ra,28(sp)
  14:	afb00018 	sw	s0,24(sp)
  18:	afa5003c 	sw	a1,60(sp)
  1c:	00812021 	addu	a0,a0,at
  20:	00c08025 	move	s0,a2
  24:	afa70044 	sw	a3,68(sp)
  28:	afa40024 	sw	a0,36(sp)
  2c:	0c000000 	jal	0 <EffectSsIceSmoke_Init>
  30:	24050114 	li	a1,276
  34:	8fa40024 	lw	a0,36(sp)
  38:	04400032 	bltz	v0,104 <EffectSsIceSmoke_Init+0x104>
  3c:	00402825 	move	a1,v0
  40:	0c000000 	jal	0 <EffectSsIceSmoke_Init>
  44:	afa2002c 	sw	v0,44(sp)
  48:	1040002e 	beqz	v0,104 <EffectSsIceSmoke_Init+0x104>
  4c:	3c090001 	lui	t1,0x1
  50:	8fb8002c 	lw	t8,44(sp)
  54:	3c020000 	lui	v0,0x0
  58:	8faf0038 	lw	t7,56(sp)
  5c:	24420000 	addiu	v0,v0,0
  60:	0018c900 	sll	t9,t8,0x4
  64:	8c4e0018 	lw	t6,24(v0)
  68:	0338c821 	addu	t9,t9,t8
  6c:	0019c880 	sll	t9,t9,0x2
  70:	01f94021 	addu	t0,t7,t9
  74:	01284821 	addu	t1,t1,t0
  78:	afae0028 	sw	t6,40(sp)
  7c:	8d2917b4 	lw	t1,6068(t1)
  80:	3c018000 	lui	at,0x8000
  84:	02002025 	move	a0,s0
  88:	01215021 	addu	t2,t1,at
  8c:	ac4a0018 	sw	t2,24(v0)
  90:	0c000000 	jal	0 <EffectSsIceSmoke_Init>
  94:	8fa50044 	lw	a1,68(sp)
  98:	8fa50044 	lw	a1,68(sp)
  9c:	2604000c 	addiu	a0,s0,12
  a0:	0c000000 	jal	0 <EffectSsIceSmoke_Init>
  a4:	24a5000c 	addiu	a1,a1,12
  a8:	8fa50044 	lw	a1,68(sp)
  ac:	26040018 	addiu	a0,s0,24
  b0:	0c000000 	jal	0 <EffectSsIceSmoke_Init>
  b4:	24a50018 	addiu	a1,a1,24
  b8:	8fab002c 	lw	t3,44(sp)
  bc:	a6000042 	sh	zero,66(s0)
  c0:	3c180000 	lui	t8,0x0
  c4:	a60b0040 	sh	t3,64(s0)
  c8:	8fac0044 	lw	t4,68(sp)
  cc:	3c0f0000 	lui	t7,0x0
  d0:	240e0032 	li	t6,50
  d4:	858d0024 	lh	t5,36(t4)
  d8:	27180000 	addiu	t8,t8,0
  dc:	25ef0000 	addiu	t7,t7,0
  e0:	a60e005c 	sh	t6,92(s0)
  e4:	ae180028 	sw	t8,40(s0)
  e8:	ae0f0024 	sw	t7,36(s0)
  ec:	a60d0044 	sh	t5,68(s0)
  f0:	8fb90028 	lw	t9,40(sp)
  f4:	3c010000 	lui	at,0x0
  f8:	24020001 	li	v0,1
  fc:	10000005 	b	114 <EffectSsIceSmoke_Init+0x114>
 100:	ac390018 	sw	t9,24(at)
 104:	3c040000 	lui	a0,0x0
 108:	0c000000 	jal	0 <EffectSsIceSmoke_Init>
 10c:	24840000 	addiu	a0,a0,0
 110:	00001025 	move	v0,zero
 114:	8fbf001c 	lw	ra,28(sp)
 118:	8fb00018 	lw	s0,24(sp)
 11c:	27bd0038 	addiu	sp,sp,56
 120:	03e00008 	jr	ra
 124:	00000000 	nop

00000128 <EffectSsIceSmoke_Draw>:
 128:	27bdff70 	addiu	sp,sp,-144
 12c:	afbf003c 	sw	ra,60(sp)
 130:	afb00038 	sw	s0,56(sp)
 134:	afa40090 	sw	a0,144(sp)
 138:	afa50094 	sw	a1,148(sp)
 13c:	afa60098 	sw	a2,152(sp)
 140:	84d80040 	lh	t8,64(a2)
 144:	3c0c0001 	lui	t4,0x1
 148:	3c060000 	lui	a2,0x0
 14c:	0018c900 	sll	t9,t8,0x4
 150:	0338c821 	addu	t9,t9,t8
 154:	0019c880 	sll	t9,t9,0x2
 158:	00995821 	addu	t3,a0,t9
 15c:	018b6021 	addu	t4,t4,t3
 160:	8d8c17b4 	lw	t4,6068(t4)
 164:	24c60040 	addiu	a2,a2,64
 168:	2407009b 	li	a3,155
 16c:	afac0088 	sw	t4,136(sp)
 170:	8c850000 	lw	a1,0(a0)
 174:	27a40068 	addiu	a0,sp,104
 178:	0c000000 	jal	0 <EffectSsIceSmoke_Init>
 17c:	00a08025 	move	s0,a1
 180:	8fa40090 	lw	a0,144(sp)
 184:	3c010001 	lui	at,0x1
 188:	342117a4 	ori	at,at,0x17a4
 18c:	00812021 	addu	a0,a0,at
 190:	afa40044 	sw	a0,68(sp)
 194:	0c000000 	jal	0 <EffectSsIceSmoke_Init>
 198:	24050114 	li	a1,276
 19c:	8fa40044 	lw	a0,68(sp)
 1a0:	04400098 	bltz	v0,404 <EffectSsIceSmoke_Draw+0x2dc>
 1a4:	00402825 	move	a1,v0
 1a8:	0c000000 	jal	0 <EffectSsIceSmoke_Init>
 1ac:	00000000 	nop
 1b0:	50400095 	beqzl	v0,408 <EffectSsIceSmoke_Draw+0x2e0>
 1b4:	8fab0098 	lw	t3,152(sp)
 1b8:	8e0302d0 	lw	v1,720(s0)
 1bc:	3c0fe700 	lui	t7,0xe700
 1c0:	246d0008 	addiu	t5,v1,8
 1c4:	ae0d02d0 	sw	t5,720(s0)
 1c8:	ac600004 	sw	zero,4(v1)
 1cc:	ac6f0000 	sw	t7,0(v1)
 1d0:	8fb80090 	lw	t8,144(sp)
 1d4:	0c000000 	jal	0 <EffectSsIceSmoke_Init>
 1d8:	8f040000 	lw	a0,0(t8)
 1dc:	8fa40088 	lw	a0,136(sp)
 1e0:	3c0a0000 	lui	t2,0x0
 1e4:	3c018000 	lui	at,0x8000
 1e8:	254a0000 	addiu	t2,t2,0
 1ec:	0081c821 	addu	t9,a0,at
 1f0:	ad590018 	sw	t9,24(t2)
 1f4:	8e0302d0 	lw	v1,720(s0)
 1f8:	3c0cdb06 	lui	t4,0xdb06
 1fc:	358c0018 	ori	t4,t4,0x18
 200:	246b0008 	addiu	t3,v1,8
 204:	ae0b02d0 	sw	t3,720(s0)
 208:	ac640004 	sw	a0,4(v1)
 20c:	ac6c0000 	sw	t4,0(v1)
 210:	8e0302d0 	lw	v1,720(s0)
 214:	3c040000 	lui	a0,0x0
 218:	24840000 	addiu	a0,a0,0
 21c:	00047900 	sll	t7,a0,0x4
 220:	000fc702 	srl	t8,t7,0x1c
 224:	246e0008 	addiu	t6,v1,8
 228:	ae0e02d0 	sw	t6,720(s0)
 22c:	0018c880 	sll	t9,t8,0x2
 230:	3c0dde00 	lui	t5,0xde00
 234:	01595821 	addu	t3,t2,t9
 238:	3c0100ff 	lui	at,0xff
 23c:	ac6d0000 	sw	t5,0(v1)
 240:	8d6c0000 	lw	t4,0(t3)
 244:	3421ffff 	ori	at,at,0xffff
 248:	00817024 	and	t6,a0,at
 24c:	3c018000 	lui	at,0x8000
 250:	018e6821 	addu	t5,t4,t6
 254:	01a17821 	addu	t7,t5,at
 258:	ac6f0004 	sw	t7,4(v1)
 25c:	8e0302d0 	lw	v1,720(s0)
 260:	3c19e700 	lui	t9,0xe700
 264:	3c0cfa00 	lui	t4,0xfa00
 268:	24780008 	addiu	t8,v1,8
 26c:	ae1802d0 	sw	t8,720(s0)
 270:	ac790000 	sw	t9,0(v1)
 274:	ac600004 	sw	zero,4(v1)
 278:	8e0302d0 	lw	v1,720(s0)
 27c:	8fa90098 	lw	t1,152(sp)
 280:	3c01c3eb 	lui	at,0xc3eb
 284:	246b0008 	addiu	t3,v1,8
 288:	ae0b02d0 	sw	t3,720(s0)
 28c:	ac6c0000 	sw	t4,0(v1)
 290:	852e0042 	lh	t6,66(t1)
 294:	3421eb00 	ori	at,at,0xeb00
 298:	3c19db06 	lui	t9,0xdb06
 29c:	31cd00ff 	andi	t5,t6,0xff
 2a0:	01a17825 	or	t7,t5,at
 2a4:	ac6f0004 	sw	t7,4(v1)
 2a8:	8e0302d0 	lw	v1,720(s0)
 2ac:	37390020 	ori	t9,t9,0x20
 2b0:	240f0020 	li	t7,32
 2b4:	24780008 	addiu	t8,v1,8
 2b8:	ae1802d0 	sw	t8,720(s0)
 2bc:	ac790000 	sw	t9,0(v1)
 2c0:	8522005c 	lh	v0,92(t1)
 2c4:	8fab0090 	lw	t3,144(sp)
 2c8:	24180020 	li	t8,32
 2cc:	240d0001 	li	t5,1
 2d0:	8d640000 	lw	a0,0(t3)
 2d4:	240e0040 	li	t6,64
 2d8:	240c0020 	li	t4,32
 2dc:	00023080 	sll	a2,v0,0x2
 2e0:	00023900 	sll	a3,v0,0x4
 2e4:	afac0010 	sw	t4,16(sp)
 2e8:	afae0014 	sw	t6,20(sp)
 2ec:	afb80028 	sw	t8,40(sp)
 2f0:	afaf0024 	sw	t7,36(sp)
 2f4:	afa00020 	sw	zero,32(sp)
 2f8:	afa0001c 	sw	zero,28(sp)
 2fc:	afad0018 	sw	t5,24(sp)
 300:	00002825 	move	a1,zero
 304:	afa30050 	sw	v1,80(sp)
 308:	00e23823 	subu	a3,a3,v0
 30c:	0c000000 	jal	0 <EffectSsIceSmoke_Init>
 310:	00c23023 	subu	a2,a2,v0
 314:	8fa80050 	lw	t0,80(sp)
 318:	00003825 	move	a3,zero
 31c:	ad020004 	sw	v0,4(t0)
 320:	8fa20098 	lw	v0,152(sp)
 324:	c44c0000 	lwc1	$f12,0(v0)
 328:	c44e0004 	lwc1	$f14,4(v0)
 32c:	0c000000 	jal	0 <EffectSsIceSmoke_Init>
 330:	8c460008 	lw	a2,8(v0)
 334:	8fa40090 	lw	a0,144(sp)
 338:	3c010001 	lui	at,0x1
 33c:	34211da0 	ori	at,at,0x1da0
 340:	0c000000 	jal	0 <EffectSsIceSmoke_Init>
 344:	00812021 	addu	a0,a0,at
 348:	8fb90098 	lw	t9,152(sp)
 34c:	3c010000 	lui	at,0x0
 350:	c4280088 	lwc1	$f8,136(at)
 354:	872b0044 	lh	t3,68(t9)
 358:	3c063f80 	lui	a2,0x3f80
 35c:	24070001 	li	a3,1
 360:	448b2000 	mtc1	t3,$f4
 364:	00000000 	nop
 368:	468021a0 	cvt.s.w	$f6,$f4
 36c:	46083302 	mul.s	$f12,$f6,$f8
 370:	0c000000 	jal	0 <EffectSsIceSmoke_Init>
 374:	46006386 	mov.s	$f14,$f12
 378:	8fac0090 	lw	t4,144(sp)
 37c:	3c050000 	lui	a1,0x0
 380:	24a50058 	addiu	a1,a1,88
 384:	240600c4 	li	a2,196
 388:	0c000000 	jal	0 <EffectSsIceSmoke_Init>
 38c:	8d840000 	lw	a0,0(t4)
 390:	1040001f 	beqz	v0,410 <EffectSsIceSmoke_Draw+0x2e8>
 394:	3c0dda38 	lui	t5,0xda38
 398:	8e0302d0 	lw	v1,720(s0)
 39c:	35ad0003 	ori	t5,t5,0x3
 3a0:	3c040000 	lui	a0,0x0
 3a4:	246e0008 	addiu	t6,v1,8
 3a8:	ae0e02d0 	sw	t6,720(s0)
 3ac:	ac620004 	sw	v0,4(v1)
 3b0:	ac6d0000 	sw	t5,0(v1)
 3b4:	8e0302d0 	lw	v1,720(s0)
 3b8:	24840000 	addiu	a0,a0,0
 3bc:	0004c900 	sll	t9,a0,0x4
 3c0:	00195f02 	srl	t3,t9,0x1c
 3c4:	246f0008 	addiu	t7,v1,8
 3c8:	ae0f02d0 	sw	t7,720(s0)
 3cc:	000b6080 	sll	t4,t3,0x2
 3d0:	3c0e0000 	lui	t6,0x0
 3d4:	3c18de00 	lui	t8,0xde00
 3d8:	01cc7021 	addu	t6,t6,t4
 3dc:	3c0100ff 	lui	at,0xff
 3e0:	ac780000 	sw	t8,0(v1)
 3e4:	8dce0000 	lw	t6,0(t6)
 3e8:	3421ffff 	ori	at,at,0xffff
 3ec:	00816824 	and	t5,a0,at
 3f0:	3c018000 	lui	at,0x8000
 3f4:	01cd7821 	addu	t7,t6,t5
 3f8:	01e1c021 	addu	t8,t7,at
 3fc:	10000004 	b	410 <EffectSsIceSmoke_Draw+0x2e8>
 400:	ac780004 	sw	t8,4(v1)
 404:	8fab0098 	lw	t3,152(sp)
 408:	2419ffff 	li	t9,-1
 40c:	a579005c 	sh	t9,92(t3)
 410:	8fac0090 	lw	t4,144(sp)
 414:	3c060000 	lui	a2,0x0
 418:	24c60070 	addiu	a2,a2,112
 41c:	27a40068 	addiu	a0,sp,104
 420:	240700d2 	li	a3,210
 424:	0c000000 	jal	0 <EffectSsIceSmoke_Init>
 428:	8d850000 	lw	a1,0(t4)
 42c:	8fbf003c 	lw	ra,60(sp)
 430:	8fb00038 	lw	s0,56(sp)
 434:	27bd0090 	addiu	sp,sp,144
 438:	03e00008 	jr	ra
 43c:	00000000 	nop

00000440 <EffectSsIceSmoke_Update>:
 440:	27bdffe0 	addiu	sp,sp,-32
 444:	3c010001 	lui	at,0x1
 448:	342117a4 	ori	at,at,0x17a4
 44c:	afbf0014 	sw	ra,20(sp)
 450:	afa50024 	sw	a1,36(sp)
 454:	00812021 	addu	a0,a0,at
 458:	afa60028 	sw	a2,40(sp)
 45c:	afa40018 	sw	a0,24(sp)
 460:	0c000000 	jal	0 <EffectSsIceSmoke_Init>
 464:	24050114 	li	a1,276
 468:	8fa30028 	lw	v1,40(sp)
 46c:	8fa40018 	lw	a0,24(sp)
 470:	0440000b 	bltz	v0,4a0 <EffectSsIceSmoke_Update+0x60>
 474:	00402825 	move	a1,v0
 478:	0c000000 	jal	0 <EffectSsIceSmoke_Init>
 47c:	00000000 	nop
 480:	10400007 	beqz	v0,4a0 <EffectSsIceSmoke_Update+0x60>
 484:	8fa30028 	lw	v1,40(sp)
 488:	84620042 	lh	v0,66(v1)
 48c:	28410064 	slti	at,v0,100
 490:	10200005 	beqz	at,4a8 <EffectSsIceSmoke_Update+0x68>
 494:	244e000a 	addiu	t6,v0,10
 498:	10000003 	b	4a8 <EffectSsIceSmoke_Update+0x68>
 49c:	a46e0042 	sh	t6,66(v1)
 4a0:	240fffff 	li	t7,-1
 4a4:	a46f005c 	sh	t7,92(v1)
 4a8:	8fbf0014 	lw	ra,20(sp)
 4ac:	27bd0020 	addiu	sp,sp,32
 4b0:	03e00008 	jr	ra
 4b4:	00000000 	nop
	...
