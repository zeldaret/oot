glabel func_80AF2E84
/* 00934 80AF2E84 27BDFFC8 */  addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
/* 00938 80AF2E88 00A03025 */  or      $a2, $a1, $zero            ## $a2 = 00000000
/* 0093C 80AF2E8C 00802825 */  or      $a1, $a0, $zero            ## $a1 = 00000000
/* 00940 80AF2E90 AFBF0034 */  sw      $ra, 0x0034($sp)           
/* 00944 80AF2E94 AFA40038 */  sw      $a0, 0x0038($sp)           
/* 00948 80AF2E98 C4A40024 */  lwc1    $f4, 0x0024($a1)           ## 00000024
/* 0094C 80AF2E9C 3C0E8016 */  lui     $t6, 0x8016                ## $t6 = 80160000
/* 00950 80AF2EA0 8DCEFA90 */  lw      $t6, -0x0570($t6)          ## 8015FA90
/* 00954 80AF2EA4 E7A40010 */  swc1    $f4, 0x0010($sp)           
/* 00958 80AF2EA8 3C0141C0 */  lui     $at, 0x41C0                ## $at = 41C00000
/* 0095C 80AF2EAC 85CF147A */  lh      $t7, 0x147A($t6)           ## 8016147A
/* 00960 80AF2EB0 44815000 */  mtc1    $at, $f10                  ## $f10 = 24.00
/* 00964 80AF2EB4 C4B20028 */  lwc1    $f18, 0x0028($a1)          ## 00000028
/* 00968 80AF2EB8 448F3000 */  mtc1    $t7, $f6                   ## $f6 = 0.00
/* 0096C 80AF2EBC 24180008 */  addiu   $t8, $zero, 0x0008         ## $t8 = 00000008
/* 00970 80AF2EC0 24C41C24 */  addiu   $a0, $a2, 0x1C24           ## $a0 = 00001C24
/* 00974 80AF2EC4 46803220 */  cvt.s.w $f8, $f6                   
/* 00978 80AF2EC8 240700F5 */  addiu   $a3, $zero, 0x00F5         ## $a3 = 000000F5
/* 0097C 80AF2ECC 460A4400 */  add.s   $f16, $f8, $f10            
/* 00980 80AF2ED0 46128100 */  add.s   $f4, $f16, $f18            
/* 00984 80AF2ED4 E7A40014 */  swc1    $f4, 0x0014($sp)           
/* 00988 80AF2ED8 C4A6002C */  lwc1    $f6, 0x002C($a1)           ## 0000002C
/* 0098C 80AF2EDC AFB80028 */  sw      $t8, 0x0028($sp)           
/* 00990 80AF2EE0 AFA00024 */  sw      $zero, 0x0024($sp)         
/* 00994 80AF2EE4 AFA00020 */  sw      $zero, 0x0020($sp)         
/* 00998 80AF2EE8 AFA0001C */  sw      $zero, 0x001C($sp)         
/* 0099C 80AF2EEC 0C00C916 */  jal     Actor_SpawnAttached
              
/* 009A0 80AF2EF0 E7A60018 */  swc1    $f6, 0x0018($sp)           
/* 009A4 80AF2EF4 8FBF0034 */  lw      $ra, 0x0034($sp)           
/* 009A8 80AF2EF8 27BD0038 */  addiu   $sp, $sp, 0x0038           ## $sp = 00000000
/* 009AC 80AF2EFC 03E00008 */  jr      $ra                        
/* 009B0 80AF2F00 00000000 */  nop


