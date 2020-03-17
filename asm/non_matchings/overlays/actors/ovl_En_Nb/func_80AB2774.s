glabel func_80AB2774
/* 019E4 80AB2774 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 019E8 80AB2778 AFA40028 */  sw      $a0, 0x0028($sp)           
/* 019EC 80AB277C AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 019F0 80AB2780 3C040601 */  lui     $a0, 0x0601                ## $a0 = 06010000
/* 019F4 80AB2784 0C028800 */  jal     SkelAnime_GetFrameCount
              
/* 019F8 80AB2788 24848BD0 */  addiu   $a0, $a0, 0x8BD0           ## $a0 = 06008BD0
/* 019FC 80AB278C 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 01A00 80AB2790 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 01A04 80AB2794 8FA30028 */  lw      $v1, 0x0028($sp)           
/* 01A08 80AB2798 468021A0 */  cvt.s.w $f6, $f4                   
/* 01A0C 80AB279C 3C050601 */  lui     $a1, 0x0601                ## $a1 = 06010000
/* 01A10 80AB27A0 240E0002 */  addiu   $t6, $zero, 0x0002         ## $t6 = 00000002
/* 01A14 80AB27A4 44070000 */  mfc1    $a3, $f0                   
/* 01A18 80AB27A8 AFAE0014 */  sw      $t6, 0x0014($sp)           
/* 01A1C 80AB27AC 24A58BD0 */  addiu   $a1, $a1, 0x8BD0           ## $a1 = 06008BD0
/* 01A20 80AB27B0 E7A60010 */  swc1    $f6, 0x0010($sp)           
/* 01A24 80AB27B4 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 01A28 80AB27B8 2464014C */  addiu   $a0, $v1, 0x014C           ## $a0 = 0000014C
/* 01A2C 80AB27BC 0C029468 */  jal     SkelAnime_ChangeAnimation
              
/* 01A30 80AB27C0 E7A00018 */  swc1    $f0, 0x0018($sp)           
/* 01A34 80AB27C4 8FA30028 */  lw      $v1, 0x0028($sp)           
/* 01A38 80AB27C8 240F000F */  addiu   $t7, $zero, 0x000F         ## $t7 = 0000000F
/* 01A3C 80AB27CC 24180003 */  addiu   $t8, $zero, 0x0003         ## $t8 = 00000003
/* 01A40 80AB27D0 241900FF */  addiu   $t9, $zero, 0x00FF         ## $t9 = 000000FF
/* 01A44 80AB27D4 AC6F0278 */  sw      $t7, 0x0278($v1)           ## 00000278
/* 01A48 80AB27D8 AC78027C */  sw      $t8, 0x027C($v1)           ## 0000027C
/* 01A4C 80AB27DC A07900C8 */  sb      $t9, 0x00C8($v1)           ## 000000C8
/* 01A50 80AB27E0 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 01A54 80AB27E4 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 01A58 80AB27E8 03E00008 */  jr      $ra                        
/* 01A5C 80AB27EC 00000000 */  nop


