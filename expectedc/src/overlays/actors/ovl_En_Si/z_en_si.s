
build/src/overlays/actors/ovl_En_Si/z_en_si.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <EnSi_Init>:
   0:	27bdffd8 	addiu	sp,sp,-40
   4:	afb00018 	sw	s0,24(sp)
   8:	00808025 	move	s0,a0
   c:	afa5002c 	sw	a1,44(sp)
  10:	00a02025 	move	a0,a1
  14:	afbf001c 	sw	ra,28(sp)
  18:	26050150 	addiu	a1,s0,336
  1c:	0c000000 	jal	0 <EnSi_Init>
  20:	afa50020 	sw	a1,32(sp)
  24:	3c070000 	lui	a3,0x0
  28:	8fa50020 	lw	a1,32(sp)
  2c:	24e70000 	addiu	a3,a3,0
  30:	8fa4002c 	lw	a0,44(sp)
  34:	0c000000 	jal	0 <EnSi_Init>
  38:	02003025 	move	a2,s0
  3c:	3c060000 	lui	a2,0x0
  40:	24c6002c 	addiu	a2,a2,44
  44:	26040098 	addiu	a0,s0,152
  48:	0c000000 	jal	0 <EnSi_Init>
  4c:	00002825 	move	a1,zero
  50:	3c053ccc 	lui	a1,0x3ccc
  54:	34a5cccd 	ori	a1,a1,0xcccd
  58:	0c000000 	jal	0 <EnSi_Init>
  5c:	02002025 	move	a0,s0
  60:	3c014228 	lui	at,0x4228
  64:	44812000 	mtc1	at,$f4
  68:	3c0e0000 	lui	t6,0x0
  6c:	25ce0000 	addiu	t6,t6,0
  70:	a200019c 	sb	zero,412(s0)
  74:	ae0e014c 	sw	t6,332(s0)
  78:	e60400bc 	swc1	$f4,188(s0)
  7c:	8fbf001c 	lw	ra,28(sp)
  80:	8fb00018 	lw	s0,24(sp)
  84:	27bd0028 	addiu	sp,sp,40
  88:	03e00008 	jr	ra
  8c:	00000000 	nop

00000090 <EnSi_Destroy>:
  90:	27bdffe8 	addiu	sp,sp,-24
  94:	00803025 	move	a2,a0
  98:	afbf0014 	sw	ra,20(sp)
  9c:	00a02025 	move	a0,a1
  a0:	0c000000 	jal	0 <EnSi_Init>
  a4:	24c50150 	addiu	a1,a2,336
  a8:	8fbf0014 	lw	ra,20(sp)
  ac:	27bd0018 	addiu	sp,sp,24
  b0:	03e00008 	jr	ra
  b4:	00000000 	nop

000000b8 <func_80AFB748>:
  b8:	afa50004 	sw	a1,4(sp)
  bc:	90820161 	lbu	v0,353(a0)
  c0:	304e0002 	andi	t6,v0,0x2
  c4:	11c00002 	beqz	t6,d0 <func_80AFB748+0x18>
  c8:	304ffffd 	andi	t7,v0,0xfffd
  cc:	a08f0161 	sb	t7,353(a0)
  d0:	03e00008 	jr	ra
  d4:	00001025 	move	v0,zero

