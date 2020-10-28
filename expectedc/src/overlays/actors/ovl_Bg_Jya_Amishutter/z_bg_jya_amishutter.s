
build/src/overlays/actors/ovl_Bg_Jya_Amishutter/z_bg_jya_amishutter.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <func_808932C0>:
   0:	27bdffc8 	addiu	sp,sp,-56
   4:	afbf0024 	sw	ra,36(sp)
   8:	afb00020 	sw	s0,32(sp)
   c:	afa5003c 	sw	a1,60(sp)
  10:	00808025 	move	s0,a0
  14:	afa60040 	sw	a2,64(sp)
  18:	afa00030 	sw	zero,48(sp)
  1c:	0c000000 	jal	0 <func_808932C0>
  20:	00e02825 	move	a1,a3
  24:	8fa40040 	lw	a0,64(sp)
  28:	0c000000 	jal	0 <func_808932C0>
  2c:	27a50030 	addiu	a1,sp,48
  30:	8fa4003c 	lw	a0,60(sp)
  34:	02003025 	move	a2,s0
  38:	8fa70030 	lw	a3,48(sp)
  3c:	0c000000 	jal	0 <func_808932C0>
  40:	24850810 	addiu	a1,a0,2064
  44:	24010032 	li	at,50
  48:	1441000a 	bne	v0,at,74 <func_808932C0+0x74>
  4c:	ae02014c 	sw	v0,332(s0)
  50:	860e001c 	lh	t6,28(s0)
  54:	3c040000 	lui	a0,0x0
  58:	3c050000 	lui	a1,0x0
  5c:	86070000 	lh	a3,0(s0)
  60:	24a50040 	addiu	a1,a1,64
  64:	24840000 	addiu	a0,a0,0
  68:	24060081 	li	a2,129
  6c:	0c000000 	jal	0 <func_808932C0>
  70:	afae0010 	sw	t6,16(sp)
  74:	8fbf0024 	lw	ra,36(sp)
  78:	8fb00020 	lw	s0,32(sp)
  7c:	27bd0038 	addiu	sp,sp,56
  80:	03e00008 	jr	ra
  84:	00000000 	nop

00000088 <BgJyaAmishutter_Init>:
  88:	27bdffe8 	addiu	sp,sp,-24
  8c:	afbf0014 	sw	ra,20(sp)
  90:	3c060000 	lui	a2,0x0
  94:	afa40018 	sw	a0,24(sp)
  98:	24c60000 	addiu	a2,a2,0
  9c:	0c000000 	jal	0 <func_808932C0>
  a0:	00003825 	move	a3,zero
  a4:	3c050000 	lui	a1,0x0
  a8:	24a50020 	addiu	a1,a1,32
  ac:	0c000000 	jal	0 <func_808932C0>
  b0:	8fa40018 	lw	a0,24(sp)
  b4:	0c000000 	jal	0 <func_808932C0>
  b8:	8fa40018 	lw	a0,24(sp)
  bc:	8fbf0014 	lw	ra,20(sp)
  c0:	27bd0018 	addiu	sp,sp,24
  c4:	03e00008 	jr	ra
  c8:	00000000 	nop

000000cc <BgJyaAmishutter_Destroy>:
  cc:	27bdffe8 	addiu	sp,sp,-24
  d0:	afa40018 	sw	a0,24(sp)
  d4:	8fae0018 	lw	t6,24(sp)
  d8:	afbf0014 	sw	ra,20(sp)
  dc:	00a02025 	move	a0,a1
  e0:	24a50810 	addiu	a1,a1,2064
  e4:	0c000000 	jal	0 <func_808932C0>
  e8:	8dc6014c 	lw	a2,332(t6)
  ec:	8fbf0014 	lw	ra,20(sp)
  f0:	27bd0018 	addiu	sp,sp,24
  f4:	03e00008 	jr	ra
  f8:	00000000 	nop

000000fc <func_808933BC>:
  fc:	3c0e0000 	lui	t6,0x0
 100:	25ce0000 	addiu	t6,t6,0
 104:	03e00008 	jr	ra
 108:	ac8e0164 	sw	t6,356(a0)

0000010c <func_808933CC>:
 10c:	27bdffe8 	addiu	sp,sp,-24
 110:	afbf0014 	sw	ra,20(sp)
 114:	3c014270 	lui	at,0x4270
 118:	44813000 	mtc1	at,$f6
 11c:	c4840090 	lwc1	$f4,144(a0)
 120:	4606203c 	c.lt.s	$f4,$f6
 124:	00000000 	nop
 128:	4502000c 	bc1fl	15c <func_808933CC+0x50>
 12c:	8fbf0014 	lw	ra,20(sp)
 130:	c4800094 	lwc1	$f0,148(a0)
 134:	3c0141f0 	lui	at,0x41f0
 138:	44814000 	mtc1	at,$f8
 13c:	46000005 	abs.s	$f0,$f0
 140:	4608003c 	c.lt.s	$f0,$f8
 144:	00000000 	nop
 148:	45020004 	bc1fl	15c <func_808933CC+0x50>
 14c:	8fbf0014 	lw	ra,20(sp)
 150:	0c000000 	jal	0 <func_808932C0>
 154:	00000000 	nop
 158:	8fbf0014 	lw	ra,20(sp)
 15c:	27bd0018 	addiu	sp,sp,24
 160:	03e00008 	jr	ra
 164:	00000000 	nop

00000168 <func_80893428>:
 168:	3c0e0000 	lui	t6,0x0
 16c:	25ce0000 	addiu	t6,t6,0
 170:	03e00008 	jr	ra
 174:	ac8e0164 	sw	t6,356(a0)

