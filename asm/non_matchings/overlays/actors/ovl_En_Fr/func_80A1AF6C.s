glabel func_80A1AF6C
/* 005CC 80A1AF6C 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 005D0 80A1AF70 AFB00020 */  sw      $s0, 0x0020($sp)           
/* 005D4 80A1AF74 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 005D8 80A1AF78 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 005DC 80A1AF7C AFA50034 */  sw      $a1, 0x0034($sp)           
/* 005E0 80A1AF80 8E07002C */  lw      $a3, 0x002C($s0)           ## 0000002C
/* 005E4 80A1AF84 8E060024 */  lw      $a2, 0x0024($s0)           ## 00000024
/* 005E8 80A1AF88 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 005EC 80A1AF8C 27AF0028 */  addiu   $t7, $sp, 0x0028           ## $t7 = FFFFFFF8
/* 005F0 80A1AF90 27B8002C */  addiu   $t8, $sp, 0x002C           ## $t8 = FFFFFFFC
/* 005F4 80A1AF94 AFB80014 */  sw      $t8, 0x0014($sp)           
/* 005F8 80A1AF98 AFAF0010 */  sw      $t7, 0x0010($sp)           
/* 005FC 80A1AF9C 0C010891 */  jal     WaterBox_GetSurfaceImpl              
/* 00600 80A1AFA0 24A507C0 */  addiu   $a1, $a1, 0x07C0           ## $a1 = 000007C0
/* 00604 80A1AFA4 5040000E */  beql    $v0, $zero, .L80A1AFE0     
/* 00608 80A1AFA8 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 0060C 80A1AFAC 9219037A */  lbu     $t9, 0x037A($s0)           ## 0000037A
/* 00610 80A1AFB0 C6060028 */  lwc1    $f6, 0x0028($s0)           ## 00000028
/* 00614 80A1AFB4 24080001 */  addiu   $t0, $zero, 0x0001         ## $t0 = 00000001
/* 00618 80A1AFB8 A219037B */  sb      $t9, 0x037B($s0)           ## 0000037B
/* 0061C 80A1AFBC C7A40028 */  lwc1    $f4, 0x0028($sp)           
/* 00620 80A1AFC0 4604303E */  c.le.s  $f6, $f4                   
/* 00624 80A1AFC4 00000000 */  nop
/* 00628 80A1AFC8 45020004 */  bc1fl   .L80A1AFDC                 
/* 0062C 80A1AFCC A200037A */  sb      $zero, 0x037A($s0)         ## 0000037A
/* 00630 80A1AFD0 10000002 */  beq     $zero, $zero, .L80A1AFDC   
/* 00634 80A1AFD4 A208037A */  sb      $t0, 0x037A($s0)           ## 0000037A
/* 00638 80A1AFD8 A200037A */  sb      $zero, 0x037A($s0)         ## 0000037A
.L80A1AFDC:
/* 0063C 80A1AFDC 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80A1AFE0:
/* 00640 80A1AFE0 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 00644 80A1AFE4 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 00648 80A1AFE8 03E00008 */  jr      $ra                        
/* 0064C 80A1AFEC 00000000 */  nop
