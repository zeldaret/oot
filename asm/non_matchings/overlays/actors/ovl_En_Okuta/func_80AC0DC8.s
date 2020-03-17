glabel func_80AC0DC8
/* 00768 80AC0DC8 27BDFFA8 */  addiu   $sp, $sp, 0xFFA8           ## $sp = FFFFFFA8
/* 0076C 80AC0DCC AFB00030 */  sw      $s0, 0x0030($sp)           
/* 00770 80AC0DD0 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00774 80AC0DD4 AFBF0034 */  sw      $ra, 0x0034($sp)           
/* 00778 80AC0DD8 AFA5005C */  sw      $a1, 0x005C($sp)           
/* 0077C 80AC0DDC 0C01DE1C */  jal     Math_Sins
              ## sins?
/* 00780 80AC0DE0 848400B6 */  lh      $a0, 0x00B6($a0)           ## 000000B6
/* 00784 80AC0DE4 E7A0003C */  swc1    $f0, 0x003C($sp)           
/* 00788 80AC0DE8 0C01DE0D */  jal     Math_Coss
              ## coss?
/* 0078C 80AC0DEC 860400B6 */  lh      $a0, 0x00B6($s0)           ## 000000B6
/* 00790 80AC0DF0 3C0141C8 */  lui     $at, 0x41C8                ## $at = 41C80000
/* 00794 80AC0DF4 44816000 */  mtc1    $at, $f12                  ## $f12 = 25.00
/* 00798 80AC0DF8 C7A6003C */  lwc1    $f6, 0x003C($sp)           
/* 0079C 80AC0DFC C6040024 */  lwc1    $f4, 0x0024($s0)           ## 00000024
/* 007A0 80AC0E00 3C0140C0 */  lui     $at, 0x40C0                ## $at = 40C00000
/* 007A4 80AC0E04 46066202 */  mul.s   $f8, $f12, $f6             
/* 007A8 80AC0E08 44819000 */  mtc1    $at, $f18                  ## $f18 = 6.00
/* 007AC 80AC0E0C 8FA5005C */  lw      $a1, 0x005C($sp)           
/* 007B0 80AC0E10 24190010 */  addiu   $t9, $zero, 0x0010         ## $t9 = 00000010
/* 007B4 80AC0E14 2406000E */  addiu   $a2, $zero, 0x000E         ## $a2 = 0000000E
/* 007B8 80AC0E18 24A41C24 */  addiu   $a0, $a1, 0x1C24           ## $a0 = 00001C24
/* 007BC 80AC0E1C 46082280 */  add.s   $f10, $f4, $f8             
/* 007C0 80AC0E20 46006202 */  mul.s   $f8, $f12, $f0             
/* 007C4 80AC0E24 E7AA004C */  swc1    $f10, 0x004C($sp)          
/* 007C8 80AC0E28 C6100028 */  lwc1    $f16, 0x0028($s0)          ## 00000028
/* 007CC 80AC0E2C 8FA7004C */  lw      $a3, 0x004C($sp)           
/* 007D0 80AC0E30 46128181 */  sub.s   $f6, $f16, $f18            
/* 007D4 80AC0E34 E7A60050 */  swc1    $f6, 0x0050($sp)           
/* 007D8 80AC0E38 C604002C */  lwc1    $f4, 0x002C($s0)           ## 0000002C
/* 007DC 80AC0E3C C7B00050 */  lwc1    $f16, 0x0050($sp)          
/* 007E0 80AC0E40 46082280 */  add.s   $f10, $f4, $f8             
/* 007E4 80AC0E44 E7B00010 */  swc1    $f16, 0x0010($sp)          
/* 007E8 80AC0E48 E7AA0054 */  swc1    $f10, 0x0054($sp)          
/* 007EC 80AC0E4C C7B20054 */  lwc1    $f18, 0x0054($sp)          
/* 007F0 80AC0E50 E7B20014 */  swc1    $f18, 0x0014($sp)          
/* 007F4 80AC0E54 860E00B4 */  lh      $t6, 0x00B4($s0)           ## 000000B4
/* 007F8 80AC0E58 AFAE0018 */  sw      $t6, 0x0018($sp)           
/* 007FC 80AC0E5C 860F00B6 */  lh      $t7, 0x00B6($s0)           ## 000000B6
/* 00800 80AC0E60 AFAF001C */  sw      $t7, 0x001C($sp)           
/* 00804 80AC0E64 861800B8 */  lh      $t8, 0x00B8($s0)           ## 000000B8
/* 00808 80AC0E68 E7A00038 */  swc1    $f0, 0x0038($sp)           
/* 0080C 80AC0E6C AFB90024 */  sw      $t9, 0x0024($sp)           
/* 00810 80AC0E70 0C00C7D4 */  jal     Actor_Spawn
              ## ActorSpawn
