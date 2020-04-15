glabel func_80ADA530
/* 015A0 80ADA530 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 015A4 80ADA534 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 015A8 80ADA538 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 015AC 80ADA53C AFBF001C */  sw      $ra, 0x001C($sp)           
/* 015B0 80ADA540 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 015B4 80ADA544 AFA50034 */  sw      $a1, 0x0034($sp)           
/* 015B8 80ADA548 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 015BC 80ADA54C AFA40028 */  sw      $a0, 0x0028($sp)           
/* 015C0 80ADA550 26040068 */  addiu   $a0, $s0, 0x0068           ## $a0 = 00000068
/* 015C4 80ADA554 3C063E4C */  lui     $a2, 0x3E4C                ## $a2 = 3E4C0000
/* 015C8 80ADA558 34C6CCCD */  ori     $a2, $a2, 0xCCCD           ## $a2 = 3E4CCCCD
/* 015CC 80ADA55C AFA40024 */  sw      $a0, 0x0024($sp)           
/* 015D0 80ADA560 0C01DE80 */  jal     Math_ApproxF
              
/* 015D4 80ADA564 3C053F80 */  lui     $a1, 0x3F80                ## $a1 = 3F800000
/* 015D8 80ADA568 8FA40028 */  lw      $a0, 0x0028($sp)           
/* 015DC 80ADA56C 0C0295B2 */  jal     func_800A56C8              
/* 015E0 80ADA570 24050000 */  addiu   $a1, $zero, 0x0000         ## $a1 = 00000000
/* 015E4 80ADA574 10400005 */  beq     $v0, $zero, .L80ADA58C     
/* 015E8 80ADA578 3C014348 */  lui     $at, 0x4348                ## $at = 43480000
/* 015EC 80ADA57C 8602019A */  lh      $v0, 0x019A($s0)           ## 0000019A
/* 015F0 80ADA580 10400002 */  beq     $v0, $zero, .L80ADA58C     
/* 015F4 80ADA584 244EFFFF */  addiu   $t6, $v0, 0xFFFF           ## $t6 = FFFFFFFF
/* 015F8 80ADA588 A60E019A */  sh      $t6, 0x019A($s0)           ## 0000019A
.L80ADA58C:
/* 015FC 80ADA58C C6040090 */  lwc1    $f4, 0x0090($s0)           ## 00000090
/* 01600 80ADA590 44813000 */  mtc1    $at, $f6                   ## $f6 = 200.00
/* 01604 80ADA594 3C0140A0 */  lui     $at, 0x40A0                ## $at = 40A00000
/* 01608 80ADA598 4606203C */  c.lt.s  $f4, $f6                   
/* 0160C 80ADA59C 00000000 */  nop
/* 01610 80ADA5A0 45020010 */  bc1fl   .L80ADA5E4                 
/* 01614 80ADA5A4 860F019A */  lh      $t7, 0x019A($s0)           ## 0000019A
/* 01618 80ADA5A8 C6080094 */  lwc1    $f8, 0x0094($s0)           ## 00000094
/* 0161C 80ADA5AC 44815000 */  mtc1    $at, $f10                  ## $f10 = 5.00
/* 01620 80ADA5B0 3C0141F0 */  lui     $at, 0x41F0                ## $at = 41F00000
/* 01624 80ADA5B4 44818000 */  mtc1    $at, $f16                  ## $f16 = 30.00
/* 01628 80ADA5B8 460A4000 */  add.s   $f0, $f8, $f10             
/* 0162C 80ADA5BC 46000005 */  abs.s   $f0, $f0                   
/* 01630 80ADA5C0 4610003C */  c.lt.s  $f0, $f16                  
/* 01634 80ADA5C4 00000000 */  nop
/* 01638 80ADA5C8 45020006 */  bc1fl   .L80ADA5E4                 
/* 0163C 80ADA5CC 860F019A */  lh      $t7, 0x019A($s0)           ## 0000019A
/* 01640 80ADA5D0 0C2B650F */  jal     func_80AD943C              
/* 01644 80ADA5D4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01648 80ADA5D8 1000000D */  beq     $zero, $zero, .L80ADA610   
/* 0164C 80ADA5DC 96180088 */  lhu     $t8, 0x0088($s0)           ## 00000088
/* 01650 80ADA5E0 860F019A */  lh      $t7, 0x019A($s0)           ## 0000019A
.L80ADA5E4:
/* 01654 80ADA5E4 8FA40024 */  lw      $a0, 0x0024($sp)           
/* 01658 80ADA5E8 24050000 */  addiu   $a1, $zero, 0x0000         ## $a1 = 00000000
/* 0165C 80ADA5EC 15E00007 */  bne     $t7, $zero, .L80ADA60C     
/* 01660 80ADA5F0 3C063E4C */  lui     $a2, 0x3E4C                ## $a2 = 3E4C0000
/* 01664 80ADA5F4 0C01DE80 */  jal     Math_ApproxF
              
