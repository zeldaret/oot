glabel func_80A0BE34
/* 00774 80A0BE34 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 00778 80A0BE38 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 0077C 80A0BE3C AFA40020 */  sw      $a0, 0x0020($sp)           
/* 00780 80A0BE40 0C282F5E */  jal     func_80A0BD78              
/* 00784 80A0BE44 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 00788 80A0BE48 8FA40020 */  lw      $a0, 0x0020($sp)           
/* 0078C 80A0BE4C 10400003 */  beq     $v0, $zero, .L80A0BE5C     
/* 00790 80A0BE50 8FA60024 */  lw      $a2, 0x0024($sp)           
/* 00794 80A0BE54 1000000F */  beq     $zero, $zero, .L80A0BE94   
/* 00798 80A0BE58 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80A0BE5C:
/* 0079C 80A0BE5C 848E04C4 */  lh      $t6, 0x04C4($a0)           ## 000004C4
/* 007A0 80A0BE60 51C00004 */  beql    $t6, $zero, .L80A0BE74     
/* 007A4 80A0BE64 8CC51C44 */  lw      $a1, 0x1C44($a2)           ## 00001C44
/* 007A8 80A0BE68 10000009 */  beq     $zero, $zero, .L80A0BE90   
/* 007AC 80A0BE6C 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 007B0 80A0BE70 8CC51C44 */  lw      $a1, 0x1C44($a2)           ## 00001C44
.L80A0BE74:
/* 007B4 80A0BE74 0C282F1C */  jal     func_80A0BC70              
/* 007B8 80A0BE78 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 007BC 80A0BE7C 14400003 */  bne     $v0, $zero, .L80A0BE8C     
/* 007C0 80A0BE80 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 007C4 80A0BE84 10000002 */  beq     $zero, $zero, .L80A0BE90   
/* 007C8 80A0BE88 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L80A0BE8C:
/* 007CC 80A0BE8C 00A01025 */  or      $v0, $a1, $zero            ## $v0 = 00000000
.L80A0BE90:
/* 007D0 80A0BE90 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80A0BE94:
/* 007D4 80A0BE94 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 007D8 80A0BE98 03E00008 */  jr      $ra                        
/* 007DC 80A0BE9C 00000000 */  nop
