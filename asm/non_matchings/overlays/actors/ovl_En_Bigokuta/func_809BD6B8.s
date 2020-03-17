glabel func_809BD6B8
/* 00A58 809BD6B8 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00A5C 809BD6BC AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00A60 809BD6C0 908E0195 */  lbu     $t6, 0x0195($a0)           ## 00000195
/* 00A64 809BD6C4 55C00010 */  bnel    $t6, $zero, .L809BD708     
/* 00A68 809BD6C8 849900B6 */  lh      $t9, 0x00B6($a0)           ## 000000B6
/* 00A6C 809BD6CC 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 00A70 809BD6D0 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00A74 809BD6D4 3C013F00 */  lui     $at, 0x3F00                ## $at = 3F000000
/* 00A78 809BD6D8 44812000 */  mtc1    $at, $f4                   ## $f4 = 0.50
/* 00A7C 809BD6DC 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 00A80 809BD6E0 240F0018 */  addiu   $t7, $zero, 0x0018         ## $t7 = 00000018
/* 00A84 809BD6E4 4604003C */  c.lt.s  $f0, $f4                   
/* 00A88 809BD6E8 2418001C */  addiu   $t8, $zero, 0x001C         ## $t8 = 0000001C
/* 00A8C 809BD6EC 45000003 */  bc1f    .L809BD6FC                 
/* 00A90 809BD6F0 00000000 */  nop
/* 00A94 809BD6F4 10000011 */  beq     $zero, $zero, .L809BD73C   
/* 00A98 809BD6F8 A48F0196 */  sh      $t7, 0x0196($a0)           ## 00000196
.L809BD6FC:
/* 00A9C 809BD6FC 1000000F */  beq     $zero, $zero, .L809BD73C   
/* 00AA0 809BD700 A4980196 */  sh      $t8, 0x0196($a0)           ## 00000196
/* 00AA4 809BD704 849900B6 */  lh      $t9, 0x00B6($a0)           ## 000000B6
.L809BD708:
/* 00AA8 809BD708 8488008A */  lh      $t0, 0x008A($a0)           ## 0000008A
/* 00AAC 809BD70C 24090004 */  addiu   $t1, $zero, 0x0004         ## $t1 = 00000004
/* 00AB0 809BD710 03281023 */  subu    $v0, $t9, $t0              
/* 00AB4 809BD714 04400003 */  bltz    $v0, .L809BD724            
/* 00AB8 809BD718 00021823 */  subu    $v1, $zero, $v0            
/* 00ABC 809BD71C 10000001 */  beq     $zero, $zero, .L809BD724   
/* 00AC0 809BD720 00401825 */  or      $v1, $v0, $zero            ## $v1 = 00000000
.L809BD724:
/* 00AC4 809BD724 28614000 */  slti    $at, $v1, 0x4000           
/* 00AC8 809BD728 54200004 */  bnel    $at, $zero, .L809BD73C     
/* 00ACC 809BD72C A4800196 */  sh      $zero, 0x0196($a0)         ## 00000196
/* 00AD0 809BD730 10000002 */  beq     $zero, $zero, .L809BD73C   
/* 00AD4 809BD734 A4890196 */  sh      $t1, 0x0196($a0)           ## 00000196
/* 00AD8 809BD738 A4800196 */  sh      $zero, 0x0196($a0)         ## 00000196
.L809BD73C:
/* 00ADC 809BD73C 908A029D */  lbu     $t2, 0x029D($a0)           ## 0000029D
/* 00AE0 809BD740 3C0C809C */  lui     $t4, %hi(func_809BE3E4)    ## $t4 = 809C0000
/* 00AE4 809BD744 258CE3E4 */  addiu   $t4, $t4, %lo(func_809BE3E4) ## $t4 = 809BE3E4
/* 00AE8 809BD748 314BFFFE */  andi    $t3, $t2, 0xFFFE           ## $t3 = 00000000
/* 00AEC 809BD74C A480019A */  sh      $zero, 0x019A($a0)         ## 0000019A
/* 00AF0 809BD750 A08B029D */  sb      $t3, 0x029D($a0)           ## 0000029D
/* 00AF4 809BD754 AC8C0190 */  sw      $t4, 0x0190($a0)           ## 00000190
/* 00AF8 809BD758 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00AFC 809BD75C 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00B00 809BD760 03E00008 */  jr      $ra                        
/* 00B04 809BD764 00000000 */  nop


