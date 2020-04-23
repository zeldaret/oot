glabel func_80A0B070
/* 00C60 80A0B070 3C0141F0 */  lui     $at, 0x41F0                ## $at = 41F00000
/* 00C64 80A0B074 44810000 */  mtc1    $at, $f0                   ## $f0 = 30.00
/* 00C68 80A0B078 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00C6C 80A0B07C AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00C70 80A0B080 46000182 */  mul.s   $f6, $f0, $f0              
/* 00C74 80A0B084 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 00C78 80A0B088 C484008C */  lwc1    $f4, 0x008C($a0)           ## 0000008C
/* 00C7C 80A0B08C 00803825 */  or      $a3, $a0, $zero            ## $a3 = 00000000
/* 00C80 80A0B090 24044803 */  addiu   $a0, $zero, 0x4803         ## $a0 = 00004803
/* 00C84 80A0B094 4606203C */  c.lt.s  $f4, $f6                   
/* 00C88 80A0B098 00000000 */  nop
/* 00C8C 80A0B09C 45020012 */  bc1fl   .L80A0B0E8                 
/* 00C90 80A0B0A0 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00C94 80A0B0A4 0C01E221 */  jal     func_80078884              
/* 00C98 80A0B0A8 AFA70018 */  sw      $a3, 0x0018($sp)           
/* 00C9C 80A0B0AC 8FA70018 */  lw      $a3, 0x0018($sp)           
/* 00CA0 80A0B0B0 3C0680A1 */  lui     $a2, %hi(D_80A0B320)       ## $a2 = 80A10000
/* 00CA4 80A0B0B4 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 00CA8 80A0B0B8 84EE0150 */  lh      $t6, 0x0150($a3)           ## 00000150
/* 00CAC 80A0B0BC 24E50024 */  addiu   $a1, $a3, 0x0024           ## $a1 = 00000024
/* 00CB0 80A0B0C0 000E7840 */  sll     $t7, $t6,  1               
/* 00CB4 80A0B0C4 00CF3021 */  addu    $a2, $a2, $t7              
/* 00CB8 80A0B0C8 84C6B320 */  lh      $a2, %lo(D_80A0B320)($a2)  
/* 00CBC 80A0B0CC 34C68000 */  ori     $a2, $a2, 0x8000           ## $a2 = 80A18000
/* 00CC0 80A0B0D0 00063400 */  sll     $a2, $a2, 16               
/* 00CC4 80A0B0D4 0C007D52 */  jal     Item_DropCollectible
              
/* 00CC8 80A0B0D8 00063403 */  sra     $a2, $a2, 16               
/* 00CCC 80A0B0DC 0C00B55C */  jal     Actor_Kill
              
/* 00CD0 80A0B0E0 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 00CD4 80A0B0E4 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80A0B0E8:
/* 00CD8 80A0B0E8 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00CDC 80A0B0EC 03E00008 */  jr      $ra                        
/* 00CE0 80A0B0F0 00000000 */  nop
