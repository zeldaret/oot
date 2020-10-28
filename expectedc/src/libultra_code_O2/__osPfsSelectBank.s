
build/src/libultra_code_O2/__osPfsSelectBank.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <__osPfsSelectBank>:
   0:	27bdffa8 	addiu	sp,sp,-88
   4:	afb00020 	sw	s0,32(sp)
   8:	30b000ff 	andi	s0,a1,0xff
   c:	afbf0024 	sw	ra,36(sp)
  10:	afa40058 	sw	a0,88(sp)
  14:	afa5005c 	sw	a1,92(sp)
  18:	27a20038 	addiu	v0,sp,56
  1c:	27a30058 	addiu	v1,sp,88
  20:	24420004 	addiu	v0,v0,4
  24:	a050fffd 	sb	s0,-3(v0)
  28:	a050fffe 	sb	s0,-2(v0)
  2c:	a050ffff 	sb	s0,-1(v0)
  30:	1443fffb 	bne	v0,v1,20 <__osPfsSelectBank+0x20>
  34:	a050fffc 	sb	s0,-4(v0)
  38:	8fae0058 	lw	t6,88(sp)
  3c:	24060400 	li	a2,1024
  40:	27a70038 	addiu	a3,sp,56
  44:	8dc40004 	lw	a0,4(t6)
  48:	8dc50008 	lw	a1,8(t6)
  4c:	0c000000 	jal	0 <__osPfsSelectBank>
  50:	afa00010 	sw	zero,16(sp)
  54:	14400003 	bnez	v0,64 <__osPfsSelectBank+0x64>
  58:	00401825 	move	v1,v0
  5c:	8faf0058 	lw	t7,88(sp)
  60:	a1f00065 	sb	s0,101(t7)
  64:	8fbf0024 	lw	ra,36(sp)
  68:	8fb00020 	lw	s0,32(sp)
  6c:	27bd0058 	addiu	sp,sp,88
  70:	03e00008 	jr	ra
  74:	00601025 	move	v0,v1
	...
