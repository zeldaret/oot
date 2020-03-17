glabel func_80A35D48
/* 00A38 80A35D48 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00A3C 80A35D4C AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00A40 80A35D50 00803825 */  or      $a3, $a0, $zero            ## $a3 = 00000000
/* 00A44 80A35D54 3C050601 */  lui     $a1, 0x0601                ## $a1 = 06010000
/* 00A48 80A35D58 24A5B6D4 */  addiu   $a1, $a1, 0xB6D4           ## $a1 = 0600B6D4
/* 00A4C 80A35D5C AFA70018 */  sw      $a3, 0x0018($sp)           
/* 00A50 80A35D60 24840188 */  addiu   $a0, $a0, 0x0188           ## $a0 = 00000188
/* 00A54 80A35D64 0C0294D3 */  jal     func_800A534C              
/* 00A58 80A35D68 3C06C080 */  lui     $a2, 0xC080                ## $a2 = C0800000
/* 00A5C 80A35D6C 8FA70018 */  lw      $a3, 0x0018($sp)           
/* 00A60 80A35D70 240E0005 */  addiu   $t6, $zero, 0x0005         ## $t6 = 00000005
/* 00A64 80A35D74 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 00A68 80A35D78 ACEE02EC */  sw      $t6, 0x02EC($a3)           ## 000002EC
/* 00A6C 80A35D7C 3C014120 */  lui     $at, 0x4120                ## $at = 41200000
/* 00A70 80A35D80 44812000 */  mtc1    $at, $f4                   ## $f4 = 10.00
/* 00A74 80A35D84 3C0140A0 */  lui     $at, 0x40A0                ## $at = 40A00000
/* 00A78 80A35D88 44814000 */  mtc1    $at, $f8                   ## $f8 = 5.00
/* 00A7C 80A35D8C 46040182 */  mul.s   $f6, $f0, $f4              
/* 00A80 80A35D90 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 00A84 80A35D94 44809000 */  mtc1    $zero, $f18                ## $f18 = 0.00
/* 00A88 80A35D98 3C0580A3 */  lui     $a1, %hi(func_80A35DD0)    ## $a1 = 80A30000
/* 00A8C 80A35D9C 849900B6 */  lh      $t9, 0x00B6($a0)           ## 000000B6
/* 00A90 80A35DA0 24A55DD0 */  addiu   $a1, $a1, %lo(func_80A35DD0) ## $a1 = 80A35DD0
/* 00A94 80A35DA4 E4920068 */  swc1    $f18, 0x0068($a0)          ## 00000068
/* 00A98 80A35DA8 46083280 */  add.s   $f10, $f6, $f8             
/* 00A9C 80A35DAC A4990032 */  sh      $t9, 0x0032($a0)           ## 00000032
/* 00AA0 80A35DB0 4600540D */  trunc.w.s $f16, $f10                 
/* 00AA4 80A35DB4 44188000 */  mfc1    $t8, $f16                  
/* 00AA8 80A35DB8 0C28D4C4 */  jal     func_80A35310              
/* 00AAC 80A35DBC AC980300 */  sw      $t8, 0x0300($a0)           ## 00000300
/* 00AB0 80A35DC0 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00AB4 80A35DC4 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00AB8 80A35DC8 03E00008 */  jr      $ra                        
/* 00ABC 80A35DCC 00000000 */  nop


