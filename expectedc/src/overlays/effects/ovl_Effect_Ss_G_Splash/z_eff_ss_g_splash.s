
build/src/overlays/effects/ovl_Effect_Ss_G_Splash/z_eff_ss_g_splash.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <EffectSsGSplash_Init>:
   0:	27bdffe0 	addiu	sp,sp,-32
   4:	3c0e0000 	lui	t6,0x0
   8:	afa40020 	sw	a0,32(sp)
   c:	afa50024 	sw	a1,36(sp)
  10:	25ce0008 	addiu	t6,t6,8
  14:	8dd80000 	lw	t8,0(t6)
  18:	27a20010 	addiu	v0,sp,16
  1c:	27a30004 	addiu	v1,sp,4
  20:	ac580000 	sw	t8,0(v0)
  24:	8dcf0004 	lw	t7,4(t6)
  28:	8c480000 	lw	t0,0(v0)
  2c:	3c0100ff 	lui	at,0xff
  30:	ac4f0004 	sw	t7,4(v0)
  34:	8dd80008 	lw	t8,8(t6)
  38:	ac680000 	sw	t0,0(v1)
  3c:	8c6a0000 	lw	t2,0(v1)
  40:	ac6f0004 	sw	t7,4(v1)
  44:	ac580008 	sw	t8,8(v0)
  48:	ac780008 	sw	t8,8(v1)
  4c:	acca0018 	sw	t2,24(a2)
  50:	8c690004 	lw	t1,4(v1)
  54:	3c0f0000 	lui	t7,0x0
  58:	3c180000 	lui	t8,0x0
  5c:	acc9001c 	sw	t1,28(a2)
  60:	8c6a0008 	lw	t2,8(v1)
  64:	25ef0000 	addiu	t7,t7,0
  68:	27180000 	addiu	t8,t8,0
  6c:	acca0020 	sw	t2,32(a2)
  70:	8c6c0000 	lw	t4,0(v1)
  74:	3c020000 	lui	v0,0x0
  78:	24420000 	addiu	v0,v0,0
  7c:	accc000c 	sw	t4,12(a2)
  80:	8c6b0004 	lw	t3,4(v1)
  84:	00024900 	sll	t1,v0,0x4
  88:	00095702 	srl	t2,t1,0x1c
  8c:	accb0010 	sw	t3,16(a2)
  90:	8c6c0008 	lw	t4,8(v1)
  94:	3421ffff 	ori	at,at,0xffff
  98:	000a5880 	sll	t3,t2,0x2
  9c:	accc0014 	sw	t4,20(a2)
  a0:	8cee0000 	lw	t6,0(a3)
  a4:	3c0c0000 	lui	t4,0x0
  a8:	24080258 	li	t0,600
  ac:	acce0000 	sw	t6,0(a2)
  b0:	8ced0004 	lw	t5,4(a3)
  b4:	018b6021 	addu	t4,t4,t3
  b8:	accd0004 	sw	t5,4(a2)
  bc:	8cee0008 	lw	t6,8(a3)
  c0:	accf0028 	sw	t7,40(a2)
  c4:	acd80024 	sw	t8,36(a2)
  c8:	acce0008 	sw	t6,8(a2)
  cc:	84f9000e 	lh	t9,14(a3)
  d0:	00416824 	and	t5,v0,at
  d4:	3c018000 	lui	at,0x8000
  d8:	17200002 	bnez	t9,e4 <EffectSsGSplash_Init+0xe4>
  dc:	24180008 	li	t8,8
  e0:	a4e8000e 	sh	t0,14(a3)
  e4:	8d8c0000 	lw	t4,0(t4)
  e8:	a4d8005c 	sh	t8,92(a2)
  ec:	24080064 	li	t0,100
  f0:	018d7021 	addu	t6,t4,t5
  f4:	01c17821 	addu	t7,t6,at
  f8:	accf0038 	sw	t7,56(a2)
  fc:	84f9000e 	lh	t9,14(a3)
 100:	a4c00040 	sh	zero,64(a2)
 104:	a4c80044 	sh	t0,68(a2)
 108:	a4d90042 	sh	t9,66(a2)
 10c:	90e9000d 	lbu	t1,13(a3)
 110:	51200015 	beqzl	t1,168 <EffectSsGSplash_Init+0x168>
 114:	90e2000c 	lbu	v0,12(a3)
 118:	90ea0010 	lbu	t2,16(a3)
 11c:	a4ca0046 	sh	t2,70(a2)
 120:	90eb0011 	lbu	t3,17(a3)
 124:	a4cb0048 	sh	t3,72(a2)
 128:	90ec0012 	lbu	t4,18(a3)
 12c:	a4cc004a 	sh	t4,74(a2)
 130:	90ed0013 	lbu	t5,19(a3)
 134:	a4cd004c 	sh	t5,76(a2)
 138:	90ee0014 	lbu	t6,20(a3)
 13c:	a4ce004e 	sh	t6,78(a2)
 140:	90ef0015 	lbu	t7,21(a3)
 144:	a4cf0050 	sh	t7,80(a2)
 148:	90f80016 	lbu	t8,22(a3)
 14c:	a4d80052 	sh	t8,82(a2)
 150:	90f90017 	lbu	t9,23(a3)
 154:	a4d90054 	sh	t9,84(a2)
 158:	90e8000c 	lbu	t0,12(a3)
 15c:	1000002d 	b	214 <EffectSsGSplash_Init+0x214>
 160:	a4c80056 	sh	t0,86(a2)
 164:	90e2000c 	lbu	v0,12(a3)
 168:	240400c8 	li	a0,200
 16c:	24030001 	li	v1,1
 170:	50400009 	beqzl	v0,198 <EffectSsGSplash_Init+0x198>
 174:	240200ff 	li	v0,255
 178:	50430012 	beql	v0,v1,1c4 <EffectSsGSplash_Init+0x1c4>
 17c:	240200ff 	li	v0,255
 180:	24030002 	li	v1,2
 184:	10430019 	beq	v0,v1,1ec <EffectSsGSplash_Init+0x1ec>
 188:	240400c8 	li	a0,200
 18c:	10000022 	b	218 <EffectSsGSplash_Init+0x218>
 190:	24020001 	li	v0,1
 194:	240200ff 	li	v0,255
 198:	a4c20046 	sh	v0,70(a2)
 19c:	a4c20048 	sh	v0,72(a2)
 1a0:	a4c2004a 	sh	v0,74(a2)
 1a4:	a4c4004c 	sh	a0,76(a2)
 1a8:	a4c2004e 	sh	v0,78(a2)
 1ac:	a4c20050 	sh	v0,80(a2)
 1b0:	a4c20052 	sh	v0,82(a2)
 1b4:	a4c40054 	sh	a0,84(a2)
 1b8:	10000016 	b	214 <EffectSsGSplash_Init+0x214>
 1bc:	a4c00056 	sh	zero,86(a2)
 1c0:	240200ff 	li	v0,255
 1c4:	a4c20046 	sh	v0,70(a2)
 1c8:	a4c20048 	sh	v0,72(a2)
 1cc:	a4c2004a 	sh	v0,74(a2)
 1d0:	a4c2004c 	sh	v0,76(a2)
 1d4:	a4c2004e 	sh	v0,78(a2)
 1d8:	a4c20050 	sh	v0,80(a2)
 1dc:	a4c20052 	sh	v0,82(a2)
 1e0:	a4c20054 	sh	v0,84(a2)
 1e4:	1000000b 	b	214 <EffectSsGSplash_Init+0x214>
 1e8:	a4c30056 	sh	v1,86(a2)
 1ec:	240200ff 	li	v0,255
 1f0:	a4c20046 	sh	v0,70(a2)
 1f4:	a4c20048 	sh	v0,72(a2)
 1f8:	a4c2004a 	sh	v0,74(a2)
 1fc:	a4c4004c 	sh	a0,76(a2)
 200:	a4c2004e 	sh	v0,78(a2)
 204:	a4c20050 	sh	v0,80(a2)
 208:	a4c20052 	sh	v0,82(a2)
 20c:	a4c40054 	sh	a0,84(a2)
 210:	a4c30056 	sh	v1,86(a2)
 214:	24020001 	li	v0,1
 218:	03e00008 	jr	ra
 21c:	27bd0020 	addiu	sp,sp,32

