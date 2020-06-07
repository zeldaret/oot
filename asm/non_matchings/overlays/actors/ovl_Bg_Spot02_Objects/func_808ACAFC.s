glabel func_808ACAFC
/* 0049C 808ACAFC 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 004A0 808ACB00 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 004A4 808ACB04 8FAE0018 */  lw      $t6, 0x0018($sp)           
/* 004A8 808ACB08 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 004AC 808ACB0C AFA5001C */  sw      $a1, 0x001C($sp)           
/* 004B0 808ACB10 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 004B4 808ACB14 0C00B2D0 */  jal     Flags_GetSwitch
              
/* 004B8 808ACB18 91C5016B */  lbu     $a1, 0x016B($t6)           ## 0000016B
/* 004BC 808ACB1C 1040000A */  beq     $v0, $zero, .L808ACB48     
/* 004C0 808ACB20 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 004C4 808ACB24 0C00B56E */  jal     Actor_SetHeight
              
/* 004C8 808ACB28 3C054270 */  lui     $a1, 0x4270                ## $a1 = 42700000
/* 004CC 808ACB2C 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 004D0 808ACB30 0C020120 */  jal     func_80080480              
/* 004D4 808ACB34 8FA50018 */  lw      $a1, 0x0018($sp)           
/* 004D8 808ACB38 8FB80018 */  lw      $t8, 0x0018($sp)           
/* 004DC 808ACB3C 3C0F808B */  lui     $t7, %hi(func_808ACB58)    ## $t7 = 808B0000
/* 004E0 808ACB40 25EFCB58 */  addiu   $t7, $t7, %lo(func_808ACB58) ## $t7 = 808ACB58
/* 004E4 808ACB44 AF0F0164 */  sw      $t7, 0x0164($t8)           ## 00000164
.L808ACB48:
/* 004E8 808ACB48 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 004EC 808ACB4C 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 004F0 808ACB50 03E00008 */  jr      $ra                        
/* 004F4 808ACB54 00000000 */  nop
