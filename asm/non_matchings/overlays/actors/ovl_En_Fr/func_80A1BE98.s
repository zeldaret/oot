glabel func_80A1BE98
/* 014F8 80A1BE98 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 014FC 80A1BE9C AFA40018 */  sw      $a0, 0x0018($sp)           
/* 01500 80A1BEA0 00A03025 */  or      $a2, $a1, $zero            ## $a2 = 00000000
/* 01504 80A1BEA4 3C0580A2 */  lui     $a1, %hi(D_80A1D004)       ## $a1 = 80A20000
/* 01508 80A1BEA8 3C0480A2 */  lui     $a0, %hi(func_80A1B524)    ## $a0 = 80A20000
/* 0150C 80A1BEAC 3C0280A2 */  lui     $v0, %hi(D_80A1CFF0)       ## $v0 = 80A20000
/* 01510 80A1BEB0 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 01514 80A1BEB4 2442CFF0 */  addiu   $v0, $v0, %lo(D_80A1CFF0)  ## $v0 = 80A1CFF0
/* 01518 80A1BEB8 2484B524 */  addiu   $a0, $a0, %lo(func_80A1B524) ## $a0 = 80A1B524
/* 0151C 80A1BEBC 24A5D004 */  addiu   $a1, $a1, %lo(D_80A1D004)  ## $a1 = 80A1D004
/* 01520 80A1BEC0 8C430004 */  lw      $v1, 0x0004($v0)           ## 80A1CFF4
.L80A1BEC4:
/* 01524 80A1BEC4 24420004 */  addiu   $v0, $v0, 0x0004           ## $v0 = 80A1CFF4
/* 01528 80A1BEC8 5060000E */  beql    $v1, $zero, .L80A1BF04     
/* 0152C 80A1BECC 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 01530 80A1BED0 8C6E0354 */  lw      $t6, 0x0354($v1)           ## 00000354
/* 01534 80A1BED4 548E000B */  bnel    $a0, $t6, .L80A1BF04       
/* 01538 80A1BED8 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 0153C 80A1BEDC 5445FFF9 */  bnel    $v0, $a1, .L80A1BEC4       
/* 01540 80A1BEE0 8C430004 */  lw      $v1, 0x0004($v0)           ## 80A1CFF8
/* 01544 80A1BEE4 00C02025 */  or      $a0, $a2, $zero            ## $a0 = 00000000
/* 01548 80A1BEE8 0C042F56 */  jal     func_8010BD58              
/* 0154C 80A1BEEC 24050030 */  addiu   $a1, $zero, 0x0030         ## $a1 = 00000030
/* 01550 80A1BEF0 8FB80018 */  lw      $t8, 0x0018($sp)           
/* 01554 80A1BEF4 3C0F80A2 */  lui     $t7, %hi(func_80A1BF10)    ## $t7 = 80A20000
/* 01558 80A1BEF8 25EFBF10 */  addiu   $t7, $t7, %lo(func_80A1BF10) ## $t7 = 80A1BF10
/* 0155C 80A1BEFC AF0F0354 */  sw      $t7, 0x0354($t8)           ## 00000354
/* 01560 80A1BF00 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80A1BF04:
/* 01564 80A1BF04 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 01568 80A1BF08 03E00008 */  jr      $ra                        
/* 0156C 80A1BF0C 00000000 */  nop
