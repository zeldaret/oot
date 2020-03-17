glabel func_8097EF00
/* 01890 8097EF00 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 01894 8097EF04 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 01898 8097EF08 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 0189C 8097EF0C 94A21D74 */  lhu     $v0, 0x1D74($a1)           ## 00001D74
/* 018A0 8097EF10 2401020F */  addiu   $at, $zero, 0x020F         ## $at = 0000020F
/* 018A4 8097EF14 54410004 */  bnel    $v0, $at, .L8097EF28       
/* 018A8 8097EF18 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 018AC 8097EF1C 0C03CFCF */  jal     func_800F3F3C              
/* 018B0 8097EF20 2404000D */  addiu   $a0, $zero, 0x000D         ## $a0 = 0000000D
/* 018B4 8097EF24 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L8097EF28:
/* 018B8 8097EF28 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 018BC 8097EF2C 03E00008 */  jr      $ra                        
/* 018C0 8097EF30 00000000 */  nop