000000d8 <func_80AFB768>:
  d8:	27bdffd0 	addiu	sp,sp,-48
  dc:	afbf0024 	sw	ra,36(sp)
  e0:	afb10020 	sw	s1,32(sp)
  e4:	afb0001c 	sw	s0,28(sp)
  e8:	8cae1c44 	lw	t6,7236(a1)
  ec:	00a08825 	move	s1,a1
  f0:	24012000 	li	at,8192
  f4:	afae002c 	sw	t6,44(sp)
  f8:	8c8f0004 	lw	t7,4(a0)
  fc:	00808025 	move	s0,a0
 100:	3c053e80 	lui	a1,0x3e80
 104:	31f82000 	andi	t8,t7,0x2000
 108:	17010005 	bne	t8,at,120 <func_80AFB768+0x48>
 10c:	3c063ecc 	lui	a2,0x3ecc
 110:	3c190000 	lui	t9,0x0
 114:	27390000 	addiu	t9,t9,0
 118:	10000037 	b	1f8 <func_80AFB768+0x120>
 11c:	ac99014c 	sw	t9,332(a0)
 120:	44802000 	mtc1	zero,$f4
 124:	26040050 	addiu	a0,s0,80
 128:	34c6cccd 	ori	a2,a2,0xcccd
 12c:	3c073f80 	lui	a3,0x3f80
 130:	0c000000 	jal	0 <EnSi_Init>
 134:	e7a40010 	swc1	$f4,16(sp)
 138:	02002025 	move	a0,s0
 13c:	0c000000 	jal	0 <EnSi_Init>
 140:	8e050050 	lw	a1,80(s0)
 144:	860800b6 	lh	t0,182(s0)
 148:	02202025 	move	a0,s1
 14c:	25090400 	addiu	t1,t0,1024
 150:	0c000000 	jal	0 <EnSi_Init>
 154:	a60900b6 	sh	t1,182(s0)
 158:	14400027 	bnez	v0,1f8 <func_80AFB768+0x120>
 15c:	02002025 	move	a0,s0
 160:	0c000000 	jal	0 <EnSi_Init>
 164:	02202825 	move	a1,s1
 168:	92030163 	lbu	v1,355(s0)
 16c:	02002025 	move	a0,s0
 170:	26050150 	addiu	a1,s0,336
 174:	306a0001 	andi	t2,v1,0x1
 178:	11400012 	beqz	t2,1c4 <func_80AFB768+0xec>
 17c:	306bfffe 	andi	t3,v1,0xfffe
 180:	a20b0163 	sb	t3,355(s0)
 184:	02202025 	move	a0,s1
 188:	0c000000 	jal	0 <EnSi_Init>
 18c:	24050071 	li	a1,113
 190:	8fad002c 	lw	t5,44(sp)
 194:	240c000a 	li	t4,10
 198:	02202025 	move	a0,s1
 19c:	240500b4 	li	a1,180
 1a0:	00003025 	move	a2,zero
 1a4:	0c000000 	jal	0 <EnSi_Init>
 1a8:	a5ac0110 	sh	t4,272(t5)
 1ac:	0c000000 	jal	0 <EnSi_Init>
 1b0:	24040039 	li	a0,57
 1b4:	3c0e0000 	lui	t6,0x0
 1b8:	25ce0000 	addiu	t6,t6,0
 1bc:	1000000e 	b	1f8 <func_80AFB768+0x120>
 1c0:	ae0e014c 	sw	t6,332(s0)
 1c4:	0c000000 	jal	0 <EnSi_Init>
 1c8:	afa50028 	sw	a1,40(sp)
 1cc:	3c010001 	lui	at,0x1
 1d0:	34211e60 	ori	at,at,0x1e60
 1d4:	02218021 	addu	s0,s1,at
 1d8:	02002825 	move	a1,s0
 1dc:	02202025 	move	a0,s1
 1e0:	0c000000 	jal	0 <EnSi_Init>
 1e4:	8fa60028 	lw	a2,40(sp)
 1e8:	02202025 	move	a0,s1
 1ec:	02002825 	move	a1,s0
 1f0:	0c000000 	jal	0 <EnSi_Init>
 1f4:	8fa60028 	lw	a2,40(sp)
 1f8:	8fbf0024 	lw	ra,36(sp)
 1fc:	8fb0001c 	lw	s0,28(sp)
 200:	8fb10020 	lw	s1,32(sp)
 204:	03e00008 	jr	ra
 208:	27bd0030 	addiu	sp,sp,48

