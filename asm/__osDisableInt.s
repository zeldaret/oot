.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16
  
glabel __osDisableInt
/* 007E80 80007280 3C0A8001 */  lui   $t2, %hi(__OSGlobalIntMask) # $t2, 0x8001
/* 007E84 80007284 254AAD00 */  addiu $t2, %lo(__OSGlobalIntMask) # addiu $t2, $t2, -0x5300
/* 007E88 80007288 8D4B0000 */  lw    $t3, ($t2)
/* 007E8C 8000728C 316BFF00 */  andi  $t3, $t3, 0xff00
/* 007E90 80007290 40086000 */  mfc0  $t0, $12
/* 007E94 80007294 2401FFFE */  li    $at, -2
/* 007E98 80007298 01014824 */  and   $t1, $t0, $at
/* 007E9C 8000729C 40896000 */  mtc0  $t1, $12
/* 007EA0 800072A0 31020001 */  andi  $v0, $t0, 1
/* 007EA4 800072A4 8D480000 */  lw    $t0, ($t2)
/* 007EA8 800072A8 3108FF00 */  andi  $t0, $t0, 0xff00
/* 007EAC 800072AC 110B000E */  beq   $t0, $t3, .L800072E8
/* 007EB0 800072B0 3C0A8001 */   lui   $t2, %hi(__osRunningThread) # $t2, 0x8001
/* 007EB4 800072B4 254AAD50 */  addiu $t2, %lo(__osRunningThread) # addiu $t2, $t2, -0x52b0
/* 007EB8 800072B8 8D490118 */  lw    $t1, 0x118($t2)
/* 007EBC 800072BC 312AFF00 */  andi  $t2, $t1, 0xff00
/* 007EC0 800072C0 01485024 */  and   $t2, $t2, $t0
/* 007EC4 800072C4 3C01FFFF */  lui   $at, (0xFFFF00FF >> 16) # lui $at, 0xffff
/* 007EC8 800072C8 342100FF */  ori   $at, (0xFFFF00FF & 0xFFFF) # ori $at, $at, 0xff
/* 007ECC 800072CC 01214824 */  and   $t1, $t1, $at
/* 007ED0 800072D0 012A4825 */  or    $t1, $t1, $t2
/* 007ED4 800072D4 2401FFFE */  li    $at, -2
/* 007ED8 800072D8 01214824 */  and   $t1, $t1, $at
/* 007EDC 800072DC 40896000 */  mtc0  $t1, $12
/* 007EE0 800072E0 00000000 */  nop   
/* 007EE4 800072E4 00000000 */  nop   
.L800072E8:
/* 007EE8 800072E8 03E00008 */  jr    $ra
/* 007EEC 800072EC 00000000 */   nop   
