.late_rodata
glabel D_80A66854
 .word 0x47AFC800
glabel D_80A66858
    .float 0.8

glabel D_80A6685C
 .word 0x3EF0A3D7
glabel D_80A66860
 .word 0x3EF0A3D7
glabel D_80A66864
    .float 0.4

glabel D_80A66868
    .float 0.4

.text
glabel func_80A5B61C
/* 0032C 80A5B61C 27BDFF90 */  addiu   $sp, $sp, 0xFF90           ## $sp = FFFFFF90
/* 00330 80A5B620 AFB00028 */  sw      $s0, 0x0028($sp)           
/* 00334 80A5B624 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00338 80A5B628 AFBF002C */  sw      $ra, 0x002C($sp)           
/* 0033C 80A5B62C AFA50074 */  sw      $a1, 0x0074($sp)           
/* 00340 80A5B630 AFA60078 */  sw      $a2, 0x0078($sp)           
/* 00344 80A5B634 8CC40004 */  lw      $a0, 0x0004($a2)           ## 00000004
/* 00348 80A5B638 27A60064 */  addiu   $a2, $sp, 0x0064           ## $a2 = FFFFFFF4
/* 0034C 80A5B63C 0C296D64 */  jal     func_80A5B590              
/* 00350 80A5B640 8E050204 */  lw      $a1, 0x0204($s0)           ## 00000204
/* 00354 80A5B644 8FAF0078 */  lw      $t7, 0x0078($sp)           
/* 00358 80A5B648 8E190204 */  lw      $t9, 0x0204($s0)           ## 00000204
/* 0035C 80A5B64C 27AA0040 */  addiu   $t2, $sp, 0x0040           ## $t2 = FFFFFFD0
/* 00360 80A5B650 8DF80004 */  lw      $t8, 0x0004($t7)           ## 00000004
/* 00364 80A5B654 00194080 */  sll     $t0, $t9,  2               
/* 00368 80A5B658 01194021 */  addu    $t0, $t0, $t9              
/* 0036C 80A5B65C 00084040 */  sll     $t0, $t0,  1               
/* 00370 80A5B660 03084821 */  addu    $t1, $t8, $t0              
/* 00374 80A5B664 85250008 */  lh      $a1, 0x0008($t1)           ## 00000008
/* 00378 80A5B668 AFAA0010 */  sw      $t2, 0x0010($sp)           
/* 0037C 80A5B66C 27A40064 */  addiu   $a0, $sp, 0x0064           ## $a0 = FFFFFFF4
/* 00380 80A5B670 27A60048 */  addiu   $a2, $sp, 0x0048           ## $a2 = FFFFFFD8
/* 00384 80A5B674 0C033209 */  jal     Math3D_RotateXZPlane              
/* 00388 80A5B678 27A70044 */  addiu   $a3, $sp, 0x0044           ## $a3 = FFFFFFD4
/* 0038C 80A5B67C C6060024 */  lwc1    $f6, 0x0024($s0)           ## 00000024
/* 00390 80A5B680 C7A80048 */  lwc1    $f8, 0x0048($sp)           
/* 00394 80A5B684 C7B00044 */  lwc1    $f16, 0x0044($sp)          
/* 00398 80A5B688 C612002C */  lwc1    $f18, 0x002C($s0)          ## 0000002C
/* 0039C 80A5B68C 46083282 */  mul.s   $f10, $f6, $f8             
/* 003A0 80A5B690 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 003A4 80A5B694 27A60064 */  addiu   $a2, $sp, 0x0064           ## $a2 = FFFFFFF4
/* 003A8 80A5B698 46128182 */  mul.s   $f6, $f16, $f18            
/* 003AC 80A5B69C C7B00040 */  lwc1    $f16, 0x0040($sp)          
/* 003B0 80A5B6A0 46065200 */  add.s   $f8, $f10, $f6             
/* 003B4 80A5B6A4 46104480 */  add.s   $f18, $f8, $f16            
/* 003B8 80A5B6A8 4612203C */  c.lt.s  $f4, $f18                  
/* 003BC 80A5B6AC 00000000 */  nop
/* 003C0 80A5B6B0 4502000B */  bc1fl   .L80A5B6E0                 
/* 003C4 80A5B6B4 8FB90078 */  lw      $t9, 0x0078($sp)           
/* 003C8 80A5B6B8 8E0B0204 */  lw      $t3, 0x0204($s0)           ## 00000204
/* 003CC 80A5B6BC 256C0001 */  addiu   $t4, $t3, 0x0001           ## $t4 = 00000001
/* 003D0 80A5B6C0 AE0C0204 */  sw      $t4, 0x0204($s0)           ## 00000204
/* 003D4 80A5B6C4 8FAE0078 */  lw      $t6, 0x0078($sp)           
/* 003D8 80A5B6C8 8DCF0000 */  lw      $t7, 0x0000($t6)           ## 00000000
/* 003DC 80A5B6CC 018F082A */  slt     $at, $t4, $t7              
/* 003E0 80A5B6D0 54200003 */  bnel    $at, $zero, .L80A5B6E0     
/* 003E4 80A5B6D4 8FB90078 */  lw      $t9, 0x0078($sp)           
/* 003E8 80A5B6D8 AE000204 */  sw      $zero, 0x0204($s0)         ## 00000204
/* 003EC 80A5B6DC 8FB90078 */  lw      $t9, 0x0078($sp)           
.L80A5B6E0:
/* 003F0 80A5B6E0 8E050204 */  lw      $a1, 0x0204($s0)           ## 00000204
/* 003F4 80A5B6E4 0C296D64 */  jal     func_80A5B590              
/* 003F8 80A5B6E8 8F240004 */  lw      $a0, 0x0004($t9)           ## 00000004
/* 003FC 80A5B6EC 8E050204 */  lw      $a1, 0x0204($s0)           ## 00000204
/* 00400 80A5B6F0 8FB80078 */  lw      $t8, 0x0078($sp)           
/* 00404 80A5B6F4 8FA80078 */  lw      $t0, 0x0078($sp)           
/* 00408 80A5B6F8 24A5FFFF */  addiu   $a1, $a1, 0xFFFF           ## $a1 = FFFFFFFF
/* 0040C 80A5B6FC 04A10003 */  bgez    $a1, .L80A5B70C            
/* 00410 80A5B700 27A60058 */  addiu   $a2, $sp, 0x0058           ## $a2 = FFFFFFE8
/* 00414 80A5B704 8F050000 */  lw      $a1, 0x0000($t8)           ## 00000000
/* 00418 80A5B708 24A5FFFF */  addiu   $a1, $a1, 0xFFFF           ## $a1 = FFFFFFFE
.L80A5B70C:
/* 0041C 80A5B70C 0C296D64 */  jal     func_80A5B590              
/* 00420 80A5B710 8D040004 */  lw      $a0, 0x0004($t0)           ## 00000004
/* 00424 80A5B714 C7AA0064 */  lwc1    $f10, 0x0064($sp)          
/* 00428 80A5B718 C7A6006C */  lwc1    $f6, 0x006C($sp)           
/* 0042C 80A5B71C C60C0024 */  lwc1    $f12, 0x0024($s0)          ## 00000024
/* 00430 80A5B720 C60E002C */  lwc1    $f14, 0x002C($s0)          ## 0000002C
/* 00434 80A5B724 27A9003C */  addiu   $t1, $sp, 0x003C           ## $t1 = FFFFFFCC
/* 00438 80A5B728 AFA90018 */  sw      $t1, 0x0018($sp)           
/* 0043C 80A5B72C 8FA60058 */  lw      $a2, 0x0058($sp)           
/* 00440 80A5B730 8FA70060 */  lw      $a3, 0x0060($sp)           
/* 00444 80A5B734 E7AA0010 */  swc1    $f10, 0x0010($sp)          
/* 00448 80A5B738 0C03392E */  jal     Math3D_PointDistToLine2D              
/* 0044C 80A5B73C E7A60014 */  swc1    $f6, 0x0014($sp)           
/* 00450 80A5B740 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00454 80A5B744 8FA50074 */  lw      $a1, 0x0074($sp)           
/* 00458 80A5B748 27A60064 */  addiu   $a2, $sp, 0x0064           ## $a2 = FFFFFFF4
/* 0045C 80A5B74C 0C296D78 */  jal     func_80A5B5E0              
/* 00460 80A5B750 24070190 */  addiu   $a3, $zero, 0x0190         ## $a3 = 00000190
/* 00464 80A5B754 3C0180A6 */  lui     $at, %hi(D_80A66854)       ## $at = 80A60000
/* 00468 80A5B758 C4306854 */  lwc1    $f16, %lo(D_80A66854)($at) 
/* 0046C 80A5B75C C7A8003C */  lwc1    $f8, 0x003C($sp)           
/* 00470 80A5B760 3C014302 */  lui     $at, 0x4302                ## $at = 43020000
/* 00474 80A5B764 4610403C */  c.lt.s  $f8, $f16                  
/* 00478 80A5B768 00000000 */  nop
/* 0047C 80A5B76C 4502003E */  bc1fl   .L80A5B868                 
/* 00480 80A5B770 8FB90074 */  lw      $t9, 0x0074($sp)           
/* 00484 80A5B774 C6000090 */  lwc1    $f0, 0x0090($s0)           ## 00000090
/* 00488 80A5B778 44812000 */  mtc1    $at, $f4                   ## $f4 = 130.00
/* 0048C 80A5B77C 00000000 */  nop
/* 00490 80A5B780 4604003C */  c.lt.s  $f0, $f4                   
/* 00494 80A5B784 00000000 */  nop
/* 00498 80A5B788 45030008 */  bc1tl   .L80A5B7AC                 
/* 0049C 80A5B78C 860E008A */  lh      $t6, 0x008A($s0)           ## 0000008A
/* 004A0 80A5B790 8E0A032C */  lw      $t2, 0x032C($s0)           ## 0000032C
/* 004A4 80A5B794 3C014396 */  lui     $at, 0x4396                ## $at = 43960000
/* 004A8 80A5B798 914B0017 */  lbu     $t3, 0x0017($t2)           ## 00000017
/* 004AC 80A5B79C 316C0002 */  andi    $t4, $t3, 0x0002           ## $t4 = 00000000
/* 004B0 80A5B7A0 51800016 */  beql    $t4, $zero, .L80A5B7FC     
/* 004B4 80A5B7A4 44815000 */  mtc1    $at, $f10                  ## $f10 = 300.00
/* 004B8 80A5B7A8 860E008A */  lh      $t6, 0x008A($s0)           ## 0000008A
.L80A5B7AC:
/* 004BC 80A5B7AC 860D0032 */  lh      $t5, 0x0032($s0)           ## 00000032
/* 004C0 80A5B7B0 01CD2023 */  subu    $a0, $t6, $t5              
/* 004C4 80A5B7B4 00042400 */  sll     $a0, $a0, 16               
/* 004C8 80A5B7B8 0C01DE1C */  jal     Math_SinS
              ## sins?
