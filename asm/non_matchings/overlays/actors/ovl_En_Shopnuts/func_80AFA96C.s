glabel func_80AFA96C
/* 0024C 80AFA96C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00250 80AFA970 AFBF0014 */  sw      $ra, 0x0014($sp)
/* 00254 80AFA974 00803825 */  or      $a3, $a0, $zero            ## $a3 = 00000000
/* 00258 80AFA978 3C050600 */  lui     $a1, %hi(D_06004574)                ## $a1 = 06000000
/* 0025C 80AFA97C 24A54574 */  addiu   $a1, $a1, %lo(D_06004574)           ## $a1 = 06004574
/* 00260 80AFA980 AFA70018 */  sw      $a3, 0x0018($sp)
/* 00264 80AFA984 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 00268 80AFA988 0C0294D3 */  jal     Animation_MorphToLoop
/* 0026C 80AFA98C 3C06C040 */  lui     $a2, 0xC040                ## $a2 = C0400000
/* 00270 80AFA990 8FA70018 */  lw      $a3, 0x0018($sp)
/* 00274 80AFA994 3C0E80B0 */  lui     $t6, %hi(func_80AFAE28)    ## $t6 = 80B00000
/* 00278 80AFA998 25CEAE28 */  addiu   $t6, $t6, %lo(func_80AFAE28) ## $t6 = 80AFAE28
/* 0027C 80AFA99C 8CEF0190 */  lw      $t7, 0x0190($a3)           ## 00000190
/* 00280 80AFA9A0 3C0880B0 */  lui     $t0, %hi(func_80AFAD64)    ## $t0 = 80B00000
/* 00284 80AFA9A4 24190001 */  addiu   $t9, $zero, 0x0001         ## $t9 = 00000001
/* 00288 80AFA9A8 15CF0004 */  bne     $t6, $t7, .L80AFA9BC
/* 0028C 80AFA9AC 2508AD64 */  addiu   $t0, $t0, %lo(func_80AFAD64) ## $t0 = 80AFAD64
/* 00290 80AFA9B0 24181002 */  addiu   $t8, $zero, 0x1002         ## $t8 = 00001002
/* 00294 80AFA9B4 10000002 */  beq     $zero, $zero, .L80AFA9C0
/* 00298 80AFA9B8 A4F80194 */  sh      $t8, 0x0194($a3)           ## 00000194
.L80AFA9BC:
/* 0029C 80AFA9BC A4F90194 */  sh      $t9, 0x0194($a3)           ## 00000194
.L80AFA9C0:
/* 002A0 80AFA9C0 ACE80190 */  sw      $t0, 0x0190($a3)           ## 00000190
/* 002A4 80AFA9C4 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 002A8 80AFA9C8 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 002AC 80AFA9CC 03E00008 */  jr      $ra
/* 002B0 80AFA9D0 00000000 */  nop
