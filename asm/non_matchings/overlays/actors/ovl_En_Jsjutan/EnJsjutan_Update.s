glabel EnJsjutan_Update
/* 00DA0 80A8A540 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 00DA4 80A8A544 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 00DA8 80A8A548 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00DAC 80A8A54C AFA40020 */  sw      $a0, 0x0020($sp)           
/* 00DB0 80A8A550 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 00DB4 80A8A554 00A11021 */  addu    $v0, $a1, $at              
/* 00DB8 80A8A558 8C441DE4 */  lw      $a0, 0x1DE4($v0)           ## 00001DE4
/* 00DBC 80A8A55C AFA20018 */  sw      $v0, 0x0018($sp)           
/* 00DC0 80A8A560 00800821 */  addu    $at, $a0, $zero            
/* 00DC4 80A8A564 00042080 */  sll     $a0, $a0,  2               
/* 00DC8 80A8A568 00812023 */  subu    $a0, $a0, $at              
/* 00DCC 80A8A56C 00042100 */  sll     $a0, $a0,  4               
/* 00DD0 80A8A570 00812023 */  subu    $a0, $a0, $at              
/* 00DD4 80A8A574 000420C0 */  sll     $a0, $a0,  3               
/* 00DD8 80A8A578 00812023 */  subu    $a0, $a0, $at              
/* 00DDC 80A8A57C 000420C0 */  sll     $a0, $a0,  3               
/* 00DE0 80A8A580 00042400 */  sll     $a0, $a0, 16               
/* 00DE4 80A8A584 0C01DE1C */  jal     Math_SinS
              ## sins?
/* 00DE8 80A8A588 00042403 */  sra     $a0, $a0, 16               
/* 00DEC 80A8A58C 3C014396 */  lui     $at, 0x4396                ## $at = 43960000
/* 00DF0 80A8A590 44812000 */  mtc1    $at, $f4                   ## $f4 = 300.00
/* 00DF4 80A8A594 8FB80020 */  lw      $t8, 0x0020($sp)           
/* 00DF8 80A8A598 8FA20018 */  lw      $v0, 0x0018($sp)           
/* 00DFC 80A8A59C 46040182 */  mul.s   $f6, $f0, $f4              
/* 00E00 80A8A5A0 4600320D */  trunc.w.s $f8, $f6                   
/* 00E04 80A8A5A4 440F4000 */  mfc1    $t7, $f8                   
/* 00E08 80A8A5A8 00000000 */  nop
/* 00E0C 80A8A5AC A70F00B4 */  sh      $t7, 0x00B4($t8)           ## 000000B4
/* 00E10 80A8A5B0 8C441DE4 */  lw      $a0, 0x1DE4($v0)           ## 00001DE4
/* 00E14 80A8A5B4 00800821 */  addu    $at, $a0, $zero            
/* 00E18 80A8A5B8 000420C0 */  sll     $a0, $a0,  3               
/* 00E1C 80A8A5BC 00812023 */  subu    $a0, $a0, $at              
/* 00E20 80A8A5C0 000420C0 */  sll     $a0, $a0,  3               
/* 00E24 80A8A5C4 00812023 */  subu    $a0, $a0, $at              
/* 00E28 80A8A5C8 00042080 */  sll     $a0, $a0,  2               
/* 00E2C 80A8A5CC 00812023 */  subu    $a0, $a0, $at              
/* 00E30 80A8A5D0 00042080 */  sll     $a0, $a0,  2               
/* 00E34 80A8A5D4 00812023 */  subu    $a0, $a0, $at              
/* 00E38 80A8A5D8 00042080 */  sll     $a0, $a0,  2               
/* 00E3C 80A8A5DC 00042400 */  sll     $a0, $a0, 16               
/* 00E40 80A8A5E0 0C01DE0D */  jal     Math_CosS
              ## coss?
/* 00E44 80A8A5E4 00042403 */  sra     $a0, $a0, 16               
/* 00E48 80A8A5E8 3C014396 */  lui     $at, 0x4396                ## $at = 43960000
/* 00E4C 80A8A5EC 44815000 */  mtc1    $at, $f10                  ## $f10 = 300.00
/* 00E50 80A8A5F0 8FA90020 */  lw      $t1, 0x0020($sp)           
/* 00E54 80A8A5F4 460A0402 */  mul.s   $f16, $f0, $f10            
/* 00E58 80A8A5F8 4600848D */  trunc.w.s $f18, $f16                 
/* 00E5C 80A8A5FC 44089000 */  mfc1    $t0, $f18                  
/* 00E60 80A8A600 00000000 */  nop
/* 00E64 80A8A604 A52800B8 */  sh      $t0, 0x00B8($t1)           ## 000000B8
/* 00E68 80A8A608 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00E6C 80A8A60C 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 00E70 80A8A610 03E00008 */  jr      $ra                        
/* 00E74 80A8A614 00000000 */  nop
