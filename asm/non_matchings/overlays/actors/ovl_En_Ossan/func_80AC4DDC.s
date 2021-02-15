.rdata
glabel D_80AC9148
    .asciz "%s[%d]:\x1b[32mズーム中！！\x1b[m\n"
    .balign 4

glabel D_80AC9168
    .asciz "../z_en_oB1.c"
    .balign 4

.text
glabel func_80AC4DDC
/* 0213C 80AC4DDC 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 02140 80AC4DE0 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 02144 80AC4DE4 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 02148 80AC4DE8 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 0214C 80AC4DEC AFA50024 */  sw      $a1, 0x0024($sp)           
/* 02150 80AC4DF0 0C2B194B */  jal     func_80AC652C              
/* 02154 80AC4DF4 AFA60028 */  sw      $a2, 0x0028($sp)           
/* 02158 80AC4DF8 14400009 */  bne     $v0, $zero, .L80AC4E20     
/* 0215C 80AC4DFC 260402D4 */  addiu   $a0, $s0, 0x02D4           ## $a0 = 000002D4
/* 02160 80AC4E00 3C0480AD */  lui     $a0, %hi(D_80AC9148)       ## $a0 = 80AD0000
/* 02164 80AC4E04 3C0580AD */  lui     $a1, %hi(D_80AC9168)       ## $a1 = 80AD0000
/* 02168 80AC4E08 24A59168 */  addiu   $a1, $a1, %lo(D_80AC9168)  ## $a1 = 80AC9168
/* 0216C 80AC4E0C 24849148 */  addiu   $a0, $a0, %lo(D_80AC9148)  ## $a0 = 80AC9148
/* 02170 80AC4E10 0C00084C */  jal     osSyncPrintf
              
/* 02174 80AC4E14 24060933 */  addiu   $a2, $zero, 0x0933         ## $a2 = 00000933
/* 02178 80AC4E18 10000027 */  beq     $zero, $zero, .L80AC4EB8   
/* 0217C 80AC4E1C 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80AC4E20:
/* 02180 80AC4E20 24050000 */  addiu   $a1, $zero, 0x0000         ## $a1 = 00000000
/* 02184 80AC4E24 3C063F00 */  lui     $a2, 0x3F00                ## $a2 = 3F000000
/* 02188 80AC4E28 0C01E107 */  jal     Math_ApproachF
              
/* 0218C 80AC4E2C 3C074120 */  lui     $a3, 0x4120                ## $a3 = 41200000
/* 02190 80AC4E30 3C013F00 */  lui     $at, 0x3F00                ## $at = 3F000000
/* 02194 80AC4E34 44812000 */  mtc1    $at, $f4                   ## $f4 = 0.50
/* 02198 80AC4E38 C60002D4 */  lwc1    $f0, 0x02D4($s0)           ## 000002D4
/* 0219C 80AC4E3C 3C01BF00 */  lui     $at, 0xBF00                ## $at = BF000000
/* 021A0 80AC4E40 4604003C */  c.lt.s  $f0, $f4                   
/* 021A4 80AC4E44 00000000 */  nop
/* 021A8 80AC4E48 4502000C */  bc1fl   .L80AC4E7C                 
/* 021AC 80AC4E4C 44060000 */  mfc1    $a2, $f0                   
/* 021B0 80AC4E50 44813000 */  mtc1    $at, $f6                   ## $f6 = -0.50
/* 021B4 80AC4E54 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 021B8 80AC4E58 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 021BC 80AC4E5C 4600303C */  c.lt.s  $f6, $f0                   
/* 021C0 80AC4E60 00000000 */  nop
/* 021C4 80AC4E64 45020005 */  bc1fl   .L80AC4E7C                 
/* 021C8 80AC4E68 44060000 */  mfc1    $a2, $f0                   
/* 021CC 80AC4E6C 0C2B0CD4 */  jal     func_80AC3350              
/* 021D0 80AC4E70 24060000 */  addiu   $a2, $zero, 0x0000         ## $a2 = 00000000
/* 021D4 80AC4E74 C60002D4 */  lwc1    $f0, 0x02D4($s0)           ## 000002D4
/* 021D8 80AC4E78 44060000 */  mfc1    $a2, $f0                   
.L80AC4E7C:
/* 021DC 80AC4E7C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 021E0 80AC4E80 0C2B0CD4 */  jal     func_80AC3350              
/* 021E4 80AC4E84 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 021E8 80AC4E88 44804000 */  mtc1    $zero, $f8                 ## $f8 = 0.00
/* 021EC 80AC4E8C C60A02D4 */  lwc1    $f10, 0x02D4($s0)          ## 000002D4
/* 021F0 80AC4E90 8FA40024 */  lw      $a0, 0x0024($sp)           
/* 021F4 80AC4E94 460A4032 */  c.eq.s  $f8, $f10                  
/* 021F8 80AC4E98 00000000 */  nop
/* 021FC 80AC4E9C 45020006 */  bc1fl   .L80AC4EB8                 
/* 02200 80AC4EA0 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 02204 80AC4EA4 0C042DC8 */  jal     func_8010B720              
/* 02208 80AC4EA8 24053010 */  addiu   $a1, $zero, 0x3010         ## $a1 = 00003010
/* 0220C 80AC4EAC 240E0014 */  addiu   $t6, $zero, 0x0014         ## $t6 = 00000014
/* 02210 80AC4EB0 A60E01FC */  sh      $t6, 0x01FC($s0)           ## 000001FC
/* 02214 80AC4EB4 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80AC4EB8:
/* 02218 80AC4EB8 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 0221C 80AC4EBC 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 02220 80AC4EC0 03E00008 */  jr      $ra                        
/* 02224 80AC4EC4 00000000 */  nop
