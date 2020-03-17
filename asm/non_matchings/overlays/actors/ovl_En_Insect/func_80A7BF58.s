glabel func_80A7BF58
/* 00138 80A7BF58 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 0013C 80A7BF5C 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 00140 80A7BF60 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 00144 80A7BF64 AFA40028 */  sw      $a0, 0x0028($sp)           
/* 00148 80A7BF68 3C050403 */  lui     $a1, 0x0403                ## $a1 = 04030000
/* 0014C 80A7BF6C 240E0001 */  addiu   $t6, $zero, 0x0001         ## $t6 = 00000001
/* 00150 80A7BF70 44070000 */  mfc1    $a3, $f0                   
/* 00154 80A7BF74 AFAE0014 */  sw      $t6, 0x0014($sp)           
/* 00158 80A7BF78 24A541FC */  addiu   $a1, $a1, 0x41FC           ## $a1 = 040341FC
/* 0015C 80A7BF7C 248401AC */  addiu   $a0, $a0, 0x01AC           ## $a0 = 000001AC
/* 00160 80A7BF80 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 00164 80A7BF84 E7A00010 */  swc1    $f0, 0x0010($sp)           
/* 00168 80A7BF88 0C029468 */  jal     SkelAnime_ChangeAnimation
              
/* 0016C 80A7BF8C E7A00018 */  swc1    $f0, 0x0018($sp)           
/* 00170 80A7BF90 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 00174 80A7BF94 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 00178 80A7BF98 03E00008 */  jr      $ra                        
/* 0017C 80A7BF9C 00000000 */  nop


