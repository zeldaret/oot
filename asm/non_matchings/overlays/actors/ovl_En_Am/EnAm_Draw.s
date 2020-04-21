.rdata
glabel D_809B0160
    .asciz "../z_en_am.c"
    .balign 4

glabel D_809B0170
    .asciz "../z_en_am.c"
    .balign 4

.late_rodata
glabel D_809B0184
    .float 1.4

.text
glabel EnAm_Draw
/* 01EC4 809AFDE4 27BDFF88 */  addiu   $sp, $sp, 0xFF88           ## $sp = FFFFFF88
/* 01EC8 809AFDE8 AFB10038 */  sw      $s1, 0x0038($sp)           
/* 01ECC 809AFDEC 00A08825 */  or      $s1, $a1, $zero            ## $s1 = 00000000
/* 01ED0 809AFDF0 AFBF003C */  sw      $ra, 0x003C($sp)           
/* 01ED4 809AFDF4 AFB00034 */  sw      $s0, 0x0034($sp)           
/* 01ED8 809AFDF8 8CA50000 */  lw      $a1, 0x0000($a1)           ## 00000000
/* 01EDC 809AFDFC 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 01EE0 809AFE00 3C06809B */  lui     $a2, %hi(D_809B0160)       ## $a2 = 809B0000
/* 01EE4 809AFE04 24C60160 */  addiu   $a2, $a2, %lo(D_809B0160)  ## $a2 = 809B0160
/* 01EE8 809AFE08 27A40050 */  addiu   $a0, $sp, 0x0050           ## $a0 = FFFFFFD8
/* 01EEC 809AFE0C 2407062C */  addiu   $a3, $zero, 0x062C         ## $a3 = 0000062C
/* 01EF0 809AFE10 0C031AB1 */  jal     Graph_OpenDisps              
/* 01EF4 809AFE14 AFA50060 */  sw      $a1, 0x0060($sp)           
/* 01EF8 809AFE18 0C024F46 */  jal     func_80093D18              
/* 01EFC 809AFE1C 8E240000 */  lw      $a0, 0x0000($s1)           ## 00000000
/* 01F00 809AFE20 8FA40060 */  lw      $a0, 0x0060($sp)           
/* 01F04 809AFE24 3C0FFB00 */  lui     $t7, 0xFB00                ## $t7 = FB000000
/* 01F08 809AFE28 3C09809B */  lui     $t1, %hi(func_809AFD9C)    ## $t1 = 809B0000
/* 01F0C 809AFE2C 8C8302C0 */  lw      $v1, 0x02C0($a0)           ## 000002C0
/* 01F10 809AFE30 2529FD9C */  addiu   $t1, $t1, %lo(func_809AFD9C) ## $t1 = 809AFD9C
/* 01F14 809AFE34 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 01F18 809AFE38 246E0008 */  addiu   $t6, $v1, 0x0008           ## $t6 = 00000008
/* 01F1C 809AFE3C AC8E02C0 */  sw      $t6, 0x02C0($a0)           ## 000002C0
/* 01F20 809AFE40 AC6F0000 */  sw      $t7, 0x0000($v1)           ## 00000000
/* 01F24 809AFE44 92190266 */  lbu     $t9, 0x0266($s0)           ## 00000266
/* 01F28 809AFE48 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 01F2C 809AFE4C AC790004 */  sw      $t9, 0x0004($v1)           ## 00000004
/* 01F30 809AFE50 8E060184 */  lw      $a2, 0x0184($s0)           ## 00000184
/* 01F34 809AFE54 8E050168 */  lw      $a1, 0x0168($s0)           ## 00000168
/* 01F38 809AFE58 AFB00014 */  sw      $s0, 0x0014($sp)           
/* 01F3C 809AFE5C 0C028572 */  jal     SkelAnime_Draw
              
