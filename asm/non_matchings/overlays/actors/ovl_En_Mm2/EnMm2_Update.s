glabel EnMm2_Update
/* 00940 80AAF790 27BDFFC0 */  addiu   $sp, $sp, 0xFFC0           ## $sp = FFFFFFC0
/* 00944 80AAF794 AFBF002C */  sw      $ra, 0x002C($sp)           
/* 00948 80AAF798 AFB10028 */  sw      $s1, 0x0028($sp)           
/* 0094C 80AAF79C AFB00024 */  sw      $s0, 0x0024($sp)           
/* 00950 80AAF7A0 948E01F4 */  lhu     $t6, 0x01F4($a0)           ## 000001F4
/* 00954 80AAF7A4 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00958 80AAF7A8 00A08825 */  or      $s1, $a1, $zero            ## $s1 = 00000000
/* 0095C 80AAF7AC 31CF0001 */  andi    $t7, $t6, 0x0001           ## $t7 = 00000000
/* 00960 80AAF7B0 11E0000E */  beq     $t7, $zero, .L80AAF7EC     
/* 00964 80AAF7B4 260401E8 */  addiu   $a0, $s0, 0x01E8           ## $a0 = 000001E8
/* 00968 80AAF7B8 8E190038 */  lw      $t9, 0x0038($s0)           ## 00000038
/* 0096C 80AAF7BC 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 00970 80AAF7C0 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 00974 80AAF7C4 AFB90010 */  sw      $t9, 0x0010($sp)           
/* 00978 80AAF7C8 8E18003C */  lw      $t8, 0x003C($s0)           ## 0000003C
/* 0097C 80AAF7CC 260601E8 */  addiu   $a2, $s0, 0x01E8           ## $a2 = 000001E8
/* 00980 80AAF7D0 260701EE */  addiu   $a3, $s0, 0x01EE           ## $a3 = 000001EE
/* 00984 80AAF7D4 AFB80014 */  sw      $t8, 0x0014($sp)           
/* 00988 80AAF7D8 8E190040 */  lw      $t9, 0x0040($s0)           ## 00000040
/* 0098C 80AAF7DC 0C00E0A4 */  jal     func_80038290              
/* 00990 80AAF7E0 AFB90018 */  sw      $t9, 0x0018($sp)           
/* 00994 80AAF7E4 1000001D */  beq     $zero, $zero, .L80AAF85C   
/* 00998 80AAF7E8 8E190190 */  lw      $t9, 0x0190($s0)           ## 00000190
.L80AAF7EC:
/* 0099C 80AAF7EC 24080064 */  addiu   $t0, $zero, 0x0064         ## $t0 = 00000064
/* 009A0 80AAF7F0 AFA80010 */  sw      $t0, 0x0010($sp)           
/* 009A4 80AAF7F4 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 009A8 80AAF7F8 24060006 */  addiu   $a2, $zero, 0x0006         ## $a2 = 00000006
/* 009AC 80AAF7FC 0C01E1A7 */  jal     Math_SmoothStepToS
              
/* 009B0 80AAF800 24071838 */  addiu   $a3, $zero, 0x1838         ## $a3 = 00001838
/* 009B4 80AAF804 24090064 */  addiu   $t1, $zero, 0x0064         ## $t1 = 00000064
/* 009B8 80AAF808 AFA90010 */  sw      $t1, 0x0010($sp)           
/* 009BC 80AAF80C 260401EA */  addiu   $a0, $s0, 0x01EA           ## $a0 = 000001EA
/* 009C0 80AAF810 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 009C4 80AAF814 24060006 */  addiu   $a2, $zero, 0x0006         ## $a2 = 00000006
/* 009C8 80AAF818 0C01E1A7 */  jal     Math_SmoothStepToS
              
