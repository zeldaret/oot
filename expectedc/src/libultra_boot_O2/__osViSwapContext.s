
build/src/libultra_boot_O2/__osViSwapContext.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <__osViSwapContext>:
   0:	27bdffb8 	addiu	sp,sp,-72
   4:	afb00018 	sw	s0,24(sp)
   8:	afbf001c 	sw	ra,28(sp)
   c:	3c100000 	lui	s0,0x0
  10:	3c0ea440 	lui	t6,0xa440
  14:	8e100000 	lw	s0,0(s0)
  18:	8dcf0010 	lw	t7,16(t6)
  1c:	8e050008 	lw	a1,8(s0)
  20:	31f80001 	andi	t8,t7,0x1
  24:	afb8002c 	sw	t8,44(sp)
  28:	8e040004 	lw	a0,4(s0)
  2c:	0c000000 	jal	0 <__osViSwapContext>
  30:	afa50044 	sw	a1,68(sp)
  34:	8fb9002c 	lw	t9,44(sp)
  38:	8fa50044 	lw	a1,68(sp)
  3c:	960a0000 	lhu	t2,0(s0)
  40:	00194080 	sll	t0,t9,0x2
  44:	01194021 	addu	t0,t0,t9
  48:	00084080 	sll	t0,t0,0x2
  4c:	00a83021 	addu	a2,a1,t0
  50:	8cc90028 	lw	t1,40(a2)
  54:	314b0002 	andi	t3,t2,0x2
  58:	11600008 	beqz	t3,7c <__osViSwapContext+0x7c>
  5c:	01222021 	addu	a0,t1,v0
  60:	8cad0020 	lw	t5,32(a1)
  64:	8e0c0020 	lw	t4,32(s0)
  68:	2401f000 	li	at,-4096
  6c:	01a17024 	and	t6,t5,at
  70:	018e7825 	or	t7,t4,t6
  74:	10000003 	b	84 <__osViSwapContext+0x84>
  78:	ae0f0020 	sw	t7,32(s0)
  7c:	8cb80020 	lw	t8,32(a1)
  80:	ae180020 	sw	t8,32(s0)
  84:	96190000 	lhu	t9,0(s0)
  88:	33280004 	andi	t0,t9,0x4
  8c:	51000035 	beqzl	t0,164 <__osViSwapContext+0x164>
  90:	8cce002c 	lw	t6,44(a2)
  94:	8cc3002c 	lw	v1,44(a2)
  98:	c6040024 	lwc1	$f4,36(s0)
  9c:	3c014f80 	lui	at,0x4f80
  a0:	30690fff 	andi	t1,v1,0xfff
  a4:	44893000 	mtc1	t1,$f6
  a8:	05210004 	bgez	t1,bc <__osViSwapContext+0xbc>
  ac:	46803220 	cvt.s.w	$f8,$f6
  b0:	44815000 	mtc1	at,$f10
  b4:	00000000 	nop
  b8:	460a4200 	add.s	$f8,$f8,$f10
  bc:	46082402 	mul.s	$f16,$f4,$f8
  c0:	24020001 	li	v0,1
  c4:	3c014f00 	lui	at,0x4f00
  c8:	444af800 	cfc1	t2,$31
  cc:	44c2f800 	ctc1	v0,$31
  d0:	00000000 	nop
  d4:	460084a4 	cvt.w.s	$f18,$f16
  d8:	4442f800 	cfc1	v0,$31
  dc:	00000000 	nop
  e0:	30420078 	andi	v0,v0,0x78
  e4:	50400013 	beqzl	v0,134 <__osViSwapContext+0x134>
  e8:	44029000 	mfc1	v0,$f18
  ec:	44819000 	mtc1	at,$f18
  f0:	24020001 	li	v0,1
  f4:	46128481 	sub.s	$f18,$f16,$f18
  f8:	44c2f800 	ctc1	v0,$31
  fc:	00000000 	nop
 100:	460094a4 	cvt.w.s	$f18,$f18
 104:	4442f800 	cfc1	v0,$31
 108:	00000000 	nop
 10c:	30420078 	andi	v0,v0,0x78
 110:	14400005 	bnez	v0,128 <__osViSwapContext+0x128>
 114:	00000000 	nop
 118:	44029000 	mfc1	v0,$f18
 11c:	3c018000 	lui	at,0x8000
 120:	10000007 	b	140 <__osViSwapContext+0x140>
 124:	00411025 	or	v0,v0,at
 128:	10000005 	b	140 <__osViSwapContext+0x140>
 12c:	2402ffff 	li	v0,-1
 130:	44029000 	mfc1	v0,$f18
 134:	00000000 	nop
 138:	0440fffb 	bltz	v0,128 <__osViSwapContext+0x128>
 13c:	00000000 	nop
 140:	ae02002c 	sw	v0,44(s0)
 144:	8ccb002c 	lw	t3,44(a2)
 148:	2401f000 	li	at,-4096
 14c:	44caf800 	ctc1	t2,$31
 150:	01616824 	and	t5,t3,at
 154:	004d6025 	or	t4,v0,t5
 158:	10000003 	b	168 <__osViSwapContext+0x168>
 15c:	ae0c002c 	sw	t4,44(s0)
 160:	8cce002c 	lw	t6,44(a2)
 164:	ae0e002c 	sw	t6,44(s0)
 168:	3c020000 	lui	v0,0x0
 16c:	8c420000 	lw	v0,0(v0)
 170:	8ccf0030 	lw	t7,48(a2)
 174:	0002c400 	sll	t8,v0,0x10
 178:	01f8c823 	subu	t9,t7,t8
 17c:	03224021 	addu	t0,t9,v0
 180:	afa80034 	sw	t0,52(sp)
 184:	96030000 	lhu	v1,0(s0)
 188:	8ca7001c 	lw	a3,28(a1)
 18c:	30690020 	andi	t1,v1,0x20
 190:	11200002 	beqz	t1,19c <__osViSwapContext+0x19c>
 194:	306a0040 	andi	t2,v1,0x40
 198:	00003825 	move	a3,zero
 19c:	5140000d 	beqzl	t2,1d4 <__osViSwapContext+0x1d4>
 1a0:	306b0080 	andi	t3,v1,0x80
 1a4:	ae00002c 	sw	zero,44(s0)
 1a8:	8e040004 	lw	a0,4(s0)
 1ac:	afa70038 	sw	a3,56(sp)
 1b0:	afa60024 	sw	a2,36(sp)
 1b4:	0c000000 	jal	0 <__osViSwapContext>
 1b8:	afa50044 	sw	a1,68(sp)
 1bc:	8fa50044 	lw	a1,68(sp)
 1c0:	8fa60024 	lw	a2,36(sp)
 1c4:	8fa70038 	lw	a3,56(sp)
 1c8:	00402025 	move	a0,v0
 1cc:	96030000 	lhu	v1,0(s0)
 1d0:	306b0080 	andi	t3,v1,0x80
 1d4:	51600010 	beqzl	t3,218 <__osViSwapContext+0x218>
 1d8:	3c0fa440 	lui	t7,0xa440
 1dc:	960d0028 	lhu	t5,40(s0)
 1e0:	3c0103ff 	lui	at,0x3ff
 1e4:	8e040004 	lw	a0,4(s0)
 1e8:	000d6400 	sll	t4,t5,0x10
 1ec:	01817024 	and	t6,t4,at
 1f0:	ae0e002c 	sw	t6,44(s0)
 1f4:	afa70038 	sw	a3,56(sp)
 1f8:	afa60024 	sw	a2,36(sp)
 1fc:	0c000000 	jal	0 <__osViSwapContext>
 200:	afa50044 	sw	a1,68(sp)
 204:	8fa50044 	lw	a1,68(sp)
 208:	8fa60024 	lw	a2,36(sp)
 20c:	8fa70038 	lw	a3,56(sp)
 210:	00402025 	move	a0,v0
 214:	3c0fa440 	lui	t7,0xa440
 218:	ade40004 	sw	a0,4(t7)
 21c:	8cb80008 	lw	t8,8(a1)
 220:	3c19a440 	lui	t9,0xa440
 224:	3c09a440 	lui	t1,0xa440
 228:	af380008 	sw	t8,8(t9)
 22c:	8ca8000c 	lw	t0,12(a1)
 230:	3c0ba440 	lui	t3,0xa440
 234:	3c0ca440 	lui	t4,0xa440
 238:	ad280014 	sw	t0,20(t1)
 23c:	8caa0010 	lw	t2,16(a1)
 240:	3c18a440 	lui	t8,0xa440
 244:	3c08a440 	lui	t0,0xa440
 248:	ad6a0018 	sw	t2,24(t3)
 24c:	8cad0014 	lw	t5,20(a1)
 250:	3c0aa440 	lui	t2,0xa440
 254:	3c020000 	lui	v0,0x0
 258:	ad8d001c 	sw	t5,28(t4)
 25c:	8cae0018 	lw	t6,24(a1)
 260:	3c0da440 	lui	t5,0xa440
 264:	24420000 	addiu	v0,v0,0
 268:	adee0020 	sw	t6,32(t7)
 26c:	af070024 	sw	a3,36(t8)
 270:	8fb90034 	lw	t9,52(sp)
 274:	3c0ea440 	lui	t6,0xa440
 278:	3c030000 	lui	v1,0x0
 27c:	ad190028 	sw	t9,40(t0)
 280:	8cc90034 	lw	t1,52(a2)
 284:	24630000 	addiu	v1,v1,0
 288:	ad49002c 	sw	t1,44(t2)
 28c:	8ccb0038 	lw	t3,56(a2)
 290:	adab000c 	sw	t3,12(t5)
 294:	8e0c0020 	lw	t4,32(s0)
 298:	02005825 	move	t3,s0
 29c:	adcc0030 	sw	t4,48(t6)
 2a0:	8e0f002c 	lw	t7,44(s0)
 2a4:	260c0030 	addiu	t4,s0,48
 2a8:	af0f0034 	sw	t7,52(t8)
 2ac:	8e19000c 	lw	t9,12(s0)
 2b0:	ad190000 	sw	t9,0(t0)
 2b4:	8c4a0000 	lw	t2,0(v0)
 2b8:	ac500000 	sw	s0,0(v0)
 2bc:	ac6a0000 	sw	t2,0(v1)
 2c0:	8d610000 	lw	at,0(t3)
 2c4:	256b000c 	addiu	t3,t3,12
 2c8:	254a000c 	addiu	t2,t2,12
 2cc:	ad41fff4 	sw	at,-12(t2)
 2d0:	8d61fff8 	lw	at,-8(t3)
 2d4:	ad41fff8 	sw	at,-8(t2)
 2d8:	8d61fffc 	lw	at,-4(t3)
 2dc:	156cfff8 	bne	t3,t4,2c0 <__osViSwapContext+0x2c0>
 2e0:	ad41fffc 	sw	at,-4(t2)
 2e4:	8fbf001c 	lw	ra,28(sp)
 2e8:	8fb00018 	lw	s0,24(sp)
 2ec:	27bd0048 	addiu	sp,sp,72
 2f0:	03e00008 	jr	ra
 2f4:	00000000 	nop
	...
