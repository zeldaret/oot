
build/src/overlays/actors/ovl_En_M_Fire1/z_en_m_fire1.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <EnMFire1_Init>:
   0:	27bdffd8 	addiu	sp,sp,-40
   4:	afbf0014 	sw	ra,20(sp)
   8:	afa5002c 	sw	a1,44(sp)
   c:	848e001c 	lh	t6,28(a0)
  10:	00803025 	move	a2,a0
  14:	00a02025 	move	a0,a1
  18:	05c10005 	bgez	t6,30 <EnMFire1_Init+0x30>
  1c:	24a51c24 	addiu	a1,a1,7204
  20:	24070007 	li	a3,7
  24:	0c000000 	jal	0 <EnMFire1_Init>
  28:	afa60028 	sw	a2,40(sp)
  2c:	8fa60028 	lw	a2,40(sp)
  30:	24c5014c 	addiu	a1,a2,332
  34:	afa5001c 	sw	a1,28(sp)
  38:	8fa4002c 	lw	a0,44(sp)
  3c:	0c000000 	jal	0 <EnMFire1_Init>
  40:	afa60028 	sw	a2,40(sp)
  44:	3c070000 	lui	a3,0x0
  48:	8fa5001c 	lw	a1,28(sp)
  4c:	8fa60028 	lw	a2,40(sp)
  50:	24e70020 	addiu	a3,a3,32
  54:	0c000000 	jal	0 <EnMFire1_Init>
  58:	8fa4002c 	lw	a0,44(sp)
  5c:	8fbf0014 	lw	ra,20(sp)
  60:	27bd0028 	addiu	sp,sp,40
  64:	03e00008 	jr	ra
  68:	00000000 	nop

0000006c <EnMFire1_Destroy>:
  6c:	27bdffe8 	addiu	sp,sp,-24
  70:	00803025 	move	a2,a0
  74:	afbf0014 	sw	ra,20(sp)
  78:	00a02025 	move	a0,a1
  7c:	0c000000 	jal	0 <EnMFire1_Init>
  80:	24c5014c 	addiu	a1,a2,332
  84:	8fbf0014 	lw	ra,20(sp)
  88:	27bd0018 	addiu	sp,sp,24
  8c:	03e00008 	jr	ra
  90:	00000000 	nop

00000094 <EnMFire1_Update>:
  94:	27bdffd8 	addiu	sp,sp,-40
  98:	afbf0014 	sw	ra,20(sp)
  9c:	afa5002c 	sw	a1,44(sp)
  a0:	00803825 	move	a3,a0
  a4:	3c063e4c 	lui	a2,0x3e4c
  a8:	34c6cccd 	ori	a2,a2,0xcccd
  ac:	afa70028 	sw	a3,40(sp)
  b0:	24840198 	addiu	a0,a0,408
  b4:	0c000000 	jal	0 <EnMFire1_Init>
  b8:	3c053f80 	lui	a1,0x3f80
  bc:	10400005 	beqz	v0,d4 <EnMFire1_Update+0x40>
  c0:	8fa70028 	lw	a3,40(sp)
  c4:	0c000000 	jal	0 <EnMFire1_Init>
  c8:	00e02025 	move	a0,a3
  cc:	1000000e 	b	108 <EnMFire1_Update+0x74>
  d0:	8fbf0014 	lw	ra,20(sp)
  d4:	24e6014c 	addiu	a2,a3,332
  d8:	00c02825 	move	a1,a2
  dc:	afa6001c 	sw	a2,28(sp)
  e0:	00e02025 	move	a0,a3
  e4:	0c000000 	jal	0 <EnMFire1_Init>
  e8:	afa70028 	sw	a3,40(sp)
  ec:	8fa4002c 	lw	a0,44(sp)
  f0:	3c010001 	lui	at,0x1
  f4:	34211e60 	ori	at,at,0x1e60
  f8:	8fa6001c 	lw	a2,28(sp)
  fc:	0c000000 	jal	0 <EnMFire1_Init>
 100:	00812821 	addu	a1,a0,at
 104:	8fbf0014 	lw	ra,20(sp)
 108:	27bd0028 	addiu	sp,sp,40
 10c:	03e00008 	jr	ra
 110:	00000000 	nop
	...
