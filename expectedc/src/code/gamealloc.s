
build/src/code/gamealloc.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <GameAlloc_Log>:
   0:	27bdffd8 	addiu	sp,sp,-40
   4:	afb1001c 	sw	s1,28(sp)
   8:	00808825 	move	s1,a0
   c:	afbf0024 	sw	ra,36(sp)
  10:	3c040000 	lui	a0,0x0
  14:	afb20020 	sw	s2,32(sp)
  18:	afb00018 	sw	s0,24(sp)
  1c:	24840000 	addiu	a0,a0,0
  20:	0c000000 	jal	0 <GameAlloc_Log>
  24:	02202825 	move	a1,s1
  28:	8e300000 	lw	s0,0(s1)
  2c:	3c120000 	lui	s2,0x0
  30:	26520010 	addiu	s2,s2,16
  34:	12300007 	beq	s1,s0,54 <GameAlloc_Log+0x54>
  38:	02402025 	move	a0,s2
  3c:	02002825 	move	a1,s0
  40:	0c000000 	jal	0 <GameAlloc_Log>
  44:	8e060008 	lw	a2,8(s0)
  48:	8e100000 	lw	s0,0(s0)
  4c:	5630fffb 	bnel	s1,s0,3c <GameAlloc_Log+0x3c>
  50:	02402025 	move	a0,s2
  54:	8fbf0024 	lw	ra,36(sp)
  58:	8fb00018 	lw	s0,24(sp)
  5c:	8fb1001c 	lw	s1,28(sp)
  60:	8fb20020 	lw	s2,32(sp)
  64:	03e00008 	jr	ra
  68:	27bd0028 	addiu	sp,sp,40

0000006c <GameAlloc_MallocDebug>:
  6c:	27bdffe0 	addiu	sp,sp,-32
  70:	afb00018 	sw	s0,24(sp)
  74:	00808025 	move	s0,a0
  78:	afa50024 	sw	a1,36(sp)
  7c:	24a40010 	addiu	a0,a1,16
  80:	afbf001c 	sw	ra,28(sp)
  84:	afa60028 	sw	a2,40(sp)
  88:	00c02825 	move	a1,a2
  8c:	0c000000 	jal	0 <GameAlloc_Log>
  90:	00e03025 	move	a2,a3
  94:	1040000c 	beqz	v0,c8 <GameAlloc_MallocDebug+0x5c>
  98:	8fae0024 	lw	t6,36(sp)
  9c:	ac4e0008 	sw	t6,8(v0)
  a0:	8e0f0010 	lw	t7,16(s0)
  a4:	ac4f0004 	sw	t7,4(v0)
  a8:	8e180010 	lw	t8,16(s0)
  ac:	af020000 	sw	v0,0(t8)
  b0:	ae020010 	sw	v0,16(s0)
  b4:	ac500000 	sw	s0,0(v0)
  b8:	8e190010 	lw	t9,16(s0)
  bc:	24420010 	addiu	v0,v0,16
  c0:	10000002 	b	cc <GameAlloc_MallocDebug+0x60>
  c4:	ae190004 	sw	t9,4(s0)
  c8:	00001025 	move	v0,zero
  cc:	8fbf001c 	lw	ra,28(sp)
  d0:	8fb00018 	lw	s0,24(sp)
  d4:	27bd0020 	addiu	sp,sp,32
  d8:	03e00008 	jr	ra
  dc:	00000000 	nop

000000e0 <GameAlloc_Malloc>:
  e0:	27bdffe8 	addiu	sp,sp,-24
  e4:	00803825 	move	a3,a0
  e8:	afa5001c 	sw	a1,28(sp)
  ec:	24a40010 	addiu	a0,a1,16
  f0:	afbf0014 	sw	ra,20(sp)
  f4:	3c050000 	lui	a1,0x0
  f8:	24a50028 	addiu	a1,a1,40
  fc:	afa70018 	sw	a3,24(sp)
 100:	0c000000 	jal	0 <GameAlloc_Log>
 104:	2406005d 	li	a2,93
 108:	1040000d 	beqz	v0,140 <GameAlloc_Malloc+0x60>
 10c:	8fa70018 	lw	a3,24(sp)
 110:	8fae001c 	lw	t6,28(sp)
 114:	ac4e0008 	sw	t6,8(v0)
 118:	8cef0010 	lw	t7,16(a3)
 11c:	ac4f0004 	sw	t7,4(v0)
 120:	8cf80010 	lw	t8,16(a3)
 124:	af020000 	sw	v0,0(t8)
 128:	ace20010 	sw	v0,16(a3)
 12c:	ac470000 	sw	a3,0(v0)
 130:	8cf90010 	lw	t9,16(a3)
 134:	24420010 	addiu	v0,v0,16
 138:	10000002 	b	144 <GameAlloc_Malloc+0x64>
 13c:	acf90004 	sw	t9,4(a3)
 140:	00001025 	move	v0,zero
 144:	8fbf0014 	lw	ra,20(sp)
 148:	27bd0018 	addiu	sp,sp,24
 14c:	03e00008 	jr	ra
 150:	00000000 	nop

