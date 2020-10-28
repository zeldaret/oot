
build/src/libultra_boot_O1/osCreateThread.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <osCreateThread>:
   0:	27bdffd8 	addiu	sp,sp,-40
   4:	afa40028 	sw	a0,40(sp)
   8:	afa5002c 	sw	a1,44(sp)
   c:	8fae002c 	lw	t6,44(sp)
  10:	8faf0028 	lw	t7,40(sp)
  14:	afbf001c 	sw	ra,28(sp)
  18:	afa60030 	sw	a2,48(sp)
  1c:	afa70034 	sw	a3,52(sp)
  20:	afb00018 	sw	s0,24(sp)
  24:	adee0014 	sw	t6,20(t7)
  28:	8fb90028 	lw	t9,40(sp)
  2c:	8fb8003c 	lw	t8,60(sp)
  30:	af380004 	sw	t8,4(t9)
  34:	8fa80028 	lw	t0,40(sp)
  38:	ad000000 	sw	zero,0(t0)
  3c:	8fa90028 	lw	t1,40(sp)
  40:	ad200008 	sw	zero,8(t1)
  44:	8fab0028 	lw	t3,40(sp)
  48:	8faa0030 	lw	t2,48(sp)
  4c:	ad6a011c 	sw	t2,284(t3)
  50:	8fac0034 	lw	t4,52(sp)
  54:	8fad0028 	lw	t5,40(sp)
  58:	01807825 	move	t7,t4
  5c:	000c77c3 	sra	t6,t4,0x1f
  60:	adae0038 	sw	t6,56(t5)
  64:	adaf003c 	sw	t7,60(t5)
  68:	8fb80038 	lw	t8,56(sp)
  6c:	8fb90028 	lw	t9,40(sp)
  70:	3c0c0000 	lui	t4,0x0
  74:	03004825 	move	t1,t8
  78:	2d210010 	sltiu	at,t1,16
  7c:	001847c3 	sra	t0,t8,0x1f
  80:	01015023 	subu	t2,t0,at
  84:	252bfff0 	addiu	t3,t1,-16
  88:	af2b00f4 	sw	t3,244(t9)
  8c:	af2a00f0 	sw	t2,240(t9)
  90:	8fad0028 	lw	t5,40(sp)
  94:	258c0000 	addiu	t4,t4,0
  98:	01807825 	move	t7,t4
  9c:	000c77c3 	sra	t6,t4,0x1f
  a0:	adae0100 	sw	t6,256(t5)
  a4:	adaf0104 	sw	t7,260(t5)
  a8:	8fa90028 	lw	t1,40(sp)
  ac:	3c18003f 	lui	t8,0x3f
  b0:	3718ff01 	ori	t8,t8,0xff01
  b4:	afb80020 	sw	t8,32(sp)
  b8:	3408ff03 	li	t0,0xff03
  bc:	ad280118 	sw	t0,280(t1)
  c0:	8faa0020 	lw	t2,32(sp)
  c4:	8fac0028 	lw	t4,40(sp)
  c8:	3c01003f 	lui	at,0x3f
  cc:	01415824 	and	t3,t2,at
  d0:	000bcc02 	srl	t9,t3,0x10
  d4:	ad990128 	sw	t9,296(t4)
  d8:	8faf0028 	lw	t7,40(sp)
  dc:	3c0e0100 	lui	t6,0x100
  e0:	35ce0800 	ori	t6,t6,0x800
  e4:	adee012c 	sw	t6,300(t7)
  e8:	8fad0028 	lw	t5,40(sp)
  ec:	24180001 	li	t8,1
  f0:	ada00018 	sw	zero,24(t5)
  f4:	8fa80028 	lw	t0,40(sp)
  f8:	a5180010 	sh	t8,16(t0)
  fc:	8fa90028 	lw	t1,40(sp)
 100:	0c000000 	jal	0 <osCreateThread>
 104:	a5200012 	sh	zero,18(t1)
 108:	3c0a0000 	lui	t2,0x0
 10c:	8d4a0000 	lw	t2,0(t2)
 110:	8fab0028 	lw	t3,40(sp)
 114:	00408025 	move	s0,v0
 118:	3c010000 	lui	at,0x0
 11c:	ad6a000c 	sw	t2,12(t3)
 120:	8fb90028 	lw	t9,40(sp)
 124:	02002025 	move	a0,s0
 128:	0c000000 	jal	0 <osCreateThread>
 12c:	ac390000 	sw	t9,0(at)
 130:	8fbf001c 	lw	ra,28(sp)
 134:	8fb00018 	lw	s0,24(sp)
 138:	27bd0028 	addiu	sp,sp,40
 13c:	03e00008 	jr	ra
 140:	00000000 	nop
	...
