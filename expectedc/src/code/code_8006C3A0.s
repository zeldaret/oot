
build/src/code/code_8006C3A0.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <Flags_UnsetAllEnv>:
   0:	00001025 	move	v0,zero
   4:	3c030001 	lui	v1,0x1
   8:	00027040 	sll	t6,v0,0x1
   c:	24420001 	addiu	v0,v0,1
  10:	304200ff 	andi	v0,v0,0xff
  14:	008e7821 	addu	t7,a0,t6
  18:	28410014 	slti	at,v0,20
  1c:	01e3c021 	addu	t8,t7,v1
  20:	1420fff9 	bnez	at,8 <Flags_UnsetAllEnv+0x8>
  24:	a70020fc 	sh	zero,8444(t8)
  28:	03e00008 	jr	ra
  2c:	00000000 	nop

00000030 <Flags_SetEnv>:
  30:	afa50004 	sw	a1,4(sp)
  34:	00052c00 	sll	a1,a1,0x10
  38:	00052c03 	sra	a1,a1,0x10
  3c:	04a10003 	bgez	a1,4c <Flags_SetEnv+0x1c>
  40:	00057103 	sra	t6,a1,0x4
  44:	24a1000f 	addiu	at,a1,15
  48:	00017103 	sra	t6,at,0x4
  4c:	000e7c00 	sll	t7,t6,0x10
  50:	000fc403 	sra	t8,t7,0x10
  54:	0018c840 	sll	t9,t8,0x1
  58:	00991021 	addu	v0,a0,t9
  5c:	3c010001 	lui	at,0x1
  60:	00411021 	addu	v0,v0,at
  64:	944820fc 	lhu	t0,8444(v0)
  68:	04a10004 	bgez	a1,7c <Flags_SetEnv+0x4c>
  6c:	30a9000f 	andi	t1,a1,0xf
  70:	11200002 	beqz	t1,7c <Flags_SetEnv+0x4c>
  74:	00000000 	nop
  78:	2529fff0 	addiu	t1,t1,-16
  7c:	00095400 	sll	t2,t1,0x10
  80:	000a5c03 	sra	t3,t2,0x10
  84:	240c0001 	li	t4,1
  88:	016c7804 	sllv	t7,t4,t3
  8c:	010fc025 	or	t8,t0,t7
  90:	03e00008 	jr	ra
  94:	a45820fc 	sh	t8,8444(v0)

00000098 <Flags_UnsetEnv>:
  98:	afa50004 	sw	a1,4(sp)
  9c:	00052c00 	sll	a1,a1,0x10
  a0:	00052c03 	sra	a1,a1,0x10
  a4:	04a10003 	bgez	a1,b4 <Flags_UnsetEnv+0x1c>
  a8:	00057103 	sra	t6,a1,0x4
  ac:	24a1000f 	addiu	at,a1,15
  b0:	00017103 	sra	t6,at,0x4
  b4:	000e7c00 	sll	t7,t6,0x10
  b8:	000fc403 	sra	t8,t7,0x10
  bc:	0018c840 	sll	t9,t8,0x1
  c0:	00991021 	addu	v0,a0,t9
  c4:	3c010001 	lui	at,0x1
  c8:	00411021 	addu	v0,v0,at
  cc:	944820fc 	lhu	t0,8444(v0)
  d0:	04a10004 	bgez	a1,e4 <Flags_UnsetEnv+0x4c>
  d4:	30a9000f 	andi	t1,a1,0xf
  d8:	11200002 	beqz	t1,e4 <Flags_UnsetEnv+0x4c>
  dc:	00000000 	nop
  e0:	2529fff0 	addiu	t1,t1,-16
  e4:	00095400 	sll	t2,t1,0x10
  e8:	000a5c03 	sra	t3,t2,0x10
  ec:	240c0001 	li	t4,1
  f0:	016c6804 	sllv	t5,t4,t3
  f4:	39b8ffff 	xori	t8,t5,0xffff
  f8:	0118c824 	and	t9,t0,t8
  fc:	03e00008 	jr	ra
 100:	a45920fc 	sh	t9,8444(v0)

00000104 <Flags_GetEnv>:
 104:	afa50004 	sw	a1,4(sp)
 108:	00052c00 	sll	a1,a1,0x10
 10c:	00052c03 	sra	a1,a1,0x10
 110:	04a10003 	bgez	a1,120 <Flags_GetEnv+0x1c>
 114:	00057103 	sra	t6,a1,0x4
 118:	24a1000f 	addiu	at,a1,15
 11c:	00017103 	sra	t6,at,0x4
 120:	000e7c00 	sll	t7,t6,0x10
 124:	000fc403 	sra	t8,t7,0x10
 128:	0018c840 	sll	t9,t8,0x1
 12c:	00994021 	addu	t0,a0,t9
 130:	3c090001 	lui	t1,0x1
 134:	240d0001 	li	t5,1
 138:	01284821 	addu	t1,t1,t0
 13c:	952920fc 	lhu	t1,8444(t1)
 140:	04a10004 	bgez	a1,154 <Flags_GetEnv+0x50>
 144:	30aa000f 	andi	t2,a1,0xf
 148:	11400002 	beqz	t2,154 <Flags_GetEnv+0x50>
 14c:	00000000 	nop
 150:	254afff0 	addiu	t2,t2,-16
 154:	000a5c00 	sll	t3,t2,0x10
 158:	000b6403 	sra	t4,t3,0x10
 15c:	018d7004 	sllv	t6,t5,t4
 160:	000e7c00 	sll	t7,t6,0x10
 164:	000fc403 	sra	t8,t7,0x10
 168:	03e00008 	jr	ra
 16c:	01381024 	and	v0,t1,t8
