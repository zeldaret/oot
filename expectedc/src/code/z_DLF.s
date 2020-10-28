
build/src/code/z_DLF.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <Overlay_LoadGameState>:
   0:	27bdffd0 	addiu	sp,sp,-48
   4:	afbf002c 	sw	ra,44(sp)
   8:	afb00028 	sw	s0,40(sp)
   c:	8c8e0000 	lw	t6,0(a0)
  10:	00808025 	move	s0,a0
  14:	3c040000 	lui	a0,0x0
  18:	51c00006 	beqzl	t6,34 <Overlay_LoadGameState+0x34>
  1c:	8e06000c 	lw	a2,12(s0)
  20:	0c000000 	jal	0 <Overlay_LoadGameState>
  24:	24840000 	addiu	a0,a0,0
  28:	1000005b 	b	198 <Overlay_LoadGameState+0x198>
  2c:	8fbf002c 	lw	ra,44(sp)
  30:	8e06000c 	lw	a2,12(s0)
  34:	54c00004 	bnezl	a2,48 <Overlay_LoadGameState+0x48>
  38:	8e040004 	lw	a0,4(s0)
  3c:	10000055 	b	194 <Overlay_LoadGameState+0x194>
  40:	ae000028 	sw	zero,40(s0)
  44:	8e040004 	lw	a0,4(s0)
  48:	8e050008 	lw	a1,8(s0)
  4c:	0c000000 	jal	0 <Overlay_LoadGameState>
  50:	8e070010 	lw	a3,16(s0)
  54:	14400006 	bnez	v0,70 <Overlay_LoadGameState+0x70>
  58:	ae020000 	sw	v0,0(s0)
  5c:	3c040000 	lui	a0,0x0
  60:	0c000000 	jal	0 <Overlay_LoadGameState>
  64:	24840018 	addiu	a0,a0,24
  68:	1000004b 	b	198 <Overlay_LoadGameState+0x198>
  6c:	8fbf002c 	lw	ra,44(sp)
  70:	3c040000 	lui	a0,0x0
  74:	0c000000 	jal	0 <Overlay_LoadGameState>
  78:	24840030 	addiu	a0,a0,48
  7c:	8e05000c 	lw	a1,12(s0)
  80:	8e060010 	lw	a2,16(s0)
  84:	8e070000 	lw	a3,0(s0)
  88:	3c080000 	lui	t0,0x0
  8c:	25080068 	addiu	t0,t0,104
  90:	00e67821 	addu	t7,a3,a2
  94:	3c040000 	lui	a0,0x0
  98:	01e5c023 	subu	t8,t7,a1
  9c:	00a7c823 	subu	t9,a1,a3
  a0:	afb90014 	sw	t9,20(sp)
  a4:	afb80010 	sw	t8,16(sp)
  a8:	24840038 	addiu	a0,a0,56
  ac:	afa80018 	sw	t0,24(sp)
  b0:	00a01825 	move	v1,a1
  b4:	0c000000 	jal	0 <Overlay_LoadGameState>
  b8:	00e01025 	move	v0,a3
  bc:	3c040000 	lui	a0,0x0
  c0:	0c000000 	jal	0 <Overlay_LoadGameState>
  c4:	2484006c 	addiu	a0,a0,108
  c8:	8e020014 	lw	v0,20(s0)
  cc:	50400008 	beqzl	v0,f0 <Overlay_LoadGameState+0xf0>
  d0:	ae000014 	sw	zero,20(s0)
  d4:	8e09000c 	lw	t1,12(s0)
  d8:	8e0a0000 	lw	t2,0(s0)
  dc:	012a5823 	subu	t3,t1,t2
  e0:	004b6023 	subu	t4,v0,t3
  e4:	10000002 	b	f0 <Overlay_LoadGameState+0xf0>
  e8:	ae0c0014 	sw	t4,20(s0)
  ec:	ae000014 	sw	zero,20(s0)
  f0:	8e020018 	lw	v0,24(s0)
  f4:	50400008 	beqzl	v0,118 <Overlay_LoadGameState+0x118>
  f8:	ae000018 	sw	zero,24(s0)
  fc:	8e0d000c 	lw	t5,12(s0)
 100:	8e0e0000 	lw	t6,0(s0)
 104:	01ae7823 	subu	t7,t5,t6
 108:	004fc023 	subu	t8,v0,t7
 10c:	10000002 	b	118 <Overlay_LoadGameState+0x118>
 110:	ae180018 	sw	t8,24(s0)
 114:	ae000018 	sw	zero,24(s0)
 118:	8e02001c 	lw	v0,28(s0)
 11c:	50400008 	beqzl	v0,140 <Overlay_LoadGameState+0x140>
 120:	ae00001c 	sw	zero,28(s0)
 124:	8e19000c 	lw	t9,12(s0)
 128:	8e080000 	lw	t0,0(s0)
 12c:	03284823 	subu	t1,t9,t0
 130:	00495023 	subu	t2,v0,t1
 134:	10000002 	b	140 <Overlay_LoadGameState+0x140>
 138:	ae0a001c 	sw	t2,28(s0)
 13c:	ae00001c 	sw	zero,28(s0)
 140:	8e020020 	lw	v0,32(s0)
 144:	50400008 	beqzl	v0,168 <Overlay_LoadGameState+0x168>
 148:	ae000020 	sw	zero,32(s0)
 14c:	8e0b000c 	lw	t3,12(s0)
 150:	8e0c0000 	lw	t4,0(s0)
 154:	016c6823 	subu	t5,t3,t4
 158:	004d7023 	subu	t6,v0,t5
 15c:	10000002 	b	168 <Overlay_LoadGameState+0x168>
 160:	ae0e0020 	sw	t6,32(s0)
 164:	ae000020 	sw	zero,32(s0)
 168:	8e020024 	lw	v0,36(s0)
 16c:	50400008 	beqzl	v0,190 <Overlay_LoadGameState+0x190>
 170:	ae000024 	sw	zero,36(s0)
 174:	8e0f000c 	lw	t7,12(s0)
 178:	8e180000 	lw	t8,0(s0)
 17c:	01f8c823 	subu	t9,t7,t8
 180:	00594023 	subu	t0,v0,t9
 184:	10000002 	b	190 <Overlay_LoadGameState+0x190>
 188:	ae080024 	sw	t0,36(s0)
 18c:	ae000024 	sw	zero,36(s0)
 190:	ae000028 	sw	zero,40(s0)
 194:	8fbf002c 	lw	ra,44(sp)
 198:	8fb00028 	lw	s0,40(sp)
 19c:	27bd0030 	addiu	sp,sp,48
 1a0:	03e00008 	jr	ra
 1a4:	00000000 	nop

