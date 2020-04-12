.rdata
glabel D_80B2D0A8
    .asciz "../z_en_viewer.c"
    .balign 4

glabel D_80B2D0BC
    .asciz "../z_en_viewer.c"
    .balign 4

.text
glabel func_80B2B9A4
/* 017A4 80B2B9A4 27BDFFC8 */  addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
/* 017A8 80B2B9A8 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 017AC 80B2B9AC AFA40038 */  sw      $a0, 0x0038($sp)           
/* 017B0 80B2B9B0 AFA60040 */  sw      $a2, 0x0040($sp)           
/* 017B4 80B2B9B4 AFA70044 */  sw      $a3, 0x0044($sp)           
/* 017B8 80B2B9B8 848F00A4 */  lh      $t7, 0x00A4($a0)           ## 000000A4
/* 017BC 80B2B9BC 24010043 */  addiu   $at, $zero, 0x0043         ## $at = 00000043
/* 017C0 80B2B9C0 15E10019 */  bne     $t7, $at, .L80B2BA28       
/* 017C4 80B2B9C4 24010010 */  addiu   $at, $zero, 0x0010         ## $at = 00000010
/* 017C8 80B2B9C8 14A10017 */  bne     $a1, $at, .L80B2BA28       
/* 017CC 80B2B9CC 3C0680B3 */  lui     $a2, %hi(D_80B2D0A8)       ## $a2 = 80B30000
/* 017D0 80B2B9D0 8C850000 */  lw      $a1, 0x0000($a0)           ## 00000000
/* 017D4 80B2B9D4 27A40020 */  addiu   $a0, $sp, 0x0020           ## $a0 = FFFFFFE8
/* 017D8 80B2B9D8 24C6D0A8 */  addiu   $a2, $a2, %lo(D_80B2D0A8)  ## $a2 = 80B2D0A8
/* 017DC 80B2B9DC 24070620 */  addiu   $a3, $zero, 0x0620         ## $a3 = 00000620
/* 017E0 80B2B9E0 0C031AB1 */  jal     Graph_OpenDisps              
/* 017E4 80B2B9E4 AFA50030 */  sw      $a1, 0x0030($sp)           
/* 017E8 80B2B9E8 8FA80030 */  lw      $t0, 0x0030($sp)           
/* 017EC 80B2B9EC 3C090601 */  lui     $t1, 0x0601                ## $t1 = 06010000
/* 017F0 80B2B9F0 2529DE08 */  addiu   $t1, $t1, 0xDE08           ## $t1 = 0600DE08
/* 017F4 80B2B9F4 8D0302C0 */  lw      $v1, 0x02C0($t0)           ## 000002C0
/* 017F8 80B2B9F8 3C19DE00 */  lui     $t9, 0xDE00                ## $t9 = DE000000
/* 017FC 80B2B9FC 3C0680B3 */  lui     $a2, %hi(D_80B2D0BC)       ## $a2 = 80B30000
/* 01800 80B2BA00 24780008 */  addiu   $t8, $v1, 0x0008           ## $t8 = 00000008
/* 01804 80B2BA04 AD1802C0 */  sw      $t8, 0x02C0($t0)           ## 000002C0
/* 01808 80B2BA08 AC690004 */  sw      $t1, 0x0004($v1)           ## 00000004
/* 0180C 80B2BA0C AC790000 */  sw      $t9, 0x0000($v1)           ## 00000000
/* 01810 80B2BA10 8FAA0038 */  lw      $t2, 0x0038($sp)           
/* 01814 80B2BA14 24C6D0BC */  addiu   $a2, $a2, %lo(D_80B2D0BC)  ## $a2 = 80B2D0BC
/* 01818 80B2BA18 27A40020 */  addiu   $a0, $sp, 0x0020           ## $a0 = FFFFFFE8
/* 0181C 80B2BA1C 24070622 */  addiu   $a3, $zero, 0x0622         ## $a3 = 00000622
/* 01820 80B2BA20 0C031AD5 */  jal     Graph_CloseDisps              
/* 01824 80B2BA24 8D450000 */  lw      $a1, 0x0000($t2)           ## 00000000
.L80B2BA28:
/* 01828 80B2BA28 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 0182C 80B2BA2C 27BD0038 */  addiu   $sp, $sp, 0x0038           ## $sp = 00000000
/* 01830 80B2BA30 03E00008 */  jr      $ra                        
/* 01834 80B2BA34 00000000 */  nop
