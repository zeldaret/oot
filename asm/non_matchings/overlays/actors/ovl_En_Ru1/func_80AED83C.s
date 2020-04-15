glabel func_80AED83C
/* 02C2C 80AED83C 27BDFFC8 */  addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
/* 02C30 80AED840 AFA40038 */  sw      $a0, 0x0038($sp)           
/* 02C34 80AED844 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 02C38 80AED848 2484037C */  addiu   $a0, $a0, 0x037C           ## $a0 = 0000037C
/* 02C3C 80AED84C 240E0064 */  addiu   $t6, $zero, 0x0064         ## $t6 = 00000064
/* 02C40 80AED850 AFAE0010 */  sw      $t6, 0x0010($sp)           
/* 02C44 80AED854 AFA40024 */  sw      $a0, 0x0024($sp)           
/* 02C48 80AED858 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 02C4C 80AED85C 24060014 */  addiu   $a2, $zero, 0x0014         ## $a2 = 00000014
/* 02C50 80AED860 0C01E1A7 */  jal     Math_SmoothScaleMaxMinS
              
/* 02C54 80AED864 24071838 */  addiu   $a3, $zero, 0x1838         ## $a3 = 00001838
/* 02C58 80AED868 8FA40024 */  lw      $a0, 0x0024($sp)           
/* 02C5C 80AED86C 240F0064 */  addiu   $t7, $zero, 0x0064         ## $t7 = 00000064
/* 02C60 80AED870 AFAF0010 */  sw      $t7, 0x0010($sp)           
/* 02C64 80AED874 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 02C68 80AED878 24060014 */  addiu   $a2, $zero, 0x0014         ## $a2 = 00000014
/* 02C6C 80AED87C 24071838 */  addiu   $a3, $zero, 0x1838         ## $a3 = 00001838
/* 02C70 80AED880 0C01E1A7 */  jal     Math_SmoothScaleMaxMinS
              
/* 02C74 80AED884 24840002 */  addiu   $a0, $a0, 0x0002           ## $a0 = 00000002
/* 02C78 80AED888 8FA40038 */  lw      $a0, 0x0038($sp)           
/* 02C7C 80AED88C 24180064 */  addiu   $t8, $zero, 0x0064         ## $t8 = 00000064
/* 02C80 80AED890 AFB80010 */  sw      $t8, 0x0010($sp)           
/* 02C84 80AED894 24840382 */  addiu   $a0, $a0, 0x0382           ## $a0 = 00000382
/* 02C88 80AED898 AFA40024 */  sw      $a0, 0x0024($sp)           
/* 02C8C 80AED89C 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 02C90 80AED8A0 24060014 */  addiu   $a2, $zero, 0x0014         ## $a2 = 00000014
/* 02C94 80AED8A4 0C01E1A7 */  jal     Math_SmoothScaleMaxMinS
              
/* 02C98 80AED8A8 24071838 */  addiu   $a3, $zero, 0x1838         ## $a3 = 00001838
/* 02C9C 80AED8AC 8FA40024 */  lw      $a0, 0x0024($sp)           
/* 02CA0 80AED8B0 24190064 */  addiu   $t9, $zero, 0x0064         ## $t9 = 00000064
/* 02CA4 80AED8B4 AFB90010 */  sw      $t9, 0x0010($sp)           
/* 02CA8 80AED8B8 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 02CAC 80AED8BC 24060014 */  addiu   $a2, $zero, 0x0014         ## $a2 = 00000014
/* 02CB0 80AED8C0 24071838 */  addiu   $a3, $zero, 0x1838         ## $a3 = 00001838
/* 02CB4 80AED8C4 0C01E1A7 */  jal     Math_SmoothScaleMaxMinS
              
/* 02CB8 80AED8C8 24840002 */  addiu   $a0, $a0, 0x0002           ## $a0 = 00000002
/* 02CBC 80AED8CC 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 02CC0 80AED8D0 27BD0038 */  addiu   $sp, $sp, 0x0038           ## $sp = 00000000
/* 02CC4 80AED8D4 03E00008 */  jr      $ra                        
/* 02CC8 80AED8D8 00000000 */  nop
