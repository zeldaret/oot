glabel func_8087EDC0
/* 008E0 8087EDC0 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 008E4 8087EDC4 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 008E8 8087EDC8 808E0151 */  lb      $t6, 0x0151($a0)           ## 00000151
/* 008EC 8087EDCC 00A03025 */  or      $a2, $a1, $zero            ## $a2 = 00000000
/* 008F0 8087EDD0 51C00008 */  beql    $t6, $zero, .L8087EDF4     
/* 008F4 8087EDD4 848F001C */  lh      $t7, 0x001C($a0)           ## 0000001C
/* 008F8 8087EDD8 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 008FC 8087EDDC 3C050601 */  lui     $a1, 0x0601                ## $a1 = 06010000
/* 00900 8087EDE0 0C00D4C9 */  jal     Gfx_DrawDListXlu
              
/* 00904 8087EDE4 24A5BF20 */  addiu   $a1, $a1, 0xBF20           ## $a1 = 0600BF20
/* 00908 8087EDE8 1000000F */  beq     $zero, $zero, .L8087EE28   
/* 0090C 8087EDEC 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00910 8087EDF0 848F001C */  lh      $t7, 0x001C($a0)           ## 0000001C
.L8087EDF4:
/* 00914 8087EDF4 00C02025 */  or      $a0, $a2, $zero            ## $a0 = 00000000
/* 00918 8087EDF8 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 0091C 8087EDFC 15E00007 */  bne     $t7, $zero, .L8087EE1C     
/* 00920 8087EE00 00000000 */  nop
/* 00924 8087EE04 3C050601 */  lui     $a1, 0x0601                ## $a1 = 06010000
/* 00928 8087EE08 24A5BF20 */  addiu   $a1, $a1, 0xBF20           ## $a1 = 0600BF20
/* 0092C 8087EE0C 0C00D498 */  jal     Gfx_DrawDListOpa
              
/* 00930 8087EE10 00C02025 */  or      $a0, $a2, $zero            ## $a0 = 00000000
/* 00934 8087EE14 10000004 */  beq     $zero, $zero, .L8087EE28   
/* 00938 8087EE18 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L8087EE1C:
/* 0093C 8087EE1C 0C00D498 */  jal     Gfx_DrawDListOpa
              
/* 00940 8087EE20 24A521F0 */  addiu   $a1, $a1, 0x21F0           ## $a1 = 000021F0
/* 00944 8087EE24 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L8087EE28:
/* 00948 8087EE28 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 0094C 8087EE2C 03E00008 */  jr      $ra                        
/* 00950 8087EE30 00000000 */  nop
/* 00954 8087EE34 00000000 */  nop
/* 00958 8087EE38 00000000 */  nop
/* 0095C 8087EE3C 00000000 */  nop
