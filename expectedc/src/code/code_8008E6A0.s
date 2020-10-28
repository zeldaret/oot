
build/src/code/code_8008E6A0.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <func_8008E6A0>:
   0:	ac800004 	sw	zero,4(a0)
   4:	03e00008 	jr	ra
   8:	ac800000 	sw	zero,0(a0)

0000000c <func_8008E6AC>:
   c:	94ae0000 	lhu	t6,0(a1)
  10:	2403ffef 	li	v1,-17
  14:	01c37827 	nor	t7,t6,v1
  18:	55e0000a 	bnezl	t7,44 <func_8008E6AC+0x38>
  1c:	8c880000 	lw	t0,0(a0)
  20:	94b8000c 	lhu	t8,12(a1)
  24:	2401fbff 	li	at,-1025
  28:	0301c827 	nor	t9,t8,at
  2c:	57200005 	bnezl	t9,44 <func_8008E6AC+0x38>
  30:	8c880000 	lw	t0,0(a0)
  34:	8c820000 	lw	v0,0(a0)
  38:	2c420001 	sltiu	v0,v0,1
  3c:	ac820000 	sw	v0,0(a0)
  40:	8c880000 	lw	t0,0(a0)
  44:	51000013 	beqzl	t0,94 <func_8008E6AC+0x88>
  48:	ac800004 	sw	zero,4(a0)
  4c:	94a20000 	lhu	v0,0(a1)
  50:	2401dfff 	li	at,-8193
  54:	00414827 	nor	t1,v0,at
  58:	55200011 	bnezl	t1,a0 <func_8008E6AC+0x94>
  5c:	00001025 	move	v0,zero
  60:	94aa000c 	lhu	t2,12(a1)
  64:	00436027 	nor	t4,v0,v1
  68:	01435827 	nor	t3,t2,v1
  6c:	51600009 	beqzl	t3,94 <func_8008E6AC+0x88>
  70:	ac800004 	sw	zero,4(a0)
  74:	5580000a 	bnezl	t4,a0 <func_8008E6AC+0x94>
  78:	00001025 	move	v0,zero
  7c:	8c8d0004 	lw	t5,4(a0)
  80:	25ae0001 	addiu	t6,t5,1
  84:	29c10009 	slti	at,t6,9
  88:	14200004 	bnez	at,9c <func_8008E6AC+0x90>
  8c:	ac8e0004 	sw	t6,4(a0)
  90:	ac800004 	sw	zero,4(a0)
  94:	03e00008 	jr	ra
  98:	24020001 	li	v0,1
  9c:	00001025 	move	v0,zero
  a0:	03e00008 	jr	ra
  a4:	00000000 	nop
	...
