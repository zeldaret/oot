glabel func_80B96BA0
/* 00000 80B96BA0 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 00004 80B96BA4 AFB00020 */  sw      $s0, 0x0020($sp)           
/* 00008 80B96BA8 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 0000C 80B96BAC AFA50034 */  sw      $a1, 0x0034($sp)           
/* 00010 80B96BB0 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 00014 80B96BB4 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 00018 80B96BB8 26050150 */  addiu   $a1, $s0, 0x0150           ## $a1 = 00000150
/* 0001C 80B96BBC 0C016EFE */  jal     Collider_InitJntSph              
/* 00020 80B96BC0 AFA50028 */  sw      $a1, 0x0028($sp)           
/* 00024 80B96BC4 3C0780B9 */  lui     $a3, %hi(D_80B97F44)       ## $a3 = 80B90000
/* 00028 80B96BC8 260E0170 */  addiu   $t6, $s0, 0x0170           ## $t6 = 00000170
/* 0002C 80B96BCC AFAE0010 */  sw      $t6, 0x0010($sp)           
/* 00030 80B96BD0 24E77F44 */  addiu   $a3, $a3, %lo(D_80B97F44)  ## $a3 = 80B97F44
/* 00034 80B96BD4 8FA40034 */  lw      $a0, 0x0034($sp)           
/* 00038 80B96BD8 8FA50028 */  lw      $a1, 0x0028($sp)           
/* 0003C 80B96BDC 0C017014 */  jal     Collider_SetJntSph              
/* 00040 80B96BE0 02003025 */  or      $a2, $s0, $zero            ## $a2 = 00000000
/* 00044 80B96BE4 C60400BC */  lwc1    $f4, 0x00BC($s0)           ## 000000BC
/* 00048 80B96BE8 C6060054 */  lwc1    $f6, 0x0054($s0)           ## 00000054
/* 0004C 80B96BEC C60A0028 */  lwc1    $f10, 0x0028($s0)          ## 00000028
/* 00050 80B96BF0 C60C0024 */  lwc1    $f12, 0x0024($s0)          ## 00000024
/* 00054 80B96BF4 46062202 */  mul.s   $f8, $f4, $f6              
/* 00058 80B96BF8 8E06002C */  lw      $a2, 0x002C($s0)           ## 0000002C
/* 0005C 80B96BFC 260700B4 */  addiu   $a3, $s0, 0x00B4           ## $a3 = 000000B4
/* 00060 80B96C00 0C0345A5 */  jal     func_800D1694              
/* 00064 80B96C04 46085380 */  add.s   $f14, $f10, $f8            
/* 00068 80B96C08 C60C0050 */  lwc1    $f12, 0x0050($s0)          ## 00000050
/* 0006C 80B96C0C C60E0054 */  lwc1    $f14, 0x0054($s0)          ## 00000054
/* 00070 80B96C10 8E060058 */  lw      $a2, 0x0058($s0)           ## 00000058
/* 00074 80B96C14 0C0342A3 */  jal     Matrix_Scale              
/* 00078 80B96C18 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 0007C 80B96C1C 00002025 */  or      $a0, $zero, $zero          ## $a0 = 00000000
/* 00080 80B96C20 0C018A29 */  jal     func_800628A4              
/* 00084 80B96C24 8FA50028 */  lw      $a1, 0x0028($sp)           
/* 00088 80B96C28 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 0008C 80B96C2C 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 00090 80B96C30 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 00094 80B96C34 03E00008 */  jr      $ra                        
/* 00098 80B96C38 00000000 */  nop
