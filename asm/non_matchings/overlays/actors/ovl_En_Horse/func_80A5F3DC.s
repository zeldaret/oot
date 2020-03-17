glabel func_80A5F3DC
/* 040EC 80A5F3DC 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 040F0 80A5F3E0 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 040F4 80A5F3E4 0C297CEA */  jal     func_80A5F3A8              
/* 040F8 80A5F3E8 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 040FC 80A5F3EC 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 04100 80A5F3F0 3C01FFFE */  lui     $at, 0xFFFE                ## $at = FFFE0000
/* 04104 80A5F3F4 3421FFFF */  ori     $at, $at, 0xFFFF           ## $at = FFFEFFFF
/* 04108 80A5F3F8 8C8E01F0 */  lw      $t6, 0x01F0($a0)           ## 000001F0
/* 0410C 80A5F3FC 01C17824 */  and     $t7, $t6, $at              
/* 04110 80A5F400 AC8F01F0 */  sw      $t7, 0x01F0($a0)           ## 000001F0
/* 04114 80A5F404 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 04118 80A5F408 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 0411C 80A5F40C 03E00008 */  jr      $ra                        
/* 04120 80A5F410 00000000 */  nop


