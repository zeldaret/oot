
build/src/libultra_boot_O1/osGetMemSize.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <osGetMemSize>:
   0:	27bdfff0 	addiu	sp,sp,-16
   4:	3c0e0040 	lui	t6,0x40
   8:	afae0008 	sw	t6,8(sp)
   c:	8faf0008 	lw	t7,8(sp)
  10:	3c01a000 	lui	at,0xa000
  14:	3c19a000 	lui	t9,0xa000
  18:	01e1c021 	addu	t8,t7,at
  1c:	afb8000c 	sw	t8,12(sp)
  20:	032fc821 	addu	t9,t9,t7
  24:	8f390000 	lw	t9,0(t9)
  28:	3c08a010 	lui	t0,0xa010
  2c:	010f4021 	addu	t0,t0,t7
  30:	afb90004 	sw	t9,4(sp)
  34:	8d08fffc 	lw	t0,-4(t0)
  38:	3c09a000 	lui	t1,0xa000
  3c:	012f4821 	addu	t1,t1,t7
  40:	afa80000 	sw	t0,0(sp)
  44:	8d290000 	lw	t1,0(t1)
  48:	2401ffff 	li	at,-1
  4c:	3c0c0010 	lui	t4,0x10
  50:	01215026 	xor	t2,t1,at
  54:	3c01a000 	lui	at,0xa000
  58:	002f0821 	addu	at,at,t7
  5c:	ac2a0000 	sw	t2,0(at)
  60:	8fab000c 	lw	t3,12(sp)
  64:	2401ffff 	li	at,-1
  68:	018b6021 	addu	t4,t4,t3
  6c:	8d8cfffc 	lw	t4,-4(t4)
  70:	01816826 	xor	t5,t4,at
  74:	3c010010 	lui	at,0x10
  78:	002b0821 	addu	at,at,t3
  7c:	ac2dfffc 	sw	t5,-4(at)
  80:	8fae000c 	lw	t6,12(sp)
  84:	8fb90004 	lw	t9,4(sp)
  88:	2401ffff 	li	at,-1
  8c:	8dd80000 	lw	t8,0(t6)
  90:	03214026 	xor	t0,t9,at
  94:	17080009 	bne	t8,t0,bc <osGetMemSize+0xbc>
  98:	00000000 	nop
  9c:	3c090010 	lui	t1,0x10
  a0:	8faa0000 	lw	t2,0(sp)
  a4:	012e4821 	addu	t1,t1,t6
  a8:	8d29fffc 	lw	t1,-4(t1)
  ac:	2401ffff 	li	at,-1
  b0:	01417826 	xor	t7,t2,at
  b4:	112f0003 	beq	t1,t7,c4 <osGetMemSize+0xc4>
  b8:	00000000 	nop
  bc:	10000013 	b	10c <osGetMemSize+0x10c>
  c0:	8fa20008 	lw	v0,8(sp)
  c4:	8fac0004 	lw	t4,4(sp)
  c8:	8fad000c 	lw	t5,12(sp)
  cc:	3c010010 	lui	at,0x10
  d0:	adac0000 	sw	t4,0(t5)
  d4:	8fb9000c 	lw	t9,12(sp)
  d8:	8fab0000 	lw	t3,0(sp)
  dc:	00390821 	addu	at,at,t9
  e0:	ac2bfffc 	sw	t3,-4(at)
  e4:	8fb80008 	lw	t8,8(sp)
  e8:	3c010010 	lui	at,0x10
  ec:	03014021 	addu	t0,t8,at
  f0:	afa80008 	sw	t0,8(sp)
  f4:	8fae0008 	lw	t6,8(sp)
  f8:	3c010080 	lui	at,0x80
  fc:	01c1082b 	sltu	at,t6,at
 100:	1420ffc2 	bnez	at,c <osGetMemSize+0xc>
 104:	00000000 	nop
 108:	8fa20008 	lw	v0,8(sp)
 10c:	03e00008 	jr	ra
 110:	27bd0010 	addiu	sp,sp,16
	...
