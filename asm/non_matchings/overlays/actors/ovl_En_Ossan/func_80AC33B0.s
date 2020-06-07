glabel func_80AC33B0
/* 00710 80AC33B0 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 00714 80AC33B4 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00718 80AC33B8 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 0071C 80AC33BC 84CE0002 */  lh      $t6, 0x0002($a2)           ## 00000002
/* 00720 80AC33C0 24010192 */  addiu   $at, $zero, 0x0192         ## $at = 00000192
/* 00724 80AC33C4 00803825 */  or      $a3, $a0, $zero            ## $a3 = 00000000
/* 00728 80AC33C8 11C10010 */  beq     $t6, $at, .L80AC340C       
/* 0072C 80AC33CC AFAE001C */  sw      $t6, 0x001C($sp)           
/* 00730 80AC33D0 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 00734 80AC33D4 342117A4 */  ori     $at, $at, 0x17A4           ## $at = 000117A4
/* 00738 80AC33D8 00A12021 */  addu    $a0, $a1, $at              
/* 0073C 80AC33DC 87A5001E */  lh      $a1, 0x001E($sp)           
/* 00740 80AC33E0 AFA60028 */  sw      $a2, 0x0028($sp)           
/* 00744 80AC33E4 0C02604B */  jal     Object_GetIndex
              ## ObjectIndex
/* 00748 80AC33E8 AFA70020 */  sw      $a3, 0x0020($sp)           
/* 0074C 80AC33EC 8FA70020 */  lw      $a3, 0x0020($sp)           
/* 00750 80AC33F0 8FA60028 */  lw      $a2, 0x0028($sp)           
/* 00754 80AC33F4 A0E201E9 */  sb      $v0, 0x01E9($a3)           ## 000001E9
/* 00758 80AC33F8 80F801E9 */  lb      $t8, 0x01E9($a3)           ## 000001E9
/* 0075C 80AC33FC 07030006 */  bgezl   $t8, .L80AC3418            
/* 00760 80AC3400 84C50004 */  lh      $a1, 0x0004($a2)           ## 00000004
/* 00764 80AC3404 10000016 */  beq     $zero, $zero, .L80AC3460   
/* 00768 80AC3408 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L80AC340C:
/* 0076C 80AC340C 2419FFFF */  addiu   $t9, $zero, 0xFFFF         ## $t9 = FFFFFFFF
/* 00770 80AC3410 A0F901E9 */  sb      $t9, 0x01E9($a3)           ## 000001E9
/* 00774 80AC3414 84C50004 */  lh      $a1, 0x0004($a2)           ## 00000004
.L80AC3418:
/* 00778 80AC3418 24010192 */  addiu   $at, $zero, 0x0192         ## $at = 00000192
/* 0077C 80AC341C 8FA40024 */  lw      $a0, 0x0024($sp)           
/* 00780 80AC3420 10A1000D */  beq     $a1, $at, .L80AC3458       
/* 00784 80AC3424 2409FFFF */  addiu   $t1, $zero, 0xFFFF         ## $t1 = FFFFFFFF
/* 00788 80AC3428 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 0078C 80AC342C 342117A4 */  ori     $at, $at, 0x17A4           ## $at = 000117A4
/* 00790 80AC3430 00812021 */  addu    $a0, $a0, $at              
/* 00794 80AC3434 0C02604B */  jal     Object_GetIndex
              ## ObjectIndex
/* 00798 80AC3438 AFA70020 */  sw      $a3, 0x0020($sp)           
/* 0079C 80AC343C 8FA70020 */  lw      $a3, 0x0020($sp)           
/* 007A0 80AC3440 A0E201EA */  sb      $v0, 0x01EA($a3)           ## 000001EA
/* 007A4 80AC3444 80E801EA */  lb      $t0, 0x01EA($a3)           ## 000001EA
/* 007A8 80AC3448 05030005 */  bgezl   $t0, .L80AC3460            
/* 007AC 80AC344C 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
/* 007B0 80AC3450 10000003 */  beq     $zero, $zero, .L80AC3460   
/* 007B4 80AC3454 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L80AC3458:
/* 007B8 80AC3458 A0E901EA */  sb      $t1, 0x01EA($a3)           ## 000001EA
/* 007BC 80AC345C 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
.L80AC3460:
/* 007C0 80AC3460 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 007C4 80AC3464 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 007C8 80AC3468 03E00008 */  jr      $ra                        
/* 007CC 80AC346C 00000000 */  nop
