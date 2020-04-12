.rdata
glabel D_80894010
    .asciz "(jya 大鏡)(arg_data 0x%04x)\n"
    .balign 4

.text
glabel BgJyaBigmirror_Init
/* 00488 80893B68 3C0E8089 */  lui     $t6, %hi(D_80893ED0)       ## $t6 = 80890000
/* 0048C 80893B6C 91CE3ED0 */  lbu     $t6, %lo(D_80893ED0)($t6)  
/* 00490 80893B70 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00494 80893B74 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00498 80893B78 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 0049C 80893B7C 11C00005 */  beq     $t6, $zero, .L80893B94     
/* 004A0 80893B80 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 004A4 80893B84 0C00B55C */  jal     Actor_Kill
              
/* 004A8 80893B88 00000000 */  nop
/* 004AC 80893B8C 10000019 */  beq     $zero, $zero, .L80893BF4   
/* 004B0 80893B90 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80893B94:
/* 004B4 80893B94 3C053DCC */  lui     $a1, 0x3DCC                ## $a1 = 3DCC0000
/* 004B8 80893B98 34A5CCCD */  ori     $a1, $a1, 0xCCCD           ## $a1 = 3DCCCCCD
/* 004BC 80893B9C 00C02025 */  or      $a0, $a2, $zero            ## $a0 = 00000000
/* 004C0 80893BA0 0C00B58B */  jal     Actor_SetScale
              
/* 004C4 80893BA4 AFA60018 */  sw      $a2, 0x0018($sp)           
/* 004C8 80893BA8 3C028089 */  lui     $v0, %hi(D_80893EF4)       ## $v0 = 80890000
/* 004CC 80893BAC 24423EF4 */  addiu   $v0, $v0, %lo(D_80893EF4)  ## $v0 = 80893EF4
/* 004D0 80893BB0 8FA60018 */  lw      $a2, 0x0018($sp)           
/* 004D4 80893BB4 844F0010 */  lh      $t7, 0x0010($v0)           ## 80893F04
/* 004D8 80893BB8 2403FFFF */  addiu   $v1, $zero, 0xFFFF         ## $v1 = FFFFFFFF
/* 004DC 80893BBC 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 004E0 80893BC0 A4CF0150 */  sh      $t7, 0x0150($a2)           ## 00000150
/* 004E4 80893BC4 84580024 */  lh      $t8, 0x0024($v0)           ## 80893F18
/* 004E8 80893BC8 3C018089 */  lui     $at, %hi(D_80893ED0)       ## $at = 80890000
/* 004EC 80893BCC A0C30003 */  sb      $v1, 0x0003($a2)           ## 00000003
/* 004F0 80893BD0 A4D80158 */  sh      $t8, 0x0158($a2)           ## 00000158
/* 004F4 80893BD4 A0273ED0 */  sb      $a3, %lo(D_80893ED0)($at)  
/* 004F8 80893BD8 3C048089 */  lui     $a0, %hi(D_80894010)       ## $a0 = 80890000
/* 004FC 80893BDC 24844010 */  addiu   $a0, $a0, %lo(D_80894010)  ## $a0 = 80894010
/* 00500 80893BE0 A0C7015D */  sb      $a3, 0x015D($a2)           ## 0000015D
/* 00504 80893BE4 ACC3016C */  sw      $v1, 0x016C($a2)           ## 0000016C
/* 00508 80893BE8 0C00084C */  jal     osSyncPrintf
              
/* 0050C 80893BEC 84C5001C */  lh      $a1, 0x001C($a2)           ## 0000001C
/* 00510 80893BF0 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80893BF4:
/* 00514 80893BF4 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00518 80893BF8 03E00008 */  jr      $ra                        
/* 0051C 80893BFC 00000000 */  nop
