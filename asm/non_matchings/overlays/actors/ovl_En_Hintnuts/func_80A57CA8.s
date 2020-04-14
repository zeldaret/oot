glabel func_80A57CA8
/* 00AA8 80A57CA8 27BDFFB8 */  addiu   $sp, $sp, 0xFFB8           ## $sp = FFFFFFB8
/* 00AAC 80A57CAC AFB00030 */  sw      $s0, 0x0030($sp)           
/* 00AB0 80A57CB0 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00AB4 80A57CB4 AFBF0034 */  sw      $ra, 0x0034($sp)           
/* 00AB8 80A57CB8 AFA5004C */  sw      $a1, 0x004C($sp)           
/* 00ABC 80A57CBC 8605008A */  lh      $a1, 0x008A($s0)           ## 0000008A
/* 00AC0 80A57CC0 248400B6 */  addiu   $a0, $a0, 0x00B6           ## $a0 = 000000B6
/* 00AC4 80A57CC4 24060002 */  addiu   $a2, $zero, 0x0002         ## $a2 = 00000002
/* 00AC8 80A57CC8 0C01E1EF */  jal     Math_SmoothScaleMaxS
              
/* 00ACC 80A57CCC 24070E38 */  addiu   $a3, $zero, 0x0E38         ## $a3 = 00000E38
/* 00AD0 80A57CD0 3C0142F0 */  lui     $at, 0x42F0                ## $at = 42F00000
/* 00AD4 80A57CD4 44813000 */  mtc1    $at, $f6                   ## $f6 = 120.00
/* 00AD8 80A57CD8 C6040090 */  lwc1    $f4, 0x0090($s0)           ## 00000090
/* 00ADC 80A57CDC 2604014C */  addiu   $a0, $s0, 0x014C           ## $a0 = 0000014C
/* 00AE0 80A57CE0 4606203C */  c.lt.s  $f4, $f6                   
/* 00AE4 80A57CE4 00000000 */  nop
/* 00AE8 80A57CE8 45000005 */  bc1f    .L80A57D00                 
/* 00AEC 80A57CEC 00000000 */  nop
/* 00AF0 80A57CF0 0C295D70 */  jal     func_80A575C0              
/* 00AF4 80A57CF4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00AF8 80A57CF8 10000036 */  beq     $zero, $zero, .L80A57DD4   
/* 00AFC 80A57CFC 8FBF0034 */  lw      $ra, 0x0034($sp)           
.L80A57D00:
/* 00B00 80A57D00 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 00B04 80A57D04 AFA40038 */  sw      $a0, 0x0038($sp)           
/* 00B08 80A57D08 10400005 */  beq     $v0, $zero, .L80A57D20     
/* 00B0C 80A57D0C 8FA40038 */  lw      $a0, 0x0038($sp)           
/* 00B10 80A57D10 0C295D56 */  jal     func_80A57558              
/* 00B14 80A57D14 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00B18 80A57D18 1000002E */  beq     $zero, $zero, .L80A57DD4   
/* 00B1C 80A57D1C 8FBF0034 */  lw      $ra, 0x0034($sp)           
.L80A57D20:
/* 00B20 80A57D20 0C0295B2 */  jal     func_800A56C8              
/* 00B24 80A57D24 3C0540C0 */  lui     $a1, 0x40C0                ## $a1 = 40C00000
/* 00B28 80A57D28 5040002A */  beql    $v0, $zero, .L80A57DD4     
/* 00B2C 80A57D2C 8FBF0034 */  lw      $ra, 0x0034($sp)           
/* 00B30 80A57D30 0C01DE1C */  jal     Math_Sins
              ## sins?
