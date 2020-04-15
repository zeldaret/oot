glabel func_80A04F94
/* 03364 80A04F94 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 03368 80A04F98 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 0336C 80A04F9C AFB00020 */  sw      $s0, 0x0020($sp)           
/* 03370 80A04FA0 AFA50034 */  sw      $a1, 0x0034($sp)           
/* 03374 80A04FA4 8CAF1C44 */  lw      $t7, 0x1C44($a1)           ## 00001C44
/* 03378 80A04FA8 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 0337C 80A04FAC 24180400 */  addiu   $t8, $zero, 0x0400         ## $t8 = 00000400
/* 03380 80A04FB0 AFAF002C */  sw      $t7, 0x002C($sp)           
/* 03384 80A04FB4 860502BC */  lh      $a1, 0x02BC($s0)           ## 000002BC
/* 03388 80A04FB8 AFB80010 */  sw      $t8, 0x0010($sp)           
/* 0338C 80A04FBC 248400B6 */  addiu   $a0, $a0, 0x00B6           ## $a0 = 000000B6
/* 03390 80A04FC0 24060005 */  addiu   $a2, $zero, 0x0005         ## $a2 = 00000005
/* 03394 80A04FC4 0C01E1A7 */  jal     Math_SmoothScaleMaxMinS
              
/* 03398 80A04FC8 24071000 */  addiu   $a3, $zero, 0x1000         ## $a3 = 00001000
/* 0339C 80A04FCC 961902BE */  lhu     $t9, 0x02BE($s0)           ## 000002BE
/* 033A0 80A04FD0 3C063D4C */  lui     $a2, 0x3D4C                ## $a2 = 3D4C0000
/* 033A4 80A04FD4 34C6CCCD */  ori     $a2, $a2, 0xCCCD           ## $a2 = 3D4CCCCD
/* 033A8 80A04FD8 27280001 */  addiu   $t0, $t9, 0x0001           ## $t0 = 00000001
/* 033AC 80A04FDC A60802BE */  sh      $t0, 0x02BE($s0)           ## 000002BE
/* 033B0 80A04FE0 260402A4 */  addiu   $a0, $s0, 0x02A4           ## $a0 = 000002A4
/* 033B4 80A04FE4 0C01DE80 */  jal     Math_ApproxF
              
/* 033B8 80A04FE8 3C053F80 */  lui     $a1, 0x3F80                ## $a1 = 3F800000
/* 033BC 80A04FEC C60002A4 */  lwc1    $f0, 0x02A4($s0)           ## 000002A4
/* 033C0 80A04FF0 8FA9002C */  lw      $t1, 0x002C($sp)           
/* 033C4 80A04FF4 3C014443 */  lui     $at, 0x4443                ## $at = 44430000
/* 033C8 80A04FF8 46000102 */  mul.s   $f4, $f0, $f0              
/* 033CC 80A04FFC 44814000 */  mtc1    $at, $f8                   ## $f8 = 780.00
/* 033D0 80A05000 C52600EC */  lwc1    $f6, 0x00EC($t1)           ## 000000EC
/* 033D4 80A05004 3C013F00 */  lui     $at, 0x3F00                ## $at = 3F000000
/* 033D8 80A05008 44818000 */  mtc1    $at, $f16                  ## $f16 = 0.50
/* 033DC 80A0500C 46083280 */  add.s   $f10, $f6, $f8             
/* 033E0 80A05010 3C073E4C */  lui     $a3, 0x3E4C                ## $a3 = 3E4C0000
/* 033E4 80A05014 44052000 */  mfc1    $a1, $f4                   
/* 033E8 80A05018 34E7CCCD */  ori     $a3, $a3, 0xCCCD           ## $a3 = 3E4CCCCD
/* 033EC 80A0501C 44065000 */  mfc1    $a2, $f10                  
/* 033F0 80A05020 8FA40034 */  lw      $a0, 0x0034($sp)           
/* 033F4 80A05024 0C01DCEA */  jal     func_800773A8              
/* 033F8 80A05028 E7B00010 */  swc1    $f16, 0x0010($sp)          
/* 033FC 80A0502C 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 03400 80A05030 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 03404 80A05034 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 03408 80A05038 03E00008 */  jr      $ra                        
/* 0340C 80A0503C 00000000 */  nop
