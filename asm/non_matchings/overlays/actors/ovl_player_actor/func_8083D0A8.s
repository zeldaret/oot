glabel func_8083D0A8
/* 0AE98 8083D0A8 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 0AE9C 8083D0AC AFBF001C */  sw      $ra, 0x001C($sp)           
/* 0AEA0 8083D0B0 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 0AEA4 8083D0B4 AFA40020 */  sw      $a0, 0x0020($sp)           
/* 0AEA8 8083D0B8 AFA60028 */  sw      $a2, 0x0028($sp)           
/* 0AEAC 8083D0BC 8CAE067C */  lw      $t6, 0x067C($a1)           ## 0000067C
/* 0AEB0 8083D0C0 3C010004 */  lui     $at, 0x0004                ## $at = 00040000
/* 0AEB4 8083D0C4 00A08025 */  or      $s0, $a1, $zero            ## $s0 = 00000000
/* 0AEB8 8083D0C8 01C17825 */  or      $t7, $t6, $at              ## $t7 = 00040000
/* 0AEBC 8083D0CC 3C01F7FF */  lui     $at, 0xF7FF                ## $at = F7FF0000
/* 0AEC0 8083D0D0 3421FFFF */  ori     $at, $at, 0xFFFF           ## $at = F7FFFFFF
/* 0AEC4 8083D0D4 ACAF067C */  sw      $t7, 0x067C($a1)           ## 0000067C
/* 0AEC8 8083D0D8 01E1C824 */  and     $t9, $t7, $at              
/* 0AECC 8083D0DC ACB9067C */  sw      $t9, 0x067C($a1)           ## 0000067C
/* 0AED0 8083D0E0 0C20C8D0 */  jal     func_80832340              
/* 0AED4 8083D0E4 8FA40020 */  lw      $a0, 0x0020($sp)           
/* 0AED8 8083D0E8 8FA40020 */  lw      $a0, 0x0020($sp)           
/* 0AEDC 8083D0EC 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 0AEE0 8083D0F0 8FA60028 */  lw      $a2, 0x0028($sp)           
/* 0AEE4 8083D0F4 0C20F3EA */  jal     func_8083CFA8              
/* 0AEE8 8083D0F8 240701F4 */  addiu   $a3, $zero, 0x01F4         ## $a3 = 000001F4
/* 0AEEC 8083D0FC 10400003 */  beq     $v0, $zero, .L8083D10C     
/* 0AEF0 8083D100 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0AEF4 8083D104 0C00BDF7 */  jal     func_8002F7DC              
/* 0AEF8 8083D108 2405288A */  addiu   $a1, $zero, 0x288A         ## $a1 = 0000288A
.L8083D10C:
/* 0AEFC 8083D10C 8FA40020 */  lw      $a0, 0x0020($sp)           
/* 0AF00 8083D110 0C0239D4 */  jal     func_8008E750              
/* 0AF04 8083D114 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 0AF08 8083D118 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 0AF0C 8083D11C 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 0AF10 8083D120 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 0AF14 8083D124 03E00008 */  jr      $ra                        
/* 0AF18 8083D128 00000000 */  nop


