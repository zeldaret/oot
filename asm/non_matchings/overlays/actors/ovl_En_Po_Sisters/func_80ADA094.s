glabel func_80ADA094
/* 01104 80ADA094 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 01108 80ADA098 3C0180AE */  lui     $at, %hi(D_80ADD784)       ## $at = 80AE0000
/* 0110C 80ADA09C AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 01110 80ADA0A0 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 01114 80ADA0A4 AC20D784 */  sw      $zero, %lo(D_80ADD784)($at) 
/* 01118 80ADA0A8 8C990008 */  lw      $t9, 0x0008($a0)           ## 00000008
/* 0111C 80ADA0AC 8C98000C */  lw      $t8, 0x000C($a0)           ## 0000000C
/* 01120 80ADA0B0 240E0080 */  addiu   $t6, $zero, 0x0080         ## $t6 = 00000080
/* 01124 80ADA0B4 AC990234 */  sw      $t9, 0x0234($a0)           ## 00000234
/* 01128 80ADA0B8 8C990010 */  lw      $t9, 0x0010($a0)           ## 00000010
/* 0112C 80ADA0BC 240F0032 */  addiu   $t7, $zero, 0x0032         ## $t7 = 00000032
/* 01130 80ADA0C0 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 01134 80ADA0C4 A0800231 */  sb      $zero, 0x0231($a0)         ## 00000231
/* 01138 80ADA0C8 A08E0199 */  sb      $t6, 0x0199($a0)           ## 00000199
/* 0113C 80ADA0CC A48F019A */  sh      $t7, 0x019A($a0)           ## 0000019A
/* 01140 80ADA0D0 AC980238 */  sw      $t8, 0x0238($a0)           ## 00000238
/* 01144 80ADA0D4 AC99023C */  sw      $t9, 0x023C($a0)           ## 0000023C
/* 01148 80ADA0D8 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 0114C 80ADA0DC AFA60018 */  sw      $a2, 0x0018($sp)           
/* 01150 80ADA0E0 24070006 */  addiu   $a3, $zero, 0x0006         ## $a3 = 00000006
/* 01154 80ADA0E4 0C00CDD2 */  jal     Actor_ChangeType
              
/* 01158 80ADA0E8 24851C24 */  addiu   $a1, $a0, 0x1C24           ## $a1 = 00001C24
/* 0115C 80ADA0EC 8FA60018 */  lw      $a2, 0x0018($sp)           
/* 01160 80ADA0F0 3C0980AE */  lui     $t1, %hi(func_80ADBC88)    ## $t1 = 80AE0000
/* 01164 80ADA0F4 2529BC88 */  addiu   $t1, $t1, %lo(func_80ADBC88) ## $t1 = 80ADBC88
/* 01168 80ADA0F8 ACC90190 */  sw      $t1, 0x0190($a2)           ## 00000190
/* 0116C 80ADA0FC 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 01170 80ADA100 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 01174 80ADA104 03E00008 */  jr      $ra                        
/* 01178 80ADA108 00000000 */  nop