/* 004CC 80A5B7BC 00042403 */  sra     $a0, $a0, 16               
/* 004D0 80A5B7C0 44809000 */  mtc1    $zero, $f18                ## $f18 = 0.00
/* 004D4 80A5B7C4 00000000 */  nop
/* 004D8 80A5B7C8 4600903C */  c.lt.s  $f18, $f0                  
/* 004DC 80A5B7CC 00000000 */  nop
/* 004E0 80A5B7D0 45020006 */  bc1fl   .L80A5B7EC                 
/* 004E4 80A5B7D4 86180032 */  lh      $t8, 0x0032($s0)           ## 00000032
/* 004E8 80A5B7D8 860F0032 */  lh      $t7, 0x0032($s0)           ## 00000032
/* 004EC 80A5B7DC 25F9FEE8 */  addiu   $t9, $t7, 0xFEE8           ## $t9 = FFFFFEE8
/* 004F0 80A5B7E0 1000001E */  beq     $zero, $zero, .L80A5B85C   
/* 004F4 80A5B7E4 A6190032 */  sh      $t9, 0x0032($s0)           ## 00000032
/* 004F8 80A5B7E8 86180032 */  lh      $t8, 0x0032($s0)           ## 00000032
.L80A5B7EC:
/* 004FC 80A5B7EC 27080118 */  addiu   $t0, $t8, 0x0118           ## $t0 = 00000118
/* 00500 80A5B7F0 1000001A */  beq     $zero, $zero, .L80A5B85C   
/* 00504 80A5B7F4 A6080032 */  sh      $t0, 0x0032($s0)           ## 00000032
/* 00508 80A5B7F8 44815000 */  mtc1    $at, $f10                  ## $f10 = 0.00
.L80A5B7FC:
/* 0050C 80A5B7FC 00000000 */  nop
/* 00510 80A5B800 460A003C */  c.lt.s  $f0, $f10                  
/* 00514 80A5B804 00000000 */  nop
/* 00518 80A5B808 45020015 */  bc1fl   .L80A5B860                 
/* 0051C 80A5B80C 860F0032 */  lh      $t7, 0x0032($s0)           ## 00000032
/* 00520 80A5B810 8609008A */  lh      $t1, 0x008A($s0)           ## 0000008A
/* 00524 80A5B814 860A0032 */  lh      $t2, 0x0032($s0)           ## 00000032
/* 00528 80A5B818 012A2023 */  subu    $a0, $t1, $t2              
/* 0052C 80A5B81C 00042400 */  sll     $a0, $a0, 16               
/* 00530 80A5B820 0C01DE1C */  jal     Math_SinS
              ## sins?
