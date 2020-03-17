glabel func_80A49F94
/* 010D4 80A49F94 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 010D8 80A49F98 AFA40028 */  sw      $a0, 0x0028($sp)           
/* 010DC 80A49F9C AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 010E0 80A49FA0 3C040600 */  lui     $a0, 0x0600                ## $a0 = 06000000
/* 010E4 80A49FA4 0C028800 */  jal     SkelAnime_GetFrameCount
              
/* 010E8 80A49FA8 24840E4C */  addiu   $a0, $a0, 0x0E4C           ## $a0 = 06000E4C
/* 010EC 80A49FAC 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 010F0 80A49FB0 3C01C0A0 */  lui     $at, 0xC0A0                ## $at = C0A00000
/* 010F4 80A49FB4 44814000 */  mtc1    $at, $f8                   ## $f8 = -5.00
/* 010F8 80A49FB8 468021A0 */  cvt.s.w $f6, $f4                   
/* 010FC 80A49FBC 8FA40028 */  lw      $a0, 0x0028($sp)           
/* 01100 80A49FC0 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 01104 80A49FC4 240E0002 */  addiu   $t6, $zero, 0x0002         ## $t6 = 00000002
/* 01108 80A49FC8 AFAE0014 */  sw      $t6, 0x0014($sp)           
/* 0110C 80A49FCC 24A50E4C */  addiu   $a1, $a1, 0x0E4C           ## $a1 = 06000E4C
/* 01110 80A49FD0 E7A60010 */  swc1    $f6, 0x0010($sp)           
/* 01114 80A49FD4 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 01118 80A49FD8 24070000 */  addiu   $a3, $zero, 0x0000         ## $a3 = 00000000
/* 0111C 80A49FDC E7A80018 */  swc1    $f8, 0x0018($sp)           
/* 01120 80A49FE0 0C029468 */  jal     SkelAnime_ChangeAnimation
              
/* 01124 80A49FE4 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 01128 80A49FE8 8FA20028 */  lw      $v0, 0x0028($sp)           
/* 0112C 80A49FEC 3C0F80A5 */  lui     $t7, %hi(func_80A4A010)    ## $t7 = 80A50000
/* 01130 80A49FF0 25EFA010 */  addiu   $t7, $t7, %lo(func_80A4A010) ## $t7 = 80A4A010
/* 01134 80A49FF4 2418001E */  addiu   $t8, $zero, 0x001E         ## $t8 = 0000001E
/* 01138 80A49FF8 AC4F02B0 */  sw      $t7, 0x02B0($v0)           ## 000002B0
/* 0113C 80A49FFC A45802CC */  sh      $t8, 0x02CC($v0)           ## 000002CC
/* 01140 80A4A000 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 01144 80A4A004 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 01148 80A4A008 03E00008 */  jr      $ra                        
/* 0114C 80A4A00C 00000000 */  nop


