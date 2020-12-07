glabel func_80900650
/* 03710 80900650 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 03714 80900654 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 03718 80900658 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 0371C 8090065C AFBF001C */  sw      $ra, 0x001C($sp)           
/* 03720 80900660 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 03724 80900664 AFA5002C */  sw      $a1, 0x002C($sp)           
/* 03728 80900668 0C02927F */  jal     SkelAnime_Update
              
/* 0372C 8090066C AFA40024 */  sw      $a0, 0x0024($sp)           
/* 03730 80900670 8FA40024 */  lw      $a0, 0x0024($sp)           
/* 03734 80900674 0C0295B2 */  jal     Animation_OnFrame              
/* 03738 80900678 8E050198 */  lw      $a1, 0x0198($s0)           ## 00000198
/* 0373C 8090067C 10400006 */  beq     $v0, $zero, .L80900698     
/* 03740 80900680 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 03744 80900684 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 03748 80900688 24053997 */  addiu   $a1, $zero, 0x3997         ## $a1 = 00003997
/* 0374C 8090068C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 03750 80900690 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 03754 80900694 2405398F */  addiu   $a1, $zero, 0x398F         ## $a1 = 0000398F
.L80900698:
/* 03758 80900698 920E0311 */  lbu     $t6, 0x0311($s0)           ## 00000311
/* 0375C 8090069C 3C014080 */  lui     $at, 0x4080                ## $at = 40800000
/* 03760 809006A0 26040068 */  addiu   $a0, $s0, 0x0068           ## $a0 = 00000068
/* 03764 809006A4 15C00014 */  bne     $t6, $zero, .L809006F8     
/* 03768 809006A8 3C053F00 */  lui     $a1, 0x3F00                ## $a1 = 3F000000
/* 0376C 809006AC 3C014080 */  lui     $at, 0x4080                ## $at = 40800000
/* 03770 809006B0 44816000 */  mtc1    $at, $f12                  ## $f12 = 4.00
/* 03774 809006B4 C6000198 */  lwc1    $f0, 0x0198($s0)           ## 00000198
/* 03778 809006B8 C6020164 */  lwc1    $f2, 0x0164($s0)           ## 00000164
/* 0377C 809006BC 3C0140C0 */  lui     $at, 0x40C0                ## $at = 40C00000
/* 03780 809006C0 460C0101 */  sub.s   $f4, $f0, $f12             
/* 03784 809006C4 4602203C */  c.lt.s  $f4, $f2                   
/* 03788 809006C8 00000000 */  nop
/* 0378C 809006CC 4500001C */  bc1f    .L80900740                 
/* 03790 809006D0 00000000 */  nop
/* 03794 809006D4 44813000 */  mtc1    $at, $f6                   ## $f6 = 6.00
/* 03798 809006D8 240F0001 */  addiu   $t7, $zero, 0x0001         ## $t7 = 00000001
/* 0379C 809006DC 46060200 */  add.s   $f8, $f0, $f6              
/* 037A0 809006E0 4608103C */  c.lt.s  $f2, $f8                   
/* 037A4 809006E4 00000000 */  nop
/* 037A8 809006E8 45000015 */  bc1f    .L80900740                 
/* 037AC 809006EC 00000000 */  nop
/* 037B0 809006F0 10000013 */  beq     $zero, $zero, .L80900740   
/* 037B4 809006F4 A20F0312 */  sb      $t7, 0x0312($s0)           ## 00000312
.L809006F8:
/* 037B8 809006F8 44816000 */  mtc1    $at, $f12                  ## $f12 = 6.00
/* 037BC 809006FC C6000198 */  lwc1    $f0, 0x0198($s0)           ## 00000198
/* 037C0 80900700 C6020164 */  lwc1    $f2, 0x0164($s0)           ## 00000164
/* 037C4 80900704 3C0140C0 */  lui     $at, 0x40C0                ## $at = 40C00000
/* 037C8 80900708 460C0281 */  sub.s   $f10, $f0, $f12            
/* 037CC 8090070C 460C5400 */  add.s   $f16, $f10, $f12           
/* 037D0 80900710 4602803C */  c.lt.s  $f16, $f2                  
/* 037D4 80900714 00000000 */  nop
/* 037D8 80900718 45000009 */  bc1f    .L80900740                 
/* 037DC 8090071C 00000000 */  nop
/* 037E0 80900720 44819000 */  mtc1    $at, $f18                  ## $f18 = 6.00
/* 037E4 80900724 24180002 */  addiu   $t8, $zero, 0x0002         ## $t8 = 00000002
/* 037E8 80900728 46120100 */  add.s   $f4, $f0, $f18             
/* 037EC 8090072C 4604103C */  c.lt.s  $f2, $f4                   
/* 037F0 80900730 00000000 */  nop
/* 037F4 80900734 45000002 */  bc1f    .L80900740                 
/* 037F8 80900738 00000000 */  nop
/* 037FC 8090073C A2180312 */  sb      $t8, 0x0312($s0)           ## 00000312
.L80900740:
/* 03800 80900740 0C01E123 */  jal     Math_SmoothDownscaleMaxF
              
