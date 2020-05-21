glabel EnSb_Update
/* 00EBC 80AF86AC 27BDFFC8 */  addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
/* 00EC0 80AF86B0 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 00EC4 80AF86B4 AFB10020 */  sw      $s1, 0x0020($sp)           
/* 00EC8 80AF86B8 AFB0001C */  sw      $s0, 0x001C($sp)           
/* 00ECC 80AF86BC 848E01FC */  lh      $t6, 0x01FC($a0)           ## 000001FC
/* 00ED0 80AF86C0 00A08825 */  or      $s1, $a1, $zero            ## $s1 = 00000000
/* 00ED4 80AF86C4 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00ED8 80AF86C8 11C00023 */  beq     $t6, $zero, .L80AF8758     
/* 00EDC 80AF86CC 3C0541A0 */  lui     $a1, 0x41A0                ## $a1 = 41A00000
/* 00EE0 80AF86D0 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 00EE4 80AF86D4 C4860084 */  lwc1    $f6, 0x0084($a0)           ## 00000084
/* 00EE8 80AF86D8 240F0004 */  addiu   $t7, $zero, 0x0004         ## $t7 = 00000004
/* 00EEC 80AF86DC 24180001 */  addiu   $t8, $zero, 0x0001         ## $t8 = 00000001
/* 00EF0 80AF86E0 4606203C */  c.lt.s  $f4, $f6                   
/* 00EF4 80AF86E4 260501E0 */  addiu   $a1, $s0, 0x01E0           ## $a1 = 000001E0
/* 00EF8 80AF86E8 02203025 */  or      $a2, $s1, $zero            ## $a2 = 00000000
/* 00EFC 80AF86EC 45020004 */  bc1fl   .L80AF8700                 
/* 00F00 80AF86F0 A618001C */  sh      $t8, 0x001C($s0)           ## 0000001C
/* 00F04 80AF86F4 10000002 */  beq     $zero, $zero, .L80AF8700   
/* 00F08 80AF86F8 A48F001C */  sh      $t7, 0x001C($a0)           ## 0000001C
/* 00F0C 80AF86FC A618001C */  sh      $t8, 0x001C($s0)           ## 0000001C
.L80AF8700:
/* 00F10 80AF8700 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00F14 80AF8704 0C00CC17 */  jal     func_8003305C              
/* 00F18 80AF8708 8607001C */  lh      $a3, 0x001C($s0)           ## 0000001C
/* 00F1C 80AF870C 50400042 */  beql    $v0, $zero, .L80AF8818     
/* 00F20 80AF8710 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 00F24 80AF8714 92190204 */  lbu     $t9, 0x0204($s0)           ## 00000204
/* 00F28 80AF8718 26060024 */  addiu   $a2, $s0, 0x0024           ## $a2 = 00000024
/* 00F2C 80AF871C 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00F30 80AF8720 17200007 */  bne     $t9, $zero, .L80AF8740     
/* 00F34 80AF8724 26050024 */  addiu   $a1, $s0, 0x0024           ## $a1 = 00000024
/* 00F38 80AF8728 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00F3C 80AF872C 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 00F40 80AF8730 0C007E50 */  jal     Item_DropCollectibleRandom
              
/* 00F44 80AF8734 24070080 */  addiu   $a3, $zero, 0x0080         ## $a3 = 00000080
/* 00F48 80AF8738 10000003 */  beq     $zero, $zero, .L80AF8748   
/* 00F4C 80AF873C 00000000 */  nop
.L80AF8740:
/* 00F50 80AF8740 0C007D52 */  jal     Item_DropCollectible
              
/* 00F54 80AF8744 24060008 */  addiu   $a2, $zero, 0x0008         ## $a2 = 00000008
.L80AF8748:
/* 00F58 80AF8748 0C00B55C */  jal     Actor_Kill
              
/* 00F5C 80AF874C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00F60 80AF8750 10000031 */  beq     $zero, $zero, .L80AF8818   
/* 00F64 80AF8754 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80AF8758:
/* 00F68 80AF8758 0C00B56E */  jal     Actor_SetHeight
              
