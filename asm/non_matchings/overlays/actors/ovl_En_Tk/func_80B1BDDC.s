glabel func_80B1BDDC
/* 004DC 80B1BDDC 27BDFFB8 */  addiu   $sp, $sp, 0xFFB8           ## $sp = FFFFFFB8
/* 004E0 80B1BDE0 3C0F80B2 */  lui     $t7, %hi(D_80B1D4F0)       ## $t7 = 80B20000
/* 004E4 80B1BDE4 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 004E8 80B1BDE8 AFA40048 */  sw      $a0, 0x0048($sp)           
/* 004EC 80B1BDEC AFA5004C */  sw      $a1, 0x004C($sp)           
/* 004F0 80B1BDF0 AFA60050 */  sw      $a2, 0x0050($sp)           
/* 004F4 80B1BDF4 AFA70054 */  sw      $a3, 0x0054($sp)           
/* 004F8 80B1BDF8 25EFD4F0 */  addiu   $t7, $t7, %lo(D_80B1D4F0)  ## $t7 = 80B1D4F0
/* 004FC 80B1BDFC 8DF90000 */  lw      $t9, 0x0000($t7)           ## 80B1D4F0
/* 00500 80B1BE00 27AE003C */  addiu   $t6, $sp, 0x003C           ## $t6 = FFFFFFF4
/* 00504 80B1BE04 8DF80004 */  lw      $t8, 0x0004($t7)           ## 80B1D4F4
/* 00508 80B1BE08 ADD90000 */  sw      $t9, 0x0000($t6)           ## FFFFFFF4
/* 0050C 80B1BE0C 8DF90008 */  lw      $t9, 0x0008($t7)           ## 80B1D4F8
/* 00510 80B1BE10 3C0980B2 */  lui     $t1, %hi(D_80B1D4FC)       ## $t1 = 80B20000
/* 00514 80B1BE14 2529D4FC */  addiu   $t1, $t1, %lo(D_80B1D4FC)  ## $t1 = 80B1D4FC
/* 00518 80B1BE18 ADD80004 */  sw      $t8, 0x0004($t6)           ## FFFFFFF8
/* 0051C 80B1BE1C ADD90008 */  sw      $t9, 0x0008($t6)           ## FFFFFFFC
/* 00520 80B1BE20 8D2B0000 */  lw      $t3, 0x0000($t1)           ## 80B1D4FC
/* 00524 80B1BE24 27A80030 */  addiu   $t0, $sp, 0x0030           ## $t0 = FFFFFFE8
/* 00528 80B1BE28 8D2A0004 */  lw      $t2, 0x0004($t1)           ## 80B1D500
/* 0052C 80B1BE2C AD0B0000 */  sw      $t3, 0x0000($t0)           ## FFFFFFE8
/* 00530 80B1BE30 8D2B0008 */  lw      $t3, 0x0008($t1)           ## 80B1D504
/* 00534 80B1BE34 AD0A0004 */  sw      $t2, 0x0004($t0)           ## FFFFFFEC
/* 00538 80B1BE38 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 0053C 80B1BE3C AD0B0008 */  sw      $t3, 0x0008($t0)           ## FFFFFFF0
/* 00540 80B1BE40 C7A6005C */  lwc1    $f6, 0x005C($sp)           
/* 00544 80B1BE44 C7A40034 */  lwc1    $f4, 0x0034($sp)           
/* 00548 80B1BE48 93AC0053 */  lbu     $t4, 0x0053($sp)           
/* 0054C 80B1BE4C 46060202 */  mul.s   $f8, $f0, $f6              
/* 00550 80B1BE50 C7B00054 */  lwc1    $f16, 0x0054($sp)          
/* 00554 80B1BE54 C7B20058 */  lwc1    $f18, 0x0058($sp)          
/* 00558 80B1BE58 8FA40048 */  lw      $a0, 0x0048($sp)           
/* 0055C 80B1BE5C 8FA5004C */  lw      $a1, 0x004C($sp)           
/* 00560 80B1BE60 27A6003C */  addiu   $a2, $sp, 0x003C           ## $a2 = FFFFFFF4
/* 00564 80B1BE64 27A70030 */  addiu   $a3, $sp, 0x0030           ## $a3 = FFFFFFE8
/* 00568 80B1BE68 46082280 */  add.s   $f10, $f4, $f8             
/* 0056C 80B1BE6C AFAC0010 */  sw      $t4, 0x0010($sp)           
/* 00570 80B1BE70 E7B00014 */  swc1    $f16, 0x0014($sp)          
/* 00574 80B1BE74 E7B20018 */  swc1    $f18, 0x0018($sp)          
/* 00578 80B1BE78 0C2C6E40 */  jal     func_80B1B900              
/* 0057C 80B1BE7C E7AA0034 */  swc1    $f10, 0x0034($sp)          
/* 00580 80B1BE80 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 00584 80B1BE84 27BD0048 */  addiu   $sp, $sp, 0x0048           ## $sp = 00000000
/* 00588 80B1BE88 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 0058C 80B1BE8C 03E00008 */  jr      $ra                        
/* 00590 80B1BE90 00000000 */  nop


