.late_rodata
glabel D_80A7DFDC
    .float 1.2
    .balign 4

glabel D_80A7DFE0
    .float 0.8
    .balign 4

glabel D_80A7DFE4
    .float 1.9
    .balign 4

.text
glabel func_80A7C3F4
/* 005D4 80A7C3F4 27BDFFC8 */  addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
/* 005D8 80A7C3F8 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 005DC 80A7C3FC AFB00020 */  sw      $s0, 0x0020($sp)           
/* 005E0 80A7C400 AFA5003C */  sw      $a1, 0x003C($sp)           
/* 005E4 80A7C404 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 005E8 80A7C408 848E001C */  lh      $t6, 0x001C($a0)           ## 0000001C
/* 005EC 80A7C40C 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 005F0 80A7C410 3C063DCC */  lui     $a2, 0x3DCC                ## $a2 = 3DCC0000
/* 005F4 80A7C414 31CF0003 */  andi    $t7, $t6, 0x0003           ## $t7 = 00000000
/* 005F8 80A7C418 44050000 */  mfc1    $a1, $f0                   
/* 005FC 80A7C41C A7AF002E */  sh      $t7, 0x002E($sp)           
/* 00600 80A7C420 34C6CCCD */  ori     $a2, $a2, 0xCCCD           ## $a2 = 3DCCCCCD
/* 00604 80A7C424 24840068 */  addiu   $a0, $a0, 0x0068           ## $a0 = 00000068
/* 00608 80A7C428 3C073F00 */  lui     $a3, 0x3F00                ## $a3 = 3F000000
/* 0060C 80A7C42C 0C01E0C4 */  jal     Math_SmoothScaleMaxMinF
              
