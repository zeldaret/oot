
build/src/overlays/actors/ovl_Demo_Shd/z_demo_shd.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <DemoShd_SetupAction>:
   0:	03e00008 	jr	ra
   4:	ac850150 	sw	a1,336(a0)

00000008 <DemoShd_Init>:
   8:	27bdffe8 	addiu	sp,sp,-24
   c:	afa5001c 	sw	a1,28(sp)
  10:	afbf0014 	sw	ra,20(sp)
  14:	a480014c 	sh	zero,332(a0)
  18:	3c050000 	lui	a1,0x0
  1c:	24a50000 	addiu	a1,a1,0
  20:	0c000000 	jal	0 <DemoShd_SetupAction>
  24:	afa40018 	sw	a0,24(sp)
  28:	3c053ecc 	lui	a1,0x3ecc
  2c:	8fa40018 	lw	a0,24(sp)
  30:	0c000000 	jal	0 <DemoShd_SetupAction>
  34:	34a5cccd 	ori	a1,a1,0xcccd
  38:	8fa40018 	lw	a0,24(sp)
  3c:	44800000 	mtc1	zero,$f0
  40:	00000000 	nop
  44:	e4800028 	swc1	$f0,40(a0)
  48:	e4800024 	swc1	$f0,36(a0)
  4c:	8fbf0014 	lw	ra,20(sp)
  50:	27bd0018 	addiu	sp,sp,24
  54:	03e00008 	jr	ra
  58:	00000000 	nop

0000005c <DemoShd_Destroy>:
  5c:	afa40000 	sw	a0,0(sp)
  60:	03e00008 	jr	ra
  64:	afa50004 	sw	a1,4(sp)

