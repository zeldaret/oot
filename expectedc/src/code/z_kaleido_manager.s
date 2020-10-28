
build/src/code/z_kaleido_manager.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <KaleidoManager_LoadOvl>:
   0:	27bdffd0 	addiu	sp,sp,-48
   4:	afb00028 	sw	s0,40(sp)
   8:	00808025 	move	s0,a0
   c:	afbf002c 	sw	ra,44(sp)
  10:	3c040000 	lui	a0,0x0
  14:	3c050000 	lui	a1,0x0
  18:	3c060000 	lui	a2,0x0
  1c:	24c60034 	addiu	a2,a2,52
  20:	8ca50000 	lw	a1,0(a1)
  24:	24840020 	addiu	a0,a0,32
  28:	0c000000 	jal	0 <KaleidoManager_LoadOvl>
  2c:	24070063 	li	a3,99
  30:	3c0e0000 	lui	t6,0x0
  34:	8dce0000 	lw	t6,0(t6)
  38:	8e040004 	lw	a0,4(s0)
  3c:	8e050008 	lw	a1,8(s0)
  40:	8e06000c 	lw	a2,12(s0)
  44:	8e070010 	lw	a3,16(s0)
  48:	ae0e0000 	sw	t6,0(s0)
  4c:	0c000000 	jal	0 <KaleidoManager_LoadOvl>
  50:	afae0010 	sw	t6,16(sp)
  54:	3c040000 	lui	a0,0x0
  58:	0c000000 	jal	0 <KaleidoManager_LoadOvl>
  5c:	2484004c 	addiu	a0,a0,76
  60:	8e05000c 	lw	a1,12(s0)
  64:	8e060010 	lw	a2,16(s0)
  68:	8e070000 	lw	a3,0(s0)
  6c:	3c040000 	lui	a0,0x0
  70:	24840054 	addiu	a0,a0,84
  74:	00e6c021 	addu	t8,a3,a2
  78:	0305c823 	subu	t9,t8,a1
  7c:	00a74023 	subu	t0,a1,a3
  80:	afa80014 	sw	t0,20(sp)
  84:	afb90010 	sw	t9,16(sp)
  88:	8e090018 	lw	t1,24(s0)
  8c:	00a01825 	move	v1,a1
  90:	00e01025 	move	v0,a3
  94:	0c000000 	jal	0 <KaleidoManager_LoadOvl>
  98:	afa90018 	sw	t1,24(sp)
  9c:	3c040000 	lui	a0,0x0
  a0:	0c000000 	jal	0 <KaleidoManager_LoadOvl>
  a4:	24840084 	addiu	a0,a0,132
  a8:	8e0a0000 	lw	t2,0(s0)
  ac:	8e0b000c 	lw	t3,12(s0)
  b0:	3c010000 	lui	at,0x0
  b4:	014b6023 	subu	t4,t2,t3
  b8:	ae0c0014 	sw	t4,20(s0)
  bc:	8fbf002c 	lw	ra,44(sp)
  c0:	ac300000 	sw	s0,0(at)
  c4:	8fb00028 	lw	s0,40(sp)
  c8:	03e00008 	jr	ra
  cc:	27bd0030 	addiu	sp,sp,48

000000d0 <KaleidoManager_ClearOvl>:
  d0:	27bdffe8 	addiu	sp,sp,-24
  d4:	afbf0014 	sw	ra,20(sp)
  d8:	8c870000 	lw	a3,0(a0)
  dc:	00803025 	move	a2,a0
  e0:	50e0000d 	beqzl	a3,118 <KaleidoManager_ClearOvl+0x48>
  e4:	8fbf0014 	lw	ra,20(sp)
  e8:	ac800014 	sw	zero,20(a0)
  ec:	8ccf000c 	lw	t7,12(a2)
  f0:	8cce0010 	lw	t6,16(a2)
  f4:	afa60018 	sw	a2,24(sp)
  f8:	00e02025 	move	a0,a3
  fc:	0c000000 	jal	0 <KaleidoManager_LoadOvl>
 100:	01cf2823 	subu	a1,t6,t7
 104:	8fa60018 	lw	a2,24(sp)
 108:	3c010000 	lui	at,0x0
 10c:	acc00000 	sw	zero,0(a2)
 110:	ac200000 	sw	zero,0(at)
 114:	8fbf0014 	lw	ra,20(sp)
 118:	27bd0018 	addiu	sp,sp,24
 11c:	03e00008 	jr	ra
 120:	00000000 	nop

