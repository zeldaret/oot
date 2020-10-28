
build/src/overlays/actors/ovl_En_Bird/z_en_bird.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <EnBird_SetupAction>:
   0:	03e00008 	jr	ra
   4:	ac850190 	sw	a1,400(a0)

00000008 <EnBird_Init>:
   8:	27bdffd0 	addiu	sp,sp,-48
   c:	afa50034 	sw	a1,52(sp)
  10:	afbf002c 	sw	ra,44(sp)
  14:	afb00028 	sw	s0,40(sp)
  18:	3c050000 	lui	a1,0x0
  1c:	00808025 	move	s0,a0
  20:	0c000000 	jal	0 <EnBird_SetupAction>
  24:	24a50020 	addiu	a1,a1,32
  28:	3c053c23 	lui	a1,0x3c23
  2c:	34a5d70a 	ori	a1,a1,0xd70a
  30:	0c000000 	jal	0 <EnBird_SetupAction>
  34:	02002025 	move	a0,s0
  38:	3c060000 	lui	a2,0x0
  3c:	3c070000 	lui	a3,0x0
  40:	24e70000 	addiu	a3,a3,0
  44:	24c60000 	addiu	a2,a2,0
  48:	8fa40034 	lw	a0,52(sp)
  4c:	2605014c 	addiu	a1,s0,332
  50:	afa00010 	sw	zero,16(sp)
  54:	afa00014 	sw	zero,20(sp)
  58:	0c000000 	jal	0 <EnBird_SetupAction>
  5c:	afa00018 	sw	zero,24(sp)
  60:	3c0545ab 	lui	a1,0x45ab
  64:	3c060000 	lui	a2,0x0
  68:	24c60000 	addiu	a2,a2,0
  6c:	34a5e000 	ori	a1,a1,0xe000
  70:	260400b4 	addiu	a0,s0,180
  74:	0c000000 	jal	0 <EnBird_SetupAction>
  78:	3c074080 	lui	a3,0x4080
  7c:	3c013fc0 	lui	at,0x3fc0
  80:	44812000 	mtc1	at,$f4
  84:	3c013f00 	lui	at,0x3f00
  88:	44813000 	mtc1	at,$f6
  8c:	3c014220 	lui	at,0x4220
  90:	44800000 	mtc1	zero,$f0
  94:	44814000 	mtc1	at,$f8
  98:	3c01428c 	lui	at,0x428c
  9c:	44815000 	mtc1	at,$f10
  a0:	240e09c4 	li	t6,2500
  a4:	ae000194 	sw	zero,404(s0)
  a8:	ae000198 	sw	zero,408(s0)
  ac:	a60e01c0 	sh	t6,448(s0)
  b0:	a20000ae 	sb	zero,174(s0)
  b4:	02002025 	move	a0,s0
  b8:	8605001c 	lh	a1,28(s0)
  bc:	e60401a8 	swc1	$f4,424(s0)
  c0:	e60601ac 	swc1	$f6,428(s0)
  c4:	e60001a0 	swc1	$f0,416(s0)
  c8:	e60001a4 	swc1	$f0,420(s0)
  cc:	e60001b8 	swc1	$f0,440(s0)
  d0:	e60801b0 	swc1	$f8,432(s0)
  d4:	0c000000 	jal	0 <EnBird_SetupAction>
  d8:	e60a01bc 	swc1	$f10,444(s0)
  dc:	8fbf002c 	lw	ra,44(sp)
  e0:	8fb00028 	lw	s0,40(sp)
  e4:	27bd0030 	addiu	sp,sp,48
  e8:	03e00008 	jr	ra
  ec:	00000000 	nop

000000f0 <EnBird_Destroy>:
  f0:	afa40000 	sw	a0,0(sp)
  f4:	03e00008 	jr	ra
  f8:	afa50004 	sw	a1,4(sp)

