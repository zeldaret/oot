glabel func_80B54CE8
/* 01938 80B54CE8 27BDFFB8 */  addiu   $sp, $sp, 0xFFB8           ## $sp = FFFFFFB8
/* 0193C 80B54CEC 2401000D */  addiu   $at, $zero, 0x000D         ## $at = 0000000D
/* 01940 80B54CF0 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 01944 80B54CF4 AFA40048 */  sw      $a0, 0x0048($sp)           
/* 01948 80B54CF8 AFA60050 */  sw      $a2, 0x0050($sp)           
/* 0194C 80B54CFC 14A1000F */  bne     $a1, $at, .L80B54D3C       
/* 01950 80B54D00 AFA70054 */  sw      $a3, 0x0054($sp)           
/* 01954 80B54D04 3C0E80B6 */  lui     $t6, %hi(D_80B5A46C)       ## $t6 = 80B60000
/* 01958 80B54D08 25CEA46C */  addiu   $t6, $t6, %lo(D_80B5A46C)  ## $t6 = 80B5A46C
/* 0195C 80B54D0C 8DD80000 */  lw      $t8, 0x0000($t6)           ## 80B5A46C
/* 01960 80B54D10 8FA20058 */  lw      $v0, 0x0058($sp)           
/* 01964 80B54D14 27A40034 */  addiu   $a0, $sp, 0x0034           ## $a0 = FFFFFFEC
/* 01968 80B54D18 AC980000 */  sw      $t8, 0x0000($a0)           ## FFFFFFEC
/* 0196C 80B54D1C 8DCF0004 */  lw      $t7, 0x0004($t6)           ## 80B5A470
/* 01970 80B54D20 2445031C */  addiu   $a1, $v0, 0x031C           ## $a1 = 0000031C
/* 01974 80B54D24 AC8F0004 */  sw      $t7, 0x0004($a0)           ## FFFFFFF0
/* 01978 80B54D28 8DD80008 */  lw      $t8, 0x0008($t6)           ## 80B5A474
/* 0197C 80B54D2C 0C0346BD */  jal     Matrix_MultVec3f              
/* 01980 80B54D30 AC980008 */  sw      $t8, 0x0008($a0)           ## FFFFFFF4
/* 01984 80B54D34 1000001C */  beq     $zero, $zero, .L80B54DA8   
/* 01988 80B54D38 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80B54D3C:
/* 0198C 80B54D3C 2401000E */  addiu   $at, $zero, 0x000E         ## $at = 0000000E
/* 01990 80B54D40 14A10018 */  bne     $a1, $at, .L80B54DA4       
/* 01994 80B54D44 3C1980B6 */  lui     $t9, %hi(D_80B5A478)       ## $t9 = 80B60000
/* 01998 80B54D48 2739A478 */  addiu   $t9, $t9, %lo(D_80B5A478)  ## $t9 = 80B5A478
/* 0199C 80B54D4C 8F290000 */  lw      $t1, 0x0000($t9)           ## 80B5A478
/* 019A0 80B54D50 27A40024 */  addiu   $a0, $sp, 0x0024           ## $a0 = FFFFFFDC
/* 019A4 80B54D54 27A50018 */  addiu   $a1, $sp, 0x0018           ## $a1 = FFFFFFD0
/* 019A8 80B54D58 AC890000 */  sw      $t1, 0x0000($a0)           ## FFFFFFDC
/* 019AC 80B54D5C 8F280004 */  lw      $t0, 0x0004($t9)           ## 80B5A47C
/* 019B0 80B54D60 AC880004 */  sw      $t0, 0x0004($a0)           ## FFFFFFE0
/* 019B4 80B54D64 8F290008 */  lw      $t1, 0x0008($t9)           ## 80B5A480
/* 019B8 80B54D68 0C0346BD */  jal     Matrix_MultVec3f              
/* 019BC 80B54D6C AC890008 */  sw      $t1, 0x0008($a0)           ## FFFFFFE4
/* 019C0 80B54D70 8FA20058 */  lw      $v0, 0x0058($sp)           
/* 019C4 80B54D74 C7A40018 */  lwc1    $f4, 0x0018($sp)           
/* 019C8 80B54D78 844A0030 */  lh      $t2, 0x0030($v0)           ## 00000030
/* 019CC 80B54D7C E4440038 */  swc1    $f4, 0x0038($v0)           ## 00000038
/* 019D0 80B54D80 C7A6001C */  lwc1    $f6, 0x001C($sp)           
/* 019D4 80B54D84 844B0032 */  lh      $t3, 0x0032($v0)           ## 00000032
/* 019D8 80B54D88 844C0034 */  lh      $t4, 0x0034($v0)           ## 00000034
/* 019DC 80B54D8C E446003C */  swc1    $f6, 0x003C($v0)           ## 0000003C
/* 019E0 80B54D90 C7A80020 */  lwc1    $f8, 0x0020($sp)           
/* 019E4 80B54D94 A44A0044 */  sh      $t2, 0x0044($v0)           ## 00000044
/* 019E8 80B54D98 A44B0046 */  sh      $t3, 0x0046($v0)           ## 00000046
/* 019EC 80B54D9C A44C0048 */  sh      $t4, 0x0048($v0)           ## 00000048
/* 019F0 80B54DA0 E4480040 */  swc1    $f8, 0x0040($v0)           ## 00000040
.L80B54DA4:
/* 019F4 80B54DA4 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80B54DA8:
/* 019F8 80B54DA8 27BD0048 */  addiu   $sp, $sp, 0x0048           ## $sp = 00000000
/* 019FC 80B54DAC 03E00008 */  jr      $ra                        
/* 01A00 80B54DB0 00000000 */  nop
