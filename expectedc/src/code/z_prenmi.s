
build/src/code/z_prenmi.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <func_80092320>:
   0:	ac800098 	sw	zero,152(a0)
   4:	ac80000c 	sw	zero,12(a0)
   8:	03e00008 	jr	ra
   c:	ac800010 	sw	zero,16(a0)

00000010 <PreNMI_Update>:
  10:	27bdffe8 	addiu	sp,sp,-24
  14:	afa40018 	sw	a0,24(sp)
  18:	afbf0014 	sw	ra,20(sp)
  1c:	3c040000 	lui	a0,0x0
  20:	0c000000 	jal	0 <func_80092320>
  24:	24840000 	addiu	a0,a0,0
  28:	8fa50018 	lw	a1,24(sp)
  2c:	8ca200a4 	lw	v0,164(a1)
  30:	14400007 	bnez	v0,50 <PreNMI_Update+0x40>
  34:	244effff 	addiu	t6,v0,-1
  38:	0c000000 	jal	0 <func_80092320>
  3c:	24040001 	li	a0,1
  40:	0c000000 	jal	0 <func_80092320>
  44:	8fa40018 	lw	a0,24(sp)
  48:	10000003 	b	58 <PreNMI_Update+0x48>
  4c:	8fbf0014 	lw	ra,20(sp)
  50:	acae00a4 	sw	t6,164(a1)
  54:	8fbf0014 	lw	ra,20(sp)
  58:	27bd0018 	addiu	sp,sp,24
  5c:	03e00008 	jr	ra
  60:	00000000 	nop

00000064 <PreNMI_Draw>:
  64:	27bdffb8 	addiu	sp,sp,-72
  68:	afbf001c 	sw	ra,28(sp)
  6c:	afb00018 	sw	s0,24(sp)
  70:	afa40048 	sw	a0,72(sp)
  74:	8c900000 	lw	s0,0(a0)
  78:	3c040000 	lui	a0,0x0
  7c:	0c000000 	jal	0 <func_80092320>
  80:	2484003c 	addiu	a0,a0,60
  84:	3c060000 	lui	a2,0x0
  88:	24c60054 	addiu	a2,a2,84
  8c:	27a40030 	addiu	a0,sp,48
  90:	02002825 	move	a1,s0
  94:	0c000000 	jal	0 <func_80092320>
  98:	24070060 	li	a3,96
  9c:	8e0202c0 	lw	v0,704(s0)
  a0:	3c18db06 	lui	t8,0xdb06
  a4:	02002025 	move	a0,s0
  a8:	244f0008 	addiu	t7,v0,8
  ac:	ae0f02c0 	sw	t7,704(s0)
  b0:	00002825 	move	a1,zero
  b4:	00003025 	move	a2,zero
  b8:	00003825 	move	a3,zero
  bc:	ac400004 	sw	zero,4(v0)
  c0:	0c000000 	jal	0 <func_80092320>
  c4:	ac580000 	sw	t8,0(v0)
  c8:	0c000000 	jal	0 <func_80092320>
  cc:	02002025 	move	a0,s0
  d0:	8e0202c0 	lw	v0,704(s0)
  d4:	3c08f700 	lui	t0,0xf700
  d8:	2409ffff 	li	t1,-1
  dc:	24590008 	addiu	t9,v0,8
  e0:	ae1902c0 	sw	t9,704(s0)
  e4:	ac490004 	sw	t1,4(v0)
  e8:	ac480000 	sw	t0,0(v0)
  ec:	8e0202c0 	lw	v0,704(s0)
  f0:	8fa40048 	lw	a0,72(sp)
  f4:	3c01f64f 	lui	at,0xf64f
  f8:	244a0008 	addiu	t2,v0,8
  fc:	ae0a02c0 	sw	t2,704(s0)
 100:	8c8b00a4 	lw	t3,164(a0)
 104:	3421c000 	ori	at,at,0xc000
 108:	3c060000 	lui	a2,0x0
 10c:	256c0064 	addiu	t4,t3,100
 110:	318d03ff 	andi	t5,t4,0x3ff
 114:	000d7080 	sll	t6,t5,0x2
 118:	01c17825 	or	t7,t6,at
 11c:	ac4f0000 	sw	t7,0(v0)
 120:	8c9800a4 	lw	t8,164(a0)
 124:	27a40030 	addiu	a0,sp,48
 128:	24c60064 	addiu	a2,a2,100
 12c:	27190064 	addiu	t9,t8,100
 130:	332803ff 	andi	t0,t9,0x3ff
 134:	00084880 	sll	t1,t0,0x2
 138:	02002825 	move	a1,s0
 13c:	24070070 	li	a3,112
 140:	0c000000 	jal	0 <func_80092320>
 144:	ac490004 	sw	t1,4(v0)
 148:	8fbf001c 	lw	ra,28(sp)
 14c:	8fb00018 	lw	s0,24(sp)
 150:	27bd0048 	addiu	sp,sp,72
 154:	03e00008 	jr	ra
 158:	00000000 	nop

0000015c <PreNMI_Main>:
 15c:	27bdffe8 	addiu	sp,sp,-24
 160:	afbf0014 	sw	ra,20(sp)
 164:	0c000000 	jal	0 <func_80092320>
 168:	afa40018 	sw	a0,24(sp)
 16c:	0c000000 	jal	0 <func_80092320>
 170:	8fa40018 	lw	a0,24(sp)
 174:	8faf0018 	lw	t7,24(sp)
 178:	240e0001 	li	t6,1
 17c:	adee00a0 	sw	t6,160(t7)
 180:	8fbf0014 	lw	ra,20(sp)
 184:	27bd0018 	addiu	sp,sp,24
 188:	03e00008 	jr	ra
 18c:	00000000 	nop

00000190 <PreNMI_Destroy>:
 190:	03e00008 	jr	ra
 194:	afa40000 	sw	a0,0(sp)

00000198 <PreNMI_Init>:
 198:	3c0e0000 	lui	t6,0x0
 19c:	3c0f0000 	lui	t7,0x0
 1a0:	25ce0000 	addiu	t6,t6,0
 1a4:	25ef0000 	addiu	t7,t7,0
 1a8:	2418001e 	li	t8,30
 1ac:	2419000a 	li	t9,10
 1b0:	ac8e0004 	sw	t6,4(a0)
 1b4:	ac8f0008 	sw	t7,8(a0)
 1b8:	ac9800a4 	sw	t8,164(a0)
 1bc:	ac9900a8 	sw	t9,168(a0)
 1c0:	3c090000 	lui	t1,0x0
 1c4:	8d290000 	lw	t1,0(t1)
 1c8:	24080001 	li	t0,1
 1cc:	03e00008 	jr	ra
 1d0:	a5280110 	sh	t0,272(t1)
	...
