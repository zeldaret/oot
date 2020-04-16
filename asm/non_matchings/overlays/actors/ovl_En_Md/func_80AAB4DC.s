glabel func_80AAB4DC
/* 0128C 80AAB4DC 8483001C */  lh      $v1, 0x001C($a0)           ## 0000001C
/* 01290 80AAB4E0 3401FF00 */  ori     $at, $zero, 0xFF00         ## $at = 0000FF00
/* 01294 80AAB4E4 00A03025 */  or      $a2, $a1, $zero            ## $a2 = 00000000
/* 01298 80AAB4E8 3063FF00 */  andi    $v1, $v1, 0xFF00           ## $v1 = 00000000
/* 0129C 80AAB4EC 14610003 */  bne     $v1, $at, .L80AAB4FC       
/* 012A0 80AAB4F0 3C0E0001 */  lui     $t6, 0x0001                ## $t6 = 00010000
/* 012A4 80AAB4F4 03E00008 */  jr      $ra                        
/* 012A8 80AAB4F8 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L80AAB4FC:
/* 012AC 80AAB4FC 01C67021 */  addu    $t6, $t6, $a2              
/* 012B0 80AAB500 8DCE1E08 */  lw      $t6, 0x1E08($t6)           ## 00011E08
/* 012B4 80AAB504 00037A03 */  sra     $t7, $v1,  8               
/* 012B8 80AAB508 000FC0C0 */  sll     $t8, $t7,  3               
/* 012BC 80AAB50C 01D82821 */  addu    $a1, $t6, $t8              
/* 012C0 80AAB510 8CA80004 */  lw      $t0, 0x0004($a1)           ## 00000004
/* 012C4 80AAB514 3C0B8016 */  lui     $t3, 0x8016                ## $t3 = 80160000
/* 012C8 80AAB518 90AD0000 */  lbu     $t5, 0x0000($a1)           ## 00000000
/* 012CC 80AAB51C 0008C900 */  sll     $t9, $t0,  4               
/* 012D0 80AAB520 00194F02 */  srl     $t1, $t9, 28               
/* 012D4 80AAB524 00095080 */  sll     $t2, $t1,  2               
/* 012D8 80AAB528 016A5821 */  addu    $t3, $t3, $t2              
/* 012DC 80AAB52C 3C0100FF */  lui     $at, 0x00FF                ## $at = 00FF0000
/* 012E0 80AAB530 8D6B6FA8 */  lw      $t3, 0x6FA8($t3)           ## 80166FA8
/* 012E4 80AAB534 3421FFFF */  ori     $at, $at, 0xFFFF           ## $at = 00FFFFFF
/* 012E8 80AAB538 01016024 */  and     $t4, $t0, $at              
/* 012EC 80AAB53C 000D7880 */  sll     $t7, $t5,  2               
/* 012F0 80AAB540 3C018000 */  lui     $at, 0x8000                ## $at = 80000000
/* 012F4 80AAB544 01ED7823 */  subu    $t7, $t7, $t5              
/* 012F8 80AAB548 016C3821 */  addu    $a3, $t3, $t4              
/* 012FC 80AAB54C 00E13821 */  addu    $a3, $a3, $at              
/* 01300 80AAB550 000F7840 */  sll     $t7, $t7,  1               
/* 01304 80AAB554 00EF3821 */  addu    $a3, $a3, $t7              
/* 01308 80AAB558 84EEFFFA */  lh      $t6, -0x0006($a3)          ## FFFFFFFA
/* 0130C 80AAB55C 24E7FFFA */  addiu   $a3, $a3, 0xFFFA           ## $a3 = FFFFFFFA
/* 01310 80AAB560 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
/* 01314 80AAB564 448E2000 */  mtc1    $t6, $f4                   ## $f4 = 0.00
/* 01318 80AAB568 00000000 */  nop
/* 0131C 80AAB56C 468021A0 */  cvt.s.w $f6, $f4                   
/* 01320 80AAB570 E4860024 */  swc1    $f6, 0x0024($a0)           ## 00000024
/* 01324 80AAB574 84F80002 */  lh      $t8, 0x0002($a3)           ## FFFFFFFC
/* 01328 80AAB578 44984000 */  mtc1    $t8, $f8                   ## $f8 = 0.00
/* 0132C 80AAB57C 00000000 */  nop
/* 01330 80AAB580 468042A0 */  cvt.s.w $f10, $f8                  
/* 01334 80AAB584 E48A0028 */  swc1    $f10, 0x0028($a0)          ## 00000028
/* 01338 80AAB588 84F90004 */  lh      $t9, 0x0004($a3)           ## FFFFFFFE
/* 0133C 80AAB58C 44998000 */  mtc1    $t9, $f16                  ## $f16 = 0.00
/* 01340 80AAB590 00000000 */  nop
/* 01344 80AAB594 468084A0 */  cvt.s.w $f18, $f16                 
/* 01348 80AAB598 E492002C */  swc1    $f18, 0x002C($a0)          ## 0000002C
/* 0134C 80AAB59C 03E00008 */  jr      $ra                        
/* 01350 80AAB5A0 00000000 */  nop
