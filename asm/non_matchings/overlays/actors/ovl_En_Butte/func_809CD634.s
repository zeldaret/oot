glabel func_809CD634
/* 005C4 809CD634 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 005C8 809CD638 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 005CC 809CD63C 00802825 */  or      $a1, $a0, $zero            ## $a1 = 00000000
/* 005D0 809CD640 8484025E */  lh      $a0, 0x025E($a0)           ## 0000025E
/* 005D4 809CD644 0C01DE1C */  jal     Math_Sins
              ## sins?
/* 005D8 809CD648 AFA50020 */  sw      $a1, 0x0020($sp)           
/* 005DC 809CD64C 8FA50020 */  lw      $a1, 0x0020($sp)           
/* 005E0 809CD650 E7A00018 */  swc1    $f0, 0x0018($sp)           
/* 005E4 809CD654 0C01DE1C */  jal     Math_Sins
              ## sins?
/* 005E8 809CD658 84A4025C */  lh      $a0, 0x025C($a1)           ## 0000025C
/* 005EC 809CD65C 8FA50020 */  lw      $a1, 0x0020($sp)           
/* 005F0 809CD660 3C01C3FA */  lui     $at, 0xC3FA                ## $at = C3FA0000
/* 005F4 809CD664 44816000 */  mtc1    $at, $f12                  ## $f12 = -500.00
/* 005F8 809CD668 90A20256 */  lbu     $v0, 0x0256($a1)           ## 00000256
/* 005FC 809CD66C 3C01809D */  lui     $at, %hi(D_809CE404)       ## $at = 809D0000
/* 00600 809CD670 C7A40018 */  lwc1    $f4, 0x0018($sp)           
/* 00604 809CD674 00021080 */  sll     $v0, $v0,  2               
/* 00608 809CD678 00220821 */  addu    $at, $at, $v0              
/* 0060C 809CD67C C426E404 */  lwc1    $f6, %lo(D_809CE404)($at)  
/* 00610 809CD680 3C01809D */  lui     $at, %hi(D_809CE3F8)       ## $at = 809D0000
/* 00614 809CD684 00220821 */  addu    $at, $at, $v0              
/* 00618 809CD688 46062202 */  mul.s   $f8, $f4, $f6              
/* 0061C 809CD68C C42AE3F8 */  lwc1    $f10, %lo(D_809CE3F8)($at) 
/* 00620 809CD690 C4A400BC */  lwc1    $f4, 0x00BC($a1)           ## 000000BC
/* 00624 809CD694 3C0143FA */  lui     $at, 0x43FA                ## $at = 43FA0000
/* 00628 809CD698 460A0402 */  mul.s   $f16, $f0, $f10            
/* 0062C 809CD69C 46088480 */  add.s   $f18, $f16, $f8            
/* 00630 809CD6A0 46122180 */  add.s   $f6, $f4, $f18             
/* 00634 809CD6A4 E4A600BC */  swc1    $f6, 0x00BC($a1)           ## 000000BC
/* 00638 809CD6A8 C4A200BC */  lwc1    $f2, 0x00BC($a1)           ## 000000BC
/* 0063C 809CD6AC 460C103C */  c.lt.s  $f2, $f12                  
/* 00640 809CD6B0 00000000 */  nop
/* 00644 809CD6B4 45020004 */  bc1fl   .L809CD6C8                 
/* 00648 809CD6B8 44816000 */  mtc1    $at, $f12                  ## $f12 = 500.00
/* 0064C 809CD6BC 1000000B */  beq     $zero, $zero, .L809CD6EC   
/* 00650 809CD6C0 E4AC00BC */  swc1    $f12, 0x00BC($a1)          ## 000000BC
/* 00654 809CD6C4 44816000 */  mtc1    $at, $f12                  ## $f12 = 500.00
.L809CD6C8:
/* 00658 809CD6C8 00000000 */  nop
/* 0065C 809CD6CC 4602603C */  c.lt.s  $f12, $f2                  
/* 00660 809CD6D0 00000000 */  nop
/* 00664 809CD6D4 45020004 */  bc1fl   .L809CD6E8                 
/* 00668 809CD6D8 46001006 */  mov.s   $f0, $f2                   
/* 0066C 809CD6DC 10000002 */  beq     $zero, $zero, .L809CD6E8   
/* 00670 809CD6E0 46006006 */  mov.s   $f0, $f12                  
/* 00674 809CD6E4 46001006 */  mov.s   $f0, $f2                   
.L809CD6E8:
/* 00678 809CD6E8 E4A000BC */  swc1    $f0, 0x00BC($a1)           ## 000000BC
.L809CD6EC:
/* 0067C 809CD6EC 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00680 809CD6F0 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 00684 809CD6F4 03E00008 */  jr      $ra                        
/* 00688 809CD6F8 00000000 */  nop
