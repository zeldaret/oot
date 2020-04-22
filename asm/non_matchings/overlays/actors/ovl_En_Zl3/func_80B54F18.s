glabel func_80B54F18
/* 01B68 80B54F18 27BDFFC0 */  addiu   $sp, $sp, 0xFFC0           ## $sp = FFFFFFC0
/* 01B6C 80B54F1C AFBF003C */  sw      $ra, 0x003C($sp)           
/* 01B70 80B54F20 AFB00038 */  sw      $s0, 0x0038($sp)           
/* 01B74 80B54F24 8C8E02F8 */  lw      $t6, 0x02F8($a0)           ## 000002F8
/* 01B78 80B54F28 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 01B7C 80B54F2C 00A03025 */  or      $a2, $a1, $zero            ## $a2 = 00000000
/* 01B80 80B54F30 15C0001B */  bne     $t6, $zero, .L80B54FA0     
/* 01B84 80B54F34 3C0F8016 */  lui     $t7, %hi(gGameInfo)
/* 01B88 80B54F38 8DEFFA90 */  lw      $t7, %lo(gGameInfo)($t7)
/* 01B8C 80B54F3C 3C01C1D0 */  lui     $at, 0xC1D0                ## $at = C1D00000
/* 01B90 80B54F40 44814000 */  mtc1    $at, $f8                   ## $f8 = -26.00
/* 01B94 80B54F44 85F8145E */  lh      $t8, 0x145E($t7)           ## 8016145E
/* 01B98 80B54F48 C4900028 */  lwc1    $f16, 0x0028($a0)          ## 00000028
/* 01B9C 80B54F4C C4800024 */  lwc1    $f0, 0x0024($a0)           ## 00000024
/* 01BA0 80B54F50 44982000 */  mtc1    $t8, $f4                   ## $f4 = 0.00
/* 01BA4 80B54F54 C48C002C */  lwc1    $f12, 0x002C($a0)          ## 0000002C
/* 01BA8 80B54F58 24A41C24 */  addiu   $a0, $a1, 0x1C24           ## $a0 = 00001C24
/* 01BAC 80B54F5C 468021A0 */  cvt.s.w $f6, $f4                   
/* 01BB0 80B54F60 24194000 */  addiu   $t9, $zero, 0x4000         ## $t9 = 00004000
/* 01BB4 80B54F64 24080003 */  addiu   $t0, $zero, 0x0003         ## $t0 = 00000003
/* 01BB8 80B54F68 AFA80028 */  sw      $t0, 0x0028($sp)           
/* 01BBC 80B54F6C AFB90020 */  sw      $t9, 0x0020($sp)           
/* 01BC0 80B54F70 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 01BC4 80B54F74 46083280 */  add.s   $f10, $f6, $f8             
/* 01BC8 80B54F78 AFA00024 */  sw      $zero, 0x0024($sp)         
/* 01BCC 80B54F7C AFA0001C */  sw      $zero, 0x001C($sp)         
/* 01BD0 80B54F80 2407005D */  addiu   $a3, $zero, 0x005D         ## $a3 = 0000005D
/* 01BD4 80B54F84 46105080 */  add.s   $f2, $f10, $f16            
/* 01BD8 80B54F88 E7A00010 */  swc1    $f0, 0x0010($sp)           
/* 01BDC 80B54F8C E7AC0018 */  swc1    $f12, 0x0018($sp)          
/* 01BE0 80B54F90 0C00C916 */  jal     Actor_SpawnAttached
              
/* 01BE4 80B54F94 E7A20014 */  swc1    $f2, 0x0014($sp)           
/* 01BE8 80B54F98 24090001 */  addiu   $t1, $zero, 0x0001         ## $t1 = 00000001
/* 01BEC 80B54F9C AE0902F8 */  sw      $t1, 0x02F8($s0)           ## 000002F8
.L80B54FA0:
/* 01BF0 80B54FA0 8FBF003C */  lw      $ra, 0x003C($sp)           
/* 01BF4 80B54FA4 8FB00038 */  lw      $s0, 0x0038($sp)           
/* 01BF8 80B54FA8 27BD0040 */  addiu   $sp, $sp, 0x0040           ## $sp = 00000000
/* 01BFC 80B54FAC 03E00008 */  jr      $ra                        
/* 01C00 80B54FB0 00000000 */  nop
