glabel func_8092E2E0
/* 01D10 8092E2E0 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 01D14 8092E2E4 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 01D18 8092E2E8 AFA40020 */  sw      $a0, 0x0020($sp)           
/* 01D1C 8092E2EC AFA50024 */  sw      $a1, 0x0024($sp)           
/* 01D20 8092E2F0 0C02927F */  jal     SkelAnime_Update
              
/* 01D24 8092E2F4 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 01D28 8092E2F8 8FA30020 */  lw      $v1, 0x0020($sp)           
/* 01D2C 8092E2FC 240E0100 */  addiu   $t6, $zero, 0x0100         ## $t6 = 00000100
/* 01D30 8092E300 24060004 */  addiu   $a2, $zero, 0x0004         ## $a2 = 00000004
/* 01D34 8092E304 846501A4 */  lh      $a1, 0x01A4($v1)           ## 000001A4
/* 01D38 8092E308 AFAE0010 */  sw      $t6, 0x0010($sp)           
/* 01D3C 8092E30C 24070800 */  addiu   $a3, $zero, 0x0800         ## $a3 = 00000800
/* 01D40 8092E310 0C01E1A7 */  jal     Math_SmoothStepToS
              
/* 01D44 8092E314 246400B6 */  addiu   $a0, $v1, 0x00B6           ## $a0 = 000000B6
/* 01D48 8092E318 14400008 */  bne     $v0, $zero, .L8092E33C     
/* 01D4C 8092E31C 3C048094 */  lui     $a0, %hi(D_80938C98)       ## $a0 = 80940000
/* 01D50 8092E320 0C24C11D */  jal     func_80930474              
/* 01D54 8092E324 8C848C98 */  lw      $a0, %lo(D_80938C98)($a0)  
/* 01D58 8092E328 3C048094 */  lui     $a0, %hi(D_80938C9C)       ## $a0 = 80940000
/* 01D5C 8092E32C 0C24C11D */  jal     func_80930474              
/* 01D60 8092E330 8C848C9C */  lw      $a0, %lo(D_80938C9C)($a0)  
/* 01D64 8092E334 0C24B6CC */  jal     func_8092DB30              
/* 01D68 8092E338 8FA40020 */  lw      $a0, 0x0020($sp)           
.L8092E33C:
/* 01D6C 8092E33C 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 01D70 8092E340 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 01D74 8092E344 03E00008 */  jr      $ra                        
/* 01D78 8092E348 00000000 */  nop
