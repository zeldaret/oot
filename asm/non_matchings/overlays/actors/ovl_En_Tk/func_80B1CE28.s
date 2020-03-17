glabel func_80B1CE28
/* 01528 80B1CE28 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 0152C 80B1CE2C AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 01530 80B1CE30 AFB00020 */  sw      $s0, 0x0020($sp)           
/* 01534 80B1CE34 848E01E0 */  lh      $t6, 0x01E0($a0)           ## 000001E0
/* 01538 80B1CE38 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 0153C 80B1CE3C 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 01540 80B1CE40 55C10009 */  bnel    $t6, $at, .L80B1CE68       
/* 01544 80B1CE44 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01548 80B1CE48 0C2C6FE3 */  jal     func_80B1BF8C              
/* 0154C 80B1CE4C 00000000 */  nop
/* 01550 80B1CE50 3C0F80B2 */  lui     $t7, %hi(func_80B1CEF8)    ## $t7 = 80B20000
/* 01554 80B1CE54 25EFCEF8 */  addiu   $t7, $t7, %lo(func_80B1CEF8) ## $t7 = 80B1CEF8
/* 01558 80B1CE58 A60001E0 */  sh      $zero, 0x01E0($s0)         ## 000001E0
/* 0155C 80B1CE5C 10000021 */  beq     $zero, $zero, .L80B1CEE4   
/* 01560 80B1CE60 AE0F0190 */  sw      $t7, 0x0190($s0)           ## 00000190
/* 01564 80B1CE64 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
.L80B1CE68:
/* 01568 80B1CE68 0C2C70AD */  jal     func_80B1C2B4              
/* 0156C 80B1CE6C AFA5002C */  sw      $a1, 0x002C($sp)           
/* 01570 80B1CE70 E6000068 */  swc1    $f0, 0x0068($s0)           ## 00000068
/* 01574 80B1CE74 8FA5002C */  lw      $a1, 0x002C($sp)           
/* 01578 80B1CE78 0C2C70F7 */  jal     func_80B1C3DC              
/* 0157C 80B1CE7C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01580 80B1CE80 24180001 */  addiu   $t8, $zero, 0x0001         ## $t8 = 00000001
/* 01584 80B1CE84 AFB80010 */  sw      $t8, 0x0010($sp)           
/* 01588 80B1CE88 26040226 */  addiu   $a0, $s0, 0x0226           ## $a0 = 00000226
/* 0158C 80B1CE8C 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 01590 80B1CE90 24060006 */  addiu   $a2, $zero, 0x0006         ## $a2 = 00000006
/* 01594 80B1CE94 0C01E1A7 */  jal     Math_SmoothScaleMaxMinS
              
/* 01598 80B1CE98 240703E8 */  addiu   $a3, $zero, 0x03E8         ## $a3 = 000003E8
/* 0159C 80B1CE9C 0C2C708F */  jal     func_80B1C23C              
/* 015A0 80B1CEA0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 015A4 80B1CEA4 8602021C */  lh      $v0, 0x021C($s0)           ## 0000021C
/* 015A8 80B1CEA8 10400002 */  beq     $v0, $zero, .L80B1CEB4     
/* 015AC 80B1CEAC 2459FFFF */  addiu   $t9, $v0, 0xFFFF           ## $t9 = FFFFFFFF
/* 015B0 80B1CEB0 A619021C */  sh      $t9, 0x021C($s0)           ## 0000021C
.L80B1CEB4:
/* 015B4 80B1CEB4 0C2C7034 */  jal     func_80B1C0D0              
/* 015B8 80B1CEB8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 015BC 80B1CEBC 14400004 */  bne     $v0, $zero, .L80B1CED0     
/* 015C0 80B1CEC0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 015C4 80B1CEC4 8608021C */  lh      $t0, 0x021C($s0)           ## 0000021C
/* 015C8 80B1CEC8 55000007 */  bnel    $t0, $zero, .L80B1CEE8     
/* 015CC 80B1CECC 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80B1CED0:
/* 015D0 80B1CED0 0C2C6FA5 */  jal     func_80B1BE94              
/* 015D4 80B1CED4 8FA5002C */  lw      $a1, 0x002C($sp)           
/* 015D8 80B1CED8 3C0980B2 */  lui     $t1, %hi(func_80B1CC04)    ## $t1 = 80B20000
/* 015DC 80B1CEDC 2529CC04 */  addiu   $t1, $t1, %lo(func_80B1CC04) ## $t1 = 80B1CC04
/* 015E0 80B1CEE0 AE090190 */  sw      $t1, 0x0190($s0)           ## 00000190
.L80B1CEE4:
/* 015E4 80B1CEE4 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80B1CEE8:
/* 015E8 80B1CEE8 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 015EC 80B1CEEC 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 015F0 80B1CEF0 03E00008 */  jr      $ra                        
/* 015F4 80B1CEF4 00000000 */  nop


