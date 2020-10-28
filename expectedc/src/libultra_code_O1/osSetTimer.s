
build/src/libultra_code_O1/osSetTimer.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <osSetTimer>:
   0:	27bdffc8 	addiu	sp,sp,-56
   4:	afa40038 	sw	a0,56(sp)
   8:	8fae0038 	lw	t6,56(sp)
   c:	afbf0014 	sw	ra,20(sp)
  10:	afa60040 	sw	a2,64(sp)
  14:	afa70044 	sw	a3,68(sp)
  18:	adc00000 	sw	zero,0(t6)
  1c:	8faf0038 	lw	t7,56(sp)
  20:	ade00004 	sw	zero,4(t7)
  24:	8fa80038 	lw	t0,56(sp)
  28:	8fb9004c 	lw	t9,76(sp)
  2c:	8fb80048 	lw	t8,72(sp)
  30:	ad19000c 	sw	t9,12(t0)
  34:	ad180008 	sw	t8,8(t0)
  38:	8faa0040 	lw	t2,64(sp)
  3c:	8fab0044 	lw	t3,68(sp)
  40:	15400003 	bnez	t2,50 <osSetTimer+0x50>
  44:	00000000 	nop
  48:	11600005 	beqz	t3,60 <osSetTimer+0x60>
  4c:	00000000 	nop
  50:	8fa90038 	lw	t1,56(sp)
  54:	ad2a0010 	sw	t2,16(t1)
  58:	10000006 	b	74 <osSetTimer+0x74>
  5c:	ad2b0014 	sw	t3,20(t1)
  60:	8fae0038 	lw	t6,56(sp)
  64:	8fac0048 	lw	t4,72(sp)
  68:	8fad004c 	lw	t5,76(sp)
  6c:	adcc0010 	sw	t4,16(t6)
  70:	adcd0014 	sw	t5,20(t6)
  74:	8faf0050 	lw	t7,80(sp)
  78:	8fb80038 	lw	t8,56(sp)
  7c:	af0f0018 	sw	t7,24(t8)
  80:	8fa80038 	lw	t0,56(sp)
  84:	8fb90054 	lw	t9,84(sp)
  88:	0c000000 	jal	0 <osSetTimer>
  8c:	ad19001c 	sw	t9,28(t0)
  90:	3c0a0000 	lui	t2,0x0
  94:	8d4a0000 	lw	t2,0(t2)
  98:	afa20020 	sw	v0,32(sp)
  9c:	8d4b0000 	lw	t3,0(t2)
  a0:	116a0028 	beq	t3,t2,144 <osSetTimer+0x144>
  a4:	00000000 	nop
  a8:	3c090000 	lui	t1,0x0
  ac:	8d290000 	lw	t1,0(t1)
  b0:	8d2c0000 	lw	t4,0(t1)
  b4:	0c000000 	jal	0 <osSetTimer>
  b8:	afac002c 	sw	t4,44(sp)
  bc:	afa20028 	sw	v0,40(sp)
  c0:	3c0e0000 	lui	t6,0x0
  c4:	8dce0000 	lw	t6,0(t6)
  c8:	8fad0028 	lw	t5,40(sp)
  cc:	8fa8002c 	lw	t0,44(sp)
  d0:	24180000 	li	t8,0
  d4:	01ae7823 	subu	t7,t5,t6
  d8:	afaf0024 	sw	t7,36(sp)
  dc:	8d0a0010 	lw	t2,16(t0)
  e0:	01e0c825 	move	t9,t7
  e4:	8d0b0014 	lw	t3,20(t0)
  e8:	0158082b 	sltu	at,t2,t8
  ec:	14200010 	bnez	at,130 <osSetTimer+0x130>
  f0:	030a082b 	sltu	at,t8,t2
  f4:	14200003 	bnez	at,104 <osSetTimer+0x104>
  f8:	032b082b 	sltu	at,t9,t3
  fc:	1020000c 	beqz	at,130 <osSetTimer+0x130>
 100:	00000000 	nop
 104:	25090010 	addiu	t1,t0,16
 108:	afa9001c 	sw	t1,28(sp)
 10c:	8d0d0014 	lw	t5,20(t0)
 110:	8d0c0010 	lw	t4,16(t0)
 114:	01b9082b 	sltu	at,t5,t9
 118:	01987023 	subu	t6,t4,t8
 11c:	01c17023 	subu	t6,t6,at
 120:	01b97823 	subu	t7,t5,t9
 124:	ad0f0014 	sw	t7,20(t0)
 128:	10000006 	b	144 <osSetTimer+0x144>
 12c:	ad0e0010 	sw	t6,16(t0)
 130:	8fa9002c 	lw	t1,44(sp)
 134:	240a0000 	li	t2,0
 138:	240b0001 	li	t3,1
 13c:	ad2b0014 	sw	t3,20(t1)
 140:	ad2a0010 	sw	t2,16(t1)
 144:	0c000000 	jal	0 <osSetTimer>
 148:	8fa40038 	lw	a0,56(sp)
 14c:	3c0c0000 	lui	t4,0x0
 150:	8d8c0000 	lw	t4,0(t4)
 154:	afa20030 	sw	v0,48(sp)
 158:	afa30034 	sw	v1,52(sp)
 15c:	8d8d0000 	lw	t5,0(t4)
 160:	8da40010 	lw	a0,16(t5)
 164:	0c000000 	jal	0 <osSetTimer>
 168:	8da50014 	lw	a1,20(t5)
 16c:	0c000000 	jal	0 <osSetTimer>
 170:	8fa40020 	lw	a0,32(sp)
 174:	8fbf0014 	lw	ra,20(sp)
 178:	27bd0038 	addiu	sp,sp,56
 17c:	00001025 	move	v0,zero
 180:	03e00008 	jr	ra
 184:	00000000 	nop
	...
