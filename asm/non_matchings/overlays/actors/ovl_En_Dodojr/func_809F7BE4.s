glabel func_809F7BE4
/* 01824 809F7BE4 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 01828 809F7BE8 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 0182C 809F7BEC AFB00018 */  sw      $s0, 0x0018($sp)           
/* 01830 809F7BF0 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 01834 809F7BF4 84820202 */  lh      $v0, 0x0202($a0)           ## 00000202
/* 01838 809F7BF8 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 0183C 809F7BFC 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 01840 809F7C00 14400003 */  bne     $v0, $zero, .L809F7C10     
/* 01844 809F7C04 244EFFFF */  addiu   $t6, $v0, 0xFFFF           ## $t6 = FFFFFFFF
/* 01848 809F7C08 10000003 */  beq     $zero, $zero, .L809F7C18   
/* 0184C 809F7C0C 00001825 */  or      $v1, $zero, $zero          ## $v1 = 00000000
.L809F7C10:
/* 01850 809F7C10 A60E0202 */  sh      $t6, 0x0202($s0)           ## 00000202
/* 01854 809F7C14 86030202 */  lh      $v1, 0x0202($s0)           ## 00000202
.L809F7C18:
/* 01858 809F7C18 14600006 */  bne     $v1, $zero, .L809F7C34     
/* 0185C 809F7C1C 8FA40024 */  lw      $a0, 0x0024($sp)           
/* 01860 809F7C20 26060024 */  addiu   $a2, $s0, 0x0024           ## $a2 = 00000024
/* 01864 809F7C24 0C007E50 */  jal     Item_DropCollectibleRandom
              
/* 01868 809F7C28 24070040 */  addiu   $a3, $zero, 0x0040         ## $a3 = 00000040
/* 0186C 809F7C2C 0C00B55C */  jal     Actor_Kill
              
/* 01870 809F7C30 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
.L809F7C34:
/* 01874 809F7C34 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 01878 809F7C38 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 0187C 809F7C3C 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 01880 809F7C40 03E00008 */  jr      $ra                        
/* 01884 809F7C44 00000000 */  nop
