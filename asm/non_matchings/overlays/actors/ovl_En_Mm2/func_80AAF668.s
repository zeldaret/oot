.rdata
glabel D_80AAFBA8
    .asciz "../z_en_mm2.c"
    .balign 4

glabel D_80AAFBB8
    .asciz "((z_common_data.event_inf[1]) & (0x0001)) = %x\n"
    .balign 4

.text
glabel func_80AAF668
/* 00818 80AAF668 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 0081C 80AAF66C AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00820 80AAF670 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 00824 80AAF674 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 00828 80AAF678 240EC180 */  addiu   $t6, $zero, 0xC180         ## $t6 = FFFFC180
/* 0082C 80AAF67C A48E0032 */  sh      $t6, 0x0032($a0)           ## 00000032
/* 00830 80AAF680 848F0032 */  lh      $t7, 0x0032($a0)           ## 00000032
/* 00834 80AAF684 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00838 80AAF688 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 0083C 80AAF68C 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 00840 80AAF690 A48FFF6A */  sh      $t7, -0x0096($a0)          ## 000000B6
/* 00844 80AAF694 3C078016 */  lui     $a3, 0x8016                ## $a3 = 80160000
/* 00848 80AAF698 24E7E660 */  addiu   $a3, $a3, 0xE660           ## $a3 = 8015E660
/* 0084C 80AAF69C 84E313D4 */  lh      $v1, 0x13D4($a3)           ## 8015FA34
/* 00850 80AAF6A0 8CF80EC8 */  lw      $t8, 0x0EC8($a3)           ## 8015F528
/* 00854 80AAF6A4 3C0680AB */  lui     $a2, %hi(func_80AAF5EC)    ## $a2 = 80AB0000
/* 00858 80AAF6A8 24C6F5EC */  addiu   $a2, $a2, %lo(func_80AAF5EC) ## $a2 = 80AAF5EC
/* 0085C 80AAF6AC 0078082A */  slt     $at, $v1, $t8              
/* 00860 80AAF6B0 10200004 */  beq     $at, $zero, .L80AAF6C4     
/* 00864 80AAF6B4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00868 80AAF6B8 24196085 */  addiu   $t9, $zero, 0x6085         ## $t9 = 00006085
/* 0086C 80AAF6BC 10000003 */  beq     $zero, $zero, .L80AAF6CC   
/* 00870 80AAF6C0 A619010E */  sh      $t9, 0x010E($s0)           ## 0000010E
.L80AAF6C4:
/* 00874 80AAF6C4 24086084 */  addiu   $t0, $zero, 0x6084         ## $t0 = 00006084
/* 00878 80AAF6C8 A608010E */  sh      $t0, 0x010E($s0)           ## 0000010E
.L80AAF6CC:
/* 0087C 80AAF6CC 0C2ABC89 */  jal     func_80AAF224              
/* 00880 80AAF6D0 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 00884 80AAF6D4 3C078016 */  lui     $a3, 0x8016                ## $a3 = 80160000
/* 00888 80AAF6D8 1040000B */  beq     $v0, $zero, .L80AAF708     
/* 0088C 80AAF6DC 24E7E660 */  addiu   $a3, $a3, 0xE660           ## $a3 = 8015E660
/* 00890 80AAF6E0 A60001F6 */  sh      $zero, 0x01F6($s0)         ## 000001F6
/* 00894 80AAF6E4 84E213D4 */  lh      $v0, 0x13D4($a3)           ## 8015FA34
/* 00898 80AAF6E8 8CE90EC8 */  lw      $t1, 0x0EC8($a3)           ## 8015F528
/* 0089C 80AAF6EC 00021C00 */  sll     $v1, $v0, 16               
/* 008A0 80AAF6F0 00031C03 */  sra     $v1, $v1, 16               
/* 008A4 80AAF6F4 0069082A */  slt     $at, $v1, $t1              
/* 008A8 80AAF6F8 50200021 */  beql    $at, $zero, .L80AAF780     
/* 008AC 80AAF6FC 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 008B0 80AAF700 1000001E */  beq     $zero, $zero, .L80AAF77C   
/* 008B4 80AAF704 ACE20EC8 */  sw      $v0, 0x0EC8($a3)           ## 8015F528
.L80AAF708:
/* 008B8 80AAF708 3C0480AB */  lui     $a0, %hi(D_80AAFBA8)       ## $a0 = 80AB0000
/* 008BC 80AAF70C 2484FBA8 */  addiu   $a0, $a0, %lo(D_80AAFBA8)  ## $a0 = 80AAFBA8
/* 008C0 80AAF710 0C000B84 */  jal     LogUtils_LogThreadId
              
