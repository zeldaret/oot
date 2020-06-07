glabel func_80A023A4
/* 00774 80A023A4 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00778 80A023A8 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 0077C 80A023AC 10810007 */  beq     $a0, $at, .L80A023CC       
/* 00780 80A023B0 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00784 80A023B4 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 00788 80A023B8 5081000D */  beql    $a0, $at, .L80A023F0       
/* 0078C 80A023BC 3C01437F */  lui     $at, 0x437F                ## $at = 437F0000
/* 00790 80A023C0 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 00794 80A023C4 1000000F */  beq     $zero, $zero, .L80A02404   
/* 00798 80A023C8 00000000 */  nop
.L80A023CC:
/* 0079C 80A023CC 3C01425C */  lui     $at, 0x425C                ## $at = 425C0000
/* 007A0 80A023D0 44816000 */  mtc1    $at, $f12                  ## $f12 = 55.00
/* 007A4 80A023D4 0C00CFBE */  jal     Math_Rand_ZeroFloat
              
/* 007A8 80A023D8 00000000 */  nop
/* 007AC 80A023DC 3C014348 */  lui     $at, 0x4348                ## $at = 43480000
/* 007B0 80A023E0 44812000 */  mtc1    $at, $f4                   ## $f4 = 200.00
/* 007B4 80A023E4 10000007 */  beq     $zero, $zero, .L80A02404   
/* 007B8 80A023E8 46040000 */  add.s   $f0, $f0, $f4              
/* 007BC 80A023EC 3C01437F */  lui     $at, 0x437F                ## $at = 437F0000
.L80A023F0:
/* 007C0 80A023F0 44816000 */  mtc1    $at, $f12                  ## $f12 = 255.00
/* 007C4 80A023F4 0C00CFBE */  jal     Math_Rand_ZeroFloat
              
/* 007C8 80A023F8 00000000 */  nop
/* 007CC 80A023FC 10000002 */  beq     $zero, $zero, .L80A02408   
/* 007D0 80A02400 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80A02404:
/* 007D4 80A02404 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80A02408:
/* 007D8 80A02408 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 007DC 80A0240C 03E00008 */  jr      $ra                        
/* 007E0 80A02410 00000000 */  nop
