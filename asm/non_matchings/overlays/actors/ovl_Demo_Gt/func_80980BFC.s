.late_rodata
glabel D_80982B08
    .float 790.0

.text
glabel func_80980BFC
/* 0358C 80980BFC 27BDFFC8 */  addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
/* 03590 80980C00 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 03594 80980C04 94A21D74 */  lhu     $v0, 0x1D74($a1)           ## 00001D74
/* 03598 80980C08 240102E4 */  addiu   $at, $zero, 0x02E4         ## $at = 000002E4
/* 0359C 80980C0C 00A03825 */  or      $a3, $a1, $zero            ## $a3 = 00000000
/* 035A0 80980C10 10410005 */  beq     $v0, $at, .L80980C28       
/* 035A4 80980C14 3C0E8016 */  lui     $t6, %hi(gGameInfo)
/* 035A8 80980C18 8DCEFA90 */  lw      $t6, %lo(gGameInfo)($t6)
/* 035AC 80980C1C 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 035B0 80980C20 85CF145C */  lh      $t7, 0x145C($t6)           ## 8016145C
/* 035B4 80980C24 15E10016 */  bne     $t7, $at, .L80980C80       
.L80980C28:
/* 035B8 80980C28 3C018098 */  lui     $at, %hi(D_80982B08)       ## $at = 80980000
/* 035BC 80980C2C C4262B08 */  lwc1    $f6, %lo(D_80982B08)($at)  
/* 035C0 80980C30 C4840024 */  lwc1    $f4, 0x0024($a0)           ## 00000024
/* 035C4 80980C34 3C014270 */  lui     $at, 0x4270                ## $at = 42700000
/* 035C8 80980C38 44818000 */  mtc1    $at, $f16                  ## $f16 = 60.00
/* 035CC 80980C3C 46062200 */  add.s   $f8, $f4, $f6              
/* 035D0 80980C40 3C0141B8 */  lui     $at, 0x41B8                ## $at = 41B80000
/* 035D4 80980C44 44813000 */  mtc1    $at, $f6                   ## $f6 = 23.00
/* 035D8 80980C48 00E02825 */  or      $a1, $a3, $zero            ## $a1 = 00000000
/* 035DC 80980C4C E7A8001C */  swc1    $f8, 0x001C($sp)           
/* 035E0 80980C50 C48A0028 */  lwc1    $f10, 0x0028($a0)          ## 00000028
/* 035E4 80980C54 27A6001C */  addiu   $a2, $sp, 0x001C           ## $a2 = FFFFFFE4
/* 035E8 80980C58 46105480 */  add.s   $f18, $f10, $f16           
/* 035EC 80980C5C E7B20020 */  swc1    $f18, 0x0020($sp)          
/* 035F0 80980C60 C484002C */  lwc1    $f4, 0x002C($a0)           ## 0000002C
/* 035F4 80980C64 AFA7003C */  sw      $a3, 0x003C($sp)           
/* 035F8 80980C68 46062200 */  add.s   $f8, $f4, $f6              
/* 035FC 80980C6C 0C25F7DC */  jal     func_8097DF70              
/* 03600 80980C70 E7A80024 */  swc1    $f8, 0x0024($sp)           
/* 03604 80980C74 8FA4003C */  lw      $a0, 0x003C($sp)           
/* 03608 80980C78 0C25F5BE */  jal     func_8097D6F8              
/* 0360C 80980C7C 27A5001C */  addiu   $a1, $sp, 0x001C           ## $a1 = FFFFFFE4
.L80980C80:
/* 03610 80980C80 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 03614 80980C84 27BD0038 */  addiu   $sp, $sp, 0x0038           ## $sp = 00000000
/* 03618 80980C88 03E00008 */  jr      $ra                        
/* 0361C 80980C8C 00000000 */  nop
