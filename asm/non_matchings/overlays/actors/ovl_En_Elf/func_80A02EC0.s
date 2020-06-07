glabel func_80A02EC0
/* 01290 80A02EC0 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 01294 80A02EC4 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 01298 80A02EC8 3C063E4C */  lui     $a2, 0x3E4C                ## $a2 = 3E4C0000
/* 0129C 80A02ECC AFA5001C */  sw      $a1, 0x001C($sp)           
/* 012A0 80A02ED0 34C6CCCD */  ori     $a2, $a2, 0xCCCD           ## $a2 = 3E4CCCCD
/* 012A4 80A02ED4 0C280AF6 */  jal     func_80A02BD8              
/* 012A8 80A02ED8 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 012AC 80A02EDC 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 012B0 80A02EE0 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 012B4 80A02EE4 00000000 */  nop
/* 012B8 80A02EE8 E4800064 */  swc1    $f0, 0x0064($a0)           ## 00000064
/* 012BC 80A02EEC 0C00B5FB */  jal     func_8002D7EC              
/* 012C0 80A02EF0 E480005C */  swc1    $f0, 0x005C($a0)           ## 0000005C
/* 012C4 80A02EF4 8FA2001C */  lw      $v0, 0x001C($sp)           
/* 012C8 80A02EF8 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 012CC 80A02EFC C4440000 */  lwc1    $f4, 0x0000($v0)           ## 00000000
/* 012D0 80A02F00 C486028C */  lwc1    $f6, 0x028C($a0)           ## 0000028C
/* 012D4 80A02F04 C4900294 */  lwc1    $f16, 0x0294($a0)          ## 00000294
/* 012D8 80A02F08 46062200 */  add.s   $f8, $f4, $f6              
/* 012DC 80A02F0C E4880024 */  swc1    $f8, 0x0024($a0)           ## 00000024
/* 012E0 80A02F10 C44A0008 */  lwc1    $f10, 0x0008($v0)          ## 00000008
/* 012E4 80A02F14 46105480 */  add.s   $f18, $f10, $f16           
/* 012E8 80A02F18 E492002C */  swc1    $f18, 0x002C($a0)          ## 0000002C
/* 012EC 80A02F1C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 012F0 80A02F20 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 012F4 80A02F24 03E00008 */  jr      $ra                        
/* 012F8 80A02F28 00000000 */  nop
