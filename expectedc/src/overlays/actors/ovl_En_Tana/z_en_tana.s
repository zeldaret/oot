
build/src/overlays/actors/ovl_En_Tana/z_en_tana.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <EnTana_Init>:
   0:	27bdffe8 	addiu	sp,sp,-24
   4:	afbf0014 	sw	ra,20(sp)
   8:	afa5001c 	sw	a1,28(sp)
   c:	00803025 	move	a2,a0
  10:	84ce001c 	lh	t6,28(a2)
  14:	3c050000 	lui	a1,0x0
  18:	3c040000 	lui	a0,0x0
  1c:	000e7880 	sll	t7,t6,0x2
  20:	00af2821 	addu	a1,a1,t7
  24:	8ca50020 	lw	a1,32(a1)
  28:	24840010 	addiu	a0,a0,16
  2c:	0c000000 	jal	0 <EnTana_Init>
  30:	afa60018 	sw	a2,24(sp)
  34:	8fa40018 	lw	a0,24(sp)
  38:	0c000000 	jal	0 <EnTana_Init>
  3c:	3c053f80 	lui	a1,0x3f80
  40:	8fa60018 	lw	a2,24(sp)
  44:	2401fffe 	li	at,-2
  48:	3c0a0000 	lui	t2,0x0
  4c:	8cd80004 	lw	t8,4(a2)
  50:	84c8001c 	lh	t0,28(a2)
  54:	0301c824 	and	t9,t8,at
  58:	00084880 	sll	t1,t0,0x2
  5c:	01495021 	addu	t2,t2,t1
  60:	acd90004 	sw	t9,4(a2)
  64:	8d4a0028 	lw	t2,40(t2)
  68:	acca0134 	sw	t2,308(a2)
  6c:	8fbf0014 	lw	ra,20(sp)
  70:	27bd0018 	addiu	sp,sp,24
  74:	03e00008 	jr	ra
  78:	00000000 	nop

0000007c <EnTana_Destroy>:
  7c:	afa40000 	sw	a0,0(sp)
  80:	03e00008 	jr	ra
  84:	afa50004 	sw	a1,4(sp)

00000088 <EnTana_Update>:
  88:	afa40000 	sw	a0,0(sp)
  8c:	03e00008 	jr	ra
  90:	afa50004 	sw	a1,4(sp)

00000094 <func_80B17FC4>:
  94:	27bdffb8 	addiu	sp,sp,-72
  98:	afbf001c 	sw	ra,28(sp)
  9c:	afb00018 	sw	s0,24(sp)
  a0:	afa40048 	sw	a0,72(sp)
  a4:	afa5004c 	sw	a1,76(sp)
  a8:	8ca50000 	lw	a1,0(a1)
  ac:	3c060000 	lui	a2,0x0
  b0:	24c60024 	addiu	a2,a2,36
  b4:	27a40030 	addiu	a0,sp,48
  b8:	24070094 	li	a3,148
  bc:	0c000000 	jal	0 <EnTana_Init>
  c0:	00a08025 	move	s0,a1
  c4:	8faf004c 	lw	t7,76(sp)
  c8:	0c000000 	jal	0 <EnTana_Init>
  cc:	8de40000 	lw	a0,0(t7)
  d0:	8e0202c0 	lw	v0,704(s0)
  d4:	3c19da38 	lui	t9,0xda38
  d8:	37390003 	ori	t9,t9,0x3
  dc:	24580008 	addiu	t8,v0,8
  e0:	ae1802c0 	sw	t8,704(s0)
  e4:	ac590000 	sw	t9,0(v0)
  e8:	8fa8004c 	lw	t0,76(sp)
  ec:	3c050000 	lui	a1,0x0
  f0:	24a50034 	addiu	a1,a1,52
  f4:	8d040000 	lw	a0,0(t0)
  f8:	24060098 	li	a2,152
  fc:	0c000000 	jal	0 <EnTana_Init>
 100:	afa2002c 	sw	v0,44(sp)
 104:	8fa3002c 	lw	v1,44(sp)
 108:	3c0ade00 	lui	t2,0xde00
 10c:	3c0e0000 	lui	t6,0x0
 110:	ac620004 	sw	v0,4(v1)
 114:	8e0202c0 	lw	v0,704(s0)
 118:	3c060000 	lui	a2,0x0
 11c:	24c60044 	addiu	a2,a2,68
 120:	24490008 	addiu	t1,v0,8
 124:	ae0902c0 	sw	t1,704(s0)
 128:	ac4a0000 	sw	t2,0(v0)
 12c:	8fab0048 	lw	t3,72(sp)
 130:	27a40030 	addiu	a0,sp,48
 134:	2407009d 	li	a3,157
 138:	856c001c 	lh	t4,28(t3)
 13c:	000c6880 	sll	t5,t4,0x2
 140:	01cd7021 	addu	t6,t6,t5
 144:	8dce0034 	lw	t6,52(t6)
 148:	ac4e0004 	sw	t6,4(v0)
 14c:	8faf004c 	lw	t7,76(sp)
 150:	0c000000 	jal	0 <EnTana_Init>
 154:	8de50000 	lw	a1,0(t7)
 158:	8fbf001c 	lw	ra,28(sp)
 15c:	8fb00018 	lw	s0,24(sp)
 160:	27bd0048 	addiu	sp,sp,72
 164:	03e00008 	jr	ra
 168:	00000000 	nop

