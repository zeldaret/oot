
build/src/overlays/actors/ovl_Bg_Spot17_Funen/z_bg_spot17_funen.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <BgSpot17Funen_Init>:
   0:	27bdffe8 	addiu	sp,sp,-24
   4:	afa5001c 	sw	a1,28(sp)
   8:	afbf0014 	sw	ra,20(sp)
   c:	3c050000 	lui	a1,0x0
  10:	afa40018 	sw	a0,24(sp)
  14:	0c000000 	jal	0 <BgSpot17Funen_Init>
  18:	24a50020 	addiu	a1,a1,32
  1c:	8fae0018 	lw	t6,24(sp)
  20:	3c040000 	lui	a0,0x0
  24:	24840000 	addiu	a0,a0,0
  28:	0c000000 	jal	0 <BgSpot17Funen_Init>
  2c:	85c5001c 	lh	a1,28(t6)
  30:	8fbf0014 	lw	ra,20(sp)
  34:	27bd0018 	addiu	sp,sp,24
  38:	03e00008 	jr	ra
  3c:	00000000 	nop

00000040 <BgSpot17Funen_Destroy>:
  40:	afa40000 	sw	a0,0(sp)
  44:	03e00008 	jr	ra
  48:	afa50004 	sw	a1,4(sp)

0000004c <BgSpot17Funen_Update>:
  4c:	3c0e0000 	lui	t6,0x0
  50:	3c0f0000 	lui	t7,0x0
  54:	afa50004 	sw	a1,4(sp)
  58:	25ce0000 	addiu	t6,t6,0
  5c:	25ef0000 	addiu	t7,t7,0
  60:	ac8e0134 	sw	t6,308(a0)
  64:	03e00008 	jr	ra
  68:	ac8f0130 	sw	t7,304(a0)

0000006c <func_808B746C>:
  6c:	afa40000 	sw	a0,0(sp)
  70:	03e00008 	jr	ra
  74:	afa50004 	sw	a1,4(sp)

00000078 <func_808B7478>:
  78:	27bdff90 	addiu	sp,sp,-112
  7c:	afb10038 	sw	s1,56(sp)
  80:	00a08825 	move	s1,a1
  84:	afbf003c 	sw	ra,60(sp)
  88:	afb00034 	sw	s0,52(sp)
  8c:	afa40070 	sw	a0,112(sp)
  90:	8ca50000 	lw	a1,0(a1)
  94:	3c060000 	lui	a2,0x0
  98:	24c60024 	addiu	a2,a2,36
  9c:	27a40058 	addiu	a0,sp,88
  a0:	24070099 	li	a3,153
  a4:	0c000000 	jal	0 <BgSpot17Funen_Init>
  a8:	00a08025 	move	s0,a1
  ac:	0c000000 	jal	0 <BgSpot17Funen_Init>
  b0:	8e240000 	lw	a0,0(s1)
  b4:	862e07a0 	lh	t6,1952(s1)
  b8:	000e7880 	sll	t7,t6,0x2
  bc:	022fc021 	addu	t8,s1,t7
  c0:	0c000000 	jal	0 <BgSpot17Funen_Init>
  c4:	8f040790 	lw	a0,1936(t8)
  c8:	8fb90070 	lw	t9,112(sp)
  cc:	34018000 	li	at,0x8000
  d0:	24050001 	li	a1,1
  d4:	872800b6 	lh	t0,182(t9)
  d8:	00484823 	subu	t1,v0,t0
  dc:	01215021 	addu	t2,t1,at
  e0:	000a5c00 	sll	t3,t2,0x10
  e4:	000b6403 	sra	t4,t3,0x10
  e8:	448c2000 	mtc1	t4,$f4
  ec:	3c010000 	lui	at,0x0
  f0:	c428006c 	lwc1	$f8,108(at)
  f4:	468021a0 	cvt.s.w	$f6,$f4
  f8:	46083302 	mul.s	$f12,$f6,$f8
  fc:	0c000000 	jal	0 <BgSpot17Funen_Init>
 100:	00000000 	nop
 104:	8e0202d0 	lw	v0,720(s0)
 108:	3c0eda38 	lui	t6,0xda38
 10c:	35ce0003 	ori	t6,t6,0x3
 110:	244d0008 	addiu	t5,v0,8
 114:	ae0d02d0 	sw	t5,720(s0)
 118:	ac4e0000 	sw	t6,0(v0)
 11c:	8e240000 	lw	a0,0(s1)
 120:	3c050000 	lui	a1,0x0
 124:	24a5003c 	addiu	a1,a1,60
 128:	240600a1 	li	a2,161
 12c:	0c000000 	jal	0 <BgSpot17Funen_Init>
 130:	afa20054 	sw	v0,84(sp)
 134:	8fa30054 	lw	v1,84(sp)
 138:	3c18db06 	lui	t8,0xdb06
 13c:	37180020 	ori	t8,t8,0x20
 140:	ac620004 	sw	v0,4(v1)
 144:	8e0202d0 	lw	v0,720(s0)
 148:	3c070001 	lui	a3,0x1
 14c:	00f13821 	addu	a3,a3,s1
 150:	244f0008 	addiu	t7,v0,8
 154:	ae0f02d0 	sw	t7,720(s0)
 158:	ac580000 	sw	t8,0(v0)
 15c:	8ce71de4 	lw	a3,7652(a3)
 160:	8e240000 	lw	a0,0(s1)
 164:	24190020 	li	t9,32
 168:	00073823 	negu	a3,a3
 16c:	30e7007f 	andi	a3,a3,0x7f
 170:	24080020 	li	t0,32
 174:	24090001 	li	t1,1
 178:	240a0020 	li	t2,32
 17c:	240b0020 	li	t3,32
 180:	afab0028 	sw	t3,40(sp)
 184:	afaa0024 	sw	t2,36(sp)
 188:	afa90018 	sw	t1,24(sp)
 18c:	afa80014 	sw	t0,20(sp)
 190:	afa70020 	sw	a3,32(sp)
 194:	afb90010 	sw	t9,16(sp)
 198:	afa0001c 	sw	zero,28(sp)
 19c:	00002825 	move	a1,zero
 1a0:	00003025 	move	a2,zero
 1a4:	0c000000 	jal	0 <BgSpot17Funen_Init>
 1a8:	afa20050 	sw	v0,80(sp)
 1ac:	8fa30050 	lw	v1,80(sp)
 1b0:	3c0e0000 	lui	t6,0x0
 1b4:	25ce0000 	addiu	t6,t6,0
 1b8:	ac620004 	sw	v0,4(v1)
 1bc:	8e0202d0 	lw	v0,720(s0)
 1c0:	3c0dde00 	lui	t5,0xde00
 1c4:	3c060000 	lui	a2,0x0
 1c8:	244c0008 	addiu	t4,v0,8
 1cc:	ae0c02d0 	sw	t4,720(s0)
 1d0:	ac4e0004 	sw	t6,4(v0)
 1d4:	ac4d0000 	sw	t5,0(v0)
 1d8:	8e250000 	lw	a1,0(s1)
 1dc:	24c60054 	addiu	a2,a2,84
 1e0:	27a40058 	addiu	a0,sp,88
 1e4:	0c000000 	jal	0 <BgSpot17Funen_Init>
 1e8:	240700b0 	li	a3,176
 1ec:	8fbf003c 	lw	ra,60(sp)
 1f0:	8fb00034 	lw	s0,52(sp)
 1f4:	8fb10038 	lw	s1,56(sp)
 1f8:	03e00008 	jr	ra
 1fc:	27bd0070 	addiu	sp,sp,112