000000fc <func_809C1CAC>:
  fc:	27bdffd0 	addiu	sp,sp,-48
 100:	afa40030 	sw	a0,48(sp)
 104:	afbf0024 	sw	ra,36(sp)
 108:	3c040000 	lui	a0,0x0
 10c:	afa50034 	sw	a1,52(sp)
 110:	0c000000 	jal	0 <EnBird_SetupAction>
 114:	24840000 	addiu	a0,a0,0
 118:	8fae0030 	lw	t6,48(sp)
 11c:	44822000 	mtc1	v0,$f4
 120:	3c013f80 	lui	at,0x3f80
 124:	85cf019c 	lh	t7,412(t6)
 128:	24040005 	li	a0,5
 12c:	24050023 	li	a1,35
 130:	11e00004 	beqz	t7,144 <func_809C1CAC+0x48>
 134:	468020a0 	cvt.s.w	$f2,$f4
 138:	44800000 	mtc1	zero,$f0
 13c:	10000004 	b	150 <func_809C1CAC+0x54>
 140:	e7a00028 	swc1	$f0,40(sp)
 144:	44810000 	mtc1	at,$f0
 148:	00000000 	nop
 14c:	e7a00028 	swc1	$f0,40(sp)
 150:	0c000000 	jal	0 <EnBird_SetupAction>
 154:	e7a2002c 	swc1	$f2,44(sp)
 158:	8fa30030 	lw	v1,48(sp)
 15c:	c7a00028 	lwc1	$f0,40(sp)
 160:	44806000 	mtc1	zero,$f12
 164:	c7a2002c 	lwc1	$f2,44(sp)
 168:	ac620198 	sw	v0,408(v1)
 16c:	3c050000 	lui	a1,0x0
 170:	44060000 	mfc1	a2,$f0
 174:	44076000 	mfc1	a3,$f12
 178:	24a50000 	addiu	a1,a1,0
 17c:	afa00014 	sw	zero,20(sp)
 180:	2464014c 	addiu	a0,v1,332
 184:	e7ac0018 	swc1	$f12,24(sp)
 188:	0c000000 	jal	0 <EnBird_SetupAction>
 18c:	e7a20010 	swc1	$f2,16(sp)
 190:	3c050000 	lui	a1,0x0
 194:	24a50000 	addiu	a1,a1,0
 198:	0c000000 	jal	0 <EnBird_SetupAction>
 19c:	8fa40030 	lw	a0,48(sp)
 1a0:	8fbf0024 	lw	ra,36(sp)
 1a4:	27bd0030 	addiu	sp,sp,48
 1a8:	03e00008 	jr	ra
 1ac:	00000000 	nop

000001b0 <func_809C1D60>:
 1b0:	27bdffd8 	addiu	sp,sp,-40
 1b4:	afbf0024 	sw	ra,36(sp)
 1b8:	afb00020 	sw	s0,32(sp)
 1bc:	afa5002c 	sw	a1,44(sp)
 1c0:	00808025 	move	s0,a0
 1c4:	0c000000 	jal	0 <EnBird_SetupAction>
 1c8:	c48c01b4 	lwc1	$f12,436(a0)
 1cc:	c60601a0 	lwc1	$f6,416(s0)
 1d0:	c60400bc 	lwc1	$f4,188(s0)
 1d4:	44801000 	mtc1	zero,$f2
 1d8:	46060202 	mul.s	$f8,$f0,$f6
 1dc:	3c063dcc 	lui	a2,0x3dcc
 1e0:	44051000 	mfc1	a1,$f2
 1e4:	34c6cccd 	ori	a2,a2,0xcccd
 1e8:	26040068 	addiu	a0,s0,104
 1ec:	3c073f00 	lui	a3,0x3f00
 1f0:	46082280 	add.s	$f10,$f4,$f8
 1f4:	e60a00bc 	swc1	$f10,188(s0)
 1f8:	0c000000 	jal	0 <EnBird_SetupAction>
 1fc:	e7a20010 	swc1	$f2,16(sp)
 200:	860e019c 	lh	t6,412(s0)
 204:	11c00004 	beqz	t6,218 <func_809C1D60+0x68>
 208:	00000000 	nop
 20c:	c6000068 	lwc1	$f0,104(s0)
 210:	46000400 	add.s	$f16,$f0,$f0
 214:	e6100168 	swc1	$f16,360(s0)
 218:	0c000000 	jal	0 <EnBird_SetupAction>
 21c:	2604014c 	addiu	a0,s0,332
 220:	8e0f0198 	lw	t7,408(s0)
 224:	02002025 	move	a0,s0
 228:	25f8ffff 	addiu	t8,t7,-1
 22c:	1f000003 	bgtz	t8,23c <func_809C1D60+0x8c>
 230:	ae180198 	sw	t8,408(s0)
 234:	0c000000 	jal	0 <EnBird_SetupAction>
 238:	8605001c 	lh	a1,28(s0)
 23c:	8fbf0024 	lw	ra,36(sp)
 240:	8fb00020 	lw	s0,32(sp)
 244:	27bd0028 	addiu	sp,sp,40
 248:	03e00008 	jr	ra
 24c:	00000000 	nop

