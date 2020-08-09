.rdata
glabel D_80ABB620
    .asciz "\x1b[32m☆☆☆☆☆ ハート ☆☆☆☆☆ %d\n\x1b[m"
    .balign 4

glabel D_80ABB64C
    .asciz "\x1b[33m☆☆☆☆☆ 爆弾   ☆☆☆☆☆ %d\n\x1b[m"
    .balign 4

glabel D_80ABB678
    .asciz "\n\n"
    .balign 4

.text
glabel func_80ABA654
/* 00A14 80ABA654 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 00A18 80ABA658 AFB0001C */  sw      $s0, 0x001C($sp)           
/* 00A1C 80ABA65C 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00A20 80ABA660 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 00A24 80ABA664 AFB10020 */  sw      $s1, 0x0020($sp)           
/* 00A28 80ABA668 00A08825 */  or      $s1, $a1, $zero            ## $s1 = 00000000
/* 00A2C 80ABA66C 0C042F6F */  jal     func_8010BDBC              
/* 00A30 80ABA670 24A420D8 */  addiu   $a0, $a1, 0x20D8           ## $a0 = 000020D8
/* 00A34 80ABA674 860E0262 */  lh      $t6, 0x0262($s0)           ## 00000262
/* 00A38 80ABA678 55C2003B */  bnel    $t6, $v0, .L80ABA768       
/* 00A3C 80ABA67C 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 00A40 80ABA680 0C041AF2 */  jal     func_80106BC8              
/* 00A44 80ABA684 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00A48 80ABA688 50400037 */  beql    $v0, $zero, .L80ABA768     
/* 00A4C 80ABA68C 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 00A50 80ABA690 0C041B33 */  jal     func_80106CCC              
/* 00A54 80ABA694 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00A58 80ABA698 3C0480AC */  lui     $a0, %hi(D_80ABB620)       ## $a0 = 80AC0000
/* 00A5C 80ABA69C 2484B620 */  addiu   $a0, $a0, %lo(D_80ABB620)  ## $a0 = 80ABB620
/* 00A60 80ABA6A0 0C00084C */  jal     osSyncPrintf
              
/* 00A64 80ABA6A4 8605026C */  lh      $a1, 0x026C($s0)           ## 0000026C
/* 00A68 80ABA6A8 3C0480AC */  lui     $a0, %hi(D_80ABB64C)       ## $a0 = 80AC0000
/* 00A6C 80ABA6AC 2484B64C */  addiu   $a0, $a0, %lo(D_80ABB64C)  ## $a0 = 80ABB64C
/* 00A70 80ABA6B0 0C00084C */  jal     osSyncPrintf
              
/* 00A74 80ABA6B4 92050272 */  lbu     $a1, 0x0272($s0)           ## 00000272
/* 00A78 80ABA6B8 3C0480AC */  lui     $a0, %hi(D_80ABB678)       ## $a0 = 80AC0000
/* 00A7C 80ABA6BC 0C00084C */  jal     osSyncPrintf
              
