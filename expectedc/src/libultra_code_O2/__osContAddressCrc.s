
build/src/libultra_code_O2/__osContAddressCrc.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <__osContAddressCrc>:
   0:	afa40000 	sw	a0,0(sp)
   4:	308effff 	andi	t6,a0,0xffff
   8:	01c02025 	move	a0,t6
   c:	00001825 	move	v1,zero
  10:	24020400 	li	v0,1024
  14:	00037840 	sll	t7,v1,0x1
  18:	0082c024 	and	t8,a0,v0
  1c:	13000008 	beqz	t8,40 <__osContAddressCrc+0x40>
  20:	01e01825 	move	v1,t7
  24:	31f90020 	andi	t9,t7,0x20
  28:	13200003 	beqz	t9,38 <__osContAddressCrc+0x38>
  2c:	00000000 	nop
  30:	10000007 	b	50 <__osContAddressCrc+0x50>
  34:	39e30014 	xori	v1,t7,0x14
  38:	10000005 	b	50 <__osContAddressCrc+0x50>
  3c:	24630001 	addiu	v1,v1,1
  40:	30690020 	andi	t1,v1,0x20
  44:	11200002 	beqz	t1,50 <__osContAddressCrc+0x50>
  48:	386a0015 	xori	t2,v1,0x15
  4c:	01401825 	move	v1,t2
  50:	00025842 	srl	t3,v0,0x1
  54:	1560ffef 	bnez	t3,14 <__osContAddressCrc+0x14>
  58:	01601025 	move	v0,t3
  5c:	00036040 	sll	t4,v1,0x1
  60:	318d0020 	andi	t5,t4,0x20
  64:	11a00002 	beqz	t5,70 <__osContAddressCrc+0x70>
  68:	01801825 	move	v1,t4
  6c:	39830015 	xori	v1,t4,0x15
  70:	00037840 	sll	t7,v1,0x1
  74:	31f80020 	andi	t8,t7,0x20
  78:	13000002 	beqz	t8,84 <__osContAddressCrc+0x84>
  7c:	01e01825 	move	v1,t7
  80:	39e30015 	xori	v1,t7,0x15
  84:	00034040 	sll	t0,v1,0x1
  88:	31090020 	andi	t1,t0,0x20
  8c:	11200002 	beqz	t1,98 <__osContAddressCrc+0x98>
  90:	01001825 	move	v1,t0
  94:	39030015 	xori	v1,t0,0x15
  98:	00035840 	sll	t3,v1,0x1
  9c:	316c0020 	andi	t4,t3,0x20
  a0:	11800002 	beqz	t4,ac <__osContAddressCrc+0xac>
  a4:	01601825 	move	v1,t3
  a8:	39630015 	xori	v1,t3,0x15
  ac:	00037040 	sll	t6,v1,0x1
  b0:	31cf0020 	andi	t7,t6,0x20
  b4:	11e00002 	beqz	t7,c0 <__osContAddressCrc+0xc0>
  b8:	01c01825 	move	v1,t6
  bc:	39c30015 	xori	v1,t6,0x15
  c0:	00601025 	move	v0,v1
  c4:	3059001f 	andi	t9,v0,0x1f
  c8:	03e00008 	jr	ra
  cc:	03201025 	move	v0,t9

000000d0 <__osContDataCrc>:
  d0:	00802825 	move	a1,a0
  d4:	00001825 	move	v1,zero
  d8:	24020020 	li	v0,32
  dc:	24040080 	li	a0,128
  e0:	90a60000 	lbu	a2,0(a1)
  e4:	00037040 	sll	t6,v1,0x1
  e8:	00c47824 	and	t7,a2,a0
  ec:	11e00008 	beqz	t7,110 <__osContDataCrc+0x40>
  f0:	01c01825 	move	v1,t6
  f4:	31d80100 	andi	t8,t6,0x100
  f8:	13000003 	beqz	t8,108 <__osContDataCrc+0x38>
  fc:	00000000 	nop
 100:	10000007 	b	120 <__osContDataCrc+0x50>
 104:	39c30084 	xori	v1,t6,0x84
 108:	10000005 	b	120 <__osContDataCrc+0x50>
 10c:	24630001 	addiu	v1,v1,1
 110:	30680100 	andi	t0,v1,0x100
 114:	11000002 	beqz	t0,120 <__osContDataCrc+0x50>
 118:	38690085 	xori	t1,v1,0x85
 11c:	01201825 	move	v1,t1
 120:	00045042 	srl	t2,a0,0x1
 124:	1540ffef 	bnez	t2,e4 <__osContDataCrc+0x14>
 128:	01402025 	move	a0,t2
 12c:	2442ffff 	addiu	v0,v0,-1
 130:	1440ffea 	bnez	v0,dc <__osContDataCrc+0xc>
 134:	24a50001 	addiu	a1,a1,1
 138:	00035840 	sll	t3,v1,0x1
 13c:	316c0100 	andi	t4,t3,0x100
 140:	11800002 	beqz	t4,14c <__osContDataCrc+0x7c>
 144:	01601825 	move	v1,t3
 148:	39630085 	xori	v1,t3,0x85
 14c:	24420001 	addiu	v0,v0,1
 150:	2c410008 	sltiu	at,v0,8
 154:	5420fff9 	bnezl	at,13c <__osContDataCrc+0x6c>
 158:	00035840 	sll	t3,v1,0x1
 15c:	03e00008 	jr	ra
 160:	306200ff 	andi	v0,v1,0xff
	...
