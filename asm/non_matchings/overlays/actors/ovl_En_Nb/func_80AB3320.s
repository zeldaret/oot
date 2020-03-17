glabel func_80AB3320
/* 02590 80AB3320 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 02594 80AB3324 AFA40020 */  sw      $a0, 0x0020($sp)           
/* 02598 80AB3328 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 0259C 80AB332C AFA50024 */  sw      $a1, 0x0024($sp)           
/* 025A0 80AB3330 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 025A4 80AB3334 0C2AC4BB */  jal     func_80AB12EC              
/* 025A8 80AB3338 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 025AC 80AB333C 1040001C */  beq     $v0, $zero, .L80AB33B0     
/* 025B0 80AB3340 8FA70020 */  lw      $a3, 0x0020($sp)           
/* 025B4 80AB3344 94460000 */  lhu     $a2, 0x0000($v0)           ## 00000000
/* 025B8 80AB3348 8CE3028C */  lw      $v1, 0x028C($a3)           ## 0000028C
/* 025BC 80AB334C 2401000F */  addiu   $at, $zero, 0x000F         ## $at = 0000000F
/* 025C0 80AB3350 50C30018 */  beql    $a2, $v1, .L80AB33B4       
/* 025C4 80AB3354 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 025C8 80AB3358 10C10006 */  beq     $a2, $at, .L80AB3374       
/* 025CC 80AB335C 00E02025 */  or      $a0, $a3, $zero            ## $a0 = 00000000
/* 025D0 80AB3360 24010010 */  addiu   $at, $zero, 0x0010         ## $at = 00000010
/* 025D4 80AB3364 10C10008 */  beq     $a2, $at, .L80AB3388       
/* 025D8 80AB3368 00E02025 */  or      $a0, $a3, $zero            ## $a0 = 00000000
/* 025DC 80AB336C 1000000A */  beq     $zero, $zero, .L80AB3398   
/* 025E0 80AB3370 3C0480AB */  lui     $a0, %hi(D_80AB5134)       ## $a0 = 80AB0000
.L80AB3374:
/* 025E4 80AB3374 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 025E8 80AB3378 0C2ACC8A */  jal     func_80AB3228              
/* 025EC 80AB337C AFA60018 */  sw      $a2, 0x0018($sp)           
/* 025F0 80AB3380 10000009 */  beq     $zero, $zero, .L80AB33A8   
/* 025F4 80AB3384 8FA60018 */  lw      $a2, 0x0018($sp)           
.L80AB3388:
/* 025F8 80AB3388 0C2ACCAB */  jal     func_80AB32AC              
/* 025FC 80AB338C AFA60018 */  sw      $a2, 0x0018($sp)           
/* 02600 80AB3390 10000005 */  beq     $zero, $zero, .L80AB33A8   
/* 02604 80AB3394 8FA60018 */  lw      $a2, 0x0018($sp)           
.L80AB3398:
/* 02608 80AB3398 24845134 */  addiu   $a0, $a0, %lo(D_80AB5134)  ## $a0 = 00005134
/* 0260C 80AB339C 0C00084C */  jal     osSyncPrintf
              
/* 02610 80AB33A0 AFA60018 */  sw      $a2, 0x0018($sp)           
/* 02614 80AB33A4 8FA60018 */  lw      $a2, 0x0018($sp)           
.L80AB33A8:
/* 02618 80AB33A8 8FAE0020 */  lw      $t6, 0x0020($sp)           
/* 0261C 80AB33AC ADC6028C */  sw      $a2, 0x028C($t6)           ## 0000028C
.L80AB33B0:
/* 02620 80AB33B0 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80AB33B4:
/* 02624 80AB33B4 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 02628 80AB33B8 03E00008 */  jr      $ra                        
/* 0262C 80AB33BC 00000000 */  nop


