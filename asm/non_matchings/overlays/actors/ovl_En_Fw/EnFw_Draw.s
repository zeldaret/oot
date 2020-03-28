glabel EnFw_Draw
/* 01040 80A1F5E0 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 01044 80A1F5E4 AFBF002C */  sw      $ra, 0x002C($sp)
/* 01048 80A1F5E8 AFB00028 */  sw      $s0, 0x0028($sp)
/* 0104C 80A1F5EC 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 01050 80A1F5F0 0C287DC2 */  jal     func_80A1F708
/* 01054 80A1F5F4 AFA50034 */  sw      $a1, 0x0034($sp)
/* 01058 80A1F5F8 0C034213 */  jal     Matrix_Push
/* 0105C 80A1F5FC 00000000 */  nop
/* 01060 80A1F600 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01064 80A1F604 0C287E05 */  jal     func_80A1F814
/* 01068 80A1F608 8FA50034 */  lw      $a1, 0x0034($sp)
/* 0106C 80A1F60C 0C034221 */  jal     Matrix_Pull
/* 01070 80A1F610 00000000 */  nop
/* 01074 80A1F614 8FAE0034 */  lw      $t6, 0x0034($sp)
/* 01078 80A1F618 0C024F46 */  jal     func_80093D18
/* 0107C 80A1F61C 8DC40000 */  lw      $a0, 0x0000($t6)           ## 00000000
/* 01080 80A1F620 8E050150 */  lw      $a1, 0x0150($s0)           ## 00000150
/* 01084 80A1F624 8E06016C */  lw      $a2, 0x016C($s0)           ## 0000016C
/* 01088 80A1F628 9207014E */  lbu     $a3, 0x014E($s0)           ## 0000014E
/* 0108C 80A1F62C 3C0F80A2 */  lui     $t7, %hi(func_80A1F52C)    ## $t7 = 80A20000
/* 01090 80A1F630 3C1880A2 */  lui     $t8, %hi(func_80A1F544)    ## $t8 = 80A20000
/* 01094 80A1F634 2718F544 */  addiu   $t8, $t8, %lo(func_80A1F544) ## $t8 = 80A1F544
/* 01098 80A1F638 25EFF52C */  addiu   $t7, $t7, %lo(func_80A1F52C) ## $t7 = 80A1F52C
/* 0109C 80A1F63C AFAF0010 */  sw      $t7, 0x0010($sp)
/* 010A0 80A1F640 AFB80014 */  sw      $t8, 0x0014($sp)
/* 010A4 80A1F644 AFB00018 */  sw      $s0, 0x0018($sp)
/* 010A8 80A1F648 0C0286B2 */  jal     SkelAnime_DrawSV
/* 010AC 80A1F64C 8FA40034 */  lw      $a0, 0x0034($sp)
/* 010B0 80A1F650 8FBF002C */  lw      $ra, 0x002C($sp)
/* 010B4 80A1F654 8FB00028 */  lw      $s0, 0x0028($sp)
/* 010B8 80A1F658 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 010BC 80A1F65C 03E00008 */  jr      $ra
/* 010C0 80A1F660 00000000 */  nop


