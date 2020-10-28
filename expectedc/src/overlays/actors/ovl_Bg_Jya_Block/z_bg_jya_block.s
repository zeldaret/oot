
build/src/overlays/actors/ovl_Bg_Jya_Block/z_bg_jya_block.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <BgJyaBlock_Init>:
   0:	27bdffd0 	addiu	sp,sp,-48
   4:	afbf001c 	sw	ra,28(sp)
   8:	afb00018 	sw	s0,24(sp)
   c:	afa50034 	sw	a1,52(sp)
  10:	00808025 	move	s0,a0
  14:	afa00024 	sw	zero,36(sp)
  18:	0c000000 	jal	0 <BgJyaBlock_Init>
  1c:	00002825 	move	a1,zero
  20:	3c040000 	lui	a0,0x0
  24:	24840000 	addiu	a0,a0,0
  28:	0c000000 	jal	0 <BgJyaBlock_Init>
  2c:	27a50024 	addiu	a1,sp,36
  30:	8fa40034 	lw	a0,52(sp)
  34:	02003025 	move	a2,s0
  38:	8fa70024 	lw	a3,36(sp)
  3c:	0c000000 	jal	0 <BgJyaBlock_Init>
  40:	24850810 	addiu	a1,a0,2064
  44:	3c050000 	lui	a1,0x0
  48:	ae02014c 	sw	v0,332(s0)
  4c:	24a50020 	addiu	a1,a1,32
  50:	0c000000 	jal	0 <BgJyaBlock_Init>
  54:	02002025 	move	a0,s0
  58:	3c0e0000 	lui	t6,0x0
  5c:	8dce0004 	lw	t6,4(t6)
  60:	24010005 	li	at,5
  64:	24020011 	li	v0,17
  68:	11c00003 	beqz	t6,78 <BgJyaBlock_Init+0x78>
  6c:	00000000 	nop
  70:	10000001 	b	78 <BgJyaBlock_Init+0x78>
  74:	24020005 	li	v0,5
  78:	14410007 	bne	v0,at,98 <BgJyaBlock_Init+0x98>
  7c:	00000000 	nop
  80:	8605001c 	lh	a1,28(s0)
  84:	8fa40034 	lw	a0,52(sp)
  88:	0c000000 	jal	0 <BgJyaBlock_Init>
  8c:	30a5003f 	andi	a1,a1,0x3f
  90:	54400004 	bnezl	v0,a4 <BgJyaBlock_Init+0xa4>
  94:	8fbf001c 	lw	ra,28(sp)
  98:	0c000000 	jal	0 <BgJyaBlock_Init>
  9c:	02002025 	move	a0,s0
  a0:	8fbf001c 	lw	ra,28(sp)
  a4:	8fb00018 	lw	s0,24(sp)
  a8:	27bd0030 	addiu	sp,sp,48
  ac:	03e00008 	jr	ra
  b0:	00000000 	nop

000000b4 <BgJyaBlock_Destroy>:
  b4:	27bdffe8 	addiu	sp,sp,-24
  b8:	afa40018 	sw	a0,24(sp)
  bc:	8fae0018 	lw	t6,24(sp)
  c0:	afbf0014 	sw	ra,20(sp)
  c4:	00a02025 	move	a0,a1
  c8:	24a50810 	addiu	a1,a1,2064
  cc:	0c000000 	jal	0 <BgJyaBlock_Init>
  d0:	8dc6014c 	lw	a2,332(t6)
  d4:	8fbf0014 	lw	ra,20(sp)
  d8:	27bd0018 	addiu	sp,sp,24
  dc:	03e00008 	jr	ra
  e0:	00000000 	nop

000000e4 <BgJyaBlock_Update>:
  e4:	8ca21c44 	lw	v0,7236(a1)
  e8:	2401ffef 	li	at,-17
  ec:	44802000 	mtc1	zero,$f4
  f0:	8c4e0680 	lw	t6,1664(v0)
  f4:	01c17824 	and	t7,t6,at
  f8:	ac4f0680 	sw	t7,1664(v0)
  fc:	03e00008 	jr	ra
 100:	e4840150 	swc1	$f4,336(a0)