00000124 <KaleidoManager_Init>:
 124:	27bdffe0 	addiu	sp,sp,-32
 128:	afa40020 	sw	a0,32(sp)
 12c:	afb00018 	sw	s0,24(sp)
 130:	3c040000 	lui	a0,0x0
 134:	3c020000 	lui	v0,0x0
 138:	afbf001c 	sw	ra,28(sp)
 13c:	00008025 	move	s0,zero
 140:	24420000 	addiu	v0,v0,0
 144:	24840038 	addiu	a0,a0,56
 148:	8c4e0010 	lw	t6,16(v0)
 14c:	8c4f000c 	lw	t7,12(v0)
 150:	2442001c 	addiu	v0,v0,28
 154:	01cf1823 	subu	v1,t6,t7
 158:	0203082a 	slt	at,s0,v1
 15c:	10200002 	beqz	at,168 <KaleidoManager_Init+0x44>
 160:	00000000 	nop
 164:	00608025 	move	s0,v1
 168:	5444fff8 	bnel	v0,a0,14c <KaleidoManager_Init+0x28>
 16c:	8c4e0010 	lw	t6,16(v0)
 170:	3c040000 	lui	a0,0x0
 174:	0c000000 	jal	0 <KaleidoManager_LoadOvl>
 178:	24840088 	addiu	a0,a0,136
 17c:	3c040000 	lui	a0,0x0
 180:	24840090 	addiu	a0,a0,144
 184:	0c000000 	jal	0 <KaleidoManager_LoadOvl>
 188:	02002825 	move	a1,s0
 18c:	3c040000 	lui	a0,0x0
 190:	0c000000 	jal	0 <KaleidoManager_LoadOvl>
 194:	248400c4 	addiu	a0,a0,196
 198:	3c060000 	lui	a2,0x0
 19c:	24c600c8 	addiu	a2,a2,200
 1a0:	8fa40020 	lw	a0,32(sp)
 1a4:	02002825 	move	a1,s0
 1a8:	0c000000 	jal	0 <KaleidoManager_LoadOvl>
 1ac:	24070096 	li	a3,150
 1b0:	3c030000 	lui	v1,0x0
 1b4:	24630000 	addiu	v1,v1,0
 1b8:	3c040000 	lui	a0,0x0
 1bc:	3c060000 	lui	a2,0x0
 1c0:	ac620000 	sw	v0,0(v1)
 1c4:	24c600f4 	addiu	a2,a2,244
 1c8:	248400e0 	addiu	a0,a0,224
 1cc:	00402825 	move	a1,v0
 1d0:	0c000000 	jal	0 <KaleidoManager_LoadOvl>
 1d4:	24070097 	li	a3,151
 1d8:	3c040000 	lui	a0,0x0
 1dc:	0c000000 	jal	0 <KaleidoManager_LoadOvl>
 1e0:	2484010c 	addiu	a0,a0,268
 1e4:	3c050000 	lui	a1,0x0
 1e8:	8ca50000 	lw	a1,0(a1)
 1ec:	3c040000 	lui	a0,0x0
 1f0:	24840114 	addiu	a0,a0,276
 1f4:	0c000000 	jal	0 <KaleidoManager_LoadOvl>
 1f8:	00b03021 	addu	a2,a1,s0
 1fc:	3c040000 	lui	a0,0x0
 200:	0c000000 	jal	0 <KaleidoManager_LoadOvl>
 204:	24840130 	addiu	a0,a0,304
 208:	8fbf001c 	lw	ra,28(sp)
 20c:	3c010000 	lui	at,0x0
 210:	8fb00018 	lw	s0,24(sp)
 214:	ac200000 	sw	zero,0(at)
 218:	03e00008 	jr	ra
 21c:	27bd0020 	addiu	sp,sp,32

