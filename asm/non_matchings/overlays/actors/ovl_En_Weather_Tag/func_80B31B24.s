glabel func_80B31B24
/* 00B04 80B31B24 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 00B08 80B31B28 AFB00020 */  sw      $s0, 0x0020($sp)           
/* 00B0C 80B31B2C AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 00B10 80B31B30 AFA40028 */  sw      $a0, 0x0028($sp)           
/* 00B14 80B31B34 00A08025 */  or      $s0, $a1, $zero            ## $s0 = 00000000
/* 00B18 80B31B38 8CA41C44 */  lw      $a0, 0x1C44($a1)           ## 00001C44
/* 00B1C 80B31B3C 0C00B6E3 */  jal     func_8002DB8C              
/* 00B20 80B31B40 8FA50028 */  lw      $a1, 0x0028($sp)           
/* 00B24 80B31B44 8FAE0028 */  lw      $t6, 0x0028($sp)           
/* 00B28 80B31B48 3C0142C8 */  lui     $at, 0x42C8                ## $at = 42C80000
/* 00B2C 80B31B4C 44814000 */  mtc1    $at, $f8                   ## $f8 = 100.00
/* 00B30 80B31B50 85CF001C */  lh      $t7, 0x001C($t6)           ## 0000001C
/* 00B34 80B31B54 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 00B38 80B31B58 34210AC2 */  ori     $at, $at, 0x0AC2           ## $at = 00010AC2
/* 00B3C 80B31B5C 000FC203 */  sra     $t8, $t7,  8               
/* 00B40 80B31B60 44982000 */  mtc1    $t8, $f4                   ## $f4 = 0.00
/* 00B44 80B31B64 24190001 */  addiu   $t9, $zero, 0x0001         ## $t9 = 00000001
/* 00B48 80B31B68 02012021 */  addu    $a0, $s0, $at              
/* 00B4C 80B31B6C 468021A0 */  cvt.s.w $f6, $f4                   
/* 00B50 80B31B70 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 00B54 80B31B74 24060001 */  addiu   $a2, $zero, 0x0001         ## $a2 = 00000001
/* 00B58 80B31B78 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 00B5C 80B31B7C 24090001 */  addiu   $t1, $zero, 0x0001         ## $t1 = 00000001
/* 00B60 80B31B80 46083282 */  mul.s   $f10, $f6, $f8             
/* 00B64 80B31B84 460A003C */  c.lt.s  $f0, $f10                  
/* 00B68 80B31B88 00000000 */  nop
/* 00B6C 80B31B8C 45000014 */  bc1f    .L80B31BE0                 
/* 00B70 80B31B90 00000000 */  nop
/* 00B74 80B31B94 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 00B78 80B31B98 34210AC2 */  ori     $at, $at, 0x0AC2           ## $at = 00010AC2
/* 00B7C 80B31B9C 02012021 */  addu    $a0, $s0, $at              
/* 00B80 80B31BA0 2405FFB0 */  addiu   $a1, $zero, 0xFFB0         ## $a1 = FFFFFFB0
/* 00B84 80B31BA4 24060001 */  addiu   $a2, $zero, 0x0001         ## $a2 = 00000001
/* 00B88 80B31BA8 24070002 */  addiu   $a3, $zero, 0x0002         ## $a3 = 00000002
/* 00B8C 80B31BAC 0C01E1A7 */  jal     Math_SmoothScaleMaxMinS
              
/* 00B90 80B31BB0 AFB90010 */  sw      $t9, 0x0010($sp)           
/* 00B94 80B31BB4 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 00B98 80B31BB8 34210AC4 */  ori     $at, $at, 0x0AC4           ## $at = 00010AC4
/* 00B9C 80B31BBC 24080001 */  addiu   $t0, $zero, 0x0001         ## $t0 = 00000001
/* 00BA0 80B31BC0 AFA80010 */  sw      $t0, 0x0010($sp)           
/* 00BA4 80B31BC4 02012021 */  addu    $a0, $s0, $at              
/* 00BA8 80B31BC8 2405F830 */  addiu   $a1, $zero, 0xF830         ## $a1 = FFFFF830
/* 00BAC 80B31BCC 24060001 */  addiu   $a2, $zero, 0x0001         ## $a2 = 00000001
/* 00BB0 80B31BD0 0C01E1A7 */  jal     Math_SmoothScaleMaxMinS
              
/* 00BB4 80B31BD4 24070032 */  addiu   $a3, $zero, 0x0032         ## $a3 = 00000032
/* 00BB8 80B31BD8 1000000D */  beq     $zero, $zero, .L80B31C10   
/* 00BBC 80B31BDC 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80B31BE0:
/* 00BC0 80B31BE0 0C01E1A7 */  jal     Math_SmoothScaleMaxMinS
              
/* 00BC4 80B31BE4 AFA90010 */  sw      $t1, 0x0010($sp)           
/* 00BC8 80B31BE8 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 00BCC 80B31BEC 34210AC4 */  ori     $at, $at, 0x0AC4           ## $at = 00010AC4
/* 00BD0 80B31BF0 240A0001 */  addiu   $t2, $zero, 0x0001         ## $t2 = 00000001
/* 00BD4 80B31BF4 AFAA0010 */  sw      $t2, 0x0010($sp)           
/* 00BD8 80B31BF8 02012021 */  addu    $a0, $s0, $at              
/* 00BDC 80B31BFC 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 00BE0 80B31C00 24060001 */  addiu   $a2, $zero, 0x0001         ## $a2 = 00000001
/* 00BE4 80B31C04 0C01E1A7 */  jal     Math_SmoothScaleMaxMinS
              
/* 00BE8 80B31C08 24070019 */  addiu   $a3, $zero, 0x0019         ## $a3 = 00000019
/* 00BEC 80B31C0C 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80B31C10:
/* 00BF0 80B31C10 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 00BF4 80B31C14 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 00BF8 80B31C18 03E00008 */  jr      $ra                        
/* 00BFC 80B31C1C 00000000 */  nop


