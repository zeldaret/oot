glabel func_809F3CD0
/* 00A10 809F3CD0 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 00A14 809F3CD4 AFB00020 */  sw      $s0, 0x0020($sp)           
/* 00A18 809F3CD8 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00A1C 809F3CDC AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 00A20 809F3CE0 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 00A24 809F3CE4 AFA50034 */  sw      $a1, 0x0034($sp)           
/* 00A28 809F3CE8 0C02927F */  jal     SkelAnime_Update
              
/* 00A2C 809F3CEC AFA4002C */  sw      $a0, 0x002C($sp)           
/* 00A30 809F3CF0 8605008A */  lh      $a1, 0x008A($s0)           ## 0000008A
/* 00A34 809F3CF4 AFA00010 */  sw      $zero, 0x0010($sp)         
/* 00A38 809F3CF8 260400B6 */  addiu   $a0, $s0, 0x00B6           ## $a0 = 000000B6
/* 00A3C 809F3CFC 24060003 */  addiu   $a2, $zero, 0x0003         ## $a2 = 00000003
/* 00A40 809F3D00 0C01E1A7 */  jal     Math_SmoothStepToS
              
/* 00A44 809F3D04 24071388 */  addiu   $a3, $zero, 0x1388         ## $a3 = 00001388
/* 00A48 809F3D08 8FA4002C */  lw      $a0, 0x002C($sp)           
/* 00A4C 809F3D0C 0C0295B2 */  jal     Animation_OnFrame              
/* 00A50 809F3D10 24050000 */  addiu   $a1, $zero, 0x0000         ## $a1 = 00000000
/* 00A54 809F3D14 14400004 */  bne     $v0, $zero, .L809F3D28     
/* 00A58 809F3D18 8FA4002C */  lw      $a0, 0x002C($sp)           
/* 00A5C 809F3D1C 0C0295B2 */  jal     Animation_OnFrame              
/* 00A60 809F3D20 3C0540C0 */  lui     $a1, 0x40C0                ## $a1 = 40C00000
/* 00A64 809F3D24 10400003 */  beq     $v0, $zero, .L809F3D34     
.L809F3D28:
/* 00A68 809F3D28 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00A6C 809F3D2C 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 00A70 809F3D30 2405387F */  addiu   $a1, $zero, 0x387F         ## $a1 = 0000387F
.L809F3D34:
/* 00A74 809F3D34 860E00B6 */  lh      $t6, 0x00B6($s0)           ## 000000B6
/* 00A78 809F3D38 860F008A */  lh      $t7, 0x008A($s0)           ## 0000008A
/* 00A7C 809F3D3C 3C0141F0 */  lui     $at, 0x41F0                ## $at = 41F00000
/* 00A80 809F3D40 44813000 */  mtc1    $at, $f6                   ## $f6 = 30.00
/* 00A84 809F3D44 01CFC023 */  subu    $t8, $t6, $t7              
/* 00A88 809F3D48 44982000 */  mtc1    $t8, $f4                   ## $f4 = 0.00
/* 00A8C 809F3D4C 3C19809F */  lui     $t9, %hi(func_809F3D84)    ## $t9 = 809F0000
/* 00A90 809F3D50 27393D84 */  addiu   $t9, $t9, %lo(func_809F3D84) ## $t9 = 809F3D84
/* 00A94 809F3D54 46802020 */  cvt.s.w $f0, $f4                   
/* 00A98 809F3D58 46000005 */  abs.s   $f0, $f0                   
/* 00A9C 809F3D5C 4606003C */  c.lt.s  $f0, $f6                   
/* 00AA0 809F3D60 00000000 */  nop
/* 00AA4 809F3D64 45020003 */  bc1fl   .L809F3D74                 
/* 00AA8 809F3D68 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 00AAC 809F3D6C AE190214 */  sw      $t9, 0x0214($s0)           ## 00000214
/* 00AB0 809F3D70 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L809F3D74:
/* 00AB4 809F3D74 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 00AB8 809F3D78 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 00ABC 809F3D7C 03E00008 */  jr      $ra                        
/* 00AC0 809F3D80 00000000 */  nop
