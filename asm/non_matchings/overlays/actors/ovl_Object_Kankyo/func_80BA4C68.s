glabel func_80BA4C68
/* 021C8 80BA4C68 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 021CC 80BA4C6C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 021D0 80BA4C70 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 021D4 80BA4C74 342117A4 */  ori     $at, $at, 0x17A4           ## $at = 000117A4
/* 021D8 80BA4C78 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 021DC 80BA4C7C 00A12021 */  addu    $a0, $a1, $at              
/* 021E0 80BA4C80 90C51658 */  lbu     $a1, 0x1658($a2)           ## 00001658
/* 021E4 80BA4C84 0C026062 */  jal     Object_IsLoaded
              
/* 021E8 80BA4C88 AFA60018 */  sw      $a2, 0x0018($sp)           
/* 021EC 80BA4C8C 1040000D */  beq     $v0, $zero, .L80BA4CC4     
/* 021F0 80BA4C90 8FA60018 */  lw      $a2, 0x0018($sp)           
/* 021F4 80BA4C94 3C0140E0 */  lui     $at, 0x40E0                ## $at = 40E00000
/* 021F8 80BA4C98 90CF1658 */  lbu     $t7, 0x1658($a2)           ## 00001658
/* 021FC 80BA4C9C 44812000 */  mtc1    $at, $f4                   ## $f4 = 7.00
/* 02200 80BA4CA0 240E0001 */  addiu   $t6, $zero, 0x0001         ## $t6 = 00000001
/* 02204 80BA4CA4 3C0580BA */  lui     $a1, %hi(func_80BA4CD4)    ## $a1 = 80BA0000
/* 02208 80BA4CA8 A0CE1659 */  sb      $t6, 0x1659($a2)           ## 00001659
/* 0220C 80BA4CAC A0C0018C */  sb      $zero, 0x018C($a2)         ## 0000018C
/* 02210 80BA4CB0 24A54CD4 */  addiu   $a1, $a1, %lo(func_80BA4CD4) ## $a1 = 80BA4CD4
/* 02214 80BA4CB4 00C02025 */  or      $a0, $a2, $zero            ## $a0 = 00000000
/* 02218 80BA4CB8 A0CF001E */  sb      $t7, 0x001E($a2)           ## 0000001E
/* 0221C 80BA4CBC 0C2E8AA8 */  jal     ObjectKankyo_SetupAction              
/* 02220 80BA4CC0 E4C40190 */  swc1    $f4, 0x0190($a2)           ## 00000190
.L80BA4CC4:
/* 02224 80BA4CC4 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 02228 80BA4CC8 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 0222C 80BA4CCC 03E00008 */  jr      $ra                        
/* 02230 80BA4CD0 00000000 */  nop
