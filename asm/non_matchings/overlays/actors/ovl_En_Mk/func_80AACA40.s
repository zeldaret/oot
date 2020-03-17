glabel func_80AACA40
/* 00140 80AACA40 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00144 80AACA44 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00148 80AACA48 0C00BCCD */  jal     func_8002F334              
/* 0014C 80AACA4C AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00150 80AACA50 10400009 */  beq     $v0, $zero, .L80AACA78     
/* 00154 80AACA54 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 00158 80AACA58 8C8E0004 */  lw      $t6, 0x0004($a0)           ## 00000004
/* 0015C 80AACA5C 3C01FFFE */  lui     $at, 0xFFFE                ## $at = FFFE0000
/* 00160 80AACA60 3421FFFF */  ori     $at, $at, 0xFFFF           ## $at = FFFEFFFF
/* 00164 80AACA64 3C1880AB */  lui     $t8, %hi(func_80AAD080)    ## $t8 = 80AB0000
/* 00168 80AACA68 2718D080 */  addiu   $t8, $t8, %lo(func_80AAD080) ## $t8 = 80AAD080
/* 0016C 80AACA6C 01C17824 */  and     $t7, $t6, $at              
/* 00170 80AACA70 AC8F0004 */  sw      $t7, 0x0004($a0)           ## 00000004
/* 00174 80AACA74 AC980284 */  sw      $t8, 0x0284($a0)           ## 00000284
.L80AACA78:
/* 00178 80AACA78 9499027E */  lhu     $t9, 0x027E($a0)           ## 0000027E
/* 0017C 80AACA7C 37280001 */  ori     $t0, $t9, 0x0001           ## $t0 = 00000001
/* 00180 80AACA80 A488027E */  sh      $t0, 0x027E($a0)           ## 0000027E
/* 00184 80AACA84 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00188 80AACA88 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 0018C 80AACA8C 03E00008 */  jr      $ra                        
/* 00190 80AACA90 00000000 */  nop


