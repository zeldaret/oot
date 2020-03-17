glabel func_80B40A78
/* 04898 80B40A78 27BDFFC0 */  addiu   $sp, $sp, 0xFFC0           ## $sp = FFFFFFC0
/* 0489C 80B40A7C AFB00028 */  sw      $s0, 0x0028($sp)           
/* 048A0 80B40A80 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 048A4 80B40A84 AFBF002C */  sw      $ra, 0x002C($sp)           
/* 048A8 80B40A88 3C040602 */  lui     $a0, 0x0602                ## $a0 = 06020000
/* 048AC 80B40A8C AFA50044 */  sw      $a1, 0x0044($sp)           
/* 048B0 80B40A90 0C028800 */  jal     SkelAnime_GetFrameCount
              
/* 048B4 80B40A94 24849F78 */  addiu   $a0, $a0, 0x9F78           ## $a0 = 06019F78
/* 048B8 80B40A98 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 048BC 80B40A9C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 048C0 80B40AA0 468021A0 */  cvt.s.w $f6, $f4                   
/* 048C4 80B40AA4 0C2CF277 */  jal     func_80B3C9DC              
/* 048C8 80B40AA8 E7A60030 */  swc1    $f6, 0x0030($sp)           
/* 048CC 80B40AAC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 048D0 80B40AB0 8FA50044 */  lw      $a1, 0x0044($sp)           
/* 048D4 80B40AB4 0C2CF162 */  jal     func_80B3C588              
/* 048D8 80B40AB8 24060004 */  addiu   $a2, $zero, 0x0004         ## $a2 = 00000004
/* 048DC 80B40ABC 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 048E0 80B40AC0 C7A80030 */  lwc1    $f8, 0x0030($sp)           
/* 048E4 80B40AC4 3C050602 */  lui     $a1, 0x0602                ## $a1 = 06020000
/* 048E8 80B40AC8 240E0002 */  addiu   $t6, $zero, 0x0002         ## $t6 = 00000002
/* 048EC 80B40ACC 44070000 */  mfc1    $a3, $f0                   
/* 048F0 80B40AD0 AFAE0014 */  sw      $t6, 0x0014($sp)           
/* 048F4 80B40AD4 24A59F78 */  addiu   $a1, $a1, 0x9F78           ## $a1 = 06019F78
/* 048F8 80B40AD8 2604014C */  addiu   $a0, $s0, 0x014C           ## $a0 = 0000014C
/* 048FC 80B40ADC 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 04900 80B40AE0 E7A80010 */  swc1    $f8, 0x0010($sp)           
/* 04904 80B40AE4 0C029468 */  jal     SkelAnime_ChangeAnimation
              
/* 04908 80B40AE8 E7A00018 */  swc1    $f0, 0x0018($sp)           
/* 0490C 80B40AEC 240F003F */  addiu   $t7, $zero, 0x003F         ## $t7 = 0000003F
/* 04910 80B40AF0 24180001 */  addiu   $t8, $zero, 0x0001         ## $t8 = 00000001
/* 04914 80B40AF4 241900FF */  addiu   $t9, $zero, 0x00FF         ## $t9 = 000000FF
/* 04918 80B40AF8 AE0F0260 */  sw      $t7, 0x0260($s0)           ## 00000260
/* 0491C 80B40AFC AE180264 */  sw      $t8, 0x0264($s0)           ## 00000264
/* 04920 80B40B00 A21900C8 */  sb      $t9, 0x00C8($s0)           ## 000000C8
/* 04924 80B40B04 8FBF002C */  lw      $ra, 0x002C($sp)           
/* 04928 80B40B08 8FB00028 */  lw      $s0, 0x0028($sp)           
/* 0492C 80B40B0C 27BD0040 */  addiu   $sp, $sp, 0x0040           ## $sp = 00000000
/* 04930 80B40B10 03E00008 */  jr      $ra                        
/* 04934 80B40B14 00000000 */  nop


