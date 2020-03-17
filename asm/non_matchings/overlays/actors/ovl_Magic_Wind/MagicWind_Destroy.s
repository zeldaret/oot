glabel MagicWind_Destroy
/* 00150 80B8B250 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00154 80B8B254 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 00158 80B8B258 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 0015C 80B8B25C AFA5001C */  sw      $a1, 0x001C($sp)           
/* 00160 80B8B260 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 00164 80B8B264 0C01B217 */  jal     func_8006C85C              
/* 00168 80B8B268 24C5014C */  addiu   $a1, $a2, 0x014C           ## $a1 = 0000014C
/* 0016C 80B8B26C 0C021DB2 */  jal     func_800876C8              
/* 00170 80B8B270 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 00174 80B8B274 3C0480B9 */  lui     $a0, %hi(D_80B8CE10)       ## $a0 = 80B90000
/* 00178 80B8B278 2484CE10 */  addiu   $a0, $a0, %lo(D_80B8CE10)  ## $a0 = 80B8CE10
/* 0017C 80B8B27C 0C000B84 */  jal     LogUtils_LogThreadId
              
/* 00180 80B8B280 240501F9 */  addiu   $a1, $zero, 0x01F9         ## $a1 = 000001F9
/* 00184 80B8B284 3C0480B9 */  lui     $a0, %hi(D_80B8CE24)       ## $a0 = 80B90000
/* 00188 80B8B288 3C0580B9 */  lui     $a1, %hi(D_80B8CE34)       ## $a1 = 80B90000
/* 0018C 80B8B28C 24A5CE34 */  addiu   $a1, $a1, %lo(D_80B8CE34)  ## $a1 = 80B8CE34
/* 00190 80B8B290 0C00084C */  jal     osSyncPrintf
              
/* 00194 80B8B294 2484CE24 */  addiu   $a0, $a0, %lo(D_80B8CE24)  ## $a0 = 80B8CE24
/* 00198 80B8B298 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 0019C 80B8B29C 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 001A0 80B8B2A0 03E00008 */  jr      $ra                        
/* 001A4 80B8B2A4 00000000 */  nop


