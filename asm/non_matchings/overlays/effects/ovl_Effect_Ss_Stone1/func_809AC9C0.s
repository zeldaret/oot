glabel func_809AC9C0
/* 002C0 809AC9C0 AFA40000 */  sw      $a0, 0x0000($sp)           
/* 002C4 809AC9C4 AFA50004 */  sw      $a1, 0x0004($sp)           
/* 002C8 809AC9C8 84CE005C */  lh      $t6, 0x005C($a2)           ## 0000005C
/* 002CC 809AC9CC 24010006 */  addiu   $at, $zero, 0x0006         ## $at = 00000006
/* 002D0 809AC9D0 15C10007 */  bne     $t6, $at, .L809AC9F0       
/* 002D4 809AC9D4 00000000 */  nop
/* 002D8 809AC9D8 84CF0040 */  lh      $t7, 0x0040($a2)           ## 00000040
/* 002DC 809AC9DC 3C188016 */  lui     $t8, 0x8016                ## $t8 = 80160000
/* 002E0 809AC9E0 11E00003 */  beq     $t7, $zero, .L809AC9F0     
/* 002E4 809AC9E4 00000000 */  nop
/* 002E8 809AC9E8 8F18FA90 */  lw      $t8, -0x0570($t8)          ## 8015FA90
/* 002EC 809AC9EC A7000D38 */  sh      $zero, 0x0D38($t8)         ## 80160D38
.L809AC9F0:
/* 002F0 809AC9F0 03E00008 */  jr      $ra                        
/* 002F4 809AC9F4 00000000 */  nop
/* 002F8 809AC9F8 00000000 */  nop
/* 002FC 809AC9FC 00000000 */  nop

