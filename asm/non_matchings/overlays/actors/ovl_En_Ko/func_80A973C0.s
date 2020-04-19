glabel func_80A973C0
/* 00610 80A973C0 3C028016 */  lui     $v0, %hi(gSaveContext)
/* 00614 80A973C4 2442E660 */  addiu   $v0, %lo(gSaveContext)
/* 00618 80A973C8 3C0C8012 */  lui     $t4, %hi(gBitFlags)
/* 0061C 80A973CC 8D8C7120 */  lw      $t4, %lo(gBitFlags)($t4)
/* 00620 80A973D0 8C4D00A4 */  lw      $t5, 0x00A4($v0)           ## 8015E704
/* 00624 80A973D4 018D7024 */  and     $t6, $t4, $t5              
/* 00628 80A973D8 11C00003 */  beq     $t6, $zero, .L80A973E8     
/* 0062C 80A973DC 00000000 */  nop
/* 00630 80A973E0 03E00008 */  jr      $ra                        
/* 00634 80A973E4 24021073 */  addiu   $v0, $zero, 0x1073         ## $v0 = 00001073
.L80A973E8:
/* 00638 80A973E8 03E00008 */  jr      $ra                        
/* 0063C 80A973EC 2402105A */  addiu   $v0, $zero, 0x105A         ## $v0 = 0000105A
