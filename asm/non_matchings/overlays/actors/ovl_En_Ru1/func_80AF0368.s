glabel func_80AF0368
/* 05758 80AF0368 27BDFFC8 */  addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
/* 0575C 80AF036C 2401000F */  addiu   $at, $zero, 0x000F         ## $at = 0000000F
/* 05760 80AF0370 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 05764 80AF0374 AFA40038 */  sw      $a0, 0x0038($sp)           
/* 05768 80AF0378 AFA60040 */  sw      $a2, 0x0040($sp)           
/* 0576C 80AF037C 14A10019 */  bne     $a1, $at, .L80AF03E4       
/* 05770 80AF0380 AFA70044 */  sw      $a3, 0x0044($sp)           
/* 05774 80AF0384 3C0E80AF */  lui     $t6, %hi(D_80AF19F8)       ## $t6 = 80AF0000
/* 05778 80AF0388 25CE19F8 */  addiu   $t6, $t6, %lo(D_80AF19F8)  ## $t6 = 80AF19F8
/* 0577C 80AF038C 8DD80000 */  lw      $t8, 0x0000($t6)           ## 80AF19F8
/* 05780 80AF0390 27A40028 */  addiu   $a0, $sp, 0x0028           ## $a0 = FFFFFFF0
/* 05784 80AF0394 27A5001C */  addiu   $a1, $sp, 0x001C           ## $a1 = FFFFFFE4
/* 05788 80AF0398 AC980000 */  sw      $t8, 0x0000($a0)           ## FFFFFFF0
/* 0578C 80AF039C 8DCF0004 */  lw      $t7, 0x0004($t6)           ## 80AF19FC
/* 05790 80AF03A0 AC8F0004 */  sw      $t7, 0x0004($a0)           ## FFFFFFF4
/* 05794 80AF03A4 8DD80008 */  lw      $t8, 0x0008($t6)           ## 80AF1A00
/* 05798 80AF03A8 0C0346BD */  jal     Matrix_MultVec3f              
/* 0579C 80AF03AC AC980008 */  sw      $t8, 0x0008($a0)           ## FFFFFFF8
/* 057A0 80AF03B0 8FA20048 */  lw      $v0, 0x0048($sp)           
/* 057A4 80AF03B4 C7A4001C */  lwc1    $f4, 0x001C($sp)           
/* 057A8 80AF03B8 84590030 */  lh      $t9, 0x0030($v0)           ## 00000030
/* 057AC 80AF03BC E4440038 */  swc1    $f4, 0x0038($v0)           ## 00000038
/* 057B0 80AF03C0 C7A60020 */  lwc1    $f6, 0x0020($sp)           
/* 057B4 80AF03C4 84480032 */  lh      $t0, 0x0032($v0)           ## 00000032
/* 057B8 80AF03C8 84490034 */  lh      $t1, 0x0034($v0)           ## 00000034
/* 057BC 80AF03CC E446003C */  swc1    $f6, 0x003C($v0)           ## 0000003C
/* 057C0 80AF03D0 C7A80024 */  lwc1    $f8, 0x0024($sp)           
/* 057C4 80AF03D4 A4590044 */  sh      $t9, 0x0044($v0)           ## 00000044
/* 057C8 80AF03D8 A4480046 */  sh      $t0, 0x0046($v0)           ## 00000046
/* 057CC 80AF03DC A4490048 */  sh      $t1, 0x0048($v0)           ## 00000048
/* 057D0 80AF03E0 E4480040 */  swc1    $f8, 0x0040($v0)           ## 00000040
.L80AF03E4:
/* 057D4 80AF03E4 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 057D8 80AF03E8 27BD0038 */  addiu   $sp, $sp, 0x0038           ## $sp = 00000000
/* 057DC 80AF03EC 03E00008 */  jr      $ra                        
/* 057E0 80AF03F0 00000000 */  nop
