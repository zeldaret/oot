glabel func_80B8FEAC
/* 0142C 80B8FEAC 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 01430 80B8FEB0 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 01434 80B8FEB4 AFA5002C */  sw      $a1, 0x002C($sp)           
/* 01438 80B8FEB8 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 0143C 80B8FEBC AFBF001C */  sw      $ra, 0x001C($sp)           
/* 01440 80B8FEC0 3C053E2A */  lui     $a1, 0x3E2A                ## $a1 = 3E2A0000
/* 01444 80B8FEC4 3C063C23 */  lui     $a2, 0x3C23                ## $a2 = 3C230000
/* 01448 80B8FEC8 34C6D70A */  ori     $a2, $a2, 0xD70A           ## $a2 = 3C23D70A
/* 0144C 80B8FECC 34A5BA63 */  ori     $a1, $a1, 0xBA63           ## $a1 = 3E2ABA63
/* 01450 80B8FED0 0C01DE80 */  jal     Math_StepToF
              
/* 01454 80B8FED4 24840054 */  addiu   $a0, $a0, 0x0054           ## $a0 = 00000054
/* 01458 80B8FED8 30430001 */  andi    $v1, $v0, 0x0001           ## $v1 = 00000000
/* 0145C 80B8FEDC 3C053D12 */  lui     $a1, 0x3D12                ## $a1 = 3D120000
/* 01460 80B8FEE0 3C063A94 */  lui     $a2, 0x3A94                ## $a2 = 3A940000
/* 01464 80B8FEE4 34C61C82 */  ori     $a2, $a2, 0x1C82           ## $a2 = 3A941C82
/* 01468 80B8FEE8 34A531C4 */  ori     $a1, $a1, 0x31C4           ## $a1 = 3D1231C4
/* 0146C 80B8FEEC AFA30024 */  sw      $v1, 0x0024($sp)           
/* 01470 80B8FEF0 0C01DE80 */  jal     Math_StepToF
              
/* 01474 80B8FEF4 26040050 */  addiu   $a0, $s0, 0x0050           ## $a0 = 00000050
/* 01478 80B8FEF8 8FA30024 */  lw      $v1, 0x0024($sp)           
/* 0147C 80B8FEFC C6040050 */  lwc1    $f4, 0x0050($s0)           ## 00000050
/* 01480 80B8FF00 240F0001 */  addiu   $t7, $zero, 0x0001         ## $t7 = 00000001
/* 01484 80B8FF04 00621824 */  and     $v1, $v1, $v0              
/* 01488 80B8FF08 10600008 */  beq     $v1, $zero, .L80B8FF2C     
/* 0148C 80B8FF0C E6040058 */  swc1    $f4, 0x0058($s0)           ## 00000058
/* 01490 80B8FF10 860E01B4 */  lh      $t6, 0x01B4($s0)           ## 000001B4
/* 01494 80B8FF14 5DC00007 */  bgtzl   $t6, .L80B8FF34            
/* 01498 80B8FF18 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0149C 80B8FF1C 0C2E3FD4 */  jal     func_80B8FF50              
/* 014A0 80B8FF20 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 014A4 80B8FF24 10000003 */  beq     $zero, $zero, .L80B8FF34   
/* 014A8 80B8FF28 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
.L80B8FF2C:
/* 014AC 80B8FF2C A60F01B4 */  sh      $t7, 0x01B4($s0)           ## 000001B4
/* 014B0 80B8FF30 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
.L80B8FF34:
/* 014B4 80B8FF34 0C00BE5D */  jal     func_8002F974              
/* 014B8 80B8FF38 240500C6 */  addiu   $a1, $zero, 0x00C6         ## $a1 = 000000C6
/* 014BC 80B8FF3C 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 014C0 80B8FF40 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 014C4 80B8FF44 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 014C8 80B8FF48 03E00008 */  jr      $ra                        
/* 014CC 80B8FF4C 00000000 */  nop
