glabel func_80B51F38
/* 035A8 80B51F38 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 035AC 80B51F3C AFA40020 */  sw      $a0, 0x0020($sp)           
/* 035B0 80B51F40 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 035B4 80B51F44 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 035B8 80B51F48 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 035BC 80B51F4C 0C2D3B65 */  jal     func_80B4ED94              
/* 035C0 80B51F50 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 035C4 80B51F54 10400010 */  beq     $v0, $zero, .L80B51F98     
/* 035C8 80B51F58 8FAF0024 */  lw      $t7, 0x0024($sp)           
/* 035CC 80B51F5C 95F81D74 */  lhu     $t8, 0x1D74($t7)           ## 00001D74
/* 035D0 80B51F60 944E0004 */  lhu     $t6, 0x0004($v0)           ## 00000004
/* 035D4 80B51F64 8FA40020 */  lw      $a0, 0x0020($sp)           
/* 035D8 80B51F68 2719FFF8 */  addiu   $t9, $t8, 0xFFF8           ## $t9 = FFFFFFF8
/* 035DC 80B51F6C 032E082A */  slt     $at, $t9, $t6              
/* 035E0 80B51F70 14200009 */  bne     $at, $zero, .L80B51F98     
/* 035E4 80B51F74 3C050601 */  lui     $a1, 0x0601                ## $a1 = 06010000
/* 035E8 80B51F78 24A5B5FC */  addiu   $a1, $a1, 0xB5FC           ## $a1 = 0600B5FC
/* 035EC 80B51F7C 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 035F0 80B51F80 3C07C100 */  lui     $a3, 0xC100                ## $a3 = C1000000
/* 035F4 80B51F84 0C2D3F40 */  jal     func_80B4FD00              
/* 035F8 80B51F88 AFA00010 */  sw      $zero, 0x0010($sp)         
/* 035FC 80B51F8C 8FA90020 */  lw      $t1, 0x0020($sp)           
/* 03600 80B51F90 24080023 */  addiu   $t0, $zero, 0x0023         ## $t0 = 00000023
/* 03604 80B51F94 AD28019C */  sw      $t0, 0x019C($t1)           ## 0000019C
.L80B51F98:
/* 03608 80B51F98 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 0360C 80B51F9C 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 03610 80B51FA0 03E00008 */  jr      $ra                        
/* 03614 80B51FA4 00000000 */  nop


