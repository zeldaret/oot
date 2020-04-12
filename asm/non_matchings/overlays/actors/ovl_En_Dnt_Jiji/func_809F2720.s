.rdata
glabel D_809F3020
    .asciz "実 \n"
    .balign 4
glabel D_809F3028
    .asciz "実 \n"
    .balign 4
glabel D_809F3030
    .asciz "実 \n"
    .balign 4
glabel D_809F3038
    .asciz "実 \n"
    .balign 4
glabel D_809F3040
    .asciz "実 \n"
    .balign 4
glabel D_809F3048
    .asciz "実 \n"
    .balign 4
glabel D_809F3050
    .asciz "実 \n"
    .balign 4
glabel D_809F3058
    .asciz "実 \n"
    .balign 4
glabel D_809F3060
    .asciz "棒 \n"
    .balign 4
glabel D_809F3068
    .asciz "棒 \n"
    .balign 4
glabel D_809F3070
    .asciz "棒 \n"
    .balign 4
glabel D_809F3078
    .asciz "棒 \n"
    .balign 4
glabel D_809F3080
    .asciz "棒 \n"
    .balign 4
glabel D_809F3088
    .asciz "棒 \n"
    .balign 4

.text
glabel func_809F2720
/* 00C40 809F2720 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 00C44 809F2724 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 00C48 809F2728 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00C4C 809F272C AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00C50 809F2730 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 00C54 809F2734 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 00C58 809F2738 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 00C5C 809F273C 8FA40024 */  lw      $a0, 0x0024($sp)           
/* 00C60 809F2740 0C042F6F */  jal     func_8010BDBC              
/* 00C64 809F2744 248420D8 */  addiu   $a0, $a0, 0x20D8           ## $a0 = 000020D8
/* 00C68 809F2748 24010006 */  addiu   $at, $zero, 0x0006         ## $at = 00000006
/* 00C6C 809F274C 5441005F */  bnel    $v0, $at, .L809F28CC       
/* 00C70 809F2750 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00C74 809F2754 0C041AF2 */  jal     func_80106BC8              
/* 00C78 809F2758 8FA40024 */  lw      $a0, 0x0024($sp)           
/* 00C7C 809F275C 5040005B */  beql    $v0, $zero, .L809F28CC     
/* 00C80 809F2760 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00C84 809F2764 8E020254 */  lw      $v0, 0x0254($s0)           ## 00000254
/* 00C88 809F2768 24010079 */  addiu   $at, $zero, 0x0079         ## $at = 00000079
/* 00C8C 809F276C 3C04809F */  lui     $a0, %hi(D_809F3020)       ## $a0 = 809F0000
/* 00C90 809F2770 10410003 */  beq     $v0, $at, .L809F2780       
/* 00C94 809F2774 2401007A */  addiu   $at, $zero, 0x007A         ## $at = 0000007A
/* 00C98 809F2778 1441001E */  bne     $v0, $at, .L809F27F4       
/* 00C9C 809F277C 00000000 */  nop
.L809F2780:
/* 00CA0 809F2780 0C00084C */  jal     osSyncPrintf
              
/* 00CA4 809F2784 24843020 */  addiu   $a0, $a0, %lo(D_809F3020)  ## $a0 = 809F3020
/* 00CA8 809F2788 3C04809F */  lui     $a0, %hi(D_809F3028)       ## $a0 = 809F0000
/* 00CAC 809F278C 0C00084C */  jal     osSyncPrintf
              
/* 00CB0 809F2790 24843028 */  addiu   $a0, $a0, %lo(D_809F3028)  ## $a0 = 809F3028
/* 00CB4 809F2794 3C04809F */  lui     $a0, %hi(D_809F3030)       ## $a0 = 809F0000
/* 00CB8 809F2798 0C00084C */  jal     osSyncPrintf
              
/* 00CBC 809F279C 24843030 */  addiu   $a0, $a0, %lo(D_809F3030)  ## $a0 = 809F3030
/* 00CC0 809F27A0 3C04809F */  lui     $a0, %hi(D_809F3038)       ## $a0 = 809F0000
/* 00CC4 809F27A4 0C00084C */  jal     osSyncPrintf
              
/* 00CC8 809F27A8 24843038 */  addiu   $a0, $a0, %lo(D_809F3038)  ## $a0 = 809F3038
/* 00CCC 809F27AC 3C04809F */  lui     $a0, %hi(D_809F3040)       ## $a0 = 809F0000
/* 00CD0 809F27B0 0C00084C */  jal     osSyncPrintf
              
