glabel OceffWipe2_Destroy
/* 00070 80BA9C20 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 00074 80BA9C24 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00078 80BA9C28 AFA40020 */  sw      $a0, 0x0020($sp)           
/* 0007C 80BA9C2C 8CA21C44 */  lw      $v0, 0x1C44($a1)           ## 00001C44
/* 00080 80BA9C30 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 00084 80BA9C34 0C021DB2 */  jal     func_800876C8              
/* 00088 80BA9C38 AFA20018 */  sw      $v0, 0x0018($sp)           
/* 0008C 80BA9C3C 3C0E8016 */  lui     $t6, 0x8016                ## $t6 = 80160000
/* 00090 80BA9C40 85CEFA28 */  lh      $t6, -0x05D8($t6)          ## 8015FA28
/* 00094 80BA9C44 8FA20018 */  lw      $v0, 0x0018($sp)           
/* 00098 80BA9C48 51C00005 */  beql    $t6, $zero, .L80BA9C60     
/* 0009C 80BA9C4C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 000A0 80BA9C50 904F0692 */  lbu     $t7, 0x0692($v0)           ## 00000692
/* 000A4 80BA9C54 35F80040 */  ori     $t8, $t7, 0x0040           ## $t8 = 00000040
/* 000A8 80BA9C58 A0580692 */  sb      $t8, 0x0692($v0)           ## 00000692
/* 000AC 80BA9C5C 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80BA9C60:
/* 000B0 80BA9C60 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 000B4 80BA9C64 03E00008 */  jr      $ra                        
/* 000B8 80BA9C68 00000000 */  nop
