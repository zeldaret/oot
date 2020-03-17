glabel func_80ADE950
/* 00C00 80ADE950 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00C04 80ADE954 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00C08 80ADE958 10A00007 */  beq     $a1, $zero, .L80ADE978     
/* 00C0C 80ADE95C AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00C10 80ADE960 248400E4 */  addiu   $a0, $a0, 0x00E4           ## $a0 = 000000E4
/* 00C14 80ADE964 0C03E291 */  jal     func_800F8A44              
/* 00C18 80ADE968 240531E8 */  addiu   $a1, $zero, 0x31E8         ## $a1 = 000031E8
/* 00C1C 80ADE96C 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 00C20 80ADE970 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 00C24 80ADE974 240538EC */  addiu   $a1, $zero, 0x38EC         ## $a1 = 000038EC
.L80ADE978:
/* 00C28 80ADE978 8FAF0018 */  lw      $t7, 0x0018($sp)           
/* 00C2C 80ADE97C 3C0E80AE */  lui     $t6, %hi(func_80AE009C)    ## $t6 = 80AE0000
/* 00C30 80ADE980 25CE009C */  addiu   $t6, $t6, %lo(func_80AE009C) ## $t6 = 80AE009C
/* 00C34 80ADE984 ADEE0190 */  sw      $t6, 0x0190($t7)           ## 00000190
/* 00C38 80ADE988 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00C3C 80ADE98C 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00C40 80ADE990 03E00008 */  jr      $ra                        
/* 00C44 80ADE994 00000000 */  nop