0000016c <func_80B1809C>:
 16c:	27bdffb8 	addiu	sp,sp,-72
 170:	afbf001c 	sw	ra,28(sp)
 174:	afb00018 	sw	s0,24(sp)
 178:	afa40048 	sw	a0,72(sp)
 17c:	afa5004c 	sw	a1,76(sp)
 180:	8ca50000 	lw	a1,0(a1)
 184:	3c060000 	lui	a2,0x0
 188:	24c60054 	addiu	a2,a2,84
 18c:	27a40030 	addiu	a0,sp,48
 190:	240700a3 	li	a3,163
 194:	0c000000 	jal	0 <EnTana_Init>
 198:	00a08025 	move	s0,a1
 19c:	8faf004c 	lw	t7,76(sp)
 1a0:	0c000000 	jal	0 <EnTana_Init>
 1a4:	8de40000 	lw	a0,0(t7)
 1a8:	8e0202c0 	lw	v0,704(s0)
 1ac:	3c19db06 	lui	t9,0xdb06
 1b0:	37390020 	ori	t9,t9,0x20
 1b4:	24580008 	addiu	t8,v0,8
 1b8:	ae1802c0 	sw	t8,704(s0)
 1bc:	ac590000 	sw	t9,0(v0)
 1c0:	8fa80048 	lw	t0,72(sp)
 1c4:	3c040000 	lui	a0,0x0
 1c8:	3c0f0000 	lui	t7,0x0
 1cc:	8509001c 	lh	t1,28(t0)
 1d0:	3c0100ff 	lui	at,0xff
 1d4:	3421ffff 	ori	at,at,0xffff
 1d8:	00095080 	sll	t2,t1,0x2
 1dc:	008a2021 	addu	a0,a0,t2
 1e0:	8c840040 	lw	a0,64(a0)
 1e4:	3c09da38 	lui	t1,0xda38
 1e8:	35290003 	ori	t1,t1,0x3
 1ec:	00046100 	sll	t4,a0,0x4
 1f0:	000c6f02 	srl	t5,t4,0x1c
 1f4:	000d7080 	sll	t6,t5,0x2
 1f8:	01ee7821 	addu	t7,t7,t6
 1fc:	8def0000 	lw	t7,0(t7)
 200:	00815824 	and	t3,a0,at
 204:	3c018000 	lui	at,0x8000
 208:	016fc021 	addu	t8,t3,t7
 20c:	0301c821 	addu	t9,t8,at
 210:	ac590004 	sw	t9,4(v0)
 214:	8e0202c0 	lw	v0,704(s0)
 218:	3c050000 	lui	a1,0x0
 21c:	24a50064 	addiu	a1,a1,100
 220:	24480008 	addiu	t0,v0,8
 224:	ae0802c0 	sw	t0,704(s0)
 228:	ac490000 	sw	t1,0(v0)
 22c:	8faa004c 	lw	t2,76(sp)
 230:	240600a9 	li	a2,169
 234:	8d440000 	lw	a0,0(t2)
 238:	0c000000 	jal	0 <EnTana_Init>
 23c:	afa20028 	sw	v0,40(sp)
 240:	8fa30028 	lw	v1,40(sp)
 244:	3c0dde00 	lui	t5,0xde00
 248:	3c180000 	lui	t8,0x0
 24c:	ac620004 	sw	v0,4(v1)
 250:	8e0202c0 	lw	v0,704(s0)
 254:	3c060000 	lui	a2,0x0
 258:	24c60074 	addiu	a2,a2,116
 25c:	244c0008 	addiu	t4,v0,8
 260:	ae0c02c0 	sw	t4,704(s0)
 264:	ac4d0000 	sw	t5,0(v0)
 268:	8fae0048 	lw	t6,72(sp)
 26c:	27a40030 	addiu	a0,sp,48
 270:	240700ae 	li	a3,174
 274:	85cb001c 	lh	t3,28(t6)
 278:	000b7880 	sll	t7,t3,0x2
 27c:	030fc021 	addu	t8,t8,t7
 280:	8f180034 	lw	t8,52(t8)
 284:	ac580004 	sw	t8,4(v0)
 288:	8fb9004c 	lw	t9,76(sp)
 28c:	0c000000 	jal	0 <EnTana_Init>
 290:	8f250000 	lw	a1,0(t9)
 294:	8fbf001c 	lw	ra,28(sp)
 298:	8fb00018 	lw	s0,24(sp)
 29c:	27bd0048 	addiu	sp,sp,72
 2a0:	03e00008 	jr	ra
 2a4:	00000000 	nop
	...
