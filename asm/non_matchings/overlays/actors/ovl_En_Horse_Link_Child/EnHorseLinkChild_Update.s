.late_rodata
glabel D_80A6AFF4
    .float 0.025

.text
glabel EnHorseLinkChild_Update
/* 016D8 80A6AAA8 27BDFFC8 */  addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
/* 016DC 80A6AAAC AFB0001C */  sw      $s0, 0x001C($sp)           
/* 016E0 80A6AAB0 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 016E4 80A6AAB4 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 016E8 80A6AAB8 AFB10020 */  sw      $s1, 0x0020($sp)           
/* 016EC 80A6AABC 8E0E014C */  lw      $t6, 0x014C($s0)           ## 0000014C
/* 016F0 80A6AAC0 3C1980A7 */  lui     $t9, %hi(D_80A6AF7C)       ## $t9 = 80A70000
/* 016F4 80A6AAC4 00A08825 */  or      $s1, $a1, $zero            ## $s1 = 00000000
/* 016F8 80A6AAC8 000E7880 */  sll     $t7, $t6,  2               
/* 016FC 80A6AACC 032FC821 */  addu    $t9, $t9, $t7              
/* 01700 80A6AAD0 8F39AF7C */  lw      $t9, %lo(D_80A6AF7C)($t9)  
/* 01704 80A6AAD4 0320F809 */  jalr    $ra, $t9                   
/* 01708 80A6AAD8 00000000 */  nop
/* 0170C 80A6AADC 0C00B638 */  jal     Actor_MoveForward
              
