
build/src/overlays/actors/ovl_Bg_Ingate/z_bg_ingate.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <BgIngate_SetupAction>:
   0:	03e00008 	jr	ra
   4:	ac850164 	sw	a1,356(a0)

00000008 <BgIngate_Init>:
   8:	27bdffd0 	addiu	sp,sp,-48
   c:	afbf001c 	sw	ra,28(sp)
  10:	afb00018 	sw	s0,24(sp)
  14:	afa50034 	sw	a1,52(sp)
  18:	00808025 	move	s0,a0
  1c:	afa00024 	sw	zero,36(sp)
  20:	0c000000 	jal	0 <BgIngate_SetupAction>
  24:	00002825 	move	a1,zero
  28:	3c040000 	lui	a0,0x0
  2c:	24840000 	addiu	a0,a0,0
  30:	0c000000 	jal	0 <BgIngate_SetupAction>
  34:	27a50024 	addiu	a1,sp,36
  38:	8fa40034 	lw	a0,52(sp)
  3c:	02003025 	move	a2,s0
  40:	8fa70024 	lw	a3,36(sp)
  44:	0c000000 	jal	0 <BgIngate_SetupAction>
  48:	24850810 	addiu	a1,a0,2064
  4c:	ae02014c 	sw	v0,332(s0)
  50:	8fae0034 	lw	t6,52(sp)
  54:	3c020000 	lui	v0,0x0
  58:	24010063 	li	at,99
  5c:	85cf00a4 	lh	t7,164(t6)
  60:	24420000 	addiu	v0,v0,0
  64:	15e1000e 	bne	t7,at,a0 <BgIngate_Init+0x98>
  68:	00000000 	nop
  6c:	8c580004 	lw	t8,4(v0)
  70:	1700000b 	bnez	t8,a0 <BgIngate_Init+0x98>
  74:	00000000 	nop
  78:	94590ed6 	lhu	t9,3798(v0)
  7c:	02002025 	move	a0,s0
  80:	3c053dcc 	lui	a1,0x3dcc
  84:	33280100 	andi	t0,t9,0x100
  88:	11000009 	beqz	t0,b0 <BgIngate_Init+0xa8>
  8c:	00000000 	nop
  90:	8c490008 	lw	t1,8(v0)
  94:	3401fff0 	li	at,0xfff0
  98:	11210005 	beq	t1,at,b0 <BgIngate_Init+0xa8>
  9c:	00000000 	nop
  a0:	0c000000 	jal	0 <BgIngate_SetupAction>
  a4:	02002025 	move	a0,s0
  a8:	10000019 	b	110 <BgIngate_Init+0x108>
  ac:	8fbf001c 	lw	ra,28(sp)
  b0:	0c000000 	jal	0 <BgIngate_SetupAction>
  b4:	34a5cccd 	ori	a1,a1,0xcccd
  b8:	860a001c 	lh	t2,28(s0)
  bc:	3c020000 	lui	v0,0x0
  c0:	24420000 	addiu	v0,v0,0
  c4:	314b0001 	andi	t3,t2,0x1
  c8:	1160000d 	beqz	t3,100 <BgIngate_Init+0xf8>
  cc:	02002025 	move	a0,s0
  d0:	944c13fa 	lhu	t4,5114(v0)
  d4:	24010006 	li	at,6
  d8:	8fae0034 	lw	t6,52(sp)
  dc:	318d000f 	andi	t5,t4,0xf
  e0:	15a10007 	bne	t5,at,100 <BgIngate_Init+0xf8>
  e4:	3c050000 	lui	a1,0x0
  e8:	a5c01d74 	sh	zero,7540(t6)
  ec:	02002025 	move	a0,s0
  f0:	0c000000 	jal	0 <BgIngate_SetupAction>
  f4:	24a50000 	addiu	a1,a1,0
  f8:	10000005 	b	110 <BgIngate_Init+0x108>
  fc:	8fbf001c 	lw	ra,28(sp)
 100:	3c050000 	lui	a1,0x0
 104:	0c000000 	jal	0 <BgIngate_SetupAction>
 108:	24a50000 	addiu	a1,a1,0
 10c:	8fbf001c 	lw	ra,28(sp)
 110:	8fb00018 	lw	s0,24(sp)
 114:	27bd0030 	addiu	sp,sp,48
 118:	03e00008 	jr	ra
 11c:	00000000 	nop

