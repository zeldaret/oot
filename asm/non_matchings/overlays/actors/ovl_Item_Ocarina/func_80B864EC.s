.late_rodata
glabel D_80B86840
 .word 0x44D2C000
glabel D_80B86844
 .word 0xBE19999A

.text
glabel func_80B864EC
/* 003BC 80B864EC 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 003C0 80B864F0 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 003C4 80B864F4 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 003C8 80B864F8 0C00B5FB */  jal     func_8002D7EC              
/* 003CC 80B864FC AFA40018 */  sw      $a0, 0x0018($sp)           
/* 003D0 80B86500 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 003D4 80B86504 84820150 */  lh      $v0, 0x0150($a0)           ## 00000150
/* 003D8 80B86508 C4800070 */  lwc1    $f0, 0x0070($a0)           ## 00000070
/* 003DC 80B8650C C4820060 */  lwc1    $f2, 0x0060($a0)           ## 00000060
/* 003E0 80B86510 848E00B4 */  lh      $t6, 0x00B4($a0)           ## 000000B4
/* 003E4 80B86514 849900B6 */  lh      $t9, 0x00B6($a0)           ## 000000B6
/* 003E8 80B86518 4602003C */  c.lt.s  $f0, $f2                   
/* 003EC 80B8651C 00024080 */  sll     $t0, $v0,  2               
/* 003F0 80B86520 00027840 */  sll     $t7, $v0,  1               
/* 003F4 80B86524 01024023 */  subu    $t0, $t0, $v0              
/* 003F8 80B86528 01CFC021 */  addu    $t8, $t6, $t7              
/* 003FC 80B8652C 03284821 */  addu    $t1, $t9, $t0              
/* 00400 80B86530 A49800B4 */  sh      $t8, 0x00B4($a0)           ## 000000B4
/* 00404 80B86534 4500000A */  bc1f    .L80B86560                 
/* 00408 80B86538 A48900B6 */  sh      $t1, 0x00B6($a0)           ## 000000B6
/* 0040C 80B8653C C484006C */  lwc1    $f4, 0x006C($a0)           ## 0000006C
/* 00410 80B86540 46041180 */  add.s   $f6, $f2, $f4              
/* 00414 80B86544 E4860060 */  swc1    $f6, 0x0060($a0)           ## 00000060
/* 00418 80B86548 C4880060 */  lwc1    $f8, 0x0060($a0)           ## 00000060
/* 0041C 80B8654C 4600403C */  c.lt.s  $f8, $f0                   
/* 00420 80B86550 00000000 */  nop
/* 00424 80B86554 45020003 */  bc1fl   .L80B86564                 
/* 00428 80B86558 8FAA001C */  lw      $t2, 0x001C($sp)           
/* 0042C 80B8655C E4800060 */  swc1    $f0, 0x0060($a0)           ## 00000060
.L80B86560:
/* 00430 80B86560 8FAA001C */  lw      $t2, 0x001C($sp)           
.L80B86564:
/* 00434 80B86564 240100DC */  addiu   $at, $zero, 0x00DC         ## $at = 000000DC
/* 00438 80B86568 954B1D74 */  lhu     $t3, 0x1D74($t2)           ## 00001D74
/* 0043C 80B8656C 15610018 */  bne     $t3, $at, .L80B865D0       
/* 00440 80B86570 3C014310 */  lui     $at, 0x4310                ## $at = 43100000
/* 00444 80B86574 44815000 */  mtc1    $at, $f10                  ## $f10 = 144.00
/* 00448 80B86578 3C0142A0 */  lui     $at, 0x42A0                ## $at = 42A00000
/* 0044C 80B8657C 44818000 */  mtc1    $at, $f16                  ## $f16 = 80.00
/* 00450 80B86580 3C0180B8 */  lui     $at, %hi(D_80B86840)       ## $at = 80B80000
/* 00454 80B86584 E48A0024 */  swc1    $f10, 0x0024($a0)          ## 00000024
/* 00458 80B86588 E4900028 */  swc1    $f16, 0x0028($a0)          ## 00000028
/* 0045C 80B8658C C4326840 */  lwc1    $f18, %lo(D_80B86840)($at) 
/* 00460 80B86590 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 00464 80B86594 44812000 */  mtc1    $at, $f4                   ## $f4 = 1.00
/* 00468 80B86598 3C014000 */  lui     $at, 0x4000                ## $at = 40000000
/* 0046C 80B8659C 44813000 */  mtc1    $at, $f6                   ## $f6 = 2.00
/* 00470 80B865A0 3C01C0E0 */  lui     $at, 0xC0E0                ## $at = C0E00000
/* 00474 80B865A4 44814000 */  mtc1    $at, $f8                   ## $f8 = -7.00
/* 00478 80B865A8 3C0180B8 */  lui     $at, %hi(D_80B86844)       ## $at = 80B80000
/* 0047C 80B865AC E492002C */  swc1    $f18, 0x002C($a0)          ## 0000002C
/* 00480 80B865B0 E484005C */  swc1    $f4, 0x005C($a0)           ## 0000005C
/* 00484 80B865B4 E4860060 */  swc1    $f6, 0x0060($a0)           ## 00000060
/* 00488 80B865B8 E4880064 */  swc1    $f8, 0x0064($a0)           ## 00000064
/* 0048C 80B865BC C42A6844 */  lwc1    $f10, %lo(D_80B86844)($at) 
/* 00490 80B865C0 3C01C0A0 */  lui     $at, 0xC0A0                ## $at = C0A00000
/* 00494 80B865C4 44818000 */  mtc1    $at, $f16                  ## $f16 = -5.00
/* 00498 80B865C8 E48A006C */  swc1    $f10, 0x006C($a0)          ## 0000006C
/* 0049C 80B865CC E4900070 */  swc1    $f16, 0x0070($a0)          ## 00000070
.L80B865D0:
/* 004A0 80B865D0 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 004A4 80B865D4 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 004A8 80B865D8 03E00008 */  jr      $ra                        
/* 004AC 80B865DC 00000000 */  nop


