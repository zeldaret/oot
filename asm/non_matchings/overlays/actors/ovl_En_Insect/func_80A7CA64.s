.late_rodata
glabel D_80A7E000
    .float 0.3

.text
glabel func_80A7CA64
/* 00C44 80A7CA64 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00C48 80A7CA68 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00C4C 80A7CA6C 240E00C8 */  addiu   $t6, $zero, 0x00C8         ## $t6 = 000000C8
/* 00C50 80A7CA70 A48E031A */  sh      $t6, 0x031A($a0)           ## 0000031A
/* 00C54 80A7CA74 3C053A83 */  lui     $a1, 0x3A83                ## $a1 = 3A830000
/* 00C58 80A7CA78 34A5126F */  ori     $a1, $a1, 0x126F           ## $a1 = 3A83126F
/* 00C5C 80A7CA7C 0C00B58B */  jal     Actor_SetScale
              
/* 00C60 80A7CA80 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00C64 80A7CA84 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 00C68 80A7CA88 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 00C6C 80A7CA8C AC800134 */  sw      $zero, 0x0134($a0)         ## 00000134
/* 00C70 80A7CA90 0C29EFD6 */  jal     func_80A7BF58              
/* 00C74 80A7CA94 E4840068 */  swc1    $f4, 0x0068($a0)           ## 00000068
/* 00C78 80A7CA98 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 00C7C 80A7CA9C 3C0180A8 */  lui     $at, %hi(D_80A7E000)       ## $at = 80A80000
/* 00C80 80A7CAA0 C426E000 */  lwc1    $f6, %lo(D_80A7E000)($at)  
/* 00C84 80A7CAA4 94980314 */  lhu     $t8, 0x0314($a0)           ## 00000314
/* 00C88 80A7CAA8 3C0F80A8 */  lui     $t7, %hi(func_80A7CAD0)    ## $t7 = 80A80000
/* 00C8C 80A7CAAC 25EFCAD0 */  addiu   $t7, $t7, %lo(func_80A7CAD0) ## $t7 = 80A7CAD0
/* 00C90 80A7CAB0 3319FEFF */  andi    $t9, $t8, 0xFEFF           ## $t9 = 00000000
/* 00C94 80A7CAB4 AC8F0310 */  sw      $t7, 0x0310($a0)           ## 00000310
/* 00C98 80A7CAB8 A4990314 */  sh      $t9, 0x0314($a0)           ## 00000314
/* 00C9C 80A7CABC E48601C8 */  swc1    $f6, 0x01C8($a0)           ## 000001C8
/* 00CA0 80A7CAC0 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00CA4 80A7CAC4 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00CA8 80A7CAC8 03E00008 */  jr      $ra                        
/* 00CAC 80A7CACC 00000000 */  nop
