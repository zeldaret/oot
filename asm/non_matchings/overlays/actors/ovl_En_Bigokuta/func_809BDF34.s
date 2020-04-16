.late_rodata
glabel D_809BF55C
 .word 0x3E490FDB

.text
glabel func_809BDF34
/* 012D4 809BDF34 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 012D8 809BDF38 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 012DC 809BDF3C 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 012E0 809BDF40 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 012E4 809BDF44 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 012E8 809BDF48 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 012EC 809BDF4C 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 012F0 809BDF50 86020196 */  lh      $v0, 0x0196($s0)           ## 00000196
/* 012F4 809BDF54 10400003 */  beq     $v0, $zero, .L809BDF64     
/* 012F8 809BDF58 244EFFFF */  addiu   $t6, $v0, 0xFFFF           ## $t6 = FFFFFFFF
/* 012FC 809BDF5C A60E0196 */  sh      $t6, 0x0196($s0)           ## 00000196
/* 01300 809BDF60 86020196 */  lh      $v0, 0x0196($s0)           ## 00000196
.L809BDF64:
/* 01304 809BDF64 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 01308 809BDF68 3C01809C */  lui     $at, %hi(D_809BF55C)       ## $at = 809C0000
/* 0130C 809BDF6C C428F55C */  lwc1    $f8, %lo(D_809BF55C)($at)  
/* 01310 809BDF70 468021A0 */  cvt.s.w $f6, $f4                   
/* 01314 809BDF74 46083302 */  mul.s   $f12, $f6, $f8             
/* 01318 809BDF78 0C0400A4 */  jal     sinf
              
/* 0131C 809BDF7C 00000000 */  nop
/* 01320 809BDF80 3C0142C8 */  lui     $at, 0x42C8                ## $at = 42C80000
/* 01324 809BDF84 44815000 */  mtc1    $at, $f10                  ## $f10 = 100.00
/* 01328 809BDF88 C612000C */  lwc1    $f18, 0x000C($s0)          ## 0000000C
/* 0132C 809BDF8C 860F0196 */  lh      $t7, 0x0196($s0)           ## 00000196
/* 01330 809BDF90 460A0402 */  mul.s   $f16, $f0, $f10            
/* 01334 809BDF94 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01338 809BDF98 46128100 */  add.s   $f4, $f16, $f18            
/* 0133C 809BDF9C 15E00005 */  bne     $t7, $zero, .L809BDFB4     
/* 01340 809BDFA0 E6040028 */  swc1    $f4, 0x0028($s0)           ## 00000028
/* 01344 809BDFA4 0C26F472 */  jal     func_809BD1C8              
/* 01348 809BDFA8 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 0134C 809BDFAC 0C26F4FE */  jal     func_809BD3F8              
/* 01350 809BDFB0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
.L809BDFB4:
/* 01354 809BDFB4 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 01358 809BDFB8 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 0135C 809BDFBC 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 01360 809BDFC0 03E00008 */  jr      $ra                        
/* 01364 809BDFC4 00000000 */  nop
