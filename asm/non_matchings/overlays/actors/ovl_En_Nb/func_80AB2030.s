glabel func_80AB2030
/* 012A0 80AB2030 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 012A4 80AB2034 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 012A8 80AB2038 94AE1D74 */  lhu     $t6, 0x1D74($a1)           ## 00001D74
/* 012AC 80AB203C 240101A4 */  addiu   $at, $zero, 0x01A4         ## $at = 000001A4
/* 012B0 80AB2040 248400E4 */  addiu   $a0, $a0, 0x00E4           ## $a0 = 000000E4
/* 012B4 80AB2044 55C10004 */  bnel    $t6, $at, .L80AB2058       
/* 012B8 80AB2048 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 012BC 80AB204C 0C01E245 */  jal     func_80078914              
/* 012C0 80AB2050 2405685A */  addiu   $a1, $zero, 0x685A         ## $a1 = 0000685A
/* 012C4 80AB2054 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80AB2058:
/* 012C8 80AB2058 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 012CC 80AB205C 03E00008 */  jr      $ra                        
/* 012D0 80AB2060 00000000 */  nop


