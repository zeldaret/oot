glabel EnHorse_Destroy
/* 01528 80A5C818 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 0152C 80A5C81C AFBF001C */  sw      $ra, 0x001C($sp)           
/* 01530 80A5C820 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 01534 80A5C824 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 01538 80A5C828 8C8E01F0 */  lw      $t6, 0x01F0($a0)           ## 000001F0
/* 0153C 80A5C82C 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 01540 80A5C830 000E7900 */  sll     $t7, $t6,  4               
/* 01544 80A5C834 05E30004 */  bgezl   $t7, .L80A5C848            
/* 01548 80A5C838 8FA40024 */  lw      $a0, 0x0024($sp)           
/* 0154C 80A5C83C 0C03E27A */  jal     func_800F89E8              
/* 01550 80A5C840 2484021C */  addiu   $a0, $a0, 0x021C           ## $a0 = 0000021C
/* 01554 80A5C844 8FA40024 */  lw      $a0, 0x0024($sp)           
.L80A5C848:
/* 01558 80A5C848 0C029A22 */  jal     func_800A6888              
/* 0155C 80A5C84C 26050160 */  addiu   $a1, $s0, 0x0160           ## $a1 = 00000160
/* 01560 80A5C850 8FA40024 */  lw      $a0, 0x0024($sp)           
/* 01564 80A5C854 0C0170EB */  jal     ActorCollider_FreeCylinder
              
/* 01568 80A5C858 26050278 */  addiu   $a1, $s0, 0x0278           ## $a1 = 00000278
/* 0156C 80A5C85C 8FA40024 */  lw      $a0, 0x0024($sp)           
/* 01570 80A5C860 0C0170EB */  jal     ActorCollider_FreeCylinder
              
/* 01574 80A5C864 260502C4 */  addiu   $a1, $s0, 0x02C4           ## $a1 = 000002C4
/* 01578 80A5C868 8FA40024 */  lw      $a0, 0x0024($sp)           
/* 0157C 80A5C86C 0C016F32 */  jal     func_8005BCC8              
/* 01580 80A5C870 26050310 */  addiu   $a1, $s0, 0x0310           ## $a1 = 00000310
/* 01584 80A5C874 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 01588 80A5C878 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 0158C 80A5C87C 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 01590 80A5C880 03E00008 */  jr      $ra                        
/* 01594 80A5C884 00000000 */  nop
