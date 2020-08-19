.rdata
glabel D_80149C60
    .asciz "AUDIO : Ocarina Control Assign Normal\n"
    .balign 4

glabel D_80149C88
    .asciz "AUDIO : Ocarina Control Assign Custom\n"
    .balign 4

.text
glabel func_800EC960
/* B63B00 800EC960 27BDFFE8 */  addiu $sp, $sp, -0x18
/* B63B04 800EC964 AFA40018 */  sw    $a0, 0x18($sp)
/* B63B08 800EC968 308400FF */  andi  $a0, $a0, 0xff
/* B63B0C 800EC96C 14800011 */  bnez  $a0, .L800EC9B4
/* B63B10 800EC970 AFBF0014 */   sw    $ra, 0x14($sp)
/* B63B14 800EC974 3C048015 */  lui   $a0, %hi(D_80149C60) # $a0, 0x8015
/* B63B18 800EC978 0C00084C */  jal   osSyncPrintf
/* B63B1C 800EC97C 24849C60 */   addiu $a0, %lo(D_80149C60) # addiu $a0, $a0, -0x63a0
/* B63B20 800EC980 340E800F */  li    $t6, 32783
/* B63B24 800EC984 3C018013 */  lui   $at, %hi(D_80130EFC) # $at, 0x8013
/* B63B28 800EC988 AC2E0EFC */  sw    $t6, %lo(D_80130EFC)($at)
/* B63B2C 800EC98C 3C018013 */  lui   $at, %hi(D_80130F00) # $at, 0x8013
/* B63B30 800EC990 340F8000 */  li    $t7, 32768
/* B63B34 800EC994 AC2F0F00 */  sw    $t7, %lo(D_80130F00)($at)
/* B63B38 800EC998 3C018013 */  lui   $at, %hi(D_80130F04) # $at, 0x8013
/* B63B3C 800EC99C 24180008 */  li    $t8, 8
/* B63B40 800EC9A0 AC380F04 */  sw    $t8, %lo(D_80130F04)($at)
/* B63B44 800EC9A4 3C018013 */  lui   $at, %hi(D_80130F08) # $at, 0x8013
/* B63B48 800EC9A8 24190004 */  li    $t9, 4
/* B63B4C 800EC9AC 10000010 */  b     .L800EC9F0
/* B63B50 800EC9B0 AC390F08 */   sw    $t9, %lo(D_80130F08)($at)
.L800EC9B4:
/* B63B54 800EC9B4 3C048015 */  lui   $a0, %hi(D_80149C88) # $a0, 0x8015
/* B63B58 800EC9B8 0C00084C */  jal   osSyncPrintf
/* B63B5C 800EC9BC 24849C88 */   addiu $a0, %lo(D_80149C88) # addiu $a0, $a0, -0x6378
/* B63B60 800EC9C0 3408C007 */  li    $t0, 49159
/* B63B64 800EC9C4 3C018013 */  lui   $at, %hi(D_80130EFC) # $at, 0x8013
/* B63B68 800EC9C8 AC280EFC */  sw    $t0, %lo(D_80130EFC)($at)
/* B63B6C 800EC9CC 3C018013 */  lui   $at, %hi(D_80130F00) # $at, 0x8013
/* B63B70 800EC9D0 24094000 */  li    $t1, 16384
/* B63B74 800EC9D4 AC290F00 */  sw    $t1, %lo(D_80130F00)($at)
/* B63B78 800EC9D8 3C018013 */  lui   $at, %hi(D_80130F04) # $at, 0x8013
/* B63B7C 800EC9DC 240A0004 */  li    $t2, 4
/* B63B80 800EC9E0 AC2A0F04 */  sw    $t2, %lo(D_80130F04)($at)
/* B63B84 800EC9E4 3C018013 */  lui   $at, %hi(D_80130F08) # $at, 0x8013
/* B63B88 800EC9E8 340B8000 */  li    $t3, 32768
/* B63B8C 800EC9EC AC2B0F08 */  sw    $t3, %lo(D_80130F08)($at)
.L800EC9F0:
/* B63B90 800EC9F0 8FBF0014 */  lw    $ra, 0x14($sp)
/* B63B94 800EC9F4 27BD0018 */  addiu $sp, $sp, 0x18
/* B63B98 800EC9F8 03E00008 */  jr    $ra
/* B63B9C 800EC9FC 00000000 */   nop   

