glabel func_808519EC
/* 1F7DC 808519EC 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 1F7E0 808519F0 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 1F7E4 808519F4 00A03825 */  or      $a3, $a1, $zero            ## $a3 = 00000000
/* 1F7E8 808519F8 24A40024 */  addiu   $a0, $a1, 0x0024           ## $a0 = 00000024
/* 1F7EC 808519FC AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 1F7F0 80851A00 3C058085 */  lui     $a1, %hi(D_80855198)       ## $a1 = 80850000
/* 1F7F4 80851A04 AFA60020 */  sw      $a2, 0x0020($sp)           
/* 1F7F8 80851A08 24A55198 */  addiu   $a1, $a1, %lo(D_80855198)  ## $a1 = 80855198
/* 1F7FC 80851A0C 0C01DF90 */  jal     Math_Vec3f_Copy
              ## Vec3f_Copy
/* 1F800 80851A10 AFA7001C */  sw      $a3, 0x001C($sp)           
/* 1F804 80851A14 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 1F808 80851A18 240E8000 */  addiu   $t6, $zero, 0x8000         ## $t6 = FFFF8000
/* 1F80C 80851A1C 8CAF0678 */  lw      $t7, 0x0678($a1)           ## 00000678
/* 1F810 80851A20 A4AE00B6 */  sh      $t6, 0x00B6($a1)           ## 000000B6
/* 1F814 80851A24 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 1F818 80851A28 0C20C8B4 */  jal     func_808322D0              
/* 1F81C 80851A2C 8DE6009C */  lw      $a2, 0x009C($t7)           ## 0000009C
/* 1F820 80851A30 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 1F824 80851A34 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 1F828 80851A38 0C20CBD5 */  jal     func_80832F54              
/* 1F82C 80851A3C 2406028F */  addiu   $a2, $zero, 0x028F         ## $a2 = 0000028F
/* 1F830 80851A40 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 1F834 80851A44 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 1F838 80851A48 03E00008 */  jr      $ra                        
/* 1F83C 80851A4C 00000000 */  nop