/* 00F6C 80AF875C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00F70 80AF8760 3C053BC4 */  lui     $a1, 0x3BC4                ## $a1 = 3BC40000
/* 00F74 80AF8764 34A59BA6 */  ori     $a1, $a1, 0x9BA6           ## $a1 = 3BC49BA6
/* 00F78 80AF8768 0C00B58B */  jal     Actor_SetScale
              
/* 00F7C 80AF876C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00F80 80AF8770 0C00B638 */  jal     Actor_MoveForward
              
/* 00F84 80AF8774 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00F88 80AF8778 8E190190 */  lw      $t9, 0x0190($s0)           ## 00000190
/* 00F8C 80AF877C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00F90 80AF8780 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 00F94 80AF8784 0320F809 */  jalr    $ra, $t9                   
/* 00F98 80AF8788 00000000 */  nop
/* 00F9C 80AF878C 3C0141A0 */  lui     $at, 0x41A0                ## $at = 41A00000
/* 00FA0 80AF8790 44810000 */  mtc1    $at, $f0                   ## $f0 = 20.00
/* 00FA4 80AF8794 24080005 */  addiu   $t0, $zero, 0x0005         ## $t0 = 00000005
/* 00FA8 80AF8798 AFA80014 */  sw      $t0, 0x0014($sp)           
/* 00FAC 80AF879C 44060000 */  mfc1    $a2, $f0                   
/* 00FB0 80AF87A0 44070000 */  mfc1    $a3, $f0                   
/* 00FB4 80AF87A4 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00FB8 80AF87A8 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 00FBC 80AF87AC 0C00B92D */  jal     func_8002E4B4              
/* 00FC0 80AF87B0 E7A00010 */  swc1    $f0, 0x0010($sp)           
/* 00FC4 80AF87B4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00FC8 80AF87B8 0C2BE0F5 */  jal     func_80AF83D4              
/* 00FCC 80AF87BC 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 00FD0 80AF87C0 26050194 */  addiu   $a1, $s0, 0x0194           ## $a1 = 00000194
/* 00FD4 80AF87C4 AFA50028 */  sw      $a1, 0x0028($sp)           
/* 00FD8 80AF87C8 0C0189B7 */  jal     Collider_CylinderUpdate
              
/* 00FDC 80AF87CC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00FE0 80AF87D0 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 00FE4 80AF87D4 34211E60 */  ori     $at, $at, 0x1E60           ## $at = 00011E60
/* 00FE8 80AF87D8 02212821 */  addu    $a1, $s1, $at              
/* 00FEC 80AF87DC AFA5002C */  sw      $a1, 0x002C($sp)           
/* 00FF0 80AF87E0 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00FF4 80AF87E4 0C0175E7 */  jal     CollisionCheck_SetAT
              ## CollisionCheck_setAT
/* 00FF8 80AF87E8 8FA60028 */  lw      $a2, 0x0028($sp)           
/* 00FFC 80AF87EC 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 01000 80AF87F0 8FA5002C */  lw      $a1, 0x002C($sp)           
/* 01004 80AF87F4 0C01767D */  jal     CollisionCheck_SetAC
              ## CollisionCheck_setAC
/* 01008 80AF87F8 8FA60028 */  lw      $a2, 0x0028($sp)           
/* 0100C 80AF87FC 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 01010 80AF8800 8FA5002C */  lw      $a1, 0x002C($sp)           
/* 01014 80AF8804 0C017713 */  jal     CollisionCheck_SetOC
              ## CollisionCheck_setOT
/* 01018 80AF8808 8FA60028 */  lw      $a2, 0x0028($sp)           
/* 0101C 80AF880C 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 01020 80AF8810 2604014C */  addiu   $a0, $s0, 0x014C           ## $a0 = 0000014C
/* 01024 80AF8814 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80AF8818:
/* 01028 80AF8818 8FB0001C */  lw      $s0, 0x001C($sp)           
/* 0102C 80AF881C 8FB10020 */  lw      $s1, 0x0020($sp)           
/* 01030 80AF8820 03E00008 */  jr      $ra                        
/* 01034 80AF8824 27BD0038 */  addiu   $sp, $sp, 0x0038           ## $sp = 00000000