/* 00B34 80A57D34 860400B6 */  lh      $a0, 0x00B6($s0)           ## 000000B6
/* 00B38 80A57D38 3C0141B8 */  lui     $at, 0x41B8                ## $at = 41B80000
/* 00B3C 80A57D3C 44814000 */  mtc1    $at, $f8                   ## $f8 = 23.00
/* 00B40 80A57D40 C6100024 */  lwc1    $f16, 0x0024($s0)          ## 00000024
/* 00B44 80A57D44 3C014140 */  lui     $at, 0x4140                ## $at = 41400000
/* 00B48 80A57D48 46080282 */  mul.s   $f10, $f0, $f8             
/* 00B4C 80A57D4C 44813000 */  mtc1    $at, $f6                   ## $f6 = 12.00
/* 00B50 80A57D50 46105480 */  add.s   $f18, $f10, $f16           
/* 00B54 80A57D54 E7B2003C */  swc1    $f18, 0x003C($sp)          
/* 00B58 80A57D58 C6040028 */  lwc1    $f4, 0x0028($s0)           ## 00000028
/* 00B5C 80A57D5C 46062200 */  add.s   $f8, $f4, $f6              
/* 00B60 80A57D60 E7A80040 */  swc1    $f8, 0x0040($sp)           
/* 00B64 80A57D64 0C01DE0D */  jal     Math_Coss
              ## coss?
/* 00B68 80A57D68 860400B6 */  lh      $a0, 0x00B6($s0)           ## 000000B6
/* 00B6C 80A57D6C 3C0141B8 */  lui     $at, 0x41B8                ## $at = 41B80000
/* 00B70 80A57D70 44815000 */  mtc1    $at, $f10                  ## $f10 = 23.00
/* 00B74 80A57D74 C612002C */  lwc1    $f18, 0x002C($s0)          ## 0000002C
/* 00B78 80A57D78 C7A40040 */  lwc1    $f4, 0x0040($sp)           
/* 00B7C 80A57D7C 460A0402 */  mul.s   $f16, $f0, $f10            
/* 00B80 80A57D80 8FA5004C */  lw      $a1, 0x004C($sp)           
/* 00B84 80A57D84 E7A40010 */  swc1    $f4, 0x0010($sp)           
/* 00B88 80A57D88 24190001 */  addiu   $t9, $zero, 0x0001         ## $t9 = 00000001
/* 00B8C 80A57D8C 24060193 */  addiu   $a2, $zero, 0x0193         ## $a2 = 00000193
/* 00B90 80A57D90 8FA7003C */  lw      $a3, 0x003C($sp)           
/* 00B94 80A57D94 24A41C24 */  addiu   $a0, $a1, 0x1C24           ## $a0 = 00001C24
/* 00B98 80A57D98 46128080 */  add.s   $f2, $f16, $f18            
/* 00B9C 80A57D9C E7A20014 */  swc1    $f2, 0x0014($sp)           
/* 00BA0 80A57DA0 860E00B4 */  lh      $t6, 0x00B4($s0)           ## 000000B4
/* 00BA4 80A57DA4 AFAE0018 */  sw      $t6, 0x0018($sp)           
/* 00BA8 80A57DA8 860F00B6 */  lh      $t7, 0x00B6($s0)           ## 000000B6
/* 00BAC 80A57DAC AFAF001C */  sw      $t7, 0x001C($sp)           
/* 00BB0 80A57DB0 861800B8 */  lh      $t8, 0x00B8($s0)           ## 000000B8
/* 00BB4 80A57DB4 AFB90024 */  sw      $t9, 0x0024($sp)           
/* 00BB8 80A57DB8 0C00C7D4 */  jal     Actor_Spawn
              ## ActorSpawn
/* 00BBC 80A57DBC AFB80020 */  sw      $t8, 0x0020($sp)           
/* 00BC0 80A57DC0 10400003 */  beq     $v0, $zero, .L80A57DD0     
/* 00BC4 80A57DC4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00BC8 80A57DC8 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 00BCC 80A57DCC 2405387E */  addiu   $a1, $zero, 0x387E         ## $a1 = 0000387E
.L80A57DD0:
/* 00BD0 80A57DD0 8FBF0034 */  lw      $ra, 0x0034($sp)           
.L80A57DD4:
/* 00BD4 80A57DD4 8FB00030 */  lw      $s0, 0x0030($sp)           
/* 00BD8 80A57DD8 27BD0048 */  addiu   $sp, $sp, 0x0048           ## $sp = 00000000
/* 00BDC 80A57DDC 03E00008 */  jr      $ra                        
/* 00BE0 80A57DE0 00000000 */  nop
