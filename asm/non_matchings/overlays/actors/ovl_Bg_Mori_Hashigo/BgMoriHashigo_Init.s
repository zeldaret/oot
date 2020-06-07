.rdata
glabel D_808A2EB0
    .asciz "Error : バンク危険！(arg_data 0x%04x)(%s %d)\n"
    .balign 4

glabel D_808A2EE0
    .asciz "../z_bg_mori_hashigo.c"
    .balign 4

glabel D_808A2EF8
    .asciz "(森の神殿 梯子とその留め金)(arg_data 0x%04x)\n"
    .balign 4

.text
glabel BgMoriHashigo_Init
/* 002D8 808A2838 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 002DC 808A283C AFBF001C */  sw      $ra, 0x001C($sp)           
/* 002E0 808A2840 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 002E4 808A2844 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 002E8 808A2848 8482001C */  lh      $v0, 0x001C($a0)           ## 0000001C
/* 002EC 808A284C 2401FFFF */  addiu   $at, $zero, 0xFFFF         ## $at = FFFFFFFF
/* 002F0 808A2850 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 002F4 808A2854 14410009 */  bne     $v0, $at, .L808A287C       
/* 002F8 808A2858 00000000 */  nop
/* 002FC 808A285C 0C2289DC */  jal     func_808A2770              
/* 00300 808A2860 00000000 */  nop
/* 00304 808A2864 54400010 */  bnel    $v0, $zero, .L808A28A8     
/* 00308 808A2868 8FA40024 */  lw      $a0, 0x0024($sp)           
/* 0030C 808A286C 0C00B55C */  jal     Actor_Kill
              
/* 00310 808A2870 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00314 808A2874 10000026 */  beq     $zero, $zero, .L808A2910   
/* 00318 808A2878 8FBF001C */  lw      $ra, 0x001C($sp)           
.L808A287C:
/* 0031C 808A287C 14400009 */  bne     $v0, $zero, .L808A28A4     
/* 00320 808A2880 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00324 808A2884 0C2289FE */  jal     func_808A27F8              
/* 00328 808A2888 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 0032C 808A288C 54400006 */  bnel    $v0, $zero, .L808A28A8     
/* 00330 808A2890 8FA40024 */  lw      $a0, 0x0024($sp)           
/* 00334 808A2894 0C00B55C */  jal     Actor_Kill
              
/* 00338 808A2898 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0033C 808A289C 1000001C */  beq     $zero, $zero, .L808A2910   
/* 00340 808A28A0 8FBF001C */  lw      $ra, 0x001C($sp)           
.L808A28A4:
/* 00344 808A28A4 8FA40024 */  lw      $a0, 0x0024($sp)           
.L808A28A8:
/* 00348 808A28A8 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 0034C 808A28AC 342117A4 */  ori     $at, $at, 0x17A4           ## $at = 000117A4
/* 00350 808A28B0 24050073 */  addiu   $a1, $zero, 0x0073         ## $a1 = 00000073
/* 00354 808A28B4 0C02604B */  jal     Object_GetIndex
              ## ObjectIndex
/* 00358 808A28B8 00812021 */  addu    $a0, $a0, $at              
/* 0035C 808A28BC A20201CC */  sb      $v0, 0x01CC($s0)           ## 000001CC
/* 00360 808A28C0 820E01CC */  lb      $t6, 0x01CC($s0)           ## 000001CC
/* 00364 808A28C4 3C04808A */  lui     $a0, %hi(D_808A2EB0)       ## $a0 = 808A0000
/* 00368 808A28C8 24842EB0 */  addiu   $a0, $a0, %lo(D_808A2EB0)  ## $a0 = 808A2EB0
/* 0036C 808A28CC 05C10009 */  bgez    $t6, .L808A28F4            
/* 00370 808A28D0 3C06808A */  lui     $a2, %hi(D_808A2EE0)       ## $a2 = 808A0000
/* 00374 808A28D4 8605001C */  lh      $a1, 0x001C($s0)           ## 0000001C
/* 00378 808A28D8 24C62EE0 */  addiu   $a2, $a2, %lo(D_808A2EE0)  ## $a2 = 808A2EE0
/* 0037C 808A28DC 0C00084C */  jal     osSyncPrintf
              
/* 00380 808A28E0 24070138 */  addiu   $a3, $zero, 0x0138         ## $a3 = 00000138
/* 00384 808A28E4 0C00B55C */  jal     Actor_Kill
              
/* 00388 808A28E8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0038C 808A28EC 10000008 */  beq     $zero, $zero, .L808A2910   
/* 00390 808A28F0 8FBF001C */  lw      $ra, 0x001C($sp)           
.L808A28F4:
/* 00394 808A28F4 0C228A5E */  jal     func_808A2978              
/* 00398 808A28F8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0039C 808A28FC 3C04808A */  lui     $a0, %hi(D_808A2EF8)       ## $a0 = 808A0000
/* 003A0 808A2900 24842EF8 */  addiu   $a0, $a0, %lo(D_808A2EF8)  ## $a0 = 808A2EF8
/* 003A4 808A2904 0C00084C */  jal     osSyncPrintf
              
/* 003A8 808A2908 8605001C */  lh      $a1, 0x001C($s0)           ## 0000001C
/* 003AC 808A290C 8FBF001C */  lw      $ra, 0x001C($sp)           
.L808A2910:
/* 003B0 808A2910 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 003B4 808A2914 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 003B8 808A2918 03E00008 */  jr      $ra                        
/* 003BC 808A291C 00000000 */  nop
