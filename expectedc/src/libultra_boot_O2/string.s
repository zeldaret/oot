
build/src/libultra_boot_O2/string.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <strchr>:
   0:	90830000 	lbu	v1,0(a0)
   4:	30ae00ff 	andi	t6,a1,0xff
   8:	30a200ff 	andi	v0,a1,0xff
   c:	51c3000a 	beql	t6,v1,38 <strchr+0x38>
  10:	00801025 	move	v0,a0
  14:	54600004 	bnezl	v1,28 <strchr+0x28>
  18:	90830001 	lbu	v1,1(a0)
  1c:	03e00008 	jr	ra
  20:	00001025 	move	v0,zero
  24:	90830001 	lbu	v1,1(a0)
  28:	24840001 	addiu	a0,a0,1
  2c:	1443fff9 	bne	v0,v1,14 <strchr+0x14>
  30:	00000000 	nop
  34:	00801025 	move	v0,a0
  38:	03e00008 	jr	ra
  3c:	00000000 	nop

00000040 <strlen>:
  40:	908e0000 	lbu	t6,0(a0)
  44:	00801825 	move	v1,a0
  48:	11c00005 	beqz	t6,60 <strlen+0x20>
  4c:	00000000 	nop
  50:	906f0001 	lbu	t7,1(v1)
  54:	24630001 	addiu	v1,v1,1
  58:	55e0fffe 	bnezl	t7,54 <strlen+0x14>
  5c:	906f0001 	lbu	t7,1(v1)
  60:	03e00008 	jr	ra
  64:	00641023 	subu	v0,v1,a0

00000068 <memcpy>:
  68:	00801025 	move	v0,a0
  6c:	10c00007 	beqz	a2,8c <memcpy+0x24>
  70:	00a01825 	move	v1,a1
  74:	906e0000 	lbu	t6,0(v1)
  78:	24c6ffff 	addiu	a2,a2,-1
  7c:	24420001 	addiu	v0,v0,1
  80:	24630001 	addiu	v1,v1,1
  84:	14c0fffb 	bnez	a2,74 <memcpy+0xc>
  88:	a04effff 	sb	t6,-1(v0)
  8c:	03e00008 	jr	ra
  90:	00801025 	move	v0,a0
	...
