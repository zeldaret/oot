.rdata
glabel D_80B38E94
    .asciz "[33m☆☆☆☆☆ うっかり兵セット完了 ☆☆☆☆☆ \n[m"
    .balign 4

.text
glabel func_80B38AD8
/* 00A78 80B38AD8 27BDFFC8 */  addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
/* 00A7C 80B38ADC AFBF0034 */  sw      $ra, 0x0034($sp)           
/* 00A80 80B38AE0 AFB00030 */  sw      $s0, 0x0030($sp)           
/* 00A84 80B38AE4 90820191 */  lbu     $v0, 0x0191($a0)           ## 00000191
/* 00A88 80B38AE8 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00A8C 80B38AEC 240600B3 */  addiu   $a2, $zero, 0x00B3         ## $a2 = 000000B3
/* 00A90 80B38AF0 304E0002 */  andi    $t6, $v0, 0x0002           ## $t6 = 00000000
/* 00A94 80B38AF4 11C0001B */  beq     $t6, $zero, .L80B38B64     
/* 00A98 80B38AF8 304FFFFD */  andi    $t7, $v0, 0xFFFD           ## $t7 = 00000000
/* 00A9C 80B38AFC A08F0191 */  sb      $t7, 0x0191($a0)           ## 00000191
/* 00AA0 80B38B00 C6040028 */  lwc1    $f4, 0x0028($s0)           ## 00000028
/* 00AA4 80B38B04 8E070024 */  lw      $a3, 0x0024($s0)           ## 00000024
/* 00AA8 80B38B08 24190009 */  addiu   $t9, $zero, 0x0009         ## $t9 = 00000009
/* 00AAC 80B38B0C E7A40010 */  swc1    $f4, 0x0010($sp)           
/* 00AB0 80B38B10 C606002C */  lwc1    $f6, 0x002C($s0)           ## 0000002C
/* 00AB4 80B38B14 AFA00018 */  sw      $zero, 0x0018($sp)         
/* 00AB8 80B38B18 24A41C24 */  addiu   $a0, $a1, 0x1C24           ## $a0 = 00001C24
/* 00ABC 80B38B1C E7A60014 */  swc1    $f6, 0x0014($sp)           
/* 00AC0 80B38B20 8618008A */  lh      $t8, 0x008A($s0)           ## 0000008A
/* 00AC4 80B38B24 AFA5003C */  sw      $a1, 0x003C($sp)           
/* 00AC8 80B38B28 AFB90024 */  sw      $t9, 0x0024($sp)           
/* 00ACC 80B38B2C AFA00020 */  sw      $zero, 0x0020($sp)         
/* 00AD0 80B38B30 0C00C7D4 */  jal     Actor_Spawn
              ## ActorSpawn
/* 00AD4 80B38B34 AFB8001C */  sw      $t8, 0x001C($sp)           
/* 00AD8 80B38B38 10400003 */  beq     $v0, $zero, .L80B38B48     
/* 00ADC 80B38B3C 3C0480B4 */  lui     $a0, %hi(D_80B38E94)       ## $a0 = 80B40000
/* 00AE0 80B38B40 0C00084C */  jal     osSyncPrintf
              
/* 00AE4 80B38B44 24848E94 */  addiu   $a0, $a0, %lo(D_80B38E94)  ## $a0 = 80B38E94
.L80B38B48:
/* 00AE8 80B38B48 86050162 */  lh      $a1, 0x0162($s0)           ## 00000162
/* 00AEC 80B38B4C 04A00003 */  bltz    $a1, .L80B38B5C            
/* 00AF0 80B38B50 00000000 */  nop
/* 00AF4 80B38B54 0C00B2DD */  jal     Flags_SetSwitch
              
/* 00AF8 80B38B58 8FA4003C */  lw      $a0, 0x003C($sp)           
.L80B38B5C:
/* 00AFC 80B38B5C 0C00B55C */  jal     Actor_Kill
              
/* 00B00 80B38B60 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
.L80B38B64:
/* 00B04 80B38B64 8FBF0034 */  lw      $ra, 0x0034($sp)           
/* 00B08 80B38B68 8FB00030 */  lw      $s0, 0x0030($sp)           
/* 00B0C 80B38B6C 27BD0038 */  addiu   $sp, $sp, 0x0038           ## $sp = 00000000
/* 00B10 80B38B70 03E00008 */  jr      $ra                        
/* 00B14 80B38B74 00000000 */  nop
