glabel func_80B06700
/* 01E70 80B06700 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 01E74 80B06704 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 01E78 80B06708 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 01E7C 80B0670C AFA50024 */  sw      $a1, 0x0024($sp)           
/* 01E80 80B06710 848203CC */  lh      $v0, 0x03CC($a0)           ## 000003CC
/* 01E84 80B06714 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 01E88 80B06718 10400009 */  beq     $v0, $zero, .L80B06740     
/* 01E8C 80B0671C 244EFFFF */  addiu   $t6, $v0, 0xFFFF           ## $t6 = FFFFFFFF
/* 01E90 80B06720 A48E03CC */  sh      $t6, 0x03CC($a0)           ## 000003CC
/* 01E94 80B06724 848F03CC */  lh      $t7, 0x03CC($a0)           ## 000003CC
/* 01E98 80B06728 3C0580B0 */  lui     $a1, %hi(D_80B07088)       ## $a1 = 80B00000
/* 01E9C 80B0672C 24A57088 */  addiu   $a1, $a1, %lo(D_80B07088)  ## $a1 = 80B07088
/* 01EA0 80B06730 15E00003 */  bne     $t7, $zero, .L80B06740     
/* 01EA4 80B06734 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 01EA8 80B06738 0C00D3B0 */  jal     func_80034EC0              
/* 01EAC 80B0673C 24060005 */  addiu   $a2, $zero, 0x0005         ## $a2 = 00000005
.L80B06740:
/* 01EB0 80B06740 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01EB4 80B06744 0C2C1807 */  jal     func_80B0601C              
/* 01EB8 80B06748 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 01EBC 80B0674C 14400009 */  bne     $v0, $zero, .L80B06774     
/* 01EC0 80B06750 00000000 */  nop
/* 01EC4 80B06754 0C2C13E8 */  jal     func_80B04FA0              
/* 01EC8 80B06758 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01ECC 80B0675C 3C0580B0 */  lui     $a1, %hi(func_80B067F8)    ## $a1 = 80B00000
/* 01ED0 80B06760 24A567F8 */  addiu   $a1, $a1, %lo(func_80B067F8) ## $a1 = 80B067F8
/* 01ED4 80B06764 0C2C1224 */  jal     func_80B04890              
/* 01ED8 80B06768 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01EDC 80B0676C 1000001E */  beq     $zero, $zero, .L80B067E8   
/* 01EE0 80B06770 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80B06774:
/* 01EE4 80B06774 0C2C183F */  jal     func_80B060FC              
/* 01EE8 80B06778 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01EEC 80B0677C 1040000B */  beq     $v0, $zero, .L80B067AC     
/* 01EF0 80B06780 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01EF4 80B06784 0C2C12AE */  jal     func_80B04AB8              
/* 01EF8 80B06788 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 01EFC 80B0678C 0C2C13F7 */  jal     func_80B04FDC              
/* 01F00 80B06790 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01F04 80B06794 3C0580B0 */  lui     $a1, %hi(func_80B065FC)    ## $a1 = 80B00000
/* 01F08 80B06798 24A565FC */  addiu   $a1, $a1, %lo(func_80B065FC) ## $a1 = 80B065FC
/* 01F0C 80B0679C 0C2C1224 */  jal     func_80B04890              
/* 01F10 80B067A0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01F14 80B067A4 10000010 */  beq     $zero, $zero, .L80B067E8   
/* 01F18 80B067A8 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80B067AC:
/* 01F1C 80B067AC 860203D2 */  lh      $v0, 0x03D2($s0)           ## 000003D2
/* 01F20 80B067B0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01F24 80B067B4 14400003 */  bne     $v0, $zero, .L80B067C4     
/* 01F28 80B067B8 2458FFFF */  addiu   $t8, $v0, 0xFFFF           ## $t8 = FFFFFFFF
/* 01F2C 80B067BC 10000003 */  beq     $zero, $zero, .L80B067CC   
/* 01F30 80B067C0 00001825 */  or      $v1, $zero, $zero          ## $v1 = 00000000
.L80B067C4:
/* 01F34 80B067C4 A61803D2 */  sh      $t8, 0x03D2($s0)           ## 000003D2
/* 01F38 80B067C8 860303D2 */  lh      $v1, 0x03D2($s0)           ## 000003D2
.L80B067CC:
/* 01F3C 80B067CC 54600006 */  bnel    $v1, $zero, .L80B067E8     
/* 01F40 80B067D0 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 01F44 80B067D4 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 01F48 80B067D8 24053868 */  addiu   $a1, $zero, 0x3868         ## $a1 = 00003868
/* 01F4C 80B067DC 24190003 */  addiu   $t9, $zero, 0x0003         ## $t9 = 00000003
/* 01F50 80B067E0 A61903D2 */  sh      $t9, 0x03D2($s0)           ## 000003D2
/* 01F54 80B067E4 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80B067E8:
/* 01F58 80B067E8 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 01F5C 80B067EC 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 01F60 80B067F0 03E00008 */  jr      $ra                        
/* 01F64 80B067F4 00000000 */  nop


