glabel OceffWipe_Destroy
/* 00070 80BA8E00 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 00074 80BA8E04 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00078 80BA8E08 AFA40020 */  sw      $a0, 0x0020($sp)           
/* 0007C 80BA8E0C 8CA21C44 */  lw      $v0, 0x1C44($a1)           ## 00001C44
/* 00080 80BA8E10 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 00084 80BA8E14 0C021DB2 */  jal     func_800876C8              
/* 00088 80BA8E18 AFA20018 */  sw      $v0, 0x0018($sp)           
/* 0008C 80BA8E1C 3C0E8016 */  lui     $t6, %hi(gSaveContext+0x13c8)
/* 00090 80BA8E20 85CEFA28 */  lh      $t6, %lo(gSaveContext+0x13c8)($t6)
/* 00094 80BA8E24 8FA20018 */  lw      $v0, 0x0018($sp)           
/* 00098 80BA8E28 51C00005 */  beql    $t6, $zero, .L80BA8E40     
/* 0009C 80BA8E2C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 000A0 80BA8E30 904F0692 */  lbu     $t7, 0x0692($v0)           ## 00000692
/* 000A4 80BA8E34 35F80040 */  ori     $t8, $t7, 0x0040           ## $t8 = 00000040
/* 000A8 80BA8E38 A0580692 */  sb      $t8, 0x0692($v0)           ## 00000692
/* 000AC 80BA8E3C 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80BA8E40:
/* 000B0 80BA8E40 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 000B4 80BA8E44 03E00008 */  jr      $ra                        
/* 000B8 80BA8E48 00000000 */  nop
