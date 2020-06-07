glabel EnBubble_Update
/* 00F58 809CCB58 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 00F5C 809CCB5C AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 00F60 809CCB60 AFB00020 */  sw      $s0, 0x0020($sp)           
/* 00F64 809CCB64 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00F68 809CCB68 0C00B5FB */  jal     func_8002D7EC              
/* 00F6C 809CCB6C AFA5002C */  sw      $a1, 0x002C($sp)           
/* 00F70 809CCB70 3C014180 */  lui     $at, 0x4180                ## $at = 41800000
/* 00F74 809CCB74 44810000 */  mtc1    $at, $f0                   ## $f0 = 16.00
/* 00F78 809CCB78 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 00F7C 809CCB7C 240E0007 */  addiu   $t6, $zero, 0x0007         ## $t6 = 00000007
/* 00F80 809CCB80 44060000 */  mfc1    $a2, $f0                   
/* 00F84 809CCB84 44070000 */  mfc1    $a3, $f0                   
/* 00F88 809CCB88 AFAE0014 */  sw      $t6, 0x0014($sp)           
/* 00F8C 809CCB8C 8FA4002C */  lw      $a0, 0x002C($sp)           
/* 00F90 809CCB90 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 00F94 809CCB94 0C00B92D */  jal     func_8002E4B4              
/* 00F98 809CCB98 E7A40010 */  swc1    $f4, 0x0010($sp)           
/* 00F9C 809CCB9C 8E19014C */  lw      $t9, 0x014C($s0)           ## 0000014C
/* 00FA0 809CCBA0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00FA4 809CCBA4 8FA5002C */  lw      $a1, 0x002C($sp)           
/* 00FA8 809CCBA8 0320F809 */  jalr    $ra, $t9                   
/* 00FAC 809CCBAC 00000000 */  nop
/* 00FB0 809CCBB0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00FB4 809CCBB4 0C00B56E */  jal     Actor_SetHeight
              
/* 00FB8 809CCBB8 8E0500BC */  lw      $a1, 0x00BC($s0)           ## 000000BC
/* 00FBC 809CCBBC 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 00FC0 809CCBC0 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 00FC4 809CCBC4 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 00FC8 809CCBC8 03E00008 */  jr      $ra                        
/* 00FCC 809CCBCC 00000000 */  nop
