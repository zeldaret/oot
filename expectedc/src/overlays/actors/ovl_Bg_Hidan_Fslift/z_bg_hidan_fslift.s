
build/src/overlays/actors/ovl_Bg_Hidan_Fslift/z_bg_hidan_fslift.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <BgHidanFslift_Init>:
   0:	27bdffb0 	addiu	sp,sp,-80
   4:	afa50054 	sw	a1,84(sp)
   8:	afbf003c 	sw	ra,60(sp)
   c:	afb00038 	sw	s0,56(sp)
  10:	3c050000 	lui	a1,0x0
  14:	00808025 	move	s0,a0
  18:	afa00044 	sw	zero,68(sp)
  1c:	0c000000 	jal	0 <BgHidanFslift_Init>
  20:	24a50020 	addiu	a1,a1,32
  24:	02002025 	move	a0,s0
  28:	0c000000 	jal	0 <BgHidanFslift_Init>
  2c:	24050001 	li	a1,1
  30:	3c040000 	lui	a0,0x0
  34:	24840000 	addiu	a0,a0,0
  38:	0c000000 	jal	0 <BgHidanFslift_Init>
  3c:	27a50044 	addiu	a1,sp,68
  40:	8fa40054 	lw	a0,84(sp)
  44:	02003025 	move	a2,s0
  48:	8fa70044 	lw	a3,68(sp)
  4c:	0c000000 	jal	0 <BgHidanFslift_Init>
  50:	24850810 	addiu	a1,a0,2064
  54:	c6040024 	lwc1	$f4,36(s0)
  58:	ae02014c 	sw	v0,332(s0)
  5c:	3c014220 	lui	at,0x4220
  60:	e7a40010 	swc1	$f4,16(sp)
  64:	c6060028 	lwc1	$f6,40(s0)
  68:	44814000 	mtc1	at,$f8
  6c:	3c01c1e0 	lui	at,0xc1e0
  70:	44819000 	mtc1	at,$f18
  74:	46083280 	add.s	$f10,$f6,$f8
  78:	8fa60054 	lw	a2,84(sp)
  7c:	240f0002 	li	t7,2
  80:	02002825 	move	a1,s0
  84:	e7aa0014 	swc1	$f10,20(sp)
  88:	c610002c 	lwc1	$f16,44(s0)
  8c:	afaf0028 	sw	t7,40(sp)
  90:	afa00024 	sw	zero,36(sp)
  94:	46128100 	add.s	$f4,$f16,$f18
  98:	afa00020 	sw	zero,32(sp)
  9c:	afa0001c 	sw	zero,28(sp)
  a0:	2407012d 	li	a3,301
  a4:	e7a40018 	swc1	$f4,24(sp)
  a8:	0c000000 	jal	0 <BgHidanFslift_Init>
  ac:	24c41c24 	addiu	a0,a2,7204
  b0:	14400005 	bnez	v0,c8 <BgHidanFslift_Init+0xc8>
  b4:	3c180000 	lui	t8,0x0
  b8:	0c000000 	jal	0 <BgHidanFslift_Init>
  bc:	02002025 	move	a0,s0
  c0:	10000004 	b	d4 <BgHidanFslift_Init+0xd4>
  c4:	8fbf003c 	lw	ra,60(sp)
  c8:	27180000 	addiu	t8,t8,0
  cc:	ae180164 	sw	t8,356(s0)
  d0:	8fbf003c 	lw	ra,60(sp)
  d4:	8fb00038 	lw	s0,56(sp)
  d8:	27bd0050 	addiu	sp,sp,80
  dc:	03e00008 	jr	ra
  e0:	00000000 	nop

