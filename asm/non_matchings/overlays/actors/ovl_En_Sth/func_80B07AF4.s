glabel func_80B07AF4
/* 005B4 80B07AF4 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 005B8 80B07AF8 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 005BC 80B07AFC AFB00018 */  sw      $s0, 0x0018($sp)           
/* 005C0 80B07B00 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 005C4 80B07B04 0C00BCCD */  jal     func_8002F334              
/* 005C8 80B07B08 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 005CC 80B07B0C 5040000F */  beql    $v0, $zero, .L80B07B4C     
/* 005D0 80B07B10 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 005D4 80B07B14 860E001C */  lh      $t6, 0x001C($s0)           ## 0000001C
/* 005D8 80B07B18 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 005DC 80B07B1C 3C0580B0 */  lui     $a1, %hi(func_80B07E18)    ## $a1 = 80B00000
/* 005E0 80B07B20 15C00007 */  bne     $t6, $zero, .L80B07B40     
/* 005E4 80B07B24 00000000 */  nop
/* 005E8 80B07B28 3C0580B0 */  lui     $a1, %hi(func_80B07B68)    ## $a1 = 80B00000
/* 005EC 80B07B2C 24A57B68 */  addiu   $a1, $a1, %lo(func_80B07B68) ## $a1 = 80B07B68
/* 005F0 80B07B30 0C2C1D50 */  jal     func_80B07540              
/* 005F4 80B07B34 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 005F8 80B07B38 10000004 */  beq     $zero, $zero, .L80B07B4C   
/* 005FC 80B07B3C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
.L80B07B40:
/* 00600 80B07B40 0C2C1D50 */  jal     func_80B07540              
/* 00604 80B07B44 24A57E18 */  addiu   $a1, $a1, %lo(func_80B07E18) ## $a1 = 00007E18
/* 00608 80B07B48 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
.L80B07B4C:
/* 0060C 80B07B4C 0C2C1E32 */  jal     func_80B078C8              
/* 00610 80B07B50 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 00614 80B07B54 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00618 80B07B58 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 0061C 80B07B5C 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 00620 80B07B60 03E00008 */  jr      $ra                        
/* 00624 80B07B64 00000000 */  nop


