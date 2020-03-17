glabel func_80AAB874
/* 01624 80AAB874 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 01628 80AAB878 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 0162C 80AAB87C AFB00018 */  sw      $s0, 0x0018($sp)           
/* 01630 80AAB880 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 01634 80AAB884 8C8F0154 */  lw      $t7, 0x0154($a0)           ## 00000154
/* 01638 80AAB888 3C0E0600 */  lui     $t6, 0x0600                ## $t6 = 06000000
/* 0163C 80AAB88C 25CE02C8 */  addiu   $t6, $t6, 0x02C8           ## $t6 = 060002C8
/* 01640 80AAB890 15CF0008 */  bne     $t6, $t7, .L80AAB8B4       
/* 01644 80AAB894 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 01648 80AAB898 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 0164C 80AAB89C 26050214 */  addiu   $a1, $s0, 0x0214           ## $a1 = 00000214
/* 01650 80AAB8A0 26060236 */  addiu   $a2, $s0, 0x0236           ## $a2 = 00000236
/* 01654 80AAB8A4 0C00D3D5 */  jal     func_80034F54              
/* 01658 80AAB8A8 24070011 */  addiu   $a3, $zero, 0x0011         ## $a3 = 00000011
/* 0165C 80AAB8AC 1000000B */  beq     $zero, $zero, .L80AAB8DC   
/* 01660 80AAB8B0 00000000 */  nop
.L80AAB8B4:
/* 01664 80AAB8B4 861801E0 */  lh      $t8, 0x01E0($s0)           ## 000001E0
/* 01668 80AAB8B8 17000008 */  bne     $t8, $zero, .L80AAB8DC     
/* 0166C 80AAB8BC 00000000 */  nop
/* 01670 80AAB8C0 9219020B */  lbu     $t9, 0x020B($s0)           ## 0000020B
/* 01674 80AAB8C4 24010007 */  addiu   $at, $zero, 0x0007         ## $at = 00000007
/* 01678 80AAB8C8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0167C 80AAB8CC 13210003 */  beq     $t9, $at, .L80AAB8DC       
/* 01680 80AAB8D0 00000000 */  nop
/* 01684 80AAB8D4 0C2AAA4B */  jal     func_80AAA92C              
/* 01688 80AAB8D8 24050007 */  addiu   $a1, $zero, 0x0007         ## $a1 = 00000007
.L80AAB8DC:
/* 0168C 80AAB8DC 0C2AAA89 */  jal     func_80AAAA24              
/* 01690 80AAB8E0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01694 80AAB8E4 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 01698 80AAB8E8 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 0169C 80AAB8EC 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 016A0 80AAB8F0 03E00008 */  jr      $ra                        
/* 016A4 80AAB8F4 00000000 */  nop


