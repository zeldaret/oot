
build/src/overlays/actors/ovl_Obj_Elevator/z_obj_elevator.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <ObjElevator_SetupAction>:
   0:	03e00008 	jr	ra
   4:	ac850164 	sw	a1,356(a0)

00000008 <func_80B92B08>:
   8:	27bdffc8 	addiu	sp,sp,-56
   c:	afbf0024 	sw	ra,36(sp)
  10:	afb00020 	sw	s0,32(sp)
  14:	afa5003c 	sw	a1,60(sp)
  18:	00808025 	move	s0,a0
  1c:	afa60040 	sw	a2,64(sp)
  20:	afa00030 	sw	zero,48(sp)
  24:	0c000000 	jal	0 <ObjElevator_SetupAction>
  28:	00e02825 	move	a1,a3
  2c:	8fa40040 	lw	a0,64(sp)
  30:	0c000000 	jal	0 <ObjElevator_SetupAction>
  34:	27a50030 	addiu	a1,sp,48
  38:	8fa4003c 	lw	a0,60(sp)
  3c:	02003025 	move	a2,s0
  40:	8fa70030 	lw	a3,48(sp)
  44:	0c000000 	jal	0 <ObjElevator_SetupAction>
  48:	24850810 	addiu	a1,a0,2064
  4c:	24010032 	li	at,50
  50:	1441000a 	bne	v0,at,7c <func_80B92B08+0x74>
  54:	ae02014c 	sw	v0,332(s0)
  58:	860e001c 	lh	t6,28(s0)
  5c:	3c040000 	lui	a0,0x0
  60:	3c050000 	lui	a1,0x0
  64:	86070000 	lh	a3,0(s0)
  68:	24a50040 	addiu	a1,a1,64
  6c:	24840000 	addiu	a0,a0,0
  70:	24060088 	li	a2,136
  74:	0c000000 	jal	0 <ObjElevator_SetupAction>
  78:	afae0010 	sw	t6,16(sp)
  7c:	8fbf0024 	lw	ra,36(sp)
  80:	8fb00020 	lw	s0,32(sp)
  84:	27bd0038 	addiu	sp,sp,56
  88:	03e00008 	jr	ra
  8c:	00000000 	nop

00000090 <ObjElevator_Init>:
  90:	27bdffe0 	addiu	sp,sp,-32
  94:	afbf001c 	sw	ra,28(sp)
  98:	afb00018 	sw	s0,24(sp)
  9c:	3c060000 	lui	a2,0x0
  a0:	00808025 	move	s0,a0
  a4:	24c60000 	addiu	a2,a2,0
  a8:	0c000000 	jal	0 <ObjElevator_SetupAction>
  ac:	24070001 	li	a3,1
  b0:	860e001c 	lh	t6,28(s0)
  b4:	3c050000 	lui	a1,0x0
  b8:	02002025 	move	a0,s0
  bc:	31cf0001 	andi	t7,t6,0x1
  c0:	000fc080 	sll	t8,t7,0x2
  c4:	00b82821 	addu	a1,a1,t8
  c8:	0c000000 	jal	0 <ObjElevator_SetupAction>
  cc:	8ca5002c 	lw	a1,44(a1)
  d0:	3c050000 	lui	a1,0x0
  d4:	24a50020 	addiu	a1,a1,32
  d8:	0c000000 	jal	0 <ObjElevator_SetupAction>
  dc:	02002025 	move	a0,s0
  e0:	8619001c 	lh	t9,28(s0)
  e4:	02002025 	move	a0,s0
  e8:	00194203 	sra	t0,t9,0x8
  ec:	3109000f 	andi	t1,t0,0xf
  f0:	44892000 	mtc1	t1,$f4
  f4:	00000000 	nop
  f8:	46802020 	cvt.s.w	$f0,$f4
  fc:	46000180 	add.s	$f6,$f0,$f0
 100:	0c000000 	jal	0 <ObjElevator_SetupAction>
 104:	e606016c 	swc1	$f6,364(s0)
 108:	3c040000 	lui	a0,0x0
 10c:	24840054 	addiu	a0,a0,84
 110:	0c000000 	jal	0 <ObjElevator_SetupAction>
 114:	8605001c 	lh	a1,28(s0)
 118:	8fbf001c 	lw	ra,28(sp)
 11c:	8fb00018 	lw	s0,24(sp)
 120:	27bd0020 	addiu	sp,sp,32
 124:	03e00008 	jr	ra
 128:	00000000 	nop

