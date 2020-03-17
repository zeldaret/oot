glabel func_80A96F48
/* 00198 80A96F48 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 0019C 80A96F4C 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 001A0 80A96F50 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 001A4 80A96F54 342117A4 */  ori     $at, $at, 0x17A4           ## $at = 000117A4
/* 001A8 80A96F58 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 001AC 80A96F5C 00A12021 */  addu    $a0, $a1, $at              
/* 001B0 80A96F60 0C02604B */  jal     Object_GetIndex
              ## ObjectIndex
/* 001B4 80A96F64 240500C5 */  addiu   $a1, $zero, 0x00C5         ## $a1 = 000000C5
/* 001B8 80A96F68 8FA30018 */  lw      $v1, 0x0018($sp)           
/* 001BC 80A96F6C A0620197 */  sb      $v0, 0x0197($v1)           ## 00000197
/* 001C0 80A96F70 806E0197 */  lb      $t6, 0x0197($v1)           ## 00000197
/* 001C4 80A96F74 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 001C8 80A96F78 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
/* 001CC 80A96F7C 05C10003 */  bgez    $t6, .L80A96F8C            
/* 001D0 80A96F80 00000000 */  nop
/* 001D4 80A96F84 10000001 */  beq     $zero, $zero, .L80A96F8C   
/* 001D8 80A96F88 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L80A96F8C:
/* 001DC 80A96F8C 03E00008 */  jr      $ra                        
/* 001E0 80A96F90 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000