/* 00534 80A5B824 00042403 */  sra     $a0, $a0, 16               
/* 00538 80A5B828 44803000 */  mtc1    $zero, $f6                 ## $f6 = 0.00
/* 0053C 80A5B82C 00000000 */  nop
/* 00540 80A5B830 4600303C */  c.lt.s  $f6, $f0                   
/* 00544 80A5B834 00000000 */  nop
/* 00548 80A5B838 45020006 */  bc1fl   .L80A5B854                 
/* 0054C 80A5B83C 860E0032 */  lh      $t6, 0x0032($s0)           ## 00000032
/* 00550 80A5B840 860B0032 */  lh      $t3, 0x0032($s0)           ## 00000032
/* 00554 80A5B844 256C0118 */  addiu   $t4, $t3, 0x0118           ## $t4 = 00000118
/* 00558 80A5B848 10000004 */  beq     $zero, $zero, .L80A5B85C   
/* 0055C 80A5B84C A60C0032 */  sh      $t4, 0x0032($s0)           ## 00000032
/* 00560 80A5B850 860E0032 */  lh      $t6, 0x0032($s0)           ## 00000032
.L80A5B854:
/* 00564 80A5B854 25CDFEE8 */  addiu   $t5, $t6, 0xFEE8           ## $t5 = FFFFFEE8
/* 00568 80A5B858 A60D0032 */  sh      $t5, 0x0032($s0)           ## 00000032
.L80A5B85C:
/* 0056C 80A5B85C 860F0032 */  lh      $t7, 0x0032($s0)           ## 00000032
.L80A5B860:
/* 00570 80A5B860 A60F00B6 */  sh      $t7, 0x00B6($s0)           ## 000000B6
/* 00574 80A5B864 8FB90074 */  lw      $t9, 0x0074($sp)           
.L80A5B868:
/* 00578 80A5B868 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0057C 80A5B86C 0C00B6E3 */  jal     Actor_WorldDistXZToActor              
/* 00580 80A5B870 8F251C44 */  lw      $a1, 0x1C44($t9)           ## 00001C44
/* 00584 80A5B874 8FB80074 */  lw      $t8, 0x0074($sp)           
/* 00588 80A5B878 E7A00050 */  swc1    $f0, 0x0050($sp)           
/* 0058C 80A5B87C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00590 80A5B880 0C00B69E */  jal     Actor_WorldYawTowardActor              
/* 00594 80A5B884 8F051C44 */  lw      $a1, 0x1C44($t8)           ## 00001C44
/* 00598 80A5B888 3C014348 */  lui     $at, 0x4348                ## $at = 43480000
/* 0059C 80A5B88C 44814000 */  mtc1    $at, $f8                   ## $f8 = 200.00
/* 005A0 80A5B890 C7B00050 */  lwc1    $f16, 0x0050($sp)          
/* 005A4 80A5B894 86080032 */  lh      $t0, 0x0032($s0)           ## 00000032
/* 005A8 80A5B898 4608803E */  c.le.s  $f16, $f8                  
/* 005AC 80A5B89C 00482023 */  subu    $a0, $v0, $t0              
/* 005B0 80A5B8A0 00042400 */  sll     $a0, $a0, 16               
/* 005B4 80A5B8A4 00042403 */  sra     $a0, $a0, 16               
/* 005B8 80A5B8A8 45030014 */  bc1tl   .L80A5B8FC                 
/* 005BC 80A5B8AC C6000068 */  lwc1    $f0, 0x0068($s0)           ## 00000068
/* 005C0 80A5B8B0 0C01DE1C */  jal     Math_SinS
              ## sins?
