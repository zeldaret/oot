glabel func_80B5634C
/* 02F9C 80B5634C 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 02FA0 80B56350 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 02FA4 80B56354 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 02FA8 80B56358 AFA40020 */  sw      $a0, 0x0020($sp)           
/* 02FAC 80B5635C 24A52348 */  addiu   $a1, $a1, 0x2348           ## $a1 = 06002348
/* 02FB0 80B56360 AFA00010 */  sw      $zero, 0x0010($sp)         
/* 02FB4 80B56364 24060002 */  addiu   $a2, $zero, 0x0002         ## $a2 = 00000002
/* 02FB8 80B56368 0C2D5385 */  jal     func_80B54E14              
/* 02FBC 80B5636C 3C07C100 */  lui     $a3, 0xC100                ## $a3 = C1000000
/* 02FC0 80B56370 8FAF0020 */  lw      $t7, 0x0020($sp)           
/* 02FC4 80B56374 240E0016 */  addiu   $t6, $zero, 0x0016         ## $t6 = 00000016
/* 02FC8 80B56378 ADEE024C */  sw      $t6, 0x024C($t7)           ## 0000024C
/* 02FCC 80B5637C 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 02FD0 80B56380 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 02FD4 80B56384 03E00008 */  jr      $ra                        
/* 02FD8 80B56388 00000000 */  nop