000000e4 <func_80886F24>:
  e4:	8c82011c 	lw	v0,284(a0)
  e8:	50400014 	beqzl	v0,13c <func_80886F24+0x58>
  ec:	ac80011c 	sw	zero,284(a0)
  f0:	8c4e0130 	lw	t6,304(v0)
  f4:	51c00011 	beqzl	t6,13c <func_80886F24+0x58>
  f8:	ac80011c 	sw	zero,284(a0)
  fc:	c4840024 	lwc1	$f4,36(a0)
 100:	3c014220 	lui	at,0x4220
 104:	44814000 	mtc1	at,$f8
 108:	e4440024 	swc1	$f4,36(v0)
 10c:	c4860028 	lwc1	$f6,40(a0)
 110:	8c8f011c 	lw	t7,284(a0)
 114:	3c01c1e0 	lui	at,0xc1e0
 118:	46083280 	add.s	$f10,$f6,$f8
 11c:	44819000 	mtc1	at,$f18
 120:	e5ea0028 	swc1	$f10,40(t7)
 124:	c490002c 	lwc1	$f16,44(a0)
 128:	8c98011c 	lw	t8,284(a0)
 12c:	46128100 	add.s	$f4,$f16,$f18
 130:	03e00008 	jr	ra
 134:	e704002c 	swc1	$f4,44(t8)
 138:	ac80011c 	sw	zero,284(a0)
 13c:	03e00008 	jr	ra
 140:	00000000 	nop

00000144 <BgHidanFslift_Destroy>:
 144:	27bdffe8 	addiu	sp,sp,-24
 148:	afa40018 	sw	a0,24(sp)
 14c:	8fae0018 	lw	t6,24(sp)
 150:	afbf0014 	sw	ra,20(sp)
 154:	00a02025 	move	a0,a1
 158:	24a50810 	addiu	a1,a1,2064
 15c:	0c000000 	jal	0 <BgHidanFslift_Init>
 160:	8dc6014c 	lw	a2,332(t6)
 164:	8fbf0014 	lw	ra,20(sp)
 168:	27bd0018 	addiu	sp,sp,24
 16c:	03e00008 	jr	ra
 170:	00000000 	nop

00000174 <func_80886FB4>:
 174:	3c0f0000 	lui	t7,0x0
 178:	240e0028 	li	t6,40
 17c:	25ef0000 	addiu	t7,t7,0
 180:	a48e0168 	sh	t6,360(a0)
 184:	03e00008 	jr	ra
 188:	ac8f0164 	sw	t7,356(a0)

0000018c <func_80886FCC>:
 18c:	27bdffe0 	addiu	sp,sp,-32
 190:	afbf0014 	sw	ra,20(sp)
 194:	afa50024 	sw	a1,36(sp)
 198:	84820168 	lh	v0,360(a0)
 19c:	10400003 	beqz	v0,1ac <func_80886FCC+0x20>
 1a0:	244effff 	addiu	t6,v0,-1
 1a4:	a48e0168 	sh	t6,360(a0)
 1a8:	84820168 	lh	v0,360(a0)
 1ac:	5440001c 	bnezl	v0,220 <func_80886FCC+0x94>
 1b0:	8fbf0014 	lw	ra,20(sp)
 1b4:	c4840028 	lwc1	$f4,40(a0)
 1b8:	c486000c 	lwc1	$f6,12(a0)
 1bc:	3c013f00 	lui	at,0x3f00
 1c0:	44815000 	mtc1	at,$f10
 1c4:	46062201 	sub.s	$f8,$f4,$f6
 1c8:	00001825 	move	v1,zero
 1cc:	460a403c 	c.lt.s	$f8,$f10
 1d0:	00000000 	nop
 1d4:	45020003 	bc1fl	1e4 <func_80886FCC+0x58>
 1d8:	afa3001c 	sw	v1,28(sp)
 1dc:	24030001 	li	v1,1
 1e0:	afa3001c 	sw	v1,28(sp)
 1e4:	0c000000 	jal	0 <BgHidanFslift_Init>
 1e8:	afa40020 	sw	a0,32(sp)
 1ec:	8fa3001c 	lw	v1,28(sp)
 1f0:	10400006 	beqz	v0,20c <func_80886FCC+0x80>
 1f4:	8fa40020 	lw	a0,32(sp)
 1f8:	10600004 	beqz	v1,20c <func_80886FCC+0x80>
 1fc:	3c0f0000 	lui	t7,0x0
 200:	25ef0000 	addiu	t7,t7,0
 204:	10000005 	b	21c <func_80886FCC+0x90>
 208:	ac8f0164 	sw	t7,356(a0)
 20c:	14600003 	bnez	v1,21c <func_80886FCC+0x90>
 210:	3c180000 	lui	t8,0x0
 214:	27180000 	addiu	t8,t8,0
 218:	ac980164 	sw	t8,356(a0)
 21c:	8fbf0014 	lw	ra,20(sp)
 220:	27bd0020 	addiu	sp,sp,32
 224:	03e00008 	jr	ra
 228:	00000000 	nop

