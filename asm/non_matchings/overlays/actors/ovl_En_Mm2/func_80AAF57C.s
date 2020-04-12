glabel func_80AAF57C
/* 0072C 80AAF57C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00730 80AAF580 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00734 80AAF584 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00738 80AAF588 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 0073C 80AAF58C 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 00740 80AAF590 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 00744 80AAF594 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 00748 80AAF598 0C2ABBDC */  jal     func_80AAEF70              
/* 0074C 80AAF59C 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 00750 80AAF5A0 3C0680AB */  lui     $a2, %hi(func_80AAF3C0)    ## $a2 = 80AB0000
/* 00754 80AAF5A4 24C6F3C0 */  addiu   $a2, $a2, %lo(func_80AAF3C0) ## $a2 = 80AAF3C0
/* 00758 80AAF5A8 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 0075C 80AAF5AC 0C2ABC89 */  jal     func_80AAF224              
/* 00760 80AAF5B0 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 00764 80AAF5B4 10400009 */  beq     $v0, $zero, .L80AAF5DC     
/* 00768 80AAF5B8 8FAE0018 */  lw      $t6, 0x0018($sp)           
/* 0076C 80AAF5BC 95CF010E */  lhu     $t7, 0x010E($t6)           ## 0000010E
/* 00770 80AAF5C0 2401607D */  addiu   $at, $zero, 0x607D         ## $at = 0000607D
/* 00774 80AAF5C4 3C028016 */  lui     $v0, 0x8016                ## $v0 = 80160000
/* 00778 80AAF5C8 15E10004 */  bne     $t7, $at, .L80AAF5DC       
/* 0077C 80AAF5CC 2442E660 */  addiu   $v0, $v0, 0xE660           ## $v0 = 8015E660
/* 00780 80AAF5D0 94580F26 */  lhu     $t8, 0x0F26($v0)           ## 8015F586
/* 00784 80AAF5D4 37198000 */  ori     $t9, $t8, 0x8000           ## $t9 = 00008000
/* 00788 80AAF5D8 A4590F26 */  sh      $t9, 0x0F26($v0)           ## 8015F586
.L80AAF5DC:
/* 0078C 80AAF5DC 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00790 80AAF5E0 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00794 80AAF5E4 03E00008 */  jr      $ra                        
/* 00798 80AAF5E8 00000000 */  nop
