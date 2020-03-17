glabel EnInsect_Draw
/* 02028 80A7DE48 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 0202C 80A7DE4C AFBF001C */  sw      $ra, 0x001C($sp)           
/* 02030 80A7DE50 AFA40020 */  sw      $a0, 0x0020($sp)           
/* 02034 80A7DE54 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 02038 80A7DE58 0C024F46 */  jal     func_80093D18              
/* 0203C 80A7DE5C 8CA40000 */  lw      $a0, 0x0000($a1)           ## 00000000
/* 02040 80A7DE60 8FA20020 */  lw      $v0, 0x0020($sp)           
/* 02044 80A7DE64 8FA40024 */  lw      $a0, 0x0024($sp)           
/* 02048 80A7DE68 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 0204C 80A7DE6C 8C4501B0 */  lw      $a1, 0x01B0($v0)           ## 000001B0
/* 02050 80A7DE70 8C4601CC */  lw      $a2, 0x01CC($v0)           ## 000001CC
/* 02054 80A7DE74 AFA00014 */  sw      $zero, 0x0014($sp)         
/* 02058 80A7DE78 0C028572 */  jal     SkelAnime_Draw
              
/* 0205C 80A7DE7C AFA00010 */  sw      $zero, 0x0010($sp)         
/* 02060 80A7DE80 8FA50020 */  lw      $a1, 0x0020($sp)           
/* 02064 80A7DE84 00002025 */  or      $a0, $zero, $zero          ## $a0 = 00000000
/* 02068 80A7DE88 0C018A29 */  jal     func_800628A4              
/* 0206C 80A7DE8C 24A5014C */  addiu   $a1, $a1, 0x014C           ## $a1 = 0000014C
/* 02070 80A7DE90 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 02074 80A7DE94 3C0180A8 */  lui     $at, %hi(D_80A7DEB4)       ## $at = 80A80000
/* 02078 80A7DE98 A420DEB4 */  sh      $zero, %lo(D_80A7DEB4)($at) 
/* 0207C 80A7DE9C 03E00008 */  jr      $ra                        
/* 02080 80A7DEA0 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 02084 80A7DEA4 00000000 */  nop
/* 02088 80A7DEA8 00000000 */  nop
/* 0208C 80A7DEAC 00000000 */  nop

