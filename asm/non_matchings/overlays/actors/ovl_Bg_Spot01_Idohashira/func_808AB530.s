glabel func_808AB530
/* 00850 808AB530 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00854 808AB534 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00858 808AB538 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 0085C 808AB53C 0C22AC63 */  jal     func_808AB18C              
/* 00860 808AB540 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 00864 808AB544 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 00868 808AB548 0C22ACA7 */  jal     func_808AB29C              
/* 0086C 808AB54C 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 00870 808AB550 10400003 */  beq     $v0, $zero, .L808AB560     
/* 00874 808AB554 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 00878 808AB558 0C22AD05 */  jal     func_808AB414              
/* 0087C 808AB55C 8FA5001C */  lw      $a1, 0x001C($sp)           
.L808AB560:
/* 00880 808AB560 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00884 808AB564 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00888 808AB568 03E00008 */  jr      $ra                        
/* 0088C 808AB56C 00000000 */  nop