/* 03804 80900744 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 03808 80900748 8FA40024 */  lw      $a0, 0x0024($sp)           
/* 0380C 8090074C 0C0295B2 */  jal     Animation_OnFrame              
/* 03810 80900750 8E050194 */  lw      $a1, 0x0194($s0)           ## 00000194
/* 03814 80900754 5040001B */  beql    $v0, $zero, .L809007C4     
/* 03818 80900758 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0381C 8090075C 92190311 */  lbu     $t9, 0x0311($s0)           ## 00000311
/* 03820 80900760 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
/* 03824 80900764 3C01437A */  lui     $at, 0x437A                ## $at = 437A0000
/* 03828 80900768 00594023 */  subu    $t0, $v0, $t9              
/* 0382C 8090076C 310900FF */  andi    $t1, $t0, 0x00FF           ## $t1 = 00000000
/* 03830 80900770 14490010 */  bne     $v0, $t1, .L809007B4       
/* 03834 80900774 A2080311 */  sb      $t0, 0x0311($s0)           ## 00000311
/* 03838 80900778 C6060090 */  lwc1    $f6, 0x0090($s0)           ## 00000090
/* 0383C 8090077C 44814000 */  mtc1    $at, $f8                   ## $f8 = 250.00
/* 03840 80900780 00000000 */  nop
/* 03844 80900784 4608303C */  c.lt.s  $f6, $f8                   
/* 03848 80900788 00000000 */  nop
/* 0384C 8090078C 4502000A */  bc1fl   .L809007B8                 
/* 03850 80900790 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 03854 80900794 920A0313 */  lbu     $t2, 0x0313($s0)           ## 00000313
/* 03858 80900798 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0385C 8090079C 51400006 */  beql    $t2, $zero, .L809007B8     
/* 03860 809007A0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 03864 809007A4 0C240160 */  jal     func_80900580              
/* 03868 809007A8 8FA5002C */  lw      $a1, 0x002C($sp)           
/* 0386C 809007AC 10000005 */  beq     $zero, $zero, .L809007C4   
/* 03870 809007B0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
.L809007B4:
/* 03874 809007B4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
.L809007B8:
/* 03878 809007B8 0C23FF6C */  jal     func_808FFDB0              
/* 0387C 809007BC 8FA5002C */  lw      $a1, 0x002C($sp)           
/* 03880 809007C0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
.L809007C4:
/* 03884 809007C4 8FA5002C */  lw      $a1, 0x002C($sp)           
/* 03888 809007C8 0C23FEB2 */  jal     func_808FFAC8              
/* 0388C 809007CC 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 03890 809007D0 920B0334 */  lbu     $t3, 0x0334($s0)           ## 00000334
/* 03894 809007D4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 03898 809007D8 8FA5002C */  lw      $a1, 0x002C($sp)           
/* 0389C 809007DC 15600007 */  bne     $t3, $zero, .L809007FC     
/* 038A0 809007E0 00000000 */  nop
/* 038A4 809007E4 920C0311 */  lbu     $t4, 0x0311($s0)           ## 00000311
/* 038A8 809007E8 15800004 */  bne     $t4, $zero, .L809007FC     
/* 038AC 809007EC 00000000 */  nop
/* 038B0 809007F0 44805000 */  mtc1    $zero, $f10                ## $f10 = 0.00
/* 038B4 809007F4 10000003 */  beq     $zero, $zero, .L80900804   
/* 038B8 809007F8 E60A0320 */  swc1    $f10, 0x0320($s0)          ## 00000320
.L809007FC:
/* 038BC 809007FC 0C23FEEF */  jal     func_808FFBBC              
/* 038C0 80900800 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
.L80900804:
/* 038C4 80900804 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 038C8 80900808 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 038CC 8090080C 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 038D0 80900810 03E00008 */  jr      $ra                        
/* 038D4 80900814 00000000 */  nop
