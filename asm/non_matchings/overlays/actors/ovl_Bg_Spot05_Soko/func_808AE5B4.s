glabel func_808AE5B4
/* 00144 808AE5B4 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 00148 808AE5B8 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 0014C 808AE5BC 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00150 808AE5C0 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00154 808AE5C4 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 00158 808AE5C8 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 0015C 808AE5CC 0C00B2D0 */  jal     Flags_GetSwitch
              
/* 00160 808AE5D0 8E050168 */  lw      $a1, 0x0168($s0)           ## 00000168
/* 00164 808AE5D4 10400011 */  beq     $v0, $zero, .L808AE61C     
/* 00168 808AE5D8 8FA40024 */  lw      $a0, 0x0024($sp)           
/* 0016C 808AE5DC 26050024 */  addiu   $a1, $s0, 0x0024           ## $a1 = 00000024
/* 00170 808AE5E0 2406001E */  addiu   $a2, $zero, 0x001E         ## $a2 = 0000001E
/* 00174 808AE5E4 0C01AEB6 */  jal     Audio_PlaySoundAtPosition
              
/* 00178 808AE5E8 2407285A */  addiu   $a3, $zero, 0x285A         ## $a3 = 0000285A
/* 0017C 808AE5EC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00180 808AE5F0 0C00B56E */  jal     Actor_SetHeight
              
/* 00184 808AE5F4 3C054248 */  lui     $a1, 0x4248                ## $a1 = 42480000
/* 00188 808AE5F8 8FA40024 */  lw      $a0, 0x0024($sp)           
/* 0018C 808AE5FC 0C020120 */  jal     func_80080480              
/* 00190 808AE600 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 00194 808AE604 3C013F00 */  lui     $at, 0x3F00                ## $at = 3F000000
/* 00198 808AE608 44812000 */  mtc1    $at, $f4                   ## $f4 = 0.50
/* 0019C 808AE60C 3C0E808B */  lui     $t6, %hi(func_808AE630)    ## $t6 = 808B0000
/* 001A0 808AE610 25CEE630 */  addiu   $t6, $t6, %lo(func_808AE630) ## $t6 = 808AE630
/* 001A4 808AE614 AE0E0164 */  sw      $t6, 0x0164($s0)           ## 00000164
/* 001A8 808AE618 E6040068 */  swc1    $f4, 0x0068($s0)           ## 00000068
.L808AE61C:
/* 001AC 808AE61C 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 001B0 808AE620 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 001B4 808AE624 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 001B8 808AE628 03E00008 */  jr      $ra                        
/* 001BC 808AE62C 00000000 */  nop


