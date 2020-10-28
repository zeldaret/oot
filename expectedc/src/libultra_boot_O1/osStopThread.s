
build/src/libultra_boot_O1/osStopThread.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <osStopThread>:
   0:	27bdffc8 	addiu	sp,sp,-56
   4:	afbf0024 	sw	ra,36(sp)
   8:	afa40038 	sw	a0,56(sp)
   c:	afb20020 	sw	s2,32(sp)
  10:	afb1001c 	sw	s1,28(sp)
  14:	0c000000 	jal	0 <osStopThread>
  18:	afb00018 	sw	s0,24(sp)
  1c:	8fae0038 	lw	t6,56(sp)
  20:	00408025 	move	s0,v0
  24:	15c00003 	bnez	t6,34 <osStopThread+0x34>
  28:	00000000 	nop
  2c:	10000003 	b	3c <osStopThread+0x3c>
  30:	24110004 	li	s1,4
  34:	8faf0038 	lw	t7,56(sp)
  38:	95f10010 	lhu	s1,16(t7)
  3c:	02209025 	move	s2,s1
  40:	24010002 	li	at,2
  44:	1241000f 	beq	s2,at,84 <osStopThread+0x84>
  48:	24010004 	li	at,4
  4c:	12410005 	beq	s2,at,64 <osStopThread+0x64>
  50:	24010008 	li	at,8
  54:	1241000b 	beq	s2,at,84 <osStopThread+0x84>
  58:	00000000 	nop
  5c:	10000010 	b	a0 <osStopThread+0xa0>
  60:	00000000 	nop
  64:	3c190000 	lui	t9,0x0
  68:	8f390000 	lw	t9,0(t9)
  6c:	24180001 	li	t8,1
  70:	00002025 	move	a0,zero
  74:	0c000000 	jal	0 <osStopThread>
  78:	a7380010 	sh	t8,16(t9)
  7c:	10000008 	b	a0 <osStopThread+0xa0>
  80:	00000000 	nop
  84:	8fa90038 	lw	t1,56(sp)
  88:	24080001 	li	t0,1
  8c:	a5280010 	sh	t0,16(t1)
  90:	8faa0038 	lw	t2,56(sp)
  94:	8d440008 	lw	a0,8(t2)
  98:	0c000000 	jal	0 <osStopThread>
  9c:	01402825 	move	a1,t2
  a0:	0c000000 	jal	0 <osStopThread>
  a4:	02002025 	move	a0,s0
  a8:	8fbf0024 	lw	ra,36(sp)
  ac:	8fb00018 	lw	s0,24(sp)
  b0:	8fb1001c 	lw	s1,28(sp)
  b4:	8fb20020 	lw	s2,32(sp)
  b8:	03e00008 	jr	ra
  bc:	27bd0038 	addiu	sp,sp,56
