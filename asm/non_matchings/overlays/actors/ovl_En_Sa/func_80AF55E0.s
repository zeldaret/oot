glabel func_80AF55E0
/* 00080 80AF55E0 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00084 80AF55E4 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00088 80AF55E8 00A03025 */  or      $a2, $a1, $zero            ## $a2 = 00000000
/* 0008C 80AF55EC AFA6001C */  sw      $a2, 0x001C($sp)           
/* 00090 80AF55F0 0C01B0D8 */  jal     Text_GetFaceReaction              
/* 00094 80AF55F4 24050010 */  addiu   $a1, $zero, 0x0010         ## $a1 = 00000010
/* 00098 80AF55F8 8FA6001C */  lw      $a2, 0x001C($sp)           
/* 0009C 80AF55FC 10400003 */  beq     $v0, $zero, .L80AF560C     
/* 000A0 80AF5600 3043FFFF */  andi    $v1, $v0, 0xFFFF           ## $v1 = 00000000
/* 000A4 80AF5604 10000037 */  beq     $zero, $zero, .L80AF56E4   
/* 000A8 80AF5608 00601025 */  or      $v0, $v1, $zero            ## $v0 = 00000000
.L80AF560C:
/* 000AC 80AF560C 3C028016 */  lui     $v0, %hi(gSaveContext)
/* 000B0 80AF5610 3C048012 */  lui     $a0, %hi(gBitFlags)
/* 000B4 80AF5614 24847120 */  addiu   $a0, %lo(gBitFlags)
/* 000B8 80AF5618 2442E660 */  addiu   $v0, %lo(gSaveContext)
/* 000BC 80AF561C 8C4300A4 */  lw      $v1, 0x00A4($v0)           ## 8015E704
/* 000C0 80AF5620 8C8E0038 */  lw      $t6, 0x0038($a0)           ## 80127158
/* 000C4 80AF5624 01C37824 */  and     $t7, $t6, $v1              
/* 000C8 80AF5628 51E00004 */  beql    $t7, $zero, .L80AF563C     
/* 000CC 80AF562C 8C980048 */  lw      $t8, 0x0048($a0)           ## 80127168
/* 000D0 80AF5630 1000002C */  beq     $zero, $zero, .L80AF56E4   
/* 000D4 80AF5634 240210AD */  addiu   $v0, $zero, 0x10AD         ## $v0 = 000010AD
/* 000D8 80AF5638 8C980048 */  lw      $t8, 0x0048($a0)           ## 80127168
.L80AF563C:
/* 000DC 80AF563C 0303C824 */  and     $t9, $t8, $v1              
/* 000E0 80AF5640 5320000C */  beql    $t9, $zero, .L80AF5674     
/* 000E4 80AF5644 944A0ED4 */  lhu     $t2, 0x0ED4($v0)           ## 00001F81
/* 000E8 80AF5648 A0C00208 */  sb      $zero, 0x0208($a2)         ## 00000208
/* 000EC 80AF564C A0C00209 */  sb      $zero, 0x0209($a2)         ## 00000209
/* 000F0 80AF5650 94480EF8 */  lhu     $t0, 0x0EF8($v0)           ## 00001FA5
/* 000F4 80AF5654 31090020 */  andi    $t1, $t0, 0x0020           ## $t1 = 00000000
/* 000F8 80AF5658 11200003 */  beq     $t1, $zero, .L80AF5668     
/* 000FC 80AF565C 00000000 */  nop
/* 00100 80AF5660 10000020 */  beq     $zero, $zero, .L80AF56E4   
/* 00104 80AF5664 24021048 */  addiu   $v0, $zero, 0x1048         ## $v0 = 00001048
.L80AF5668:
/* 00108 80AF5668 1000001E */  beq     $zero, $zero, .L80AF56E4   
/* 0010C 80AF566C 24021047 */  addiu   $v0, $zero, 0x1047         ## $v0 = 00001047
/* 00110 80AF5670 944A0ED4 */  lhu     $t2, 0x0ED4($v0)           ## 00001F1B
.L80AF5674:
/* 00114 80AF5674 314B0004 */  andi    $t3, $t2, 0x0004           ## $t3 = 00000000
/* 00118 80AF5678 5160000C */  beql    $t3, $zero, .L80AF56AC     
/* 0011C 80AF567C 944E0EF8 */  lhu     $t6, 0x0EF8($v0)           ## 00001F3F
/* 00120 80AF5680 A0C00208 */  sb      $zero, 0x0208($a2)         ## 00000208
/* 00124 80AF5684 A0C00209 */  sb      $zero, 0x0209($a2)         ## 00000209
/* 00128 80AF5688 944C0EF8 */  lhu     $t4, 0x0EF8($v0)           ## 00001F3F
/* 0012C 80AF568C 318D0008 */  andi    $t5, $t4, 0x0008           ## $t5 = 00000000
/* 00130 80AF5690 11A00003 */  beq     $t5, $zero, .L80AF56A0     
/* 00134 80AF5694 00000000 */  nop
/* 00138 80AF5698 10000012 */  beq     $zero, $zero, .L80AF56E4   
/* 0013C 80AF569C 24021032 */  addiu   $v0, $zero, 0x1032         ## $v0 = 00001032
.L80AF56A0:
/* 00140 80AF56A0 10000010 */  beq     $zero, $zero, .L80AF56E4   
/* 00144 80AF56A4 24021031 */  addiu   $v0, $zero, 0x1031         ## $v0 = 00001031
/* 00148 80AF56A8 944E0EF8 */  lhu     $t6, 0x0EF8($v0)           ## 00001F29
.L80AF56AC:
/* 0014C 80AF56AC 31CF0001 */  andi    $t7, $t6, 0x0001           ## $t7 = 00000000
/* 00150 80AF56B0 51E0000C */  beql    $t7, $zero, .L80AF56E4     
/* 00154 80AF56B4 24021001 */  addiu   $v0, $zero, 0x1001         ## $v0 = 00001001
/* 00158 80AF56B8 A0C00208 */  sb      $zero, 0x0208($a2)         ## 00000208
/* 0015C 80AF56BC A0C00209 */  sb      $zero, 0x0209($a2)         ## 00000209
/* 00160 80AF56C0 94580EF8 */  lhu     $t8, 0x0EF8($v0)           ## 00001EF9
/* 00164 80AF56C4 33190002 */  andi    $t9, $t8, 0x0002           ## $t9 = 00000000
/* 00168 80AF56C8 13200003 */  beq     $t9, $zero, .L80AF56D8     
/* 0016C 80AF56CC 00000000 */  nop
/* 00170 80AF56D0 10000004 */  beq     $zero, $zero, .L80AF56E4   
/* 00174 80AF56D4 24021003 */  addiu   $v0, $zero, 0x1003         ## $v0 = 00001003
.L80AF56D8:
/* 00178 80AF56D8 10000002 */  beq     $zero, $zero, .L80AF56E4   
/* 0017C 80AF56DC 24021002 */  addiu   $v0, $zero, 0x1002         ## $v0 = 00001002
/* 00180 80AF56E0 24021001 */  addiu   $v0, $zero, 0x1001         ## $v0 = 00001001
.L80AF56E4:
/* 00184 80AF56E4 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00188 80AF56E8 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 0018C 80AF56EC 03E00008 */  jr      $ra                        
/* 00190 80AF56F0 00000000 */  nop
