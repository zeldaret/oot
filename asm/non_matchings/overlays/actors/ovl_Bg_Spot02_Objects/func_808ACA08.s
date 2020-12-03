glabel func_808ACA08
/* 003A8 808ACA08 27BDFFC0 */  addiu   $sp, $sp, 0xFFC0           ## $sp = FFFFFFC0
/* 003AC 808ACA0C AFBF0034 */  sw      $ra, 0x0034($sp)           
/* 003B0 808ACA10 AFB00030 */  sw      $s0, 0x0030($sp)           
/* 003B4 808ACA14 AFA50044 */  sw      $a1, 0x0044($sp)           
/* 003B8 808ACA18 8CAF1C44 */  lw      $t7, 0x1C44($a1)           ## 00001C44
/* 003BC 808ACA1C 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 003C0 808ACA20 24010014 */  addiu   $at, $zero, 0x0014         ## $at = 00000014
/* 003C4 808ACA24 AFAF003C */  sw      $t7, 0x003C($sp)           
/* 003C8 808ACA28 84820168 */  lh      $v0, 0x0168($a0)           ## 00000168
/* 003CC 808ACA2C 26050024 */  addiu   $a1, $s0, 0x0024           ## $a1 = 00000024
/* 003D0 808ACA30 3C0641F0 */  lui     $a2, 0x41F0                ## $a2 = 41F00000
/* 003D4 808ACA34 10400003 */  beq     $v0, $zero, .L808ACA44     
/* 003D8 808ACA38 2458FFFF */  addiu   $t8, $v0, 0xFFFF           ## $t8 = FFFFFFFF
/* 003DC 808ACA3C A4980168 */  sh      $t8, 0x0168($a0)           ## 00000168
/* 003E0 808ACA40 84820168 */  lh      $v0, 0x0168($a0)           ## 00000168
.L808ACA44:
/* 003E4 808ACA44 14410013 */  bne     $v0, $at, .L808ACA94       
/* 003E8 808ACA48 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 003EC 808ACA4C AE000134 */  sw      $zero, 0x0134($s0)         ## 00000134
/* 003F0 808ACA50 3C0C0601 */  lui     $t4, 0x0601                ## $t4 = 06010000
/* 003F4 808ACA54 258C2D30 */  addiu   $t4, $t4, 0x2D30           ## $t4 = 06012D30
/* 003F8 808ACA58 24190019 */  addiu   $t9, $zero, 0x0019         ## $t9 = 00000019
/* 003FC 808ACA5C 24080005 */  addiu   $t0, $zero, 0x0005         ## $t0 = 00000005
/* 00400 808ACA60 24090028 */  addiu   $t1, $zero, 0x0028         ## $t1 = 00000028
/* 00404 808ACA64 240A00A1 */  addiu   $t2, $zero, 0x00A1         ## $t2 = 000000A1
/* 00408 808ACA68 240B0014 */  addiu   $t3, $zero, 0x0014         ## $t3 = 00000014
/* 0040C 808ACA6C AFAB0020 */  sw      $t3, 0x0020($sp)           
/* 00410 808ACA70 AFAA001C */  sw      $t2, 0x001C($sp)           
/* 00414 808ACA74 AFA90018 */  sw      $t1, 0x0018($sp)           
/* 00418 808ACA78 AFA80014 */  sw      $t0, 0x0014($sp)           
/* 0041C 808ACA7C AFB90010 */  sw      $t9, 0x0010($sp)           
/* 00420 808ACA80 AFAC0024 */  sw      $t4, 0x0024($sp)           
/* 00424 808ACA84 0C00A5E9 */  jal     EffectSsHahen_SpawnBurst              
/* 00428 808ACA88 8FA40044 */  lw      $a0, 0x0044($sp)           
/* 0042C 808ACA8C 10000006 */  beq     $zero, $zero, .L808ACAA8   
/* 00430 808ACA90 8FAD0044 */  lw      $t5, 0x0044($sp)           
.L808ACA94:
/* 00434 808ACA94 54400004 */  bnel    $v0, $zero, .L808ACAA8     
/* 00438 808ACA98 8FAD0044 */  lw      $t5, 0x0044($sp)           
/* 0043C 808ACA9C 0C00B55C */  jal     Actor_Kill
              
/* 00440 808ACAA0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00444 808ACAA4 8FAD0044 */  lw      $t5, 0x0044($sp)           
.L808ACAA8:
/* 00448 808ACAA8 24010192 */  addiu   $at, $zero, 0x0192         ## $at = 00000192
/* 0044C 808ACAAC 3C0F8016 */  lui     $t7, %hi(gSaveContext+4)
/* 00450 808ACAB0 95AE1D74 */  lhu     $t6, 0x1D74($t5)           ## 00001D74
/* 00454 808ACAB4 55C1000D */  bnel    $t6, $at, .L808ACAEC       
/* 00458 808ACAB8 8FBF0034 */  lw      $ra, 0x0034($sp)           
/* 0045C 808ACABC 8DEFE664 */  lw      $t7, %lo(gSaveContext+4)($t7)
/* 00460 808ACAC0 2405683E */  addiu   $a1, $zero, 0x683E         ## $a1 = 0000683E
/* 00464 808ACAC4 8FA4003C */  lw      $a0, 0x003C($sp)           
/* 00468 808ACAC8 11E00005 */  beq     $t7, $zero, .L808ACAE0     
/* 0046C 808ACACC 00000000 */  nop
/* 00470 808ACAD0 0C00BDF7 */  jal     func_8002F7DC              
/* 00474 808ACAD4 8FA4003C */  lw      $a0, 0x003C($sp)           
/* 00478 808ACAD8 10000004 */  beq     $zero, $zero, .L808ACAEC   
/* 0047C 808ACADC 8FBF0034 */  lw      $ra, 0x0034($sp)           
.L808ACAE0:
/* 00480 808ACAE0 0C00BDF7 */  jal     func_8002F7DC              
/* 00484 808ACAE4 2405681E */  addiu   $a1, $zero, 0x681E         ## $a1 = 0000681E
/* 00488 808ACAE8 8FBF0034 */  lw      $ra, 0x0034($sp)           
.L808ACAEC:
/* 0048C 808ACAEC 8FB00030 */  lw      $s0, 0x0030($sp)           
/* 00490 808ACAF0 27BD0040 */  addiu   $sp, $sp, 0x0040           ## $sp = 00000000
/* 00494 808ACAF4 03E00008 */  jr      $ra                        
/* 00498 808ACAF8 00000000 */  nop
