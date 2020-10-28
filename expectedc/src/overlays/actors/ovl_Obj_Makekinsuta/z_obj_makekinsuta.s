
build/src/overlays/actors/ovl_Obj_Makekinsuta/z_obj_makekinsuta.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <ObjMakekinsuta_Init>:
   0:	27bdffe8 	addiu	sp,sp,-24
   4:	afbf0014 	sw	ra,20(sp)
   8:	afa40018 	sw	a0,24(sp)
   c:	afa5001c 	sw	a1,28(sp)
  10:	848f001c 	lh	t7,28(a0)
  14:	24014000 	li	at,16384
  18:	3c040000 	lui	a0,0x0
  1c:	31f86000 	andi	t8,t7,0x6000
  20:	1701000e 	bne	t8,at,5c <ObjMakekinsuta_Init+0x5c>
  24:	00000000 	nop
  28:	3c040000 	lui	a0,0x0
  2c:	0c000000 	jal	0 <ObjMakekinsuta_Init>
  30:	24840000 	addiu	a0,a0,0
  34:	8fb90018 	lw	t9,24(sp)
  38:	3c040000 	lui	a0,0x0
  3c:	24840008 	addiu	a0,a0,8
  40:	0c000000 	jal	0 <ObjMakekinsuta_Init>
  44:	8725001c 	lh	a1,28(t9)
  48:	3c040000 	lui	a0,0x0
  4c:	0c000000 	jal	0 <ObjMakekinsuta_Init>
  50:	24840024 	addiu	a0,a0,36
  54:	1000000f 	b	94 <ObjMakekinsuta_Init+0x94>
  58:	8faa0018 	lw	t2,24(sp)
  5c:	0c000000 	jal	0 <ObjMakekinsuta_Init>
  60:	24840028 	addiu	a0,a0,40
  64:	8fa80018 	lw	t0,24(sp)
  68:	3c040000 	lui	a0,0x0
  6c:	3c060000 	lui	a2,0x0
  70:	24c60054 	addiu	a2,a2,84
  74:	24840034 	addiu	a0,a0,52
  78:	24070077 	li	a3,119
  7c:	0c000000 	jal	0 <ObjMakekinsuta_Init>
  80:	8505001c 	lh	a1,28(t0)
  84:	3c040000 	lui	a0,0x0
  88:	0c000000 	jal	0 <ObjMakekinsuta_Init>
  8c:	2484006c 	addiu	a0,a0,108
  90:	8faa0018 	lw	t2,24(sp)
  94:	3c090000 	lui	t1,0x0
  98:	25290000 	addiu	t1,t1,0
  9c:	ad49014c 	sw	t1,332(t2)
  a0:	8fbf0014 	lw	ra,20(sp)
  a4:	27bd0018 	addiu	sp,sp,24
  a8:	03e00008 	jr	ra
  ac:	00000000 	nop

000000b0 <func_80B98320>:
  b0:	27bdffc8 	addiu	sp,sp,-56
  b4:	afbf0034 	sw	ra,52(sp)
  b8:	afb00030 	sw	s0,48(sp)
  bc:	848e0152 	lh	t6,338(a0)
  c0:	00808025 	move	s0,a0
  c4:	51c00022 	beqzl	t6,150 <func_80B98320+0xa0>
  c8:	a6000150 	sh	zero,336(s0)
  cc:	848f0150 	lh	t7,336(a0)
  d0:	29e1003c 	slti	at,t7,60
  d4:	5420001a 	bnezl	at,140 <func_80B98320+0x90>
  d8:	860a0150 	lh	t2,336(s0)
  dc:	8ca41c44 	lw	a0,7236(a1)
  e0:	0c000000 	jal	0 <ObjMakekinsuta_Init>
  e4:	afa5003c 	sw	a1,60(sp)
  e8:	14400014 	bnez	v0,13c <func_80B98320+0x8c>
  ec:	8fa5003c 	lw	a1,60(sp)
  f0:	c6040028 	lwc1	$f4,40(s0)
  f4:	8e070024 	lw	a3,36(s0)
  f8:	24a41c24 	addiu	a0,a1,7204
  fc:	e7a40010 	swc1	$f4,16(sp)
 100:	c606002c 	lwc1	$f6,44(s0)
 104:	afa00018 	sw	zero,24(sp)
 108:	24060095 	li	a2,149
 10c:	e7a60014 	swc1	$f6,20(sp)
 110:	861800b6 	lh	t8,182(s0)
 114:	afa00020 	sw	zero,32(sp)
 118:	afb8001c 	sw	t8,28(sp)
 11c:	8619001c 	lh	t9,28(s0)
 120:	37288000 	ori	t0,t9,0x8000
 124:	0c000000 	jal	0 <ObjMakekinsuta_Init>
 128:	afa80024 	sw	t0,36(sp)
 12c:	3c090000 	lui	t1,0x0
 130:	25290000 	addiu	t1,t1,0
 134:	10000006 	b	150 <func_80B98320+0xa0>
 138:	ae09014c 	sw	t1,332(s0)
 13c:	860a0150 	lh	t2,336(s0)
 140:	254b0001 	addiu	t3,t2,1
 144:	10000002 	b	150 <func_80B98320+0xa0>
 148:	a60b0150 	sh	t3,336(s0)
 14c:	a6000150 	sh	zero,336(s0)
 150:	8fbf0034 	lw	ra,52(sp)
 154:	8fb00030 	lw	s0,48(sp)
 158:	27bd0038 	addiu	sp,sp,56
 15c:	03e00008 	jr	ra
 160:	00000000 	nop

00000164 <ObjMakekinsuta_DoNothing>:
 164:	afa40000 	sw	a0,0(sp)
 168:	03e00008 	jr	ra
 16c:	afa50004 	sw	a1,4(sp)

00000170 <ObjMakekinsuta_Update>:
 170:	27bdffe8 	addiu	sp,sp,-24
 174:	afbf0014 	sw	ra,20(sp)
 178:	8c99014c 	lw	t9,332(a0)
 17c:	0320f809 	jalr	t9
 180:	00000000 	nop
 184:	8fbf0014 	lw	ra,20(sp)
 188:	27bd0018 	addiu	sp,sp,24
 18c:	03e00008 	jr	ra
 190:	00000000 	nop
	...