/* 00814 80AC0E74 AFB80020 */  sw      $t8, 0x0020($sp)           
/* 00818 80AC0E78 C7A20038 */  lwc1    $f2, 0x0038($sp)           
/* 0081C 80AC0E7C 1040001A */  beq     $v0, $zero, .L80AC0EE8     
/* 00820 80AC0E80 C7AE003C */  lwc1    $f14, 0x003C($sp)          
/* 00824 80AC0E84 3C014220 */  lui     $at, 0x4220                ## $at = 42200000
/* 00828 80AC0E88 44810000 */  mtc1    $at, $f0                   ## $f0 = 40.00
/* 0082C 80AC0E8C C6060024 */  lwc1    $f6, 0x0024($s0)           ## 00000024
/* 00830 80AC0E90 3C013FC0 */  lui     $at, 0x3FC0                ## $at = 3FC00000
/* 00834 80AC0E94 460E0102 */  mul.s   $f4, $f0, $f14             
/* 00838 80AC0E98 44816000 */  mtc1    $at, $f12                  ## $f12 = 1.50
/* 0083C 80AC0E9C 27A4004C */  addiu   $a0, $sp, 0x004C           ## $a0 = FFFFFFF4
/* 00840 80AC0EA0 46020402 */  mul.s   $f16, $f0, $f2             
/* 00844 80AC0EA4 27A50040 */  addiu   $a1, $sp, 0x0040           ## $a1 = FFFFFFE8
/* 00848 80AC0EA8 24060014 */  addiu   $a2, $zero, 0x0014         ## $a2 = 00000014
/* 0084C 80AC0EAC 8FA7005C */  lw      $a3, 0x005C($sp)           
/* 00850 80AC0EB0 46043200 */  add.s   $f8, $f6, $f4              
/* 00854 80AC0EB4 460E6102 */  mul.s   $f4, $f12, $f14            
/* 00858 80AC0EB8 E7A8004C */  swc1    $f8, 0x004C($sp)           
/* 0085C 80AC0EBC C60A002C */  lwc1    $f10, 0x002C($s0)          ## 0000002C
/* 00860 80AC0EC0 44804000 */  mtc1    $zero, $f8                 ## $f8 = 0.00
/* 00864 80AC0EC4 46105480 */  add.s   $f18, $f10, $f16           
/* 00868 80AC0EC8 46026282 */  mul.s   $f10, $f12, $f2            
/* 0086C 80AC0ECC E7B20054 */  swc1    $f18, 0x0054($sp)          
/* 00870 80AC0ED0 C6060028 */  lwc1    $f6, 0x0028($s0)           ## 00000028
/* 00874 80AC0ED4 E7A40040 */  swc1    $f4, 0x0040($sp)           
/* 00878 80AC0ED8 E7A80044 */  swc1    $f8, 0x0044($sp)           
/* 0087C 80AC0EDC E7AA0048 */  swc1    $f10, 0x0048($sp)          
/* 00880 80AC0EE0 0C2B024F */  jal     func_80AC093C              
/* 00884 80AC0EE4 E7A60050 */  swc1    $f6, 0x0050($sp)           
.L80AC0EE8:
/* 00888 80AC0EE8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0088C 80AC0EEC 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 00890 80AC0EF0 2405387E */  addiu   $a1, $zero, 0x387E         ## $a1 = 0000387E
/* 00894 80AC0EF4 8FBF0034 */  lw      $ra, 0x0034($sp)           
/* 00898 80AC0EF8 8FB00030 */  lw      $s0, 0x0030($sp)           
/* 0089C 80AC0EFC 27BD0058 */  addiu   $sp, $sp, 0x0058           ## $sp = 00000000
/* 008A0 80AC0F00 03E00008 */  jr      $ra                        
/* 008A4 80AC0F04 00000000 */  nop


