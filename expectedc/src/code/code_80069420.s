
build/src/code/code_80069420.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <MemCopy>:
   0:	00801025 	move	v0,a0
   4:	18c00007 	blez	a2,24 <MemCopy+0x24>
   8:	00a01825 	move	v1,a1
   c:	906e0000 	lbu	t6,0(v1)
  10:	24c6ffff 	addiu	a2,a2,-1
  14:	24420001 	addiu	v0,v0,1
  18:	24630001 	addiu	v1,v1,1
  1c:	1cc0fffb 	bgtz	a2,c <MemCopy+0xc>
  20:	a04effff 	sb	t6,-1(v0)
  24:	03e00008 	jr	ra
  28:	00801025 	move	v0,a0

0000002c <MemSet>:
  2c:	00801025 	move	v0,a0
  30:	18c00011 	blez	a2,78 <MemSet+0x4c>
  34:	00c01825 	move	v1,a2
  38:	30c80003 	andi	t0,a2,0x3
  3c:	00084023 	negu	t0,t0
  40:	11000006 	beqz	t0,5c <MemSet+0x30>
  44:	01063821 	addu	a3,t0,a2
  48:	2463ffff 	addiu	v1,v1,-1
  4c:	a0450000 	sb	a1,0(v0)
  50:	14e3fffd 	bne	a3,v1,48 <MemSet+0x1c>
  54:	24420001 	addiu	v0,v0,1
  58:	10600007 	beqz	v1,78 <MemSet+0x4c>
  5c:	2463fffc 	addiu	v1,v1,-4
  60:	a0450001 	sb	a1,1(v0)
  64:	a0450002 	sb	a1,2(v0)
  68:	a0450003 	sb	a1,3(v0)
  6c:	24420004 	addiu	v0,v0,4
  70:	1460fffa 	bnez	v1,5c <MemSet+0x30>
  74:	a045fffc 	sb	a1,-4(v0)
  78:	03e00008 	jr	ra
  7c:	00801025 	move	v0,a0
