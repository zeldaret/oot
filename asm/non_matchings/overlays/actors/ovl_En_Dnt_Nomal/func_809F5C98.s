.rdata
glabel D_809F5FF8
    .asciz "../z_en_dnt_nomal.c"
    .balign 4

glabel D_809F600C
    .asciz "../z_en_dnt_nomal.c"
    .balign 4

glabel D_809F6020
    .asciz "../z_en_dnt_nomal.c"
    .balign 4

.late_rodata
glabel D_809F608C
    .float 0.01

.text
glabel func_809F5C98
/* 029D8 809F5C98 27BDFFA8 */  addiu   $sp, $sp, 0xFFA8           ## $sp = FFFFFFA8
/* 029DC 809F5C9C AFB20028 */  sw      $s2, 0x0028($sp)           
/* 029E0 809F5CA0 00A09025 */  or      $s2, $a1, $zero            ## $s2 = 00000000
/* 029E4 809F5CA4 AFBF002C */  sw      $ra, 0x002C($sp)           
/* 029E8 809F5CA8 AFB10024 */  sw      $s1, 0x0024($sp)           
/* 029EC 809F5CAC AFB00020 */  sw      $s0, 0x0020($sp)           
/* 029F0 809F5CB0 8CA50000 */  lw      $a1, 0x0000($a1)           ## 00000000
/* 029F4 809F5CB4 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 029F8 809F5CB8 3C06809F */  lui     $a2, %hi(D_809F5FF8)       ## $a2 = 809F0000
/* 029FC 809F5CBC 24C65FF8 */  addiu   $a2, $a2, %lo(D_809F5FF8)  ## $a2 = 809F5FF8
/* 02A00 809F5CC0 27A40040 */  addiu   $a0, $sp, 0x0040           ## $a0 = FFFFFFE8
/* 02A04 809F5CC4 24070729 */  addiu   $a3, $zero, 0x0729         ## $a3 = 00000729
/* 02A08 809F5CC8 0C031AB1 */  jal     Graph_OpenDisps              
/* 02A0C 809F5CCC 00A08825 */  or      $s1, $a1, $zero            ## $s1 = 00000000
/* 02A10 809F5CD0 0C024F46 */  jal     func_80093D18              
/* 02A14 809F5CD4 8E440000 */  lw      $a0, 0x0000($s2)           ## 00000000
/* 02A18 809F5CD8 3C0E809F */  lui     $t6, %hi(func_809F59E4)    ## $t6 = 809F0000
/* 02A1C 809F5CDC 25CE59E4 */  addiu   $t6, $t6, %lo(func_809F59E4) ## $t6 = 809F59E4
/* 02A20 809F5CE0 8E050150 */  lw      $a1, 0x0150($s0)           ## 00000150
/* 02A24 809F5CE4 8E06016C */  lw      $a2, 0x016C($s0)           ## 0000016C
/* 02A28 809F5CE8 AFB00014 */  sw      $s0, 0x0014($sp)           
/* 02A2C 809F5CEC AFAE0010 */  sw      $t6, 0x0010($sp)           
/* 02A30 809F5CF0 02402025 */  or      $a0, $s2, $zero            ## $a0 = 00000000
/* 02A34 809F5CF4 0C028572 */  jal     SkelAnime_DrawOpa
              
