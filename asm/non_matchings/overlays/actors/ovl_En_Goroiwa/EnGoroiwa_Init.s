.rdata
glabel D_80A4DF88
    .asciz "Ｅｒｒｏｒ : arg_data が不正(%s %d)(arg_data 0x%04x)\n"
    .balign 4

glabel D_80A4DFC0
    .asciz "../z_en_gr.c"
    .balign 4

glabel D_80A4DFD0
    .asciz "Ｅｒｒｏｒ : レールデータ が不正(%s %d)\n"
    .balign 4

glabel D_80A4DFFC
    .asciz "../z_en_gr.c"
    .balign 4

glabel D_80A4E00C
    .asciz "(ごろ岩)(arg 0x%04x)(rail %d)(end %d)(bgc %d)(hit %d)\n"
    .balign 4

.text
glabel EnGoroiwa_Init
/* 01778 80A4D418 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 0177C 80A4D41C AFB20028 */  sw      $s2, 0x0028($sp)           
/* 01780 80A4D420 00A09025 */  or      $s2, $a1, $zero            ## $s2 = 00000000
/* 01784 80A4D424 AFBF002C */  sw      $ra, 0x002C($sp)           
/* 01788 80A4D428 AFB10024 */  sw      $s1, 0x0024($sp)           
/* 0178C 80A4D42C 3C0580A5 */  lui     $a1, %hi(D_80A4DEF8)       ## $a1 = 80A50000
/* 01790 80A4D430 00808825 */  or      $s1, $a0, $zero            ## $s1 = 00000000
/* 01794 80A4D434 AFB00020 */  sw      $s0, 0x0020($sp)           
/* 01798 80A4D438 0C01E037 */  jal     Actor_ProcessInitChain
              
/* 0179C 80A4D43C 24A5DEF8 */  addiu   $a1, $a1, %lo(D_80A4DEF8)  ## $a1 = 80A4DEF8
/* 017A0 80A4D440 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 017A4 80A4D444 0C292F41 */  jal     func_80A4BD04              
/* 017A8 80A4D448 02402825 */  or      $a1, $s2, $zero            ## $a1 = 00000000
/* 017AC 80A4D44C 8630001C */  lh      $s0, 0x001C($s1)           ## 0000001C
/* 017B0 80A4D450 240100FF */  addiu   $at, $zero, 0x00FF         ## $at = 000000FF
/* 017B4 80A4D454 3C0E0001 */  lui     $t6, 0x0001                ## $t6 = 00010000
/* 017B8 80A4D458 320200FF */  andi    $v0, $s0, 0x00FF           ## $v0 = 00000000
/* 017BC 80A4D45C 1441000C */  bne     $v0, $at, .L80A4D490       
/* 017C0 80A4D460 01D27021 */  addu    $t6, $t6, $s2              
/* 017C4 80A4D464 3C0480A5 */  lui     $a0, %hi(D_80A4DF88)       ## $a0 = 80A50000
/* 017C8 80A4D468 3C0580A5 */  lui     $a1, %hi(D_80A4DFC0)       ## $a1 = 80A50000
/* 017CC 80A4D46C 24A5DFC0 */  addiu   $a1, $a1, %lo(D_80A4DFC0)  ## $a1 = 80A4DFC0
/* 017D0 80A4D470 2484DF88 */  addiu   $a0, $a0, %lo(D_80A4DF88)  ## $a0 = 80A4DF88
/* 017D4 80A4D474 24060409 */  addiu   $a2, $zero, 0x0409         ## $a2 = 00000409
/* 017D8 80A4D478 0C00084C */  jal     osSyncPrintf
              
/* 017DC 80A4D47C 02003825 */  or      $a3, $s0, $zero            ## $a3 = 00000000
/* 017E0 80A4D480 0C00B55C */  jal     Actor_Kill
              
/* 017E4 80A4D484 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 017E8 80A4D488 10000046 */  beq     $zero, $zero, .L80A4D5A4   
/* 017EC 80A4D48C 8FBF002C */  lw      $ra, 0x002C($sp)           
.L80A4D490:
/* 017F0 80A4D490 8DCE1E08 */  lw      $t6, 0x1E08($t6)           ## 00001E08
/* 017F4 80A4D494 000278C0 */  sll     $t7, $v0,  3               
/* 017F8 80A4D498 26240098 */  addiu   $a0, $s1, 0x0098           ## $a0 = 00000098
/* 017FC 80A4D49C 01CFC021 */  addu    $t8, $t6, $t7              
/* 01800 80A4D4A0 93190000 */  lbu     $t9, 0x0000($t8)           ## 00000000
/* 01804 80A4D4A4 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 01808 80A4D4A8 3C0680A5 */  lui     $a2, %hi(D_80A4DEB4)       ## $a2 = 80A50000
/* 0180C 80A4D4AC 2B210002 */  slti    $at, $t9, 0x0002           
/* 01810 80A4D4B0 1020000B */  beq     $at, $zero, .L80A4D4E0     
/* 01814 80A4D4B4 00000000 */  nop
/* 01818 80A4D4B8 3C0480A5 */  lui     $a0, %hi(D_80A4DFD0)       ## $a0 = 80A50000
/* 0181C 80A4D4BC 3C0580A5 */  lui     $a1, %hi(D_80A4DFFC)       ## $a1 = 80A50000
/* 01820 80A4D4C0 24A5DFFC */  addiu   $a1, $a1, %lo(D_80A4DFFC)  ## $a1 = 80A4DFFC
/* 01824 80A4D4C4 2484DFD0 */  addiu   $a0, $a0, %lo(D_80A4DFD0)  ## $a0 = 80A4DFD0
/* 01828 80A4D4C8 0C00084C */  jal     osSyncPrintf
              