/* 00CD4 809F27B4 24843040 */  addiu   $a0, $a0, %lo(D_809F3040)  ## $a0 = 809F3040
/* 00CD8 809F27B8 3C04809F */  lui     $a0, %hi(D_809F3048)       ## $a0 = 809F0000
/* 00CDC 809F27BC 0C00084C */  jal     osSyncPrintf
              
/* 00CE0 809F27C0 24843048 */  addiu   $a0, $a0, %lo(D_809F3048)  ## $a0 = 809F3048
/* 00CE4 809F27C4 3C04809F */  lui     $a0, %hi(D_809F3050)       ## $a0 = 809F0000
/* 00CE8 809F27C8 0C00084C */  jal     osSyncPrintf
              
/* 00CEC 809F27CC 24843050 */  addiu   $a0, $a0, %lo(D_809F3050)  ## $a0 = 809F3050
/* 00CF0 809F27D0 3C04809F */  lui     $a0, %hi(D_809F3058)       ## $a0 = 809F0000
/* 00CF4 809F27D4 0C00084C */  jal     osSyncPrintf
              
/* 00CF8 809F27D8 24843058 */  addiu   $a0, $a0, %lo(D_809F3058)  ## $a0 = 809F3058
/* 00CFC 809F27DC 3C028016 */  lui     $v0, 0x8016                ## $v0 = 80160000
/* 00D00 809F27E0 2442E660 */  addiu   $v0, $v0, 0xE660           ## $v0 = 8015E660
/* 00D04 809F27E4 944E0EF2 */  lhu     $t6, 0x0EF2($v0)           ## 8015F552
/* 00D08 809F27E8 35CF8000 */  ori     $t7, $t6, 0x8000           ## $t7 = 00008000
/* 00D0C 809F27EC 10000018 */  beq     $zero, $zero, .L809F2850   
/* 00D10 809F27F0 A44F0EF2 */  sh      $t7, 0x0EF2($v0)           ## 8015F552
.L809F27F4:
/* 00D14 809F27F4 3C04809F */  lui     $a0, %hi(D_809F3060)       ## $a0 = 809F0000
/* 00D18 809F27F8 0C00084C */  jal     osSyncPrintf
              
/* 00D1C 809F27FC 24843060 */  addiu   $a0, $a0, %lo(D_809F3060)  ## $a0 = 809F3060
/* 00D20 809F2800 3C04809F */  lui     $a0, %hi(D_809F3068)       ## $a0 = 809F0000
/* 00D24 809F2804 0C00084C */  jal     osSyncPrintf
              
/* 00D28 809F2808 24843068 */  addiu   $a0, $a0, %lo(D_809F3068)  ## $a0 = 809F3068
/* 00D2C 809F280C 3C04809F */  lui     $a0, %hi(D_809F3070)       ## $a0 = 809F0000
/* 00D30 809F2810 0C00084C */  jal     osSyncPrintf
              
/* 00D34 809F2814 24843070 */  addiu   $a0, $a0, %lo(D_809F3070)  ## $a0 = 809F3070
/* 00D38 809F2818 3C04809F */  lui     $a0, %hi(D_809F3078)       ## $a0 = 809F0000
/* 00D3C 809F281C 0C00084C */  jal     osSyncPrintf
              
/* 00D40 809F2820 24843078 */  addiu   $a0, $a0, %lo(D_809F3078)  ## $a0 = 809F3078
/* 00D44 809F2824 3C04809F */  lui     $a0, %hi(D_809F3080)       ## $a0 = 809F0000
/* 00D48 809F2828 0C00084C */  jal     osSyncPrintf
              
/* 00D4C 809F282C 24843080 */  addiu   $a0, $a0, %lo(D_809F3080)  ## $a0 = 809F3080
/* 00D50 809F2830 3C04809F */  lui     $a0, %hi(D_809F3088)       ## $a0 = 809F0000
/* 00D54 809F2834 0C00084C */  jal     osSyncPrintf
              
