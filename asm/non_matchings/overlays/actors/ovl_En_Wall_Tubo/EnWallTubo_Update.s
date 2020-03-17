glabel EnWallTubo_Update
/* 0046C 80B2F25C 27BDFFB8 */  addiu   $sp, $sp, 0xFFB8           ## $sp = FFFFFFB8
/* 00470 80B2F260 AFBF0044 */  sw      $ra, 0x0044($sp)           
/* 00474 80B2F264 AFA5004C */  sw      $a1, 0x004C($sp)           
/* 00478 80B2F268 84820150 */  lh      $v0, 0x0150($a0)           ## 00000150
/* 0047C 80B2F26C 10400002 */  beq     $v0, $zero, .L80B2F278     
/* 00480 80B2F270 244EFFFF */  addiu   $t6, $v0, 0xFFFF           ## $t6 = FFFFFFFF
/* 00484 80B2F274 A48E0150 */  sh      $t6, 0x0150($a0)           ## 00000150
.L80B2F278:
/* 00488 80B2F278 AFA40048 */  sw      $a0, 0x0048($sp)           
/* 0048C 80B2F27C 8C99014C */  lw      $t9, 0x014C($a0)           ## 0000014C
/* 00490 80B2F280 8FA5004C */  lw      $a1, 0x004C($sp)           
/* 00494 80B2F284 0320F809 */  jalr    $ra, $t9                   
/* 00498 80B2F288 00000000 */  nop
/* 0049C 80B2F28C 3C0F8016 */  lui     $t7, 0x8016                ## $t7 = 80160000
/* 004A0 80B2F290 8DEFFA90 */  lw      $t7, -0x0570($t7)          ## 8015FA90
/* 004A4 80B2F294 8FA40048 */  lw      $a0, 0x0048($sp)           
/* 004A8 80B2F298 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 004AC 80B2F29C 85F812D4 */  lh      $t8, 0x12D4($t7)           ## 801612D4
/* 004B0 80B2F2A0 240A00FF */  addiu   $t2, $zero, 0x00FF         ## $t2 = 000000FF
/* 004B4 80B2F2A4 240B00FF */  addiu   $t3, $zero, 0x00FF         ## $t3 = 000000FF
/* 004B8 80B2F2A8 13000016 */  beq     $t8, $zero, .L80B2F304     
/* 004BC 80B2F2AC 240C0004 */  addiu   $t4, $zero, 0x0004         ## $t4 = 00000004
/* 004C0 80B2F2B0 84880032 */  lh      $t0, 0x0032($a0)           ## 00000032
/* 004C4 80B2F2B4 C48C0024 */  lwc1    $f12, 0x0024($a0)          ## 00000024
/* 004C8 80B2F2B8 C48E0028 */  lwc1    $f14, 0x0028($a0)          ## 00000028
/* 004CC 80B2F2BC 8C86002C */  lw      $a2, 0x002C($a0)           ## 0000002C
/* 004D0 80B2F2C0 84870030 */  lh      $a3, 0x0030($a0)           ## 00000030
/* 004D4 80B2F2C4 AFA80010 */  sw      $t0, 0x0010($sp)           
/* 004D8 80B2F2C8 84890034 */  lh      $t1, 0x0034($a0)           ## 00000034
/* 004DC 80B2F2CC 44810000 */  mtc1    $at, $f0                   ## $f0 = 1.00
/* 004E0 80B2F2D0 8FAD004C */  lw      $t5, 0x004C($sp)           
/* 004E4 80B2F2D4 AFAC0034 */  sw      $t4, 0x0034($sp)           
/* 004E8 80B2F2D8 AFAB0030 */  sw      $t3, 0x0030($sp)           
/* 004EC 80B2F2DC AFAA002C */  sw      $t2, 0x002C($sp)           
/* 004F0 80B2F2E0 AFA00028 */  sw      $zero, 0x0028($sp)         
/* 004F4 80B2F2E4 AFA00024 */  sw      $zero, 0x0024($sp)         
/* 004F8 80B2F2E8 AFA90014 */  sw      $t1, 0x0014($sp)           
/* 004FC 80B2F2EC E7A00018 */  swc1    $f0, 0x0018($sp)           
/* 00500 80B2F2F0 E7A0001C */  swc1    $f0, 0x001C($sp)           
/* 00504 80B2F2F4 E7A00020 */  swc1    $f0, 0x0020($sp)           
/* 00508 80B2F2F8 8DAE0000 */  lw      $t6, 0x0000($t5)           ## 00000000
/* 0050C 80B2F2FC 0C018FA7 */  jal     DebugDisplay_AddObject
              
/* 00510 80B2F300 AFAE0038 */  sw      $t6, 0x0038($sp)           
.L80B2F304:
/* 00514 80B2F304 8FBF0044 */  lw      $ra, 0x0044($sp)           
/* 00518 80B2F308 27BD0048 */  addiu   $sp, $sp, 0x0048           ## $sp = 00000000
/* 0051C 80B2F30C 03E00008 */  jr      $ra                        
/* 00520 80B2F310 00000000 */  nop
/* 00524 80B2F314 00000000 */  nop
/* 00528 80B2F318 00000000 */  nop
/* 0052C 80B2F31C 00000000 */  nop

