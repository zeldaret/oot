glabel func_80AEFD38
/* 05128 80AEFD38 3C028016 */  lui     $v0, 0x8016                ## $v0 = 80160000
/* 0512C 80AEFD3C 2442E660 */  addiu   $v0, $v0, 0xE660           ## $v0 = 8015E660
/* 05130 80AEFD40 944E0EDA */  lhu     $t6, 0x0EDA($v0)           ## 8015F53A
/* 05134 80AEFD44 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 05138 80AEFD48 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 0513C 80AEFD4C 31CF0080 */  andi    $t7, $t6, 0x0080           ## $t7 = 00000000
/* 05140 80AEFD50 11E00015 */  beq     $t7, $zero, .L80AEFDA8     
/* 05144 80AEFD54 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 05148 80AEFD58 8C580004 */  lw      $t8, 0x0004($v0)           ## 8015E664
/* 0514C 80AEFD5C 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 05150 80AEFD60 3C050601 */  lui     $a1, 0x0601                ## $a1 = 06010000
/* 05154 80AEFD64 17010010 */  bne     $t8, $at, .L80AEFDA8       
/* 05158 80AEFD68 24A597B8 */  addiu   $a1, $a1, 0x97B8           ## $a1 = 060097B8
/* 0515C 80AEFD6C 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 05160 80AEFD70 24070000 */  addiu   $a3, $zero, 0x0000         ## $a3 = 00000000
/* 05164 80AEFD74 AFA00010 */  sw      $zero, 0x0010($sp)         
/* 05168 80AEFD78 0C2BAC99 */  jal     func_80AEB264              
/* 0516C 80AEFD7C AFA40020 */  sw      $a0, 0x0020($sp)           
/* 05170 80AEFD80 8FA40020 */  lw      $a0, 0x0020($sp)           
/* 05174 80AEFD84 2401FFEF */  addiu   $at, $zero, 0xFFEF         ## $at = FFFFFFEF
/* 05178 80AEFD88 2409002C */  addiu   $t1, $zero, 0x002C         ## $t1 = 0000002C
/* 0517C 80AEFD8C 8C990004 */  lw      $t9, 0x0004($a0)           ## 00000004
/* 05180 80AEFD90 240A0001 */  addiu   $t2, $zero, 0x0001         ## $t2 = 00000001
/* 05184 80AEFD94 AC890264 */  sw      $t1, 0x0264($a0)           ## 00000264
/* 05188 80AEFD98 03214024 */  and     $t0, $t9, $at              
/* 0518C 80AEFD9C AC880004 */  sw      $t0, 0x0004($a0)           ## 00000004
/* 05190 80AEFDA0 10000003 */  beq     $zero, $zero, .L80AEFDB0   
/* 05194 80AEFDA4 AC8A0268 */  sw      $t2, 0x0268($a0)           ## 00000268
.L80AEFDA8:
/* 05198 80AEFDA8 0C00B55C */  jal     Actor_Kill
              
/* 0519C 80AEFDAC 00000000 */  nop
.L80AEFDB0:
/* 051A0 80AEFDB0 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 051A4 80AEFDB4 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 051A8 80AEFDB8 03E00008 */  jr      $ra                        
/* 051AC 80AEFDBC 00000000 */  nop


