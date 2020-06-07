glabel func_8097A9E4
/* 020B4 8097A9E4 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 020B8 8097A9E8 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 020BC 8097A9EC AFA5001C */  sw      $a1, 0x001C($sp)           
/* 020C0 8097A9F0 0C00B638 */  jal     Actor_MoveForward
              
/* 020C4 8097A9F4 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 020C8 8097A9F8 3C028016 */  lui     $v0, %hi(gGameInfo)
/* 020CC 8097A9FC 2442FA90 */  addiu   $v0, %lo(gGameInfo)
/* 020D0 8097AA00 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 020D4 8097AA04 8C4F0000 */  lw      $t7, 0x0000($v0)           ## 8015FA90
/* 020D8 8097AA08 848E016C */  lh      $t6, 0x016C($a0)           ## 0000016C
/* 020DC 8097AA0C 85F814FA */  lh      $t8, 0x14FA($t7)           ## 000014FA
/* 020E0 8097AA10 8488016E */  lh      $t0, 0x016E($a0)           ## 0000016E
/* 020E4 8097AA14 01D8C821 */  addu    $t9, $t6, $t8              
/* 020E8 8097AA18 A499016C */  sh      $t9, 0x016C($a0)           ## 0000016C
/* 020EC 8097AA1C 8C490000 */  lw      $t1, 0x0000($v0)           ## 8015FA90
/* 020F0 8097AA20 848E0170 */  lh      $t6, 0x0170($a0)           ## 00000170
/* 020F4 8097AA24 852A14FC */  lh      $t2, 0x14FC($t1)           ## 000014FC
/* 020F8 8097AA28 254D03E8 */  addiu   $t5, $t2, 0x03E8           ## $t5 = 000003E8
/* 020FC 8097AA2C 010D7821 */  addu    $t7, $t0, $t5              
/* 02100 8097AA30 A48F016E */  sh      $t7, 0x016E($a0)           ## 0000016E
/* 02104 8097AA34 8C580000 */  lw      $t8, 0x0000($v0)           ## 8015FA90
/* 02108 8097AA38 871914FE */  lh      $t9, 0x14FE($t8)           ## 000014FE
/* 0210C 8097AA3C 272B0BB8 */  addiu   $t3, $t9, 0x0BB8           ## $t3 = 00000BB8
/* 02110 8097AA40 01CB6021 */  addu    $t4, $t6, $t3              
/* 02114 8097AA44 A48C0170 */  sh      $t4, 0x0170($a0)           ## 00000170
/* 02118 8097AA48 0C25E48F */  jal     func_8097923C              
/* 0211C 8097AA4C 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 02120 8097AA50 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 02124 8097AA54 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 02128 8097AA58 03E00008 */  jr      $ra                        
/* 0212C 8097AA5C 00000000 */  nop