00000220 <EffectSsGSplash_Draw>:
 220:	27bdffe8 	addiu	sp,sp,-24
 224:	afbf0014 	sw	ra,20(sp)
 228:	afa5001c 	sw	a1,28(sp)
 22c:	84c20056 	lh	v0,86(a2)
 230:	00c02825 	move	a1,a2
 234:	24010001 	li	at,1
 238:	10400008 	beqz	v0,25c <EffectSsGSplash_Draw+0x3c>
 23c:	3c060000 	lui	a2,0x0
 240:	10410016 	beq	v0,at,29c <EffectSsGSplash_Draw+0x7c>
 244:	3c060000 	lui	a2,0x0
 248:	24010002 	li	at,2
 24c:	10410023 	beq	v0,at,2dc <EffectSsGSplash_Draw+0xbc>
 250:	3c060000 	lui	a2,0x0
 254:	10000030 	b	318 <EffectSsGSplash_Draw+0xf8>
 258:	8fbf0014 	lw	ra,20(sp)
 25c:	84a20040 	lh	v0,64(a1)
 260:	24010064 	li	at,100
 264:	0041001a 	div	zero,v0,at
 268:	00001012 	mflo	v0
 26c:	00021400 	sll	v0,v0,0x10
 270:	00021403 	sra	v0,v0,0x10
 274:	28410008 	slti	at,v0,8
 278:	54200003 	bnezl	at,288 <EffectSsGSplash_Draw+0x68>
 27c:	00027080 	sll	t6,v0,0x2
 280:	24020007 	li	v0,7
 284:	00027080 	sll	t6,v0,0x2
 288:	00ce3021 	addu	a2,a2,t6
 28c:	0c000000 	jal	0 <EffectSsGSplash_Init>
 290:	8cc60014 	lw	a2,20(a2)
 294:	10000020 	b	318 <EffectSsGSplash_Draw+0xf8>
 298:	8fbf0014 	lw	ra,20(sp)
 29c:	84a20040 	lh	v0,64(a1)
 2a0:	24010064 	li	at,100
 2a4:	0041001a 	div	zero,v0,at
 2a8:	00001012 	mflo	v0
 2ac:	00021400 	sll	v0,v0,0x10
 2b0:	00021403 	sra	v0,v0,0x10
 2b4:	28410008 	slti	at,v0,8
 2b8:	54200003 	bnezl	at,2c8 <EffectSsGSplash_Draw+0xa8>
 2bc:	00027880 	sll	t7,v0,0x2
 2c0:	24020007 	li	v0,7
 2c4:	00027880 	sll	t7,v0,0x2
 2c8:	00cf3021 	addu	a2,a2,t7
 2cc:	0c000000 	jal	0 <EffectSsGSplash_Init>
 2d0:	8cc60014 	lw	a2,20(a2)
 2d4:	10000010 	b	318 <EffectSsGSplash_Draw+0xf8>
 2d8:	8fbf0014 	lw	ra,20(sp)
 2dc:	84a20040 	lh	v0,64(a1)
 2e0:	24010064 	li	at,100
 2e4:	0041001a 	div	zero,v0,at
 2e8:	00001012 	mflo	v0
 2ec:	00021400 	sll	v0,v0,0x10
 2f0:	00021403 	sra	v0,v0,0x10
 2f4:	28410008 	slti	at,v0,8
 2f8:	54200003 	bnezl	at,308 <EffectSsGSplash_Draw+0xe8>
 2fc:	0002c080 	sll	t8,v0,0x2
 300:	24020007 	li	v0,7
 304:	0002c080 	sll	t8,v0,0x2
 308:	00d83021 	addu	a2,a2,t8
 30c:	0c000000 	jal	0 <EffectSsGSplash_Init>
 310:	8cc60014 	lw	a2,20(a2)
 314:	8fbf0014 	lw	ra,20(sp)
 318:	27bd0018 	addiu	sp,sp,24
 31c:	03e00008 	jr	ra
 320:	00000000 	nop