/* 008C4 80AAF714 2405021D */  addiu   $a1, $zero, 0x021D         ## $a1 = 0000021D
/* 008C8 80AAF718 3C078016 */  lui     $a3, 0x8016                ## $a3 = 80160000
/* 008CC 80AAF71C 24E7E660 */  addiu   $a3, $a3, 0xE660           ## $a3 = 8015E660
/* 008D0 80AAF720 94E513FC */  lhu     $a1, 0x13FC($a3)           ## 8015FA5C
/* 008D4 80AAF724 3C0480AB */  lui     $a0, %hi(D_80AAFBB8)       ## $a0 = 80AB0000
/* 008D8 80AAF728 2484FBB8 */  addiu   $a0, $a0, %lo(D_80AAFBB8)  ## $a0 = 80AAFBB8
/* 008DC 80AAF72C 0C00084C */  jal     osSyncPrintf
              
/* 008E0 80AAF730 30A50001 */  andi    $a1, $a1, 0x0001           ## $a1 = 00000000
/* 008E4 80AAF734 3C078016 */  lui     $a3, 0x8016                ## $a3 = 80160000
/* 008E8 80AAF738 24E7E660 */  addiu   $a3, $a3, 0xE660           ## $a3 = 8015E660
/* 008EC 80AAF73C 94EA13FC */  lhu     $t2, 0x13FC($a3)           ## 8015FA5C
/* 008F0 80AAF740 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 008F4 80AAF744 314B0001 */  andi    $t3, $t2, 0x0001           ## $t3 = 00000000
/* 008F8 80AAF748 5560000D */  bnel    $t3, $zero, .L80AAF780     
/* 008FC 80AAF74C 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00900 80AAF750 960C01F4 */  lhu     $t4, 0x01F4($s0)           ## 000001F4
/* 00904 80AAF754 24050003 */  addiu   $a1, $zero, 0x0003         ## $a1 = 00000003
/* 00908 80AAF758 260601F8 */  addiu   $a2, $s0, 0x01F8           ## $a2 = 000001F8
/* 0090C 80AAF75C 358E0002 */  ori     $t6, $t4, 0x0002           ## $t6 = 00000002
/* 00910 80AAF760 A60E01F4 */  sh      $t6, 0x01F4($s0)           ## 000001F4
/* 00914 80AAF764 31CFFFFE */  andi    $t7, $t6, 0xFFFE           ## $t7 = 00000002
/* 00918 80AAF768 0C2ABB94 */  jal     func_80AAEE50              
/* 0091C 80AAF76C A60F01F4 */  sh      $t7, 0x01F4($s0)           ## 000001F4
/* 00920 80AAF770 3C1880AB */  lui     $t8, %hi(func_80AAF330)    ## $t8 = 80AB0000
/* 00924 80AAF774 2718F330 */  addiu   $t8, $t8, %lo(func_80AAF330) ## $t8 = 80AAF330
/* 00928 80AAF778 AE180190 */  sw      $t8, 0x0190($s0)           ## 00000190
.L80AAF77C:
/* 0092C 80AAF77C 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80AAF780:
/* 00930 80AAF780 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 00934 80AAF784 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 00938 80AAF788 03E00008 */  jr      $ra                        
/* 0093C 80AAF78C 00000000 */  nop