00000220 <KaleidoManager_Destroy>:
 220:	3c040000 	lui	a0,0x0
 224:	8c840000 	lw	a0,0(a0)
 228:	27bdffe8 	addiu	sp,sp,-24
 22c:	afbf0014 	sw	ra,20(sp)
 230:	50800006 	beqzl	a0,24c <KaleidoManager_Destroy+0x2c>
 234:	8fbf0014 	lw	ra,20(sp)
 238:	0c000000 	jal	0 <KaleidoManager_LoadOvl>
 23c:	00000000 	nop
 240:	3c010000 	lui	at,0x0
 244:	ac200000 	sw	zero,0(at)
 248:	8fbf0014 	lw	ra,20(sp)
 24c:	3c010000 	lui	at,0x0
 250:	ac200000 	sw	zero,0(at)
 254:	03e00008 	jr	ra
 258:	27bd0018 	addiu	sp,sp,24

0000025c <KaleidoManager_GetRamAddr>:
 25c:	3c080000 	lui	t0,0x0
 260:	8d080000 	lw	t0,0(t0)
 264:	27bdffe0 	addiu	sp,sp,-32
 268:	afbf0014 	sw	ra,20(sp)
 26c:	1500001e 	bnez	t0,2e8 <KaleidoManager_GetRamAddr+0x8c>
 270:	00802825 	move	a1,a0
 274:	3c060000 	lui	a2,0x0
 278:	3c080000 	lui	t0,0x0
 27c:	3c040000 	lui	a0,0x0
 280:	8cc3000c 	lw	v1,12(a2)
 284:	25080000 	addiu	t0,t0,0
 288:	8c840010 	lw	a0,16(a0)
 28c:	00001025 	move	v0,zero
 290:	24070002 	li	a3,2
 294:	00a3082b 	sltu	at,a1,v1
 298:	1420000c 	bnez	at,2cc <KaleidoManager_GetRamAddr+0x70>
 29c:	24420001 	addiu	v0,v0,1
 2a0:	0085082b 	sltu	at,a0,a1
 2a4:	14200009 	bnez	at,2cc <KaleidoManager_GetRamAddr+0x70>
 2a8:	00000000 	nop
 2ac:	3c040000 	lui	a0,0x0
 2b0:	24840000 	addiu	a0,a0,0
 2b4:	afa50020 	sw	a1,32(sp)
 2b8:	0c000000 	jal	0 <KaleidoManager_LoadOvl>
 2bc:	afa8001c 	sw	t0,28(sp)
 2c0:	8fa50020 	lw	a1,32(sp)
 2c4:	10000008 	b	2e8 <KaleidoManager_GetRamAddr+0x8c>
 2c8:	8fa8001c 	lw	t0,28(sp)
 2cc:	5447fff2 	bnel	v0,a3,298 <KaleidoManager_GetRamAddr+0x3c>
 2d0:	00a3082b 	sltu	at,a1,v1
 2d4:	3c040000 	lui	a0,0x0
 2d8:	0c000000 	jal	0 <KaleidoManager_LoadOvl>
 2dc:	24840134 	addiu	a0,a0,308
 2e0:	1000000f 	b	320 <KaleidoManager_GetRamAddr+0xc4>
 2e4:	00001025 	move	v0,zero
 2e8:	11000009 	beqz	t0,310 <KaleidoManager_GetRamAddr+0xb4>
 2ec:	00000000 	nop
 2f0:	8d0e000c 	lw	t6,12(t0)
 2f4:	00ae082b 	sltu	at,a1,t6
 2f8:	14200005 	bnez	at,310 <KaleidoManager_GetRamAddr+0xb4>
 2fc:	00000000 	nop
 300:	8d0f0010 	lw	t7,16(t0)
 304:	00af082b 	sltu	at,a1,t7
 308:	54200004 	bnezl	at,31c <KaleidoManager_GetRamAddr+0xc0>
 30c:	8d180014 	lw	t8,20(t0)
 310:	10000003 	b	320 <KaleidoManager_GetRamAddr+0xc4>
 314:	00001025 	move	v0,zero
 318:	8d180014 	lw	t8,20(t0)
 31c:	00b81021 	addu	v0,a1,t8
 320:	8fbf0014 	lw	ra,20(sp)
 324:	27bd0020 	addiu	sp,sp,32
 328:	03e00008 	jr	ra
 32c:	00000000 	nop
