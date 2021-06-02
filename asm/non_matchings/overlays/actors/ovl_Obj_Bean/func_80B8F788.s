glabel func_80B8F788
/* 00D08 80B8F788 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 00D0C 80B8F78C AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00D10 80B8F790 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 00D14 80B8F794 848E01C0 */  lh      $t6, 0x01C0($a0)           ## 000001C0
/* 00D18 80B8F798 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00D1C 80B8F79C 2401000E */  addiu   $at, $zero, 0x000E         ## $at = 0000000E
/* 00D20 80B8F7A0 25CFFFFF */  addiu   $t7, $t6, 0xFFFF           ## $t7 = FFFFFFFF
/* 00D24 80B8F7A4 A48F01C0 */  sh      $t7, 0x01C0($a0)           ## 000001C0
/* 00D28 80B8F7A8 849801C0 */  lh      $t8, 0x01C0($a0)           ## 000001C0
/* 00D2C 80B8F7AC 240400C8 */  addiu   $a0, $zero, 0x00C8         ## $a0 = 000000C8
/* 00D30 80B8F7B0 1701000A */  bne     $t8, $at, .L80B8F7DC       
/* 00D34 80B8F7B4 00000000 */  nop
/* 00D38 80B8F7B8 0C01DF64 */  jal     Rand_S16Offset
              
/* 00D3C 80B8F7BC 24050190 */  addiu   $a1, $zero, 0x0190         ## $a1 = 00000190
/* 00D40 80B8F7C0 A60201C4 */  sh      $v0, 0x01C4($s0)           ## 000001C4
/* 00D44 80B8F7C4 24040064 */  addiu   $a0, $zero, 0x0064         ## $a0 = 00000064
/* 00D48 80B8F7C8 0C01DF64 */  jal     Rand_S16Offset
              
/* 00D4C 80B8F7CC 240501F4 */  addiu   $a1, $zero, 0x01F4         ## $a1 = 000001F4
/* 00D50 80B8F7D0 241907D0 */  addiu   $t9, $zero, 0x07D0         ## $t9 = 000007D0
/* 00D54 80B8F7D4 A60201CA */  sh      $v0, 0x01CA($s0)           ## 000001CA
/* 00D58 80B8F7D8 A61901CC */  sh      $t9, 0x01CC($s0)           ## 000001CC
.L80B8F7DC:
/* 00D5C 80B8F7DC 0C2E3D67 */  jal     func_80B8F59C              
/* 00D60 80B8F7E0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00D64 80B8F7E4 860801C0 */  lh      $t0, 0x01C0($s0)           ## 000001C0
/* 00D68 80B8F7E8 05030004 */  bgezl   $t0, .L80B8F7FC            
/* 00D6C 80B8F7EC 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00D70 80B8F7F0 0C2E3D97 */  jal     func_80B8F65C              
/* 00D74 80B8F7F4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00D78 80B8F7F8 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80B8F7FC:
/* 00D7C 80B8F7FC 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 00D80 80B8F800 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 00D84 80B8F804 03E00008 */  jr      $ra                        
/* 00D88 80B8F808 00000000 */  nop
