glabel func_80919150
/* 03740 80919150 27BDFFC8 */  addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
/* 03744 80919154 AFBF0034 */  sw      $ra, 0x0034($sp)           
/* 03748 80919158 AFB00030 */  sw      $s0, 0x0030($sp)           
/* 0374C 8091915C AFA5003C */  sw      $a1, 0x003C($sp)           
/* 03750 80919160 848E01D6 */  lh      $t6, 0x01D6($a0)           ## 000001D6
/* 03754 80919164 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 03758 80919168 29C1005B */  slti    $at, $t6, 0x005B           
/* 0375C 8091916C 10200003 */  beq     $at, $zero, .L8091917C     
/* 03760 80919170 00000000 */  nop
/* 03764 80919174 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 03768 80919178 2405301E */  addiu   $a1, $zero, 0x301E         ## $a1 = 0000301E
.L8091917C:
/* 0376C 8091917C 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 03770 80919180 2604014C */  addiu   $a0, $s0, 0x014C           ## $a0 = 0000014C
/* 03774 80919184 860F01D4 */  lh      $t7, 0x01D4($s0)           ## 000001D4
/* 03778 80919188 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 0377C 8091918C 8FA4003C */  lw      $a0, 0x003C($sp)           
/* 03780 80919190 15E1000F */  bne     $t7, $at, .L809191D0       
/* 03784 80919194 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 03788 80919198 3C014100 */  lui     $at, 0x4100                ## $at = 41000000
/* 0378C 8091919C 44812000 */  mtc1    $at, $f4                   ## $f4 = 8.00
/* 03790 809191A0 24180004 */  addiu   $t8, $zero, 0x0004         ## $t8 = 00000004
/* 03794 809191A4 241901F4 */  addiu   $t9, $zero, 0x01F4         ## $t9 = 000001F4
/* 03798 809191A8 2408000A */  addiu   $t0, $zero, 0x000A         ## $t0 = 0000000A
/* 0379C 809191AC 24090001 */  addiu   $t1, $zero, 0x0001         ## $t1 = 00000001
/* 037A0 809191B0 AFA90020 */  sw      $t1, 0x0020($sp)           
/* 037A4 809191B4 AFA8001C */  sw      $t0, 0x001C($sp)           
/* 037A8 809191B8 AFB90018 */  sw      $t9, 0x0018($sp)           
/* 037AC 809191BC AFB80010 */  sw      $t8, 0x0010($sp)           
/* 037B0 809191C0 26060024 */  addiu   $a2, $s0, 0x0024           ## $a2 = 00000024
/* 037B4 809191C4 3C07425C */  lui     $a3, 0x425C                ## $a3 = 425C0000
/* 037B8 809191C8 0C00CC98 */  jal     func_80033260              
/* 037BC 809191CC E7A40014 */  swc1    $f4, 0x0014($sp)           
.L809191D0:
/* 037C0 809191D0 26040068 */  addiu   $a0, $s0, 0x0068           ## $a0 = 00000068
/* 037C4 809191D4 3C053F00 */  lui     $a1, 0x3F00                ## $a1 = 3F000000
/* 037C8 809191D8 0C01E123 */  jal     Math_SmoothDownscaleMaxF
              
/* 037CC 809191DC 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 037D0 809191E0 860A01D2 */  lh      $t2, 0x01D2($s0)           ## 000001D2
/* 037D4 809191E4 55400010 */  bnel    $t2, $zero, .L80919228     
/* 037D8 809191E8 260400B4 */  addiu   $a0, $s0, 0x00B4           ## $a0 = 000000B4
/* 037DC 809191EC 0C24592B */  jal     func_809164AC              
/* 037E0 809191F0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 037E4 809191F4 860B0196 */  lh      $t3, 0x0196($s0)           ## 00000196
/* 037E8 809191F8 3C014302 */  lui     $at, 0x4302                ## $at = 43020000
/* 037EC 809191FC 5560000A */  bnel    $t3, $zero, .L80919228     
/* 037F0 80919200 260400B4 */  addiu   $a0, $s0, 0x00B4           ## $a0 = 000000B4
/* 037F4 80919204 C6060090 */  lwc1    $f6, 0x0090($s0)           ## 00000090
/* 037F8 80919208 44814000 */  mtc1    $at, $f8                   ## $f8 = 130.00
/* 037FC 8091920C 240C0014 */  addiu   $t4, $zero, 0x0014         ## $t4 = 00000014
/* 03800 80919210 4608303C */  c.lt.s  $f6, $f8                   
/* 03804 80919214 00000000 */  nop
/* 03808 80919218 45020003 */  bc1fl   .L80919228                 
/* 0380C 8091921C 260400B4 */  addiu   $a0, $s0, 0x00B4           ## $a0 = 000000B4
/* 03810 80919220 A60C01D4 */  sh      $t4, 0x01D4($s0)           ## 000001D4
/* 03814 80919224 260400B4 */  addiu   $a0, $s0, 0x00B4           ## $a0 = 000000B4
.L80919228:
/* 03818 80919228 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 0381C 8091922C 24060002 */  addiu   $a2, $zero, 0x0002         ## $a2 = 00000002
/* 03820 80919230 0C01E1EF */  jal     Math_SmoothScaleMaxS
              
/* 03824 80919234 24070BB8 */  addiu   $a3, $zero, 0x0BB8         ## $a3 = 00000BB8
/* 03828 80919238 240D0001 */  addiu   $t5, $zero, 0x0001         ## $t5 = 00000001
/* 0382C 8091923C 3C053ECC */  lui     $a1, 0x3ECC                ## $a1 = 3ECC0000
/* 03830 80919240 3C073E4C */  lui     $a3, 0x3E4C                ## $a3 = 3E4C0000
/* 03834 80919244 A60D01B4 */  sh      $t5, 0x01B4($s0)           ## 000001B4
/* 03838 80919248 34E7CCCD */  ori     $a3, $a3, 0xCCCD           ## $a3 = 3E4CCCCD
/* 0383C 8091924C 34A5CCCD */  ori     $a1, $a1, 0xCCCD           ## $a1 = 3ECCCCCD
/* 03840 80919250 260401F8 */  addiu   $a0, $s0, 0x01F8           ## $a0 = 000001F8
/* 03844 80919254 0C01E107 */  jal     Math_SmoothScaleMaxF
              
/* 03848 80919258 3C063F00 */  lui     $a2, 0x3F00                ## $a2 = 3F000000
/* 0384C 8091925C 240E0004 */  addiu   $t6, $zero, 0x0004         ## $t6 = 00000004
/* 03850 80919260 A60E01B8 */  sh      $t6, 0x01B8($s0)           ## 000001B8
/* 03854 80919264 8FBF0034 */  lw      $ra, 0x0034($sp)           
/* 03858 80919268 8FB00030 */  lw      $s0, 0x0030($sp)           
/* 0385C 8091926C 27BD0038 */  addiu   $sp, $sp, 0x0038           ## $sp = 00000000
/* 03860 80919270 03E00008 */  jr      $ra                        
/* 03864 80919274 00000000 */  nop
