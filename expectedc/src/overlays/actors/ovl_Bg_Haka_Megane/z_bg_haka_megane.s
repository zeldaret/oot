
build/src/overlays/actors/ovl_Bg_Haka_Megane/z_bg_haka_megane.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <BgHakaMegane_Init>:
   0:	27bdffe0 	addiu	sp,sp,-32
   4:	afa50024 	sw	a1,36(sp)
   8:	afbf001c 	sw	ra,28(sp)
   c:	afb00018 	sw	s0,24(sp)
  10:	3c050000 	lui	a1,0x0
  14:	00808025 	move	s0,a0
  18:	0c000000 	jal	0 <BgHakaMegane_Init>
  1c:	24a50020 	addiu	a1,a1,32
  20:	02002025 	move	a0,s0
  24:	0c000000 	jal	0 <BgHakaMegane_Init>
  28:	00002825 	move	a1,zero
  2c:	860e001c 	lh	t6,28(s0)
  30:	8fa40024 	lw	a0,36(sp)
  34:	24050069 	li	a1,105
  38:	29c10003 	slti	at,t6,3
  3c:	5020000a 	beqzl	at,68 <BgHakaMegane_Init+0x68>
  40:	3c010001 	lui	at,0x1
  44:	8fa40024 	lw	a0,36(sp)
  48:	3c010001 	lui	at,0x1
  4c:	342117a4 	ori	at,at,0x17a4
  50:	2405008d 	li	a1,141
  54:	0c000000 	jal	0 <BgHakaMegane_Init>
  58:	00812021 	addu	a0,a0,at
  5c:	10000006 	b	78 <BgHakaMegane_Init+0x78>
  60:	a2020169 	sb	v0,361(s0)
  64:	3c010001 	lui	at,0x1
  68:	342117a4 	ori	at,at,0x17a4
  6c:	0c000000 	jal	0 <BgHakaMegane_Init>
  70:	00812021 	addu	a0,a0,at
  74:	a2020169 	sb	v0,361(s0)
  78:	820f0169 	lb	t7,361(s0)
  7c:	3c180000 	lui	t8,0x0
  80:	27180000 	addiu	t8,t8,0
  84:	05e30006 	bgezl	t7,a0 <BgHakaMegane_Init+0xa0>
  88:	ae180164 	sw	t8,356(s0)
  8c:	0c000000 	jal	0 <BgHakaMegane_Init>
  90:	02002025 	move	a0,s0
  94:	10000003 	b	a4 <BgHakaMegane_Init+0xa4>
  98:	8fbf001c 	lw	ra,28(sp)
  9c:	ae180164 	sw	t8,356(s0)
  a0:	8fbf001c 	lw	ra,28(sp)
  a4:	8fb00018 	lw	s0,24(sp)
  a8:	27bd0020 	addiu	sp,sp,32
  ac:	03e00008 	jr	ra
  b0:	00000000 	nop

000000b4 <BgHakaMegane_Destroy>:
  b4:	27bdffe8 	addiu	sp,sp,-24
  b8:	afa40018 	sw	a0,24(sp)
  bc:	8fae0018 	lw	t6,24(sp)
  c0:	afbf0014 	sw	ra,20(sp)
  c4:	00a02025 	move	a0,a1
  c8:	24a50810 	addiu	a1,a1,2064
  cc:	0c000000 	jal	0 <BgHakaMegane_Init>
  d0:	8dc6014c 	lw	a2,332(t6)
  d4:	8fbf0014 	lw	ra,20(sp)
  d8:	27bd0018 	addiu	sp,sp,24
  dc:	03e00008 	jr	ra
  e0:	00000000 	nop

