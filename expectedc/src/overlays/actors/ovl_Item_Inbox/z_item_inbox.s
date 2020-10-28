
build/src/overlays/actors/ovl_Item_Inbox/z_item_inbox.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <ItemInbox_Init>:
   0:	27bdffe8 	addiu	sp,sp,-24
   4:	afa5001c 	sw	a1,28(sp)
   8:	3c0e0000 	lui	t6,0x0
   c:	afbf0014 	sw	ra,20(sp)
  10:	25ce0000 	addiu	t6,t6,0
  14:	3c053e4c 	lui	a1,0x3e4c
  18:	ac8e014c 	sw	t6,332(a0)
  1c:	0c000000 	jal	0 <ItemInbox_Init>
  20:	34a5cccd 	ori	a1,a1,0xcccd
  24:	8fbf0014 	lw	ra,20(sp)
  28:	27bd0018 	addiu	sp,sp,24
  2c:	03e00008 	jr	ra
  30:	00000000 	nop

00000034 <ItemInbox_Destroy>:
  34:	afa40000 	sw	a0,0(sp)
  38:	03e00008 	jr	ra
  3c:	afa50004 	sw	a1,4(sp)

00000040 <ItemInbox_Wait>:
  40:	27bdffe8 	addiu	sp,sp,-24
  44:	afa40018 	sw	a0,24(sp)
  48:	8fae0018 	lw	t6,24(sp)
  4c:	afbf0014 	sw	ra,20(sp)
  50:	00a02025 	move	a0,a1
  54:	85c5001c 	lh	a1,28(t6)
  58:	00052a03 	sra	a1,a1,0x8
  5c:	0c000000 	jal	0 <ItemInbox_Init>
  60:	30a5001f 	andi	a1,a1,0x1f
  64:	50400004 	beqzl	v0,78 <ItemInbox_Wait+0x38>
  68:	8fbf0014 	lw	ra,20(sp)
  6c:	0c000000 	jal	0 <ItemInbox_Init>
  70:	8fa40018 	lw	a0,24(sp)
  74:	8fbf0014 	lw	ra,20(sp)
  78:	27bd0018 	addiu	sp,sp,24
  7c:	03e00008 	jr	ra
  80:	00000000 	nop

00000084 <ItemInbox_Update>:
  84:	27bdffe8 	addiu	sp,sp,-24
  88:	afbf0014 	sw	ra,20(sp)
  8c:	8c99014c 	lw	t9,332(a0)
  90:	0320f809 	jalr	t9
  94:	00000000 	nop
  98:	8fbf0014 	lw	ra,20(sp)
  9c:	27bd0018 	addiu	sp,sp,24
  a0:	03e00008 	jr	ra
  a4:	00000000 	nop

000000a8 <ItemInbox_Draw>:
  a8:	27bdffe8 	addiu	sp,sp,-24
  ac:	afbf0014 	sw	ra,20(sp)
  b0:	afa40018 	sw	a0,24(sp)
  b4:	afa5001c 	sw	a1,28(sp)
  b8:	0c000000 	jal	0 <ItemInbox_Init>
  bc:	00003025 	move	a2,zero
  c0:	8fa40018 	lw	a0,24(sp)
  c4:	8fa5001c 	lw	a1,28(sp)
  c8:	0c000000 	jal	0 <ItemInbox_Init>
  cc:	00003025 	move	a2,zero
  d0:	8fae0018 	lw	t6,24(sp)
  d4:	8fa4001c 	lw	a0,28(sp)
  d8:	85c5001c 	lh	a1,28(t6)
  dc:	30a500ff 	andi	a1,a1,0xff
  e0:	00052c00 	sll	a1,a1,0x10
  e4:	0c000000 	jal	0 <ItemInbox_Init>
  e8:	00052c03 	sra	a1,a1,0x10
  ec:	8fbf0014 	lw	ra,20(sp)
  f0:	27bd0018 	addiu	sp,sp,24
  f4:	03e00008 	jr	ra
  f8:	00000000 	nop
  fc:	00000000 	nop
