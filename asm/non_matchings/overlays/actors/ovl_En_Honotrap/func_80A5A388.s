.late_rodata
glabel D_80A5B12C
 .word 0x3B83126F
glabel D_80A5B130
 .word 0x3B9D4952

.text
glabel func_80A5A388
/* 00758 80A5A388 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 0075C 80A5A38C AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00760 80A5A390 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 00764 80A5A394 848E001C */  lh      $t6, 0x001C($a0)           ## 0000001C
/* 00768 80A5A398 00803825 */  or      $a3, $a0, $zero            ## $a3 = 00000000
/* 0076C 80A5A39C 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 00770 80A5A3A0 15C10004 */  bne     $t6, $at, .L80A5A3B4       
/* 00774 80A5A3A4 24E40050 */  addiu   $a0, $a3, 0x0050           ## $a0 = 00000050
/* 00778 80A5A3A8 3C0180A6 */  lui     $at, %hi(D_80A5B12C)       ## $at = 80A60000
/* 0077C 80A5A3AC 10000003 */  beq     $zero, $zero, .L80A5A3BC   
/* 00780 80A5A3B0 C420B12C */  lwc1    $f0, %lo(D_80A5B12C)($at)  
.L80A5A3B4:
/* 00784 80A5A3B4 3C0180A6 */  lui     $at, %hi(D_80A5B130)       ## $at = 80A60000
/* 00788 80A5A3B8 C420B130 */  lwc1    $f0, %lo(D_80A5B130)($at)  
.L80A5A3BC:
/* 0078C 80A5A3BC 44050000 */  mfc1    $a1, $f0                   
/* 00790 80A5A3C0 3C063A1D */  lui     $a2, 0x3A1D                ## $a2 = 3A1D0000
/* 00794 80A5A3C4 34C64952 */  ori     $a2, $a2, 0x4952           ## $a2 = 3A1D4952
/* 00798 80A5A3C8 0C01DE80 */  jal     Math_ApproxF
              
/* 0079C 80A5A3CC AFA70018 */  sw      $a3, 0x0018($sp)           
/* 007A0 80A5A3D0 8FA70018 */  lw      $a3, 0x0018($sp)           
/* 007A4 80A5A3D4 C4E00050 */  lwc1    $f0, 0x0050($a3)           ## 00000050
/* 007A8 80A5A3D8 E4E00054 */  swc1    $f0, 0x0054($a3)           ## 00000054
/* 007AC 80A5A3DC 1040000B */  beq     $v0, $zero, .L80A5A40C     
/* 007B0 80A5A3E0 E4E00058 */  swc1    $f0, 0x0058($a3)           ## 00000058
/* 007B4 80A5A3E4 84EF001C */  lh      $t7, 0x001C($a3)           ## 0000001C
/* 007B8 80A5A3E8 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 007BC 80A5A3EC 15E10005 */  bne     $t7, $at, .L80A5A404       
/* 007C0 80A5A3F0 00000000 */  nop
/* 007C4 80A5A3F4 0C296972 */  jal     func_80A5A5C8              
/* 007C8 80A5A3F8 00E02025 */  or      $a0, $a3, $zero            ## $a0 = 00000000
/* 007CC 80A5A3FC 10000004 */  beq     $zero, $zero, .L80A5A410   
/* 007D0 80A5A400 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80A5A404:
/* 007D4 80A5A404 0C296907 */  jal     func_80A5A41C              
/* 007D8 80A5A408 00E02025 */  or      $a0, $a3, $zero            ## $a0 = 00000000
.L80A5A40C:
/* 007DC 80A5A40C 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80A5A410:
/* 007E0 80A5A410 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 007E4 80A5A414 03E00008 */  jr      $ra                        
/* 007E8 80A5A418 00000000 */  nop