/* 005C4 80A5B8B4 A7A4004E */  sh      $a0, 0x004E($sp)           
/* 005C8 80A5B8B8 3C0180A6 */  lui     $at, %hi(D_80A66858)       ## $at = 80A60000
/* 005CC 80A5B8BC C4246858 */  lwc1    $f4, %lo(D_80A66858)($at)  
/* 005D0 80A5B8C0 46000005 */  abs.s   $f0, $f0                   
/* 005D4 80A5B8C4 87A4004E */  lh      $a0, 0x004E($sp)           
/* 005D8 80A5B8C8 4604003C */  c.lt.s  $f0, $f4                   
/* 005DC 80A5B8CC 00000000 */  nop
/* 005E0 80A5B8D0 4502001D */  bc1fl   .L80A5B948                 
/* 005E4 80A5B8D4 8FAB0078 */  lw      $t3, 0x0078($sp)           
/* 005E8 80A5B8D8 0C01DE0D */  jal     Math_CosS
              ## coss?
/* 005EC 80A5B8DC 00000000 */  nop
/* 005F0 80A5B8E0 44809000 */  mtc1    $zero, $f18                ## $f18 = 0.00
/* 005F4 80A5B8E4 00000000 */  nop
/* 005F8 80A5B8E8 4600903C */  c.lt.s  $f18, $f0                  
/* 005FC 80A5B8EC 00000000 */  nop
/* 00600 80A5B8F0 45020015 */  bc1fl   .L80A5B948                 
/* 00604 80A5B8F4 8FAB0078 */  lw      $t3, 0x0078($sp)           
/* 00608 80A5B8F8 C6000068 */  lwc1    $f0, 0x0068($s0)           ## 00000068
.L80A5B8FC:
/* 0060C 80A5B8FC C60A0398 */  lwc1    $f10, 0x0398($s0)          ## 00000398
/* 00610 80A5B900 3C0180A6 */  lui     $at, %hi(D_80A66860)       ## $at = 80A60000
/* 00614 80A5B904 460A003C */  c.lt.s  $f0, $f10                  
/* 00618 80A5B908 00000000 */  nop
/* 0061C 80A5B90C 45000006 */  bc1f    .L80A5B928                 
/* 00620 80A5B910 00000000 */  nop
/* 00624 80A5B914 3C0180A6 */  lui     $at, %hi(D_80A6685C)       ## $at = 80A60000
/* 00628 80A5B918 C426685C */  lwc1    $f6, %lo(D_80A6685C)($at)  
/* 0062C 80A5B91C 46060200 */  add.s   $f8, $f0, $f6              
/* 00630 80A5B920 10000004 */  beq     $zero, $zero, .L80A5B934   
/* 00634 80A5B924 E6080068 */  swc1    $f8, 0x0068($s0)           ## 00000068
.L80A5B928:
/* 00638 80A5B928 C4306860 */  lwc1    $f16, %lo(D_80A66860)($at) 
/* 0063C 80A5B92C 46100101 */  sub.s   $f4, $f0, $f16             
/* 00640 80A5B930 E6040068 */  swc1    $f4, 0x0068($s0)           ## 00000068
.L80A5B934:
/* 00644 80A5B934 96090394 */  lhu     $t1, 0x0394($s0)           ## 00000394
/* 00648 80A5B938 352A0001 */  ori     $t2, $t1, 0x0001           ## $t2 = 00000001
/* 0064C 80A5B93C 1000001D */  beq     $zero, $zero, .L80A5B9B4   
/* 00650 80A5B940 A60A0394 */  sh      $t2, 0x0394($s0)           ## 00000394
/* 00654 80A5B944 8FAB0078 */  lw      $t3, 0x0078($sp)           
.L80A5B948:
/* 00658 80A5B948 8E0E0204 */  lw      $t6, 0x0204($s0)           ## 00000204
/* 0065C 80A5B94C C6000068 */  lwc1    $f0, 0x0068($s0)           ## 00000068
/* 00660 80A5B950 8D6C0004 */  lw      $t4, 0x0004($t3)           ## 00000004
/* 00664 80A5B954 000E6880 */  sll     $t5, $t6,  2               
/* 00668 80A5B958 01AE6821 */  addu    $t5, $t5, $t6              
/* 0066C 80A5B95C 000D6840 */  sll     $t5, $t5,  1               
/* 00670 80A5B960 018D7821 */  addu    $t7, $t4, $t5              
/* 00674 80A5B964 85F90006 */  lh      $t9, 0x0006($t7)           ## 00000006
/* 00678 80A5B968 3C0180A6 */  lui     $at, %hi(D_80A66868)       ## $at = 80A60000
/* 0067C 80A5B96C 44999000 */  mtc1    $t9, $f18                  ## $f18 = 0.00
/* 00680 80A5B970 00000000 */  nop
/* 00684 80A5B974 468092A0 */  cvt.s.w $f10, $f18                 
/* 00688 80A5B978 460A003C */  c.lt.s  $f0, $f10                  
/* 0068C 80A5B97C 00000000 */  nop
/* 00690 80A5B980 45000006 */  bc1f    .L80A5B99C                 
/* 00694 80A5B984 00000000 */  nop
/* 00698 80A5B988 3C0180A6 */  lui     $at, %hi(D_80A66864)       ## $at = 80A60000
/* 0069C 80A5B98C C4266864 */  lwc1    $f6, %lo(D_80A66864)($at)  
/* 006A0 80A5B990 46060200 */  add.s   $f8, $f0, $f6              
/* 006A4 80A5B994 10000004 */  beq     $zero, $zero, .L80A5B9A8   
/* 006A8 80A5B998 E6080068 */  swc1    $f8, 0x0068($s0)           ## 00000068
.L80A5B99C:
/* 006AC 80A5B99C C4306868 */  lwc1    $f16, %lo(D_80A66868)($at) 
/* 006B0 80A5B9A0 46100101 */  sub.s   $f4, $f0, $f16             
/* 006B4 80A5B9A4 E6040068 */  swc1    $f4, 0x0068($s0)           ## 00000068
.L80A5B9A8:
/* 006B8 80A5B9A8 96180394 */  lhu     $t8, 0x0394($s0)           ## 00000394
/* 006BC 80A5B9AC 3308FFFE */  andi    $t0, $t8, 0xFFFE           ## $t0 = 00000000
/* 006C0 80A5B9B0 A6080394 */  sh      $t0, 0x0394($s0)           ## 00000394
.L80A5B9B4:
/* 006C4 80A5B9B4 8FBF002C */  lw      $ra, 0x002C($sp)           
/* 006C8 80A5B9B8 8FB00028 */  lw      $s0, 0x0028($sp)           
/* 006CC 80A5B9BC 27BD0070 */  addiu   $sp, $sp, 0x0070           ## $sp = 00000000
/* 006D0 80A5B9C0 03E00008 */  jr      $ra                        
/* 006D4 80A5B9C4 00000000 */  nop