/* 01F40 809AFE60 AFA90010 */  sw      $t1, 0x0010($sp)           
/* 01F44 809AFE64 860A025E */  lh      $t2, 0x025E($s0)           ## 0000025E
/* 01F48 809AFE68 11400031 */  beq     $t2, $zero, .L809AFF30     
/* 01F4C 809AFE6C 00000000 */  nop
/* 01F50 809AFE70 860D025E */  lh      $t5, 0x025E($s0)           ## 0000025E
/* 01F54 809AFE74 920B0114 */  lbu     $t3, 0x0114($s0)           ## 00000114
/* 01F58 809AFE78 3C19809B */  lui     $t9, %hi(D_809B00D0)       ## $t9 = 809B0000
/* 01F5C 809AFE7C 25AEFFFF */  addiu   $t6, $t5, 0xFFFF           ## $t6 = FFFFFFFF
/* 01F60 809AFE80 A60E025E */  sh      $t6, 0x025E($s0)           ## 0000025E
/* 01F64 809AFE84 8608025E */  lh      $t0, 0x025E($s0)           ## 0000025E
/* 01F68 809AFE88 256C0001 */  addiu   $t4, $t3, 0x0001           ## $t4 = 00000001
/* 01F6C 809AFE8C A20C0114 */  sb      $t4, 0x0114($s0)           ## 00000114
/* 01F70 809AFE90 310F0003 */  andi    $t7, $t0, 0x0003           ## $t7 = 00000000
/* 01F74 809AFE94 15E00026 */  bne     $t7, $zero, .L809AFF30     
/* 01F78 809AFE98 00081883 */  sra     $v1, $t0,  2               
/* 01F7C 809AFE9C 0003C080 */  sll     $t8, $v1,  2               
/* 01F80 809AFEA0 0303C023 */  subu    $t8, $t8, $v1              
/* 01F84 809AFEA4 0018C080 */  sll     $t8, $t8,  2               
/* 01F88 809AFEA8 273900D0 */  addiu   $t9, $t9, %lo(D_809B00D0)  ## $t9 = 809B00D0
/* 01F8C 809AFEAC 03191021 */  addu    $v0, $t8, $t9              
/* 01F90 809AFEB0 C4440000 */  lwc1    $f4, 0x0000($v0)           ## 00000000
/* 01F94 809AFEB4 C6060024 */  lwc1    $f6, 0x0024($s0)           ## 00000024
/* 01F98 809AFEB8 C44A0004 */  lwc1    $f10, 0x0004($v0)          ## 00000004
/* 01F9C 809AFEBC 3C01809B */  lui     $at, %hi(D_809B0184)       ## $at = 809B0000
/* 01FA0 809AFEC0 46062200 */  add.s   $f8, $f4, $f6              
/* 01FA4 809AFEC4 C4440008 */  lwc1    $f4, 0x0008($v0)           ## 00000008
/* 01FA8 809AFEC8 24090096 */  addiu   $t1, $zero, 0x0096         ## $t1 = 00000096
/* 01FAC 809AFECC 240A0096 */  addiu   $t2, $zero, 0x0096         ## $t2 = 00000096
/* 01FB0 809AFED0 E7A80068 */  swc1    $f8, 0x0068($sp)           
/* 01FB4 809AFED4 C6100028 */  lwc1    $f16, 0x0028($s0)          ## 00000028
/* 01FB8 809AFED8 240B00FA */  addiu   $t3, $zero, 0x00FA         ## $t3 = 000000FA
/* 01FBC 809AFEDC 240C00EB */  addiu   $t4, $zero, 0x00EB         ## $t4 = 000000EB
/* 01FC0 809AFEE0 46105480 */  add.s   $f18, $f10, $f16           
/* 01FC4 809AFEE4 C42A0184 */  lwc1    $f10, %lo(D_809B0184)($at) 
/* 01FC8 809AFEE8 240D00F5 */  addiu   $t5, $zero, 0x00F5         ## $t5 = 000000F5
/* 01FCC 809AFEEC 240E00FF */  addiu   $t6, $zero, 0x00FF         ## $t6 = 000000FF
/* 01FD0 809AFEF0 E7B2006C */  swc1    $f18, 0x006C($sp)          
/* 01FD4 809AFEF4 C606002C */  lwc1    $f6, 0x002C($s0)           ## 0000002C
/* 01FD8 809AFEF8 AFAE0024 */  sw      $t6, 0x0024($sp)           
/* 01FDC 809AFEFC AFAD0020 */  sw      $t5, 0x0020($sp)           
/* 01FE0 809AFF00 46062200 */  add.s   $f8, $f4, $f6              
/* 01FE4 809AFF04 AFAC001C */  sw      $t4, 0x001C($sp)           
/* 01FE8 809AFF08 AFAB0018 */  sw      $t3, 0x0018($sp)           
/* 01FEC 809AFF0C AFAA0014 */  sw      $t2, 0x0014($sp)           
/* 01FF0 809AFF10 E7A80070 */  swc1    $f8, 0x0070($sp)           
/* 01FF4 809AFF14 AFA90010 */  sw      $t1, 0x0010($sp)           
/* 01FF8 809AFF18 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 01FFC 809AFF1C 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 02000 809AFF20 27A60068 */  addiu   $a2, $sp, 0x0068           ## $a2 = FFFFFFF0
/* 02004 809AFF24 24070096 */  addiu   $a3, $zero, 0x0096         ## $a3 = 00000096
/* 02008 809AFF28 0C00A850 */  jal     func_8002A140              
/* 0200C 809AFF2C E7AA0028 */  swc1    $f10, 0x0028($sp)          
.L809AFF30:
/* 02010 809AFF30 3C06809B */  lui     $a2, %hi(D_809B0170)       ## $a2 = 809B0000
/* 02014 809AFF34 24C60170 */  addiu   $a2, $a2, %lo(D_809B0170)  ## $a2 = 809B0170
/* 02018 809AFF38 27A40050 */  addiu   $a0, $sp, 0x0050           ## $a0 = FFFFFFD8
/* 0201C 809AFF3C 8E250000 */  lw      $a1, 0x0000($s1)           ## 00000000
/* 02020 809AFF40 0C031AD5 */  jal     Graph_CloseDisps              
/* 02024 809AFF44 24070645 */  addiu   $a3, $zero, 0x0645         ## $a3 = 00000645
/* 02028 809AFF48 8FBF003C */  lw      $ra, 0x003C($sp)           
/* 0202C 809AFF4C 8FB00034 */  lw      $s0, 0x0034($sp)           
/* 02030 809AFF50 8FB10038 */  lw      $s1, 0x0038($sp)           
/* 02034 809AFF54 03E00008 */  jr      $ra                        
/* 02038 809AFF58 27BD0078 */  addiu   $sp, $sp, 0x0078           ## $sp = 00000000
/* 0203C 809AFF5C 00000000 */  nop