0000012c <ObjElevator_Destroy>:
 12c:	27bdffe8 	addiu	sp,sp,-24
 130:	afa40018 	sw	a0,24(sp)
 134:	8fae0018 	lw	t6,24(sp)
 138:	afbf0014 	sw	ra,20(sp)
 13c:	00a02025 	move	a0,a1
 140:	24a50810 	addiu	a1,a1,2064
 144:	0c000000 	jal	0 <ObjElevator_SetupAction>
 148:	8dc6014c 	lw	a2,332(t6)
 14c:	8fbf0014 	lw	ra,20(sp)
 150:	27bd0018 	addiu	sp,sp,24
 154:	03e00008 	jr	ra
 158:	00000000 	nop

0000015c <func_80B92C5C>:
 15c:	27bdffe8 	addiu	sp,sp,-24
 160:	afbf0014 	sw	ra,20(sp)
 164:	3c050000 	lui	a1,0x0
 168:	0c000000 	jal	0 <ObjElevator_SetupAction>
 16c:	24a50000 	addiu	a1,a1,0
 170:	8fbf0014 	lw	ra,20(sp)
 174:	27bd0018 	addiu	sp,sp,24
 178:	03e00008 	jr	ra
 17c:	00000000 	nop

00000180 <func_80B92C80>:
 180:	27bdffe8 	addiu	sp,sp,-24
 184:	afbf0014 	sw	ra,20(sp)
 188:	afa5001c 	sw	a1,28(sp)
 18c:	908e0160 	lbu	t6,352(a0)
 190:	31cf0002 	andi	t7,t6,0x2
 194:	51e0001f 	beqzl	t7,214 <func_80B92C80+0x94>
 198:	8fbf0014 	lw	ra,20(sp)
 19c:	90980170 	lbu	t8,368(a0)
 1a0:	33190002 	andi	t9,t8,0x2
 1a4:	5720001b 	bnezl	t9,214 <func_80B92C80+0x94>
 1a8:	8fbf0014 	lw	ra,20(sp)
 1ac:	c48c000c 	lwc1	$f12,12(a0)
 1b0:	c4840028 	lwc1	$f4,40(a0)
 1b4:	3c010000 	lui	at,0x0
 1b8:	c426007c 	lwc1	$f6,124(at)
 1bc:	460c2081 	sub.s	$f2,$f4,$f12
 1c0:	46001005 	abs.s	$f0,$f2
 1c4:	4606003c 	c.lt.s	$f0,$f6
 1c8:	00000000 	nop
 1cc:	4502000e 	bc1fl	208 <func_80B92C80+0x88>
 1d0:	e48c0168 	swc1	$f12,360(a0)
 1d4:	8488001c 	lh	t0,28(a0)
 1d8:	3c0142a0 	lui	at,0x42a0
 1dc:	44818000 	mtc1	at,$f16
 1e0:	00084b03 	sra	t1,t0,0xc
 1e4:	312a000f 	andi	t2,t1,0xf
 1e8:	448a4000 	mtc1	t2,$f8
 1ec:	00000000 	nop
 1f0:	468042a0 	cvt.s.w	$f10,$f8
 1f4:	46105482 	mul.s	$f18,$f10,$f16
 1f8:	46126100 	add.s	$f4,$f12,$f18
 1fc:	10000002 	b	208 <func_80B92C80+0x88>
 200:	e4840168 	swc1	$f4,360(a0)
 204:	e48c0168 	swc1	$f12,360(a0)
 208:	0c000000 	jal	0 <ObjElevator_SetupAction>
 20c:	00000000 	nop
 210:	8fbf0014 	lw	ra,20(sp)
 214:	27bd0018 	addiu	sp,sp,24
 218:	03e00008 	jr	ra
 21c:	00000000 	nop

