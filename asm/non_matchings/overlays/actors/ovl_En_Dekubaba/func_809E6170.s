.late_rodata
glabel D_809E918C
    .float -0.8
    .balign 4

.text
glabel func_809E6170
/* 009A0 809E6170 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 009A4 809E6174 A48001C6 */  sh      $zero, 0x01C6($a0)         ## 000001C6
/* 009A8 809E6178 3C01809F */  lui     $at, %hi(D_809E918C)       ## $at = 809F0000
/* 009AC 809E617C E4840198 */  swc1    $f4, 0x0198($a0)           ## 00000198
/* 009B0 809E6180 C426918C */  lwc1    $f6, %lo(D_809E918C)($at)  
/* 009B4 809E6184 848E00B6 */  lh      $t6, 0x00B6($a0)           ## 000000B6
/* 009B8 809E6188 3C014080 */  lui     $at, 0x4080                ## $at = 40800000
/* 009BC 809E618C 44814000 */  mtc1    $at, $f8                   ## $f8 = 4.00
/* 009C0 809E6190 34018000 */  ori     $at, $zero, 0x8000         ## $at = 00008000
/* 009C4 809E6194 01C17821 */  addu    $t7, $t6, $at              
/* 009C8 809E6198 3C014040 */  lui     $at, 0x4040                ## $at = 40400000
/* 009CC 809E619C 44818000 */  mtc1    $at, $f16                  ## $f16 = 3.00
/* 009D0 809E61A0 C48A0230 */  lwc1    $f10, 0x0230($a0)          ## 00000230
/* 009D4 809E61A4 90980249 */  lbu     $t8, 0x0249($a0)           ## 00000249
/* 009D8 809E61A8 8C880004 */  lw      $t0, 0x0004($a0)           ## 00000004
/* 009DC 809E61AC 46105482 */  mul.s   $f18, $f10, $f16           
/* 009E0 809E61B0 3C0A809E */  lui     $t2, %hi(func_809E7BB0)    ## $t2 = 809E0000
/* 009E4 809E61B4 254A7BB0 */  addiu   $t2, $t2, %lo(func_809E7BB0) ## $t2 = 809E7BB0
/* 009E8 809E61B8 3319FFFE */  andi    $t9, $t8, 0xFFFE           ## $t9 = 00000000
/* 009EC 809E61BC 35090030 */  ori     $t1, $t0, 0x0030           ## $t1 = 00000030
/* 009F0 809E61C0 A48F0032 */  sh      $t7, 0x0032($a0)           ## 00000032
/* 009F4 809E61C4 A0990249 */  sb      $t9, 0x0249($a0)           ## 00000249
/* 009F8 809E61C8 E4920068 */  swc1    $f18, 0x0068($a0)          ## 00000068
/* 009FC 809E61CC AC890004 */  sw      $t1, 0x0004($a0)           ## 00000004
/* 00A00 809E61D0 AC8A01C0 */  sw      $t2, 0x01C0($a0)           ## 000001C0
/* 00A04 809E61D4 E486006C */  swc1    $f6, 0x006C($a0)           ## 0000006C
/* 00A08 809E61D8 03E00008 */  jr      $ra                        
/* 00A0C 809E61DC E4880060 */  swc1    $f8, 0x0060($a0)           ## 00000060


