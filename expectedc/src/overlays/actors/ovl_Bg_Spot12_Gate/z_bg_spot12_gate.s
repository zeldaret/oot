
build/src/overlays/actors/ovl_Bg_Spot12_Gate/z_bg_spot12_gate.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <func_808B2F90>:
   0:	27bdffc8 	addiu	sp,sp,-56
   4:	afbf0024 	sw	ra,36(sp)
   8:	afb00020 	sw	s0,32(sp)
   c:	afa5003c 	sw	a1,60(sp)
  10:	00808025 	move	s0,a0
  14:	afa60040 	sw	a2,64(sp)
  18:	afa00030 	sw	zero,48(sp)
  1c:	0c000000 	jal	0 <func_808B2F90>
  20:	00e02825 	move	a1,a3
  24:	8fa40040 	lw	a0,64(sp)
  28:	0c000000 	jal	0 <func_808B2F90>
  2c:	27a50030 	addiu	a1,sp,48
  30:	8fa4003c 	lw	a0,60(sp)
  34:	02003025 	move	a2,s0
  38:	8fa70030 	lw	a3,48(sp)
  3c:	0c000000 	jal	0 <func_808B2F90>
  40:	24850810 	addiu	a1,a0,2064
  44:	24010032 	li	at,50
  48:	1441000a 	bne	v0,at,74 <func_808B2F90+0x74>
  4c:	ae02014c 	sw	v0,332(s0)
  50:	860e001c 	lh	t6,28(s0)
  54:	3c040000 	lui	a0,0x0
  58:	3c050000 	lui	a1,0x0
  5c:	86070000 	lh	a3,0(s0)
  60:	24a50040 	addiu	a1,a1,64
  64:	24840000 	addiu	a0,a0,0
  68:	24060091 	li	a2,145
  6c:	0c000000 	jal	0 <func_808B2F90>
  70:	afae0010 	sw	t6,16(sp)
  74:	8fbf0024 	lw	ra,36(sp)
  78:	8fb00020 	lw	s0,32(sp)
  7c:	27bd0038 	addiu	sp,sp,56
  80:	03e00008 	jr	ra
  84:	00000000 	nop

00000088 <BgSpot12Gate_Init>:
  88:	27bdffe0 	addiu	sp,sp,-32
  8c:	afbf001c 	sw	ra,28(sp)
  90:	afb00018 	sw	s0,24(sp)
  94:	3c060000 	lui	a2,0x0
  98:	00808025 	move	s0,a0
  9c:	afa50024 	sw	a1,36(sp)
  a0:	24c60000 	addiu	a2,a2,0
  a4:	0c000000 	jal	0 <func_808B2F90>
  a8:	00003825 	move	a3,zero
  ac:	3c050000 	lui	a1,0x0
  b0:	24a50020 	addiu	a1,a1,32
  b4:	0c000000 	jal	0 <func_808B2F90>
  b8:	02002025 	move	a0,s0
  bc:	8605001c 	lh	a1,28(s0)
  c0:	8fa40024 	lw	a0,36(sp)
  c4:	0c000000 	jal	0 <func_808B2F90>
  c8:	30a5003f 	andi	a1,a1,0x3f
  cc:	10400005 	beqz	v0,e4 <BgSpot12Gate_Init+0x5c>
  d0:	00000000 	nop
  d4:	0c000000 	jal	0 <func_808B2F90>
  d8:	02002025 	move	a0,s0
  dc:	10000004 	b	f0 <BgSpot12Gate_Init+0x68>
  e0:	8fbf001c 	lw	ra,28(sp)
  e4:	0c000000 	jal	0 <func_808B2F90>
  e8:	02002025 	move	a0,s0
  ec:	8fbf001c 	lw	ra,28(sp)
  f0:	8fb00018 	lw	s0,24(sp)
  f4:	27bd0020 	addiu	sp,sp,32
  f8:	03e00008 	jr	ra
  fc:	00000000 	nop

00000100 <BgSpot12Gate_Destroy>:
 100:	27bdffe8 	addiu	sp,sp,-24
 104:	afa40018 	sw	a0,24(sp)
 108:	8fae0018 	lw	t6,24(sp)
 10c:	afbf0014 	sw	ra,20(sp)
 110:	00a02025 	move	a0,a1
 114:	24a50810 	addiu	a1,a1,2064
 118:	0c000000 	jal	0 <func_808B2F90>
 11c:	8dc6014c 	lw	a2,332(t6)
 120:	8fbf0014 	lw	ra,20(sp)
 124:	27bd0018 	addiu	sp,sp,24
 128:	03e00008 	jr	ra
 12c:	00000000 	nop

