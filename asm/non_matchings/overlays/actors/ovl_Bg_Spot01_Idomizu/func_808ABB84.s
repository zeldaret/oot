.late_rodata
glabel D_808ABE18
    .float -550.0

.text
glabel func_808ABB84
/* 000A4 808ABB84 3C0E8016 */  lui     $t6, %hi(gSaveContext+0xee0)
/* 000A8 808ABB88 95CEF540 */  lhu     $t6, %lo(gSaveContext+0xee0)($t6)
/* 000AC 808ABB8C 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 000B0 808ABB90 AFB00020 */  sw      $s0, 0x0020($sp)           
/* 000B4 808ABB94 31CF0080 */  andi    $t7, $t6, 0x0080           ## $t7 = 00000000
/* 000B8 808ABB98 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 000BC 808ABB9C 11E00004 */  beq     $t7, $zero, .L808ABBB0     
/* 000C0 808ABBA0 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 000C4 808ABBA4 3C01808B */  lui     $at, %hi(D_808ABE18)       ## $at = 808B0000
/* 000C8 808ABBA8 C424BE18 */  lwc1    $f4, %lo(D_808ABE18)($at)  
/* 000CC 808ABBAC E4840150 */  swc1    $f4, 0x0150($a0)           ## 00000150
.L808ABBB0:
/* 000D0 808ABBB0 C6060028 */  lwc1    $f6, 0x0028($s0)           ## 00000028
/* 000D4 808ABBB4 8CA807C0 */  lw      $t0, 0x07C0($a1)           ## 000007C0
/* 000D8 808ABBB8 3C078013 */  lui     $a3, %hi(D_801333E0)
/* 000DC 808ABBBC 4600320D */  trunc.w.s $f8, $f6                   
/* 000E0 808ABBC0 8D090028 */  lw      $t1, 0x0028($t0)           ## 00000028
/* 000E4 808ABBC4 3C058013 */  lui     $a1, %hi(D_801333D4)
/* 000E8 808ABBC8 3C0A8013 */  lui     $t2, %hi(D_801333E8)
/* 000EC 808ABBCC 44194000 */  mfc1    $t9, $f8                   
/* 000F0 808ABBD0 24E733E0 */  addiu   $a3, %lo(D_801333E0)
/* 000F4 808ABBD4 254A33E8 */  addiu   $t2, %lo(D_801333E8)
/* 000F8 808ABBD8 A5390002 */  sh      $t9, 0x0002($t1)           ## 00000002
/* 000FC 808ABBDC C60A0028 */  lwc1    $f10, 0x0028($s0)          ## 00000028
/* 00100 808ABBE0 C6000150 */  lwc1    $f0, 0x0150($s0)           ## 00000150
/* 00104 808ABBE4 24A533D4 */  addiu   $a1, %lo(D_801333D4)
/* 00108 808ABBE8 2404205E */  addiu   $a0, $zero, 0x205E         ## $a0 = 0000205E
/* 0010C 808ABBEC 460A003C */  c.lt.s  $f0, $f10                  
/* 00110 808ABBF0 24060004 */  addiu   $a2, $zero, 0x0004         ## $a2 = 00000004
/* 00114 808ABBF4 45020006 */  bc1fl   .L808ABC10                 
/* 00118 808ABBF8 44050000 */  mfc1    $a1, $f0                   
/* 0011C 808ABBFC AFA70010 */  sw      $a3, 0x0010($sp)           
/* 00120 808ABC00 0C03DCE3 */  jal     Audio_PlaySoundGeneral
              
/* 00124 808ABC04 AFAA0014 */  sw      $t2, 0x0014($sp)           
/* 00128 808ABC08 C6000150 */  lwc1    $f0, 0x0150($s0)           ## 00000150
/* 0012C 808ABC0C 44050000 */  mfc1    $a1, $f0                   
.L808ABC10:
/* 00130 808ABC10 26040028 */  addiu   $a0, $s0, 0x0028           ## $a0 = 00000028
/* 00134 808ABC14 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 00138 808ABC18 0C01E107 */  jal     Math_SmoothScaleMaxF
              
/* 0013C 808ABC1C 3C074000 */  lui     $a3, 0x4000                ## $a3 = 40000000
/* 00140 808ABC20 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 00144 808ABC24 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 00148 808ABC28 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 0014C 808ABC2C 03E00008 */  jr      $ra                        
/* 00150 808ABC30 00000000 */  nop
