
build/src/code/code_800ACE70.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <func_800ACE70>:
   0:	240200ff 	li	v0,255
   4:	ac800000 	sw	zero,0(a0)
   8:	ac800004 	sw	zero,4(a0)
   c:	a0820008 	sb	v0,8(a0)
  10:	a0820009 	sb	v0,9(a0)
  14:	a082000a 	sb	v0,10(a0)
  18:	03e00008 	jr	ra
  1c:	a082000b 	sb	v0,11(a0)

00000020 <func_800ACE90>:
  20:	03e00008 	jr	ra
  24:	afa40000 	sw	a0,0(sp)

00000028 <func_800ACE98>:
  28:	8ca20000 	lw	v0,0(a1)
  2c:	00803025 	move	a2,a0
  30:	3c03e700 	lui	v1,0xe700
  34:	00402025 	move	a0,v0
  38:	ac830000 	sw	v1,0(a0)
  3c:	ac800004 	sw	zero,4(a0)
  40:	24420008 	addiu	v0,v0,8
  44:	00402025 	move	a0,v0
  48:	3c0eee00 	lui	t6,0xee00
  4c:	240fffff 	li	t7,-1
  50:	ac8f0004 	sw	t7,4(a0)
  54:	ac8e0000 	sw	t6,0(a0)
  58:	8cd80004 	lw	t8,4(a2)
  5c:	24420008 	addiu	v0,v0,8
  60:	24070001 	li	a3,1
  64:	14f80007 	bne	a3,t8,84 <func_800ACE98+0x5c>
  68:	00402025 	move	a0,v0
  6c:	3c080050 	lui	t0,0x50
  70:	350803c0 	ori	t0,t0,0x3c0
  74:	3c19ed00 	lui	t9,0xed00
  78:	ac990000 	sw	t9,0(a0)
  7c:	ac880004 	sw	t0,4(a0)
  80:	24420008 	addiu	v0,v0,8
  84:	8cc40000 	lw	a0,0(a2)
  88:	3c0a0000 	lui	t2,0x0
  8c:	254a0000 	addiu	t2,t2,0
  90:	1087000c 	beq	a0,a3,c4 <func_800ACE98+0x9c>
  94:	3c09de00 	lui	t1,0xde00
  98:	24010002 	li	at,2
  9c:	1081000e 	beq	a0,at,d8 <func_800ACE98+0xb0>
  a0:	3c0bfa00 	lui	t3,0xfa00
  a4:	24010003 	li	at,3
  a8:	10810018 	beq	a0,at,10c <func_800ACE98+0xe4>
  ac:	3c0ff900 	lui	t7,0xf900
  b0:	24010004 	li	at,4
  b4:	10810022 	beq	a0,at,140 <func_800ACE98+0x118>
  b8:	3c09f800 	lui	t1,0xf800
  bc:	1000002d 	b	174 <func_800ACE98+0x14c>
  c0:	00402025 	move	a0,v0
  c4:	00402025 	move	a0,v0
  c8:	ac890000 	sw	t1,0(a0)
  cc:	ac8a0004 	sw	t2,4(a0)
  d0:	10000027 	b	170 <func_800ACE98+0x148>
  d4:	24420008 	addiu	v0,v0,8
  d8:	00402025 	move	a0,v0
  dc:	ac8b0000 	sw	t3,0(a0)
  e0:	8ccc0008 	lw	t4,8(a2)
  e4:	24420008 	addiu	v0,v0,8
  e8:	3c0e0000 	lui	t6,0x0
  ec:	ac8c0004 	sw	t4,4(a0)
  f0:	00402025 	move	a0,v0
  f4:	25ce0000 	addiu	t6,t6,0
  f8:	3c0dde00 	lui	t5,0xde00
  fc:	ac8d0000 	sw	t5,0(a0)
 100:	ac8e0004 	sw	t6,4(a0)
 104:	1000001a 	b	170 <func_800ACE98+0x148>
 108:	24420008 	addiu	v0,v0,8
 10c:	00402025 	move	a0,v0
 110:	ac8f0000 	sw	t7,0(a0)
 114:	8cd80008 	lw	t8,8(a2)
 118:	24420008 	addiu	v0,v0,8
 11c:	3c080000 	lui	t0,0x0
 120:	ac980004 	sw	t8,4(a0)
 124:	00402025 	move	a0,v0
 128:	25080000 	addiu	t0,t0,0
 12c:	3c19de00 	lui	t9,0xde00
 130:	ac990000 	sw	t9,0(a0)
 134:	ac880004 	sw	t0,4(a0)
 138:	1000000d 	b	170 <func_800ACE98+0x148>
 13c:	24420008 	addiu	v0,v0,8
 140:	00402025 	move	a0,v0
 144:	ac890000 	sw	t1,0(a0)
 148:	8cca0008 	lw	t2,8(a2)
 14c:	24420008 	addiu	v0,v0,8
 150:	3c0c0000 	lui	t4,0x0
 154:	ac8a0004 	sw	t2,4(a0)
 158:	00402025 	move	a0,v0
 15c:	258c0000 	addiu	t4,t4,0
 160:	3c0bde00 	lui	t3,0xde00
 164:	ac8b0000 	sw	t3,0(a0)
 168:	ac8c0004 	sw	t4,4(a0)
 16c:	24420008 	addiu	v0,v0,8
 170:	00402025 	move	a0,v0
 174:	ac830000 	sw	v1,0(a0)
 178:	ac800004 	sw	zero,4(a0)
 17c:	24420008 	addiu	v0,v0,8
 180:	03e00008 	jr	ra
 184:	aca20000 	sw	v0,0(a1)
	...
