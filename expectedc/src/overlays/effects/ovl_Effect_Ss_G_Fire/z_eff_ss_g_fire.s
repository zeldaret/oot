
build/src/overlays/effects/ovl_Effect_Ss_G_Fire/z_eff_ss_g_fire.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <EffectSsGFire_Init>:
   0:	27bdffe0 	addiu	sp,sp,-32
   4:	3c0e0000 	lui	t6,0x0
   8:	afa40020 	sw	a0,32(sp)
   c:	afa50024 	sw	a1,36(sp)
  10:	25ce0008 	addiu	t6,t6,8
  14:	8dd80000 	lw	t8,0(t6)
  18:	27a30010 	addiu	v1,sp,16
  1c:	27a40004 	addiu	a0,sp,4
  20:	ac780000 	sw	t8,0(v1)
  24:	8dcf0004 	lw	t7,4(t6)
  28:	8c680000 	lw	t0,0(v1)
  2c:	3c020000 	lui	v0,0x0
  30:	ac6f0004 	sw	t7,4(v1)
  34:	8dd80008 	lw	t8,8(t6)
  38:	ac880000 	sw	t0,0(a0)
  3c:	8c8a0000 	lw	t2,0(a0)
  40:	ac8f0004 	sw	t7,4(a0)
  44:	ac780008 	sw	t8,8(v1)
  48:	ac980008 	sw	t8,8(a0)
  4c:	acca0018 	sw	t2,24(a2)
  50:	8c890004 	lw	t1,4(a0)
  54:	24420000 	addiu	v0,v0,0
  58:	0002c900 	sll	t9,v0,0x4
  5c:	acc9001c 	sw	t1,28(a2)
  60:	8c8a0008 	lw	t2,8(a0)
  64:	3c0f0000 	lui	t7,0x0
  68:	3c180000 	lui	t8,0x0
  6c:	acca0020 	sw	t2,32(a2)
  70:	8c8c0000 	lw	t4,0(a0)
  74:	00194702 	srl	t0,t9,0x1c
  78:	25ef0000 	addiu	t7,t7,0
  7c:	accc000c 	sw	t4,12(a2)
  80:	8c8b0004 	lw	t3,4(a0)
  84:	27180000 	addiu	t8,t8,0
  88:	00084880 	sll	t1,t0,0x2
  8c:	accb0010 	sw	t3,16(a2)
  90:	8c8c0008 	lw	t4,8(a0)
  94:	3c0a0000 	lui	t2,0x0
  98:	01495021 	addu	t2,t2,t1
  9c:	accc0014 	sw	t4,20(a2)
  a0:	8cee0000 	lw	t6,0(a3)
  a4:	3c0100ff 	lui	at,0xff
  a8:	3421ffff 	ori	at,at,0xffff
  ac:	acce0000 	sw	t6,0(a2)
  b0:	8ced0004 	lw	t5,4(a3)
  b4:	00415824 	and	t3,v0,at
  b8:	3c018000 	lui	at,0x8000
  bc:	accd0004 	sw	t5,4(a2)
  c0:	8cee0008 	lw	t6,8(a3)
  c4:	accf0028 	sw	t7,40(a2)
  c8:	acd80024 	sw	t8,36(a2)
  cc:	acce0008 	sw	t6,8(a2)
  d0:	8d4a0000 	lw	t2,0(t2)
  d4:	240500ff 	li	a1,255
  d8:	240e0008 	li	t6,8
  dc:	014b6021 	addu	t4,t2,t3
  e0:	01816821 	addu	t5,t4,at
  e4:	240f00c8 	li	t7,200
  e8:	24180032 	li	t8,50
  ec:	241900dc 	li	t9,220
  f0:	24080050 	li	t0,80
  f4:	24090082 	li	t1,130
  f8:	240a001e 	li	t2,30
  fc:	accd0038 	sw	t5,56(a2)
 100:	a4ce005c 	sh	t6,92(a2)
 104:	a4c0005a 	sh	zero,90(a2)
 108:	a4cf0042 	sh	t7,66(a2)
 10c:	a4c00040 	sh	zero,64(a2)
 110:	a4d80044 	sh	t8,68(a2)
 114:	a4c50046 	sh	a1,70(a2)
 118:	a4d90048 	sh	t9,72(a2)
 11c:	a4c8004a 	sh	t0,74(a2)
 120:	a4c5004c 	sh	a1,76(a2)
 124:	a4c9004e 	sh	t1,78(a2)
 128:	a4ca0050 	sh	t2,80(a2)
 12c:	a4c00052 	sh	zero,82(a2)
 130:	a4c00054 	sh	zero,84(a2)
 134:	27bd0020 	addiu	sp,sp,32
 138:	03e00008 	jr	ra
 13c:	24020001 	li	v0,1

00000140 <EffectSsGFire_Draw>:
 140:	27bdffc0 	addiu	sp,sp,-64
 144:	3c0e0000 	lui	t6,0x0
 148:	afbf0014 	sw	ra,20(sp)
 14c:	afa50044 	sw	a1,68(sp)
 150:	25ce0014 	addiu	t6,t6,20
 154:	8dd80000 	lw	t8,0(t6)
 158:	27a30020 	addiu	v1,sp,32
 15c:	24010064 	li	at,100
 160:	ac780000 	sw	t8,0(v1)
 164:	8dcf0004 	lw	t7,4(t6)
 168:	00c02825 	move	a1,a2
 16c:	ac6f0004 	sw	t7,4(v1)
 170:	8dd80008 	lw	t8,8(t6)
 174:	ac780008 	sw	t8,8(v1)
 178:	8dcf000c 	lw	t7,12(t6)
 17c:	ac6f000c 	sw	t7,12(v1)
 180:	8dd80010 	lw	t8,16(t6)
 184:	ac780010 	sw	t8,16(v1)
 188:	8dcf0014 	lw	t7,20(t6)
 18c:	ac6f0014 	sw	t7,20(v1)
 190:	8dd80018 	lw	t8,24(t6)
 194:	ac780018 	sw	t8,24(v1)
 198:	8dcf001c 	lw	t7,28(t6)
 19c:	ac6f001c 	sw	t7,28(v1)
 1a0:	84c20040 	lh	v0,64(a2)
 1a4:	0041001a 	div	zero,v0,at
 1a8:	00001012 	mflo	v0
 1ac:	24010007 	li	at,7
 1b0:	00000000 	nop
 1b4:	0041001a 	div	zero,v0,at
 1b8:	00001010 	mfhi	v0
 1bc:	00021400 	sll	v0,v0,0x10
 1c0:	00021403 	sra	v0,v0,0x10
 1c4:	0002c880 	sll	t9,v0,0x2
 1c8:	00794021 	addu	t0,v1,t9
 1cc:	0c000000 	jal	0 <EffectSsGFire_Init>
 1d0:	8d060000 	lw	a2,0(t0)
 1d4:	8fbf0014 	lw	ra,20(sp)
 1d8:	27bd0040 	addiu	sp,sp,64
 1dc:	03e00008 	jr	ra
 1e0:	00000000 	nop

000001e4 <EffectSsGFire_Update>:
 1e4:	afa40000 	sw	a0,0(sp)
 1e8:	afa50004 	sw	a1,4(sp)
 1ec:	84ce0040 	lh	t6,64(a2)
 1f0:	84cf0044 	lh	t7,68(a2)
 1f4:	01cfc021 	addu	t8,t6,t7
 1f8:	03e00008 	jr	ra
 1fc:	a4d80040 	sh	t8,64(a2)