00000324 <EffectSsGSplash_Update>:
 324:	27bdffc8 	addiu	sp,sp,-56
 328:	afbf0024 	sw	ra,36(sp)
 32c:	afb00020 	sw	s0,32(sp)
 330:	afa5003c 	sw	a1,60(sp)
 334:	84ce0056 	lh	t6,86(a2)
 338:	24010001 	li	at,1
 33c:	00c08025 	move	s0,a2
 340:	55c10024 	bnel	t6,at,3d4 <EffectSsGSplash_Update+0xb0>
 344:	860d0040 	lh	t5,64(s0)
 348:	84cf005c 	lh	t7,92(a2)
 34c:	24010005 	li	at,5
 350:	55e10020 	bnel	t7,at,3d4 <EffectSsGSplash_Update+0xb0>
 354:	860d0040 	lh	t5,64(s0)
 358:	8cd90000 	lw	t9,0(a2)
 35c:	27a5002c 	addiu	a1,sp,44
 360:	3c010000 	lui	at,0x0
 364:	acb90000 	sw	t9,0(a1)
 368:	8cd80004 	lw	t8,4(a2)
 36c:	240a0002 	li	t2,2
 370:	00003825 	move	a3,zero
 374:	acb80004 	sw	t8,4(a1)
 378:	8cd90008 	lw	t9,8(a2)
 37c:	acb90008 	sw	t9,8(a1)
 380:	84c80042 	lh	t0,66(a2)
 384:	c4280000 	lwc1	$f8,0(at)
 388:	c7b00030 	lwc1	$f16,48(sp)
 38c:	00084880 	sll	t1,t0,0x2
 390:	01284821 	addu	t1,t1,t0
 394:	00094880 	sll	t1,t1,0x2
 398:	44892000 	mtc1	t1,$f4
 39c:	afaa0010 	sw	t2,16(sp)
 3a0:	00003025 	move	a2,zero
 3a4:	468021a0 	cvt.s.w	$f6,$f4
 3a8:	46083282 	mul.s	$f10,$f6,$f8
 3ac:	460a8480 	add.s	$f18,$f16,$f10
 3b0:	e7b20030 	swc1	$f18,48(sp)
 3b4:	860b0042 	lh	t3,66(s0)
 3b8:	05610003 	bgez	t3,3c8 <EffectSsGSplash_Update+0xa4>
 3bc:	000b6043 	sra	t4,t3,0x1
 3c0:	25610001 	addiu	at,t3,1
 3c4:	00016043 	sra	t4,at,0x1
 3c8:	0c000000 	jal	0 <EffectSsGSplash_Init>
 3cc:	afac0014 	sw	t4,20(sp)
 3d0:	860d0040 	lh	t5,64(s0)
 3d4:	860e0044 	lh	t6,68(s0)
 3d8:	01ae7821 	addu	t7,t5,t6
 3dc:	a60f0040 	sh	t7,64(s0)
 3e0:	8fbf0024 	lw	ra,36(sp)
 3e4:	8fb00020 	lw	s0,32(sp)
 3e8:	27bd0038 	addiu	sp,sp,56
 3ec:	03e00008 	jr	ra
 3f0:	00000000 	nop
	...
