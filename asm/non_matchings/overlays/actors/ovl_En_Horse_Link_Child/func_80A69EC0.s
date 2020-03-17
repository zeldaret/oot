glabel func_80A69EC0
/* 00AF0 80A69EC0 27BDFFC8 */  addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
/* 00AF4 80A69EC4 AFBF002C */  sw      $ra, 0x002C($sp)           
/* 00AF8 80A69EC8 AFB00028 */  sw      $s0, 0x0028($sp)           
/* 00AFC 80A69ECC 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 00B00 80A69ED0 240E0003 */  addiu   $t6, $zero, 0x0003         ## $t6 = 00000003
/* 00B04 80A69ED4 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00B08 80A69ED8 AC8E014C */  sw      $t6, 0x014C($a0)           ## 0000014C
/* 00B0C 80A69EDC AC800150 */  sw      $zero, 0x0150($a0)         ## 00000150
/* 00B10 80A69EE0 0C29A569 */  jal     func_80A695A4              
/* 00B14 80A69EE4 E4840068 */  swc1    $f4, 0x0068($a0)           ## 00000068
/* 00B18 80A69EE8 E7A00030 */  swc1    $f0, 0x0030($sp)           
/* 00B1C 80A69EEC 8E0F0150 */  lw      $t7, 0x0150($s0)           ## 00000150
/* 00B20 80A69EF0 3C0480A7 */  lui     $a0, %hi(D_80A6AEE0)       ## $a0 = 80A70000
/* 00B24 80A69EF4 000FC080 */  sll     $t8, $t7,  2               
/* 00B28 80A69EF8 00982021 */  addu    $a0, $a0, $t8              
/* 00B2C 80A69EFC 0C028800 */  jal     SkelAnime_GetFrameCount
              
/* 00B30 80A69F00 8C84AEE0 */  lw      $a0, %lo(D_80A6AEE0)($a0)  
/* 00B34 80A69F04 44823000 */  mtc1    $v0, $f6                   ## $f6 = 0.00
/* 00B38 80A69F08 8E190150 */  lw      $t9, 0x0150($s0)           ## 00000150
/* 00B3C 80A69F0C 3C01C0A0 */  lui     $at, 0xC0A0                ## $at = C0A00000
/* 00B40 80A69F10 46803220 */  cvt.s.w $f8, $f6                   
/* 00B44 80A69F14 44815000 */  mtc1    $at, $f10                  ## $f10 = -5.00
/* 00B48 80A69F18 3C0580A7 */  lui     $a1, %hi(D_80A6AEE0)       ## $a1 = 80A70000
/* 00B4C 80A69F1C 00194080 */  sll     $t0, $t9,  2               
/* 00B50 80A69F20 00A82821 */  addu    $a1, $a1, $t0              
/* 00B54 80A69F24 24090002 */  addiu   $t1, $zero, 0x0002         ## $t1 = 00000002
/* 00B58 80A69F28 AFA90014 */  sw      $t1, 0x0014($sp)           
/* 00B5C 80A69F2C 8CA5AEE0 */  lw      $a1, %lo(D_80A6AEE0)($a1)  
/* 00B60 80A69F30 E7A80010 */  swc1    $f8, 0x0010($sp)           
/* 00B64 80A69F34 260401A0 */  addiu   $a0, $s0, 0x01A0           ## $a0 = 000001A0
/* 00B68 80A69F38 8FA60030 */  lw      $a2, 0x0030($sp)           
/* 00B6C 80A69F3C 24070000 */  addiu   $a3, $zero, 0x0000         ## $a3 = 00000000
/* 00B70 80A69F40 0C029468 */  jal     SkelAnime_ChangeAnimation
              
/* 00B74 80A69F44 E7AA0018 */  swc1    $f10, 0x0018($sp)          
/* 00B78 80A69F48 8FBF002C */  lw      $ra, 0x002C($sp)           
/* 00B7C 80A69F4C 8FB00028 */  lw      $s0, 0x0028($sp)           
/* 00B80 80A69F50 27BD0038 */  addiu   $sp, $sp, 0x0038           ## $sp = 00000000
/* 00B84 80A69F54 03E00008 */  jr      $ra                        
/* 00B88 80A69F58 00000000 */  nop