0000020c <func_80AFB89C>:
 20c:	27bdffd0 	addiu	sp,sp,-48
 210:	afbf0024 	sw	ra,36(sp)
 214:	afb00020 	sw	s0,32(sp)
 218:	afa50034 	sw	a1,52(sp)
 21c:	8caf1c44 	lw	t7,7236(a1)
 220:	44802000 	mtc1	zero,$f4
 224:	00808025 	move	s0,a0
 228:	3c063ecc 	lui	a2,0x3ecc
 22c:	34c6cccd 	ori	a2,a2,0xcccd
 230:	24840050 	addiu	a0,a0,80
 234:	3c053e80 	lui	a1,0x3e80
 238:	3c073f80 	lui	a3,0x3f80
 23c:	afaf002c 	sw	t7,44(sp)
 240:	0c000000 	jal	0 <EnSi_Init>
 244:	e7a40010 	swc1	$f4,16(sp)
 248:	02002025 	move	a0,s0
 24c:	0c000000 	jal	0 <EnSi_Init>
 250:	8e050050 	lw	a1,80(s0)
 254:	861800b6 	lh	t8,182(s0)
 258:	8e080004 	lw	t0,4(s0)
 25c:	24012000 	li	at,8192
 260:	27190400 	addiu	t9,t8,1024
 264:	31092000 	andi	t1,t0,0x2000
 268:	11210010 	beq	t1,at,2ac <func_80AFB89C+0xa0>
 26c:	a61900b6 	sh	t9,182(s0)
 270:	8fa40034 	lw	a0,52(sp)
 274:	0c000000 	jal	0 <EnSi_Init>
 278:	24050071 	li	a1,113
 27c:	8fab002c 	lw	t3,44(sp)
 280:	240a000a 	li	t2,10
 284:	240500b4 	li	a1,180
 288:	a56a0110 	sh	t2,272(t3)
 28c:	8fa40034 	lw	a0,52(sp)
 290:	0c000000 	jal	0 <EnSi_Init>
 294:	00003025 	move	a2,zero
 298:	0c000000 	jal	0 <EnSi_Init>
 29c:	24040039 	li	a0,57
 2a0:	3c0c0000 	lui	t4,0x0
 2a4:	258c0000 	addiu	t4,t4,0
 2a8:	ae0c014c 	sw	t4,332(s0)
 2ac:	8fbf0024 	lw	ra,36(sp)
 2b0:	8fb00020 	lw	s0,32(sp)
 2b4:	27bd0030 	addiu	sp,sp,48
 2b8:	03e00008 	jr	ra
 2bc:	00000000 	nop

000002c0 <func_80AFB950>:
 2c0:	27bdffe0 	addiu	sp,sp,-32
 2c4:	afbf0014 	sw	ra,20(sp)
 2c8:	afa40020 	sw	a0,32(sp)
 2cc:	8cae1c44 	lw	t6,7236(a1)
 2d0:	24a420d8 	addiu	a0,a1,8408
 2d4:	0c000000 	jal	0 <EnSi_Init>
 2d8:	afae001c 	sw	t6,28(sp)
 2dc:	24010002 	li	at,2
 2e0:	10410005 	beq	v0,at,2f8 <func_80AFB950+0x38>
 2e4:	8fa40020 	lw	a0,32(sp)
 2e8:	8fb8001c 	lw	t8,28(sp)
 2ec:	240f000a 	li	t7,10
 2f0:	10000014 	b	344 <func_80AFB950+0x84>
 2f4:	a70f0110 	sh	t7,272(t8)
 2f8:	8482001c 	lh	v0,28(a0)
 2fc:	3c090000 	lui	t1,0x0
 300:	3c0d0000 	lui	t5,0x0
 304:	30431f00 	andi	v1,v0,0x1f00
 308:	00031a03 	sra	v1,v1,0x8
 30c:	306b0003 	andi	t3,v1,0x3
 310:	000b6080 	sll	t4,t3,0x2
 314:	0003c883 	sra	t9,v1,0x2
 318:	00194080 	sll	t0,t9,0x2
 31c:	01ac6821 	addu	t5,t5,t4
 320:	25290000 	addiu	t1,t1,0
 324:	8dad0000 	lw	t5,0(t5)
 328:	01092821 	addu	a1,t0,t1
 32c:	8caf0e9c 	lw	t7,3740(a1)
 330:	304a00ff 	andi	t2,v0,0xff
 334:	01aa7004 	sllv	t6,t2,t5
 338:	01eec025 	or	t8,t7,t6
 33c:	0c000000 	jal	0 <EnSi_Init>
 340:	acb80e9c 	sw	t8,3740(a1)
 344:	8fbf0014 	lw	ra,20(sp)
 348:	27bd0020 	addiu	sp,sp,32
 34c:	03e00008 	jr	ra
 350:	00000000 	nop

