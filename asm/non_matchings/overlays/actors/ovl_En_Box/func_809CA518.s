.rdata
glabel D_809CA8B0
    .asciz "gfxp != NULL"
    .balign 4

glabel D_809CA8C0
    .asciz "../z_en_box.c"
    .balign 4

.text
glabel func_809CA518
/* 01758 809CA518 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 0175C 809CA51C AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 01760 809CA520 0C031A73 */  jal     Graph_Alloc
              
/* 01764 809CA524 24050010 */  addiu   $a1, $zero, 0x0010         ## $a1 = 00000010
/* 01768 809CA528 14400009 */  bne     $v0, $zero, .L809CA550     
/* 0176C 809CA52C 00401825 */  or      $v1, $v0, $zero            ## $v1 = 00000000
/* 01770 809CA530 3C04809D */  lui     $a0, %hi(D_809CA8B0)       ## $a0 = 809D0000
/* 01774 809CA534 3C05809D */  lui     $a1, %hi(D_809CA8C0)       ## $a1 = 809D0000
/* 01778 809CA538 24A5A8C0 */  addiu   $a1, $a1, %lo(D_809CA8C0)  ## $a1 = 809CA8C0
/* 0177C 809CA53C 2484A8B0 */  addiu   $a0, $a0, %lo(D_809CA8B0)  ## $a0 = 809CA8B0
/* 01780 809CA540 2406061C */  addiu   $a2, $zero, 0x061C         ## $a2 = 0000061C
/* 01784 809CA544 0C0007FC */  jal     __assert
              
/* 01788 809CA548 AFA20018 */  sw      $v0, 0x0018($sp)           
/* 0178C 809CA54C 8FA30018 */  lw      $v1, 0x0018($sp)           
.L809CA550:
/* 01790 809CA550 00601025 */  or      $v0, $v1, $zero            ## $v0 = 00000000
/* 01794 809CA554 3C0EE200 */  lui     $t6, 0xE200                ## $t6 = E2000000
/* 01798 809CA558 3C0FC811 */  lui     $t7, 0xC811                ## $t7 = C8110000
/* 0179C 809CA55C 35EF2078 */  ori     $t7, $t7, 0x2078           ## $t7 = C8112078
/* 017A0 809CA560 35CE001C */  ori     $t6, $t6, 0x001C           ## $t6 = E200001C
/* 017A4 809CA564 AC4E0000 */  sw      $t6, 0x0000($v0)           ## 00000000
/* 017A8 809CA568 AC4F0004 */  sw      $t7, 0x0004($v0)           ## 00000004
/* 017AC 809CA56C 3C18DF00 */  lui     $t8, 0xDF00                ## $t8 = DF000000
/* 017B0 809CA570 AC780008 */  sw      $t8, 0x0008($v1)           ## 00000008
/* 017B4 809CA574 AC60000C */  sw      $zero, 0x000C($v1)         ## 0000000C
/* 017B8 809CA578 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 017BC 809CA57C 00602025 */  or      $a0, $v1, $zero            ## $a0 = 00000000
/* 017C0 809CA580 24630008 */  addiu   $v1, $v1, 0x0008           ## $v1 = 00000008
/* 017C4 809CA584 00801025 */  or      $v0, $a0, $zero            ## $v0 = 00000000
/* 017C8 809CA588 03E00008 */  jr      $ra                        
/* 017CC 809CA58C 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
