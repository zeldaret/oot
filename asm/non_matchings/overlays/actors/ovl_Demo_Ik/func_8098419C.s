glabel func_8098419C
/* 00E9C 8098419C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00EA0 809841A0 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 00EA4 809841A4 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00EA8 809841A8 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00EAC 809841AC AFA60020 */  sw      $a2, 0x0020($sp)           
/* 00EB0 809841B0 14A1000B */  bne     $a1, $at, .L809841E0       
/* 00EB4 809841B4 AFA70024 */  sw      $a3, 0x0024($sp)           
/* 00EB8 809841B8 0C260D0A */  jal     func_80983428              
/* 00EBC 809841BC 8FA4002C */  lw      $a0, 0x002C($sp)           
/* 00EC0 809841C0 3C0141F0 */  lui     $at, 0x41F0                ## $at = 41F00000
/* 00EC4 809841C4 44812000 */  mtc1    $at, $f4                   ## $f4 = 30.00
/* 00EC8 809841C8 8FAE0020 */  lw      $t6, 0x0020($sp)           
/* 00ECC 809841CC 4604003C */  c.lt.s  $f0, $f4                   
/* 00ED0 809841D0 00000000 */  nop
/* 00ED4 809841D4 45020003 */  bc1fl   .L809841E4                 
/* 00ED8 809841D8 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00EDC 809841DC ADC00000 */  sw      $zero, 0x0000($t6)         ## 00000000
.L809841E0:
/* 00EE0 809841E0 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L809841E4:
/* 00EE4 809841E4 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00EE8 809841E8 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 00EEC 809841EC 03E00008 */  jr      $ra                        
/* 00EF0 809841F0 00000000 */  nop