/* 00A80 80ABA6C0 2484B678 */  addiu   $a0, $a0, %lo(D_80ABB678)  ## $a0 = 80ABB678
/* 00A84 80ABA6C4 240F000B */  addiu   $t7, $zero, 0x000B         ## $t7 = 0000000B
/* 00A88 80ABA6C8 A60F026E */  sh      $t7, 0x026E($s0)           ## 0000026E
/* 00A8C 80ABA6CC 3C188016 */  lui     $t8, %hi(gSaveContext+0xef0)
/* 00A90 80ABA6D0 9718F550 */  lhu     $t8, %lo(gSaveContext+0xef0)($t8)
/* 00A94 80ABA6D4 2408000F */  addiu   $t0, $zero, 0x000F         ## $t0 = 0000000F
/* 00A98 80ABA6D8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00A9C 80ABA6DC 33191000 */  andi    $t9, $t8, 0x1000           ## $t9 = 00000000
/* 00AA0 80ABA6E0 1720000D */  bne     $t9, $zero, .L80ABA718     
/* 00AA4 80ABA6E4 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 00AA8 80ABA6E8 3C014248 */  lui     $at, 0x4248                ## $at = 42480000
/* 00AAC 80ABA6EC 44812000 */  mtc1    $at, $f4                   ## $f4 = 50.00
/* 00AB0 80ABA6F0 AE000118 */  sw      $zero, 0x0118($s0)         ## 00000118
/* 00AB4 80ABA6F4 AE080284 */  sw      $t0, 0x0284($s0)           ## 00000284
/* 00AB8 80ABA6F8 2406000F */  addiu   $a2, $zero, 0x000F         ## $a2 = 0000000F
/* 00ABC 80ABA6FC 3C0742C8 */  lui     $a3, 0x42C8                ## $a3 = 42C80000
/* 00AC0 80ABA700 0C00BD0D */  jal     func_8002F434              
/* 00AC4 80ABA704 E7A40010 */  swc1    $f4, 0x0010($sp)           
/* 00AC8 80ABA708 3C0980AC */  lui     $t1, %hi(func_80ABAC00)    ## $t1 = 80AC0000
/* 00ACC 80ABA70C 2529AC00 */  addiu   $t1, $t1, %lo(func_80ABAC00) ## $t1 = 80ABAC00
/* 00AD0 80ABA710 10000014 */  beq     $zero, $zero, .L80ABA764   
/* 00AD4 80ABA714 AE090250 */  sw      $t1, 0x0250($s0)           ## 00000250
.L80ABA718:
/* 00AD8 80ABA718 860A026C */  lh      $t2, 0x026C($s0)           ## 0000026C
/* 00ADC 80ABA71C 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 00AE0 80ABA720 240B0055 */  addiu   $t3, $zero, 0x0055         ## $t3 = 00000055
/* 00AE4 80ABA724 1541000C */  bne     $t2, $at, .L80ABA758       
/* 00AE8 80ABA728 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00AEC 80ABA72C 3C014248 */  lui     $at, 0x4248                ## $at = 42480000
/* 00AF0 80ABA730 44813000 */  mtc1    $at, $f6                   ## $f6 = 50.00
/* 00AF4 80ABA734 AE0B0284 */  sw      $t3, 0x0284($s0)           ## 00000284
/* 00AF8 80ABA738 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 00AFC 80ABA73C 24060055 */  addiu   $a2, $zero, 0x0055         ## $a2 = 00000055
/* 00B00 80ABA740 3C0742C8 */  lui     $a3, 0x42C8                ## $a3 = 42C80000
/* 00B04 80ABA744 0C00BD0D */  jal     func_8002F434              
/* 00B08 80ABA748 E7A60010 */  swc1    $f6, 0x0010($sp)           
/* 00B0C 80ABA74C 3C0C80AC */  lui     $t4, %hi(func_80ABAC00)    ## $t4 = 80AC0000
/* 00B10 80ABA750 258CAC00 */  addiu   $t4, $t4, %lo(func_80ABAC00) ## $t4 = 80ABAC00
/* 00B14 80ABA754 AE0C0250 */  sw      $t4, 0x0250($s0)           ## 00000250
.L80ABA758:
/* 00B18 80ABA758 3C0D80AC */  lui     $t5, %hi(func_80ABA244)    ## $t5 = 80AC0000
/* 00B1C 80ABA75C 25ADA244 */  addiu   $t5, $t5, %lo(func_80ABA244) ## $t5 = 80ABA244
/* 00B20 80ABA760 AE0D0250 */  sw      $t5, 0x0250($s0)           ## 00000250
.L80ABA764:
/* 00B24 80ABA764 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80ABA768:
/* 00B28 80ABA768 8FB0001C */  lw      $s0, 0x001C($sp)           
/* 00B2C 80ABA76C 8FB10020 */  lw      $s1, 0x0020($sp)           
/* 00B30 80ABA770 03E00008 */  jr      $ra                        
/* 00B34 80ABA774 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
