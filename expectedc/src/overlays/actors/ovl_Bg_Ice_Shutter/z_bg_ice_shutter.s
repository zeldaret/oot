
build/src/overlays/actors/ovl_Bg_Ice_Shutter/z_bg_ice_shutter.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <func_80891AC0>:
   0:	27bdffd8 	addiu	sp,sp,-40
   4:	afb00018 	sw	s0,24(sp)
   8:	00808025 	move	s0,a0
   c:	afbf001c 	sw	ra,28(sp)
  10:	0c000000 	jal	0 <func_80891AC0>
  14:	848400b4 	lh	a0,180(a0)
  18:	c6040060 	lwc1	$f4,96(s0)
  1c:	46040182 	mul.s	$f6,$f0,$f4
  20:	e7a60024 	swc1	$f6,36(sp)
  24:	0c000000 	jal	0 <func_80891AC0>
  28:	860400b4 	lh	a0,180(s0)
  2c:	c6080060 	lwc1	$f8,96(s0)
  30:	c610000c 	lwc1	$f16,12(s0)
  34:	860400b6 	lh	a0,182(s0)
  38:	46080282 	mul.s	$f10,$f0,$f8
  3c:	46105480 	add.s	$f18,$f10,$f16
  40:	0c000000 	jal	0 <func_80891AC0>
  44:	e6120028 	swc1	$f18,40(s0)
  48:	c7a40024 	lwc1	$f4,36(sp)
  4c:	c6080008 	lwc1	$f8,8(s0)
  50:	860400b6 	lh	a0,182(s0)
  54:	46040182 	mul.s	$f6,$f0,$f4
  58:	46083280 	add.s	$f10,$f6,$f8
  5c:	0c000000 	jal	0 <func_80891AC0>
  60:	e60a0024 	swc1	$f10,36(s0)
  64:	c7b00024 	lwc1	$f16,36(sp)
  68:	c6040010 	lwc1	$f4,16(s0)
  6c:	46100482 	mul.s	$f18,$f0,$f16
  70:	46049180 	add.s	$f6,$f18,$f4
  74:	e606002c 	swc1	$f6,44(s0)
  78:	8fbf001c 	lw	ra,28(sp)
  7c:	8fb00018 	lw	s0,24(sp)
  80:	27bd0028 	addiu	sp,sp,40
  84:	03e00008 	jr	ra
  88:	00000000 	nop