00000068 <func_80991298>:
  68:	27bdffe8 	addiu	sp,sp,-24
  6c:	afbf0014 	sw	ra,20(sp)
  70:	90a21d6c 	lbu	v0,7532(a1)
  74:	00803025 	move	a2,a0
  78:	10400004 	beqz	v0,8c <func_80991298+0x24>
  7c:	00000000 	nop
  80:	8cae1d8c 	lw	t6,7564(a1)
  84:	55c00007 	bnezl	t6,a4 <func_80991298+0x3c>
  88:	94a21d74 	lhu	v0,7540(a1)
  8c:	50400018 	beqzl	v0,f0 <func_80991298+0x88>
  90:	90a21d6c 	lbu	v0,7532(a1)
  94:	8caf1d90 	lw	t7,7568(a1)
  98:	51e00015 	beqzl	t7,f0 <func_80991298+0x88>
  9c:	90a21d6c 	lbu	v0,7532(a1)
  a0:	94a21d74 	lhu	v0,7540(a1)
  a4:	24010320 	li	at,800
  a8:	24040009 	li	a0,9
  ac:	54410008 	bnel	v0,at,d0 <func_80991298+0x68>
  b0:	2401042d 	li	at,1069
  b4:	afa5001c 	sw	a1,28(sp)
  b8:	0c000000 	jal	0 <DemoShd_SetupAction>
  bc:	afa60018 	sw	a2,24(sp)
  c0:	8fa5001c 	lw	a1,28(sp)
  c4:	8fa60018 	lw	a2,24(sp)
  c8:	94a21d74 	lhu	v0,7540(a1)
  cc:	2401042d 	li	at,1069
  d0:	14410006 	bne	v0,at,ec <func_80991298+0x84>
  d4:	24040008 	li	a0,8
  d8:	afa5001c 	sw	a1,28(sp)
  dc:	0c000000 	jal	0 <DemoShd_SetupAction>
  e0:	afa60018 	sw	a2,24(sp)
  e4:	8fa5001c 	lw	a1,28(sp)
  e8:	8fa60018 	lw	a2,24(sp)
  ec:	90a21d6c 	lbu	v0,7532(a1)
  f0:	10400017 	beqz	v0,150 <func_80991298+0xe8>
  f4:	00000000 	nop
  f8:	8ca41d8c 	lw	a0,7564(a1)
  fc:	10800014 	beqz	a0,150 <func_80991298+0xe8>
 100:	00000000 	nop
 104:	94980000 	lhu	t8,0(a0)
 108:	24010002 	li	at,2
 10c:	5701000d 	bnel	t8,at,144 <func_80991298+0xdc>
 110:	94ca014c 	lhu	t2,332(a2)
 114:	94c3014c 	lhu	v1,332(a2)
 118:	30790001 	andi	t9,v1,0x1
 11c:	57200005 	bnezl	t9,134 <func_80991298+0xcc>
 120:	34690001 	ori	t1,v1,0x1
 124:	8c88000c 	lw	t0,12(a0)
 128:	94c3014c 	lhu	v1,332(a2)
 12c:	a4c8014e 	sh	t0,334(a2)
 130:	34690001 	ori	t1,v1,0x1
 134:	a4c9014c 	sh	t1,332(a2)
 138:	10000005 	b	150 <func_80991298+0xe8>
 13c:	90a21d6c 	lbu	v0,7532(a1)
 140:	94ca014c 	lhu	t2,332(a2)
 144:	314bfffe 	andi	t3,t2,0xfffe
 148:	a4cb014c 	sh	t3,332(a2)
 14c:	90a21d6c 	lbu	v0,7532(a1)
 150:	50400016 	beqzl	v0,1ac <func_80991298+0x144>
 154:	94c8014e 	lhu	t0,334(a2)
 158:	8ca21d90 	lw	v0,7568(a1)
 15c:	50400013 	beqzl	v0,1ac <func_80991298+0x144>
 160:	94c8014e 	lhu	t0,334(a2)
 164:	944c0000 	lhu	t4,0(v0)
 168:	24010002 	li	at,2
 16c:	5581000c 	bnel	t4,at,1a0 <func_80991298+0x138>
 170:	94d8014c 	lhu	t8,332(a2)
 174:	94c3014c 	lhu	v1,332(a2)
 178:	306d0002 	andi	t5,v1,0x2
 17c:	55a00005 	bnezl	t5,194 <func_80991298+0x12c>
 180:	346f0002 	ori	t7,v1,0x2
 184:	8c4e000c 	lw	t6,12(v0)
 188:	94c3014c 	lhu	v1,332(a2)
 18c:	a4ce014e 	sh	t6,334(a2)
 190:	346f0002 	ori	t7,v1,0x2
 194:	10000004 	b	1a8 <func_80991298+0x140>
 198:	a4cf014c 	sh	t7,332(a2)
 19c:	94d8014c 	lhu	t8,332(a2)
 1a0:	3319fffd 	andi	t9,t8,0xfffd
 1a4:	a4d9014c 	sh	t9,332(a2)
 1a8:	94c8014e 	lhu	t0,334(a2)
 1ac:	25090001 	addiu	t1,t0,1
 1b0:	a4c9014e 	sh	t1,334(a2)
 1b4:	8fbf0014 	lw	ra,20(sp)
 1b8:	27bd0018 	addiu	sp,sp,24
 1bc:	03e00008 	jr	ra
 1c0:	00000000 	nop

000001c4 <DemoShd_Update>:
 1c4:	27bdffe8 	addiu	sp,sp,-24
 1c8:	afbf0014 	sw	ra,20(sp)
 1cc:	8c990150 	lw	t9,336(a0)
 1d0:	0320f809 	jalr	t9
 1d4:	00000000 	nop
 1d8:	8fbf0014 	lw	ra,20(sp)
 1dc:	27bd0018 	addiu	sp,sp,24
 1e0:	03e00008 	jr	ra
 1e4:	00000000 	nop

