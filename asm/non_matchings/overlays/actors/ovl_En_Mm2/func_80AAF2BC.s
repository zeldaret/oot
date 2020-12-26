glabel func_80AAF2BC
/* 0046C 80AAF2BC 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 00470 80AAF2C0 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 00474 80AAF2C4 AFB00020 */  sw      $s0, 0x0020($sp)           
/* 00478 80AAF2C8 AFA5002C */  sw      $a1, 0x002C($sp)           
/* 0047C 80AAF2CC 848E01F6 */  lh      $t6, 0x01F6($a0)           ## 000001F6
/* 00480 80AAF2D0 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00484 80AAF2D4 29C1003D */  slti    $at, $t6, 0x003D           
/* 00488 80AAF2D8 14200003 */  bne     $at, $zero, .L80AAF2E8     
/* 0048C 80AAF2DC 00000000 */  nop
/* 00490 80AAF2E0 0C00B55C */  jal     Actor_Kill
              
/* 00494 80AAF2E4 00000000 */  nop
.L80AAF2E8:
/* 00498 80AAF2E8 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 0049C 80AAF2EC 2604014C */  addiu   $a0, $s0, 0x014C           ## $a0 = 0000014C
/* 004A0 80AAF2F0 860F01F6 */  lh      $t7, 0x01F6($s0)           ## 000001F6
/* 004A4 80AAF2F4 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 004A8 80AAF2F8 3C063F19 */  lui     $a2, 0x3F19                ## $a2 = 3F190000
/* 004AC 80AAF2FC 25F80001 */  addiu   $t8, $t7, 0x0001           ## $t8 = 00000001
/* 004B0 80AAF300 A61801F6 */  sh      $t8, 0x01F6($s0)           ## 000001F6
/* 004B4 80AAF304 34C6999A */  ori     $a2, $a2, 0x999A           ## $a2 = 3F19999A
/* 004B8 80AAF308 26040068 */  addiu   $a0, $s0, 0x0068           ## $a0 = 00000068
/* 004BC 80AAF30C 3C054120 */  lui     $a1, 0x4120                ## $a1 = 41200000
/* 004C0 80AAF310 3C074000 */  lui     $a3, 0x4000                ## $a3 = 40000000
/* 004C4 80AAF314 0C01E0C4 */  jal     Math_SmoothStepToF
              
/* 004C8 80AAF318 E7A40010 */  swc1    $f4, 0x0010($sp)           
/* 004CC 80AAF31C 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 004D0 80AAF320 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 004D4 80AAF324 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 004D8 80AAF328 03E00008 */  jr      $ra                        
/* 004DC 80AAF32C 00000000 */  nop
