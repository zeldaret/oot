.late_rodata
glabel D_809379E4
    .float 0.025

.text
glabel func_8092F894
/* 032C4 8092F894 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 032C8 8092F898 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 032CC 8092F89C 3C0E8093 */  lui     $t6, %hi(func_8093639C)    ## $t6 = 80930000
/* 032D0 8092F8A0 25CE639C */  addiu   $t6, $t6, %lo(func_8093639C) ## $t6 = 8093639C
/* 032D4 8092F8A4 240F0028 */  addiu   $t7, $zero, 0x0028         ## $t7 = 00000028
/* 032D8 8092F8A8 00802825 */  or      $a1, $a0, $zero            ## $a1 = 00000000
/* 032DC 8092F8AC AC8E0134 */  sw      $t6, 0x0134($a0)           ## 00000134
/* 032E0 8092F8B0 A48F0198 */  sh      $t7, 0x0198($a0)           ## 00000198
/* 032E4 8092F8B4 AFA50018 */  sw      $a1, 0x0018($sp)           
/* 032E8 8092F8B8 0C03E803 */  jal     Audio_SetBGM
              
/* 032EC 8092F8BC 24040021 */  addiu   $a0, $zero, 0x0021         ## $a0 = 00000021
/* 032F0 8092F8C0 3C018093 */  lui     $at, %hi(D_809379E4)       ## $at = 80930000
/* 032F4 8092F8C4 C42C79E4 */  lwc1    $f12, %lo(D_809379E4)($at) 
/* 032F8 8092F8C8 0C24BB1D */  jal     func_8092EC74              
/* 032FC 8092F8CC 24050006 */  addiu   $a1, $zero, 0x0006         ## $a1 = 00000006
/* 03300 8092F8D0 8FB90018 */  lw      $t9, 0x0018($sp)           
/* 03304 8092F8D4 3C188093 */  lui     $t8, %hi(func_8092F8F0)    ## $t8 = 80930000
/* 03308 8092F8D8 2718F8F0 */  addiu   $t8, $t8, %lo(func_8092F8F0) ## $t8 = 8092F8F0
/* 0330C 8092F8DC AF380190 */  sw      $t8, 0x0190($t9)           ## 00000190
/* 03310 8092F8E0 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 03314 8092F8E4 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 03318 8092F8E8 03E00008 */  jr      $ra                        
/* 0331C 8092F8EC 00000000 */  nop