0000008c <BgIceShutter_Init>:
  8c:	27bdffc8 	addiu	sp,sp,-56
  90:	afa5003c 	sw	a1,60(sp)
  94:	afbf001c 	sw	ra,28(sp)
  98:	afb00018 	sw	s0,24(sp)
  9c:	3c050000 	lui	a1,0x0
  a0:	00808025 	move	s0,a0
  a4:	afa0002c 	sw	zero,44(sp)
  a8:	0c000000 	jal	0 <func_80891AC0>
  ac:	24a50020 	addiu	a1,a1,32
  b0:	02002025 	move	a0,s0
  b4:	0c000000 	jal	0 <func_80891AC0>
  b8:	00002825 	move	a1,zero
  bc:	8602001c 	lh	v0,28(s0)
  c0:	3c040000 	lui	a0,0x0
  c4:	24840000 	addiu	a0,a0,0
  c8:	304e00ff 	andi	t6,v0,0xff
  cc:	00027a03 	sra	t7,v0,0x8
  d0:	afae0028 	sw	t6,40(sp)
  d4:	31f800ff 	andi	t8,t7,0xff
  d8:	a618001c 	sh	t8,28(s0)
  dc:	0c000000 	jal	0 <func_80891AC0>
  e0:	27a5002c 	addiu	a1,sp,44
  e4:	8fa4003c 	lw	a0,60(sp)
  e8:	02003025 	move	a2,s0
  ec:	8fa7002c 	lw	a3,44(sp)
  f0:	0c000000 	jal	0 <func_80891AC0>
  f4:	24850810 	addiu	a1,a0,2064
  f8:	8fa30028 	lw	v1,40(sp)
  fc:	24010002 	li	at,2
 100:	ae02014c 	sw	v0,332(s0)
 104:	14610002 	bne	v1,at,110 <BgIceShutter_Init+0x84>
 108:	2419c000 	li	t9,-16384
 10c:	a61900b4 	sh	t9,180(s0)
 110:	24010001 	li	at,1
 114:	1061000d 	beq	v1,at,14c <BgIceShutter_Init+0xc0>
 118:	8fa4003c 	lw	a0,60(sp)
 11c:	8fa4003c 	lw	a0,60(sp)
 120:	0c000000 	jal	0 <func_80891AC0>
 124:	82050003 	lb	a1,3(s0)
 128:	10400005 	beqz	v0,140 <BgIceShutter_Init+0xb4>
 12c:	3c080000 	lui	t0,0x0
 130:	0c000000 	jal	0 <func_80891AC0>
 134:	02002025 	move	a0,s0
 138:	1000000f 	b	178 <BgIceShutter_Init+0xec>
 13c:	8faa0028 	lw	t2,40(sp)
 140:	25080000 	addiu	t0,t0,0
 144:	1000000b 	b	174 <BgIceShutter_Init+0xe8>
 148:	ae080164 	sw	t0,356(s0)
 14c:	0c000000 	jal	0 <func_80891AC0>
 150:	8605001c 	lh	a1,28(s0)
 154:	10400005 	beqz	v0,16c <BgIceShutter_Init+0xe0>
 158:	3c090000 	lui	t1,0x0
 15c:	0c000000 	jal	0 <func_80891AC0>
 160:	02002025 	move	a0,s0
 164:	10000004 	b	178 <BgIceShutter_Init+0xec>
 168:	8faa0028 	lw	t2,40(sp)
 16c:	25290000 	addiu	t1,t1,0
 170:	ae090164 	sw	t1,356(s0)
 174:	8faa0028 	lw	t2,40(sp)
 178:	24010002 	li	at,2
 17c:	02002025 	move	a0,s0
 180:	15410019 	bne	t2,at,1e8 <BgIceShutter_Init+0x15c>
 184:	00000000 	nop
 188:	0c000000 	jal	0 <func_80891AC0>
 18c:	860400b4 	lh	a0,180(s0)
 190:	3c014248 	lui	at,0x4248
 194:	44812000 	mtc1	at,$f4
 198:	00000000 	nop
 19c:	46040182 	mul.s	$f6,$f0,$f4
 1a0:	e7a60024 	swc1	$f6,36(sp)
 1a4:	0c000000 	jal	0 <func_80891AC0>
 1a8:	860400b6 	lh	a0,182(s0)
 1ac:	c7a80024 	lwc1	$f8,36(sp)
 1b0:	c6100008 	lwc1	$f16,8(s0)
 1b4:	c604000c 	lwc1	$f4,12(s0)
 1b8:	46080282 	mul.s	$f10,$f0,$f8
 1bc:	860400b6 	lh	a0,182(s0)
 1c0:	e604003c 	swc1	$f4,60(s0)
 1c4:	46105480 	add.s	$f18,$f10,$f16
 1c8:	0c000000 	jal	0 <func_80891AC0>
 1cc:	e6120038 	swc1	$f18,56(s0)
 1d0:	c7a60024 	lwc1	$f6,36(sp)
 1d4:	c60a0010 	lwc1	$f10,16(s0)
 1d8:	46060202 	mul.s	$f8,$f0,$f6
 1dc:	460a4400 	add.s	$f16,$f8,$f10
 1e0:	10000003 	b	1f0 <BgIceShutter_Init+0x164>
 1e4:	e6100040 	swc1	$f16,64(s0)
 1e8:	0c000000 	jal	0 <func_80891AC0>
 1ec:	3c054248 	lui	a1,0x4248
 1f0:	8fbf001c 	lw	ra,28(sp)
 1f4:	8fb00018 	lw	s0,24(sp)
 1f8:	27bd0038 	addiu	sp,sp,56
 1fc:	03e00008 	jr	ra
 200:	00000000 	nop

00000204 <BgIceShutter_Destroy>:
 204:	27bdffe8 	addiu	sp,sp,-24
 208:	afa40018 	sw	a0,24(sp)
 20c:	8fae0018 	lw	t6,24(sp)
 210:	afbf0014 	sw	ra,20(sp)
 214:	00a02025 	move	a0,a1
 218:	24a50810 	addiu	a1,a1,2064
 21c:	0c000000 	jal	0 <func_80891AC0>
 220:	8dc6014c 	lw	a2,332(t6)
 224:	8fbf0014 	lw	ra,20(sp)
 228:	27bd0018 	addiu	sp,sp,24
 22c:	03e00008 	jr	ra
 230:	00000000 	nop

00000234 <func_80891CF4>:
 234:	27bdffe0 	addiu	sp,sp,-32
 238:	afb00018 	sw	s0,24(sp)
 23c:	00808025 	move	s0,a0
 240:	afbf001c 	sw	ra,28(sp)
 244:	afa50024 	sw	a1,36(sp)
 248:	00a02025 	move	a0,a1
 24c:	0c000000 	jal	0 <func_80891AC0>
 250:	82050003 	lb	a1,3(s0)
 254:	10400010 	beqz	v0,298 <func_80891CF4+0x64>
 258:	8fa40024 	lw	a0,36(sp)
 25c:	0c000000 	jal	0 <func_80891AC0>
 260:	82050003 	lb	a1,3(s0)
 264:	8fa40024 	lw	a0,36(sp)
 268:	26050024 	addiu	a1,s0,36
 26c:	2406001e 	li	a2,30
 270:	0c000000 	jal	0 <func_80891AC0>
 274:	24072814 	li	a3,10260
 278:	860f00b4 	lh	t7,180(s0)
 27c:	3c0e0000 	lui	t6,0x0
 280:	25ce0000 	addiu	t6,t6,0
 284:	15e00004 	bnez	t7,298 <func_80891CF4+0x64>
 288:	ae0e0164 	sw	t6,356(s0)
 28c:	8fa40024 	lw	a0,36(sp)
 290:	0c000000 	jal	0 <func_80891AC0>
 294:	02002825 	move	a1,s0
 298:	8fbf001c 	lw	ra,28(sp)
 29c:	8fb00018 	lw	s0,24(sp)
 2a0:	27bd0020 	addiu	sp,sp,32
 2a4:	03e00008 	jr	ra
 2a8:	00000000 	nop

