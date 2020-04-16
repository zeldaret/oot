glabel func_80A55BD4
/* 00594 80A55BD4 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 00598 80A55BD8 AFB00020 */  sw      $s0, 0x0020($sp)           
/* 0059C 80A55BDC 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 005A0 80A55BE0 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 005A4 80A55BE4 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 005A8 80A55BE8 AFA50034 */  sw      $a1, 0x0034($sp)           
/* 005AC 80A55BEC 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 005B0 80A55BF0 AFA4002C */  sw      $a0, 0x002C($sp)           
/* 005B4 80A55BF4 8FA4002C */  lw      $a0, 0x002C($sp)           
/* 005B8 80A55BF8 0C0295B2 */  jal     func_800A56C8              
/* 005BC 80A55BFC 3C053F80 */  lui     $a1, 0x3F80                ## $a1 = 3F800000
/* 005C0 80A55C00 14400004 */  bne     $v0, $zero, .L80A55C14     
/* 005C4 80A55C04 8FA4002C */  lw      $a0, 0x002C($sp)           
/* 005C8 80A55C08 0C0295B2 */  jal     func_800A56C8              
/* 005CC 80A55C0C 3C054188 */  lui     $a1, 0x4188                ## $a1 = 41880000
/* 005D0 80A55C10 10400003 */  beq     $v0, $zero, .L80A55C20     
.L80A55C14:
/* 005D4 80A55C14 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 005D8 80A55C18 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 005DC 80A55C1C 240528F0 */  addiu   $a1, $zero, 0x28F0         ## $a1 = 000028F0
.L80A55C20:
/* 005E0 80A55C20 860E0272 */  lh      $t6, 0x0272($s0)           ## 00000272
/* 005E4 80A55C24 26040032 */  addiu   $a0, $s0, 0x0032           ## $a0 = 00000032
/* 005E8 80A55C28 24060005 */  addiu   $a2, $zero, 0x0005         ## $a2 = 00000005
/* 005EC 80A55C2C 15C00007 */  bne     $t6, $zero, .L80A55C4C     
/* 005F0 80A55C30 24070BB8 */  addiu   $a3, $zero, 0x0BB8         ## $a3 = 00000BB8
/* 005F4 80A55C34 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 005F8 80A55C38 3C0F80A5 */  lui     $t7, %hi(func_80A55C6C)    ## $t7 = 80A50000
/* 005FC 80A55C3C 25EF5C6C */  addiu   $t7, $t7, %lo(func_80A55C6C) ## $t7 = 80A55C6C
/* 00600 80A55C40 AE0F025C */  sw      $t7, 0x025C($s0)           ## 0000025C
/* 00604 80A55C44 10000004 */  beq     $zero, $zero, .L80A55C58   
/* 00608 80A55C48 E6040068 */  swc1    $f4, 0x0068($s0)           ## 00000068
.L80A55C4C:
/* 0060C 80A55C4C 8605008A */  lh      $a1, 0x008A($s0)           ## 0000008A
/* 00610 80A55C50 0C01E1A7 */  jal     Math_SmoothScaleMaxMinS
              
/* 00614 80A55C54 AFA00010 */  sw      $zero, 0x0010($sp)         
.L80A55C58:
/* 00618 80A55C58 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 0061C 80A55C5C 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 00620 80A55C60 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 00624 80A55C64 03E00008 */  jr      $ra                        
/* 00628 80A55C68 00000000 */  nop
