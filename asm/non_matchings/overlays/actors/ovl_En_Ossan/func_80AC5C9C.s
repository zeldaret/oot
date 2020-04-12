glabel func_80AC5C9C
/* 02FFC 80AC5C9C 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 03000 80AC5CA0 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 03004 80AC5CA4 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 03008 80AC5CA8 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 0300C 80AC5CAC AFA50024 */  sw      $a1, 0x0024($sp)           
/* 03010 80AC5CB0 AFA60028 */  sw      $a2, 0x0028($sp)           
/* 03014 80AC5CB4 0C042F6F */  jal     func_8010BDBC              
/* 03018 80AC5CB8 24A420D8 */  addiu   $a0, $a1, 0x20D8           ## $a0 = 000020D8
/* 0301C 80AC5CBC 24010005 */  addiu   $at, $zero, 0x0005         ## $at = 00000005
/* 03020 80AC5CC0 5441001B */  bnel    $v0, $at, .L80AC5D30       
/* 03024 80AC5CC4 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 03028 80AC5CC8 0C041AF2 */  jal     func_80106BC8              
/* 0302C 80AC5CCC 8FA40024 */  lw      $a0, 0x0024($sp)           
/* 03030 80AC5CD0 50400017 */  beql    $v0, $zero, .L80AC5D30     
/* 03034 80AC5CD4 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 03038 80AC5CD8 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 0303C 80AC5CDC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 03040 80AC5CE0 0C2B191B */  jal     func_80AC646C              
/* 03044 80AC5CE4 E60402D0 */  swc1    $f4, 0x02D0($s0)           ## 000002D0
/* 03048 80AC5CE8 920E0252 */  lbu     $t6, 0x0252($s0)           ## 00000252
/* 0304C 80AC5CEC 8FA40024 */  lw      $a0, 0x0024($sp)           
/* 03050 80AC5CF0 000E7880 */  sll     $t7, $t6,  2               
/* 03054 80AC5CF4 020FC021 */  addu    $t8, $s0, $t7              
/* 03058 80AC5CF8 8F050200 */  lw      $a1, 0x0200($t8)           ## 00000200
/* 0305C 80AC5CFC 8CB901B0 */  lw      $t9, 0x01B0($a1)           ## 000001B0
/* 03060 80AC5D00 0320F809 */  jalr    $ra, $t9                   
/* 03064 80AC5D04 00000000 */  nop
/* 03068 80AC5D08 92090252 */  lbu     $t1, 0x0252($s0)           ## 00000252
/* 0306C 80AC5D0C 860801FE */  lh      $t0, 0x01FE($s0)           ## 000001FE
/* 03070 80AC5D10 00095080 */  sll     $t2, $t1,  2               
/* 03074 80AC5D14 020A5821 */  addu    $t3, $s0, $t2              
/* 03078 80AC5D18 A60801FC */  sh      $t0, 0x01FC($s0)           ## 000001FC
/* 0307C 80AC5D1C 8D6C0200 */  lw      $t4, 0x0200($t3)           ## 00000200
/* 03080 80AC5D20 8FA40024 */  lw      $a0, 0x0024($sp)           
/* 03084 80AC5D24 0C042DC8 */  jal     func_8010B720              
/* 03088 80AC5D28 9585010E */  lhu     $a1, 0x010E($t4)           ## 0000010E
/* 0308C 80AC5D2C 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80AC5D30:
/* 03090 80AC5D30 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 03094 80AC5D34 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 03098 80AC5D38 03E00008 */  jr      $ra                        
/* 0309C 80AC5D3C 00000000 */  nop
