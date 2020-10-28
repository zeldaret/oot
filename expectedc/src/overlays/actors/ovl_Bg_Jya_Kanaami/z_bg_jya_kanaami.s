
build/src/overlays/actors/ovl_Bg_Jya_Kanaami/z_bg_jya_kanaami.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <func_80899740>:
   0:	27bdffc8 	addiu	sp,sp,-56
   4:	afbf0024 	sw	ra,36(sp)
   8:	afb00020 	sw	s0,32(sp)
   c:	afa5003c 	sw	a1,60(sp)
  10:	00808025 	move	s0,a0
  14:	afa60040 	sw	a2,64(sp)
  18:	afa00030 	sw	zero,48(sp)
  1c:	0c000000 	jal	0 <func_80899740>
  20:	00e02825 	move	a1,a3
  24:	8fa40040 	lw	a0,64(sp)
  28:	0c000000 	jal	0 <func_80899740>
  2c:	27a50030 	addiu	a1,sp,48
  30:	8fa4003c 	lw	a0,60(sp)
  34:	02003025 	move	a2,s0
  38:	8fa70030 	lw	a3,48(sp)
  3c:	0c000000 	jal	0 <func_80899740>
  40:	24850810 	addiu	a1,a0,2064
  44:	24010032 	li	at,50
  48:	1441000a 	bne	v0,at,74 <func_80899740+0x74>
  4c:	ae02014c 	sw	v0,332(s0)
  50:	860e001c 	lh	t6,28(s0)
  54:	3c040000 	lui	a0,0x0
  58:	3c050000 	lui	a1,0x0
  5c:	86070000 	lh	a3,0(s0)
  60:	24a50040 	addiu	a1,a1,64
  64:	24840000 	addiu	a0,a0,0
  68:	24060091 	li	a2,145
  6c:	0c000000 	jal	0 <func_80899740>
  70:	afae0010 	sw	t6,16(sp)
  74:	8fbf0024 	lw	ra,36(sp)
  78:	8fb00020 	lw	s0,32(sp)
  7c:	27bd0038 	addiu	sp,sp,56
  80:	03e00008 	jr	ra
  84:	00000000 	nop

00000088 <BgJyaKanaami_Init>:
  88:	27bdffe0 	addiu	sp,sp,-32
  8c:	afbf001c 	sw	ra,28(sp)
  90:	afb00018 	sw	s0,24(sp)
  94:	3c060000 	lui	a2,0x0
  98:	00808025 	move	s0,a0
  9c:	afa50024 	sw	a1,36(sp)
  a0:	24c60000 	addiu	a2,a2,0
  a4:	0c000000 	jal	0 <func_80899740>
  a8:	00003825 	move	a3,zero
  ac:	3c050000 	lui	a1,0x0
  b0:	24a50020 	addiu	a1,a1,32
  b4:	0c000000 	jal	0 <func_80899740>
  b8:	02002025 	move	a0,s0
  bc:	8605001c 	lh	a1,28(s0)
  c0:	8fa40024 	lw	a0,36(sp)
  c4:	0c000000 	jal	0 <func_80899740>
  c8:	30a5003f 	andi	a1,a1,0x3f
  cc:	10400005 	beqz	v0,e4 <BgJyaKanaami_Init+0x5c>
  d0:	00000000 	nop
  d4:	0c000000 	jal	0 <func_80899740>
  d8:	02002025 	move	a0,s0
  dc:	10000003 	b	ec <BgJyaKanaami_Init+0x64>
  e0:	00000000 	nop
  e4:	0c000000 	jal	0 <func_80899740>
  e8:	02002025 	move	a0,s0
  ec:	3c040000 	lui	a0,0x0
  f0:	24840058 	addiu	a0,a0,88
  f4:	0c000000 	jal	0 <func_80899740>
  f8:	8605001c 	lh	a1,28(s0)
  fc:	8fbf001c 	lw	ra,28(sp)
 100:	8fb00018 	lw	s0,24(sp)
 104:	27bd0020 	addiu	sp,sp,32
 108:	03e00008 	jr	ra
 10c:	00000000 	nop

