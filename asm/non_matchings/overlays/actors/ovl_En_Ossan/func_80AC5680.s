glabel func_80AC5680
/* 029E0 80AC5680 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 029E4 80AC5684 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 029E8 80AC5688 AFB10018 */  sw      $s1, 0x0018($sp)           
/* 029EC 80AC568C AFB00014 */  sw      $s0, 0x0014($sp)           
/* 029F0 80AC5690 00A08025 */  or      $s0, $a1, $zero            ## $s0 = 00000000
/* 029F4 80AC5694 00808825 */  or      $s1, $a0, $zero            ## $s1 = 00000000
/* 029F8 80AC5698 0C2B1924 */  jal     func_80AC6490              
/* 029FC 80AC569C AFA60028 */  sw      $a2, 0x0028($sp)           
/* 02A00 80AC56A0 14400008 */  bne     $v0, $zero, .L80AC56C4     
/* 02A04 80AC56A4 3C0480AD */  lui     $a0, %hi(D_80AC91E4)       ## $a0 = 80AD0000
/* 02A08 80AC56A8 3C0580AD */  lui     $a1, %hi(D_80AC9204)       ## $a1 = 80AD0000
/* 02A0C 80AC56AC 24A59204 */  addiu   $a1, $a1, %lo(D_80AC9204)  ## $a1 = 80AC9204
/* 02A10 80AC56B0 248491E4 */  addiu   $a0, $a0, %lo(D_80AC91E4)  ## $a0 = 80AC91E4
/* 02A14 80AC56B4 0C00084C */  jal     osSyncPrintf
              
/* 02A18 80AC56B8 24060A85 */  addiu   $a2, $zero, 0x0A85         ## $a2 = 00000A85
/* 02A1C 80AC56BC 10000027 */  beq     $zero, $zero, .L80AC575C   
/* 02A20 80AC56C0 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80AC56C4:
/* 02A24 80AC56C4 0C042F6F */  jal     func_8010BDBC              
/* 02A28 80AC56C8 260420D8 */  addiu   $a0, $s0, 0x20D8           ## $a0 = 000020D8
/* 02A2C 80AC56CC 24010004 */  addiu   $at, $zero, 0x0004         ## $at = 00000004
/* 02A30 80AC56D0 14410021 */  bne     $v0, $at, .L80AC5758       
/* 02A34 80AC56D4 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 02A38 80AC56D8 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 02A3C 80AC56DC 0C2B0E32 */  jal     func_80AC38C8              
/* 02A40 80AC56E0 26060014 */  addiu   $a2, $s0, 0x0014           ## $a2 = 00000014
/* 02A44 80AC56E4 5440001D */  bnel    $v0, $zero, .L80AC575C     
/* 02A48 80AC56E8 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 02A4C 80AC56EC 0C041AF2 */  jal     func_80106BC8              
/* 02A50 80AC56F0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02A54 80AC56F4 10400018 */  beq     $v0, $zero, .L80AC5758     
/* 02A58 80AC56F8 3C020001 */  lui     $v0, 0x0001                ## $v0 = 00010000
/* 02A5C 80AC56FC 00501021 */  addu    $v0, $v0, $s0              
/* 02A60 80AC5700 904204BD */  lbu     $v0, 0x04BD($v0)           ## 000104BD
/* 02A64 80AC5704 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 02A68 80AC5708 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02A6C 80AC570C 10400005 */  beq     $v0, $zero, .L80AC5724     
/* 02A70 80AC5710 00000000 */  nop
/* 02A74 80AC5714 50410008 */  beql    $v0, $at, .L80AC5738       
/* 02A78 80AC5718 922F0252 */  lbu     $t7, 0x0252($s1)           ## 00000252
/* 02A7C 80AC571C 1000000F */  beq     $zero, $zero, .L80AC575C   
/* 02A80 80AC5720 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80AC5724:
/* 02A84 80AC5724 0C2B146E */  jal     func_80AC51B8              
/* 02A88 80AC5728 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 02A8C 80AC572C 1000000B */  beq     $zero, $zero, .L80AC575C   
/* 02A90 80AC5730 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 02A94 80AC5734 922F0252 */  lbu     $t7, 0x0252($s1)           ## 00000252
.L80AC5738:
/* 02A98 80AC5738 862E01FE */  lh      $t6, 0x01FE($s1)           ## 000001FE
/* 02A9C 80AC573C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02AA0 80AC5740 000FC080 */  sll     $t8, $t7,  2               
/* 02AA4 80AC5744 0238C821 */  addu    $t9, $s1, $t8              
/* 02AA8 80AC5748 A62E01FC */  sh      $t6, 0x01FC($s1)           ## 000001FC
/* 02AAC 80AC574C 8F280200 */  lw      $t0, 0x0200($t9)           ## 00000200
/* 02AB0 80AC5750 0C042DC8 */  jal     func_8010B720              
/* 02AB4 80AC5754 9505010E */  lhu     $a1, 0x010E($t0)           ## 0000010E
.L80AC5758:
/* 02AB8 80AC5758 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80AC575C:
/* 02ABC 80AC575C 8FB00014 */  lw      $s0, 0x0014($sp)           
/* 02AC0 80AC5760 8FB10018 */  lw      $s1, 0x0018($sp)           
/* 02AC4 80AC5764 03E00008 */  jr      $ra                        
/* 02AC8 80AC5768 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000