/* 0182C 80A4D4CC 24060413 */  addiu   $a2, $zero, 0x0413         ## $a2 = 00000413
/* 01830 80A4D4D0 0C00B55C */  jal     Actor_Kill
              
/* 01834 80A4D4D4 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 01838 80A4D4D8 10000032 */  beq     $zero, $zero, .L80A4D5A4   
/* 0183C 80A4D4DC 8FBF002C */  lw      $ra, 0x002C($sp)           
.L80A4D4E0:
/* 01840 80A4D4E0 0C0187B5 */  jal     func_80061ED4              
/* 01844 80A4D4E4 24C6DEB4 */  addiu   $a2, $a2, %lo(D_80A4DEB4)  ## $a2 = FFFFDEB4
/* 01848 80A4D4E8 8628001C */  lh      $t0, 0x001C($s1)           ## 0000001C
/* 0184C 80A4D4EC 3C0580A5 */  lui     $a1, %hi(D_80A4DF10)       ## $a1 = 80A50000
/* 01850 80A4D4F0 3C068003 */  lui     $a2, %hi(ActorShadow_DrawFunc_Circle)
/* 01854 80A4D4F4 00084A83 */  sra     $t1, $t0, 10               
/* 01858 80A4D4F8 312A0001 */  andi    $t2, $t1, 0x0001           ## $t2 = 00000000
/* 0185C 80A4D4FC 000A5880 */  sll     $t3, $t2,  2               
/* 01860 80A4D500 00AB2821 */  addu    $a1, $a1, $t3              
/* 01864 80A4D504 3C074116 */  lui     $a3, 0x4116                ## $a3 = 41160000
/* 01868 80A4D508 34E76666 */  ori     $a3, $a3, 0x6666           ## $a3 = 41166666
/* 0186C 80A4D50C 8CA5DF10 */  lw      $a1, %lo(D_80A4DF10)($a1)  
/* 01870 80A4D510 24C6B5EC */  addiu   $a2, %lo(ActorShadow_DrawFunc_Circle)
/* 01874 80A4D514 0C00AC78 */  jal     ActorShape_Init
              
/* 01878 80A4D518 262400B4 */  addiu   $a0, $s1, 0x00B4           ## $a0 = 000000B4
/* 0187C 80A4D51C 240C00C8 */  addiu   $t4, $zero, 0x00C8         ## $t4 = 000000C8
/* 01880 80A4D520 A22C00C8 */  sb      $t4, 0x00C8($s1)           ## 000000C8
/* 01884 80A4D524 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 01888 80A4D528 0C292F84 */  jal     func_80A4BE10              
/* 0188C 80A4D52C 02402825 */  or      $a1, $s2, $zero            ## $a1 = 00000000
/* 01890 80A4D530 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 01894 80A4D534 0C293062 */  jal     func_80A4C188              
/* 01898 80A4D538 02402825 */  or      $a1, $s2, $zero            ## $a1 = 00000000
/* 0189C 80A4D53C 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 018A0 80A4D540 02402825 */  or      $a1, $s2, $zero            ## $a1 = 00000000
/* 018A4 80A4D544 0C293071 */  jal     func_80A4C1C4              
/* 018A8 80A4D548 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 018AC 80A4D54C 0C293099 */  jal     func_80A4C264              
/* 018B0 80A4D550 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 018B4 80A4D554 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 018B8 80A4D558 0C292F95 */  jal     func_80A4BE54              
/* 018BC 80A4D55C 02402825 */  or      $a1, $s2, $zero            ## $a1 = 00000000
/* 018C0 80A4D560 0C293578 */  jal     func_80A4D5E0              
/* 018C4 80A4D564 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 018C8 80A4D568 8630001C */  lh      $s0, 0x001C($s1)           ## 0000001C
/* 018CC 80A4D56C 3C0480A5 */  lui     $a0, %hi(D_80A4E00C)       ## $a0 = 80A50000
/* 018D0 80A4D570 2484E00C */  addiu   $a0, $a0, %lo(D_80A4E00C)  ## $a0 = 80A4E00C
/* 018D4 80A4D574 00106A83 */  sra     $t5, $s0, 10               
/* 018D8 80A4D578 31AE0001 */  andi    $t6, $t5, 0x0001           ## $t6 = 00000000
/* 018DC 80A4D57C AFAE0010 */  sw      $t6, 0x0010($sp)           
/* 018E0 80A4D580 862F0018 */  lh      $t7, 0x0018($s1)           ## 00000018
/* 018E4 80A4D584 00103A03 */  sra     $a3, $s0,  8               
/* 018E8 80A4D588 30E70003 */  andi    $a3, $a3, 0x0003           ## $a3 = 00000000
/* 018EC 80A4D58C 31F80001 */  andi    $t8, $t7, 0x0001           ## $t8 = 00000000
/* 018F0 80A4D590 AFB80014 */  sw      $t8, 0x0014($sp)           
/* 018F4 80A4D594 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 018F8 80A4D598 0C00084C */  jal     osSyncPrintf
              
/* 018FC 80A4D59C 320600FF */  andi    $a2, $s0, 0x00FF           ## $a2 = 00000000
/* 01900 80A4D5A0 8FBF002C */  lw      $ra, 0x002C($sp)           
.L80A4D5A4:
/* 01904 80A4D5A4 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 01908 80A4D5A8 8FB10024 */  lw      $s1, 0x0024($sp)           
/* 0190C 80A4D5AC 8FB20028 */  lw      $s2, 0x0028($sp)           
/* 01910 80A4D5B0 03E00008 */  jr      $ra                        
/* 01914 80A4D5B4 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