00000354 <EnSi_Update>:
 354:	27bdffd8 	addiu	sp,sp,-40
 358:	afbf0024 	sw	ra,36(sp)
 35c:	afb00020 	sw	s0,32(sp)
 360:	00808025 	move	s0,a0
 364:	0c000000 	jal	0 <EnSi_Init>
 368:	afa5002c 	sw	a1,44(sp)
 36c:	44800000 	mtc1	zero,$f0
 370:	240e0004 	li	t6,4
 374:	afae0014 	sw	t6,20(sp)
 378:	44060000 	mfc1	a2,$f0
 37c:	44070000 	mfc1	a3,$f0
 380:	8fa4002c 	lw	a0,44(sp)
 384:	02002825 	move	a1,s0
 388:	0c000000 	jal	0 <EnSi_Init>
 38c:	e7a00010 	swc1	$f0,16(sp)
 390:	8e19014c 	lw	t9,332(s0)
 394:	02002025 	move	a0,s0
 398:	8fa5002c 	lw	a1,44(sp)
 39c:	0320f809 	jalr	t9
 3a0:	00000000 	nop
 3a4:	02002025 	move	a0,s0
 3a8:	0c000000 	jal	0 <EnSi_Init>
 3ac:	3c054180 	lui	a1,0x4180
 3b0:	8fbf0024 	lw	ra,36(sp)
 3b4:	8fb00020 	lw	s0,32(sp)
 3b8:	27bd0028 	addiu	sp,sp,40
 3bc:	03e00008 	jr	ra
 3c0:	00000000 	nop

000003c4 <EnSi_Draw>:
 3c4:	27bdffe8 	addiu	sp,sp,-24
 3c8:	afbf0014 	sw	ra,20(sp)
 3cc:	afa5001c 	sw	a1,28(sp)
 3d0:	8c8f014c 	lw	t7,332(a0)
 3d4:	3c0e0000 	lui	t6,0x0
 3d8:	25ce0000 	addiu	t6,t6,0
 3dc:	11cf000a 	beq	t6,t7,408 <EnSi_Draw+0x44>
 3e0:	00003025 	move	a2,zero
 3e4:	0c000000 	jal	0 <EnSi_Init>
 3e8:	afa40018 	sw	a0,24(sp)
 3ec:	8fa40018 	lw	a0,24(sp)
 3f0:	8fa5001c 	lw	a1,28(sp)
 3f4:	0c000000 	jal	0 <EnSi_Init>
 3f8:	00003025 	move	a2,zero
 3fc:	8fa4001c 	lw	a0,28(sp)
 400:	0c000000 	jal	0 <EnSi_Init>
 404:	24050074 	li	a1,116
 408:	8fbf0014 	lw	ra,20(sp)
 40c:	27bd0018 	addiu	sp,sp,24
 410:	03e00008 	jr	ra
 414:	00000000 	nop
	...
