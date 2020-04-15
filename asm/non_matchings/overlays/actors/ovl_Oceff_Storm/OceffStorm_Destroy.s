glabel OceffStorm_Destroy
/* 000D4 80BA71B4 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 000D8 80BA71B8 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 000DC 80BA71BC AFA40020 */  sw      $a0, 0x0020($sp)           
/* 000E0 80BA71C0 8CA21C44 */  lw      $v0, 0x1C44($a1)           ## 00001C44
/* 000E4 80BA71C4 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 000E8 80BA71C8 0C021DB2 */  jal     func_800876C8              
/* 000EC 80BA71CC AFA20018 */  sw      $v0, 0x0018($sp)           
/* 000F0 80BA71D0 3C0E8016 */  lui     $t6, 0x8016                ## $t6 = 80160000
/* 000F4 80BA71D4 85CEFA28 */  lh      $t6, -0x05D8($t6)          ## 8015FA28
/* 000F8 80BA71D8 8FA20018 */  lw      $v0, 0x0018($sp)           
/* 000FC 80BA71DC 51C00005 */  beql    $t6, $zero, .L80BA71F4     
/* 00100 80BA71E0 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00104 80BA71E4 904F0692 */  lbu     $t7, 0x0692($v0)           ## 00000692
/* 00108 80BA71E8 35F80040 */  ori     $t8, $t7, 0x0040           ## $t8 = 00000040
/* 0010C 80BA71EC A0580692 */  sb      $t8, 0x0692($v0)           ## 00000692
/* 00110 80BA71F0 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80BA71F4:
/* 00114 80BA71F4 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 00118 80BA71F8 03E00008 */  jr      $ra                        
/* 0011C 80BA71FC 00000000 */  nop