00000154 <GameAlloc_Free>:
 154:	27bdffe0 	addiu	sp,sp,-32
 158:	afb00018 	sw	s0,24(sp)
 15c:	00a08025 	move	s0,a1
 160:	afbf001c 	sw	ra,28(sp)
 164:	10a00020 	beqz	a1,1e8 <GameAlloc_Free+0x94>
 168:	afa40020 	sw	a0,32(sp)
 16c:	3c040000 	lui	a0,0x0
 170:	8ca5fff4 	lw	a1,-12(a1)
 174:	3c060000 	lui	a2,0x0
 178:	24c60044 	addiu	a2,a2,68
 17c:	afb00024 	sw	s0,36(sp)
 180:	24840038 	addiu	a0,a0,56
 184:	0c000000 	jal	0 <GameAlloc_Log>
 188:	24070078 	li	a3,120
 18c:	8fb00024 	lw	s0,36(sp)
 190:	3c040000 	lui	a0,0x0
 194:	3c060000 	lui	a2,0x0
 198:	24c60060 	addiu	a2,a2,96
 19c:	24840054 	addiu	a0,a0,84
 1a0:	24070079 	li	a3,121
 1a4:	2610fff0 	addiu	s0,s0,-16
 1a8:	0c000000 	jal	0 <GameAlloc_Log>
 1ac:	8e050000 	lw	a1,0(s0)
 1b0:	8e0e0000 	lw	t6,0(s0)
 1b4:	8e0f0004 	lw	t7,4(s0)
 1b8:	8fa20020 	lw	v0,32(sp)
 1bc:	3c050000 	lui	a1,0x0
 1c0:	adee0000 	sw	t6,0(t7)
 1c4:	8e190000 	lw	t9,0(s0)
 1c8:	8e180004 	lw	t8,4(s0)
 1cc:	24a50070 	addiu	a1,a1,112
 1d0:	02002025 	move	a0,s0
 1d4:	af380004 	sw	t8,4(t9)
 1d8:	8c480004 	lw	t0,4(v0)
 1dc:	2406007d 	li	a2,125
 1e0:	0c000000 	jal	0 <GameAlloc_Log>
 1e4:	ac480010 	sw	t0,16(v0)
 1e8:	8fbf001c 	lw	ra,28(sp)
 1ec:	8fb00018 	lw	s0,24(sp)
 1f0:	27bd0020 	addiu	sp,sp,32
 1f4:	03e00008 	jr	ra
 1f8:	00000000 	nop

000001fc <GameAlloc_Cleanup>:
 1fc:	27bdffd8 	addiu	sp,sp,-40
 200:	afbf0024 	sw	ra,36(sp)
 204:	afb20020 	sw	s2,32(sp)
 208:	afb1001c 	sw	s1,28(sp)
 20c:	afb00018 	sw	s0,24(sp)
 210:	8c900000 	lw	s0,0(a0)
 214:	3c120000 	lui	s2,0x0
 218:	00808825 	move	s1,a0
 21c:	10900008 	beq	a0,s0,240 <GameAlloc_Cleanup+0x44>
 220:	26520080 	addiu	s2,s2,128
 224:	02002025 	move	a0,s0
 228:	8e100000 	lw	s0,0(s0)
 22c:	02402825 	move	a1,s2
 230:	0c000000 	jal	0 <GameAlloc_Log>
 234:	24060091 	li	a2,145
 238:	5630fffb 	bnel	s1,s0,228 <GameAlloc_Cleanup+0x2c>
 23c:	02002025 	move	a0,s0
 240:	ae310010 	sw	s1,16(s1)
 244:	ae310000 	sw	s1,0(s1)
 248:	ae310004 	sw	s1,4(s1)
 24c:	8fbf0024 	lw	ra,36(sp)
 250:	8fb20020 	lw	s2,32(sp)
 254:	8fb1001c 	lw	s1,28(sp)
 258:	8fb00018 	lw	s0,24(sp)
 25c:	03e00008 	jr	ra
 260:	27bd0028 	addiu	sp,sp,40

00000264 <GameAlloc_Init>:
 264:	ac840010 	sw	a0,16(a0)
 268:	ac840000 	sw	a0,0(a0)
 26c:	03e00008 	jr	ra
 270:	ac840004 	sw	a0,4(a0)
	...
