glabel func_80A7949C
/* 004EC 80A7949C 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 004F0 80A794A0 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 004F4 80A794A4 AFA40020 */  sw      $a0, 0x0020($sp)           
/* 004F8 80A794A8 94AE010E */  lhu     $t6, 0x010E($a1)           ## 0000010E
/* 004FC 80A794AC 24012035 */  addiu   $at, $zero, 0x2035         ## $at = 00002035
/* 00500 80A794B0 24030001 */  addiu   $v1, $zero, 0x0001         ## $v1 = 00000001
/* 00504 80A794B4 15C1000C */  bne     $t6, $at, .L80A794E8       
/* 00508 80A794B8 2404FFF6 */  addiu   $a0, $zero, 0xFFF6         ## $a0 = FFFFFFF6
/* 0050C 80A794BC AFA3001C */  sw      $v1, 0x001C($sp)           
/* 00510 80A794C0 0C021CC3 */  jal     Rupees_ChangeBy              
/* 00514 80A794C4 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 00518 80A794C8 8FA60024 */  lw      $a2, 0x0024($sp)           
/* 0051C 80A794CC 240F205C */  addiu   $t7, $zero, 0x205C         ## $t7 = 0000205C
/* 00520 80A794D0 31E5FFFF */  andi    $a1, $t7, 0xFFFF           ## $a1 = 0000205C
/* 00524 80A794D4 A4CF010E */  sh      $t7, 0x010E($a2)           ## 0000010E
/* 00528 80A794D8 0C042DC8 */  jal     func_8010B720              
/* 0052C 80A794DC 8FA40020 */  lw      $a0, 0x0020($sp)           
/* 00530 80A794E0 10000002 */  beq     $zero, $zero, .L80A794EC   
/* 00534 80A794E4 8FA3001C */  lw      $v1, 0x001C($sp)           
.L80A794E8:
/* 00538 80A794E8 24030002 */  addiu   $v1, $zero, 0x0002         ## $v1 = 00000002
.L80A794EC:
/* 0053C 80A794EC 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00540 80A794F0 00031400 */  sll     $v0, $v1, 16               
/* 00544 80A794F4 00021403 */  sra     $v0, $v0, 16               
/* 00548 80A794F8 03E00008 */  jr      $ra                        
/* 0054C 80A794FC 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000


