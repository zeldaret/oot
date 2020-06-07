glabel func_80AFD540
/* 00BA0 80AFD540 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00BA4 80AFD544 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00BA8 80AFD548 948E0088 */  lhu     $t6, 0x0088($a0)           ## 00000088
/* 00BAC 80AFD54C 2405389E */  addiu   $a1, $zero, 0x389E         ## $a1 = 0000389E
/* 00BB0 80AFD550 31CF0001 */  andi    $t7, $t6, 0x0001           ## $t7 = 00000000
/* 00BB4 80AFD554 11E00004 */  beq     $t7, $zero, .L80AFD568     
/* 00BB8 80AFD558 00000000 */  nop
/* 00BBC 80AFD55C 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 00BC0 80AFD560 00000000 */  nop
/* 00BC4 80AFD564 E4840068 */  swc1    $f4, 0x0068($a0)           ## 00000068
.L80AFD568:
/* 00BC8 80AFD568 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 00BCC 80AFD56C AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00BD0 80AFD570 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 00BD4 80AFD574 24180006 */  addiu   $t8, $zero, 0x0006         ## $t8 = 00000006
/* 00BD8 80AFD578 3C0580B0 */  lui     $a1, %hi(func_80AFD59C)    ## $a1 = 80B00000
/* 00BDC 80AFD57C 24A5D59C */  addiu   $a1, $a1, %lo(func_80AFD59C) ## $a1 = 80AFD59C
/* 00BE0 80AFD580 A0800281 */  sb      $zero, 0x0281($a0)         ## 00000281
/* 00BE4 80AFD584 0C2BF268 */  jal     func_80AFC9A0              
/* 00BE8 80AFD588 A0980280 */  sb      $t8, 0x0280($a0)           ## 00000280
/* 00BEC 80AFD58C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00BF0 80AFD590 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00BF4 80AFD594 03E00008 */  jr      $ra                        
/* 00BF8 80AFD598 00000000 */  nop
