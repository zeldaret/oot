.rdata
glabel D_80A55294
    .asciz "../z_en_heishi2.c"
    .balign 4

glabel D_80A552A8
    .asciz "../z_en_heishi2.c"
    .balign 4

glabel D_80A552BC
    .asciz "../z_en_heishi2.c"
    .balign 4

.late_rodata
glabel D_80A552FC
 .word 0xC40E8000
glabel D_80A55300
 .word 0x3F9C61AA, 0x00000000, 0x00000000, 0x00000000

.text
glabel EnHeishi2_Draw
/* 01E8C 80A54D2C 27BDFF98 */  addiu   $sp, $sp, 0xFF98           ## $sp = FFFFFF98
/* 01E90 80A54D30 AFB10024 */  sw      $s1, 0x0024($sp)           
/* 01E94 80A54D34 00A08825 */  or      $s1, $a1, $zero            ## $s1 = 00000000
/* 01E98 80A54D38 AFBF002C */  sw      $ra, 0x002C($sp)           
/* 01E9C 80A54D3C AFB20028 */  sw      $s2, 0x0028($sp)           
/* 01EA0 80A54D40 AFB00020 */  sw      $s0, 0x0020($sp)           
/* 01EA4 80A54D44 8CA50000 */  lw      $a1, 0x0000($a1)           ## 00000000
/* 01EA8 80A54D48 00809025 */  or      $s2, $a0, $zero            ## $s2 = 00000000
/* 01EAC 80A54D4C 3C0680A5 */  lui     $a2, %hi(D_80A55294)       ## $a2 = 80A50000
/* 01EB0 80A54D50 24C65294 */  addiu   $a2, $a2, %lo(D_80A55294)  ## $a2 = 80A55294
/* 01EB4 80A54D54 27A40048 */  addiu   $a0, $sp, 0x0048           ## $a0 = FFFFFFE0
/* 01EB8 80A54D58 24070700 */  addiu   $a3, $zero, 0x0700         ## $a3 = 00000700
/* 01EBC 80A54D5C 0C031AB1 */  jal     Graph_OpenDisps              
/* 01EC0 80A54D60 00A08025 */  or      $s0, $a1, $zero            ## $s0 = 00000000
/* 01EC4 80A54D64 0C024F46 */  jal     func_80093D18              
/* 01EC8 80A54D68 8E240000 */  lw      $a0, 0x0000($s1)           ## 00000000
/* 01ECC 80A54D6C 3C0E80A5 */  lui     $t6, %hi(func_80A54C34)    ## $t6 = 80A50000
/* 01ED0 80A54D70 25CE4C34 */  addiu   $t6, $t6, %lo(func_80A54C34) ## $t6 = 80A54C34
/* 01ED4 80A54D74 8E450150 */  lw      $a1, 0x0150($s2)           ## 00000150
/* 01ED8 80A54D78 8E46016C */  lw      $a2, 0x016C($s2)           ## 0000016C
/* 01EDC 80A54D7C 3C0780A5 */  lui     $a3, %hi(func_80A54BC0)    ## $a3 = 80A50000
/* 01EE0 80A54D80 24E74BC0 */  addiu   $a3, $a3, %lo(func_80A54BC0) ## $a3 = 80A54BC0
/* 01EE4 80A54D84 AFB20014 */  sw      $s2, 0x0014($sp)           
/* 01EE8 80A54D88 AFAE0010 */  sw      $t6, 0x0010($sp)           
/* 01EEC 80A54D8C 0C028572 */  jal     SkelAnime_Draw
              
/* 01EF0 80A54D90 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 01EF4 80A54D94 864F02FE */  lh      $t7, 0x02FE($s2)           ## 000002FE
/* 01EF8 80A54D98 24010005 */  addiu   $at, $zero, 0x0005         ## $at = 00000005
/* 01EFC 80A54D9C 3C188016 */  lui     $t8, %hi(gSaveContext+0xf06)
/* 01F00 80A54DA0 15E10046 */  bne     $t7, $at, .L80A54EBC       
/* 01F04 80A54DA4 00000000 */  nop
/* 01F08 80A54DA8 9718F566 */  lhu     $t8, %lo(gSaveContext+0xf06)($t8)
/* 01F0C 80A54DAC 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 01F10 80A54DB0 342117A4 */  ori     $at, $at, 0x17A4           ## $at = 000117A4
/* 01F14 80A54DB4 33190080 */  andi    $t9, $t8, 0x0080           ## $t9 = 00000000
/* 01F18 80A54DB8 13200040 */  beq     $t9, $zero, .L80A54EBC     
/* 01F1C 80A54DBC 02212021 */  addu    $a0, $s1, $at              
/* 01F20 80A54DC0 0C02604B */  jal     Object_GetIndex
              ## ObjectIndex
