glabel func_80AC73B4
/* 04714 80AC73B4 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 04718 80AC73B8 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 0471C 80AC73BC AFB00020 */  sw      $s0, 0x0020($sp)           
/* 04720 80AC73C0 AFA50034 */  sw      $a1, 0x0034($sp)           
/* 04724 80AC73C4 8CAF1C44 */  lw      $t7, 0x1C44($a1)           ## 00001C44
/* 04728 80AC73C8 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 0472C 80AC73CC AFAF002C */  sw      $t7, 0x002C($sp)           
/* 04730 80AC73D0 8E1901F8 */  lw      $t9, 0x01F8($s0)           ## 000001F8
/* 04734 80AC73D4 0320F809 */  jalr    $ra, $t9                   
/* 04738 80AC73D8 00000000 */  nop
/* 0473C 80AC73DC 8FA40034 */  lw      $a0, 0x0034($sp)           
/* 04740 80AC73E0 0C2B0EF3 */  jal     func_80AC3BCC              
/* 04744 80AC73E4 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 04748 80AC73E8 0C2B196E */  jal     func_80AC65B8              
/* 0474C 80AC73EC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 04750 80AC73F0 0C2B19F1 */  jal     func_80AC67C4              
/* 04754 80AC73F4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 04758 80AC73F8 0C2B19BD */  jal     func_80AC66F4              
/* 0475C 80AC73FC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 04760 80AC7400 260401EE */  addiu   $a0, $s0, 0x01EE           ## $a0 = 000001EE
/* 04764 80AC7404 860501F0 */  lh      $a1, 0x01F0($s0)           ## 000001F0
/* 04768 80AC7408 0C01DE5F */  jal     Math_StepToS
              
/* 0476C 80AC740C 24060190 */  addiu   $a2, $zero, 0x0190         ## $a2 = 00000190
/* 04770 80AC7410 8FA6002C */  lw      $a2, 0x002C($sp)           
/* 04774 80AC7414 10C0000A */  beq     $a2, $zero, .L80AC7440     
/* 04778 80AC7418 00000000 */  nop
/* 0477C 80AC741C 861801FC */  lh      $t8, 0x01FC($s0)           ## 000001FC
/* 04780 80AC7420 3C1980AD */  lui     $t9, %hi(D_80AC8E34)       ## $t9 = 80AD0000
/* 04784 80AC7424 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 04788 80AC7428 00184080 */  sll     $t0, $t8,  2               
/* 0478C 80AC742C 0328C821 */  addu    $t9, $t9, $t0              
/* 04790 80AC7430 8F398E34 */  lw      $t9, %lo(D_80AC8E34)($t9)  
/* 04794 80AC7434 8FA50034 */  lw      $a1, 0x0034($sp)           
/* 04798 80AC7438 0320F809 */  jalr    $ra, $t9                   
/* 0479C 80AC743C 00000000 */  nop
.L80AC7440:
/* 047A0 80AC7440 0C00B638 */  jal     Actor_MoveForward
              
/* 047A4 80AC7444 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 047A8 80AC7448 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 047AC 80AC744C 24090005 */  addiu   $t1, $zero, 0x0005         ## $t1 = 00000005
/* 047B0 80AC7450 AFA90014 */  sw      $t1, 0x0014($sp)           
/* 047B4 80AC7454 8FA40034 */  lw      $a0, 0x0034($sp)           
/* 047B8 80AC7458 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 047BC 80AC745C 3C0641D0 */  lui     $a2, 0x41D0                ## $a2 = 41D00000
/* 047C0 80AC7460 3C074120 */  lui     $a3, 0x4120                ## $a3 = 41200000
/* 047C4 80AC7464 0C00B92D */  jal     Actor_UpdateBgCheckInfo              
/* 047C8 80AC7468 E7A40010 */  swc1    $f4, 0x0010($sp)           
/* 047CC 80AC746C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 047D0 80AC7470 0C00B56E */  jal     Actor_SetFocus
              
/* 047D4 80AC7474 3C0542B4 */  lui     $a1, 0x42B4                ## $a1 = 42B40000
/* 047D8 80AC7478 860A001C */  lh      $t2, 0x001C($s0)           ## 0000001C
/* 047DC 80AC747C 3C0580AD */  lui     $a1, %hi(D_80AC89B0)       ## $a1 = 80AD0000
/* 047E0 80AC7480 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 047E4 80AC7484 000A5880 */  sll     $t3, $t2,  2               
/* 047E8 80AC7488 00AB2821 */  addu    $a1, $a1, $t3              
/* 047EC 80AC748C 0C00B58B */  jal     Actor_SetScale
              
/* 047F0 80AC7490 8CA589B0 */  lw      $a1, %lo(D_80AC89B0)($a1)  
/* 047F4 80AC7494 8E020194 */  lw      $v0, 0x0194($s0)           ## 00000194
/* 047F8 80AC7498 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 047FC 80AC749C 10400003 */  beq     $v0, $zero, .L80AC74AC     
/* 04800 80AC74A0 00000000 */  nop
/* 04804 80AC74A4 0040F809 */  jalr    $ra, $v0                   
/* 04808 80AC74A8 8FA50034 */  lw      $a1, 0x0034($sp)           
.L80AC74AC:
/* 0480C 80AC74AC 0C02927F */  jal     SkelAnime_Update
              
/* 04810 80AC74B0 2604014C */  addiu   $a0, $s0, 0x014C           ## $a0 = 0000014C
/* 04814 80AC74B4 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 04818 80AC74B8 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 0481C 80AC74BC 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 04820 80AC74C0 03E00008 */  jr      $ra                        
/* 04824 80AC74C4 00000000 */  nop
