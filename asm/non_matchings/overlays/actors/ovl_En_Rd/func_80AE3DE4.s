glabel func_80AE3DE4
/* 019E4 80AE3DE4 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 019E8 80AE3DE8 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 019EC 80AE3DEC AFB00020 */  sw      $s0, 0x0020($sp)           
/* 019F0 80AE3DF0 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 019F4 80AE3DF4 848E00B6 */  lh      $t6, 0x00B6($a0)           ## 000000B6
/* 019F8 80AE3DF8 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
/* 019FC 80AE3DFC A082031B */  sb      $v0, 0x031B($a0)           ## 0000031B
/* 01A00 80AE3E00 3C0F8016 */  lui     $t7, 0x8016                ## $t7 = 80160000
/* 01A04 80AE3E04 E4840068 */  swc1    $f4, 0x0068($a0)           ## 00000068
/* 01A08 80AE3E08 A48E0032 */  sh      $t6, 0x0032($a0)           ## 00000032
/* 01A0C 80AE3E0C 85EFFA82 */  lh      $t7, -0x057E($t7)          ## 8015FA82
/* 01A10 80AE3E10 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 01A14 80AE3E14 24180258 */  addiu   $t8, $zero, 0x0258         ## $t8 = 00000258
/* 01A18 80AE3E18 11E0000D */  beq     $t7, $zero, .L80AE3E50     
/* 01A1C 80AE3E1C 24053836 */  addiu   $a1, $zero, 0x3836         ## $a1 = 00003836
/* 01A20 80AE3E20 A0820318 */  sb      $v0, 0x0318($a0)           ## 00000318
/* 01A24 80AE3E24 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 01A28 80AE3E28 A4980316 */  sh      $t8, 0x0316($a0)           ## 00000316
/* 01A2C 80AE3E2C 241900FF */  addiu   $t9, $zero, 0x00FF         ## $t9 = 000000FF
/* 01A30 80AE3E30 AFB90010 */  sw      $t9, 0x0010($sp)           
/* 01A34 80AE3E34 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01A38 80AE3E38 24058000 */  addiu   $a1, $zero, 0x8000         ## $a1 = FFFF8000
/* 01A3C 80AE3E3C 240680C8 */  addiu   $a2, $zero, 0x80C8         ## $a2 = FFFF80C8
/* 01A40 80AE3E40 0C00D09B */  jal     func_8003426C              
/* 01A44 80AE3E44 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 01A48 80AE3E48 10000017 */  beq     $zero, $zero, .L80AE3EA8   
/* 01A4C 80AE3E4C 00000000 */  nop
.L80AE3E50:
/* 01A50 80AE3E50 9208031C */  lbu     $t0, 0x031C($s0)           ## 0000031C
/* 01A54 80AE3E54 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 01A58 80AE3E58 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 01A5C 80AE3E5C 15010009 */  bne     $t0, $at, .L80AE3E84       
/* 01A60 80AE3E60 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01A64 80AE3E64 24090050 */  addiu   $t1, $zero, 0x0050         ## $t1 = 00000050
/* 01A68 80AE3E68 AFA90010 */  sw      $t1, 0x0010($sp)           
/* 01A6C 80AE3E6C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01A70 80AE3E70 240600C8 */  addiu   $a2, $zero, 0x00C8         ## $a2 = 000000C8
/* 01A74 80AE3E74 0C00D09B */  jal     func_8003426C              
/* 01A78 80AE3E78 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 01A7C 80AE3E7C 1000000A */  beq     $zero, $zero, .L80AE3EA8   
/* 01A80 80AE3E80 00000000 */  nop
.L80AE3E84:
/* 01A84 80AE3E84 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 01A88 80AE3E88 24053836 */  addiu   $a1, $zero, 0x3836         ## $a1 = 00003836
/* 01A8C 80AE3E8C 240A0050 */  addiu   $t2, $zero, 0x0050         ## $t2 = 00000050
/* 01A90 80AE3E90 AFAA0010 */  sw      $t2, 0x0010($sp)           
/* 01A94 80AE3E94 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01A98 80AE3E98 24058000 */  addiu   $a1, $zero, 0x8000         ## $a1 = FFFF8000
/* 01A9C 80AE3E9C 240600C8 */  addiu   $a2, $zero, 0x00C8         ## $a2 = 000000C8
/* 01AA0 80AE3EA0 0C00D09B */  jal     func_8003426C              
/* 01AA4 80AE3EA4 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
.L80AE3EA8:
/* 01AA8 80AE3EA8 3C0580AE */  lui     $a1, %hi(func_80AE3ECC)    ## $a1 = 80AE0000
/* 01AAC 80AE3EAC 24A53ECC */  addiu   $a1, $a1, %lo(func_80AE3ECC) ## $a1 = 80AE3ECC
/* 01AB0 80AE3EB0 0C2B8900 */  jal     func_80AE2400              
/* 01AB4 80AE3EB4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01AB8 80AE3EB8 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 01ABC 80AE3EBC 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 01AC0 80AE3EC0 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 01AC4 80AE3EC4 03E00008 */  jr      $ra                        
/* 01AC8 80AE3EC8 00000000 */  nop
