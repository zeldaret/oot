glabel func_80038780
/* AAF920 80038780 27BDFFE0 */  addiu $sp, $sp, -0x20
/* AAF924 80038784 AFBF0014 */  sw    $ra, 0x14($sp)
/* AAF928 80038788 AFA40020 */  sw    $a0, 0x20($sp)
/* AAF92C 8003878C AFA50024 */  sw    $a1, 0x24($sp)
/* AAF930 80038790 0C00E21E */  jal   func_80038878
/* AAF934 80038794 AFA60028 */   sw    $a2, 0x28($sp)
/* AAF938 80038798 3401FFFF */  li    $at, 65535
/* AAF93C 8003879C 14410007 */  bne   $v0, $at, .L800387BC
/* AAF940 800387A0 A7A2001E */   sh    $v0, 0x1e($sp)
/* AAF944 800387A4 3C048014 */  lui   $a0, %hi(D_801386D0) # $a0, 0x8014
/* AAF948 800387A8 3C058014 */  lui   $a1, %hi(D_801386E4) # $a1, 0x8014
/* AAF94C 800387AC 24A586E4 */  addiu $a1, %lo(D_801386E4) # addiu $a1, $a1, -0x791c
/* AAF950 800387B0 248486D0 */  addiu $a0, %lo(D_801386D0) # addiu $a0, $a0, -0x7930
/* AAF954 800387B4 0C0007FC */  jal   __assert
/* AAF958 800387B8 240606F0 */   li    $a2, 1776
.L800387BC:
/* AAF95C 800387BC 8FAE0020 */  lw    $t6, 0x20($sp)
/* AAF960 800387C0 97B8001E */  lhu   $t8, 0x1e($sp)
/* AAF964 800387C4 8FA80024 */  lw    $t0, 0x24($sp)
/* AAF968 800387C8 8DCF0000 */  lw    $t7, ($t6)
/* AAF96C 800387CC 0018C880 */  sll   $t9, $t8, 2
/* AAF970 800387D0 8FA50028 */  lw    $a1, 0x28($sp)
/* AAF974 800387D4 95060000 */  lhu   $a2, ($t0)
/* AAF978 800387D8 0C00E1C2 */  jal   func_80038708
/* AAF97C 800387DC 01F92021 */   addu  $a0, $t7, $t9
/* AAF980 800387E0 97A9001E */  lhu   $t1, 0x1e($sp)
/* AAF984 800387E4 8FAA0024 */  lw    $t2, 0x24($sp)
/* AAF988 800387E8 A5490000 */  sh    $t1, ($t2)
/* AAF98C 800387EC 8FBF0014 */  lw    $ra, 0x14($sp)
/* AAF990 800387F0 27BD0020 */  addiu $sp, $sp, 0x20
/* AAF994 800387F4 03E00008 */  jr    $ra
/* AAF998 800387F8 00000000 */   nop   

