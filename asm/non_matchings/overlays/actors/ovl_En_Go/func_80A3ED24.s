glabel func_80A3ED24
/* 007B4 80A3ED24 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 007B8 80A3ED28 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 007BC 80A3ED2C AFB00018 */  sw      $s0, 0x0018($sp)           
/* 007C0 80A3ED30 AFA40020 */  sw      $a0, 0x0020($sp)           
/* 007C4 80A3ED34 AFA7002C */  sw      $a3, 0x002C($sp)           
/* 007C8 80A3ED38 84CE0000 */  lh      $t6, 0x0000($a2)           ## 00000000
/* 007CC 80A3ED3C 00803825 */  or      $a3, $a0, $zero            ## $a3 = 00000000
/* 007D0 80A3ED40 00A08025 */  or      $s0, $a1, $zero            ## $s0 = 00000000
/* 007D4 80A3ED44 51C0000A */  beql    $t6, $zero, .L80A3ED70     
/* 007D8 80A3ED48 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 007DC 80A3ED4C 8FB90034 */  lw      $t9, 0x0034($sp)           
/* 007E0 80A3ED50 AFA60028 */  sw      $a2, 0x0028($sp)           
/* 007E4 80A3ED54 0320F809 */  jalr    $ra, $t9                   
/* 007E8 80A3ED58 00000000 */  nop
/* 007EC 80A3ED5C 8FA60028 */  lw      $a2, 0x0028($sp)           
/* 007F0 80A3ED60 A4C20000 */  sh      $v0, 0x0000($a2)           ## 00000000
/* 007F4 80A3ED64 10000019 */  beq     $zero, $zero, .L80A3EDCC   
/* 007F8 80A3ED68 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 007FC 80A3ED6C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
.L80A3ED70:
/* 00800 80A3ED70 00E02825 */  or      $a1, $a3, $zero            ## $a1 = 00000000
/* 00804 80A3ED74 AFA60028 */  sw      $a2, 0x0028($sp)           
/* 00808 80A3ED78 0C00BC65 */  jal     func_8002F194              
/* 0080C 80A3ED7C AFA70020 */  sw      $a3, 0x0020($sp)           
/* 00810 80A3ED80 10400005 */  beq     $v0, $zero, .L80A3ED98     
/* 00814 80A3ED84 8FA60028 */  lw      $a2, 0x0028($sp)           
/* 00818 80A3ED88 240F0001 */  addiu   $t7, $zero, 0x0001         ## $t7 = 00000001
/* 0081C 80A3ED8C A4CF0000 */  sh      $t7, 0x0000($a2)           ## 00000000
/* 00820 80A3ED90 1000000E */  beq     $zero, $zero, .L80A3EDCC   
/* 00824 80A3ED94 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
.L80A3ED98:
/* 00828 80A3ED98 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0082C 80A3ED9C 8FA50020 */  lw      $a1, 0x0020($sp)           
/* 00830 80A3EDA0 0C00BCB3 */  jal     func_8002F2CC              
/* 00834 80A3EDA4 8FA6002C */  lw      $a2, 0x002C($sp)           
/* 00838 80A3EDA8 14400003 */  bne     $v0, $zero, .L80A3EDB8     
/* 0083C 80A3EDAC 8FB90030 */  lw      $t9, 0x0030($sp)           
/* 00840 80A3EDB0 10000006 */  beq     $zero, $zero, .L80A3EDCC   
/* 00844 80A3EDB4 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L80A3EDB8:
/* 00848 80A3EDB8 8FA40020 */  lw      $a0, 0x0020($sp)           
/* 0084C 80A3EDBC 0320F809 */  jalr    $ra, $t9                   
/* 00850 80A3EDC0 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 00854 80A3EDC4 A602010E */  sh      $v0, 0x010E($s0)           ## 0000010E
/* 00858 80A3EDC8 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L80A3EDCC:
/* 0085C 80A3EDCC 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00860 80A3EDD0 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 00864 80A3EDD4 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 00868 80A3EDD8 03E00008 */  jr      $ra                        
/* 0086C 80A3EDDC 00000000 */  nop
