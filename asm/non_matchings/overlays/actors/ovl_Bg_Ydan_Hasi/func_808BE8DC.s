glabel func_808BE8DC
/* 003DC 808BE8DC 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 003E0 808BE8E0 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 003E4 808BE8E4 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 003E8 808BE8E8 8485016A */  lh      $a1, 0x016A($a0)           ## 0000016A
/* 003EC 808BE8EC 10A00003 */  beq     $a1, $zero, .L808BE8FC     
/* 003F0 808BE8F0 24AEFFFF */  addiu   $t6, $a1, 0xFFFF           ## $t6 = FFFFFFFF
/* 003F4 808BE8F4 A48E016A */  sh      $t6, 0x016A($a0)           ## 0000016A
/* 003F8 808BE8F8 8485016A */  lh      $a1, 0x016A($a0)           ## 0000016A
.L808BE8FC:
/* 003FC 808BE8FC 0C00BE65 */  jal     func_8002F994              
/* 00400 808BE900 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00404 808BE904 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 00408 808BE908 3C18808C */  lui     $t8, %hi(func_808BE810)    ## $t8 = 808C0000
/* 0040C 808BE90C 2718E810 */  addiu   $t8, $t8, %lo(func_808BE810) ## $t8 = 808BE810
/* 00410 808BE910 848F016A */  lh      $t7, 0x016A($a0)           ## 0000016A
/* 00414 808BE914 55E00003 */  bnel    $t7, $zero, .L808BE924     
/* 00418 808BE918 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 0041C 808BE91C AC980164 */  sw      $t8, 0x0164($a0)           ## 00000164
/* 00420 808BE920 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L808BE924:
/* 00424 808BE924 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00428 808BE928 03E00008 */  jr      $ra                        
/* 0042C 808BE92C 00000000 */  nop
