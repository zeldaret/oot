glabel EffectSsStone1_Init
/* 00000 809AC700 27BDFFF0 */  addiu   $sp, $sp, 0xFFF0           ## $sp = FFFFFFF0
/* 00004 809AC704 AFA40010 */  sw      $a0, 0x0010($sp)           
/* 00008 809AC708 AFA50014 */  sw      $a1, 0x0014($sp)           
/* 0000C 809AC70C 8CEF0000 */  lw      $t7, 0x0000($a3)           ## 00000000
/* 00010 809AC710 27A30000 */  addiu   $v1, $sp, 0x0000           ## $v1 = FFFFFFF0
/* 00014 809AC714 240A0008 */  addiu   $t2, $zero, 0x0008         ## $t2 = 00000008
/* 00018 809AC718 AC6F0000 */  sw      $t7, 0x0000($v1)           ## FFFFFFF0
/* 0001C 809AC71C 8CEE0004 */  lw      $t6, 0x0004($a3)           ## 00000004
/* 00020 809AC720 8C790000 */  lw      $t9, 0x0000($v1)           ## FFFFFFF0
/* 00024 809AC724 3C0C809B */  lui     $t4, %hi(func_809AC78C)    ## $t4 = 809B0000
/* 00028 809AC728 AC6E0004 */  sw      $t6, 0x0004($v1)           ## FFFFFFF4
/* 0002C 809AC72C 8CEF0008 */  lw      $t7, 0x0008($a3)           ## 00000008
/* 00030 809AC730 3C0D809B */  lui     $t5, %hi(func_809AC9C0)    ## $t5 = 809B0000
/* 00034 809AC734 258CC78C */  addiu   $t4, $t4, %lo(func_809AC78C) ## $t4 = 809AC78C
/* 00038 809AC738 AC6F0008 */  sw      $t7, 0x0008($v1)           ## FFFFFFF8
/* 0003C 809AC73C ACD90000 */  sw      $t9, 0x0000($a2)           ## 00000000
/* 00040 809AC740 8C780004 */  lw      $t8, 0x0004($v1)           ## FFFFFFF4
/* 00044 809AC744 25ADC9C0 */  addiu   $t5, $t5, %lo(func_809AC9C0) ## $t5 = 809AC9C0
/* 00048 809AC748 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
/* 0004C 809AC74C ACD80004 */  sw      $t8, 0x0004($a2)           ## 00000004
/* 00050 809AC750 8C790008 */  lw      $t9, 0x0008($v1)           ## FFFFFFF8
/* 00054 809AC754 ACD90008 */  sw      $t9, 0x0008($a2)           ## 00000008
/* 00058 809AC758 8C690000 */  lw      $t1, 0x0000($v1)           ## FFFFFFF0
/* 0005C 809AC75C ACC9002C */  sw      $t1, 0x002C($a2)           ## 0000002C
/* 00060 809AC760 8C680004 */  lw      $t0, 0x0004($v1)           ## FFFFFFF4
/* 00064 809AC764 ACC80030 */  sw      $t0, 0x0030($a2)           ## 00000030
/* 00068 809AC768 8C690008 */  lw      $t1, 0x0008($v1)           ## FFFFFFF8
/* 0006C 809AC76C A4CA005C */  sh      $t2, 0x005C($a2)           ## 0000005C
/* 00070 809AC770 ACC90034 */  sw      $t1, 0x0034($a2)           ## 00000034
/* 00074 809AC774 8CEB000C */  lw      $t3, 0x000C($a3)           ## 0000000C
/* 00078 809AC778 ACCC0028 */  sw      $t4, 0x0028($a2)           ## 00000028
/* 0007C 809AC77C ACCD0024 */  sw      $t5, 0x0024($a2)           ## 00000024
/* 00080 809AC780 27BD0010 */  addiu   $sp, $sp, 0x0010           ## $sp = 00000000
/* 00084 809AC784 03E00008 */  jr      $ra                        
/* 00088 809AC788 A4CB0040 */  sh      $t3, 0x0040($a2)           ## 00000040
