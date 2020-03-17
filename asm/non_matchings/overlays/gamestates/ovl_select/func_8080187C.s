glabel func_8080187C
/* 00CEC 8080187C 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 00CF0 80801880 AFA40020 */  sw      $a0, 0x0020($sp)           
/* 00CF4 80801884 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00CF8 80801888 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 00CFC 8080188C AFA60028 */  sw      $a2, 0x0028($sp)           
/* 00D00 80801890 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 00D04 80801894 24050004 */  addiu   $a1, $zero, 0x0004         ## $a1 = 00000004
/* 00D08 80801898 0C03ED07 */  jal     GfxPrint_SetPos              
/* 00D0C 8080189C 2406001A */  addiu   $a2, $zero, 0x001A         ## $a2 = 0000001A
/* 00D10 808018A0 240E00FF */  addiu   $t6, $zero, 0x00FF         ## $t6 = 000000FF
/* 00D14 808018A4 AFAE0010 */  sw      $t6, 0x0010($sp)           
/* 00D18 808018A8 8FA40024 */  lw      $a0, 0x0024($sp)           
/* 00D1C 808018AC 240500FF */  addiu   $a1, $zero, 0x00FF         ## $a1 = 000000FF
/* 00D20 808018B0 240600FF */  addiu   $a2, $zero, 0x00FF         ## $a2 = 000000FF
/* 00D24 808018B4 0C03ECEB */  jal     GfxPrint_SetColor              
/* 00D28 808018B8 24070037 */  addiu   $a3, $zero, 0x0037         ## $a3 = 00000037
/* 00D2C 808018BC 8FAF0028 */  lw      $t7, 0x0028($sp)           
/* 00D30 808018C0 3C068080 */  lui     $a2, %hi(D_808025D8)       ## $a2 = 80800000
/* 00D34 808018C4 3C058080 */  lui     $a1, %hi(D_80803470)       ## $a1 = 80800000
/* 00D38 808018C8 000FC080 */  sll     $t8, $t7,  2               
/* 00D3C 808018CC 00D83021 */  addu    $a2, $a2, $t8              
/* 00D40 808018D0 8CC625D8 */  lw      $a2, %lo(D_808025D8)($a2)  
/* 00D44 808018D4 24A53470 */  addiu   $a1, $a1, %lo(D_80803470)  ## $a1 = 80803470
/* 00D48 808018D8 0C03EF2D */  jal     GfxPrint_Printf              
/* 00D4C 808018DC 8FA40024 */  lw      $a0, 0x0024($sp)           
/* 00D50 808018E0 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00D54 808018E4 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 00D58 808018E8 03E00008 */  jr      $ra                        
/* 00D5C 808018EC 00000000 */  nop


