glabel func_80B9BC20
/* 00AA0 80B9BC20 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 00AA4 80B9BC24 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00AA8 80B9BC28 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 00AAC 80B9BC2C AFA50024 */  sw      $a1, 0x0024($sp)           
/* 00AB0 80B9BC30 3C0180BA */  lui     $at, %hi(D_80B9CD08)       ## $at = 80BA0000
/* 00AB4 80B9BC34 C424CD08 */  lwc1    $f4, %lo(D_80B9CD08)($at)  
/* 00AB8 80B9BC38 C4800028 */  lwc1    $f0, 0x0028($a0)           ## 00000028
/* 00ABC 80B9BC3C 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00AC0 80B9BC40 3C0480BA */  lui     $a0, %hi(D_80B9CC08)       ## $a0 = 80BA0000
/* 00AC4 80B9BC44 4604003E */  c.le.s  $f0, $f4                   
/* 00AC8 80B9BC48 3C0580BA */  lui     $a1, %hi(D_80B9CC48)       ## $a1 = 80BA0000
/* 00ACC 80B9BC4C 24A5CC48 */  addiu   $a1, $a1, %lo(D_80B9CC48)  ## $a1 = 80B9CC48
/* 00AD0 80B9BC50 2484CC08 */  addiu   $a0, $a0, %lo(D_80B9CC08)  ## $a0 = 80B9CC08
/* 00AD4 80B9BC54 45000007 */  bc1f    .L80B9BC74                 
/* 00AD8 80B9BC58 24060329 */  addiu   $a2, $zero, 0x0329         ## $a2 = 00000329
/* 00ADC 80B9BC5C 0C00084C */  jal     osSyncPrintf
              
/* 00AE0 80B9BC60 8607001C */  lh      $a3, 0x001C($s0)           ## 0000001C
/* 00AE4 80B9BC64 0C00B55C */  jal     Actor_Kill
              
/* 00AE8 80B9BC68 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00AEC 80B9BC6C 1000000D */  beq     $zero, $zero, .L80B9BCA4   
/* 00AF0 80B9BC70 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L80B9BC74:
/* 00AF4 80B9BC74 C6020080 */  lwc1    $f2, 0x0080($s0)           ## 00000080
/* 00AF8 80B9BC78 3C0180BA */  lui     $at, %hi(D_80B9CD0C)       ## $at = 80BA0000
/* 00AFC 80B9BC7C C428CD0C */  lwc1    $f8, %lo(D_80B9CD0C)($at)  
/* 00B00 80B9BC80 46001181 */  sub.s   $f6, $f2, $f0              
/* 00B04 80B9BC84 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 00B08 80B9BC88 4606403E */  c.le.s  $f8, $f6                   
/* 00B0C 80B9BC8C 00000000 */  nop
/* 00B10 80B9BC90 45000004 */  bc1f    .L80B9BCA4                 
/* 00B14 80B9BC94 00000000 */  nop
/* 00B18 80B9BC98 E6020028 */  swc1    $f2, 0x0028($s0)           ## 00000028
/* 00B1C 80B9BC9C 10000001 */  beq     $zero, $zero, .L80B9BCA4   
/* 00B20 80B9BCA0 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
.L80B9BCA4:
/* 00B24 80B9BCA4 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00B28 80B9BCA8 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 00B2C 80B9BCAC 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 00B30 80B9BCB0 03E00008 */  jr      $ra                        
/* 00B34 80B9BCB4 00000000 */  nop
