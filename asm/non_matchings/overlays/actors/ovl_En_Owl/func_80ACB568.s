glabel func_80ACB568
/* 01648 80ACB568 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 0164C 80ACB56C AFBF001C */  sw      $ra, 0x001C($sp)           
/* 01650 80ACB570 AFA40020 */  sw      $a0, 0x0020($sp)           
/* 01654 80ACB574 0C2B28EE */  jal     func_80ACA3B8              
/* 01658 80ACB578 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 0165C 80ACB57C 8FA40020 */  lw      $a0, 0x0020($sp)           
/* 01660 80ACB580 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 01664 80ACB584 240610C0 */  addiu   $a2, $zero, 0x10C0         ## $a2 = 000010C0
/* 01668 80ACB588 3C07433E */  lui     $a3, 0x433E                ## $a3 = 433E0000
/* 0166C 80ACB58C 0C2B28FD */  jal     func_80ACA3F4              
/* 01670 80ACB590 AFA00010 */  sw      $zero, 0x0010($sp)         
/* 01674 80ACB594 50400008 */  beql    $v0, $zero, .L80ACB5B8     
/* 01678 80ACB598 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 0167C 80ACB59C 0C03D719 */  jal     func_800F5C64              
/* 01680 80ACB5A0 2404005A */  addiu   $a0, $zero, 0x005A         ## $a0 = 0000005A
/* 01684 80ACB5A4 8FAF0020 */  lw      $t7, 0x0020($sp)           
/* 01688 80ACB5A8 3C0E80AD */  lui     $t6, %hi(func_80ACB4FC)    ## $t6 = 80AD0000
/* 0168C 80ACB5AC 25CEB4FC */  addiu   $t6, $t6, %lo(func_80ACB4FC) ## $t6 = 80ACB4FC
/* 01690 80ACB5B0 ADEE040C */  sw      $t6, 0x040C($t7)           ## 0000040C
/* 01694 80ACB5B4 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80ACB5B8:
/* 01698 80ACB5B8 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 0169C 80ACB5BC 03E00008 */  jr      $ra                        
/* 016A0 80ACB5C0 00000000 */  nop


