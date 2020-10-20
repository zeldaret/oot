glabel func_80ABC0F8
/* 00018 80ABC0F8 27BDFFB0 */  addiu   $sp, $sp, 0xFFB0           ## $sp = FFFFFFB0
/* 0001C 80ABC0FC AFBF002C */  sw      $ra, 0x002C($sp)           
/* 00020 80ABC100 AFB00028 */  sw      $s0, 0x0028($sp)           
/* 00024 80ABC104 AFA50054 */  sw      $a1, 0x0054($sp)           
/* 00028 80ABC108 908E0001 */  lbu     $t6, 0x0001($a0)           ## 00000001
/* 0002C 80ABC10C C4840008 */  lwc1    $f4, 0x0008($a0)           ## 00000008
/* 00030 80ABC110 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00034 80ABC114 31CFFFFC */  andi    $t7, $t6, 0xFFFC           ## $t7 = 00000000
/* 00038 80ABC118 A08F0001 */  sb      $t7, 0x0001($a0)           ## 00000001
/* 0003C 80ABC11C E7A4003C */  swc1    $f4, 0x003C($sp)           
/* 00040 80ABC120 C486000C */  lwc1    $f6, 0x000C($a0)           ## 0000000C
/* 00044 80ABC124 3C014120 */  lui     $at, 0x4120                ## $at = 41200000
/* 00048 80ABC128 44815000 */  mtc1    $at, $f10                  ## $f10 = 10.00
/* 0004C 80ABC12C E7A60040 */  swc1    $f6, 0x0040($sp)           
/* 00050 80ABC130 C4880010 */  lwc1    $f8, 0x0010($a0)           ## 00000010
/* 00054 80ABC134 8FA40054 */  lw      $a0, 0x0054($sp)           
/* 00058 80ABC138 3C0141A0 */  lui     $at, 0x41A0                ## $at = 41A00000
/* 0005C 80ABC13C 44818000 */  mtc1    $at, $f16                  ## $f16 = 20.00
/* 00060 80ABC140 26180038 */  addiu   $t8, $s0, 0x0038           ## $t8 = 00000038
/* 00064 80ABC144 248407C0 */  addiu   $a0, $a0, 0x07C0           ## $a0 = 000007C0
/* 00068 80ABC148 AFA40034 */  sw      $a0, 0x0034($sp)           
/* 0006C 80ABC14C AFB80014 */  sw      $t8, 0x0014($sp)           
/* 00070 80ABC150 26060008 */  addiu   $a2, $s0, 0x0008           ## $a2 = 00000008
/* 00074 80ABC154 2607001C */  addiu   $a3, $s0, 0x001C           ## $a3 = 0000001C
/* 00078 80ABC158 27A5003C */  addiu   $a1, $sp, 0x003C           ## $a1 = FFFFFFEC
/* 0007C 80ABC15C E7AA0010 */  swc1    $f10, 0x0010($sp)          
/* 00080 80ABC160 E7A80044 */  swc1    $f8, 0x0044($sp)           
/* 00084 80ABC164 0C00F519 */  jal     BgCheck_EntitySphVsWall1              
/* 00088 80ABC168 E7B00018 */  swc1    $f16, 0x0018($sp)          
/* 0008C 80ABC16C 10400004 */  beq     $v0, $zero, .L80ABC180     
/* 00090 80ABC170 8FA40034 */  lw      $a0, 0x0034($sp)           
/* 00094 80ABC174 92190001 */  lbu     $t9, 0x0001($s0)           ## 00000001
/* 00098 80ABC178 37280002 */  ori     $t0, $t9, 0x0002           ## $t0 = 00000002
/* 0009C 80ABC17C A2080001 */  sb      $t0, 0x0001($s0)           ## 00000001
.L80ABC180:
/* 000A0 80ABC180 27A5004C */  addiu   $a1, $sp, 0x004C           ## $a1 = FFFFFFFC
/* 000A4 80ABC184 27A60048 */  addiu   $a2, $sp, 0x0048           ## $a2 = FFFFFFF8
/* 000A8 80ABC188 0C00F250 */  jal     BgCheck_EntityRaycastFloor3              
/* 000AC 80ABC18C 27A7003C */  addiu   $a3, $sp, 0x003C           ## $a3 = FFFFFFEC
/* 000B0 80ABC190 C612000C */  lwc1    $f18, 0x000C($s0)          ## 0000000C
/* 000B4 80ABC194 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 000B8 80ABC198 E6000004 */  swc1    $f0, 0x0004($s0)           ## 00000004
/* 000BC 80ABC19C 46120081 */  sub.s   $f2, $f0, $f18             
/* 000C0 80ABC1A0 3C014220 */  lui     $at, 0x4220                ## $at = 42200000
/* 000C4 80ABC1A4 4602203E */  c.le.s  $f4, $f2                   
/* 000C8 80ABC1A8 00000000 */  nop
/* 000CC 80ABC1AC 4502000D */  bc1fl   .L80ABC1E4                 
/* 000D0 80ABC1B0 8FBF002C */  lw      $ra, 0x002C($sp)           
/* 000D4 80ABC1B4 44813000 */  mtc1    $at, $f6                   ## $f6 = 40.00
/* 000D8 80ABC1B8 00000000 */  nop
/* 000DC 80ABC1BC 4606103C */  c.lt.s  $f2, $f6                   
/* 000E0 80ABC1C0 00000000 */  nop
/* 000E4 80ABC1C4 45020007 */  bc1fl   .L80ABC1E4                 
/* 000E8 80ABC1C8 8FBF002C */  lw      $ra, 0x002C($sp)           
/* 000EC 80ABC1CC 92090001 */  lbu     $t1, 0x0001($s0)           ## 00000001
/* 000F0 80ABC1D0 C6080004 */  lwc1    $f8, 0x0004($s0)           ## 00000004
/* 000F4 80ABC1D4 352A0001 */  ori     $t2, $t1, 0x0001           ## $t2 = 00000001
/* 000F8 80ABC1D8 A20A0001 */  sb      $t2, 0x0001($s0)           ## 00000001
/* 000FC 80ABC1DC E608000C */  swc1    $f8, 0x000C($s0)           ## 0000000C
/* 00100 80ABC1E0 8FBF002C */  lw      $ra, 0x002C($sp)           
.L80ABC1E4:
/* 00104 80ABC1E4 8FB00028 */  lw      $s0, 0x0028($sp)           
/* 00108 80ABC1E8 27BD0050 */  addiu   $sp, $sp, 0x0050           ## $sp = 00000000
/* 0010C 80ABC1EC 03E00008 */  jr      $ra                        
/* 00110 80ABC1F0 00000000 */  nop
