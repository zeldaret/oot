glabel ArrowIce_Destroy
/* 00080 80867D50 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00084 80867D54 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00088 80867D58 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 0008C 80867D5C 0C021DB2 */  jal     func_800876C8              
/* 00090 80867D60 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 00094 80867D64 3C048087 */  lui     $a0, %hi(D_80869B10)       ## $a0 = 80870000
/* 00098 80867D68 24849B10 */  addiu   $a0, $a0, %lo(D_80869B10)  ## $a0 = 80869B10
/* 0009C 80867D6C 0C000B84 */  jal     LogUtils_LogThreadId
              
/* 000A0 80867D70 2405019F */  addiu   $a1, $zero, 0x019F         ## $a1 = 0000019F
/* 000A4 80867D74 3C048087 */  lui     $a0, %hi(D_80869B24)       ## $a0 = 80870000
/* 000A8 80867D78 3C058087 */  lui     $a1, %hi(D_80869B34)       ## $a1 = 80870000
/* 000AC 80867D7C 24A59B34 */  addiu   $a1, $a1, %lo(D_80869B34)  ## $a1 = 80869B34
/* 000B0 80867D80 0C00084C */  jal     osSyncPrintf
              
/* 000B4 80867D84 24849B24 */  addiu   $a0, $a0, %lo(D_80869B24)  ## $a0 = 80869B24
/* 000B8 80867D88 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 000BC 80867D8C 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 000C0 80867D90 03E00008 */  jr      $ra                        
/* 000C4 80867D94 00000000 */  nop


