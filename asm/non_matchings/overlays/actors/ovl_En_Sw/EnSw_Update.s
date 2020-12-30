glabel EnSw_Update
/* 02CB8 80B0EA68 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 02CBC 80B0EA6C AFB00018 */  sw      $s0, 0x0018($sp)           
/* 02CC0 80B0EA70 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 02CC4 80B0EA74 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 02CC8 80B0EA78 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 02CCC 80B0EA7C 0C02927F */  jal     SkelAnime_Update
              
/* 02CD0 80B0EA80 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 02CD4 80B0EA84 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02CD8 80B0EA88 0C2C327C */  jal     func_80B0C9F0              
/* 02CDC 80B0EA8C 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 02CE0 80B0EA90 8E190190 */  lw      $t9, 0x0190($s0)           ## 00000190
/* 02CE4 80B0EA94 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02CE8 80B0EA98 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 02CEC 80B0EA9C 0320F809 */  jalr    $ra, $t9                   
/* 02CF0 80B0EAA0 00000000 */  nop
/* 02CF4 80B0EAA4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02CF8 80B0EAA8 0C2C32FA */  jal     func_80B0CBE8              
/* 02CFC 80B0EAAC 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 02D00 80B0EAB0 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 02D04 80B0EAB4 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 02D08 80B0EAB8 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 02D0C 80B0EABC 03E00008 */  jr      $ra                        
/* 02D10 80B0EAC0 00000000 */  nop
