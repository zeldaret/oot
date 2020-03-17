glabel func_80A97BC0
/* 00E10 80A97BC0 27BDFEE0 */  addiu   $sp, $sp, 0xFEE0           ## $sp = FFFFFEE0
/* 00E14 80A97BC4 3C0F80AA */  lui     $t7, %hi(D_80A9A62C)       ## $t7 = 80AA0000
/* 00E18 80A97BC8 25EFA62C */  addiu   $t7, $t7, %lo(D_80A9A62C)  ## $t7 = 80A9A62C
/* 00E1C 80A97BCC AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00E20 80A97BD0 25E800FC */  addiu   $t0, $t7, 0x00FC           ## $t0 = 80A9A728
/* 00E24 80A97BD4 27AE001C */  addiu   $t6, $sp, 0x001C           ## $t6 = FFFFFEFC
.L80A97BD8:
/* 00E28 80A97BD8 8DF90000 */  lw      $t9, 0x0000($t7)           ## 80A9A62C
/* 00E2C 80A97BDC 25EF000C */  addiu   $t7, $t7, 0x000C           ## $t7 = 80A9A638
/* 00E30 80A97BE0 25CE000C */  addiu   $t6, $t6, 0x000C           ## $t6 = FFFFFF08
/* 00E34 80A97BE4 ADD9FFF4 */  sw      $t9, -0x000C($t6)          ## FFFFFEFC
/* 00E38 80A97BE8 8DF8FFF8 */  lw      $t8, -0x0008($t7)          ## 80A9A630
/* 00E3C 80A97BEC ADD8FFF8 */  sw      $t8, -0x0008($t6)          ## FFFFFF00
/* 00E40 80A97BF0 8DF9FFFC */  lw      $t9, -0x0004($t7)          ## 80A9A634
/* 00E44 80A97BF4 15E8FFF8 */  bne     $t7, $t0, .L80A97BD8       
/* 00E48 80A97BF8 ADD9FFFC */  sw      $t9, -0x0004($t6)          ## FFFFFF04
/* 00E4C 80A97BFC 8DF90000 */  lw      $t9, 0x0000($t7)           ## 80A9A638
/* 00E50 80A97C00 8DF80004 */  lw      $t8, 0x0004($t7)           ## 80A9A63C
/* 00E54 80A97C04 3C098016 */  lui     $t1, 0x8016                ## $t1 = 80160000
/* 00E58 80A97C08 ADD90000 */  sw      $t9, 0x0000($t6)           ## FFFFFF08
/* 00E5C 80A97C0C ADD80004 */  sw      $t8, 0x0004($t6)           ## FFFFFF0C
/* 00E60 80A97C10 8D29E664 */  lw      $t1, -0x199C($t1)          ## 8015E664
/* 00E64 80A97C14 15200009 */  bne     $t1, $zero, .L80A97C3C     
/* 00E68 80A97C18 00000000 */  nop
/* 00E6C 80A97C1C 848A001C */  lh      $t2, 0x001C($a0)           ## 0000001C
/* 00E70 80A97C20 2401000C */  addiu   $at, $zero, 0x000C         ## $at = 0000000C
/* 00E74 80A97C24 314B00FF */  andi    $t3, $t2, 0x00FF           ## $t3 = 00000000
/* 00E78 80A97C28 15610004 */  bne     $t3, $at, .L80A97C3C       
/* 00E7C 80A97C2C 3C01C1A0 */  lui     $at, 0xC1A0                ## $at = C1A00000
/* 00E80 80A97C30 44810000 */  mtc1    $at, $f0                   ## $f0 = -20.00
/* 00E84 80A97C34 1000000E */  beq     $zero, $zero, .L80A97C70   
/* 00E88 80A97C38 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80A97C3C:
/* 00E8C 80A97C3C 0C2A5ECE */  jal     func_80A97B38              
/* 00E90 80A97C40 AFA40120 */  sw      $a0, 0x0120($sp)           
/* 00E94 80A97C44 8FA40120 */  lw      $a0, 0x0120($sp)           
/* 00E98 80A97C48 00027880 */  sll     $t7, $v0,  2               
/* 00E9C 80A97C4C 848C001C */  lh      $t4, 0x001C($a0)           ## 0000001C
/* 00EA0 80A97C50 318D00FF */  andi    $t5, $t4, 0x00FF           ## $t5 = 00000000
/* 00EA4 80A97C54 000D4080 */  sll     $t0, $t5,  2               
/* 00EA8 80A97C58 010D4021 */  addu    $t0, $t0, $t5              
/* 00EAC 80A97C5C 00084080 */  sll     $t0, $t0,  2               
/* 00EB0 80A97C60 010F7021 */  addu    $t6, $t0, $t7              
/* 00EB4 80A97C64 03AEC021 */  addu    $t8, $sp, $t6              
/* 00EB8 80A97C68 C700001C */  lwc1    $f0, 0x001C($t8)           ## 0000001C
/* 00EBC 80A97C6C 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80A97C70:
/* 00EC0 80A97C70 27BD0120 */  addiu   $sp, $sp, 0x0120           ## $sp = 00000000
/* 00EC4 80A97C74 03E00008 */  jr      $ra                        
/* 00EC8 80A97C78 00000000 */  nop


