glabel EnGs_Update
/* 014D4 80A4F7F4 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 014D8 80A4F7F8 AFB10018 */  sw      $s1, 0x0018($sp)           
/* 014DC 80A4F7FC 00A08825 */  or      $s1, $a1, $zero            ## $s1 = 00000000
/* 014E0 80A4F800 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 014E4 80A4F804 AFB00014 */  sw      $s0, 0x0014($sp)           
/* 014E8 80A4F808 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 014EC 80A4F80C 0C00B56E */  jal     Actor_SetHeight
              
/* 014F0 80A4F810 3C0541B8 */  lui     $a1, 0x41B8                ## $a1 = 41B80000
/* 014F4 80A4F814 920E019E */  lbu     $t6, 0x019E($s0)           ## 0000019E
/* 014F8 80A4F818 31CF0010 */  andi    $t7, $t6, 0x0010           ## $t7 = 00000000
/* 014FC 80A4F81C 55E0004E */  bnel    $t7, $zero, .L80A4F958     
/* 01500 80A4F820 8E190198 */  lw      $t9, 0x0198($s0)           ## 00000198
/* 01504 80A4F824 9202015D */  lbu     $v0, 0x015D($s0)           ## 0000015D
/* 01508 80A4F828 30580002 */  andi    $t8, $v0, 0x0002           ## $t8 = 00000000
/* 0150C 80A4F82C 5300003B */  beql    $t8, $zero, .L80A4F91C     
/* 01510 80A4F830 2605014C */  addiu   $a1, $s0, 0x014C           ## $a1 = 0000014C
/* 01514 80A4F834 920800B1 */  lbu     $t0, 0x00B1($s0)           ## 000000B1
/* 01518 80A4F838 3059FFFD */  andi    $t9, $v0, 0xFFFD           ## $t9 = 00000000
/* 0151C 80A4F83C A200019F */  sb      $zero, 0x019F($s0)         ## 0000019F
/* 01520 80A4F840 2509FFF5 */  addiu   $t1, $t0, 0xFFF5           ## $t1 = FFFFFFF5
/* 01524 80A4F844 2D210005 */  sltiu   $at, $t1, 0x0005           
/* 01528 80A4F848 10200033 */  beq     $at, $zero, .L80A4F918     
/* 0152C 80A4F84C A219015D */  sb      $t9, 0x015D($s0)           ## 0000015D
/* 01530 80A4F850 00094880 */  sll     $t1, $t1,  2               
/* 01534 80A4F854 3C0180A5 */  lui     $at, %hi(jtbl_80A4FF24)       ## $at = 80A50000
/* 01538 80A4F858 00290821 */  addu    $at, $at, $t1              
/* 0153C 80A4F85C 8C29FF24 */  lw      $t1, %lo(jtbl_80A4FF24)($at)  
/* 01540 80A4F860 01200008 */  jr      $t1                        
/* 01544 80A4F864 00000000 */  nop
glabel L80A4F868
/* 01548 80A4F868 920A019E */  lbu     $t2, 0x019E($s0)           ## 0000019E
/* 0154C 80A4F86C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01550 80A4F870 354B0001 */  ori     $t3, $t2, 0x0001           ## $t3 = 00000001
/* 01554 80A4F874 0C293DDF */  jal     func_80A4F77C              
/* 01558 80A4F878 A20B019E */  sb      $t3, 0x019E($s0)           ## 0000019E
/* 0155C 80A4F87C 3C0C80A5 */  lui     $t4, %hi(func_80A4E910)    ## $t4 = 80A50000
/* 01560 80A4F880 258CE910 */  addiu   $t4, $t4, %lo(func_80A4E910) ## $t4 = 80A4E910
/* 01564 80A4F884 10000024 */  beq     $zero, $zero, .L80A4F918   
/* 01568 80A4F888 AE0C0198 */  sw      $t4, 0x0198($s0)           ## 00000198
glabel L80A4F88C
/* 0156C 80A4F88C 920D019E */  lbu     $t5, 0x019E($s0)           ## 0000019E
/* 01570 80A4F890 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01574 80A4F894 35AE0001 */  ori     $t6, $t5, 0x0001           ## $t6 = 00000001
/* 01578 80A4F898 0C293DDF */  jal     func_80A4F77C              
/* 0157C 80A4F89C A20E019E */  sb      $t6, 0x019E($s0)           ## 0000019E
/* 01580 80A4F8A0 3C0F80A5 */  lui     $t7, %hi(func_80A4EA08)    ## $t7 = 80A50000
/* 01584 80A4F8A4 25EFEA08 */  addiu   $t7, $t7, %lo(func_80A4EA08) ## $t7 = 80A4EA08
/* 01588 80A4F8A8 1000001B */  beq     $zero, $zero, .L80A4F918   
/* 0158C 80A4F8AC AE0F0198 */  sw      $t7, 0x0198($s0)           ## 00000198
glabel L80A4F8B0
/* 01590 80A4F8B0 9218019E */  lbu     $t8, 0x019E($s0)           ## 0000019E
/* 01594 80A4F8B4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01598 80A4F8B8 37190001 */  ori     $t9, $t8, 0x0001           ## $t9 = 00000001
/* 0159C 80A4F8BC 0C293DDF */  jal     func_80A4F77C              
/* 015A0 80A4F8C0 A219019E */  sb      $t9, 0x019E($s0)           ## 0000019E
/* 015A4 80A4F8C4 3C0880A5 */  lui     $t0, %hi(func_80A4EB3C)    ## $t0 = 80A50000
/* 015A8 80A4F8C8 2508EB3C */  addiu   $t0, $t0, %lo(func_80A4EB3C) ## $t0 = 80A4EB3C
/* 015AC 80A4F8CC 10000012 */  beq     $zero, $zero, .L80A4F918   
/* 015B0 80A4F8D0 AE080198 */  sw      $t0, 0x0198($s0)           ## 00000198
glabel L80A4F8D4
/* 015B4 80A4F8D4 9209019E */  lbu     $t1, 0x019E($s0)           ## 0000019E
/* 015B8 80A4F8D8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 015BC 80A4F8DC 352A0002 */  ori     $t2, $t1, 0x0002           ## $t2 = 00000002
/* 015C0 80A4F8E0 0C293DDF */  jal     func_80A4F77C              
/* 015C4 80A4F8E4 A20A019E */  sb      $t2, 0x019E($s0)           ## 0000019E
/* 015C8 80A4F8E8 3C0B80A5 */  lui     $t3, %hi(func_80A4ED34)    ## $t3 = 80A50000
/* 015CC 80A4F8EC 256BED34 */  addiu   $t3, $t3, %lo(func_80A4ED34) ## $t3 = 80A4ED34
/* 015D0 80A4F8F0 10000009 */  beq     $zero, $zero, .L80A4F918   
/* 015D4 80A4F8F4 AE0B0198 */  sw      $t3, 0x0198($s0)           ## 00000198
glabel L80A4F8F8
/* 015D8 80A4F8F8 920C019E */  lbu     $t4, 0x019E($s0)           ## 0000019E
/* 015DC 80A4F8FC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 015E0 80A4F900 358D0001 */  ori     $t5, $t4, 0x0001           ## $t5 = 00000001
/* 015E4 80A4F904 0C293DDF */  jal     func_80A4F77C              
/* 015E8 80A4F908 A20D019E */  sb      $t5, 0x019E($s0)           ## 0000019E
/* 015EC 80A4F90C 3C0E80A5 */  lui     $t6, %hi(func_80A4F13C)    ## $t6 = 80A50000
/* 015F0 80A4F910 25CEF13C */  addiu   $t6, $t6, %lo(func_80A4F13C) ## $t6 = 80A4F13C
/* 015F4 80A4F914 AE0E0198 */  sw      $t6, 0x0198($s0)           ## 00000198
.L80A4F918:
/* 015F8 80A4F918 2605014C */  addiu   $a1, $s0, 0x014C           ## $a1 = 0000014C
.L80A4F91C:
/* 015FC 80A4F91C AFA50020 */  sw      $a1, 0x0020($sp)           
/* 01600 80A4F920 0C0189B7 */  jal     ActorCollider_Cylinder_Update
              
