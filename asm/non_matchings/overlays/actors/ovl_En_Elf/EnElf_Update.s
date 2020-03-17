glabel EnElf_Update
/* 03AAC 80A056DC 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 03AB0 80A056E0 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 03AB4 80A056E4 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 03AB8 80A056E8 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 03ABC 80A056EC 8C9902CC */  lw      $t9, 0x02CC($a0)           ## 000002CC
/* 03AC0 80A056F0 0320F809 */  jalr    $ra, $t9                   
/* 03AC4 80A056F4 00000000 */  nop
/* 03AC8 80A056F8 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 03ACC 80A056FC 948F02BE */  lhu     $t7, 0x02BE($a0)           ## 000002BE
/* 03AD0 80A05700 948802C4 */  lhu     $t0, 0x02C4($a0)           ## 000002C4
/* 03AD4 80A05704 848E02BC */  lh      $t6, 0x02BC($a0)           ## 000002BC
/* 03AD8 80A05708 25F80001 */  addiu   $t8, $t7, 0x0001           ## $t8 = 00000001
/* 03ADC 80A0570C 31090200 */  andi    $t1, $t0, 0x0200           ## $t1 = 00000000
/* 03AE0 80A05710 A49802BE */  sh      $t8, 0x02BE($a0)           ## 000002BE
/* 03AE4 80A05714 11200003 */  beq     $t1, $zero, .L80A05724     
/* 03AE8 80A05718 A48E00B6 */  sh      $t6, 0x00B6($a0)           ## 000000B6
/* 03AEC 80A0571C 0C281364 */  jal     func_80A04D90              
/* 03AF0 80A05720 8FA5001C */  lw      $a1, 0x001C($sp)           
.L80A05724:
/* 03AF4 80A05724 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 03AF8 80A05728 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 03AFC 80A0572C 03E00008 */  jr      $ra                        
/* 03B00 80A05730 00000000 */  nop


