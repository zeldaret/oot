glabel EnTorch2_Draw
/* 01E78 80B1F7F8 27BDFF90 */  addiu   $sp, $sp, 0xFF90           ## $sp = FFFFFF90
/* 01E7C 80B1F7FC AFB20030 */  sw      $s2, 0x0030($sp)
/* 01E80 80B1F800 00A09025 */  or      $s2, $a1, $zero            ## $s2 = 00000000
/* 01E84 80B1F804 AFBF0034 */  sw      $ra, 0x0034($sp)
/* 01E88 80B1F808 AFB1002C */  sw      $s1, 0x002C($sp)
/* 01E8C 80B1F80C AFB00028 */  sw      $s0, 0x0028($sp)
/* 01E90 80B1F810 8CA50000 */  lw      $a1, 0x0000($a1)           ## 00000000
/* 01E94 80B1F814 00808825 */  or      $s1, $a0, $zero            ## $s1 = 00000000
/* 01E98 80B1F818 3C0680B2 */  lui     $a2, %hi(D_80B1FA30)       ## $a2 = 80B20000
/* 01E9C 80B1F81C 24C6FA30 */  addiu   $a2, $a2, %lo(D_80B1FA30)  ## $a2 = 80B1FA30
/* 01EA0 80B1F820 27A40050 */  addiu   $a0, $sp, 0x0050           ## $a0 = FFFFFFE0
/* 01EA4 80B1F824 2407041A */  addiu   $a3, $zero, 0x041A         ## $a3 = 0000041A
/* 01EA8 80B1F828 0C031AB1 */  jal     Graph_OpenDisp
/* 01EAC 80B1F82C 00A08025 */  or      $s0, $a1, $zero            ## $s0 = 00000000
/* 01EB0 80B1F830 0C024F20 */  jal     func_80093C80
/* 01EB4 80B1F834 02402025 */  or      $a0, $s2, $zero            ## $a0 = 00000000
/* 01EB8 80B1F838 0C024F61 */  jal     func_80093D84
/* 01EBC 80B1F83C 8E440000 */  lw      $a0, 0x0000($s2)           ## 00000000
/* 01EC0 80B1F840 3C0480B2 */  lui     $a0, %hi(D_80B20165)       ## $a0 = 80B20000
/* 01EC4 80B1F844 24840165 */  addiu   $a0, $a0, %lo(D_80B20165)  ## $a0 = 80B20165
/* 01EC8 80B1F848 908E0000 */  lbu     $t6, 0x0000($a0)           ## 80B20165
/* 01ECC 80B1F84C 240100FF */  addiu   $at, $zero, 0x00FF         ## $at = 000000FF
/* 01ED0 80B1F850 3C19FB00 */  lui     $t9, 0xFB00                ## $t9 = FB000000
/* 01ED4 80B1F854 15C1002B */  bne     $t6, $at, .L80B1F904
/* 01ED8 80B1F858 3C0CDB06 */  lui     $t4, 0xDB06                ## $t4 = DB060000
/* 01EDC 80B1F85C 8E0302C0 */  lw      $v1, 0x02C0($s0)           ## 000002C0
/* 01EE0 80B1F860 3C18FB00 */  lui     $t8, 0xFB00                ## $t8 = FB000000
/* 01EE4 80B1F864 3C01FF00 */  lui     $at, 0xFF00                ## $at = FF000000
/* 01EE8 80B1F868 246F0008 */  addiu   $t7, $v1, 0x0008           ## $t7 = 00000008
/* 01EEC 80B1F86C AE0F02C0 */  sw      $t7, 0x02C0($s0)           ## 000002C0
/* 01EF0 80B1F870 AC780000 */  sw      $t8, 0x0000($v1)           ## 00000000
/* 01EF4 80B1F874 90880000 */  lbu     $t0, 0x0000($a0)           ## 80B20165
/* 01EF8 80B1F878 3C0BDB06 */  lui     $t3, 0xDB06                ## $t3 = DB060000
/* 01EFC 80B1F87C 3C0C8011 */  lui     $t4, 0x8011                ## $t4 = 80110000
/* 01F00 80B1F880 01014825 */  or      $t1, $t0, $at              ## $t1 = FF000000
/* 01F04 80B1F884 AC690004 */  sw      $t1, 0x0004($v1)           ## 00000004
/* 01F08 80B1F888 8E0302C0 */  lw      $v1, 0x02C0($s0)           ## 000002C0
/* 01F0C 80B1F88C 258C6290 */  addiu   $t4, $t4, 0x6290           ## $t4 = 80116290
/* 01F10 80B1F890 356B0030 */  ori     $t3, $t3, 0x0030           ## $t3 = DB060030
/* 01F14 80B1F894 246A0008 */  addiu   $t2, $v1, 0x0008           ## $t2 = 00000008
/* 01F18 80B1F898 AE0A02C0 */  sw      $t2, 0x02C0($s0)           ## 000002C0
/* 01F1C 80B1F89C 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 01F20 80B1F8A0 02402825 */  or      $a1, $s2, $zero            ## $a1 = 00000000
/* 01F24 80B1F8A4 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 01F28 80B1F8A8 AC6C0004 */  sw      $t4, 0x0004($v1)           ## 00000004
/* 01F2C 80B1F8AC 0C00BAF3 */  jal     func_8002EBCC
/* 01F30 80B1F8B0 AC6B0000 */  sw      $t3, 0x0000($v1)           ## 00000000
/* 01F34 80B1F8B4 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 01F38 80B1F8B8 02402825 */  or      $a1, $s2, $zero            ## $a1 = 00000000
/* 01F3C 80B1F8BC 0C00BB60 */  jal     func_8002ED80
/* 01F40 80B1F8C0 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 01F44 80B1F8C4 8E2501B8 */  lw      $a1, 0x01B8($s1)           ## 000001B8
/* 01F48 80B1F8C8 8E2601D4 */  lw      $a2, 0x01D4($s1)           ## 000001D4
/* 01F4C 80B1F8CC 922701B6 */  lbu     $a3, 0x01B6($s1)           ## 000001B6
/* 01F50 80B1F8D0 3C0D80B2 */  lui     $t5, %hi(func_80B1F7A8)    ## $t5 = 80B20000
/* 01F54 80B1F8D4 3C0E80B2 */  lui     $t6, %hi(func_80B1F7D4)    ## $t6 = 80B20000
/* 01F58 80B1F8D8 25CEF7D4 */  addiu   $t6, $t6, %lo(func_80B1F7D4) ## $t6 = 80B1F7D4
/* 01F5C 80B1F8DC 25ADF7A8 */  addiu   $t5, $t5, %lo(func_80B1F7A8) ## $t5 = 80B1F7A8
/* 01F60 80B1F8E0 AFAD0010 */  sw      $t5, 0x0010($sp)
/* 01F64 80B1F8E4 AFAE0014 */  sw      $t6, 0x0014($sp)
/* 01F68 80B1F8E8 AFB10018 */  sw      $s1, 0x0018($sp)
/* 01F6C 80B1F8EC 8E0F02C0 */  lw      $t7, 0x02C0($s0)           ## 000002C0
/* 01F70 80B1F8F0 02402025 */  or      $a0, $s2, $zero            ## $a0 = 00000000
/* 01F74 80B1F8F4 0C0289CF */  jal     SkelAnime_DrawSV2
/* 01F78 80B1F8F8 AFAF001C */  sw      $t7, 0x001C($sp)
/* 01F7C 80B1F8FC 10000028 */  beq     $zero, $zero, .L80B1F9A0
/* 01F80 80B1F900 AE0202C0 */  sw      $v0, 0x02C0($s0)           ## 000002C0
.L80B1F904:
/* 01F84 80B1F904 8E0302D0 */  lw      $v1, 0x02D0($s0)           ## 000002D0
/* 01F88 80B1F908 3C01FF00 */  lui     $at, 0xFF00                ## $at = FF000000
/* 01F8C 80B1F90C 3C0D8011 */  lui     $t5, 0x8011                ## $t5 = 80110000
/* 01F90 80B1F910 24780008 */  addiu   $t8, $v1, 0x0008           ## $t8 = 00000008
/* 01F94 80B1F914 AE1802D0 */  sw      $t8, 0x02D0($s0)           ## 000002D0
/* 01F98 80B1F918 AC790000 */  sw      $t9, 0x0000($v1)           ## 00000000
/* 01F9C 80B1F91C 90890000 */  lbu     $t1, 0x0000($a0)           ## 00000000
/* 01FA0 80B1F920 25AD6280 */  addiu   $t5, $t5, 0x6280           ## $t5 = 80116280
/* 01FA4 80B1F924 358C0030 */  ori     $t4, $t4, 0x0030           ## $t4 = 00000030
/* 01FA8 80B1F928 01215025 */  or      $t2, $t1, $at              ## $t2 = FF000000
/* 01FAC 80B1F92C AC6A0004 */  sw      $t2, 0x0004($v1)           ## 00000004
/* 01FB0 80B1F930 8E0302D0 */  lw      $v1, 0x02D0($s0)           ## 000002D0
/* 01FB4 80B1F934 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 01FB8 80B1F938 02402825 */  or      $a1, $s2, $zero            ## $a1 = 00000000
/* 01FBC 80B1F93C 246B0008 */  addiu   $t3, $v1, 0x0008           ## $t3 = 00000008
/* 01FC0 80B1F940 AE0B02D0 */  sw      $t3, 0x02D0($s0)           ## 000002D0
/* 01FC4 80B1F944 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 01FC8 80B1F948 AC6D0004 */  sw      $t5, 0x0004($v1)           ## 00000004
/* 01FCC 80B1F94C 0C00BAF3 */  jal     func_8002EBCC
/* 01FD0 80B1F950 AC6C0000 */  sw      $t4, 0x0000($v1)           ## 00000000
/* 01FD4 80B1F954 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 01FD8 80B1F958 02402825 */  or      $a1, $s2, $zero            ## $a1 = 00000000
/* 01FDC 80B1F95C 0C00BB60 */  jal     func_8002ED80
/* 01FE0 80B1F960 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 01FE4 80B1F964 8E2501B8 */  lw      $a1, 0x01B8($s1)           ## 000001B8
/* 01FE8 80B1F968 8E2601D4 */  lw      $a2, 0x01D4($s1)           ## 000001D4
/* 01FEC 80B1F96C 922701B6 */  lbu     $a3, 0x01B6($s1)           ## 000001B6
/* 01FF0 80B1F970 3C0E80B2 */  lui     $t6, %hi(func_80B1F7A8)    ## $t6 = 80B20000
/* 01FF4 80B1F974 3C0F80B2 */  lui     $t7, %hi(func_80B1F7D4)    ## $t7 = 80B20000
/* 01FF8 80B1F978 25EFF7D4 */  addiu   $t7, $t7, %lo(func_80B1F7D4) ## $t7 = 80B1F7D4
/* 01FFC 80B1F97C 25CEF7A8 */  addiu   $t6, $t6, %lo(func_80B1F7A8) ## $t6 = 80B1F7A8
/* 02000 80B1F980 AFAE0010 */  sw      $t6, 0x0010($sp)
/* 02004 80B1F984 AFAF0014 */  sw      $t7, 0x0014($sp)
/* 02008 80B1F988 AFB10018 */  sw      $s1, 0x0018($sp)
/* 0200C 80B1F98C 8E1802D0 */  lw      $t8, 0x02D0($s0)           ## 000002D0
/* 02010 80B1F990 02402025 */  or      $a0, $s2, $zero            ## $a0 = 00000000
/* 02014 80B1F994 0C0289CF */  jal     SkelAnime_DrawSV2
/* 02018 80B1F998 AFB8001C */  sw      $t8, 0x001C($sp)
/* 0201C 80B1F99C AE0202D0 */  sw      $v0, 0x02D0($s0)           ## 000002D0
.L80B1F9A0:
/* 02020 80B1F9A0 3C0680B2 */  lui     $a2, %hi(D_80B1FA44)       ## $a2 = 80B20000
/* 02024 80B1F9A4 24C6FA44 */  addiu   $a2, $a2, %lo(D_80B1FA44)  ## $a2 = 80B1FA44
/* 02028 80B1F9A8 27A40050 */  addiu   $a0, $sp, 0x0050           ## $a0 = FFFFFFE0
/* 0202C 80B1F9AC 8E450000 */  lw      $a1, 0x0000($s2)           ## 00000000
/* 02030 80B1F9B0 0C031AD5 */  jal     Graph_CloseDisp
/* 02034 80B1F9B4 2407045A */  addiu   $a3, $zero, 0x045A         ## $a3 = 0000045A
/* 02038 80B1F9B8 8FBF0034 */  lw      $ra, 0x0034($sp)
/* 0203C 80B1F9BC 8FB00028 */  lw      $s0, 0x0028($sp)
/* 02040 80B1F9C0 8FB1002C */  lw      $s1, 0x002C($sp)
/* 02044 80B1F9C4 8FB20030 */  lw      $s2, 0x0030($sp)
/* 02048 80B1F9C8 03E00008 */  jr      $ra
/* 0204C 80B1F9CC 27BD0070 */  addiu   $sp, $sp, 0x0070           ## $sp = 00000000