/* 01F24 80A54DC4 24050015 */  addiu   $a1, $zero, 0x0015         ## $a1 = 00000015
/* 01F28 80A54DC8 0440003C */  bltz    $v0, .L80A54EBC            
/* 01F2C 80A54DCC AFA2005C */  sw      $v0, 0x005C($sp)           
/* 01F30 80A54DD0 0C03423F */  jal     Matrix_Put              
/* 01F34 80A54DD4 26440330 */  addiu   $a0, $s2, 0x0330           ## $a0 = 00000330
/* 01F38 80A54DD8 44807000 */  mtc1    $zero, $f14                ## $f14 = 0.00
/* 01F3C 80A54DDC 3C0180A5 */  lui     $at, %hi(D_80A552FC)       ## $at = 80A50000
/* 01F40 80A54DE0 C42C52FC */  lwc1    $f12, %lo(D_80A552FC)($at) 
/* 01F44 80A54DE4 44067000 */  mfc1    $a2, $f14                  
/* 01F48 80A54DE8 0C034261 */  jal     Matrix_Translate              
/* 01F4C 80A54DEC 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 01F50 80A54DF0 3C0180A5 */  lui     $at, %hi(D_80A55300)       ## $at = 80A50000
/* 01F54 80A54DF4 C42C5300 */  lwc1    $f12, %lo(D_80A55300)($at) 
/* 01F58 80A54DF8 0C0343B5 */  jal     Matrix_RotateZ              
/* 01F5C 80A54DFC 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 01F60 80A54E00 3C0580A5 */  lui     $a1, %hi(D_80A552A8)       ## $a1 = 80A50000
/* 01F64 80A54E04 24A552A8 */  addiu   $a1, $a1, %lo(D_80A552A8)  ## $a1 = 80A552A8
/* 01F68 80A54E08 8E240000 */  lw      $a0, 0x0000($s1)           ## 00000000
/* 01F6C 80A54E0C 0C0346A2 */  jal     Matrix_NewMtx              
/* 01F70 80A54E10 2406071C */  addiu   $a2, $zero, 0x071C         ## $a2 = 0000071C
/* 01F74 80A54E14 8E0302C0 */  lw      $v1, 0x02C0($s0)           ## 000002C0
/* 01F78 80A54E18 3C05DB06 */  lui     $a1, 0xDB06                ## $a1 = DB060000
/* 01F7C 80A54E1C 34A50018 */  ori     $a1, $a1, 0x0018           ## $a1 = DB060018
/* 01F80 80A54E20 24680008 */  addiu   $t0, $v1, 0x0008           ## $t0 = 00000008
/* 01F84 80A54E24 AE0802C0 */  sw      $t0, 0x02C0($s0)           ## 000002C0
/* 01F88 80A54E28 AC650000 */  sw      $a1, 0x0000($v1)           ## 00000000
/* 01F8C 80A54E2C 8FA9005C */  lw      $t1, 0x005C($sp)           
/* 01F90 80A54E30 24060044 */  addiu   $a2, $zero, 0x0044         ## $a2 = 00000044
/* 01F94 80A54E34 3C070001 */  lui     $a3, 0x0001                ## $a3 = 00010000
/* 01F98 80A54E38 01260019 */  multu   $t1, $a2                   
/* 01F9C 80A54E3C 3C0FDB06 */  lui     $t7, 0xDB06                ## $t7 = DB060000
/* 01FA0 80A54E40 35EF0034 */  ori     $t7, $t7, 0x0034           ## $t7 = DB060034
/* 01FA4 80A54E44 2458FE40 */  addiu   $t8, $v0, 0xFE40           ## $t8 = FFFFFE40
/* 01FA8 80A54E48 3C090603 */  lui     $t1, 0x0603                ## $t1 = 06030000
/* 01FAC 80A54E4C 2529B060 */  addiu   $t1, $t1, 0xB060           ## $t1 = 0602B060
/* 01FB0 80A54E50 3C08DE00 */  lui     $t0, 0xDE00                ## $t0 = DE000000
/* 01FB4 80A54E54 00005012 */  mflo    $t2                        
/* 01FB8 80A54E58 022A5821 */  addu    $t3, $s1, $t2              
/* 01FBC 80A54E5C 01676021 */  addu    $t4, $t3, $a3              
/* 01FC0 80A54E60 8D8D17B4 */  lw      $t5, 0x17B4($t4)           ## 000017B4
/* 01FC4 80A54E64 AC6D0004 */  sw      $t5, 0x0004($v1)           ## 00000004
/* 01FC8 80A54E68 8E0302C0 */  lw      $v1, 0x02C0($s0)           ## 000002C0
/* 01FCC 80A54E6C 246E0008 */  addiu   $t6, $v1, 0x0008           ## $t6 = 00000008
/* 01FD0 80A54E70 AE0E02C0 */  sw      $t6, 0x02C0($s0)           ## 000002C0
/* 01FD4 80A54E74 AC780004 */  sw      $t8, 0x0004($v1)           ## 00000004
/* 01FD8 80A54E78 AC6F0000 */  sw      $t7, 0x0000($v1)           ## 00000000
/* 01FDC 80A54E7C 8E0302C0 */  lw      $v1, 0x02C0($s0)           ## 000002C0
/* 01FE0 80A54E80 24790008 */  addiu   $t9, $v1, 0x0008           ## $t9 = 00000008
/* 01FE4 80A54E84 AE1902C0 */  sw      $t9, 0x02C0($s0)           ## 000002C0
/* 01FE8 80A54E88 AC690004 */  sw      $t1, 0x0004($v1)           ## 00000004
/* 01FEC 80A54E8C AC680000 */  sw      $t0, 0x0000($v1)           ## 00000000
/* 01FF0 80A54E90 8E0302C0 */  lw      $v1, 0x02C0($s0)           ## 000002C0
/* 01FF4 80A54E94 246A0008 */  addiu   $t2, $v1, 0x0008           ## $t2 = 00000008
/* 01FF8 80A54E98 AE0A02C0 */  sw      $t2, 0x02C0($s0)           ## 000002C0
/* 01FFC 80A54E9C AC650000 */  sw      $a1, 0x0000($v1)           ## 00000000
/* 02000 80A54EA0 824B001E */  lb      $t3, 0x001E($s2)           ## 0000001E
/* 02004 80A54EA4 01660019 */  multu   $t3, $a2                   
/* 02008 80A54EA8 00006012 */  mflo    $t4                        
/* 0200C 80A54EAC 022C6821 */  addu    $t5, $s1, $t4              
/* 02010 80A54EB0 01A77021 */  addu    $t6, $t5, $a3              
/* 02014 80A54EB4 8DCF17B4 */  lw      $t7, 0x17B4($t6)           ## 000017BC
/* 02018 80A54EB8 AC6F0004 */  sw      $t7, 0x0004($v1)           ## 00000004
.L80A54EBC:
/* 0201C 80A54EBC 3C0680A5 */  lui     $a2, %hi(D_80A552BC)       ## $a2 = 80A50000
/* 02020 80A54EC0 24C652BC */  addiu   $a2, $a2, %lo(D_80A552BC)  ## $a2 = 80A552BC
/* 02024 80A54EC4 27A40048 */  addiu   $a0, $sp, 0x0048           ## $a0 = FFFFFFE0
/* 02028 80A54EC8 8E250000 */  lw      $a1, 0x0000($s1)           ## 00000000
/* 0202C 80A54ECC 0C031AD5 */  jal     Graph_CloseDisps              
/* 02030 80A54ED0 2407072A */  addiu   $a3, $zero, 0x072A         ## $a3 = 0000072A
/* 02034 80A54ED4 8FBF002C */  lw      $ra, 0x002C($sp)           
/* 02038 80A54ED8 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 0203C 80A54EDC 8FB10024 */  lw      $s1, 0x0024($sp)           
/* 02040 80A54EE0 8FB20028 */  lw      $s2, 0x0028($sp)           
/* 02044 80A54EE4 03E00008 */  jr      $ra                        
/* 02048 80A54EE8 27BD0068 */  addiu   $sp, $sp, 0x0068           ## $sp = 00000000
/* 0204C 80A54EEC 00000000 */  nop
