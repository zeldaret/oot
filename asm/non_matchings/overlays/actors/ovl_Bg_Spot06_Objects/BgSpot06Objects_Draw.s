glabel BgSpot06Objects_Draw
/* 00FB8 808AF738 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00FBC 808AF73C AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00FC0 808AF740 8482001C */  lh      $v0, 0x001C($a0)           ## 0000001C
/* 00FC4 808AF744 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 00FC8 808AF748 00A03825 */  or      $a3, $a1, $zero            ## $a3 = 00000000
/* 00FCC 808AF74C 1040000C */  beq     $v0, $zero, .L808AF780     
/* 00FD0 808AF750 00E02025 */  or      $a0, $a3, $zero            ## $a0 = 00000000
/* 00FD4 808AF754 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 00FD8 808AF758 1041000E */  beq     $v0, $at, .L808AF794       
/* 00FDC 808AF75C 00E02025 */  or      $a0, $a3, $zero            ## $a0 = 00000000
/* 00FE0 808AF760 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 00FE4 808AF764 1041001A */  beq     $v0, $at, .L808AF7D0       
/* 00FE8 808AF768 00C02025 */  or      $a0, $a2, $zero            ## $a0 = 00000000
/* 00FEC 808AF76C 24010003 */  addiu   $at, $zero, 0x0003         ## $at = 00000003
/* 00FF0 808AF770 1041001B */  beq     $v0, $at, .L808AF7E0       
/* 00FF4 808AF774 00E02025 */  or      $a0, $a3, $zero            ## $a0 = 00000000
/* 00FF8 808AF778 1000001D */  beq     $zero, $zero, .L808AF7F0   
/* 00FFC 808AF77C 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L808AF780:
/* 01000 808AF780 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 01004 808AF784 0C00D498 */  jal     Gfx_DrawDListOpa
              
/* 01008 808AF788 24A50E10 */  addiu   $a1, $a1, 0x0E10           ## $a1 = 06000E10
/* 0100C 808AF78C 10000018 */  beq     $zero, $zero, .L808AF7F0   
/* 01010 808AF790 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L808AF794:
/* 01014 808AF794 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 01018 808AF798 24A52490 */  addiu   $a1, $a1, 0x2490           ## $a1 = 06002490
/* 0101C 808AF79C 0C00D498 */  jal     Gfx_DrawDListOpa
              
/* 01020 808AF7A0 AFA60018 */  sw      $a2, 0x0018($sp)           
/* 01024 808AF7A4 8FA60018 */  lw      $a2, 0x0018($sp)           
/* 01028 808AF7A8 3C0E808B */  lui     $t6, %hi(func_808AF1D8)    ## $t6 = 808B0000
/* 0102C 808AF7AC 25CEF1D8 */  addiu   $t6, $t6, %lo(func_808AF1D8) ## $t6 = 808AF1D8
/* 01030 808AF7B0 8CCF0164 */  lw      $t7, 0x0164($a2)           ## 00000164
/* 01034 808AF7B4 24040001 */  addiu   $a0, $zero, 0x0001         ## $a0 = 00000001
/* 01038 808AF7B8 55CF000D */  bnel    $t6, $t7, .L808AF7F0       
/* 0103C 808AF7BC 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 01040 808AF7C0 0C018A29 */  jal     func_800628A4              
/* 01044 808AF7C4 24C50170 */  addiu   $a1, $a2, 0x0170           ## $a1 = 00000170
/* 01048 808AF7C8 10000009 */  beq     $zero, $zero, .L808AF7F0   
/* 0104C 808AF7CC 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L808AF7D0:
/* 01050 808AF7D0 0C22BD49 */  jal     func_808AF524              
/* 01054 808AF7D4 00E02825 */  or      $a1, $a3, $zero            ## $a1 = 00000000
/* 01058 808AF7D8 10000005 */  beq     $zero, $zero, .L808AF7F0   
/* 0105C 808AF7DC 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L808AF7E0:
/* 01060 808AF7E0 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 01064 808AF7E4 0C00D498 */  jal     Gfx_DrawDListOpa
              
/* 01068 808AF7E8 24A51160 */  addiu   $a1, $a1, 0x1160           ## $a1 = 06001160
/* 0106C 808AF7EC 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L808AF7F0:
/* 01070 808AF7F0 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 01074 808AF7F4 03E00008 */  jr      $ra                        
/* 01078 808AF7F8 00000000 */  nop


