
build/src/overlays/actors/ovl_En_It/z_en_it.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <EnIt_Init>:
   0:	27bdffd8 	addiu	sp,sp,-40
   4:	afb00018 	sw	s0,24(sp)
   8:	afa5002c 	sw	a1,44(sp)
   c:	00808025 	move	s0,a0
  10:	afbf001c 	sw	ra,28(sp)
  14:	240e0d05 	li	t6,3333
  18:	a48e001c 	sh	t6,28(a0)
  1c:	26050150 	addiu	a1,s0,336
  20:	afa50020 	sw	a1,32(sp)
  24:	0c000000 	jal	0 <EnIt_Init>
  28:	8fa4002c 	lw	a0,44(sp)
  2c:	3c070000 	lui	a3,0x0
  30:	8fa50020 	lw	a1,32(sp)
  34:	24e70000 	addiu	a3,a3,0
  38:	8fa4002c 	lw	a0,44(sp)
  3c:	0c000000 	jal	0 <EnIt_Init>
  40:	02003025 	move	a2,s0
  44:	3c060000 	lui	a2,0x0
  48:	24c6002c 	addiu	a2,a2,44
  4c:	26040098 	addiu	a0,s0,152
  50:	0c000000 	jal	0 <EnIt_Init>
  54:	00002825 	move	a1,zero
  58:	8fbf001c 	lw	ra,28(sp)
  5c:	8fb00018 	lw	s0,24(sp)
  60:	27bd0028 	addiu	sp,sp,40
  64:	03e00008 	jr	ra
  68:	00000000 	nop

0000006c <EnIt_Destroy>:
  6c:	27bdffe8 	addiu	sp,sp,-24
  70:	00803025 	move	a2,a0
  74:	afbf0014 	sw	ra,20(sp)
  78:	00a02025 	move	a0,a1
  7c:	0c000000 	jal	0 <EnIt_Init>
  80:	24c50150 	addiu	a1,a2,336
  84:	8fbf0014 	lw	ra,20(sp)
  88:	27bd0018 	addiu	sp,sp,24
  8c:	03e00008 	jr	ra
  90:	00000000 	nop

00000094 <EnIt_Update>:
  94:	27bdffd8 	addiu	sp,sp,-40
  98:	afbf0014 	sw	ra,20(sp)
  9c:	afa5002c 	sw	a1,44(sp)
  a0:	24860150 	addiu	a2,a0,336
  a4:	00c02825 	move	a1,a2
  a8:	afa6001c 	sw	a2,28(sp)
  ac:	0c000000 	jal	0 <EnIt_Init>
  b0:	afa40028 	sw	a0,40(sp)
  b4:	8fa4002c 	lw	a0,44(sp)
  b8:	3c010001 	lui	at,0x1
  bc:	34211e60 	ori	at,at,0x1e60
  c0:	8fa6001c 	lw	a2,28(sp)
  c4:	0c000000 	jal	0 <EnIt_Init>
  c8:	00812821 	addu	a1,a0,at
  cc:	8fbf0014 	lw	ra,20(sp)
  d0:	27bd0028 	addiu	sp,sp,40
  d4:	03e00008 	jr	ra
  d8:	00000000 	nop
  dc:	00000000 	nop
