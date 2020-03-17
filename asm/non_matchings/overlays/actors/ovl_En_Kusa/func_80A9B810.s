glabel func_80A9B810
/* 00870 80A9B810 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 00874 80A9B814 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 00878 80A9B818 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 0087C 80A9B81C 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00880 80A9B820 342117A4 */  ori     $at, $at, 0x17A4           ## $at = 000117A4
/* 00884 80A9B824 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00888 80A9B828 00A12021 */  addu    $a0, $a1, $at              
/* 0088C 80A9B82C 0C026062 */  jal     Object_IsLoaded
              
/* 00890 80A9B830 8205019E */  lb      $a1, 0x019E($s0)           ## 0000019E
/* 00894 80A9B834 50400015 */  beql    $v0, $zero, .L80A9B88C     
/* 00898 80A9B838 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 0089C 80A9B83C 8E0E0004 */  lw      $t6, 0x0004($s0)           ## 00000004
/* 008A0 80A9B840 31CF0800 */  andi    $t7, $t6, 0x0800           ## $t7 = 00000000
/* 008A4 80A9B844 11E00005 */  beq     $t7, $zero, .L80A9B85C     
/* 008A8 80A9B848 00000000 */  nop
/* 008AC 80A9B84C 0C2A6FAB */  jal     func_80A9BEAC              
/* 008B0 80A9B850 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 008B4 80A9B854 10000004 */  beq     $zero, $zero, .L80A9B868   
/* 008B8 80A9B858 8E080004 */  lw      $t0, 0x0004($s0)           ## 00000004
.L80A9B85C:
/* 008BC 80A9B85C 0C2A6E27 */  jal     func_80A9B89C              
/* 008C0 80A9B860 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 008C4 80A9B864 8E080004 */  lw      $t0, 0x0004($s0)           ## 00000004
.L80A9B868:
/* 008C8 80A9B868 8219019E */  lb      $t9, 0x019E($s0)           ## 0000019E
/* 008CC 80A9B86C 3C1880AA */  lui     $t8, %hi(func_80A9C164)    ## $t8 = 80AA0000
/* 008D0 80A9B870 2401FFEF */  addiu   $at, $zero, 0xFFEF         ## $at = FFFFFFEF
/* 008D4 80A9B874 2718C164 */  addiu   $t8, $t8, %lo(func_80A9C164) ## $t8 = 80A9C164
/* 008D8 80A9B878 01014824 */  and     $t1, $t0, $at              
/* 008DC 80A9B87C AE180134 */  sw      $t8, 0x0134($s0)           ## 00000134
/* 008E0 80A9B880 AE090004 */  sw      $t1, 0x0004($s0)           ## 00000004
/* 008E4 80A9B884 A219001E */  sb      $t9, 0x001E($s0)           ## 0000001E
/* 008E8 80A9B888 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80A9B88C:
/* 008EC 80A9B88C 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 008F0 80A9B890 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 008F4 80A9B894 03E00008 */  jr      $ra                        
/* 008F8 80A9B898 00000000 */  nop


