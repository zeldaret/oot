
build/src/libultra_boot_O2/__osEPiRawStartDma.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <__osEPiRawStartDma>:
   0:	27bdffe0 	addiu	sp,sp,-32
   4:	3c03a460 	lui	v1,0xa460
   8:	34630010 	ori	v1,v1,0x10
   c:	afbf001c 	sw	ra,28(sp)
  10:	afb00018 	sw	s0,24(sp)
  14:	afa60028 	sw	a2,40(sp)
  18:	8c620000 	lw	v0,0(v1)
  1c:	00808025 	move	s0,a0
  20:	304e0003 	andi	t6,v0,0x3
  24:	51c00006 	beqzl	t6,40 <__osEPiRawStartDma+0x40>
  28:	92020009 	lbu	v0,9(s0)
  2c:	8c620000 	lw	v0,0(v1)
  30:	304f0003 	andi	t7,v0,0x3
  34:	55e0fffe 	bnezl	t7,30 <__osEPiRawStartDma+0x30>
  38:	8c620000 	lw	v0,0(v1)
  3c:	92020009 	lbu	v0,9(s0)
  40:	3c040000 	lui	a0,0x0
  44:	92190004 	lbu	t9,4(s0)
  48:	0002c080 	sll	t8,v0,0x2
  4c:	00982021 	addu	a0,a0,t8
  50:	8c840000 	lw	a0,0(a0)
  54:	90880004 	lbu	t0,4(a0)
  58:	5328003d 	beql	t9,t0,150 <__osEPiRawStartDma+0x150>
  5c:	00e02025 	move	a0,a3
  60:	14400019 	bnez	v0,c8 <__osEPiRawStartDma+0xc8>
  64:	00801825 	move	v1,a0
  68:	92020005 	lbu	v0,5(s0)
  6c:	90890005 	lbu	t1,5(a0)
  70:	3c0aa460 	lui	t2,0xa460
  74:	3c0ca460 	lui	t4,0xa460
  78:	10490002 	beq	v0,t1,84 <__osEPiRawStartDma+0x84>
  7c:	3c0ea460 	lui	t6,0xa460
  80:	ad420014 	sw	v0,20(t2)
  84:	92020006 	lbu	v0,6(s0)
  88:	906b0006 	lbu	t3,6(v1)
  8c:	3c18a460 	lui	t8,0xa460
  90:	504b0003 	beql	v0,t3,a0 <__osEPiRawStartDma+0xa0>
  94:	92020007 	lbu	v0,7(s0)
  98:	ad82001c 	sw	v0,28(t4)
  9c:	92020007 	lbu	v0,7(s0)
  a0:	906d0007 	lbu	t5,7(v1)
  a4:	504d0003 	beql	v0,t5,b4 <__osEPiRawStartDma+0xb4>
  a8:	92020008 	lbu	v0,8(s0)
  ac:	adc20020 	sw	v0,32(t6)
  b0:	92020008 	lbu	v0,8(s0)
  b4:	906f0008 	lbu	t7,8(v1)
  b8:	504f001b 	beql	v0,t7,128 <__osEPiRawStartDma+0x128>
  bc:	920f0004 	lbu	t7,4(s0)
  c0:	10000018 	b	124 <__osEPiRawStartDma+0x124>
  c4:	af020018 	sw	v0,24(t8)
  c8:	92020005 	lbu	v0,5(s0)
  cc:	90790005 	lbu	t9,5(v1)
  d0:	3c08a460 	lui	t0,0xa460
  d4:	3c0aa460 	lui	t2,0xa460
  d8:	10590002 	beq	v0,t9,e4 <__osEPiRawStartDma+0xe4>
  dc:	3c0ca460 	lui	t4,0xa460
  e0:	ad020024 	sw	v0,36(t0)
  e4:	92020006 	lbu	v0,6(s0)
  e8:	90690006 	lbu	t1,6(v1)
  ec:	3c0ea460 	lui	t6,0xa460
  f0:	50490003 	beql	v0,t1,100 <__osEPiRawStartDma+0x100>
  f4:	92020007 	lbu	v0,7(s0)
  f8:	ad42002c 	sw	v0,44(t2)
  fc:	92020007 	lbu	v0,7(s0)
 100:	906b0007 	lbu	t3,7(v1)
 104:	504b0003 	beql	v0,t3,114 <__osEPiRawStartDma+0x114>
 108:	92020008 	lbu	v0,8(s0)
 10c:	ad820030 	sw	v0,48(t4)
 110:	92020008 	lbu	v0,8(s0)
 114:	906d0008 	lbu	t5,8(v1)
 118:	504d0003 	beql	v0,t5,128 <__osEPiRawStartDma+0x128>
 11c:	920f0004 	lbu	t7,4(s0)
 120:	adc20028 	sw	v0,40(t6)
 124:	920f0004 	lbu	t7,4(s0)
 128:	a06f0004 	sb	t7,4(v1)
 12c:	92180005 	lbu	t8,5(s0)
 130:	a0780005 	sb	t8,5(v1)
 134:	92190006 	lbu	t9,6(s0)
 138:	a0790006 	sb	t9,6(v1)
 13c:	92080007 	lbu	t0,7(s0)
 140:	a0680007 	sb	t0,7(v1)
 144:	92090008 	lbu	t1,8(s0)
 148:	a0690008 	sb	t1,8(v1)
 14c:	00e02025 	move	a0,a3
 150:	0c000000 	jal	0 <__osEPiRawStartDma>
 154:	afa50024 	sw	a1,36(sp)
 158:	8fa50024 	lw	a1,36(sp)
 15c:	3c0aa460 	lui	t2,0xa460
 160:	ad420000 	sw	v0,0(t2)
 164:	8fac0028 	lw	t4,40(sp)
 168:	8e0b000c 	lw	t3,12(s0)
 16c:	3c011fff 	lui	at,0x1fff
 170:	3421ffff 	ori	at,at,0xffff
 174:	016c6825 	or	t5,t3,t4
 178:	01a17024 	and	t6,t5,at
 17c:	3c0fa460 	lui	t7,0xa460
 180:	10a00006 	beqz	a1,19c <__osEPiRawStartDma+0x19c>
 184:	adee0004 	sw	t6,4(t7)
 188:	24010001 	li	at,1
 18c:	10a10008 	beq	a1,at,1b0 <__osEPiRawStartDma+0x1b0>
 190:	8fa90030 	lw	t1,48(sp)
 194:	1000000d 	b	1cc <__osEPiRawStartDma+0x1cc>
 198:	2402ffff 	li	v0,-1
 19c:	8fb80030 	lw	t8,48(sp)
 1a0:	3c08a460 	lui	t0,0xa460
 1a4:	2719ffff 	addiu	t9,t8,-1
 1a8:	10000007 	b	1c8 <__osEPiRawStartDma+0x1c8>
 1ac:	ad19000c 	sw	t9,12(t0)
 1b0:	252affff 	addiu	t2,t1,-1
 1b4:	3c0ba460 	lui	t3,0xa460
 1b8:	10000003 	b	1c8 <__osEPiRawStartDma+0x1c8>
 1bc:	ad6a0008 	sw	t2,8(t3)
 1c0:	10000002 	b	1cc <__osEPiRawStartDma+0x1cc>
 1c4:	2402ffff 	li	v0,-1
 1c8:	00001025 	move	v0,zero
 1cc:	8fbf001c 	lw	ra,28(sp)
 1d0:	8fb00018 	lw	s0,24(sp)
 1d4:	27bd0020 	addiu	sp,sp,32
 1d8:	03e00008 	jr	ra
 1dc:	00000000 	nop
