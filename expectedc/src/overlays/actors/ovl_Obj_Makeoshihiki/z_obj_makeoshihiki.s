
build/src/overlays/actors/ovl_Obj_Makeoshihiki/z_obj_makeoshihiki.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <ObjMakeoshihiki_Init>:
   0:	27bdffb8 	addiu	sp,sp,-72
   4:	afbf003c 	sw	ra,60(sp)
   8:	afb00038 	sw	s0,56(sp)
   c:	afa5004c 	sw	a1,76(sp)
  10:	848e0018 	lh	t6,24(a0)
  14:	8482001c 	lh	v0,28(a0)
  18:	3c190000 	lui	t9,0x0
  1c:	31cf0001 	andi	t7,t6,0x1
  20:	000fc080 	sll	t8,t7,0x2
  24:	030fc023 	subu	t8,t8,t7
  28:	0018c080 	sll	t8,t8,0x2
  2c:	030fc023 	subu	t8,t8,t7
  30:	00024983 	sra	t1,v0,0x6
  34:	0018c080 	sll	t8,t8,0x2
  38:	27390020 	addiu	t9,t9,32
  3c:	312a0001 	andi	t2,t1,0x1
  40:	00808025 	move	s0,a0
  44:	15400009 	bnez	t2,6c <ObjMakeoshihiki_Init+0x6c>
  48:	03194021 	addu	t0,t8,t9
  4c:	00a02025 	move	a0,a1
  50:	3045003f 	andi	a1,v0,0x3f
  54:	0c000000 	jal	0 <ObjMakeoshihiki_Init>
  58:	afa80044 	sw	t0,68(sp)
  5c:	10400003 	beqz	v0,6c <ObjMakeoshihiki_Init+0x6c>
  60:	8fa80044 	lw	t0,68(sp)
  64:	1000000f 	b	a4 <ObjMakeoshihiki_Init+0xa4>
  68:	24030001 	li	v1,1
  6c:	8602001c 	lh	v0,28(s0)
  70:	8fa4004c 	lw	a0,76(sp)
  74:	00025b83 	sra	t3,v0,0xe
  78:	316c0001 	andi	t4,t3,0x1
  7c:	15800008 	bnez	t4,a0 <ObjMakeoshihiki_Init+0xa0>
  80:	00022a03 	sra	a1,v0,0x8
  84:	30a5003f 	andi	a1,a1,0x3f
  88:	0c000000 	jal	0 <ObjMakeoshihiki_Init>
  8c:	afa80044 	sw	t0,68(sp)
  90:	10400003 	beqz	v0,a0 <ObjMakeoshihiki_Init+0xa0>
  94:	8fa80044 	lw	t0,68(sp)
  98:	10000002 	b	a4 <ObjMakeoshihiki_Init+0xa4>
  9c:	24030002 	li	v1,2
  a0:	00001825 	move	v1,zero
  a4:	00037080 	sll	t6,v1,0x2
  a8:	01c37023 	subu	t6,t6,v1
  ac:	000e7080 	sll	t6,t6,0x2
  b0:	010e1021 	addu	v0,t0,t6
  b4:	c4440000 	lwc1	$f4,0(v0)
  b8:	8fa6004c 	lw	a2,76(sp)
  bc:	02002825 	move	a1,s0
  c0:	e7a40010 	swc1	$f4,16(sp)
  c4:	c4460004 	lwc1	$f6,4(v0)
  c8:	240700ff 	li	a3,255
  cc:	24c41c24 	addiu	a0,a2,7204
  d0:	e7a60014 	swc1	$f6,20(sp)
  d4:	c4480008 	lwc1	$f8,8(v0)
  d8:	afa0001c 	sw	zero,28(sp)
  dc:	e7a80018 	swc1	$f8,24(sp)
  e0:	850f002a 	lh	t7,42(t0)
  e4:	afa00024 	sw	zero,36(sp)
  e8:	afaf0020 	sw	t7,32(sp)
  ec:	91180027 	lbu	t8,39(t0)
  f0:	910a0028 	lbu	t2,40(t0)
  f4:	afa80044 	sw	t0,68(sp)
  f8:	0018c980 	sll	t9,t8,0x6
  fc:	332900c0 	andi	t1,t9,0xc0
 100:	314b000f 	andi	t3,t2,0xf
 104:	012b6025 	or	t4,t1,t3
 108:	358dff00 	ori	t5,t4,0xff00
 10c:	afad0028 	sw	t5,40(sp)
 110:	0c000000 	jal	0 <ObjMakeoshihiki_Init>
 114:	afa30040 	sw	v1,64(sp)
 118:	8fa30040 	lw	v1,64(sp)
 11c:	14400011 	bnez	v0,164 <ObjMakeoshihiki_Init+0x164>
 120:	8fa80044 	lw	t0,68(sp)
 124:	3c040000 	lui	a0,0x0
 128:	0c000000 	jal	0 <ObjMakeoshihiki_Init>
 12c:	24840000 	addiu	a0,a0,0
 130:	3c040000 	lui	a0,0x0
 134:	3c050000 	lui	a1,0x0
 138:	24a5003c 	addiu	a1,a1,60
 13c:	2484000c 	addiu	a0,a0,12
 140:	0c000000 	jal	0 <ObjMakeoshihiki_Init>
 144:	240600c2 	li	a2,194
 148:	3c040000 	lui	a0,0x0
 14c:	0c000000 	jal	0 <ObjMakeoshihiki_Init>
 150:	24840054 	addiu	a0,a0,84
 154:	0c000000 	jal	0 <ObjMakeoshihiki_Init>
 158:	02002025 	move	a0,s0
 15c:	10000013 	b	1ac <ObjMakeoshihiki_Init+0x1ac>
 160:	8fbf003c 	lw	ra,60(sp)
 164:	01037021 	addu	t6,t0,v1
 168:	91cf0024 	lbu	t7,36(t6)
 16c:	3c040000 	lui	a0,0x0
 170:	24840058 	addiu	a0,a0,88
 174:	31f80002 	andi	t8,t7,0x2
 178:	13000004 	beqz	t8,18c <ObjMakeoshihiki_Init+0x18c>
 17c:	3c050000 	lui	a1,0x0
 180:	8e0a011c 	lw	t2,284(s0)
 184:	24190001 	li	t9,1
 188:	a15901be 	sb	t9,446(t2)
 18c:	a60000b8 	sh	zero,184(s0)
 190:	860900b8 	lh	t1,184(s0)
 194:	24a5007c 	addiu	a1,a1,124
 198:	8606001c 	lh	a2,28(s0)
 19c:	86070018 	lh	a3,24(s0)
 1a0:	0c000000 	jal	0 <ObjMakeoshihiki_Init>
 1a4:	a6090034 	sh	t1,52(s0)
 1a8:	8fbf003c 	lw	ra,60(sp)
 1ac:	8fb00038 	lw	s0,56(sp)
 1b0:	27bd0048 	addiu	sp,sp,72
 1b4:	03e00008 	jr	ra
 1b8:	00000000 	nop

