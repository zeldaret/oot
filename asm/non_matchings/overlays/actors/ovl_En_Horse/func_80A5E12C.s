glabel func_80A5E12C
/* 02E3C 80A5E12C 27BDFFC8 */  addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
/* 02E40 80A5E130 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 02E44 80A5E134 AFB00020 */  sw      $s0, 0x0020($sp)           
/* 02E48 80A5E138 AFA5003C */  sw      $a1, 0x003C($sp)           
/* 02E4C 80A5E13C 3C0141C8 */  lui     $at, 0x41C8                ## $at = 41C80000
/* 02E50 80A5E140 44813000 */  mtc1    $at, $f6                   ## $f6 = 25.00
/* 02E54 80A5E144 C4880214 */  lwc1    $f8, 0x0214($a0)           ## 00000214
/* 02E58 80A5E148 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 02E5C 80A5E14C 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 02E60 80A5E150 4608303C */  c.lt.s  $f6, $f8                   
/* 02E64 80A5E154 E4840068 */  swc1    $f4, 0x0068($a0)           ## 00000068
/* 02E68 80A5E158 45020016 */  bc1fl   .L80A5E1B4                 
/* 02E6C 80A5E15C 26040264 */  addiu   $a0, $s0, 0x0264           ## $a0 = 00000264
/* 02E70 80A5E160 8C8201F0 */  lw      $v0, 0x01F0($a0)           ## 00000454
/* 02E74 80A5E164 3C078013 */  lui     $a3, 0x8013                ## $a3 = 80130000
/* 02E78 80A5E168 24E733E0 */  addiu   $a3, $a3, 0x33E0           ## $a3 = 801333E0
/* 02E7C 80A5E16C 304E0800 */  andi    $t6, $v0, 0x0800           ## $t6 = 00000000
/* 02E80 80A5E170 15C0000F */  bne     $t6, $zero, .L80A5E1B0     
/* 02E84 80A5E174 344F0800 */  ori     $t7, $v0, 0x0800           ## $t7 = 00000800
/* 02E88 80A5E178 AC8F01F0 */  sw      $t7, 0x01F0($a0)           ## 00000454
/* 02E8C 80A5E17C 3C188013 */  lui     $t8, 0x8013                ## $t8 = 80130000
/* 02E90 80A5E180 271833E8 */  addiu   $t8, $t8, 0x33E8           ## $t8 = 801333E8
/* 02E94 80A5E184 AFB80014 */  sw      $t8, 0x0014($sp)           
/* 02E98 80A5E188 AFA70010 */  sw      $a3, 0x0010($sp)           
/* 02E9C 80A5E18C 2404282B */  addiu   $a0, $zero, 0x282B         ## $a0 = 0000282B
/* 02EA0 80A5E190 260500E4 */  addiu   $a1, $s0, 0x00E4           ## $a1 = 000000E4
/* 02EA4 80A5E194 0C03DCE3 */  jal     Audio_PlaySoundGeneral
              
