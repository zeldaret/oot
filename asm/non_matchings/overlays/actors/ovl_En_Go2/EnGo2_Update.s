.late_rodata
glabel D_80A487C0
    .float 0.6

.text
glabel EnGo2_Update
/* 04B70 80A478A0 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 04B74 80A478A4 AFB10020 */  sw      $s1, 0x0020($sp)           
/* 04B78 80A478A8 AFB0001C */  sw      $s0, 0x001C($sp)           
/* 04B7C 80A478AC 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 04B80 80A478B0 00A08825 */  or      $s1, $a1, $zero            ## $s1 = 00000000
/* 04B84 80A478B4 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 04B88 80A478B8 0C2914D8 */  jal     func_80A45360              
/* 04B8C 80A478BC 26050220 */  addiu   $a1, $s0, 0x0220           ## $a1 = 00000220
/* 04B90 80A478C0 0C291680 */  jal     func_80A45A00              
/* 04B94 80A478C4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 04B98 80A478C8 0C02927F */  jal     Animation_Update
              
/* 04B9C 80A478CC 2604014C */  addiu   $a0, $s0, 0x014C           ## $a0 = 0000014C
/* 04BA0 80A478D0 0C29151B */  jal     func_80A4546C              
/* 04BA4 80A478D4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 04BA8 80A478D8 860E01FE */  lh      $t6, 0x01FE($s0)           ## 000001FE
/* 04BAC 80A478DC 860F01FC */  lh      $t7, 0x01FC($s0)           ## 000001FC
/* 04BB0 80A478E0 3C013F00 */  lui     $at, 0x3F00                ## $at = 3F000000
/* 04BB4 80A478E4 448E2000 */  mtc1    $t6, $f4                   ## $f4 = 0.00
/* 04BB8 80A478E8 448F8000 */  mtc1    $t7, $f16                  ## $f16 = 0.00
/* 04BBC 80A478EC 44814000 */  mtc1    $at, $f8                   ## $f8 = 0.50
/* 04BC0 80A478F0 468021A0 */  cvt.s.w $f6, $f4                   
/* 04BC4 80A478F4 3C0180A5 */  lui     $at, %hi(D_80A487C0)       ## $at = 80A50000
/* 04BC8 80A478F8 C42487C0 */  lwc1    $f4, %lo(D_80A487C0)($at)  
/* 04BCC 80A478FC 24180005 */  addiu   $t8, $zero, 0x0005         ## $t8 = 00000005
/* 04BD0 80A47900 AFB80014 */  sw      $t8, 0x0014($sp)           
/* 04BD4 80A47904 468084A0 */  cvt.s.w $f18, $f16                 
/* 04BD8 80A47908 46083282 */  mul.s   $f10, $f6, $f8             
/* 04BDC 80A4790C 44804000 */  mtc1    $zero, $f8                 ## $f8 = 0.00
/* 04BE0 80A47910 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 04BE4 80A47914 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 04BE8 80A47918 E7A80010 */  swc1    $f8, 0x0010($sp)           
/* 04BEC 80A4791C 46049182 */  mul.s   $f6, $f18, $f4             
/* 04BF0 80A47920 44065000 */  mfc1    $a2, $f10                  
/* 04BF4 80A47924 44073000 */  mfc1    $a3, $f6                   
/* 04BF8 80A47928 0C00B92D */  jal     func_8002E4B4              
/* 04BFC 80A4792C 00000000 */  nop
/* 04C00 80A47930 86190194 */  lh      $t9, 0x0194($s0)           ## 00000194
/* 04C04 80A47934 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 04C08 80A47938 57200004 */  bnel    $t9, $zero, .L80A4794C     
/* 04C0C 80A4793C 8E190190 */  lw      $t9, 0x0190($s0)           ## 00000190
/* 04C10 80A47940 0C2912AC */  jal     func_80A44AB0              
/* 04C14 80A47944 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 04C18 80A47948 8E190190 */  lw      $t9, 0x0190($s0)           ## 00000190
.L80A4794C:
/* 04C1C 80A4794C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 04C20 80A47950 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 04C24 80A47954 0320F809 */  jalr    $ra, $t9                   
/* 04C28 80A47958 00000000 */  nop
/* 04C2C 80A4795C 92080211 */  lbu     $t0, 0x0211($s0)           ## 00000211
/* 04C30 80A47960 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 04C34 80A47964 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 04C38 80A47968 15010004 */  bne     $t0, $at, .L80A4797C       
/* 04C3C 80A4796C 26050226 */  addiu   $a1, $s0, 0x0226           ## $a1 = 00000226
/* 04C40 80A47970 2606024A */  addiu   $a2, $s0, 0x024A           ## $a2 = 0000024A
/* 04C44 80A47974 0C00D3D5 */  jal     func_80034F54              
/* 04C48 80A47978 24070012 */  addiu   $a3, $zero, 0x0012         ## $a3 = 00000012
.L80A4797C:
/* 04C4C 80A4797C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 04C50 80A47980 0C2914A2 */  jal     func_80A45288              
/* 04C54 80A47984 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 04C58 80A47988 0C29164B */  jal     func_80A4592C              
/* 04C5C 80A4798C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 04C60 80A47990 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 04C64 80A47994 0C291250 */  jal     func_80A44940              
/* 04C68 80A47998 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 04C6C 80A4799C 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 04C70 80A479A0 8FB0001C */  lw      $s0, 0x001C($sp)           
/* 04C74 80A479A4 8FB10020 */  lw      $s1, 0x0020($sp)           
/* 04C78 80A479A8 03E00008 */  jr      $ra                        
/* 04C7C 80A479AC 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
