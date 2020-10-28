
build/src/overlays/effects/ovl_Effect_Ss_G_Magma/z_eff_ss_g_magma.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <EffectSsGMagma_Init>:
   0:	27bdffc8 	addiu	sp,sp,-56
   4:	3c0e0000 	lui	t6,0x0
   8:	afbf0014 	sw	ra,20(sp)
   c:	afa40038 	sw	a0,56(sp)
  10:	afa5003c 	sw	a1,60(sp)
  14:	25ce0008 	addiu	t6,t6,8
  18:	8dd80000 	lw	t8,0(t6)
  1c:	27a40028 	addiu	a0,sp,40
  20:	27a3001c 	addiu	v1,sp,28
  24:	ac980000 	sw	t8,0(a0)
  28:	8dcf0004 	lw	t7,4(t6)
  2c:	8c880000 	lw	t0,0(a0)
  30:	3c020000 	lui	v0,0x0
  34:	ac8f0004 	sw	t7,4(a0)
  38:	8dd80008 	lw	t8,8(t6)
  3c:	ac680000 	sw	t0,0(v1)
  40:	8c6a0000 	lw	t2,0(v1)
  44:	ac6f0004 	sw	t7,4(v1)
  48:	ac980008 	sw	t8,8(a0)
  4c:	ac780008 	sw	t8,8(v1)
  50:	acca0018 	sw	t2,24(a2)
  54:	8c690004 	lw	t1,4(v1)
  58:	24420000 	addiu	v0,v0,0
  5c:	0002c900 	sll	t9,v0,0x4
  60:	acc9001c 	sw	t1,28(a2)
  64:	8c6a0008 	lw	t2,8(v1)
  68:	3c0f0000 	lui	t7,0x0
  6c:	3c180000 	lui	t8,0x0
  70:	acca0020 	sw	t2,32(a2)
  74:	8c6c0000 	lw	t4,0(v1)
  78:	00194702 	srl	t0,t9,0x1c
  7c:	25ef0000 	addiu	t7,t7,0
  80:	accc000c 	sw	t4,12(a2)
  84:	8c6b0004 	lw	t3,4(v1)
  88:	27180000 	addiu	t8,t8,0
  8c:	00084880 	sll	t1,t0,0x2
  90:	accb0010 	sw	t3,16(a2)
  94:	8c6c0008 	lw	t4,8(v1)
  98:	3c0a0000 	lui	t2,0x0
  9c:	01495021 	addu	t2,t2,t1
  a0:	accc0014 	sw	t4,20(a2)
  a4:	8cee0000 	lw	t6,0(a3)
  a8:	3c0100ff 	lui	at,0xff
  ac:	3421ffff 	ori	at,at,0xffff
  b0:	acce0000 	sw	t6,0(a2)
  b4:	8ced0004 	lw	t5,4(a3)
  b8:	00415824 	and	t3,v0,at
  bc:	3c018000 	lui	at,0x8000
  c0:	accd0004 	sw	t5,4(a2)
  c4:	8cee0008 	lw	t6,8(a3)
  c8:	accf0028 	sw	t7,40(a2)
  cc:	acd80024 	sw	t8,36(a2)
  d0:	acce0008 	sw	t6,8(a2)
  d4:	8d4a0000 	lw	t2,0(t2)
  d8:	240e0010 	li	t6,16
  dc:	a4ce005c 	sh	t6,92(a2)
  e0:	014b6021 	addu	t4,t2,t3
  e4:	01816821 	addu	t5,t4,at
  e8:	accd0038 	sw	t5,56(a2)
  ec:	0c000000 	jal	0 <EffectSsGMagma_Init>
  f0:	afa60040 	sw	a2,64(sp)
  f4:	3c0142c8 	lui	at,0x42c8
  f8:	44812000 	mtc1	at,$f4
  fc:	8fa60040 	lw	a2,64(sp)
 100:	240300ff 	li	v1,255
 104:	46040182 	mul.s	$f6,$f0,$f4
 108:	240a0032 	li	t2,50
 10c:	a4c00040 	sh	zero,64(a2)
 110:	a4ca0044 	sh	t2,68(a2)
 114:	a4c30046 	sh	v1,70(a2)
 118:	a4c30048 	sh	v1,72(a2)
 11c:	a4c0004a 	sh	zero,74(a2)
 120:	4600320d 	trunc.w.s	$f8,$f6
 124:	a4c3004c 	sh	v1,76(a2)
 128:	a4c3004e 	sh	v1,78(a2)
 12c:	a4c00050 	sh	zero,80(a2)
 130:	44084000 	mfc1	t0,$f8
 134:	a4c00052 	sh	zero,82(a2)
 138:	a4c00054 	sh	zero,84(a2)
 13c:	250900c8 	addiu	t1,t0,200
 140:	a4c90042 	sh	t1,66(a2)
 144:	8fbf0014 	lw	ra,20(sp)
 148:	27bd0038 	addiu	sp,sp,56
 14c:	24020001 	li	v0,1
 150:	03e00008 	jr	ra
 154:	00000000 	nop

00000158 <EffectSsGMagma_Draw>:
 158:	27bdffe8 	addiu	sp,sp,-24
 15c:	afbf0014 	sw	ra,20(sp)
 160:	afa5001c 	sw	a1,28(sp)
 164:	84c20040 	lh	v0,64(a2)
 168:	24010064 	li	at,100
 16c:	00c02825 	move	a1,a2
 170:	0041001a 	div	zero,v0,at
 174:	00001012 	mflo	v0
 178:	00021400 	sll	v0,v0,0x10
 17c:	00021403 	sra	v0,v0,0x10
 180:	28410008 	slti	at,v0,8
 184:	14200002 	bnez	at,190 <EffectSsGMagma_Draw+0x38>
 188:	3c060000 	lui	a2,0x0
 18c:	24020007 	li	v0,7
 190:	00027080 	sll	t6,v0,0x2
 194:	00ce3021 	addu	a2,a2,t6
 198:	0c000000 	jal	0 <EffectSsGMagma_Init>
 19c:	8cc60014 	lw	a2,20(a2)
 1a0:	8fbf0014 	lw	ra,20(sp)
 1a4:	27bd0018 	addiu	sp,sp,24
 1a8:	03e00008 	jr	ra
 1ac:	00000000 	nop

000001b0 <EffectSsGMagma_Update>:
 1b0:	afa40000 	sw	a0,0(sp)
 1b4:	afa50004 	sw	a1,4(sp)
 1b8:	84ce0040 	lh	t6,64(a2)
 1bc:	84cf0044 	lh	t7,68(a2)
 1c0:	01cfc021 	addu	t8,t6,t7
 1c4:	03e00008 	jr	ra
 1c8:	a4d80040 	sh	t8,64(a2)
 1cc:	00000000 	nop
