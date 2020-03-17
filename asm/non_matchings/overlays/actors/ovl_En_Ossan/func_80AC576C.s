glabel func_80AC576C
/* 02ACC 80AC576C 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 02AD0 80AC5770 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 02AD4 80AC5774 AFB10018 */  sw      $s1, 0x0018($sp)           
/* 02AD8 80AC5778 AFB00014 */  sw      $s0, 0x0014($sp)           
/* 02ADC 80AC577C 00A08025 */  or      $s0, $a1, $zero            ## $s0 = 00000000
/* 02AE0 80AC5780 00808825 */  or      $s1, $a0, $zero            ## $s1 = 00000000
/* 02AE4 80AC5784 0C2B1924 */  jal     func_80AC6490              
/* 02AE8 80AC5788 AFA60028 */  sw      $a2, 0x0028($sp)           
/* 02AEC 80AC578C 14400008 */  bne     $v0, $zero, .L80AC57B0     
/* 02AF0 80AC5790 3C0480AD */  lui     $a0, %hi(D_80AC9214)       ## $a0 = 80AD0000
/* 02AF4 80AC5794 3C0580AD */  lui     $a1, %hi(D_80AC9234)       ## $a1 = 80AD0000
/* 02AF8 80AC5798 24A59234 */  addiu   $a1, $a1, %lo(D_80AC9234)  ## $a1 = 80AC9234
/* 02AFC 80AC579C 24849214 */  addiu   $a0, $a0, %lo(D_80AC9214)  ## $a0 = 80AC9214
/* 02B00 80AC57A0 0C00084C */  jal     osSyncPrintf
              
/* 02B04 80AC57A4 24060AAC */  addiu   $a2, $zero, 0x0AAC         ## $a2 = 00000AAC
/* 02B08 80AC57A8 10000027 */  beq     $zero, $zero, .L80AC5848   
/* 02B0C 80AC57AC 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80AC57B0:
/* 02B10 80AC57B0 0C042F6F */  jal     func_8010BDBC              
/* 02B14 80AC57B4 260420D8 */  addiu   $a0, $s0, 0x20D8           ## $a0 = 000020D8
/* 02B18 80AC57B8 24010004 */  addiu   $at, $zero, 0x0004         ## $at = 00000004
/* 02B1C 80AC57BC 14410021 */  bne     $v0, $at, .L80AC5844       
/* 02B20 80AC57C0 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 02B24 80AC57C4 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 02B28 80AC57C8 0C2B0E32 */  jal     func_80AC38C8              
/* 02B2C 80AC57CC 26060014 */  addiu   $a2, $s0, 0x0014           ## $a2 = 00000014
/* 02B30 80AC57D0 5440001D */  bnel    $v0, $zero, .L80AC5848     
/* 02B34 80AC57D4 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 02B38 80AC57D8 0C041AF2 */  jal     func_80106BC8              
/* 02B3C 80AC57DC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02B40 80AC57E0 10400018 */  beq     $v0, $zero, .L80AC5844     
/* 02B44 80AC57E4 3C020001 */  lui     $v0, 0x0001                ## $v0 = 00010000
/* 02B48 80AC57E8 00501021 */  addu    $v0, $v0, $s0              
/* 02B4C 80AC57EC 904204BD */  lbu     $v0, 0x04BD($v0)           ## 000104BD
/* 02B50 80AC57F0 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 02B54 80AC57F4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02B58 80AC57F8 10400005 */  beq     $v0, $zero, .L80AC5810     
/* 02B5C 80AC57FC 00000000 */  nop
/* 02B60 80AC5800 50410008 */  beql    $v0, $at, .L80AC5824       
/* 02B64 80AC5804 922F0252 */  lbu     $t7, 0x0252($s1)           ## 00000252
/* 02B68 80AC5808 1000000F */  beq     $zero, $zero, .L80AC5848   
/* 02B6C 80AC580C 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80AC5810:
/* 02B70 80AC5810 0C2B14B0 */  jal     func_80AC52C0              
/* 02B74 80AC5814 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 02B78 80AC5818 1000000B */  beq     $zero, $zero, .L80AC5848   
/* 02B7C 80AC581C 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 02B80 80AC5820 922F0252 */  lbu     $t7, 0x0252($s1)           ## 00000252
.L80AC5824:
/* 02B84 80AC5824 862E01FE */  lh      $t6, 0x01FE($s1)           ## 000001FE
/* 02B88 80AC5828 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02B8C 80AC582C 000FC080 */  sll     $t8, $t7,  2               
/* 02B90 80AC5830 0238C821 */  addu    $t9, $s1, $t8              
/* 02B94 80AC5834 A62E01FC */  sh      $t6, 0x01FC($s1)           ## 000001FC
/* 02B98 80AC5838 8F280200 */  lw      $t0, 0x0200($t9)           ## 00000200
/* 02B9C 80AC583C 0C042DC8 */  jal     func_8010B720              
/* 02BA0 80AC5840 9505010E */  lhu     $a1, 0x010E($t0)           ## 0000010E
.L80AC5844:
/* 02BA4 80AC5844 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80AC5848:
/* 02BA8 80AC5848 8FB00014 */  lw      $s0, 0x0014($sp)           
/* 02BAC 80AC584C 8FB10018 */  lw      $s1, 0x0018($sp)           
/* 02BB0 80AC5850 03E00008 */  jr      $ra                        
/* 02BB4 80AC5854 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000


