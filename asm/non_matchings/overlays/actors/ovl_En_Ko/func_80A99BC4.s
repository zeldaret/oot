glabel func_80A99BC4
/* 02E14 80A99BC4 27BDFFC8 */  addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
/* 02E18 80A99BC8 3C0F80AA */  lui     $t7, %hi(D_80A9A774)       ## $t7 = 80AA0000
/* 02E1C 80A99BCC AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 02E20 80A99BD0 AFA60040 */  sw      $a2, 0x0040($sp)           
/* 02E24 80A99BD4 AFA70044 */  sw      $a3, 0x0044($sp)           
/* 02E28 80A99BD8 25EFA774 */  addiu   $t7, $t7, %lo(D_80A9A774)  ## $t7 = 80A9A774
/* 02E2C 80A99BDC 8DF90000 */  lw      $t9, 0x0000($t7)           ## 80A9A774
/* 02E30 80A99BE0 27AE0024 */  addiu   $t6, $sp, 0x0024           ## $t6 = FFFFFFEC
/* 02E34 80A99BE4 8DF80004 */  lw      $t8, 0x0004($t7)           ## 80A9A778
/* 02E38 80A99BE8 ADD90000 */  sw      $t9, 0x0000($t6)           ## FFFFFFEC
/* 02E3C 80A99BEC 8DF90008 */  lw      $t9, 0x0008($t7)           ## 80A9A77C
/* 02E40 80A99BF0 24010007 */  addiu   $at, $zero, 0x0007         ## $at = 00000007
/* 02E44 80A99BF4 ADD80004 */  sw      $t8, 0x0004($t6)           ## FFFFFFF0
/* 02E48 80A99BF8 14A1001C */  bne     $a1, $at, .L80A99C6C       
/* 02E4C 80A99BFC ADD90008 */  sw      $t9, 0x0008($t6)           ## FFFFFFF4
/* 02E50 80A99C00 8FA6004C */  lw      $a2, 0x004C($sp)           
/* 02E54 80A99C04 8FA70048 */  lw      $a3, 0x0048($sp)           
/* 02E58 80A99C08 3C0BDB06 */  lui     $t3, 0xDB06                ## $t3 = DB060000
/* 02E5C 80A99C0C 8CC30000 */  lw      $v1, 0x0000($a2)           ## 00000000
/* 02E60 80A99C10 356B0018 */  ori     $t3, $t3, 0x0018           ## $t3 = DB060018
/* 02E64 80A99C14 24080044 */  addiu   $t0, $zero, 0x0044         ## $t0 = 00000044
/* 02E68 80A99C18 246A0008 */  addiu   $t2, $v1, 0x0008           ## $t2 = 00000008
/* 02E6C 80A99C1C ACCA0000 */  sw      $t2, 0x0000($a2)           ## 00000000
/* 02E70 80A99C20 AC6B0000 */  sw      $t3, 0x0000($v1)           ## 00000000
/* 02E74 80A99C24 80EC0195 */  lb      $t4, 0x0195($a3)           ## 00000195
/* 02E78 80A99C28 3C090001 */  lui     $t1, 0x0001                ## $t1 = 00010000
/* 02E7C 80A99C2C 3C018000 */  lui     $at, 0x8000                ## $at = 80000000
/* 02E80 80A99C30 01880019 */  multu   $t4, $t0                   
/* 02E84 80A99C34 00006812 */  mflo    $t5                        
/* 02E88 80A99C38 008D7021 */  addu    $t6, $a0, $t5              
/* 02E8C 80A99C3C 01C97821 */  addu    $t7, $t6, $t1              
/* 02E90 80A99C40 8DF817B4 */  lw      $t8, 0x17B4($t7)           ## 80A9BF28
/* 02E94 80A99C44 AC780004 */  sw      $t8, 0x0004($v1)           ## 00000004
/* 02E98 80A99C48 80F90195 */  lb      $t9, 0x0195($a3)           ## 00000195
/* 02E9C 80A99C4C 03280019 */  multu   $t9, $t0                   
/* 02EA0 80A99C50 00005012 */  mflo    $t2                        
/* 02EA4 80A99C54 008A5821 */  addu    $t3, $a0, $t2              
/* 02EA8 80A99C58 01696021 */  addu    $t4, $t3, $t1              
/* 02EAC 80A99C5C 8D8D17B4 */  lw      $t5, 0x17B4($t4)           ## 000017B4
/* 02EB0 80A99C60 01A17021 */  addu    $t6, $t5, $at              
/* 02EB4 80A99C64 3C018016 */  lui     $at, %hi(gSegments+0x18)
/* 02EB8 80A99C68 AC2E6FC0 */  sw      $t6, %lo(gSegments+0x18)($at)
.L80A99C6C:
/* 02EBC 80A99C6C 2401000F */  addiu   $at, $zero, 0x000F         ## $at = 0000000F
/* 02EC0 80A99C70 14A10004 */  bne     $a1, $at, .L80A99C84       
/* 02EC4 80A99C74 8FA70048 */  lw      $a3, 0x0048($sp)           
/* 02EC8 80A99C78 27A40024 */  addiu   $a0, $sp, 0x0024           ## $a0 = FFFFFFEC
/* 02ECC 80A99C7C 0C0346BD */  jal     Matrix_MultVec3f              
/* 02ED0 80A99C80 24E50038 */  addiu   $a1, $a3, 0x0038           ## $a1 = 00000038
.L80A99C84:
/* 02ED4 80A99C84 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 02ED8 80A99C88 27BD0038 */  addiu   $sp, $sp, 0x0038           ## $sp = 00000000
/* 02EDC 80A99C8C 03E00008 */  jr      $ra                        
/* 02EE0 80A99C90 00000000 */  nop
