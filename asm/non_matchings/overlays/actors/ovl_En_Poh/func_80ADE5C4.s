glabel func_80ADE5C4
/* 00874 80ADE5C4 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 00878 80ADE5C8 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 0087C 80ADE5CC AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00880 80ADE5D0 A0800194 */  sb      $zero, 0x0194($a0)         ## 00000194
/* 00884 80ADE5D4 E4840068 */  swc1    $f4, 0x0068($a0)           ## 00000068
/* 00888 80ADE5D8 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 0088C 80ADE5DC 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 00890 80ADE5E0 24053873 */  addiu   $a1, $zero, 0x3873         ## $a1 = 00003873
/* 00894 80ADE5E4 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 00898 80ADE5E8 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 0089C 80ADE5EC 240538EC */  addiu   $a1, $zero, 0x38EC         ## $a1 = 000038EC
/* 008A0 80ADE5F0 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 008A4 80ADE5F4 3C0E80AE */  lui     $t6, %hi(func_80ADF77C)    ## $t6 = 80AE0000
/* 008A8 80ADE5F8 25CEF77C */  addiu   $t6, $t6, %lo(func_80ADF77C) ## $t6 = 80ADF77C
/* 008AC 80ADE5FC AC8E0190 */  sw      $t6, 0x0190($a0)           ## 00000190
/* 008B0 80ADE600 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 008B4 80ADE604 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 008B8 80ADE608 03E00008 */  jr      $ra                        
/* 008BC 80ADE60C 00000000 */  nop


