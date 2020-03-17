glabel ObjComb_Init
/* 003BC 80B91F1C 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 003C0 80B91F20 AFA50034 */  sw      $a1, 0x0034($sp)           
/* 003C4 80B91F24 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 003C8 80B91F28 AFB00020 */  sw      $s0, 0x0020($sp)           
/* 003CC 80B91F2C 3C0580B9 */  lui     $a1, %hi(D_80B92314)       ## $a1 = 80B90000
/* 003D0 80B91F30 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 003D4 80B91F34 0C01E037 */  jal     Actor_ProcessInitChain
              
/* 003D8 80B91F38 24A52314 */  addiu   $a1, $a1, %lo(D_80B92314)  ## $a1 = 80B92314
/* 003DC 80B91F3C 26050150 */  addiu   $a1, $s0, 0x0150           ## $a1 = 00000150
/* 003E0 80B91F40 AFA50028 */  sw      $a1, 0x0028($sp)           
/* 003E4 80B91F44 0C016EFE */  jal     func_8005BBF8              
/* 003E8 80B91F48 8FA40034 */  lw      $a0, 0x0034($sp)           
/* 003EC 80B91F4C 3C0780B9 */  lui     $a3, %hi(D_80B92304)       ## $a3 = 80B90000
/* 003F0 80B91F50 260E0170 */  addiu   $t6, $s0, 0x0170           ## $t6 = 00000170
/* 003F4 80B91F54 8FA50028 */  lw      $a1, 0x0028($sp)           
/* 003F8 80B91F58 AFAE0010 */  sw      $t6, 0x0010($sp)           
/* 003FC 80B91F5C 24E72304 */  addiu   $a3, $a3, %lo(D_80B92304)  ## $a3 = 80B92304
/* 00400 80B91F60 8FA40034 */  lw      $a0, 0x0034($sp)           
/* 00404 80B91F64 0C017014 */  jal     func_8005C050              
/* 00408 80B91F68 02003025 */  or      $a2, $s0, $zero            ## $a2 = 00000000
/* 0040C 80B91F6C 0C2E47EC */  jal     func_80B91FB0              
/* 00410 80B91F70 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00414 80B91F74 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 00418 80B91F78 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 0041C 80B91F7C 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 00420 80B91F80 03E00008 */  jr      $ra                        
/* 00424 80B91F84 00000000 */  nop


