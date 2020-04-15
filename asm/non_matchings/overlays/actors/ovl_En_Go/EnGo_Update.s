glabel EnGo_Update
/* 028DC 80A40E4C 27BDFFC8 */  addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
/* 028E0 80A40E50 AFB0001C */  sw      $s0, 0x001C($sp)           
/* 028E4 80A40E54 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 028E8 80A40E58 AFB10020 */  sw      $s1, 0x0020($sp)           
/* 028EC 80A40E5C 00A08825 */  or      $s1, $a1, $zero            ## $s1 = 00000000
/* 028F0 80A40E60 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 028F4 80A40E64 26060194 */  addiu   $a2, $s0, 0x0194           ## $a2 = 00000194
/* 028F8 80A40E68 00C02825 */  or      $a1, $a2, $zero            ## $a1 = 00000194
/* 028FC 80A40E6C 0C0189B7 */  jal     ActorCollider_Cylinder_Update
              
/* 02900 80A40E70 AFA6002C */  sw      $a2, 0x002C($sp)           
/* 02904 80A40E74 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 02908 80A40E78 34211E60 */  ori     $at, $at, 0x1E60           ## $at = 00011E60
/* 0290C 80A40E7C 8FA6002C */  lw      $a2, 0x002C($sp)           
/* 02910 80A40E80 02212821 */  addu    $a1, $s1, $at              
/* 02914 80A40E84 0C017713 */  jal     Actor_CollisionCheck_SetOT
              ## CollisionCheck_setOT
/* 02918 80A40E88 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 0291C 80A40E8C 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 02920 80A40E90 2604014C */  addiu   $a0, $s0, 0x014C           ## $a0 = 0000014C
/* 02924 80A40E94 8E020190 */  lw      $v0, 0x0190($s0)           ## 00000190
/* 02928 80A40E98 3C0E80A4 */  lui     $t6, %hi(func_80A406E0)    ## $t6 = 80A40000
/* 0292C 80A40E9C 25CE06E0 */  addiu   $t6, $t6, %lo(func_80A406E0) ## $t6 = 80A406E0
/* 02930 80A40EA0 11C20006 */  beq     $t6, $v0, .L80A40EBC       
/* 02934 80A40EA4 3C0F80A4 */  lui     $t7, %hi(func_80A4020C)    ## $t7 = 80A40000
/* 02938 80A40EA8 25EF020C */  addiu   $t7, $t7, %lo(func_80A4020C) ## $t7 = 80A4020C
/* 0293C 80A40EAC 11E20003 */  beq     $t7, $v0, .L80A40EBC       
/* 02940 80A40EB0 3C1880A4 */  lui     $t8, %hi(func_80A40B1C)    ## $t8 = 80A40000
/* 02944 80A40EB4 27180B1C */  addiu   $t8, $t8, %lo(func_80A40B1C) ## $t8 = 80A40B1C
/* 02948 80A40EB8 17020005 */  bne     $t8, $v0, .L80A40ED0       
.L80A40EBC:
/* 0294C 80A40EBC 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 02950 80A40EC0 26050220 */  addiu   $a1, $s0, 0x0220           ## $a1 = 00000220
/* 02954 80A40EC4 26060244 */  addiu   $a2, $s0, 0x0244           ## $a2 = 00000244
/* 02958 80A40EC8 0C00D3D5 */  jal     func_80034F54              
/* 0295C 80A40ECC 24070012 */  addiu   $a3, $zero, 0x0012         ## $a3 = 00000012
.L80A40ED0:
/* 02960 80A40ED0 0C28FC9D */  jal     func_80A3F274              
/* 02964 80A40ED4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02968 80A40ED8 861901E0 */  lh      $t9, 0x01E0($s0)           ## 000001E0
/* 0296C 80A40EDC 57200004 */  bnel    $t9, $zero, .L80A40EF0     
/* 02970 80A40EE0 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 02974 80A40EE4 0C00B638 */  jal     Actor_MoveForward
              
/* 02978 80A40EE8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0297C 80A40EEC 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
.L80A40EF0:
/* 02980 80A40EF0 24080004 */  addiu   $t0, $zero, 0x0004         ## $t0 = 00000004
/* 02984 80A40EF4 AFA80014 */  sw      $t0, 0x0014($sp)           
/* 02988 80A40EF8 44060000 */  mfc1    $a2, $f0                   
/* 0298C 80A40EFC 44070000 */  mfc1    $a3, $f0                   
/* 02990 80A40F00 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 02994 80A40F04 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 02998 80A40F08 0C00B92D */  jal     func_8002E4B4              
/* 0299C 80A40F0C E7A00010 */  swc1    $f0, 0x0010($sp)           
/* 029A0 80A40F10 0C28FC39 */  jal     func_80A3F0E4              
/* 029A4 80A40F14 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 029A8 80A40F18 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 029AC 80A40F1C 0C28FE42 */  jal     func_80A3F908              
/* 029B0 80A40F20 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 029B4 80A40F24 8E190190 */  lw      $t9, 0x0190($s0)           ## 00000190
/* 029B8 80A40F28 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 029BC 80A40F2C 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 029C0 80A40F30 0320F809 */  jalr    $ra, $t9                   
/* 029C4 80A40F34 00000000 */  nop
/* 029C8 80A40F38 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 029CC 80A40F3C 0C28FC18 */  jal     func_80A3F060              
/* 029D0 80A40F40 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 029D4 80A40F44 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 029D8 80A40F48 8FB0001C */  lw      $s0, 0x001C($sp)           
/* 029DC 80A40F4C 8FB10020 */  lw      $s1, 0x0020($sp)           
/* 029E0 80A40F50 03E00008 */  jr      $ra                        
/* 029E4 80A40F54 27BD0038 */  addiu   $sp, $sp, 0x0038           ## $sp = 00000000
