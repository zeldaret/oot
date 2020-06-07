.late_rodata
glabel D_80A9C32C
 .word 0x477FFF00

.text
glabel func_80A9B574
/* 005D4 80A9B574 27BDFFB0 */  addiu   $sp, $sp, 0xFFB0           ## $sp = FFFFFFB0
/* 005D8 80A9B578 AFB40048 */  sw      $s4, 0x0048($sp)           
/* 005DC 80A9B57C AFB30044 */  sw      $s3, 0x0044($sp)           
/* 005E0 80A9B580 AFB20040 */  sw      $s2, 0x0040($sp)           
/* 005E4 80A9B584 AFB1003C */  sw      $s1, 0x003C($sp)           
/* 005E8 80A9B588 AFB00038 */  sw      $s0, 0x0038($sp)           
/* 005EC 80A9B58C F7B40030 */  sdc1    $f20, 0x0030($sp)          
/* 005F0 80A9B590 3C0180AA */  lui     $at, %hi(D_80A9C32C)       ## $at = 80AA0000
/* 005F4 80A9B594 00808825 */  or      $s1, $a0, $zero            ## $s1 = 00000000
/* 005F8 80A9B598 00A09025 */  or      $s2, $a1, $zero            ## $s2 = 00000000
/* 005FC 80A9B59C AFBF004C */  sw      $ra, 0x004C($sp)           
/* 00600 80A9B5A0 C434C32C */  lwc1    $f20, %lo(D_80A9C32C)($at) 
/* 00604 80A9B5A4 00008025 */  or      $s0, $zero, $zero          ## $s0 = 00000000
/* 00608 80A9B5A8 24B31C24 */  addiu   $s3, $a1, 0x1C24           ## $s3 = 00001C24
/* 0060C 80A9B5AC 24140003 */  addiu   $s4, $zero, 0x0003         ## $s4 = 00000003
.L80A9B5B0:
/* 00610 80A9B5B0 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 00614 80A9B5B4 00000000 */  nop
/* 00618 80A9B5B8 46140202 */  mul.s   $f8, $f0, $f20             
/* 0061C 80A9B5BC C6240028 */  lwc1    $f4, 0x0028($s1)           ## 00000028
/* 00620 80A9B5C0 8E270024 */  lw      $a3, 0x0024($s1)           ## 00000024
/* 00624 80A9B5C4 24180001 */  addiu   $t8, $zero, 0x0001         ## $t8 = 00000001
/* 00628 80A9B5C8 E7A40010 */  swc1    $f4, 0x0010($sp)           
/* 0062C 80A9B5CC C626002C */  lwc1    $f6, 0x002C($s1)           ## 0000002C
/* 00630 80A9B5D0 AFB80024 */  sw      $t8, 0x0024($sp)           
/* 00634 80A9B5D4 4600428D */  trunc.w.s $f10, $f8                  
/* 00638 80A9B5D8 AFA00020 */  sw      $zero, 0x0020($sp)         
/* 0063C 80A9B5DC AFA00018 */  sw      $zero, 0x0018($sp)         
/* 00640 80A9B5E0 02602025 */  or      $a0, $s3, $zero            ## $a0 = 00001C24
/* 00644 80A9B5E4 440F5000 */  mfc1    $t7, $f10                  
/* 00648 80A9B5E8 02402825 */  or      $a1, $s2, $zero            ## $a1 = 00000000
/* 0064C 80A9B5EC 24060020 */  addiu   $a2, $zero, 0x0020         ## $a2 = 00000020
/* 00650 80A9B5F0 E7A60014 */  swc1    $f6, 0x0014($sp)           
/* 00654 80A9B5F4 0C00C7D4 */  jal     Actor_Spawn
              ## ActorSpawn
/* 00658 80A9B5F8 AFAF001C */  sw      $t7, 0x001C($sp)           
/* 0065C 80A9B5FC 10400003 */  beq     $v0, $zero, .L80A9B60C     
/* 00660 80A9B600 26100001 */  addiu   $s0, $s0, 0x0001           ## $s0 = 00000001
/* 00664 80A9B604 1614FFEA */  bne     $s0, $s4, .L80A9B5B0       
/* 00668 80A9B608 00000000 */  nop
.L80A9B60C:
/* 0066C 80A9B60C 8FBF004C */  lw      $ra, 0x004C($sp)           
/* 00670 80A9B610 D7B40030 */  ldc1    $f20, 0x0030($sp)          
/* 00674 80A9B614 8FB00038 */  lw      $s0, 0x0038($sp)           
/* 00678 80A9B618 8FB1003C */  lw      $s1, 0x003C($sp)           
/* 0067C 80A9B61C 8FB20040 */  lw      $s2, 0x0040($sp)           
/* 00680 80A9B620 8FB30044 */  lw      $s3, 0x0044($sp)           
/* 00684 80A9B624 8FB40048 */  lw      $s4, 0x0048($sp)           
/* 00688 80A9B628 03E00008 */  jr      $ra                        
/* 0068C 80A9B62C 27BD0050 */  addiu   $sp, $sp, 0x0050           ## $sp = 00000000
