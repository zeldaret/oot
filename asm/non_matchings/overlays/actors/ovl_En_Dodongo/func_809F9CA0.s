glabel func_809F9CA0
/* 01A50 809F9CA0 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 01A54 809F9CA4 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 01A58 809F9CA8 AFB00020 */  sw      $s0, 0x0020($sp)           
/* 01A5C 809F9CAC AFA5002C */  sw      $a1, 0x002C($sp)           
/* 01A60 809F9CB0 90820465 */  lbu     $v0, 0x0465($a0)           ## 00000465
/* 01A64 809F9CB4 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 01A68 809F9CB8 304E0080 */  andi    $t6, $v0, 0x0080           ## $t6 = 00000000
/* 01A6C 809F9CBC 51C00008 */  beql    $t6, $zero, .L809F9CE0     
/* 01A70 809F9CC0 92020599 */  lbu     $v0, 0x0599($s0)           ## 00000599
/* 01A74 809F9CC4 90980599 */  lbu     $t8, 0x0599($a0)           ## 00000599
/* 01A78 809F9CC8 304FFF7F */  andi    $t7, $v0, 0xFF7F           ## $t7 = 00000000
/* 01A7C 809F9CCC A08F0465 */  sb      $t7, 0x0465($a0)           ## 00000465
/* 01A80 809F9CD0 3319FFFD */  andi    $t9, $t8, 0xFFFD           ## $t9 = 00000000
/* 01A84 809F9CD4 10000037 */  beq     $zero, $zero, .L809F9DB4   
/* 01A88 809F9CD8 A0990599 */  sb      $t9, 0x0599($a0)           ## 00000599
/* 01A8C 809F9CDC 92020599 */  lbu     $v0, 0x0599($s0)           ## 00000599
.L809F9CE0:
/* 01A90 809F9CE0 30480002 */  andi    $t0, $v0, 0x0002           ## $t0 = 00000000
/* 01A94 809F9CE4 51000034 */  beql    $t0, $zero, .L809F9DB8     
/* 01A98 809F9CE8 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 01A9C 809F9CEC 8E090304 */  lw      $t1, 0x0304($s0)           ## 00000304
/* 01AA0 809F9CF0 304AFFFD */  andi    $t2, $v0, 0xFFFD           ## $t2 = 00000000
/* 01AA4 809F9CF4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01AA8 809F9CF8 29210003 */  slti    $at, $t1, 0x0003           
/* 01AAC 809F9CFC 1420002D */  bne     $at, $zero, .L809F9DB4     
/* 01AB0 809F9D00 26050588 */  addiu   $a1, $s0, 0x0588           ## $a1 = 00000588
/* 01AB4 809F9D04 A20A0599 */  sb      $t2, 0x0599($s0)           ## 00000599
/* 01AB8 809F9D08 0C00D5CF */  jal     func_8003573C              
/* 01ABC 809F9D0C 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 01AC0 809F9D10 920300B1 */  lbu     $v1, 0x00B1($s0)           ## 000000B1
/* 01AC4 809F9D14 2401000E */  addiu   $at, $zero, 0x000E         ## $at = 0000000E
/* 01AC8 809F9D18 10610026 */  beq     $v1, $at, .L809F9DB4       
/* 01ACC 809F9D1C 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 01AD0 809F9D20 10610004 */  beq     $v1, $at, .L809F9D34       
/* 01AD4 809F9D24 A20303CC */  sb      $v1, 0x03CC($s0)           ## 000003CC
/* 01AD8 809F9D28 2401000F */  addiu   $at, $zero, 0x000F         ## $at = 0000000F
/* 01ADC 809F9D2C 14610011 */  bne     $v1, $at, .L809F9D74       
/* 01AE0 809F9D30 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
.L809F9D34:
/* 01AE4 809F9D34 8E0B0304 */  lw      $t3, 0x0304($s0)           ## 00000304
/* 01AE8 809F9D38 24010007 */  addiu   $at, $zero, 0x0007         ## $at = 00000007
/* 01AEC 809F9D3C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01AF0 809F9D40 1161001C */  beq     $t3, $at, .L809F9DB4       
/* 01AF4 809F9D44 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 01AF8 809F9D48 240C0050 */  addiu   $t4, $zero, 0x0050         ## $t4 = 00000050
/* 01AFC 809F9D4C AFAC0010 */  sw      $t4, 0x0010($sp)           
/* 01B00 809F9D50 24060078 */  addiu   $a2, $zero, 0x0078         ## $a2 = 00000078
/* 01B04 809F9D54 0C00D09B */  jal     func_8003426C              
/* 01B08 809F9D58 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 01B0C 809F9D5C 0C00D58A */  jal     Actor_ApplyDamage
              
/* 01B10 809F9D60 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01B14 809F9D64 0C27E2FF */  jal     func_809F8BFC              
/* 01B18 809F9D68 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01B1C 809F9D6C 10000012 */  beq     $zero, $zero, .L809F9DB8   
/* 01B20 809F9D70 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L809F9D74:
/* 01B24 809F9D74 240D0008 */  addiu   $t5, $zero, 0x0008         ## $t5 = 00000008
/* 01B28 809F9D78 AFAD0010 */  sw      $t5, 0x0010($sp)           
/* 01B2C 809F9D7C 24054000 */  addiu   $a1, $zero, 0x4000         ## $a1 = 00004000
/* 01B30 809F9D80 24060078 */  addiu   $a2, $zero, 0x0078         ## $a2 = 00000078
/* 01B34 809F9D84 0C00D09B */  jal     func_8003426C              
/* 01B38 809F9D88 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 01B3C 809F9D8C 0C00D58A */  jal     Actor_ApplyDamage
              
/* 01B40 809F9D90 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01B44 809F9D94 14400005 */  bne     $v0, $zero, .L809F9DAC     
/* 01B48 809F9D98 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01B4C 809F9D9C 0C27E6A0 */  jal     func_809F9A80              
/* 01B50 809F9DA0 8FA5002C */  lw      $a1, 0x002C($sp)           
/* 01B54 809F9DA4 10000004 */  beq     $zero, $zero, .L809F9DB8   
/* 01B58 809F9DA8 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L809F9DAC:
/* 01B5C 809F9DAC 0C27E5D8 */  jal     func_809F9760              
/* 01B60 809F9DB0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
.L809F9DB4:
/* 01B64 809F9DB4 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L809F9DB8:
/* 01B68 809F9DB8 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 01B6C 809F9DBC 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 01B70 809F9DC0 03E00008 */  jr      $ra                        
/* 01B74 809F9DC4 00000000 */  nop
