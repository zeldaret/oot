
build/src/overlays/actors/ovl_Obj_Hana/z_obj_hana.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <ObjHana_Init>:
   0:	27bdffc8 	addiu	sp,sp,-56
   4:	afbf001c 	sw	ra,28(sp)
   8:	afb10018 	sw	s1,24(sp)
   c:	afb00014 	sw	s0,20(sp)
  10:	afa5003c 	sw	a1,60(sp)
  14:	848e001c 	lh	t6,28(a0)
  18:	3c050000 	lui	a1,0x0
  1c:	00808025 	move	s0,a0
  20:	31cf0003 	andi	t7,t6,0x3
  24:	a7af0032 	sh	t7,50(sp)
  28:	0c000000 	jal	0 <ObjHana_Init>
  2c:	24a50084 	addiu	a1,a1,132
  30:	87b80032 	lh	t8,50(sp)
  34:	3c080000 	lui	t0,0x0
  38:	25080054 	addiu	t0,t0,84
  3c:	0018c900 	sll	t9,t8,0x4
  40:	03288821 	addu	s1,t9,t0
  44:	8e250004 	lw	a1,4(s1)
  48:	0c000000 	jal	0 <ObjHana_Init>
  4c:	02002025 	move	a0,s0
  50:	c6240008 	lwc1	$f4,8(s1)
  54:	2605014c 	addiu	a1,s0,332
  58:	e60400bc 	swc1	$f4,188(s0)
  5c:	8629000c 	lh	t1,12(s1)
  60:	8fa4003c 	lw	a0,60(sp)
  64:	05200015 	bltz	t1,bc <ObjHana_Init+0xbc>
  68:	00000000 	nop
  6c:	0c000000 	jal	0 <ObjHana_Init>
  70:	afa50024 	sw	a1,36(sp)
  74:	3c070000 	lui	a3,0x0
  78:	24e70020 	addiu	a3,a3,32
  7c:	8fa4003c 	lw	a0,60(sp)
  80:	8fa50024 	lw	a1,36(sp)
  84:	0c000000 	jal	0 <ObjHana_Init>
  88:	02003025 	move	a2,s0
  8c:	02002025 	move	a0,s0
  90:	0c000000 	jal	0 <ObjHana_Init>
  94:	8fa50024 	lw	a1,36(sp)
  98:	862a000c 	lh	t2,12(s1)
  9c:	3c060000 	lui	a2,0x0
  a0:	24c6004c 	addiu	a2,a2,76
  a4:	a60a018c 	sh	t2,396(s0)
  a8:	862b000e 	lh	t3,14(s1)
  ac:	26040098 	addiu	a0,s0,152
  b0:	00002825 	move	a1,zero
  b4:	0c000000 	jal	0 <ObjHana_Init>
  b8:	a60b018e 	sh	t3,398(s0)
  bc:	3c0c0000 	lui	t4,0x0
  c0:	258c0074 	addiu	t4,t4,116
  c4:	162c0007 	bne	s1,t4,e4 <ObjHana_Init+0xe4>
  c8:	3c0d0000 	lui	t5,0x0
  cc:	95ad0edc 	lhu	t5,3804(t5)
  d0:	31ae0001 	andi	t6,t5,0x1
  d4:	51c00004 	beqzl	t6,e8 <ObjHana_Init+0xe8>
  d8:	8fbf001c 	lw	ra,28(sp)
  dc:	0c000000 	jal	0 <ObjHana_Init>
  e0:	02002025 	move	a0,s0
  e4:	8fbf001c 	lw	ra,28(sp)
  e8:	8fb00014 	lw	s0,20(sp)
  ec:	8fb10018 	lw	s1,24(sp)
  f0:	03e00008 	jr	ra
  f4:	27bd0038 	addiu	sp,sp,56

000000f8 <ObjHana_Destroy>:
  f8:	27bdffe8 	addiu	sp,sp,-24
  fc:	afbf0014 	sw	ra,20(sp)
 100:	848e001c 	lh	t6,28(a0)
 104:	3c190000 	lui	t9,0x0
 108:	00803025 	move	a2,a0
 10c:	31cf0003 	andi	t7,t6,0x3
 110:	000fc100 	sll	t8,t7,0x4
 114:	0338c821 	addu	t9,t9,t8
 118:	87390060 	lh	t9,96(t9)
 11c:	00a02025 	move	a0,a1
 120:	07220004 	bltzl	t9,134 <ObjHana_Destroy+0x3c>
 124:	8fbf0014 	lw	ra,20(sp)
 128:	0c000000 	jal	0 <ObjHana_Init>
 12c:	24c5014c 	addiu	a1,a2,332
 130:	8fbf0014 	lw	ra,20(sp)
 134:	27bd0018 	addiu	sp,sp,24
 138:	03e00008 	jr	ra
 13c:	00000000 	nop

00000140 <ObjHana_Update>:
 140:	27bdffe8 	addiu	sp,sp,-24
 144:	afbf0014 	sw	ra,20(sp)
 148:	afa5001c 	sw	a1,28(sp)
 14c:	848e001c 	lh	t6,28(a0)
 150:	3c190000 	lui	t9,0x0
 154:	00803825 	move	a3,a0
 158:	31cf0003 	andi	t7,t6,0x3
 15c:	000fc100 	sll	t8,t7,0x4
 160:	0338c821 	addu	t9,t9,t8
 164:	87390060 	lh	t9,96(t9)
 168:	3c0143c8 	lui	at,0x43c8
 16c:	0722000d 	bltzl	t9,1a4 <ObjHana_Update+0x64>
 170:	8fbf0014 	lw	ra,20(sp)
 174:	c4840090 	lwc1	$f4,144(a0)
 178:	44813000 	mtc1	at,$f6
 17c:	3c010001 	lui	at,0x1
 180:	34211e60 	ori	at,at,0x1e60
 184:	4606203c 	c.lt.s	$f4,$f6
 188:	00a02025 	move	a0,a1
 18c:	00a12821 	addu	a1,a1,at
 190:	45020004 	bc1fl	1a4 <ObjHana_Update+0x64>
 194:	8fbf0014 	lw	ra,20(sp)
 198:	0c000000 	jal	0 <ObjHana_Init>
 19c:	24e6014c 	addiu	a2,a3,332
 1a0:	8fbf0014 	lw	ra,20(sp)
 1a4:	27bd0018 	addiu	sp,sp,24
 1a8:	03e00008 	jr	ra
 1ac:	00000000 	nop

000001b0 <ObjHana_Draw>:
 1b0:	27bdffe8 	addiu	sp,sp,-24
 1b4:	afbf0014 	sw	ra,20(sp)
 1b8:	00803825 	move	a3,a0
 1bc:	84ee001c 	lh	t6,28(a3)
 1c0:	00a02025 	move	a0,a1
 1c4:	3c050000 	lui	a1,0x0
 1c8:	31cf0003 	andi	t7,t6,0x3
 1cc:	000fc100 	sll	t8,t7,0x4
 1d0:	00b82821 	addu	a1,a1,t8
 1d4:	0c000000 	jal	0 <ObjHana_Init>
 1d8:	8ca50054 	lw	a1,84(a1)
 1dc:	8fbf0014 	lw	ra,20(sp)
 1e0:	27bd0018 	addiu	sp,sp,24
 1e4:	03e00008 	jr	ra
 1e8:	00000000 	nop
 1ec:	00000000 	nop
