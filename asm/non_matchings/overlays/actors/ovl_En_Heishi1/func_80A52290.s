glabel func_80A52290
/* 00FC0 80A52290 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 00FC4 80A52294 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 00FC8 80A52298 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00FCC 80A5229C AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00FD0 80A522A0 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 00FD4 80A522A4 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 00FD8 80A522A8 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 00FDC 80A522AC 3C0142C8 */  lui     $at, 0x42C8                ## $at = 42C80000
/* 00FE0 80A522B0 44813000 */  mtc1    $at, $f6                   ## $f6 = 100.00
/* 00FE4 80A522B4 C6040090 */  lwc1    $f4, 0x0090($s0)           ## 00000090
/* 00FE8 80A522B8 8FA40024 */  lw      $a0, 0x0024($sp)           
/* 00FEC 80A522BC 2405702D */  addiu   $a1, $zero, 0x702D         ## $a1 = 0000702D
/* 00FF0 80A522C0 4606203C */  c.lt.s  $f4, $f6                   
/* 00FF4 80A522C4 00000000 */  nop
/* 00FF8 80A522C8 45020010 */  bc1fl   .L80A5230C                 
/* 00FFC 80A522CC 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 01000 80A522D0 0C042DA0 */  jal     func_8010B680              
/* 01004 80A522D4 02003025 */  or      $a2, $s0, $zero            ## $a2 = 00000000
/* 01008 80A522D8 0C01E221 */  jal     func_80078884              
/* 0100C 80A522DC 2404482C */  addiu   $a0, $zero, 0x482C         ## $a0 = 0000482C
/* 01010 80A522E0 3C0480A5 */  lui     $a0, %hi(D_80A52BD8)       ## $a0 = 80A50000
/* 01014 80A522E4 0C00084C */  jal     osSyncPrintf
              
/* 01018 80A522E8 24842BD8 */  addiu   $a0, $a0, %lo(D_80A52BD8)  ## $a0 = 80A52BD8
/* 0101C 80A522EC 8FA40024 */  lw      $a0, 0x0024($sp)           
/* 01020 80A522F0 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 01024 80A522F4 0C00B7D5 */  jal     func_8002DF54              
/* 01028 80A522F8 24060001 */  addiu   $a2, $zero, 0x0001         ## $a2 = 00000001
/* 0102C 80A522FC 3C0E80A5 */  lui     $t6, %hi(func_80A52098)    ## $t6 = 80A50000
/* 01030 80A52300 25CE2098 */  addiu   $t6, $t6, %lo(func_80A52098) ## $t6 = 80A52098
/* 01034 80A52304 AE0E025C */  sw      $t6, 0x025C($s0)           ## 0000025C
/* 01038 80A52308 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80A5230C:
/* 0103C 80A5230C 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 01040 80A52310 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 01044 80A52314 03E00008 */  jr      $ra                        
/* 01048 80A52318 00000000 */  nop