/* 009CC 80AAF81C 24071838 */  addiu   $a3, $zero, 0x1838         ## $a3 = 00001838
/* 009D0 80AAF820 240A0064 */  addiu   $t2, $zero, 0x0064         ## $t2 = 00000064
/* 009D4 80AAF824 AFAA0010 */  sw      $t2, 0x0010($sp)           
/* 009D8 80AAF828 260401EE */  addiu   $a0, $s0, 0x01EE           ## $a0 = 000001EE
/* 009DC 80AAF82C 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 009E0 80AAF830 24060006 */  addiu   $a2, $zero, 0x0006         ## $a2 = 00000006
/* 009E4 80AAF834 0C01E1A7 */  jal     Math_SmoothStepToS
              
/* 009E8 80AAF838 24071838 */  addiu   $a3, $zero, 0x1838         ## $a3 = 00001838
/* 009EC 80AAF83C 240B0064 */  addiu   $t3, $zero, 0x0064         ## $t3 = 00000064
/* 009F0 80AAF840 AFAB0010 */  sw      $t3, 0x0010($sp)           
/* 009F4 80AAF844 260401F0 */  addiu   $a0, $s0, 0x01F0           ## $a0 = 000001F0
/* 009F8 80AAF848 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 009FC 80AAF84C 24060006 */  addiu   $a2, $zero, 0x0006         ## $a2 = 00000006
/* 00A00 80AAF850 0C01E1A7 */  jal     Math_SmoothStepToS
              
/* 00A04 80AAF854 24071838 */  addiu   $a3, $zero, 0x1838         ## $a3 = 00001838
/* 00A08 80AAF858 8E190190 */  lw      $t9, 0x0190($s0)           ## 00000190
.L80AAF85C:
/* 00A0C 80AAF85C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00A10 80AAF860 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 00A14 80AAF864 0320F809 */  jalr    $ra, $t9                   
/* 00A18 80AAF868 00000000 */  nop
/* 00A1C 80AAF86C 26060194 */  addiu   $a2, $s0, 0x0194           ## $a2 = 00000194
/* 00A20 80AAF870 00C02825 */  or      $a1, $a2, $zero            ## $a1 = 00000194
/* 00A24 80AAF874 AFA60034 */  sw      $a2, 0x0034($sp)           
/* 00A28 80AAF878 0C0189B7 */  jal     Collider_UpdateCylinder
              
/* 00A2C 80AAF87C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00A30 80AAF880 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 00A34 80AAF884 34211E60 */  ori     $at, $at, 0x1E60           ## $at = 00011E60
/* 00A38 80AAF888 8FA60034 */  lw      $a2, 0x0034($sp)           
/* 00A3C 80AAF88C 02212821 */  addu    $a1, $s1, $at              
/* 00A40 80AAF890 0C017713 */  jal     CollisionCheck_SetOC
              ## CollisionCheck_setOC
/* 00A44 80AAF894 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00A48 80AAF898 0C00B638 */  jal     Actor_MoveForward
              
/* 00A4C 80AAF89C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00A50 80AAF8A0 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 00A54 80AAF8A4 240C0004 */  addiu   $t4, $zero, 0x0004         ## $t4 = 00000004
/* 00A58 80AAF8A8 AFAC0014 */  sw      $t4, 0x0014($sp)           
/* 00A5C 80AAF8AC 44060000 */  mfc1    $a2, $f0                   
/* 00A60 80AAF8B0 44070000 */  mfc1    $a3, $f0                   
/* 00A64 80AAF8B4 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00A68 80AAF8B8 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 00A6C 80AAF8BC 0C00B92D */  jal     func_8002E4B4              
/* 00A70 80AAF8C0 E7A00010 */  swc1    $f0, 0x0010($sp)           
/* 00A74 80AAF8C4 8FBF002C */  lw      $ra, 0x002C($sp)           
/* 00A78 80AAF8C8 8FB00024 */  lw      $s0, 0x0024($sp)           
/* 00A7C 80AAF8CC 8FB10028 */  lw      $s1, 0x0028($sp)           
/* 00A80 80AAF8D0 03E00008 */  jr      $ra                        
/* 00A84 80AAF8D4 27BD0040 */  addiu   $sp, $sp, 0x0040           ## $sp = 00000000