000001a8 <Overlay_FreeGameState>:
 1a8:	27bdffe0 	addiu	sp,sp,-32
 1ac:	afbf001c 	sw	ra,28(sp)
 1b0:	afb00018 	sw	s0,24(sp)
 1b4:	8c900000 	lw	s0,0(a0)
 1b8:	00803825 	move	a3,a0
 1bc:	52000042 	beqzl	s0,2c8 <Overlay_FreeGameState+0x120>
 1c0:	8fbf001c 	lw	ra,28(sp)
 1c4:	8c8e0028 	lw	t6,40(a0)
 1c8:	3c050000 	lui	a1,0x0
 1cc:	00001025 	move	v0,zero
 1d0:	11c00003 	beqz	t6,1e0 <Overlay_FreeGameState+0x38>
 1d4:	24a50070 	addiu	a1,a1,112
 1d8:	10000001 	b	1e0 <Overlay_FreeGameState+0x38>
 1dc:	2402ffff 	li	v0,-1
 1e0:	14400038 	bnez	v0,2c4 <Overlay_FreeGameState+0x11c>
 1e4:	24060095 	li	a2,149
 1e8:	8ce20014 	lw	v0,20(a3)
 1ec:	50400007 	beqzl	v0,20c <Overlay_FreeGameState+0x64>
 1f0:	ace00014 	sw	zero,20(a3)
 1f4:	8cef000c 	lw	t7,12(a3)
 1f8:	01f0c023 	subu	t8,t7,s0
 1fc:	0058c821 	addu	t9,v0,t8
 200:	10000002 	b	20c <Overlay_FreeGameState+0x64>
 204:	acf90014 	sw	t9,20(a3)
 208:	ace00014 	sw	zero,20(a3)
 20c:	8ce20018 	lw	v0,24(a3)
 210:	50400008 	beqzl	v0,234 <Overlay_FreeGameState+0x8c>
 214:	ace00018 	sw	zero,24(a3)
 218:	8ce8000c 	lw	t0,12(a3)
 21c:	8ce90000 	lw	t1,0(a3)
 220:	01095023 	subu	t2,t0,t1
 224:	004a5821 	addu	t3,v0,t2
 228:	10000002 	b	234 <Overlay_FreeGameState+0x8c>
 22c:	aceb0018 	sw	t3,24(a3)
 230:	ace00018 	sw	zero,24(a3)
 234:	8ce2001c 	lw	v0,28(a3)
 238:	50400008 	beqzl	v0,25c <Overlay_FreeGameState+0xb4>
 23c:	ace0001c 	sw	zero,28(a3)
 240:	8cec000c 	lw	t4,12(a3)
 244:	8ced0000 	lw	t5,0(a3)
 248:	018d7023 	subu	t6,t4,t5
 24c:	004e7821 	addu	t7,v0,t6
 250:	10000002 	b	25c <Overlay_FreeGameState+0xb4>
 254:	acef001c 	sw	t7,28(a3)
 258:	ace0001c 	sw	zero,28(a3)
 25c:	8ce20020 	lw	v0,32(a3)
 260:	50400008 	beqzl	v0,284 <Overlay_FreeGameState+0xdc>
 264:	ace00020 	sw	zero,32(a3)
 268:	8cf8000c 	lw	t8,12(a3)
 26c:	8cf90000 	lw	t9,0(a3)
 270:	03194023 	subu	t0,t8,t9
 274:	00484821 	addu	t1,v0,t0
 278:	10000002 	b	284 <Overlay_FreeGameState+0xdc>
 27c:	ace90020 	sw	t1,32(a3)
 280:	ace00020 	sw	zero,32(a3)
 284:	8ce20024 	lw	v0,36(a3)
 288:	50400008 	beqzl	v0,2ac <Overlay_FreeGameState+0x104>
 28c:	ace00024 	sw	zero,36(a3)
 290:	8cf00000 	lw	s0,0(a3)
 294:	8cea000c 	lw	t2,12(a3)
 298:	01505823 	subu	t3,t2,s0
 29c:	004b6021 	addu	t4,v0,t3
 2a0:	10000003 	b	2b0 <Overlay_FreeGameState+0x108>
 2a4:	acec0024 	sw	t4,36(a3)
 2a8:	ace00024 	sw	zero,36(a3)
 2ac:	8cf00000 	lw	s0,0(a3)
 2b0:	02002025 	move	a0,s0
 2b4:	0c000000 	jal	0 <Overlay_LoadGameState>
 2b8:	afa70020 	sw	a3,32(sp)
 2bc:	8fa70020 	lw	a3,32(sp)
 2c0:	ace00000 	sw	zero,0(a3)
 2c4:	8fbf001c 	lw	ra,28(sp)
 2c8:	8fb00018 	lw	s0,24(sp)
 2cc:	27bd0020 	addiu	sp,sp,32
 2d0:	03e00008 	jr	ra
 2d4:	00000000 	nop
	...
