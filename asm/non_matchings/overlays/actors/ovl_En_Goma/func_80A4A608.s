glabel func_80A4A608
/* 01748 80A4A608 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 0174C 80A4A60C AFBF001C */  sw      $ra, 0x001C($sp)           
/* 01750 80A4A610 AFB10018 */  sw      $s1, 0x0018($sp)           
/* 01754 80A4A614 AFB00014 */  sw      $s0, 0x0014($sp)           
/* 01758 80A4A618 AFA5002C */  sw      $a1, 0x002C($sp)           
/* 0175C 80A4A61C 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 01760 80A4A620 0C00B69E */  jal     func_8002DA78              
/* 01764 80A4A624 8CA51C44 */  lw      $a1, 0x1C44($a1)           ## 00001C44
/* 01768 80A4A628 860F00B6 */  lh      $t7, 0x00B6($s0)           ## 000000B6
/* 0176C 80A4A62C 8FB8002C */  lw      $t8, 0x002C($sp)           
/* 01770 80A4A630 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01774 80A4A634 004F8823 */  subu    $s1, $v0, $t7              
/* 01778 80A4A638 00118C00 */  sll     $s1, $s1, 16               
/* 0177C 80A4A63C 00118C03 */  sra     $s1, $s1, 16               
/* 01780 80A4A640 0C00B6B8 */  jal     func_8002DAE0              
/* 01784 80A4A644 8F051C44 */  lw      $a1, 0x1C44($t8)           ## 00001C44
/* 01788 80A4A648 861900B4 */  lh      $t9, 0x00B4($s0)           ## 000000B4
/* 0178C 80A4A64C 2A211771 */  slti    $at, $s1, 0x1771           
/* 01790 80A4A650 260402BC */  addiu   $a0, $s0, 0x02BC           ## $a0 = 000002BC
/* 01794 80A4A654 00594023 */  subu    $t0, $v0, $t9              
/* 01798 80A4A658 14200002 */  bne     $at, $zero, .L80A4A664     
/* 0179C 80A4A65C A7A80026 */  sh      $t0, 0x0026($sp)           
/* 017A0 80A4A660 24111770 */  addiu   $s1, $zero, 0x1770         ## $s1 = 00001770
.L80A4A664:
/* 017A4 80A4A664 2A21E890 */  slti    $at, $s1, 0xE890           
/* 017A8 80A4A668 10200002 */  beq     $at, $zero, .L80A4A674     
/* 017AC 80A4A66C 24060003 */  addiu   $a2, $zero, 0x0003         ## $a2 = 00000003
/* 017B0 80A4A670 2411E890 */  addiu   $s1, $zero, 0xE890         ## $s1 = FFFFE890
.L80A4A674:
/* 017B4 80A4A674 00112C00 */  sll     $a1, $s1, 16               
/* 017B8 80A4A678 00052C03 */  sra     $a1, $a1, 16               
/* 017BC 80A4A67C 0C01E1EF */  jal     Math_SmoothScaleMaxS
              
/* 017C0 80A4A680 240707D0 */  addiu   $a3, $zero, 0x07D0         ## $a3 = 000007D0
/* 017C4 80A4A684 260402BA */  addiu   $a0, $s0, 0x02BA           ## $a0 = 000002BA
/* 017C8 80A4A688 87A50026 */  lh      $a1, 0x0026($sp)           
/* 017CC 80A4A68C 24060003 */  addiu   $a2, $zero, 0x0003         ## $a2 = 00000003
/* 017D0 80A4A690 0C01E1EF */  jal     Math_SmoothScaleMaxS
              
/* 017D4 80A4A694 240707D0 */  addiu   $a3, $zero, 0x07D0         ## $a3 = 000007D0
/* 017D8 80A4A698 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 017DC 80A4A69C 8FB00014 */  lw      $s0, 0x0014($sp)           
/* 017E0 80A4A6A0 8FB10018 */  lw      $s1, 0x0018($sp)           
/* 017E4 80A4A6A4 03E00008 */  jr      $ra                        
/* 017E8 80A4A6A8 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000


