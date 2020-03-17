glabel func_808B4D9C
/* 0016C 808B4D9C 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 00170 808B4DA0 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 00174 808B4DA4 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00178 808B4DA8 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 0017C 808B4DAC AFA50024 */  sw      $a1, 0x0024($sp)           
/* 00180 808B4DB0 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 00184 808B4DB4 0C00B2D0 */  jal     Flags_GetSwitch
              
/* 00188 808B4DB8 86050156 */  lh      $a1, 0x0156($s0)           ## 00000156
/* 0018C 808B4DBC 10400006 */  beq     $v0, $zero, .L808B4DD8     
/* 00190 808B4DC0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00194 808B4DC4 3C04808B */  lui     $a0, %hi(D_808B60A0)       ## $a0 = 808B0000
/* 00198 808B4DC8 0C00084C */  jal     osSyncPrintf
              
/* 0019C 808B4DCC 248460A0 */  addiu   $a0, $a0, %lo(D_808B60A0)  ## $a0 = 808B60A0
/* 001A0 808B4DD0 1000001C */  beq     $zero, $zero, .L808B4E44   
/* 001A4 808B4DD4 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L808B4DD8:
/* 001A8 808B4DD8 3C05808B */  lui     $a1, %hi(D_808B603C)       ## $a1 = 808B0000
/* 001AC 808B4DDC 0C01E037 */  jal     Actor_ProcessInitChain
              
/* 001B0 808B4DE0 24A5603C */  addiu   $a1, $a1, %lo(D_808B603C)  ## $a1 = 808B603C
/* 001B4 808B4DE4 3C053ECC */  lui     $a1, 0x3ECC                ## $a1 = 3ECC0000
/* 001B8 808B4DE8 34A5CCCD */  ori     $a1, $a1, 0xCCCD           ## $a1 = 3ECCCCCD
/* 001BC 808B4DEC 0C00B58B */  jal     Actor_SetScale
              
/* 001C0 808B4DF0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 001C4 808B4DF4 240E00FF */  addiu   $t6, $zero, 0x00FF         ## $t6 = 000000FF
/* 001C8 808B4DF8 A20E00AE */  sb      $t6, 0x00AE($s0)           ## 000000AE
/* 001CC 808B4DFC 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 001D0 808B4E00 0C22D313 */  jal     func_808B4C4C              
/* 001D4 808B4E04 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 001D8 808B4E08 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 001DC 808B4E0C 0C22D341 */  jal     func_808B4D04              
/* 001E0 808B4E10 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 001E4 808B4E14 0C01DE1C */  jal     Math_Sins
              ## sins?
/* 001E8 808B4E18 860400B6 */  lh      $a0, 0x00B6($s0)           ## 000000B6
/* 001EC 808B4E1C E600015C */  swc1    $f0, 0x015C($s0)           ## 0000015C
/* 001F0 808B4E20 0C01DE0D */  jal     Math_Coss
              ## coss?
/* 001F4 808B4E24 860400B6 */  lh      $a0, 0x00B6($s0)           ## 000000B6
/* 001F8 808B4E28 3C0F0600 */  lui     $t7, 0x0600                ## $t7 = 06000000
/* 001FC 808B4E2C 25EF0C20 */  addiu   $t7, $t7, 0x0C20           ## $t7 = 06000C20
/* 00200 808B4E30 E6000160 */  swc1    $f0, 0x0160($s0)           ## 00000160
/* 00204 808B4E34 AE0F0150 */  sw      $t7, 0x0150($s0)           ## 00000150
/* 00208 808B4E38 0C22D64D */  jal     func_808B5934              
/* 0020C 808B4E3C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00210 808B4E40 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
.L808B4E44:
/* 00214 808B4E44 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00218 808B4E48 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 0021C 808B4E4C 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 00220 808B4E50 03E00008 */  jr      $ra                        
/* 00224 808B4E54 00000000 */  nop


