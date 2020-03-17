glabel func_80A98464
/* 016B4 80A98464 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 016B8 80A98468 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 016BC 80A9846C 848E001C */  lh      $t6, 0x001C($a0)           ## 0000001C
/* 016C0 80A98470 31CF00FF */  andi    $t7, $t6, 0x00FF           ## $t7 = 00000000
/* 016C4 80A98474 2DE1000D */  sltiu   $at, $t7, 0x000D           
/* 016C8 80A98478 10200038 */  beq     $at, $zero, .L80A9855C     
/* 016CC 80A9847C 000F7880 */  sll     $t7, $t7,  2               
/* 016D0 80A98480 3C0180AA */  lui     $at, %hi(jtbl_80A9A8F0)       ## $at = 80AA0000
/* 016D4 80A98484 002F0821 */  addu    $at, $at, $t7              
/* 016D8 80A98488 8C2FA8F0 */  lw      $t7, %lo(jtbl_80A9A8F0)($at)  
/* 016DC 80A9848C 01E00008 */  jr      $t7                        
/* 016E0 80A98490 00000000 */  nop
glabel L80A98494
/* 016E4 80A98494 0C2A6049 */  jal     func_80A98124              
/* 016E8 80A98498 00000000 */  nop
/* 016EC 80A9849C 10000030 */  beq     $zero, $zero, .L80A98560   
/* 016F0 80A984A0 8FBF0014 */  lw      $ra, 0x0014($sp)           
glabel L80A984A4
/* 016F4 80A984A4 0C2A6049 */  jal     func_80A98124              
/* 016F8 80A984A8 00000000 */  nop
/* 016FC 80A984AC 1000002C */  beq     $zero, $zero, .L80A98560   
/* 01700 80A984B0 8FBF0014 */  lw      $ra, 0x0014($sp)           
glabel L80A984B4
/* 01704 80A984B4 0C2A600D */  jal     func_80A98034              
/* 01708 80A984B8 00000000 */  nop
/* 0170C 80A984BC 10000028 */  beq     $zero, $zero, .L80A98560   
/* 01710 80A984C0 8FBF0014 */  lw      $ra, 0x0014($sp)           
glabel L80A984C4
/* 01714 80A984C4 0C2A5FAC */  jal     func_80A97EB0              
/* 01718 80A984C8 00000000 */  nop
/* 0171C 80A984CC 10000024 */  beq     $zero, $zero, .L80A98560   
/* 01720 80A984D0 8FBF0014 */  lw      $ra, 0x0014($sp)           
glabel L80A984D4
/* 01724 80A984D4 0C2A605D */  jal     func_80A98174              
/* 01728 80A984D8 00000000 */  nop
/* 0172C 80A984DC 10000020 */  beq     $zero, $zero, .L80A98560   
/* 01730 80A984E0 8FBF0014 */  lw      $ra, 0x0014($sp)           
glabel L80A984E4
/* 01734 80A984E4 0C2A5FAC */  jal     func_80A97EB0              
/* 01738 80A984E8 00000000 */  nop
/* 0173C 80A984EC 1000001C */  beq     $zero, $zero, .L80A98560   
/* 01740 80A984F0 8FBF0014 */  lw      $ra, 0x0014($sp)           
glabel L80A984F4
/* 01744 80A984F4 0C2A5FC8 */  jal     func_80A97F20              
/* 01748 80A984F8 00000000 */  nop
/* 0174C 80A984FC 10000018 */  beq     $zero, $zero, .L80A98560   
/* 01750 80A98500 8FBF0014 */  lw      $ra, 0x0014($sp)           
glabel L80A98504
/* 01754 80A98504 0C2A5FAC */  jal     func_80A97EB0              
/* 01758 80A98508 00000000 */  nop
/* 0175C 80A9850C 10000014 */  beq     $zero, $zero, .L80A98560   
/* 01760 80A98510 8FBF0014 */  lw      $ra, 0x0014($sp)           
glabel L80A98514
/* 01764 80A98514 0C2A5FAC */  jal     func_80A97EB0              
/* 01768 80A98518 00000000 */  nop
/* 0176C 80A9851C 10000010 */  beq     $zero, $zero, .L80A98560   
/* 01770 80A98520 8FBF0014 */  lw      $ra, 0x0014($sp)           
glabel L80A98524
/* 01774 80A98524 0C2A5FAC */  jal     func_80A97EB0              
/* 01778 80A98528 00000000 */  nop
/* 0177C 80A9852C 1000000C */  beq     $zero, $zero, .L80A98560   
/* 01780 80A98530 8FBF0014 */  lw      $ra, 0x0014($sp)           
glabel L80A98534
/* 01784 80A98534 0C2A5F86 */  jal     func_80A97E18              
/* 01788 80A98538 00000000 */  nop
/* 0178C 80A9853C 10000008 */  beq     $zero, $zero, .L80A98560   
/* 01790 80A98540 8FBF0014 */  lw      $ra, 0x0014($sp)           
glabel L80A98544
/* 01794 80A98544 0C2A5FAC */  jal     func_80A97EB0              
/* 01798 80A98548 00000000 */  nop
/* 0179C 80A9854C 10000004 */  beq     $zero, $zero, .L80A98560   
/* 017A0 80A98550 8FBF0014 */  lw      $ra, 0x0014($sp)           
glabel L80A98554
/* 017A4 80A98554 0C2A5F86 */  jal     func_80A97E18              
/* 017A8 80A98558 00000000 */  nop
.L80A9855C:
/* 017AC 80A9855C 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80A98560:
/* 017B0 80A98560 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 017B4 80A98564 03E00008 */  jr      $ra                        
/* 017B8 80A98568 00000000 */  nop