000001bc <ObjMakeoshihiki_Draw>:
 1bc:	27bdffb0 	addiu	sp,sp,-80
 1c0:	afbf002c 	sw	ra,44(sp)
 1c4:	afb30028 	sw	s3,40(sp)
 1c8:	afb20024 	sw	s2,36(sp)
 1cc:	afb10020 	sw	s1,32(sp)
 1d0:	afb0001c 	sw	s0,28(sp)
 1d4:	f7b40010 	sdc1	$f20,16(sp)
 1d8:	afa50054 	sw	a1,84(sp)
 1dc:	848e0018 	lh	t6,24(a0)
 1e0:	3c190000 	lui	t9,0x0
 1e4:	27390020 	addiu	t9,t9,32
 1e8:	31cf0001 	andi	t7,t6,0x1
 1ec:	000fc080 	sll	t8,t7,0x2
 1f0:	030fc023 	subu	t8,t8,t7
 1f4:	0018c080 	sll	t8,t8,0x2
 1f8:	030fc023 	subu	t8,t8,t7
 1fc:	0018c080 	sll	t8,t8,0x2
 200:	03198021 	addu	s0,t8,t9
 204:	3c010000 	lui	at,0x0
 208:	00809825 	move	s3,a0
 20c:	c4340094 	lwc1	$f20,148(at)
 210:	afb0004c 	sw	s0,76(sp)
 214:	00008825 	move	s1,zero
 218:	24120003 	li	s2,3
 21c:	8e64011c 	lw	a0,284(s3)
 220:	02002825 	move	a1,s0
 224:	0c000000 	jal	0 <ObjMakeoshihiki_Init>
 228:	24840024 	addiu	a0,a0,36
 22c:	4614003c 	c.lt.s	$f0,$f20
 230:	00000000 	nop
 234:	45020057 	bc1fl	394 <ObjMakeoshihiki_Draw+0x1d8>
 238:	26310001 	addiu	s1,s1,1
 23c:	8fa8004c 	lw	t0,76(sp)
 240:	01114821 	addu	t1,t0,s1
 244:	afa90034 	sw	t1,52(sp)
 248:	912a0024 	lbu	t2,36(t1)
 24c:	314b0001 	andi	t3,t2,0x1
 250:	1160002e 	beqz	t3,30c <ObjMakeoshihiki_Draw+0x150>
 254:	00000000 	nop
 258:	8662001c 	lh	v0,28(s3)
 25c:	8fa40054 	lw	a0,84(sp)
 260:	00026183 	sra	t4,v0,0x6
 264:	318d0001 	andi	t5,t4,0x1
 268:	11a00003 	beqz	t5,278 <ObjMakeoshihiki_Draw+0xbc>
 26c:	00000000 	nop
 270:	1000000d 	b	2a8 <ObjMakeoshihiki_Draw+0xec>
 274:	00009025 	move	s2,zero
 278:	0c000000 	jal	0 <ObjMakeoshihiki_Init>
 27c:	3045003f 	andi	a1,v0,0x3f
 280:	10400003 	beqz	v0,290 <ObjMakeoshihiki_Draw+0xd4>
 284:	001170c0 	sll	t6,s1,0x3
 288:	10000002 	b	294 <ObjMakeoshihiki_Draw+0xd8>
 28c:	24030001 	li	v1,1
 290:	00001825 	move	v1,zero
 294:	3c0f0000 	lui	t7,0x0
 298:	01ee7821 	addu	t7,t7,t6
 29c:	8def0078 	lw	t7,120(t7)
 2a0:	8662001c 	lh	v0,28(s3)
 2a4:	01e39026 	xor	s2,t7,v1
 2a8:	0002c383 	sra	t8,v0,0xe
 2ac:	33190001 	andi	t9,t8,0x1
 2b0:	13200003 	beqz	t9,2c0 <ObjMakeoshihiki_Draw+0x104>
 2b4:	8fa40054 	lw	a0,84(sp)
 2b8:	1000000e 	b	2f4 <ObjMakeoshihiki_Draw+0x138>
 2bc:	00001025 	move	v0,zero
 2c0:	3c090000 	lui	t1,0x0
 2c4:	25290078 	addiu	t1,t1,120
 2c8:	00022a03 	sra	a1,v0,0x8
 2cc:	001140c0 	sll	t0,s1,0x3
 2d0:	01098021 	addu	s0,t0,t1
 2d4:	0c000000 	jal	0 <ObjMakeoshihiki_Init>
 2d8:	30a5003f 	andi	a1,a1,0x3f
 2dc:	10400003 	beqz	v0,2ec <ObjMakeoshihiki_Draw+0x130>
 2e0:	00001825 	move	v1,zero
 2e4:	10000001 	b	2ec <ObjMakeoshihiki_Draw+0x130>
 2e8:	24030001 	li	v1,1
 2ec:	8e0a0004 	lw	t2,4(s0)
 2f0:	01431026 	xor	v0,t2,v1
 2f4:	16400003 	bnez	s2,304 <ObjMakeoshihiki_Draw+0x148>
 2f8:	00000000 	nop
 2fc:	10400003 	beqz	v0,30c <ObjMakeoshihiki_Draw+0x150>
 300:	00000000 	nop
 304:	0c000000 	jal	0 <ObjMakeoshihiki_Init>
 308:	24044807 	li	a0,18439
 30c:	3c0c0000 	lui	t4,0x0
 310:	258c0078 	addiu	t4,t4,120
 314:	001158c0 	sll	t3,s1,0x3
 318:	016c8021 	addu	s0,t3,t4
 31c:	8e0d0000 	lw	t5,0(s0)
 320:	3c120000 	lui	s2,0x0
 324:	26520090 	addiu	s2,s2,144
 328:	000d7080 	sll	t6,t5,0x2
 32c:	024e7821 	addu	t7,s2,t6
 330:	8df90000 	lw	t9,0(t7)
 334:	8665001c 	lh	a1,28(s3)
 338:	8fa40054 	lw	a0,84(sp)
 33c:	0320f809 	jalr	t9
 340:	30a5003f 	andi	a1,a1,0x3f
 344:	8e180004 	lw	t8,4(s0)
 348:	8665001c 	lh	a1,28(s3)
 34c:	8fa40054 	lw	a0,84(sp)
 350:	00184080 	sll	t0,t8,0x2
 354:	02484821 	addu	t1,s2,t0
 358:	8d390000 	lw	t9,0(t1)
 35c:	00052a03 	sra	a1,a1,0x8
 360:	30a5003f 	andi	a1,a1,0x3f
 364:	0320f809 	jalr	t9
 368:	00000000 	nop
 36c:	8faa0034 	lw	t2,52(sp)
 370:	914b0024 	lbu	t3,36(t2)
 374:	316c0002 	andi	t4,t3,0x2
 378:	51800009 	beqzl	t4,3a0 <ObjMakeoshihiki_Draw+0x1e4>
 37c:	8fbf002c 	lw	ra,44(sp)
 380:	8e6e011c 	lw	t6,284(s3)
 384:	240d0001 	li	t5,1
 388:	10000004 	b	39c <ObjMakeoshihiki_Draw+0x1e0>
 38c:	a1cd01be 	sb	t5,446(t6)
 390:	26310001 	addiu	s1,s1,1
 394:	1632ffa1 	bne	s1,s2,21c <ObjMakeoshihiki_Draw+0x60>
 398:	2610000c 	addiu	s0,s0,12
 39c:	8fbf002c 	lw	ra,44(sp)
 3a0:	d7b40010 	ldc1	$f20,16(sp)
 3a4:	8fb0001c 	lw	s0,28(sp)
 3a8:	8fb10020 	lw	s1,32(sp)
 3ac:	8fb20024 	lw	s2,36(sp)
 3b0:	8fb30028 	lw	s3,40(sp)
 3b4:	03e00008 	jr	ra
 3b8:	27bd0050 	addiu	sp,sp,80
 3bc:	00000000 	nop
