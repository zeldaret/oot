glabel func_80A37670
/* 02360 80A37670 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 02364 80A37674 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 02368 80A37678 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 0236C 80A3767C 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 02370 80A37680 24A503CC */  addiu   $a1, $a1, 0x03CC           ## $a1 = 060003CC
/* 02374 80A37684 AFA60018 */  sw      $a2, 0x0018($sp)           
/* 02378 80A37688 0C02947A */  jal     SkelAnimeChangeAnimationDefaultStop              
/* 0237C 80A3768C 24840188 */  addiu   $a0, $a0, 0x0188           ## $a0 = 00000188
/* 02380 80A37690 8FA60018 */  lw      $a2, 0x0018($sp)           
/* 02384 80A37694 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 02388 80A37698 24180007 */  addiu   $t8, $zero, 0x0007         ## $t8 = 00000007
/* 0238C 80A3769C 90CE037C */  lbu     $t6, 0x037C($a2)           ## 0000037C
/* 02390 80A376A0 240539C6 */  addiu   $a1, $zero, 0x39C6         ## $a1 = 000039C6
/* 02394 80A376A4 ACD802EC */  sw      $t8, 0x02EC($a2)           ## 000002EC
/* 02398 80A376A8 31CFFFFB */  andi    $t7, $t6, 0xFFFB           ## $t7 = 00000000
/* 0239C 80A376AC A0CF037C */  sb      $t7, 0x037C($a2)           ## 0000037C
/* 023A0 80A376B0 A4C00312 */  sh      $zero, 0x0312($a2)         ## 00000312
/* 023A4 80A376B4 24C400E4 */  addiu   $a0, $a2, 0x00E4           ## $a0 = 000000E4
/* 023A8 80A376B8 0C03E291 */  jal     func_800F8A44              
/* 023AC 80A376BC E4C40068 */  swc1    $f4, 0x0068($a2)           ## 00000068
/* 023B0 80A376C0 3C0580A3 */  lui     $a1, %hi(func_80A376E0)    ## $a1 = 80A30000
/* 023B4 80A376C4 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 023B8 80A376C8 0C28D4C4 */  jal     func_80A35310              
/* 023BC 80A376CC 24A576E0 */  addiu   $a1, $a1, %lo(func_80A376E0) ## $a1 = 80A376E0
/* 023C0 80A376D0 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 023C4 80A376D4 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 023C8 80A376D8 03E00008 */  jr      $ra                        
/* 023CC 80A376DC 00000000 */  nop


