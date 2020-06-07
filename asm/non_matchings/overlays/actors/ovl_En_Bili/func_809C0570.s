glabel func_809C0570
/* 00CD0 809C0570 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 00CD4 809C0574 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 00CD8 809C0578 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00CDC 809C057C AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00CE0 809C0580 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 00CE4 809C0584 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 00CE8 809C0588 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 00CEC 809C058C 26040032 */  addiu   $a0, $s0, 0x0032           ## $a0 = 00000032
/* 00CF0 809C0590 8605008A */  lh      $a1, 0x008A($s0)           ## 0000008A
/* 00CF4 809C0594 24060002 */  addiu   $a2, $zero, 0x0002         ## $a2 = 00000002
/* 00CF8 809C0598 0C01E1EF */  jal     Math_SmoothScaleMaxS
              
/* 00CFC 809C059C 2407071C */  addiu   $a3, $zero, 0x071C         ## $a3 = 0000071C
/* 00D00 809C05A0 86020196 */  lh      $v0, 0x0196($s0)           ## 00000196
/* 00D04 809C05A4 10400002 */  beq     $v0, $zero, .L809C05B0     
/* 00D08 809C05A8 244EFFFF */  addiu   $t6, $v0, 0xFFFF           ## $t6 = FFFFFFFF
/* 00D0C 809C05AC A60E0196 */  sh      $t6, 0x0196($s0)           ## 00000196
.L809C05B0:
/* 00D10 809C05B0 0C270023 */  jal     func_809C008C              
/* 00D14 809C05B4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00D18 809C05B8 860F0196 */  lh      $t7, 0x0196($s0)           ## 00000196
/* 00D1C 809C05BC 3C014348 */  lui     $at, 0x4348                ## $at = 43480000
/* 00D20 809C05C0 44812000 */  mtc1    $at, $f4                   ## $f4 = 200.00
/* 00D24 809C05C4 15E00002 */  bne     $t7, $zero, .L809C05D0     
/* 00D28 809C05C8 24180020 */  addiu   $t8, $zero, 0x0020         ## $t8 = 00000020
/* 00D2C 809C05CC A6180196 */  sh      $t8, 0x0196($s0)           ## 00000196
.L809C05D0:
/* 00D30 809C05D0 C6060090 */  lwc1    $f6, 0x0090($s0)           ## 00000090
/* 00D34 809C05D4 4606203C */  c.lt.s  $f4, $f6                   
/* 00D38 809C05D8 00000000 */  nop
/* 00D3C 809C05DC 45020004 */  bc1fl   .L809C05F0                 
/* 00D40 809C05E0 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00D44 809C05E4 0C26FE6F */  jal     func_809BF9BC              
/* 00D48 809C05E8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00D4C 809C05EC 8FBF001C */  lw      $ra, 0x001C($sp)           
.L809C05F0:
/* 00D50 809C05F0 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 00D54 809C05F4 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 00D58 809C05F8 03E00008 */  jr      $ra                        
/* 00D5C 809C05FC 00000000 */  nop