00000120 <BgIngate_Destroy>:
 120:	27bdffe8 	addiu	sp,sp,-24
 124:	afa40018 	sw	a0,24(sp)
 128:	8fae0018 	lw	t6,24(sp)
 12c:	afbf0014 	sw	ra,20(sp)
 130:	00a02025 	move	a0,a1
 134:	24a50810 	addiu	a1,a1,2064
 138:	0c000000 	jal	0 <BgIngate_SetupAction>
 13c:	8dc6014c 	lw	a2,332(t6)
 140:	8fbf0014 	lw	ra,20(sp)
 144:	27bd0018 	addiu	sp,sp,24
 148:	03e00008 	jr	ra
 14c:	00000000 	nop

00000150 <func_80892890>:
 150:	27bdffe8 	addiu	sp,sp,-24
 154:	afbf0014 	sw	ra,20(sp)
 158:	94a21d74 	lhu	v0,7540(a1)
 15c:	00803025 	move	a2,a0
 160:	3c050000 	lui	a1,0x0
 164:	28410032 	slti	at,v0,50
 168:	54200010 	bnezl	at,1ac <func_80892890+0x5c>
 16c:	2841000a 	slti	at,v0,10
 170:	848e001c 	lh	t6,28(a0)
 174:	24024000 	li	v0,16384
 178:	31cf0002 	andi	t7,t6,0x2
 17c:	55e00003 	bnezl	t7,18c <func_80892890+0x3c>
 180:	84d80032 	lh	t8,50(a2)
 184:	2402c000 	li	v0,-16384
 188:	84d80032 	lh	t8,50(a2)
 18c:	00c02025 	move	a0,a2
 190:	24a50000 	addiu	a1,a1,0
 194:	0302c821 	addu	t9,t8,v0
 198:	0c000000 	jal	0 <BgIngate_SetupAction>
 19c:	a4d900b6 	sh	t9,182(a2)
 1a0:	10000028 	b	244 <func_80892890+0xf4>
 1a4:	8fbf0014 	lw	ra,20(sp)
 1a8:	2841000a 	slti	at,v0,10
 1ac:	14200024 	bnez	at,240 <func_80892890+0xf0>
 1b0:	2444fff6 	addiu	a0,v0,-10
 1b4:	00042400 	sll	a0,a0,0x10
 1b8:	00042403 	sra	a0,a0,0x10
 1bc:	00800821 	move	at,a0
 1c0:	00042080 	sll	a0,a0,0x2
 1c4:	00812023 	subu	a0,a0,at
 1c8:	000420c0 	sll	a0,a0,0x3
 1cc:	00812021 	addu	a0,a0,at
 1d0:	00042100 	sll	a0,a0,0x4
 1d4:	00042400 	sll	a0,a0,0x10
 1d8:	00042403 	sra	a0,a0,0x10
 1dc:	28814001 	slti	at,a0,16385
 1e0:	14200002 	bnez	at,1ec <func_80892890+0x9c>
 1e4:	00000000 	nop
 1e8:	24044000 	li	a0,16384
 1ec:	0c000000 	jal	0 <BgIngate_SetupAction>
 1f0:	afa60018 	sw	a2,24(sp)
 1f4:	3c014680 	lui	at,0x4680
 1f8:	44812000 	mtc1	at,$f4
 1fc:	8fa60018 	lw	a2,24(sp)
 200:	46040182 	mul.s	$f6,$f0,$f4
 204:	84c9001c 	lh	t1,28(a2)
 208:	312a0002 	andi	t2,t1,0x2
 20c:	4600320d 	trunc.w.s	$f8,$f6
 210:	44034000 	mfc1	v1,$f8
 214:	00000000 	nop
 218:	00031400 	sll	v0,v1,0x10
 21c:	15400005 	bnez	t2,234 <func_80892890+0xe4>
 220:	00021403 	sra	v0,v0,0x10
 224:	00601025 	move	v0,v1
 228:	00021023 	negu	v0,v0
 22c:	00021400 	sll	v0,v0,0x10
 230:	00021403 	sra	v0,v0,0x10
 234:	84cb0032 	lh	t3,50(a2)
 238:	01626021 	addu	t4,t3,v0
 23c:	a4cc00b6 	sh	t4,182(a2)
 240:	8fbf0014 	lw	ra,20(sp)
 244:	27bd0018 	addiu	sp,sp,24
 248:	03e00008 	jr	ra
 24c:	00000000 	nop

