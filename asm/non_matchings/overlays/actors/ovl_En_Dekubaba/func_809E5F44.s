glabel func_809E5F44
/* 00774 809E5F44 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00778 809E5F48 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 0077C 809E5F4C AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00780 809E5F50 3C040600 */  lui     $a0, 0x0600                ## $a0 = 06000000
/* 00784 809E5F54 0C028800 */  jal     SkelAnime_GetFrameCount
              
/* 00788 809E5F58 248402B8 */  addiu   $a0, $a0, 0x02B8           ## $a0 = 060002B8
/* 0078C 809E5F5C 8FA30018 */  lw      $v1, 0x0018($sp)           
/* 00790 809E5F60 00027040 */  sll     $t6, $v0,  1               
/* 00794 809E5F64 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 00798 809E5F68 24A502B8 */  addiu   $a1, $a1, 0x02B8           ## $a1 = 060002B8
/* 0079C 809E5F6C 3C06C040 */  lui     $a2, 0xC040                ## $a2 = C0400000
/* 007A0 809E5F70 A46E01C6 */  sh      $t6, 0x01C6($v1)           ## 000001C6
/* 007A4 809E5F74 0C0294D3 */  jal     func_800A534C              
/* 007A8 809E5F78 2464017C */  addiu   $a0, $v1, 0x017C           ## $a0 = 0000017C
/* 007AC 809E5F7C 8FB80018 */  lw      $t8, 0x0018($sp)           
/* 007B0 809E5F80 3C0F809E */  lui     $t7, %hi(func_809E6ED4)    ## $t7 = 809E0000
/* 007B4 809E5F84 25EF6ED4 */  addiu   $t7, $t7, %lo(func_809E6ED4) ## $t7 = 809E6ED4
/* 007B8 809E5F88 AF0F01C0 */  sw      $t7, 0x01C0($t8)           ## 000001C0
/* 007BC 809E5F8C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 007C0 809E5F90 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 007C4 809E5F94 03E00008 */  jr      $ra                        
/* 007C8 809E5F98 00000000 */  nop


