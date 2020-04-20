glabel func_808BCAF0
/* 005F0 808BCAF0 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 005F4 808BCAF4 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 005F8 808BCAF8 AFA40020 */  sw      $a0, 0x0020($sp)           
/* 005FC 808BCAFC 90AE1D6C */  lbu     $t6, 0x1D6C($a1)           ## 00001D6C
/* 00600 808BCB00 51C0001F */  beql    $t6, $zero, .L808BCB80     
/* 00604 808BCB04 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00608 808BCB08 8CA21D8C */  lw      $v0, 0x1D8C($a1)           ## 00001D8C
/* 0060C 808BCB0C 5040001C */  beql    $v0, $zero, .L808BCB80     
/* 00610 808BCB10 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00614 808BCB14 94430000 */  lhu     $v1, 0x0000($v0)           ## 00000000
/* 00618 808BCB18 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 0061C 808BCB1C 3C05808C */  lui     $a1, %hi(func_808BC80C)    ## $a1 = 808C0000
/* 00620 808BCB20 54610006 */  bnel    $v1, $at, .L808BCB3C       
/* 00624 808BCB24 24010003 */  addiu   $at, $zero, 0x0003         ## $at = 00000003
/* 00628 808BCB28 0C22F140 */  jal     func_808BC500              
/* 0062C 808BCB2C 24A5C80C */  addiu   $a1, $a1, %lo(func_808BC80C) ## $a1 = 808BC80C
/* 00630 808BCB30 10000013 */  beq     $zero, $zero, .L808BCB80   
/* 00634 808BCB34 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00638 808BCB38 24010003 */  addiu   $at, $zero, 0x0003         ## $at = 00000003
.L808BCB3C:
/* 0063C 808BCB3C 1461000F */  bne     $v1, $at, .L808BCB7C       
/* 00640 808BCB40 3C078013 */  lui     $a3, %hi(D_801333E0)
/* 00644 808BCB44 3C0F8013 */  lui     $t7, %hi(D_801333E8)
/* 00648 808BCB48 24E733E0 */  addiu   $a3, %lo(D_801333E0)
/* 0064C 808BCB4C 25EF33E8 */  addiu   $t7, %lo(D_801333E8)
/* 00650 808BCB50 3C058013 */  lui     $a1, %hi(D_801333D4)
/* 00654 808BCB54 24A533D4 */  addiu   $a1, %lo(D_801333D4)
/* 00658 808BCB58 AFAF0014 */  sw      $t7, 0x0014($sp)           
/* 0065C 808BCB5C AFA70010 */  sw      $a3, 0x0010($sp)           
/* 00660 808BCB60 24042866 */  addiu   $a0, $zero, 0x2866         ## $a0 = 00002866
/* 00664 808BCB64 0C03DCE3 */  jal     Audio_PlaySoundGeneral
              
/* 00668 808BCB68 24060004 */  addiu   $a2, $zero, 0x0004         ## $a2 = 00000004
/* 0066C 808BCB6C 3C05808C */  lui     $a1, %hi(func_808BC6F8)    ## $a1 = 808C0000
/* 00670 808BCB70 24A5C6F8 */  addiu   $a1, $a1, %lo(func_808BC6F8) ## $a1 = 808BC6F8
/* 00674 808BCB74 0C22F140 */  jal     func_808BC500              
/* 00678 808BCB78 8FA40020 */  lw      $a0, 0x0020($sp)           
.L808BCB7C:
/* 0067C 808BCB7C 8FBF001C */  lw      $ra, 0x001C($sp)           
.L808BCB80:
/* 00680 808BCB80 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 00684 808BCB84 03E00008 */  jr      $ra                        
/* 00688 808BCB88 00000000 */  nop
