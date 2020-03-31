glabel func_80AD0558
/* 010B8 80AD0558 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 010BC 80AD055C AFBF0014 */  sw      $ra, 0x0014($sp)
/* 010C0 80AD0560 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 010C4 80AD0564 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 010C8 80AD0568 24A505C4 */  addiu   $a1, $a1, 0x05C4           ## $a1 = 060005C4
/* 010CC 80AD056C AFA60018 */  sw      $a2, 0x0018($sp)
/* 010D0 80AD0570 0C0294BE */  jal     SkelAnime_ChangeAnimationDefaultRepeat
/* 010D4 80AD0574 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 010D8 80AD0578 8FA40018 */  lw      $a0, 0x0018($sp)
/* 010DC 80AD057C 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 010E0 80AD0580 240E000E */  addiu   $t6, $zero, 0x000E         ## $t6 = 0000000E
/* 010E4 80AD0584 3C0580AD */  lui     $a1, %hi(func_80AD05A8)    ## $a1 = 80AD0000
/* 010E8 80AD0588 24A505A8 */  addiu   $a1, $a1, %lo(func_80AD05A8) ## $a1 = 80AD05A8
/* 010EC 80AD058C AC8E02B0 */  sw      $t6, 0x02B0($a0)           ## 000002B0
/* 010F0 80AD0590 0C2B3D28 */  jal     func_80ACF4A0
/* 010F4 80AD0594 E48402E0 */  swc1    $f4, 0x02E0($a0)           ## 000002E0
/* 010F8 80AD0598 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 010FC 80AD059C 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 01100 80AD05A0 03E00008 */  jr      $ra
/* 01104 80AD05A4 00000000 */  nop


