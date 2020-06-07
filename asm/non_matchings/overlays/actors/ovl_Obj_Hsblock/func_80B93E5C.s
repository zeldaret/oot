.late_rodata
glabel D_80B94190
    .float 0.3

glabel D_80B94194
    .float 0.001

.text
glabel func_80B93E5C
/* 002FC 80B93E5C 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 00300 80B93E60 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 00304 80B93E64 AFB00020 */  sw      $s0, 0x0020($sp)           
/* 00308 80B93E68 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 0030C 80B93E6C AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 00310 80B93E70 AFA5002C */  sw      $a1, 0x002C($sp)           
/* 00314 80B93E74 3C063DCC */  lui     $a2, 0x3DCC                ## $a2 = 3DCC0000
/* 00318 80B93E78 3C073F4C */  lui     $a3, 0x3F4C                ## $a3 = 3F4C0000
/* 0031C 80B93E7C 34E7CCCD */  ori     $a3, $a3, 0xCCCD           ## $a3 = 3F4CCCCD
/* 00320 80B93E80 34C6CCCD */  ori     $a2, $a2, 0xCCCD           ## $a2 = 3DCCCCCD
/* 00324 80B93E84 3C054180 */  lui     $a1, 0x4180                ## $a1 = 41800000
/* 00328 80B93E88 24840060 */  addiu   $a0, $a0, 0x0060           ## $a0 = 00000060
/* 0032C 80B93E8C 0C01E0C4 */  jal     Math_SmoothScaleMaxMinF
              
/* 00330 80B93E90 E7A40010 */  swc1    $f4, 0x0010($sp)           
/* 00334 80B93E94 3C0180B9 */  lui     $at, %hi(D_80B94190)       ## $at = 80B90000
/* 00338 80B93E98 C4224190 */  lwc1    $f2, %lo(D_80B94190)($at)  
/* 0033C 80B93E9C 8E05000C */  lw      $a1, 0x000C($s0)           ## 0000000C
/* 00340 80B93EA0 8E070060 */  lw      $a3, 0x0060($s0)           ## 00000060
/* 00344 80B93EA4 44061000 */  mfc1    $a2, $f2                   
/* 00348 80B93EA8 26040028 */  addiu   $a0, $s0, 0x0028           ## $a0 = 00000028
/* 0034C 80B93EAC 0C01E0C4 */  jal     Math_SmoothScaleMaxMinF
              
/* 00350 80B93EB0 E7A20010 */  swc1    $f2, 0x0010($sp)           
/* 00354 80B93EB4 3C0180B9 */  lui     $at, %hi(D_80B94194)       ## $at = 80B90000
/* 00358 80B93EB8 C4264194 */  lwc1    $f6, %lo(D_80B94194)($at)  
/* 0035C 80B93EBC 46000005 */  abs.s   $f0, $f0                   
/* 00360 80B93EC0 4606003C */  c.lt.s  $f0, $f6                   
/* 00364 80B93EC4 00000000 */  nop
/* 00368 80B93EC8 4502000A */  bc1fl   .L80B93EF4                 
/* 0036C 80B93ECC 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 00370 80B93ED0 C608000C */  lwc1    $f8, 0x000C($s0)           ## 0000000C
/* 00374 80B93ED4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00378 80B93ED8 0C2E4F64 */  jal     func_80B93D90              
/* 0037C 80B93EDC E6080028 */  swc1    $f8, 0x0028($s0)           ## 00000028
/* 00380 80B93EE0 8E0E0004 */  lw      $t6, 0x0004($s0)           ## 00000004
/* 00384 80B93EE4 2401FFEF */  addiu   $at, $zero, 0xFFEF         ## $at = FFFFFFEF
/* 00388 80B93EE8 01C17824 */  and     $t7, $t6, $at              
/* 0038C 80B93EEC AE0F0004 */  sw      $t7, 0x0004($s0)           ## 00000004
/* 00390 80B93EF0 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80B93EF4:
/* 00394 80B93EF4 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 00398 80B93EF8 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 0039C 80B93EFC 03E00008 */  jr      $ra                        
/* 003A0 80B93F00 00000000 */  nop
