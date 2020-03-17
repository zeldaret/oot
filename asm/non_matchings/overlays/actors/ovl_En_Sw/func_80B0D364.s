glabel func_80B0D364
/* 015B4 80B0D364 AFA50004 */  sw      $a1, 0x0004($sp)           
/* 015B8 80B0D368 848E001C */  lh      $t6, 0x001C($a0)           ## 0000001C
/* 015BC 80B0D36C 24010004 */  addiu   $at, $zero, 0x0004         ## $at = 00000004
/* 015C0 80B0D370 2408000A */  addiu   $t0, $zero, 0x000A         ## $t0 = 0000000A
/* 015C4 80B0D374 31CFE000 */  andi    $t7, $t6, 0xE000           ## $t7 = 00000000
/* 015C8 80B0D378 000FC343 */  sra     $t8, $t7, 13               
/* 015CC 80B0D37C 17010006 */  bne     $t8, $at, .L80B0D398       
/* 015D0 80B0D380 3C0980B1 */  lui     $t1, %hi(func_80B0D3AC)    ## $t1 = 80B10000
/* 015D4 80B0D384 3C1980B1 */  lui     $t9, %hi(func_80B0D3AC)    ## $t9 = 80B10000
/* 015D8 80B0D388 2739D3AC */  addiu   $t9, $t9, %lo(func_80B0D3AC) ## $t9 = 80B0D3AC
/* 015DC 80B0D38C A480038C */  sh      $zero, 0x038C($a0)         ## 0000038C
/* 015E0 80B0D390 03E00008 */  jr      $ra                        
/* 015E4 80B0D394 AC990190 */  sw      $t9, 0x0190($a0)           ## 00000190
.L80B0D398:
/* 015E8 80B0D398 2529D3AC */  addiu   $t1, $t1, %lo(func_80B0D3AC) ## $t1 = 80B0D3AC
/* 015EC 80B0D39C A488038C */  sh      $t0, 0x038C($a0)           ## 0000038C
/* 015F0 80B0D3A0 AC890190 */  sw      $t1, 0x0190($a0)           ## 00000190
/* 015F4 80B0D3A4 03E00008 */  jr      $ra                        
/* 015F8 80B0D3A8 00000000 */  nop


