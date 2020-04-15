.rdata
glabel D_809CA890
    .asciz "gfxp != NULL"
    .balign 4

glabel D_809CA8A0
    .asciz "../z_en_box.c"
    .balign 4

.text
glabel func_809CA4A0
/* 016E0 809CA4A0 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 016E4 809CA4A4 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 016E8 809CA4A8 0C031A73 */  jal     Graph_Alloc
              
/* 016EC 809CA4AC 24050010 */  addiu   $a1, $zero, 0x0010         ## $a1 = 00000010
/* 016F0 809CA4B0 14400009 */  bne     $v0, $zero, .L809CA4D8     
/* 016F4 809CA4B4 00401825 */  or      $v1, $v0, $zero            ## $v1 = 00000000
/* 016F8 809CA4B8 3C04809D */  lui     $a0, %hi(D_809CA890)       ## $a0 = 809D0000
/* 016FC 809CA4BC 3C05809D */  lui     $a1, %hi(D_809CA8A0)       ## $a1 = 809D0000
/* 01700 809CA4C0 24A5A8A0 */  addiu   $a1, $a1, %lo(D_809CA8A0)  ## $a1 = 809CA8A0
/* 01704 809CA4C4 2484A890 */  addiu   $a0, $a0, %lo(D_809CA890)  ## $a0 = 809CA890
/* 01708 809CA4C8 2406060A */  addiu   $a2, $zero, 0x060A         ## $a2 = 0000060A
/* 0170C 809CA4CC 0C0007FC */  jal     __assert
              
/* 01710 809CA4D0 AFA20018 */  sw      $v0, 0x0018($sp)           
/* 01714 809CA4D4 8FA30018 */  lw      $v1, 0x0018($sp)           
.L809CA4D8:
/* 01718 809CA4D8 00601025 */  or      $v0, $v1, $zero            ## $v0 = 00000000
/* 0171C 809CA4DC 3C0EE200 */  lui     $t6, 0xE200                ## $t6 = E2000000
/* 01720 809CA4E0 3C0FC810 */  lui     $t7, 0xC810                ## $t7 = C8100000
/* 01724 809CA4E4 35EF49F8 */  ori     $t7, $t7, 0x49F8           ## $t7 = C81049F8
/* 01728 809CA4E8 35CE001C */  ori     $t6, $t6, 0x001C           ## $t6 = E200001C
/* 0172C 809CA4EC AC4E0000 */  sw      $t6, 0x0000($v0)           ## 00000000
/* 01730 809CA4F0 AC4F0004 */  sw      $t7, 0x0004($v0)           ## 00000004
/* 01734 809CA4F4 3C18DF00 */  lui     $t8, 0xDF00                ## $t8 = DF000000
/* 01738 809CA4F8 AC780008 */  sw      $t8, 0x0008($v1)           ## 00000008
/* 0173C 809CA4FC AC60000C */  sw      $zero, 0x000C($v1)         ## 0000000C
/* 01740 809CA500 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 01744 809CA504 00602025 */  or      $a0, $v1, $zero            ## $a0 = 00000000
/* 01748 809CA508 24630008 */  addiu   $v1, $v1, 0x0008           ## $v1 = 00000008
/* 0174C 809CA50C 00801025 */  or      $v0, $a0, $zero            ## $v0 = 00000000
/* 01750 809CA510 03E00008 */  jr      $ra                        
/* 01754 809CA514 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