/* 01710 80A6AAE0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01714 80A6AAE4 3C0142C8 */  lui     $at, 0x42C8                ## $at = 42C80000
/* 01718 80A6AAE8 44812000 */  mtc1    $at, $f4                   ## $f4 = 100.00
/* 0171C 80A6AAEC 2418001D */  addiu   $t8, $zero, 0x001D         ## $t8 = 0000001D
/* 01720 80A6AAF0 AFB80014 */  sw      $t8, 0x0014($sp)           
/* 01724 80A6AAF4 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 01728 80A6AAF8 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 0172C 80A6AAFC 3C0641A0 */  lui     $a2, 0x41A0                ## $a2 = 41A00000
/* 01730 80A6AB00 3C07425C */  lui     $a3, 0x425C                ## $a3 = 425C0000
/* 01734 80A6AB04 0C00B92D */  jal     func_8002E4B4              
/* 01738 80A6AB08 E7A40010 */  swc1    $f4, 0x0010($sp)           
/* 0173C 80A6AB0C 862800A4 */  lh      $t0, 0x00A4($s1)           ## 000000A4
/* 01740 80A6AB10 24010063 */  addiu   $at, $zero, 0x0063         ## $at = 00000063
/* 01744 80A6AB14 15010008 */  bne     $t0, $at, .L80A6AB38       
/* 01748 80A6AB18 3C01C516 */  lui     $at, 0xC516                ## $at = C5160000
/* 0174C 80A6AB1C 44810000 */  mtc1    $at, $f0                   ## $f0 = -2400.00
/* 01750 80A6AB20 C606002C */  lwc1    $f6, 0x002C($s0)           ## 0000002C
/* 01754 80A6AB24 4600303C */  c.lt.s  $f6, $f0                   
/* 01758 80A6AB28 00000000 */  nop
/* 0175C 80A6AB2C 45020003 */  bc1fl   .L80A6AB3C                 
/* 01760 80A6AB30 8E090028 */  lw      $t1, 0x0028($s0)           ## 00000028
/* 01764 80A6AB34 E600002C */  swc1    $f0, 0x002C($s0)           ## 0000002C
.L80A6AB38:
/* 01768 80A6AB38 8E090028 */  lw      $t1, 0x0028($s0)           ## 00000028
.L80A6AB3C:
/* 0176C 80A6AB3C 3C01428C */  lui     $at, 0x428C                ## $at = 428C0000
/* 01770 80A6AB40 8E0A0024 */  lw      $t2, 0x0024($s0)           ## 00000024
/* 01774 80A6AB44 AE09003C */  sw      $t1, 0x003C($s0)           ## 0000003C
/* 01778 80A6AB48 C608003C */  lwc1    $f8, 0x003C($s0)           ## 0000003C
/* 0177C 80A6AB4C 44815000 */  mtc1    $at, $f10                  ## $f10 = 70.00
/* 01780 80A6AB50 AE0A0038 */  sw      $t2, 0x0038($s0)           ## 00000038
/* 01784 80A6AB54 8E0A002C */  lw      $t2, 0x002C($s0)           ## 0000002C
/* 01788 80A6AB58 460A4400 */  add.s   $f16, $f8, $f10            
/* 0178C 80A6AB5C AE0A0040 */  sw      $t2, 0x0040($s0)           ## 00000040
/* 01790 80A6AB60 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 01794 80A6AB64 E610003C */  swc1    $f16, 0x003C($s0)          ## 0000003C
/* 01798 80A6AB68 3C0180A7 */  lui     $at, %hi(D_80A6AFF4)       ## $at = 80A70000
/* 0179C 80A6AB6C C432AFF4 */  lwc1    $f18, %lo(D_80A6AFF4)($at) 
/* 017A0 80A6AB70 260601F4 */  addiu   $a2, $s0, 0x01F4           ## $a2 = 000001F4
/* 017A4 80A6AB74 00C02825 */  or      $a1, $a2, $zero            ## $a1 = 000001F4
/* 017A8 80A6AB78 4612003C */  c.lt.s  $f0, $f18                  
/* 017AC 80A6AB7C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 017B0 80A6AB80 45020007 */  bc1fl   .L80A6ABA0                 
/* 017B4 80A6AB84 920201EC */  lbu     $v0, 0x01EC($s0)           ## 000001EC
/* 017B8 80A6AB88 920201EC */  lbu     $v0, 0x01EC($s0)           ## 000001EC
/* 017BC 80A6AB8C 14400003 */  bne     $v0, $zero, .L80A6AB9C     
/* 017C0 80A6AB90 244B0001 */  addiu   $t3, $v0, 0x0001           ## $t3 = 00000001
/* 017C4 80A6AB94 10000009 */  beq     $zero, $zero, .L80A6ABBC   
/* 017C8 80A6AB98 A20B01EC */  sb      $t3, 0x01EC($s0)           ## 000001EC
.L80A6AB9C:
/* 017CC 80A6AB9C 920201EC */  lbu     $v0, 0x01EC($s0)           ## 000001EC
.L80A6ABA0:
/* 017D0 80A6ABA0 18400006 */  blez    $v0, .L80A6ABBC            
/* 017D4 80A6ABA4 244C0001 */  addiu   $t4, $v0, 0x0001           ## $t4 = 00000001
/* 017D8 80A6ABA8 318D00FF */  andi    $t5, $t4, 0x00FF           ## $t5 = 00000001
/* 017DC 80A6ABAC 29A10004 */  slti    $at, $t5, 0x0004           
/* 017E0 80A6ABB0 14200002 */  bne     $at, $zero, .L80A6ABBC     
/* 017E4 80A6ABB4 A20C01EC */  sb      $t4, 0x01EC($s0)           ## 000001EC
/* 017E8 80A6ABB8 A20001EC */  sb      $zero, 0x01EC($s0)         ## 000001EC
.L80A6ABBC:
/* 017EC 80A6ABBC 0C0189B7 */  jal     Collider_CylinderUpdate
              
/* 017F0 80A6ABC0 AFA6002C */  sw      $a2, 0x002C($sp)           
/* 017F4 80A6ABC4 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 017F8 80A6ABC8 34211E60 */  ori     $at, $at, 0x1E60           ## $at = 00011E60
/* 017FC 80A6ABCC 8FA6002C */  lw      $a2, 0x002C($sp)           
/* 01800 80A6ABD0 02212821 */  addu    $a1, $s1, $at              
/* 01804 80A6ABD4 0C017713 */  jal     CollisionCheck_SetOC
              ## CollisionCheck_setOT
/* 01808 80A6ABD8 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 0180C 80A6ABDC 0C29A523 */  jal     func_80A6948C              
/* 01810 80A6ABE0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01814 80A6ABE4 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 01818 80A6ABE8 8FB0001C */  lw      $s0, 0x001C($sp)           
/* 0181C 80A6ABEC 8FB10020 */  lw      $s1, 0x0020($sp)           
/* 01820 80A6ABF0 03E00008 */  jr      $ra                        
/* 01824 80A6ABF4 27BD0038 */  addiu   $sp, $sp, 0x0038           ## $sp = 00000000