00000130 <func_808B30C0>:
 130:	c484000c 	lwc1	$f4,12(a0)
 134:	3c0e0000 	lui	t6,0x0
 138:	25ce0000 	addiu	t6,t6,0
 13c:	ac8e0164 	sw	t6,356(a0)
 140:	03e00008 	jr	ra
 144:	e4840028 	swc1	$f4,40(a0)

00000148 <func_808B30D8>:
 148:	27bdffe0 	addiu	sp,sp,-32
 14c:	afa40020 	sw	a0,32(sp)
 150:	8fae0020 	lw	t6,32(sp)
 154:	afbf001c 	sw	ra,28(sp)
 158:	afa50024 	sw	a1,36(sp)
 15c:	00a02025 	move	a0,a1
 160:	85c5001c 	lh	a1,28(t6)
 164:	0c000000 	jal	0 <func_808B2F90>
 168:	30a5003f 	andi	a1,a1,0x3f
 16c:	5040000a 	beqzl	v0,198 <func_808B30D8+0x50>
 170:	8fbf001c 	lw	ra,28(sp)
 174:	0c000000 	jal	0 <func_808B2F90>
 178:	8fa40020 	lw	a0,32(sp)
 17c:	8fa40024 	lw	a0,36(sp)
 180:	24051040 	li	a1,4160
 184:	2406ff9d 	li	a2,-99
 188:	8fa70020 	lw	a3,32(sp)
 18c:	0c000000 	jal	0 <func_808B2F90>
 190:	afa00010 	sw	zero,16(sp)
 194:	8fbf001c 	lw	ra,28(sp)
 198:	27bd0020 	addiu	sp,sp,32
 19c:	03e00008 	jr	ra
 1a0:	00000000 	nop

000001a4 <func_808B3134>:
 1a4:	3c0e0000 	lui	t6,0x0
 1a8:	25ce0000 	addiu	t6,t6,0
 1ac:	240f0028 	li	t7,40
 1b0:	ac8e0164 	sw	t6,356(a0)
 1b4:	03e00008 	jr	ra
 1b8:	a48f0168 	sh	t7,360(a0)

000001bc <func_808B314C>:
 1bc:	27bdffe8 	addiu	sp,sp,-24
 1c0:	afbf0014 	sw	ra,20(sp)
 1c4:	afa5001c 	sw	a1,28(sp)
 1c8:	848e0168 	lh	t6,360(a0)
 1cc:	5dc00004 	bgtzl	t6,1e0 <func_808B314C+0x24>
 1d0:	8fbf0014 	lw	ra,20(sp)
 1d4:	0c000000 	jal	0 <func_808B2F90>
 1d8:	00000000 	nop
 1dc:	8fbf0014 	lw	ra,20(sp)
 1e0:	27bd0018 	addiu	sp,sp,24
 1e4:	03e00008 	jr	ra
 1e8:	00000000 	nop

000001ec <func_808B317C>:
 1ec:	3c0e0000 	lui	t6,0x0
 1f0:	25ce0000 	addiu	t6,t6,0
 1f4:	03e00008 	jr	ra
 1f8:	ac8e0164 	sw	t6,356(a0)