00000110 <BgJyaKanaami_Destroy>:
 110:	27bdffe8 	addiu	sp,sp,-24
 114:	afa40018 	sw	a0,24(sp)
 118:	8fae0018 	lw	t6,24(sp)
 11c:	afbf0014 	sw	ra,20(sp)
 120:	00a02025 	move	a0,a1
 124:	24a50810 	addiu	a1,a1,2064
 128:	0c000000 	jal	0 <func_80899740>
 12c:	8dc6014c 	lw	a2,332(t6)
 130:	8fbf0014 	lw	ra,20(sp)
 134:	27bd0018 	addiu	sp,sp,24
 138:	03e00008 	jr	ra
 13c:	00000000 	nop

00000140 <func_80899880>:
 140:	3c0e0000 	lui	t6,0x0
 144:	25ce0000 	addiu	t6,t6,0
 148:	ac8e0164 	sw	t6,356(a0)
 14c:	03e00008 	jr	ra
 150:	a480016a 	sh	zero,362(a0)

00000154 <func_80899894>:
 154:	27bdffe0 	addiu	sp,sp,-32
 158:	00803825 	move	a3,a0
 15c:	afbf001c 	sw	ra,28(sp)
 160:	afa50024 	sw	a1,36(sp)
 164:	00a02025 	move	a0,a1
 168:	84e5001c 	lh	a1,28(a3)
 16c:	afa70020 	sw	a3,32(sp)
 170:	0c000000 	jal	0 <func_80899740>
 174:	30a5003f 	andi	a1,a1,0x3f
 178:	14400003 	bnez	v0,188 <func_80899894+0x34>
 17c:	8fa70020 	lw	a3,32(sp)
 180:	84ee016a 	lh	t6,362(a3)
 184:	19c00019 	blez	t6,1ec <func_80899894+0x98>
 188:	3c01c47a 	lui	at,0xc47a
 18c:	44812000 	mtc1	at,$f4
 190:	c4e60024 	lwc1	$f6,36(a3)
 194:	84e3016a 	lh	v1,362(a3)
 198:	4606203c 	c.lt.s	$f4,$f6
 19c:	00000000 	nop
 1a0:	4502000b 	bc1fl	1d0 <func_80899894+0x7c>
 1a4:	246f0001 	addiu	t7,v1,1
 1a8:	14600008 	bnez	v1,1cc <func_80899894+0x78>
 1ac:	8fa40024 	lw	a0,36(sp)
 1b0:	24050d7a 	li	a1,3450
 1b4:	2406ff9d 	li	a2,-99
 1b8:	afa00010 	sw	zero,16(sp)
 1bc:	0c000000 	jal	0 <func_80899740>
 1c0:	afa70020 	sw	a3,32(sp)
 1c4:	8fa70020 	lw	a3,32(sp)
 1c8:	84e3016a 	lh	v1,362(a3)
 1cc:	246f0001 	addiu	t7,v1,1
 1d0:	a4ef016a 	sh	t7,362(a3)
 1d4:	84f8016a 	lh	t8,362(a3)
 1d8:	2b01000a 	slti	at,t8,10
 1dc:	54200004 	bnezl	at,1f0 <func_80899894+0x9c>
 1e0:	8fbf001c 	lw	ra,28(sp)
 1e4:	0c000000 	jal	0 <func_80899740>
 1e8:	00e02025 	move	a0,a3
 1ec:	8fbf001c 	lw	ra,28(sp)
 1f0:	27bd0020 	addiu	sp,sp,32
 1f4:	03e00008 	jr	ra
 1f8:	00000000 	nop

000001fc <func_8089993C>:
 1fc:	3c0e0000 	lui	t6,0x0
 200:	25ce0000 	addiu	t6,t6,0
 204:	ac8e0164 	sw	t6,356(a0)
 208:	03e00008 	jr	ra
 20c:	a4800168 	sh	zero,360(a0)

