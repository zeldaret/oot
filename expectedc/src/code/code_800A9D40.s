
build/src/code/code_800A9D40.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <func_800A9D40>:
   0:	27bdffe0 	addiu	sp,sp,-32
   4:	afb00018 	sw	s0,24(sp)
   8:	3c100000 	lui	s0,0x0
   c:	26100000 	addiu	s0,s0,0
  10:	8e0e000c 	lw	t6,12(s0)
  14:	3c01a000 	lui	at,0xa000
  18:	afa60028 	sw	a2,40(sp)
  1c:	afa7002c 	sw	a3,44(sp)
  20:	00811021 	addu	v0,a0,at
  24:	30e700ff 	andi	a3,a3,0xff
  28:	30c600ff 	andi	a2,a2,0xff
  2c:	afbf001c 	sw	ra,28(sp)
  30:	afa40020 	sw	a0,32(sp)
  34:	104e0022 	beq	v0,t6,c0 <func_800A9D40+0xc0>
  38:	afa50024 	sw	a1,36(sp)
  3c:	93af0027 	lbu	t7,39(sp)
  40:	3c010000 	lui	at,0x0
  44:	93b8003b 	lbu	t8,59(sp)
  48:	a20f0004 	sb	t7,4(s0)
  4c:	ac22000c 	sw	v0,12(at)
  50:	93b90033 	lbu	t9,51(sp)
  54:	93a80037 	lbu	t0,55(sp)
  58:	8fa9003c 	lw	t1,60(sp)
  5c:	3c040000 	lui	a0,0x0
  60:	a2070005 	sb	a3,5(s0)
  64:	a2060009 	sb	a2,9(s0)
  68:	24840014 	addiu	a0,a0,20
  6c:	24050060 	li	a1,96
  70:	a2180008 	sb	t8,8(s0)
  74:	a2190006 	sb	t9,6(s0)
  78:	a2080007 	sb	t0,7(s0)
  7c:	0c000000 	jal	0 <func_800A9D40>
  80:	ae090010 	sw	t1,16(s0)
  84:	0c000000 	jal	0 <func_800A9D40>
  88:	00000000 	nop
  8c:	3c030000 	lui	v1,0x0
  90:	24630000 	addiu	v1,v1,0
  94:	8c6a0000 	lw	t2,0(v1)
  98:	ac700000 	sw	s0,0(v1)
  9c:	00402025 	move	a0,v0
  a0:	0c000000 	jal	0 <func_800A9D40>
  a4:	ae0a0000 	sw	t2,0(s0)
  a8:	8fac0020 	lw	t4,32(sp)
  ac:	3c0b0000 	lui	t3,0x0
  b0:	256b008c 	addiu	t3,t3,140
  b4:	a2000076 	sb	zero,118(s0)
  b8:	ae0b0078 	sw	t3,120(s0)
  bc:	ae0c0080 	sw	t4,128(s0)
  c0:	8fbf001c 	lw	ra,28(sp)
  c4:	8fb00018 	lw	s0,24(sp)
  c8:	27bd0020 	addiu	sp,sp,32
  cc:	03e00008 	jr	ra
  d0:	00000000 	nop

000000d4 <func_800A9E14>:
  d4:	27bdffe0 	addiu	sp,sp,-32
  d8:	afa40020 	sw	a0,32(sp)
  dc:	afbf0014 	sw	ra,20(sp)
  e0:	afa50024 	sw	a1,36(sp)
  e4:	afa60028 	sw	a2,40(sp)
  e8:	3c040000 	lui	a0,0x0
  ec:	2484008c 	addiu	a0,a0,140
  f0:	24060001 	li	a2,1
  f4:	0c000000 	jal	0 <func_800A9D40>
  f8:	27a5001c 	addiu	a1,sp,28
  fc:	8fa40020 	lw	a0,32(sp)
 100:	8fa50024 	lw	a1,36(sp)
 104:	3c020000 	lui	v0,0x0
 108:	24420000 	addiu	v0,v0,0
 10c:	ac44007c 	sw	a0,124(v0)
 110:	0c000000 	jal	0 <func_800A9D40>
 114:	ac450084 	sw	a1,132(v0)
 118:	3c040000 	lui	a0,0x0
 11c:	3c050000 	lui	a1,0x0
 120:	24a50074 	addiu	a1,a1,116
 124:	24840000 	addiu	a0,a0,0
 128:	0c000000 	jal	0 <func_800A9D40>
 12c:	8fa60028 	lw	a2,40(sp)
 130:	3c040000 	lui	a0,0x0
 134:	2484008c 	addiu	a0,a0,140
 138:	27a5001c 	addiu	a1,sp,28
 13c:	0c000000 	jal	0 <func_800A9D40>
 140:	24060001 	li	a2,1
 144:	8fa40020 	lw	a0,32(sp)
 148:	0c000000 	jal	0 <func_800A9D40>
 14c:	8fa50024 	lw	a1,36(sp)
 150:	8fbf0014 	lw	ra,20(sp)
 154:	27bd0020 	addiu	sp,sp,32
 158:	03e00008 	jr	ra
 15c:	00000000 	nop

00000160 <Sram_ReadWrite>:
 160:	27bdffd8 	addiu	sp,sp,-40
 164:	afa70034 	sw	a3,52(sp)
 168:	8fae0034 	lw	t6,52(sp)
 16c:	afa40028 	sw	a0,40(sp)
 170:	afbf0024 	sw	ra,36(sp)
 174:	afa5002c 	sw	a1,44(sp)
 178:	afa60030 	sw	a2,48(sp)
 17c:	3c040000 	lui	a0,0x0
 180:	24840000 	addiu	a0,a0,0
 184:	8fa70030 	lw	a3,48(sp)
 188:	8fa6002c 	lw	a2,44(sp)
 18c:	8fa50028 	lw	a1,40(sp)
 190:	0c000000 	jal	0 <func_800A9D40>
 194:	afae0010 	sw	t6,16(sp)
 198:	240f000d 	li	t7,13
 19c:	24180002 	li	t8,2
 1a0:	2419000c 	li	t9,12
 1a4:	afb90018 	sw	t9,24(sp)
 1a8:	afb80014 	sw	t8,20(sp)
 1ac:	afaf0010 	sw	t7,16(sp)
 1b0:	8fa40028 	lw	a0,40(sp)
 1b4:	24050003 	li	a1,3
 1b8:	24060001 	li	a2,1
 1bc:	24070005 	li	a3,5
 1c0:	0c000000 	jal	0 <func_800A9D40>
 1c4:	afa0001c 	sw	zero,28(sp)
 1c8:	8fa4002c 	lw	a0,44(sp)
 1cc:	8fa50030 	lw	a1,48(sp)
 1d0:	0c000000 	jal	0 <func_800A9D40>
 1d4:	8fa60034 	lw	a2,52(sp)
 1d8:	8fbf0024 	lw	ra,36(sp)
 1dc:	27bd0028 	addiu	sp,sp,40
 1e0:	03e00008 	jr	ra
 1e4:	00000000 	nop
	...
