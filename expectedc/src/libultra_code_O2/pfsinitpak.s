
build/src/libultra_code_O2/pfsinitpak.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <osPfsInitPak>:
   0:	27bdff90 	addiu	sp,sp,-112
   4:	afbf001c 	sw	ra,28(sp)
   8:	afb00018 	sw	s0,24(sp)
   c:	00a08025 	move	s0,a1
  10:	afa40070 	sw	a0,112(sp)
  14:	0c000000 	jal	0 <osPfsInitPak>
  18:	afa60078 	sw	a2,120(sp)
  1c:	8fa40070 	lw	a0,112(sp)
  20:	0c000000 	jal	0 <osPfsInitPak>
  24:	8fa50078 	lw	a1,120(sp)
  28:	0c000000 	jal	0 <osPfsInitPak>
  2c:	afa2006c 	sw	v0,108(sp)
  30:	8fa3006c 	lw	v1,108(sp)
  34:	8fae0070 	lw	t6,112(sp)
  38:	02002025 	move	a0,s0
  3c:	50600004 	beqzl	v1,50 <osPfsInitPak+0x50>
  40:	ae0e0004 	sw	t6,4(s0)
  44:	1000006b 	b	1f4 <osPfsInitPak+0x1f4>
  48:	00601025 	move	v0,v1
  4c:	ae0e0004 	sw	t6,4(s0)
  50:	8faf0078 	lw	t7,120(sp)
  54:	ae000000 	sw	zero,0(s0)
  58:	0c000000 	jal	0 <osPfsInitPak>
  5c:	ae0f0008 	sw	t7,8(s0)
  60:	10400003 	beqz	v0,70 <osPfsInitPak+0x70>
  64:	02002025 	move	a0,s0
  68:	10000063 	b	1f8 <osPfsInitPak+0x1f8>
  6c:	8fbf001c 	lw	ra,28(sp)
  70:	0c000000 	jal	0 <osPfsInitPak>
  74:	00002825 	move	a1,zero
  78:	10400003 	beqz	v0,88 <osPfsInitPak+0x88>
  7c:	24060001 	li	a2,1
  80:	1000005d 	b	1f8 <osPfsInitPak+0x1f8>
  84:	8fbf001c 	lw	ra,28(sp)
  88:	8e040004 	lw	a0,4(s0)
  8c:	8e050008 	lw	a1,8(s0)
  90:	0c000000 	jal	0 <osPfsInitPak>
  94:	27a70048 	addiu	a3,sp,72
  98:	10400003 	beqz	v0,a8 <osPfsInitPak+0xa8>
  9c:	27a40048 	addiu	a0,sp,72
  a0:	10000055 	b	1f8 <osPfsInitPak+0x1f8>
  a4:	8fbf001c 	lw	ra,28(sp)
  a8:	27a5006a 	addiu	a1,sp,106
  ac:	0c000000 	jal	0 <osPfsInitPak>
  b0:	27a60068 	addiu	a2,sp,104
  b4:	97b8006a 	lhu	t8,106(sp)
  b8:	97b90064 	lhu	t9,100(sp)
  bc:	27a50048 	addiu	a1,sp,72
  c0:	afa50044 	sw	a1,68(sp)
  c4:	17190004 	bne	t8,t9,d8 <osPfsInitPak+0xd8>
  c8:	97a90068 	lhu	t1,104(sp)
  cc:	97aa0066 	lhu	t2,102(sp)
  d0:	512a000a 	beql	t1,t2,fc <osPfsInitPak+0xfc>
  d4:	97ad0060 	lhu	t5,96(sp)
  d8:	0c000000 	jal	0 <osPfsInitPak>
  dc:	02002025 	move	a0,s0
  e0:	50400006 	beqzl	v0,fc <osPfsInitPak+0xfc>
  e4:	97ad0060 	lhu	t5,96(sp)
  e8:	8e0b0000 	lw	t3,0(s0)
  ec:	356c0004 	ori	t4,t3,0x4
  f0:	10000040 	b	1f4 <osPfsInitPak+0x1f4>
  f4:	ae0c0000 	sw	t4,0(s0)
  f8:	97ad0060 	lhu	t5,96(sp)
  fc:	27a50048 	addiu	a1,sp,72
 100:	02002025 	move	a0,s0
 104:	31ae0001 	andi	t6,t5,0x1
 108:	55c00016 	bnezl	t6,164 <osPfsInitPak+0x164>
 10c:	8fa40044 	lw	a0,68(sp)
 110:	0c000000 	jal	0 <osPfsInitPak>
 114:	27a60020 	addiu	a2,sp,32
 118:	10400009 	beqz	v0,140 <osPfsInitPak+0x140>
 11c:	00401825 	move	v1,v0
 120:	2401000a 	li	at,10
 124:	14410004 	bne	v0,at,138 <osPfsInitPak+0x138>
 128:	00000000 	nop
 12c:	8e0f0000 	lw	t7,0(s0)
 130:	35f80004 	ori	t8,t7,0x4
 134:	ae180000 	sw	t8,0(s0)
 138:	1000002e 	b	1f4 <osPfsInitPak+0x1f4>
 13c:	00601025 	move	v0,v1
 140:	97a90038 	lhu	t1,56(sp)
 144:	27b90020 	addiu	t9,sp,32
 148:	afb90044 	sw	t9,68(sp)
 14c:	312a0001 	andi	t2,t1,0x1
 150:	55400004 	bnezl	t2,164 <osPfsInitPak+0x164>
 154:	8fa40044 	lw	a0,68(sp)
 158:	10000026 	b	1f4 <osPfsInitPak+0x1f4>
 15c:	2402000b 	li	v0,11
 160:	8fa40044 	lw	a0,68(sp)
 164:	2605000c 	addiu	a1,s0,12
 168:	0c000000 	jal	0 <osPfsInitPak>
 16c:	24060020 	li	a2,32
 170:	8fab0044 	lw	t3,68(sp)
 174:	24190010 	li	t9,16
 178:	24090008 	li	t1,8
 17c:	916c001b 	lbu	t4,27(t3)
 180:	8e040004 	lw	a0,4(s0)
 184:	8e050008 	lw	a1,8(s0)
 188:	ae0c004c 	sw	t4,76(s0)
 18c:	8fad0044 	lw	t5,68(sp)
 190:	24060007 	li	a2,7
 194:	2607002c 	addiu	a3,s0,44
 198:	91ae001a 	lbu	t6,26(t5)
 19c:	ae190050 	sw	t9,80(s0)
 1a0:	ae090054 	sw	t1,84(s0)
 1a4:	31c200ff 	andi	v0,t6,0xff
 1a8:	000218c0 	sll	v1,v0,0x3
 1ac:	00027840 	sll	t7,v0,0x1
 1b0:	24680008 	addiu	t0,v1,8
 1b4:	25f80003 	addiu	t8,t7,3
 1b8:	01035021 	addu	t2,t0,v1
 1bc:	ae180060 	sw	t8,96(s0)
 1c0:	ae080058 	sw	t0,88(s0)
 1c4:	ae0a005c 	sw	t2,92(s0)
 1c8:	0c000000 	jal	0 <osPfsInitPak>
 1cc:	a20e0064 	sb	t6,100(s0)
 1d0:	10400003 	beqz	v0,1e0 <osPfsInitPak+0x1e0>
 1d4:	00000000 	nop
 1d8:	10000007 	b	1f8 <osPfsInitPak+0x1f8>
 1dc:	8fbf001c 	lw	ra,28(sp)
 1e0:	0c000000 	jal	0 <osPfsInitPak>
 1e4:	02002025 	move	a0,s0
 1e8:	8e0b0000 	lw	t3,0(s0)
 1ec:	356c0001 	ori	t4,t3,0x1
 1f0:	ae0c0000 	sw	t4,0(s0)
 1f4:	8fbf001c 	lw	ra,28(sp)
 1f8:	8fb00018 	lw	s0,24(sp)
 1fc:	27bd0070 	addiu	sp,sp,112
 200:	03e00008 	jr	ra
 204:	00000000 	nop

