glabel func_80AEF4A8
/* 04898 80AEF4A8 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 0489C 80AEF4AC AFA40018 */  sw      $a0, 0x0018($sp)           
/* 048A0 80AEF4B0 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 048A4 80AEF4B4 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 048A8 80AEF4B8 8FA50018 */  lw      $a1, 0x0018($sp)           
/* 048AC 80AEF4BC AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 048B0 80AEF4C0 24060014 */  addiu   $a2, $zero, 0x0014         ## $a2 = 00000014
/* 048B4 80AEF4C4 24076862 */  addiu   $a3, $zero, 0x6862         ## $a3 = 00006862
/* 048B8 80AEF4C8 0C01AEB6 */  jal     Audio_PlaySoundAtPosition
              
/* 048BC 80AEF4CC 24A500E4 */  addiu   $a1, $a1, 0x00E4           ## $a1 = 000000E4
/* 048C0 80AEF4D0 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 048C4 80AEF4D4 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 048C8 80AEF4D8 03E00008 */  jr      $ra                        
/* 048CC 80AEF4DC 00000000 */  nop
