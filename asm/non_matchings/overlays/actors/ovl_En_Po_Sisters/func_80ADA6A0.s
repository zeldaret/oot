glabel func_80ADA6A0
/* 01710 80ADA6A0 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 01714 80ADA6A4 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 01718 80ADA6A8 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 0171C 80ADA6AC 8CAE1C44 */  lw      $t6, 0x1C44($a1)           ## 00001C44
/* 01720 80ADA6B0 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 01724 80ADA6B4 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 01728 80ADA6B8 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 0172C 80ADA6BC AFAE0024 */  sw      $t6, 0x0024($sp)           
/* 01730 80ADA6C0 8FB80024 */  lw      $t8, 0x0024($sp)           
/* 01734 80ADA6C4 860F008A */  lh      $t7, 0x008A($s0)           ## 0000008A
/* 01738 80ADA6C8 3C063E4C */  lui     $a2, 0x3E4C                ## $a2 = 3E4C0000
/* 0173C 80ADA6CC 871900B6 */  lh      $t9, 0x00B6($t8)           ## 000000B6
/* 01740 80ADA6D0 34C6CCCD */  ori     $a2, $a2, 0xCCCD           ## $a2 = 3E4CCCCD
/* 01744 80ADA6D4 26040068 */  addiu   $a0, $s0, 0x0068           ## $a0 = 00000068
/* 01748 80ADA6D8 01F91023 */  subu    $v0, $t7, $t9              
/* 0174C 80ADA6DC 00021400 */  sll     $v0, $v0, 16               
/* 01750 80ADA6E0 00021403 */  sra     $v0, $v0, 16               
/* 01754 80ADA6E4 A7A20022 */  sh      $v0, 0x0022($sp)           
/* 01758 80ADA6E8 0C01DE80 */  jal     Math_ApproxF
              
/* 0175C 80ADA6EC 3C054000 */  lui     $a1, 0x4000                ## $a1 = 40000000
/* 01760 80ADA6F0 87A20022 */  lh      $v0, 0x0022($sp)           
/* 01764 80ADA6F4 28413001 */  slti    $at, $v0, 0x3001           
/* 01768 80ADA6F8 5420000B */  bnel    $at, $zero, .L80ADA728     
/* 0176C 80ADA6FC 2841D000 */  slti    $at, $v0, 0xD000           
/* 01770 80ADA700 8605008A */  lh      $a1, 0x008A($s0)           ## 0000008A
/* 01774 80ADA704 26040032 */  addiu   $a0, $s0, 0x0032           ## $a0 = 00000032
/* 01778 80ADA708 2406071C */  addiu   $a2, $zero, 0x071C         ## $a2 = 0000071C
/* 0177C 80ADA70C 24A53000 */  addiu   $a1, $a1, 0x3000           ## $a1 = 00003000
/* 01780 80ADA710 00052C00 */  sll     $a1, $a1, 16               
/* 01784 80ADA714 0C01DE2B */  jal     Math_ApproxUpdateScaledS
              
/* 01788 80ADA718 00052C03 */  sra     $a1, $a1, 16               
/* 0178C 80ADA71C 10000011 */  beq     $zero, $zero, .L80ADA764   
/* 01790 80ADA720 3C014320 */  lui     $at, 0x4320                ## $at = 43200000
/* 01794 80ADA724 2841D000 */  slti    $at, $v0, 0xD000           
.L80ADA728:
/* 01798 80ADA728 1020000A */  beq     $at, $zero, .L80ADA754     
/* 0179C 80ADA72C 26040032 */  addiu   $a0, $s0, 0x0032           ## $a0 = 00000032
/* 017A0 80ADA730 8605008A */  lh      $a1, 0x008A($s0)           ## 0000008A
/* 017A4 80ADA734 26040032 */  addiu   $a0, $s0, 0x0032           ## $a0 = 00000032
/* 017A8 80ADA738 2406071C */  addiu   $a2, $zero, 0x071C         ## $a2 = 0000071C
/* 017AC 80ADA73C 24A5D000 */  addiu   $a1, $a1, 0xD000           ## $a1 = FFFFD000
/* 017B0 80ADA740 00052C00 */  sll     $a1, $a1, 16               
/* 017B4 80ADA744 0C01DE2B */  jal     Math_ApproxUpdateScaledS
              