00000250 <BgIngate_DoNothing>:
 250:	afa40000 	sw	a0,0(sp)
 254:	03e00008 	jr	ra
 258:	afa50004 	sw	a1,4(sp)

0000025c <BgIngate_Update>:
 25c:	27bdffe8 	addiu	sp,sp,-24
 260:	afbf0014 	sw	ra,20(sp)
 264:	8c990164 	lw	t9,356(a0)
 268:	0320f809 	jalr	t9
 26c:	00000000 	nop
 270:	8fbf0014 	lw	ra,20(sp)
 274:	27bd0018 	addiu	sp,sp,24
 278:	03e00008 	jr	ra
 27c:	00000000 	nop

00000280 <BgIngate_Draw>:
 280:	27bdffc0 	addiu	sp,sp,-64
 284:	afbf001c 	sw	ra,28(sp)
 288:	afb00018 	sw	s0,24(sp)
 28c:	afa40040 	sw	a0,64(sp)
 290:	afa50044 	sw	a1,68(sp)
 294:	8ca50000 	lw	a1,0(a1)
 298:	3c060000 	lui	a2,0x0
 29c:	24c60000 	addiu	a2,a2,0
 2a0:	27a4002c 	addiu	a0,sp,44
 2a4:	240700f0 	li	a3,240
 2a8:	0c000000 	jal	0 <BgIngate_SetupAction>
 2ac:	00a08025 	move	s0,a1
 2b0:	8faf0044 	lw	t7,68(sp)
 2b4:	0c000000 	jal	0 <BgIngate_SetupAction>
 2b8:	8de40000 	lw	a0,0(t7)
 2bc:	8e0202c0 	lw	v0,704(s0)
 2c0:	3c19da38 	lui	t9,0xda38
 2c4:	37390003 	ori	t9,t9,0x3
 2c8:	24580008 	addiu	t8,v0,8
 2cc:	ae1802c0 	sw	t8,704(s0)
 2d0:	ac590000 	sw	t9,0(v0)
 2d4:	8fa80044 	lw	t0,68(sp)
 2d8:	3c050000 	lui	a1,0x0
 2dc:	24a50014 	addiu	a1,a1,20
 2e0:	8d040000 	lw	a0,0(t0)
 2e4:	240600f5 	li	a2,245
 2e8:	0c000000 	jal	0 <BgIngate_SetupAction>
 2ec:	afa20028 	sw	v0,40(sp)
 2f0:	8fa30028 	lw	v1,40(sp)
 2f4:	3c0b0000 	lui	t3,0x0
 2f8:	256b0000 	addiu	t3,t3,0
 2fc:	ac620004 	sw	v0,4(v1)
 300:	8e0202c0 	lw	v0,704(s0)
 304:	3c0ade00 	lui	t2,0xde00
 308:	3c060000 	lui	a2,0x0
 30c:	24490008 	addiu	t1,v0,8
 310:	ae0902c0 	sw	t1,704(s0)
 314:	ac4b0004 	sw	t3,4(v0)
 318:	ac4a0000 	sw	t2,0(v0)
 31c:	8fac0044 	lw	t4,68(sp)
 320:	24c60028 	addiu	a2,a2,40
 324:	27a4002c 	addiu	a0,sp,44
 328:	240700fa 	li	a3,250
 32c:	0c000000 	jal	0 <BgIngate_SetupAction>
 330:	8d850000 	lw	a1,0(t4)
 334:	8fbf001c 	lw	ra,28(sp)
 338:	8fb00018 	lw	s0,24(sp)
 33c:	27bd0040 	addiu	sp,sp,64
 340:	03e00008 	jr	ra
 344:	00000000 	nop
	...
