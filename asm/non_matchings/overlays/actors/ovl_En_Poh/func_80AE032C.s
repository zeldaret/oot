glabel func_80AE032C
/* 025DC 80AE032C 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 025E0 80AE0330 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 025E4 80AE0334 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 025E8 80AE0338 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 025EC 80AE033C 908202CD */  lbu     $v0, 0x02CD($a0)           ## 000002CD
/* 025F0 80AE0340 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 025F4 80AE0344 304E0002 */  andi    $t6, $v0, 0x0002           ## $t6 = 00000000
/* 025F8 80AE0348 51C0001A */  beql    $t6, $zero, .L80AE03B4     
/* 025FC 80AE034C 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 02600 80AE0350 909800B1 */  lbu     $t8, 0x00B1($a0)           ## 000000B1
/* 02604 80AE0354 304FFFFD */  andi    $t7, $v0, 0xFFFD           ## $t7 = 00000000
/* 02608 80AE0358 A08F02CD */  sb      $t7, 0x02CD($a0)           ## 000002CD
/* 0260C 80AE035C 17000004 */  bne     $t8, $zero, .L80AE0370     
/* 02610 80AE0360 00000000 */  nop
/* 02614 80AE0364 909900B0 */  lbu     $t9, 0x00B0($a0)           ## 000000B0
/* 02618 80AE0368 53200012 */  beql    $t9, $zero, .L80AE03B4     
/* 0261C 80AE036C 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80AE0370:
/* 02620 80AE0370 0C00D58A */  jal     Actor_ApplyDamage
              
/* 02624 80AE0374 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02628 80AE0378 14400009 */  bne     $v0, $zero, .L80AE03A0     
/* 0262C 80AE037C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02630 80AE0380 8FA40024 */  lw      $a0, 0x0024($sp)           
/* 02634 80AE0384 0C00CB1F */  jal     func_80032C7C              
/* 02638 80AE0388 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 0263C 80AE038C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02640 80AE0390 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 02644 80AE0394 24053876 */  addiu   $a1, $zero, 0x3876         ## $a1 = 00003876
/* 02648 80AE0398 10000003 */  beq     $zero, $zero, .L80AE03A8   
/* 0264C 80AE039C 00000000 */  nop
.L80AE03A0:
/* 02650 80AE03A0 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 02654 80AE03A4 24053875 */  addiu   $a1, $zero, 0x3875         ## $a1 = 00003875
.L80AE03A8:
/* 02658 80AE03A8 0C2B78A3 */  jal     func_80ADE28C              
/* 0265C 80AE03AC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02660 80AE03B0 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80AE03B4:
/* 02664 80AE03B4 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 02668 80AE03B8 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 0266C 80AE03BC 03E00008 */  jr      $ra                        
/* 02670 80AE03C0 00000000 */  nop