000001fc <func_808B318C>:
 1fc:	27bdffc8 	addiu	sp,sp,-56
 200:	afb00020 	sw	s0,32(sp)
 204:	afa5003c 	sw	a1,60(sp)
 208:	00808025 	move	s0,a0
 20c:	afbf0024 	sw	ra,36(sp)
 210:	3c053fcc 	lui	a1,0x3fcc
 214:	3c063cf5 	lui	a2,0x3cf5
 218:	34c6c28f 	ori	a2,a2,0xc28f
 21c:	34a5cccd 	ori	a1,a1,0xcccd
 220:	0c000000 	jal	0 <func_808B2F90>
 224:	24840060 	addiu	a0,a0,96
 228:	3c014348 	lui	at,0x4348
 22c:	44813000 	mtc1	at,$f6
 230:	c604000c 	lwc1	$f4,12(s0)
 234:	26040028 	addiu	a0,s0,40
 238:	8e060060 	lw	a2,96(s0)
 23c:	46062200 	add.s	$f8,$f4,$f6
 240:	44054000 	mfc1	a1,$f8
 244:	0c000000 	jal	0 <func_808B2F90>
 248:	00000000 	nop
 24c:	1040001e 	beqz	v0,2c8 <func_808B318C+0xcc>
 250:	02002025 	move	a0,s0
 254:	0c000000 	jal	0 <func_808B2F90>
 258:	02002025 	move	a0,s0
 25c:	8fa2003c 	lw	v0,60(sp)
 260:	24050003 	li	a1,3
 264:	844e07a0 	lh	t6,1952(v0)
 268:	000e7880 	sll	t7,t6,0x2
 26c:	004fc021 	addu	t8,v0,t7
 270:	0c000000 	jal	0 <func_808B2F90>
 274:	8f040790 	lw	a0,1936(t8)
 278:	00022400 	sll	a0,v0,0x10
 27c:	afa20030 	sw	v0,48(sp)
 280:	00042403 	sra	a0,a0,0x10
 284:	0c000000 	jal	0 <func_808B2F90>
 288:	2405c350 	li	a1,-15536
 28c:	87a40032 	lh	a0,50(sp)
 290:	24050003 	li	a1,3
 294:	00003025 	move	a2,zero
 298:	00003825 	move	a3,zero
 29c:	afa00010 	sw	zero,16(sp)
 2a0:	0c000000 	jal	0 <func_808B2F90>
 2a4:	afa4002c 	sw	a0,44(sp)
 2a8:	8fa4002c 	lw	a0,44(sp)
 2ac:	0c000000 	jal	0 <func_808B2F90>
 2b0:	2405000c 	li	a1,12
 2b4:	02002025 	move	a0,s0
 2b8:	0c000000 	jal	0 <func_808B2F90>
 2bc:	2405280e 	li	a1,10254
 2c0:	10000004 	b	2d4 <func_808B318C+0xd8>
 2c4:	8fbf0024 	lw	ra,36(sp)
 2c8:	0c000000 	jal	0 <func_808B2F90>
 2cc:	24052067 	li	a1,8295
 2d0:	8fbf0024 	lw	ra,36(sp)
 2d4:	8fb00020 	lw	s0,32(sp)
 2d8:	27bd0038 	addiu	sp,sp,56
 2dc:	03e00008 	jr	ra
 2e0:	00000000 	nop

000002e4 <func_808B3274>:
 2e4:	3c014348 	lui	at,0x4348
 2e8:	44813000 	mtc1	at,$f6
 2ec:	c484000c 	lwc1	$f4,12(a0)
 2f0:	3c0e0000 	lui	t6,0x0
 2f4:	25ce0000 	addiu	t6,t6,0
 2f8:	46062200 	add.s	$f8,$f4,$f6
 2fc:	ac8e0164 	sw	t6,356(a0)
 300:	03e00008 	jr	ra
 304:	e4880028 	swc1	$f8,40(a0)

00000308 <func_808B3298>:
 308:	afa40000 	sw	a0,0(sp)
 30c:	03e00008 	jr	ra
 310:	afa50004 	sw	a1,4(sp)

00000314 <BgSpot12Gate_Update>:
 314:	27bdffe8 	addiu	sp,sp,-24
 318:	afbf0014 	sw	ra,20(sp)
 31c:	84820168 	lh	v0,360(a0)
 320:	18400002 	blez	v0,32c <BgSpot12Gate_Update+0x18>
 324:	244effff 	addiu	t6,v0,-1
 328:	a48e0168 	sh	t6,360(a0)
 32c:	8c990164 	lw	t9,356(a0)
 330:	0320f809 	jalr	t9
 334:	00000000 	nop
 338:	8fbf0014 	lw	ra,20(sp)
 33c:	27bd0018 	addiu	sp,sp,24
 340:	03e00008 	jr	ra
 344:	00000000 	nop

00000348 <BgSpot12Gate_Draw>:
 348:	27bdffe8 	addiu	sp,sp,-24
 34c:	afa40018 	sw	a0,24(sp)
 350:	00a02025 	move	a0,a1
 354:	afbf0014 	sw	ra,20(sp)
 358:	3c050000 	lui	a1,0x0
 35c:	0c000000 	jal	0 <func_808B2F90>
 360:	24a50000 	addiu	a1,a1,0
 364:	8fbf0014 	lw	ra,20(sp)
 368:	27bd0018 	addiu	sp,sp,24
 36c:	03e00008 	jr	ra
 370:	00000000 	nop
	...