/* 01668 80ADA5F8 34C6CCCD */  ori     $a2, $a2, 0xCCCD           ## $a2 = 3E4CCCCD
/* 0166C 80ADA5FC 50400004 */  beql    $v0, $zero, .L80ADA610     
/* 01670 80ADA600 96180088 */  lhu     $t8, 0x0088($s0)           ## 00000088
/* 01674 80ADA604 0C2B64DA */  jal     func_80AD9368              
/* 01678 80ADA608 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
.L80ADA60C:
/* 0167C 80ADA60C 96180088 */  lhu     $t8, 0x0088($s0)           ## 00000088
.L80ADA610:
/* 01680 80ADA610 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01684 80ADA614 26050008 */  addiu   $a1, $s0, 0x0008           ## $a1 = 00000008
/* 01688 80ADA618 33190008 */  andi    $t9, $t8, 0x0008           ## $t9 = 00000000
/* 0168C 80ADA61C 1320000B */  beq     $t9, $zero, .L80ADA64C     
/* 01690 80ADA620 00000000 */  nop
/* 01694 80ADA624 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01698 80ADA628 0C00B6B0 */  jal     func_8002DAC0              
/* 0169C 80ADA62C 26050008 */  addiu   $a1, $s0, 0x0008           ## $a1 = 00000008
/* 016A0 80ADA630 00022C00 */  sll     $a1, $v0, 16               
/* 016A4 80ADA634 00052C03 */  sra     $a1, $a1, 16               
/* 016A8 80ADA638 26040032 */  addiu   $a0, $s0, 0x0032           ## $a0 = 00000032
/* 016AC 80ADA63C 0C01DE2B */  jal     Math_ApproxUpdateScaledS
              
/* 016B0 80ADA640 2406071C */  addiu   $a2, $zero, 0x071C         ## $a2 = 0000071C
/* 016B4 80ADA644 10000012 */  beq     $zero, $zero, .L80ADA690   
/* 016B8 80ADA648 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80ADA64C:
/* 016BC 80ADA64C 0C00B6EC */  jal     func_8002DBB0              
/* 016C0 80ADA650 AFA50028 */  sw      $a1, 0x0028($sp)           
/* 016C4 80ADA654 3C014396 */  lui     $at, 0x4396                ## $at = 43960000
/* 016C8 80ADA658 44819000 */  mtc1    $at, $f18                  ## $f18 = 300.00
/* 016CC 80ADA65C 8FA50028 */  lw      $a1, 0x0028($sp)           
/* 016D0 80ADA660 4600903C */  c.lt.s  $f18, $f0                  
/* 016D4 80ADA664 00000000 */  nop
/* 016D8 80ADA668 45020009 */  bc1fl   .L80ADA690                 
/* 016DC 80ADA66C 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 016E0 80ADA670 0C00B6B0 */  jal     func_8002DAC0              
/* 016E4 80ADA674 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 016E8 80ADA678 00022C00 */  sll     $a1, $v0, 16               
/* 016EC 80ADA67C 00052C03 */  sra     $a1, $a1, 16               
/* 016F0 80ADA680 26040032 */  addiu   $a0, $s0, 0x0032           ## $a0 = 00000032
/* 016F4 80ADA684 0C01DE2B */  jal     Math_ApproxUpdateScaledS
              
/* 016F8 80ADA688 2406071C */  addiu   $a2, $zero, 0x071C         ## $a2 = 0000071C
/* 016FC 80ADA68C 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80ADA690:
/* 01700 80ADA690 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 01704 80ADA694 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 01708 80ADA698 03E00008 */  jr      $ra                        
/* 0170C 80ADA69C 00000000 */  nop
