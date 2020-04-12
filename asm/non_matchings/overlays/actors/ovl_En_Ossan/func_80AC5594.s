.rdata
glabel D_80AC91B4
    .asciz "%s[%d]:\x1b[32mズーム中！！\x1b[m\n"
    .balign 4

glabel D_80AC91D4
    .asciz "../z_en_oB1.c"
    .balign 4

.text
glabel func_80AC5594
/* 028F4 80AC5594 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 028F8 80AC5598 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 028FC 80AC559C AFB10018 */  sw      $s1, 0x0018($sp)           
/* 02900 80AC55A0 AFB00014 */  sw      $s0, 0x0014($sp)           
/* 02904 80AC55A4 00A08025 */  or      $s0, $a1, $zero            ## $s0 = 00000000
/* 02908 80AC55A8 00808825 */  or      $s1, $a0, $zero            ## $s1 = 00000000
/* 0290C 80AC55AC 0C2B1924 */  jal     func_80AC6490              
/* 02910 80AC55B0 AFA60028 */  sw      $a2, 0x0028($sp)           
/* 02914 80AC55B4 14400008 */  bne     $v0, $zero, .L80AC55D8     
/* 02918 80AC55B8 3C0480AD */  lui     $a0, %hi(D_80AC91B4)       ## $a0 = 80AD0000
/* 0291C 80AC55BC 3C0580AD */  lui     $a1, %hi(D_80AC91D4)       ## $a1 = 80AD0000
/* 02920 80AC55C0 24A591D4 */  addiu   $a1, $a1, %lo(D_80AC91D4)  ## $a1 = 80AC91D4
/* 02924 80AC55C4 248491B4 */  addiu   $a0, $a0, %lo(D_80AC91B4)  ## $a0 = 80AC91B4
/* 02928 80AC55C8 0C00084C */  jal     osSyncPrintf
              
/* 0292C 80AC55CC 24060A5E */  addiu   $a2, $zero, 0x0A5E         ## $a2 = 00000A5E
/* 02930 80AC55D0 10000027 */  beq     $zero, $zero, .L80AC5670   
/* 02934 80AC55D4 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80AC55D8:
/* 02938 80AC55D8 0C042F6F */  jal     func_8010BDBC              
/* 0293C 80AC55DC 260420D8 */  addiu   $a0, $s0, 0x20D8           ## $a0 = 000020D8
/* 02940 80AC55E0 24010004 */  addiu   $at, $zero, 0x0004         ## $at = 00000004
/* 02944 80AC55E4 14410021 */  bne     $v0, $at, .L80AC566C       
/* 02948 80AC55E8 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 0294C 80AC55EC 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 02950 80AC55F0 0C2B0E32 */  jal     func_80AC38C8              
/* 02954 80AC55F4 26060014 */  addiu   $a2, $s0, 0x0014           ## $a2 = 00000014
/* 02958 80AC55F8 5440001D */  bnel    $v0, $zero, .L80AC5670     
/* 0295C 80AC55FC 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 02960 80AC5600 0C041AF2 */  jal     func_80106BC8              
/* 02964 80AC5604 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02968 80AC5608 10400018 */  beq     $v0, $zero, .L80AC566C     
/* 0296C 80AC560C 3C020001 */  lui     $v0, 0x0001                ## $v0 = 00010000
/* 02970 80AC5610 00501021 */  addu    $v0, $v0, $s0              
/* 02974 80AC5614 904204BD */  lbu     $v0, 0x04BD($v0)           ## 000104BD
/* 02978 80AC5618 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 0297C 80AC561C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02980 80AC5620 10400005 */  beq     $v0, $zero, .L80AC5638     
/* 02984 80AC5624 00000000 */  nop
/* 02988 80AC5628 50410008 */  beql    $v0, $at, .L80AC564C       
/* 0298C 80AC562C 922F0252 */  lbu     $t7, 0x0252($s1)           ## 00000252
/* 02990 80AC5630 1000000F */  beq     $zero, $zero, .L80AC5670   
/* 02994 80AC5634 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80AC5638:
/* 02998 80AC5638 0C2B1405 */  jal     func_80AC5014              
/* 0299C 80AC563C 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 029A0 80AC5640 1000000B */  beq     $zero, $zero, .L80AC5670   
/* 029A4 80AC5644 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 029A8 80AC5648 922F0252 */  lbu     $t7, 0x0252($s1)           ## 00000252
.L80AC564C:
/* 029AC 80AC564C 862E01FE */  lh      $t6, 0x01FE($s1)           ## 000001FE
/* 029B0 80AC5650 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 029B4 80AC5654 000FC080 */  sll     $t8, $t7,  2               
/* 029B8 80AC5658 0238C821 */  addu    $t9, $s1, $t8              
/* 029BC 80AC565C A62E01FC */  sh      $t6, 0x01FC($s1)           ## 000001FC
/* 029C0 80AC5660 8F280200 */  lw      $t0, 0x0200($t9)           ## 00000200
/* 029C4 80AC5664 0C042DC8 */  jal     func_8010B720              
/* 029C8 80AC5668 9505010E */  lhu     $a1, 0x010E($t0)           ## 0000010E
.L80AC566C:
/* 029CC 80AC566C 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80AC5670:
/* 029D0 80AC5670 8FB00014 */  lw      $s0, 0x0014($sp)           
/* 029D4 80AC5674 8FB10018 */  lw      $s1, 0x0018($sp)           
/* 029D8 80AC5678 03E00008 */  jr      $ra                        
/* 029DC 80AC567C 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