/* 017B8 80ADA748 00052C03 */  sra     $a1, $a1, 16               
/* 017BC 80ADA74C 10000005 */  beq     $zero, $zero, .L80ADA764   
/* 017C0 80ADA750 3C014320 */  lui     $at, 0x4320                ## $at = 43200000
.L80ADA754:
/* 017C4 80ADA754 8605008A */  lh      $a1, 0x008A($s0)           ## 0000008A
/* 017C8 80ADA758 0C01DE2B */  jal     Math_ApproxUpdateScaledS
              
/* 017CC 80ADA75C 2406071C */  addiu   $a2, $zero, 0x071C         ## $a2 = 0000071C
/* 017D0 80ADA760 3C014320 */  lui     $at, 0x4320                ## $at = 43200000
.L80ADA764:
/* 017D4 80ADA764 44812000 */  mtc1    $at, $f4                   ## $f4 = 160.00
/* 017D8 80ADA768 C6020090 */  lwc1    $f2, 0x0090($s0)           ## 00000090
/* 017DC 80ADA76C 3C0140A0 */  lui     $at, 0x40A0                ## $at = 40A00000
/* 017E0 80ADA770 4604103C */  c.lt.s  $f2, $f4                   
/* 017E4 80ADA774 00000000 */  nop
/* 017E8 80ADA778 45020010 */  bc1fl   .L80ADA7BC                 
/* 017EC 80ADA77C 3C014370 */  lui     $at, 0x4370                ## $at = 43700000
/* 017F0 80ADA780 C6060094 */  lwc1    $f6, 0x0094($s0)           ## 00000094
/* 017F4 80ADA784 44814000 */  mtc1    $at, $f8                   ## $f8 = 240.00
/* 017F8 80ADA788 3C0141F0 */  lui     $at, 0x41F0                ## $at = 41F00000
/* 017FC 80ADA78C 44815000 */  mtc1    $at, $f10                  ## $f10 = 30.00
/* 01800 80ADA790 46083000 */  add.s   $f0, $f6, $f8              
/* 01804 80ADA794 46000005 */  abs.s   $f0, $f0                   
/* 01808 80ADA798 460A003C */  c.lt.s  $f0, $f10                  
/* 0180C 80ADA79C 00000000 */  nop
/* 01810 80ADA7A0 45020006 */  bc1fl   .L80ADA7BC                 
/* 01814 80ADA7A4 3C014370 */  lui     $at, 0x4370                ## $at = 43700000
/* 01818 80ADA7A8 0C2B6513 */  jal     func_80AD944C              
/* 0181C 80ADA7AC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01820 80ADA7B0 1000000B */  beq     $zero, $zero, .L80ADA7E0   
/* 01824 80ADA7B4 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 01828 80ADA7B8 3C014370 */  lui     $at, 0x4370                ## $at = 43700000
.L80ADA7BC:
/* 0182C 80ADA7BC 44818000 */  mtc1    $at, $f16                  ## $f16 = 240.00
/* 01830 80ADA7C0 00000000 */  nop
/* 01834 80ADA7C4 4602803C */  c.lt.s  $f16, $f2                  
/* 01838 80ADA7C8 00000000 */  nop
/* 0183C 80ADA7CC 45020004 */  bc1fl   .L80ADA7E0                 
/* 01840 80ADA7D0 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 01844 80ADA7D4 0C2B64F1 */  jal     func_80AD93C4              
/* 01848 80ADA7D8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0184C 80ADA7DC 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80ADA7E0:
/* 01850 80ADA7E0 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 01854 80ADA7E4 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 01858 80ADA7E8 03E00008 */  jr      $ra                        
/* 0185C 80ADA7EC 00000000 */  nop
