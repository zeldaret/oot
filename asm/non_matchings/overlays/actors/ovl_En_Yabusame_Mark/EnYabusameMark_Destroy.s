glabel EnYabusameMark_Destroy
/* 00000 80B42DC0 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00004 80B42DC4 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 00008 80B42DC8 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 0000C 80B42DCC 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 00010 80B42DD0 0C017418 */  jal     func_8005D060              
/* 00014 80B42DD4 24C50190 */  addiu   $a1, $a2, 0x0190           ## $a1 = 00000190
/* 00018 80B42DD8 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 0001C 80B42DDC 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00020 80B42DE0 03E00008 */  jr      $ra                        
/* 00024 80B42DE4 00000000 */  nop