00000220 <func_80B92D20>:
 220:	27bdffe8 	addiu	sp,sp,-24
 224:	afbf0014 	sw	ra,20(sp)
 228:	3c050000 	lui	a1,0x0
 22c:	0c000000 	jal	0 <ObjElevator_SetupAction>
 230:	24a50000 	addiu	a1,a1,0
 234:	8fbf0014 	lw	ra,20(sp)
 238:	27bd0018 	addiu	sp,sp,24
 23c:	03e00008 	jr	ra
 240:	00000000 	nop

00000244 <func_80B92D44>:
 244:	27bdffd8 	addiu	sp,sp,-40
 248:	afb00020 	sw	s0,32(sp)
 24c:	00808025 	move	s0,a0
 250:	afbf0024 	sw	ra,36(sp)
 254:	afa5002c 	sw	a1,44(sp)
 258:	44802000 	mtc1	zero,$f4
 25c:	8e07016c 	lw	a3,364(s0)
 260:	8e050168 	lw	a1,360(s0)
 264:	24840028 	addiu	a0,a0,40
 268:	3c063f80 	lui	a2,0x3f80
 26c:	0c000000 	jal	0 <ObjElevator_SetupAction>
 270:	e7a40010 	swc1	$f4,16(sp)
 274:	3c010000 	lui	at,0x0
 278:	c4260080 	lwc1	$f6,128(at)
 27c:	46000005 	abs.s	$f0,$f0
 280:	24052815 	li	a1,10261
 284:	4606003c 	c.lt.s	$f0,$f6
 288:	02002025 	move	a0,s0
 28c:	45000007 	bc1f	2ac <func_80B92D44+0x68>
 290:	00000000 	nop
 294:	0c000000 	jal	0 <ObjElevator_SetupAction>
 298:	02002025 	move	a0,s0
 29c:	0c000000 	jal	0 <ObjElevator_SetupAction>
 2a0:	02002025 	move	a0,s0
 2a4:	10000004 	b	2b8 <func_80B92D44+0x74>
 2a8:	8fbf0024 	lw	ra,36(sp)
 2ac:	0c000000 	jal	0 <ObjElevator_SetupAction>
 2b0:	2405201e 	li	a1,8222
 2b4:	8fbf0024 	lw	ra,36(sp)
 2b8:	8fb00020 	lw	s0,32(sp)
 2bc:	27bd0028 	addiu	sp,sp,40
 2c0:	03e00008 	jr	ra
 2c4:	00000000 	nop

000002c8 <ObjElevator_Update>:
 2c8:	27bdffe8 	addiu	sp,sp,-24
 2cc:	afbf0014 	sw	ra,20(sp)
 2d0:	8c820164 	lw	v0,356(a0)
 2d4:	50400005 	beqzl	v0,2ec <ObjElevator_Update+0x24>
 2d8:	908e0160 	lbu	t6,352(a0)
 2dc:	0040f809 	jalr	v0
 2e0:	afa40018 	sw	a0,24(sp)
 2e4:	8fa40018 	lw	a0,24(sp)
 2e8:	908e0160 	lbu	t6,352(a0)
 2ec:	a08e0170 	sb	t6,368(a0)
 2f0:	8fbf0014 	lw	ra,20(sp)
 2f4:	27bd0018 	addiu	sp,sp,24
 2f8:	03e00008 	jr	ra
 2fc:	00000000 	nop

00000300 <ObjElevator_Draw>:
 300:	27bdffe8 	addiu	sp,sp,-24
 304:	afa40018 	sw	a0,24(sp)
 308:	00a02025 	move	a0,a1
 30c:	afbf0014 	sw	ra,20(sp)
 310:	3c050000 	lui	a1,0x0
 314:	0c000000 	jal	0 <ObjElevator_SetupAction>
 318:	24a50000 	addiu	a1,a1,0
 31c:	8fbf0014 	lw	ra,20(sp)
 320:	27bd0018 	addiu	sp,sp,24
 324:	03e00008 	jr	ra
 328:	00000000 	nop
 32c:	00000000 	nop