000000e4 <func_8087DB24>:
  e4:	27bdffd8 	addiu	sp,sp,-40
  e8:	afb00014 	sw	s0,20(sp)
  ec:	3c010001 	lui	at,0x1
  f0:	00808025 	move	s0,a0
  f4:	afb10018 	sw	s1,24(sp)
  f8:	342117a4 	ori	at,at,0x17a4
  fc:	00a08825 	move	s1,a1
 100:	afbf001c 	sw	ra,28(sp)
 104:	00a12021 	addu	a0,a1,at
 108:	0c000000 	jal	0 <BgHakaMegane_Init>
 10c:	82050169 	lb	a1,361(s0)
 110:	10400022 	beqz	v0,19c <func_8087DB24+0xb8>
 114:	3c0f0000 	lui	t7,0x0
 118:	820e0169 	lb	t6,361(s0)
 11c:	25ef0000 	addiu	t7,t7,0
 120:	ae0f0134 	sw	t7,308(s0)
 124:	02202025 	move	a0,s1
 128:	02002825 	move	a1,s0
 12c:	0c000000 	jal	0 <BgHakaMegane_Init>
 130:	a20e001e 	sb	t6,30(s0)
 134:	3c180001 	lui	t8,0x1
 138:	0311c021 	addu	t8,t8,s1
 13c:	93181cc1 	lbu	t8,7361(t8)
 140:	3c0a0000 	lui	t2,0x0
 144:	3c190000 	lui	t9,0x0
 148:	13000013 	beqz	t8,198 <func_8087DB24+0xb4>
 14c:	254a0000 	addiu	t2,t2,0
 150:	8608001c 	lh	t0,28(s0)
 154:	27390000 	addiu	t9,t9,0
 158:	3c040000 	lui	a0,0x0
 15c:	00084880 	sll	t1,t0,0x2
 160:	ae190164 	sw	t9,356(s0)
 164:	00892021 	addu	a0,a0,t1
 168:	8c840024 	lw	a0,36(a0)
 16c:	5080000c 	beqzl	a0,1a0 <func_8087DB24+0xbc>
 170:	8fbf001c 	lw	ra,28(sp)
 174:	0c000000 	jal	0 <BgHakaMegane_Init>
 178:	27a50024 	addiu	a1,sp,36
 17c:	02202025 	move	a0,s1
 180:	26250810 	addiu	a1,s1,2064
 184:	02003025 	move	a2,s0
 188:	0c000000 	jal	0 <BgHakaMegane_Init>
 18c:	8fa70024 	lw	a3,36(sp)
 190:	10000002 	b	19c <func_8087DB24+0xb8>
 194:	ae02014c 	sw	v0,332(s0)
 198:	ae0a0164 	sw	t2,356(s0)
 19c:	8fbf001c 	lw	ra,28(sp)
 1a0:	8fb00014 	lw	s0,20(sp)
 1a4:	8fb10018 	lw	s1,24(sp)
 1a8:	03e00008 	jr	ra
 1ac:	27bd0028 	addiu	sp,sp,40

000001b0 <func_8087DBF0>:
 1b0:	27bdffe0 	addiu	sp,sp,-32
 1b4:	afbf001c 	sw	ra,28(sp)
 1b8:	afb00018 	sw	s0,24(sp)
 1bc:	90ae1c27 	lbu	t6,7207(a1)
 1c0:	00a08025 	move	s0,a1
 1c4:	00803825 	move	a3,a0
 1c8:	11c0000a 	beqz	t6,1f4 <func_8087DBF0+0x44>
 1cc:	2401ff7f 	li	at,-129
 1d0:	8c8f0004 	lw	t7,4(a0)
 1d4:	35f80080 	ori	t8,t7,0x80
 1d8:	ac980004 	sw	t8,4(a0)
 1dc:	00a02025 	move	a0,a1
 1e0:	24a50810 	addiu	a1,a1,2064
 1e4:	0c000000 	jal	0 <BgHakaMegane_Init>
 1e8:	8ce6014c 	lw	a2,332(a3)
 1ec:	10000009 	b	214 <func_8087DBF0+0x64>
 1f0:	8fbf001c 	lw	ra,28(sp)
 1f4:	8cf90004 	lw	t9,4(a3)
 1f8:	02002025 	move	a0,s0
 1fc:	26050810 	addiu	a1,s0,2064
 200:	03214024 	and	t0,t9,at
 204:	ace80004 	sw	t0,4(a3)
 208:	0c000000 	jal	0 <BgHakaMegane_Init>
 20c:	8ce6014c 	lw	a2,332(a3)
 210:	8fbf001c 	lw	ra,28(sp)
 214:	8fb00018 	lw	s0,24(sp)
 218:	27bd0020 	addiu	sp,sp,32
 21c:	03e00008 	jr	ra
 220:	00000000 	nop

