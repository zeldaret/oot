.late_rodata
glabel D_80A4E098
 .word 0xBF5C28F6
glabel D_80A4E09C
    .float 0.15

.text
glabel func_80A4D8CC
/* 01C2C 80A4D8CC 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 01C30 80A4D8D0 3C0E80A5 */  lui     $t6, %hi(func_80A4D944)    ## $t6 = 80A50000
/* 01C34 80A4D8D4 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 01C38 80A4D8D8 25CED944 */  addiu   $t6, $t6, %lo(func_80A4D944) ## $t6 = 80A4D944
/* 01C3C 80A4D8DC AC8E014C */  sw      $t6, 0x014C($a0)           ## 0000014C
/* 01C40 80A4D8E0 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 01C44 80A4D8E4 0C292F5C */  jal     func_80A4BD70              
/* 01C48 80A4D8E8 24050002 */  addiu   $a1, $zero, 0x0002         ## $a1 = 00000002
/* 01C4C 80A4D8EC 3C0180A5 */  lui     $at, %hi(D_80A4E098)       ## $at = 80A50000
/* 01C50 80A4D8F0 C424E098 */  lwc1    $f4, %lo(D_80A4E098)($at)  
/* 01C54 80A4D8F4 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 01C58 80A4D8F8 3C01C170 */  lui     $at, 0xC170                ## $at = C1700000
/* 01C5C 80A4D8FC 44813000 */  mtc1    $at, $f6                   ## $f6 = -15.00
/* 01C60 80A4D900 3C0180A5 */  lui     $at, %hi(D_80A4E09C)       ## $at = 80A50000
/* 01C64 80A4D904 E484006C */  swc1    $f4, 0x006C($a0)           ## 0000006C
/* 01C68 80A4D908 E4860070 */  swc1    $f6, 0x0070($a0)           ## 00000070
/* 01C6C 80A4D90C C42AE09C */  lwc1    $f10, %lo(D_80A4E09C)($at) 
/* 01C70 80A4D910 C4880068 */  lwc1    $f8, 0x0068($a0)           ## 00000068
/* 01C74 80A4D914 3C0140A0 */  lui     $at, 0x40A0                ## $at = 40A00000
/* 01C78 80A4D918 44819000 */  mtc1    $at, $f18                  ## $f18 = 5.00
/* 01C7C 80A4D91C 460A4402 */  mul.s   $f16, $f8, $f10            
/* 01C80 80A4D920 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 01C84 80A4D924 44812000 */  mtc1    $at, $f4                   ## $f4 = 1.00
/* 01C88 80A4D928 E4920060 */  swc1    $f18, 0x0060($a0)          ## 00000060
/* 01C8C 80A4D92C E48401C0 */  swc1    $f4, 0x01C0($a0)           ## 000001C0
/* 01C90 80A4D930 E4900068 */  swc1    $f16, 0x0068($a0)          ## 00000068
/* 01C94 80A4D934 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 01C98 80A4D938 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 01C9C 80A4D93C 03E00008 */  jr      $ra                        
/* 01CA0 80A4D940 00000000 */  nop