0000022c <func_8088706C>:
 22c:	27bdffe0 	addiu	sp,sp,-32
 230:	afb00018 	sw	s0,24(sp)
 234:	00808025 	move	s0,a0
 238:	afbf001c 	sw	ra,28(sp)
 23c:	afa50024 	sw	a1,36(sp)
 240:	8e05000c 	lw	a1,12(s0)
 244:	24840028 	addiu	a0,a0,40
 248:	0c000000 	jal	0 <BgHidanFslift_Init>
 24c:	3c064080 	lui	a2,0x4080
 250:	10400008 	beqz	v0,274 <func_8088706C+0x48>
 254:	02002025 	move	a0,s0
 258:	02002025 	move	a0,s0
 25c:	0c000000 	jal	0 <BgHidanFslift_Init>
 260:	24052835 	li	a1,10293
 264:	0c000000 	jal	0 <BgHidanFslift_Init>
 268:	02002025 	move	a0,s0
 26c:	10000003 	b	27c <func_8088706C+0x50>
 270:	00000000 	nop
 274:	0c000000 	jal	0 <BgHidanFslift_Init>
 278:	240520b9 	li	a1,8377
 27c:	0c000000 	jal	0 <BgHidanFslift_Init>
 280:	02002025 	move	a0,s0
 284:	8fbf001c 	lw	ra,28(sp)
 288:	8fb00018 	lw	s0,24(sp)
 28c:	27bd0020 	addiu	sp,sp,32
 290:	03e00008 	jr	ra
 294:	00000000 	nop

00000298 <func_808870D8>:
 298:	27bdffe0 	addiu	sp,sp,-32
 29c:	afbf001c 	sw	ra,28(sp)
 2a0:	afb00018 	sw	s0,24(sp)
 2a4:	00808025 	move	s0,a0
 2a8:	0c000000 	jal	0 <BgHidanFslift_Init>
 2ac:	afa50024 	sw	a1,36(sp)
 2b0:	10400016 	beqz	v0,30c <func_808870D8+0x74>
 2b4:	3c010000 	lui	at,0x0
 2b8:	c604000c 	lwc1	$f4,12(s0)
 2bc:	c4260000 	lwc1	$f6,0(at)
 2c0:	26040028 	addiu	a0,s0,40
 2c4:	3c064080 	lui	a2,0x4080
 2c8:	46062200 	add.s	$f8,$f4,$f6
 2cc:	44054000 	mfc1	a1,$f8
 2d0:	0c000000 	jal	0 <BgHidanFslift_Init>
 2d4:	00000000 	nop
 2d8:	10400008 	beqz	v0,2fc <func_808870D8+0x64>
 2dc:	02002025 	move	a0,s0
 2e0:	02002025 	move	a0,s0
 2e4:	0c000000 	jal	0 <BgHidanFslift_Init>
 2e8:	24052835 	li	a1,10293
 2ec:	0c000000 	jal	0 <BgHidanFslift_Init>
 2f0:	02002025 	move	a0,s0
 2f4:	10000007 	b	314 <func_808870D8+0x7c>
 2f8:	00000000 	nop
 2fc:	0c000000 	jal	0 <BgHidanFslift_Init>
 300:	240520b9 	li	a1,8377
 304:	10000003 	b	314 <func_808870D8+0x7c>
 308:	00000000 	nop
 30c:	0c000000 	jal	0 <BgHidanFslift_Init>
 310:	02002025 	move	a0,s0
 314:	0c000000 	jal	0 <BgHidanFslift_Init>
 318:	02002025 	move	a0,s0
 31c:	8fbf001c 	lw	ra,28(sp)
 320:	8fb00018 	lw	s0,24(sp)
 324:	27bd0020 	addiu	sp,sp,32
 328:	03e00008 	jr	ra
 32c:	00000000 	nop

