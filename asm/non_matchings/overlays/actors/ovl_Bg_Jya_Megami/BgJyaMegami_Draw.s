glabel BgJyaMegami_Draw
/* 00E24 8089AF54 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00E28 8089AF58 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 00E2C 8089AF5C AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00E30 8089AF60 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 00E34 8089AF64 24C50168 */  addiu   $a1, $a2, 0x0168           ## $a1 = 00000168
/* 00E38 8089AF68 AFA60018 */  sw      $a2, 0x0018($sp)           
/* 00E3C 8089AF6C 0C018A29 */  jal     func_800628A4              
/* 00E40 8089AF70 00002025 */  or      $a0, $zero, $zero          ## $a0 = 00000000
/* 00E44 8089AF74 8FA60018 */  lw      $a2, 0x0018($sp)           
/* 00E48 8089AF78 3C0E808A */  lui     $t6, %hi(func_8089A820)    ## $t6 = 808A0000
/* 00E4C 8089AF7C 25CEA820 */  addiu   $t6, $t6, %lo(func_8089A820) ## $t6 = 8089A820
/* 00E50 8089AF80 8CCF0164 */  lw      $t7, 0x0164($a2)           ## 00000164
/* 00E54 8089AF84 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 00E58 8089AF88 15CF0005 */  bne     $t6, $t7, .L8089AFA0       
/* 00E5C 8089AF8C 00000000 */  nop
/* 00E60 8089AF90 0C226B52 */  jal     func_8089AD48              
/* 00E64 8089AF94 00C02025 */  or      $a0, $a2, $zero            ## $a0 = 00000000
/* 00E68 8089AF98 10000004 */  beq     $zero, $zero, .L8089AFAC   
/* 00E6C 8089AF9C 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L8089AFA0:
/* 00E70 8089AFA0 0C226AF2 */  jal     func_8089ABC8              
/* 00E74 8089AFA4 00C02025 */  or      $a0, $a2, $zero            ## $a0 = 00000000
/* 00E78 8089AFA8 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L8089AFAC:
/* 00E7C 8089AFAC 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00E80 8089AFB0 03E00008 */  jr      $ra                        
/* 00E84 8089AFB4 00000000 */  nop
/* 00E88 8089AFB8 00000000 */  nop
/* 00E8C 8089AFBC 00000000 */  nop
