glabel func_80B58C08
/* 05858 80B58C08 27BDFFB8 */  addiu   $sp, $sp, 0xFFB8           ## $sp = FFFFFFB8
/* 0585C 80B58C0C AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 05860 80B58C10 AFB00020 */  sw      $s0, 0x0020($sp)           
/* 05864 80B58C14 AFA5004C */  sw      $a1, 0x004C($sp)           
/* 05868 80B58C18 948E0344 */  lhu     $t6, 0x0344($a0)           ## 00000344
/* 0586C 80B58C1C 3C188016 */  lui     $t8, 0x8016                ## $t8 = 80160000
/* 05870 80B58C20 94890346 */  lhu     $t1, 0x0346($a0)           ## 00000346
/* 05874 80B58C24 25CF0001 */  addiu   $t7, $t6, 0x0001           ## $t7 = 00000001
/* 05878 80B58C28 A48F0344 */  sh      $t7, 0x0344($a0)           ## 00000344
/* 0587C 80B58C2C 8F18FA90 */  lw      $t8, -0x0570($t8)          ## 8015FA90
/* 05880 80B58C30 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 05884 80B58C34 31E8FFFF */  andi    $t0, $t7, 0xFFFF           ## $t0 = 00000001
/* 05888 80B58C38 8719146A */  lh      $t9, 0x146A($t8)           ## 8016146A
/* 0588C 80B58C3C AFA80030 */  sw      $t0, 0x0030($sp)           
/* 05890 80B58C40 AFA00010 */  sw      $zero, 0x0010($sp)         
/* 05894 80B58C44 01395023 */  subu    $t2, $t1, $t9              
/* 05898 80B58C48 254BFFFE */  addiu   $t3, $t2, 0xFFFE           ## $t3 = FFFFFFFE
/* 0589C 80B58C4C AFAB0028 */  sw      $t3, 0x0028($sp)           
/* 058A0 80B58C50 3106FFFF */  andi    $a2, $t0, 0xFFFF           ## $a2 = 00000001
/* 058A4 80B58C54 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 058A8 80B58C58 24070003 */  addiu   $a3, $zero, 0x0003         ## $a3 = 00000003
/* 058AC 80B58C5C AFA9002C */  sw      $t1, 0x002C($sp)           
/* 058B0 80B58C60 0C01BE6F */  jal     func_8006F9BC              
/* 058B4 80B58C64 3124FFFF */  andi    $a0, $t1, 0xFFFF           ## $a0 = 00000000
/* 058B8 80B58C68 26020348 */  addiu   $v0, $s0, 0x0348           ## $v0 = 00000348
/* 058BC 80B58C6C 26030354 */  addiu   $v1, $s0, 0x0354           ## $v1 = 00000354
/* 058C0 80B58C70 C4640000 */  lwc1    $f4, 0x0000($v1)           ## 00000354
/* 058C4 80B58C74 C4420000 */  lwc1    $f2, 0x0000($v0)           ## 00000348
/* 058C8 80B58C78 8FA80030 */  lw      $t0, 0x0030($sp)           
/* 058CC 80B58C7C 8FA9002C */  lw      $t1, 0x002C($sp)           
/* 058D0 80B58C80 46022181 */  sub.s   $f6, $f4, $f2              
/* 058D4 80B58C84 26040024 */  addiu   $a0, $s0, 0x0024           ## $a0 = 00000024
/* 058D8 80B58C88 3C0F8016 */  lui     $t7, 0x8016                ## $t7 = 80160000
/* 058DC 80B58C8C 46060202 */  mul.s   $f8, $f0, $f6              
/* 058E0 80B58C90 46081280 */  add.s   $f10, $f2, $f8             
/* 058E4 80B58C94 E48A0000 */  swc1    $f10, 0x0000($a0)          ## 00000024
/* 058E8 80B58C98 C4700004 */  lwc1    $f16, 0x0004($v1)          ## 00000358
/* 058EC 80B58C9C C44C0004 */  lwc1    $f12, 0x0004($v0)          ## 0000034C
/* 058F0 80B58CA0 C6080360 */  lwc1    $f8, 0x0360($s0)           ## 00000360
/* 058F4 80B58CA4 460C8481 */  sub.s   $f18, $f16, $f12           
/* 058F8 80B58CA8 46120102 */  mul.s   $f4, $f0, $f18             
/* 058FC 80B58CAC 46046180 */  add.s   $f6, $f12, $f4             
/* 05900 80B58CB0 46083280 */  add.s   $f10, $f6, $f8             
/* 05904 80B58CB4 E48A0004 */  swc1    $f10, 0x0004($a0)          ## 00000028
/* 05908 80B58CB8 C4700008 */  lwc1    $f16, 0x0008($v1)          ## 0000035C
/* 0590C 80B58CBC C44E0008 */  lwc1    $f14, 0x0008($v0)          ## 00000350
/* 05910 80B58CC0 460E8481 */  sub.s   $f18, $f16, $f14           
/* 05914 80B58CC4 46120102 */  mul.s   $f4, $f0, $f18             
/* 05918 80B58CC8 46047180 */  add.s   $f6, $f14, $f4             
/* 0591C 80B58CCC E4860008 */  swc1    $f6, 0x0008($a0)           ## 0000002C
/* 05920 80B58CD0 8FAC0028 */  lw      $t4, 0x0028($sp)           
/* 05924 80B58CD4 010C6823 */  subu    $t5, $t0, $t4              
/* 05928 80B58CD8 05A20014 */  bltzl   $t5, .L80B58D2C            
/* 0592C 80B58CDC 01286823 */  subu    $t5, $t1, $t0              
/* 05930 80B58CE0 8DEFFA90 */  lw      $t7, -0x0570($t7)          ## 8015FA90
/* 05934 80B58CE4 01287023 */  subu    $t6, $t1, $t0              
/* 05938 80B58CE8 448E4000 */  mtc1    $t6, $f8                   ## $f8 = 0.00
/* 0593C 80B58CEC 85F8146A */  lh      $t8, 0x146A($t7)           ## 8016146A
/* 05940 80B58CF0 3C01437F */  lui     $at, 0x437F                ## $at = 437F0000
/* 05944 80B58CF4 468042A0 */  cvt.s.w $f10, $f8                  
/* 05948 80B58CF8 27190002 */  addiu   $t9, $t8, 0x0002           ## $t9 = 00000002
/* 0594C 80B58CFC 44998000 */  mtc1    $t9, $f16                  ## $f16 = 0.00
/* 05950 80B58D00 44813000 */  mtc1    $at, $f6                   ## $f6 = 255.00
/* 05954 80B58D04 240C0002 */  addiu   $t4, $zero, 0x0002         ## $t4 = 00000002
/* 05958 80B58D08 468084A0 */  cvt.s.w $f18, $f16                 
/* 0595C 80B58D0C AE0C0250 */  sw      $t4, 0x0250($s0)           ## 00000250
/* 05960 80B58D10 46125103 */  div.s   $f4, $f10, $f18            
/* 05964 80B58D14 46062202 */  mul.s   $f8, $f4, $f6              
/* 05968 80B58D18 4600440D */  trunc.w.s $f16, $f8                  
/* 0596C 80B58D1C 440B8000 */  mfc1    $t3, $f16                  
/* 05970 80B58D20 00000000 */  nop
/* 05974 80B58D24 AE0B0258 */  sw      $t3, 0x0258($s0)           ## 00000258
/* 05978 80B58D28 01286823 */  subu    $t5, $t1, $t0              
.L80B58D2C:
/* 0597C 80B58D2C 5DA00004 */  bgtzl   $t5, .L80B58D40            
/* 05980 80B58D30 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 05984 80B58D34 0C00B55C */  jal     Actor_Kill
              
/* 05988 80B58D38 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0598C 80B58D3C 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80B58D40:
/* 05990 80B58D40 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 05994 80B58D44 27BD0048 */  addiu   $sp, $sp, 0x0048           ## $sp = 00000000
/* 05998 80B58D48 03E00008 */  jr      $ra                        
/* 0599C 80B58D4C 00000000 */  nop
