glabel func_8087C454
/* 00664 8087C454 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 00668 8087C458 44812000 */  mtc1    $at, $f4                   ## $f4 = 1.00
/* 0066C 8087C45C 3C018088 */  lui     $at, %hi(D_8087CCD8)       ## $at = 80880000
/* 00670 8087C460 C426CCD8 */  lwc1    $f6, %lo(D_8087CCD8)($at)  
/* 00674 8087C464 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 00678 8087C468 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 0067C 8087C46C 4606203C */  c.lt.s  $f4, $f6                   
/* 00680 8087C470 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00684 8087C474 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00688 8087C478 AFA50034 */  sw      $a1, 0x0034($sp)           
/* 0068C 8087C47C 4500004F */  bc1f    .L8087C5BC                 
/* 00690 8087C480 3C048088 */  lui     $a0, %hi(D_8087CFB0)       ## $a0 = 80880000
/* 00694 8087C484 8484CFB0 */  lh      $a0, %lo(D_8087CFB0)($a0)  
/* 00698 8087C488 5080004D */  beql    $a0, $zero, .L8087C5C0     
/* 0069C 8087C48C 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 006A0 8087C490 8CAF1C44 */  lw      $t7, 0x1C44($a1)           ## 00001C44
/* 006A4 8087C494 0C01DE0D */  jal     Math_Coss
              ## coss?
/* 006A8 8087C498 AFAF002C */  sw      $t7, 0x002C($sp)           
/* 006AC 8087C49C 3C048088 */  lui     $a0, %hi(D_8087CFB0)       ## $a0 = 80880000
/* 006B0 8087C4A0 8484CFB0 */  lh      $a0, %lo(D_8087CFB0)($a0)  
/* 006B4 8087C4A4 0C01DE1C */  jal     Math_Sins
              ## sins?
/* 006B8 8087C4A8 E7A00020 */  swc1    $f0, 0x0020($sp)           
/* 006BC 8087C4AC 8FA2002C */  lw      $v0, 0x002C($sp)           
/* 006C0 8087C4B0 C60A0024 */  lwc1    $f10, 0x0024($s0)          ## 00000024
/* 006C4 8087C4B4 C604002C */  lwc1    $f4, 0x002C($s0)           ## 0000002C
/* 006C8 8087C4B8 C4480024 */  lwc1    $f8, 0x0024($v0)           ## 00000024
/* 006CC 8087C4BC C452002C */  lwc1    $f18, 0x002C($v0)          ## 0000002C
/* 006D0 8087C4C0 C7AE0020 */  lwc1    $f14, 0x0020($sp)          
/* 006D4 8087C4C4 460A4081 */  sub.s   $f2, $f8, $f10             
/* 006D8 8087C4C8 3C0142DC */  lui     $at, 0x42DC                ## $at = 42DC0000
/* 006DC 8087C4CC 44815000 */  mtc1    $at, $f10                  ## $f10 = 110.00
/* 006E0 8087C4D0 46049301 */  sub.s   $f12, $f18, $f4            
/* 006E4 8087C4D4 46001182 */  mul.s   $f6, $f2, $f0              
/* 006E8 8087C4D8 3C014220 */  lui     $at, 0x4220                ## $at = 42200000
/* 006EC 8087C4DC 3C188088 */  lui     $t8, %hi(D_8087CCD0)       ## $t8 = 80880000
/* 006F0 8087C4E0 460E6202 */  mul.s   $f8, $f12, $f14            
/* 006F4 8087C4E4 3C198088 */  lui     $t9, %hi(D_8087CFB0)       ## $t9 = 80880000
/* 006F8 8087C4E8 460E1482 */  mul.s   $f18, $f2, $f14            
/* 006FC 8087C4EC 00000000 */  nop
/* 00700 8087C4F0 46006102 */  mul.s   $f4, $f12, $f0             
/* 00704 8087C4F4 46083400 */  add.s   $f16, $f6, $f8             
/* 00708 8087C4F8 46049181 */  sub.s   $f6, $f18, $f4             
/* 0070C 8087C4FC 4606503C */  c.lt.s  $f10, $f6                  
/* 00710 8087C500 00000000 */  nop
/* 00714 8087C504 45010007 */  bc1t    .L8087C524                 
/* 00718 8087C508 00000000 */  nop
/* 0071C 8087C50C 44814000 */  mtc1    $at, $f8                   ## $f8 = 40.00
/* 00720 8087C510 46008005 */  abs.s   $f0, $f16                  
/* 00724 8087C514 4600403C */  c.lt.s  $f8, $f0                   
/* 00728 8087C518 00000000 */  nop
/* 0072C 8087C51C 45020028 */  bc1fl   .L8087C5C0                 
/* 00730 8087C520 8FBF001C */  lw      $ra, 0x001C($sp)           
.L8087C524:
/* 00734 8087C524 8718CCD0 */  lh      $t8, %lo(D_8087CCD0)($t8)  
/* 00738 8087C528 8739CFB0 */  lh      $t9, %lo(D_8087CFB0)($t9)  
/* 0073C 8087C52C 44809000 */  mtc1    $zero, $f18                ## $f18 = 0.00
/* 00740 8087C530 3C018088 */  lui     $at, %hi(D_8087CCD8)       ## $at = 80880000
/* 00744 8087C534 03191023 */  subu    $v0, $t8, $t9              
/* 00748 8087C538 00021400 */  sll     $v0, $v0, 16               
/* 0074C 8087C53C 00021403 */  sra     $v0, $v0, 16               
/* 00750 8087C540 04400003 */  bltz    $v0, .L8087C550            
/* 00754 8087C544 E432CCD8 */  swc1    $f18, %lo(D_8087CCD8)($at) 
/* 00758 8087C548 10000002 */  beq     $zero, $zero, .L8087C554   
/* 0075C 8087C54C 00401825 */  or      $v1, $v0, $zero            ## $v1 = 00000000
.L8087C550:
/* 00760 8087C550 00021823 */  subu    $v1, $zero, $v0            
.L8087C554:
/* 00764 8087C554 28610080 */  slti    $at, $v1, 0x0080           
/* 00768 8087C558 1020000A */  beq     $at, $zero, .L8087C584     
/* 0076C 8087C55C 8FA40034 */  lw      $a0, 0x0034($sp)           
/* 00770 8087C560 0C00B2DD */  jal     Flags_SetSwitch
              
