glabel func_809E63EC
/* 00C1C 809E63EC 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 00C20 809E63F0 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00C24 809E63F4 240EA000 */  addiu   $t6, $zero, 0xA000         ## $t6 = FFFFA000
/* 00C28 809E63F8 240FB000 */  addiu   $t7, $zero, 0xB000         ## $t7 = FFFFB000
/* 00C2C 809E63FC 2418B800 */  addiu   $t8, $zero, 0xB800         ## $t8 = FFFFB800
/* 00C30 809E6400 A48E01C8 */  sh      $t6, 0x01C8($a0)           ## 000001C8
/* 00C34 809E6404 A48F01CE */  sh      $t7, 0x01CE($a0)           ## 000001CE
/* 00C38 809E6408 A49801CC */  sh      $t8, 0x01CC($a0)           ## 000001CC
/* 00C3C 809E640C 0C27968E */  jal     func_809E5A38              
/* 00C40 809E6410 AFA40020 */  sw      $a0, 0x0020($sp)           
/* 00C44 809E6414 24190023 */  addiu   $t9, $zero, 0x0023         ## $t9 = 00000023
/* 00C48 809E6418 8FA40020 */  lw      $a0, 0x0020($sp)           
/* 00C4C 809E641C AFB90010 */  sw      $t9, 0x0010($sp)           
/* 00C50 809E6420 24054000 */  addiu   $a1, $zero, 0x4000         ## $a1 = 00004000
/* 00C54 809E6424 240600FF */  addiu   $a2, $zero, 0x00FF         ## $a2 = 000000FF
/* 00C58 809E6428 0C00D09B */  jal     Actor_SetColorFilter              
/* 00C5C 809E642C 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 00C60 809E6430 8FA40020 */  lw      $a0, 0x0020($sp)           
/* 00C64 809E6434 3C0A809E */  lui     $t2, %hi(func_809E7A88)    ## $t2 = 809E0000
/* 00C68 809E6438 254A7A88 */  addiu   $t2, $t2, %lo(func_809E7A88) ## $t2 = 809E7A88
/* 00C6C 809E643C 90880249 */  lbu     $t0, 0x0249($a0)           ## 00000249
/* 00C70 809E6440 AC8A01C0 */  sw      $t2, 0x01C0($a0)           ## 000001C0
/* 00C74 809E6444 3109FFFE */  andi    $t1, $t0, 0xFFFE           ## $t1 = 00000000
/* 00C78 809E6448 A0890249 */  sb      $t1, 0x0249($a0)           ## 00000249
/* 00C7C 809E644C 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00C80 809E6450 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 00C84 809E6454 03E00008 */  jr      $ra                        
/* 00C88 809E6458 00000000 */  nop