00000104 <BgJyaBlock_Draw>:
 104:	27bdffb8 	addiu	sp,sp,-72
 108:	afbf001c 	sw	ra,28(sp)
 10c:	afb00018 	sw	s0,24(sp)
 110:	afa40048 	sw	a0,72(sp)
 114:	afa5004c 	sw	a1,76(sp)
 118:	8ca50000 	lw	a1,0(a1)
 11c:	3c060000 	lui	a2,0x0
 120:	24c60000 	addiu	a2,a2,0
 124:	27a40034 	addiu	a0,sp,52
 128:	24070091 	li	a3,145
 12c:	0c000000 	jal	0 <BgJyaBlock_Init>
 130:	00a08025 	move	s0,a1
 134:	8faf004c 	lw	t7,76(sp)
 138:	0c000000 	jal	0 <BgJyaBlock_Init>
 13c:	8de40000 	lw	a0,0(t7)
 140:	8e0202c0 	lw	v0,704(s0)
 144:	3c040000 	lui	a0,0x0
 148:	24840000 	addiu	a0,a0,0
 14c:	00044100 	sll	t0,a0,0x4
 150:	00084f02 	srl	t1,t0,0x1c
 154:	3c19db06 	lui	t9,0xdb06
 158:	24580008 	addiu	t8,v0,8
 15c:	ae1802c0 	sw	t8,704(s0)
 160:	37390020 	ori	t9,t9,0x20
 164:	00095080 	sll	t2,t1,0x2
 168:	3c0b0000 	lui	t3,0x0
 16c:	016a5821 	addu	t3,t3,t2
 170:	3c0100ff 	lui	at,0xff
 174:	ac590000 	sw	t9,0(v0)
 178:	8d6b0000 	lw	t3,0(t3)
 17c:	3421ffff 	ori	at,at,0xffff
 180:	00816024 	and	t4,a0,at
 184:	3c018000 	lui	at,0x8000
 188:	016c6821 	addu	t5,t3,t4
 18c:	01a17021 	addu	t6,t5,at
 190:	ac4e0004 	sw	t6,4(v0)
 194:	8e0202c0 	lw	v0,704(s0)
 198:	3c18da38 	lui	t8,0xda38
 19c:	37180003 	ori	t8,t8,0x3
 1a0:	244f0008 	addiu	t7,v0,8
 1a4:	ae0f02c0 	sw	t7,704(s0)
 1a8:	ac580000 	sw	t8,0(v0)
 1ac:	8fb9004c 	lw	t9,76(sp)
 1b0:	3c050000 	lui	a1,0x0
 1b4:	24a50014 	addiu	a1,a1,20
 1b8:	8f240000 	lw	a0,0(t9)
 1bc:	24060099 	li	a2,153
 1c0:	0c000000 	jal	0 <BgJyaBlock_Init>
 1c4:	afa2002c 	sw	v0,44(sp)
 1c8:	8fa3002c 	lw	v1,44(sp)
 1cc:	3c0ae8d2 	lui	t2,0xe8d2
 1d0:	354ab0ff 	ori	t2,t2,0xb0ff
 1d4:	ac620004 	sw	v0,4(v1)
 1d8:	8e0202c0 	lw	v0,704(s0)
 1dc:	3c09fb00 	lui	t1,0xfb00
 1e0:	3c0d0000 	lui	t5,0x0
 1e4:	24480008 	addiu	t0,v0,8
 1e8:	ae0802c0 	sw	t0,704(s0)
 1ec:	ac4a0004 	sw	t2,4(v0)
 1f0:	ac490000 	sw	t1,0(v0)
 1f4:	8e0202c0 	lw	v0,704(s0)
 1f8:	25ad0000 	addiu	t5,t5,0
 1fc:	3c0cde00 	lui	t4,0xde00
 200:	244b0008 	addiu	t3,v0,8
 204:	ae0b02c0 	sw	t3,704(s0)
 208:	ac4d0004 	sw	t5,4(v0)
 20c:	ac4c0000 	sw	t4,0(v0)
 210:	8fae004c 	lw	t6,76(sp)
 214:	3c060000 	lui	a2,0x0
 218:	24c60028 	addiu	a2,a2,40
 21c:	27a40034 	addiu	a0,sp,52
 220:	2407009e 	li	a3,158
 224:	0c000000 	jal	0 <BgJyaBlock_Init>
 228:	8dc50000 	lw	a1,0(t6)
 22c:	8fbf001c 	lw	ra,28(sp)
 230:	8fb00018 	lw	s0,24(sp)
 234:	27bd0048 	addiu	sp,sp,72
 238:	03e00008 	jr	ra
 23c:	00000000 	nop