00000224 <BgHakaMegane_DoNothing>:
 224:	afa40000 	sw	a0,0(sp)
 228:	03e00008 	jr	ra
 22c:	afa50004 	sw	a1,4(sp)

00000230 <BgHakaMegane_Update>:
 230:	27bdffe8 	addiu	sp,sp,-24
 234:	afbf0014 	sw	ra,20(sp)
 238:	8c990164 	lw	t9,356(a0)
 23c:	0320f809 	jalr	t9
 240:	00000000 	nop
 244:	8fbf0014 	lw	ra,20(sp)
 248:	27bd0018 	addiu	sp,sp,24
 24c:	03e00008 	jr	ra
 250:	00000000 	nop

00000254 <BgHakaMegane_Draw>:
 254:	27bdffe8 	addiu	sp,sp,-24
 258:	afbf0014 	sw	ra,20(sp)
 25c:	afa5001c 	sw	a1,28(sp)
 260:	8c8e0004 	lw	t6,4(a0)
 264:	00803025 	move	a2,a0
 268:	24010080 	li	at,128
 26c:	31cf0080 	andi	t7,t6,0x80
 270:	15e1000b 	bne	t7,at,2a0 <BgHakaMegane_Draw+0x4c>
 274:	8fa4001c 	lw	a0,28(sp)
 278:	84d8001c 	lh	t8,28(a2)
 27c:	00a02025 	move	a0,a1
 280:	3c050000 	lui	a1,0x0
 284:	0018c880 	sll	t9,t8,0x2
 288:	00b92821 	addu	a1,a1,t9
 28c:	8ca50058 	lw	a1,88(a1)
 290:	0c000000 	jal	0 <BgHakaMegane_Init>
 294:	afa60018 	sw	a2,24(sp)
 298:	10000009 	b	2c0 <BgHakaMegane_Draw+0x6c>
 29c:	8faa0018 	lw	t2,24(sp)
 2a0:	84c8001c 	lh	t0,28(a2)
 2a4:	3c050000 	lui	a1,0x0
 2a8:	afa60018 	sw	a2,24(sp)
 2ac:	00084880 	sll	t1,t0,0x2
 2b0:	00a92821 	addu	a1,a1,t1
 2b4:	0c000000 	jal	0 <BgHakaMegane_Init>
 2b8:	8ca50058 	lw	a1,88(a1)
 2bc:	8faa0018 	lw	t2,24(sp)
 2c0:	8fa4001c 	lw	a0,28(sp)
 2c4:	3c050000 	lui	a1,0x0
 2c8:	854b001c 	lh	t3,28(t2)
 2cc:	55600004 	bnezl	t3,2e0 <BgHakaMegane_Draw+0x8c>
 2d0:	8fbf0014 	lw	ra,20(sp)
 2d4:	0c000000 	jal	0 <BgHakaMegane_Init>
 2d8:	24a50000 	addiu	a1,a1,0
 2dc:	8fbf0014 	lw	ra,20(sp)
 2e0:	27bd0018 	addiu	sp,sp,24
 2e4:	03e00008 	jr	ra
 2e8:	00000000 	nop
 2ec:	00000000 	nop
