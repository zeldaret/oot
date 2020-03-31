glabel func_8093C164
/* 03494 8093C164 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 03498 8093C168 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 0349C 8093C16C 3C0E8094 */  lui     $t6, %hi(func_8093C1C4)    ## $t6 = 80940000
/* 034A0 8093C170 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 034A4 8093C174 25CEC1C4 */  addiu   $t6, $t6, %lo(func_8093C1C4) ## $t6 = 8093C1C4
/* 034A8 8093C178 00803825 */  or      $a3, $a0, $zero            ## $a3 = 00000000
/* 034AC 8093C17C AC8E014C */  sw      $t6, 0x014C($a0)           ## 0000014C
/* 034B0 8093C180 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 034B4 8093C184 24A54548 */  addiu   $a1, $a1, 0x4548           ## $a1 = 06004548
/* 034B8 8093C188 AFA70018 */  sw      $a3, 0x0018($sp)           
/* 034BC 8093C18C 24840568 */  addiu   $a0, $a0, 0x0568           ## $a0 = 00000568
/* 034C0 8093C190 0C029490 */  jal     SkelAnime_ChangeAnimationTransitionStop              
/* 034C4 8093C194 24060000 */  addiu   $a2, $zero, 0x0000         ## $a2 = 00000000
/* 034C8 8093C198 3C040600 */  lui     $a0, 0x0600                ## $a0 = 06000000
/* 034CC 8093C19C 0C028800 */  jal     SkelAnime_GetFrameCount
              
/* 034D0 8093C1A0 24844548 */  addiu   $a0, $a0, 0x4548           ## $a0 = 06004548
/* 034D4 8093C1A4 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 034D8 8093C1A8 8FAF0018 */  lw      $t7, 0x0018($sp)           
/* 034DC 8093C1AC 468021A0 */  cvt.s.w $f6, $f4                   
/* 034E0 8093C1B0 E5E601A4 */  swc1    $f6, 0x01A4($t7)           ## 000001A4
/* 034E4 8093C1B4 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 034E8 8093C1B8 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 034EC 8093C1BC 03E00008 */  jr      $ra                        
/* 034F0 8093C1C0 00000000 */  nop


