glabel func_80A73AD0
/* 00AE0 80A73AD0 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 00AE4 80A73AD4 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 00AE8 80A73AD8 AFB00020 */  sw      $s0, 0x0020($sp)           
/* 00AEC 80A73ADC AFA5002C */  sw      $a1, 0x002C($sp)           
/* 00AF0 80A73AE0 848E0152 */  lh      $t6, 0x0152($a0)           ## 00000152
/* 00AF4 80A73AE4 3C0538D1 */  lui     $a1, 0x38D1                ## $a1 = 38D10000
/* 00AF8 80A73AE8 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00AFC 80A73AEC 29C10015 */  slti    $at, $t6, 0x0015           
/* 00B00 80A73AF0 14200013 */  bne     $at, $zero, .L80A73B40     
/* 00B04 80A73AF4 34A5B717 */  ori     $a1, $a1, 0xB717           ## $a1 = 38D1B717
/* 00B08 80A73AF8 3C053BC4 */  lui     $a1, 0x3BC4                ## $a1 = 3BC40000
/* 00B0C 80A73AFC 3C063927 */  lui     $a2, 0x3927                ## $a2 = 39270000
/* 00B10 80A73B00 34C6C5AC */  ori     $a2, $a2, 0xC5AC           ## $a2 = 3927C5AC
/* 00B14 80A73B04 34A59BA6 */  ori     $a1, $a1, 0x9BA6           ## $a1 = 3BC49BA6
/* 00B18 80A73B08 0C01DE80 */  jal     Math_ApproxF
              
/* 00B1C 80A73B0C 24840050 */  addiu   $a0, $a0, 0x0050           ## $a0 = 00000050
/* 00B20 80A73B10 3C0180A7 */  lui     $at, %hi(D_80A7415C)       ## $at = 80A70000
/* 00B24 80A73B14 C426415C */  lwc1    $f6, %lo(D_80A7415C)($at)  
/* 00B28 80A73B18 C6040158 */  lwc1    $f4, 0x0158($s0)           ## 00000158
/* 00B2C 80A73B1C 3C063912 */  lui     $a2, 0x3912                ## $a2 = 39120000
/* 00B30 80A73B20 34C6CCF7 */  ori     $a2, $a2, 0xCCF7           ## $a2 = 3912CCF7
/* 00B34 80A73B24 46062202 */  mul.s   $f8, $f4, $f6              
/* 00B38 80A73B28 26040054 */  addiu   $a0, $s0, 0x0054           ## $a0 = 00000054
/* 00B3C 80A73B2C 44054000 */  mfc1    $a1, $f8                   
/* 00B40 80A73B30 0C01DE80 */  jal     Math_ApproxF
              
/* 00B44 80A73B34 00000000 */  nop
/* 00B48 80A73B38 1000000C */  beq     $zero, $zero, .L80A73B6C   
/* 00B4C 80A73B3C C60A0050 */  lwc1    $f10, 0x0050($s0)          ## 00000050
.L80A73B40:
/* 00B50 80A73B40 3C06391D */  lui     $a2, 0x391D                ## $a2 = 391D0000
/* 00B54 80A73B44 34C64952 */  ori     $a2, $a2, 0x4952           ## $a2 = 391D4952
/* 00B58 80A73B48 0C01DE80 */  jal     Math_ApproxF
              
/* 00B5C 80A73B4C 26040050 */  addiu   $a0, $s0, 0x0050           ## $a0 = 00000050
/* 00B60 80A73B50 3C0538D1 */  lui     $a1, 0x38D1                ## $a1 = 38D10000
/* 00B64 80A73B54 3C06391D */  lui     $a2, 0x391D                ## $a2 = 391D0000
/* 00B68 80A73B58 34C64952 */  ori     $a2, $a2, 0x4952           ## $a2 = 391D4952
/* 00B6C 80A73B5C 34A5B717 */  ori     $a1, $a1, 0xB717           ## $a1 = 38D1B717
/* 00B70 80A73B60 0C01DE80 */  jal     Math_ApproxF
              
