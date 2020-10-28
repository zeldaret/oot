
build/src/code/code_80097A00.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <Inventory_ChangeEquipment>:
   0:	afa40000 	sw	a0,0(sp)
   4:	00042400 	sll	a0,a0,0x10
   8:	00042403 	sra	a0,a0,0x10
   c:	3c020000 	lui	v0,0x0
  10:	00047840 	sll	t7,a0,0x1
  14:	3c180000 	lui	t8,0x0
  18:	24420000 	addiu	v0,v0,0
  1c:	030fc021 	addu	t8,t8,t7
  20:	97180000 	lhu	t8,0(t8)
  24:	944e0070 	lhu	t6,112(v0)
  28:	3c090000 	lui	t1,0x0
  2c:	01244821 	addu	t1,t1,a0
  30:	01d84024 	and	t0,t6,t8
  34:	a4480070 	sh	t0,112(v0)
  38:	91290000 	lbu	t1,0(t1)
  3c:	afa50004 	sw	a1,4(sp)
  40:	30a5ffff 	andi	a1,a1,0xffff
  44:	01255004 	sllv	t2,a1,t1
  48:	010a5825 	or	t3,t0,t2
  4c:	03e00008 	jr	ra
  50:	a44b0070 	sh	t3,112(v0)

00000054 <Inventory_DeleteEquipment>:
  54:	27bdffd0 	addiu	sp,sp,-48
  58:	afa50034 	sw	a1,52(sp)
  5c:	00052c00 	sll	a1,a1,0x10
  60:	00052c03 	sra	a1,a1,0x10
  64:	3c180000 	lui	t8,0x0
  68:	afbf0014 	sw	ra,20(sp)
  6c:	afa40030 	sw	a0,48(sp)
  70:	3c030000 	lui	v1,0x0
  74:	27180000 	addiu	t8,t8,0
  78:	00054040 	sll	t0,a1,0x1
  7c:	8c8f1c44 	lw	t7,7236(a0)
  80:	24630000 	addiu	v1,v1,0
  84:	01184821 	addu	t1,t0,t8
  88:	95390000 	lhu	t9,0(t1)
  8c:	946a0070 	lhu	t2,112(v1)
  90:	3c040000 	lui	a0,0x0
  94:	24840000 	addiu	a0,a0,0
  98:	032a3824 	and	a3,t9,t2
  9c:	30e6ffff 	andi	a2,a3,0xffff
  a0:	afa60018 	sw	a2,24(sp)
  a4:	a7a60026 	sh	a2,38(sp)
  a8:	afa9001c 	sw	t1,28(sp)
  ac:	afa80020 	sw	t0,32(sp)
  b0:	a7a50036 	sh	a1,54(sp)
  b4:	0c000000 	jal	0 <Inventory_ChangeEquipment>
  b8:	afaf002c 	sw	t7,44(sp)
  bc:	97a70026 	lhu	a3,38(sp)
  c0:	3c030000 	lui	v1,0x0
  c4:	24630000 	addiu	v1,v1,0
  c8:	87a50036 	lh	a1,54(sp)
  cc:	8fa60018 	lw	a2,24(sp)
  d0:	8fa80020 	lw	t0,32(sp)
  d4:	10e0002c 	beqz	a3,188 <Inventory_DeleteEquipment+0x134>
  d8:	8fa9001c 	lw	t1,28(sp)
  dc:	3c020000 	lui	v0,0x0
  e0:	00451021 	addu	v0,v0,a1
  e4:	3c0b0000 	lui	t3,0x0
  e8:	90420000 	lbu	v0,0(v0)
  ec:	256b0000 	addiu	t3,t3,0
  f0:	010b2021 	addu	a0,t0,t3
  f4:	948d0000 	lhu	t5,0(a0)
  f8:	946c0070 	lhu	t4,112(v1)
  fc:	00463806 	srlv	a3,a2,v0
 100:	30e7ffff 	andi	a3,a3,0xffff
 104:	0007c080 	sll	t8,a3,0x2
 108:	3c190000 	lui	t9,0x0
 10c:	018d7024 	and	t6,t4,t5
 110:	a46e0070 	sh	t6,112(v1)
 114:	0338c821 	addu	t9,t9,t8
 118:	8f39fffc 	lw	t9,-4(t9)
 11c:	946f009c 	lhu	t7,156(v1)
 120:	3c0c0000 	lui	t4,0x0
 124:	00595004 	sllv	t2,t9,v0
 128:	258c0004 	addiu	t4,t4,4
 12c:	01ea5826 	xor	t3,t7,t2
 130:	152c0004 	bne	t1,t4,144 <Inventory_DeleteEquipment+0xf0>
 134:	a46b009c 	sh	t3,156(v1)
 138:	01c06825 	move	t5,t6
 13c:	35ae0100 	ori	t6,t5,0x100
 140:	a46e0070 	sh	t6,112(v1)
 144:	3c180000 	lui	t8,0x0
 148:	27180000 	addiu	t8,t8,0
 14c:	14980004 	bne	a0,t8,160 <Inventory_DeleteEquipment+0x10c>
 150:	241900ff 	li	t9,255
 154:	240f0001 	li	t7,1
 158:	a0790068 	sb	t9,104(v1)
 15c:	a46f0f32 	sh	t7,3890(v1)
 160:	8fa40030 	lw	a0,48(sp)
 164:	8fa5002c 	lw	a1,44(sp)
 168:	0c000000 	jal	0 <Inventory_ChangeEquipment>
 16c:	a7a70026 	sh	a3,38(sp)
 170:	8fab0030 	lw	t3,48(sp)
 174:	3c010001 	lui	at,0x1
 178:	97a70026 	lhu	a3,38(sp)
 17c:	240a000a 	li	t2,10
 180:	002b0821 	addu	at,at,t3
 184:	a42a0998 	sh	t2,2456(at)
 188:	8fbf0014 	lw	ra,20(sp)
 18c:	27bd0030 	addiu	sp,sp,48
 190:	30e200ff 	andi	v0,a3,0xff
 194:	03e00008 	jr	ra
 198:	00000000 	nop

0000019c <Inventory_ChangeUpgrade>:
 19c:	afa40000 	sw	a0,0(sp)
 1a0:	00042400 	sll	a0,a0,0x10
 1a4:	00042403 	sra	a0,a0,0x10
 1a8:	3c020000 	lui	v0,0x0
 1ac:	00047880 	sll	t7,a0,0x2
 1b0:	3c180000 	lui	t8,0x0
 1b4:	24420000 	addiu	v0,v0,0
 1b8:	030fc021 	addu	t8,t8,t7
 1bc:	8f180000 	lw	t8,0(t8)
 1c0:	8c4e00a0 	lw	t6,160(v0)
 1c4:	3c090000 	lui	t1,0x0
 1c8:	01244821 	addu	t1,t1,a0
 1cc:	01d8c824 	and	t9,t6,t8
 1d0:	ac5900a0 	sw	t9,160(v0)
 1d4:	91290000 	lbu	t1,0(t1)
 1d8:	afa50004 	sw	a1,4(sp)
 1dc:	00052c00 	sll	a1,a1,0x10
 1e0:	00052c03 	sra	a1,a1,0x10
 1e4:	01255004 	sllv	t2,a1,t1
 1e8:	032a5825 	or	t3,t9,t2
 1ec:	03e00008 	jr	ra
 1f0:	ac4b00a0 	sw	t3,160(v0)
	...
