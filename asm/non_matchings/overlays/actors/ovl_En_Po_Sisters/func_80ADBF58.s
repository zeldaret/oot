glabel func_80ADBF58
/* 02FC8 80ADBF58 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 02FCC 80ADBF5C AFB00018 */  sw      $s0, 0x0018($sp)           
/* 02FD0 80ADBF60 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 02FD4 80ADBF64 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 02FD8 80ADBF68 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 02FDC 80ADBF6C 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 02FE0 80ADBF70 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 02FE4 80ADBF74 860E019A */  lh      $t6, 0x019A($s0)           ## 0000019A
/* 02FE8 80ADBF78 260400B6 */  addiu   $a0, $s0, 0x00B6           ## $a0 = 000000B6
/* 02FEC 80ADBF7C 86050032 */  lh      $a1, 0x0032($s0)           ## 00000032
/* 02FF0 80ADBF80 25CFFFFF */  addiu   $t7, $t6, 0xFFFF           ## $t7 = FFFFFFFF
/* 02FF4 80ADBF84 A60F019A */  sh      $t7, 0x019A($s0)           ## 0000019A
/* 02FF8 80ADBF88 0C01DE2B */  jal     Math_ApproxUpdateScaledS
              
/* 02FFC 80ADBF8C 24060500 */  addiu   $a2, $zero, 0x0500         ## $a2 = 00000500
/* 03000 80ADBF90 8602019A */  lh      $v0, 0x019A($s0)           ## 0000019A
/* 03004 80ADBF94 26040068 */  addiu   $a0, $s0, 0x0068           ## $a0 = 00000068
/* 03008 80ADBF98 3C0540A0 */  lui     $a1, 0x40A0                ## $a1 = 40A00000
/* 0300C 80ADBF9C 14400009 */  bne     $v0, $zero, .L80ADBFC4     
/* 03010 80ADBFA0 3C063E4C */  lui     $a2, 0x3E4C                ## $a2 = 3E4C0000
/* 03014 80ADBFA4 92180194 */  lbu     $t8, 0x0194($s0)           ## 00000194
/* 03018 80ADBFA8 8FA80024 */  lw      $t0, 0x0024($sp)           
/* 0301C 80ADBFAC 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 03020 80ADBFB0 17000004 */  bne     $t8, $zero, .L80ADBFC4     
/* 03024 80ADBFB4 00280821 */  addu    $at, $at, $t0              
/* 03028 80ADBFB8 24190004 */  addiu   $t9, $zero, 0x0004         ## $t9 = 00000004
/* 0302C 80ADBFBC A0390AE3 */  sb      $t9, 0x0AE3($at)           ## 00010AE3
/* 03030 80ADBFC0 8602019A */  lh      $v0, 0x019A($s0)           ## 0000019A
.L80ADBFC4:
/* 03034 80ADBFC4 04430005 */  bgezl   $v0, .L80ADBFDC            
/* 03038 80ADBFC8 2401FFBA */  addiu   $at, $zero, 0xFFBA         ## $at = FFFFFFBA
/* 0303C 80ADBFCC 0C01DE80 */  jal     Math_ApproxF
              
/* 03040 80ADBFD0 34C6CCCD */  ori     $a2, $a2, 0xCCCD           ## $a2 = 3E4CCCCD
/* 03044 80ADBFD4 8602019A */  lh      $v0, 0x019A($s0)           ## 0000019A
/* 03048 80ADBFD8 2401FFBA */  addiu   $at, $zero, 0xFFBA         ## $at = FFFFFFBA
.L80ADBFDC:
/* 0304C 80ADBFDC 5441000C */  bnel    $v0, $at, .L80ADC010       
/* 03050 80ADBFE0 2841FF88 */  slti    $at, $v0, 0xFF88           
/* 03054 80ADBFE4 92090194 */  lbu     $t1, 0x0194($s0)           ## 00000194
/* 03058 80ADBFE8 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 0305C 80ADBFEC 8FA40024 */  lw      $a0, 0x0024($sp)           
/* 03060 80ADBFF0 15210006 */  bne     $t1, $at, .L80ADC00C       
/* 03064 80ADBFF4 3C0580AE */  lui     $a1, %hi(D_80ADD7BC)       ## $a1 = 80AE0000
/* 03068 80ADBFF8 24A5D7BC */  addiu   $a1, $a1, %lo(D_80ADD7BC)  ## $a1 = 80ADD7BC
/* 0306C 80ADBFFC 24060028 */  addiu   $a2, $zero, 0x0028         ## $a2 = 00000028
/* 03070 80ADC000 0C01AEB6 */  jal     Audio_PlaySoundAtPosition
              
/* 03074 80ADC004 240738EC */  addiu   $a3, $zero, 0x38EC         ## $a3 = 000038EC
/* 03078 80ADC008 8602019A */  lh      $v0, 0x019A($s0)           ## 0000019A
.L80ADC00C:
/* 0307C 80ADC00C 2841FF88 */  slti    $at, $v0, 0xFF88           
.L80ADC010:
/* 03080 80ADC010 50200004 */  beql    $at, $zero, .L80ADC024     
/* 03084 80ADC014 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 03088 80ADC018 0C00B55C */  jal     Actor_Kill
              
/* 0308C 80ADC01C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 03090 80ADC020 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80ADC024:
/* 03094 80ADC024 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 03098 80ADC028 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 0309C 80ADC02C 03E00008 */  jr      $ra                        
/* 030A0 80ADC030 00000000 */  nop


