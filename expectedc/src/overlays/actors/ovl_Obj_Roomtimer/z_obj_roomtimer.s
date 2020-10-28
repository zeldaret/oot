
build/src/overlays/actors/ovl_Obj_Roomtimer/z_obj_roomtimer.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <ObjRoomtimer_Init>:
   0:	afa50004 	sw	a1,4(sp)
   4:	8482001c 	lh	v0,28(a0)
   8:	240103ff 	li	at,1023
   c:	3c080000 	lui	t0,0x0
  10:	305803ff 	andi	t8,v0,0x3ff
  14:	a498001c 	sh	t8,28(a0)
  18:	00027283 	sra	t6,v0,0xa
  1c:	8482001c 	lh	v0,28(a0)
  20:	31cf003f 	andi	t7,t6,0x3f
  24:	ac8f0150 	sw	t7,336(a0)
  28:	10410007 	beq	v0,at,48 <ObjRoomtimer_Init+0x48>
  2c:	25080000 	addiu	t0,t0,0
  30:	28410259 	slti	at,v0,601
  34:	14200003 	bnez	at,44 <ObjRoomtimer_Init+0x44>
  38:	24190258 	li	t9,600
  3c:	10000002 	b	48 <ObjRoomtimer_Init+0x48>
  40:	a499001c 	sh	t9,28(a0)
  44:	a482001c 	sh	v0,28(a0)
  48:	03e00008 	jr	ra
  4c:	ac88014c 	sw	t0,332(a0)

00000050 <ObjRoomtimer_Destroy>:
  50:	afa50004 	sw	a1,4(sp)
  54:	848e001c 	lh	t6,28(a0)
  58:	240103ff 	li	at,1023
  5c:	3c020000 	lui	v0,0x0
  60:	11c10006 	beq	t6,at,7c <ObjRoomtimer_Destroy+0x2c>
  64:	24420000 	addiu	v0,v0,0
  68:	844f13d0 	lh	t7,5072(v0)
  6c:	2418000a 	li	t8,10
  70:	19e00002 	blez	t7,7c <ObjRoomtimer_Destroy+0x2c>
  74:	00000000 	nop
  78:	a45813ce 	sh	t8,5070(v0)
  7c:	03e00008 	jr	ra
  80:	00000000 	nop

00000084 <func_80B9D054>:
  84:	27bdffe8 	addiu	sp,sp,-24
  88:	afbf0014 	sw	ra,20(sp)
  8c:	afa40018 	sw	a0,24(sp)
  90:	afa5001c 	sw	a1,28(sp)
  94:	8486001c 	lh	a2,28(a0)
  98:	240103ff 	li	at,1023
  9c:	10c10003 	beq	a2,at,ac <func_80B9D054+0x28>
  a0:	00062400 	sll	a0,a2,0x10
  a4:	0c000000 	jal	0 <ObjRoomtimer_Init>
  a8:	00042403 	sra	a0,a0,0x10
  ac:	8fa4001c 	lw	a0,28(sp)
  b0:	8fa60018 	lw	a2,24(sp)
  b4:	24070006 	li	a3,6
  b8:	0c000000 	jal	0 <ObjRoomtimer_Init>
  bc:	24851c24 	addiu	a1,a0,7204
  c0:	8fb90018 	lw	t9,24(sp)
  c4:	3c180000 	lui	t8,0x0
  c8:	27180000 	addiu	t8,t8,0
  cc:	af38014c 	sw	t8,332(t9)
  d0:	8fbf0014 	lw	ra,20(sp)
  d4:	27bd0018 	addiu	sp,sp,24
  d8:	03e00008 	jr	ra
  dc:	00000000 	nop

000000e0 <func_80B9D0B0>:
  e0:	27bdffd8 	addiu	sp,sp,-40
  e4:	afb00020 	sw	s0,32(sp)
  e8:	00808025 	move	s0,a0
  ec:	afbf0024 	sw	ra,36(sp)
  f0:	afa5002c 	sw	a1,44(sp)
  f4:	00a02025 	move	a0,a1
  f8:	0c000000 	jal	0 <ObjRoomtimer_Init>
  fc:	82050003 	lb	a1,3(s0)
 100:	50400014 	beqzl	v0,154 <func_80B9D0B0+0x74>
 104:	8618001c 	lh	t8,28(s0)
 108:	860e001c 	lh	t6,28(s0)
 10c:	240103ff 	li	at,1023
 110:	240f000a 	li	t7,10
 114:	11c10002 	beq	t6,at,120 <func_80B9D0B0+0x40>
 118:	3c010000 	lui	at,0x0
 11c:	a42f13ce 	sh	t7,5070(at)
 120:	8fa4002c 	lw	a0,44(sp)
 124:	0c000000 	jal	0 <ObjRoomtimer_Init>
 128:	82050003 	lb	a1,3(s0)
 12c:	8fa4002c 	lw	a0,44(sp)
 130:	0c000000 	jal	0 <ObjRoomtimer_Init>
 134:	8e050150 	lw	a1,336(s0)
 138:	0c000000 	jal	0 <ObjRoomtimer_Init>
 13c:	24044802 	li	a0,18434
 140:	0c000000 	jal	0 <ObjRoomtimer_Init>
 144:	02002025 	move	a0,s0
 148:	10000018 	b	1ac <func_80B9D0B0+0xcc>
 14c:	8fbf0024 	lw	ra,36(sp)
 150:	8618001c 	lh	t8,28(s0)
 154:	240103ff 	li	at,1023
 158:	3c190000 	lui	t9,0x0
 15c:	53010013 	beql	t8,at,1ac <func_80B9D0B0+0xcc>
 160:	8fbf0024 	lw	ra,36(sp)
 164:	873913d0 	lh	t9,5072(t9)
 168:	3c070000 	lui	a3,0x0
 16c:	24e70000 	addiu	a3,a3,0
 170:	1720000d 	bnez	t9,1a8 <func_80B9D0B0+0xc8>
 174:	24045801 	li	a0,22529
 178:	3c080000 	lui	t0,0x0
 17c:	25080000 	addiu	t0,t0,0
 180:	3c050000 	lui	a1,0x0
 184:	24a50000 	addiu	a1,a1,0
 188:	afa80014 	sw	t0,20(sp)
 18c:	24060004 	li	a2,4
 190:	0c000000 	jal	0 <ObjRoomtimer_Init>
 194:	afa70010 	sw	a3,16(sp)
 198:	0c000000 	jal	0 <ObjRoomtimer_Init>
 19c:	8fa4002c 	lw	a0,44(sp)
 1a0:	0c000000 	jal	0 <ObjRoomtimer_Init>
 1a4:	02002025 	move	a0,s0
 1a8:	8fbf0024 	lw	ra,36(sp)
 1ac:	8fb00020 	lw	s0,32(sp)
 1b0:	27bd0028 	addiu	sp,sp,40
 1b4:	03e00008 	jr	ra
 1b8:	00000000 	nop

000001bc <ObjRoomtimer_Update>:
 1bc:	27bdffe8 	addiu	sp,sp,-24
 1c0:	afbf0014 	sw	ra,20(sp)
 1c4:	8c99014c 	lw	t9,332(a0)
 1c8:	0320f809 	jalr	t9
 1cc:	00000000 	nop
 1d0:	8fbf0014 	lw	ra,20(sp)
 1d4:	27bd0018 	addiu	sp,sp,24
 1d8:	03e00008 	jr	ra
 1dc:	00000000 	nop
