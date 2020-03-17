glabel ArrowLight_Destroy
/* 00080 80869D30 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00084 80869D34 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00088 80869D38 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 0008C 80869D3C 0C021DB2 */  jal     func_800876C8              
/* 00090 80869D40 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 00094 80869D44 3C048087 */  lui     $a0, %hi(D_8086BB00)       ## $a0 = 80870000
/* 00098 80869D48 2484BB00 */  addiu   $a0, $a0, %lo(D_8086BB00)  ## $a0 = 8086BB00
/* 0009C 80869D4C 0C000B84 */  jal     LogUtils_LogThreadId
              
/* 000A0 80869D50 24050193 */  addiu   $a1, $zero, 0x0193         ## $a1 = 00000193
/* 000A4 80869D54 3C048087 */  lui     $a0, %hi(D_8086BB14)       ## $a0 = 80870000
/* 000A8 80869D58 3C058087 */  lui     $a1, %hi(D_8086BB24)       ## $a1 = 80870000
/* 000AC 80869D5C 24A5BB24 */  addiu   $a1, $a1, %lo(D_8086BB24)  ## $a1 = 8086BB24
/* 000B0 80869D60 0C00084C */  jal     osSyncPrintf
              
/* 000B4 80869D64 2484BB14 */  addiu   $a0, $a0, %lo(D_8086BB14)  ## $a0 = 8086BB14
/* 000B8 80869D68 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 000BC 80869D6C 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 000C0 80869D70 03E00008 */  jr      $ra                        
/* 000C4 80869D74 00000000 */  nop