/* 00D58 809F2838 24843088 */  addiu   $a0, $a0, %lo(D_809F3088)  ## $a0 = 809F3088
/* 00D5C 809F283C 3C028016 */  lui     $v0, 0x8016                ## $v0 = 80160000
/* 00D60 809F2840 2442E660 */  addiu   $v0, $v0, 0xE660           ## $v0 = 8015E660
/* 00D64 809F2844 94580EF2 */  lhu     $t8, 0x0EF2($v0)           ## 8015F552
/* 00D68 809F2848 37194000 */  ori     $t9, $t8, 0x4000           ## $t9 = 00004000
/* 00D6C 809F284C A4590EF2 */  sh      $t9, 0x0EF2($v0)           ## 8015F552
.L809F2850:
/* 00D70 809F2850 8E020258 */  lw      $v0, 0x0258($s0)           ## 00000258
/* 00D74 809F2854 3C19809F */  lui     $t9, %hi(func_809F28DC)    ## $t9 = 809F0000
/* 00D78 809F2858 A600010E */  sh      $zero, 0x010E($s0)         ## 0000010E
/* 00D7C 809F285C 1040000F */  beq     $v0, $zero, .L809F289C     
/* 00D80 809F2860 273928DC */  addiu   $t9, $t9, %lo(func_809F28DC) ## $t9 = 809F28DC
/* 00D84 809F2864 8C480130 */  lw      $t0, 0x0130($v0)           ## 8015E790
/* 00D88 809F2868 5100000D */  beql    $t0, $zero, .L809F28A0     
/* 00D8C 809F286C 8E0E0004 */  lw      $t6, 0x0004($s0)           ## 00000004
/* 00D90 809F2870 A440015A */  sh      $zero, 0x015A($v0)         ## 8015E7BA
/* 00D94 809F2874 8609024A */  lh      $t1, 0x024A($s0)           ## 0000024A
/* 00D98 809F2878 55200006 */  bnel    $t1, $zero, .L809F2894     
/* 00D9C 809F287C 8E0D0258 */  lw      $t5, 0x0258($s0)           ## 00000258
/* 00DA0 809F2880 8E0B0258 */  lw      $t3, 0x0258($s0)           ## 00000258
/* 00DA4 809F2884 240A0004 */  addiu   $t2, $zero, 0x0004         ## $t2 = 00000004
/* 00DA8 809F2888 10000004 */  beq     $zero, $zero, .L809F289C   
/* 00DAC 809F288C A56A0158 */  sh      $t2, 0x0158($t3)           ## 00000158
/* 00DB0 809F2890 8E0D0258 */  lw      $t5, 0x0258($s0)           ## 00000258
.L809F2894:
/* 00DB4 809F2894 240C0005 */  addiu   $t4, $zero, 0x0005         ## $t4 = 00000005
/* 00DB8 809F2898 A5AC0158 */  sh      $t4, 0x0158($t5)           ## 00000158
.L809F289C:
/* 00DBC 809F289C 8E0E0004 */  lw      $t6, 0x0004($s0)           ## 00000004
.L809F28A0:
/* 00DC0 809F28A0 8618024A */  lh      $t8, 0x024A($s0)           ## 0000024A
/* 00DC4 809F28A4 2401FFFE */  addiu   $at, $zero, 0xFFFE         ## $at = FFFFFFFE
/* 00DC8 809F28A8 01C17824 */  and     $t7, $t6, $at              
/* 00DCC 809F28AC 17000003 */  bne     $t8, $zero, .L809F28BC     
/* 00DD0 809F28B0 AE0F0004 */  sw      $t7, 0x0004($s0)           ## 00000004
/* 00DD4 809F28B4 10000004 */  beq     $zero, $zero, .L809F28C8   
/* 00DD8 809F28B8 AE19022C */  sw      $t9, 0x022C($s0)           ## 0000022C
.L809F28BC:
/* 00DDC 809F28BC 3C08809F */  lui     $t0, %hi(func_809F29E0)    ## $t0 = 809F0000
/* 00DE0 809F28C0 250829E0 */  addiu   $t0, $t0, %lo(func_809F29E0) ## $t0 = 809F29E0
/* 00DE4 809F28C4 AE08022C */  sw      $t0, 0x022C($s0)           ## 0000022C
.L809F28C8:
/* 00DE8 809F28C8 8FBF001C */  lw      $ra, 0x001C($sp)           
.L809F28CC:
/* 00DEC 809F28CC 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 00DF0 809F28D0 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 00DF4 809F28D4 03E00008 */  jr      $ra                        
/* 00DF8 809F28D8 00000000 */  nop
