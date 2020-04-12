.rdata
glabel D_80B11774
    .asciz "[34m再挑戦だぜ！ベイビー！[m\n"
    .balign 4

.text
glabel func_80B112A0
/* 00A30 80B112A0 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00A34 80B112A4 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 00A38 80B112A8 00802825 */  or      $a1, $a0, $zero            ## $a1 = 00000000
/* 00A3C 80B112AC AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00A40 80B112B0 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00A44 80B112B4 AFA50018 */  sw      $a1, 0x0018($sp)           
/* 00A48 80B112B8 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 00A4C 80B112BC 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 00A50 80B112C0 8FA50018 */  lw      $a1, 0x0018($sp)           
/* 00A54 80B112C4 84AE0216 */  lh      $t6, 0x0216($a1)           ## 00000216
/* 00A58 80B112C8 55C0000E */  bnel    $t6, $zero, .L80B11304     
/* 00A5C 80B112CC 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00A60 80B112D0 8CA20118 */  lw      $v0, 0x0118($a1)           ## 00000118
/* 00A64 80B112D4 3C1980B1 */  lui     $t9, %hi(func_80B10D94)    ## $t9 = 80B10000
/* 00A68 80B112D8 3C0480B1 */  lui     $a0, %hi(D_80B11774)       ## $a0 = 80B10000
/* 00A6C 80B112DC 8C4F0130 */  lw      $t7, 0x0130($v0)           ## 00000130
/* 00A70 80B112E0 24180001 */  addiu   $t8, $zero, 0x0001         ## $t8 = 00000001
/* 00A74 80B112E4 27390D94 */  addiu   $t9, $t9, %lo(func_80B10D94) ## $t9 = 80B10D94
/* 00A78 80B112E8 11E00005 */  beq     $t7, $zero, .L80B11300     
/* 00A7C 80B112EC 24841774 */  addiu   $a0, $a0, %lo(D_80B11774)  ## $a0 = 80B11774
/* 00A80 80B112F0 A4580154 */  sh      $t8, 0x0154($v0)           ## 00000154
/* 00A84 80B112F4 A4A00214 */  sh      $zero, 0x0214($a1)         ## 00000214
/* 00A88 80B112F8 0C00084C */  jal     osSyncPrintf
              
/* 00A8C 80B112FC ACB901FC */  sw      $t9, 0x01FC($a1)           ## 000001FC
.L80B11300:
/* 00A90 80B11300 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80B11304:
/* 00A94 80B11304 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00A98 80B11308 03E00008 */  jr      $ra                        
/* 00A9C 80B1130C 00000000 */  nop