00000208 <__osPfsCheckRamArea>:
 208:	27bdff68 	addiu	sp,sp,-152
 20c:	afbf0024 	sw	ra,36(sp)
 210:	afb00020 	sw	s0,32(sp)
 214:	00808025 	move	s0,a0
 218:	0c000000 	jal	0 <osPfsInitPak>
 21c:	00002825 	move	a1,zero
 220:	10400003 	beqz	v0,230 <__osPfsCheckRamArea+0x28>
 224:	00003025 	move	a2,zero
 228:	10000034 	b	2fc <__osPfsCheckRamArea+0xf4>
 22c:	8fbf0024 	lw	ra,36(sp)
 230:	8e040004 	lw	a0,4(s0)
 234:	8e050008 	lw	a1,8(s0)
 238:	0c000000 	jal	0 <osPfsInitPak>
 23c:	27a70030 	addiu	a3,sp,48
 240:	10400003 	beqz	v0,250 <__osPfsCheckRamArea+0x48>
 244:	27a30070 	addiu	v1,sp,112
 248:	1000002c 	b	2fc <__osPfsCheckRamArea+0xf4>
 24c:	8fbf0024 	lw	ra,36(sp)
 250:	00001025 	move	v0,zero
 254:	24040020 	li	a0,32
 258:	244e0001 	addiu	t6,v0,1
 25c:	244f0002 	addiu	t7,v0,2
 260:	24580003 	addiu	t8,v0,3
 264:	a0620000 	sb	v0,0(v1)
 268:	24420004 	addiu	v0,v0,4
 26c:	a0780003 	sb	t8,3(v1)
 270:	a06f0002 	sb	t7,2(v1)
 274:	a06e0001 	sb	t6,1(v1)
 278:	1444fff7 	bne	v0,a0,258 <__osPfsCheckRamArea+0x50>
 27c:	24630004 	addiu	v1,v1,4
 280:	8e040004 	lw	a0,4(s0)
 284:	8e050008 	lw	a1,8(s0)
 288:	afa00010 	sw	zero,16(sp)
 28c:	00003025 	move	a2,zero
 290:	0c000000 	jal	0 <osPfsInitPak>
 294:	27a70070 	addiu	a3,sp,112
 298:	10400003 	beqz	v0,2a8 <__osPfsCheckRamArea+0xa0>
 29c:	00003025 	move	a2,zero
 2a0:	10000016 	b	2fc <__osPfsCheckRamArea+0xf4>
 2a4:	8fbf0024 	lw	ra,36(sp)
 2a8:	8e040004 	lw	a0,4(s0)
 2ac:	8e050008 	lw	a1,8(s0)
 2b0:	0c000000 	jal	0 <osPfsInitPak>
 2b4:	27a70050 	addiu	a3,sp,80
 2b8:	10400003 	beqz	v0,2c8 <__osPfsCheckRamArea+0xc0>
 2bc:	27a40070 	addiu	a0,sp,112
 2c0:	1000000e 	b	2fc <__osPfsCheckRamArea+0xf4>
 2c4:	8fbf0024 	lw	ra,36(sp)
 2c8:	27a50050 	addiu	a1,sp,80
 2cc:	0c000000 	jal	0 <osPfsInitPak>
 2d0:	24060020 	li	a2,32
 2d4:	10400003 	beqz	v0,2e4 <__osPfsCheckRamArea+0xdc>
 2d8:	00003025 	move	a2,zero
 2dc:	10000006 	b	2f8 <__osPfsCheckRamArea+0xf0>
 2e0:	2402000b 	li	v0,11
 2e4:	8e040004 	lw	a0,4(s0)
 2e8:	8e050008 	lw	a1,8(s0)
 2ec:	afa00010 	sw	zero,16(sp)
 2f0:	0c000000 	jal	0 <osPfsInitPak>
 2f4:	27a70030 	addiu	a3,sp,48
 2f8:	8fbf0024 	lw	ra,36(sp)
 2fc:	8fb00020 	lw	s0,32(sp)
 300:	27bd0098 	addiu	sp,sp,152
 304:	03e00008 	jr	ra
 308:	00000000 	nop
 30c:	00000000 	nop