00000250 <func_809C1E00>:
 250:	27bdffe8 	addiu	sp,sp,-24
 254:	afbf0014 	sw	ra,20(sp)
 258:	afa40018 	sw	a0,24(sp)
 25c:	afa5001c 	sw	a1,28(sp)
 260:	2405002d 	li	a1,45
 264:	0c000000 	jal	0 <EnBird_SetupAction>
 268:	24040014 	li	a0,20
 26c:	8fa40018 	lw	a0,24(sp)
 270:	3c050000 	lui	a1,0x0
 274:	24a50000 	addiu	a1,a1,0
 278:	0c000000 	jal	0 <EnBird_SetupAction>
 27c:	ac820198 	sw	v0,408(a0)
 280:	8fbf0014 	lw	ra,20(sp)
 284:	27bd0018 	addiu	sp,sp,24
 288:	03e00008 	jr	ra
 28c:	00000000 	nop

00000290 <func_809C1E40>:
 290:	27bdffc8 	addiu	sp,sp,-56
 294:	afbf0024 	sw	ra,36(sp)
 298:	afb00020 	sw	s0,32(sp)
 29c:	afa5003c 	sw	a1,60(sp)
 2a0:	00808025 	move	s0,a0
 2a4:	0c000000 	jal	0 <EnBird_SetupAction>
 2a8:	c48c01b4 	lwc1	$f12,436(a0)
 2ac:	c60601a0 	lwc1	$f6,416(s0)
 2b0:	c60400bc 	lwc1	$f4,188(s0)
 2b4:	44808000 	mtc1	zero,$f16
 2b8:	46060202 	mul.s	$f8,$f0,$f6
 2bc:	8e0501a8 	lw	a1,424(s0)
 2c0:	3c063dcc 	lui	a2,0x3dcc
 2c4:	8e0701ac 	lw	a3,428(s0)
 2c8:	34c6cccd 	ori	a2,a2,0xcccd
 2cc:	26040068 	addiu	a0,s0,104
 2d0:	46082280 	add.s	$f10,$f4,$f8
 2d4:	e60a00bc 	swc1	$f10,188(s0)
 2d8:	0c000000 	jal	0 <EnBird_SetupAction>
 2dc:	e7b00010 	swc1	$f16,16(sp)
 2e0:	26040024 	addiu	a0,s0,36
 2e4:	26050008 	addiu	a1,s0,8
 2e8:	afa50028 	sw	a1,40(sp)
 2ec:	0c000000 	jal	0 <EnBird_SetupAction>
 2f0:	afa4002c 	sw	a0,44(sp)
 2f4:	c61201b0 	lwc1	$f18,432(s0)
 2f8:	8fa4002c 	lw	a0,44(sp)
 2fc:	8fa50028 	lw	a1,40(sp)
 300:	4600903c 	c.lt.s	$f18,$f0
 304:	00000000 	nop
 308:	45010005 	bc1t	320 <func_809C1E40+0x90>
 30c:	00000000 	nop
 310:	8e0e0198 	lw	t6,408(s0)
 314:	29c10004 	slti	at,t6,4
 318:	1020000a 	beqz	at,344 <func_809C1E40+0xb4>
 31c:	00000000 	nop
 320:	0c000000 	jal	0 <EnBird_SetupAction>
 324:	00000000 	nop
 328:	00022c00 	sll	a1,v0,0x10
 32c:	00052c03 	sra	a1,a1,0x10
 330:	26040032 	addiu	a0,s0,50
 334:	0c000000 	jal	0 <EnBird_SetupAction>
 338:	860601c0 	lh	a2,448(s0)
 33c:	1000000c 	b	370 <func_809C1E40+0xe0>
 340:	860b0032 	lh	t3,50(s0)
 344:	0c000000 	jal	0 <EnBird_SetupAction>
 348:	c60c01b4 	lwc1	$f12,436(s0)
 34c:	c60601a4 	lwc1	$f6,420(s0)
 350:	860f0032 	lh	t7,50(s0)
 354:	46060102 	mul.s	$f4,$f0,$f6
 358:	4600220d 	trunc.w.s	$f8,$f4
 35c:	44094000 	mfc1	t1,$f8
 360:	00000000 	nop
 364:	01e95021 	addu	t2,t7,t1
 368:	a60a0032 	sh	t2,50(s0)
 36c:	860b0032 	lh	t3,50(s0)
 370:	2604014c 	addiu	a0,s0,332
 374:	0c000000 	jal	0 <EnBird_SetupAction>
 378:	a60b00b6 	sh	t3,182(s0)
 37c:	8e0c0198 	lw	t4,408(s0)
 380:	02002025 	move	a0,s0
 384:	258dffff 	addiu	t5,t4,-1
 388:	05a10003 	bgez	t5,398 <func_809C1E40+0x108>
 38c:	ae0d0198 	sw	t5,408(s0)
 390:	0c000000 	jal	0 <EnBird_SetupAction>
 394:	8605001c 	lh	a1,28(s0)
 398:	8fbf0024 	lw	ra,36(sp)
 39c:	8fb00020 	lw	s0,32(sp)
 3a0:	27bd0038 	addiu	sp,sp,56
 3a4:	03e00008 	jr	ra
 3a8:	00000000 	nop