/* 01604 80A4F924 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01608 80A4F928 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 0160C 80A4F92C 34211E60 */  ori     $at, $at, 0x1E60           ## $at = 00011E60
/* 01610 80A4F930 02212821 */  addu    $a1, $s1, $at              
/* 01614 80A4F934 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 01618 80A4F938 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 0161C 80A4F93C 0C01767D */  jal     Actor_CollisionCheck_SetAC
              ## CollisionCheck_setAC
/* 01620 80A4F940 8FA60020 */  lw      $a2, 0x0020($sp)           
/* 01624 80A4F944 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 01628 80A4F948 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 0162C 80A4F94C 0C017713 */  jal     Actor_CollisionCheck_SetOT
              ## CollisionCheck_setOT
/* 01630 80A4F950 8FA60020 */  lw      $a2, 0x0020($sp)           
/* 01634 80A4F954 8E190198 */  lw      $t9, 0x0198($s0)           ## 00000198
.L80A4F958:
/* 01638 80A4F958 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0163C 80A4F95C 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 01640 80A4F960 0320F809 */  jalr    $ra, $t9                   
/* 01644 80A4F964 00000000 */  nop
/* 01648 80A4F968 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0164C 80A4F96C 0C293992 */  jal     func_80A4E648              
/* 01650 80A4F970 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 01654 80A4F974 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 01658 80A4F978 8FB00014 */  lw      $s0, 0x0014($sp)           
/* 0165C 80A4F97C 8FB10018 */  lw      $s1, 0x0018($sp)           
/* 01660 80A4F980 03E00008 */  jr      $ra                        
/* 01664 80A4F984 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000


