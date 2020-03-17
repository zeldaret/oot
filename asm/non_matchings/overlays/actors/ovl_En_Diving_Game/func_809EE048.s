glabel func_809EE048
/* 007D8 809EE048 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 007DC 809EE04C AFB10018 */  sw      $s1, 0x0018($sp)           
/* 007E0 809EE050 00808825 */  or      $s1, $a0, $zero            ## $s1 = 00000000
/* 007E4 809EE054 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 007E8 809EE058 AFB00014 */  sw      $s0, 0x0014($sp)           
/* 007EC 809EE05C 00A08025 */  or      $s0, $a1, $zero            ## $s0 = 00000000
/* 007F0 809EE060 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 007F4 809EE064 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 007F8 809EE068 0C042F6F */  jal     func_8010BDBC              
/* 007FC 809EE06C 260420D8 */  addiu   $a0, $s0, 0x20D8           ## $a0 = 000020D8
/* 00800 809EE070 862E0292 */  lh      $t6, 0x0292($s1)           ## 00000292
/* 00804 809EE074 55C2001D */  bnel    $t6, $v0, .L809EE0EC       
/* 00808 809EE078 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 0080C 809EE07C 0C041AF2 */  jal     func_80106BC8              
/* 00810 809EE080 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00814 809EE084 50400019 */  beql    $v0, $zero, .L809EE0EC     
/* 00818 809EE088 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 0081C 809EE08C 862F029C */  lh      $t7, 0x029C($s1)           ## 0000029C
/* 00820 809EE090 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 00824 809EE094 00300821 */  addu    $at, $at, $s0              
/* 00828 809EE098 15E0000B */  bne     $t7, $zero, .L809EE0C8     
/* 0082C 809EE09C 24190037 */  addiu   $t9, $zero, 0x0037         ## $t9 = 00000037
/* 00830 809EE0A0 0C041B33 */  jal     func_80106CCC              
/* 00834 809EE0A4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00838 809EE0A8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0083C 809EE0AC 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 00840 809EE0B0 0C00B7D5 */  jal     func_8002DF54              
/* 00844 809EE0B4 24060007 */  addiu   $a2, $zero, 0x0007         ## $a2 = 00000007
/* 00848 809EE0B8 3C18809F */  lui     $t8, %hi(func_809EDCB0)    ## $t8 = 809F0000
/* 0084C 809EE0BC 2718DCB0 */  addiu   $t8, $t8, %lo(func_809EDCB0) ## $t8 = 809EDCB0
/* 00850 809EE0C0 10000009 */  beq     $zero, $zero, .L809EE0E8   
/* 00854 809EE0C4 AE380280 */  sw      $t8, 0x0280($s1)           ## 00000280
.L809EE0C8:
/* 00858 809EE0C8 A03903DC */  sb      $t9, 0x03DC($at)           ## 000003DC
/* 0085C 809EE0CC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00860 809EE0D0 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 00864 809EE0D4 0C00B7D5 */  jal     func_8002DF54              
/* 00868 809EE0D8 24060008 */  addiu   $a2, $zero, 0x0008         ## $a2 = 00000008
/* 0086C 809EE0DC 3C08809F */  lui     $t0, %hi(func_809EE0FC)    ## $t0 = 809F0000
/* 00870 809EE0E0 2508E0FC */  addiu   $t0, $t0, %lo(func_809EE0FC) ## $t0 = 809EE0FC
/* 00874 809EE0E4 AE280280 */  sw      $t0, 0x0280($s1)           ## 00000280
.L809EE0E8:
/* 00878 809EE0E8 8FBF001C */  lw      $ra, 0x001C($sp)           
.L809EE0EC:
/* 0087C 809EE0EC 8FB00014 */  lw      $s0, 0x0014($sp)           
/* 00880 809EE0F0 8FB10018 */  lw      $s1, 0x0018($sp)           
/* 00884 809EE0F4 03E00008 */  jr      $ra                        
/* 00888 809EE0F8 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000