000002ac <func_80891D6C>:
 2ac:	27bdffe8 	addiu	sp,sp,-24
 2b0:	afa40018 	sw	a0,24(sp)
 2b4:	8fae0018 	lw	t6,24(sp)
 2b8:	afbf0014 	sw	ra,20(sp)
 2bc:	afa5001c 	sw	a1,28(sp)
 2c0:	00a02025 	move	a0,a1
 2c4:	0c000000 	jal	0 <func_80891AC0>
 2c8:	85c5001c 	lh	a1,28(t6)
 2cc:	1040000d 	beqz	v0,304 <func_80891D6C+0x58>
 2d0:	8fa4001c 	lw	a0,28(sp)
 2d4:	8fa50018 	lw	a1,24(sp)
 2d8:	2406001e 	li	a2,30
 2dc:	24072814 	li	a3,10260
 2e0:	0c000000 	jal	0 <func_80891AC0>
 2e4:	24a50024 	addiu	a1,a1,36
 2e8:	8fb80018 	lw	t8,24(sp)
 2ec:	3c0f0000 	lui	t7,0x0
 2f0:	25ef0000 	addiu	t7,t7,0
 2f4:	af0f0164 	sw	t7,356(t8)
 2f8:	8fa50018 	lw	a1,24(sp)
 2fc:	0c000000 	jal	0 <func_80891AC0>
 300:	8fa4001c 	lw	a0,28(sp)
 304:	8fbf0014 	lw	ra,20(sp)
 308:	27bd0018 	addiu	sp,sp,24
 30c:	03e00008 	jr	ra
 310:	00000000 	nop

00000314 <func_80891DD4>:
 314:	27bdffe8 	addiu	sp,sp,-24
 318:	afbf0014 	sw	ra,20(sp)
 31c:	afa5001c 	sw	a1,28(sp)
 320:	00803825 	move	a3,a0
 324:	afa70018 	sw	a3,24(sp)
 328:	24840068 	addiu	a0,a0,104
 32c:	3c0541f0 	lui	a1,0x41f0
 330:	0c000000 	jal	0 <func_80891AC0>
 334:	3c064000 	lui	a2,0x4000
 338:	8fa70018 	lw	a3,24(sp)
 33c:	3c054352 	lui	a1,0x4352
 340:	24e40060 	addiu	a0,a3,96
 344:	0c000000 	jal	0 <func_80891AC0>
 348:	8ce60068 	lw	a2,104(a3)
 34c:	10400005 	beqz	v0,364 <func_80891DD4+0x50>
 350:	8fa70018 	lw	a3,24(sp)
 354:	0c000000 	jal	0 <func_80891AC0>
 358:	00e02025 	move	a0,a3
 35c:	10000004 	b	370 <func_80891DD4+0x5c>
 360:	8fbf0014 	lw	ra,20(sp)
 364:	0c000000 	jal	0 <func_80891AC0>
 368:	00e02025 	move	a0,a3
 36c:	8fbf0014 	lw	ra,20(sp)
 370:	27bd0018 	addiu	sp,sp,24
 374:	03e00008 	jr	ra
 378:	00000000 	nop

0000037c <BgIceShutter_Update>:
 37c:	27bdffe8 	addiu	sp,sp,-24
 380:	afbf0014 	sw	ra,20(sp)
 384:	8c990164 	lw	t9,356(a0)
 388:	0320f809 	jalr	t9
 38c:	00000000 	nop
 390:	8fbf0014 	lw	ra,20(sp)
 394:	27bd0018 	addiu	sp,sp,24
 398:	03e00008 	jr	ra
 39c:	00000000 	nop

000003a0 <BgIceShutter_Draw>:
 3a0:	27bdffe8 	addiu	sp,sp,-24
 3a4:	afa40018 	sw	a0,24(sp)
 3a8:	00a02025 	move	a0,a1
 3ac:	afbf0014 	sw	ra,20(sp)
 3b0:	3c050000 	lui	a1,0x0
 3b4:	0c000000 	jal	0 <func_80891AC0>
 3b8:	24a50000 	addiu	a1,a1,0
 3bc:	8fbf0014 	lw	ra,20(sp)
 3c0:	27bd0018 	addiu	sp,sp,24
 3c4:	03e00008 	jr	ra
 3c8:	00000000 	nop
 3cc:	00000000 	nop
