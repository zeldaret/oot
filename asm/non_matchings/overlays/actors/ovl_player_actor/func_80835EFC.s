glabel func_80835EFC
/* 03CEC 80835EFC 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 03CF0 80835F00 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 03CF4 80835F04 0C023C41 */  jal     func_8008F104              
/* 03CF8 80835F08 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 03CFC 80835F0C 10400009 */  beq     $v0, $zero, .L80835F34     
/* 03D00 80835F10 8FA50018 */  lw      $a1, 0x0018($sp)           
/* 03D04 80835F14 8CA403AC */  lw      $a0, 0x03AC($a1)           ## 000003AC
/* 03D08 80835F18 50800007 */  beql    $a0, $zero, .L80835F38     
/* 03D0C 80835F1C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 03D10 80835F20 0C00B55C */  jal     Actor_Kill
              
/* 03D14 80835F24 AFA50018 */  sw      $a1, 0x0018($sp)           
/* 03D18 80835F28 8FA50018 */  lw      $a1, 0x0018($sp)           
/* 03D1C 80835F2C ACA0011C */  sw      $zero, 0x011C($a1)         ## 0000011C
/* 03D20 80835F30 ACA003AC */  sw      $zero, 0x03AC($a1)         ## 000003AC
.L80835F34:
/* 03D24 80835F34 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80835F38:
/* 03D28 80835F38 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 03D2C 80835F3C 03E00008 */  jr      $ra                        
/* 03D30 80835F40 00000000 */  nop
