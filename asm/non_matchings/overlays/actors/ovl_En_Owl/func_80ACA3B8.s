glabel func_80ACA3B8
/* 00498 80ACA3B8 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 0049C 80ACA3BC AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 004A0 80ACA3C0 8CA21C44 */  lw      $v0, 0x1C44($a1)           ## 00001C44
/* 004A4 80ACA3C4 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 004A8 80ACA3C8 AFA60018 */  sw      $a2, 0x0018($sp)           
/* 004AC 80ACA3CC 24840024 */  addiu   $a0, $a0, 0x0024           ## $a0 = 00000024
/* 004B0 80ACA3D0 0C01E01A */  jal     Math_Vec3f_Yaw
              
/* 004B4 80ACA3D4 24450024 */  addiu   $a1, $v0, 0x0024           ## $a1 = 00000024
/* 004B8 80ACA3D8 8FA60018 */  lw      $a2, 0x0018($sp)           
/* 004BC 80ACA3DC A4C20032 */  sh      $v0, 0x0032($a2)           ## 00000032
/* 004C0 80ACA3E0 A4C200B6 */  sh      $v0, 0x00B6($a2)           ## 000000B6
/* 004C4 80ACA3E4 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 004C8 80ACA3E8 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 004CC 80ACA3EC 03E00008 */  jr      $ra                        
/* 004D0 80ACA3F0 00000000 */  nop


