glabel func_8093C25C
/* 0358C 8093C25C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 03590 8093C260 AFA5001C */  sw      $a1, 0x001C($sp)
/* 03594 8093C264 3C0E8094 */  lui     $t6, %hi(func_8093C2C4)    ## $t6 = 80940000
/* 03598 8093C268 AFBF0014 */  sw      $ra, 0x0014($sp)
/* 0359C 8093C26C 25CEC2C4 */  addiu   $t6, $t6, %lo(func_8093C2C4) ## $t6 = 8093C2C4
/* 035A0 8093C270 00803825 */  or      $a3, $a0, $zero            ## $a3 = 00000000
/* 035A4 8093C274 AC8E014C */  sw      $t6, 0x014C($a0)           ## 0000014C
/* 035A8 8093C278 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 035AC 8093C27C 24A5578C */  addiu   $a1, $a1, 0x578C           ## $a1 = 0600578C
/* 035B0 8093C280 AFA70018 */  sw      $a3, 0x0018($sp)
/* 035B4 8093C284 24840568 */  addiu   $a0, $a0, 0x0568           ## $a0 = 00000568
/* 035B8 8093C288 0C029490 */  jal     Animation_MorphToPlayOnce
/* 035BC 8093C28C 24060000 */  addiu   $a2, $zero, 0x0000         ## $a2 = 00000000
/* 035C0 8093C290 8FA70018 */  lw      $a3, 0x0018($sp)
/* 035C4 8093C294 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 035C8 8093C298 240F0035 */  addiu   $t7, $zero, 0x0035         ## $t7 = 00000035
/* 035CC 8093C29C 84F8001C */  lh      $t8, 0x001C($a3)           ## 0000001C
/* 035D0 8093C2A0 24190014 */  addiu   $t9, $zero, 0x0014         ## $t9 = 00000014
/* 035D4 8093C2A4 A4EF0178 */  sh      $t7, 0x0178($a3)           ## 00000178
/* 035D8 8093C2A8 17000002 */  bne     $t8, $zero, .L8093C2B4
/* 035DC 8093C2AC E4E40068 */  swc1    $f4, 0x0068($a3)           ## 00000068
/* 035E0 8093C2B0 A4F9015C */  sh      $t9, 0x015C($a3)           ## 0000015C
.L8093C2B4:
/* 035E4 8093C2B4 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 035E8 8093C2B8 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 035EC 8093C2BC 03E00008 */  jr      $ra
/* 035F0 8093C2C0 00000000 */  nop
