glabel func_80ADA8C0
/* 01930 80ADA8C0 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 01934 80ADA8C4 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 01938 80ADA8C8 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 0193C 80ADA8CC AFBF001C */  sw      $ra, 0x001C($sp)           
/* 01940 80ADA8D0 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 01944 80ADA8D4 AFA50034 */  sw      $a1, 0x0034($sp)           
/* 01948 80ADA8D8 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 0194C 80ADA8DC AFA40024 */  sw      $a0, 0x0024($sp)           
/* 01950 80ADA8E0 8FA40024 */  lw      $a0, 0x0024($sp)           
/* 01954 80ADA8E4 0C0295B2 */  jal     func_800A56C8              
/* 01958 80ADA8E8 24050000 */  addiu   $a1, $zero, 0x0000         ## $a1 = 00000000
/* 0195C 80ADA8EC 10400005 */  beq     $v0, $zero, .L80ADA904     
/* 01960 80ADA8F0 3C0143C0 */  lui     $at, 0x43C0                ## $at = 43C00000
/* 01964 80ADA8F4 8602019A */  lh      $v0, 0x019A($s0)           ## 0000019A
/* 01968 80ADA8F8 10400002 */  beq     $v0, $zero, .L80ADA904     
/* 0196C 80ADA8FC 244EFFFF */  addiu   $t6, $v0, 0xFFFF           ## $t6 = FFFFFFFF
/* 01970 80ADA900 A60E019A */  sh      $t6, 0x019A($s0)           ## 0000019A
.L80ADA904:
/* 01974 80ADA904 44812000 */  mtc1    $at, $f4                   ## $f4 = 384.00
/* 01978 80ADA908 C606015C */  lwc1    $f6, 0x015C($s0)           ## 0000015C
/* 0197C 80ADA90C 860F00B6 */  lh      $t7, 0x00B6($s0)           ## 000000B6
/* 01980 80ADA910 3C014040 */  lui     $at, 0x4040                ## $at = 40400000
/* 01984 80ADA914 46062202 */  mul.s   $f8, $f4, $f6              
/* 01988 80ADA918 44815000 */  mtc1    $at, $f10                  ## $f10 = 3.00
/* 0198C 80ADA91C 448F9000 */  mtc1    $t7, $f18                  ## $f18 = 0.00
/* 01990 80ADA920 8608019A */  lh      $t0, 0x019A($s0)           ## 0000019A
/* 01994 80ADA924 46809120 */  cvt.s.w $f4, $f18                  
/* 01998 80ADA928 460A4402 */  mul.s   $f16, $f8, $f10            
/* 0199C 80ADA92C 46102180 */  add.s   $f6, $f4, $f16             
/* 019A0 80ADA930 4600320D */  trunc.w.s $f8, $f6                   
/* 019A4 80ADA934 44194000 */  mfc1    $t9, $f8                   
/* 019A8 80ADA938 1500001F */  bne     $t0, $zero, .L80ADA9B8     
/* 019AC 80ADA93C A61900B6 */  sh      $t9, 0x00B6($s0)           ## 000000B6
/* 019B0 80ADA940 860900B6 */  lh      $t1, 0x00B6($s0)           ## 000000B6
/* 019B4 80ADA944 860A0032 */  lh      $t2, 0x0032($s0)           ## 00000032
/* 019B8 80ADA948 012A1023 */  subu    $v0, $t1, $t2              
/* 019BC 80ADA94C 00021400 */  sll     $v0, $v0, 16               
/* 019C0 80ADA950 00021403 */  sra     $v0, $v0, 16               
/* 019C4 80ADA954 04400003 */  bltz    $v0, .L80ADA964            
/* 019C8 80ADA958 00021823 */  subu    $v1, $zero, $v0            
/* 019CC 80ADA95C 10000001 */  beq     $zero, $zero, .L80ADA964   
/* 019D0 80ADA960 00401825 */  or      $v1, $v0, $zero            ## $v1 = 00000000
.L80ADA964:
/* 019D4 80ADA964 28611000 */  slti    $at, $v1, 0x1000           
/* 019D8 80ADA968 50200014 */  beql    $at, $zero, .L80ADA9BC     
/* 019DC 80ADA96C 8FA40024 */  lw      $a0, 0x0024($sp)           
/* 019E0 80ADA970 920B0194 */  lbu     $t3, 0x0194($s0)           ## 00000194
/* 019E4 80ADA974 240C0003 */  addiu   $t4, $zero, 0x0003         ## $t4 = 00000003
/* 019E8 80ADA978 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 019EC 80ADA97C 11600009 */  beq     $t3, $zero, .L80ADA9A4     
/* 019F0 80ADA980 00000000 */  nop
/* 019F4 80ADA984 920D02BD */  lbu     $t5, 0x02BD($s0)           ## 000002BD
/* 019F8 80ADA988 A20C02C0 */  sb      $t4, 0x02C0($s0)           ## 000002C0
/* 019FC 80ADA98C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01A00 80ADA990 31AEFFFB */  andi    $t6, $t5, 0xFFFB           ## $t6 = 00000000
/* 01A04 80ADA994 0C2B64F1 */  jal     func_80AD93C4              
/* 01A08 80ADA998 A20E02BD */  sb      $t6, 0x02BD($s0)           ## 000002BD
/* 01A0C 80ADA99C 10000007 */  beq     $zero, $zero, .L80ADA9BC   
/* 01A10 80ADA9A0 8FA40024 */  lw      $a0, 0x0024($sp)           
.L80ADA9A4:
/* 01A14 80ADA9A4 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 01A18 80ADA9A8 240538EF */  addiu   $a1, $zero, 0x38EF         ## $a1 = 000038EF
/* 01A1C 80ADA9AC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01A20 80ADA9B0 0C2B6709 */  jal     func_80AD9C24              
/* 01A24 80ADA9B4 8FA50034 */  lw      $a1, 0x0034($sp)           
.L80ADA9B8:
/* 01A28 80ADA9B8 8FA40024 */  lw      $a0, 0x0024($sp)           
.L80ADA9BC:
/* 01A2C 80ADA9BC 0C0295B2 */  jal     func_800A56C8              
/* 01A30 80ADA9C0 3C053F80 */  lui     $a1, 0x3F80                ## $a1 = 3F800000
/* 01A34 80ADA9C4 10400003 */  beq     $v0, $zero, .L80ADA9D4     
/* 01A38 80ADA9C8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01A3C 80ADA9CC 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 01A40 80ADA9D0 240538EE */  addiu   $a1, $zero, 0x38EE         ## $a1 = 000038EE
.L80ADA9D4:
/* 01A44 80ADA9D4 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 01A48 80ADA9D8 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 01A4C 80ADA9DC 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 01A50 80ADA9E0 03E00008 */  jr      $ra                        
/* 01A54 80ADA9E4 00000000 */  nop


