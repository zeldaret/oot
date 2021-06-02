glabel func_809E645C
/* 00C8C 809E645C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00C90 809E6460 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 00C94 809E6464 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00C98 809E6468 3C053CF5 */  lui     $a1, 0x3CF5                ## $a1 = 3CF50000
/* 00C9C 809E646C 34A5C28F */  ori     $a1, $a1, 0xC28F           ## $a1 = 3CF5C28F
/* 00CA0 809E6470 0C00B58B */  jal     Actor_SetScale
              
/* 00CA4 809E6474 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00CA8 809E6478 8FA60018 */  lw      $a2, 0x0018($sp)           
/* 00CAC 809E647C 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 00CB0 809E6480 3C01447A */  lui     $at, 0x447A                ## $at = 447A0000
/* 00CB4 809E6484 44812000 */  mtc1    $at, $f4                   ## $f4 = 1000.00
/* 00CB8 809E6488 84CE00B4 */  lh      $t6, 0x00B4($a2)           ## 000000B4
/* 00CBC 809E648C 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 00CC0 809E6490 3C014040 */  lui     $at, 0x4040                ## $at = 40400000
/* 00CC4 809E6494 44813000 */  mtc1    $at, $f6                   ## $f6 = 3.00
/* 00CC8 809E6498 25CFC000 */  addiu   $t7, $t6, 0xC000           ## $t7 = FFFFC000
/* 00CCC 809E649C 24070008 */  addiu   $a3, $zero, 0x0008         ## $a3 = 00000008
/* 00CD0 809E64A0 A4CF00B4 */  sh      $t7, 0x00B4($a2)           ## 000000B4
/* 00CD4 809E64A4 24851C24 */  addiu   $a1, $a0, 0x1C24           ## $a1 = 00001C24
/* 00CD8 809E64A8 E4C400BC */  swc1    $f4, 0x00BC($a2)           ## 000000BC
/* 00CDC 809E64AC E4C0006C */  swc1    $f0, 0x006C($a2)           ## 0000006C
/* 00CE0 809E64B0 E4C00060 */  swc1    $f0, 0x0060($a2)           ## 00000060
/* 00CE4 809E64B4 0C00CDD2 */  jal     Actor_ChangeCategory
              
/* 00CE8 809E64B8 E4C600C4 */  swc1    $f6, 0x00C4($a2)           ## 000000C4
/* 00CEC 809E64BC 8FA60018 */  lw      $a2, 0x0018($sp)           
/* 00CF0 809E64C0 2401FFDF */  addiu   $at, $zero, 0xFFDF         ## $at = FFFFFFDF
/* 00CF4 809E64C4 3C09809F */  lui     $t1, %hi(func_809E80D8)    ## $t1 = 809F0000
/* 00CF8 809E64C8 8CD80004 */  lw      $t8, 0x0004($a2)           ## 00000004
/* 00CFC 809E64CC 240800C8 */  addiu   $t0, $zero, 0x00C8         ## $t0 = 000000C8
/* 00D00 809E64D0 252980D8 */  addiu   $t1, $t1, %lo(func_809E80D8) ## $t1 = 809E80D8
/* 00D04 809E64D4 0301C824 */  and     $t9, $t8, $at              
/* 00D08 809E64D8 ACD90004 */  sw      $t9, 0x0004($a2)           ## 00000004
/* 00D0C 809E64DC A4C801C6 */  sh      $t0, 0x01C6($a2)           ## 000001C6
/* 00D10 809E64E0 ACC901C0 */  sw      $t1, 0x01C0($a2)           ## 000001C0
/* 00D14 809E64E4 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00D18 809E64E8 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00D1C 809E64EC 03E00008 */  jr      $ra                        
/* 00D20 809E64F0 00000000 */  nop
