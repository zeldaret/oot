glabel func_80ADF5E0
/* 01890 80ADF5E0 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 01894 80ADF5E4 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 01898 80ADF5E8 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 0189C 80ADF5EC AFBF001C */  sw      $ra, 0x001C($sp)           
/* 018A0 80ADF5F0 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 018A4 80ADF5F4 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 018A8 80ADF5F8 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 018AC 80ADF5FC 26040032 */  addiu   $a0, $s0, 0x0032           ## $a0 = 00000032
/* 018B0 80ADF600 8605019C */  lh      $a1, 0x019C($s0)           ## 0000019C
/* 018B4 80ADF604 0C01DE2B */  jal     Math_ApproxUpdateScaledS
              
/* 018B8 80ADF608 2406071C */  addiu   $a2, $zero, 0x071C         ## $a2 = 0000071C
/* 018BC 80ADF60C 50400004 */  beql    $v0, $zero, .L80ADF620     
/* 018C0 80ADF610 3C014348 */  lui     $at, 0x4348                ## $at = 43480000
/* 018C4 80ADF614 0C2B785B */  jal     func_80ADE16C              
/* 018C8 80ADF618 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 018CC 80ADF61C 3C014348 */  lui     $at, 0x4348                ## $at = 43480000
.L80ADF620:
/* 018D0 80ADF620 44813000 */  mtc1    $at, $f6                   ## $f6 = 200.00
/* 018D4 80ADF624 C6040090 */  lwc1    $f4, 0x0090($s0)           ## 00000090
/* 018D8 80ADF628 4606203C */  c.lt.s  $f4, $f6                   
/* 018DC 80ADF62C 00000000 */  nop
/* 018E0 80ADF630 45020004 */  bc1fl   .L80ADF644                 
/* 018E4 80ADF634 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 018E8 80ADF638 0C2B786F */  jal     func_80ADE1BC              
/* 018EC 80ADF63C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 018F0 80ADF640 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
.L80ADF644:
/* 018F4 80ADF644 0C2B7A73 */  jal     func_80ADE9CC              
/* 018F8 80ADF648 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 018FC 80ADF64C 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 01900 80ADF650 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 01904 80ADF654 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 01908 80ADF658 03E00008 */  jr      $ra                        
/* 0190C 80ADF65C 00000000 */  nop


