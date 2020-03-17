glabel func_80ADAC70
/* 01CE0 80ADAC70 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 01CE4 80ADAC74 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 01CE8 80ADAC78 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 01CEC 80ADAC7C AFBF001C */  sw      $ra, 0x001C($sp)           
/* 01CF0 80ADAC80 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 01CF4 80ADAC84 AFA5002C */  sw      $a1, 0x002C($sp)           
/* 01CF8 80ADAC88 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 01CFC 80ADAC8C AFA40024 */  sw      $a0, 0x0024($sp)           
/* 01D00 80ADAC90 8605008A */  lh      $a1, 0x008A($s0)           ## 0000008A
/* 01D04 80ADAC94 34018000 */  ori     $at, $zero, 0x8000         ## $at = 00008000
/* 01D08 80ADAC98 26040032 */  addiu   $a0, $s0, 0x0032           ## $a0 = 00000032
/* 01D0C 80ADAC9C 00A12821 */  addu    $a1, $a1, $at              
/* 01D10 80ADACA0 00052C00 */  sll     $a1, $a1, 16               
/* 01D14 80ADACA4 00052C03 */  sra     $a1, $a1, 16               
/* 01D18 80ADACA8 0C01DE2B */  jal     Math_ApproxUpdateScaledS
              
/* 01D1C 80ADACAC 2406071C */  addiu   $a2, $zero, 0x071C         ## $a2 = 0000071C
/* 01D20 80ADACB0 8FA40024 */  lw      $a0, 0x0024($sp)           
/* 01D24 80ADACB4 0C0295B2 */  jal     func_800A56C8              
/* 01D28 80ADACB8 24050000 */  addiu   $a1, $zero, 0x0000         ## $a1 = 00000000
/* 01D2C 80ADACBC 50400006 */  beql    $v0, $zero, .L80ADACD8     
/* 01D30 80ADACC0 960F0088 */  lhu     $t7, 0x0088($s0)           ## 00000088
/* 01D34 80ADACC4 8602019A */  lh      $v0, 0x019A($s0)           ## 0000019A
/* 01D38 80ADACC8 10400002 */  beq     $v0, $zero, .L80ADACD4     
/* 01D3C 80ADACCC 244EFFFF */  addiu   $t6, $v0, 0xFFFF           ## $t6 = FFFFFFFF
/* 01D40 80ADACD0 A60E019A */  sh      $t6, 0x019A($s0)           ## 0000019A
.L80ADACD4:
/* 01D44 80ADACD4 960F0088 */  lhu     $t7, 0x0088($s0)           ## 00000088
.L80ADACD8:
/* 01D48 80ADACD8 31F80008 */  andi    $t8, $t7, 0x0008           ## $t8 = 00000000
/* 01D4C 80ADACDC 5300000B */  beql    $t8, $zero, .L80ADAD0C     
/* 01D50 80ADACE0 860A019A */  lh      $t2, 0x019A($s0)           ## 0000019A
/* 01D54 80ADACE4 92080199 */  lbu     $t0, 0x0199($s0)           ## 00000199
/* 01D58 80ADACE8 861900B6 */  lh      $t9, 0x00B6($s0)           ## 000000B6
/* 01D5C 80ADACEC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01D60 80ADACF0 35090002 */  ori     $t1, $t0, 0x0002           ## $t1 = 00000002
/* 01D64 80ADACF4 A2090199 */  sb      $t1, 0x0199($s0)           ## 00000199
/* 01D68 80ADACF8 0C2B65C6 */  jal     func_80AD9718              
/* 01D6C 80ADACFC A6190032 */  sh      $t9, 0x0032($s0)           ## 00000032
/* 01D70 80ADAD00 10000010 */  beq     $zero, $zero, .L80ADAD44   
/* 01D74 80ADAD04 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 01D78 80ADAD08 860A019A */  lh      $t2, 0x019A($s0)           ## 0000019A
.L80ADAD0C:
/* 01D7C 80ADAD0C 3C014370 */  lui     $at, 0x4370                ## $at = 43700000
/* 01D80 80ADAD10 5540000C */  bnel    $t2, $zero, .L80ADAD44     
/* 01D84 80ADAD14 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 01D88 80ADAD18 44812000 */  mtc1    $at, $f4                   ## $f4 = 240.00
/* 01D8C 80ADAD1C C6060090 */  lwc1    $f6, 0x0090($s0)           ## 00000090
/* 01D90 80ADAD20 4606203C */  c.lt.s  $f4, $f6                   
/* 01D94 80ADAD24 00000000 */  nop
/* 01D98 80ADAD28 45020006 */  bc1fl   .L80ADAD44                 
/* 01D9C 80ADAD2C 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 01DA0 80ADAD30 860B00B6 */  lh      $t3, 0x00B6($s0)           ## 000000B6
/* 01DA4 80ADAD34 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01DA8 80ADAD38 0C2B64F1 */  jal     func_80AD93C4              
/* 01DAC 80ADAD3C A60B0032 */  sh      $t3, 0x0032($s0)           ## 00000032
/* 01DB0 80ADAD40 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80ADAD44:
/* 01DB4 80ADAD44 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 01DB8 80ADAD48 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 01DBC 80ADAD4C 03E00008 */  jr      $ra                        
/* 01DC0 80ADAD50 00000000 */  nop