/* 00774 8087C564 92050168 */  lbu     $a1, 0x0168($s0)           ## 00000168
/* 00778 8087C568 24080064 */  addiu   $t0, $zero, 0x0064         ## $t0 = 00000064
/* 0077C 8087C56C 3C018088 */  lui     $at, %hi(D_8087CCD4)       ## $at = 80880000
/* 00780 8087C570 3C098088 */  lui     $t1, %hi(func_8087C114)    ## $t1 = 80880000
/* 00784 8087C574 A028CCD4 */  sb      $t0, %lo(D_8087CCD4)($at)  
/* 00788 8087C578 2529C114 */  addiu   $t1, $t1, %lo(func_8087C114) ## $t1 = 8087C114
/* 0078C 8087C57C 1000000F */  beq     $zero, $zero, .L8087C5BC   
/* 00790 8087C580 AE090164 */  sw      $t1, 0x0164($s0)           ## 00000164
.L8087C584:
/* 00794 8087C584 0C01E221 */  jal     func_80078884              
/* 00798 8087C588 24044806 */  addiu   $a0, $zero, 0x4806         ## $a0 = 00004806
/* 0079C 8087C58C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 007A0 8087C590 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 007A4 8087C594 240528CE */  addiu   $a1, $zero, 0x28CE         ## $a1 = 000028CE
/* 007A8 8087C598 8FA40034 */  lw      $a0, 0x0034($sp)           
/* 007AC 8087C59C 8E06014C */  lw      $a2, 0x014C($s0)           ## 0000014C
/* 007B0 8087C5A0 0C00FAFE */  jal     func_8003EBF8              
/* 007B4 8087C5A4 24850810 */  addiu   $a1, $a0, 0x0810           ## $a1 = 00000810
/* 007B8 8087C5A8 3C0B8088 */  lui     $t3, %hi(func_8087C5D0)    ## $t3 = 80880000
/* 007BC 8087C5AC 240A003C */  addiu   $t2, $zero, 0x003C         ## $t2 = 0000003C
/* 007C0 8087C5B0 256BC5D0 */  addiu   $t3, $t3, %lo(func_8087C5D0) ## $t3 = 8087C5D0
/* 007C4 8087C5B4 A60A016A */  sh      $t2, 0x016A($s0)           ## 0000016A
/* 007C8 8087C5B8 AE0B0164 */  sw      $t3, 0x0164($s0)           ## 00000164
.L8087C5BC:
/* 007CC 8087C5BC 8FBF001C */  lw      $ra, 0x001C($sp)           
.L8087C5C0:
/* 007D0 8087C5C0 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 007D4 8087C5C4 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 007D8 8087C5C8 03E00008 */  jr      $ra                        
/* 007DC 8087C5CC 00000000 */  nop
