glabel func_809EA0C4
/* 00B64 809EA0C4 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 00B68 809EA0C8 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 00B6C 809EA0CC 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00B70 809EA0D0 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00B74 809EA0D4 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 00B78 809EA0D8 AFA50034 */  sw      $a1, 0x0034($sp)           
/* 00B7C 809EA0DC 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 00B80 809EA0E0 AFA40024 */  sw      $a0, 0x0024($sp)           
/* 00B84 809EA0E4 10400005 */  beq     $v0, $zero, .L809EA0FC     
/* 00B88 809EA0E8 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 00B8C 809EA0EC 0C27A5BF */  jal     func_809E96FC              
/* 00B90 809EA0F0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00B94 809EA0F4 10000023 */  beq     $zero, $zero, .L809EA184   
/* 00B98 809EA0F8 8FA40024 */  lw      $a0, 0x0024($sp)           
.L809EA0FC:
/* 00B9C 809EA0FC 44811000 */  mtc1    $at, $f2                   ## $f2 = 0.00
/* 00BA0 809EA100 C6000164 */  lwc1    $f0, 0x0164($s0)           ## 00000164
/* 00BA4 809EA104 3C014040 */  lui     $at, 0x4040                ## $at = 40400000
/* 00BA8 809EA108 4602003C */  c.lt.s  $f0, $f2                   
/* 00BAC 809EA10C 00000000 */  nop
/* 00BB0 809EA110 45020004 */  bc1fl   .L809EA124                 
/* 00BB4 809EA114 44812000 */  mtc1    $at, $f4                   ## $f4 = 3.00
/* 00BB8 809EA118 1000000C */  beq     $zero, $zero, .L809EA14C   
/* 00BBC 809EA11C 46001006 */  mov.s   $f0, $f2                   
/* 00BC0 809EA120 44812000 */  mtc1    $at, $f4                   ## $f4 = 3.00
.L809EA124:
/* 00BC4 809EA124 3C014040 */  lui     $at, 0x4040                ## $at = 40400000
/* 00BC8 809EA128 4600203C */  c.lt.s  $f4, $f0                   
/* 00BCC 809EA12C 00000000 */  nop
/* 00BD0 809EA130 45020005 */  bc1fl   .L809EA148                 
/* 00BD4 809EA134 46000086 */  mov.s   $f2, $f0                   
/* 00BD8 809EA138 44811000 */  mtc1    $at, $f2                   ## $f2 = 3.00
/* 00BDC 809EA13C 10000003 */  beq     $zero, $zero, .L809EA14C   
/* 00BE0 809EA140 46001006 */  mov.s   $f0, $f2                   
/* 00BE4 809EA144 46000086 */  mov.s   $f2, $f0                   
.L809EA148:
/* 00BE8 809EA148 46001006 */  mov.s   $f0, $f2                   
.L809EA14C:
/* 00BEC 809EA14C 3C014040 */  lui     $at, 0x4040                ## $at = 40400000
/* 00BF0 809EA150 44813000 */  mtc1    $at, $f6                   ## $f6 = 3.00
/* 00BF4 809EA154 3C014140 */  lui     $at, 0x4140                ## $at = 41400000
/* 00BF8 809EA158 44815000 */  mtc1    $at, $f10                  ## $f10 = 12.00
/* 00BFC 809EA15C 46003201 */  sub.s   $f8, $f6, $f0              
/* 00C00 809EA160 3C0140A0 */  lui     $at, 0x40A0                ## $at = 40A00000
/* 00C04 809EA164 44819000 */  mtc1    $at, $f18                  ## $f18 = 5.00
/* 00C08 809EA168 460A4402 */  mul.s   $f16, $f8, $f10            
/* 00C0C 809EA16C 46128100 */  add.s   $f4, $f16, $f18            
/* 00C10 809EA170 4600218D */  trunc.w.s $f6, $f4                   
/* 00C14 809EA174 440F3000 */  mfc1    $t7, $f6                   
/* 00C18 809EA178 00000000 */  nop
/* 00C1C 809EA17C A60F030A */  sh      $t7, 0x030A($s0)           ## 0000030A
/* 00C20 809EA180 8FA40024 */  lw      $a0, 0x0024($sp)           
.L809EA184:
/* 00C24 809EA184 0C0295B2 */  jal     func_800A56C8              
/* 00C28 809EA188 3C054080 */  lui     $a1, 0x4080                ## $a1 = 40800000
/* 00C2C 809EA18C 10400004 */  beq     $v0, $zero, .L809EA1A0     
/* 00C30 809EA190 26040024 */  addiu   $a0, $s0, 0x0024           ## $a0 = 00000024
/* 00C34 809EA194 921802D9 */  lbu     $t8, 0x02D9($s0)           ## 000002D9
/* 00C38 809EA198 3319FFFE */  andi    $t9, $t8, 0xFFFE           ## $t9 = 00000000
/* 00C3C 809EA19C A21902D9 */  sb      $t9, 0x02D9($s0)           ## 000002D9
.L809EA1A0:
/* 00C40 809EA1A0 8E050008 */  lw      $a1, 0x0008($s0)           ## 00000008
/* 00C44 809EA1A4 3C063F00 */  lui     $a2, 0x3F00                ## $a2 = 3F000000
/* 00C48 809EA1A8 0C01E107 */  jal     Math_SmoothScaleMaxF
              
/* 00C4C 809EA1AC 3C074040 */  lui     $a3, 0x4040                ## $a3 = 40400000
/* 00C50 809EA1B0 2604002C */  addiu   $a0, $s0, 0x002C           ## $a0 = 0000002C
/* 00C54 809EA1B4 8E050010 */  lw      $a1, 0x0010($s0)           ## 00000010
/* 00C58 809EA1B8 3C063F00 */  lui     $a2, 0x3F00                ## $a2 = 3F000000
/* 00C5C 809EA1BC 0C01E107 */  jal     Math_SmoothScaleMaxF
              
/* 00C60 809EA1C0 3C074040 */  lui     $a3, 0x4040                ## $a3 = 40400000
/* 00C64 809EA1C4 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00C68 809EA1C8 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 00C6C 809EA1CC 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 00C70 809EA1D0 03E00008 */  jr      $ra                        
/* 00C74 809EA1D4 00000000 */  nop


