glabel EnSi_Draw
/* 003C4 80AFBA54 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 003C8 80AFBA58 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 003CC 80AFBA5C AFA5001C */  sw      $a1, 0x001C($sp)           
/* 003D0 80AFBA60 8C8F014C */  lw      $t7, 0x014C($a0)           ## 0000014C
/* 003D4 80AFBA64 3C0E80B0 */  lui     $t6, %hi(func_80AFB950)    ## $t6 = 80B00000
/* 003D8 80AFBA68 25CEB950 */  addiu   $t6, $t6, %lo(func_80AFB950) ## $t6 = 80AFB950
/* 003DC 80AFBA6C 11CF000A */  beq     $t6, $t7, .L80AFBA98       
/* 003E0 80AFBA70 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 003E4 80AFBA74 0C00BB60 */  jal     func_8002ED80              
/* 003E8 80AFBA78 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 003EC 80AFBA7C 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 003F0 80AFBA80 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 003F4 80AFBA84 0C00BAF3 */  jal     func_8002EBCC              
/* 003F8 80AFBA88 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 003FC 80AFBA8C 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 00400 80AFBA90 0C01A528 */  jal     func_800694A0              
/* 00404 80AFBA94 24050074 */  addiu   $a1, $zero, 0x0074         ## $a1 = 00000074
.L80AFBA98:
/* 00408 80AFBA98 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 0040C 80AFBA9C 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00410 80AFBAA0 03E00008 */  jr      $ra                        
/* 00414 80AFBAA4 00000000 */  nop
/* 00418 80AFBAA8 00000000 */  nop
/* 0041C 80AFBAAC 00000000 */  nop
