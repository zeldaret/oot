.late_rodata
glabel D_80B90FF8
    .float 29.999998

.text
glabel func_80B8EB60
/* 000E0 80B8EB60 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 000E4 80B8EB64 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 000E8 80B8EB68 AFA50034 */  sw      $a1, 0x0034($sp)           
/* 000EC 80B8EB6C C4840024 */  lwc1    $f4, 0x0024($a0)           ## 00000024
/* 000F0 80B8EB70 3C0180B9 */  lui     $at, %hi(D_80B90FF8)       ## $at = 80B90000
/* 000F4 80B8EB74 C4280FF8 */  lwc1    $f8, %lo(D_80B90FF8)($at)  
/* 000F8 80B8EB78 E7A40024 */  swc1    $f4, 0x0024($sp)           
/* 000FC 80B8EB7C C4860028 */  lwc1    $f6, 0x0028($a0)           ## 00000028
/* 00100 80B8EB80 00803825 */  or      $a3, $a0, $zero            ## $a3 = 00000000
/* 00104 80B8EB84 27AE0024 */  addiu   $t6, $sp, 0x0024           ## $t6 = FFFFFFF4
/* 00108 80B8EB88 46083280 */  add.s   $f10, $f6, $f8             
/* 0010C 80B8EB8C 27A60020 */  addiu   $a2, $sp, 0x0020           ## $a2 = FFFFFFF0
/* 00110 80B8EB90 E7AA0028 */  swc1    $f10, 0x0028($sp)          
/* 00114 80B8EB94 C490002C */  lwc1    $f16, 0x002C($a0)          ## 0000002C
/* 00118 80B8EB98 24A407C0 */  addiu   $a0, $a1, 0x07C0           ## $a0 = 000007C0
/* 0011C 80B8EB9C 24E50078 */  addiu   $a1, $a3, 0x0078           ## $a1 = 00000078
/* 00120 80B8EBA0 AFA70030 */  sw      $a3, 0x0030($sp)           
/* 00124 80B8EBA4 AFAE0010 */  sw      $t6, 0x0010($sp)           
/* 00128 80B8EBA8 0C00F269 */  jal     BgCheck_EntityRaycastFloor4              
/* 0012C 80B8EBAC E7B0002C */  swc1    $f16, 0x002C($sp)          
/* 00130 80B8EBB0 8FA70030 */  lw      $a3, 0x0030($sp)           
/* 00134 80B8EBB4 E4E00080 */  swc1    $f0, 0x0080($a3)           ## 00000080
/* 00138 80B8EBB8 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 0013C 80B8EBBC 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 00140 80B8EBC0 03E00008 */  jr      $ra                        
/* 00144 80B8EBC4 00000000 */  nop