/* 02EA8 80A5E198 24060004 */  addiu   $a2, $zero, 0x0004         ## $a2 = 00000004
/* 02EAC 80A5E19C 44806000 */  mtc1    $zero, $f12                ## $f12 = 0.00
/* 02EB0 80A5E1A0 240500B4 */  addiu   $a1, $zero, 0x00B4         ## $a1 = 000000B4
/* 02EB4 80A5E1A4 24060014 */  addiu   $a2, $zero, 0x0014         ## $a2 = 00000014
/* 02EB8 80A5E1A8 0C02A800 */  jal     func_800AA000              
/* 02EBC 80A5E1AC 24070064 */  addiu   $a3, $zero, 0x0064         ## $a3 = 00000064
.L80A5E1B0:
/* 02EC0 80A5E1B0 26040264 */  addiu   $a0, $s0, 0x0264           ## $a0 = 00000264
.L80A5E1B4:
/* 02EC4 80A5E1B4 27A50034 */  addiu   $a1, $sp, 0x0034           ## $a1 = FFFFFFFC
/* 02EC8 80A5E1B8 0C298C52 */  jal     func_80A63148              
/* 02ECC 80A5E1BC 27A60032 */  addiu   $a2, $sp, 0x0032           ## $a2 = FFFFFFFA
/* 02ED0 80A5E1C0 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 02ED4 80A5E1C4 260401AC */  addiu   $a0, $s0, 0x01AC           ## $a0 = 000001AC
/* 02ED8 80A5E1C8 10400032 */  beq     $v0, $zero, .L80A5E294     
/* 02EDC 80A5E1CC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02EE0 80A5E1D0 0C296FFE */  jal     func_80A5BFF8              
/* 02EE4 80A5E1D4 8FA5003C */  lw      $a1, 0x003C($sp)           
/* 02EE8 80A5E1D8 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 02EEC 80A5E1DC 1441002B */  bne     $v0, $at, .L80A5E28C       
/* 02EF0 80A5E1E0 00000000 */  nop
/* 02EF4 80A5E1E4 8E0201F0 */  lw      $v0, 0x01F0($s0)           ## 000001F0
/* 02EF8 80A5E1E8 24030064 */  addiu   $v1, $zero, 0x0064         ## $v1 = 00000064
/* 02EFC 80A5E1EC 2401FFEF */  addiu   $at, $zero, 0xFFEF         ## $at = FFFFFFEF
/* 02F00 80A5E1F0 30590010 */  andi    $t9, $v0, 0x0010           ## $t9 = 00000000
/* 02F04 80A5E1F4 13200009 */  beq     $t9, $zero, .L80A5E21C     
/* 02F08 80A5E1F8 30490020 */  andi    $t1, $v0, 0x0020           ## $t1 = 00000000
/* 02F0C 80A5E1FC 00414024 */  and     $t0, $v0, $at              
/* 02F10 80A5E200 AE030150 */  sw      $v1, 0x0150($s0)           ## 00000150
/* 02F14 80A5E204 AE030154 */  sw      $v1, 0x0154($s0)           ## 00000154
/* 02F18 80A5E208 AE0801F0 */  sw      $t0, 0x01F0($s0)           ## 000001F0
/* 02F1C 80A5E20C 0C29796B */  jal     func_80A5E5AC              
/* 02F20 80A5E210 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02F24 80A5E214 10000020 */  beq     $zero, $zero, .L80A5E298   
/* 02F28 80A5E218 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80A5E21C:
/* 02F2C 80A5E21C 1120000A */  beq     $t1, $zero, .L80A5E248     
/* 02F30 80A5E220 24030064 */  addiu   $v1, $zero, 0x0064         ## $v1 = 00000064
/* 02F34 80A5E224 2401FFDF */  addiu   $at, $zero, 0xFFDF         ## $at = FFFFFFDF
/* 02F38 80A5E228 00415024 */  and     $t2, $v0, $at              
/* 02F3C 80A5E22C AE030150 */  sw      $v1, 0x0150($s0)           ## 00000150
/* 02F40 80A5E230 AE030154 */  sw      $v1, 0x0154($s0)           ## 00000154
/* 02F44 80A5E234 AE0A01F0 */  sw      $t2, 0x01F0($s0)           ## 000001F0
/* 02F48 80A5E238 0C2975A7 */  jal     func_80A5D69C              
/* 02F4C 80A5E23C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02F50 80A5E240 10000015 */  beq     $zero, $zero, .L80A5E298   
/* 02F54 80A5E244 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80A5E248:
/* 02F58 80A5E248 0C01DE0D */  jal     Math_Coss
              ## coss?
/* 02F5C 80A5E24C 87A40032 */  lh      $a0, 0x0032($sp)           
/* 02F60 80A5E250 3C01BF00 */  lui     $at, 0xBF00                ## $at = BF000000
/* 02F64 80A5E254 44815000 */  mtc1    $at, $f10                  ## $f10 = -0.50
/* 02F68 80A5E258 00000000 */  nop
/* 02F6C 80A5E25C 460A003E */  c.le.s  $f0, $f10                  
/* 02F70 80A5E260 00000000 */  nop
/* 02F74 80A5E264 45000005 */  bc1f    .L80A5E27C                 
/* 02F78 80A5E268 00000000 */  nop
/* 02F7C 80A5E26C 0C297962 */  jal     func_80A5E588              
/* 02F80 80A5E270 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02F84 80A5E274 10000008 */  beq     $zero, $zero, .L80A5E298   
/* 02F88 80A5E278 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80A5E27C:
/* 02F8C 80A5E27C 0C2973CA */  jal     func_80A5CF28              
/* 02F90 80A5E280 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02F94 80A5E284 10000004 */  beq     $zero, $zero, .L80A5E298   
/* 02F98 80A5E288 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80A5E28C:
/* 02F9C 80A5E28C 0C2973CA */  jal     func_80A5CF28              
/* 02FA0 80A5E290 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
.L80A5E294:
/* 02FA4 80A5E294 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80A5E298:
/* 02FA8 80A5E298 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 02FAC 80A5E29C 27BD0038 */  addiu   $sp, $sp, 0x0038           ## $sp = 00000000
/* 02FB0 80A5E2A0 03E00008 */  jr      $ra                        
/* 02FB4 80A5E2A4 00000000 */  nop


