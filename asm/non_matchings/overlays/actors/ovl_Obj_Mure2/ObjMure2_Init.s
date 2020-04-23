glabel ObjMure2_Init
/* 00688 80B9A5C8 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 0068C 80B9A5CC AFA5001C */  sw      $a1, 0x001C($sp)           
/* 00690 80B9A5D0 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00694 80B9A5D4 3C0580BA */  lui     $a1, %hi(D_80B9A86C)       ## $a1 = 80BA0000
/* 00698 80B9A5D8 24A5A86C */  addiu   $a1, $a1, %lo(D_80B9A86C)  ## $a1 = 80B9A86C
/* 0069C 80B9A5DC 0C01E037 */  jal     Actor_ProcessInitChain
              
/* 006A0 80B9A5E0 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 006A4 80B9A5E4 8FAE001C */  lw      $t6, 0x001C($sp)           
/* 006A8 80B9A5E8 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 006AC 80B9A5EC 3C014496 */  lui     $at, 0x4496                ## $at = 44960000
/* 006B0 80B9A5F0 91CF1D6C */  lbu     $t7, 0x1D6C($t6)           ## 00001D6C
/* 006B4 80B9A5F4 11E00006 */  beq     $t7, $zero, .L80B9A610     
/* 006B8 80B9A5F8 00000000 */  nop
/* 006BC 80B9A5FC C48400F4 */  lwc1    $f4, 0x00F4($a0)           ## 000000F4
/* 006C0 80B9A600 44813000 */  mtc1    $at, $f6                   ## $f6 = 1200.00
/* 006C4 80B9A604 00000000 */  nop
/* 006C8 80B9A608 46062200 */  add.s   $f8, $f4, $f6              
/* 006CC 80B9A60C E48800F4 */  swc1    $f8, 0x00F4($a0)           ## 000000F4
.L80B9A610:
/* 006D0 80B9A610 0C2E698A */  jal     func_80B9A628              
/* 006D4 80B9A614 00000000 */  nop
/* 006D8 80B9A618 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 006DC 80B9A61C 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 006E0 80B9A620 03E00008 */  jr      $ra                        
/* 006E4 80B9A624 00000000 */  nop
