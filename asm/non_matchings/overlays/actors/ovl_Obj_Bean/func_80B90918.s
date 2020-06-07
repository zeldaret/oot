glabel func_80B90918
/* 01E98 80B90918 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 01E9C 80B9091C AFBF001C */  sw      $ra, 0x001C($sp)           
/* 01EA0 80B90920 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 01EA4 80B90924 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 01EA8 80B90928 0C010D5B */  jal     func_8004356C              
/* 01EAC 80B9092C AFA50024 */  sw      $a1, 0x0024($sp)           
/* 01EB0 80B90930 1440000A */  bne     $v0, $zero, .L80B9095C     
/* 01EB4 80B90934 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01EB8 80B90938 0C2E3BD1 */  jal     func_80B8EF44              
/* 01EBC 80B9093C 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 01EC0 80B90940 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01EC4 80B90944 0C2E3BE0 */  jal     func_80B8EF80              
/* 01EC8 80B90948 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 01ECC 80B9094C 0C2E3BBF */  jal     func_80B8EEFC              
/* 01ED0 80B90950 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01ED4 80B90954 0C2E425C */  jal     func_80B90970              
/* 01ED8 80B90958 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
.L80B9095C:
/* 01EDC 80B9095C 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 01EE0 80B90960 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 01EE4 80B90964 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 01EE8 80B90968 03E00008 */  jr      $ra                        
/* 01EEC 80B9096C 00000000 */  nop
