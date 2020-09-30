.late_rodata
glabel D_80976CDC
    .float -0.1

.text
glabel func_80971A28
/* 00AD8 80971A28 27BDFFA8 */  addiu   $sp, $sp, 0xFFA8           ## $sp = FFFFFFA8
/* 00ADC 80971A2C 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 00AE0 80971A30 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 00AE4 80971A34 AFA40058 */  sw      $a0, 0x0058($sp)           
/* 00AE8 80971A38 14C10007 */  bne     $a2, $at, .L80971A58       
/* 00AEC 80971A3C AFA5005C */  sw      $a1, 0x005C($sp)           
/* 00AF0 80971A40 3C0F0001 */  lui     $t7, 0x0001                ## $t7 = 00010000
/* 00AF4 80971A44 01E57821 */  addu    $t7, $t7, $a1              
/* 00AF8 80971A48 8DEF1DE4 */  lw      $t7, 0x1DE4($t7)           ## 00011DE4
/* 00AFC 80971A4C 31F80001 */  andi    $t8, $t7, 0x0001           ## $t8 = 00000000
/* 00B00 80971A50 57000057 */  bnel    $t8, $zero, .L80971BB0     
/* 00B04 80971A54 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80971A58:
/* 00B08 80971A58 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 00B0C 80971A5C 3C018097 */  lui     $at, %hi(D_80976CDC)       ## $at = 80970000
/* 00B10 80971A60 C4246CDC */  lwc1    $f4, %lo(D_80976CDC)($at)  
/* 00B14 80971A64 241900FF */  addiu   $t9, $zero, 0x00FF         ## $t9 = 000000FF
/* 00B18 80971A68 240800FF */  addiu   $t0, $zero, 0x00FF         ## $t0 = 000000FF
/* 00B1C 80971A6C 240900FF */  addiu   $t1, $zero, 0x00FF         ## $t1 = 000000FF
/* 00B20 80971A70 240A00FF */  addiu   $t2, $zero, 0x00FF         ## $t2 = 000000FF
/* 00B24 80971A74 240B00FF */  addiu   $t3, $zero, 0x00FF         ## $t3 = 000000FF
/* 00B28 80971A78 240C0064 */  addiu   $t4, $zero, 0x0064         ## $t4 = 00000064
/* 00B2C 80971A7C A3B90030 */  sb      $t9, 0x0030($sp)           
/* 00B30 80971A80 A3A80031 */  sb      $t0, 0x0031($sp)           
/* 00B34 80971A84 A3A90032 */  sb      $t1, 0x0032($sp)           
/* 00B38 80971A88 A3AA002C */  sb      $t2, 0x002C($sp)           
/* 00B3C 80971A8C A3AB002D */  sb      $t3, 0x002D($sp)           
/* 00B40 80971A90 A3AC002E */  sb      $t4, 0x002E($sp)           
/* 00B44 80971A94 A3A00033 */  sb      $zero, 0x0033($sp)         
/* 00B48 80971A98 E7A00050 */  swc1    $f0, 0x0050($sp)           
/* 00B4C 80971A9C E7A00040 */  swc1    $f0, 0x0040($sp)           
/* 00B50 80971AA0 E7A00048 */  swc1    $f0, 0x0048($sp)           
/* 00B54 80971AA4 10C0000F */  beq     $a2, $zero, .L80971AE4     
/* 00B58 80971AA8 E7A40044 */  swc1    $f4, 0x0044($sp)           
/* 00B5C 80971AAC 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 00B60 80971AB0 00000000 */  nop
/* 00B64 80971AB4 3C013F00 */  lui     $at, 0x3F00                ## $at = 3F000000
/* 00B68 80971AB8 44813000 */  mtc1    $at, $f6                   ## $f6 = 0.50
/* 00B6C 80971ABC 00000000 */  nop
/* 00B70 80971AC0 46060201 */  sub.s   $f8, $f0, $f6              
/* 00B74 80971AC4 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 00B78 80971AC8 E7A8004C */  swc1    $f8, 0x004C($sp)           
/* 00B7C 80971ACC 3C013F00 */  lui     $at, 0x3F00                ## $at = 3F000000
/* 00B80 80971AD0 44815000 */  mtc1    $at, $f10                  ## $f10 = 0.50
/* 00B84 80971AD4 00000000 */  nop
/* 00B88 80971AD8 460A0401 */  sub.s   $f16, $f0, $f10            
/* 00B8C 80971ADC 10000010 */  beq     $zero, $zero, .L80971B20   
/* 00B90 80971AE0 E7B00054 */  swc1    $f16, 0x0054($sp)          
.L80971AE4:
/* 00B94 80971AE4 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 00B98 80971AE8 00000000 */  nop
/* 00B9C 80971AEC 3C013F00 */  lui     $at, 0x3F00                ## $at = 3F000000
/* 00BA0 80971AF0 44819000 */  mtc1    $at, $f18                  ## $f18 = 0.50
/* 00BA4 80971AF4 00000000 */  nop
/* 00BA8 80971AF8 46120081 */  sub.s   $f2, $f0, $f18             
/* 00BAC 80971AFC 46021100 */  add.s   $f4, $f2, $f2              
/* 00BB0 80971B00 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 00BB4 80971B04 E7A4004C */  swc1    $f4, 0x004C($sp)           
/* 00BB8 80971B08 3C013F00 */  lui     $at, 0x3F00                ## $at = 3F000000
/* 00BBC 80971B0C 44813000 */  mtc1    $at, $f6                   ## $f6 = 0.50
/* 00BC0 80971B10 00000000 */  nop
/* 00BC4 80971B14 46060081 */  sub.s   $f2, $f0, $f6              
/* 00BC8 80971B18 46021200 */  add.s   $f8, $f2, $f2              
/* 00BCC 80971B1C E7A80054 */  swc1    $f8, 0x0054($sp)           
.L80971B20:
/* 00BD0 80971B20 3C014120 */  lui     $at, 0x4120                ## $at = 41200000
/* 00BD4 80971B24 44816000 */  mtc1    $at, $f12                  ## $f12 = 10.00
/* 00BD8 80971B28 0C00CFC8 */  jal     Math_Rand_CenteredFloat
              