000003ac <EnBird_Update>:
 3ac:	27bdffe8 	addiu	sp,sp,-24
 3b0:	afbf0014 	sw	ra,20(sp)
 3b4:	c48401b4 	lwc1	$f4,436(a0)
 3b8:	c48601b8 	lwc1	$f6,440(a0)
 3bc:	8c990190 	lw	t9,400(a0)
 3c0:	46062200 	add.s	$f8,$f4,$f6
 3c4:	0320f809 	jalr	t9
 3c8:	e48801b4 	swc1	$f8,436(a0)
 3cc:	8fbf0014 	lw	ra,20(sp)
 3d0:	27bd0018 	addiu	sp,sp,24
 3d4:	03e00008 	jr	ra
 3d8:	00000000 	nop

000003dc <EnBird_Draw>:
 3dc:	27bdffe0 	addiu	sp,sp,-32
 3e0:	afa40020 	sw	a0,32(sp)
 3e4:	8fae0020 	lw	t6,32(sp)
 3e8:	afbf001c 	sw	ra,28(sp)
 3ec:	afa50024 	sw	a1,36(sp)
 3f0:	00a02025 	move	a0,a1
 3f4:	8dc50150 	lw	a1,336(t6)
 3f8:	8dc6016c 	lw	a2,364(t6)
 3fc:	afa00014 	sw	zero,20(sp)
 400:	afa00010 	sw	zero,16(sp)
 404:	0c000000 	jal	0 <EnBird_SetupAction>
 408:	00003825 	move	a3,zero
 40c:	8fbf001c 	lw	ra,28(sp)
 410:	27bd0020 	addiu	sp,sp,32
 414:	03e00008 	jr	ra
 418:	00000000 	nop
 41c:	00000000 	nop
