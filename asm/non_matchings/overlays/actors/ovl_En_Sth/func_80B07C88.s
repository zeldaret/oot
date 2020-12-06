glabel func_80B07C88
/* 00748 80B07C88 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 0074C 80B07C8C AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00750 80B07C90 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 00754 80B07C94 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00758 80B07C98 0C00BD04 */  jal     Actor_HasParent              
/* 0075C 80B07C9C AFA50024 */  sw      $a1, 0x0024($sp)           
/* 00760 80B07CA0 1040000C */  beq     $v0, $zero, .L80B07CD4     
/* 00764 80B07CA4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00768 80B07CA8 3C0580B0 */  lui     $a1, %hi(func_80B07AF4)    ## $a1 = 80B00000
/* 0076C 80B07CAC AE000118 */  sw      $zero, 0x0118($s0)         ## 00000118
/* 00770 80B07CB0 0C2C1D50 */  jal     func_80B07540              
/* 00774 80B07CB4 24A57AF4 */  addiu   $a1, $a1, %lo(func_80B07AF4) ## $a1 = 80B07AF4
/* 00778 80B07CB8 3C028016 */  lui     $v0, %hi(gSaveContext)
/* 0077C 80B07CBC 2442E660 */  addiu   $v0, %lo(gSaveContext)
/* 00780 80B07CC0 944E0EEE */  lhu     $t6, 0x0EEE($v0)           ## 8015F54E
/* 00784 80B07CC4 960F029C */  lhu     $t7, 0x029C($s0)           ## 0000029C
/* 00788 80B07CC8 01CFC025 */  or      $t8, $t6, $t7              ## $t8 = 00000000
/* 0078C 80B07CCC 10000004 */  beq     $zero, $zero, .L80B07CE0   
/* 00790 80B07CD0 A4580EEE */  sh      $t8, 0x0EEE($v0)           ## 8015F54E
.L80B07CD4:
/* 00794 80B07CD4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00798 80B07CD8 0C2C1EFB */  jal     func_80B07BEC              
/* 0079C 80B07CDC 8FA50024 */  lw      $a1, 0x0024($sp)           
.L80B07CE0:
/* 007A0 80B07CE0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 007A4 80B07CE4 0C2C1E32 */  jal     func_80B078C8              
/* 007A8 80B07CE8 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 007AC 80B07CEC 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 007B0 80B07CF0 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 007B4 80B07CF4 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 007B8 80B07CF8 03E00008 */  jr      $ra                        
/* 007BC 80B07CFC 00000000 */  nop
