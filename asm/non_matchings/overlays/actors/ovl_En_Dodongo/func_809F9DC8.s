glabel func_809F9DC8
/* 01B78 809F9DC8 27BDFF60 */  addiu   $sp, $sp, 0xFF60           ## $sp = FFFFFF60
/* 01B7C 809F9DCC 3C0F80A0 */  lui     $t7, %hi(D_809FAA6C)       ## $t7 = 80A00000
/* 01B80 809F9DD0 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 01B84 809F9DD4 AFB00020 */  sw      $s0, 0x0020($sp)           
/* 01B88 809F9DD8 AFA500A4 */  sw      $a1, 0x00A4($sp)           
/* 01B8C 809F9DDC 25EFAA6C */  addiu   $t7, $t7, %lo(D_809FAA6C)  ## $t7 = 809FAA6C
/* 01B90 809F9DE0 8DF90000 */  lw      $t9, 0x0000($t7)           ## 809FAA6C
/* 01B94 809F9DE4 27AE0094 */  addiu   $t6, $sp, 0x0094           ## $t6 = FFFFFFF4
/* 01B98 809F9DE8 8DF80004 */  lw      $t8, 0x0004($t7)           ## 809FAA70
/* 01B9C 809F9DEC ADD90000 */  sw      $t9, 0x0000($t6)           ## FFFFFFF4
/* 01BA0 809F9DF0 8DF90008 */  lw      $t9, 0x0008($t7)           ## 809FAA74
/* 01BA4 809F9DF4 3C0980A0 */  lui     $t1, %hi(D_809FAA78)       ## $t1 = 80A00000
/* 01BA8 809F9DF8 2529AA78 */  addiu   $t1, $t1, %lo(D_809FAA78)  ## $t1 = 809FAA78
/* 01BAC 809F9DFC ADD80004 */  sw      $t8, 0x0004($t6)           ## FFFFFFF8
/* 01BB0 809F9E00 ADD90008 */  sw      $t9, 0x0008($t6)           ## FFFFFFFC
/* 01BB4 809F9E04 8D2B0000 */  lw      $t3, 0x0000($t1)           ## 809FAA78
/* 01BB8 809F9E08 27A80088 */  addiu   $t0, $sp, 0x0088           ## $t0 = FFFFFFE8
/* 01BBC 809F9E0C 8D2A0004 */  lw      $t2, 0x0004($t1)           ## 809FAA7C
/* 01BC0 809F9E10 AD0B0000 */  sw      $t3, 0x0000($t0)           ## FFFFFFE8
/* 01BC4 809F9E14 8D2B0008 */  lw      $t3, 0x0008($t1)           ## 809FAA80
/* 01BC8 809F9E18 3C0D80A0 */  lui     $t5, %hi(D_809FAA84)       ## $t5 = 80A00000
/* 01BCC 809F9E1C 25ADAA84 */  addiu   $t5, $t5, %lo(D_809FAA84)  ## $t5 = 809FAA84
/* 01BD0 809F9E20 AD0A0004 */  sw      $t2, 0x0004($t0)           ## FFFFFFEC
/* 01BD4 809F9E24 AD0B0008 */  sw      $t3, 0x0008($t0)           ## FFFFFFF0
/* 01BD8 809F9E28 8DAF0000 */  lw      $t7, 0x0000($t5)           ## 809FAA84
/* 01BDC 809F9E2C 27AC007C */  addiu   $t4, $sp, 0x007C           ## $t4 = FFFFFFDC
/* 01BE0 809F9E30 8DAE0004 */  lw      $t6, 0x0004($t5)           ## 809FAA88
/* 01BE4 809F9E34 AD8F0000 */  sw      $t7, 0x0000($t4)           ## FFFFFFDC
/* 01BE8 809F9E38 8DAF0008 */  lw      $t7, 0x0008($t5)           ## 809FAA8C
/* 01BEC 809F9E3C 3C1980A0 */  lui     $t9, %hi(D_809FAA90)       ## $t9 = 80A00000
/* 01BF0 809F9E40 2739AA90 */  addiu   $t9, $t9, %lo(D_809FAA90)  ## $t9 = 809FAA90
/* 01BF4 809F9E44 AD8E0004 */  sw      $t6, 0x0004($t4)           ## FFFFFFE0
/* 01BF8 809F9E48 AD8F0008 */  sw      $t7, 0x0008($t4)           ## FFFFFFE4
/* 01BFC 809F9E4C 8F290000 */  lw      $t1, 0x0000($t9)           ## 809FAA90
/* 01C00 809F9E50 27B80070 */  addiu   $t8, $sp, 0x0070           ## $t8 = FFFFFFD0
/* 01C04 809F9E54 8F280004 */  lw      $t0, 0x0004($t9)           ## 809FAA94
/* 01C08 809F9E58 AF090000 */  sw      $t1, 0x0000($t8)           ## FFFFFFD0
/* 01C0C 809F9E5C 8F290008 */  lw      $t1, 0x0008($t9)           ## 809FAA98
/* 01C10 809F9E60 3C0141E0 */  lui     $at, 0x41E0                ## $at = 41E00000
/* 01C14 809F9E64 AF080004 */  sw      $t0, 0x0004($t8)           ## FFFFFFD4
/* 01C18 809F9E68 AF090008 */  sw      $t1, 0x0008($t8)           ## FFFFFFD8
/* 01C1C 809F9E6C C4840164 */  lwc1    $f4, 0x0164($a0)           ## 00000164
/* 01C20 809F9E70 44813000 */  mtc1    $at, $f6                   ## $f6 = 28.00
/* 01C24 809F9E74 3C0180A0 */  lui     $at, %hi(D_809FABA4)       ## $at = 80A00000
/* 01C28 809F9E78 C42AABA4 */  lwc1    $f10, %lo(D_809FABA4)($at) 
/* 01C2C 809F9E7C 46062201 */  sub.s   $f8, $f4, $f6              
/* 01C30 809F9E80 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 01C34 809F9E84 460A4302 */  mul.s   $f12, $f8, $f10            
/* 01C38 809F9E88 0C0329C8 */  jal     func_800CA720              
/* 01C3C 809F9E8C 00000000 */  nop
/* 01C40 809F9E90 3C0180A0 */  lui     $at, %hi(D_809FABA8)       ## $at = 80A00000
/* 01C44 809F9E94 C430ABA8 */  lwc1    $f16, %lo(D_809FABA8)($at) 
/* 01C48 809F9E98 C7B2007C */  lwc1    $f18, 0x007C($sp)          
/* 01C4C 809F9E9C C7A60094 */  lwc1    $f6, 0x0094($sp)           
/* 01C50 809F9EA0 46100082 */  mul.s   $f2, $f0, $f16             
/* 01C54 809F9EA4 C7AA0088 */  lwc1    $f10, 0x0088($sp)          
/* 01C58 809F9EA8 26050420 */  addiu   $a1, $s0, 0x0420           ## $a1 = 00000420
/* 01C5C 809F9EAC AFA50030 */  sw      $a1, 0x0030($sp)           
/* 01C60 809F9EB0 27A40094 */  addiu   $a0, $sp, 0x0094           ## $a0 = FFFFFFF4
/* 01C64 809F9EB4 46029101 */  sub.s   $f4, $f18, $f2             
/* 01C68 809F9EB8 46023201 */  sub.s   $f8, $f6, $f2              
/* 01C6C 809F9EBC E7A4007C */  swc1    $f4, 0x007C($sp)           
/* 01C70 809F9EC0 46025401 */  sub.s   $f16, $f10, $f2            
/* 01C74 809F9EC4 E7A80094 */  swc1    $f8, 0x0094($sp)           
/* 01C78 809F9EC8 0C0346BD */  jal     Matrix_MultVec3f              
/* 01C7C 809F9ECC E7B00088 */  swc1    $f16, 0x0088($sp)          
/* 01C80 809F9ED0 26050414 */  addiu   $a1, $s0, 0x0414           ## $a1 = 00000414
/* 01C84 809F9ED4 AFA50034 */  sw      $a1, 0x0034($sp)           
/* 01C88 809F9ED8 0C0346BD */  jal     Matrix_MultVec3f              
/* 01C8C 809F9EDC 27A40088 */  addiu   $a0, $sp, 0x0088           ## $a0 = FFFFFFE8
/* 01C90 809F9EE0 26050438 */  addiu   $a1, $s0, 0x0438           ## $a1 = 00000438
/* 01C94 809F9EE4 AFA50028 */  sw      $a1, 0x0028($sp)           
/* 01C98 809F9EE8 0C0346BD */  jal     Matrix_MultVec3f              
/* 01C9C 809F9EEC 27A4007C */  addiu   $a0, $sp, 0x007C           ## $a0 = FFFFFFDC
/* 01CA0 809F9EF0 2607042C */  addiu   $a3, $s0, 0x042C           ## $a3 = 0000042C
/* 01CA4 809F9EF4 00E02825 */  or      $a1, $a3, $zero            ## $a1 = 0000042C
/* 01CA8 809F9EF8 AFA7002C */  sw      $a3, 0x002C($sp)           
/* 01CAC 809F9EFC 0C0346BD */  jal     Matrix_MultVec3f              
/* 01CB0 809F9F00 27A40070 */  addiu   $a0, $sp, 0x0070           ## $a0 = FFFFFFD0
/* 01CB4 809F9F04 8FAA0028 */  lw      $t2, 0x0028($sp)           
/* 01CB8 809F9F08 8FA7002C */  lw      $a3, 0x002C($sp)           
/* 01CBC 809F9F0C 260403D4 */  addiu   $a0, $s0, 0x03D4           ## $a0 = 000003D4
/* 01CC0 809F9F10 8FA50034 */  lw      $a1, 0x0034($sp)           
/* 01CC4 809F9F14 8FA60030 */  lw      $a2, 0x0030($sp)           
/* 01CC8 809F9F18 0C0189CD */  jal     func_80062734              
/* 01CCC 809F9F1C AFAA0010 */  sw      $t2, 0x0010($sp)           
/* 01CD0 809F9F20 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 01CD4 809F9F24 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 01CD8 809F9F28 27BD00A0 */  addiu   $sp, $sp, 0x00A0           ## $sp = 00000000
/* 01CDC 809F9F2C 03E00008 */  jr      $ra                        
/* 01CE0 809F9F30 00000000 */  nop


