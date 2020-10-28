
build/src/overlays/actors/ovl_Bg_Spot01_Idosoko/z_bg_spot01_idosoko.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <BgSpot01Idosoko_SetupAction>:
   0:	03e00008 	jr	ra
   4:	ac850164 	sw	a1,356(a0)

00000008 <BgSpot01Idosoko_Init>:
   8:	27bdffd0 	addiu	sp,sp,-48
   c:	afbf001c 	sw	ra,28(sp)
  10:	afb00018 	sw	s0,24(sp)
  14:	afa50034 	sw	a1,52(sp)
  18:	00808025 	move	s0,a0
  1c:	afa00024 	sw	zero,36(sp)
  20:	0c000000 	jal	0 <BgSpot01Idosoko_SetupAction>
  24:	24050001 	li	a1,1
  28:	3c050000 	lui	a1,0x0
  2c:	24a50020 	addiu	a1,a1,32
  30:	0c000000 	jal	0 <BgSpot01Idosoko_SetupAction>
  34:	02002025 	move	a0,s0
  38:	3c040000 	lui	a0,0x0
  3c:	24840000 	addiu	a0,a0,0
  40:	0c000000 	jal	0 <BgSpot01Idosoko_SetupAction>
  44:	27a50024 	addiu	a1,sp,36
  48:	8fa40034 	lw	a0,52(sp)
  4c:	02003025 	move	a2,s0
  50:	8fa70024 	lw	a3,36(sp)
  54:	0c000000 	jal	0 <BgSpot01Idosoko_SetupAction>
  58:	24850810 	addiu	a1,a0,2064
  5c:	ae02014c 	sw	v0,332(s0)
  60:	3c0e0000 	lui	t6,0x0
  64:	8dce0004 	lw	t6,4(t6)
  68:	02002025 	move	a0,s0
  6c:	3c050000 	lui	a1,0x0
  70:	11c00005 	beqz	t6,88 <BgSpot01Idosoko_Init+0x80>
  74:	00000000 	nop
  78:	0c000000 	jal	0 <BgSpot01Idosoko_SetupAction>
  7c:	02002025 	move	a0,s0
  80:	10000004 	b	94 <BgSpot01Idosoko_Init+0x8c>
  84:	8fbf001c 	lw	ra,28(sp)
  88:	0c000000 	jal	0 <BgSpot01Idosoko_SetupAction>
  8c:	24a50000 	addiu	a1,a1,0
  90:	8fbf001c 	lw	ra,28(sp)
  94:	8fb00018 	lw	s0,24(sp)
  98:	27bd0030 	addiu	sp,sp,48
  9c:	03e00008 	jr	ra
  a0:	00000000 	nop

000000a4 <BgSpot01Idosoko_Destroy>:
  a4:	27bdffe8 	addiu	sp,sp,-24
  a8:	afa40018 	sw	a0,24(sp)
  ac:	8fae0018 	lw	t6,24(sp)
  b0:	afbf0014 	sw	ra,20(sp)
  b4:	00a02025 	move	a0,a1
  b8:	24a50810 	addiu	a1,a1,2064
  bc:	0c000000 	jal	0 <BgSpot01Idosoko_SetupAction>
  c0:	8dc6014c 	lw	a2,332(t6)
  c4:	8fbf0014 	lw	ra,20(sp)
  c8:	27bd0018 	addiu	sp,sp,24
  cc:	03e00008 	jr	ra
  d0:	00000000 	nop

000000d4 <func_808ABF54>:
  d4:	afa40000 	sw	a0,0(sp)
  d8:	03e00008 	jr	ra
  dc:	afa50004 	sw	a1,4(sp)

000000e0 <BgSpot01Idosoko_Update>:
  e0:	27bdffe8 	addiu	sp,sp,-24
  e4:	afbf0014 	sw	ra,20(sp)
  e8:	8c990164 	lw	t9,356(a0)
  ec:	0320f809 	jalr	t9
  f0:	00000000 	nop
  f4:	8fbf0014 	lw	ra,20(sp)
  f8:	27bd0018 	addiu	sp,sp,24
  fc:	03e00008 	jr	ra
 100:	00000000 	nop

00000104 <BgSpot01Idosoko_Draw>:
 104:	27bdffc0 	addiu	sp,sp,-64
 108:	afbf001c 	sw	ra,28(sp)
 10c:	afb00018 	sw	s0,24(sp)
 110:	afa40040 	sw	a0,64(sp)
 114:	afa50044 	sw	a1,68(sp)
 118:	8ca50000 	lw	a1,0(a1)
 11c:	3c060000 	lui	a2,0x0
 120:	24c60000 	addiu	a2,a2,0
 124:	27a4002c 	addiu	a0,sp,44
 128:	240700a2 	li	a3,162
 12c:	0c000000 	jal	0 <BgSpot01Idosoko_SetupAction>
 130:	00a08025 	move	s0,a1
 134:	8faf0044 	lw	t7,68(sp)
 138:	0c000000 	jal	0 <BgSpot01Idosoko_SetupAction>
 13c:	8de40000 	lw	a0,0(t7)
 140:	8e0202c0 	lw	v0,704(s0)
 144:	3c19da38 	lui	t9,0xda38
 148:	37390003 	ori	t9,t9,0x3
 14c:	24580008 	addiu	t8,v0,8
 150:	ae1802c0 	sw	t8,704(s0)
 154:	ac590000 	sw	t9,0(v0)
 158:	8fa80044 	lw	t0,68(sp)
 15c:	3c050000 	lui	a1,0x0
 160:	24a5001c 	addiu	a1,a1,28
 164:	8d040000 	lw	a0,0(t0)
 168:	240600a6 	li	a2,166
 16c:	0c000000 	jal	0 <BgSpot01Idosoko_SetupAction>
 170:	afa20028 	sw	v0,40(sp)
 174:	8fa30028 	lw	v1,40(sp)
 178:	3c0b0000 	lui	t3,0x0
 17c:	256b0000 	addiu	t3,t3,0
 180:	ac620004 	sw	v0,4(v1)
 184:	8e0202c0 	lw	v0,704(s0)
 188:	3c0ade00 	lui	t2,0xde00
 18c:	3c060000 	lui	a2,0x0
 190:	24490008 	addiu	t1,v0,8
 194:	ae0902c0 	sw	t1,704(s0)
 198:	ac4b0004 	sw	t3,4(v0)
 19c:	ac4a0000 	sw	t2,0(v0)
 1a0:	8fac0044 	lw	t4,68(sp)
 1a4:	24c60038 	addiu	a2,a2,56
 1a8:	27a4002c 	addiu	a0,sp,44
 1ac:	240700ab 	li	a3,171
 1b0:	0c000000 	jal	0 <BgSpot01Idosoko_SetupAction>
 1b4:	8d850000 	lw	a1,0(t4)
 1b8:	8fbf001c 	lw	ra,28(sp)
 1bc:	8fb00018 	lw	s0,24(sp)
 1c0:	27bd0040 	addiu	sp,sp,64
 1c4:	03e00008 	jr	ra
 1c8:	00000000 	nop
 1cc:	00000000 	nop