/* 00B74 80A73B64 26040054 */  addiu   $a0, $s0, 0x0054           ## $a0 = 00000054
/* 00B78 80A73B68 C60A0050 */  lwc1    $f10, 0x0050($s0)          ## 00000050
.L80A73B6C:
/* 00B7C 80A73B6C 3C063D75 */  lui     $a2, 0x3D75                ## $a2 = 3D750000
/* 00B80 80A73B70 34C6C28F */  ori     $a2, $a2, 0xC28F           ## $a2 = 3D75C28F
/* 00B84 80A73B74 26040068 */  addiu   $a0, $s0, 0x0068           ## $a0 = 00000068
/* 00B88 80A73B78 24050000 */  addiu   $a1, $zero, 0x0000         ## $a1 = 00000000
/* 00B8C 80A73B7C 0C01DE80 */  jal     Math_ApproxF
              
/* 00B90 80A73B80 E60A0058 */  swc1    $f10, 0x0058($s0)          ## 00000058
/* 00B94 80A73B84 0C00B638 */  jal     Actor_MoveForward
              
/* 00B98 80A73B88 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00B9C 80A73B8C 3C014120 */  lui     $at, 0x4120                ## $at = 41200000
/* 00BA0 80A73B90 44810000 */  mtc1    $at, $f0                   ## $f0 = 10.00
/* 00BA4 80A73B94 44808000 */  mtc1    $zero, $f16                ## $f16 = 0.00
/* 00BA8 80A73B98 240F0005 */  addiu   $t7, $zero, 0x0005         ## $t7 = 00000005
/* 00BAC 80A73B9C 44060000 */  mfc1    $a2, $f0                   
/* 00BB0 80A73BA0 44070000 */  mfc1    $a3, $f0                   
/* 00BB4 80A73BA4 AFAF0014 */  sw      $t7, 0x0014($sp)           
/* 00BB8 80A73BA8 8FA4002C */  lw      $a0, 0x002C($sp)           
/* 00BBC 80A73BAC 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 00BC0 80A73BB0 0C00B92D */  jal     func_8002E4B4              
/* 00BC4 80A73BB4 E7B00010 */  swc1    $f16, 0x0010($sp)          
/* 00BC8 80A73BB8 86020152 */  lh      $v0, 0x0152($s0)           ## 00000152
/* 00BCC 80A73BBC 28410019 */  slti    $at, $v0, 0x0019           
/* 00BD0 80A73BC0 10200010 */  beq     $at, $zero, .L80A73C04     
/* 00BD4 80A73BC4 00000000 */  nop
/* 00BD8 80A73BC8 86180150 */  lh      $t8, 0x0150($s0)           ## 00000150
/* 00BDC 80A73BCC 2719FFF6 */  addiu   $t9, $t8, 0xFFF6           ## $t9 = FFFFFFF6
/* 00BE0 80A73BD0 A6190150 */  sh      $t9, 0x0150($s0)           ## 00000150
/* 00BE4 80A73BD4 86020150 */  lh      $v0, 0x0150($s0)           ## 00000150
/* 00BE8 80A73BD8 04410004 */  bgez    $v0, .L80A73BEC            
/* 00BEC 80A73BDC 28410100 */  slti    $at, $v0, 0x0100           
/* 00BF0 80A73BE0 A6000150 */  sh      $zero, 0x0150($s0)         ## 00000150
/* 00BF4 80A73BE4 10000007 */  beq     $zero, $zero, .L80A73C04   
/* 00BF8 80A73BE8 86020152 */  lh      $v0, 0x0152($s0)           ## 00000152
.L80A73BEC:
/* 00BFC 80A73BEC 14200003 */  bne     $at, $zero, .L80A73BFC     
/* 00C00 80A73BF0 00401825 */  or      $v1, $v0, $zero            ## $v1 = 00000000
/* 00C04 80A73BF4 10000001 */  beq     $zero, $zero, .L80A73BFC   
/* 00C08 80A73BF8 240300FF */  addiu   $v1, $zero, 0x00FF         ## $v1 = 000000FF
.L80A73BFC:
/* 00C0C 80A73BFC A6030150 */  sh      $v1, 0x0150($s0)           ## 00000150
/* 00C10 80A73C00 86020152 */  lh      $v0, 0x0152($s0)           ## 00000152
.L80A73C04:
/* 00C14 80A73C04 5C400004 */  bgtzl   $v0, .L80A73C18            
/* 00C18 80A73C08 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 00C1C 80A73C0C 0C00B55C */  jal     Actor_Kill
              
/* 00C20 80A73C10 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00C24 80A73C14 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80A73C18:
/* 00C28 80A73C18 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 00C2C 80A73C1C 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 00C30 80A73C20 03E00008 */  jr      $ra                        
/* 00C34 80A73C24 00000000 */  nop


