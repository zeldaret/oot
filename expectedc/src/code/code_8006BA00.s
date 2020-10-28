
build/src/code/code_8006BA00.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <func_8006BA00>:
   0:	24831db4 	addiu	v1,a0,7604
   4:	24040010 	li	a0,16
   8:	00001025 	move	v0,zero
   c:	24420004 	addiu	v0,v0,4
  10:	a4600000 	sh	zero,0(v1)
  14:	a460001c 	sh	zero,28(v1)
  18:	a4600038 	sh	zero,56(v1)
  1c:	a4600054 	sh	zero,84(v1)
  20:	1444fffa 	bne	v0,a0,c <func_8006BA00+0xc>
  24:	24630070 	addiu	v1,v1,112
  28:	03e00008 	jr	ra
  2c:	00000000 	nop

00000030 <func_8006BA30>:
  30:	27bdffd0 	addiu	sp,sp,-48
  34:	afb40028 	sw	s4,40(sp)
  38:	afb30024 	sw	s3,36(sp)
  3c:	afb20020 	sw	s2,32(sp)
  40:	afb1001c 	sw	s1,28(sp)
  44:	afb00018 	sw	s0,24(sp)
  48:	3c140001 	lui	s4,0x1
  4c:	00809025 	move	s2,a0
  50:	afbf002c 	sw	ra,44(sp)
  54:	24901db4 	addiu	s0,a0,7604
  58:	36941d60 	ori	s4,s4,0x1d60
  5c:	00008825 	move	s1,zero
  60:	24130010 	li	s3,16
  64:	96020000 	lhu	v0,0(s0)
  68:	50400011 	beqzl	v0,b0 <func_8006BA30+0x80>
  6c:	26310001 	addiu	s1,s1,1
  70:	14400003 	bnez	v0,80 <func_8006BA30+0x50>
  74:	244effff 	addiu	t6,v0,-1
  78:	10000003 	b	88 <func_8006BA30+0x58>
  7c:	00001825 	move	v1,zero
  80:	a60e0000 	sh	t6,0(s0)
  84:	31c3ffff 	andi	v1,t6,0xffff
  88:	14600005 	bnez	v1,a0 <func_8006BA30+0x70>
  8c:	02542021 	addu	a0,s2,s4
  90:	0c000000 	jal	0 <func_8006BA00>
  94:	26040010 	addiu	a0,s0,16
  98:	10000005 	b	b0 <func_8006BA30+0x80>
  9c:	26310001 	addiu	s1,s1,1
  a0:	26050004 	addiu	a1,s0,4
  a4:	0c000000 	jal	0 <func_8006BA00>
  a8:	26060010 	addiu	a2,s0,16
  ac:	26310001 	addiu	s1,s1,1
  b0:	1633ffec 	bne	s1,s3,64 <func_8006BA30+0x34>
  b4:	2610001c 	addiu	s0,s0,28
  b8:	8fbf002c 	lw	ra,44(sp)
  bc:	8fb00018 	lw	s0,24(sp)
  c0:	8fb1001c 	lw	s1,28(sp)
  c4:	8fb20020 	lw	s2,32(sp)
  c8:	8fb30024 	lw	s3,36(sp)
  cc:	8fb40028 	lw	s4,40(sp)
  d0:	03e00008 	jr	ra
  d4:	27bd0030 	addiu	sp,sp,48

000000d8 <Audio_PlaySoundAtPosition>:
  d8:	27bdffc8 	addiu	sp,sp,-56
  dc:	afa40038 	sw	a0,56(sp)
  e0:	afa5003c 	sw	a1,60(sp)
  e4:	24881db4 	addiu	t0,a0,7604
  e8:	afbf001c 	sw	ra,28(sp)
  ec:	afa60040 	sw	a2,64(sp)
  f0:	afa70044 	sw	a3,68(sp)
  f4:	340affff 	li	t2,0xffff
  f8:	24040010 	li	a0,16
  fc:	8fa50028 	lw	a1,40(sp)
 100:	00004825 	move	t1,zero
 104:	95020000 	lhu	v0,0(t0)
 108:	10400007 	beqz	v0,128 <Audio_PlaySoundAtPosition+0x50>
 10c:	004a082a 	slt	at,v0,t2
 110:	10200003 	beqz	at,120 <Audio_PlaySoundAtPosition+0x48>
 114:	25290001 	addiu	t1,t1,1
 118:	00405025 	move	t2,v0
 11c:	01002825 	move	a1,t0
 120:	1524fff8 	bne	t1,a0,104 <Audio_PlaySoundAtPosition+0x2c>
 124:	2508001c 	addiu	t0,t0,28
 128:	29210010 	slti	at,t1,16
 12c:	14200004 	bnez	at,140 <Audio_PlaySoundAtPosition+0x68>
 130:	24a40010 	addiu	a0,a1,16
 134:	0c000000 	jal	0 <func_8006BA00>
 138:	afa50030 	sw	a1,48(sp)
 13c:	8fa80030 	lw	t0,48(sp)
 140:	8fae003c 	lw	t6,60(sp)
 144:	25050004 	addiu	a1,t0,4
 148:	3c010001 	lui	at,0x1
 14c:	8dd80000 	lw	t8,0(t6)
 150:	34211d60 	ori	at,at,0x1d60
 154:	25060010 	addiu	a2,t0,16
 158:	acb80000 	sw	t8,0(a1)
 15c:	8dcf0004 	lw	t7,4(t6)
 160:	acaf0004 	sw	t7,4(a1)
 164:	8dd80008 	lw	t8,8(t6)
 168:	acb80008 	sw	t8,8(a1)
 16c:	8fb90040 	lw	t9,64(sp)
 170:	a5190000 	sh	t9,0(t0)
 174:	8fa40038 	lw	a0,56(sp)
 178:	afa60020 	sw	a2,32(sp)
 17c:	0c000000 	jal	0 <func_8006BA00>
 180:	00812021 	addu	a0,a0,at
 184:	3c070000 	lui	a3,0x0
 188:	3c0b0000 	lui	t3,0x0
 18c:	24e70000 	addiu	a3,a3,0
 190:	256b0000 	addiu	t3,t3,0
 194:	afab0014 	sw	t3,20(sp)
 198:	afa70010 	sw	a3,16(sp)
 19c:	97a40046 	lhu	a0,70(sp)
 1a0:	8fa50020 	lw	a1,32(sp)
 1a4:	0c000000 	jal	0 <func_8006BA00>
 1a8:	24060004 	li	a2,4
 1ac:	8fbf001c 	lw	ra,28(sp)
 1b0:	27bd0038 	addiu	sp,sp,56
 1b4:	03e00008 	jr	ra
 1b8:	00000000 	nop
 1bc:	00000000 	nop