00000178 <func_80893438>:
 178:	27bdffe8 	addiu	sp,sp,-24
 17c:	afbf0014 	sw	ra,20(sp)
 180:	00803825 	move	a3,a0
 184:	3c0142c8 	lui	at,0x42c8
 188:	44813000 	mtc1	at,$f6
 18c:	c4e4000c 	lwc1	$f4,12(a3)
 190:	afa70018 	sw	a3,24(sp)
 194:	24840028 	addiu	a0,a0,40
 198:	46062200 	add.s	$f8,$f4,$f6
 19c:	3c064040 	lui	a2,0x4040
 1a0:	44054000 	mfc1	a1,$f8
 1a4:	0c000000 	jal	0 <func_808932C0>
 1a8:	00000000 	nop
 1ac:	10400009 	beqz	v0,1d4 <func_80893438+0x5c>
 1b0:	8fa70018 	lw	a3,24(sp)
 1b4:	00e02025 	move	a0,a3
 1b8:	0c000000 	jal	0 <func_808932C0>
 1bc:	afa70018 	sw	a3,24(sp)
 1c0:	8fa40018 	lw	a0,24(sp)
 1c4:	0c000000 	jal	0 <func_808932C0>
 1c8:	24052837 	li	a1,10295
 1cc:	10000005 	b	1e4 <func_80893438+0x6c>
 1d0:	8fbf0014 	lw	ra,20(sp)
 1d4:	00e02025 	move	a0,a3
 1d8:	0c000000 	jal	0 <func_808932C0>
 1dc:	24052036 	li	a1,8246
 1e0:	8fbf0014 	lw	ra,20(sp)
 1e4:	27bd0018 	addiu	sp,sp,24
 1e8:	03e00008 	jr	ra
 1ec:	00000000 	nop

000001f0 <func_808934B0>:
 1f0:	3c0e0000 	lui	t6,0x0
 1f4:	25ce0000 	addiu	t6,t6,0
 1f8:	03e00008 	jr	ra
 1fc:	ac8e0164 	sw	t6,356(a0)

00000200 <func_808934C0>:
 200:	27bdffe8 	addiu	sp,sp,-24
 204:	afbf0014 	sw	ra,20(sp)
 208:	3c014396 	lui	at,0x4396
 20c:	44812000 	mtc1	at,$f4
 210:	c4860090 	lwc1	$f6,144(a0)
 214:	4606203c 	c.lt.s	$f4,$f6
 218:	00000000 	nop
 21c:	45020004 	bc1fl	230 <func_808934C0+0x30>
 220:	8fbf0014 	lw	ra,20(sp)
 224:	0c000000 	jal	0 <func_808932C0>
 228:	00000000 	nop
 22c:	8fbf0014 	lw	ra,20(sp)
 230:	27bd0018 	addiu	sp,sp,24
 234:	03e00008 	jr	ra
 238:	00000000 	nop

0000023c <func_808934FC>:
 23c:	3c0e0000 	lui	t6,0x0
 240:	25ce0000 	addiu	t6,t6,0
 244:	03e00008 	jr	ra
 248:	ac8e0164 	sw	t6,356(a0)

0000024c <func_8089350C>:
 24c:	27bdffe8 	addiu	sp,sp,-24
 250:	afbf0014 	sw	ra,20(sp)
 254:	00803825 	move	a3,a0
 258:	8ce5000c 	lw	a1,12(a3)
 25c:	afa70018 	sw	a3,24(sp)
 260:	24840028 	addiu	a0,a0,40
 264:	0c000000 	jal	0 <func_808932C0>
 268:	3c064040 	lui	a2,0x4040
 26c:	10400009 	beqz	v0,294 <func_8089350C+0x48>
 270:	8fa70018 	lw	a3,24(sp)
 274:	00e02025 	move	a0,a3
 278:	0c000000 	jal	0 <func_808932C0>
 27c:	afa70018 	sw	a3,24(sp)
 280:	8fa40018 	lw	a0,24(sp)
 284:	0c000000 	jal	0 <func_808932C0>
 288:	24052837 	li	a1,10295
 28c:	10000005 	b	2a4 <func_8089350C+0x58>
 290:	8fbf0014 	lw	ra,20(sp)
 294:	00e02025 	move	a0,a3
 298:	0c000000 	jal	0 <func_808932C0>
 29c:	24052036 	li	a1,8246
 2a0:	8fbf0014 	lw	ra,20(sp)
 2a4:	27bd0018 	addiu	sp,sp,24
 2a8:	03e00008 	jr	ra
 2ac:	00000000 	nop

000002b0 <BgJyaAmishutter_Update>:
 2b0:	27bdffe8 	addiu	sp,sp,-24
 2b4:	afbf0014 	sw	ra,20(sp)
 2b8:	afa5001c 	sw	a1,28(sp)
 2bc:	8c990164 	lw	t9,356(a0)
 2c0:	0320f809 	jalr	t9
 2c4:	00000000 	nop
 2c8:	8fbf0014 	lw	ra,20(sp)
 2cc:	27bd0018 	addiu	sp,sp,24
 2d0:	03e00008 	jr	ra
 2d4:	00000000 	nop

000002d8 <BgJyaAmishutter_Draw>:
 2d8:	27bdffe8 	addiu	sp,sp,-24
 2dc:	afa40018 	sw	a0,24(sp)
 2e0:	00a02025 	move	a0,a1
 2e4:	afbf0014 	sw	ra,20(sp)
 2e8:	3c050000 	lui	a1,0x0
 2ec:	0c000000 	jal	0 <func_808932C0>
 2f0:	24a50000 	addiu	a1,a1,0
 2f4:	8fbf0014 	lw	ra,20(sp)
 2f8:	27bd0018 	addiu	sp,sp,24
 2fc:	03e00008 	jr	ra
 300:	00000000 	nop
	...
