glabel func_80ACBF50
/* 02030 80ACBF50 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 02034 80ACBF54 AFB00020 */  sw      $s0, 0x0020($sp)           
/* 02038 80ACBF58 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 0203C 80ACBF5C AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 02040 80ACBF60 AFA5002C */  sw      $a1, 0x002C($sp)           
/* 02044 80ACBF64 86050400 */  lh      $a1, 0x0400($s0)           ## 00000400
/* 02048 80ACBF68 240E0258 */  addiu   $t6, $zero, 0x0258         ## $t6 = 00000258
/* 0204C 80ACBF6C AFAE0010 */  sw      $t6, 0x0010($sp)           
/* 02050 80ACBF70 24840032 */  addiu   $a0, $a0, 0x0032           ## $a0 = 00000032
/* 02054 80ACBF74 24060002 */  addiu   $a2, $zero, 0x0002         ## $a2 = 00000002
/* 02058 80ACBF78 0C01E1A7 */  jal     Math_SmoothScaleMaxMinS
              
/* 0205C 80ACBF7C 24070384 */  addiu   $a3, $zero, 0x0384         ## $a3 = 00000384
/* 02060 80ACBF80 960203FC */  lhu     $v0, 0x03FC($s0)           ## 000003FC
/* 02064 80ACBF84 860F0032 */  lh      $t7, 0x0032($s0)           ## 00000032
/* 02068 80ACBF88 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0206C 80ACBF8C 30580001 */  andi    $t8, $v0, 0x0001           ## $t8 = 00000000
/* 02070 80ACBF90 13000017 */  beq     $t8, $zero, .L80ACBFF0     
/* 02074 80ACBF94 A60F00B6 */  sh      $t7, 0x00B6($s0)           ## 000000B6
/* 02078 80ACBF98 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 0207C 80ACBF9C 3C190600 */  lui     $t9, 0x0600                ## $t9 = 06000000
/* 02080 80ACBFA0 273915CC */  addiu   $t9, $t9, 0x15CC           ## $t9 = 060015CC
/* 02084 80ACBFA4 3C0580AD */  lui     $a1, %hi(func_80ACBC0C)    ## $a1 = 80AD0000
/* 02088 80ACBFA8 3C0680AD */  lui     $a2, %hi(func_80ACC460)    ## $a2 = 80AD0000
/* 0208C 80ACBFAC 24C6C460 */  addiu   $a2, $a2, %lo(func_80ACC460) ## $a2 = 80ACC460
/* 02090 80ACBFB0 24A5BC0C */  addiu   $a1, $a1, %lo(func_80ACBC0C) ## $a1 = 80ACBC0C
/* 02094 80ACBFB4 AFB90010 */  sw      $t9, 0x0010($sp)           
/* 02098 80ACBFB8 26070198 */  addiu   $a3, $s0, 0x0198           ## $a3 = 00000198
/* 0209C 80ACBFBC 0C2B342E */  jal     func_80ACD0B8              
/* 020A0 80ACBFC0 E7A40014 */  swc1    $f4, 0x0014($sp)           
/* 020A4 80ACBFC4 3C014000 */  lui     $at, 0x4000                ## $at = 40000000
/* 020A8 80ACBFC8 44813000 */  mtc1    $at, $f6                   ## $f6 = 2.00
/* 020AC 80ACBFCC 3C014080 */  lui     $at, 0x4080                ## $at = 40800000
/* 020B0 80ACBFD0 44804000 */  mtc1    $zero, $f8                 ## $f8 = 0.00
/* 020B4 80ACBFD4 44815000 */  mtc1    $at, $f10                  ## $f10 = 4.00
/* 020B8 80ACBFD8 24080006 */  addiu   $t0, $zero, 0x0006         ## $t0 = 00000006
/* 020BC 80ACBFDC A60803FE */  sh      $t0, 0x03FE($s0)           ## 000003FE
/* 020C0 80ACBFE0 960203FC */  lhu     $v0, 0x03FC($s0)           ## 000003FC
/* 020C4 80ACBFE4 E6060060 */  swc1    $f6, 0x0060($s0)           ## 00000060
/* 020C8 80ACBFE8 E608006C */  swc1    $f8, 0x006C($s0)           ## 0000006C
/* 020CC 80ACBFEC E60A0068 */  swc1    $f10, 0x0068($s0)          ## 00000068
.L80ACBFF0:
/* 020D0 80ACBFF0 34490008 */  ori     $t1, $v0, 0x0008           ## $t1 = 00000008
/* 020D4 80ACBFF4 A60903FC */  sh      $t1, 0x03FC($s0)           ## 000003FC
/* 020D8 80ACBFF8 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 020DC 80ACBFFC 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 020E0 80ACC000 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 020E4 80ACC004 03E00008 */  jr      $ra                        
/* 020E8 80ACC008 00000000 */  nop
