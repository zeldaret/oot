glabel func_80AEC780
/* 01B70 80AEC780 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 01B74 80AEC784 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 01B78 80AEC788 AFA40020 */  sw      $a0, 0x0020($sp)           
/* 01B7C 80AEC78C 8CA31C44 */  lw      $v1, 0x1C44($a1)           ## 00001C44
/* 01B80 80AEC790 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 01B84 80AEC794 0C2BB17F */  jal     func_80AEC5FC              
/* 01B88 80AEC798 AFA30018 */  sw      $v1, 0x0018($sp)           
/* 01B8C 80AEC79C 1040001B */  beq     $v0, $zero, .L80AEC80C     
/* 01B90 80AEC7A0 8FA30018 */  lw      $v1, 0x0018($sp)           
/* 01B94 80AEC7A4 8FA40024 */  lw      $a0, 0x0024($sp)           
/* 01B98 80AEC7A8 0C02FF21 */  jal     Gameplay_InCsMode              
/* 01B9C 80AEC7AC AFA30018 */  sw      $v1, 0x0018($sp)           
/* 01BA0 80AEC7B0 14400016 */  bne     $v0, $zero, .L80AEC80C     
/* 01BA4 80AEC7B4 8FA30018 */  lw      $v1, 0x0018($sp)           
/* 01BA8 80AEC7B8 8C6E067C */  lw      $t6, 0x067C($v1)           ## 0000067C
/* 01BAC 80AEC7BC 3C010020 */  lui     $at, 0x0020                ## $at = 00200000
/* 01BB0 80AEC7C0 34216000 */  ori     $at, $at, 0x6000           ## $at = 00206000
/* 01BB4 80AEC7C4 01C17824 */  and     $t7, $t6, $at              
/* 01BB8 80AEC7C8 55E00011 */  bnel    $t7, $zero, .L80AEC810     
/* 01BBC 80AEC7CC 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 01BC0 80AEC7D0 94780088 */  lhu     $t8, 0x0088($v1)           ## 00000088
/* 01BC4 80AEC7D4 3C0880AF */  lui     $t0, %hi(D_80AF0880)       ## $t0 = 80AF0000
/* 01BC8 80AEC7D8 25080880 */  addiu   $t0, $t0, %lo(D_80AF0880)  ## $t0 = 80AF0880
/* 01BCC 80AEC7DC 33190001 */  andi    $t9, $t8, 0x0001           ## $t9 = 00000000
/* 01BD0 80AEC7E0 1320000A */  beq     $t9, $zero, .L80AEC80C     
/* 01BD4 80AEC7E4 8FA90024 */  lw      $t1, 0x0024($sp)           
/* 01BD8 80AEC7E8 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 01BDC 80AEC7EC AD281D68 */  sw      $t0, 0x1D68($t1)           ## 00001D68
/* 01BE0 80AEC7F0 240A0001 */  addiu   $t2, $zero, 0x0001         ## $t2 = 00000001
/* 01BE4 80AEC7F4 3C018016 */  lui     $at, 0x8016                ## $at = 80160000
/* 01BE8 80AEC7F8 A02AFA74 */  sb      $t2, -0x058C($at)          ## 8015FA74
/* 01BEC 80AEC7FC E4640838 */  swc1    $f4, 0x0838($v1)           ## 00000838
/* 01BF0 80AEC800 8FAC0020 */  lw      $t4, 0x0020($sp)           
/* 01BF4 80AEC804 240B0008 */  addiu   $t3, $zero, 0x0008         ## $t3 = 00000008
/* 01BF8 80AEC808 AD8B0264 */  sw      $t3, 0x0264($t4)           ## 00000264
.L80AEC80C:
/* 01BFC 80AEC80C 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80AEC810:
/* 01C00 80AEC810 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 01C04 80AEC814 03E00008 */  jr      $ra                        
/* 01C08 80AEC818 00000000 */  nop
