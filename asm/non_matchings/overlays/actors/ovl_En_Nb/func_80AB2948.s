glabel func_80AB2948
/* 01BB8 80AB2948 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 01BBC 80AB294C AFA40028 */  sw      $a0, 0x0028($sp)           
/* 01BC0 80AB2950 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 01BC4 80AB2954 3C040600 */  lui     $a0, 0x0600                ## $a0 = 06000000
/* 01BC8 80AB2958 0C028800 */  jal     SkelAnime_GetFrameCount
              
/* 01BCC 80AB295C 24842DBC */  addiu   $a0, $a0, 0x2DBC           ## $a0 = 06002DBC
/* 01BD0 80AB2960 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 01BD4 80AB2964 3C01C100 */  lui     $at, 0xC100                ## $at = C1000000
/* 01BD8 80AB2968 8FA30028 */  lw      $v1, 0x0028($sp)           
/* 01BDC 80AB296C 468021A0 */  cvt.s.w $f6, $f4                   
/* 01BE0 80AB2970 44814000 */  mtc1    $at, $f8                   ## $f8 = -8.00
/* 01BE4 80AB2974 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 01BE8 80AB2978 240E0002 */  addiu   $t6, $zero, 0x0002         ## $t6 = 00000002
/* 01BEC 80AB297C AFAE0014 */  sw      $t6, 0x0014($sp)           
/* 01BF0 80AB2980 24A52DBC */  addiu   $a1, $a1, 0x2DBC           ## $a1 = 06002DBC
/* 01BF4 80AB2984 E7A60010 */  swc1    $f6, 0x0010($sp)           
/* 01BF8 80AB2988 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 01BFC 80AB298C 24070000 */  addiu   $a3, $zero, 0x0000         ## $a3 = 00000000
/* 01C00 80AB2990 2464014C */  addiu   $a0, $v1, 0x014C           ## $a0 = 0000014C
/* 01C04 80AB2994 0C029468 */  jal     SkelAnime_ChangeAnimation
              
/* 01C08 80AB2998 E7A80018 */  swc1    $f8, 0x0018($sp)           
/* 01C0C 80AB299C 8FA30028 */  lw      $v1, 0x0028($sp)           
/* 01C10 80AB29A0 240F0011 */  addiu   $t7, $zero, 0x0011         ## $t7 = 00000011
/* 01C14 80AB29A4 24180004 */  addiu   $t8, $zero, 0x0004         ## $t8 = 00000004
/* 01C18 80AB29A8 241900FF */  addiu   $t9, $zero, 0x00FF         ## $t9 = 000000FF
/* 01C1C 80AB29AC AC6F0278 */  sw      $t7, 0x0278($v1)           ## 00000278
/* 01C20 80AB29B0 AC78027C */  sw      $t8, 0x027C($v1)           ## 0000027C
/* 01C24 80AB29B4 A07900C8 */  sb      $t9, 0x00C8($v1)           ## 000000C8
/* 01C28 80AB29B8 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 01C2C 80AB29BC 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 01C30 80AB29C0 03E00008 */  jr      $ra                        
/* 01C34 80AB29C4 00000000 */  nop


