glabel func_80B5BC00
/* 00450 80B5BC00 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 00454 80B5BC04 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00458 80B5BC08 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 0045C 80B5BC0C AFA40030 */  sw      $a0, 0x0030($sp)           
/* 00460 80B5BC10 8CB01C44 */  lw      $s0, 0x1C44($a1)           ## 00001C44
/* 00464 80B5BC14 00A03825 */  or      $a3, $a1, $zero            ## $a3 = 00000000
/* 00468 80B5BC18 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 0046C 80B5BC1C 8FA50030 */  lw      $a1, 0x0030($sp)           
/* 00470 80B5BC20 AFA70034 */  sw      $a3, 0x0034($sp)           
/* 00474 80B5BC24 24060008 */  addiu   $a2, $zero, 0x0008         ## $a2 = 00000008
/* 00478 80B5BC28 0C00B7D5 */  jal     func_8002DF54              
/* 0047C 80B5BC2C AFB0002C */  sw      $s0, 0x002C($sp)           
/* 00480 80B5BC30 8FA20030 */  lw      $v0, 0x0030($sp)           
/* 00484 80B5BC34 8C4F0024 */  lw      $t7, 0x0024($v0)           ## 00000024
/* 00488 80B5BC38 AE0F0024 */  sw      $t7, 0x0024($s0)           ## 00000024
/* 0048C 80B5BC3C 8C4E0028 */  lw      $t6, 0x0028($v0)           ## 00000028
/* 00490 80B5BC40 AE0E0028 */  sw      $t6, 0x0028($s0)           ## 00000028
/* 00494 80B5BC44 8C4F002C */  lw      $t7, 0x002C($v0)           ## 0000002C
/* 00498 80B5BC48 AE0F002C */  sw      $t7, 0x002C($s0)           ## 0000002C
/* 0049C 80B5BC4C 844400B6 */  lh      $a0, 0x00B6($v0)           ## 000000B6
/* 004A0 80B5BC50 0C01DE1C */  jal     Math_Sins
              ## sins?
/* 004A4 80B5BC54 A7A40026 */  sh      $a0, 0x0026($sp)           
/* 004A8 80B5BC58 3C014260 */  lui     $at, 0x4260                ## $at = 42600000
/* 004AC 80B5BC5C 44813000 */  mtc1    $at, $f6                   ## $f6 = 56.00
/* 004B0 80B5BC60 C6040024 */  lwc1    $f4, 0x0024($s0)           ## 00000024
/* 004B4 80B5BC64 87A40026 */  lh      $a0, 0x0026($sp)           
/* 004B8 80B5BC68 46003202 */  mul.s   $f8, $f6, $f0              
/* 004BC 80B5BC6C 46082280 */  add.s   $f10, $f4, $f8             
/* 004C0 80B5BC70 0C01DE0D */  jal     Math_Coss
              ## coss?
/* 004C4 80B5BC74 E60A0024 */  swc1    $f10, 0x0024($s0)          ## 00000024
/* 004C8 80B5BC78 3C014260 */  lui     $at, 0x4260                ## $at = 42600000
/* 004CC 80B5BC7C 44819000 */  mtc1    $at, $f18                  ## $f18 = 56.00
/* 004D0 80B5BC80 C610002C */  lwc1    $f16, 0x002C($s0)          ## 0000002C
/* 004D4 80B5BC84 44801000 */  mtc1    $zero, $f2                 ## $f2 = 0.00
/* 004D8 80B5BC88 46009182 */  mul.s   $f6, $f18, $f0             
/* 004DC 80B5BC8C 24050005 */  addiu   $a1, $zero, 0x0005         ## $a1 = 00000005
/* 004E0 80B5BC90 E6020068 */  swc1    $f2, 0x0068($s0)           ## 00000068
/* 004E4 80B5BC94 46068100 */  add.s   $f4, $f16, $f6             
/* 004E8 80B5BC98 E604002C */  swc1    $f4, 0x002C($s0)           ## 0000002C
/* 004EC 80B5BC9C 8FB8002C */  lw      $t8, 0x002C($sp)           
/* 004F0 80B5BCA0 E7020838 */  swc1    $f2, 0x0838($t8)           ## 00000838
/* 004F4 80B5BCA4 0C2D6E22 */  jal     func_80B5B888              
/* 004F8 80B5BCA8 8FA40034 */  lw      $a0, 0x0034($sp)           
/* 004FC 80B5BCAC 0C02CE10 */  jal     func_800B3840              ## letterbox_target_addr
/* 00500 80B5BCB0 24040020 */  addiu   $a0, $zero, 0x0020         ## $a0 = 00000020
/* 00504 80B5BCB4 0C020978 */  jal     Interface_ChangeAlpha              
/* 00508 80B5BCB8 24040002 */  addiu   $a0, $zero, 0x0002         ## $a0 = 00000002
/* 0050C 80B5BCBC 8FB90030 */  lw      $t9, 0x0030($sp)           
/* 00510 80B5BCC0 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
/* 00514 80B5BCC4 A7200214 */  sh      $zero, 0x0214($t9)         ## 00000214
/* 00518 80B5BCC8 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 0051C 80B5BCCC 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 00520 80B5BCD0 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 00524 80B5BCD4 03E00008 */  jr      $ra                        
/* 00528 80B5BCD8 00000000 */  nop