00000330 <BgHidanFslift_Update>:
 330:	27bdffe0 	addiu	sp,sp,-32
 334:	afb00018 	sw	s0,24(sp)
 338:	00808025 	move	s0,a0
 33c:	afbf001c 	sw	ra,28(sp)
 340:	afa50024 	sw	a1,36(sp)
 344:	8e190164 	lw	t9,356(s0)
 348:	0320f809 	jalr	t9
 34c:	00000000 	nop
 350:	0c000000 	jal	0 <BgHidanFslift_Init>
 354:	02002025 	move	a0,s0
 358:	1040000c 	beqz	v0,38c <BgHidanFslift_Update+0x5c>
 35c:	00000000 	nop
 360:	860e016a 	lh	t6,362(s0)
 364:	240f0003 	li	t7,3
 368:	55c00003 	bnezl	t6,378 <BgHidanFslift_Update+0x48>
 36c:	8fb80024 	lw	t8,36(sp)
 370:	a60f016a 	sh	t7,362(s0)
 374:	8fb80024 	lw	t8,36(sp)
 378:	24050030 	li	a1,48
 37c:	0c000000 	jal	0 <BgHidanFslift_Init>
 380:	8f040790 	lw	a0,1936(t8)
 384:	1000000e 	b	3c0 <BgHidanFslift_Update+0x90>
 388:	8fbf001c 	lw	ra,28(sp)
 38c:	0c000000 	jal	0 <BgHidanFslift_Init>
 390:	02002025 	move	a0,s0
 394:	5440000a 	bnezl	v0,3c0 <BgHidanFslift_Update+0x90>
 398:	8fbf001c 	lw	ra,28(sp)
 39c:	8608016a 	lh	t0,362(s0)
 3a0:	8fa90024 	lw	t1,36(sp)
 3a4:	24050003 	li	a1,3
 3a8:	51000004 	beqzl	t0,3bc <BgHidanFslift_Update+0x8c>
 3ac:	a600016a 	sh	zero,362(s0)
 3b0:	0c000000 	jal	0 <BgHidanFslift_Init>
 3b4:	8d240790 	lw	a0,1936(t1)
 3b8:	a600016a 	sh	zero,362(s0)
 3bc:	8fbf001c 	lw	ra,28(sp)
 3c0:	8fb00018 	lw	s0,24(sp)
 3c4:	27bd0020 	addiu	sp,sp,32
 3c8:	03e00008 	jr	ra
 3cc:	00000000 	nop

000003d0 <BgHidanFslift_Draw>:
 3d0:	27bdffe8 	addiu	sp,sp,-24
 3d4:	afa40018 	sw	a0,24(sp)
 3d8:	00a02025 	move	a0,a1
 3dc:	afbf0014 	sw	ra,20(sp)
 3e0:	3c050000 	lui	a1,0x0
 3e4:	0c000000 	jal	0 <BgHidanFslift_Init>
 3e8:	24a50000 	addiu	a1,a1,0
 3ec:	8fbf0014 	lw	ra,20(sp)
 3f0:	27bd0018 	addiu	sp,sp,24
 3f4:	03e00008 	jr	ra
 3f8:	00000000 	nop
 3fc:	00000000 	nop
