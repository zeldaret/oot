
build/src/overlays/effects/ovl_Effect_Ss_Dead_Sound/z_eff_ss_dead_sound.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <EffectSsDeadSound_Init>:
   0:	27bdffe8 	addiu	sp,sp,-24
   4:	afbf0014 	sw	ra,20(sp)
   8:	afa40018 	sw	a0,24(sp)
   c:	afa5001c 	sw	a1,28(sp)
  10:	8cef0000 	lw	t7,0(a3)
  14:	240a0002 	li	t2,2
  18:	3c0c0000 	lui	t4,0x0
  1c:	accf0000 	sw	t7,0(a2)
  20:	8cee0004 	lw	t6,4(a3)
  24:	258c0000 	addiu	t4,t4,0
  28:	3c040000 	lui	a0,0x0
  2c:	acce0004 	sw	t6,4(a2)
  30:	8cef0008 	lw	t7,8(a3)
  34:	24840000 	addiu	a0,a0,0
  38:	accf0008 	sw	t7,8(a2)
  3c:	8cf9000c 	lw	t9,12(a3)
  40:	acd9000c 	sw	t9,12(a2)
  44:	8cf80010 	lw	t8,16(a3)
  48:	acd80010 	sw	t8,16(a2)
  4c:	8cf90014 	lw	t9,20(a3)
  50:	acd90014 	sw	t9,20(a2)
  54:	8ce90018 	lw	t1,24(a3)
  58:	acc90018 	sw	t1,24(a2)
  5c:	8ce8001c 	lw	t0,28(a3)
  60:	acc8001c 	sw	t0,28(a2)
  64:	8ce90020 	lw	t1,32(a3)
  68:	a4ca005a 	sh	t2,90(a2)
  6c:	acc90020 	sw	t1,32(a2)
  70:	8ceb002c 	lw	t3,44(a3)
  74:	acc00028 	sw	zero,40(a2)
  78:	accc0024 	sw	t4,36(a2)
  7c:	a4cb005c 	sh	t3,92(a2)
  80:	84ed0028 	lh	t5,40(a3)
  84:	a4cd0056 	sh	t5,86(a2)
  88:	94ee0024 	lhu	t6,36(a3)
  8c:	0c000000 	jal	0 <EffectSsDeadSound_Init>
  90:	a4ce0054 	sh	t6,84(a2)
  94:	8fbf0014 	lw	ra,20(sp)
  98:	27bd0018 	addiu	sp,sp,24
  9c:	24020001 	li	v0,1
  a0:	03e00008 	jr	ra
  a4:	00000000 	nop

000000a8 <EffectSsDeadSound_Update>:
  a8:	27bdffe0 	addiu	sp,sp,-32
  ac:	afbf001c 	sw	ra,28(sp)
  b0:	afa40020 	sw	a0,32(sp)
  b4:	afa50024 	sw	a1,36(sp)
  b8:	84c30056 	lh	v1,86(a2)
  bc:	24010001 	li	at,1
  c0:	00c02825 	move	a1,a2
  c4:	10610006 	beq	v1,at,e0 <EffectSsDeadSound_Update+0x38>
  c8:	00601025 	move	v0,v1
  cc:	24010002 	li	at,2
  d0:	10410005 	beq	v0,at,e8 <EffectSsDeadSound_Update+0x40>
  d4:	00000000 	nop
  d8:	1000000d 	b	110 <EffectSsDeadSound_Update+0x68>
  dc:	8fbf001c 	lw	ra,28(sp)
  e0:	246effff 	addiu	t6,v1,-1
  e4:	a4ae0056 	sh	t6,86(a1)
  e8:	3c070000 	lui	a3,0x0
  ec:	3c0f0000 	lui	t7,0x0
  f0:	24e70000 	addiu	a3,a3,0
  f4:	25ef0000 	addiu	t7,t7,0
  f8:	94a40054 	lhu	a0,84(a1)
  fc:	afaf0014 	sw	t7,20(sp)
 100:	afa70010 	sw	a3,16(sp)
 104:	0c000000 	jal	0 <EffectSsDeadSound_Init>
 108:	24060004 	li	a2,4
 10c:	8fbf001c 	lw	ra,28(sp)
 110:	27bd0020 	addiu	sp,sp,32
 114:	03e00008 	jr	ra
 118:	00000000 	nop
 11c:	00000000 	nop
