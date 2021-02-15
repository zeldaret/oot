glabel func_80B3F668
/* 03488 80B3F668 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 0348C 80B3F66C AFBF001C */  sw      $ra, 0x001C($sp)           
/* 03490 80B3F670 AFA40020 */  sw      $a0, 0x0020($sp)           
/* 03494 80B3F674 24060004 */  addiu   $a2, $zero, 0x0004         ## $a2 = 00000004
/* 03498 80B3F678 0C2CF13C */  jal     func_80B3C4F0              
/* 0349C 80B3F67C 24070004 */  addiu   $a3, $zero, 0x0004         ## $a3 = 00000004
/* 034A0 80B3F680 10400012 */  beq     $v0, $zero, .L80B3F6CC     
/* 034A4 80B3F684 8FA40020 */  lw      $a0, 0x0020($sp)           
/* 034A8 80B3F688 3C050601 */  lui     $a1, %hi(D_06012FD0)                ## $a1 = 06010000
/* 034AC 80B3F68C 240E0001 */  addiu   $t6, $zero, 0x0001         ## $t6 = 00000001
/* 034B0 80B3F690 AFAE0010 */  sw      $t6, 0x0010($sp)           
/* 034B4 80B3F694 24A52FD0 */  addiu   $a1, $a1, %lo(D_06012FD0)           ## $a1 = 06012FD0
/* 034B8 80B3F698 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 034BC 80B3F69C 3C07C140 */  lui     $a3, 0xC140                ## $a3 = C1400000
/* 034C0 80B3F6A0 0C2CF1C0 */  jal     func_80B3C700              
/* 034C4 80B3F6A4 AFA40020 */  sw      $a0, 0x0020($sp)           
/* 034C8 80B3F6A8 8FA40020 */  lw      $a0, 0x0020($sp)           
/* 034CC 80B3F6AC 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 034D0 80B3F6B0 34018000 */  ori     $at, $zero, 0x8000         ## $at = 00008000
/* 034D4 80B3F6B4 84980032 */  lh      $t8, 0x0032($a0)           ## 00000032
/* 034D8 80B3F6B8 240F0030 */  addiu   $t7, $zero, 0x0030         ## $t7 = 00000030
/* 034DC 80B3F6BC AC8F0260 */  sw      $t7, 0x0260($a0)           ## 00000260
/* 034E0 80B3F6C0 0301C821 */  addu    $t9, $t8, $at              
/* 034E4 80B3F6C4 A4990032 */  sh      $t9, 0x0032($a0)           ## 00000032
/* 034E8 80B3F6C8 E4840268 */  swc1    $f4, 0x0268($a0)           ## 00000268
.L80B3F6CC:
/* 034EC 80B3F6CC 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 034F0 80B3F6D0 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 034F4 80B3F6D4 03E00008 */  jr      $ra                        
/* 034F8 80B3F6D8 00000000 */  nop
