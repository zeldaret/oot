glabel func_80A0C4F0
/* 00E30 80A0C4F0 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 00E34 80A0C4F4 44810000 */  mtc1    $at, $f0                   ## $f0 = 1.00
/* 00E38 80A0C4F8 27BDFFC8 */  addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
/* 00E3C 80A0C4FC 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 00E40 80A0C500 AFB00020 */  sw      $s0, 0x0020($sp)           
/* 00E44 80A0C504 AFA5003C */  sw      $a1, 0x003C($sp)           
/* 00E48 80A0C508 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00E4C 80A0C50C AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 00E50 80A0C510 3C063DCC */  lui     $a2, 0x3DCC                ## $a2 = 3DCC0000
/* 00E54 80A0C514 44050000 */  mfc1    $a1, $f0                   
/* 00E58 80A0C518 44070000 */  mfc1    $a3, $f0                   
/* 00E5C 80A0C51C 34C6CCCD */  ori     $a2, $a2, 0xCCCD           ## $a2 = 3DCCCCCD
/* 00E60 80A0C520 24840168 */  addiu   $a0, $a0, 0x0168           ## $a0 = 00000168
/* 00E64 80A0C524 0C01E0C4 */  jal     Math_SmoothScaleMaxMinF
              
/* 00E68 80A0C528 E7A40010 */  swc1    $f4, 0x0010($sp)           
/* 00E6C 80A0C52C 2604014C */  addiu   $a0, $s0, 0x014C           ## $a0 = 0000014C
/* 00E70 80A0C530 8E05015C */  lw      $a1, 0x015C($s0)           ## 0000015C
/* 00E74 80A0C534 0C0295B2 */  jal     func_800A56C8              
/* 00E78 80A0C538 AFA40028 */  sw      $a0, 0x0028($sp)           
/* 00E7C 80A0C53C 1040001F */  beq     $v0, $zero, .L80A0C5BC     
/* 00E80 80A0C540 2404003C */  addiu   $a0, $zero, 0x003C         ## $a0 = 0000003C
/* 00E84 80A0C544 0C01DF64 */  jal     Math_Rand_S16Offset
              
/* 00E88 80A0C548 2405005A */  addiu   $a1, $zero, 0x005A         ## $a1 = 0000005A
/* 00E8C 80A0C54C A60204BE */  sh      $v0, 0x04BE($s0)           ## 000004BE
/* 00E90 80A0C550 26040024 */  addiu   $a0, $s0, 0x0024           ## $a0 = 00000024
/* 00E94 80A0C554 0C01DFE4 */  jal     Math_Vec3f_DistXYZ
              
/* 00E98 80A0C558 26050008 */  addiu   $a1, $s0, 0x0008           ## $a1 = 00000008
/* 00E9C 80A0C55C 44060000 */  mfc1    $a2, $f0                   
/* 00EA0 80A0C560 E60004C8 */  swc1    $f0, 0x04C8($s0)           ## 000004C8
/* 00EA4 80A0C564 27A4002C */  addiu   $a0, $sp, 0x002C           ## $a0 = FFFFFFF4
/* 00EA8 80A0C568 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 00EAC 80A0C56C 0C282FA8 */  jal     func_80A0BEA0              
/* 00EB0 80A0C570 860704BA */  lh      $a3, 0x04BA($s0)           ## 000004BA
/* 00EB4 80A0C574 C7AC002C */  lwc1    $f12, 0x002C($sp)          
/* 00EB8 80A0C578 0C03F494 */  jal     Math_atan2f              
/* 00EBC 80A0C57C C7AE0034 */  lwc1    $f14, 0x0034($sp)          
/* 00EC0 80A0C580 3C0180A1 */  lui     $at, %hi(D_80A0E1C0)       ## $at = 80A10000
/* 00EC4 80A0C584 C426E1C0 */  lwc1    $f6, %lo(D_80A0E1C0)($at)  
/* 00EC8 80A0C588 3C0580A1 */  lui     $a1, %hi(D_80A0DFEC)       ## $a1 = 80A10000
/* 00ECC 80A0C58C 24A5DFEC */  addiu   $a1, $a1, %lo(D_80A0DFEC)  ## $a1 = 80A0DFEC
/* 00ED0 80A0C590 46060202 */  mul.s   $f8, $f0, $f6              
/* 00ED4 80A0C594 24060004 */  addiu   $a2, $zero, 0x0004         ## $a2 = 00000004
/* 00ED8 80A0C598 4600428D */  trunc.w.s $f10, $f8                  
/* 00EDC 80A0C59C 440F5000 */  mfc1    $t7, $f10                  
/* 00EE0 80A0C5A0 00000000 */  nop
/* 00EE4 80A0C5A4 A60F0032 */  sh      $t7, 0x0032($s0)           ## 00000032
/* 00EE8 80A0C5A8 0C00D3B0 */  jal     func_80034EC0              
/* 00EEC 80A0C5AC 8FA40028 */  lw      $a0, 0x0028($sp)           
/* 00EF0 80A0C5B0 3C1880A1 */  lui     $t8, %hi(func_80A0C5D0)    ## $t8 = 80A10000
/* 00EF4 80A0C5B4 2718C5D0 */  addiu   $t8, $t8, %lo(func_80A0C5D0) ## $t8 = 80A0C5D0
/* 00EF8 80A0C5B8 AE180190 */  sw      $t8, 0x0190($s0)           ## 00000190
.L80A0C5BC:
/* 00EFC 80A0C5BC 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 00F00 80A0C5C0 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 00F04 80A0C5C4 27BD0038 */  addiu   $sp, $sp, 0x0038           ## $sp = 00000000
/* 00F08 80A0C5C8 03E00008 */  jr      $ra                        
/* 00F0C 80A0C5CC 00000000 */  nop