00000210 <func_80899950>:
 210:	27bdffd0 	addiu	sp,sp,-48
 214:	afbf001c 	sw	ra,28(sp)
 218:	afa50034 	sw	a1,52(sp)
 21c:	848e0168 	lh	t6,360(a0)
 220:	00803825 	move	a3,a0
 224:	24840030 	addiu	a0,a0,48
 228:	25cf0020 	addiu	t7,t6,32
 22c:	a48f0138 	sh	t7,312(a0)
 230:	84e60168 	lh	a2,360(a3)
 234:	afa70030 	sw	a3,48(sp)
 238:	0c000000 	jal	0 <func_80899740>
 23c:	24054000 	li	a1,16384
 240:	1040001d 	beqz	v0,2b8 <func_80899950+0xa8>
 244:	8fa70030 	lw	a3,48(sp)
 248:	00e02025 	move	a0,a3
 24c:	0c000000 	jal	0 <func_80899740>
 250:	afa70030 	sw	a3,48(sp)
 254:	8fa40030 	lw	a0,48(sp)
 258:	0c000000 	jal	0 <func_80899740>
 25c:	24052851 	li	a1,10321
 260:	8fa20034 	lw	v0,52(sp)
 264:	24050003 	li	a1,3
 268:	845807a0 	lh	t8,1952(v0)
 26c:	0018c880 	sll	t9,t8,0x2
 270:	00594021 	addu	t0,v0,t9
 274:	0c000000 	jal	0 <func_80899740>
 278:	8d040790 	lw	a0,1936(t0)
 27c:	00022400 	sll	a0,v0,0x10
 280:	afa20024 	sw	v0,36(sp)
 284:	00042403 	sra	a0,a0,0x10
 288:	0c000000 	jal	0 <func_80899740>
 28c:	240561a8 	li	a1,25000
 290:	87a40026 	lh	a0,38(sp)
 294:	24050002 	li	a1,2
 298:	00003025 	move	a2,zero
 29c:	00003825 	move	a3,zero
 2a0:	afa00010 	sw	zero,16(sp)
 2a4:	0c000000 	jal	0 <func_80899740>
 2a8:	afa40020 	sw	a0,32(sp)
 2ac:	8fa40020 	lw	a0,32(sp)
 2b0:	0c000000 	jal	0 <func_80899740>
 2b4:	24050010 	li	a1,16
 2b8:	8fbf001c 	lw	ra,28(sp)
 2bc:	27bd0030 	addiu	sp,sp,48
 2c0:	03e00008 	jr	ra
 2c4:	00000000 	nop

000002c8 <func_80899A08>:
 2c8:	240e4000 	li	t6,16384
 2cc:	ac800164 	sw	zero,356(a0)
 2d0:	03e00008 	jr	ra
 2d4:	a48e0030 	sh	t6,48(a0)

000002d8 <BgJyaKanaami_Update>:
 2d8:	27bdffe8 	addiu	sp,sp,-24
 2dc:	afbf0014 	sw	ra,20(sp)
 2e0:	8c820164 	lw	v0,356(a0)
 2e4:	50400005 	beqzl	v0,2fc <BgJyaKanaami_Update+0x24>
 2e8:	848e0030 	lh	t6,48(a0)
 2ec:	0040f809 	jalr	v0
 2f0:	afa40018 	sw	a0,24(sp)
 2f4:	8fa40018 	lw	a0,24(sp)
 2f8:	848e0030 	lh	t6,48(a0)
 2fc:	a48e00b4 	sh	t6,180(a0)
 300:	8fbf0014 	lw	ra,20(sp)
 304:	27bd0018 	addiu	sp,sp,24
 308:	03e00008 	jr	ra
 30c:	00000000 	nop

00000310 <BgJyaKanaami_Draw>:
 310:	27bdffe8 	addiu	sp,sp,-24
 314:	afa40018 	sw	a0,24(sp)
 318:	00a02025 	move	a0,a1
 31c:	afbf0014 	sw	ra,20(sp)
 320:	3c050000 	lui	a1,0x0
 324:	0c000000 	jal	0 <func_80899740>
 328:	24a50000 	addiu	a1,a1,0
 32c:	8fbf0014 	lw	ra,20(sp)
 330:	27bd0018 	addiu	sp,sp,24
 334:	03e00008 	jr	ra
 338:	00000000 	nop
 33c:	00000000 	nop
