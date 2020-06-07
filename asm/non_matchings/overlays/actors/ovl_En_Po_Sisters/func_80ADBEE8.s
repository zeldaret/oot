glabel func_80ADBEE8
/* 02F58 80ADBEE8 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 02F5C 80ADBEEC AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 02F60 80ADBEF0 00803825 */  or      $a3, $a0, $zero            ## $a3 = 00000000
/* 02F64 80ADBEF4 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 02F68 80ADBEF8 AFA70018 */  sw      $a3, 0x0018($sp)           
/* 02F6C 80ADBEFC 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 02F70 80ADBF00 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 02F74 80ADBF04 8FA70018 */  lw      $a3, 0x0018($sp)           
/* 02F78 80ADBF08 84E5019A */  lh      $a1, 0x019A($a3)           ## 0000019A
/* 02F7C 80ADBF0C 00E02025 */  or      $a0, $a3, $zero            ## $a0 = 00000000
/* 02F80 80ADBF10 24E60008 */  addiu   $a2, $a3, 0x0008           ## $a2 = 00000008
/* 02F84 80ADBF14 10A00003 */  beq     $a1, $zero, .L80ADBF24     
/* 02F88 80ADBF18 24AEFFFF */  addiu   $t6, $a1, 0xFFFF           ## $t6 = FFFFFFFF
/* 02F8C 80ADBF1C A4EE019A */  sh      $t6, 0x019A($a3)           ## 0000019A
/* 02F90 80ADBF20 84E5019A */  lh      $a1, 0x019A($a3)           ## 0000019A
.L80ADBF24:
/* 02F94 80ADBF24 0C2B6490 */  jal     func_80AD9240              
/* 02F98 80ADBF28 AFA70018 */  sw      $a3, 0x0018($sp)           
/* 02F9C 80ADBF2C 8FA70018 */  lw      $a3, 0x0018($sp)           
/* 02FA0 80ADBF30 84EF019A */  lh      $t7, 0x019A($a3)           ## 0000019A
/* 02FA4 80ADBF34 00E02025 */  or      $a0, $a3, $zero            ## $a0 = 00000000
/* 02FA8 80ADBF38 55E00004 */  bnel    $t7, $zero, .L80ADBF4C     
/* 02FAC 80ADBF3C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 02FB0 80ADBF40 0C2B68AF */  jal     func_80ADA2BC              
/* 02FB4 80ADBF44 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 02FB8 80ADBF48 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80ADBF4C:
/* 02FBC 80ADBF4C 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 02FC0 80ADBF50 03E00008 */  jr      $ra                        
/* 02FC4 80ADBF54 00000000 */  nop
