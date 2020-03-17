glabel func_80B1A6E4
/* 01C64 80B1A6E4 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 01C68 80B1A6E8 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 01C6C 80B1A6EC 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 01C70 80B1A6F0 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 01C74 80B1A6F4 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 01C78 80B1A6F8 8607001C */  lh      $a3, 0x001C($s0)           ## 0000001C
/* 01C7C 80B1A6FC 8FA60024 */  lw      $a2, 0x0024($sp)           
/* 01C80 80B1A700 260502C4 */  addiu   $a1, $s0, 0x02C4           ## $a1 = 000002C4
/* 01C84 80B1A704 24E7000B */  addiu   $a3, $a3, 0x000B           ## $a3 = 0000000B
/* 01C88 80B1A708 00073C00 */  sll     $a3, $a3, 16               
/* 01C8C 80B1A70C 0C00CC17 */  jal     func_8003305C              
/* 01C90 80B1A710 00073C03 */  sra     $a3, $a3, 16               
/* 01C94 80B1A714 10400010 */  beq     $v0, $zero, .L80B1A758     
/* 01C98 80B1A718 8FA40024 */  lw      $a0, 0x0024($sp)           
/* 01C9C 80B1A71C 860E001C */  lh      $t6, 0x001C($s0)           ## 0000001C
/* 01CA0 80B1A720 2401FFFE */  addiu   $at, $zero, 0xFFFE         ## $at = FFFFFFFE
/* 01CA4 80B1A724 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 01CA8 80B1A728 15C10007 */  bne     $t6, $at, .L80B1A748       
/* 01CAC 80B1A72C 26060024 */  addiu   $a2, $s0, 0x0024           ## $a2 = 00000024
/* 01CB0 80B1A730 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 01CB4 80B1A734 26060024 */  addiu   $a2, $s0, 0x0024           ## $a2 = 00000024
/* 01CB8 80B1A738 0C007E50 */  jal     Item_DropCollectibleRandom
              
/* 01CBC 80B1A73C 240700E0 */  addiu   $a3, $zero, 0x00E0         ## $a3 = 000000E0
/* 01CC0 80B1A740 10000003 */  beq     $zero, $zero, .L80B1A750   
/* 01CC4 80B1A744 00000000 */  nop
.L80B1A748:
/* 01CC8 80B1A748 0C007E50 */  jal     Item_DropCollectibleRandom
              
/* 01CCC 80B1A74C 24070040 */  addiu   $a3, $zero, 0x0040         ## $a3 = 00000040
.L80B1A750:
/* 01CD0 80B1A750 0C00B55C */  jal     Actor_Kill
              
/* 01CD4 80B1A754 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
.L80B1A758:
/* 01CD8 80B1A758 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 01CDC 80B1A75C 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 01CE0 80B1A760 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 01CE4 80B1A764 03E00008 */  jr      $ra                        
/* 01CE8 80B1A768 00000000 */  nop