/* 02A38 809F5CF8 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 02A3C 809F5CFC C60C021C */  lwc1    $f12, 0x021C($s0)          ## 0000021C
/* 02A40 809F5D00 C60E0220 */  lwc1    $f14, 0x0220($s0)          ## 00000220
/* 02A44 809F5D04 8E060224 */  lw      $a2, 0x0224($s0)           ## 00000224
/* 02A48 809F5D08 0C034261 */  jal     Matrix_Translate              
/* 02A4C 809F5D0C 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 02A50 809F5D10 3C01809F */  lui     $at, %hi(D_809F608C)       ## $at = 809F0000
/* 02A54 809F5D14 C42C608C */  lwc1    $f12, %lo(D_809F608C)($at) 
/* 02A58 809F5D18 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 02A5C 809F5D1C 44066000 */  mfc1    $a2, $f12                  
/* 02A60 809F5D20 0C0342A3 */  jal     Matrix_Scale              
/* 02A64 809F5D24 46006386 */  mov.s   $f14, $f12                 
/* 02A68 809F5D28 8E2202C0 */  lw      $v0, 0x02C0($s1)           ## 000002C0
/* 02A6C 809F5D2C 3C18DA38 */  lui     $t8, 0xDA38                ## $t8 = DA380000
/* 02A70 809F5D30 37180003 */  ori     $t8, $t8, 0x0003           ## $t8 = DA380003
/* 02A74 809F5D34 244F0008 */  addiu   $t7, $v0, 0x0008           ## $t7 = 00000008
/* 02A78 809F5D38 AE2F02C0 */  sw      $t7, 0x02C0($s1)           ## 000002C0
/* 02A7C 809F5D3C 3C05809F */  lui     $a1, %hi(D_809F600C)       ## $a1 = 809F0000
/* 02A80 809F5D40 AC580000 */  sw      $t8, 0x0000($v0)           ## 00000000
/* 02A84 809F5D44 8E440000 */  lw      $a0, 0x0000($s2)           ## 00000000
/* 02A88 809F5D48 24A5600C */  addiu   $a1, $a1, %lo(D_809F600C)  ## $a1 = 809F600C
/* 02A8C 809F5D4C 24060738 */  addiu   $a2, $zero, 0x0738         ## $a2 = 00000738
/* 02A90 809F5D50 0C0346A2 */  jal     Matrix_NewMtx              
/* 02A94 809F5D54 00408025 */  or      $s0, $v0, $zero            ## $s0 = 00000000
/* 02A98 809F5D58 AE020004 */  sw      $v0, 0x0004($s0)           ## 00000004
/* 02A9C 809F5D5C 8E2202C0 */  lw      $v0, 0x02C0($s1)           ## 000002C0
/* 02AA0 809F5D60 3C090600 */  lui     $t1, 0x0600                ## $t1 = 06000000
/* 02AA4 809F5D64 252914E0 */  addiu   $t1, $t1, 0x14E0           ## $t1 = 060014E0
/* 02AA8 809F5D68 24590008 */  addiu   $t9, $v0, 0x0008           ## $t9 = 00000008
/* 02AAC 809F5D6C AE3902C0 */  sw      $t9, 0x02C0($s1)           ## 000002C0
/* 02AB0 809F5D70 3C08DE00 */  lui     $t0, 0xDE00                ## $t0 = DE000000
/* 02AB4 809F5D74 3C06809F */  lui     $a2, %hi(D_809F6020)       ## $a2 = 809F0000
/* 02AB8 809F5D78 AC480000 */  sw      $t0, 0x0000($v0)           ## 00000000
/* 02ABC 809F5D7C AC490004 */  sw      $t1, 0x0004($v0)           ## 00000004
/* 02AC0 809F5D80 8E450000 */  lw      $a1, 0x0000($s2)           ## 00000000
/* 02AC4 809F5D84 24C66020 */  addiu   $a2, $a2, %lo(D_809F6020)  ## $a2 = 809F6020
/* 02AC8 809F5D88 27A40040 */  addiu   $a0, $sp, 0x0040           ## $a0 = FFFFFFE8
/* 02ACC 809F5D8C 0C031AD5 */  jal     Graph_CloseDisps              
/* 02AD0 809F5D90 2407073B */  addiu   $a3, $zero, 0x073B         ## $a3 = 0000073B
/* 02AD4 809F5D94 8FBF002C */  lw      $ra, 0x002C($sp)           
/* 02AD8 809F5D98 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 02ADC 809F5D9C 8FB10024 */  lw      $s1, 0x0024($sp)           
/* 02AE0 809F5DA0 8FB20028 */  lw      $s2, 0x0028($sp)           
/* 02AE4 809F5DA4 03E00008 */  jr      $ra                        
/* 02AE8 809F5DA8 27BD0058 */  addiu   $sp, $sp, 0x0058           ## $sp = 00000000
/* 02AEC 809F5DAC 00000000 */  nop