/* 00610 80A7C430 E7A00010 */  swc1    $f0, 0x0010($sp)           
/* 00614 80A7C434 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 00618 80A7C438 00000000 */  nop
/* 0061C 80A7C43C 3C0180A8 */  lui     $at, %hi(D_80A7DFDC)       ## $at = 80A80000
/* 00620 80A7C440 C426DFDC */  lwc1    $f6, %lo(D_80A7DFDC)($at)  
/* 00624 80A7C444 C6040068 */  lwc1    $f4, 0x0068($s0)           ## 00000068
/* 00628 80A7C448 3C0180A8 */  lui     $at, %hi(D_80A7DFE0)       ## $at = 80A80000
/* 0062C 80A7C44C C42ADFE0 */  lwc1    $f10, %lo(D_80A7DFE0)($at) 
/* 00630 80A7C450 46062202 */  mul.s   $f8, $f4, $f6              
/* 00634 80A7C454 44806000 */  mtc1    $zero, $f12                ## $f12 = 0.00
/* 00638 80A7C458 3C0180A8 */  lui     $at, %hi(D_80A7DFE4)       ## $at = 80A80000
/* 0063C 80A7C45C 460A0402 */  mul.s   $f16, $f0, $f10            
/* 00640 80A7C460 46088080 */  add.s   $f2, $f16, $f8             
/* 00644 80A7C464 460C103C */  c.lt.s  $f2, $f12                  
/* 00648 80A7C468 00000000 */  nop
/* 0064C 80A7C46C 45000003 */  bc1f    .L80A7C47C                 
/* 00650 80A7C470 00000000 */  nop
/* 00654 80A7C474 1000000A */  beq     $zero, $zero, .L80A7C4A0   
/* 00658 80A7C478 E60C01C8 */  swc1    $f12, 0x01C8($s0)          ## 000001C8
.L80A7C47C:
/* 0065C 80A7C47C C42CDFE4 */  lwc1    $f12, %lo(D_80A7DFE4)($at) 
/* 00660 80A7C480 4602603C */  c.lt.s  $f12, $f2                  
/* 00664 80A7C484 00000000 */  nop
/* 00668 80A7C488 45020004 */  bc1fl   .L80A7C49C                 
/* 0066C 80A7C48C 46001006 */  mov.s   $f0, $f2                   
/* 00670 80A7C490 10000002 */  beq     $zero, $zero, .L80A7C49C   
/* 00674 80A7C494 46006006 */  mov.s   $f0, $f12                  
/* 00678 80A7C498 46001006 */  mov.s   $f0, $f2                   
.L80A7C49C:
/* 0067C 80A7C49C E60001C8 */  swc1    $f0, 0x01C8($s0)           ## 000001C8
.L80A7C4A0:
/* 00680 80A7C4A0 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 00684 80A7C4A4 260401AC */  addiu   $a0, $s0, 0x01AC           ## $a0 = 000001AC
/* 00688 80A7C4A8 8619031A */  lh      $t9, 0x031A($s0)           ## 0000031A
/* 0068C 80A7C4AC 86180032 */  lh      $t8, 0x0032($s0)           ## 00000032
/* 00690 80A7C4B0 1F200003 */  bgtz    $t9, .L80A7C4C0            
/* 00694 80A7C4B4 A61800B6 */  sh      $t8, 0x00B6($s0)           ## 000000B6
/* 00698 80A7C4B8 0C29F166 */  jal     func_80A7C598              
/* 0069C 80A7C4BC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
.L80A7C4C0:
/* 006A0 80A7C4C0 96020314 */  lhu     $v0, 0x0314($s0)           ## 00000314
/* 006A4 80A7C4C4 87A3002E */  lh      $v1, 0x002E($sp)           
/* 006A8 80A7C4C8 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 006AC 80A7C4CC 30480004 */  andi    $t0, $v0, 0x0004           ## $t0 = 00000000
/* 006B0 80A7C4D0 11000004 */  beq     $t0, $zero, .L80A7C4E4     
/* 006B4 80A7C4D4 00000000 */  nop
/* 006B8 80A7C4D8 8609031C */  lh      $t1, 0x031C($s0)           ## 0000031C
/* 006BC 80A7C4DC 19200011 */  blez    $t1, .L80A7C524            
/* 006C0 80A7C4E0 00000000 */  nop
.L80A7C4E4:
/* 006C4 80A7C4E4 10610004 */  beq     $v1, $at, .L80A7C4F8       
/* 006C8 80A7C4E8 304A0001 */  andi    $t2, $v0, 0x0001           ## $t2 = 00000000
/* 006CC 80A7C4EC 24010003 */  addiu   $at, $zero, 0x0003         ## $at = 00000003
/* 006D0 80A7C4F0 54610011 */  bnel    $v1, $at, .L80A7C538       
/* 006D4 80A7C4F4 304E0001 */  andi    $t6, $v0, 0x0001           ## $t6 = 00000000
.L80A7C4F8:
/* 006D8 80A7C4F8 5140000F */  beql    $t2, $zero, .L80A7C538     
/* 006DC 80A7C4FC 304E0001 */  andi    $t6, $v0, 0x0001           ## $t6 = 00000000
/* 006E0 80A7C500 960B0088 */  lhu     $t3, 0x0088($s0)           ## 00000088
/* 006E4 80A7C504 3C0D80A8 */  lui     $t5, %hi(D_80A7DEB8)       ## $t5 = 80A80000
/* 006E8 80A7C508 316C0001 */  andi    $t4, $t3, 0x0001           ## $t4 = 00000000
/* 006EC 80A7C50C 5180000A */  beql    $t4, $zero, .L80A7C538     
/* 006F0 80A7C510 304E0001 */  andi    $t6, $v0, 0x0001           ## $t6 = 00000000
/* 006F4 80A7C514 85ADDEB8 */  lh      $t5, %lo(D_80A7DEB8)($t5)  
/* 006F8 80A7C518 29A10004 */  slti    $at, $t5, 0x0004           
/* 006FC 80A7C51C 54200006 */  bnel    $at, $zero, .L80A7C538     
/* 00700 80A7C520 304E0001 */  andi    $t6, $v0, 0x0001           ## $t6 = 00000000
.L80A7C524:
/* 00704 80A7C524 0C29F2F2 */  jal     func_80A7CBC8              
/* 00708 80A7C528 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0070C 80A7C52C 10000016 */  beq     $zero, $zero, .L80A7C588   
/* 00710 80A7C530 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 00714 80A7C534 304E0001 */  andi    $t6, $v0, 0x0001           ## $t6 = 00000000
.L80A7C538:
/* 00718 80A7C538 11C00009 */  beq     $t6, $zero, .L80A7C560     
/* 0071C 80A7C53C 3C014220 */  lui     $at, 0x4220                ## $at = 42200000
/* 00720 80A7C540 960F0088 */  lhu     $t7, 0x0088($s0)           ## 00000088
/* 00724 80A7C544 31F80040 */  andi    $t8, $t7, 0x0040           ## $t8 = 00000000
/* 00728 80A7C548 53000006 */  beql    $t8, $zero, .L80A7C564     
/* 0072C 80A7C54C C6120090 */  lwc1    $f18, 0x0090($s0)          ## 00000090
/* 00730 80A7C550 0C29F398 */  jal     func_80A7CE60              
/* 00734 80A7C554 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00738 80A7C558 1000000B */  beq     $zero, $zero, .L80A7C588   
/* 0073C 80A7C55C 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80A7C560:
/* 00740 80A7C560 C6120090 */  lwc1    $f18, 0x0090($s0)          ## 00000090
.L80A7C564:
/* 00744 80A7C564 44812000 */  mtc1    $at, $f4                   ## $f4 = 0.00
/* 00748 80A7C568 00000000 */  nop
/* 0074C 80A7C56C 4604903C */  c.lt.s  $f18, $f4                  
/* 00750 80A7C570 00000000 */  nop
/* 00754 80A7C574 45020004 */  bc1fl   .L80A7C588                 
/* 00758 80A7C578 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 0075C 80A7C57C 0C29F206 */  jal     func_80A7C818              
/* 00760 80A7C580 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00764 80A7C584 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80A7C588:
/* 00768 80A7C588 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 0076C 80A7C58C 27BD0038 */  addiu   $sp, $sp, 0x0038           ## $sp = 00000000
/* 00770 80A7C590 03E00008 */  jr      $ra                        
/* 00774 80A7C594 00000000 */  nop