000001e8 <DemoShd_Draw>:
 1e8:	27bdff80 	addiu	sp,sp,-128
 1ec:	afbf003c 	sw	ra,60(sp)
 1f0:	afb00038 	sw	s0,56(sp)
 1f4:	afa40080 	sw	a0,128(sp)
 1f8:	afa50084 	sw	a1,132(sp)
 1fc:	948f014e 	lhu	t7,334(a0)
 200:	3c060000 	lui	a2,0x0
 204:	24c60000 	addiu	a2,a2,0
 208:	afaf0074 	sw	t7,116(sp)
 20c:	8ca50000 	lw	a1,0(a1)
 210:	27a40060 	addiu	a0,sp,96
 214:	240702d6 	li	a3,726
 218:	0c000000 	jal	0 <DemoShd_SetupAction>
 21c:	00a08025 	move	s0,a1
 220:	8fb90084 	lw	t9,132(sp)
 224:	0c000000 	jal	0 <DemoShd_SetupAction>
 228:	8f240000 	lw	a0,0(t9)
 22c:	8e0202d0 	lw	v0,720(s0)
 230:	3c0bda38 	lui	t3,0xda38
 234:	356b0003 	ori	t3,t3,0x3
 238:	244a0008 	addiu	t2,v0,8
 23c:	ae0a02d0 	sw	t2,720(s0)
 240:	ac4b0000 	sw	t3,0(v0)
 244:	8fac0084 	lw	t4,132(sp)
 248:	3c050000 	lui	a1,0x0
 24c:	24a50010 	addiu	a1,a1,16
 250:	8d840000 	lw	a0,0(t4)
 254:	240602d9 	li	a2,729
 258:	0c000000 	jal	0 <DemoShd_SetupAction>
 25c:	afa2005c 	sw	v0,92(sp)
 260:	8fa3005c 	lw	v1,92(sp)
 264:	3c0e0000 	lui	t6,0x0
 268:	25ce0000 	addiu	t6,t6,0
 26c:	ac620004 	sw	v0,4(v1)
 270:	8e0202d0 	lw	v0,720(s0)
 274:	3c09de00 	lui	t1,0xde00
 278:	00002825 	move	a1,zero
 27c:	244d0008 	addiu	t5,v0,8
 280:	ae0d02d0 	sw	t5,720(s0)
 284:	ac4e0004 	sw	t6,4(v0)
 288:	ac490000 	sw	t1,0(v0)
 28c:	8fa30080 	lw	v1,128(sp)
 290:	00003025 	move	a2,zero
 294:	240b03ff 	li	t3,1023
 298:	9462014c 	lhu	v0,332(v1)
 29c:	240c0010 	li	t4,16
 2a0:	304f0001 	andi	t7,v0,0x1
 2a4:	11e00028 	beqz	t7,348 <DemoShd_Draw+0x160>
 2a8:	30580002 	andi	t8,v0,0x2
 2ac:	8e0202d0 	lw	v0,720(s0)
 2b0:	240d0100 	li	t5,256
 2b4:	240e0001 	li	t6,1
 2b8:	24580008 	addiu	t8,v0,8
 2bc:	ae1802d0 	sw	t8,720(s0)
 2c0:	ac490000 	sw	t1,0(v0)
 2c4:	8fb90084 	lw	t9,132(sp)
 2c8:	8fa30074 	lw	v1,116(sp)
 2cc:	241800ff 	li	t8,255
 2d0:	8f240000 	lw	a0,0(t9)
 2d4:	00600821 	move	at,v1
 2d8:	00031880 	sll	v1,v1,0x2
 2dc:	00611821 	addu	v1,v1,at
 2e0:	306a03ff 	andi	t2,v1,0x3ff
 2e4:	016a3823 	subu	a3,t3,t2
 2e8:	306f00ff 	andi	t7,v1,0xff
 2ec:	030fc823 	subu	t9,t8,t7
 2f0:	240a0020 	li	t2,32
 2f4:	240b0020 	li	t3,32
 2f8:	afab0024 	sw	t3,36(sp)
 2fc:	afaa0028 	sw	t2,40(sp)
 300:	afb90020 	sw	t9,32(sp)
 304:	afa0001c 	sw	zero,28(sp)
 308:	afae0018 	sw	t6,24(sp)
 30c:	afad0014 	sw	t5,20(sp)
 310:	afac0010 	sw	t4,16(sp)
 314:	0c000000 	jal	0 <DemoShd_SetupAction>
 318:	afa20054 	sw	v0,84(sp)
 31c:	8fa80054 	lw	t0,84(sp)
 320:	3c0e0000 	lui	t6,0x0
 324:	25ce0000 	addiu	t6,t6,0
 328:	ad020004 	sw	v0,4(t0)
 32c:	8e0202d0 	lw	v0,720(s0)
 330:	3c0dde00 	lui	t5,0xde00
 334:	244c0008 	addiu	t4,v0,8
 338:	ae0c02d0 	sw	t4,720(s0)
 33c:	ac4e0004 	sw	t6,4(v0)
 340:	1000002c 	b	3f4 <DemoShd_Draw+0x20c>
 344:	ac4d0000 	sw	t5,0(v0)
 348:	1300002a 	beqz	t8,3f4 <DemoShd_Draw+0x20c>
 34c:	00002825 	move	a1,zero
 350:	8e0202d0 	lw	v0,720(s0)
 354:	240a03ff 	li	t2,1023
 358:	240c0010 	li	t4,16
 35c:	244f0008 	addiu	t7,v0,8
 360:	ae0f02d0 	sw	t7,720(s0)
 364:	ac490000 	sw	t1,0(v0)
 368:	8fb90084 	lw	t9,132(sp)
 36c:	8fa30074 	lw	v1,116(sp)
 370:	240f00ff 	li	t7,255
 374:	8f240000 	lw	a0,0(t9)
 378:	00600821 	move	at,v1
 37c:	00031880 	sll	v1,v1,0x2
 380:	00611821 	addu	v1,v1,at
 384:	306b03ff 	andi	t3,v1,0x3ff
 388:	014b3823 	subu	a3,t2,t3
 38c:	307800ff 	andi	t8,v1,0xff
 390:	01f8c823 	subu	t9,t7,t8
 394:	240b0020 	li	t3,32
 398:	240a0020 	li	t2,32
 39c:	240d0100 	li	t5,256
 3a0:	240e0001 	li	t6,1
 3a4:	afae0018 	sw	t6,24(sp)
 3a8:	afad0014 	sw	t5,20(sp)
 3ac:	afaa0024 	sw	t2,36(sp)
 3b0:	afab0028 	sw	t3,40(sp)
 3b4:	afb90020 	sw	t9,32(sp)
 3b8:	afa0001c 	sw	zero,28(sp)
 3bc:	afac0010 	sw	t4,16(sp)
 3c0:	00003025 	move	a2,zero
 3c4:	0c000000 	jal	0 <DemoShd_SetupAction>
 3c8:	afa2004c 	sw	v0,76(sp)
 3cc:	8fa8004c 	lw	t0,76(sp)
 3d0:	3c0e0000 	lui	t6,0x0
 3d4:	25ce0000 	addiu	t6,t6,0
 3d8:	ad020004 	sw	v0,4(t0)
 3dc:	8e0202d0 	lw	v0,720(s0)
 3e0:	3c0dde00 	lui	t5,0xde00
 3e4:	244c0008 	addiu	t4,v0,8
 3e8:	ae0c02d0 	sw	t4,720(s0)
 3ec:	ac4e0004 	sw	t6,4(v0)
 3f0:	ac4d0000 	sw	t5,0(v0)
 3f4:	8faf0084 	lw	t7,132(sp)
 3f8:	3c060000 	lui	a2,0x0
 3fc:	24c60020 	addiu	a2,a2,32
 400:	27a40060 	addiu	a0,sp,96
 404:	240702fa 	li	a3,762
 408:	0c000000 	jal	0 <DemoShd_SetupAction>
 40c:	8de50000 	lw	a1,0(t7)
 410:	8fbf003c 	lw	ra,60(sp)
 414:	8fb00038 	lw	s0,56(sp)
 418:	27bd0080 	addiu	sp,sp,128
 41c:	03e00008 	jr	ra
 420:	00000000 	nop
	...
