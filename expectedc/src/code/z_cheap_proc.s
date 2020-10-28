
build/src/code/z_cheap_proc.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <Gfx_DrawDListOpa>:
   0:	27bdffc0 	addiu	sp,sp,-64
   4:	afbf001c 	sw	ra,28(sp)
   8:	afb00018 	sw	s0,24(sp)
   c:	afa40040 	sw	a0,64(sp)
  10:	afa50044 	sw	a1,68(sp)
  14:	8c850000 	lw	a1,0(a0)
  18:	3c060000 	lui	a2,0x0
  1c:	24c60000 	addiu	a2,a2,0
  20:	27a4002c 	addiu	a0,sp,44
  24:	240700d6 	li	a3,214
  28:	0c000000 	jal	0 <Gfx_DrawDListOpa>
  2c:	00a08025 	move	s0,a1
  30:	8faf0040 	lw	t7,64(sp)
  34:	0c000000 	jal	0 <Gfx_DrawDListOpa>
  38:	8de40000 	lw	a0,0(t7)
  3c:	8e0202c0 	lw	v0,704(s0)
  40:	3c19da38 	lui	t9,0xda38
  44:	37390003 	ori	t9,t9,0x3
  48:	24580008 	addiu	t8,v0,8
  4c:	ae1802c0 	sw	t8,704(s0)
  50:	ac590000 	sw	t9,0(v0)
  54:	8fa80040 	lw	t0,64(sp)
  58:	3c050000 	lui	a1,0x0
  5c:	24a50014 	addiu	a1,a1,20
  60:	8d040000 	lw	a0,0(t0)
  64:	240600d8 	li	a2,216
  68:	0c000000 	jal	0 <Gfx_DrawDListOpa>
  6c:	afa20028 	sw	v0,40(sp)
  70:	8fa30028 	lw	v1,40(sp)
  74:	3c0ade00 	lui	t2,0xde00
  78:	3c060000 	lui	a2,0x0
  7c:	ac620004 	sw	v0,4(v1)
  80:	8e0202c0 	lw	v0,704(s0)
  84:	24c60028 	addiu	a2,a2,40
  88:	27a4002c 	addiu	a0,sp,44
  8c:	24490008 	addiu	t1,v0,8
  90:	ae0902c0 	sw	t1,704(s0)
  94:	ac4a0000 	sw	t2,0(v0)
  98:	8fab0044 	lw	t3,68(sp)
  9c:	240700db 	li	a3,219
  a0:	ac4b0004 	sw	t3,4(v0)
  a4:	8fac0040 	lw	t4,64(sp)
  a8:	0c000000 	jal	0 <Gfx_DrawDListOpa>
  ac:	8d850000 	lw	a1,0(t4)
  b0:	8fbf001c 	lw	ra,28(sp)
  b4:	8fb00018 	lw	s0,24(sp)
  b8:	27bd0040 	addiu	sp,sp,64
  bc:	03e00008 	jr	ra
  c0:	00000000 	nop

000000c4 <Gfx_DrawDListXlu>:
  c4:	27bdffc0 	addiu	sp,sp,-64
  c8:	afbf001c 	sw	ra,28(sp)
  cc:	afb00018 	sw	s0,24(sp)
  d0:	afa40040 	sw	a0,64(sp)
  d4:	afa50044 	sw	a1,68(sp)
  d8:	8c850000 	lw	a1,0(a0)
  dc:	3c060000 	lui	a2,0x0
  e0:	24c6003c 	addiu	a2,a2,60
  e4:	27a4002c 	addiu	a0,sp,44
  e8:	240700e4 	li	a3,228
  ec:	0c000000 	jal	0 <Gfx_DrawDListOpa>
  f0:	00a08025 	move	s0,a1
  f4:	8faf0040 	lw	t7,64(sp)
  f8:	0c000000 	jal	0 <Gfx_DrawDListOpa>
  fc:	8de40000 	lw	a0,0(t7)
 100:	8e0202d0 	lw	v0,720(s0)
 104:	3c19da38 	lui	t9,0xda38
 108:	37390003 	ori	t9,t9,0x3
 10c:	24580008 	addiu	t8,v0,8
 110:	ae1802d0 	sw	t8,720(s0)
 114:	ac590000 	sw	t9,0(v0)
 118:	8fa80040 	lw	t0,64(sp)
 11c:	3c050000 	lui	a1,0x0
 120:	24a50050 	addiu	a1,a1,80
 124:	8d040000 	lw	a0,0(t0)
 128:	240600e6 	li	a2,230
 12c:	0c000000 	jal	0 <Gfx_DrawDListOpa>
 130:	afa20028 	sw	v0,40(sp)
 134:	8fa30028 	lw	v1,40(sp)
 138:	3c0ade00 	lui	t2,0xde00
 13c:	3c060000 	lui	a2,0x0
 140:	ac620004 	sw	v0,4(v1)
 144:	8e0202d0 	lw	v0,720(s0)
 148:	24c60064 	addiu	a2,a2,100
 14c:	27a4002c 	addiu	a0,sp,44
 150:	24490008 	addiu	t1,v0,8
 154:	ae0902d0 	sw	t1,720(s0)
 158:	ac4a0000 	sw	t2,0(v0)
 15c:	8fab0044 	lw	t3,68(sp)
 160:	240700e9 	li	a3,233
 164:	ac4b0004 	sw	t3,4(v0)
 168:	8fac0040 	lw	t4,64(sp)
 16c:	0c000000 	jal	0 <Gfx_DrawDListOpa>
 170:	8d850000 	lw	a1,0(t4)
 174:	8fbf001c 	lw	ra,28(sp)
 178:	8fb00018 	lw	s0,24(sp)
 17c:	27bd0040 	addiu	sp,sp,64
 180:	03e00008 	jr	ra
 184:	00000000 	nop
	...
