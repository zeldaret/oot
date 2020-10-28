
build/src/code/relocation.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <Overlay_Relocate>:
   0:	27bdfe58 	addiu	sp,sp,-424
   4:	3c0e0000 	lui	t6,0x0
   8:	8dce0000 	lw	t6,0(t6)
   c:	afbe0040 	sw	s8,64(sp)
  10:	afb7003c 	sw	s7,60(sp)
  14:	afb60038 	sw	s6,56(sp)
  18:	afb40030 	sw	s4,48(sp)
  1c:	afb3002c 	sw	s3,44(sp)
  20:	afb10024 	sw	s1,36(sp)
  24:	afb00020 	sw	s0,32(sp)
  28:	29c10003 	slti	at,t6,3
  2c:	00a08025 	move	s0,a1
  30:	0080a025 	move	s4,a0
  34:	00c0f025 	move	s8,a2
  38:	afbf0044 	sw	ra,68(sp)
  3c:	afb50034 	sw	s5,52(sp)
  40:	afb20028 	sw	s2,40(sp)
  44:	00009825 	move	s3,zero
  48:	00008825 	move	s1,zero
  4c:	0000b025 	move	s6,zero
  50:	14200012 	bnez	at,9c <Overlay_Relocate+0x9c>
  54:	0000b825 	move	s7,zero
  58:	3c040000 	lui	a0,0x0
  5c:	24840000 	addiu	a0,a0,0
  60:	02802825 	move	a1,s4
  64:	02003025 	move	a2,s0
  68:	03c03825 	move	a3,s8
  6c:	0c000000 	jal	0 <Overlay_Relocate>
  70:	afb001ac 	sw	s0,428(sp)
  74:	8fa201ac 	lw	v0,428(sp)
  78:	3c040000 	lui	a0,0x0
  7c:	24840020 	addiu	a0,a0,32
  80:	8c4f000c 	lw	t7,12(v0)
  84:	8c450000 	lw	a1,0(v0)
  88:	8c460004 	lw	a2,4(v0)
  8c:	8c470008 	lw	a3,8(v0)
  90:	0c000000 	jal	0 <Overlay_Relocate>
  94:	afaf0010 	sw	t7,16(sp)
  98:	8fb001ac 	lw	s0,428(sp)
  9c:	afa00198 	sw	zero,408(sp)
  a0:	afb4019c 	sw	s4,412(sp)
  a4:	8e180000 	lw	t8,0(s0)
  a8:	00004025 	move	t0,zero
  ac:	02004825 	move	t1,s0
  b0:	0314c821 	addu	t9,t8,s4
  b4:	afb901a0 	sw	t9,416(sp)
  b8:	8e0b0004 	lw	t3,4(s0)
  bc:	032b6021 	addu	t4,t9,t3
  c0:	afac01a4 	sw	t4,420(sp)
  c4:	8e0d0010 	lw	t5,16(s0)
  c8:	51a00099 	beqzl	t5,330 <Overlay_Relocate+0x330>
  cc:	8fbf0044 	lw	ra,68(sp)
  d0:	afb001ac 	sw	s0,428(sp)
  d4:	8d220014 	lw	v0,20(t1)
  d8:	3c0100ff 	lui	at,0xff
  dc:	3421ffff 	ori	at,at,0xffff
  e0:	00027782 	srl	t6,v0,0x1e
  e4:	000e7880 	sll	t7,t6,0x2
  e8:	03afc021 	addu	t8,sp,t7
  ec:	8f180198 	lw	t8,408(t8)
  f0:	0041c824 	and	t9,v0,at
  f4:	3c013f00 	lui	at,0x3f00
  f8:	03198021 	addu	s0,t8,t9
  fc:	8e030000 	lw	v1,0(s0)
 100:	00413824 	and	a3,v0,at
 104:	3c010200 	lui	at,0x200
 108:	24120010 	li	s2,16
 10c:	10e1000c 	beq	a3,at,140 <Overlay_Relocate+0x140>
 110:	0060a825 	move	s5,v1
 114:	3c010400 	lui	at,0x400
 118:	10e10013 	beq	a3,at,168 <Overlay_Relocate+0x168>
 11c:	3c0403ff 	lui	a0,0x3ff
 120:	3c010500 	lui	at,0x500
 124:	10e10023 	beq	a3,at,1b4 <Overlay_Relocate+0x1b4>
 128:	00035c02 	srl	t3,v1,0x10
 12c:	3c010600 	lui	at,0x600
 130:	10e1002b 	beq	a3,at,1e0 <Overlay_Relocate+0x1e0>
 134:	00031542 	srl	v0,v1,0x15
 138:	10000054 	b	28c <Overlay_Relocate+0x28c>
 13c:	3c010200 	lui	at,0x200
 140:	3c010f00 	lui	at,0xf00
 144:	00615024 	and	t2,v1,at
 148:	55400050 	bnezl	t2,28c <Overlay_Relocate+0x28c>
 14c:	3c010200 	lui	at,0x200
 150:	007e9823 	subu	s3,v1,s8
 154:	0274b821 	addu	s7,s3,s4
 158:	02e08825 	move	s1,s7
 15c:	02a0b025 	move	s6,s5
 160:	10000049 	b	288 <Overlay_Relocate+0x288>
 164:	ae170000 	sw	s7,0(s0)
 168:	3484ffff 	ori	a0,a0,0xffff
 16c:	00645824 	and	t3,v1,a0
 170:	3c058000 	lui	a1,0x8000
 174:	000b6080 	sll	t4,t3,0x2
 178:	3c01fc00 	lui	at,0xfc00
 17c:	0185b025 	or	s6,t4,a1
 180:	00616824 	and	t5,v1,at
 184:	02de9823 	subu	s3,s6,s8
 188:	3c010fff 	lui	at,0xfff
 18c:	3421ffff 	ori	at,at,0xffff
 190:	02937021 	addu	t6,s4,s3
 194:	01c17824 	and	t7,t6,at
 198:	000fc082 	srl	t8,t7,0x2
 19c:	01b88825 	or	s1,t5,t8
 1a0:	0224c824 	and	t9,s1,a0
 1a4:	00195080 	sll	t2,t9,0x2
 1a8:	0145b825 	or	s7,t2,a1
 1ac:	10000036 	b	288 <Overlay_Relocate+0x288>
 1b0:	ae110000 	sw	s1,0(s0)
 1b4:	316c001f 	andi	t4,t3,0x1f
 1b8:	000c7080 	sll	t6,t4,0x2
 1bc:	03ae7821 	addu	t7,sp,t6
 1c0:	adf000fc 	sw	s0,252(t7)
 1c4:	8e030000 	lw	v1,0(s0)
 1c8:	00036c02 	srl	t5,v1,0x10
 1cc:	31b8001f 	andi	t8,t5,0x1f
 1d0:	0018c880 	sll	t9,t8,0x2
 1d4:	03b95021 	addu	t2,sp,t9
 1d8:	1000002b 	b	288 <Overlay_Relocate+0x288>
 1dc:	ad43007c 	sw	v1,124(t2)
 1e0:	3042001f 	andi	v0,v0,0x1f
 1e4:	00021080 	sll	v0,v0,0x2
 1e8:	27ab007c 	addiu	t3,sp,124
 1ec:	004b2821 	addu	a1,v0,t3
 1f0:	8caf0000 	lw	t7,0(a1)
 1f4:	00036400 	sll	t4,v1,0x10
 1f8:	000c7403 	sra	t6,t4,0x10
 1fc:	000f6c00 	sll	t5,t7,0x10
 200:	01cd3021 	addu	a2,t6,t5
 204:	3c010f00 	lui	at,0xf00
 208:	03a22021 	addu	a0,sp,v0
 20c:	00c1c024 	and	t8,a2,at
 210:	1700001d 	bnez	t8,288 <Overlay_Relocate+0x288>
 214:	8c8400fc 	lw	a0,252(a0)
 218:	00de9823 	subu	s3,a2,s8
 21c:	02741021 	addu	v0,s3,s4
 220:	30598000 	andi	t9,v0,0x8000
 224:	13200003 	beqz	t9,234 <Overlay_Relocate+0x234>
 228:	3c06ffff 	lui	a2,0xffff
 22c:	10000002 	b	238 <Overlay_Relocate+0x238>
 230:	24050001 	li	a1,1
 234:	00002825 	move	a1,zero
 238:	8c830000 	lw	v1,0(a0)
 23c:	00027402 	srl	t6,v0,0x10
 240:	31cdffff 	andi	t5,t6,0xffff
 244:	01a5c021 	addu	t8,t5,a1
 248:	00667824 	and	t7,v1,a2
 24c:	00155c00 	sll	t3,s5,0x10
 250:	01f8c825 	or	t9,t7,t8
 254:	000b6403 	sra	t4,t3,0x10
 258:	ac990000 	sw	t9,0(a0)
 25c:	8e0b0000 	lw	t3,0(s0)
 260:	00035400 	sll	t2,v1,0x10
 264:	014cb021 	addu	s6,t2,t4
 268:	304cffff 	andi	t4,v0,0xffff
 26c:	01665024 	and	t2,t3,a2
 270:	014c8825 	or	s1,t2,t4
 274:	00117c00 	sll	t7,s1,0x10
 278:	000fc403 	sra	t8,t7,0x10
 27c:	00196c00 	sll	t5,t9,0x10
 280:	01b8b821 	addu	s7,t5,t8
 284:	ae110000 	sw	s1,0(s0)
 288:	3c010200 	lui	at,0x200
 28c:	10e10008 	beq	a3,at,2b0 <Overlay_Relocate+0x2b0>
 290:	3c190000 	lui	t9,0x0
 294:	3c010400 	lui	at,0x400
 298:	10e10006 	beq	a3,at,2b4 <Overlay_Relocate+0x2b4>
 29c:	3c010600 	lui	at,0x600
 2a0:	10e10005 	beq	a3,at,2b8 <Overlay_Relocate+0x2b8>
 2a4:	00000000 	nop
 2a8:	1000001a 	b	314 <Overlay_Relocate+0x314>
 2ac:	8faa01ac 	lw	t2,428(sp)
 2b0:	24120016 	li	s2,22
 2b4:	2652000a 	addiu	s2,s2,10
 2b8:	8f390000 	lw	t9,0(t9)
 2bc:	3c040000 	lui	a0,0x0
 2c0:	24840050 	addiu	a0,a0,80
 2c4:	2b210003 	slti	at,t9,3
 2c8:	14200011 	bnez	at,310 <Overlay_Relocate+0x310>
 2cc:	02402825 	move	a1,s2
 2d0:	02003025 	move	a2,s0
 2d4:	02203825 	move	a3,s1
 2d8:	afb70010 	sw	s7,16(sp)
 2dc:	afa80180 	sw	t0,384(sp)
 2e0:	0c000000 	jal	0 <Overlay_Relocate>
 2e4:	afa90058 	sw	t1,88(sp)
 2e8:	3c040000 	lui	a0,0x0
 2ec:	021e5821 	addu	t3,s0,s8
 2f0:	01742823 	subu	a1,t3,s4
 2f4:	24840068 	addiu	a0,a0,104
 2f8:	02a03025 	move	a2,s5
 2fc:	02c03825 	move	a3,s6
 300:	0c000000 	jal	0 <Overlay_Relocate>
 304:	afb30010 	sw	s3,16(sp)
 308:	8fa80180 	lw	t0,384(sp)
 30c:	8fa90058 	lw	t1,88(sp)
 310:	8faa01ac 	lw	t2,428(sp)
 314:	25080001 	addiu	t0,t0,1
 318:	25290004 	addiu	t1,t1,4
 31c:	8d4c0010 	lw	t4,16(t2)
 320:	010c082b 	sltu	at,t0,t4
 324:	5420ff6c 	bnezl	at,d8 <Overlay_Relocate+0xd8>
 328:	8d220014 	lw	v0,20(t1)
 32c:	8fbf0044 	lw	ra,68(sp)
 330:	8fb00020 	lw	s0,32(sp)
 334:	8fb10024 	lw	s1,36(sp)
 338:	8fb20028 	lw	s2,40(sp)
 33c:	8fb3002c 	lw	s3,44(sp)
 340:	8fb40030 	lw	s4,48(sp)
 344:	8fb50034 	lw	s5,52(sp)
 348:	8fb60038 	lw	s6,56(sp)
 34c:	8fb7003c 	lw	s7,60(sp)
 350:	8fbe0040 	lw	s8,64(sp)
 354:	03e00008 	jr	ra
 358:	27bd01a8 	addiu	sp,sp,424
 35c:	00000000 	nop