/* 00BDC 80971B2C 00000000 */  nop
/* 00BE0 80971B30 8FAD0058 */  lw      $t5, 0x0058($sp)           
/* 00BE4 80971B34 3C014120 */  lui     $at, 0x4120                ## $at = 41200000
/* 00BE8 80971B38 44816000 */  mtc1    $at, $f12                  ## $f12 = 10.00
/* 00BEC 80971B3C C5AA0024 */  lwc1    $f10, 0x0024($t5)          ## 00000024
/* 00BF0 80971B40 460A0400 */  add.s   $f16, $f0, $f10            
/* 00BF4 80971B44 0C00CFC8 */  jal     Math_Rand_CenteredFloat
              
/* 00BF8 80971B48 E7B00034 */  swc1    $f16, 0x0034($sp)          
/* 00BFC 80971B4C 8FAE0058 */  lw      $t6, 0x0058($sp)           
/* 00C00 80971B50 3C014120 */  lui     $at, 0x4120                ## $at = 41200000
/* 00C04 80971B54 44816000 */  mtc1    $at, $f12                  ## $f12 = 10.00
/* 00C08 80971B58 C5D20028 */  lwc1    $f18, 0x0028($t6)          ## 00000028
/* 00C0C 80971B5C 46120100 */  add.s   $f4, $f0, $f18             
/* 00C10 80971B60 0C00CFC8 */  jal     Math_Rand_CenteredFloat
              
/* 00C14 80971B64 E7A40038 */  swc1    $f4, 0x0038($sp)           
/* 00C18 80971B68 8FAF0058 */  lw      $t7, 0x0058($sp)           
/* 00C1C 80971B6C 27B80030 */  addiu   $t8, $sp, 0x0030           ## $t8 = FFFFFFD8
/* 00C20 80971B70 27B9002C */  addiu   $t9, $sp, 0x002C           ## $t9 = FFFFFFD4
/* 00C24 80971B74 C5E6002C */  lwc1    $f6, 0x002C($t7)           ## 0000002C
/* 00C28 80971B78 240803E8 */  addiu   $t0, $zero, 0x03E8         ## $t0 = 000003E8
/* 00C2C 80971B7C 24090010 */  addiu   $t1, $zero, 0x0010         ## $t1 = 00000010
/* 00C30 80971B80 46060200 */  add.s   $f8, $f0, $f6              
/* 00C34 80971B84 AFA9001C */  sw      $t1, 0x001C($sp)           
/* 00C38 80971B88 AFA80018 */  sw      $t0, 0x0018($sp)           
/* 00C3C 80971B8C AFB90014 */  sw      $t9, 0x0014($sp)           
/* 00C40 80971B90 E7A8003C */  swc1    $f8, 0x003C($sp)           
/* 00C44 80971B94 AFB80010 */  sw      $t8, 0x0010($sp)           
/* 00C48 80971B98 8FA4005C */  lw      $a0, 0x005C($sp)           
/* 00C4C 80971B9C 27A50034 */  addiu   $a1, $sp, 0x0034           ## $a1 = FFFFFFDC
/* 00C50 80971BA0 27A6004C */  addiu   $a2, $sp, 0x004C           ## $a2 = FFFFFFF4
/* 00C54 80971BA4 0C00A2EC */  jal     EffectSsKiraKira_SpawnDispersed              
/* 00C58 80971BA8 27A70040 */  addiu   $a3, $sp, 0x0040           ## $a3 = FFFFFFE8
/* 00C5C 80971BAC 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80971BB0:
/* 00C60 80971BB0 27BD0058 */  addiu   $sp, $sp, 0x0058           ## $sp = 00000000
/* 00C64 80971BB4 03E00008 */  jr      $ra                        
/* 00C68 80971BB8 00000000 */  nop
