glabel func_8096A528
/* 00A58 8096A528 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 00A5C 8096A52C AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00A60 8096A530 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 00A64 8096A534 94AE1D74 */  lhu     $t6, 0x1D74($a1)           ## 00001D74
/* 00A68 8096A538 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00A6C 8096A53C 29C10104 */  slti    $at, $t6, 0x0104           
/* 00A70 8096A540 50200009 */  beql    $at, $zero, .L8096A568     
/* 00A74 8096A544 94A21D74 */  lhu     $v0, 0x1D74($a1)           ## 00001D74
/* 00A78 8096A548 0C25A6BC */  jal     DemoDu_UpdateEyes              
/* 00A7C 8096A54C 00000000 */  nop
/* 00A80 8096A550 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00A84 8096A554 0C25A6E3 */  jal     func_80969B8C              
/* 00A88 8096A558 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 00A8C 8096A55C 10000030 */  beq     $zero, $zero, .L8096A620   
/* 00A90 8096A560 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00A94 8096A564 94A21D74 */  lhu     $v0, 0x1D74($a1)           ## 00001D74
.L8096A568:
/* 00A98 8096A568 2841014F */  slti    $at, $v0, 0x014F           
/* 00A9C 8096A56C 50200009 */  beql    $at, $zero, .L8096A594     
/* 00AA0 8096A570 2841016D */  slti    $at, $v0, 0x016D           
/* 00AA4 8096A574 0C25A6BC */  jal     DemoDu_UpdateEyes              
/* 00AA8 8096A578 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00AAC 8096A57C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00AB0 8096A580 0C25A6E3 */  jal     func_80969B8C              
/* 00AB4 8096A584 24050003 */  addiu   $a1, $zero, 0x0003         ## $a1 = 00000003
/* 00AB8 8096A588 10000025 */  beq     $zero, $zero, .L8096A620   
/* 00ABC 8096A58C 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00AC0 8096A590 2841016D */  slti    $at, $v0, 0x016D           
.L8096A594:
/* 00AC4 8096A594 10200008 */  beq     $at, $zero, .L8096A5B8     
/* 00AC8 8096A598 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00ACC 8096A59C 0C25A6DE */  jal     DemoDu_SetEyeTexIndex              
/* 00AD0 8096A5A0 24050003 */  addiu   $a1, $zero, 0x0003         ## $a1 = 00000003
/* 00AD4 8096A5A4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00AD8 8096A5A8 0C25A6E3 */  jal     func_80969B8C              
/* 00ADC 8096A5AC 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 00AE0 8096A5B0 1000001B */  beq     $zero, $zero, .L8096A620   
/* 00AE4 8096A5B4 8FBF001C */  lw      $ra, 0x001C($sp)           
.L8096A5B8:
/* 00AE8 8096A5B8 2841018B */  slti    $at, $v0, 0x018B           
/* 00AEC 8096A5BC 10200008 */  beq     $at, $zero, .L8096A5E0     
/* 00AF0 8096A5C0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00AF4 8096A5C4 0C25A6DE */  jal     DemoDu_SetEyeTexIndex              
/* 00AF8 8096A5C8 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 00AFC 8096A5CC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00B00 8096A5D0 0C25A6E3 */  jal     func_80969B8C              
/* 00B04 8096A5D4 24050003 */  addiu   $a1, $zero, 0x0003         ## $a1 = 00000003
/* 00B08 8096A5D8 10000011 */  beq     $zero, $zero, .L8096A620   
/* 00B0C 8096A5DC 8FBF001C */  lw      $ra, 0x001C($sp)           
.L8096A5E0:
/* 00B10 8096A5E0 2841019A */  slti    $at, $v0, 0x019A           
/* 00B14 8096A5E4 10200008 */  beq     $at, $zero, .L8096A608     
/* 00B18 8096A5E8 00000000 */  nop
/* 00B1C 8096A5EC 0C25A6BC */  jal     DemoDu_UpdateEyes              
/* 00B20 8096A5F0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00B24 8096A5F4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00B28 8096A5F8 0C25A6E3 */  jal     func_80969B8C              
/* 00B2C 8096A5FC 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 00B30 8096A600 10000007 */  beq     $zero, $zero, .L8096A620   
/* 00B34 8096A604 8FBF001C */  lw      $ra, 0x001C($sp)           
.L8096A608:
/* 00B38 8096A608 0C25A6BC */  jal     DemoDu_UpdateEyes              
/* 00B3C 8096A60C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00B40 8096A610 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00B44 8096A614 0C25A6E3 */  jal     func_80969B8C              
/* 00B48 8096A618 24050003 */  addiu   $a1, $zero, 0x0003         ## $a1 = 00000003
/* 00B4C 8096A61C 8FBF001C */  lw      $ra, 0x001C($sp)           
.L8096A620:
/* 00B50 8096A620 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 00B54 8096A624 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 00B58 8096A628 03E00008 */  jr      $ra                        
/* 00B5C 8096A62C 00000000 */  nop
