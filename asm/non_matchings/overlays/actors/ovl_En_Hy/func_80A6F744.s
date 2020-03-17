glabel func_80A6F744
/* 00194 80A6F744 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00198 80A6F748 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 0019C 80A6F74C AFA40018 */  sw      $a0, 0x0018($sp)           
/* 001A0 80A6F750 342117A4 */  ori     $at, $at, 0x17A4           ## $at = 000117A4
/* 001A4 80A6F754 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 001A8 80A6F758 00A12021 */  addu    $a0, $a1, $at              
/* 001AC 80A6F75C 0C02604B */  jal     Object_GetIndex
              ## ObjectIndex
/* 001B0 80A6F760 240500C5 */  addiu   $a1, $zero, 0x00C5         ## $a1 = 000000C5
/* 001B4 80A6F764 8FA30018 */  lw      $v1, 0x0018($sp)           
/* 001B8 80A6F768 A0620199 */  sb      $v0, 0x0199($v1)           ## 00000199
/* 001BC 80A6F76C 806E0199 */  lb      $t6, 0x0199($v1)           ## 00000199
/* 001C0 80A6F770 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 001C4 80A6F774 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
/* 001C8 80A6F778 05C10003 */  bgez    $t6, .L80A6F788            
/* 001CC 80A6F77C 00000000 */  nop
/* 001D0 80A6F780 10000001 */  beq     $zero, $zero, .L80A6F788   
/* 001D4 80A6F784 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L80A6F788:
/* 001D8 80A6F788 03E00008 */  jr      $ra                        
/* 001DC 80A6F78C 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000


