glabel func_80B55F38
/* 02B88 80B55F38 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 02B8C 80B55F3C 10A00007 */  beq     $a1, $zero, .L80B55F5C     
/* 02B90 80B55F40 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 02B94 80B55F44 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 02B98 80B55F48 24A53FF8 */  addiu   $a1, $a1, 0x3FF8           ## $a1 = 06003FF8
/* 02B9C 80B55F4C 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 02BA0 80B55F50 24070000 */  addiu   $a3, $zero, 0x0000         ## $a3 = 00000000
/* 02BA4 80B55F54 0C2D5385 */  jal     func_80B54E14              
/* 02BA8 80B55F58 AFA00010 */  sw      $zero, 0x0010($sp)         
.L80B55F5C:
/* 02BAC 80B55F5C 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 02BB0 80B55F60 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 02BB4 80B55F64 03E00008 */  jr      $ra                        
/* 02BB8 80B55F68 00000000 */  nop
